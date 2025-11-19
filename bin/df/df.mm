void start()
{
  __chkstk_darwin();
  v1 = v0;
  LODWORD(qword_100008000) = compat_mode("bin/df", "unix2003");
  v2 = &qword_100008000;
  if (qword_100008000)
  {
    BYTE4(qword_100008000) = 1;
    v3 = "+abcgHhIiklmnPtT:Y,";
  }

  else
  {
    v3 = "+abcgHhIiklmnPt:T:Y,";
  }

  memset(&v86, 0, sizeof(v86));
  memset(&__src, 0, 512);
  v75 = 0;
  setlocale(0, &unk_1000020B3);
  v77 = 0;
  v78 = 0;
  v76 = 0;
  v79 = 0;
  bzero(&v80, 0x878uLL);
  v80 = 512;
  __strlcpy_chk();
  v4 = xo_parse_args();
  if (v4 < 0)
  {
    exit(1);
  }

  v5 = v4;
  v6 = 0;
  v7 = 1;
  v8 = &qword_100008000;
  v9 = &qword_100008000;
  v10 = &qword_100008000;
  while (1)
  {
    while (1)
    {
      v11 = v6;
      v12 = getopt_long(v5, v1, v3, &off_100004150, 0);
      if (v12 > 72)
      {
        break;
      }

      switch(v12)
      {
        case 44:
          byte_100008040 = 1;
          v6 = v11;
          break;
        case 72:
          *(v8 + 3) = 1;
          v6 = v11;
          break;
        case -1:
          v3 = optind;
          v14 = &v1[optind];
          if (qword_100008030 || !v11)
          {
            goto LABEL_65;
          }

          if (*v14)
          {
            if (stat(*v14, &v86) < 0 && *__error() == 2)
            {
              v24 = *v14++;
              qword_100008030 = sub_100001360(v24, &dword_100008038);
            }

LABEL_65:
            if (*v14)
            {
              goto LABEL_71;
            }
          }

          v25 = getmntinfo(&v75, 2);
          v26 = v25;
          if (qword_100008020 | qword_100008030)
          {
            if (v25 < 1)
            {
              goto LABEL_84;
            }

            v27 = 0;
            v28 = v25;
            v29 = v75;
            f_mntonname = v75->f_mntonname;
            v26 = 0;
            do
            {
              if (!sub_1000014CC(f_mntonname - 16))
              {
                v31 = statfs(f_mntonname, &v29[v26]);
                if (byte_100008028 & 1 | (v31 < 0) && v27 != v26)
                {
                  if (v31 < 0)
                  {
                    xo_warnx();
                  }

                  memcpy(&v29[v26], f_mntonname - 88, sizeof(statfs));
                }

                ++v26;
              }

              ++v27;
              f_mntonname += 2168;
            }

            while (v28 != v27);
          }

          else if ((v9[5] & 1) == 0)
          {
            v26 = getmntinfo(&v75, 1);
          }

LABEL_85:
          xo_open_container();
          xo_open_list();
          v32 = *v14;
          if (!*v14)
          {
            v7 = 0;
LABEL_103:
            v76 = 0;
            v77 = 0;
            v79 = 0;
            v78 = 0;
            if (v26 >= 1)
            {
              v72 = v7;
              v36 = 0;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v73 = 0;
              v40 = 0;
              v41 = 0;
              v42 = qword_100008068;
              do
              {
                v43 = v75;
                v92[0] = 0;
                if (!v42)
                {
                  getbsize(v92, &qword_100008068);
                  v42 = qword_100008068;
                }

                v44 = &v43[v36];
                v45 = strlen(v44->f_mntfromname);
                if (v41 <= v45)
                {
                  v41 = v45;
                }

                v46 = strlen(v44->f_fstypename);
                if (v40 <= v46)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = v40;
                }

                f_blocks = v44->f_blocks;
                if (f_blocks < 0)
                {
                  xo_warnx();
                  f_blocks = v44->f_blocks;
                  f_bsize = v44->f_bsize;
                  v52 = 1;
                  v42 = qword_100008068;
                }

                else
                {
                  f_bsize = v44->f_bsize;
                  if (f_bsize)
                  {
                    v50 = v42 > f_bsize;
                  }

                  else
                  {
                    v50 = 0;
                  }

                  if (v50)
                  {
                    v51 = f_blocks / (v42 / f_bsize);
                  }

                  else
                  {
                    v51 = f_bsize / v42 * f_blocks;
                  }

                  v52 = v51 < 1;
                  if (v51)
                  {
                    if (v51 < 0)
                    {
                      v51 = -v51;
                    }

                    do
                    {
                      ++v52;
                      v50 = v51 > 9;
                      v51 /= 0xAuLL;
                    }

                    while (v50);
                  }
                }

                v53 = v73;
                if (v73 <= v52)
                {
                  v53 = v52;
                }

                LODWORD(v73) = v53;
                v54 = f_blocks - v44->f_bfree;
                if (v54 < 0)
                {
                  xo_warnx();
                  f_bsize = v44->f_bsize;
                  v42 = qword_100008068;
                  v56 = 1;
                }

                else
                {
                  if (v42 > f_bsize && f_bsize)
                  {
                    v55 = v54 / (v42 / f_bsize);
                  }

                  else
                  {
                    v55 = f_bsize / v42 * v54;
                  }

                  v56 = v55 < 1;
                  if (v55)
                  {
                    if (v55 < 0)
                    {
                      v55 = -v55;
                    }

                    do
                    {
                      ++v56;
                      v50 = v55 > 9;
                      v55 /= 0xAuLL;
                    }

                    while (v50);
                  }
                }

                v57 = HIDWORD(v73);
                if (SHIDWORD(v73) <= v56)
                {
                  v57 = v56;
                }

                HIDWORD(v73) = v57;
                f_bavail = v44->f_bavail;
                if (f_bavail < 0)
                {
                  xo_warnx();
                  v42 = qword_100008068;
                  v60 = 1;
                  v40 = v47;
                }

                else
                {
                  if (v42 > f_bsize && f_bsize)
                  {
                    v59 = f_bavail / (v42 / f_bsize);
                  }

                  else
                  {
                    v59 = f_bsize / v42 * f_bavail;
                  }

                  v40 = v47;
                  v60 = v59 < 1;
                  if (v59)
                  {
                    if (v59 < 0)
                    {
                      v59 = -v59;
                    }

                    do
                    {
                      ++v60;
                      v50 = v59 > 9;
                      v59 /= 0xAuLL;
                    }

                    while (v50);
                  }
                }

                if (v39 <= v60)
                {
                  v39 = v60;
                }

                f_files = v44->f_files;
                f_ffree = v44->f_ffree;
                v63 = (f_files - f_ffree) < 1;
                v64 = f_files - f_ffree;
                if (v64)
                {
                  if (v64 < 0)
                  {
                    v64 = -v64;
                  }

                  do
                  {
                    ++v63;
                    v50 = v64 > 9;
                    v64 /= 0xAuLL;
                  }

                  while (v50);
                }

                if (v38 <= v63)
                {
                  v38 = v63;
                }

                v65 = f_ffree < 1;
                if (f_ffree)
                {
                  if (f_ffree < 0)
                  {
                    f_ffree = -f_ffree;
                  }

                  do
                  {
                    ++v65;
                    v50 = f_ffree > 9;
                    f_ffree /= 0xAuLL;
                  }

                  while (v50);
                }

                if (v37 <= v65)
                {
                  v37 = v65;
                }

                if (byte_100008010 == 1)
                {
                  v66 = &v75[v36];
                  v67 = v66->i32[0] / v80;
                  v81 += v66->i64[1] * v67;
                  v82 += v66[1].i64[0] * v67;
                  v83 += v66[1].i64[1] * v67;
                  v84 = vaddq_s64(v84, v66[2]);
                }

                ++v36;
              }

              while (v36 != v26);
              v68 = 0;
              v77 = v73;
              v78 = __PAIR64__(v38, v39);
              v79 = v37;
              v69 = 2168 * v26;
              v76 = __PAIR64__(v40, v41);
              v7 = v72;
              do
              {
                sub_1000015D0(&v75[v68 / 0x878].f_bsize, &v76);
                v68 += 2168;
              }

              while (v69 != v68);
            }

            xo_close_list();
            if (byte_100008010 == 1)
            {
              sub_1000015D0(&v80, &v76);
            }

            xo_close_container();
            if (xo_finish() < 0)
            {
              goto LABEL_170;
            }

LABEL_171:
            exit(v7);
          }

          v7 = 0;
          while (2)
          {
            if (stat(v32, &v86) < 0)
            {
              v33 = sub_100001454(*v14);
              if (v33)
              {
                goto LABEL_93;
              }

              v71 = *v14;
            }

            else
            {
              if ((v86.st_mode & 0xB000 | 0x4000) == 0x6000)
              {
                v33 = sub_100001454(*v14);
                if (!v33)
                {
                  v70 = *v14;
                  xo_warnx();
                  goto LABEL_101;
                }

LABEL_93:
                v34 = v33;
              }

              else
              {
                v34 = *v14;
              }

              if ((statfs(v34, &__src) & 0x80000000) == 0)
              {
                if (!sub_1000014CC(__src.f_fstypename))
                {
                  memcpy(&v75[v26++], &__src, sizeof(statfs));
                  goto LABEL_102;
                }

LABEL_101:
                v7 = 1;
LABEL_102:
                v35 = v14[1];
                ++v14;
                v32 = v35;
                if (!v35)
                {
                  goto LABEL_103;
                }

                continue;
              }
            }

            break;
          }

          xo_warn();
          goto LABEL_101;
        default:
LABEL_69:
          *v10;
          *v10;
          xo_error();
          exit(64);
      }
    }

    v6 = v11;
    switch(v12)
    {
      case 'P':
      case 'b':
        if (*v10)
        {
          *(v2 + 4) = 0;
        }

        v6 = v11;
        if (qword_100008008)
        {
          continue;
        }

        v13 = "512";
LABEL_31:
        setenv("BLOCKSIZE", v13, 1);
        *(v8 + 3) = 0;
        v6 = v11;
        continue;
      case 'Q':
      case 'R':
      case 'S':
      case 'U':
      case 'V':
      case 'W':
      case 'X':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'd':
      case 'e':
      case 'f':
      case 'j':
        goto LABEL_69;
      case 'T':
        goto LABEL_19;
      case 'Y':
        byte_10000803C = 1;
        v6 = v11;
        continue;
      case 'a':
        continue;
      case 'c':
        byte_100008010 = 1;
        v6 = v11;
        continue;
      case 'g':
        v13 = "1g";
        goto LABEL_31;
      case 'h':
        *(v8 + 3) = 2;
        v6 = v11;
        continue;
      case 'i':
        *(v2 + 4) = 1;
        v6 = v11;
        continue;
      case 'k':
        LODWORD(qword_100008008) = qword_100008008 + 1;
        v13 = "1024";
        goto LABEL_31;
      case 'l':
        v6 = v11;
        if (byte_100008014)
        {
          continue;
        }

        v94 = 0;
        *v92 = 0u;
        v93 = 0u;
        v87 = 0;
        *v89 = 3;
        v90 = 1;
        v88 = 4;
        if (sysctl(v89, 3u, &v87, &v88, 0, 0))
        {
          xo_warn();
          v15 = 0;
          goto LABEL_57;
        }

        v15 = malloc_type_malloc(8 * v87, 0x10040436913F5uLL);
        if (!v15)
        {
          xo_warnx();
          goto LABEL_57;
        }

        v88 = 40;
        v90 = 2;
        if (v87 < 1)
        {
          goto LABEL_54;
        }

        v16 = 0;
        LODWORD(v17) = 0;
        do
        {
          v91 = v16;
          if (sysctl(v89, 4u, v92, &v88, 0, 0))
          {
            if (*__error() != 45)
            {
              xo_warn();
            }
          }

          else if ((BYTE13(v93) & 0x10) == 0)
          {
            v18 = strdup(&v92[1]);
            v15[v17] = v18;
            if (!v18)
            {
              xo_warnx();
              free(v15);
              v15 = 0;
              goto LABEL_56;
            }

            LODWORD(v17) = v17 + 1;
          }

          ++v16;
        }

        while (v16 < v87);
        v9 = &qword_100008000;
        v8 = &qword_100008000;
        if (!v17)
        {
          goto LABEL_54;
        }

        v74 = v15;
        v19 = malloc_type_malloc(33 * v17 + 2, 0x100004077774924uLL);
        if (v19)
        {
          v15 = v19;
          *v19 = 28526;
          v20 = v19 + 2;
          if (v17 >= 1)
          {
            v17 = v17;
            v21 = v74;
            do
            {
              strlcpy(v20, *v21, 0x20uLL);
              v22 = &v20[strlen(*v21)];
              *v22 = 44;
              v20 = v22 + 1;
              v23 = *v21++;
              free(v23);
              --v17;
            }

            while (v17);
          }

          *(v20 - 1) = 0;
          free(v74);
LABEL_56:
          v9 = &qword_100008000;
          v10 = &qword_100008000;
          v8 = &qword_100008000;
        }

        else
        {
          if (v17 >= 1)
          {
            xo_warnx();
          }

LABEL_54:
          free(v15);
          v15 = 0;
          v10 = &qword_100008000;
        }

LABEL_57:
        qword_100008020 = sub_100001360(v15, &dword_100008018);
        byte_100008014 = 1;
        v6 = v11;
        v2 = &qword_100008000;
        break;
      case 'm':
        v13 = "1m";
        goto LABEL_31;
      case 'n':
        *(v9 + 40) = 1;
        v6 = v11;
        continue;
      default:
        if (v12 == 73)
        {
          *(v2 + 4) = 0;
          v6 = v11;
        }

        else
        {
          if (v12 != 116)
          {
            goto LABEL_69;
          }

          v6 = 1;
          if (!*v10)
          {
LABEL_19:
            v14 = &qword_100008000;
            if (qword_100008030)
            {
              xo_errx();
LABEL_71:
              v75 = malloc_type_malloc(2168 * (v5 - v3), 0x100004087E0324AuLL);
              if (!v75)
              {
LABEL_170:
                xo_err();
                goto LABEL_171;
              }

LABEL_84:
              v26 = 0;
              goto LABEL_85;
            }

            qword_100008030 = sub_100001360(optarg, &dword_100008038);
            v6 = v11;
            v8 = &qword_100008000;
          }
        }

        continue;
    }
  }
}

void *sub_100001360(char *a1, _DWORD *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  *a2 = 0;
  if (*a1 == 110 && a1[1] == 111)
  {
    v2 = a1 + 2;
    *a2 = 1;
  }

  v3 = 0;
  for (i = v2; *i == 44; ++i)
  {
    ++v3;
LABEL_10:
    ;
  }

  if (*i)
  {
    goto LABEL_10;
  }

  v5 = malloc_type_malloc(8 * v3 + 16, 0x10040436913F5uLL);
  v6 = v5;
  if (v5)
  {
    *v5 = v2;
    v7 = strchr(v2, 44);
    if (v7)
    {
      v8 = 1;
      do
      {
        *v7 = 0;
        v9 = v7 + 1;
        v6[v8++] = v9;
        v7 = strchr(v9, 44);
      }

      while (v7);
      v10 = v8;
    }

    else
    {
      v10 = 1;
    }

    v6[v10] = 0;
  }

  else
  {
    xo_warnx();
  }

  return v6;
}

char *sub_100001454(const char *a1)
{
  v6 = 0;
  v2 = getmntinfo(&v6, 2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  for (i = v6->f_mntfromname; strcmp(i, a1); i += 2168)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  return i - 1024;
}

uint64_t sub_1000014CC(char *__s1)
{
  if (qword_100008030)
  {
    v2 = dword_100008038;
    v3 = *qword_100008030;
    if (*qword_100008030)
    {
      v4 = (qword_100008030 + 8);
      while (strcmp(__s1, v3))
      {
        v5 = *v4++;
        v3 = v5;
        if (!v5)
        {
          goto LABEL_6;
        }
      }

      v6 = v2;
    }

    else
    {
LABEL_6:
      v6 = v2 == 0;
    }

    if (qword_100008020)
    {
      v10 = dword_100008018;
      v11 = *qword_100008020;
      if (*qword_100008020)
      {
        v12 = (qword_100008020 + 8);
        while (strcmp(__s1, v11))
        {
          v13 = *v12++;
          v11 = v13;
          if (!v13)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v10 = v10 == 0;
      }

      if (v10 == v2)
      {
        return v2;
      }

      else
      {
        return v6;
      }
    }
  }

  else if (qword_100008020)
  {
    v6 = dword_100008018;
    v7 = *qword_100008020;
    if (*qword_100008020)
    {
      v8 = (qword_100008020 + 8);
      while (strcmp(__s1, v7))
      {
        v9 = *v8++;
        v7 = v9;
        if (!v9)
        {
          return v6 == 0;
        }
      }
    }

    else
    {
      return v6 == 0;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1000015D0(unsigned int *a1, unsigned int *a2)
{
  if (!dword_100008054++)
  {
    *a2 = vmax_s32(*a2, 0x40000000ALL);
    if (byte_100008040 == 1)
    {
      v5 = *(a2 + 2);
      v6.i64[0] = -1;
      v6.i64[1] = -1;
      v7 = vaddq_s32(v5, v6);
      v8 = vdupq_n_s32(0x55555556u);
      v9 = vuzp2q_s32(vmull_s32(*v7.i8, *v8.i8), vmull_high_s32(v7, v8));
      *(a2 + 2) = vaddq_s32(vsraq_n_u32(v9, v9, 0x1FuLL), v5);
      a2[6] += (a2[6] - 1) / 3;
    }

    if (HIDWORD(qword_100008008))
    {
      qword_100008058 = "   Size";
      a2[2] = 7;
      v10 = 0x700000007;
      v11 = 1;
    }

    else
    {
      qword_100008058 = getbsize(&dword_100008050, &qword_100008048);
      v12 = a2[2];
      if (v12 <= dword_100008050)
      {
        v12 = dword_100008050;
      }

      a2[2] = v12;
      v10 = *(a2 + 3);
      v13 = *a2;
      v11 = HIDWORD(qword_100008008) != 0;
    }

    if (qword_100008000 == 0 || v11)
    {
      v14 = 5;
    }

    else
    {
      v14 = 9;
    }

    v15.i32[0] = 4;
    v15.i32[1] = v14;
    *(a2 + 3) = vmax_s32(v10, v15);
    xo_emit();
    if (byte_10000803C == 1)
    {
      v36 = a2[1];
      xo_emit();
    }

    v43 = a2[4];
    v41 = a2[3];
    v37 = a2[2];
    xo_emit();
    if (BYTE4(qword_100008000) == 1)
    {
      v16 = 7;
      if (HIDWORD(qword_100008008))
      {
        v17 = 0;
      }

      else
      {
        v17 = a2[6];
        if (a2[5] <= 7)
        {
          v16 = 7;
        }

        else
        {
          v16 = a2[5];
        }
      }

      if (v17 <= 5)
      {
        v18 = 5;
      }

      else
      {
        v18 = v17;
      }

      a2[5] = v16;
      a2[6] = v18;
      xo_emit();
    }

    xo_emit();
  }

  xo_open_instance();
  if (!*a1)
  {
    xo_warnx();
    *a1 = 512;
  }

  v19 = (a1 + 278);
  v38 = *a2;
  xo_emit();
  if (byte_10000803C == 1)
  {
    v39 = a2[1];
    xo_emit();
  }

  if (*(a1 + 1) <= *(a1 + 2))
  {
    v20 = 0;
  }

  else
  {
    v47 = 0;
    if (!qword_100008060)
    {
      getbsize(&v47, &qword_100008060);
    }

    v45[2] = 0;
    memset(v46, 0, sizeof(v46));
    v45[0] = 5;
    v45[1] = 2155872256;
    if (getattrlist(a1 + 88, v45, v46, 0xCuLL, 0))
    {
      if (*__error() != 22)
      {
        xo_warn();
      }

      v20 = *(a1 + 1) - *(a1 + 2);
    }

    else
    {
      v21 = *a1;
      if (!v21)
      {
        v21 = qword_100008060;
      }

      v20 = *&v46[4] / v21;
    }
  }

  v22 = *(a1 + 3) + v20;
  if (HIDWORD(qword_100008008))
  {
    v23 = *(a1 + 1);
    v24 = *a1;
    sub_100001D18();
    v25 = *a1;
    sub_100001D18();
    v26 = *(a1 + 3);
    v27 = *a1;
    sub_100001D18();
  }

  else
  {
    v44 = a2[2];
    if ((*(a1 + 1) & 0x8000000000000000) != 0)
    {
      xo_warnx();
    }

    v28 = *a1;
    v29 = a2[3];
    if ((v20 & 0x8000000000000000) != 0)
    {
      xo_warnx();
      v30 = *a1;
    }

    v31 = a2[4];
    if ((*(a1 + 3) & 0x8000000000000000) != 0)
    {
      xo_warnx();
    }

    xo_emit();
    v19 = (a1 + 278);
  }

  xo_emit();
  if (BYTE4(qword_100008000) == 1)
  {
    v33 = *(a1 + 4);
    v32 = *(a1 + 5);
    if (HIDWORD(qword_100008008))
    {
      xo_emit();
      sub_100001C94();
      v34 = *(a1 + 5);
      sub_100001C94();
    }

    else
    {
      v42 = a2[6];
      v40 = a2[5];
      xo_emit();
    }
  }

  xo_emit();
  if (strncmp(v19, "total", 0x400uLL))
  {
    xo_emit();
  }

  xo_emit();
  return xo_close_instance();
}

uint64_t sub_100001C94()
{
  humanize_number();
  xo_attr();
  return xo_emit();
}

uint64_t sub_100001D18()
{
  humanize_number();
  xo_attr();
  return xo_emit();
}