int res_9_ninit(res_9_state a1)
{
  if (!a1)
  {
    return -1;
  }

  bzero(a1, 0x228uLL);

  return res_9_vinit(a1, 0);
}

int res_9_vinit(res_9_state a1, int a2)
{
  v178 = *MEMORY[0x29EDCA608];
  v151.st_dev = 0;
  v4 = dns_configuration_copy();
  if (v4)
  {
    v5 = **(v4 + 4);
    if (*(v5 + 20))
    {
      v6 = *(v5 + 20);
    }

    else
    {
      v6 = 53;
    }

    if (a1->options)
    {
      res_9_ndestroy(a1);
    }

    v7 = res_build_start(a1);
    v8 = getenv("RES_RETRY_TIMEOUT");
    if (v8)
    {
      v146 = atoi(v8);
    }

    else
    {
      v146 = 0;
    }

    v13 = getenv("RES_RETRY");
    if (v13)
    {
      v7->retry = atoi(v13);
    }

    v14 = *(v5 + 8);
    if (v14 >= 4)
    {
      v14 = 3;
      *(v5 + 8) = 3;
LABEL_21:
      v15 = 0;
      while (1)
      {
        v16 = *(*(*(v5 + 12) + 8 * v15) + 1);
        if (v16 == 2)
        {
          break;
        }

        if (v16 == 30)
        {
          v17 = 8;
LABEL_26:
          v176 = 0u;
          v177 = 0u;
          v174 = 0u;
          v175 = 0u;
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          v171 = 0u;
          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          __str = 0u;
          v163 = 0u;
          inet_ntop(v16, (*(*(v5 + 12) + 8 * v15) + v17), &__str, 0x100u);
          res_build(v7, v6, &v151, "nameserver", &__str);
          v14 = *(v5 + 8);
        }

        if (++v15 >= v14)
        {
          goto LABEL_28;
        }
      }

      v17 = 4;
      goto LABEL_26;
    }

    if (v14 >= 1)
    {
      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v18) = *(v5 + 24);
    if (v18 < 7)
    {
      if (v18 < 1)
      {
LABEL_33:
        if (v18 || !*v5)
        {
          goto LABEL_34;
        }

        v39 = 0;
        for (i = (*v5 - 1); ; ++i)
        {
          if (i[1] == 46)
          {
            ++v39;
          }

          else if (!i[1])
          {
            while (1)
            {
              *v153 = i;
              v41 = *v5;
              if (i < *v5)
              {
                break;
              }

              if (*i != 46)
              {
                res_build(v7, v6, &v151, "search", v41);
                v41 = *v5;
                break;
              }

              *i = 0;
              --v39;
              i = (*v153 - 1);
            }

            *v153 = v41;
            if (v39 >= 2 && v151.st_dev <= 2u)
            {
              v136 = v39 + 1;
              do
              {
                v137 = *v153;
                for (j = **v153; j != 46; j = v139)
                {
                  v139 = *++v137;
                }

                *v153 = v137 + 1;
                res_build(v7, v6, &v151, "search", (v137 + 1));
                if (v136 < 4)
                {
                  break;
                }

                --v136;
              }

              while (v151.st_dev < 3u);
            }

LABEL_34:
            v20 = *(v5 + 56);
            snprintf(&__str, 0x100uLL, "%d", *(v5 + 60));
            res_build(v7, v6, &v151, "search_order", &__str);
            v21 = *(v5 + 36);
            if (v21 < 11)
            {
              if (v21 >= 1)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v21 = 10;
              *(v5 + 36) = 10;
LABEL_37:
              for (k = 0; k < v21; ++k)
              {
                if (v7)
                {
                  v23 = *(v7 + 392);
                  if (v23 <= 0x9F)
                  {
                    *(v7->sort_list + ((v23 >> 1) & 0x78)) = **(*(v5 + 40) + 8 * k);
                    *(v7 + 392) = v23 + 16;
                    v21 = *(v5 + 36);
                  }
                }
              }
            }

            *v153 = *(v5 + 48);
            word = res_next_word(v153);
            if (!word)
            {
LABEL_82:
              nscount = v7->nscount;
              if (nscount <= 1)
              {
                nscount = 1;
              }

              if (!v20)
              {
                if (v146)
                {
                  LODWORD(v20) = nscount * v146 * v7->retry;
                }

                else
                {
                  LODWORD(v20) = 30;
                }
              }

              dns_configuration_free();
              if (v7->nscount)
              {
                options = v7->options;
              }

              else
              {
                v7->nsaddr_list[0].sin_addr.s_addr = 0;
                v7->nsaddr_list[0].sin_port = __rev16(v6);
                *&v7->nsaddr_list[0].sin_len = 528;
                v7->nscount = 1;
                options = v7->options | 8;
              }

              result = 0;
              if (v20)
              {
                v56 = v20;
              }

              else
              {
                v56 = 30;
              }

              v7->retrans = v56;
              v7->options = options | 1;
              goto LABEL_324;
            }

            v25 = word;
            v26 = "ndots";
            v27 = "nibble";
            v28 = "timeout:";
            while (2)
            {
              if (!strncmp(v25, "ndots:", 6uLL))
              {
                v37 = v25 + 6;
                v34 = v7;
                v35 = v6;
                v36 = v26;
                goto LABEL_73;
              }

              if (!strncmp(v25, "nibble:", 7uLL))
              {
                v37 = v25 + 7;
                v34 = v7;
                v35 = v6;
                v36 = v27;
                goto LABEL_73;
              }

              if (!strncmp(v25, "nibble2:", 8uLL))
              {
                v37 = (v25 + 1);
                v34 = v7;
                v35 = v6;
                v36 = "nibble2";
                goto LABEL_73;
              }

              if (!strncmp(v25, v28, 8uLL))
              {
                v146 = atoi(v25 + 8);
                goto LABEL_74;
              }

              if (!strncmp(v25, "attempts:", 9uLL))
              {
                v37 = v25 + 9;
                v34 = v7;
                v35 = v6;
                v36 = "attempts";
                goto LABEL_73;
              }

              if (!strncmp(v25, "bitstring:", 0xAuLL))
              {
                v37 = v25 + 10;
                v34 = v7;
                v35 = v6;
                v36 = "bitstring";
                goto LABEL_73;
              }

              if (!strncmp(v25, "v6revmode:", 0xAuLL))
              {
                v37 = v25 + 10;
                v34 = v7;
                v35 = v6;
                v36 = "v6revmode";
                goto LABEL_73;
              }

              v29 = v26;
              v30 = v20;
              v31 = v28;
              v32 = v27;
              v33 = "debug";
              if (!strcmp(v25, "debug") || (v33 = "no_tld_query", !strcmp(v25, "no_tld_query")))
              {
                res_build(v7, v6, &v151, v33, 0);
                v27 = v32;
              }

              else
              {
                v27 = v32;
                if (strcmp(v25, "inet6"))
                {
                  v28 = v31;
                  if (strcmp(v25, "rotate"))
                  {
                    v20 = v30;
                    if (strcmp(v25, "no-check-names"))
                    {
                      v26 = v29;
                      if (!strcmp(v25, "edns0"))
                      {
                        res_build(v7, v6, &v151, "edns0", 0);
                        goto LABEL_74;
                      }

                      if (*v25 != 97 || *(v25 + 1) != 54 || *(v25 + 2))
                      {
                        if (!strcmp(v25, "dname"))
                        {
                          v34 = v7;
                          v35 = v6;
                          v36 = "dname";
                          goto LABEL_81;
                        }

LABEL_74:
                        v25 = res_next_word(v153);
                        if (!v25)
                        {
                          goto LABEL_82;
                        }

                        continue;
                      }

                      v34 = v7;
                      v35 = v6;
                      v36 = "a6";
LABEL_81:
                      v37 = 0;
LABEL_73:
                      res_build(v34, v35, &v151, v36, v37);
                      goto LABEL_74;
                    }

                    res_build(v7, v6, &v151, "no-check-names", 0);
LABEL_71:
                    v26 = v29;
                    goto LABEL_74;
                  }

                  res_build(v7, v6, &v151, "rotate", 0);
LABEL_70:
                  v20 = v30;
                  goto LABEL_71;
                }

                res_build(v7, v6, &v151, "inet6", 0);
              }

              break;
            }

            v28 = v31;
            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      *(v5 + 24) = 6;
    }

    v19 = 0;
    do
    {
      res_build(v7, v6, &v151, "search", *(*(v5 + 28) + 8 * v19++));
      v18 = *(v5 + 24);
    }

    while (v19 < v18);
    goto LABEL_33;
  }

  _res_9_h_errno_set(a1, 0);
  if (a1->_u._ext.ext)
  {
    res_9_ndestroy(a1);
  }

  if (!a2)
  {
    *&a1->retrans = 0x200000005;
    a1->options = 2147484352;
  }

  a1->id = arc4random();
  *&v153[4] = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  memset(v161, 0, sizeof(v161));
  *v153 = 889192976;
  *&v161[4] = *MEMORY[0x29EDCA680];
  HIDWORD(v160) = 889200156;
  a1->nscount = 0;
  *(a1 + 392) = *(a1 + 392) & 0xF0 | 1;
  a1->pfcode = 0;
  *&a1->_vcsock = 0xFFFFFFFFLL;
  a1->_u._ext.nscount = 0;
  a1->qhook = 0;
  a1->rhook = 0;
  v9 = malloc_type_malloc(0x3C8uLL, 0x1000040FB2B3248uLL);
  a1->_u._ext.ext = v9;
  if (v9)
  {
    bzero(v9, 0x3C8uLL);
    *a1->_u._ext.ext = a1->nsaddr_list[0];
    ext = a1->_u._ext.ext;
    __strlcpy_chk();
    v11 = a1->_u._ext.ext;
    __strlcpy_chk();
    *(a1->_u._ext.ext + 480) = 2;
    v12 = 3;
  }

  else
  {
    _res_9_h_errno_set(a1, -1);
    v12 = 0;
  }

  *(a1 + 392) &= 0xFu;
  res_9_setservers(a1, v153, 2);
  if (issetugid() || (v44 = getenv("LOCALDOMAIN")) == 0)
  {
    v42 = 0;
    v43 = 1;
    goto LABEL_127;
  }

  v45 = strncpy(a1->defdname, v44, 0xFFuLL);
  v46 = 0;
  v42 = 0;
  a1->defdname[255] = 0;
  a1->dnsrch[0] = v45;
  v47 = &a1->dnsrch[1];
  for (m = 80; m <= 119; v47 = (a1 + m))
  {
    v49 = *v45;
    if (v49 > 9)
    {
      if (v49 == 32)
      {
LABEL_108:
        *v45 = 0;
        v46 = 1;
        goto LABEL_112;
      }

      if (v49 == 10)
      {
        break;
      }
    }

    else
    {
      if (v49 == 9)
      {
        goto LABEL_108;
      }

      if (!*v45)
      {
        break;
      }
    }

    if (v46)
    {
      v46 = 0;
      m += 8;
      *v47 = v45;
      v42 = 1;
    }

LABEL_112:
    ++v45;
  }

  while (1)
  {
    v50 = *v45;
    v51 = v50 > 0x20;
    v52 = (1 << v50) & 0x100000601;
    if (!v51 && v52 != 0)
    {
      break;
    }

    ++v45;
  }

  v43 = 0;
  *v45 = 0;
  *v47 = 0;
LABEL_127:
  v57 = fopen("/etc/resolv.conf", "re");
  if (!v57)
  {
    goto LABEL_296;
  }

  v58 = v57;
  memset(&v151, 0, sizeof(v151));
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  if (a1->_u._ext.ext)
  {
    v59 = fileno(v57);
    if (!fstat(v59, &v151))
    {
      *(a1->_u._ext.ext + 936) = v151.st_mtimespec;
      if (!clock_gettime(_CLOCK_MONOTONIC, &__tp))
      {
        *(a1->_u._ext.ext + 119) = __tp.tv_sec;
      }
    }
  }

  if (!fgets(&__str, 1024, v58))
  {
    v120 = 0;
    goto LABEL_295;
  }

  v145 = v42;
  v60 = 0;
  v147 = 0;
  __dst = a1->defdname;
  sort_list = a1->sort_list;
  while (2)
  {
    if (__str == 35 || __str == 59)
    {
      goto LABEL_136;
    }

    if (__str == 1634561892 && WORD2(__str) == 28265)
    {
      v65 = BYTE6(__str);
      if (BYTE6(__str) == 32 || BYTE6(__str) == 9)
      {
        if (!v43)
        {
          goto LABEL_136;
        }

        for (n = &__str + 6; ; ++n)
        {
          if (v65 > 9u)
          {
            if (v65 != 32)
            {
              if (v65 == 10)
              {
                goto LABEL_136;
              }

              goto LABEL_260;
            }
          }

          else if (v65 != 9)
          {
            if (!v65)
            {
              goto LABEL_136;
            }

LABEL_260:
            v107 = strncpy(__dst, n, 0xFFuLL);
            a1->defdname[255] = 0;
            v108 = strpbrk(v107, " \t\n");
            v145 = 0;
            if (v108)
            {
              *v108 = 0;
            }

            goto LABEL_136;
          }

          v68 = n[1];
          v65 = v68;
        }
      }
    }

    v62 = __str == 1918985587 && WORD2(__str) == 26723;
    if (!v62 || (v69 = BYTE6(__str), BYTE6(__str) != 32) && BYTE6(__str) != 9)
    {
      if (__str == 0x76726573656D616ELL && WORD4(__str) == 29285)
      {
        v72 = BYTE10(__str);
        if ((BYTE10(__str) == 32 || BYTE10(__str) == 9) && v60 < v12)
        {
          v73 = v60;
          v148 = 0;
          for (ii = &__str + 10; v72 == 32 || v72 == 9; ++ii)
          {
            v76 = ii[1];
            v72 = v76;
          }

          ii[strcspn(ii, ";# \t\n")] = 0;
          if (*ii)
          {
            v103 = *ii == 10;
          }

          else
          {
            v103 = 1;
          }

          if (!v103)
          {
            memset(&v149, 0, sizeof(v149));
            v149.ai_socktype = 2;
            v149.ai_flags = 4;
            __sprintf_chk(&v152, 0, 0x20uLL, "%u", 53);
            if (!getaddrinfo(ii, &v152, &v149, &v148))
            {
              v104 = v148;
              ai_addrlen = v148->ai_addrlen;
              if (ai_addrlen <= 0x80)
              {
                v106 = a1->_u._ext.ext;
                if (v106)
                {
                  memcpy(v106 + 128 * v73, v148->ai_addr, ai_addrlen);
                  v104 = v148;
                  ai_addrlen = v148->ai_addrlen;
                }

                v119 = &a1->nsaddr_list[v73];
                if (ai_addrlen > 0x10)
                {
                  v119->sin_family = 0;
                }

                else
                {
                  memcpy(v119, v104->ai_addr, ai_addrlen);
                }

                v73 = (v73 + 1);
              }

              freeaddrinfo(v104);
            }
          }

          v60 = v73;
          goto LABEL_136;
        }
      }

      if (__str != 0x7473696C74726F73 || (v77 = BYTE8(__str), BYTE8(__str) != 32) && BYTE8(__str) != 9)
      {
        v64 = __str == 1769238639 && *(&__str + 3) == 1936617321;
        if (v64 && (BYTE7(__str) == 32 || BYTE7(__str) == 9))
        {
          res_setoptions(a1, &__str + 7, "conf");
        }

        goto LABEL_136;
      }

      v152.s_addr = 0;
      *&v149.ai_flags = 0;
      *&v149.ai_socktype = 0;
      if (v147 > 9)
      {
        goto LABEL_136;
      }

      v78 = a1->_u._ext.ext + 384;
      v79 = &__str + 8;
      v143 = v60;
      while (1)
      {
        for (jj = v79; ; ++jj)
        {
          if (v77 > 0x3Bu)
          {
            v79 = jj;
            goto LABEL_201;
          }

          if (((1 << v77) & 0x100000200) == 0)
          {
            break;
          }

          v81 = jj[1];
          v77 = v81;
        }

        v79 = jj;
        if (((1 << v77) & 0x800000000000401) != 0)
        {
          v60 = v143;
          goto LABEL_136;
        }

        do
        {
LABEL_201:
          if (v77 == 38)
          {
            break;
          }

          if (v77 == 47)
          {
            break;
          }

          if ((v77 & 0x80) != 0)
          {
            break;
          }

          if (v77 == 59)
          {
            break;
          }

          if ((*(MEMORY[0x29EDCA600] + 4 * v77 + 60) & 0x4000) != 0)
          {
            break;
          }

          v82 = *++v79;
          v77 = v82;
        }

        while (v82);
        v141 = v78;
        *v79 = 0;
        if (inet_aton(jj, &v152))
        {
          break;
        }

        if (inet_pton(30, jj, &v149) == 1)
        {
          v140 = v12;
          v78 = v141;
          v89 = &v141[36 * v147];
          *v89 = 30;
          *(v89 + 4) = *&v149.ai_flags;
          v90 = v89 + 20;
          *v79++ = v77;
          v91 = v79;
          while (1)
          {
            v92 = *v79;
            v93 = *v79;
            if (!*v79 || v93 == 59 || (v92 & 0x80) != 0 || (*(MEMORY[0x29EDCA600] + 4 * v92 + 60) & 0x4000) != 0)
            {
              break;
            }

            ++v79;
          }

          *v79 = 0;
          if (v77 == 47)
          {
            v96 = atoi(v91);
            v78 = v141;
            if ((v96 & 0x80000000) == 0)
            {
              goto LABEL_239;
            }
          }

          else if (v77 != 38 || (v95 = inet_pton(30, v91, v90), v78 = v141, v95 != 1))
          {
            v96 = 128;
LABEL_239:
            v100 = 0;
            while (2)
            {
              if (v96 < 1)
              {
                LOBYTE(v102) = 0;
                v101 = v96;
LABEL_244:
                v90[v100] = v102;
              }

              else
              {
                v101 = (v96 - 8);
                v90[v100] = -1;
                if (v96 <= 7)
                {
                  v102 = 255 << (8 - v96);
                  goto LABEL_244;
                }
              }

              ++v100;
              v96 = v101;
              if (v100 == 16)
              {
                break;
              }

              continue;
            }
          }

          sort_list[v147] = -1;
          v94 = (v147 + 1);
          v77 = v93;
          v12 = v140;
        }

        else
        {
          v94 = v147;
          v78 = v141;
        }

LABEL_247:
        *v79 = v77;
        v147 = v94;
        v60 = v143;
        if (v94 >= 10)
        {
          goto LABEL_136;
        }
      }

      v83 = v12;
      v84 = &sort_list[v147];
      s_addr = v152.s_addr;
      v84->s_addr = v152.s_addr;
      if (v77 <= 0x2Fu && ((1 << v77) & 0x804000000001) != 0)
      {
        *v79++ = v77;
        v86 = v79;
        while (1)
        {
          v87 = *v79;
          v77 = *v79;
          if (!*v79 || v87 == 59 || v87 < 0 || (*(MEMORY[0x29EDCA600] + 4 * v87 + 60) & 0x4000) != 0)
          {
            break;
          }

          ++v79;
        }

        *v79 = 0;
        if (inet_aton(v86, &v152))
        {
          v88 = v152.s_addr;
LABEL_237:
          v78 = v141;
          v84[1].s_addr = v88;
          v99 = &v141[36 * v147];
          *v99 = 2;
          *(v99 + 1) = v84->s_addr;
          *(v99 + 5) = v84[1];
          v94 = (v147 + 1);
          v12 = v83;
          goto LABEL_247;
        }

        s_addr = v84->s_addr;
      }

      v97 = bswap32(s_addr);
      if (v97 >> 30 == 2)
      {
        v98 = 0xFFFF;
      }

      else
      {
        v98 = 0xFFFFFF;
      }

      if (v97 < 0)
      {
        v88 = v98;
      }

      else
      {
        v88 = 255;
      }

      goto LABEL_237;
    }

    if (!v43)
    {
      goto LABEL_136;
    }

    v70 = &__str + 6;
    while (2)
    {
      if (v69 <= 9u)
      {
        if (v69 != 9)
        {
          if (!v69)
          {
            goto LABEL_136;
          }

          goto LABEL_267;
        }

        goto LABEL_179;
      }

      if (v69 == 32)
      {
LABEL_179:
        v71 = *++v70;
        v69 = v71;
        continue;
      }

      break;
    }

    if (v69 == 10)
    {
      goto LABEL_136;
    }

LABEL_267:
    defdname = a1->defdname;
    v110 = strncpy(__dst, v70, 0xFFuLL);
    a1->defdname[255] = 0;
    v111 = strchr(v110, 10);
    if (v111)
    {
      *v111 = 0;
    }

    a1->dnsrch[0] = __dst;
    v112 = a1->defdname[0];
    if (a1->defdname[0])
    {
      v113 = 0;
      v114 = &a1->dnsrch[1];
      v115 = 80;
      do
      {
        if (v112 == 32 || v112 == 9)
        {
          *defdname = 0;
          v113 = 1;
        }

        else if (v113)
        {
          v113 = 0;
          v115 += 8;
          *v114 = defdname;
        }

        v116 = *++defdname;
        v112 = v116;
        v114 = (a1 + v115);
      }

      while (v116 && v115 < 120);
    }

    else
    {
      v114 = &a1->dnsrch[1];
    }

    v117 = (defdname + 1);
    while (v112 > 0x20 || ((1 << v112) & 0x100000201) == 0)
    {
      v118 = *v117++;
      v112 = v118;
    }

    *(v117 - 1) = 0;
    *v114 = 0;
    v145 = 1;
LABEL_136:
    if (fgets(&__str, 1024, v58))
    {
      continue;
    }

    break;
  }

  v120 = 16 * v147;
  v42 = v145;
  if (v60 >= 1)
  {
    a1->nscount = v60;
  }

LABEL_295:
  *(a1 + 392) = *(a1 + 392) & 0xF | v120;
  fclose(v58);
LABEL_296:
  v121 = a1->defdname;
  if (!a1->defdname[0] && !gethostname(&__str, 0xFFuLL) && strchr(&__str, 46))
  {
    __strlcpy_chk();
  }

  if (!v42)
  {
    a1->dnsrch[1] = 0;
    v122 = &a1->dnsrch[1];
    a1->dnsrch[0] = v121;
    v123 = a1->defdname[0];
    if (a1->defdname[0])
    {
      v124 = 0;
      v125 = &a1->defdname[1];
      do
      {
        if (v123 == 46)
        {
          ++v124;
        }

        v126 = *v125++;
        v123 = v126;
      }

      while (v126);
      if (v124 >= 2)
      {
        v127 = 80;
        do
        {
          v121 = strchr(v121, 46) + 1;
          *v122++ = v121;
          if (v127 > 0x57)
          {
            break;
          }

          v127 += 8;
          v51 = v124-- > 2;
        }

        while (v51);
      }
    }

    *v122 = 0;
    v128 = MEMORY[0x29EDCA620];
    if ((a1->options & 2) != 0)
    {
      v129 = *__error();
      fwrite(";; res_init()... default dnsrch list:\n", 0x26uLL, 1uLL, *v128);
      *__error() = v129;
    }

    if (a1->dnsrch[0])
    {
      v130 = &a1->dnsrch[1];
      do
      {
        if ((a1->options & 2) != 0)
        {
          v131 = *__error();
          fprintf(*v128, ";;\t%s\n", *(v130 - 1));
          *__error() = v131;
        }
      }

      while (*v130++);
    }

    if ((a1->options & 2) != 0)
    {
      v133 = *__error();
      fwrite(";;\t..END..\n", 0xBuLL, 1uLL, *v128);
      *__error() = v133;
    }
  }

  if (issetugid())
  {
    a1->options |= 0x1000uLL;
  }

  else
  {
    v134 = getenv("RES_OPTIONS");
    if (v134)
    {
      res_setoptions(a1, v134, "env");
    }
  }

  a1->options |= 1uLL;
  result = a1->res_h_errno;
LABEL_324:
  v135 = *MEMORY[0x29EDCA608];
  return result;
}

res_9_state res_build_start(res_9_state a1)
{
  if (a1)
  {
    v1 = a1;
    if (a1->options)
    {
      res_9_ndestroy(a1);
    }
  }

  else
  {
    v1 = res_state_new();
    if (!v1)
    {
      return v1;
    }
  }

  if (!v1->_u._ext.ext)
  {
    v1->_u._ext.ext = malloc_type_calloc(1uLL, 0x3C8uLL, 0x1000040FB2B3248uLL);
  }

  v1->_pad = 9;
  v1->retry = 2;
  v1->options = 2147484352;
  v1->id = arc4random();
  *v1->defdname = 0u;
  *&v1->defdname[16] = 0u;
  *&v1->defdname[32] = 0u;
  *&v1->defdname[48] = 0u;
  *&v1->defdname[64] = 0u;
  *&v1->defdname[80] = 0u;
  *&v1->defdname[96] = 0u;
  *&v1->defdname[112] = 0u;
  *&v1->defdname[128] = 0u;
  *&v1->defdname[144] = 0u;
  *&v1->defdname[160] = 0u;
  *&v1->defdname[176] = 0u;
  *&v1->defdname[192] = 0u;
  *&v1->defdname[208] = 0u;
  *&v1->defdname[224] = 0u;
  *&v1->defdname[240] = 0u;
  *v1->dnsrch = 0u;
  *&v1->dnsrch[2] = 0u;
  *&v1->dnsrch[4] = 0u;
  v1->dnsrch[6] = 0;
  v1->nscount = 0;
  *(v1 + 392) = *(v1 + 392) & 0xF0 | 1;
  v1->pfcode = 0;
  *&v1->_vcsock = 0xFFFFFFFFLL;
  v1->_u._ext.nscount = 0;
  v1->qhook = 0;
  v1->rhook = 0;
  if (v1->_u._ext.ext)
  {
    __strlcpy_chk();
    ext = v1->_u._ext.ext;
    __strlcpy_chk();
    v3 = v1->_u._ext.ext;
    __strlcpy_chk();
  }

  return v1;
}

uint64_t res_build(uint64_t a1, unsigned int a2, unsigned int *a3, char *__s1, char *a5)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || !__s1)
  {
    return result;
  }

  result = strcmp(__s1, "debug");
  if (!result)
  {
    v11 = *(a1 + 8) | 2;
    goto LABEL_37;
  }

  result = strcmp(__s1, "no_tld_query");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x100000;
    goto LABEL_37;
  }

  result = strcmp(__s1, "inet6");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x2000;
    goto LABEL_37;
  }

  result = strcmp(__s1, "rotate");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x4000;
    goto LABEL_37;
  }

  result = strcmp(__s1, "no-check-names");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x8000;
    goto LABEL_37;
  }

  result = strcmp(__s1, "edns0");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x40000000;
    goto LABEL_37;
  }

  if (*__s1 == 97 && __s1[1] == 54 && !__s1[2])
  {
    result = 0;
    v11 = *(a1 + 8) | 0x20000000;
    goto LABEL_37;
  }

  result = strcmp(__s1, "dname");
  if (!result)
  {
    v11 = *(a1 + 8) | 0x10000000;
    goto LABEL_37;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!strcmp(__s1, "domain"))
  {
    goto LABEL_34;
  }

  *&v48[0].s_addr = 0;
  if (!strcmp(__s1, "search"))
  {
    if (a3)
    {
      v12 = *a3;
      if (*a3 <= 6)
      {
        v13 = strlen(a5) + 1;
        if (v12)
        {
          v14 = *(a1 + 8 * (v12 - 1) + 72);
          v15 = v14 + 256;
          v16 = 257;
          v17 = 255;
          do
          {
            if (!*v14)
            {
              v15 = v14;
              goto LABEL_98;
            }

            ++v14;
            --v17;
            --v16;
          }

          while (v16 > 1);
          if (*v15)
          {
            v17 = 0;
            goto LABEL_99;
          }

          v17 = -1;
LABEL_98:
          ++v15;
        }

        else
        {
          *(a1 + 128) = 0u;
          v15 = (a1 + 128);
          *(a1 + 352) = 0u;
          *(a1 + 368) = 0u;
          *(a1 + 320) = 0u;
          *(a1 + 336) = 0u;
          *(a1 + 288) = 0u;
          *(a1 + 304) = 0u;
          *(a1 + 256) = 0u;
          *(a1 + 272) = 0u;
          *(a1 + 224) = 0u;
          *(a1 + 240) = 0u;
          *(a1 + 192) = 0u;
          *(a1 + 208) = 0u;
          *(a1 + 160) = 0u;
          *(a1 + 176) = 0u;
          v17 = 256;
          *(a1 + 144) = 0u;
        }

LABEL_99:
        if (v13 <= v17 && *a3 - 6 >= 0xFFFFFFF9)
        {
          memcpy(v15, a5, v13);
          result = 0;
          v42 = *a3;
          *(a1 + 8 * v42 + 72) = v15;
          *a3 = v42 + 1;
          return result;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (strcmp(__s1, "nameserver"))
  {
    if (strcmp(__s1, "sortlist"))
    {
      if (strcmp(__s1, "ndots"))
      {
        if (!strcmp(__s1, "nibble"))
        {
          if (strlen(a5) - 64 < 0xFFFFFFFFFFFFFFBFLL || !*(a1 + 536))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (!strcmp(__s1, "nibble2"))
        {
          if (strlen(a5) - 64 < 0xFFFFFFFFFFFFFFBFLL || !*(a1 + 536))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          if (strcmp(__s1, "bitstring"))
          {
            if (!strcmp(__s1, "attempts"))
            {
              v40 = atoi(a5);
              result = 0;
              v41 = v40 & ~(v40 >> 31);
              if (v41 >= 5)
              {
                v41 = 5;
              }

              *(a1 + 4) = v41;
              return result;
            }

            if (!strcmp(__s1, "v6revmode"))
            {
              result = strcmp(a5, "single");
              if (!result)
              {
                v11 = *(a1 + 8) | 0x80000000;
                goto LABEL_37;
              }

              result = strcmp(a5, "both");
              if (!result)
              {
                v11 = *(a1 + 8) & 0x7FFFFFFFLL;
LABEL_37:
                *(a1 + 8) = v11;
                return result;
              }

              return 0;
            }

            return 0xFFFFFFFFLL;
          }

          if (strlen(a5) - 64 < 0xFFFFFFFFFFFFFFBFLL || !*(a1 + 536))
          {
            return 0xFFFFFFFFLL;
          }
        }

LABEL_34:
        __strlcpy_chk();
        return 0;
      }

      v30 = atoi(a5);
      result = 0;
      v31 = v30 & ~(v30 >> 31);
      if (v31 >= 15)
      {
        LOBYTE(v31) = 15;
      }

      v32 = *(a1 + 392) & 0xF0 | v31;
LABEL_107:
      *(a1 + 392) = v32;
      return result;
    }

    v23 = strchr(a5, 47);
    if (v23)
    {
      v24 = v23;
      *v23 = 0;
      if (!inet_aton(a5, &v48[1]))
      {
        return 0xFFFFFFFFLL;
      }

      if (inet_aton(v24 + 1, v48))
      {
        goto LABEL_104;
      }
    }

    else if (!inet_aton(a5, &v48[1]))
    {
      return 0xFFFFFFFFLL;
    }

    v38 = bswap32(v48[1].s_addr);
    if ((v38 & 0x80000000) != 0)
    {
      if (v38 >> 30 == 2)
      {
        v39 = 0xFFFF;
      }

      else
      {
        v39 = 0xFFFFFF;
      }
    }

    else
    {
      v39 = 255;
    }

    v48[0].s_addr = v39;
LABEL_104:
    v43 = *(a1 + 392);
    if (v43 > 0x9F)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0;
    s_addr = v48[0].s_addr;
    v45 = (a1 + ((v43 >> 1) & 0x78));
    v45[99].s_addr = v48[1];
    v45[100].s_addr = s_addr;
    v32 = v43 + 16;
    goto LABEL_107;
  }

  if (*(a1 + 16) == 3)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  for (i = a5; ; ++i)
  {
    v22 = *i;
    if (v22 != 46)
    {
      break;
    }

    ++v18;
    v20 = i;
LABEL_55:
    ;
  }

  if (v22 == 58)
  {
    ++v19;
    goto LABEL_55;
  }

  if (*i)
  {
    goto LABEL_55;
  }

  if (v18 == 4 || v19 >= 1 && v20)
  {
    v25 = atoi(v20 + 1);
    if (v25)
    {
      a2 = v25;
    }

    *v20 = 0;
  }

  v48[1].s_addr = 0;
  v47 = 0uLL;
  *&v46[20] = 0;
  *v46 = 0;
  if (inet_pton(30, a5, &v47) == 1)
  {
    *&v46[4] = v47;
    v26 = *(a1 + 536);
    if (v26)
    {
      v27 = v26 + (*(a1 + 16) << 7);
      *v27 = 7708;
      *(v27 + 2) = bswap32(a2) >> 16;
      *(v27 + 4) = *v46;
      *(v27 + 20) = *&v46[16];
    }

    result = 0;
    v28 = *(a1 + 16);
    *(a1 + 16 * v28 + 21) = 0;
    v29 = v28 + 1;
    goto LABEL_77;
  }

  if (inet_pton(2, a5, &v48[1]) != 1)
  {
    return 0;
  }

  v33 = v48[1].s_addr;
  v34 = bswap32(a2) >> 16;
  v35 = *(a1 + 536);
  if (v35)
  {
    v36 = v35 + (*(a1 + 16) << 7);
    *v36 = 528;
    *(v36 + 2) = v34;
    *(v36 + 4) = v33;
    *(v36 + 8) = 0;
  }

  result = 0;
  v37 = a1 + 16 * *(a1 + 16);
  *(v37 + 20) = 528;
  *(v37 + 22) = v34;
  *(v37 + 24) = v33;
  *(v37 + 28) = 0;
  v29 = *(a1 + 16) + 1;
LABEL_77:
  *(a1 + 16) = v29;
  return result;
}

unsigned __int8 **res_next_word(unsigned __int8 **result)
{
  if (result)
  {
    v1 = *result;
    if (!*result)
    {
      return 0;
    }

    while (1)
    {
      v2 = *v1;
      v3 = v2 > 0x20;
      v4 = (1 << v2) & 0x100000600;
      if (v3 || v4 == 0)
      {
        break;
      }

      ++v1;
    }

    *result = v1;
    v6 = v1 + 1;
    v7 = *v1;
    if (*v1)
    {
      while (1)
      {
        if ((v7 - 9) < 2)
        {
LABEL_15:
          *(v6 - 1) = 0;
          goto LABEL_17;
        }

        if (!v7)
        {
          break;
        }

        if (v7 == 32)
        {
          goto LABEL_15;
        }

        v8 = *v6++;
        v7 = v8;
      }

      --v6;
LABEL_17:
      *result = v6;
      if (v1 == v6)
      {
        return 0;
      }

      else
      {
        return v1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void res_9_ndestroy(res_9_state a1)
{
  res_9_nclose(a1);
  ext = a1->_u._ext.ext;
  if (ext)
  {
    free(ext);
    a1->_u._ext.ext = 0;
  }

  v3 = *(&a1->_u._ext + 4);
  if (v3)
  {
    free(v3);
    *(&a1->_u._ext + 4) = 0;
  }

  a1->options &= ~1uLL;
}

void res_9_nclose(res_9_state a1)
{
  vcsock = a1->_vcsock;
  if ((vcsock & 0x80000000) == 0)
  {
    close(vcsock);
    a1->_vcsock = -1;
    a1->_flags &= 0xFFFFFFFC;
  }

  nscount = a1->_u._ext.nscount;
  if (a1->_u._ext.nscount)
  {
    v4 = 0;
    nssocks = a1->_u._ext.nssocks;
    do
    {
      v6 = nssocks[v4];
      if (v6 != -1)
      {
        close(v6);
        nssocks[v4] = -1;
        nscount = a1->_u._ext.nscount;
      }

      ++v4;
    }

    while (v4 < nscount);
  }
}

int res_9_b64_ntop(const u_char *a1, size_t a2, char *a3, size_t a4)
{
  if (a2 >= 3)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 4;
      if (v5 + 4 > a4)
      {
        goto LABEL_16;
      }

      v7 = a1[2];
      v8 = a1[1];
      v9 = *a1;
      a1 += 3;
      a2 -= 3;
      v10 = &a3[v5 + 3];
      *(v10 - 3) = Base64[v9 >> 2];
      *(v10 - 2) = Base64[(v8 >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v9 & 3))];
      *(v10 - 1) = Base64[(v7 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v8 & 0xF))];
      *v10 = Base64[v7 & 0x3F];
      v5 = v6;
      if (a2 <= 2)
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }
  }

  v6 = 0;
  if (a2)
  {
LABEL_8:
    v11 = 0;
    v19 = 0;
    v18 = 0;
    do
    {
      *(&v18 + v11) = a1[v11];
      ++v11;
    }

    while (a2 != v11);
    if (v6 + 4 > a4)
    {
      goto LABEL_16;
    }

    v12 = HIBYTE(v18);
    v13 = (HIBYTE(v18) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v18 & 3));
    v14 = &a3[v6];
    *v14 = Base64[v18 >> 2];
    v15 = v19;
    v14[1] = Base64[v13];
    v16 = 61;
    if (a2 != 1)
    {
      v16 = Base64[(v15 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v12 & 0xF))];
    }

    a3[v6 | 2] = v16;
    v14[3] = 61;
    v6 += 4;
  }

LABEL_14:
  if (v6 >= a4)
  {
LABEL_16:
    LODWORD(v6) = -1;
    return v6;
  }

  a3[v6] = 0;
  return v6;
}

int res_9_b64_pton(const char *a1, u_char *a2, size_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1;
  v9 = MEMORY[0x29EDCA600];
  while (1)
  {
    do
    {
      while (1)
      {
        v11 = *a1++;
        v10 = v11;
        if (!v11)
        {
          if (v8)
          {
            return v6;
          }

          return -1;
        }

        if ((v10 & 0x80) == 0)
        {
          break;
        }

        if (!__maskrune(v10, 0x4000uLL))
        {
          goto LABEL_7;
        }
      }
    }

    while ((*(v9 + 4 * v10 + 60) & 0x4000) != 0);
LABEL_7:
    if (v10 == 61)
    {
      break;
    }

    v12 = memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v10, 0x41uLL);
    if (!v12)
    {
      return -1;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        if (a2)
        {
          if (v6 >= a3)
          {
            return -1;
          }

          a2[v6] |= (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") >> 4;
          if (v6 + 1 < a3)
          {
            v8 = 0;
            a2[v6 + 1] = 16 * (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
LABEL_33:
            v7 = 2;
            goto LABEL_34;
          }

          if (16 * (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"))
          {
            return -1;
          }
        }

        v8 = 0;
        goto LABEL_33;
      }

      if (v7 == 2)
      {
        if (a2)
        {
          if (v6 >= a3)
          {
            return -1;
          }

          a2[v6] |= (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") >> 2;
          if (v6 + 1 < a3)
          {
            v8 = 0;
            a2[v6 + 1] = (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") << 6;
LABEL_30:
            v7 = 3;
            goto LABEL_34;
          }

          if ((v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/") << 6)
          {
            return -1;
          }
        }

        v8 = 0;
        goto LABEL_30;
      }

      if (a2)
      {
        if (v6 >= a3)
        {
          return -1;
        }

        v7 = 0;
        a2[v6] |= v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
      }

      else
      {
        v7 = 0;
      }

      v8 = 1;
LABEL_34:
      ++v6;
    }

    else
    {
      v8 = 0;
      v7 = 1;
      if (a2)
      {
        if (v6 >= a3)
        {
          return -1;
        }

        v8 = 0;
        a2[v6] = 4 * (v12 - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
      }
    }
  }

  if (v7 >= 2)
  {
    v14 = a1 + 2;
    v15 = *a1;
    if (v7 == 2)
    {
      if (!*a1)
      {
        return -1;
      }

      while (v15 > 0x7Fu ? __maskrune(v15, 0x4000uLL) : *(v9 + 4 * v15 + 60) & 0x4000)
      {
        v15 = *(v14++ - 1);
        result = -1;
        if (!v15)
        {
          return result;
        }
      }

      if (v15 != 61)
      {
        return -1;
      }

      LOBYTE(v15) = *(v14 - 1);
      if (v15)
      {
LABEL_48:
        while (v15 > 0x7Fu ? __maskrune(v15, 0x4000uLL) : *(v9 + 4 * v15 + 60) & 0x4000)
        {
          v18 = *v14++;
          LOBYTE(v15) = v18;
          if (!v18)
          {
            goto LABEL_53;
          }
        }

        return -1;
      }
    }

    else
    {
      v14 = a1 + 1;
      if (*a1)
      {
        goto LABEL_48;
      }
    }

LABEL_53:
    if (!a2 || v6 >= a3 || !a2[v6])
    {
      return v6;
    }
  }

  return -1;
}

uint64_t dns_async_start(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = 0;
  if (!a2)
  {
    return 3;
  }

  v10 = si_module_with_name();
  if (v10)
  {
    v11 = v10;
    v12 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
    if (v12)
    {
      v13 = v12;
      *v12 = a6;
      v12[1] = a7;
      v12[2] = v11;
      v14 = si_async_call();
      result = 0;
      *a1 = v14;
      if (v14)
      {
        return result;
      }

      free(v13);
    }

    si_module_release();
  }

  return 3;
}

void _dns_callback(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return;
  }

  if (*a3)
  {
    if (a2 <= 9)
    {
      v5 = a2;
    }

    else
    {
      v5 = 3;
    }

    if (a1 && (v6 = *(a1 + 32), v6 >= 1))
    {
      v7 = malloc_type_malloc(v6, 0xCE21977EuLL);
      v8 = v7;
      if (!v7)
      {
        v12 = 0;
        goto LABEL_19;
      }

      v9 = *(a1 + 32);
      memcpy(v7, *(a1 + 40), v9);
      v10 = *(a1 + 48);
      if (v10 >= 1)
      {
        v11 = malloc_type_malloc(v10, 0x9BDF4AB0uLL);
        v12 = v11;
        if (v11)
        {
          v13 = *(a1 + 48);
          memcpy(v11, *(a1 + 56), v13);
LABEL_20:
          si_item_release();
          (*a3)(v5, v8, v9, v12, v13, a3[1]);
          goto LABEL_21;
        }

        free(v8);
        v8 = 0;
LABEL_19:
        v9 = 0;
        v13 = 0;
        v5 = 3;
        goto LABEL_20;
      }

      v12 = 0;
    }

    else
    {
      v8 = 0;
      v12 = 0;
      v9 = 0;
    }

    v13 = 0;
    goto LABEL_20;
  }

  si_item_release();
LABEL_21:
  v14 = a3[2];
  si_module_release();

  free(a3);
}

dns_resource_record_t *__cdecl dns_parse_resource_record(const char *buf, uint32_t len)
{
  v3 = len;
  v4 = buf;
  return _dns_parse_resource_record_internal(buf, &v4, &v3);
}

dns_resource_record_t *_dns_parse_resource_record_internal(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  if (*a3 >= 1)
  {
    v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040D5FA72FAuLL);
    v7 = _dns_parse_domain_name(a1, a2, a3);
    v6->name = v7;
    if (v7)
    {
      if (*a3 > 9)
      {
        v8 = *a2;
        v9 = bswap32(**a2) >> 16;
        v6->dnstype = v9;
        v6->dnsclass = bswap32(*(v8 + 2)) >> 16;
        v6->ttl = bswap32(*(v8 + 4));
        v10 = bswap32(*(v8 + 8));
        v11 = v8 + 10;
        *a2 = v8 + 10;
        v12 = *a3 - 10;
        *a3 = v12;
        if (v12 >= HIWORD(v10))
        {
          v13 = HIWORD(v10);
          v6->data.A = 0;
          switch(v9)
          {
            case 1u:
              if (*a3 <= 3)
              {
                goto LABEL_66;
              }

              *a3 -= 4;
              v6->data.A = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
              v31 = **a2;
              *a2 += 4;
              v6->data.A->addr.s_addr = v31;
              goto LABEL_61;
            case 2u:
            case 3u:
            case 4u:
            case 5u:
            case 7u:
            case 8u:
            case 9u:
            case 0xCu:
              v6->data.A = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
              v14 = _dns_parse_domain_name(a1, a2, a3);
              goto LABEL_7;
            case 6u:
              v6->data.A = malloc_type_calloc(1uLL, 0x28uLL, 0x10100408B452CF4uLL);
              *v6->data.A = _dns_parse_domain_name(a1, a2, a3);
              if (!*v6->data.A)
              {
                goto LABEL_66;
              }

              *&v6->data.A[2].addr.s_addr = _dns_parse_domain_name(a1, a2, a3);
              if (!*&v6->data.A[2].addr.s_addr || *a3 <= 19)
              {
                goto LABEL_66;
              }

              *a3 -= 20;
              v32 = *a2;
              v33 = bswap32(**a2);
              *a2 += 4;
              v6->data.A[4].addr.s_addr = v33;
              v34 = bswap32(v32[1]);
              *a2 = (v32 + 2);
              v6->data.A[5].addr.s_addr = v34;
              v35 = bswap32(v32[2]);
              *a2 = (v32 + 3);
              v6->data.A[6].addr.s_addr = v35;
              v36 = bswap32(v32[3]);
              *a2 = (v32 + 4);
              v6->data.A[7].addr.s_addr = v36;
              v37 = bswap32(v32[4]);
              *a2 = (v32 + 5);
              v6->data.A[8].addr.s_addr = v37;
              goto LABEL_61;
            case 0xBu:
              v40 = *a3;
              if (*a3 <= 4)
              {
                goto LABEL_66;
              }

              *a3 = v40 - 5;
              v41 = v13 - 5;
              if (v13 < 5 || v40 < v13)
              {
                goto LABEL_66;
              }

              *a3 = v40 - v13;
              v6->data.A = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A3B16CB0uLL);
              v43 = *a2;
              v44 = **a2;
              *a2 += 4;
              v6->data.A->addr.s_addr = v44;
              LOBYTE(v44) = *(v43 + 4);
              *a2 = v43 + 5;
              LOBYTE(v6->data.A[1].addr.s_addr) = v44;
              v6->data.A[2].addr.s_addr = 8 * v41;
              *&v6->data.A[4].addr.s_addr = 0;
              if (v13 != 5)
              {
                v45 = malloc_type_calloc(1uLL, v6->data.A[2].addr.s_addr, 0x100004077774924uLL);
                v46 = 0;
                v47 = 0;
                *&v6->data.A[4].addr.s_addr = v45;
                do
                {
                  v48 = v47;
                  v49 = *(*a2)++;
                  v47 += 8;
                  v50 = 128;
                  v51 = 8;
                  do
                  {
                    if ((v50 & v49) != 0)
                    {
                      v52 = -1;
                    }

                    else
                    {
                      v52 = 0;
                    }

                    *(*&v6->data.A[4].addr.s_addr + v48) = v52;
                    v50 >>= 1;
                    ++v48;
                    --v51;
                  }

                  while (v51);
                  ++v46;
                }

                while (v46 != v41);
              }

              goto LABEL_61;
            case 0xDu:
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x10040B8F86A93uLL);
              *v6->data.A = _dns_parse_string(a2, a3);
              if (!*v6->data.A)
              {
                goto LABEL_66;
              }

              goto LABEL_22;
            case 0xEu:
            case 0x11u:
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x10040B8F86A93uLL);
              *v6->data.A = _dns_parse_domain_name(a1, a2, a3);
              if (!*v6->data.A)
              {
                goto LABEL_66;
              }

              goto LABEL_31;
            case 0xFu:
            case 0x15u:
              if (*a3 <= 1)
              {
                goto LABEL_66;
              }

              *a3 -= 2;
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040749D3347uLL);
              v15 = bswap32(**a2) >> 16;
              *a2 += 2;
              LOWORD(v6->data.A->addr.s_addr) = v15;
              goto LABEL_31;
            case 0x10u:
              v53 = malloc_type_malloc(0x10uLL, 0x10800407411B482uLL);
              v6->data.A = v53;
              v53->addr.s_addr = 0;
              *&v6->data.A[2].addr.s_addr = 0;
              v54 = v11 + v13;
              if (*a2 >= v54)
              {
                goto LABEL_61;
              }

              break;
            case 0x12u:
              if (*a3 <= 3)
              {
                goto LABEL_66;
              }

              *a3 -= 4;
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x101004082113244uLL);
              v38 = bswap32(**a2);
              *a2 += 4;
              v6->data.A->addr.s_addr = v38;
              goto LABEL_31;
            case 0x13u:
              v6->data.A = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
              v14 = _dns_parse_string(a2, a3);
LABEL_7:
              *v6->data.A = v14;
              if (!*v6->data.A)
              {
                goto LABEL_66;
              }

              goto LABEL_61;
            case 0x14u:
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x10040B8F86A93uLL);
              *v6->data.A = _dns_parse_string(a2, a3);
              A = v6->data.A;
              if (!*&A->addr.s_addr)
              {
                goto LABEL_66;
              }

              if (*a2 >= v11 + v13)
              {
                *&A[2].addr.s_addr = 0;
                goto LABEL_61;
              }

LABEL_22:
              v30 = _dns_parse_string(a2, a3);
LABEL_32:
              *&v6->data.A[2].addr.s_addr = v30;
              if (!*&v6->data.A[2].addr.s_addr)
              {
                goto LABEL_66;
              }

              goto LABEL_61;
            case 0x1Cu:
              if (*a3 <= 15)
              {
                goto LABEL_66;
              }

              *a3 -= 16;
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
              v59 = **a2;
              *a2 += 4;
              v6->data.A->addr.s_addr = v59;
              v60 = **a2;
              *a2 += 4;
              v6->data.A[1].addr.s_addr = v60;
              v61 = **a2;
              *a2 += 4;
              v6->data.A[2].addr.s_addr = v61;
              v24 = *a2 + 4;
              v23 = **a2;
              goto LABEL_59;
            case 0x1Du:
              if (*a3 <= 15)
              {
                goto LABEL_66;
              }

              *a3 -= 16;
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
              v16 = *a2;
              v17 = *(*a2)++;
              LOBYTE(v6->data.A->addr.s_addr) = v17;
              v18 = *(v16 + 1);
              *a2 = v16 + 2;
              BYTE1(v6->data.A->addr.s_addr) = v18;
              v19 = *(v16 + 2);
              *a2 = v16 + 3;
              BYTE2(v6->data.A->addr.s_addr) = v19;
              v20 = *(v16 + 3);
              v21 = *(v16 + 4);
              *a2 = v16 + 4;
              HIBYTE(v6->data.A->addr.s_addr) = v20;
              *a2 = v16 + 8;
              v6->data.A[1].addr.s_addr = bswap32(v21);
              v22 = bswap32(*(v16 + 8));
              *a2 = v16 + 12;
              v6->data.A[2].addr.s_addr = v22;
              v23 = bswap32(*(v16 + 12));
              v24 = v16 + 16;
LABEL_59:
              *a2 = v24;
              v6->data.A[3].addr.s_addr = v23;
              goto LABEL_61;
            case 0x21u:
              if (*a3 <= 5)
              {
                goto LABEL_66;
              }

              *a3 -= 6;
              v6->data.A = malloc_type_calloc(1uLL, 0x10uLL, 0x101004057418832uLL);
              v25 = *a2;
              v26 = bswap32(**a2);
              *a2 += 2;
              LOWORD(v6->data.A->addr.s_addr) = HIWORD(v26);
              v27 = bswap32(*(v25 + 2));
              *a2 = v25 + 4;
              HIWORD(v6->data.A->addr.s_addr) = HIWORD(v27);
              v28 = bswap32(*(v25 + 4)) >> 16;
              *a2 = v25 + 6;
              LOWORD(v6->data.A[1].addr.s_addr) = v28;
LABEL_31:
              v30 = _dns_parse_domain_name(a1, a2, a3);
              goto LABEL_32;
            default:
              *a3 -= v13;
              v39 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040749D3347uLL);
              v6->data.A = v39;
              LOWORD(v39->addr.s_addr) = v13;
              *&v6->data.A[2].addr.s_addr = malloc_type_calloc(1uLL, v13, 0x3306BC2CuLL);
              memmove(*&v6->data.A[2].addr.s_addr, *a2, v13);
              *a2 += v13;
              goto LABEL_61;
          }

          while (1)
          {
            v55 = v6->data.A;
            v56 = v55->addr.s_addr ? malloc_type_realloc(*&v55[2].addr.s_addr, 8 * (v55->addr.s_addr + 1), 0x10040436913F5uLL) : malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
            *&v6->data.A[2].addr.s_addr = v56;
            *(*&v6->data.A[2].addr.s_addr + 8 * v6->data.A->addr.s_addr) = _dns_parse_string(a2, a3);
            v57 = v6->data.A;
            s_addr = v57->addr.s_addr;
            if (!*(*&v57[2].addr.s_addr + 8 * s_addr))
            {
              break;
            }

            v57->addr.s_addr = s_addr + 1;
            if (*a2 >= v54)
            {
LABEL_61:
              if (v12 >= *a3)
              {
                v62 = (v12 - *a3) <= v13 ? v13 : v12 - *a3;
                if (v12 >= v62)
                {
                  *a2 = v11 + v62;
                  *a3 = v12 - v62;
                  return v6;
                }
              }

              break;
            }
          }
        }
      }
    }

LABEL_66:
    dns_free_resource_record(v6);
  }

  return 0;
}

dns_question_t *__cdecl dns_parse_question(const char *buf, uint32_t len)
{
  v3 = len;
  v4 = buf;
  return _dns_parse_question_internal(buf, &v4, &v3);
}

_WORD *_dns_parse_question_internal(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  if (a2 && *a2 && *a3 >= 1)
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040A1D9428BuLL);
    v7 = _dns_parse_domain_name(a1, a2, a3);
    *v6 = v7;
    if (v7)
    {
      if (*a3 > 3)
      {
        *a3 -= 4;
        v9 = *a2;
        v6[4] = bswap32(**a2) >> 16;
        v10 = bswap32(*(v9 + 2)) >> 16;
        *a2 = v9 + 4;
        v6[5] = v10;
        return v6;
      }

      free(v7);
    }

    free(v6);
  }

  return 0;
}

dns_reply_t *__cdecl dns_parse_packet(const char *buf, uint32_t len)
{
  v2 = 0;
  if (buf)
  {
    v3 = len - 12;
    if (len >= 0xC)
    {
      v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040AD5F42E3uLL);
      v5 = malloc_type_calloc(1uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
      v2->header = v5;
      *v5 = bswap32(*buf) >> 16;
      v5[1] = bswap32(*(buf + 1)) >> 16;
      v6 = bswap32(*(buf + 2));
      v7 = HIWORD(v6);
      v5[2] = HIWORD(v6);
      v5[3] = bswap32(*(buf + 3)) >> 16;
      v5[4] = bswap32(*(buf + 4)) >> 16;
      v8 = bswap32(*(buf + 5)) >> 16;
      v19 = buf + 12;
      v5[5] = v8;
      v18 = v3;
      v2->question = malloc_type_calloc(v7, 8uLL, 0x2004093837F09uLL);
      if (v5[2])
      {
        v9 = 0;
        while (1)
        {
          v2->question[v9] = _dns_parse_question_internal(buf, &v19, &v18);
          v10 = v2->question[v9];
          if (!v10)
          {
            break;
          }

          if (++v9 >= v5[2])
          {
            goto LABEL_7;
          }
        }

        v14 = v9 - 1;
        if (!v9)
        {
          v14 = 0;
        }

        v5[2] = v14;
        *(v5 + 3) = 0;
        goto LABEL_31;
      }

LABEL_7:
      v2->answer = malloc_type_calloc(v5[3], 8uLL, 0x2004093837F09uLL);
      if (v5[3])
      {
        v11 = 0;
        while (1)
        {
          v2->answer[v11] = _dns_parse_resource_record_internal(buf, &v19, &v18);
          v10 = v2->answer[v11];
          if (!v10)
          {
            break;
          }

          if (++v11 >= v5[3])
          {
            goto LABEL_11;
          }
        }

        v15 = v11 - 1;
        if (!v11)
        {
          v15 = 0;
        }

        v5[3] = v15;
        v5[4] = 0;
        goto LABEL_31;
      }

LABEL_11:
      v2->authority = malloc_type_calloc(v5[4], 8uLL, 0x2004093837F09uLL);
      if (v5[4])
      {
        v12 = 0;
        while (1)
        {
          v2->authority[v12] = _dns_parse_resource_record_internal(buf, &v19, &v18);
          v10 = v2->authority[v12];
          if (!v10)
          {
            break;
          }

          if (++v12 >= v5[4])
          {
            goto LABEL_15;
          }
        }

        v16 = v12 - 1;
        if (!v12)
        {
          v16 = 0;
        }

        v5[4] = v16;
        goto LABEL_31;
      }

LABEL_15:
      v2->additional = malloc_type_calloc(v5[5], 8uLL, 0x2004093837F09uLL);
      if (v5[5])
      {
        v13 = 0;
        while (1)
        {
          v2->additional[v13] = _dns_parse_resource_record_internal(buf, &v19, &v18);
          if (!v2->additional[v13])
          {
            break;
          }

          if (++v13 >= v5[5])
          {
            return v2;
          }
        }

        LOWORD(v10) = v13 - 1;
        if (!v13)
        {
          LOWORD(v10) = 0;
        }

LABEL_31:
        v5[5] = v10;
        dns_free_reply(v2);
        return 0;
      }
    }
  }

  return v2;
}

void dns_free_reply(dns_reply_t *r)
{
  if (r)
  {
    header = r->header;
    if (header)
    {
      if (header->qdcount)
      {
        v3 = 0;
        do
        {
          free(r->question[v3]->name);
          free(r->question[v3++]);
          header = r->header;
        }

        while (v3 < header->qdcount);
      }

      if (header->ancount)
      {
        v4 = 0;
        do
        {
          dns_free_resource_record(r->answer[v4++]);
          header = r->header;
        }

        while (v4 < header->ancount);
      }

      if (header->nscount)
      {
        v5 = 0;
        do
        {
          dns_free_resource_record(r->authority[v5++]);
          header = r->header;
        }

        while (v5 < header->nscount);
      }

      if (header->arcount)
      {
        v6 = 0;
        do
        {
          dns_free_resource_record(r->additional[v6++]);
          header = r->header;
        }

        while (v6 < header->arcount);
      }

      free(header);
    }

    question = r->question;
    if (question)
    {
      free(question);
    }

    answer = r->answer;
    if (answer)
    {
      free(answer);
    }

    authority = r->authority;
    if (authority)
    {
      free(authority);
    }

    additional = r->additional;
    if (additional)
    {
      free(additional);
    }

    server = r->server;
    if (server)
    {
      free(server);
    }

    free(r);
  }
}

void dns_free_resource_record(dns_resource_record_t *rr)
{
  free(rr->name);
  switch(rr->dnstype)
  {
    case 0u:
      break;
    case 1u:
    case 0x1Cu:
    case 0x1Du:
      A = rr->data.A;
      if (A)
      {
        goto LABEL_11;
      }

      break;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xCu:
    case 0x13u:
      A = rr->data.A;
      if (A)
      {
        v3 = *&A->addr.s_addr;
        if (*&A->addr.s_addr)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      break;
    case 6u:
    case 0xDu:
    case 0xEu:
    case 0x11u:
    case 0x14u:
      A = rr->data.A;
      if (A)
      {
        if (*&A->addr.s_addr)
        {
          free(*&A->addr.s_addr);
          A = rr->data.A;
        }

        goto LABEL_9;
      }

      break;
    case 0xBu:
      A = rr->data.A;
      if (A)
      {
        v3 = *&A[4].addr.s_addr;
        if (v3)
        {
          goto LABEL_10;
        }

        goto LABEL_11;
      }

      break;
    case 0x10u:
      A = rr->data.A;
      if (A)
      {
        if (A->addr.s_addr)
        {
          v4 = 0;
          do
          {
            free(*(*&A[2].addr.s_addr + 8 * v4++));
            A = rr->data.A;
          }

          while (v4 < A->addr.s_addr);
        }

        goto LABEL_9;
      }

      break;
    default:
      A = rr->data.A;
      if (A)
      {
LABEL_9:
        v3 = *&A[2].addr.s_addr;
        if (v3)
        {
LABEL_10:
          free(v3);
          A = rr->data.A;
        }

LABEL_11:
        free(A);
      }

      break;
  }

  free(rr);
}

void dns_free_question(dns_question_t *q)
{
  if (q)
  {
    name = q->name;
    if (name)
    {
      free(name);
    }

    free(q);
  }
}

void dns_set_buffer_size(dns_handle_t d, uint32_t len)
{
  if (d && *(d + 8) != len)
  {
    v4 = *(d + 3);
    if (v4)
    {
      free(v4);
      *(d + 3) = 0;
    }

    if (len >= 0x10000)
    {
      v5 = 0x10000;
    }

    else
    {
      v5 = len;
    }

    *(d + 8) = v5;
    if (len)
    {
      *(d + 3) = malloc_type_malloc(v5, 0xC4E7871AuLL);
    }
  }
}

uint32_t dns_get_buffer_size(dns_handle_t d)
{
  if (d)
  {
    LODWORD(d) = *(d + 8);
  }

  return d;
}

const char *__cdecl dns_type_string(uint16_t dnstype)
{
  if (dnstype > 248)
  {
    if (dnstype > 252)
    {
      if (dnstype > 254)
      {
        if (dnstype == 255)
        {
          return "ANY  ";
        }

        else if (dnstype == 256)
        {
          return "ZXFR ";
        }

        else
        {
          return "?????";
        }
      }

      else if (dnstype == 253)
      {
        return "MAILB";
      }

      else
      {
        return "MAILA";
      }
    }

    else if (dnstype > 250)
    {
      if (dnstype == 251)
      {
        return "IXFR ";
      }

      else
      {
        return "AXFR ";
      }
    }

    else if (dnstype == 249)
    {
      return "TKEY ";
    }

    else
    {
      return "TSIG ";
    }
  }

  else
  {
    v1 = dnstype - 1;
    result = "A    ";
    switch(v1)
    {
      case 0:
        return result;
      case 1:
        result = "NS   ";
        break;
      case 2:
        result = "MD   ";
        break;
      case 3:
        result = "MF   ";
        break;
      case 4:
        result = "CNAME";
        break;
      case 5:
        result = "SOA  ";
        break;
      case 6:
        result = "MB  ";
        break;
      case 7:
        result = "MG   ";
        break;
      case 8:
        result = "MR   ";
        break;
      case 9:
        result = "NULL ";
        break;
      case 10:
        result = "WKS  ";
        break;
      case 11:
        result = "PTR  ";
        break;
      case 12:
        result = "HINFO";
        break;
      case 13:
        result = "MINFO";
        break;
      case 14:
        result = "MX   ";
        break;
      case 15:
        result = "TXT  ";
        break;
      case 16:
        result = "PR   ";
        break;
      case 17:
        result = "AFSDB";
        break;
      case 18:
        result = "X25  ";
        break;
      case 19:
        result = "ISDN ";
        break;
      case 20:
        result = "RT   ";
        break;
      case 21:
        result = "NSAP ";
        break;
      case 22:
        result = "NSPTR";
        break;
      case 23:
        result = "SIG  ";
        break;
      case 24:
        result = "KEY  ";
        break;
      case 25:
        result = "PX   ";
        break;
      case 26:
        result = "GPOS ";
        break;
      case 27:
        result = "AAAA ";
        break;
      case 28:
        result = "LOC  ";
        break;
      case 29:
        result = "NXT  ";
        break;
      case 30:
        result = "EID  ";
        break;
      case 31:
        result = "NIMLC";
        break;
      case 32:
        result = "SRV  ";
        break;
      case 33:
        result = "ATMA ";
        break;
      case 34:
        result = "NAPTR";
        break;
      case 35:
        result = "KX   ";
        break;
      case 36:
        result = "CERT ";
        break;
      case 37:
        result = "A6   ";
        break;
      case 38:
        result = "DNAME";
        break;
      case 39:
        result = "SINK ";
        break;
      case 40:
        result = "OPT  ";
        break;
      default:
        return "?????";
    }
  }

  return result;
}

int32_t dns_type_number(const char *t, uint16_t *n)
{
  if (!t)
  {
    return -1;
  }

  if (!strcasecmp(t, "A"))
  {
    v5 = 1;
  }

  else if (!strcasecmp(t, "NS"))
  {
    v5 = 2;
  }

  else if (!strcasecmp(t, "MD"))
  {
    v5 = 3;
  }

  else if (!strcasecmp(t, "MF"))
  {
    v5 = 4;
  }

  else if (!strcasecmp(t, "CNAME"))
  {
    v5 = 5;
  }

  else if (!strcasecmp(t, "SOA"))
  {
    v5 = 6;
  }

  else if (!strcasecmp(t, "MB"))
  {
    v5 = 7;
  }

  else if (!strcasecmp(t, "MG"))
  {
    v5 = 8;
  }

  else if (!strcasecmp(t, "MR"))
  {
    v5 = 9;
  }

  else if (!strcasecmp(t, "NULL"))
  {
    v5 = 10;
  }

  else if (!strcasecmp(t, "WKS"))
  {
    v5 = 11;
  }

  else if (!strcasecmp(t, "PTR"))
  {
    v5 = 12;
  }

  else if (!strcasecmp(t, "HINFO"))
  {
    v5 = 13;
  }

  else if (!strcasecmp(t, "MINFO"))
  {
    v5 = 14;
  }

  else if (!strcasecmp(t, "MX"))
  {
    v5 = 15;
  }

  else if (!strcasecmp(t, "TXT"))
  {
    v5 = 16;
  }

  else if (!strcasecmp(t, "RP"))
  {
    v5 = 17;
  }

  else if (!strcasecmp(t, "AFSDB"))
  {
    v5 = 18;
  }

  else if (!strcasecmp(t, "X25"))
  {
    v5 = 19;
  }

  else if (!strcasecmp(t, "ISDN"))
  {
    v5 = 20;
  }

  else if (!strcasecmp(t, "RT"))
  {
    v5 = 21;
  }

  else if (!strcasecmp(t, "NSAP"))
  {
    v5 = 22;
  }

  else if (!strcasecmp(t, "NSPTR") || !strcasecmp(t, "NSAP_PTR"))
  {
    v5 = 23;
  }

  else if (!strcasecmp(t, "SIG"))
  {
    v5 = 24;
  }

  else if (!strcasecmp(t, "KEY"))
  {
    v5 = 25;
  }

  else if (!strcasecmp(t, "PX"))
  {
    v5 = 26;
  }

  else if (!strcasecmp(t, "GPOS"))
  {
    v5 = 27;
  }

  else if (!strcasecmp(t, "AAAA"))
  {
    v5 = 28;
  }

  else if (!strcasecmp(t, "LOC"))
  {
    v5 = 29;
  }

  else if (!strcasecmp(t, "NXT"))
  {
    v5 = 30;
  }

  else if (!strcasecmp(t, "EID"))
  {
    v5 = 31;
  }

  else if (!strcasecmp(t, "NIMLOC"))
  {
    v5 = 32;
  }

  else if (!strcasecmp(t, "SRV"))
  {
    v5 = 33;
  }

  else if (!strcasecmp(t, "ATMA"))
  {
    v5 = 34;
  }

  else if (!strcasecmp(t, "NAPTR"))
  {
    v5 = 35;
  }

  else if (!strcasecmp(t, "KX"))
  {
    v5 = 36;
  }

  else if (!strcasecmp(t, "CERT"))
  {
    v5 = 37;
  }

  else if (!strcasecmp(t, "A6"))
  {
    v5 = 38;
  }

  else if (!strcasecmp(t, "DNAME"))
  {
    v5 = 39;
  }

  else if (!strcasecmp(t, "SINK"))
  {
    v5 = 40;
  }

  else if (!strcasecmp(t, "OPT"))
  {
    v5 = 41;
  }

  else if (!strcasecmp(t, "TKEY"))
  {
    v5 = 249;
  }

  else if (!strcasecmp(t, "TSIG"))
  {
    v5 = 250;
  }

  else if (!strcasecmp(t, "IXFR"))
  {
    v5 = 251;
  }

  else if (!strcasecmp(t, "AXFR"))
  {
    v5 = 252;
  }

  else if (!strcasecmp(t, "MAILB"))
  {
    v5 = 253;
  }

  else if (!strcasecmp(t, "MAILA"))
  {
    v5 = 254;
  }

  else if (!strcasecmp(t, "ANY"))
  {
    v5 = 255;
  }

  else
  {
    if (strcasecmp(t, "ZXFR"))
    {
      return -1;
    }

    v5 = 256;
  }

  result = 0;
  *n = v5;
  return result;
}

const char *__cdecl dns_class_string(uint16_t dnsclass)
{
  if (dnsclass > 3)
  {
    if (dnsclass == 4)
    {
      return "HS";
    }

    if (dnsclass != 254)
    {
      if (dnsclass == 255)
      {
        return "ANY";
      }

      return "??";
    }

    return "NONE";
  }

  else
  {
    if (dnsclass == 1)
    {
      return "IN";
    }

    if (dnsclass != 2)
    {
      if (dnsclass == 3)
      {
        return "CH";
      }

      return "??";
    }

    return "CS";
  }
}

int32_t dns_class_number(const char *c, uint16_t *n)
{
  if (!c)
  {
    return -1;
  }

  if (!strcasecmp(c, "IN"))
  {
    v5 = 1;
  }

  else if (!strcasecmp(c, "CS"))
  {
    v5 = 2;
  }

  else if (!strcasecmp(c, "CH"))
  {
    v5 = 3;
  }

  else if (!strcasecmp(c, "HS"))
  {
    v5 = 4;
  }

  else if (!strcasecmp(c, "NONE"))
  {
    v5 = 254;
  }

  else
  {
    if (strcasecmp(c, "ANY"))
    {
      return -1;
    }

    v5 = 255;
  }

  result = 0;
  *n = v5;
  return result;
}

uint64_t _dns_print_question_lock(uint64_t a1, FILE *a2, int a3)
{
  if (a3)
  {
    pthread_mutex_lock(&_dnsPrintLock);
    v5 = *a1;
    v6 = dns_class_string(*(a1 + 10));
    v7 = dns_type_string(*(a1 + 8));
    fprintf(a2, "%s %s %s\n", v5, v6, v7);

    return pthread_mutex_unlock(&_dnsPrintLock);
  }

  else
  {
    v9 = *a1;
    v10 = dns_class_string(*(a1 + 10));
    v11 = dns_type_string(*(a1 + 8));
    return fprintf(a2, "%s %s %s\n", v9, v10, v11);
  }
}

uint64_t _dns_print_resource_record_lock(uint64_t a1, FILE *a2, int a3)
{
  v61 = *MEMORY[0x29EDCA608];
  v58 = 0uLL;
  v59 = 0;
  if (a3)
  {
    pthread_mutex_lock(&_dnsPrintLock);
  }

  v6 = *a1;
  v7 = dns_class_string(*(a1 + 10));
  v8 = dns_type_string(*(a1 + 8));
  fprintf(a2, "%s %s %s ", v6, v7, v8);
  fprintf(a2, "%u", *(a1 + 12));
  switch(*(a1 + 8))
  {
    case 1:
      v25.s_addr = **(a1 + 16);
      inet_ntoa(v25);
      goto LABEL_5;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xC:
    case 0x13:
      v9 = **(a1 + 16);
      goto LABEL_5;
    case 6:
      v34 = *(a1 + 16);
      v56 = *(v34 + 28);
      v57 = *(v34 + 32);
      v54 = *(v34 + 20);
      v55 = *(v34 + 24);
      v50 = *(v34 + 8);
      v52 = *(v34 + 16);
      fprintf(a2, " %s %s %u %u %u %u %u", *v34);
      break;
    case 0xB:
      v15.s_addr = **(a1 + 16);
      v16 = inet_ntoa(v15);
      fprintf(a2, " %s", v16);
      v17 = getprotobynumber(*(*(a1 + 16) + 4));
      if (v17)
      {
        p_p_name = &v17->p_name;
        fprintf(a2, " %s", v17->p_name);
        v19 = *(a1 + 16);
        if (*(v19 + 8))
        {
          v20 = 0;
          do
          {
            if (*(*(v19 + 16) + v20))
            {
              v21 = getservbyport(v20, *p_p_name);
              if (v21)
              {
                s_name = v21->s_name;
                fprintf(a2, " %s");
              }

              else
              {
                fprintf(a2, " %u");
              }
            }

            ++v20;
            v19 = *(a1 + 16);
          }

          while (v20 < *(v19 + 8));
        }
      }

      else
      {
        v44 = *(*(a1 + 16) + 4);
        fprintf(a2, " UNKNOWN PROTOCOL %u");
      }

      break;
    case 0xD:
    case 0xE:
    case 0x11:
      v10 = *(a1 + 16);
      v39 = *v10;
      v45 = v10[1];
      fprintf(a2, " %s %s");
      break;
    case 0xF:
      v26 = *(a1 + 16);
      v42 = *v26;
      v48 = *(v26 + 1);
      goto LABEL_30;
    case 0x10:
      v35 = *(a1 + 16);
      if (*v35)
      {
        v36 = 0;
        do
        {
          fprintf(a2, " %s", *(*(v35 + 1) + 8 * v36++));
          v35 = *(a1 + 16);
        }

        while (v36 < *v35);
      }

      break;
    case 0x12:
      v27 = *(a1 + 16);
      v43 = *v27;
      v49 = *(v27 + 1);
LABEL_30:
      fprintf(a2, " %u %s");
      break;
    case 0x14:
      fprintf(a2, " %s", **(a1 + 16));
      if (!*(*(a1 + 16) + 8))
      {
        break;
      }

      goto LABEL_5;
    case 0x15:
      v24 = *(a1 + 16);
      v41 = *v24;
      v47 = *(v24 + 1);
      fprintf(a2, " %hu %s");
      break;
    case 0x1C:
      v58 = 0uLL;
      v59 = 0;
      v58 = **(a1 + 16);
      inet_ntop(30, &v58, v60, 0x40u);
LABEL_5:
      fprintf(a2, " %s");
      break;
    case 0x1D:
      coord_ntoa(*(*(a1 + 16) + 4), 1);
      fprintf(a2, " %s", coord_ntoa_buf);
      coord_ntoa(*(*(a1 + 16) + 8), 0);
      fprintf(a2, " %s", coord_ntoa_buf);
      v11 = *(*(a1 + 16) + 12);
      v12 = v11 < 10000000;
      if (v11 >= 10000000)
      {
        v13 = v11 - 10000000;
      }

      else
      {
        v13 = 10000000 - v11;
      }

      if (v12)
      {
        v14 = -(v13 / 0x64);
      }

      else
      {
        v14 = v13 / 0x64;
      }

      __sprintf_chk(alt_ntoa_buf, 0, 0x80uLL, "%d.%.2d", v14, v13 % 0x64);
      fprintf(a2, " %sm", alt_ntoa_buf);
      precsize_ntoa(*(*(a1 + 16) + 1));
      fprintf(a2, " %sm", precsize_ntoa_buf);
      precsize_ntoa(*(*(a1 + 16) + 2));
      fprintf(a2, " %sm", precsize_ntoa_buf);
      precsize_ntoa(*(*(a1 + 16) + 3));
      fprintf(a2, " %sm");
      break;
    case 0x21:
      v23 = *(a1 + 16);
      v51 = v23[2];
      v53 = *(v23 + 1);
      v40 = *v23;
      v46 = v23[1];
      fprintf(a2, " %hu %hu %hu %s");
      break;
    default:
      v28 = **(a1 + 16);
      fprintf(a2, " %u ", v28);
      if (v28)
      {
        for (i = 0; i != v28; ++i)
        {
          fprintf(a2, "%x", *(*(*(a1 + 16) + 8) + i));
        }
      }

      fwrite(" (", 2uLL, 1uLL, a2);
      v30 = *(a1 + 16);
      v31 = *v30;
      if (*v30)
      {
        v32 = 0;
        do
        {
          v33 = *(*(*(a1 + 16) + 8) + v32);
          if (v33 < 0)
          {
            LOBYTE(v33) = 32;
          }

          fputc(v33, a2);
          ++v32;
        }

        while (v31 != v32);
      }

      fwrite(")\n", 2uLL, 1uLL, a2);
      break;
  }

  result = fputc(10, a2);
  if (a3)
  {
    result = pthread_mutex_unlock(&_dnsPrintLock);
  }

  v38 = *MEMORY[0x29EDCA608];
  return result;
}

void dns_print_reply(const dns_reply_t *r, FILE *f, uint16_t mask)
{
  v37 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&_dnsPrintLock);
  if (!r)
  {
    v7 = "-nil-\n";
    v8 = 6;
    goto LABEL_23;
  }

  status = r->status;
  if (r->status > 3)
  {
    if (status == 4)
    {
      v7 = "Send failed\n";
      v8 = 12;
      goto LABEL_23;
    }

    if (status == 5)
    {
      v7 = "Receive failed\n";
      v8 = 15;
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (status)
  {
    if (status == 3)
    {
      v7 = "Timeout\n";
      v8 = 8;
LABEL_23:
      fwrite(v7, v8, 1uLL, f);
      goto LABEL_24;
    }

LABEL_10:
    fprintf(f, "status %u\n", r->status);
LABEL_24:
    v10 = *MEMORY[0x29EDCA608];

    pthread_mutex_unlock(&_dnsPrintLock);
    return;
  }

  header = r->header;
  if (mask)
  {
    fprintf(f, "Xid: %u\n", header->xid);
    if ((mask & 2) == 0)
    {
LABEL_13:
      if ((mask & 0x2000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }
  }

  else if ((mask & 2) == 0)
  {
    goto LABEL_13;
  }

  if ((header->flags & 0x8000u) != 0)
  {
    v11 = "QR: Reply\n";
  }

  else
  {
    v11 = "QR: Query\n";
  }

  fwrite(v11, 0xAuLL, 1uLL, f);
  if ((mask & 0x2000) == 0)
  {
LABEL_14:
    if ((mask & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_42:
    fwrite("Opcode: ", 8uLL, 1uLL, f);
    if ((header->flags & 0x7800) != 0)
    {
      fprintf(f, "Reserved (%hu)\n", (header->flags & 0x7800) >> 11);
      if ((mask & 8) != 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      fwrite("Standard\n", 9uLL, 1uLL, f);
      if ((mask & 8) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_16:
    if ((mask & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_32:
  server = r->server;
  if (!server)
  {
    fwrite("Server: -nil-\n", 0xEuLL, 1uLL, f);
    if ((mask & 4) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_15;
  }

  sa_family = server->sa_family;
  v14 = 4;
  if (sa_family == 30)
  {
    v14 = 8;
  }

  v15 = inet_ntop(sa_family, &server->sa_len + v14, v36, 0x400u);
  fprintf(f, "Server: %s", v15);
  v16 = r->server;
  v17 = v16->sa_family;
  if (v17 == 30)
  {
    v18 = *&v16[1].sa_data[6];
    if (v18)
    {
LABEL_38:
      v19 = if_indextoname(v18, v36);
      fprintf(f, "%%%s", v19);
    }
  }

  else if (v17 == 2)
  {
    v18 = *&v16->sa_data[6];
    if (v18)
    {
      goto LABEL_38;
    }
  }

  fputc(10, f);
  if ((mask & 4) != 0)
  {
    goto LABEL_42;
  }

LABEL_15:
  if ((mask & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_46:
  if ((header->flags & 0x400) != 0)
  {
    v20 = "AA: Authoritative\n";
    v21 = 18;
  }

  else
  {
    v20 = "AA: Non-Authoritative\n";
    v21 = 22;
  }

  fwrite(v20, v21, 1uLL, f);
  if ((mask & 0x10) == 0)
  {
LABEL_17:
    if ((mask & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_50:
  if ((header->flags & 0x200) != 0)
  {
    v22 = "TC: Truncated\n";
    v23 = 14;
  }

  else
  {
    v22 = "TC: Non-Truncated\n";
    v23 = 18;
  }

  fwrite(v22, v23, 1uLL, f);
  if ((mask & 0x20) == 0)
  {
LABEL_18:
    if ((mask & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_54:
  if ((header->flags & 0x100) != 0)
  {
    v24 = "RD: Recursion desired\n";
    v25 = 22;
  }

  else
  {
    v24 = "RD: No recursion desired\n";
    v25 = 25;
  }

  fwrite(v24, v25, 1uLL, f);
  if ((mask & 0x40) == 0)
  {
LABEL_19:
    if ((mask & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_62;
  }

LABEL_58:
  if ((header->flags & 0x80) != 0)
  {
    v26 = "RA: Recursion available\n";
    v27 = 24;
  }

  else
  {
    v26 = "RA: No recursion available \n";
    v27 = 28;
  }

  fwrite(v26, v27, 1uLL, f);
  if ((mask & 0x100) == 0)
  {
LABEL_20:
    if ((mask & 0x200) == 0)
    {
      goto LABEL_94;
    }

LABEL_91:
    fprintf(f, "Question (%hu):\n", header->qdcount);
    if (header->qdcount)
    {
      v31 = 0;
      do
      {
        _dns_print_question_lock(r->question[v31++], f, 0);
      }

      while (v31 < header->qdcount);
    }

    goto LABEL_94;
  }

LABEL_62:
  fwrite("Rcode: ", 7uLL, 1uLL, f);
  v28 = header->flags & 0xF;
  if (v28 <= 4)
  {
    if ((header->flags & 0xFu) <= 1)
    {
      if ((header->flags & 0xF) != 0)
      {
        v29 = "Format error \n";
        goto LABEL_81;
      }

      v29 = "No error\n";
      v30 = 9;
    }

    else
    {
      if (v28 != 2)
      {
        if (v28 != 3)
        {
          if (v28 == 4)
          {
            v29 = "Not implemented\n";
            v30 = 16;
            goto LABEL_90;
          }

          goto LABEL_107;
        }

        v29 = "Name error \n";
        goto LABEL_85;
      }

      v29 = "Server failure\n";
      v30 = 15;
    }

LABEL_90:
    fwrite(v29, v30, 1uLL, f);
    if ((mask & 0x200) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_91;
  }

  if ((header->flags & 0xFu) > 7)
  {
    switch(v28)
    {
      case 8u:
        v29 = "RR Set does not exist\n";
        v30 = 22;
        break;
      case 9u:
        v29 = "Not authoritative\n";
        v30 = 18;
        break;
      case 0xAu:
        v29 = "Record zone does not match section zone\n";
        v30 = 40;
        goto LABEL_90;
      default:
        goto LABEL_107;
    }

    goto LABEL_90;
  }

  switch(v28)
  {
    case 5u:
      v29 = "Refused\n";
      v30 = 8;
      goto LABEL_90;
    case 6u:
      v29 = "Name exists\n";
LABEL_85:
      v30 = 12;
      goto LABEL_90;
    case 7u:
      v29 = "RR Set exists\n";
LABEL_81:
      v30 = 14;
      goto LABEL_90;
  }

LABEL_107:
  fprintf(f, "Reserved (%hu)\n", header->flags & 0xF);
  if ((mask & 0x200) != 0)
  {
    goto LABEL_91;
  }

LABEL_94:
  if ((mask & 0x400) != 0)
  {
    fprintf(f, "Answer (%hu):\n", header->ancount);
    if (header->ancount)
    {
      v32 = 0;
      do
      {
        _dns_print_resource_record_lock(r->answer[v32++], f, 0);
      }

      while (v32 < header->ancount);
    }
  }

  if ((mask & 0x800) != 0)
  {
    fprintf(f, "Authority (%hu):\n", header->nscount);
    if (header->nscount)
    {
      v33 = 0;
      do
      {
        _dns_print_resource_record_lock(r->authority[v33++], f, 0);
      }

      while (v33 < header->nscount);
    }
  }

  if ((mask & 0x1000) != 0)
  {
    fprintf(f, "Additional records (%hu):\n", header->arcount);
    if (header->arcount)
    {
      v34 = 0;
      do
      {
        _dns_print_resource_record_lock(r->additional[v34++], f, 0);
      }

      while (v34 < header->arcount);
    }
  }

  pthread_mutex_unlock(&_dnsPrintLock);
  v35 = *MEMORY[0x29EDCA608];
}

void dns_print_handle(dns_handle_t d, FILE *f)
{
  pthread_mutex_lock(&_dnsPrintLock);
  if (!d)
  {
    goto LABEL_9;
  }

  if (*d)
  {
    _pdns_print_handle(*(d + 2), f);
    goto LABEL_10;
  }

  v4 = *(d + 1);
  if (v4)
  {
    if (*(v4 + 8))
    {
      v5 = 0;
      do
      {
        fprintf(f, "DNS client %d\n", v5);
        _pdns_print_handle(*(*(v4 + 16) + 8 * v5), f);
        fputc(10, f);
        ++v5;
      }

      while (v5 < *(v4 + 8));
    }

    fprintf(f, "resolver dir mod time = %u\n", *(v4 + 24));
    fprintf(f, "resolver dir stat time = %u\n", *(v4 + 28));
    fprintf(f, "resolver dir stat latency = %u\n", *(v4 + 32));
  }

  else
  {
LABEL_9:
    fwrite("-nil-\n", 6uLL, 1uLL, f);
  }

LABEL_10:

  pthread_mutex_unlock(&_dnsPrintLock);
}

uint64_t _pdns_print_handle(uint64_t a1, FILE *__stream)
{
  v22 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (*(a1 + 16))
    {
      fprintf(__stream, "Name: %s\n", *(a1 + 16));
    }

    else
    {
      fwrite("Name: -nil-\n", 0xCuLL, 1uLL, __stream);
    }

    fwrite("Flags:", 6uLL, 1uLL, __stream);
    v6 = *(a1 + 44);
    if (!v6)
    {
      result = fwrite(" None\n", 6uLL, 1uLL, __stream);
      goto LABEL_17;
    }

    if (v6)
    {
      fwrite(" Debug", 6uLL, 1uLL, __stream);
      v6 = *(a1 + 44);
      if ((v6 & 2) == 0)
      {
LABEL_11:
        if ((v6 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_40;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

    fwrite(" DirCheck", 9uLL, 1uLL, __stream);
    v6 = *(a1 + 44);
    if ((v6 & 4) == 0)
    {
LABEL_12:
      if ((v6 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_41;
    }

LABEL_40:
    fwrite(" IPv6", 5uLL, 1uLL, __stream);
    v6 = *(a1 + 44);
    if ((v6 & 8) == 0)
    {
LABEL_13:
      if ((v6 & 0x10) == 0)
      {
LABEL_15:
        result = fputc(10, __stream);
LABEL_17:
        v7 = *a1;
        if (*a1)
        {
          if (*(v7 + 128))
          {
            fprintf(__stream, "Domain: %s\n", v7 + 128);
          }

          fprintf(__stream, "Search Order: %d\n", *(a1 + 56));
          fprintf(__stream, "Total Timeout: %d\n", *(a1 + 48));
          fprintf(__stream, "Retry Timeout: %d\n", **a1);
          fprintf(__stream, "Retry Attempts: %d\n", *(*a1 + 4));
          if (v7[4] == 1)
          {
            v8 = &unk_2998BE18D;
          }

          else
          {
            v8 = "s";
          }

          result = fprintf(__stream, "Server%s:\n", v8);
          if (v7[4])
          {
            v9 = 0;
            do
            {
              nsaddr = get_nsaddr(v7, v9);
              if (*(nsaddr + 1) == 30)
              {
                v11 = 8;
              }

              else
              {
                v11 = 4;
              }

              v12 = inet_ntop(*(nsaddr + 1), (nsaddr + v11), v21, 0x400u);
              fprintf(__stream, "  %u: %s", v9, v12);
              result = fputc(10, __stream);
              ++v9;
            }

            while (v9 < v7[4]);
          }

          if (*(a1 + 24))
          {
            result = fwrite("Search List:\n", 0xDuLL, 1uLL, __stream);
            if (*(a1 + 24))
            {
              v13 = 0;
              do
              {
                result = fprintf(__stream, "  %u: %s\n", v13, *(*(a1 + 32) + 8 * v13));
                ++v13;
              }

              while (v13 < *(a1 + 24));
            }
          }

          if (v7[99])
          {
            result = fwrite("Sortlist:\n", 0xAuLL, 1uLL, __stream);
            if (v7[99])
            {
              v14 = 0;
              v15 = v7 + 99;
              do
              {
                fprintf(__stream, "  %u: ", v14);
                v16.s_addr = *v15;
                v17 = inet_ntoa(v16);
                fprintf(__stream, "%s/", v17);
                v18.s_addr = v15[1];
                v19 = inet_ntoa(v18);
                result = fprintf(__stream, "%s\n", v19);
                v15 = &v7[2 * ++v14 + 99];
              }

              while (*v15);
            }
          }
        }

        v20 = *MEMORY[0x29EDCA608];
        return result;
      }

LABEL_14:
      fwrite(" Default", 8uLL, 1uLL, __stream);
      goto LABEL_15;
    }

LABEL_41:
    fwrite(" SkipAAAA", 9uLL, 1uLL, __stream);
    if ((*(a1 + 44) & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v4 = *MEMORY[0x29EDCA608];

  return fwrite("-nil-\n", 6uLL, 1uLL, __stream);
}

uint64_t dns_all_server_addrs(uint64_t dns, const void ***a2, int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (dns)
  {
    v3 = dns;
    if (!*dns)
    {
      if (*(dns + 8))
      {
        dns = dns_search_list_count(dns);
        v4 = *(v3 + 8);
        if (*(v4 + 8))
        {
          v5 = 0;
          v6 = 0;
          v7 = 0;
          do
          {
            v8 = *(*(v4 + 16) + 8 * v5);
            if (v8)
            {
              v9 = *v8;
              if (*v8)
              {
                if (*(v9 + 16) >= 1)
                {
                  v10 = 0;
                  do
                  {
                    nsaddr = get_nsaddr(v9, v10);
                    v12 = nsaddr;
                    if (v7 < 1)
                    {
                      goto LABEL_19;
                    }

                    v13 = 0;
                    v14 = *nsaddr;
                    do
                    {
                      dns = memcmp(v6[v13++], v12, v14);
                      if (dns)
                      {
                        v15 = v13 >= v7;
                      }

                      else
                      {
                        v15 = 1;
                      }
                    }

                    while (!v15);
                    if (dns)
                    {
LABEL_19:
                      if (v7)
                      {
                        dns = reallocf(v6, 8 * v7 + 8);
                      }

                      else
                      {
                        dns = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
                      }

                      v6 = dns;
                      if (!dns)
                      {
                        return dns;
                      }

                      dns = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
                      v6[v7] = dns;
                      if (!dns)
                      {
                        return dns;
                      }

                      *(dns + 96) = 0u;
                      *(dns + 112) = 0u;
                      *(dns + 64) = 0u;
                      *(dns + 80) = 0u;
                      *(dns + 32) = 0u;
                      *(dns + 48) = 0u;
                      *dns = 0u;
                      *(dns + 16) = 0u;
                      dns = memcpy(v6[v7++], v12, *v12);
                    }

                    ++v10;
                  }

                  while (v10 < *(v9 + 16));
                  v4 = *(v3 + 8);
                }
              }
            }

            ++v5;
          }

          while (v5 < *(v4 + 8));
        }

        else
        {
          v7 = 0;
          v6 = 0;
        }

        *a2 = v6;
        *a3 = v7;
      }
    }
  }

  return dns;
}

_BYTE *_dns_parse_domain_name(uint64_t a1, unint64_t *a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 < 1)
  {
    return 0;
  }

  v7 = *a2;
  result = malloc_type_malloc(1uLL, 0x21A57D70uLL);
  if (result)
  {
    v9 = &v7[v3];
    *result = 0;
    v10 = *a2;
    v11 = (*a2 + 1);
    if (v11 > &v7[v3])
    {
      goto LABEL_4;
    }

    v23 = v7;
    v24 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    while (1)
    {
      v16 = *v10;
      if ((~v16 & 0xC0) != 0)
      {
        *a2 = v11;
        if (v16)
        {
          if ((v16 ^ 0xFFFF) < v15)
          {
            goto LABEL_4;
          }

          v18 = v14;
          v15 += v16;
          result = reallocf(result, v15);
          if (!result)
          {
            return result;
          }

          v11 = *a2;
          v14 = v18;
        }

        if (&v11[v16] > v9 || 65534 - v16 < v15)
        {
          goto LABEL_4;
        }

        if (!v16)
        {
          result[v13] = 0;
          if (!v14)
          {
            LOWORD(v12) = v12 + 1;
          }

          if (v12 <= v3)
          {
            *a2 = &v23[v12];
            *v24 -= v12;
            return result;
          }

LABEL_4:
          free(result);
          return 0;
        }

        v19 = 0;
        do
        {
          v20 = v13;
          result[v13++] = *v11;
          v11 = (*a2 + 1);
          *a2 = v11;
          ++v19;
        }

        while (v16 > v19);
        result[v13] = 0;
        if (v14)
        {
          v21 = 0;
        }

        else
        {
          v21 = v16 + 1;
        }

        v12 += v21;
        if (*a2 + 1 > v9)
        {
          goto LABEL_4;
        }

        if (**a2)
        {
          if ((v15 + 2) <= 2u)
          {
            goto LABEL_4;
          }

          v22 = v14;
          result = reallocf(result, ++v15);
          if (!result)
          {
            return result;
          }

          result[v13] = 46;
          v13 = v20 + 2;
          result[(v20 + 2)] = 0;
          v14 = v22;
        }
      }

      else
      {
        if ((v10 + 1) > v9)
        {
          goto LABEL_4;
        }

        v17 = a1 + (bswap32(*v10 & 0xFF3F) >> 16);
        if (v10 <= v17)
        {
          goto LABEL_4;
        }

        *a2 = v17;
        if (!v14)
        {
          v12 += 2;
        }

        v14 = 1;
      }

      v10 = *a2;
      v11 = (*a2 + 1);
      if (v11 > v9)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

void *_dns_parse_string(const void **a1, int *a2)
{
  v2 = *a2;
  v3 = *a2 - 1;
  if (*a2 < 1)
  {
    return 0;
  }

  *a2 = v3;
  v5 = **a1;
  *a1 = *a1 + 1;
  if (v2 <= v5)
  {
    return 0;
  }

  *a2 = v3 - v5;
  v6 = malloc_type_malloc(v5 + 1, 0x3F2A5D7DuLL);
  memmove(v6, *a1, v5);
  *(v6 + v5) = 0;
  *a1 = *a1 + v5;
  return v6;
}

uint64_t coord_ntoa(int a1, int a2)
{
  v2 = a1 ^ 0x80000000;
  v3 = a2 == 1;
  v4 = a1 >= 0;
  v5 = !v4 || !v3;
  if (v4 && v3)
  {
    v6 = -v2;
  }

  else
  {
    v6 = a1 ^ 0x80000000;
  }

  if (v5)
  {
    v7 = 78;
  }

  else
  {
    v7 = 83;
  }

  if (a1 >= 0)
  {
    v2 = -v2;
  }

  if (v6 >= 0)
  {
    v8 = 69;
  }

  else
  {
    v8 = 87;
  }

  if (a2)
  {
    v2 = v6;
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return __sprintf_chk(coord_ntoa_buf, 0, 0x40uLL, "%d %.2d %.2d.%.3d %c", v2 / 3600000, v2 / 60000 % 60, v2 / 1000 % 60, v2 % 1000, v9);
}

uint64_t precsize_ntoa(unsigned int a1)
{
  v1 = a1 >> 4;
  if (a1 >= 0xA0)
  {
    v1 = (a1 >> 4) - 10;
  }

  v2 = a1 & 0xF;
  if (v2 >= 0xA)
  {
    v2 = (a1 & 0xF) - 10;
  }

  v3 = poweroften[v2] * v1;
  return __sprintf_chk(precsize_ntoa_buf, 0, 0x13uLL, "%ld.%.2ld", v3 / 0x64uLL, v3 % 0x64);
}

void _check_cache(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  check = 0;
  if (*(a1 + 28))
  {
    v2 = *(a1 + 40);
    if (v2 != -1)
    {
      check = 1;
      if (!notify_check(v2, &check) && check != 1)
      {
        v3 = *(a1 + 44);
        if (v3 != -1)
        {
          check = 1;
          if (!notify_check(v3, &check) && check != 1)
          {
            return;
          }
        }
      }
    }
  }

  *a1 = 0;
  if (*(a1 + 8))
  {
    v4 = 0;
    do
    {
      _pdns_free(*(*(a1 + 16) + 8 * v4++));
    }

    while (v4 < *(a1 + 8));
  }

  *(a1 + 8) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  *(a1 + 16) = 0;
  v6 = dns_configuration_copy();
  v7 = v6;
  if (!v6 || (v8 = *v6, *v6 < 1))
  {
    v11 = _pdns_file_open("/etc/resolv.conf");
    v8 = 0;
    *a1 = v11;
    if (v11)
    {
      goto LABEL_56;
    }

    goto LABEL_61;
  }

  v9 = **(v6 + 4);
  if ((*(a1 + 36) & 0x20) != 0)
  {
    v12 = _pdns_build_start(*v9);
    v10 = v12;
    if (!*v9)
    {
      _pdns_build(v12, "default", 0);
    }

    v13 = getenv("RES_RETRY_TIMEOUT");
    if (v13)
    {
      v10[13] = atoi(v13);
    }

    v47 = 0;
    v14 = getenv("RES_RETRY");
    if (v14)
    {
      *(*v10 + 4) = atoi(v14);
    }

    v15 = *(v9 + 24);
    if (v15 < 7)
    {
      if (v15 < 1)
      {
LABEL_32:
        _pdns_build(v10, "mdns", 0);
        _pdns_build_finish(v10);
LABEL_34:
        v8 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      *(v9 + 24) = 6;
    }

    v16 = 0;
    while (1)
    {
      v47 = 0;
      asprintf(&v47, "%s", *(*(v9 + 28) + 8 * v16));
      if (!v47)
      {
        break;
      }

      _pdns_build(v10, "search", v47);
      free(v47);
      if (++v16 >= *(v9 + 24))
      {
        goto LABEL_32;
      }
    }

    _pdns_free(v10);
    v10 = 0;
    goto LABEL_34;
  }

  v10 = _pdns_convert_sc(**(v6 + 4));
LABEL_35:
  *a1 = v10;
  if (!v10)
  {
    goto LABEL_61;
  }

  v17 = *(v10 + 2);
  if (!v17 || v10[6])
  {
    goto LABEL_55;
  }

  v18 = 0;
  for (i = v17 - 1; i[1] == 46; ++i)
  {
    ++v18;
LABEL_43:
    ;
  }

  if (i[1])
  {
    goto LABEL_43;
  }

  if (i >= v17)
  {
    if (*i == 46)
    {
      v20 = (i - 1);
      while (1)
      {
        v20[1] = 0;
        v17 = *(v10 + 2);
        if (v20 < v17)
        {
          break;
        }

        --v18;
        v21 = *v20--;
        if (v21 != 46)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
LABEL_49:
      _pdns_build(v10, "search", v17);
      if (v18 >= 2)
      {
        v22 = *(v10 + 2);
        v23 = v18 + 1;
        while (*v22++)
        {
          if (*(v22 - 1) == 46)
          {
            _pdns_build(v10, "search", v22);
            if (v23-- <= 3)
            {
              break;
            }
          }
        }
      }
    }
  }

LABEL_55:
  v11 = *a1;
  if (*a1)
  {
LABEL_56:
    v25 = *(a1 + 36);
    if ((v25 & 1) != 0 && *v11)
    {
      *(*v11 + 8) |= 2uLL;
    }

    v11[11] |= v25 & 8 | 0x10;
    v26 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *(a1 + 16) = v26;
    if (!v26)
    {
      if (v7)
      {
        goto LABEL_96;
      }

      return;
    }

    v27 = *(a1 + 8);
    v26[v27] = *a1;
    *(a1 + 8) = v27 + 1;
  }

LABEL_61:
  if (v8 < 2)
  {
    if (v7)
    {
LABEL_76:
      dns_configuration_free();
    }

    if ((*(a1 + 36) & 2) != 0)
    {
      v35 = opendir("/etc/resolver");
      if (v35)
      {
        v36 = v35;
        while (1)
        {
          while (1)
          {
            v37 = readdir(v36);
            if (!v37)
            {
              closedir(v36);
              goto LABEL_98;
            }

            v39 = v37->d_name[0];
            d_name = v37->d_name;
            if (v39 != 46)
            {
              v40 = _pdns_file_open(d_name);
              if (v40)
              {
                break;
              }
            }
          }

          v41 = v40;
          v42 = *(a1 + 36);
          if (v42)
          {
            *(*v40 + 8) |= 2uLL;
          }

          if ((v42 & 8) != 0)
          {
            v40[11] |= 8u;
          }

          v43 = *(a1 + 8);
          v44 = v43 ? reallocf(*(a1 + 16), 8 * (v43 + 1)) : malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
          *(a1 + 16) = v44;
          if (!v44)
          {
            break;
          }

          v45 = *(a1 + 8);
          v44[v45] = v41;
          *(a1 + 8) = v45 + 1;
        }

        *(a1 + 8) = 0;
        return;
      }

      *(a1 + 36) &= ~2u;
    }

LABEL_98:
    *(a1 + 28) = 1;
    return;
  }

  v28 = 8;
  while (2)
  {
    v29 = _pdns_convert_sc(*(*(v7 + 4) + v28));
    if (!v29)
    {
LABEL_73:
      v28 += 8;
      if (8 * v8 == v28)
      {
        goto LABEL_76;
      }

      continue;
    }

    break;
  }

  v30 = v29;
  v31 = *(a1 + 36);
  if (v31)
  {
    *(*v29 + 8) |= 2uLL;
  }

  if ((v31 & 8) != 0)
  {
    v29[11] |= 8u;
  }

  v32 = *(a1 + 8);
  if (v32)
  {
    v33 = reallocf(*(a1 + 16), 8 * (v32 + 1));
  }

  else
  {
    v33 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  }

  *(a1 + 16) = v33;
  if (v33)
  {
    v34 = *(a1 + 8);
    v33[v34] = v30;
    *(a1 + 8) = v34 + 1;
    goto LABEL_73;
  }

  *(a1 + 8) = 0;
LABEL_96:
  dns_configuration_free();
}

void _pdns_free(unsigned int *a1)
{
  if (a1)
  {
    if (a1[6] + 1 >= 2 && *(a1 + 4))
    {
      v2 = 0;
      do
      {
        free(*(*(a1 + 4) + 8 * v2++));
      }

      while (v2 < a1[6]);
      free(*(a1 + 4));
    }

    v3 = *(a1 + 2);
    if (v3)
    {
      free(v3);
    }

    if (*a1)
    {
      res_client_close(*a1);
    }

    free(a1);
  }
}

unsigned int *_pdns_convert_sc(uint64_t a1)
{
  v2 = _pdns_build_start(*a1);
  v3 = v2;
  if (!*a1)
  {
    _pdns_build(v2, "default", 0);
  }

  v4 = getenv("RES_RETRY_TIMEOUT");
  if (v4)
  {
    v3[13] = atoi(v4);
  }

  v39 = 0;
  v5 = getenv("RES_RETRY");
  v38 = v5;
  if (v5)
  {
    *(*v3 + 4) = atoi(v5);
  }

  v6 = *(a1 + 20);
  if (*(a1 + 20))
  {
    v39 = 0;
    asprintf(&v39, "%hu", v6);
    if (!v39)
    {
      goto LABEL_34;
    }

    _pdns_build(v3, "port", v39);
    free(v39);
  }

  v7 = *(a1 + 8);
  if (v7 >= 4)
  {
    *(a1 + 8) = 3;
LABEL_13:
    v8 = 0;
    while (1)
    {
      v9 = *(*(*(a1 + 12) + 8 * v8) + 1);
      if (v9 == 30)
      {
        break;
      }

      if (v9 == 2)
      {
        v10 = malloc_type_calloc(1uLL, 0x100uLL, 0x7EEC11B5uLL);
        v39 = v10;
        if (!v10)
        {
          goto LABEL_34;
        }

        v11 = v10;
        v12 = (*(*(a1 + 12) + 8 * v8) + 4);
        v13 = 2;
LABEL_20:
        inet_ntop(v13, v12, v11, 0x100u);
        _pdns_build(v3, "nameserver", v39);
        free(v39);
      }

      if (++v8 >= *(a1 + 8))
      {
        goto LABEL_22;
      }
    }

    v3[11] |= 4u;
    v14 = malloc_type_calloc(1uLL, 0x100uLL, 0x6C711E4AuLL);
    v39 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }

    v11 = v14;
    v12 = (*(*(a1 + 12) + 8 * v8) + 8);
    v13 = 30;
    goto LABEL_20;
  }

  if (v7 >= 1)
  {
    goto LABEL_13;
  }

LABEL_22:
  v15 = *(a1 + 24);
  if (v15 >= 7)
  {
    *(a1 + 24) = 6;
    goto LABEL_25;
  }

  if (v15 >= 1)
  {
LABEL_25:
    v16 = 0;
    do
    {
      v39 = 0;
      asprintf(&v39, "%s", *(*(a1 + 28) + 8 * v16));
      if (!v39)
      {
        goto LABEL_34;
      }

      _pdns_build(v3, "search", v39);
      free(v39);
    }

    while (++v16 < *(a1 + 24));
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v39 = 0;
    asprintf(&v39, "%d", v17);
    if (!v39)
    {
      goto LABEL_34;
    }

    _pdns_build(v3, "total_timeout", v39);
    free(v39);
  }

  v39 = 0;
  asprintf(&v39, "%d", *(a1 + 60));
  if (v39)
  {
    _pdns_build(v3, "search_order", v39);
    free(v39);
    v18 = *(a1 + 36);
    if (v18 < 11)
    {
      if (v18 < 1)
      {
LABEL_41:
        v38 = *(a1 + 48);
        v22 = res_next_word(&v38);
        if (!v22)
        {
LABEL_88:
          _pdns_build_finish(v3);
          return v3;
        }

        v23 = v22;
        v24 = "ndots";
        v25 = "nibble";
        v26 = "nibble2";
        v27 = "timeout:";
        v28 = "attempts:";
        while (1)
        {
          if (!strncmp(v23, "ndots:", 6uLL))
          {
            v37 = v23 + 6;
            v35 = v3;
            v36 = v24;
            goto LABEL_76;
          }

          if (!strncmp(v23, "nibble:", 7uLL))
          {
            v37 = v23 + 7;
            v35 = v3;
            v36 = v25;
            goto LABEL_76;
          }

          if (!strncmp(v23, "nibble2:", 8uLL))
          {
            v37 = (v23 + 1);
            v35 = v3;
            v36 = v26;
            goto LABEL_76;
          }

          if (!strncmp(v23, v27, 8uLL))
          {
            v37 = (v23 + 1);
            v35 = v3;
            v36 = "timeout";
            goto LABEL_76;
          }

          if (!strncmp(v23, v28, 9uLL))
          {
            v37 = v23 + 9;
            v35 = v3;
            v36 = "attempts";
            goto LABEL_76;
          }

          if (!strncmp(v23, "bitstring:", 0xAuLL))
          {
            v37 = v23 + 10;
            v35 = v3;
            v36 = "bitstring";
            goto LABEL_76;
          }

          if (!strncmp(v23, "v6revmode:", 0xAuLL))
          {
            v37 = v23 + 10;
            v35 = v3;
            v36 = "v6revmode";
            goto LABEL_76;
          }

          v29 = v24;
          v30 = v27;
          v31 = v25;
          v32 = v28;
          v33 = v26;
          v34 = "debug";
          if (!strcmp(v23, "debug"))
          {
            break;
          }

          v34 = "no_tld_query";
          if (!strcmp(v23, "no_tld_query"))
          {
            break;
          }

          v26 = v33;
          if (!strcmp(v23, "inet6"))
          {
            _pdns_build(v3, "inet6", 0);
            goto LABEL_71;
          }

          v28 = v32;
          if (!strcmp(v23, "rotate"))
          {
            _pdns_build(v3, "rotate", 0);
            goto LABEL_72;
          }

          v25 = v31;
          if (!strcmp(v23, "no-check-names"))
          {
            _pdns_build(v3, "no-check-names", 0);
            goto LABEL_73;
          }

          v27 = v30;
          if (!strcmp(v23, "edns0"))
          {
            _pdns_build(v3, "edns0", 0);
            goto LABEL_74;
          }

          v24 = v29;
          if (*v23 == 97 && *(v23 + 1) == 54 && !*(v23 + 2))
          {
            _pdns_build(v3, "a6", 0);
            goto LABEL_77;
          }

          if (!strcmp(v23, "dname"))
          {
            v35 = v3;
            v36 = "dname";
            goto LABEL_86;
          }

          if (!strcmp(v23, "default"))
          {
            v35 = v3;
            v36 = "default";
            goto LABEL_86;
          }

          if (!strcmp(v23, "pdns"))
          {
            v35 = v3;
            v36 = "pdns";
LABEL_86:
            v37 = 0;
LABEL_76:
            _pdns_build(v35, v36, v37);
            goto LABEL_77;
          }

          if (!strcmp(v23, "mdns"))
          {
            v35 = v3;
            v36 = "mdns";
            goto LABEL_86;
          }

LABEL_77:
          v23 = res_next_word(&v38);
          if (!v23)
          {
            goto LABEL_88;
          }
        }

        _pdns_build(v3, v34, 0);
        v26 = v33;
LABEL_71:
        v28 = v32;
LABEL_72:
        v25 = v31;
LABEL_73:
        v27 = v30;
LABEL_74:
        v24 = v29;
        goto LABEL_77;
      }
    }

    else
    {
      v18 = 10;
      *(a1 + 36) = 10;
    }

    for (i = 0; i < v18; ++i)
    {
      if (v3)
      {
        v21 = *(*(a1 + 40) + 8 * i);
        res_build_sortlist(*v3, *v21, v21[1]);
        v18 = *(a1 + 36);
      }
    }

    goto LABEL_41;
  }

LABEL_34:
  _pdns_free(v3);
  return 0;
}

void *_pdns_file_open(char *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  __filename = 0;
  if (a1 && (*a1 & 0xFE) != 0x2E)
  {
    asprintf(&__filename, "%s/%s");
  }

  else
  {
    asprintf(&__filename, "%s");
  }

  if (__filename && (v2 = fopen(__filename, "r"), free(__filename), v2))
  {
    v3 = _pdns_build_start(0);
    if (v3)
    {
      v4 = getenv("RES_RETRY_TIMEOUT");
      if (v4)
      {
        *(v3 + 13) = atoi(v4);
      }

      v5 = getenv("RES_RETRY");
      v18 = v5;
      if (v5)
      {
        *(*v3 + 4) = atoi(v5);
      }

      while (fgets(v20, 1024, v2))
      {
        if (v20[0] != 35 && v20[0] != 59)
        {
          v18 = v20;
          word = res_next_word(&v18);
          if (word)
          {
            v7 = word;
            if (!strcmp(word, "sortlist"))
            {
              v11 = res_next_word(&v18);
              if (v11)
              {
                v12 = v11;
                do
                {
                  _pdns_build(v3, "sortlist", v12);
                  v12 = res_next_word(&v18);
                }

                while (v12);
              }
            }

            else if (!strcmp(v7, "timeout"))
            {
              v13 = res_next_word(&v18);
              if (v13)
              {
                _pdns_build(v3, "total_timeout", v13);
              }
            }

            else
            {
              v8 = strcmp(v7, "options");
              v9 = res_next_word(&v18);
              v10 = v9;
              if (v8)
              {
                if (v9)
                {
                  _pdns_build(v3, v7, v9);
                }

                if (!strcmp(v7, "domain") && !v3[2])
                {
                  _pdns_set_name(v3, v10);
                }
              }

              else if (v9)
              {
                do
                {
                  v14 = strchr(v10, 58);
                  v15 = v14;
                  if (v14)
                  {
                    *v14 = 0;
                    v15 = v14 + 1;
                  }

                  _pdns_build(v3, v10, v15);
                  v10 = res_next_word(&v18);
                }

                while (v10);
              }
            }
          }
        }
      }

      fclose(v2);
      if (!v3[2])
      {
        _pdns_set_name(v3, a1);
      }

      _pdns_build_finish(v3);
    }

    else
    {
      fclose(v2);
    }
  }

  else
  {
    v3 = 0;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v3;
}

dns_handle_t dns_open(const char *name)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x10B0040ED522104uLL);
  if (v2)
  {
    check = 0;
    v16 = 0;
    if (dns_control_token != -1)
    {
      goto LABEL_6;
    }

    pthread_mutex_lock(&dns_control_lock);
    if (dns_control_token == -1)
    {
      notify_register_check("com.apple.system.dns", &dns_control_token);
    }

    pthread_mutex_unlock(&dns_control_lock);
    if (dns_control_token != -1)
    {
LABEL_6:
      pthread_mutex_lock(&dns_control_lock);
      if (notify_check(dns_control_token, &check))
      {
        v3 = 0;
      }

      else
      {
        v3 = check == 1;
      }

      if (v3 && !notify_get_state(dns_control_token, &v16))
      {
        if ((v16 & 2) != 0)
        {
          dns_control_mdns = 1;
        }

        if (v16)
        {
          dns_control_debug = 1;
        }
      }

      pthread_mutex_unlock(&dns_control_lock);
    }

    if (name)
    {
      if (strcmp(name, "*MDNS*"))
      {
        *v2 = 1;
        v4 = dns_configuration_copy();
        if (v4)
        {
          if (*v4 < 1)
          {
            goto LABEL_26;
          }

          v5 = *v4 & ~(*v4 >> 31);
          v6 = *(v4 + 4);
          while (1)
          {
            v7 = *v6;
            if (*v6)
            {
              if (*v7 && !strcasecmp(name, *v7))
              {
                break;
              }
            }

            ++v6;
            if (!--v5)
            {
              goto LABEL_26;
            }
          }

          if (malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040E9757900uLL))
          {
            v8 = _pdns_convert_sc(v7);
            dns_configuration_free();
            if (v8)
            {
              v12 = *v8;
              if (*v8)
              {
                v8[2] = 0;
                v14 = *(v12 + 128);
                v13 = (v12 + 128);
                if (v14)
                {
                  v15 = v13;
                }

                else
                {
                  v15 = name;
                }

                _pdns_set_name(v8, v15);
                *(v8 + 6) = -1;
                *(v2 + 2) = v8;
                goto LABEL_28;
              }

              free(v8);
            }
          }

          else
          {
LABEL_26:
            dns_configuration_free();
          }
        }

        *(v2 + 2) = 0;
        v8 = _pdns_file_open(name);
        *(v2 + 2) = v8;
        if (v8)
        {
LABEL_28:
          v9 = (dns_control_debug | (*(*v8 + 8) >> 1)) & 1;
LABEL_36:
          dns_set_debug(v2, v9);
          return v2;
        }

LABEL_37:
        free(v2);
        return 0;
      }
    }

    else if (dns_control_mdns == 1)
    {
      *v2 = 0;
      v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040D5BD1A0CuLL);
      *(v2 + 1) = v10;
      if (!v10)
      {
        goto LABEL_37;
      }

      *(v10 + 9) |= 2u;
      *(v10 + 5) = -1;
      *(v10 + 12) = -1;
      goto LABEL_34;
    }

    *v2 = 0;
    v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040D5BD1A0CuLL);
    *(v2 + 1) = v10;
    if (!v10)
    {
      goto LABEL_37;
    }

    *(v10 + 36) = xmmword_2998BD810;
    if (name)
    {
LABEL_35:
      v9 = dns_control_debug;
      goto LABEL_36;
    }

LABEL_34:
    _dns_open_notify(v10);
    goto LABEL_35;
  }

  return v2;
}

uint64_t _dns_open_notify(uint64_t out_token)
{
  if (out_token)
  {
    v1 = out_token;
    check = 0;
    v2 = (out_token + 48);
    if (*(out_token + 48) == -1)
    {
      out_token = notify_register_check("com.apple.system.dns.delay", v2);
      if (out_token)
      {
        *v2 = -1;
      }

      else
      {
        out_token = notify_check(*v2, &check);
      }
    }

    if (*(v1 + 40) == -1)
    {
      v3 = dns_configuration_notify_key();
      out_token = notify_register_check(v3, (v1 + 40));
      if (out_token)
      {
        *(v1 + 40) = -1;
      }
    }

    v5 = *(v1 + 44);
    v4 = (v1 + 44);
    if (v5 == -1)
    {
      out_token = notify_register_check("com.apple.system.dns.resolver.dir", v4);
      if (!out_token)
      {
        v6 = *v4;
        out_token = notify_monitor_file();
        if (!out_token)
        {
          return out_token;
        }

        out_token = notify_cancel(*v4);
      }

      *v4 = -1;
    }
  }

  return out_token;
}

void dns_set_debug(dns_handle_t dns, uint32_t flag)
{
  if (dns)
  {
    if (*dns)
    {
      v2 = *(dns + 2);
      if (v2)
      {
        *(*v2 + 8) = *(*v2 + 8) & 0xFFFFFFFFFFFFFFFDLL | (2 * (flag != 0));
      }
    }

    else
    {
      v3 = *(dns + 1);
      if (v3)
      {
        v4 = *(v3 + 36);
        if (flag)
        {
          *(v3 + 36) = v4 | 1;
          v5 = *(v3 + 8);
          if (v5)
          {
            v6 = *(v3 + 16);
            do
            {
              v7 = *v6++;
              *(*v7 + 8) |= 2uLL;
              --v5;
            }

            while (v5);
          }
        }

        else
        {
          *(v3 + 36) = v4 & 0xFFFFFFFE;
          v8 = *(v3 + 8);
          if (v8)
          {
            v9 = *(v3 + 16);
            do
            {
              v10 = *v9++;
              *(*v10 + 8) &= ~2uLL;
              --v8;
            }

            while (v8);
          }
        }
      }
    }
  }
}

void dns_free(dns_handle_t dns)
{
  if (dns)
  {
    v2 = *(dns + 3);
    if (v2)
    {
      free(v2);
    }

    if (*dns)
    {
      _pdns_free(*(dns + 2));
    }

    else
    {
      v3 = *(dns + 1);
      if (!v3)
      {
        return;
      }

      v4 = v3[12];
      if (v4 != -1)
      {
        notify_cancel(v4);
      }

      v3[12] = -1;
      v5 = v3[10];
      if (v5 != -1)
      {
        notify_cancel(v5);
      }

      v3[10] = -1;
      v6 = v3[11];
      if (v6 != -1)
      {
        notify_cancel(v6);
      }

      v3[11] = -1;
      v7 = *(dns + 1);
      if (*(v7 + 8))
      {
        v8 = 0;
        do
        {
          _pdns_free(*(*(v7 + 16) + 8 * v8++));
          v7 = *(dns + 1);
        }

        while (v8 < *(v7 + 8));
      }

      *(v7 + 8) = 0;
      if (*(v7 + 16))
      {
        free(*(v7 + 16));
        v7 = *(dns + 1);
      }

      free(v7);
    }

    free(dns);
  }
}

uint32_t dns_search_list_count(dns_handle_t dns)
{
  if (dns)
  {
    v1 = dns;
    if (*dns)
    {
      v2 = (dns + 16);
    }

    else
    {
      _check_cache(*(dns + 1));
      v2 = *(v1 + 1);
    }

    v3 = *v2;
    LODWORD(dns) = v3[6];
    if (dns == -1)
    {
      v4 = (*v3 + 72);
      v5 = *v4;
      v3[6] = 0;
      for (LODWORD(dns) = 0; v5; v5 = v4[dns])
      {
        if (!*v5)
        {
          break;
        }

        LODWORD(dns) = dns + 1;
        v3[6] = dns;
      }
    }
  }

  return dns;
}

_DWORD *_pdns_process_res_search_list(_DWORD *result)
{
  if (result[6] == -1)
  {
    v1 = (*result + 72);
    v2 = *v1;
    result[6] = 0;
    if (v2)
    {
      v3 = 1;
      do
      {
        if (!*v2)
        {
          break;
        }

        result[6] = v3;
        v2 = v1[v3++];
      }

      while (v2);
    }
  }

  return result;
}

char *__cdecl dns_search_list_domain(dns_handle_t dns, uint32_t i)
{
  if (!dns)
  {
    return 0;
  }

  if (*dns)
  {
    v4 = (dns + 16);
  }

  else
  {
    _check_cache(*(dns + 1));
    v4 = *(dns + 1);
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  if (v6 == -1)
  {
    v9 = (*v5 + 72);
    v10 = *v9;
    *(v5 + 24) = 0;
    if (!v10)
    {
      return 0;
    }

    v6 = 0;
    do
    {
      if (!*v10)
      {
        break;
      }

      *(v5 + 24) = ++v6;
      v10 = v9[v6];
    }

    while (v10);
  }

  if (v6 <= i)
  {
    return 0;
  }

  v7 = *(*(v5 + 32) + 8 * i);
  if (!v7)
  {
    return 0;
  }

  return strdup(v7);
}

uint64_t _pdns_search(uint64_t a1, uint64_t a2, char *__s, int a4, int a5, u_char *a6, int a7, _DWORD *a8, socklen_t *a9)
{
  v9 = 0xFFFFFFFFLL;
  if (a2 && __s && *a2 && *(*a2 + 16) && (a5 != 28 || (*(a2 + 44) & 0xC) != 8))
  {
    if (!*(a2 + 16) || strrchr(__s, 46))
    {
      goto LABEL_15;
    }

    v19 = *(a2 + 24);
    if (v19 == -1)
    {
      _pdns_process_res_search_list(a2);
      v19 = *(a2 + 24);
    }

    if (v19 || *(*a2 + 128))
    {
LABEL_15:
      _pdns_delay(a1);
      return __res_nsearch_list_2(*a2, __s, a4, a5, a6, a7, a8, a9, *(a2 + 24), *(a2 + 32));
    }

    _pdns_delay(a1);
    v20 = 0;
    asprintf(&v20, "%s.%s.", __s, *(a2 + 16));
    if (v20)
    {
      v9 = res_nsearch_2(*a2, v20, a4, a5, a6, a7, a8, a9);
      free(v20);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t _pdns_delay(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  check = 0;
  result = *(result + 48);
  if (result == -1)
  {
    return result;
  }

  if (!*(v1 + 56))
  {
    result = notify_check(result, &check);
    if (result || check != 1)
    {
      return result;
    }

    *(v1 + 56) = time(0) + 4;
    LODWORD(result) = 4;
LABEL_11:
    result = sleep(result);
    if (check == 1)
    {
      *(v1 + 56) = 0;
    }

    return result;
  }

  v2 = *(v1 + 56) - time(0);
  if (v2 < 0)
  {
    v2 = -1;
  }

  result = (v2 + 1);
  if (v2 != -1)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t _sdns_search(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, u_char *a7, unsigned int a8, _DWORD *a9, socklen_t *a10, int *a11)
{
  v11 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return v11;
  }

  v13 = a5;
  v72 = 0;
  __s1 = 0;
  *a11 = -1;
  v16 = *a1;
  if (*a1 && *v16)
  {
    v17 = *(*v16 + 392) & 0xF;
  }

  else
  {
    v17 = 1;
  }

  v18 = 0;
  v19 = 0;
  for (i = a2; *i == 46; ++i)
  {
    ++v18;
    v19 = i;
LABEL_12:
    ;
  }

  if (*i)
  {
    goto LABEL_12;
  }

  v71 = 0;
  if (!a5 && v19)
  {
    v13 = *(v19 + 1) == 0;
  }

  if (a4 != 12 && v18 < v17 && v13 != 1)
  {
    v21 = -1;
    if (a6 && v16)
    {
      v22 = 0;
      v23 = 1;
      goto LABEL_77;
    }

    goto LABEL_124;
  }

  v65 = v16;
  v74 = 0;
  v71 = -1;
  if (!*a2)
  {
    goto LABEL_46;
  }

  v24 = strdup(a2);
  v25 = &v24[strlen(v24)];
  if (*(v25 - 1) == 46)
  {
    *(v25 - 1) = 0;
  }

  default_handles = 0;
  v27 = *(a1 + 8);
  v28 = v27;
  v64 = v24;
  while (2)
  {
    if (v28)
    {
      v29 = 0;
      while (1)
      {
        v30 = *(*(*(a1 + 16) + 8 * v29) + 16);
        if (v30)
        {
          if (!strcasecmp(v30, v24))
          {
            break;
          }
        }

LABEL_43:
        ++v29;
        v28 = v27;
        if (v29 >= v27)
        {
          goto LABEL_44;
        }
      }

      if (default_handles)
      {
        v31 = reallocf(v74, 8 * default_handles + 8);
        v74 = v31;
        if (!v31)
        {
          goto LABEL_68;
        }

        if (default_handles >= 1)
        {
          v32 = 0;
          while (*(*(*(a1 + 16) + 8 * v29) + 56) >= *(*&v31[8 * v32] + 56))
          {
            if (default_handles == ++v32)
            {
              LODWORD(v32) = default_handles;
              goto LABEL_39;
            }
          }

          goto LABEL_39;
        }
      }

      else
      {
        v31 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
        v74 = v31;
        if (!v31)
        {
          goto LABEL_68;
        }
      }

      LODWORD(v32) = 0;
LABEL_39:
      if (default_handles > v32)
      {
        v33 = default_handles;
        do
        {
          *&v31[8 * v33] = *&v31[8 * v33 - 8];
          --v33;
        }

        while (v33 > v32);
      }

      *&v31[8 * v32] = *(*(a1 + 16) + 8 * v29);
      ++default_handles;
      v27 = *(a1 + 8);
      goto LABEL_43;
    }

LABEL_44:
    v34 = strchr(v24, 46);
    v24 = v34 + 1;
    if (v34)
    {
      continue;
    }

    break;
  }

  free(v64);
  if (default_handles)
  {
    goto LABEL_47;
  }

LABEL_46:
  default_handles = _pdns_get_default_handles(a1, &v74);
  if (!default_handles)
  {
LABEL_68:
    v39 = -1;
    v44 = a6;
    goto LABEL_69;
  }

LABEL_47:
  v75 = 0;
  v35 = &unk_2998BE18D;
  if (!v13)
  {
    v35 = ".";
  }

  asprintf(&v75, "%s%s", a2, v35);
  if (!v75)
  {
    goto LABEL_68;
  }

  v36 = 0;
  v37 = 0;
  v38 = 8 * default_handles;
  v39 = -1;
  do
  {
    v73 = -1;
    v11 = _pdns_query(a1, *&v74[v36], v75, a3, a4, a7, a8, a9, a10, &v73);
    if (v11 > 0)
    {
      break;
    }

    v40 = v73;
    if (v37)
    {
      v41 = 1;
    }

    else
    {
      v41 = v73 < 0;
    }

    v42 = v41;
    if (v73 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v73;
    }

    if (v39 != -1)
    {
      v40 = v43;
    }

    if (!v42)
    {
      v39 = v40;
    }

    v37 = v42 << 31 >> 31;
    v36 += 8;
  }

  while (v38 != v36);
  if (v37)
  {
    v39 = -1;
  }

  else
  {
    v71 = v39;
  }

  free(v74);
  free(v75);
  v13 = v13;
  v44 = a6;
  if (v11 > 0)
  {
    return v11;
  }

LABEL_69:
  if (v39 < 0)
  {
    v21 = -1;
  }

  else
  {
    v21 = v39;
  }

  v16 = v65;
  if (a4 == 12 || !v44 || !v65 || v13 == 1)
  {
    if (v39 < 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_124:
    *a11 = v21;
    return 0xFFFFFFFFLL;
  }

  v23 = v39 >= 0;
  v22 = v39 >> 31;
LABEL_77:
  v45 = v16[6];
  if (v45 == -1)
  {
    v54 = (*v16 + 72);
    v55 = *v54;
    v16[6] = 0;
    if (v55)
    {
      v45 = 0;
      do
      {
        if (!*v55)
        {
          break;
        }

        v16[6] = ++v45;
        v55 = v54[v45];
      }

      while (v55);
      goto LABEL_78;
    }
  }

  else
  {
LABEL_78:
    if (v45 >= 1)
    {
      v46 = v13;
      v47 = 0;
      LOBYTE(v48) = v22 == 0;
      v49 = 8 * v45;
      while (1)
      {
        __s1 = 0;
        v50 = v16;
        asprintf(&__s1, "%s.%s", a2, *(*(v16 + 4) + v47));
        if (!__s1)
        {
          break;
        }

        v71 = -1;
        v51 = _sdns_search(a1, __s1, a3, a4, v46, 0, a7, a8, a9, a10, &v71);
        if (v51 > 0)
        {
          v11 = v51;
          free(__s1);
          return v11;
        }

        if (v71 >= v21)
        {
          v52 = v21;
        }

        else
        {
          v52 = v71;
        }

        if (v21 == -1)
        {
          v53 = v71;
        }

        else
        {
          v53 = v52;
        }

        v48 = (v71 >= 0) & v48;
        if (v48)
        {
          v21 = v53;
        }

        free(__s1);
        v47 += 8;
        v16 = v50;
        if (v49 == v47)
        {
          if (v48)
          {
            *a11 = v53;
          }

          return 0xFFFFFFFFLL;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  v72 = 0;
  v56 = _pdns_get_default_handles(a1, &v72);
  if (!v56)
  {
    if (!v23)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_124;
  }

  v57 = 0;
  v58 = 8 * v56;
  while (1)
  {
    __s1 = 0;
    if (*(*(v72 + v57) + 16))
    {
      asprintf(&__s1, "%s.%s");
    }

    else
    {
      asprintf(&__s1, "%s");
    }

    if (!__s1)
    {
      return 0xFFFFFFFFLL;
    }

    v71 = -1;
    v11 = _pdns_query(a1, *(v72 + v57), __s1, a3, a4, a7, a8, a9, a10, &v71);
    if (v11 > 0)
    {
      free(__s1);
LABEL_128:
      free(v72);
      if (!v22)
      {
        *a11 = v21;
      }

      return v11;
    }

    v59 = v71;
    v61 = v71 < 0 || v22 != 0;
    if (v71 >= v21)
    {
      v62 = v21;
    }

    else
    {
      v62 = v71;
    }

    if (v21 != -1)
    {
      v59 = v62;
    }

    if (!v61)
    {
      v21 = v59;
    }

    v22 = v61 << 31 >> 31;
    free(__s1);
    v57 += 8;
    if (v58 == v57)
    {
      goto LABEL_128;
    }
  }
}

void **_pdns_get_default_handles(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a2;
      v5 = 0;
      v6 = 0;
      do
      {
        if ((*(*(*(a1 + 16) + 8 * v5) + 44) & 0x10) != 0)
        {
          if (v6)
          {
            v7 = reallocf(*v4, 8 * v6 + 8);
            *v4 = v7;
            if (!v7)
            {
              return 0;
            }

            if (v6 < 1)
            {
              LODWORD(v8) = 0;
            }

            else
            {
              v8 = 0;
              while (*(*(*(a1 + 16) + 8 * v5) + 56) >= *(*(v7 + v8) + 56))
              {
                if (v6 == ++v8)
                {
                  LODWORD(v8) = v6;
                  break;
                }
              }
            }
          }

          else
          {
            v7 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
            LODWORD(v8) = 0;
            a2 = 0;
            *v4 = v7;
            if (!v7)
            {
              return a2;
            }
          }

          if (v6 > v8)
          {
            v9 = v6;
            do
            {
              *(*v4 + v9) = *(*v4 + v9 - 1);
              --v9;
            }

            while (v9 > v8);
            v7 = *v4;
          }

          *(v7 + v8) = *(*(a1 + 16) + 8 * v5);
          v6 = (v6 + 1);
          v3 = *(a1 + 8);
        }

        ++v5;
        a2 = v6;
      }

      while (v5 < v3);
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

uint64_t _pdns_query(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, u_char *a6, int a7, _DWORD *a8, socklen_t *a9, int *a10)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    v19 = *a2;
    if ((*(a2 + 44) & 0x20) != 0)
    {
      result = res_query_mDNSResponder(v19, a3, a4, a5, a6, a7, a8, a9);
      if (a10 && (result & 0x80000000) != 0)
      {
        *a10 = 2;
      }
    }

    else if (v19 && v19->nscount && (a5 != 28 || (*(a2 + 44) & 0xC) != 8))
    {
      _pdns_delay(a1);
      v20 = *a2;

      return res_nquery_soa_min(v20, a3, a4, a5, a6, a7, a8, a9, a10);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t dns_server_list_count(uint64_t result)
{
  if (result)
  {
    if (*result == 1 && (v1 = *(result + 16)) != 0 && (v2 = *v1) != 0)
    {
      return *(v2 + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_OWORD *dns_server_list_address(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (!*v2)
  {
    return 0;
  }

  if (*(v3 + 16) <= a2)
  {
    return 0;
  }

  nsaddr = get_nsaddr(v3, a2);
  if (!nsaddr)
  {
    return 0;
  }

  v5 = nsaddr;
  result = malloc_type_calloc(1uLL, 0x80uLL, 0x1000040AE2C30F4uLL);
  if (!result)
  {
    return 0;
  }

  v7 = *v5;
  v8 = v5[1];
  v9 = v5[3];
  result[2] = v5[2];
  result[3] = v9;
  *result = v7;
  result[1] = v8;
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[7];
  result[6] = v5[6];
  result[7] = v12;
  result[4] = v10;
  result[5] = v11;
  return result;
}

_WORD *_pdns_build_start(char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040E9757900uLL);
  if (v2)
  {
    v3 = res_build_start(0);
    *v2 = v3;
    if (v3)
    {
      _pdns_set_name(v2, a1);
      v2[20] = 53;
    }

    else
    {
      free(v2);
      return 0;
    }
  }

  return v2;
}

void _pdns_build(uint64_t a1, char *__s1, char *a3)
{
  if (!a1)
  {
    return;
  }

  v12[0] = 0;
  v12[1] = 0;
  if ((*(a1 + 44) & 4) == 0 && !strcmp(__s1, "nameserver") && inet_pton(30, a3, v12) == 1)
  {
    *(a1 + 44) |= 4u;
  }

  if (!strcmp(__s1, "default"))
  {
    v6 = *(a1 + 44) | 0x10;
LABEL_16:
    *(a1 + 44) = v6;
    return;
  }

  if (!strcmp(__s1, "port"))
  {
    *(a1 + 40) = atoi(a3);
    return;
  }

  if (!strcmp(__s1, "search"))
  {
    v7 = strdup(a3);
    if (!v7)
    {
      return;
    }

    v8 = v7;
    v9 = *(a1 + 24);
    if (v9)
    {
      if (v9 != -1)
      {
        v10 = reallocf(*(a1 + 32), 8 * v9 + 8);
LABEL_28:
        *(a1 + 32) = v10;
        if (v10)
        {
          v11 = *(a1 + 24);
          v10[v11] = v8;
          *(a1 + 24) = v11 + 1;
        }

        else
        {
          free(v8);
          _pdns_free(a1);
        }

        return;
      }

      *(a1 + 24) = 0;
    }

    v10 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL);
    goto LABEL_28;
  }

  if (!strcmp(__s1, "total_timeout"))
  {
    *(a1 + 48) = atoi(a3);
  }

  else if (!strcmp(__s1, "timeout"))
  {
    *(a1 + 52) = atoi(a3);
  }

  else
  {
    if (strcmp(__s1, "search_order"))
    {
      if (strcmp(__s1, "pdns") && strcmp(__s1, "mdns"))
      {
        res_build(*a1, *(a1 + 40), (a1 + 24), __s1, a3);
        return;
      }

      v6 = *(a1 + 44) | 0x20;
      goto LABEL_16;
    }

    *(a1 + 56) = atoi(a3);
  }
}

_DWORD *_pdns_build_finish(_DWORD *result)
{
  if (result)
  {
    v1 = *result;
    if (*(*result + 16) <= 1u)
    {
      v2 = 1;
    }

    else
    {
      v2 = *(*result + 16);
    }

    v3 = result[12];
    if (!v3)
    {
      v4 = result[13];
      if (v4)
      {
        v3 = v4 * v2 * *(v1 + 4);
        result[12] = v3;
        if (!v3)
        {
          v3 = 30;
        }
      }

      else
      {
        v3 = 30;
        result[12] = 30;
      }
    }

    *v1 = v3;
    *(v1 + 8) |= 1uLL;
  }

  return result;
}

void *_pdns_set_name(void *result, char *__s)
{
  if (__s)
  {
    v2 = result;
    if (!result[2])
    {
      v4 = strlen(__s) - 1;
      do
      {
        v5 = __s[v4--];
      }

      while (v5 == 46);
      result = malloc_type_calloc(v4 + 3, 1uLL, 0x100004077774924uLL);
      v2[2] = result;
      if (result)
      {

        return memcpy(result, __s, v4 + 2);
      }
    }
  }

  return result;
}

void res_9_dst_init()
{
  if ((done_init & 1) == 0)
  {
    done_init = 1;
    v0 = getenv("DSTKEYPATH");
    if (v0)
    {
      v1 = v0;
      memset(&v6, 0, sizeof(v6));
      v2 = strlen(v0);
      if (v2 <= 0x400)
      {
        v3 = v2;
        if (!stat(v1, &v6) && (v6.st_mode & 0xF000) == 0x4000)
        {
          v4 = malloc_type_malloc(v3 + 2, 0x100004077774924uLL);
          memcpy(v4, v1, v3 + 1);
          v5 = v4 + strlen(v4);
          if (*(v5 - 1) != 47)
          {
            *(v5 + 1) = 0;
            *(v4 + strlen(v4)) = 47;
          }

          res_9_dst_path = v4;
        }
      }
    }

    bzero(&res_9_dst_t_func, 0x4F0uLL);
    res_9_dst_hmac_md5_init();
  }
}

uint64_t res_9_dst_sign_data(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 4) == 0 || (v6 = 4294967266, a6) && *(a2 + 32))
  {
    v6 = *(a2 + 40);
    if (v6)
    {
      if (*v6)
      {
        return (*v6)();
      }

      return 0;
    }
  }

  return v6;
}

uint64_t res_9_dst_verify_data(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 4) == 0 || (v6 = 4294967266, a6) && *(a2 + 32))
  {
    v7 = *(a2 + 40);
    if (v7)
    {
      v8 = *(v7 + 8);
      if (v8)
      {
        return v8();
      }
    }

    return 4294967265;
  }

  return v6;
}

unsigned int *res_9_dst_buffer_to_key(const char *a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a2 > 0x9D || !res_9_dst_t_func[a2])
  {
    goto LABEL_14;
  }

  v12 = malloc_type_malloc(0x30uLL, 0x10B00406B5C31EBuLL);
  v13 = v12;
  if (!v12)
  {
LABEL_13:
    res_9_dst_free_key(v13);
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  v14 = strdup(a1);
  *v13 = v14;
  if (!v14)
  {
    free(v13);
    v13 = 0;
    goto LABEL_13;
  }

  v13[4] = a2;
  v13[5] = a3;
  *(v13 + 4) = 0;
  v13[2] = -1;
  v13[3] = a4;
  v15 = res_9_dst_t_func[a2];
  *(v13 + 5) = v15;
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = *(v15 + 48);
  if (!v16 || (v16(v13, a5, a6) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v17 = v13[4];
  if (v17 <= 0x9D && res_9_dst_t_func[v17])
  {
    bzero(&v26, 0x800uLL);
    res_9_dst_s_put_int16(&v26, *(v13 + 10));
    v18 = v13[4];
    v27 = v13[3];
    v28 = v18;
    v19 = v13[5];
    if (v19 < 0x10000)
    {
      v20 = 4;
    }

    else
    {
      res_9_dst_s_put_int16(v29, HIWORD(v19));
      v20 = 6;
    }

    if (*(v13 + 4))
    {
      v23 = *(v13 + 5);
      if (v23 && (v24 = *(v23 + 40)) != 0)
      {
        v25 = v24(v13, &v26 + v20, 2048 - v20);
        if (v25 <= 0)
        {
          v20 = -1;
        }

        else
        {
          v20 += v25;
        }
      }

      else
      {
        v20 = -1;
      }
    }
  }

  else
  {
    v20 = -31;
  }

  *(v13 + 12) = res_9_dst_s_dns_key_id(&v26, v20);
LABEL_15:
  v21 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t res_9_dst_free_key(void *a1)
{
  if (a1)
  {
    v2 = a1[5];
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        a1[4] = v3(a1[4]);
      }
    }

    v4 = a1[4];
    if (v4)
    {
      free(v4);
      a1[4] = 0;
    }

    if (*a1)
    {
      **a1 = 0;
      free(*a1);
    }

    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    free(a1);
  }

  return 0;
}

uint64_t res_9_dst_hmac_md5_init()
{
  if (!qword_2A14C0D60)
  {
    result = malloc_type_malloc(0x40uLL, 0x80040A284212CuLL);
    qword_2A14C0D60 = result;
    if (!result)
    {
      return result;
    }

    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *qword_2A14C0D60 = dst_hmac_md5_sign;
    *(qword_2A14C0D60 + 8) = dst_hmac_md5_verify;
    *(qword_2A14C0D60 + 32) = dst_hmac_md5_free_key_structure;
    *(qword_2A14C0D60 + 40) = dst_hmac_md5_to_dns_key;
    *(qword_2A14C0D60 + 48) = dst_buffer_to_hmac_md5;
  }

  return 1;
}

uint64_t dst_hmac_md5_sign(char a1, uint64_t a2, CC_MD5_CTX **a3, void *data, signed int len, unsigned __int8 *md, int a7)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {
    v16 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    if (!v16)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = v16;
    v8 = *(a2 + 32);
    CC_MD5_Init(v16);
    CC_MD5_Update(v15, v8, 0x40u);
  }

  else
  {
    if (!a3)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = *a3;
    if (!*a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((a1 & 2) != 0 && data && len >= 1)
  {
    CC_MD5_Update(v15, data, len);
  }

  if ((a1 & 4) == 0)
  {
    if (a3)
    {
      v17 = 0;
      *a3 = v15;
      return v17;
    }

    return 0xFFFFFFFFLL;
  }

  v17 = 4294967271;
  if (md && a7 >= 16)
  {
    CC_MD5_Final(md, v15);
    CC_MD5_Init(v15);
    CC_MD5_Update(v15, (v8 + 64), 0x40u);
    v17 = 16;
    CC_MD5_Update(v15, md, 0x10u);
    CC_MD5_Final(md, v15);
    *&v15->A = 0u;
    *&v15->Nl = 0u;
    *&v15->data[2] = 0u;
    *&v15->data[6] = 0u;
    *&v15->data[10] = 0u;
    *&v15->data[13] = 0u;
    free(v15);
  }

  return v17;
}

uint64_t dst_hmac_md5_verify(char a1, uint64_t a2, CC_MD5_CTX **a3, void *data, signed int len, void *a6, int a7)
{
  v22 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (a1)
  {
    v16 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
    if (!v16)
    {
      goto LABEL_16;
    }

    v15 = v16;
    v8 = *(a2 + 32);
    CC_MD5_Init(v16);
    CC_MD5_Update(v15, v8, 0x40u);
  }

  else
  {
    if (!a3)
    {
      goto LABEL_16;
    }

    v15 = *a3;
    if (!*a3)
    {
      goto LABEL_16;
    }
  }

  if ((a1 & 2) != 0 && data && len >= 1)
  {
    CC_MD5_Update(v15, data, len);
  }

  if ((a1 & 4) == 0)
  {
    if (a3)
    {
      result = 0;
      *a3 = v15;
      goto LABEL_17;
    }

LABEL_16:
    result = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  if (a7 != 16 || !a6 || !v8)
  {
    goto LABEL_25;
  }

  CC_MD5_Final(md, v15);
  CC_MD5_Init(v15);
  CC_MD5_Update(v15, (v8 + 64), 0x40u);
  CC_MD5_Update(v15, md, 0x10u);
  CC_MD5_Final(md, v15);
  *&v15->A = 0u;
  *&v15->Nl = 0u;
  *&v15->data[2] = 0u;
  *&v15->data[6] = 0u;
  *&v15->data[10] = 0u;
  *&v15->data[13] = 0u;
  free(v15);
  if (*md == *a6 && v21 == a6[1])
  {
    result = 0;
  }

  else
  {
LABEL_25:
    result = 4294967268;
  }

LABEL_17:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t dst_hmac_md5_free_key_structure(_OWORD *a1)
{
  if (a1)
  {
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    free(a1);
  }

  return 0;
}

uint64_t dst_hmac_md5_to_dns_key(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2)
  {
    v6 = *(a1 + 8);
    if (v6 < a3)
    {
      if (v6 < 1)
      {
        return 0;
      }

      else
      {
        result = 0;
        do
        {
          *(a2 + result) = *(v4 + result) ^ 0x36;
          ++result;
        }

        while (result < *(a1 + 8));
      }
    }
  }

  return result;
}

uint64_t dst_buffer_to_hmac_md5(uint64_t a1, const void *a2, CC_LONG a3)
{
  v16 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      v6 = a3;
      if ((a3 & 0x80000000) == 0)
      {
        v7 = malloc_type_malloc(0x80uLL, 0x1000040AE2C30F4uLL);
        if (v7)
        {
          v8 = v7;
          v7[4] = 0u;
          v7[6] = 0u;
          v7[7] = 0u;
          v7[5] = 0u;
          v7[2] = 0u;
          v7[3] = 0u;
          *v7 = 0u;
          v7[1] = 0u;
          if (v6 >= 0x41)
          {
            memset(&v14, 0, sizeof(v14));
            CC_MD5_Init(&v14);
            CC_MD5_Update(&v14, a2, v6);
            CC_MD5_Final(md, &v14);
            v6 = 16;
          }

          __memcpy_chk();
          __memcpy_chk();
          v9 = 0;
          v10.i64[0] = 0x3636363636363636;
          v10.i64[1] = 0x3636363636363636;
          v11.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
          v11.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
          do
          {
            v12 = &v8[v9];
            *v12 = veorq_s8(v8[v9], v10);
            v12[4] = veorq_s8(v8[v9 + 4], v11);
            ++v9;
          }

          while (v9 != 4);
          *(a1 + 8) = v6;
          *(a1 + 32) = v8;
          result = 1;
        }

        else
        {
          result = 4294967294;
        }
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t res_9_dst_s_dns_key_id(unsigned __int16 *a1, int a2)
{
  if (!a1 || (v2 = *(a1 + 3), v2 == 157))
  {
    LOWORD(v3) = 0;
  }

  else if (v2 == 1)
  {
    return bswap32(*(a1 + a2 - 3)) >> 16;
  }

  else if (a2 < 1)
  {
    LOWORD(v3) = -1;
  }

  else
  {
    v5 = 0;
    if (a2 == 1)
    {
      goto LABEL_12;
    }

    v6 = a2 + 2;
    do
    {
      v7 = *a1++;
      v5 += bswap32(v7) >> 16;
      v6 -= 2;
    }

    while (v6 > 3);
    if (v6 == 3)
    {
LABEL_12:
      v5 += *a1 << 8;
    }

    return (v5 + HIWORD(v5));
  }

  return v3;
}

void *__res_9_state()
{
  if (pthread_main_np())
  {
    goto LABEL_4;
  }

  if (use_global_state_minos_requires_global < 0)
  {
    use_global_state_minos_requires_global = dyld_program_minos_at_least() ^ 1;
    if (use_global_state_minos_requires_global)
    {
      goto LABEL_4;
    }
  }

  else if (use_global_state_minos_requires_global)
  {
LABEL_4:
    v0 = MEMORY[0x29EDCA670];
LABEL_5:
    res_check_reload(v0);
    return v0;
  }

  v2 = pthread_once(&res_init_once, res_keycreate);
  v0 = MEMORY[0x29EDCA670];
  if (!v2 && res_thr_keycreated)
  {
    v3 = pthread_getspecific(res_key);
    if (v3)
    {
      v0 = v3;
      goto LABEL_5;
    }

    v4 = malloc_type_calloc(1uLL, 0x228uLL, 0x10B2040E67E7BACuLL);
    if (v4)
    {
      v0 = v4;
      if (pthread_setspecific(res_key, v4))
      {
        free(v0);
        printf("%s:%d debugging time\n", "__res_9_state", 182);
        return MEMORY[0x29EDCA670];
      }
    }
  }

  return v0;
}

uint64_t res_check_reload(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 536);
    if (v2)
    {
      if (*(v2 + 960))
      {
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        memset(&v4, 0, sizeof(v4));
        if (!clock_gettime(_CLOCK_MONOTONIC, &__tp) && __tp.tv_sec - *(v2 + 952) >= *(v2 + 960))
        {
          *(v2 + 952) = __tp.tv_sec;
          if (!stat("/etc/resolv.conf", &v4) && *&v4.st_mtimespec != *(v2 + 936))
          {
            *(a1 + 8) &= ~1uLL;
          }
        }
      }
    }
  }

  return a1;
}

uint64_t res_keycreate()
{
  result = pthread_key_create(&res_key, free_res);
  res_thr_keycreated = result == 0;
  return result;
}

void free_res(__res_9_state *a1)
{
  if (a1->_u._ext.ext)
  {
    res_9_ndestroy(a1);
  }

  free(a1);
}

void *___mtctxres()
{
  if (mt_key_initialized)
  {
    goto LABEL_7;
  }

  if (!pthread_mutex_lock(&___mtctxres_keylock))
  {
    if (!pthread_key_create(&key, __res_destroy_ctx))
    {
      mt_key_initialized = 1;
    }

    pthread_mutex_unlock(&___mtctxres_keylock);
  }

  if (mt_key_initialized == 1)
  {
LABEL_7:
    result = pthread_getspecific(key);
    if (result)
    {
      return result;
    }

    if (pthread_getspecific(key))
    {
LABEL_9:
      result = pthread_getspecific(key);
      if (result)
      {
        return result;
      }

      return &sharedctx;
    }

    v1 = malloc_type_malloc(0x3F4uLL, 0x1000040F9095F45uLL);
    if (v1)
    {
      v2 = v1;
      bzero(v1, 0x3F4uLL);
      v3 = pthread_setspecific(key, v2);
      if (!v3)
      {
        goto LABEL_9;
      }

      v4 = v3;
      free(v2);
    }

    else
    {
      v4 = 12;
    }

    *__error() = v4;
  }

  return &sharedctx;
}

u_int32_t res_9_ns_datetosecs(const char *cp, int *errp)
{
  if (strlen(cp) != 14)
  {
    goto LABEL_37;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  *errp = 0;
  do
  {
    v7 = v6;
    v8 = cp[v5];
    if ((v8 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v8) = cp[v5];
    }

    v6 = 10 * v6 + v8 - 48;
    ++v5;
  }

  while (v5 != 4);
  if ((v6 - 10000) <= 0xFFFFE0B5)
  {
    v4 = 1;
    *errp = 1;
  }

  v9 = 0;
  v10 = 0;
  v11 = cp + 4;
  do
  {
    v12 = v11[v9];
    if ((v12 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v12) = v11[v9];
    }

    v10 = 10 * v10 + v12 - 48;
    ++v9;
  }

  while (v9 != 2);
  if ((v10 - 13) <= 0xFFFFFFF3)
  {
    v4 = 1;
    *errp = 1;
  }

  v13 = 0;
  v14 = 0;
  v15 = cp + 6;
  do
  {
    v16 = v15[v13];
    if ((v16 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v16) = v15[v13];
    }

    v14 = 10 * v14 + v16 - 48;
    ++v13;
  }

  while (v13 != 2);
  if ((v14 - 32) <= 0xFFFFFFE0)
  {
    v4 = 1;
    *errp = 1;
  }

  v17 = 0;
  v18 = 0;
  v19 = (v10 - 1);
  v20 = cp + 8;
  do
  {
    v21 = v20[v17];
    if ((v21 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v21) = v20[v17];
    }

    v18 = 10 * v18 + v21 - 48;
    ++v17;
  }

  while (v17 != 2);
  if (v18 >= 0x18)
  {
    v4 = 1;
    *errp = 1;
  }

  v22 = 0;
  v23 = 0;
  v24 = cp + 10;
  do
  {
    v25 = v24[v22];
    if ((v25 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v25) = v24[v22];
    }

    v23 = 10 * v23 + v25 - 48;
    ++v22;
  }

  while (v22 != 2);
  if (v23 >= 0x3C)
  {
    v4 = 1;
    *errp = 1;
  }

  v26 = 0;
  v27 = 0;
  v28 = cp + 12;
  do
  {
    v29 = v28[v26];
    if ((v29 - 48) >= 0xA)
    {
      v4 = 1;
      *errp = 1;
      LOBYTE(v29) = v28[v26];
    }

    v27 = 10 * v27 + v29 - 48;
    ++v26;
  }

  while (v26 != 2);
  if (v27 <= 0x3B)
  {
    if (v4)
    {
      return 0;
    }

    else
    {
      v31 = 60 * v23;
      v32 = 3600 * v18;
      if (v10 < 2)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = &res_9_ns_datetosecs_days_per_month;
        do
        {
          v35 = *v34++;
          v33 += v35;
          --v19;
        }

        while (v19);
      }

      v36 = v32 + v31 + v27 + 86400 * (v33 + v14) - 86400;
      HIDWORD(v37) = -1030792151 * v6 + 85899344;
      LODWORD(v37) = HIDWORD(v37);
      v39 = (v37 >> 2) > 0x28F5C28 && (v6 & 3) == 0 || v6 % 400 == 0;
      v40 = v36 + 86400;
      if (!v39)
      {
        v40 = v36;
      }

      if (v10 > 2)
      {
        v41 = v40;
      }

      else
      {
        v41 = v36;
      }

      result = v41 + 31536000 * v6 - 1996377856;
      if (v6 >= 1971)
      {
        v42 = 10 * v7 + v8 - 2018;
        v43 = 70;
        v44 = -1970;
        v45 = 1970;
        do
        {
          if (v44 + 100 * (v45 / 0x64))
          {
            v46 = (v43 & 3) == 0;
          }

          else
          {
            v46 = 0;
          }

          if (v46 || v44 + 400 * (v45 / 0x190) == 0)
          {
            result += 86400;
          }

          ++v43;
          --v44;
          ++v45;
          --v42;
        }

        while (v42);
      }
    }
  }

  else
  {
LABEL_37:
    result = 0;
    *errp = 1;
  }

  return result;
}

int res_9_ns_name_ntop(const u_char *a1, char *a2, size_t a3)
{
  v4 = &a2[a3];
  v5 = *a1;
  if (*a1)
  {
    v29 = a3;
    v6 = a2;
    while (1)
    {
      if (v5 >= 0xC0)
      {
        goto LABEL_61;
      }

      v7 = v5;
      v8 = a2;
      if (v6 != a2)
      {
        if (v6 >= v4)
        {
          goto LABEL_61;
        }

        *v6 = 46;
        v7 = *a1;
        v8 = v6 + 1;
      }

      v9 = a1 + 1;
      if ((v7 & 0xC0) == 0x40)
      {
        if (v7 != 65)
        {
          goto LABEL_61;
        }

        v7 = *v9 ? ((*v9 + 7) >> 3) + 1 : 33;
      }

      else if ((v7 & 0xC0) == 0xC0)
      {
        goto LABEL_61;
      }

      if (&v8[v7] >= v4)
      {
        goto LABEL_61;
      }

      if ((v5 & 0xC0) == 0x40)
      {
        break;
      }

      if (v7)
      {
        v18 = v7 + 1;
        v6 = v8;
        while (1)
        {
          v20 = *v9++;
          v19 = v20;
          v21 = (1 << (v20 - 34)) & 0x4000000420010C5;
          if ((v20 - 34) > 0x3A || v21 == 0)
          {
            if ((v19 - 127) > 0xFFFFFFA1)
            {
              if (v6 >= v4)
              {
                goto LABEL_61;
              }

              *v6++ = v19;
            }

            else
            {
              if (v6 + 3 >= v4)
              {
                goto LABEL_61;
              }

              *v6 = 92;
              v23 = (41 * v19) >> 12;
              v6[1] = digits[v23];
              v6[2] = digits[(v19 - 100 * v23) / 0xAu];
              v6[3] = digits[(v19 - 10 * ((205 * v19) >> 11))];
              v6 += 4;
            }
          }

          else
          {
            if (v6 + 1 >= v4)
            {
              goto LABEL_61;
            }

            *v6 = 92;
            v6[1] = v19;
            v6 += 2;
          }

          if (--v18 <= 1)
          {
            goto LABEL_53;
          }
        }
      }

      v6 = v8;
LABEL_53:
      v5 = *v9;
      a1 = v9;
      if (!*v9)
      {
        a3 = v29;
        if (v6 != a2)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }
    }

    if (v5 != 65)
    {
      v27 = __error();
      v28 = 22;
      goto LABEL_62;
    }

    i = *v9;
    if (*v9)
    {
      v11 = *v9;
    }

    else
    {
      v11 = 256;
    }

    if (v11 <= 9)
    {
      v12 = 7;
    }

    else
    {
      v12 = 8;
    }

    if (v11 > 0x63)
    {
      v12 = 9;
    }

    if (&v8[v12 + ((v11 + 3) >> 2)] >= v4)
    {
      goto LABEL_61;
    }

    *v8 = 7887708;
    v13 = v8 + 3;
    v14 = a1 + 2;
    if (v11 >= 8)
    {
      for (i = v11; i > 7; i -= 8)
      {
        v15 = *v14++;
        v13 += sprintf(v13, "%02x", v15);
      }

      v9 = v14 - 1;
    }

    if (i < 5)
    {
      if (!i)
      {
        v9 = v14;
        goto LABEL_50;
      }

      v24 = *v14 >> 4;
      v17 = sprintf(v13, "%1x");
    }

    else
    {
      v16 = *v14;
      v17 = sprintf(v13, "%02x");
    }

    v9 += 2;
    v13 += v17;
LABEL_50:
    v25 = v13 + sprintf(v13, "/%d]", v11) - v8;
    if (v25 < 0)
    {
      goto LABEL_61;
    }

    v6 = &v8[v25 & 0x7FFFFFFF];
    goto LABEL_53;
  }

LABEL_57:
  if (a3 <= 0)
  {
    goto LABEL_61;
  }

  *a2 = 46;
  v6 = a2 + 1;
LABEL_59:
  if (v6 >= v4)
  {
LABEL_61:
    v27 = __error();
    v28 = 40;
LABEL_62:
    *v27 = v28;
    return -1;
  }

  else
  {
    *v6 = 0;
    return v6 - a2 + 1;
  }
}

uint64_t res_9_ns_name_pton2(_BYTE *a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v6 = &a2[a3];
  v7 = a2 + 1;
  v8 = a2;
  do
  {
LABEL_2:
    v9 = a1;
    while (2)
    {
      v10 = v9 + 2;
      v11 = 1;
      while (1)
      {
        v13 = *a1++;
        v12 = v13;
        if (!v13)
        {
          v36 = v7 + ~v8;
          if ((v36 & 0xC0) == 0 && v8 < v6)
          {
            *v8 = v36;
            if (!v36)
            {
              goto LABEL_71;
            }

            if (v7 < v6)
            {
              v25 = v7++;
              goto LABEL_70;
            }
          }

LABEL_72:
          v34 = __error();
          v35 = 40;
LABEL_73:
          *v34 = v35;
          return 0xFFFFFFFFLL;
        }

        LOBYTE(v14) = v12;
        if ((v11 & 1) == 0)
        {
          break;
        }

        v11 = 0;
        if (v12 != 92)
        {
          if (v12 != 46)
          {
            v10 = a1;
            goto LABEL_17;
          }

          v20 = v7 + ~v8;
          if ((v20 & 0xC0) != 0 || v8 >= v6)
          {
            goto LABEL_72;
          }

          *v8 = v20;
          if (!*a1)
          {
            if (v20)
            {
              if (v7 >= v6)
              {
                goto LABEL_72;
              }

              *v7++ = 0;
            }

            if (v7 - a2 >= 256)
            {
              goto LABEL_72;
            }

            if (a4)
            {
              *a4 = v7 - a2;
            }

            return 1;
          }

          if (!v20 || *a1 == 46)
          {
            goto LABEL_72;
          }

          v8 = v7++;
          goto LABEL_2;
        }
      }

      if (v12 != 91)
      {
        v15 = memchr("0123456789", v12, 0xBuLL);
        if (v15)
        {
          if (!v9[2])
          {
            goto LABEL_72;
          }

          v16 = v15;
          v17 = memchr("0123456789", v9[2], 0xBuLL);
          if (!v17)
          {
            goto LABEL_72;
          }

          if (!v9[3])
          {
            goto LABEL_72;
          }

          v18 = v17;
          v19 = memchr("0123456789", v9[3], 0xBuLL);
          if (!v19)
          {
            goto LABEL_72;
          }

          v14 = 100 * (v16 - "0123456789") + 10 * (v18 - "0123456789") + v19 - "0123456789";
          if (v14 >= 256)
          {
            goto LABEL_72;
          }

          v10 = v9 + 4;
        }

LABEL_17:
        if (v7 >= v6)
        {
          goto LABEL_72;
        }

        *v7++ = v14;
        v9 = v10;
        a1 = v10;
        continue;
      }

      break;
    }

    v21 = strchr(v9 + 2, 93);
    if (!v21)
    {
      goto LABEL_64;
    }

    v22 = (v21 + 2);
    __endptr = 0;
    if (v21 - v9 < 2)
    {
      goto LABEL_85;
    }

    if (v9[2] != 120)
    {
      goto LABEL_85;
    }

    v23 = v9 + 3;
    if ((*(MEMORY[0x29EDCA600] + 4 * v9[3] + 60) & 0x10000) == 0)
    {
      goto LABEL_85;
    }

    v24 = 40;
    if (v9 + 1 >= v21 || (v25 = v7 + 1, (v7 + 1) >= v6))
    {
LABEL_86:
      *__error() = v24;
      return 0xFFFFFFFFLL;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = *v23;
      if (v31 == 47)
      {
        goto LABEL_37;
      }

      if (v31 == 93)
      {
        break;
      }

      if (v30)
      {
        if ((v31 - 48) > 9)
        {
          goto LABEL_85;
        }

        if (!v29)
        {
          if (v31 == 48)
          {
            goto LABEL_85;
          }

          v30 = 1;
          v29 = v23;
          goto LABEL_38;
        }

LABEL_37:
        v30 = 1;
        goto LABEL_38;
      }

      if ((*(MEMORY[0x29EDCA600] + 4 * v31 + 60) & 0x10000) == 0 || v26 > 252)
      {
        goto LABEL_85;
      }

      v28 = digitvalue[v31] + 16 * v28;
      v26 += 4;
      v27 += 4;
      v30 = 0;
      if (v27 == 8)
      {
        v27 = 0;
        *v25++ = v28;
      }

LABEL_38:
      ++v23;
      v24 = 40;
      if (v23 >= v22 || v25 >= v6)
      {
        goto LABEL_86;
      }
    }

    if (v30)
    {
      v38 = v27;
      v39 = v28;
      if (v29)
      {
        v32 = v26;
        v33 = strtol(v29, &__endptr, 10);
        if (*__endptr == 93)
        {
          v26 = v32;
          v27 = v38;
          v28 = v39;
          goto LABEL_53;
        }
      }

LABEL_85:
      v24 = 22;
      goto LABEL_86;
    }

    v33 = 0;
LABEL_53:
    if (v27)
    {
      *v25++ = 16 * v28;
    }

    v24 = 40;
    if ((v23 + 1) >= v22 || v25 >= v6)
    {
      goto LABEL_86;
    }

    if (v33 < 1)
    {
      LOBYTE(v33) = v26;
    }

    else if (((v33 + 3) & 0x7FFFFFFC) != v26 || (v28 << (v33 - v26 + 8)))
    {
      goto LABEL_85;
    }

    *v8 = 65;
    *v7 = v33;
    v7 = v25 + 1;
    a1 = v23 + 2;
    v8 = v25;
  }

  while (v23[1] == 46);
  if (v23[1])
  {
LABEL_64:
    v34 = __error();
    v35 = 22;
    goto LABEL_73;
  }

LABEL_70:
  *v25 = 0;
LABEL_71:
  if (v7 - a2 >= 256)
  {
    goto LABEL_72;
  }

  result = 0;
  if (a4)
  {
    *a4 = v7 - a2;
  }

  return result;
}

int res_9_ns_name_ntol(const u_char *a1, u_char *a2, size_t a3)
{
  if (a3 >= 1)
  {
    v3 = a2;
    v4 = a1;
    v5 = *a1;
    v6 = a2;
    if (!*a1)
    {
LABEL_20:
      *v6 = 0;
      return v6 - v3 + 1;
    }

    v7 = &a2[a3];
    v8 = MEMORY[0x29EDCA600];
    v6 = a2;
    while (v5 < 0xC0)
    {
      *v6 = v5;
      v9 = *v4;
      if ((v9 & 0xC0) == 0x40)
      {
        if (v9 != 65)
        {
          break;
        }

        v9 = v4[1] ? ((v4[1] + 7) >> 3) + 1 : 33;
      }

      else if ((v9 & 0xC0) == 0xC0)
      {
        break;
      }

      if (&(++v6)[v9] >= v7)
      {
        break;
      }

      ++v4;
      if (v9)
      {
        v10 = v9 + 1;
        do
        {
          v11 = *v4;
          if ((v11 & 0x8000000000000000) == 0 && (*(v8 + 4 * v11 + 60) & 0x8000) != 0)
          {
            LOBYTE(v11) = __tolower(*v4);
          }

          *v6++ = v11;
          ++v4;
          --v10;
        }

        while (v10 > 1);
      }

      v5 = *v4;
      if (!*v4)
      {
        goto LABEL_20;
      }
    }
  }

  *__error() = 40;
  return -1;
}

uint64_t res_9_ns_name_unpack2(unint64_t a1, unint64_t a2, _BYTE *a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < a1 || (v6 = a3, a3 >= a2))
  {
LABEL_25:
    *__error() = 40;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a3 + 1;
    v9 = *a3;
    if (*a3)
    {
      v11 = 0;
      v12 = &a4[a5];
      v13 = a2 - a1;
      v14 = -1;
      v15 = a4;
      while (1)
      {
        if (v9 >> 6 >= 2)
        {
          if (v9 >> 6 != 3)
          {
            goto LABEL_25;
          }

          if (v8 >= a2)
          {
            goto LABEL_25;
          }

          v17 = *v8 | ((v9 & 0x3F) << 8);
          if (v13 <= v17)
          {
            goto LABEL_25;
          }

          if (v14 < 0)
          {
            v14 = v8 - v6 + 1;
          }

          v11 += 2;
          if (v13 <= v11)
          {
            goto LABEL_25;
          }

          v18 = (a1 + v17);
        }

        else
        {
          if ((v9 & 0xC0) == 0x40)
          {
            if (v9 != 65)
            {
              goto LABEL_25;
            }

            if (*v8)
            {
              v16 = ((*v8 + 7) >> 3) + 1;
            }

            else
            {
              v16 = 33;
            }
          }

          else
          {
            v16 = v9;
            if ((v9 & 0xC0) == 0xC0)
            {
              goto LABEL_25;
            }
          }

          if (&v15[v16 + 1] >= v12)
          {
            goto LABEL_25;
          }

          v19 = v16;
          v20 = &v8[v16];
          if (v20 >= a2)
          {
            goto LABEL_25;
          }

          v11 += v16 + 1;
          *v15 = v9;
          v21 = v15 + 1;
          memcpy(v21, v8, v16);
          v15 = &v21[v19];
          v18 = v20;
        }

        v22 = *v18;
        v8 = v18 + 1;
        v9 = v22;
        if (!v22)
        {
          goto LABEL_27;
        }
      }
    }

    v14 = -1;
    v15 = a4;
LABEL_27:
    *v15 = 0;
    if (a6)
    {
      *a6 = v15 - a4 + 1;
    }

    if (v14 >= 0)
    {
      return v14;
    }

    else
    {
      return (v8 - v6);
    }
  }
}

int res_9_ns_name_pack(const u_char *a1, u_char *a2, int a3, const u_char **a4, const u_char **a5)
{
  v5 = a4;
  v6 = a1;
  if (a4)
  {
    v8 = a4 + 1;
    v7 = *a4;
    if (*a4)
    {
      do
      {
        v9 = v5[1];
        ++v5;
      }

      while (v9);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v10 = 0;
  v11 = a1;
  v12 = &a2[a3];
  do
  {
    v13 = *v11;
    if (v13 >= 0xC0)
    {
      goto LABEL_67;
    }

    if ((v13 & 0xC0) == 0x40)
    {
      if (v13 != 65)
      {
        v42 = __error();
        v43 = 22;
        goto LABEL_68;
      }

      if (v11[1])
      {
        v14 = ((v11[1] + 7) >> 3) + 1;
      }

      else
      {
        v14 = 33;
      }
    }

    else
    {
      v14 = *v11;
    }

    v15 = v14 + 1;
    v10 += v15;
    if (v10 >= 256)
    {
      goto LABEL_67;
    }

    v11 += v15;
  }

  while (v13);
  v44 = a2;
  v45 = a5 - 1;
  v16 = 1;
  v17 = a2;
  v18 = v5;
  while (1)
  {
    v19 = *v6;
    if (v7 && *v6)
    {
      if (v8 < v5)
      {
        v20 = v8;
        v21 = v16;
        do
        {
          v22 = *v20;
          v23 = **v20;
          if ((v23 - 1) <= 0x3E)
          {
            while (2)
            {
              v24 = v22 - v7;
              if (v22 - v7 < 0x4000)
              {
                v25 = v6;
                v26 = v22;
LABEL_25:
                while (1)
                {
                  v27 = *v26;
                  if (!*v26)
                  {
                    break;
                  }

                  v28 = (v26 + 1);
                  if ((v27 & 0xC0) != 0xC0)
                  {
                    if ((v27 & 0xC0) != 0)
                    {
                      v38 = 40;
                      goto LABEL_43;
                    }

                    if (v27 == *v25)
                    {
                      v29 = (v27 - 1);
                      v26 += v29 + 2;
                      v30 = &v25[v29 + 2];
                      v31 = (v25 + 1);
                      while (1)
                      {
                        v33 = *v31++;
                        v32 = v33;
                        v34 = v33 | 0x20;
                        if ((v33 - 65) < 0x1A)
                        {
                          v32 = v34;
                        }

                        v35 = *v28;
                        if ((v35 - 65) < 0x1A)
                        {
                          v35 |= 0x20u;
                        }

                        if (v32 != v35)
                        {
                          break;
                        }

                        ++v28;
                        if (!--v27)
                        {
                          v25 = v30;
                          if (*v30)
                          {
                            goto LABEL_25;
                          }

                          if (*v26)
                          {
                            goto LABEL_39;
                          }

                          if (v24 < 0)
                          {
                            goto LABEL_44;
                          }

                          if (v17 + 1 < v12)
                          {
                            *v17 = BYTE1(v24) | 0xC0;
                            v17[1] = v24;
                            return v17 - v44 + 2;
                          }

                          goto LABEL_65;
                        }
                      }
                    }

                    break;
                  }

                  v26 = &v7[*v28 | ((v27 & 0x3F) << 8)];
                }

LABEL_39:
                v36 = &v22[v23];
                v37 = v36[1];
                v22 = v36 + 1;
                v23 = v37;
                if ((v37 - 1) < 0x3F)
                {
                  continue;
                }
              }

              break;
            }
          }

          ++v20;
        }

        while (v20 < v5);
      }

      v38 = 2;
LABEL_43:
      *__error() = v38;
      v21 = v16;
LABEL_44:
      if (a5 && v18 < v45 && v17 - v7 < 0x4000 && v21)
      {
        v16 = 0;
        *v18 = v17;
        v18[1] = 0;
        ++v18;
      }
    }

    if (v19 > 0xBF)
    {
      break;
    }

    v39 = *v6;
    if ((v39 & 0xC0) == 0xC0)
    {
      goto LABEL_56;
    }

    if ((v39 & 0xC0) == 0x40)
    {
      if (v39 == 65)
      {
        if (v6[1])
        {
          v39 = ((v6[1] + 7) >> 3) + 1;
        }

        else
        {
          v39 = 33;
        }

        goto LABEL_57;
      }

LABEL_56:
      v39 = -1;
    }

LABEL_57:
    if (&v17[v39 + 1] >= v12)
    {
      break;
    }

    v40 = (v39 + 1);
    memcpy(v17, v6, v40);
    v6 += v40;
    v17 += v40;
    if (!v39)
    {
      if (v17 <= v12)
      {
        return v17 - v44;
      }

      break;
    }
  }

LABEL_65:
  if (v7)
  {
    *v5 = 0;
  }

LABEL_67:
  v42 = __error();
  v43 = 40;
LABEL_68:
  *v42 = v43;
  return -1;
}

int res_9_ns_name_uncompress(const u_char *a1, const u_char *a2, const u_char *a3, char *a4, size_t a5)
{
  v11 = *MEMORY[0x29EDCA608];
  result = res_9_ns_name_unpack2(a1, a2, a3, v10, 255, 0);
  if (result != -1)
  {
    v8 = result;
    if (res_9_ns_name_ntop(v10, a4, a5) == -1)
    {
      result = -1;
    }

    else
    {
      result = v8;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

int res_9_ns_name_compress(const char *a1, u_char *a2, size_t a3, const u_char **a4, const u_char **a5)
{
  v7 = a3;
  v12 = *MEMORY[0x29EDCA608];
  result = res_9_ns_name_pton2(a1, v11, 255, 0);
  if (result != -1)
  {
    result = res_9_ns_name_pack(v11, a2, v7, a4, a5);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void res_9_ns_name_rollback(const u_char *a1, const u_char **a2, const u_char **a3)
{
  while (a2 < a3 && *a2)
  {
    if (*a2 >= a1)
    {
      *a2 = 0;
      return;
    }

    ++a2;
  }
}

int res_9_ns_name_skip(const u_char **a1, const u_char *a2)
{
  v2 = *a1;
  if (*a1 < a2)
  {
    v3 = 0;
    do
    {
      v4 = v2 + 1;
      v5 = *v2;
      if (!*v2)
      {
        ++v2;
        break;
      }

      v6 = v5 >> 6;
      if (v5 >> 6)
      {
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            goto LABEL_22;
          }

          v2 += 2;
          break;
        }

        if (v4 < a2)
        {
          if ((v5 & 0xC0) == 0x40)
          {
            if (v5 != 65)
            {
              goto LABEL_22;
            }

            if (*v4)
            {
              v3 = ((*v4 + 7) >> 3) + 1;
            }

            else
            {
              v3 = 33;
            }
          }

          else
          {
            if ((v5 & 0xC0) == 0xC0)
            {
              goto LABEL_22;
            }

            v3 = *v2;
          }
        }

        v2 = &v4[v3];
      }

      else
      {
        v2 = &v4[v5];
      }
    }

    while (v2 < a2);
  }

  if (v2 <= a2)
  {
    v7 = 0;
    *a1 = v2;
  }

  else
  {
LABEL_22:
    *__error() = 40;
    return -1;
  }

  return v7;
}

void res_destroyservicelist(void)
{
  v0 = servicelist;
  if (servicelist)
  {
    do
    {
      v1 = *v0;
      free(v0[2]);
      free(v0[3]);
      free(v0);
      v0 = v1;
    }

    while (v1);
  }

  servicelist = 0;
}

void res_buildprotolist(void)
{
  setprotoent(1);
  v0 = getprotoent();
  if (v0)
  {
    v1 = v0;
    do
    {
      v2 = malloc_type_malloc(0x28uLL, 0x10300400AF54A62uLL);
      if (!v2)
      {
        break;
      }

      v3 = v2;
      v4 = strdup(v1->p_name);
      v3[2] = v4;
      if (!v4)
      {
        free(v3);
        break;
      }

      *(v3 + 8) = v1->p_proto;
      v5 = protolist;
      *v3 = protolist;
      v3[1] = 0;
      if (v5)
      {
        *(v5 + 8) = v3;
      }

      protolist = v3;
      v1 = getprotoent();
    }

    while (v1);
  }

  endprotoent();
}

void res_destroyprotolist(void)
{
  v0 = protolist;
  if (protolist)
  {
    do
    {
      v1 = *v0;
      free(v0[2]);
      free(v0);
      v0 = v1;
    }

    while (v1);
  }

  protolist = 0;
}

const char *__cdecl res_protocolname(int num)
{
  if (!protolist)
  {
    res_buildprotolist();
  }

  v2 = &protolist;
  do
  {
    v2 = *v2;
    if (!v2)
    {
      v6 = res_protocolname_number;
      __sprintf_chk(res_protocolname_number, 0, 8uLL, "%d", num);
      return v6;
    }
  }

  while (*(v2 + 8) != num);
  if (v2 != protolist)
  {
    v3 = *v2;
    v4 = v2[1];
    *v4 = *v2;
    if (v3)
    {
      *(v3 + 8) = v4;
    }

    v5 = protolist;
    *(protolist + 8) = v2;
    *v2 = v5;
    protolist = v2;
  }

  v6 = v2[2];
  cgetprotobynumber_prot = v6;
  dword_2A14C03D0 = num;
  return v6;
}

const char *__cdecl res_servicename(u_int16_t port, const char *proto)
{
  v3 = port;
  v4 = servicelist;
  if (servicelist || (res_buildservicelist(), (v4 = servicelist) != 0))
  {
    v5 = __rev16(v3);
    v6 = v4;
    while (1)
    {
      if (*(v6 + 32) == v3)
      {
        v7 = *(v6 + 24);
        if (!strcasecmp(v7, proto))
        {
          break;
        }
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    if (v6 != v4)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      *v10 = *v6;
      if (v9)
      {
        *(v9 + 8) = v10;
      }

      v11 = servicelist;
      *(servicelist + 8) = v6;
      *v6 = v11;
      servicelist = v6;
    }

    v8 = *(v6 + 16);
    cgetservbyport_serv = v8;
    dword_2A14C03E8 = v5;
    qword_2A14C03F0 = v7;
  }

  else
  {
LABEL_7:
    v13 = v3;
    v8 = res_servicename_number;
    __sprintf_chk(res_servicename_number, 0, 8uLL, "%d", v13);
  }

  return v8;
}

void res_buildservicelist()
{
  setservent(1);
  v0 = getservent();
  if (v0)
  {
    v1 = v0;
    do
    {
      v2 = malloc_type_malloc(0x28uLL, 0x10300400AF54A62uLL);
      if (!v2)
      {
        break;
      }

      v3 = v2;
      v4 = strdup(v1->s_name);
      v3[2] = v4;
      v5 = strdup(v1->s_proto);
      v3[3] = v5;
      if (v4)
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (v6)
      {
        if (v4)
        {
          free(v4);
          v5 = v3[3];
        }

        if (v5)
        {
          free(v5);
        }

        free(v3);
        break;
      }

      *(v3 + 8) = bswap32(LOWORD(v1->s_port)) >> 16;
      v7 = servicelist;
      *v3 = servicelist;
      v3[1] = 0;
      if (v7)
      {
        *(v7 + 8) = v3;
      }

      servicelist = v3;
      v1 = getservent();
    }

    while (v1);
  }

  endservent();
}

int res_9_ns_skiprr(const u_char *a1, const u_char *a2, res_9_ns_sect a3, int a4)
{
  v5 = a1;
  v6 = a1;
  if (a4 >= 1)
  {
    v8 = a4 + 1;
    v6 = a1;
    do
    {
      v9 = res_9_dn_skipname(v6, a2);
      if (v9 < 0)
      {
        goto LABEL_9;
      }

      v6 += (v9 + 4);
      if (a3)
      {
        if (v6 + 6 > a2)
        {
          goto LABEL_9;
        }

        v6 += __rev16(*(v6 + 2)) + 6;
      }
    }

    while (--v8 > 1);
  }

  if (v6 > a2)
  {
LABEL_9:
    *__error() = 40;
    return -1;
  }

  return v6 - v5;
}

int res_9_ns_initparse(const u_char *a1, int a2, res_9_ns_msg *a3)
{
  v3 = &a1[a2];
  a3->_msg = a1;
  a3->_eom = v3;
  if (a2 > 1)
  {
    a3->_id = bswap32(*a1) >> 16;
    if (a2 > 3)
    {
      v6 = 0;
      v7 = a1 + 4;
      a3->_flags = bswap32(*(a1 + 1)) >> 16;
      while (1)
      {
        v8 = v7 + 2;
        if (v7 + 2 > v3)
        {
          break;
        }

        a3->_counts[v6++] = bswap32(*v7) >> 16;
        v7 += 2;
        if (v6 == 4)
        {
          v9 = 0;
          sections = a3->_sections;
          do
          {
            v11 = sections + 2 * v9;
            if (*(v11 - 6))
            {
              v12 = res_9_ns_skiprr(v8, v3, v9, *(v11 - 6));
              if ((v12 & 0x80000000) != 0)
              {
                return -1;
              }

              sections[v9] = v8;
              v8 += v12;
            }

            else
            {
              sections[v9] = 0;
            }

            ++v9;
          }

          while (v9 != 4);
          if (v8 == v3)
          {
            result = 0;
            *&a3->_sect = 0xFFFFFFFF00000004;
            a3->_msg_ptr = 0;
            return result;
          }

          break;
        }
      }
    }
  }

  *__error() = 40;
  return -1;
}

int res_9_ns_parserr(res_9_ns_msg *a1, res_9_ns_sect a2, int a3, res_9_ns_rr *a4)
{
  if (a2 >= ns_s_max)
  {
    goto LABEL_20;
  }

  rrnum = a3;
  if (a1->_sect != a2)
  {
    v8 = a1->_sections[a2];
    a1->_sect = a2;
    a1->_rrnum = 0;
    a1->_msg_ptr = v8;
  }

  if (a3 == -1)
  {
    rrnum = a1->_rrnum;
    if (rrnum < 0)
    {
LABEL_20:
      v19 = __error();
      v20 = 19;
      goto LABEL_21;
    }
  }

  else if (a3 < 0)
  {
    goto LABEL_20;
  }

  if (rrnum >= a1->_counts[a2])
  {
    goto LABEL_20;
  }

  v9 = a1->_rrnum;
  if (rrnum < v9)
  {
    v9 = 0;
    v10 = a1->_sections[a2];
    a1->_sect = a2;
    a1->_rrnum = 0;
    a1->_msg_ptr = v10;
  }

  msg_ptr = a1->_msg_ptr;
  if (rrnum > v9)
  {
    v12 = res_9_ns_skiprr(a1->_msg_ptr, a1->_eom, a2, rrnum - v9);
    if (v12 < 0)
    {
      return -1;
    }

    msg_ptr = &a1->_msg_ptr[v12];
    a1->_msg_ptr = msg_ptr;
    a1->_rrnum = rrnum;
  }

  v13 = res_9_dn_expand(a1->_msg, a1->_eom, msg_ptr, a4->name, 1025);
  if (v13 < 0)
  {
    return -1;
  }

  v14 = &a1->_msg_ptr[v13];
  a1->_msg_ptr = v14;
  eom = a1->_eom;
  if (v14 + 4 > eom)
  {
LABEL_19:
    v19 = __error();
    v20 = 40;
LABEL_21:
    *v19 = v20;
    return -1;
  }

  a4->type = bswap32(*v14) >> 16;
  a1->_msg_ptr = v14 + 2;
  a4->rr_class = bswap32(*(v14 + 1)) >> 16;
  a1->_msg_ptr = v14 + 4;
  if (a2)
  {
    v16 = v14 + 10;
    if (v14 + 10 > eom)
    {
      goto LABEL_19;
    }

    a4->ttl = bswap32(*(v14 + 1));
    a1->_msg_ptr = v14 + 8;
    v17 = __rev16(*(v14 + 4));
    a4->rdlength = v17;
    a1->_msg_ptr = v16;
    v18 = &v16[v17];
    if (v18 > eom)
    {
      goto LABEL_19;
    }

    a4->rdata = v16;
    a1->_msg_ptr = v18;
  }

  else
  {
    a4->ttl = 0;
    a4->rdlength = 0;
    a4->rdata = 0;
  }

  v22 = a1->_rrnum;
  a1->_rrnum = v22 + 1;
  if (v22 < a1->_counts[a2])
  {
    return 0;
  }

  a1->_sect = a2 + 1;
  if (a2 == ns_s_ar)
  {
    v23 = 0;
    v24 = -1;
  }

  else
  {
    v24 = 0;
    v23 = a1->_sections[a2 + 1];
  }

  result = 0;
  a1->_rrnum = v24;
  a1->_msg_ptr = v23;
  return result;
}