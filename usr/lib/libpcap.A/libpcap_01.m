uint64_t ethertype_to_ppptype(int a1)
{
  if (a1 == 34525)
  {
    v1 = 87;
  }

  else
  {
    v1 = a1;
  }

  if (a1 == 32923)
  {
    v2 = 41;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 24579)
  {
    v3 = 39;
  }

  else
  {
    v3 = a1;
  }

  if (a1 == 2048)
  {
    v4 = 33;
  }

  else
  {
    v4 = v3;
  }

  if (a1 <= 32922)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (a1 == 1536)
  {
    v6 = 37;
  }

  else
  {
    v6 = a1;
  }

  if (a1 == 254)
  {
    v7 = 35;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 224)
  {
    v8 = 43;
  }

  else
  {
    v8 = a1;
  }

  if (a1 == 66)
  {
    v9 = 49;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 253)
  {
    v7 = v9;
  }

  if (a1 <= 2047)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

size_t gen_loopback_linktype(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v4 = *(a1 + 228);
  if (v4 == 109 || v4 == 0)
  {
    v6 = *(a1 + 192);
    if (*(v6 + 64))
    {
      if (*(v6 + 56))
      {
        v2 = a2 << 24;
      }

      else
      {
        v2 = a2;
      }
    }

    v2 = bswap32(v2);
  }

  absoffsetrel = gen_load_absoffsetrel(a1, (a1 + 280), 0, 0);
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = absoffsetrel;
  *(result + 40) = v2;
  return result;
}

size_t gen_ipnet_linktype(int *a1, int a2)
{
  if (a2 == 34525)
  {
    absoffsetrel = gen_load_absoffsetrel(a1, a1 + 82, 0, 16);
    result = newchunk(a1, 288);
    *(result + 16) = 21;
    *(result + 152) = result;
    *(result + 8) = absoffsetrel;
    v5 = 26;
    goto LABEL_5;
  }

  if (a2 == 2048)
  {
    v3 = gen_load_absoffsetrel(a1, a1 + 82, 0, 16);
    result = newchunk(a1, 288);
    *(result + 16) = 21;
    *(result + 152) = result;
    *(result + 8) = v3;
    v5 = 2;
LABEL_5:
    *(result + 40) = v5;
    return result;
  }

  v7 = newchunk(a1, 40);
  *v7 = 0;
  v7[6] = 1;
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = v7;
  return result;
}

size_t gen_uncond(int *a1, int a2)
{
  v4 = newchunk(a1, 40);
  *v4 = 0;
  v4[6] = a2 == 0;
  result = newchunk(a1, 288);
  *(result + 16) = 21;
  *(result + 152) = result;
  *(result + 8) = v4;
  return result;
}

size_t gen_geneve_check(int *a1, uint64_t (*a2)(int *, uint64_t, uint64_t, uint64_t), int a3, unsigned int a4, int a5)
{
  v9 = a2(a1, 6081, 17, 2);
  v10 = gen_ncmp(a1, a3, 8, 16, 192, 16, 0, 0);
  gen_and(v9, v10);
  if (a5)
  {
    if (HIBYTE(a4))
    {
      bpf_error(a1, "Geneve VNI %u greater than maximum %u", a4, 0xFFFFFF);
    }

    v11 = gen_ncmp(a1, a3, 12, 0, -256, 16, 0, a4 << 8);
    gen_and(v10, v11);
    return v11;
  }

  return v10;
}

bpf_u_int32 **__cdecl pcap_nametoaddr(const char *a1)
{
  result = gethostbyname(a1);
  if (result)
  {
    result = result[3];
    v2 = *result;
    if (*result)
    {
      v3 = 1;
      do
      {
        *v2 = bswap32(*v2);
        v2 = result[v3++];
      }

      while (v2);
    }
  }

  return result;
}

addrinfo *__cdecl pcap_nametoaddrinfo(const char *a1)
{
  v2 = 0;
  *&v3.ai_flags = 0;
  memset(&v3.ai_addrlen, 0, 32);
  *&v3.ai_socktype = 0x600000001;
  if (getaddrinfo(a1, 0, &v3, &v2))
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

bpf_u_int32 pcap_nametonetaddr(const char *a1)
{
  v1 = getnetbyname(a1);
  if (v1)
  {
    LODWORD(v1) = v1->n_net;
  }

  return v1;
}

int pcap_nametoport(const char *a1, int *a2, int *a3)
{
  v22 = 0;
  *&v23.ai_flags = 0;
  memset(&v23.ai_addrlen, 0, 32);
  *&v23.ai_socktype = 0x600000001;
  v6 = getaddrinfo(0, a1, &v23, &v22);
  if (v6)
  {
    if ((v6 - 10) < 0xFFFFFFFE)
    {
      return 0;
    }

    v12 = -1;
  }

  else
  {
    if (v22)
    {
      v8 = v22;
      while (1)
      {
        ai_addr = v8->ai_addr;
        if (ai_addr)
        {
          sa_family = ai_addr->sa_family;
          if (sa_family == 2 || sa_family == 30)
          {
            break;
          }
        }

        v8 = v8->ai_next;
        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v12 = bswap32(*ai_addr->sa_data) >> 16;
    }

    else
    {
LABEL_12:
      v12 = -1;
    }

    freeaddrinfo(v22);
  }

  memset(&v23.ai_addrlen, 0, 32);
  *&v23.ai_flags = 0;
  *&v23.ai_socktype = 0x1100000002;
  v13 = getaddrinfo(0, a1, &v23, &v22);
  if (!v13)
  {
    if (v22)
    {
      v16 = v22;
      while (1)
      {
        v17 = v16->ai_addr;
        if (v17)
        {
          v18 = v17->sa_family;
          if (v18 == 2 || v18 == 30)
          {
            break;
          }
        }

        v16 = v16->ai_next;
        if (!v16)
        {
          goto LABEL_28;
        }
      }

      v15 = bswap32(*v17->sa_data) >> 16;
    }

    else
    {
LABEL_28:
      v15 = -1;
    }

    freeaddrinfo(v22);
    if ((v12 & 0x80000000) != 0)
    {
      if (v15 < 0)
      {
        return 0;
      }

      *a2 = v15;
      v21 = 17;
      goto LABEL_37;
    }

LABEL_31:
    *a2 = v12;
    if (v15 != v12 || v15 <= -1)
    {
      v21 = 6;
    }

    else
    {
      v21 = -1;
    }

LABEL_37:
    *a3 = v21;
    return 1;
  }

  v14 = v13;
  result = 0;
  if ((v14 & 0xFFFFFFFE) == 8 && (v12 & 0x80000000) == 0)
  {
    v15 = -1;
    goto LABEL_31;
  }

  return result;
}

int pcap_nametoportrange(const char *a1, int *a2, int *a3, int *a4)
{
  v16 = 0;
  if (sscanf(a1, "%d-%d", &v16 + 4, &v16) != 2)
  {
    v9 = strdup(a1);
    if (!v9)
    {
      return v9;
    }

    v10 = v9;
    v11 = strchr(v9, 45);
    if (v11 && (v12 = v11, *v11 = 0, pcap_nametoport(v10, a2, a4)))
    {
      v13 = *a4;
      v14 = pcap_nametoport(v12 + 1, a3, a4);
      free(v10);
      if (v14)
      {
        if (*a4 == v13)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else
    {
      free(v10);
    }

    LODWORD(v9) = 0;
    return v9;
  }

  v8 = v16;
  *a2 = HIDWORD(v16);
  *a3 = v8;
LABEL_3:
  *a4 = -1;
LABEL_4:
  LODWORD(v9) = 1;
  return v9;
}

int pcap_nametoproto(const char *a1)
{
  v1 = getprotobyname(a1);
  if (v1)
  {
    return v1->p_proto;
  }

  else
  {
    return -1;
  }
}

int pcap_nametoeproto(const char *a1)
{
  v2 = eproto_db;
  if (!eproto_db)
  {
    return -1;
  }

  v3 = &off_2A14BEB50;
  while (strcmp(v2, a1))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return -1;
    }
  }

  return *(v3 - 4);
}

int pcap_nametollc(const char *a1)
{
  v2 = "iso";
  v3 = &off_29EF6C088;
  while (strcmp(v2, a1))
  {
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (!v4)
    {
      return -1;
    }
  }

  return *(v3 - 4);
}

uint64_t __pcap_atoin(uint64_t result, int *a2)
{
  v2 = result;
  v3 = 0;
  LODWORD(result) = 0;
  *a2 = 0;
  while (2)
  {
    for (i = 0; ; i = v5 + 10 * i - 48)
    {
      v5 = *v2++;
      if (!*(v2 - 1) || v5 == 46)
      {
        break;
      }

      if (i > 0x19)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (i > 0xFF)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = i | (v3 << 8);
    *a2 = v3;
    result = (result + 8);
    if (*(v2 - 1))
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t __pcap_atodn(const char *a1, int *a2)
{
  v6 = 0;
  v5 = 0;
  v3 = sscanf(a1, "%d.%d", &v5, &v6);
  result = 0;
  if (v3 == 2)
  {
    *a2 = v6 & 0x3FF | ((v5 & 0x3F) << 10);
    return 32;
  }

  return result;
}

u_char *__cdecl pcap_ether_aton(const char *a1)
{
  result = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  if (result)
  {
    for (i = result; ; ++i)
    {
      v4 = *a1;
      if ((v4 - 45) < 2 || v4 == 58)
      {
        v5 = *++a1;
        v4 = v5;
      }

      else if (!*a1)
      {
        return result;
      }

      v6 = a1 + 1;
      v7 = v4 - 48;
      v8 = v4 - 97;
      v9 = v4 - 55;
      v10 = v4 - 87;
      if (v8 > 5)
      {
        v10 = v9;
      }

      if (v7 < 0xA)
      {
        v10 = v7;
      }

      v11 = *v6;
      v12 = v11 - 48;
      if ((v11 - 48) >= 0xA)
      {
        if ((v11 - 65) >= 6)
        {
          if ((v11 - 97) > 5)
          {
            goto LABEL_18;
          }

          v12 = v11 - 87;
        }

        else
        {
          v12 = v11 - 55;
        }
      }

      v6 = a1 + 2;
      v10 = v12 | (16 * v10);
LABEL_18:
      *i = v10;
      a1 = v6;
    }
  }

  return result;
}

u_char *__cdecl pcap_ether_hostton(const char *a1)
{
  if (ether_hostton(a1, &v3))
  {
    return 0;
  }

  result = malloc_type_malloc(6uLL, 0x100004077774924uLL);
  if (result)
  {
    v2 = *v3.octet;
    *(result + 2) = *&v3.octet[4];
    *result = v2;
  }

  return result;
}

uint64_t bpf_optimize(uint64_t a1, uint64_t a2)
{
  bzero(v70, 0x7E8uLL);
  v71 = a2;
  if (setjmp(v70))
  {
    v4 = 0xFFFFFFFFLL;
    goto LABEL_87;
  }

  ++*(a1 + 8);
  v5 = count_blocks(a1, *a1);
  v73 = malloc_type_calloc(v5, 8uLL, 0x2004093837F09uLL);
  if (!v73)
  {
    goto LABEL_88;
  }

  ++*(a1 + 8);
  LODWORD(count) = 0;
  number_blks_r(v70, a1, *a1);
  if (!count)
  {
    opt_error(v70, "filter has no instructions; please report this as a libpcap issue");
  }

  v74 = 2 * count;
  if ((count & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

  v75 = malloc_type_calloc((2 * count), 8uLL, 0x2004093837F09uLL);
  if (!v75)
  {
    goto LABEL_88;
  }

  if (!malloc_type_calloc(count, 8uLL, 0x2004093837F09uLL))
  {
    goto LABEL_88;
  }

  v76 = (count >> 5) + 1;
  v77 = (v74 >> 5) + 1;
  v6 = count * v76;
  if ((v6 & 0xFFFFFFFF00000000) != 0 || (v7 = v74 * ((v74 >> 5) + 1), (v7 & 0xFFFFFFFF00000000) != 0))
  {
LABEL_89:
    opt_error(v70, "filter is too complex to optimize");
  }

  v8 = malloc_type_malloc(8 * v6 + 4 * v7, 0x100004052888210uLL);
  v79 = v8;
  if (!v8)
  {
    goto LABEL_88;
  }

  v9 = v8;
  v80 = v8;
  if (v5 < 1)
  {
    v81 = v8;
    v82 = v8;
    v33 = 0;
  }

  else
  {
    v10 = v73;
    v11 = 4 * v76;
    v12 = v73;
    v13 = v5;
    v14 = v9;
    do
    {
      v15 = *v12++;
      *(v15 + 168) = v14;
      v16 = &v14[v11];
      v14 += v11;
      --v13;
    }

    while (v13);
    v81 = v16;
    v17 = v5;
    do
    {
      v18 = *v10++;
      *(v18 + 176) = v16;
      v19 = &v16[v11];
      v16 += v11;
      --v17;
    }

    while (v17);
    v82 = v19;
    v20 = 4 * v77;
    v21 = 8 * v77;
    v22 = count;
    for (i = 0; i != v5; ++i)
    {
      v24 = v75;
      v25 = v73[i];
      *(v25 + 80) = v19;
      *(v25 + 120) = &v19[v20];
      *(v25 + 72) = i;
      v24[i] = v25 + 72;
      *(v25 + 112) = v22 + i;
      v75[(v22 + i)] = v25 + 112;
      *(v25 + 96) = v25;
      *(v25 + 136) = v25;
      v19 += v21;
    }

    v26 = 0;
    v27 = 0;
    do
    {
      v28 = v27;
      if (*(v73[v26] + 8))
      {
        v29 = *(v73[v26] + 8);
        v30 = 0;
        do
        {
          if (*v29 != -1)
          {
            ++v30;
          }

          v29 = *(v29 + 32);
          v31 = v30;
        }

        while (v29);
      }

      else
      {
        v31 = 0;
      }

      v32 = v28 + v31 + 1;
      v27 = v32;
      ++v26;
    }

    while (v26 != v5);
    v33 = 3 * v32;
  }

  v83[0] = v33;
  *&v83[1] = malloc_type_calloc(v33, 8uLL, 0x100004000313F17uLL);
  if (!*&v83[1] || (v84 = malloc_type_calloc(v83[0], 0x18uLL, 0x10200403ED2C137uLL)) == 0)
  {
LABEL_88:
    opt_error(v70, "malloc");
  }

  opt_loop(v70, a1, 0);
  opt_loop(v70, a1, 1);
  v34 = count;
  while (1)
  {
    if (v34)
    {
      v35 = v34;
      v36 = v73;
      v37 = v35;
      do
      {
        v38 = *v36++;
        *(v38 + 160) = 0;
        --v37;
      }

      while (v37);
    }

    ++*(a1 + 8);
    make_marks(a1, *a1);
    v39 = count;
    v34 = count;
    v40 = v73;
    if (count != 1)
    {
      break;
    }

    v41 = 1;
LABEL_70:
    v57 = 1;
    v58 = v40;
    v59 = v41;
    do
    {
      v60 = *v58;
      v61 = *(*v58 + 88);
      if (v61)
      {
        v62 = *(v61 + 160);
        if (v62)
        {
          v57 = 0;
          *(v60 + 88) = v62;
        }

        v63 = *(*(v60 + 128) + 160);
        if (v63)
        {
          v57 = 0;
          *(v60 + 128) = v63;
        }
      }

      ++v58;
      --v59;
    }

    while (v59);
    if (v57)
    {
      goto LABEL_78;
    }
  }

  v41 = count;
  v42 = *(a1 + 8);
  v43 = (count - 1);
  do
  {
    v44 = v43 - 1;
    if (v43 < v39)
    {
      v45 = v40[v44];
      if (*(v45 + 48) == v42)
      {
        v46 = v40[v44];
        v47 = (v45 + 8);
        v48 = v43;
        while (1)
        {
          v49 = v40[v48];
          if (*(v49 + 48) == v42 && *(v46 + 16) == *(v49 + 16) && *(v46 + 40) == *(v49 + 40) && *(v46 + 88) == *(v49 + 88) && *(v46 + 128) == *(v49 + 128))
          {
            v50 = (v49 + 8);
            v51 = v47;
            while (1)
            {
              v52 = *v51;
              if (v52)
              {
                v53 = v52;
                do
                {
                  v54 = *v53 == -1;
                  if (*v53 != -1)
                  {
                    break;
                  }

                  v53 = *(v53 + 32);
                }

                while (v53);
                v55 = v54;
              }

              else
              {
                v55 = 1;
                v53 = 0;
              }

              v56 = *v50;
              if (!v56)
              {
                break;
              }

              while (*v56 == -1)
              {
                v56 = *(v56 + 32);
                if (!v56)
                {
                  goto LABEL_60;
                }
              }

              if ((v55 & 1) != 0 || *v53 != *v56 || *(v53 + 24) != *(v56 + 24))
              {
                goto LABEL_61;
              }

              v51 = (v53 + 32);
              v50 = (v56 + 32);
            }

LABEL_60:
            if (v55)
            {
              break;
            }
          }

LABEL_61:
          if (v39 == ++v48)
          {
            goto LABEL_62;
          }
        }

        if (*(v49 + 160))
        {
          v49 = *(v40[v48] + 160);
        }

        *(v46 + 160) = v49;
      }
    }

LABEL_62:
    v43 = v44;
  }

  while (v44);
  if (v34)
  {
    goto LABEL_70;
  }

LABEL_78:
  v64 = *(*a1 + 8);
  *(*a1 + 8) = 0;
  v65 = *a1;
  if ((*(*a1 + 16) & 7) == 5)
  {
    v66 = *a1;
    do
    {
      v65 = v66;
      v66 = *(v66 + 88);
      if (v66 != *(v65 + 128))
      {
        break;
      }

      *a1 = v66;
      v65 = v66;
    }

    while ((*(v66 + 16) & 7) == 5);
  }

  v67 = *(v65 + 8);
  if (v67)
  {
    sappend(v64, v67);
    v65 = *a1;
  }

  *(v65 + 8) = v64;
  v68 = *a1;
  if ((*(*a1 + 16) & 7) == 6)
  {
    v4 = 0;
    *(v68 + 8) = 0;
  }

  else
  {
    v4 = 0;
  }

LABEL_87:
  opt_cleanup(v70);
  return v4;
}

void opt_cleanup(uint64_t a1)
{
  free(*(a1 + 2008));
  free(*(a1 + 2000));
  free(*(a1 + 232));
  free(*(a1 + 256));
  free(*(a1 + 248));
  v2 = *(a1 + 216);

  free(v2);
}

unint64_t opt_loop(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v6 = 0;
  v186 = *MEMORY[0x29EDCA608];
  while (1)
  {
    v168 = v6;
    *(a1 + 200) = 1;
    bzero(*(a1 + 248), 8 * *(a1 + 208));
    ++*(v4 + 8);
    find_levels_r(a1, v4, *v4);
    v7 = *v4;
    v8 = *(a1 + 240);
    if (v8 * *(a1 + 208))
    {
      memset(*(a1 + 264), 255, 4 * v8 * *(a1 + 208));
      v8 = *(a1 + 240);
    }

    if (v8)
    {
      bzero(*(v7 + 168), 4 * v8);
    }

    v9 = *(v7 + 60);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = *(a1 + 248);
      do
      {
        for (i = *(v10 + 8 * v9); i; i = *(i + 20))
        {
          v12 = *(i + 21);
          *(v12 + ((*i >> 3) & 0x1FFFFFFC)) |= 1 << *i;
          v13 = *(i + 11);
          if (v13)
          {
            v14 = *(v13 + 168);
            v15 = *(a1 + 240);
            v16 = v12;
            do
            {
              v17 = *v16++;
              *v14++ &= v17;
              --v15;
            }

            while (v15);
            v18 = *(*(i + 16) + 168);
            v19 = *(a1 + 240);
            do
            {
              v20 = *v12++;
              *v18++ &= v20;
              --v19;
            }

            while (v19);
          }
        }

        v21 = v9-- <= 0;
      }

      while (!v21);
    }

    bzero(*(a1 + 272), 4 * (*(a1 + 240) * *(a1 + 208)));
    v22 = *(v7 + 60);
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(a1 + 248);
      do
      {
        for (j = *(v23 + 8 * v22); j; j = *(j + 20))
        {
          v25 = *(j + 22);
          *(v25 + ((*j >> 3) & 0x1FFFFFFC)) |= 1 << *j;
          v26 = *(j + 11);
          if (v26)
          {
            v27 = *(v26 + 176);
            v28 = *(a1 + 240);
            v29 = v25;
            do
            {
              v30 = *v29++;
              *v27++ |= v30;
              --v28;
            }

            while (v28);
            v31 = *(*(j + 16) + 176);
            v32 = *(a1 + 240);
            do
            {
              v33 = *v25++;
              *v31++ |= v33;
              --v32;
            }

            while (v32);
          }
        }

        v21 = v22-- <= 0;
      }

      while (!v21);
    }

    v34 = *v4;
    v35 = *(*v4 + 60);
    if ((v35 & 0x80000000) == 0)
    {
      v173 = *v4;
      v175 = *(a1 + 248);
      v171 = *(*v4 + 60);
      do
      {
        for (k = *(v175 + 8 * v35); k; k = *(k + 160))
        {
          v37 = *(k + 8);
          if (v37)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            do
            {
              if (*v37 != -1)
              {
                v41 = atomuse(v37);
                if ((v41 & 0x80000000) == 0)
                {
                  if (v41 == 18)
                  {
                    v42 = ~v40 & 0x30000;
                  }

                  else
                  {
                    if (v41 > 0x11)
                    {
                      goto LABEL_416;
                    }

                    v42 = 1 << v41;
                    if (((1 << v41) & v40) != 0)
                    {
                      v42 = 0;
                    }
                  }

                  v39 |= v42;
                }

                v43 = atomdef(v37);
                if (((1 << v43) & v39) != 0)
                {
                  v44 = 0;
                }

                else
                {
                  v44 = 1 << v43;
                }

                v45 = v44 | v38;
                if (v43 >= 0)
                {
                  v40 |= 1 << v43;
                  v38 = v45;
                }
              }

              v37 = *(v37 + 32);
            }

            while (v37);
          }

          else
          {
            v40 = 0;
            v39 = 0;
            v38 = 0;
          }

          if ((*(k + 16) & 7) == 5)
          {
            v46 = atomuse((k + 16));
            if ((v46 & 0x80000000) == 0)
            {
              if (v46 == 18)
              {
                v47 = ~v40 & 0x30000;
              }

              else
              {
                if (v46 > 0x11)
                {
                  goto LABEL_416;
                }

                v47 = 1 << v46;
                if (((1 << v46) & v40) != 0)
                {
                  v47 = 0;
                }
              }

              v39 |= v47;
            }
          }

          *(k + 192) = v40;
          *(k + 196) = v38;
          *(k + 200) = v39;
          *(k + 204) = 0;
        }

        v21 = v35-- <= 0;
      }

      while (!v21);
      v4 = a2;
      v34 = v173;
      if (v171)
      {
        v48 = 1;
        do
        {
          for (m = *(v175 + 8 * v48); m; m = *(m + 160))
          {
            v50 = *(*(m + 128) + 200) | *(*(m + 88) + 200) | *(m + 204);
            *(m + 200) |= v50 & ~*(m + 196);
            *(m + 204) = v50;
          }

          ++v48;
        }

        while (v48 != v171 + 1);
      }
    }

    v51 = *(a1 + 244);
    if (v51 * *(a1 + 224))
    {
      memset(*(a1 + 280), 255, 4 * v51 * *(a1 + 224));
      v51 = *(a1 + 244);
    }

    bzero(*(v34 + 80), 4 * v51);
    bzero(*(v34 + 120), 4 * *(a1 + 244));
    v52 = *(v34 + 60);
    if ((v52 & 0x80000000) == 0)
    {
      do
      {
        for (n = *(*(a1 + 248) + 8 * v52); n; n = *(n + 160))
        {
          propedom(a1, (n + 72));
          propedom(a1, (n + 112));
        }

        v21 = v52-- <= 0;
      }

      while (!v21);
    }

    *(a1 + 1992) = 0;
    *(a1 + 2016) = *(a1 + 2008);
    bzero(*(a1 + 2000), 8 * *(a1 + 1996));
    bzero((a1 + 288), 0x6A8uLL);
    v54 = *(*v4 + 60);
    result = find_inedges(a1, *v4);
    v170 = v54;
    if ((v54 & 0x80000000) == 0)
    {
      v56 = v54;
      do
      {
        v172 = v56;
        v57 = *(*(a1 + 248) + 8 * v56);
        if (!v57)
        {
          goto LABEL_340;
        }

        do
        {
          v58 = *(v57 + 184);
          v59 = (v57 + 212);
          if (v58)
          {
            v60 = *(v58 + 24);
            *v59 = *(v60 + 212);
            v61 = *(v60 + 228);
            v62 = *(v60 + 244);
            v63 = *(v60 + 260);
            *(v57 + 276) = *(v60 + 276);
            *(v57 + 244) = v62;
            *(v57 + 260) = v63;
            *(v57 + 228) = v61;
            while (1)
            {
              v58 = *(v58 + 32);
              if (!v58)
              {
                break;
              }

              v64 = 0;
              v65 = *(v58 + 24) + 212;
              do
              {
                if (*(v59 + v64) != *(v65 + v64))
                {
                  *(v59 + v64) = 0;
                }

                v64 += 4;
              }

              while (v64 != 72);
            }
          }

          else
          {
            *(v57 + 276) = 0;
            *(v57 + 244) = 0u;
            *(v57 + 260) = 0u;
            *v59 = 0u;
            *(v57 + 228) = 0u;
          }

          v176 = *(v57 + 276);
          v174 = *(v57 + 280);
          for (ii = *(v57 + 8); ii; ii = *(ii + 32))
          {
            v67 = *ii;
            if (*ii <= 71)
            {
              if (v67 > 31)
              {
                if (v67 <= 47)
                {
                  if (v67 > 39)
                  {
                    if (v67 != 40)
                    {
                      if (v67 != 44)
                      {
                        continue;
                      }

                      goto LABEL_160;
                    }
                  }

                  else if (v67 != 32)
                  {
                    if (v67 != 36)
                    {
                      continue;
                    }

                    goto LABEL_184;
                  }

LABEL_193:
                  v95 = *(ii + 24);
                  v96 = a1;
                  v97 = *ii;
                  goto LABEL_224;
                }

                if (v67 > 59)
                {
                  if (v67 != 60)
                  {
                    if (v67 != 64)
                    {
                      if (v67 != 68)
                      {
                        continue;
                      }

LABEL_184:
                      if (a3)
                      {
                        v93 = *(ii + 24);
                        if (v93)
                        {
                          goto LABEL_186;
                        }

                        if ((*ii & 0xF0) == 0xA0 || (v67 & 0xB0) == 0 || (*ii & 0xE0) == 0x60)
                        {
                          goto LABEL_228;
                        }

                        v98 = ((*ii & 0xF0u) - 32) >> 4;
                        if (v98 <= 2)
                        {
                          if (v98)
                          {
                            if (v98 == 1)
                            {
                              opt_error(a1, "division by zero");
                            }

                            goto LABEL_186;
                          }

LABEL_230:
                          *ii = 0;
                          v90 = a1;
                          v91 = 0;
                          LODWORD(v85) = 0;
LABEL_190:
                          LODWORD(v82) = 0;
LABEL_205:
                          v77 = F(v90, v91, v85, v82);
LABEL_206:
                          *(v57 + 276) = v77;
                          continue;
                        }

                        if (v98 == 3)
                        {
                          goto LABEL_230;
                        }

                        if (v98 == 7)
                        {
                          opt_error(a1, "modulus by zero");
                        }

LABEL_186:
                        v94 = *(v57 + 276);
                        if (*(*(a1 + 2000) + 8 * v94))
                        {
                          LODWORD(v82) = F(a1, 0, v93, 0);
                          v88 = a1;
                          v89 = ii;
                          LODWORD(v85) = v94;
                          goto LABEL_188;
                        }
                      }

                      else
                      {
                        LODWORD(v94) = *(v57 + 276);
                        v93 = *(ii + 24);
                      }

                      LODWORD(v82) = F(a1, 0, v93, 0);
                      v90 = a1;
                      v91 = v67;
                      LODWORD(v85) = v94;
                      goto LABEL_205;
                    }

LABEL_138:
                    v73 = *(v57 + 280);
                    if (a3)
                    {
                      v74 = *(a1 + 2000);
                      if (*(v74 + 8 * v73))
                      {
                        v75 = *ii & 0x18 | 0x20;
                        *ii = v75;
                        v76 = *(ii + 24) + *(v74 + 8 * v73 + 4);
                        *(ii + 24) = v76;
                        v77 = F(a1, v75, v76, 0);
                        *(a1 + 200) = 0x100000000;
                        goto LABEL_226;
                      }
                    }

                    v95 = *(ii + 24);
                    v96 = a1;
                    v97 = *ii;
LABEL_225:
                    v77 = F(v96, v97, v95, v73);
                    if (!a3)
                    {
                      goto LABEL_206;
                    }

LABEL_226:
                    if (!v77)
                    {
                      goto LABEL_206;
                    }

LABEL_227:
                    if (*(v57 + 276) == v77)
                    {
                      goto LABEL_228;
                    }

                    goto LABEL_206;
                  }

LABEL_160:
                  v82 = *(v57 + 280);
                  if (a3)
                  {
                    v83 = *ii & 0xF0;
                    v84 = *(a1 + 2000);
                    v85 = *(v57 + 276);
                    v86 = (v84 + 8 * v85);
                    v87 = *v86;
                    if (*(v84 + 8 * v82))
                    {
                      if (!v87)
                      {
                        v99 = v83 | 4;
                        *ii = v83 | 4;
                        v100 = *(v84 + 8 * *(v57 + 280) + 4);
                        *(ii + 24) = v100;
                        if ((v67 & 0xE0) == 0x60 && v100 >= 0x20)
                        {
                          opt_error(a1, "shift by more than 31 bits");
                        }

                        *(a1 + 200) = 0x100000000;
                        v101 = *(v57 + 276);
                        LODWORD(v82) = F(a1, 0, v100, 0);
                        v90 = a1;
                        v91 = v99;
                        LODWORD(v85) = v101;
                        goto LABEL_205;
                      }

                      v88 = a1;
                      v89 = ii;
LABEL_188:
                      fold_op(v88, v89, v85, v82);
                      LODWORD(v85) = *(ii + 24);
LABEL_189:
                      v90 = a1;
                      v91 = 0;
                      goto LABEL_190;
                    }

                    if (v87 && !v86[1])
                    {
                      if ((v67 & 0xB0) == 0 || v83 == 160)
                      {
                        *ii = 135;
                        v68 = *(v57 + 280);
                        if (!v68)
                        {
                          goto LABEL_235;
                        }

LABEL_234:
                        if (*(v57 + 276) != v68)
                        {
                          goto LABEL_235;
                        }

LABEL_228:
                        *ii = -1;
                        continue;
                      }

                      if ((*ii & 0xE0) == 0x60 || v83 == 80 || (*ii & 0xE0) == 0x20 || v83 == 144)
                      {
                        *ii = 0;
                        *(ii + 24) = 0;
                        v77 = F(a1, 0, 0, 0);
                        if (!v77)
                        {
                          goto LABEL_206;
                        }

                        goto LABEL_227;
                      }

                      if (v83 == 128)
                      {
                        goto LABEL_228;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v85) = *(v57 + 276);
                  }

                  v90 = a1;
                  v91 = *ii;
                  goto LABEL_205;
                }

                if (v67 == 48)
                {
                  goto LABEL_193;
                }

                if (v67 == 52)
                {
                  goto LABEL_184;
                }
              }

              else if (v67 <= 3)
              {
                if (v67 > 1)
                {
                  if (v67 == 2)
                  {
                    v78 = *(ii + 24);
                    v79 = *(v57 + 276);
                    if (!a3)
                    {
LABEL_213:
                      *(v59 + v78) = v79;
                      continue;
                    }
                  }

                  else
                  {
                    v78 = *(ii + 24);
                    v79 = *(v57 + 280);
                    if (!a3)
                    {
                      goto LABEL_213;
                    }
                  }

                  if (v79 && *(v59 + v78) == v79)
                  {
                    goto LABEL_228;
                  }

                  goto LABEL_213;
                }

                if (!v67)
                {
                  v95 = *(ii + 24);
                  v96 = a1;
                  v97 = 0;
                  goto LABEL_224;
                }

                if (v67 == 1)
                {
                  v69 = *(ii + 24);
                  v70 = a1;
                  v71 = 0;
LABEL_127:
                  v72 = F(v70, v71, v69, 0);
                  if (a3 && v72 && *(v57 + 280) == v72)
                  {
                    goto LABEL_228;
                  }

                  *(v57 + 280) = v72;
                }
              }

              else
              {
                if (v67 > 11)
                {
                  if (v67 != 12)
                  {
                    if (v67 == 20)
                    {
                      goto LABEL_184;
                    }

                    if (v67 != 28)
                    {
                      continue;
                    }
                  }

                  goto LABEL_160;
                }

                if (v67 == 4)
                {
                  goto LABEL_184;
                }

                if (v67 == 7)
                {
                  v92 = *(v57 + 276);
                  if (a3 && v92 && *(v57 + 280) == v92)
                  {
                    goto LABEL_228;
                  }

                  *(v57 + 280) = v92;
                }
              }
            }

            else if (v67 <= 115)
            {
              if (v67 <= 91)
              {
                if (v67 > 79)
                {
                  if (v67 != 80)
                  {
                    if (v67 != 84)
                    {
                      continue;
                    }

                    goto LABEL_184;
                  }

                  goto LABEL_138;
                }

                if (v67 == 72)
                {
                  goto LABEL_138;
                }

                if (v67 != 76)
                {
                  continue;
                }

                goto LABEL_160;
              }

              if (v67 <= 96)
              {
                if (v67 == 92)
                {
                  goto LABEL_160;
                }

                if (v67 == 96)
                {
                  v80 = *(v59 + *(ii + 24));
                  if (a3)
                  {
                    v81 = *(a1 + 2000);
                    if (*(v81 + 8 * v80))
                    {
                      *ii = 0;
                      *(ii + 24) = *(v81 + 8 * v80 + 4);
                      *(a1 + 200) = 0x100000000;
                    }

                    if (v80 && *(v57 + 276) == v80)
                    {
                      goto LABEL_228;
                    }
                  }

                  *(v57 + 276) = v80;
                }
              }

              else
              {
                if (v67 != 97)
                {
                  if (v67 == 100)
                  {
                    goto LABEL_184;
                  }

                  if (v67 != 108)
                  {
                    continue;
                  }

                  goto LABEL_160;
                }

                v103 = *(v59 + *(ii + 24));
                if (a3)
                {
                  v104 = *(a1 + 2000);
                  if (*(v104 + 8 * v103))
                  {
                    *ii = 1;
                    *(ii + 24) = *(v104 + 8 * v103 + 4);
                    *(a1 + 200) = 0x100000000;
                  }

                  if (v103 && *(v57 + 280) == v103)
                  {
                    goto LABEL_228;
                  }
                }

                *(v57 + 280) = v103;
              }
            }

            else if (v67 > 147)
            {
              if (v67 <= 163)
              {
                if (v67 == 148)
                {
                  goto LABEL_184;
                }

                if (v67 == 156)
                {
                  goto LABEL_160;
                }
              }

              else
              {
                switch(v67)
                {
                  case 164:
                    goto LABEL_184;
                  case 172:
                    goto LABEL_160;
                  case 177:
                    v69 = *(ii + 24);
                    v70 = a1;
                    v71 = 177;
                    goto LABEL_127;
                }
              }
            }

            else
            {
              if (v67 <= 127)
              {
                if (v67 == 116)
                {
                  goto LABEL_184;
                }

                if (v67 != 124)
                {
                  continue;
                }

                goto LABEL_160;
              }

              switch(v67)
              {
                case 128:
                  v96 = a1;
                  v97 = 128;
                  v95 = 0;
LABEL_224:
                  LODWORD(v73) = 0;
                  goto LABEL_225;
                case 132:
                  if (a3)
                  {
                    v102 = *(a1 + 2000);
                    v85 = *(v57 + 276);
                    if (*(v102 + 8 * v85))
                    {
                      *ii = 0;
                      LODWORD(v85) = -*(v102 + 8 * *(v57 + 276) + 4);
                      *(ii + 24) = v85;
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    LODWORD(v85) = *(v57 + 276);
                  }

                  v90 = a1;
                  v91 = 132;
                  goto LABEL_190;
                case 135:
                  v68 = *(v57 + 280);
                  if (!a3 || !v68)
                  {
LABEL_235:
                    *(v57 + 276) = v68;
                    continue;
                  }

                  goto LABEL_234;
              }
            }
          }

          if (a3 && (!*(v57 + 204) && v176 && *(v57 + 276) == v176 && v174 && *(v57 + 280) == v174 || (*(v57 + 16) & 7) == 6))
          {
            if (*(v57 + 8))
            {
              *(v57 + 8) = 0;
              *(a1 + 200) = 0x100000000;
            }

            goto LABEL_333;
          }

          v105 = *(v57 + 8);
          if (!v105)
          {
            v184 = 0u;
            v185 = 0u;
            v182 = 0u;
            v183 = 0u;
            v180 = 0u;
            v181 = 0u;
            v178 = 0u;
            v179 = 0u;
            v177 = 0u;
            goto LABEL_328;
          }

          v106 = *(v57 + 8);
          while (1)
          {
            v107 = v106;
            while (1)
            {
              v108 = *v107;
              v109 = *(v107 + 4);
              if (*v107 != -1)
              {
                break;
              }

              v107 = *(v107 + 4);
              if (!v109)
              {
                goto LABEL_287;
              }
            }

            if (!v109)
            {
              break;
            }

            while (1)
            {
              v110 = *v109;
              if (*v109 != -1)
              {
                break;
              }

              v109 = *(v109 + 4);
              if (!v109)
              {
                goto LABEL_287;
              }
            }

            if (v108)
            {
              v106 = v109;
              if (v108 == 2)
              {
                v106 = v109;
                if (v110 == 97)
                {
                  v106 = v109;
                  if (v107[6] == v109[6])
                  {
                    *(a1 + 200) = 0x100000000;
                    *v109 = 7;
                    v106 = v109;
                    if (!*v107)
                    {
                      goto LABEL_266;
                    }
                  }
                }
              }
            }

            else if (v110 == 7)
            {
LABEL_266:
              *v107 = 1;
              *v109 = 135;
LABEL_267:
              *(a1 + 200) = 0x100000000;
LABEL_268:
              v106 = v109;
            }

            else
            {
              v106 = v109;
              if ((*(v57 + 206) & 2) == 0)
              {
                v111 = v109;
                if (v110 == 177)
                {
                  v111 = *(v109 + 4);
                  v106 = v109;
                  if (v111)
                  {
                    while (1)
                    {
                      v110 = *v111;
                      if (*v111 != -1)
                      {
                        goto LABEL_275;
                      }

                      v111 = *(v111 + 4);
                      if (!v111)
                      {
                        goto LABEL_268;
                      }
                    }
                  }
                }

                else
                {
LABEL_275:
                  v106 = v109;
                  if (v110 == 12)
                  {
                    v112 = *(v111 + 4);
                    v106 = v109;
                    if (v112)
                    {
                      while (*v112 == -1)
                      {
                        v112 = *(v112 + 32);
                        if (!v112)
                        {
                          goto LABEL_268;
                        }
                      }

                      v106 = v109;
                      if (*v112 == 7)
                      {
                        v113 = *(v112 + 32);
                        v106 = v109;
                        if (v113)
                        {
                          while (*v113 == -1)
                          {
                            v113 = *(v113 + 32);
                            if (!v113)
                            {
                              goto LABEL_268;
                            }
                          }

                          v106 = v109;
                          if ((*v113 & 0xE7) == 0x40)
                          {
                            *(v113 + 24) += v107[6];
                            *v107 = -1;
                            *v111 = -1;
                            *v112 = -1;
                            goto LABEL_267;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_287:
          v114 = *(v57 + 16);
          if (v114 != 21)
          {
            if (v114 == 69)
            {
              v115 = *(v57 + 40);
              goto LABEL_290;
            }

            goto LABEL_307;
          }

          if (*(v57 + 206))
          {
            goto LABEL_306;
          }

          v116 = *v106;
          if (*v106 == 20)
          {
            *v106 = -1;
            *(v57 + 40) += v106[6];
LABEL_305:
            *(a1 + 200) = 0x100000000;
            goto LABEL_306;
          }

          if (v116 != 84)
          {
            if (v116 == 28)
            {
              v117 = (*(a1 + 2000) + 8 * *(v57 + 280));
              if (*v117)
              {
                *(v57 + 40) += v117[1];
                *v106 = -1;
                goto LABEL_305;
              }

              if (!*(v57 + 40))
              {
                *v106 = -1;
                v114 = 29;
                *(v57 + 16) = 29;
                *(a1 + 200) = 0x100000000;
                goto LABEL_307;
              }
            }

LABEL_306:
            v114 = 21;
            goto LABEL_307;
          }

          if (*(v57 + 40))
          {
            goto LABEL_306;
          }

          v115 = v106[6];
          *(v57 + 40) = v115;
          *(v57 + 16) = 69;
          *v106 = -1;
          *(a1 + 200) = 0x100000000;
          v118 = *(v57 + 88);
          *(v57 + 88) = *(v57 + 128);
          *(v57 + 128) = v118;
LABEL_290:
          if (v115 == -1)
          {
            *(v57 + 128) = *(v57 + 88);
          }

          else if (!v115)
          {
            *(v57 + 88) = *(v57 + 128);
          }

          v114 = 69;
LABEL_307:
          v119 = *(a1 + 2000);
          if ((v114 & 8) != 0)
          {
            v120 = (v119 + 8 * *(v57 + 280));
            if (*v120)
            {
              v121 = v120[1];
              v114 &= ~8u;
              *(v57 + 16) = v114;
              *(v57 + 40) = v121;
            }
          }

          if ((v114 & 8) == 0)
          {
            v122 = (v119 + 8 * *(v57 + 276));
            if (*v122)
            {
              v123 = v122[1];
              v124 = ((v114 & 0xF0u) - 16) >> 4;
              if (v124 > 1)
              {
                if (v124 == 2)
                {
                  v125 = v123 >= *(v57 + 40);
                }

                else
                {
                  if (v124 != 3)
                  {
                    goto LABEL_416;
                  }

                  v125 = *(v57 + 40) & v123;
                }
              }

              else
              {
                if (v124)
                {
                  if (v124 == 1)
                  {
                    v125 = v123 > *(v57 + 40);
                    goto LABEL_321;
                  }

LABEL_416:
                  abort();
                }

                v125 = v123 == *(v57 + 40);
              }

LABEL_321:
              v126 = *(v57 + 128);
              v127 = *(v57 + 88);
              if (v126 != v127)
              {
                *(a1 + 200) = 0x100000000;
              }

              if (v125)
              {
                *(v57 + 128) = v127;
              }

              else
              {
                *(v57 + 88) = v126;
              }
            }
          }

          v184 = 0u;
          v185 = 0u;
          v182 = 0u;
          v183 = 0u;
          v180 = 0u;
          v181 = 0u;
          v178 = 0u;
          v179 = 0u;
          v177 = 0u;
          do
          {
            deadstmt(a1, v105, &v177);
            v105 = *(v105 + 32);
          }

          while (v105);
LABEL_328:
          deadstmt(a1, (v57 + 16), &v177);
          for (jj = 0; jj != 18; ++jj)
          {
            v129 = *(&v177 + jj);
            if (v129 && ((*(v57 + 204) >> jj) & 1) == 0)
            {
              *v129 = -1;
              *(a1 + 200) = 0x100000000;
            }
          }

LABEL_333:
          v130 = *(v57 + 16);
          if ((v130 & 8) != 0)
          {
            result = *(v57 + 280);
          }

          else
          {
            result = F(a1, 0, *(v57 + 40), 0);
            v130 = *(v57 + 16);
          }

          *(v57 + 208) = result;
          *(v57 + 76) = v130;
          *(v57 + 116) = -v130;
          v57 = *(v57 + 160);
        }

        while (v57);
LABEL_340:
        v56 = v172 - 1;
      }

      while (v172 > 0);
    }

    v4 = a2;
    if (!a3)
    {
      if (v170 <= 0)
      {
        result = find_inedges(a1, *a2);
      }

      else
      {
        v131 = (v170 + 1);
        v132 = 1;
        do
        {
          for (kk = *(*(a1 + 248) + 8 * v132); kk; kk = kk[20])
          {
            opt_j(a1, kk + 9);
            opt_j(a1, kk + 14);
          }

          ++v132;
        }

        while (v132 != v131);
        result = find_inedges(a1, *a2);
        v134 = 1;
        do
        {
          for (mm = *(*(a1 + 248) + 8 * v134); mm; mm = mm[20])
          {
            v136 = mm[23];
            if (v136)
            {
              v137 = *(v136 + 24);
              v138 = *(v137 + 276);
              v139 = mm[23];
              while (1)
              {
                v139 = *(v139 + 32);
                if (!v139)
                {
                  break;
                }

                if (v138 != *(*(v139 + 24) + 276))
                {
                  goto LABEL_365;
                }
              }

              v140 = (v137 + 88);
              v141 = *(v137 + 88);
              v142 = v141 == mm;
              if (v141 == mm)
              {
                v143 = 88;
              }

              else
              {
                v143 = 128;
              }

              if (!v142)
              {
                v140 = (v137 + 128);
              }

              v144 = *(v137 + v143);
              if (v144)
              {
                v145 = 0;
                v146 = mm[11];
                do
                {
                  if (*(v144 + 88) != v146)
                  {
                    break;
                  }

                  result = *mm;
                  v147 = result >> 5;
                  v148 = 1 << result;
                  if (((1 << result) & *(*(v144 + 168) + 4 * (result >> 5))) == 0)
                  {
                    break;
                  }

                  result = *(v144 + 276);
                  if (result != v138)
                  {
                    while (1)
                    {
                      result = v144;
                      v144 = *(v144 + 128);
                      if (!v144 || *(v144 + 88) != v146 || (*(*(v144 + 168) + 4 * v147) & v148) == 0)
                      {
                        goto LABEL_365;
                      }

                      if (*(v144 + 276) == v138)
                      {
                        *(result + 128) = *(v144 + 128);
                        *(v144 + 128) = *v140;
                        if (v145)
                        {
                          *v140 = v144;
                        }

                        else
                        {
                          for (nn = mm[23]; nn; nn = *(nn + 32))
                          {
                            v162 = *(nn + 24);
                            if (*(v162 + 88) == mm)
                            {
                              v163 = 88;
                            }

                            else
                            {
                              v163 = 128;
                            }

                            *(v162 + v163) = v144;
                          }
                        }

                        *(a1 + 200) = 0;
                        v136 = mm[23];
                        goto LABEL_365;
                      }
                    }
                  }

                  v140 = (v144 + 128);
                  v145 = 1;
                  v144 = *(v144 + 128);
                }

                while (v144);
              }

LABEL_365:
              if (v136)
              {
                v149 = *(v136 + 24);
                v150 = *(v149 + 276);
                while (1)
                {
                  v136 = *(v136 + 32);
                  if (!v136)
                  {
                    break;
                  }

                  if (v150 != *(*(v136 + 24) + 276))
                  {
                    goto LABEL_388;
                  }
                }

                v151 = *(v149 + 88);
                if (v151 == mm)
                {
                  v152 = 88;
                }

                else
                {
                  v152 = 128;
                }

                if (v151 == mm)
                {
                  v153 = (v149 + 88);
                }

                else
                {
                  v153 = (v149 + 128);
                }

                v154 = *(v149 + v152);
                if (v154)
                {
                  v155 = 0;
                  v156 = mm[16];
                  do
                  {
                    if (*(v154 + 128) != v156)
                    {
                      break;
                    }

                    v157 = *mm;
                    v158 = v157 >> 5;
                    result = *(*(v154 + 168) + 4 * (v157 >> 5));
                    v159 = 1 << v157;
                    if (((1 << v157) & result) == 0)
                    {
                      break;
                    }

                    if (*(v154 + 276) != v150)
                    {
                      while (1)
                      {
                        v160 = v154;
                        v154 = *(v154 + 88);
                        if (!v154)
                        {
                          goto LABEL_388;
                        }

                        result = *(v154 + 128);
                        if (result != v156)
                        {
                          goto LABEL_388;
                        }

                        result = *(*(v154 + 168) + 4 * v158);
                        if ((result & v159) == 0)
                        {
                          goto LABEL_388;
                        }

                        result = *(v154 + 276);
                        if (result == v150)
                        {
                          *(v160 + 88) = *(v154 + 88);
                          *(v154 + 88) = *v153;
                          if (v155)
                          {
                            *v153 = v154;
                          }

                          else
                          {
                            for (i1 = mm[23]; i1; i1 = *(i1 + 32))
                            {
                              v165 = *(i1 + 24);
                              if (*(v165 + 88) == mm)
                              {
                                v166 = 88;
                              }

                              else
                              {
                                v166 = 128;
                              }

                              *(v165 + v166) = v154;
                            }
                          }

                          *(a1 + 200) = 0;
                          goto LABEL_388;
                        }
                      }
                    }

                    v153 = (v154 + 88);
                    v155 = 1;
                    v154 = *(v154 + 88);
                  }

                  while (v154);
                }
              }
            }

LABEL_388:
            ;
          }

          ++v134;
        }

        while (v134 != v131);
      }
    }

    v6 = *(a1 + 200);
    if (v6)
    {
      goto LABEL_415;
    }

    if (!*(a1 + 204))
    {
      v6 = v168 + 1;
      if (v168 >= 99)
      {
        break;
      }
    }
  }

  *(a1 + 200) = 1;
LABEL_415:
  v167 = *MEMORY[0x29EDCA608];
  return result;
}

char *icode_to_fcode(uint64_t a1, uint64_t a2, unsigned int *a3, void *a4)
{
  v20[1] = 0;
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v20[0] = a4;
  if (setjmp(v19))
  {
    free(v20[1]);
    return 0;
  }

  else
  {
    ++*(a1 + 8);
    v9 = count_stmts(a1, a2);
    *a3 = v9;
    v10 = 8 * v9;
    v11 = malloc_type_malloc(v10, 0x100004000313F17uLL);
    if (v11)
    {
      v12 = v9;
      v13 = v10;
      v14 = v11;
      while (1)
      {
        v15 = v12;
        bzero(v14, v13);
        v20[1] = v14;
        v21 = &v14[8 * v15];
        ++*(a1 + 8);
        if (convert_code_r(v19, a1, a2))
        {
          return v14;
        }

        free(v14);
        ++*(a1 + 8);
        v16 = count_stmts(a1, a2);
        *a3 = v16;
        v17 = v16;
        v18 = 8 * v16;
        v14 = malloc_type_malloc(v18, 0x100004000313F17uLL);
        v13 = v18;
        v12 = v17;
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      result = 0;
      strcpy(a4, "malloc");
    }
  }

  return result;
}

uint64_t count_stmts(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (*(a2 + 48) == v4)
  {
    return 0;
  }

  *(a2 + 48) = v4;
  v6 = count_stmts(a1, *(a2 + 88));
  v7 = count_stmts(a1, *(a2 + 128));
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = 0;
    do
    {
      if (*v8 != -1)
      {
        ++v9;
      }

      v8 = *(v8 + 32);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return (v6 + v7 + *(a2 + 52) + *(a2 + 56) + v9 + 1);
}

uint64_t convert_code_r(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a3 || (v5 = *(a2 + 8), *(a3 + 48) == v5))
  {
LABEL_3:
    result = 1;
    goto LABEL_4;
  }

  *(a3 + 48) = v5;
  result = convert_code_r(a1, a2, *(a3 + 128));
  if (result)
  {
    result = convert_code_r(a1, a2, *(a3 + 88));
    if (result)
    {
      v9 = *(a3 + 8);
      if (v9)
      {
        v10 = 0;
        do
        {
          if (*v9 != -1)
          {
            ++v10;
          }

          v9 = *(v9 + 32);
        }

        while (v9);
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 200);
      v12 = *(a1 + 208) - 8 * (v10 + *(a3 + 52) + *(a3 + 56) + 1);
      *(a1 + 208) = v12;
      *(a3 + 64) = (v12 - v11) >> 3;
      if (v10)
      {
        v13 = malloc_type_calloc(v10, 8uLL, 0x2004093837F09uLL);
        if (!v13)
        {
          conv_error(a1, "not enough core", v37, v38, *__format, *&__format[8], *&__format[16], *&__format[32], *&__format[40]);
        }

        v14 = *(a3 + 8);
        if (!v14)
        {
LABEL_26:
          if (v14)
          {
            v17 = 0;
            do
            {
              v18 = *v14;
              if (*v14 != -1)
              {
                *v12 = v18;
                *(v12 + 4) = v14[6];
                if (v18 != 5 && (v18 & 7) == 5 && v17 != v10 - 2)
                {
                  strcpy(__format, "%s for block-local relative jump: off=%d");
                  v21 = *(v14 + 1);
                  if (v21 && (v22 = *(v14 + 2)) != 0)
                  {
                    if (!v10)
                    {
                      goto LABEL_70;
                    }

                    v23 = 0;
                    v24 = 0;
                    v25 = 0;
                    v26 = ~v17;
                    do
                    {
                      v27 = *&v13[v23];
                      if (v27 == v21)
                      {
                        if (v25)
                        {
                          goto LABEL_66;
                        }

                        if (v26 >= 0x100)
                        {
LABEL_67:
                          free(v13);
                          v36 = "out-of-range jump";
                          goto LABEL_68;
                        }

                        *(v12 + 2) = v26;
                        v25 = 1;
                      }

                      if (v27 == v22)
                      {
                        if (v24)
                        {
LABEL_66:
                          free(v13);
                          v36 = "multiple matches";
                          goto LABEL_68;
                        }

                        if (v26 >= 0x100)
                        {
                          goto LABEL_67;
                        }

                        *(v12 + 3) = v26;
                        v24 = 1;
                      }

                      v23 += 8;
                      ++v26;
                    }

                    while (8 * v10 != v23);
                    if (v25 && v24)
                    {
                      goto LABEL_51;
                    }

LABEL_70:
                    free(v13);
                    v36 = "no destination found";
                  }

                  else
                  {
                    free(v13);
                    v36 = "no jmp destination";
                  }

LABEL_68:
                  conv_error(a1, __format, v36, v17, *__format, *&__format[8], *&__format[16], *&__format[32], *&__format[40]);
                }

LABEL_51:
                v12 += 8;
                v17 = (v17 + 1);
              }

              v14 = *(v14 + 4);
            }

            while (v14);
          }

          if (v13)
          {
            free(v13);
          }

          *v12 = *(a3 + 16);
          *(v12 + 4) = *(a3 + 40);
          v28 = *(a3 + 88);
          if (v28)
          {
            v29 = *(v28 + 64);
            v30 = ~(*(a3 + 64) + v10);
            v31 = v29 + v30;
            if ((v29 + v30) < 0x100)
            {
              v32 = 0;
              *(v12 + 2) = v31;
            }

            else
            {
              if (!*(a3 + 52))
              {
                result = 0;
                *(a3 + 52) = 1;
                goto LABEL_4;
              }

              *(v12 + 2) = 0;
              *(v12 + 8) = 5;
              *(v12 + 12) = v31 - 1;
              v32 = 1;
            }

            v33 = *(*(a3 + 128) + 64) + v30;
            if (v33 < 0x100)
            {
              *(v12 + 3) = v33;
            }

            else
            {
              if (!*(a3 + 56))
              {
                result = 0;
                *(a3 + 56) = 1;
                goto LABEL_4;
              }

              *(v12 + 3) = v32;
              v34 = v32 + 1;
              v35 = v12 + 8 * v34;
              *v35 = 5;
              *(v35 + 4) = v33 - v34;
            }
          }

          goto LABEL_3;
        }

        v15 = 0;
        do
        {
          *&v13[8 * v15++] = v14;
          v14 = *(v14 + 4);
        }

        while (v15 < v10 && v14 != 0);
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a3 + 8);
      goto LABEL_26;
    }
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t install_bpf_program(uint64_t a1, const void **a2)
{
  if (pcap_validate_filter(a2[1], *a2))
  {
    pcap_freecode((a1 + 192));
    v4 = *a2;
    v5 = 8 * v4;
    *(a1 + 192) = v4;
    v6 = malloc_type_malloc(8 * v4, 0x100004000313F17uLL);
    *(a1 + 200) = v6;
    if (v6)
    {
      memcpy(v6, a2[1], v5);
      return 0;
    }

    v8 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x101uLL, *v8, "malloc");
  }

  else
  {
    strcpy((a1 + 208), "BPF program is not valid");
  }

  return 0xFFFFFFFFLL;
}

uint64_t find_levels_r(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (*(a3 + 48) != v3)
  {
    v5 = result;
    *(a3 + 48) = v3;
    *(a3 + 160) = 0;
    if (*(a3 + 88))
    {
      find_levels_r(result);
      v6 = *(a3 + 128);
      result = find_levels_r(v5);
      v7 = *(*(a3 + 88) + 60);
      if (v7 <= *(*(a3 + 128) + 60))
      {
        v7 = *(*(a3 + 128) + 60);
      }

      v8 = v7 + 1;
    }

    else
    {
      v8 = 0;
    }

    *(a3 + 60) = v8;
    v9 = *(v5 + 248);
    *(a3 + 160) = *(v9 + 8 * v8);
    *(v9 + 8 * v8) = a3;
  }

  return result;
}

uint64_t atomuse(_DWORD *a1)
{
  if (*a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *a1 & 7;
  if (v1 > 3)
  {
    if (v1 - 4 < 2)
    {
      if ((*a1 & 8) != 0)
      {
        return 18;
      }

      else
      {
        return 16;
      }
    }

    if (v1 == 7)
    {
      if ((*a1 & 0xF8) == 0x80)
      {
        return 17;
      }

      else
      {
        return 16;
      }
    }

    v5 = *a1 & 0x18;
    if (v5 == 8)
    {
      v6 = 17;
    }

    else
    {
      v6 = -1;
    }

    v2 = v5 == 16;
LABEL_21:
    if (v2)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  v2 = v1 == 2;
  if (v1 >= 2)
  {
    v5 = 16;
    v6 = 17;
    goto LABEL_21;
  }

  v3 = *a1 & 0xE0;
  if (v3 != 64)
  {
    if (v3 == 96)
    {
      return a1[6];
    }

    return 0xFFFFFFFFLL;
  }

  return 17;
}

uint64_t atomdef(int *a1)
{
  v1 = *a1;
  if (*a1 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1 & 7;
  result = 16;
  if (v3 <= 1)
  {
    if ((v1 & 7) == 0)
    {
      return result;
    }

    if (v3 == 1)
    {
      return 17;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 - 2 < 2)
  {
    return a1[6];
  }

  if (v3 != 4)
  {
    if (v3 == 7)
    {
      if ((v1 & 0xF8) != 0)
      {
        return 16;
      }

      else
      {
        return 17;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t propedom(uint64_t result, unsigned int *a2)
{
  v2 = *a2;
  v3 = 1 << v2;
  v4 = (v2 >> 3) & 0x1FFFFFFC;
  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  *(v5 + v4) |= v3;
  if (v6)
  {
    v7 = *(v6 + 80);
    v8 = *(result + 244);
    v9 = v5;
    do
    {
      v10 = *v9++;
      *v7++ &= v10;
      --v8;
    }

    while (v8);
    v11 = *(v6 + 120);
    v12 = *(result + 244);
    do
    {
      v13 = *v5++;
      *v11++ &= v13;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t find_inedges(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208);
  if (v2)
  {
    v3 = *(result + 216);
    do
    {
      v4 = *v3++;
      *(v4 + 184) = 0;
      --v2;
    }

    while (v2);
  }

  v5 = *(a2 + 60);
  if (v5 >= 1)
  {
    v6 = *(result + 248);
    do
    {
      for (i = *(v6 + 8 * v5); i; i = i[20])
      {
        v8 = i[11];
        i[13] = *(v8 + 184);
        *(v8 + 184) = i + 9;
        v9 = i[16];
        i[18] = *(v9 + 184);
        *(v9 + 184) = i + 14;
      }
    }

    while (v5-- > 1);
  }

  return result;
}

uint64_t opt_j(uint64_t result, void *a2)
{
  v2 = a2[2];
  v3 = *(v2 + 88);
  if (v3)
  {
    if (v3 == *(v2 + 128))
    {
      v4 = *(v3 + 204);
      if (!v4)
      {
LABEL_9:
        *(result + 200) = 0x100000000;
        a2[2] = v3;
LABEL_10:
        v6 = *(result + 244);
        if (!v6)
        {
          return result;
        }

        v7 = a2[1];
LABEL_12:
        v8 = 0;
        v9 = v3;
        while (1)
        {
          v10 = *(v7 + 4 * v8);
          if (v10)
          {
            break;
          }

LABEL_35:
          if (++v8 == v6)
          {
            return result;
          }
        }

        v11 = v9[4];
        while (1)
        {
          v12 = __clz(__rbit32(v10));
          v13 = *(*(result + 232) + 8 * (v12 | (32 * v8)));
          v14 = *(v13 + 4);
          if (v14 >= 0)
          {
            v15 = *(v13 + 4);
          }

          else
          {
            v15 = -v14;
          }

          if (v11 != v15)
          {
            goto LABEL_34;
          }

          v16 = *(v13 + 24);
          if (v9[69] != *(v16 + 276))
          {
            goto LABEL_34;
          }

          if (v9[52] == *(v16 + 208))
          {
            if (v14 < 0)
            {
              v17 = 32;
            }

            else
            {
              v17 = 22;
            }
          }

          else
          {
            if (v14 < 0 || v11 != 21)
            {
              goto LABEL_34;
            }

            v17 = 32;
          }

          v3 = *&v9[v17];
          if (v3)
          {
            v18 = *(v3 + 204);
            if (!v18)
            {
LABEL_37:
              *(result + 200) = 0;
              a2[2] = v3;
              if (!*(v3 + 88))
              {
                return result;
              }

              goto LABEL_12;
            }

            v19 = 0;
            while (((v18 >> v19) & 1) == 0 || *(a2[3] + 212 + 4 * v19) == *(v3 + 212 + 4 * v19))
            {
              if (++v19 == 18)
              {
                goto LABEL_37;
              }
            }
          }

LABEL_34:
          v10 &= ~(1 << v12);
          if (!v10)
          {
            goto LABEL_35;
          }
        }
      }

      v5 = 0;
      while (((v4 >> v5) & 1) == 0 || *(a2[3] + 212 + 4 * v5) == *(v3 + 212 + 4 * v5))
      {
        if (++v5 == 18)
        {
          goto LABEL_9;
        }
      }
    }

    v3 = a2[2];
    goto LABEL_10;
  }

  return result;
}

uint64_t F(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v4 = ((16 * a3) ^ (a4 << 8) ^ a2) % 0xD5;
  v5 = *(a1 + 288 + 8 * v4);
  if (v5)
  {
    v6 = *(a1 + 288 + 8 * v4);
    while (*v6 != a2 || *(v6 + 4) != a3 || *(v6 + 8) != a4)
    {
      v6 = *(v6 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    return *(v6 + 12);
  }

  else
  {
LABEL_7:
    v7 = (*(a1 + 1992) + 1);
    *(a1 + 1992) = v7;
    if ((a2 & 0xE6) == 0)
    {
      v8 = (*(a1 + 2000) + 8 * v7);
      *v8 = 1;
      v8[1] = a3;
    }

    v9 = *(a1 + 2016);
    *(a1 + 2016) = v9 + 24;
    *v9 = a2;
    *(v9 + 4) = a3;
    *(v9 + 8) = a4;
    *(v9 + 12) = v7;
    *(v9 + 16) = v5;
    *(a1 + 288 + 8 * v4) = v9;
  }

  return v7;
}

void opt_error(char **a1, char *__format, ...)
{
  va_start(va, __format);
  if (a1[24])
  {
    vsnprintf(a1[24], 0x100uLL, __format, va);
  }

  longjmp(a1, 1);
}

double fold_op(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v4 = *(a1 + 2000);
  v5 = *(v4 + 8 * a3 + 4);
  v6 = *(v4 + 8 * a4 + 4);
  v7 = *a2 >> 4;
  if (v7 <= 4)
  {
    if ((*a2 >> 4) <= 1u)
    {
      if (*a2 >> 4)
      {
        v8 = v5 - v6;
      }

      else
      {
        v8 = v6 + v5;
      }
    }

    else
    {
      if (v7 == 2)
      {
        v8 = v6 * v5;
        goto LABEL_27;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v8 = v6 | v5;
          goto LABEL_27;
        }

LABEL_30:
        abort();
      }

      if (!v6)
      {
        opt_error(a1, "division by zero");
      }

      v8 = v5 / v6;
    }

    goto LABEL_27;
  }

  if ((*a2 >> 4) <= 6u)
  {
    if (v7 == 5)
    {
      v8 = v6 & v5;
      goto LABEL_27;
    }

    if (v7 != 6)
    {
      goto LABEL_30;
    }

    v8 = v5 << v6;
    goto LABEL_25;
  }

  if (v7 == 7)
  {
    v8 = v5 >> v6;
LABEL_25:
    if (v6 >= 0x20)
    {
      v8 = 0;
    }

    goto LABEL_27;
  }

  if (v7 != 9)
  {
    if (v7 == 10)
    {
      v8 = v6 ^ v5;
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!v6)
  {
    opt_error(a1, "modulus by zero");
  }

  v8 = v5 % v6;
LABEL_27:
  a2[6] = v8;
  *a2 = 0;
  *&result = 0x100000000;
  *(a1 + 200) = 0x100000000;
  return result;
}

uint64_t deadstmt(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = atomuse(a2);
  if ((v6 & 0x80000000) == 0)
  {
    if (v6 == 18)
    {
      *(a3 + 128) = 0;
      *(a3 + 136) = 0;
    }

    else
    {
      *(a3 + 8 * v6) = 0;
    }
  }

  result = atomdef(a2);
  if ((result & 0x80000000) == 0)
  {
    v8 = *(a3 + 8 * result);
    if (v8)
    {
      *(a1 + 200) = 0x100000000;
      *v8 = -1;
    }

    *(a3 + 8 * result) = a2;
  }

  return result;
}

uint64_t make_marks(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(a2 + 48) != v2)
  {
    v3 = a2;
    v4 = result;
    do
    {
      *(v3 + 48) = v2;
      if ((*(v3 + 16) & 7) == 6)
      {
        break;
      }

      result = make_marks(v4, *(v3 + 88));
      v3 = *(v3 + 128);
      v2 = *(v4 + 8);
    }

    while (*(v3 + 48) != v2);
  }

  return result;
}

uint64_t count_blocks(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  for (i = 0; v2; i = (v6 + i + 1))
  {
    v5 = *(a1 + 8);
    if (*(v2 + 48) == v5)
    {
      break;
    }

    *(v2 + 48) = v5;
    v6 = count_blocks(a1, *(v2 + 88));
    v2 = *(v2 + 128);
  }

  return i;
}

uint64_t number_blks_r(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(a2 + 8);
      if (*(v3 + 48) == v6)
      {
        break;
      }

      *(v3 + 48) = v6;
      v7 = *(v5 + 208);
      *(v5 + 208) = v7 + 1;
      if (v7 == -1)
      {
        opt_error(v5, "filter is too complex to optimize");
      }

      *v3 = v7;
      *(*(v5 + 216) + 8 * v7) = v3;
      result = number_blks_r(v5, a2, *(v3 + 88));
      v3 = *(v3 + 128);
    }

    while (v3);
  }

  return result;
}

void conv_error(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  vsnprintf(*(a1 + 192), 0x100uLL, __format, va);
  longjmp(a1, 1);
}

void pcap_create_interface(uint64_t a1, char *a2)
{
  pcap_create_common(a2, 0x4A8uLL, 1176);
  if (v2)
  {
    *(v2 + 792) = pcap_activate_bpf;
    *(v2 + 800) = pcap_can_set_rfmon_bpf;
  }
}

uint64_t pcap_activate_bpf(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v51 = 0uLL;
  v49 = 1;
  _802_11 = 0;
  v48 = 0;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v3 = bpf_open(a1 + 208);
  v4 = v3;
  if ((v3 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  *(a1 + 16) = v3;
  if (ioctl(v3, 0x40044271uLL, &v51 + 12) < 0)
  {
    v6 = *__error();
    v7 = "BIOCVERSION";
    goto LABEL_12;
  }

  if (WORD6(v51) != 1 || !HIWORD(v51))
  {
    strcpy((a1 + 208), "kernel bpf filter out of date");
    goto LABEL_18;
  }

  if ((*(a1 + 96) - 524289) <= 0xFFF7FFFF)
  {
    *(a1 + 96) = 0x80000;
  }

  if (ioctl(*(a1 + 16), 0xC004427FuLL, a1 + 924) < 0)
  {
    v9 = __error();
    pcap_strerror(*v9);
    snprintf((a1 + 208), 0x100uLL, "BIOCSWANTPKTAP: %s");
    goto LABEL_18;
  }

  v48 = *(a1 + 928);
  if (v48 && ioctl(*(a1 + 16), 0x80044281uLL, &v48))
  {
    v5 = __error();
    pcap_strerror(*v5);
    snprintf((a1 + 208), 0x100uLL, "BIOCSTRUNCATE: %s");
LABEL_18:
    v4 = 0xFFFFFFFFLL;
LABEL_19:
    pcap_cleanup_bpf(a1);
    v10 = v4;
    goto LABEL_20;
  }

  v48 = *(a1 + 932);
  if (v48 && ioctl(*(a1 + 16), 0x80044284uLL, &v48))
  {
    v8 = __error();
    pcap_strerror(*v8);
    snprintf((a1 + 208), 0x100uLL, "BIOCSPKTHDRV2: %s");
    goto LABEL_18;
  }

  v48 = *(a1 + 940);
  if (v48 == 1)
  {
    if (ioctl(*(a1 + 16), 0x80044287uLL, &v48))
    {
      v13 = __error();
      pcap_strerror(*v13);
      snprintf((a1 + 208), 0x100uLL, "BIOCSHDRCOMP: %s");
      goto LABEL_18;
    }

    if (ioctl(*(a1 + 16), 0x40044289uLL, &v48))
    {
      v14 = __error();
      pcap_strerror(*v14);
      snprintf((a1 + 208), 0x100uLL, "BIOCGHDRCOMPON: %s");
      goto LABEL_18;
    }

    if (v48 == 1)
    {
      *(a1 + 944) = 1;
    }
  }

  if (*(a1 + 936))
  {
    v48 = 1;
    if (ioctl(*(a1 + 16), 0x80044280uLL, &v48))
    {
      v15 = __error();
      pcap_strerror(*v15);
      snprintf((a1 + 208), 0x100uLL, "BIOCSHEADDROP: %s");
      goto LABEL_18;
    }
  }

  v16 = strdup(*(a1 + 120));
  *v2 = v16;
  if (!v16)
  {
    v6 = *__error();
    v7 = "strdup";
    goto LABEL_12;
  }

  memset(&v52, 0, 512);
  v17 = uname(&v52);
  if (!v17 && *(a1 + 140))
  {
    if (v52.release[0] <= 55 && v52.release[1] == 46)
    {
      goto LABEL_36;
    }

    if (v52.release[0] == 56 && v52.release[1] == 46)
    {
      v18 = *(a1 + 120);
      if (*v18 != 101 || *(v18 + 1) != 110)
      {
        v25 = socket(2, 2, 0);
        if (v25 == -1)
        {
          v31 = __error();
          pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v31, "socket() failed");
          v4 = 4294967291;
        }

        else
        {
          v26 = v25;
          v27 = device_exists(v25, *(a1 + 120), (a1 + 208));
          if (v27)
          {
            v4 = v27;
          }

          else
          {
            v4 = 4294967290;
          }

          close(v26);
        }

        goto LABEL_19;
      }

      v19 = strlen(v18);
      v20 = malloc_type_malloc(v19 + 2, 0x2B90FFAuLL);
      if (!v20)
      {
        goto LABEL_113;
      }

      v21 = v20;
      *v20 = 7629943;
      strcat(v20, (*(a1 + 120) + 2));
      free(*(a1 + 120));
      *(a1 + 120) = v21;
    }
  }

  if (*(a1 + 132))
  {
    if ((ioctl(v4, 0xC0044266uLL, a1 + 132) & 0x80000000) == 0)
    {
      v22 = bpf_bind(v4, *(a1 + 120), (a1 + 208));
      v10 = v22;
      if (v22)
      {
        if (v22 != 1)
        {
LABEL_48:
          v4 = check_setif_failure(a1, v10);
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_64;
    }

    v6 = *__error();
    v42 = *(a1 + 120);
    v7 = "BIOCSBLEN: %s";
LABEL_12:
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, v6, v7, v42);
    goto LABEL_18;
  }

  if (ioctl(v4, 0x40044266uLL, &v48) < 0 || !(v48 >> 19))
  {
    v48 = 0x80000;
  }

  while (1)
  {
    ioctl(v4, 0xC0044266uLL, &v48);
    v10 = bpf_bind(v4, *(a1 + 120), (a1 + 208));
    if (!v10)
    {
      break;
    }

    if (*__error() != 1)
    {
      goto LABEL_48;
    }

    v23 = v48;
    v24 = v48 >> 1;
    v48 >>= 1;
    if (v23 <= 1)
    {
      goto LABEL_63;
    }
  }

  v24 = v48;
LABEL_63:
  if (!v24)
  {
    v30 = *(a1 + 120);
    snprintf((a1 + 208), 0x100uLL, "BIOCSBLEN: %s: No buffer size worked");
    goto LABEL_18;
  }

LABEL_64:
  if (ioctl(v4, 0x4004426AuLL, &v48) < 0)
  {
    v6 = *__error();
    v7 = "BIOCGDLT";
    goto LABEL_12;
  }

  if (get_dlt_list(v4, v48, &v51, (a1 + 208)) == -1)
  {
    goto LABEL_18;
  }

  *(a1 + 468) = v51;
  *(a1 + 472) = *(&v51 + 4);
  if (v17 || v52.release[0] - 48 > 9 || v52.release[0] != 57 && v52.release[1] - 48 > 9)
  {
    goto LABEL_82;
  }

  _802_11 = find_802_11(&v51);
  v28 = *(a1 + 140);
  if (_802_11 == -1)
  {
    if (v28)
    {
LABEL_36:
      v4 = 4294967290;
      goto LABEL_19;
    }

    goto LABEL_82;
  }

  if (!v28)
  {
    if (!*(a1 + 116))
    {
      remove_802_11(a1);
    }

    goto LABEL_82;
  }

  remove_non_802_11(a1);
  v29 = _802_11;
  if (_802_11 != v48)
  {
    if (ioctl(*(a1 + 16), 0x80044278uLL, &_802_11) != -1)
    {
      v29 = _802_11;
      v48 = _802_11;
      goto LABEL_83;
    }

LABEL_82:
    v29 = v48;
  }

LABEL_83:
  if (v29 == 1 && !*(a1 + 468))
  {
    v32 = malloc_type_malloc(8uLL, 0x100004052888210uLL);
    *(a1 + 472) = v32;
    if (v32)
    {
      *v32 = 0x8F00000001;
      *(a1 + 468) = 2;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 100) = v48;
  if (ioctl(v4, 0x80044275uLL, &v49) == -1)
  {
    v6 = *__error();
    v7 = "BIOCSHDRCMPLT";
    goto LABEL_12;
  }

  v33 = *(a1 + 128);
  if (v33)
  {
    v44[0] = v33 / 1000;
    v44[1] = (1000 * v33 % 1000000);
    if (ioctl(*(a1 + 16), 0x8010426DuLL, v44) < 0)
    {
      v37 = *__error();
      pcap_fmt_errmsg_for_errno((a1 + 208), v37, 256, "BIOCSRTIMEOUT", v43);
      goto LABEL_18;
    }
  }

  if (*(a1 + 144))
  {
    v48 = 1;
    if (ioctl(*(a1 + 16), 0x80044270uLL, &v48) < 0)
    {
      v6 = *__error();
      v7 = "BIOCIMMEDIATE";
      goto LABEL_12;
    }
  }

  if (*(a1 + 136) && ioctl(*(a1 + 16), 0x20004269uLL, 0) < 0)
  {
    v34 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v34, "BIOCPROMISC");
    v10 = 2;
  }

  if (ioctl(v4, 0x40044266uLL, &v48) < 0)
  {
    v6 = *__error();
    v7 = "BIOCGBLEN";
    goto LABEL_12;
  }

  v35 = v48;
  *(a1 + 20) = v48;
  if (*(a1 + 940))
  {
    v36 = 256;
    *(a1 + 948) = 256;
  }

  else
  {
    v36 = *(a1 + 948);
  }

  v38 = malloc_type_malloc(v36 + v35, 0x353D7FFDuLL);
  *(a1 + 24) = v38;
  if (!v38 || (v39 = *(a1 + 948), v39) && (v40 = malloc_type_malloc(v39, 0x4160A038uLL), (*(a1 + 952) = v40) == 0))
  {
LABEL_113:
    v6 = *__error();
    v7 = "malloc";
    goto LABEL_12;
  }

  v41 = *(a1 + 96);
  LODWORD(v47) = 6;
  HIDWORD(v47) = v41;
  LODWORD(v45) = 1;
  v46 = &v47;
  if (ioctl(*(a1 + 16), 0x80104267uLL, &v45) < 0)
  {
    v6 = *__error();
    v7 = "BIOCSETF";
    goto LABEL_12;
  }

  *(a1 + 176) = *(a1 + 16);
  if (!v17 && *v52.sysname == 0x44534265657246 && (*v52.release == 758328884 || *v52.release == 758394420))
  {
    *(a1 + 176) = -1;
  }

  *a1 = pcap_read_bpf;
  *(a1 + 808) = pcap_inject_bpf;
  *(a1 + 824) = pcap_setfilter_bpf;
  *(a1 + 832) = pcap_setdirection_bpf;
  *(a1 + 840) = pcap_set_datalink_bpf;
  *(a1 + 848) = pcap_getnonblock_bpf;
  *(a1 + 856) = pcap_setnonblock_bpf;
  *(a1 + 864) = pcap_stats_bpf;
  *(a1 + 888) = pcap_cleanup_bpf;
LABEL_20:
  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t pcap_can_set_rfmon_bpf(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  memset(&v17, 0, 512);
  memset(v16, 0, 12);
  if (uname(&v17) == -1 || v17.release[0] <= 55 && v17.release[1] == 46)
  {
    goto LABEL_4;
  }

  if (v17.release[0] != 56 || v17.release[1] != 46)
  {
    v8 = bpf_open(a1 + 208);
    v2 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    v9 = bpf_bind(v8, *(a1 + 120), (a1 + 208));
    if (v9)
    {
      v10 = v9;
      close(v2);
      if (v10 == 1)
      {
        v2 = 0xFFFFFFFFLL;
      }

      else
      {
        v2 = v10;
      }

      goto LABEL_5;
    }

    if (get_dlt_list(v2, 0, v16, (a1 + 208)) != -1)
    {
      v11 = find_802_11(v16) != -1;
      free(*(v16 + 4));
      close(v2);
      v2 = v11;
      goto LABEL_5;
    }

    v13 = v2;
    goto LABEL_25;
  }

  __s = 0;
  v5 = *(a1 + 120);
  if (*v5 != 101 || v5[1] != 110)
  {
    goto LABEL_4;
  }

  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v12 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v12, "socket");
LABEL_26:
    v2 = 0xFFFFFFFFLL;
    goto LABEL_5;
  }

  v7 = v6;
  if (asprintf(&__s, "wlt%s", (*(a1 + 120) + 2)) == -1)
  {
    v14 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v14, "malloc");
    v13 = v7;
LABEL_25:
    close(v13);
    goto LABEL_26;
  }

  v2 = device_exists(v7, __s, (a1 + 208));
  free(__s);
  close(v7);
  if (v2 == -5)
  {
LABEL_4:
    v2 = 0;
    goto LABEL_5;
  }

  if (!v2)
  {
    v2 = 1;
  }

LABEL_5:
  v3 = *MEMORY[0x29EDCA608];
  return v2;
}

uint64_t pcap_platform_finddevs(uint64_t *a1, char *a2)
{
  if (pcap_findalldevs_interfaces(a1, a2, check_bpf_bindable, get_if_flags) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t check_bpf_bindable(char *__s)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*__s == 119 && __s[1] == 108 && __s[2] == 116)
  {
    v2 = strlen(__s);
    v3 = malloc_type_malloc(v2, 0x25ACD8E9uLL);
    if (!v3)
    {
      v9 = __error();
      pcap_fmt_errmsg_for_errno(v10, 0x100uLL, *v9, "malloc");
      result = 0xFFFFFFFFLL;
      goto LABEL_9;
    }

    v4 = v3;
    strcpy(v3, "en");
    v5 = strcat(v3, __s + 3);
    v6 = bpf_open_and_bind(v5, v10);
    free(v4);
    if (v6 < 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    close(v6);
    result = 1;
    goto LABEL_9;
  }

  v6 = bpf_open_and_bind(__s, v10);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  result = v6 != -5;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t get_if_flags(const char *a1, int *a2, char *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = socket(2, 2, 0);
  if (v6 == -1)
  {
    v11 = __error();
    pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v11, "Can't create socket to get media information for %s", a1);
    goto LABEL_9;
  }

  v7 = v6;
  memset(v14, 0, 44);
  __strlcpy_chk();
  if (ioctl(v7, 0xC02C6938uLL, v14) < 0)
  {
    if (*__error() == 102 || *__error() == 22 || *__error() == 25 || *__error() == 19 || *__error() == 1 || *__error() == 82)
    {
      *a2 |= 0x30u;
      close(v7);
LABEL_17:
      result = 0;
      goto LABEL_20;
    }

    v13 = __error();
    pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v13, "SIOCGIFMEDIA on %s failed", a1);
    close(v7);
LABEL_9:
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  close(v7);
  if ((BYTE12(v14[1]) & 0xE0) == 0x80)
  {
    *a2 |= 8u;
  }

  if ((BYTE8(v14[1]) & 1) == 0)
  {
    goto LABEL_17;
  }

  v8 = *a2;
  result = 0;
  if ((BYTE8(v14[1]) & 2) != 0)
  {
    v10 = v8 | 0x10;
  }

  else
  {
    v10 = v8 | 0x20;
  }

  *a2 = v10;
LABEL_20:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t device_exists(int a1, char *__s, char *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (strlen(__s) <= 0xF)
  {
    memset(v9, 0, sizeof(v9));
    __strlcpy_chk();
    if ((ioctl(a1, 0xC0206911uLL, v9) & 0x80000000) == 0)
    {
      result = 0;
      goto LABEL_5;
    }

    if (*__error() != 6 && *__error() != 22)
    {
      v8 = __error();
      pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v8, "Can't get interface flags on %s", __s);
      result = 0xFFFFFFFFLL;
      goto LABEL_5;
    }
  }

  result = 4294967291;
LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t bpf_open(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((bpf_open_no_cloning_bpf & 1) == 0)
  {
    v2 = open("/dev/bpf", 2);
    if (v2 == -1 && (*__error() != 13 && *__error() != 2 || (v2 = open("/dev/bpf", 0), v2 == -1)))
    {
      if (*__error() != 2)
      {
        if (*__error() == 13)
        {
          v3 = 4294967288;
        }

        else
        {
          v3 = 0xFFFFFFFFLL;
        }

        v13 = __error();
        pcap_fmt_errmsg_for_errno(a1, 0x100uLL, *v13, "(cannot open device) %s", "/dev/bpf");
        goto LABEL_28;
      }

      bpf_open_no_cloning_bpf = 1;
    }

    else
    {
      v3 = v2;
      if (bpf_open_no_cloning_bpf != 1)
      {
        if ((v2 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v6 = 0;
        goto LABEL_15;
      }
    }
  }

  v4 = 0;
  do
  {
    snprintf(__str, 0x13uLL, "/dev/bpf%d", v4);
    v5 = open(__str, 2);
    v3 = v5;
    if (v5 == -1)
    {
      if (*__error() == 13)
      {
        v3 = open(__str, 0);
        if ((v3 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    ++v4;
  }

  while (*__error() == 16);
  v6 = v4 == 1;
LABEL_15:
  v7 = *__error();
  if (v7 == 13)
  {
    v9 = __error();
    pcap_fmt_errmsg_for_errno(a1, 0x100uLL, *v9, "(cannot open BPF device) %s", __str);
    v3 = 4294967288;
  }

  else
  {
    if (v7 == 2)
    {
      if (v6)
      {
        v8 = "(there are no BPF devices)";
      }

      else
      {
        v8 = "(all BPF devices are busy)";
      }

      *a1 = *v8;
      *(a1 + 11) = *(v8 + 11);
    }

    else
    {
      v10 = __error();
      pcap_fmt_errmsg_for_errno(a1, 0x100uLL, *v10, "(cannot open BPF device) %s", __str);
    }

    v3 = 0xFFFFFFFFLL;
  }

LABEL_28:
  v11 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t bpf_bind(int a1, char *__s, char *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (strlen(__s) > 0xF)
  {
    goto LABEL_2;
  }

  memset(v11, 0, sizeof(v11));
  __strlcpy_chk();
  if ((ioctl(a1, 0x8020426CuLL, v11) & 0x80000000) == 0)
  {
    result = 0;
    goto LABEL_5;
  }

  v8 = *__error();
  switch(v8)
  {
    case 6:
LABEL_2:
      result = 4294967291;
      break;
    case 55:
      v9 = __error();
      pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v9, "The requested buffer size for %s is too large", __s);
      result = 1;
      break;
    case 50:
      result = 4294967287;
      break;
    default:
      v10 = __error();
      pcap_fmt_errmsg_for_errno(a3, 0x100uLL, *v10, "Binding interface %s to BPF device failed", __s);
      result = 0xFFFFFFFFLL;
      break;
  }

LABEL_5:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t get_dlt_list(int a1, int a2, unsigned int *a3, char *a4)
{
  a3[2] = 0;
  *a3 = 0;
  if (ioctl(a1, 0xC00C4279uLL, a3))
  {
    if (*__error() == 22)
    {
      return 0;
    }

    v16 = *__error();
    pcap_fmt_errmsg_for_errno(a4, 0x100uLL, v16, "BIOCGDLTLIST");
    return 0xFFFFFFFFLL;
  }

  v9 = malloc_type_malloc(4 * (*a3 + 1), 0x100004052888210uLL);
  *(a3 + 1) = v9;
  if (!v9)
  {
    v17 = *__error();
    pcap_fmt_errmsg_for_errno(a4, 0x100uLL, v17, "malloc");
    return 0xFFFFFFFFLL;
  }

  if (ioctl(a1, 0xC00C4279uLL, a3) < 0)
  {
    v18 = __error();
    pcap_fmt_errmsg_for_errno(a4, 0x100uLL, *v18, "BIOCGDLTLIST");
    free(*(a3 + 1));
    return 0xFFFFFFFFLL;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v10 = *a3;
  if (v10)
  {
    v11 = *a3;
    v12 = *(a3 + 1);
    while (1)
    {
      v14 = *v12++;
      v13 = v14;
      if (v14 != 226 && v13 != 1)
      {
        return 0;
      }

      if (!--v11)
      {
        goto LABEL_21;
      }
    }
  }

  v10 = 0;
LABEL_21:
  result = 0;
  *(*(a3 + 1) + 4 * v10) = 143;
  ++*a3;
  return result;
}

uint64_t find_802_11(unsigned int *a1)
{
  v1 = *a1;
  if (v1)
  {
    v2 = *(a1 + 1);
    result = 0xFFFFFFFFLL;
    while (1)
    {
      v5 = *v2++;
      v4 = v5;
      if (v5 <= 126)
      {
        break;
      }

      if (v4 == 127)
      {
        result = 127;
      }

      else if (v4 == 163)
      {
        goto LABEL_13;
      }

LABEL_17:
      if (!--v1)
      {
        return result;
      }
    }

    if (v4 - 119 >= 2)
    {
      if (result == -1)
      {
        v6 = 105;
      }

      else
      {
        v6 = result;
      }

      if (v4 == 105)
      {
        result = v6;
      }

      else
      {
        result = result;
      }

      goto LABEL_17;
    }

LABEL_13:
    if (result == 127)
    {
      result = 127;
    }

    else
    {
      result = v4;
    }

    goto LABEL_17;
  }

  return 0xFFFFFFFFLL;
}

uint64_t check_setif_failure(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 != -5)
  {
    return v2;
  }

  if (!*(a1 + 140))
  {
    return 4294967291;
  }

  v4 = *(a1 + 120);
  if (*v4 != 119 || v4[1] != 108 || v4[2] != 116)
  {
    return 4294967291;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v8 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), *v8, 256, "socket() failed");
    return 4294967291;
  }

  v6 = v5;
  v11 = (*(a1 + 120) + 3);
  __s = 0;
  if (asprintf(&__s, "en%s", v11) == -1)
  {
    v9 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v9, "malloc");
    close(v6);
    return 4294967291;
  }

  v7 = device_exists(v6, __s, (a1 + 208));
  free(__s);
  if (v7 == -5)
  {
    v2 = 4294967290;
  }

  else
  {
    v2 = v7;
  }

  close(v6);
  return v2;
}

uint64_t remove_non_802_11(uint64_t result)
{
  v1 = *(result + 468);
  if (v1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(result + 472);
    do
    {
      v5 = *(v4 + 4 * v2);
      if (v5 != 1 && v5 != 12)
      {
        *(v4 + 4 * v3++) = v5;
        v1 = *(result + 468);
      }

      ++v2;
    }

    while (v2 < v1);
  }

  *(result + 468) = v3;
  return result;
}

uint64_t remove_802_11(uint64_t result)
{
  v1 = *(result + 468);
  if (v1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(result + 472);
    do
    {
      v5 = *(v4 + 4 * v2);
      v6 = (v5 - 105) > 0x3A || ((1 << (v5 - 105)) & 0x40000000040C001) == 0;
      if (v6 && v5 != 192)
      {
        *(v4 + 4 * v3++) = v5;
        v1 = *(result + 468);
      }

      ++v2;
    }

    while (v2 < v1);
  }

  *(result + 468) = v3;
  return result;
}

uint64_t pcap_read_bpf(size_t a1, int a2, void (*a3)(uint64_t, __int128 *, char *), uint64_t a4)
{
  v60 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 48);
  while (1)
  {
    if (*(a1 + 44))
    {
      goto LABEL_56;
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      v11 = *(a1 + 32);
      goto LABEL_13;
    }

    v8 = read(*(a1 + 16), (*(a1 + 24) + *(a1 + 948)), *(a1 + 20));
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() == 22)
    {
      v37 = *(a1 + 20);
      v38 = *(a1 + 948);
      v35 = *(a1 + 24);
      snprintf((a1 + 208), 0x100uLL, "read EINVAL buffer %p %p bufsize %u compress_head_space %u");
      goto LABEL_44;
    }

    v9 = *__error();
    if (v9 != 4)
    {
      if ((v9 - 5) >= 2)
      {
        if (v9 == 35)
        {
          v10 = 0;
          goto LABEL_58;
        }

        v26 = __error();
        pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v26, "read");
      }

      else
      {
        strcpy((a1 + 208), "The interface disappeared");
      }

LABEL_44:
      v10 = 0xFFFFFFFFLL;
      goto LABEL_58;
    }
  }

  v11 = (*(a1 + 24) + *(a1 + 948));
LABEL_13:
  if (v8 < 1)
  {
    v10 = 0;
LABEL_46:
    v27 = *(a1 + 948);
    if (v27 && *(a1 + 944))
    {
      v28 = *(a1 + 968);
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      memcpy(*(a1 + 952), *(a1 + 960), v29);
      *(a1 + 960) = *(a1 + 952);
      v30 = *(a1 + 968);
      if (v30 >= *(a1 + 948))
      {
        v30 = *(a1 + 948);
      }

      *(a1 + 968) = v30;
    }

    *(a1 + 40) = 0;
    goto LABEL_58;
  }

  v10 = 0;
  v40 = (v11 + v8);
  v39 = vdupq_n_s64(1uLL).u64[0];
  while (!*(a1 + 44))
  {
    v12 = v11[2];
    v13 = v11[2];
    v14 = *(v11 + 8);
    v15 = v11 + v14;
    if (!*(v7 + 8) && !pcap_filter(*(a1 + 200), v11 + v14, v11[3], v11[2]))
    {
      v11 = (v11 + (((v12 + v14) + 3) & 0x1FFFFFFFCLL));
      goto LABEL_40;
    }

    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v16 = v11[1];
    *&v42 = *v11;
    DWORD2(v42) = v16;
    LODWORD(v43) = v13;
    DWORD1(v43) = v11[3];
    pcap_read_bpf_header(a1, v11, &v42);
    v17 = *(a1 + 940);
    if (v17 == 2)
    {
      v20 = *(a1 + 960);
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = v15[v21];
          v23 = *(v20 + v21++);
        }

        while (v22 == v23);
        v24 = v21 - 1;
        if (v24)
        {
          v25.i64[0] = v39;
          v25.i64[1] = v24;
          *(a1 + 1008) = vaddq_s64(*(a1 + 1008), v25);
          if (*(a1 + 1024) < v24)
          {
            *(a1 + 1024) = v24;
          }

LABEL_36:
          *(a1 + 984) += v12;
          *(a1 + 992) += v14;
          *(a1 + 960) = v15;
LABEL_37:
          *(a1 + 968) = v13;
          goto LABEL_38;
        }
      }

      else
      {
        ++*(a1 + 976);
      }

      ++*(a1 + 1000);
      goto LABEL_36;
    }

    if (v17 == 1)
    {
      v18 = *(v11 + 18);
      if (*(v11 + 18) && *(a1 + 944))
      {
        v19 = *(a1 + 960);
        if (!v19)
        {
          v33 = *(a1 + 968);
          snprintf((a1 + 208), 0x100uLL, "prev_datap NULL bh_complen %u prev_caplen %u caplen %u \n");
          goto LABEL_44;
        }

        v15 -= *(v11 + 18);
        if (v15 < *(a1 + 24) - *(a1 + 948))
        {
          v34 = *(a1 + 968);
          snprintf((a1 + 208), 0x100uLL, "datap underflow bh_complen %u prev_caplen %u caplen %u \n");
          goto LABEL_44;
        }

        if (*(a1 + 968) < v18)
        {
          v36 = *(a1 + 968);
          snprintf((a1 + 208), 0x100uLL, "bh_complen prev_caplen bh_complen %u prev_caplen %u caplen %u \n");
          goto LABEL_44;
        }

        memmove(v15, v19, *(v11 + 18));
        LODWORD(v43) = v12 + v18;
      }

      *(a1 + 960) = v15;
      v13 = v12 + v18;
      goto LABEL_37;
    }

LABEL_38:
    a3(a4, &v42, v15);
    v11 = (v11 + (((v12 + v14) + 3) & 0x1FFFFFFFCLL));
    v10 = (v10 + 1);
    if (a2 >= 1 && v10 >= a2)
    {
      *(a1 + 32) = v11;
      *(a1 + 40) = (v40 - v11) & ~((v40 - v11) >> 31);
      goto LABEL_58;
    }

LABEL_40:
    if (v11 >= v40)
    {
      goto LABEL_46;
    }
  }

  *(a1 + 32) = v11;
  *(a1 + 40) = (v40 - v11) & ~((v40 - v11) >> 31);
  if (v10)
  {
    goto LABEL_58;
  }

LABEL_56:
  *(a1 + 44) = 0;
  v10 = 4294967294;
LABEL_58:
  v31 = *MEMORY[0x29EDCA608];
  return v10;
}

ssize_t pcap_inject_bpf(uint64_t a1, const void *a2, int a3)
{
  v5 = a3;
  result = write(*(a1 + 16), a2, a3);
  if (result == -1)
  {
    if (*__error() == 47)
    {
      v9 = 0;
      if (ioctl(*(a1 + 16), 0x80044275uLL, &v9) == -1)
      {
        v8 = *__error();
        pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, v8, "send: can't turn off BIOCSHDRCMPLT");
        return 0xFFFFFFFFLL;
      }

      result = write(*(a1 + 16), a2, v5);
      if (result != -1)
      {
        return result;
      }
    }

    v7 = *__error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, v7, "send");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t pcap_setfilter_bpf(uint64_t a1, const void **a2)
{
  v4 = *(a1 + 48);
  pcap_freecode((a1 + 192));
  result = ioctl(*(a1 + 16), 0x80104267uLL, a2);
  if (!result)
  {
    *(v4 + 8) = 1;
    *(a1 + 40) = 0;
    return result;
  }

  if (*__error() != 22)
  {
    v6 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v6, "BIOCSETF");
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 940))
  {
    strcpy((a1 + 208), "compression mode requires in kernel filtering");
    return 0xFFFFFFFFLL;
  }

  if ((install_bpf_program(a1, a2) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t pcap_setdirection_bpf(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 3:
      v6 = 0;
      v3 = "none";
      break;
    case 2:
      v6 = 2;
      v3 = "outgoing only";
      break;
    case 1:
      v6 = 1;
      v3 = "incoming only";
      break;
    default:
      v6 = 3;
      v3 = "incoming and outgoing";
      break;
  }

  if (ioctl(*(a1 + 16), 0x8004428BuLL, &v6) != -1)
  {
    return 0;
  }

  v5 = __error();
  pcap_fmt_errmsg_for_errno((a1 + 208), 0x101uLL, *v5, "Cannot set direction to %s", v3);
  return 0xFFFFFFFFLL;
}

uint64_t pcap_set_datalink_bpf(uint64_t a1, int a2)
{
  v5 = a2;
  if (ioctl(*(a1 + 16), 0x80044278uLL, &v5) != -1)
  {
    return 0;
  }

  v4 = __error();
  pcap_fmt_errmsg_for_errno((a1 + 208), 0x101uLL, *v4, "Cannot set DLT %d", v5);
  return 0xFFFFFFFFLL;
}

uint64_t pcap_stats_bpf(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v7 = 0;
  if (ioctl(v4, 0x4008426FuLL, &v7) < 0)
  {
    v6 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v6, "BIOCGSTATS");
    return 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
    *a2 = v7;
    *(a2 + 8) = 0;
  }

  return result;
}

void pcap_cleanup_bpf(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 12))
  {
    pcap_remove_from_pcaps_to_close(a1);
    *(v2 + 12) = 0;
  }

  if (*v2)
  {
    free(*v2);
    *v2 = 0;
  }

  pcap_cleanup_live_common(a1);
}

uint64_t bpf_open_and_bind(char *a1, char *a2)
{
  v4 = bpf_open(a2);
  v5 = v4;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = bpf_bind(v4, a1, a2);
    if (v6)
    {
      v7 = v6;
      close(v5);
      if (v7 == 1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v7;
      }
    }
  }

  return v5;
}

pcap_t *__cdecl pcap_open(const char *source, int snaplen, int flags, int read_timeout, pcap_rmtauth *auth, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return 0;
}

int pcap_createsrcstr(char *source, int type, const char *host, const char *port, const char *name, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_parsesrcstr(const char *source, int *type, char *host, char *port, char *name, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_findalldevs_ex(const char *source, pcap_rmtauth *auth, pcap_if_t **alldevs, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_remoteact_accept(const char *address, const char *port, const char *hostlist, char *connectinghost, pcap_rmtauth *auth, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_remoteact_accept_ex(const char *address, const char *port, const char *hostlist, char *connectinghost, pcap_rmtauth *auth, int uses_ssl, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_remoteact_list(char *hostlist, char sep, int size, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

int pcap_remoteact_close(const char *host, char *errbuf)
{
  if (errbuf)
  {
    strcpy(errbuf, "not supported");
  }

  return -1;
}

uint64_t dlt_to_linktype(uint64_t result)
{
  if (result == 18)
  {
    return 246;
  }

  if (result != 149 && (result - 104) >= 0xBA)
  {
    if (result)
    {
      v1 = &map;
      v2 = 20;
      while (--v2)
      {
        v3 = v1 + 2;
        v4 = v1[2];
        v1 += 2;
        if (v4 == result)
        {
          return v3[1];
        }
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      v3 = &map;
      return v3[1];
    }
  }

  return result;
}

uint64_t linktype_to_dlt(uint64_t result)
{
  if (result == 246)
  {
    return 18;
  }

  if (result != 149 && (result == 106 || (result - 104) >= 0xBA))
  {
    if (result)
    {
      v1 = &map;
      v2 = 20;
      while (--v2)
      {
        v3 = v1 + 2;
        v4 = v1[3];
        v1 += 2;
        if (v4 == result)
        {
          return *v3;
        }
      }
    }

    else
    {
      v3 = &map;
      return *v3;
    }
  }

  return result;
}

uint64_t max_snaplen_for_dlt(int a1)
{
  if (a1 == 279)
  {
    v1 = 0x800000;
  }

  else
  {
    v1 = 0x80000;
  }

  if (a1 == 249)
  {
    v2 = 0x100000;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 231)
  {
    return 0x8000000;
  }

  else
  {
    return v2;
  }
}

uint64_t swap_pseudo_headers(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result > 219)
  {
    if (result == 220)
    {
      return swap_linux_usb_header(a2, a3, 1);
    }

    else if (result == 239)
    {
      v3 = *(a2 + 16);
      v4 = *(a2 + 20);
      v6 = v3 >= 4;
      v5 = v3 - 4;
      v6 = v6 && v4 >= 4;
      if (v6 && !*(a3 + 1) && v5 >= 4)
      {
        v7 = (a3 + 4);
        v8 = v4 - 4;
        do
        {
          v7[1] = bswap32(v7[1]) >> 16;
          v9 = bswap32(*v7) >> 16;
          *v7 = v9;
          v10 = v9 + 3;
          if (v10 < 4u)
          {
            break;
          }

          v11 = v10 & 0xFFFC;
          if (v5 < v11 || v8 < v11)
          {
            break;
          }

          v8 -= v11;
          v5 -= v11;
          v7 = (v7 + v11);
        }

        while (v5 > 3);
      }
    }
  }

  else if (result == 113)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 20);
    if (v13 >= 0x10 && v14 >= 0x10 && __rev16(*(a3 + 14)) - 14 >= 0xFFFFFFFE && v13 >= 0x14 && v14 >= 0x14)
    {
      *(a3 + 16) = bswap32(*(a3 + 16));
    }
  }

  else if (result == 189)
  {
    return swap_linux_usb_header(a2, a3, 0);
  }

  return result;
}

uint64_t swap_linux_usb_header(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 16);
  if (v3 >= 8)
  {
    *a2 = bswap64(*a2);
    if (v3 >= 0xE)
    {
      *(a2 + 12) = bswap32(*(a2 + 12)) >> 16;
      if (v3 >= 0x18)
      {
        *(a2 + 16) = bswap64(*(a2 + 16));
        if (v3 >= 0x1C)
        {
          *(a2 + 24) = bswap32(*(a2 + 24));
          if (v3 >= 0x20)
          {
            *(a2 + 28) = bswap32(*(a2 + 28));
            if (v3 >= 0x24)
            {
              *(a2 + 32) = bswap32(*(a2 + 32));
              if (v3 >= 0x28)
              {
                *(a2 + 36) = bswap32(*(a2 + 36));
                v4 = *(a2 + 9);
                if (*(a2 + 9))
                {
                  if (!a3)
                  {
                    return result;
                  }
                }

                else
                {
                  if (v3 < 0x2C)
                  {
                    return result;
                  }

                  *(a2 + 40) = bswap32(*(a2 + 40));
                  if (*(result + 16) < 0x30u)
                  {
                    return result;
                  }

                  *(a2 + 44) = bswap32(*(a2 + 44));
                  if (!a3)
                  {
                    return result;
                  }
                }

                v5 = *(result + 16);
                if (v5 >= 0x34)
                {
                  *(a2 + 48) = bswap32(*(a2 + 48));
                  if (v5 >= 0x38)
                  {
                    *(a2 + 52) = bswap32(*(a2 + 52));
                    if (v5 >= 0x3C)
                    {
                      *(a2 + 56) = bswap32(*(a2 + 56));
                      if (v5 >= 0x40)
                      {
                        v6 = *(a2 + 60);
                        v7 = bswap32(v6);
                        *(a2 + 60) = v7;
                        if (!v4 && v6 && v5 >= 0x44)
                        {
                          v8 = (a2 + 64);
                          v9 = 1;
                          v10 = 84;
                          do
                          {
                            *v8 = bswap32(*v8);
                            if (v5 < v10 - 12)
                            {
                              break;
                            }

                            v8[1] = bswap32(v8[1]);
                            if (v5 < v10 - 8)
                            {
                              break;
                            }

                            v8[2] = bswap32(v8[2]);
                            if (v9 >= v7)
                            {
                              break;
                            }

                            ++v9;
                            v8 += 4;
                            v11 = v5 >= v10;
                            v10 += 16;
                          }

                          while (v11);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t pcap_cleanup_pktap_interface(const char *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  result = pcap_cleanup_pktap_interface_internal(a1, v3);
  if (result)
  {
    result = fprintf(*MEMORY[0x29EDCA610], "%s\n", v3);
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcap_cleanup_pktap_interface_internal(const char *a1, char *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v4 = socket(2, 2, 0);
    if (v4 != -1)
    {
      v5 = v4;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      __strlcpy_chk();
      if (ioctl(v5, 0xC0946990uLL, v18) < 0)
      {
        v12 = __error();
        strerror(*v12);
        snprintf(a2, 0x100uLL, "%s: ioctl SIOCGIFDESC %s - %s");
      }

      else
      {
        if (!LODWORD(v18[1]) || (*(&v18[1] + 4) == 0x207061637062696CLL ? (v6 = *(&v18[1] + 12) == 0x6F6C63206F747561) : (v6 = 0), v6 ? (v7 = *(&v18[2] + 4) == 0x697665642064656ELL) : (v7 = 0), v7 ? (v8 = WORD6(v18[2]) == 25955) : (v8 = 0), !v8 || pcap_get_if_attach_count(a1, a2) != 1 || (v16 = 0u, v17 = 0u, __strlcpy_chk(), (ioctl(v5, 0x80206979uLL, &v16) & 0x80000000) == 0)))
        {
          v9 = 0;
LABEL_23:
          close(v5);
          goto LABEL_24;
        }

        v15 = __error();
        strerror(*v15);
        snprintf(a2, 0x100uLL, "%s: ioctl(SIOCIFDESTROY) fail - %s");
      }

      v9 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v10 = __error();
    v11 = strerror(*v10);
    snprintf(a2, 0x100uLL, "%s: socket failed - %s", "pcap_cleanup_pktap_interface_internal", v11);
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

LABEL_24:
  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

char *pcap_setup_pktap_interface(char *a1, char *a2)
{
  v63 = *MEMORY[0x29EDCA608];
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  v52 = 0u;
  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x81124FF1uLL);
  if (!v4)
  {
    v7 = __error();
    v8 = pcap_strerror(*v7);
    snprintf(a2, 0x100uLL, "malloc(): %s", v8);
    goto LABEL_86;
  }

  v5 = socket(2, 2, 0);
  if (v5 == -1)
  {
    v9 = __error();
    pcap_strerror(*v9);
    snprintf(a2, 0x100uLL, "socket(): %s");
    goto LABEL_17;
  }

  if (!strncmp(a1, "pktap", 5uLL))
  {
    v12 = strchr(a1, 44);
    v10 = v12;
    if (v12)
    {
      v13 = v12 - a1;
    }

    else
    {
      v13 = strlen(a1);
    }

    if (v13 - 24 < 0xFFFFFFFFFFFFFFE7)
    {
      goto LABEL_16;
    }

    __memmove_chk();
    v4[v13] = 0;
    v11 = "pktap";
    sscanf(v4, "pktap%d");
  }

  else if (!strcmp(a1, "all") || !strcmp(a1, "any"))
  {
    v10 = "all";
    v11 = "pktap";
  }

  else
  {
    if (strncmp(a1, "iptap", 5uLL))
    {
      if (strncmp(a1, "droptap", 7uLL))
      {
        v6 = __error();
        pcap_strerror(*v6);
        snprintf(a2, 0x100uLL, "bad device name: %s");
LABEL_17:
        v15 = 0;
        goto LABEL_81;
      }

      if (__strlcpy_chk() < 0x18)
      {
        v10 = 0;
        v11 = "droptap";
        sscanf(v4, "droptap%d");
        goto LABEL_19;
      }

LABEL_16:
      v14 = __error();
      pcap_strerror(*v14);
      snprintf(a2, 0x100uLL, "device name too long: %s");
      goto LABEL_17;
    }

    if (__strlcpy_chk() >= 0x18)
    {
      goto LABEL_16;
    }

    v10 = 0;
    v11 = "iptap";
    sscanf(v4, "iptap%d");
  }

LABEL_19:
  v16 = if_nameindex();
  v15 = v16;
  if (v16)
  {
    if (v16->if_index)
    {
      v17 = 1;
      v18 = v16;
      v47 = a2;
LABEL_22:
      v46 = v17;
      ++v18;
      do
      {
        v19 = strlen(v11);
        if (!strncmp(v18[-1].if_name, v11, v19))
        {
          v60 = 0;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          memset(v53, 0, sizeof(v53));
          v52 = 0u;
          if_name = v18[-1].if_name;
          __strlcpy_chk();
          if (ioctl(v5, 0xC0946990uLL, &v52) < 0)
          {
            v42 = __error();
            v45 = pcap_strerror(*v42);
            v27 = "ioctl(SIOCGIFDESC): %s";
LABEL_79:
            v41 = v47;
            goto LABEL_80;
          }

          if (v53[0])
          {
            v22 = *&v53[1] == 0x207061637062696CLL && *&v53[3] == 0x6F6C63206F747561;
            v23 = v22 && *&v53[5] == 0x697665642064656ELL;
            if (v23 && LOWORD(v53[7]) == 25955)
            {
              a2 = v47;
              if (!pcap_get_if_attach_count(v18[-1].if_name, v47))
              {
                v25 = v18[-1].if_name;
                __strlcpy_chk();
                v17 = 0;
                if (v18->if_index)
                {
                  goto LABEL_22;
                }

                goto LABEL_47;
              }

              *v47 = 0;
            }
          }
        }

        if_index = v18->if_index;
        ++v18;
      }

      while (if_index);
      a2 = v47;
      if ((v46 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v61 = 0u;
    v62 = 0u;
    __strlcpy_chk();
    if (ioctl(v5, 0xC0206978uLL, &v61) < 0)
    {
      v40 = __error();
      v45 = pcap_strerror(*v40);
      v27 = "ioctl(SIOCIFCREATE): %s";
    }

    else
    {
      snprintf(v4, 0x18uLL, "%s", &v61);
LABEL_47:
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      memset(v53, 0, sizeof(v53));
      v52 = 0u;
      __strlcpy_chk();
      v28 = getprogname();
      v29 = getpid();
      v30 = snprintf(&v53[1], 0x80uLL, "%s - %s.%d", "libpcap auto cloned device", v28, v29);
      if (v30 < 0x80)
      {
        v31 = v30 + 1;
      }

      else
      {
        v31 = 128;
      }

      v53[0] = v31;
      if ((ioctl(v5, 0xC094698FuLL, &v52) & 0x80000000) == 0)
      {
        if (v10)
        {
          v47 = a2;
          v32 = 0uLL;
          memset(v51, 0, sizeof(v51));
          if (*v10)
          {
            v33 = 0;
            do
            {
              *__str = v32;
              v49 = v32;
              if (*v10 == 44)
              {
                v34 = 1;
              }

              else
              {
                if (v33 >= 8)
                {
                  v45 = 8;
                  v27 = "Too many pktap parameters, max is %u";
                  goto LABEL_79;
                }

                v35 = strchr(v10, 44);
                if (v35)
                {
                  v34 = v35 - v10;
                }

                else
                {
                  v34 = strlen(v10);
                }

                if (v34 >= 0x18)
                {
                  strcpy(a2, "Interface name too big for filter");
                  goto LABEL_81;
                }

                if (!strcmp(v10, "all") || !strcmp(v10, "any"))
                {
                  *__str = 0x100000001;
                  *&__str[8] = 0;
                }

                else
                {
                  *__str = 0x200000001;
                  __strncpy_chk();
                }

                v36 = v49;
                v37 = &v51[2 * v33];
                *v37 = *__str;
                v37[1] = v36;
                ++v33;
                v32 = 0uLL;
              }

              v10 += v34;
            }

            while (*v10);
            if (v33 >= 1)
            {
              memset(__str, 0, sizeof(__str));
              snprintf(__str, 0x10uLL, "%s", v4);
              v49 = xmmword_299802B00;
              v50 = v51;
              if (ioctl(v5, 0x8028697BuLL, __str) == -1)
              {
                v38 = __error();
                v45 = pcap_strerror(*v38);
                v27 = "ioctl(SIOCSDRVSPEC): %s";
                goto LABEL_79;
              }
            }
          }
        }

        goto LABEL_82;
      }

      v39 = __error();
      v45 = pcap_strerror(*v39);
      v27 = "ioctl(SIOCSIFDESC): %s";
    }
  }

  else
  {
    v26 = __error();
    v45 = pcap_strerror(*v26);
    v27 = "if_nameindex: %s";
  }

  v41 = a2;
LABEL_80:
  snprintf(v41, 0x100uLL, v27, v45);
LABEL_81:
  free(v4);
  v4 = 0;
LABEL_82:
  if (v15)
  {
    MEMORY[0x29C29FA80](v15);
  }

  if (v5 != -1)
  {
    close(v5);
  }

LABEL_86:
  v43 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t pcap_get_if_attach_count(const char *a1, char *a2)
{
  v4 = 0;
  v15 = *MEMORY[0x29EDCA608];
  while (1)
  {
    snprintf(__str, 0x13uLL, "/dev/bpf%d", v4);
    v5 = open(__str, 0);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    ++v4;
    if (*__error() != 16)
    {
      v6 = 0xFFFFFFFFLL;
      goto LABEL_9;
    }
  }

  v7 = v5;
  v12 = 0u;
  v13 = 0u;
  __strlcpy_chk();
  if (ioctl(v7, 0xC020427DuLL, &v12) == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    snprintf(a2, 0x100uLL, "ioctl BIOCGIFATTACHCOUNT %s failed - %s", a1, v9);
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v13;
  }

  close(v7);
LABEL_9:
  v10 = *MEMORY[0x29EDCA608];
  return v6;
}

void pktap_cleanup(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1032);
  if (v2)
  {
    v2(*(a1 + 120), v5);
  }

  (*(a1 + 1056))(a1);
  v3 = *(a1 + 1040);
  if (v3)
  {
    free(v3);
    *(a1 + 1040) = 0;
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t pktap_create(char *a1, char *a2, _DWORD *a3)
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = "pktap";
  }

  if (!strncmp(v5, "pktap", 5uLL) || !strncmp(v5, "iptap", 5uLL) || !strncmp(v5, "droptap", 7uLL) || !strcmp(v5, "all") || !strcmp(v5, "any"))
  {
    *a3 = 1;
    pcap_create_interface(a2, 0);
    v6 = v7;
    if (v7)
    {
      v8 = pcap_setup_pktap_interface(v5, a2);
      if (v8)
      {
        *(v6 + 1040) = v8;
        *(v6 + 1032) = pcap_cleanup_pktap_interface_internal;
        *(v6 + 1048) = *(v6 + 792);
        *(v6 + 792) = pktap_activate;
      }

      else
      {
        pcap_close(v6);
        return 0;
      }
    }
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  return v6;
}

uint64_t pktap_activate(uint64_t a1)
{
  free(*(a1 + 120));
  *(a1 + 120) = *(a1 + 1040);
  *(a1 + 1040) = 0;
  if (*(a1 + 96) <= 0x9Bu)
  {
    *(a1 + 96) = 0x80000;
  }

  result = (*(a1 + 1048))(a1);
  if (!result)
  {
    *(a1 + 1056) = *(a1 + 888);
    *(a1 + 888) = pktap_cleanup;
  }

  return result;
}

uint64_t pcap_ng_dump_shb_comment(uint64_t a1, uint64_t a2, char *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if ((pcap_ng_dump_shb_comment_info_done & 1) == 0)
  {
    if (uname(&pcap_ng_dump_shb_comment_utsname) == -1)
    {
      snprintf((a1 + 208), 0x100uLL, "%s: uname() failed");
    }

    else
    {
      v6 = getpid();
      if ((proc_pidinfo(v6, 13, 1uLL, &pcap_ng_dump_shb_comment_bsdinfo, 64) & 0x80000000) == 0)
      {
        pcap_ng_dump_shb_comment_info_done = 1;
        goto LABEL_5;
      }

      snprintf((a1 + 208), 0x100uLL, "%s: proc_pidinfo(PROC_PIDT_SHORTBSDINFO) failed");
    }

LABEL_21:
    result = 0;
    goto LABEL_22;
  }

LABEL_5:
  v7 = *(a2 + 16);
  if (!v7)
  {
    pcap_ng_block_alloc(*(a1 + 96) + 4096);
    v7 = v8;
    *(a2 + 16) = v8;
    if (!v8)
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_alloc() failed ");
      goto LABEL_21;
    }
  }

  if (!*(a1 + 1112) || !*(a2 + 8))
  {
    if (pcap_ng_block_reset(v7, 168627466))
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_SHB) failed");
    }

    else if (pcap_ng_block_add_option_with_string(v7, 2, byte_2A18BC0E8))
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_SHB_HARDWARE) failed");
    }

    else
    {
      snprintf(__str, 0x100uLL, "%s", byte_2A18BBFE8);
      if (pcap_ng_block_add_option_with_string(v7, 3, __str))
      {
        snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_SHB_OS) failed");
      }

      else
      {
        v10 = pcap_lib_version();
        snprintf(__str, 0x100uLL, "%s (%s)", byte_2A18BC1FC, v10);
        if (pcap_ng_block_add_option_with_string(v7, 4, __str))
        {
          snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_SHB_USERAPPL) failed");
        }

        else
        {
          if (!a3 || !*a3 || !pcap_ng_block_add_option_with_string(v7, 1, a3))
          {
            pcap_ng_dump_block(a2, v7);
            result = 1;
            *(a1 + 1112) = 1;
            *(a2 + 8) = 1;
            goto LABEL_22;
          }

          snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_OPT_COMMENT) failed");
        }
      }
    }

    goto LABEL_21;
  }

  result = 1;
LABEL_22:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcap_ng_dump_proc_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!*(a4 + 24))
  {
    if (pcap_ng_block_reset(a3, -2147483647))
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_PIB) failed");
    }

    else
    {
      *pcap_ng_get_process_information_fields(a3) = *(v4 + 8);
      if (pcap_ng_block_add_option_with_string(a3, 2, *(v4 + 16)))
      {
        v8 = *(v4 + 16);
        snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_PIB_NAME, %s) failed");
      }

      else
      {
        if (uuid_is_null((v4 + 28)) || !pcap_ng_block_add_option_with_uuid(a3, 4, (v4 + 28)))
        {
          pcap_ng_dump_block(a2, a3);
          *(v4 + 24) = 1;
          v10 = *(a2 + 64);
          *(a2 + 64) = v10 + 1;
          *(v4 + 4) = v10;
          return v4;
        }

        snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_uuid(PCAPNG_PIB_UUID) failed");
      }
    }

    return 0;
  }

  return v4;
}

uint64_t pcap_ng_dump_kern_event(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  if (pcap_ng_dump_shb_comment(a1, a2, 0))
  {
    v8 = *(a2 + 16);
    if (!pcap_ng_block_reset(v8, -2147483646))
    {
      os_event_fields = pcap_ng_get_os_event_fields(v8);
      v9 = 1;
      v11 = *a4;
      *os_event_fields = 1;
      os_event_fields[1] = v11;
      v12 = *a3;
      os_event_fields[2] = *(a4 + 2);
      os_event_fields[3] = v12;
      pcap_ng_block_packet_set_data(v8, a3, v12);
      pcap_ng_dump_block(a2, v8);
      return v9;
    }

    snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_OSEV) failed", "pcap_ng_dump_kern_event");
  }

  return 0;
}

uint64_t pcap_ng_dump_if_info(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!*(a4 + 40))
  {
    if (pcap_ng_block_reset(a3, 1))
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_IDB) failed");
    }

    else
    {
      interface_description_fields = pcap_ng_get_interface_description_fields(a3);
      *interface_description_fields = dlt_to_linktype(*(v4 + 16));
      *(interface_description_fields + 4) = *(v4 + 20);
      if (!pcap_ng_block_add_option_with_string(a3, 2, *(v4 + 8)))
      {
        pcap_ng_dump_block(a2, a3);
        *(v4 + 40) = 1;
        v11 = *(a2 + 40);
        *(a2 + 40) = v11 + 1;
        *(v4 + 4) = v11;
        return v4;
      }

      v9 = *(v4 + 8);
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_add_option_with_string(PCAPNG_IF_NAME, %s) failed");
    }

    return 0;
  }

  return v4;
}

uint64_t pcap_ng_dump_pktap_comment(uint64_t a1, uint64_t a2, int32x2_t *a3, unsigned int *a4, char *a5)
{
  v35 = *MEMORY[0x29EDCA608];
  __src = 0;
  if (a3[2].i32[1] < 0x9Cu)
  {
    goto LABEL_4;
  }

  v7 = a3[2].u32[0];
  if (v7 < 0x9C || *a4 > v7)
  {
    goto LABEL_4;
  }

  result = pcap_ng_dump_shb_comment(a1, a2, 0);
  if (result)
  {
    v13 = *(a2 + 16);
    result = pcap_if_info_set_find_by_name((a2 + 24), a4 + 12);
    if (result || (result = pcap_if_info_set_add((a2 + 24), a4 + 12, 0xFFFFFFFF, a4[2], *(a1 + 96), *(a1 + 1104), (a1 + 208))) != 0)
    {
      v14 = result;
      if (a3[2].i32[1] < 0x9Cu || (v15 = a3[2].u32[0], v15 < 0x9C) || (v16 = *a4, v16 > v15))
      {
LABEL_4:
        snprintf((a1 + 208), 0x100uLL, "%s: Packet too short");
LABEL_5:
        result = 0;
        goto LABEL_6;
      }

      if (!*(result + 32) || (memcpy(&__dst, a3, sizeof(__dst)), *&__dst.caplen = vsub_s32(*&__dst.caplen, vdup_n_s32(v16)), result = pcap_offline_filter((v14 + 24), &__dst, a4 + v16), result))
      {
        result = pcap_ng_dump_if_info(a1, a2, v13, v14);
        if (result)
        {
          v17 = result;
          v18 = a4[13];
          if ((v18 + 1) <= 1 && !*(a4 + 56))
          {
            if (uuid_is_null(a4 + 124))
            {
              v19 = 0;
              goto LABEL_23;
            }

            v18 = a4[13];
          }

          result = pcap_ng_dump_proc(a1, a2, v13, v18, a4 + 56, a4 + 124);
          v19 = result;
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_23:
          v20 = a4[21];
          if ((v20 + 1) <= 1 && !*(a4 + 88))
          {
            if (uuid_is_null(a4 + 140))
            {
              v21 = 0;
              goto LABEL_29;
            }

            v20 = a4[21];
          }

          result = pcap_ng_dump_proc(a1, a2, v13, v20, a4 + 88, a4 + 140);
          v21 = result;
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_29:
          if (pcap_ng_block_reset(v13, 6))
          {
            snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_EPB) failed");
            goto LABEL_5;
          }

          if (a4[1] == 2)
          {
            if (*(a4 + 160))
            {
              v22 = *(a4 + 160) + 165;
            }

            else
            {
              v22 = 161;
            }
          }

          else
          {
            v22 = *a4;
          }

          enhanced_packet_fields = pcap_ng_get_enhanced_packet_fields(v13);
          *enhanced_packet_fields = *(v17 + 4);
          v24 = a4;
          v26 = vld1_dup_f32(v24);
          v25 = v24 + v22;
          v27 = vsub_s32(a3[2], v26);
          *(enhanced_packet_fields + 12) = v27;
          *(enhanced_packet_fields + 4) = __ROR8__(a3[1].i32[0] + 1000000 * *a3, 32);
          pcap_ng_block_packet_set_data(v13, v25, v27.i32[0]);
          if (v19)
          {
            pcap_ng_block_add_option_with_value(v13, 32769, (v19 + 4), 4uLL);
          }

          if (v21)
          {
            pcap_ng_block_add_option_with_value(v13, 32771, (v21 + 4), 4uLL);
          }

          v28 = a4[9];
          if (v28)
          {
            v29 = 1;
          }

          else
          {
            if ((v28 & 2) == 0)
            {
              if (!HIDWORD(__src))
              {
LABEL_50:
                if (a4[19] != -1)
                {
                  pcap_ng_block_add_option_with_value(v13, 32770, a4 + 19, 4uLL);
                }

                if (a4[27])
                {
                  pcap_ng_block_add_option_with_value(v13, 32773, a4 + 27, 4uLL);
                }

                if (*(a4 + 37))
                {
                  pcap_ng_block_add_option_with_value(v13, 32774, a4 + 74, 2uLL);
                }

                if (a4[1] == 2)
                {
                  pcap_ng_block_add_option_with_value(v13, 32775, a4 + 39, 4uLL);
                  if (*(a4 + 160))
                  {
                    pcap_ng_block_add_option_with_value(v13, 32776, a4 + 162, 2uLL);
                    pcap_ng_block_add_option_with_string(v13, 32777, a4 + 164);
                  }
                }

                if (a5 && *a5)
                {
                  pcap_ng_block_add_option_with_string(v13, 1, a5);
                }

                v30 = a4[9];
                if ((v30 & 0x4000) != 0)
                {
                  LODWORD(__src) = __src | 1;
                  if ((v30 & 0x8000) == 0)
                  {
LABEL_64:
                    if ((v30 & 0x10000) == 0)
                    {
                      goto LABEL_65;
                    }

                    goto LABEL_75;
                  }
                }

                else if ((v30 & 0x8000) == 0)
                {
                  goto LABEL_64;
                }

                LODWORD(__src) = __src | 4;
                if ((v30 & 0x10000) == 0)
                {
LABEL_65:
                  if ((v30 & 0x20000) == 0)
                  {
                    goto LABEL_66;
                  }

                  goto LABEL_76;
                }

LABEL_75:
                LODWORD(__src) = __src | 2;
                if ((v30 & 0x20000) == 0)
                {
LABEL_66:
                  if ((v30 & 0x40000) == 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_77;
                }

LABEL_76:
                LODWORD(__src) = __src | 8;
                if ((v30 & 0x40000) == 0)
                {
LABEL_67:
                  if ((v30 & 0x100000) == 0)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_78;
                }

LABEL_77:
                LODWORD(__src) = __src | 0x10;
                if ((v30 & 0x100000) == 0)
                {
LABEL_68:
                  if ((v30 & 0x200000) == 0)
                  {
                    goto LABEL_70;
                  }

                  goto LABEL_69;
                }

LABEL_78:
                LODWORD(__src) = __src | 0x20;
                if ((v30 & 0x200000) == 0)
                {
LABEL_70:
                  if ((v30 & 0x400000) != 0)
                  {
                    LODWORD(__src) = __src | 0x80;
                  }

                  else if (!__src)
                  {
                    goto LABEL_82;
                  }

                  pcap_ng_block_add_option_with_value(v13, 32772, &__src, 4uLL);
LABEL_82:
                  v32 = a4[28];
                  v31 = a4 + 28;
                  if (v32)
                  {
                    pcap_ng_block_add_option_with_value(v13, 32778, v31, 4uLL);
                  }

                  pcap_ng_dump_block(a2, v13);
                  result = 1;
                  goto LABEL_6;
                }

LABEL_69:
                LODWORD(__src) = __src | 0x40;
                goto LABEL_70;
              }

LABEL_49:
              pcap_ng_block_add_option_with_value(v13, 2, &__src + 4, 4uLL);
              goto LABEL_50;
            }

            v29 = 2;
          }

          HIDWORD(__src) = v29;
          goto LABEL_49;
        }
      }
    }
  }

LABEL_6:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcap_ng_dump_proc(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *__s1, unsigned __int8 *uu1)
{
  result = pcap_proc_info_set_find_uuid((a2 + 48), a4, __s1, uu1);
  if (result || (result = pcap_proc_info_set_add_uuid((a2 + 48), a4, __s1, uu1, (a1 + 208))) != 0)
  {

    return pcap_ng_dump_proc_info(a1, a2, a3, result);
  }

  return result;
}

uint64_t pcap_ng_dump_decryption_secrets(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  if (HIDWORD(a4))
  {
    return 0;
  }

  v7 = a4;
  result = pcap_ng_dump_shb_comment(a1, a2, 0);
  if (result)
  {
    v11 = *(a2 + 16);
    if (pcap_ng_block_reset(v11, 10))
    {
      snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_DSB) failed", "pcap_ng_dump_decryption_secrets");
      return 0;
    }

    else
    {
      decryption_secrets_fields = pcap_ng_get_decryption_secrets_fields(v11);
      *decryption_secrets_fields = a3;
      decryption_secrets_fields[1] = v7;
      pcap_ng_block_packet_set_data(v11, a5, v7);
      pcap_ng_dump_block(a2, v11);
      return 1;
    }
  }

  return result;
}

int pcap_apple_set_exthdr(pcap_t *p, int a2)
{
  v6 = a2;
  if (ioctl(*(p + 4), 0x8004427CuLL, &v6) < 0)
  {
    v4 = __error();
    v5 = pcap_strerror(*v4);
    snprintf(p + 208, 0x100uLL, "BIOCSEXTHDR: %s", v5);
    return -1;
  }

  else
  {
    result = 0;
    *(p + 230) = v6;
  }

  return result;
}

uint64_t pcap_set_compression(uint64_t a1, unsigned int a2)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 940) = a2;
  return result;
}

uint64_t pcap_get_compression_stats(uint64_t a1, char *a2, size_t a3)
{
  v6 = *(a1 + 940);
  if (v6 == 2)
  {
    v7 = *(a1 + 992);
    v8 = *(a1 + 1008);
    v11 = *(a1 + 1016);
    v12 = *(a1 + 1024);
    snprintf(a2, a3, "U tot_rd %llu tot_sz %llu tot_hdr_sz %llu no_prfx_cnt %llu prfx_cnt %llu tot_prfx_sz %llu max_prfx_sz %u", *(a1 + 976), *(a1 + 984));
    return 0;
  }

  if (v6 == 1)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    if ((ioctl(*(a1 + 16), 0x40384288uLL, v13) & 0x80000000) == 0)
    {
      snprintf(a2, a3, "K tot_rd %llu tot_sz %llu tot_hdr_sz %llu no_prfx_cnt %llu prfx_cnt %llu tot_prfx_sz %llu max_prfx_sz %llu", v13[0]);
      return 0;
    }

    v10 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v10, "BIOCGHDRCOMPSTATS");
  }

  return 0xFFFFFFFFLL;
}

size_t pcap_read_bpf_header(size_t result, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  *(a3 + 24) = 0;
  v3 = (a3 + 24);
  if (!*(result + 920))
  {
    goto LABEL_66;
  }

  v5 = &unk_29980EC4F;
  if (*(a2 + 24))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    if (snprintf(__str, 0x64uLL, "%sproc %s:%d", &unk_29980EC4F, (a2 + 24), *(a2 + 20)) >= 1)
    {
      strlcat(v3, __str, 0x100uLL);
      v5 = ", ";
    }
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__str = 0u;
  v15 = 0u;
  v6 = *(a2 + 44);
  if (v6 <= 499)
  {
    if (v6 <= 199)
    {
      if (!v6)
      {
        v7 = "BE";
        goto LABEL_31;
      }

      if (v6 == 100)
      {
        v7 = "BK_SYS";
        goto LABEL_31;
      }
    }

    else
    {
      switch(v6)
      {
        case 200:
          v7 = "BK";
          goto LABEL_31;
        case 300:
          v7 = "RD";
          goto LABEL_31;
        case 400:
          v7 = "OAM";
          goto LABEL_31;
      }
    }
  }

  else if (v6 > 799)
  {
    switch(v6)
    {
      case 800:
        v7 = "VO";
        goto LABEL_31;
      case 900:
        v7 = "CTL";
        goto LABEL_31;
      case 10002:
        v7 = "SIG";
        goto LABEL_31;
    }
  }

  else
  {
    switch(v6)
    {
      case 500:
        v7 = "AV";
        goto LABEL_31;
      case 600:
        v7 = "RV";
        goto LABEL_31;
      case 700:
        v7 = "VI";
        goto LABEL_31;
    }
  }

  v7 = pcap_svc2str_svcstr;
  snprintf(pcap_svc2str_svcstr, 0xAuLL, "%u", *(a2 + 44));
LABEL_31:
  if (snprintf(__str, 0x64uLL, "%ssvc %s", v5, v7) >= 1)
  {
    strlcat(v3, __str, 0x100uLL);
    v5 = ", ";
  }

  if (*(a2 + 41))
  {
    if (*(a2 + 41))
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      if (snprintf(__str, 0x64uLL, "%sre", v5) >= 1)
      {
        strlcat(v3, __str, 0x100uLL);
        v5 = ", ";
      }
    }

    if ((*(a2 + 41) & 2) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      if (snprintf(__str, 0x64uLL, "%sst", v5) >= 1)
      {
        strlcat(v3, __str, 0x100uLL);
        v5 = ", ";
      }
    }

    if ((*(a2 + 41) & 4) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      if (snprintf(__str, 0x64uLL, "%slp", v5) >= 1)
      {
        strlcat(v3, __str, 0x100uLL);
        v5 = ", ";
      }
    }

    if ((*(a2 + 41) & 8) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      if (snprintf(__str, 0x64uLL, "%swk", v5) >= 1)
      {
        strlcat(v3, __str, 0x100uLL);
        v5 = ", ";
      }
    }

    if ((*(a2 + 41) & 0x10) != 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__str = 0u;
      v15 = 0u;
      if (snprintf(__str, 0x64uLL, "%sulpn", v5) >= 1)
      {
        strlcat(v3, __str, 0x100uLL);
        v5 = ", ";
      }
    }
  }

  v8 = *(a2 + 52);
  if (v8)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    if (snprintf(__str, 0x64uLL, "%sunsent %u", v5, v8) >= 1)
    {
      strlcat(v3, __str, 0x100uLL);
      v5 = ", ";
    }
  }

  v9 = *(a2 + 19);
  *__str = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  if (v9)
  {
    result = snprintf(__str, 0x64uLL, "%sout", v5);
    if (result < 1)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  result = snprintf(__str, 0x64uLL, "%sin", v5);
  if (result > 0)
  {
LABEL_56:
    result = strlcat(v3, __str, 0x100uLL);
    v5 = ", ";
  }

LABEL_57:
  v10 = *(a2 + 48);
  if (v10)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    result = snprintf(__str, 0x64uLL, "%sflowid 0x%x", v5, v10);
    if (result >= 1)
    {
      result = strlcat(v3, __str, 0x100uLL);
      v5 = ", ";
    }
  }

  v11 = *(a2 + 42);
  if (*(a2 + 42))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    result = snprintf(__str, 0x64uLL, "%sttag 0x%x", v5, v11);
    if (result >= 1)
    {
      result = strlcat(v3, __str, 0x100uLL);
      v5 = ", ";
    }
  }

  v12 = *(a2 + 60);
  if (v12)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *__str = 0u;
    v15 = 0u;
    result = snprintf(__str, 0x64uLL, "%scmpgc 0x%x", v5, v12);
    if (result >= 1)
    {
      result = strlcat(v3, __str, 0x100uLL);
    }
  }

LABEL_66:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t pcap_ng_dump_pktap_v2(uint64_t a1, uint64_t a2, int32x2_t *a3, unsigned __int8 *a4, char *a5)
{
  v40 = *MEMORY[0x29EDCA608];
  __src = 0;
  if (a3[2].i32[1] < 0x28u)
  {
    goto LABEL_4;
  }

  v7 = a3[2].u32[0];
  if (v7 < 0x28 || v7 < *a4)
  {
    goto LABEL_4;
  }

  v11 = a4[3];
  if (!a4[3])
  {
    snprintf((a1 + 208), 0x100uLL, "%s: No ifame");
    goto LABEL_5;
  }

  result = pcap_ng_dump_shb_comment(a1, a2, 0);
  if (result)
  {
    v14 = *(a2 + 16);
    result = pcap_if_info_set_find_by_name((a2 + 24), &a4[v11]);
    if (result || (result = pcap_if_info_set_add((a2 + 24), &a4[v11], 0xFFFFFFFF, *(a4 + 3), *(a1 + 96), *(a1 + 1104), (a1 + 208))) != 0)
    {
      v15 = result;
      if (a3[2].i32[1] < 0x28u || (v16 = a3[2].u32[0], v16 < 0x28) || (v17 = *a4, v16 < v17))
      {
LABEL_4:
        snprintf((a1 + 208), 0x100uLL, "%s: Packet too short");
LABEL_5:
        result = 0;
        goto LABEL_6;
      }

      if (!a4[3])
      {
        goto LABEL_5;
      }

      if (!*(result + 32) || (memcpy(&__dst, a3, sizeof(__dst)), *&__dst.caplen = vsub_s32(*&__dst.caplen, vdup_n_s32(v17)), result = pcap_offline_filter((v15 + 24), &__dst, &a4[v17]), result))
      {
        result = pcap_ng_dump_if_info(a1, a2, v14, v15);
        if (result)
        {
          v18 = result;
          v19 = a4[4];
          if (a4[4])
          {
            v20 = &a4[v19];
          }

          else
          {
            v20 = 0;
          }

          v21 = a4[1];
          if (a4[1])
          {
            v22 = &a4[v21];
          }

          else
          {
            v22 = 0;
          }

          v23 = *(a4 + 7);
          if (v23)
          {
            if (v23 == -1 && !a4[4] && !a4[1])
            {
              goto LABEL_30;
            }
          }

          else if (!(v19 | v21))
          {
LABEL_30:
            v24 = 0;
            goto LABEL_33;
          }

          result = pcap_ng_dump_proc(a1, a2, v14, v23, v20, v22);
          v24 = result;
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_33:
          v25 = a4[5];
          if (a4[5])
          {
            v26 = &a4[v25];
          }

          else
          {
            v26 = 0;
          }

          v27 = a4[2];
          if (a4[2])
          {
            v28 = &a4[v27];
          }

          else
          {
            v28 = 0;
          }

          v29 = *(a4 + 8);
          if (v29)
          {
            if (v29 == -1 && !a4[5] && !a4[2])
            {
              goto LABEL_43;
            }
          }

          else if (!(v25 | v27))
          {
LABEL_43:
            v30 = 0;
            goto LABEL_46;
          }

          result = pcap_ng_dump_proc(a1, a2, v14, v29, v26, v28);
          v30 = result;
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_46:
          if (pcap_ng_block_reset(v14, 6))
          {
            snprintf((a1 + 208), 0x100uLL, "%s: pcap_ng_block_reset(PCAPNG_BT_EPB) failed");
            goto LABEL_5;
          }

          v31 = *a4;
          enhanced_packet_fields = pcap_ng_get_enhanced_packet_fields(v14);
          v33 = *a4;
          *enhanced_packet_fields = *(v18 + 4);
          v34 = vsub_s32(a3[2], vdup_n_s32(v33));
          *(enhanced_packet_fields + 12) = v34;
          *(enhanced_packet_fields + 4) = __ROR8__(a3[1].i32[0] + 1000000 * *a3, 32);
          pcap_ng_block_packet_set_data(v14, &a4[v31], v34.i32[0]);
          if (v24)
          {
            pcap_ng_block_add_option_with_value(v14, 32769, (v24 + 4), 4uLL);
          }

          if (v30)
          {
            pcap_ng_block_add_option_with_value(v14, 32771, (v30 + 4), 4uLL);
          }

          v35 = *(a4 + 9);
          if (v35)
          {
            v36 = 1;
          }

          else
          {
            if ((v35 & 2) == 0)
            {
              if (!HIDWORD(__src))
              {
LABEL_60:
                if (*(a4 + 5) != 0xFFFF)
                {
                  LODWORD(__dst.ts.tv_sec) = *(a4 + 5);
                  pcap_ng_block_add_option_with_value(v14, 32770, &__dst, 4uLL);
                }

                if (*(a4 + 6))
                {
                  pcap_ng_block_add_option_with_value(v14, 32773, a4 + 24, 4uLL);
                }

                if (a5 && *a5)
                {
                  pcap_ng_block_add_option_with_string(v14, 1, a5);
                }

                v37 = *(a4 + 9);
                if ((v37 & 0x4000) != 0)
                {
                  LODWORD(__src) = __src | 1;
                  if ((v37 & 0x8000) == 0)
                  {
LABEL_69:
                    if ((v37 & 0x10000) == 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_80;
                  }
                }

                else if ((v37 & 0x8000) == 0)
                {
                  goto LABEL_69;
                }

                LODWORD(__src) = __src | 4;
                if ((v37 & 0x10000) == 0)
                {
LABEL_70:
                  if ((v37 & 0x20000) == 0)
                  {
                    goto LABEL_71;
                  }

                  goto LABEL_81;
                }

LABEL_80:
                LODWORD(__src) = __src | 2;
                if ((v37 & 0x20000) == 0)
                {
LABEL_71:
                  if ((v37 & 0x40000) == 0)
                  {
                    goto LABEL_72;
                  }

                  goto LABEL_82;
                }

LABEL_81:
                LODWORD(__src) = __src | 8;
                if ((v37 & 0x40000) == 0)
                {
LABEL_72:
                  if ((v37 & 0x100000) == 0)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_83;
                }

LABEL_82:
                LODWORD(__src) = __src | 0x10;
                if ((v37 & 0x100000) == 0)
                {
LABEL_73:
                  if ((v37 & 0x200000) == 0)
                  {
                    goto LABEL_75;
                  }

                  goto LABEL_74;
                }

LABEL_83:
                LODWORD(__src) = __src | 0x20;
                if ((v37 & 0x200000) == 0)
                {
LABEL_75:
                  if ((v37 & 0x400000) != 0)
                  {
                    LODWORD(__src) = __src | 0x80;
                  }

                  else if (!__src)
                  {
                    goto LABEL_87;
                  }

                  pcap_ng_block_add_option_with_value(v14, 32772, &__src, 4uLL);
LABEL_87:
                  pcap_ng_dump_block(a2, v14);
                  result = 1;
                  goto LABEL_6;
                }

LABEL_74:
                LODWORD(__src) = __src | 0x40;
                goto LABEL_75;
              }

LABEL_59:
              pcap_ng_block_add_option_with_value(v14, 2, &__src + 4, 4uLL);
              goto LABEL_60;
            }

            v36 = 2;
          }

          HIDWORD(__src) = v36;
          goto LABEL_59;
        }
      }
    }
  }

LABEL_6:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void pcap_ng_dump_init_section_info(_DWORD *a1)
{
  a1[2] = 0;
  pcap_if_info_set_clear(a1 + 6);

  pcap_proc_info_set_clear(a1 + 12);
}

uint64_t pcap_set_max_write_size(uint64_t a1, int a2)
{
  v5 = a2;
  result = ioctl(*(a1 + 16), 0x8004428CuLL, &v5);
  if (result)
  {
    v4 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCSWRITEMAX errno %d", "pcap_set_max_write_size", *v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t pcap_get_max_write_size(uint64_t a1, uint64_t a2)
{
  result = ioctl(*(a1 + 16), 0x4004428DuLL, a2);
  if (result)
  {
    v4 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCGWRITEMAX errno %d", "pcap_get_max_write_size", *v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t pcap_set_send_multiple(uint64_t a1, int a2)
{
  v5 = a2;
  result = ioctl(*(a1 + 16), 0x8004428FuLL, &v5);
  if (result)
  {
    v4 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCSBATCHWRITE errno %d", "pcap_set_send_multiple", *v4);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(a1 + 1072) = v5 != 0;
  }

  return result;
}

uint64_t pcap_get_send_multiple(uint64_t a1, uint64_t a2)
{
  result = ioctl(*(a1 + 16), 0x4004428EuLL, a2);
  if (result)
  {
    v4 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCGBATCHWRITE errno %d", "pcap_get_send_multiple", *v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

size_t pcap_sendpacket_multiple(uint64_t a1, size_t count, uint64_t a3)
{
  v3 = count;
  if (count >= 0x101)
  {
    snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: count %u greater than max %d");
    return 0xFFFFFFFFLL;
  }

  v6 = a3;
  v7 = count;
  if (*(a1 + 1072))
  {
    if (*(a1 + 1076) >= count)
    {
      if (!count)
      {
        v14 = 0;
        v19 = 1;
LABEL_28:
        v21 = v14 + 2 * v3;
        if (*(a1 + 1088) < v21)
        {
          v22 = *(a1 + 1096);
          if (v22)
          {
            free(v22);
            *(a1 + 1096) = 0;
          }

          *(a1 + 1088) = 0;
          v23 = malloc_type_calloc(3 * v21, 0x10uLL, 0x1080040FC6463CFuLL);
          *(a1 + 1096) = v23;
          if (!v23)
          {
            v42 = __error();
            snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: calloc iovec array errno %d", *v42);
            free(*(a1 + 1080));
            *(a1 + 1080) = 0;
            *(a1 + 1076) = 0;
            return 0xFFFFFFFFLL;
          }

          *(a1 + 1088) = v21;
        }

        if (v19)
        {
          v24 = 0;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v43 = v7;
          do
          {
            v27 = *(a1 + 1080) + 20 * v25;
            LOBYTE(v28) = 18;
            *(v27 + 16) = 18;
            v29 = v6 + 24 * v25;
            v30 = *(v29 + 8);
            v31 = *(v29 + 12);
            *(v27 + 8) = v30;
            *(v27 + 12) = v30;
            v32 = (*(a1 + 1096) + 16 * v26);
            *v32 = v27;
            v32[1] = 18;
            v24 = v26 + 1;
            if (v31)
            {
              v33 = v6;
              v34 = 0;
              v35 = 0;
              v36 = 16 * v24;
              do
              {
                if (v35 >= *(a1 + 1088))
                {
                  v37 = __error();
                  snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: calloc iovec array errno %d", *v37);
                }

                *(*(a1 + 1096) + v36 + v34) = *(*(v29 + 16) + v34);
                ++v35;
                v34 += 16;
              }

              while (v35 < *(v29 + 12));
              v26 += v35;
              v24 = v26 + 1;
              v28 = *(v27 + 16);
              v30 = *(v27 + 8);
              v6 = v33;
              v7 = v43;
            }

            v38 = (v30 + v28) & 3;
            if (v38)
            {
              v39 = (*(a1 + 1096) + 16 * v24);
              *v39 = &v44;
              v39[1] = (4 - v38);
              v24 = v26 + 2;
            }

            ++v25;
            v26 = v24;
          }

          while (v25 != v7);
        }

        if ((writev(*(a1 + 16), *(a1 + 1096), v24) & 0x8000000000000000) == 0)
        {
          return v7;
        }

        v40 = *__error();
        snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: writev failed errno %d");
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v8 = *(a1 + 1080);
      if (v8)
      {
        free(v8);
        *(a1 + 1080) = 0;
      }

      *(a1 + 1076) = 0;
      v9 = malloc_type_calloc(v3, 0x14uLL, 0x1000040EF768F96uLL);
      *(a1 + 1080) = v9;
      if (!v9)
      {
        v20 = *__error();
        snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: calloc bpf_hdr array errno %d");
        return 0xFFFFFFFFLL;
      }

      *(a1 + 1076) = v3;
    }

    v14 = 0;
    v15 = (v6 + 12);
    v16 = v3;
    while (1)
    {
      v18 = *v15;
      v15 += 6;
      v17 = v18;
      if (v18 >= 0x81)
      {
        break;
      }

      v14 += v17;
      if (!--v16)
      {
        v19 = 0;
        goto LABEL_28;
      }
    }

    snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: pcap_priv_iov_count %u greater that max %d");
    return 0xFFFFFFFFLL;
  }

  if (count)
  {
    v10 = (a3 + 12);
    v11 = count;
    do
    {
      v12 = *v10;
      v10 += 6;
      if (v12 >= 0x81)
      {
        snprintf((a1 + 208), 0x100uLL, "pcap_sendpacket_multiple: pcap_priv_iov_count %u greater than max %d");
        return 0xFFFFFFFFLL;
      }

      --v11;
    }

    while (v11);
    v3 = 0;
    for (i = (a3 + 16); (writev(*(a1 + 16), *i, *(i - 1)) & 0x8000000000000000) == 0; i += 3)
    {
      if (v7 == ++v3)
      {
        return v7;
      }
    }

    v41 = __error();
    pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v41, "pcap_sendpacket_multiple: writev %d failed: %s", v3, (a1 + 208));
  }

  return v3;
}

uint64_t pcap_get_divert_input(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = ioctl(*(a1 + 16), 0x40044292uLL, &v5);
  if (result)
  {
    v4 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCGDVRTIN errno %d", "pcap_get_divert_input", *v4);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t pcap_set_divert_input(uint64_t a1, int a2)
{
  v6 = a2;
  result = ioctl(*(a1 + 16), 0x80044292uLL, &v6);
  if (result)
  {
    v4 = v6;
    v5 = __error();
    snprintf((a1 + 208), 0x100uLL, "%s: BIOCSDVRTIN %d errno %d", "pcap_set_divert_input", v4, *v5);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void pcap_if_info_set_clear(int *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (*a1 >= 1)
    {
      v3 = 0;
      do
      {
        pcap_if_info_set_free(a1, *(*(a1 + 1) + 8 * v3++));
      }

      while (v3 < *a1);
      v2 = *(a1 + 1);
    }

    free(v2);
    *(a1 + 1) = 0;
  }

  *a1 = 0;
  a1[4] = 0;
}

void pcap_if_info_set_free(unsigned int *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *a1;
    if (v3 >= 1)
    {
      v4 = *(a1 + 1);
      while (*v4 != a2)
      {
        ++v4;
        if (!--v3)
        {
          goto LABEL_9;
        }
      }

      *v4 = 0;
    }

LABEL_9:
    pcap_freecode((a2 + 24));

    free(a2);
  }
}

uint64_t pcap_if_info_set_find_by_name(unsigned int *a1, char *__s1)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v5 = *i;
    if (!strcmp(__s1, *(*i + 8)))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return v5;
}

_DWORD *pcap_if_info_set_find_by_id(unsigned int *a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    result = *i;
    if (**i == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

char *pcap_if_info_set_add(int *a1, char *__s, unsigned int a3, int a4, int a5, const char *a6, char *a7)
{
  v14 = strlen(__s);
  v15 = malloc_type_calloc(1uLL, v14 + 49, 0x1030040CF3BB0ADuLL);
  if (!v15)
  {
    if (a7)
    {
      snprintf(a7, 0x100uLL, "%s: calloc() failed", "pcap_if_info_set_add");
    }

    return 0;
  }

  v16 = v15;
  v17 = v15 + 48;
  *(v16 + 1) = v17;
  if (v14)
  {
    memmove(v17, __s, v14);
    v17 = *(v16 + 1);
  }

  *(v17 + v14) = 0;
  if (a3 == -1)
  {
    a3 = *a1;
  }

  *v16 = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  if (a6 && *a6)
  {
    v18 = pcap_open_dead(a4, a5);
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = v18;
    v20 = pcap_compile(v18, (v16 + 24), a6, 0, 0xFFFFFFFF);
    v21 = v20;
    if (a7 && v20)
    {
      strlcpy(a7, v19 + 208, 0x100uLL);
    }

    pcap_close(v19);
    if (v21 == -1)
    {
LABEL_20:
      free(v16);
      return 0;
    }
  }

  v22 = malloc_type_realloc(*(a1 + 1), 8 * *a1 + 8, 0x2004093837F09uLL);
  if (!v22)
  {
    if (a7)
    {
      snprintf(a7, 0x100uLL, "%s: realloc() failed", "pcap_if_info_set_add");
    }

    pcap_if_info_set_free(a1, v16);
    return 0;
  }

  *(a1 + 1) = v22;
  v23 = *a1;
  v22[v23] = v16;
  *a1 = v23 + 1;
  return v16;
}

_DWORD *pcap_find_if_info_by_id(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v2 = *(a1 + 1120);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1128); ; ++i)
  {
    result = *i;
    if (**i == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

void pcap_ng_init_section_info(_DWORD *a1)
{
  a1[278] = 0;
  pcap_if_info_set_clear(a1 + 280);

  pcap_proc_info_set_clear(a1 + 286);
}

void pcap_proc_info_set_clear(int *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    if (*a1 >= 1)
    {
      v3 = 0;
      do
      {
        pcap_proc_info_set_free(a1, *(*(a1 + 1) + 8 * v3++));
      }

      while (v3 < *a1);
      v2 = *(a1 + 1);
    }

    free(v2);
    *(a1 + 1) = 0;
  }

  *a1 = 0;
  a1[4] = 0;
}

void pcap_proc_info_set_free(unsigned int *a1, void *a2)
{
  if (a2)
  {
    v2 = *a1;
    if (v2 >= 1)
    {
      v3 = *(a1 + 1);
      while (*v3 != a2)
      {
        ++v3;
        if (!--v2)
        {
          goto LABEL_9;
        }
      }

      *v3 = 0;
    }

LABEL_9:
    free(a2);
  }
}

uint64_t pcap_proc_info_set_find_uuid(int *a1, int a2, char *__s1, unsigned __int8 *uu1)
{
  if (__s1 && uu1)
  {
    v8 = *a1;
    if (*a1 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(a1 + 1) + 8 * v9);
        if (*(v10 + 8) == a2 && !strcmp(__s1, *(v10 + 16)))
        {
          if (!uuid_compare(uu1, (v10 + 28)))
          {
            return v10;
          }

          v8 = *a1;
        }

        ++v9;
      }

      while (v9 < v8);
    }

    return 0;
  }

  if (!__s1)
  {
    if (uu1)
    {
      v13 = *a1;
      if (*a1 >= 1)
      {
        v14 = 0;
        do
        {
          v10 = *(*(a1 + 1) + 8 * v14);
          if (*(v10 + 8) == a2)
          {
            if (!uuid_compare(uu1, (v10 + 28)))
            {
              return v10;
            }

            v13 = *a1;
          }

          ++v14;
        }

        while (v14 < v13);
      }
    }

    return 0;
  }

  v11 = *a1;
  if (v11 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    v10 = *i;
    if (*(*i + 8) == a2 && !strcmp(__s1, *(v10 + 16)))
    {
      break;
    }

    if (!--v11)
    {
      return 0;
    }
  }

  return v10;
}

_DWORD *pcap_proc_info_set_find_by_index(unsigned int *a1, int a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1); ; ++i)
  {
    result = *i;
    if (**i == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

void *pcap_proc_info_set_add_uuid(int *a1, int a2, char *__s, const unsigned __int8 *a4, char *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  if (__s)
  {
    v10 = strlen(__s);
  }

  else
  {
    v10 = 0;
  }

  memset(out, 0, 37);
  if (!a4 && (null_uu_inited & 1) == 0)
  {
    uuid_clear(null_uu);
    null_uu_inited = 1;
  }

  v11 = malloc_type_calloc(1uLL, v10 + 49, 0x10100401B691007uLL);
  if (!v11)
  {
    if (a5)
    {
      snprintf(a5, 0x100uLL, "%s: calloc() failed", "pcap_proc_info_set_add_uuid");
    }

    goto LABEL_20;
  }

  v12 = v11;
  v13 = v11 + 48;
  *(v12 + 2) = v13;
  if (v10)
  {
    memmove(v13, __s, v10);
    v13 = *(v12 + 2);
  }

  *(v13 + v10) = 0;
  *(v12 + 2) = a2;
  *v12 = *a1;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = null_uu;
  }

  uuid_copy(v12 + 28, v14);
  uuid_unparse_lower(v12 + 28, out);
  v15 = malloc_type_realloc(*(a1 + 1), 8 * *a1 + 8, 0x2004093837F09uLL);
  if (!v15)
  {
    if (a5)
    {
      snprintf(a5, 0x100uLL, "%s: malloc() failed", "pcap_proc_info_set_add_uuid");
    }

    free(v12);
LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  *(a1 + 1) = v15;
  v16 = *a1;
  v15[v16] = v12;
  *a1 = v16 + 1;
LABEL_21:
  v17 = *MEMORY[0x29EDCA608];
  return v12;
}

_DWORD *pcap_find_proc_info_by_index(uint64_t a1, int a2)
{
  v2 = *(a1 + 1144);
  if (v2 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 1152); ; ++i)
  {
    result = *i;
    if (**i == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t pcap_set_filter_info(uint64_t a1, char *__s1)
{
  v4 = *(a1 + 1104);
  if (v4)
  {
    free(v4);
  }

  if (__s1)
  {
    v5 = strdup(__s1);
    *(a1 + 1104) = v5;
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 1104) = 0;
  }

  return 0;
}

void pcap_darwin_cleanup(uint64_t a1)
{
  *(a1 + 1112) = 0;
  pcap_if_info_set_clear((a1 + 1120));
  pcap_proc_info_set_clear((a1 + 1144));
  v2 = *(a1 + 952);
  if (v2)
  {
    free(v2);
    *(a1 + 952) = 0;
  }

  v3 = *(a1 + 1080);
  if (v3)
  {
    free(v3);
    *(a1 + 1080) = 0;
  }

  v4 = *(a1 + 1096);
  if (v4)
  {
    free(v4);
    *(a1 + 1096) = 0;
  }

  *(a1 + 1076) = 0;
  v5 = *(a1 + 1104);
  if (v5)
  {
    free(v5);
    *(a1 + 1104) = 0;
  }
}

int pcap_list_tstamp_types(pcap_t *a1, int **a2)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = malloc_type_calloc(4uLL, v4, 0x100004052888210uLL);
    *a2 = v5;
    if (v5)
    {
      memcpy(v5, *(a1 + 61), 4 * *(a1 + 120));
      return *(a1 + 120);
    }
  }

  else
  {
    v7 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *a2 = v7;
    if (v7)
    {
      *v7 = 0;
      return 1;
    }
  }

  v8 = __error();
  pcap_fmt_errmsg_for_errno(a1 + 208, 0x101uLL, *v8, "malloc");
  return -1;
}

void *pcap_oneshot(uint64_t a1, const void *a2, uint64_t a3)
{
  result = memcpy(*a1, a2, 0x118uLL);
  **(a1 + 8) = a3;
  return result;
}

const u_char *__cdecl pcap_next(pcap_t *a1, pcap_pkthdr *a2)
{
  v3 = 0;
  v4[0] = a2;
  v4[1] = &v3;
  v4[2] = a1;
  if ((*a1)(a1, 1, *(a1 + 110), v4) >= 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

int pcap_next_ex(pcap_t *a1, pcap_pkthdr **a2, const u_char **a3)
{
  v6[0] = a1 + 512;
  v6[1] = a3;
  v6[2] = a1;
  *a2 = (a1 + 512);
  v3 = *(a1 + 8);
  result = (*a1)(a1, 1, *(a1 + 110), v6);
  if (result)
  {
    v5 = result;
  }

  else
  {
    v5 = -2;
  }

  if (v3)
  {
    return v5;
  }

  return result;
}

int pcap_findalldevs(pcap_if_t **a1, char *a2)
{
  v7 = 0;
  v3 = pcap_platform_finddevs(&v7, a2);
  v4 = v7;
  if (v3 == -1)
  {
    if (v7)
    {
      pcap_freealldevs(v7);
      v4 = 0;
    }

    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v4;
  return v5;
}

void pcap_freealldevs(pcap_if_t *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      next = v1->next;
      addresses = v1->addresses;
      if (addresses)
      {
        do
        {
          v5 = addresses->next;
          addr = addresses->addr;
          if (addr)
          {
            free(addr);
          }

          netmask = addresses->netmask;
          if (netmask)
          {
            free(netmask);
          }

          broadaddr = addresses->broadaddr;
          if (broadaddr)
          {
            free(broadaddr);
          }

          dstaddr = addresses->dstaddr;
          if (dstaddr)
          {
            free(dstaddr);
          }

          free(addresses);
          addresses = v5;
        }

        while (v5);
      }

      free(v1->name);
      description = v1->description;
      if (description)
      {
        free(description);
      }

      free(v1);
      v1 = next;
    }

    while (next);
  }
}

uint64_t *find_or_add_dev(uint64_t *a1, char *__s1, int a3, unsigned int (*a4)(char *, int *, char *), const char *a5, char *a6)
{
  v13 = a3;
  v11 = a1;
  while (1)
  {
    v11 = *v11;
    if (!v11)
    {
      break;
    }

    if (!strcmp(__s1, v11[1]))
    {
      return v11;
    }
  }

  if (a4(__s1, &v13, a6) == -1)
  {
    return 0;
  }

  else
  {
    return add_dev(a1, __s1, v13, a5, a6);
  }
}

uint64_t add_addr_to_if (uint64_t *a1, char *a2, unsigned int a3, unsigned int (*a4)(char *, int *, char *), const void *a5, size_t a6, const void *a7, size_t a8, const void *a9, size_t a10, const void *a11, size_t a12, char *a13)
{
  v17 = find_or_add_dev(a1, a2, (2 * (a3 & 1)) | (a3 >> 3) & 1 | (a3 >> 4) & 4, a4, 0, a13);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0;
  }

  return add_addr_to_dev(v17, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t add_addr_to_dev(uint64_t a1, const void *a2, size_t a3, const void *a4, size_t a5, const void *a6, size_t a7, const void *a8, size_t size, char *a10)
{
  v18 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
  if (!v18)
  {
    v22 = __error();
    pcap_fmt_errmsg_for_errno(a10, 0x100uLL, *v22, "malloc");
    return 0xFFFFFFFFLL;
  }

  v19 = v18;
  *v18 = 0;
  if (a2 && a3)
  {
    v20 = dup_sockaddr(a2, a3);
    v19[1] = v20;
    if (!v20)
    {
      v21 = __error();
      pcap_fmt_errmsg_for_errno(a10, 0x100uLL, *v21, "malloc");
LABEL_27:
      free(v19);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v18[1] = 0;
  }

  if (a4 && a5)
  {
    v23 = dup_sockaddr(a4, a5);
    v19[2] = v23;
    if (!v23)
    {
      v24 = __error();
      pcap_fmt_errmsg_for_errno(a10, 0x100uLL, *v24, "malloc");
LABEL_25:
      v31 = v19[1];
      if (v31)
      {
        free(v31);
      }

      goto LABEL_27;
    }
  }

  else
  {
    v19[2] = 0;
  }

  if (a6 && a7)
  {
    v25 = dup_sockaddr(a6, a7);
    v19[3] = v25;
    if (!v25)
    {
      v26 = __error();
      pcap_fmt_errmsg_for_errno(a10, 0x100uLL, *v26, "malloc");
LABEL_23:
      v30 = v19[2];
      if (v30)
      {
        free(v30);
      }

      goto LABEL_25;
    }
  }

  else
  {
    v19[3] = 0;
  }

  if (a8 && size)
  {
    v27 = dup_sockaddr(a8, size);
    v19[4] = v27;
    if (!v27)
    {
      v28 = __error();
      pcap_fmt_errmsg_for_errno(a10, 0x100uLL, *v28, "malloc");
      v29 = v19[3];
      if (v29)
      {
        free(v29);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v19[4] = 0;
  }

  v33 = *(a1 + 24);
  while (v33)
  {
    v34 = v33;
    v33 = *v33;
    if (!v33)
    {
      result = 0;
      *v34 = v19;
      return result;
    }
  }

  result = 0;
  *(a1 + 24) = v19;
  return result;
}

void *dup_sockaddr(const void *a1, size_t size)
{
  result = malloc_type_malloc(size, 0xA4B38BE6uLL);
  if (result)
  {

    return memcpy(result, a1, size);
  }

  return result;
}

uint64_t **find_dev(uint64_t **a1, char *__s1)
{
  do
  {
    a1 = *a1;
  }

  while (a1 && strcmp(__s1, a1[1]));
  return a1;
}

uint64_t *add_dev(uint64_t *a1, const char *a2, int a3, const char *a4, char *a5)
{
  v10 = malloc_type_malloc(0x28uLL, 0x1030040C90965D9uLL);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
    v12 = strdup(a2);
    v11[1] = v12;
    if (!v12)
    {
      v16 = __error();
      pcap_fmt_errmsg_for_errno(a5, 0x100uLL, *v16, "malloc");
      goto LABEL_8;
    }

    if (a4)
    {
      v13 = strdup(a4);
      v11[2] = v13;
      if (!v13)
      {
        v14 = __error();
        pcap_fmt_errmsg_for_errno(a5, 0x100uLL, *v14, "malloc");
        free(v11[1]);
LABEL_8:
        free(v11);
        return 0;
      }
    }

    else
    {
      v11[2] = 0;
    }

    v11[3] = 0;
    *(v11 + 8) = a3;
    figure_of_merit = get_figure_of_merit(v11);
    v18 = 0;
    do
    {
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = a1;
      }

      v18 = *v20;
    }

    while (*v20 && figure_of_merit >= get_figure_of_merit(*v20));
    *v11 = v18;
    if (v19)
    {
      *v19 = v11;
    }

    else
    {
      *a1 = v11;
    }
  }

  else
  {
    v15 = __error();
    pcap_fmt_errmsg_for_errno(a5, 0x100uLL, *v15, "malloc");
  }

  return v11;
}

uint64_t get_figure_of_merit(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 0x38) == 0x20)
  {
    v2 = ~(v1 << 29) & 0xC0000000 | 0x20000000;
  }

  else
  {
    v2 = ~(v1 << 29) & 0xC0000000;
  }

  v3 = v2 & 0xEFFFFFFF | ((v1 & 1) << 28);
  if (!strcmp(*(a1 + 8), "any"))
  {
    return v3 | 0x8000000;
  }

  else
  {
    return v3;
  }
}

char *__cdecl pcap_lookupdev(char *a1)
{
  if (pcap_new_api)
  {
    v2 = 0;
    strcpy(a1, "pcap_lookupdev() is deprecated and is not supported in programs calling pcap_init()");
  }

  else
  {
    v6 = 0;
    if (pcap_findalldevs(&v6, a1) == -1)
    {
      return 0;
    }

    else
    {
      v3 = v6;
      if (!v6 || (v6->flags & 1) != 0)
      {
        v2 = 0;
        strcpy(a1, "no suitable device found");
      }

      else
      {
        name = v6->name;
        v2 = &pcap_lookupdev_device;
        __strlcpy_chk();
      }

      pcap_freealldevs(v3);
    }
  }

  return v2;
}

int pcap_lookupnet(const char *a1, bpf_u_int32 *a2, bpf_u_int32 *a3, char *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (!a1 || !strcmp(a1, "any"))
  {
    result = 0;
    *a3 = 0;
    *a2 = 0;
  }

  else
  {
    v7 = socket(2, 2, 0);
    if (v7 < 0)
    {
      v12 = __error();
      pcap_fmt_errmsg_for_errno(a4, 0x100uLL, *v12, "socket");
LABEL_16:
      result = -1;
      goto LABEL_23;
    }

    v8 = v7;
    v16 = 0u;
    v17 = 0u;
    __strlcpy_chk();
    if ((ioctl(v8, 0xC0206921uLL, &v16) & 0x80000000) == 0)
    {
      *a2 = DWORD1(v17);
      v16 = 0u;
      v17 = 0u;
      __strlcpy_chk();
      if ((ioctl(v8, 0xC0206925uLL, &v16) & 0x80000000) == 0)
      {
        close(v8);
        v9 = DWORD1(v17);
        *a3 = DWORD1(v17);
        if (v9)
        {
LABEL_22:
          result = 0;
          *a2 &= v9;
          goto LABEL_23;
        }

        v10 = *a2;
        if ((*a2 & 0x80000000) == 0)
        {
          v9 = -16777216;
LABEL_21:
          *a3 = v9;
          goto LABEL_22;
        }

        if (v10 >> 30 == 2)
        {
          v9 = -65536;
          goto LABEL_21;
        }

        if (v10 >> 29 == 6)
        {
          v9 = -256;
          goto LABEL_21;
        }

        snprintf(a4, 0x100uLL, "inet class for 0x%x unknown", *a2);
        goto LABEL_16;
      }

      v13 = *__error();
      pcap_fmt_errmsg_for_errno(a4, 0x100uLL, v13, "SIOCGIFNETMASK: %s");
      goto LABEL_15;
    }

    if (*__error() != 49)
    {
      v14 = *__error();
      pcap_fmt_errmsg_for_errno(a4, 0x100uLL, v14, "SIOCGIFADDR: %s");
LABEL_15:
      close(v8);
      goto LABEL_16;
    }

    *a3 = 0;
    *a2 = 0;
    close(v8);
    result = 0;
  }

LABEL_23:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

pcap_t *__cdecl pcap_create(const char *a1, char *a2)
{
  if (!a1)
  {
    a1 = "any";
  }

  v3 = strdup(a1);
  v4 = v3;
  if (v3)
  {
    v7 = 0;
    result = pktap_create(v3, a2, &v7);
    if (v7)
    {
      if (result)
      {
LABEL_6:
        *(result + 15) = v4;
        return result;
      }
    }

    else
    {
      pcap_create_interface(v4, a2);
      if (result)
      {
        goto LABEL_6;
      }
    }

    free(v4);
  }

  else
  {
    v6 = __error();
    pcap_fmt_errmsg_for_errno(a2, 0x100uLL, *v6, "malloc");
  }

  return 0;
}

double pcap_create_common(char *a1, size_t a2, uint64_t a3)
{
  v3 = pcap_alloc_pcap_t(a1, a2, a3);
  if (v3)
  {
    *(v3 + 100) = pcap_cant_set_rfmon;
    *(v3 + 107) = pcap_setnonblock_unactivated;
    *v3 = pcap_read_not_initialized;
    *(v3 + 101) = pcap_inject_not_initialized;
    *(v3 + 103) = pcap_setfilter_not_initialized;
    *(v3 + 104) = pcap_setdirection_not_initialized;
    *(v3 + 105) = pcap_set_datalink_not_initialized;
    *(v3 + 106) = pcap_getnonblock_not_initialized;
    *(v3 + 108) = pcap_stats_not_initialized;
    *(v3 + 111) = pcap_cleanup_live_common;
    *(v3 + 110) = pcap_oneshot;
    *(v3 + 109) = pcap_breakloop_common;
    v3[24] = 0;
    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    v3[36] = 0;
    *&result = 0xFFFFFFFFLL;
    *(v3 + 19) = 0xFFFFFFFFLL;
    v3[43] = 0;
  }

  return result;
}

_DWORD *pcap_alloc_pcap_t(char *a1, size_t count, uint64_t a3)
{
  v5 = malloc_type_calloc(count, 1uLL, 0xDD21F0A2uLL);
  v6 = v5;
  if (v5)
  {
    v5[4] = -1;
    v5[44] = -1;
    *(v5 + 23) = 0;
    *(v5 + 6) = v5 + a3;
  }

  else
  {
    v7 = __error();
    pcap_fmt_errmsg_for_errno(a1, 0x100uLL, *v7, "malloc");
  }

  return v6;
}

uint64_t pcap_check_activated(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 0;
  }

  strcpy((a1 + 208), "can't perform  operation on activated capture");
  return 0xFFFFFFFFLL;
}

int pcap_set_snaplen(pcap_t *a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    *(a1 + 24) = a2;
  }

  return v2;
}

int pcap_set_promisc(pcap_t *a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    *(a1 + 34) = a2;
  }

  return v2;
}

int pcap_set_rfmon(pcap_t *a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    *(a1 + 35) = a2;
  }

  return v2;
}

int pcap_set_timeout(pcap_t *a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return v2;
}

int pcap_set_tstamp_type(pcap_t *a1, int a2)
{
  if (*(a1 + 28))
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  if (a2 < 0)
  {
    return 3;
  }

  v3 = *(a1 + 120);
  if (!v3)
  {
    if (!a2)
    {
      v2 = 0;
      *(a1 + 38) = 0;
      return v2;
    }

    return 3;
  }

  if (v3 < 1)
  {
    return 3;
  }

  v4 = *(a1 + 61);
  while (1)
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 3;
    }
  }

  v2 = 0;
  *(a1 + 38) = a2;
  return v2;
}

int pcap_set_immediate_mode(pcap_t *a1, int a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    *(a1 + 36) = a2;
  }

  return v2;
}

int pcap_set_buffer_size(pcap_t *a1, int a2)
{
  if (*(a1 + 28))
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  else
  {
    v2 = 0;
    if (a2 >= 1)
    {
      *(a1 + 33) = a2;
    }
  }

  return v2;
}

int pcap_set_tstamp_precision(pcap_t *a1, int a2)
{
  if (*(a1 + 28))
  {
    strcpy(a1 + 208, "can't perform  operation on activated capture");
    return -4;
  }

  if (a2 < 0)
  {
    return -12;
  }

  v3 = *(a1 + 124);
  if (!v3)
  {
    if (!a2)
    {
      v2 = 0;
      *(a1 + 39) = 0;
      return v2;
    }

    return -12;
  }

  if (v3 < 1)
  {
    return -12;
  }

  v4 = *(a1 + 63);
  while (1)
  {
    v5 = *v4++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return -12;
    }
  }

  v2 = 0;
  *(a1 + 39) = a2;
  return v2;
}

int pcap_activate(pcap_t *a1)
{
  if (!*(a1 + 28))
  {
    v3 = (*(a1 + 99))(a1);
    v2 = v3;
    if (v3 < 0)
    {
      if (!*(a1 + 208))
      {
        v4 = pcap_statustostr(v3);
        snprintf(a1 + 208, 0x100uLL, "%s", v4);
      }
    }

    else
    {
      if (!*(a1 + 37) || (v2 = (*(a1 + 107))(a1, 1), (v2 & 0x80000000) == 0))
      {
        *(a1 + 28) = 1;
        return v2;
      }

      (*(a1 + 111))(a1);
    }

    *a1 = pcap_read_not_initialized;
    *(a1 + 101) = pcap_inject_not_initialized;
    *(a1 + 103) = pcap_setfilter_not_initialized;
    *(a1 + 104) = pcap_setdirection_not_initialized;
    *(a1 + 105) = pcap_set_datalink_not_initialized;
    *(a1 + 106) = pcap_getnonblock_not_initialized;
    *(a1 + 108) = pcap_stats_not_initialized;
    *(a1 + 111) = pcap_cleanup_live_common;
    *(a1 + 110) = pcap_oneshot;
    *(a1 + 109) = pcap_breakloop_common;
    return v2;
  }

  strcpy(a1 + 208, "can't perform  operation on activated capture");
  return -4;
}

const char *__cdecl pcap_statustostr(int a1)
{
  v1 = a1 + 12;
  if (a1 + 12) < 0x10 && ((0xEFFFu >> v1))
  {
    return off_29EF6CFE0[v1];
  }

  v2 = pcap_statustostr_ebuf;
  snprintf(pcap_statustostr_ebuf, 0x1AuLL, "Unknown error: %d", a1);
  return v2;
}

pcap_t *__cdecl pcap_open_live(const char *a1, int a2, int a3, int a4, char *a5)
{
  v9 = pcap_create(a1, a5);
  v10 = v9;
  if (v9)
  {
    if (*(v9 + 28))
    {
      strcpy(v9 + 208, "can't perform  operation on activated capture");
      v11 = -4;
      goto LABEL_4;
    }

    *(v9 + 24) = a2;
    *(v9 + 34) = a3;
    *(v9 + 32) = a4;
    *(v9 + 29) = 1;
    v11 = pcap_activate(v9);
    if ((v11 & 0x80000000) == 0)
    {
      return v10;
    }

    if (v11 > -6)
    {
      if (v11 != -5)
      {
        if (v11 == -1)
        {
          snprintf(a5, 0x100uLL, "%s: %.*s");
          goto LABEL_5;
        }

LABEL_4:
        pcap_statustostr(v11);
        snprintf(a5, 0x100uLL, "%s: %s");
LABEL_5:
        pcap_close(v10);
        return 0;
      }
    }

    else if (v11 != -11 && v11 != -8)
    {
      goto LABEL_4;
    }

    pcap_statustostr(v11);
    snprintf(a5, 0x100uLL, "%s: %s (%.*s)");
    goto LABEL_5;
  }

  return v10;
}

void pcap_close(pcap_t *a1)
{
  (*(a1 + 111))();
  v2 = *(a1 + 15);
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

_DWORD *pcap_open_offline_common(char *a1, size_t a2, uint64_t a3)
{
  result = pcap_alloc_pcap_t(a1, a2, a3);
  if (result)
  {
    result[39] = 0;
  }

  return result;
}

int pcap_datalink(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 25);
  }

  else
  {
    return -3;
  }
}

int pcap_datalink_ext(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 26);
  }

  else
  {
    return -3;
  }
}

int pcap_list_datalinks(pcap_t *a1, int **a2)
{
  if (!*(a1 + 28))
  {
    return -3;
  }

  v4 = *(a1 + 117);
  if (v4)
  {
    v5 = malloc_type_calloc(4uLL, v4, 0x100004052888210uLL);
    *a2 = v5;
    if (v5)
    {
      memcpy(v5, *(a1 + 59), 4 * *(a1 + 117));
      return *(a1 + 117);
    }
  }

  else
  {
    v7 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    *a2 = v7;
    if (v7)
    {
      *v7 = *(a1 + 25);
      return 1;
    }
  }

  v8 = __error();
  pcap_fmt_errmsg_for_errno(a1 + 208, 0x101uLL, *v8, "malloc");
  return -1;
}

const char *__cdecl pcap_datalink_val_to_name(int a1)
{
  if (a1 == 151)
  {
    return "PCAPNG";
  }

  v3 = &dword_29EF6C0F0;
  do
  {
    result = *(v3 - 2);
    if (!result)
    {
      break;
    }

    v4 = *v3;
    v3 += 6;
  }

  while (v4 != a1);
  return result;
}

uint64_t pcap_strcasecmp(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v2 = *a1;
    v3 = charmap[v2] - charmap[*a2];
    if (v3)
    {
      break;
    }

    ++a2;
    ++a1;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

int pcap_datalink_name_to_val(const char *a1)
{
  v1 = 0;
  v2 = "PCAPNG";
  v3 = dlt_choices;
  do
  {
    for (i = a1; ; ++i)
    {
      v5 = *v2;
      if (charmap[v5] != charmap[*i])
      {
        break;
      }

      ++v2;
      if (!v5)
      {
        return *(v3 + 4);
      }
    }

    ++v1;
    v3 = &dlt_choices[3 * v1];
    v2 = *v3;
  }

  while (*v3);
  return -1;
}

const char *__cdecl pcap_datalink_val_to_description(int a1)
{
  for (i = off_29EF6C0E0; *(i - 2) != a1; i += 3)
  {
    if (!*i)
    {
      return 0;
    }
  }

  return *(i - 2);
}

const char *__cdecl pcap_datalink_val_to_description_or_dlt(int a1)
{
  v1 = off_29EF6C0E0;
  while (*(v1 - 2) != a1)
  {
    v2 = *v1;
    v1 += 3;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = *(v1 - 2);
  if (v3)
  {
    return v3;
  }

LABEL_6:
  v3 = pcap_datalink_val_to_description_or_dlt_unkbuf;
  snprintf(pcap_datalink_val_to_description_or_dlt_unkbuf, 0x28uLL, "DLT %u", a1);
  return v3;
}

int pcap_tstamp_type_name_to_val(const char *a1)
{
  v1 = 0;
  v2 = "host";
  v3 = tstamp_type_choices;
  do
  {
    for (i = a1; ; ++i)
    {
      v5 = *v2;
      if (charmap[v5] != charmap[*i])
      {
        break;
      }

      ++v2;
      if (!v5)
      {
        return *(v3 + 4);
      }
    }

    ++v1;
    v3 = &tstamp_type_choices[3 * v1];
    v2 = *v3;
  }

  while (v1 != 6);
  return -1;
}

const char *__cdecl pcap_tstamp_type_val_to_name(int a1)
{
  if (!a1)
  {
    return "host";
  }

  v1 = &dword_29EF6CF60;
  v2 = 6;
  do
  {
    v3 = v1;
    if (!--v2)
    {
      break;
    }

    v1 += 6;
  }

  while (*v3 != a1);
  return *(v3 - 2);
}

const char *__cdecl pcap_tstamp_type_val_to_description(int a1)
{
  v1 = &dword_29EF6CF48;
  v2 = 6;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

int pcap_snapshot(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 24);
  }

  else
  {
    return -3;
  }
}

int pcap_is_swapped(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 14);
  }

  else
  {
    return -3;
  }
}

int pcap_major_version(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 22);
  }

  else
  {
    return -3;
  }
}

int pcap_minor_version(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 23);
  }

  else
  {
    return -3;
  }
}

int pcap_bufsize(pcap_t *a1)
{
  if (*(a1 + 28))
  {
    return *(a1 + 5);
  }

  else
  {
    return -3;
  }
}

int pcap_get_selectable_fd_list(pcap_t *a1, int **a2)
{
  v3 = *(a1 + 226);
  if (v3)
  {
    v4 = (4 * v3);
    v5 = *(a1 + 112);
  }

  else
  {
    v5 = a1 + 176;
    v4 = 4;
  }

  v6 = malloc_type_malloc(v4, 0xFEA6FDE4uLL);
  *a2 = v6;
  if (v6)
  {
    memcpy(v6, v5, v4);
    return v4 >> 2;
  }

  else
  {
    LODWORD(v7) = -1;
  }

  return v7;
}

int pcap_getnonblock(pcap_t *a1, char *a2)
{
  v4 = (*(a1 + 106))();
  if (v4 == -1)
  {
    strlcpy(a2, a1 + 208, 0x100uLL);
  }

  return v4;
}

uint64_t pcap_getnonblock_fd(uint64_t a1)
{
  v2 = fcntl(*(a1 + 16), 3, 0);
  if (v2 != -1)
  {
    return (v2 >> 2) & 1;
  }

  v4 = __error();
  pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v4, "F_GETFL");
  return 0xFFFFFFFFLL;
}

uint64_t pcap_setnonblock_fd(uint64_t a1, int a2)
{
  v4 = fcntl(*(a1 + 16), 3, 0);
  if (v4 == -1)
  {
    v6 = "F_GETFL";
  }

  else
  {
    if (fcntl(*(a1 + 16), 4, v4 & 0xFFFFFFFB | (4 * (a2 != 0))) != -1)
    {
      return 0;
    }

    v6 = "F_SETFL";
  }

  v7 = __error();
  pcap_fmt_errmsg_for_errno((a1 + 208), 0x100uLL, *v7, v6);
  return 0xFFFFFFFFLL;
}

int pcap_setdirection(pcap_t *a1, pcap_direction_t a2)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    if (a2 <= PCAP_D_NONE)
    {
      return v2();
    }

    strcpy(a1 + 208, "Invalid direction");
  }

  else
  {
    strcpy(a1 + 208, "Setting direction is not supported on this device");
  }

  return -1;
}

uint64_t pcap_do_addexit()
{
  if (did_atexit)
  {
    return 1;
  }

  if (atexit(pcap_close_all))
  {
    __strlcpy_chk();
    return 0;
  }

  else
  {
    result = 1;
    did_atexit = 1;
  }

  return result;
}

void pcap_close_all()
{
  v0 = pcaps_to_close;
  while (v0)
  {
    pcap_close(v0);
    v1 = pcaps_to_close == v0;
    v0 = pcaps_to_close;
    if (v1)
    {
      abort();
    }
  }
}

uint64_t pcap_add_to_pcaps_to_close(uint64_t result)
{
  *(result + 80) = pcaps_to_close;
  pcaps_to_close = result;
  return result;
}

uint64_t pcap_remove_from_pcaps_to_close(uint64_t result)
{
  v1 = pcaps_to_close;
  if (pcaps_to_close)
  {
    if (pcaps_to_close == result)
    {
      v3 = 0;
LABEL_9:
      v4 = *(v1 + 80);
      v5 = (v3 + 80);
      if (!v3)
      {
        v5 = &pcaps_to_close;
      }

      *v5 = v4;
    }

    else
    {
      v2 = pcaps_to_close;
      while (1)
      {
        v1 = *(v2 + 80);
        if (!v1)
        {
          break;
        }

        v3 = v2;
        v2 = *(v2 + 80);
        if (v1 == result)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

void pcap_cleanup_live_common(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 472);
  if (v3)
  {
    free(v3);
    *(a1 + 472) = 0;
    *(a1 + 468) = 0;
  }

  v4 = *(a1 + 488);
  if (v4)
  {
    free(v4);
    *(a1 + 488) = 0;
    *(a1 + 480) = 0;
  }

  v5 = *(a1 + 504);
  if (v5)
  {
    free(v5);
    *(a1 + 504) = 0;
    *(a1 + 496) = 0;
  }

  pcap_freecode((a1 + 192));
  v6 = *(a1 + 16);
  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
    *(a1 + 16) = -1;
  }

  *(a1 + 176) = -1;

  pcap_darwin_cleanup(a1);
}

int pcap_sendpacket(pcap_t *a1, const u_char *a2, int a3)
{
  if (a3 <= 0)
  {
    v5 = __error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, *v5, "The number of bytes to be sent must be positive");
    return -1;
  }

  else if ((*(a1 + 101))(a1, a2) == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int pcap_inject(pcap_t *a1, const void *a2, size_t a3)
{
  if (a3 >> 31)
  {
    v4 = *__error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v4, "More than %d bytes cannot be injected");
    return -1;
  }

  if (!a3)
  {
    v7 = *__error();
    pcap_fmt_errmsg_for_errno(a1 + 208, 0x100uLL, v7, "The number of bytes to be injected must not be zero");
    return -1;
  }

  v5 = *(a1 + 101);

  return v5();
}