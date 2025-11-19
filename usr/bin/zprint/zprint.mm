void start(int a1, char **a2)
{
  names = 0;
  namesCnt = 0;
  info = 0;
  infoCnt = 0;
  memory_info = 0;
  memory_infoCnt = 0;
  v121 = 0;
  signal(2, sub_10000178C);
  v4 = *a2;
  v5 = strrchr(*a2, 47);
  if (v5)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = v4;
  }

  qword_10000C200 = v6;
  v7 = 1;
  if (a1 < 2)
  {
    goto LABEL_56;
  }

  v8 = 0;
  v118 = a1;
  v9 = dword_10000C038;
  v10 = a2 + 1;
  v115 = a1;
  v11 = a1 - 1;
  while (1)
  {
    v12 = v10[v8];
    v13 = *v12;
    if (v13 != 45)
    {
      goto LABEL_35;
    }

    if (v12[1] == 100 && !v12[2])
    {
      byte_10000C208 = 1;
      goto LABEL_40;
    }

    if (v12[1] == 116 && !v12[2])
    {
      byte_10000C20C = 1;
      goto LABEL_40;
    }

    if (v12[1] == 84 && !v12[2])
    {
      byte_10000C20C = 0;
      goto LABEL_40;
    }

    if (v12[1] == 119 && !v12[2])
    {
      byte_10000C210 = 1;
      goto LABEL_40;
    }

    if (v12[1] == 87 && !v12[2])
    {
      byte_10000C210 = 0;
      goto LABEL_40;
    }

    if (v12[1] == 108 && !v12[2])
    {
      byte_10000C214 = 0;
      goto LABEL_40;
    }

    if (v12[1] == 76 && !v12[2])
    {
      byte_10000C214 = 1;
      goto LABEL_40;
    }

    if (v12[1] == 115 && !v12[2])
    {
      byte_10000C218 = 1;
      goto LABEL_40;
    }

    if (v12[1] == 83 && !v12[2])
    {
      byte_10000C218 = 0;
      goto LABEL_40;
    }

    if (v12[1] == 99 && !v12[2])
    {
      byte_10000C21C = 0;
      goto LABEL_40;
    }

    if (v12[1] == 67 && !v12[2])
    {
      byte_10000C21C = 1;
      goto LABEL_40;
    }

    if (v12[1] == 104 && !v12[2])
    {
      v98 = &__stdoutp;
LABEL_181:
      sub_10000179C(*v98);
    }

    if (v12[1] == 72 && !v12[2])
    {
      byte_10000C220 = 1;
      goto LABEL_40;
    }

    if (v12[1] == 107 && !v12[2])
    {
      v9 |= 0x3Eu;
    }

    else
    {
LABEL_35:
      if (!strcmp(v10[v8], "-kt"))
      {
        v9 |= 0x3Cu;
      }

      else
      {
        if (strcmp(v12, "-kd"))
        {
          if (v13 == 45)
          {
            if (v12[1] == 45 && !v12[2])
            {
              v7 = v8 + 2;
              goto LABEL_55;
            }

LABEL_180:
            v98 = &__stderrp;
            goto LABEL_181;
          }

          v7 = v8 + 1;
LABEL_55:
          a1 = v118;
LABEL_56:
          if (a1 - v7 == 1)
          {
            qword_10000C228 = a2[v7];
            v14 = strlen(qword_10000C228);
          }

          else
          {
            if (a1 != v7)
            {
              goto LABEL_180;
            }

            v14 = 0;
            qword_10000C228 = "";
          }

          qword_10000C230 = v14;
          if (byte_10000C208 == 1)
          {
            byte_10000C218 = 0;
            byte_10000C21C = 0;
            byte_10000C220 = 0;
          }

          if (byte_10000C210 == 1)
          {
            byte_10000C198 = 1;
            byte_10000C1B8 = 1;
          }

          if (byte_10000C20C == 1)
          {
            byte_10000C1D8 = 1;
          }

          v15 = 0;
          v16 = 0;
          v105 = 0;
          v103 = 0;
          v17 = &off_10000C000;
          while (1)
          {
            v18 = mach_host_self();
            v19 = mach_memory_info(v18, &names, &namesCnt, &info, &infoCnt, &memory_info, &memory_infoCnt);
            if (v19)
            {
              break;
            }

            v20 = namesCnt;
            if (namesCnt != infoCnt)
            {
              fprintf(__stderrp, "%s: mach_zone_name/ mach_zone_info: counts not equal?\n");
              goto LABEL_194;
            }

            if (dword_10000C038 != 1)
            {
              v17[60] = malloc_type_calloc(0x24uLL, 0x50uLL, 0x10000404247E4FDuLL);
              qword_10000C1E8 = malloc_type_calloc(0x24uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
              if (!qword_10000C1E8 || !v17[60])
              {
                fprintf(__stderrp, "%s: calloc failed to allocate memory\n");
                goto LABEL_194;
              }

              v20 += 36;
            }

            if (v105)
            {
              v21 = infoCnt;
            }

            else
            {
              v15 = malloc_type_malloc(v20, 0x100004077774924uLL);
              v103 = malloc_type_malloc(infoCnt << 6, 0x1000040FA0F61DDuLL);
              v21 = infoCnt;
              qword_10000C1F0 = &v15[infoCnt];
              if (!v15 || !v103)
              {
LABEL_191:
                fprintf(__stderrp, "%s: malloc failed to allocate memory\n");
                goto LABEL_194;
              }
            }

            v109 = v21;
            if (v21 < 1)
            {
              v56 = 1;
            }

            else
            {
              v120 = v15;
              v102 = v16;
              v22 = 0;
              v104 = 0;
              v23 = names;
              v24 = info;
              v25 = qword_10000C228;
              v26 = qword_10000C230;
              v119 = names;
              v27 = v103;
              v28 = v21;
              do
              {
                v120[v22] = 0;
                v29 = &v119[v22];
                v30 = strnlen(v29->mzn_name, 0x50uLL);
                if (v26 > v30)
                {
                  goto LABEL_80;
                }

                v116 = v27;
                v32 = v28;
                v33 = v30 - v26 + 1;
                v34 = v23;
                while (strncmp(v25, v23->mzn_name, v26))
                {
                  v23 = (v23 + 1);
                  if (!--v33)
                  {
                    v31 = 0;
                    v23 = v34;
                    v28 = v32;
                    v27 = v116;
                    goto LABEL_88;
                  }
                }

                mzi_cur_size = v24->mzi_cur_size;
                v23 = v34;
                v28 = v32;
                v27 = v116;
                if ((v105 & 1) != 0 && mzi_cur_size <= *(v116 + 1) && (byte_10000C20C != 1 || *(v116 + 5) >= v24->mzi_sum_size >> 1))
                {
LABEL_80:
                  v31 = 0;
                  goto LABEL_88;
                }

                *(v116 + 1) = mzi_cur_size;
                *(v116 + 5) = v24->mzi_sum_size;
                v31 = 1;
                v120[v22] = 1;
                v104 = 1;
LABEL_88:
                v36 = dword_10000C038;
                if (dword_10000C038 != 1)
                {
                  v106 = v31;
                  v37 = 0;
                  *__s = *v29->mzn_name;
                  v38 = *&v29->mzn_name[16];
                  v39 = *&v29->mzn_name[32];
                  v40 = *&v29->mzn_name[64];
                  v131 = *&v29->mzn_name[48];
                  v132 = v40;
                  v129 = v38;
                  v130 = v39;
                  v110 = *&v24->mzi_count;
                  mzi_elem_size = v24->mzi_elem_size;
                  v117 = v23;
                  mzi_alloc_size = v24->mzi_alloc_size;
                  mzi_sum_size = v24->mzi_sum_size;
                  mzi_max_size = v24->mzi_max_size;
                  v42 = *&v29->mzn_name[48];
                  v135 = *&v29->mzn_name[32];
                  v136 = v42;
                  v44 = *v29->mzn_name;
                  v43 = *&v29->mzn_name[16];
                  mzi_exhaustible = v24->mzi_exhaustible;
                  v108 = mzi_alloc_size;
                  mzi_collectable = v24->mzi_collectable;
                  v137 = *&v29->mzn_name[64];
                  __s1 = v44;
                  v134 = v43;
                  while (1)
                  {
                    v45 = strlen(*(&off_10000C000 + v37 + 1));
                    if (!strncmp(&__s1, *(&off_10000C000 + v37 + 1), v45))
                    {
                      break;
                    }

                    if (++v37 == 6)
                    {
                      goto LABEL_100;
                    }
                  }

                  if ((v36 >> v37))
                  {
                    v46 = qword_10000C1F8;
                    v47 = qword_10000C1E8;
                    v28 = v109;
                    if (!qword_10000C1F8)
                    {
                      goto LABEL_99;
                    }

                    v48 = 0;
                    v49 = (qword_10000C1E8 + 24);
                    do
                    {
                      v50 = *v49;
                      v49 += 8;
                      if (v50 == mzi_elem_size)
                      {
                        v51 = v106;
                        goto LABEL_105;
                      }

                      ++v48;
                    }

                    while (qword_10000C1F8 != v48);
                    if (qword_10000C1F8 >= 0x23)
                    {
                      __assert_rtn("get_kalloc_info_idx", "zprint.c", 818, "kalloc_info_idx < KALLOC_SIZECLASSES - 1");
                    }

LABEL_99:
                    ++qword_10000C1F8;
                    v51 = v120[v22];
                    v48 = v46;
LABEL_105:
                    v52 = qword_10000C1E0;
                    if (v51)
                    {
                      *(qword_10000C1F0 + v48) = 1;
                      v120[v22] = 0;
                    }

                    v53 = (v47 + (v48 << 6));
                    *v53 = vaddq_s64(*v53, v110);
                    if (v48 == qword_10000C1F8 - 1)
                    {
                      v54 = strlen(__s);
                      if (v54)
                      {
                        v55 = &__s[v54 + 1];
                        while (*(v55 - 1) != 46)
                        {
                          --v55;
                          if (!--v54)
                          {
                            goto LABEL_112;
                          }
                        }
                      }

                      else
                      {
LABEL_112:
                        v55 = 0;
                      }

                      snprintf((v52 + 80 * v48), 0x50uLL, "kalloc.%s", v55);
                      v53[1].i64[1] = mzi_elem_size;
                      v53[2].i64[0] = v108;
                      v53[3].i64[0] = mzi_exhaustible;
                      v25 = qword_10000C228;
                      v26 = qword_10000C230;
                    }

                    if (mzi_collectable)
                    {
                      v53[3].i64[1] = ((v53[3].i64[1] & 0xFFFFFFFFFFFFFFFELL) + mzi_collectable) & 0xFFFFFFFFFFFFFFFELL | v53[3].i64[1] & 1;
                    }

                    v53[2].i64[1] += mzi_sum_size;
                    v53[1].i64[0] += mzi_max_size;
                  }

                  else
                  {
LABEL_100:
                    v28 = v109;
                  }

                  v23 = v117;
                }

                ++v24;
                v27 += 64;
                ++v22;
                ++v23;
              }

              while (v22 != v28);
              v56 = v104 == 0;
              v16 = v102;
              v15 = v120;
              v17 = &off_10000C000;
            }

            if (byte_10000C218 == 1)
            {
              v57 = infoCnt;
              v16 = dword_10000C038 != 1;
              if (dword_10000C038 == 1)
              {
                v58 = names;
                v60 = info;
              }

              else
              {
                v58 = malloc_type_malloc(80 * (infoCnt + 36), 0x10000404247E4FDuLL);
                v59 = malloc_type_malloc((v57 + 36) << 6, 0x1000040FA0F61DDuLL);
                if (!v58)
                {
                  goto LABEL_191;
                }

                v60 = v59;
                if (!v59)
                {
                  goto LABEL_191;
                }

                memcpy(v58, names, 80 * v57);
                memcpy(&v58[v57], qword_10000C1E0, 0xB40uLL);
                memcpy(v60, info, v57 << 6);
                memcpy(&v60[v57], qword_10000C1E8, 0x900uLL);
                sub_100002AB4(names, info, v57, 1);
                LODWORD(v57) = v57 + 36;
                v17 = &off_10000C000;
              }

              if (v57 != 1)
              {
                v61 = 0;
                v62 = v15 + 1;
                v63 = v58 + 1;
                v64 = v60 + 1;
                v65 = v57 - 1;
                do
                {
                  v66 = v61 + 1;
                  if (v61 + 1 < v57)
                  {
                    v67 = &v58[v61];
                    v68 = v64;
                    v69 = v65;
                    v70 = v63;
                    v71 = v62;
                    v72 = &v60[v61];
                    do
                    {
                      if (v68->mzi_cur_size - v68->mzi_count * v68->mzi_elem_size > v72->mzi_cur_size - v72->mzi_count * v72->mzi_elem_size)
                      {
                        *__s = *&v72->mzi_count;
                        v129 = *&v72->mzi_max_size;
                        v130 = *&v72->mzi_alloc_size;
                        v131 = *&v72->mzi_exhaustible;
                        v74 = *&v68->mzi_alloc_size;
                        v73 = *&v68->mzi_exhaustible;
                        v75 = *&v68->mzi_max_size;
                        *&v72->mzi_count = *&v68->mzi_count;
                        *&v72->mzi_max_size = v75;
                        *&v72->mzi_alloc_size = v74;
                        *&v72->mzi_exhaustible = v73;
                        v76 = *__s;
                        v77 = v129;
                        v78 = v131;
                        *&v68->mzi_alloc_size = v130;
                        *&v68->mzi_exhaustible = v78;
                        *&v68->mzi_count = v76;
                        *&v68->mzi_max_size = v77;
                        v79 = *&v67->mzn_name[64];
                        v136 = *&v67->mzn_name[48];
                        v137 = v79;
                        v80 = *&v67->mzn_name[32];
                        v134 = *&v67->mzn_name[16];
                        v135 = v80;
                        __s1 = *v67->mzn_name;
                        v81 = *&v70->mzn_name[16];
                        v82 = *&v70->mzn_name[32];
                        v83 = *&v70->mzn_name[64];
                        *&v67->mzn_name[48] = *&v70->mzn_name[48];
                        *&v67->mzn_name[64] = v83;
                        *&v67->mzn_name[16] = v81;
                        *&v67->mzn_name[32] = v82;
                        *v67->mzn_name = *v70->mzn_name;
                        *v70->mzn_name = __s1;
                        v84 = v134;
                        v85 = v135;
                        v86 = v137;
                        *&v70->mzn_name[48] = v136;
                        *&v70->mzn_name[64] = v86;
                        *&v70->mzn_name[16] = v84;
                        *&v70->mzn_name[32] = v85;
                        v87 = v15[v61];
                        v15[v61] = *v71;
                        *v71 = v87;
                      }

                      ++v71;
                      ++v70;
                      ++v68;
                      --v69;
                    }

                    while (v69);
                  }

                  ++v62;
                  ++v63;
                  --v65;
                  ++v64;
                  ++v61;
                }

                while (v66 != v57 - 1);
              }

              names = v58;
              info = v60;
              infoCnt = v57;
            }

            v121 = 0;
            if (!v56)
            {
              if ((byte_10000C21C & 1) == 0)
              {
                if (v105)
                {
                  putchar(10);
                }

                if ((byte_10000C220 & 1) == 0)
                {
                  v88 = &byte_10000C058;
                  v89 = 13;
                  do
                  {
                    if (*v88 == 1)
                    {
                      printf("%*s ", *(v88 - 1) * *(v88 - 2), *(v88 - 3));
                    }

                    v88 += 32;
                    --v89;
                  }

                  while (v89);
                  putchar(10);
                  v90 = 0;
                  v91 = &dword_10000C050;
                  v92 = 13;
                  do
                  {
                    if (*(v91 + 8) == 1)
                    {
                      printf("%*s ", v91[1] * *v91, *(v91 - 1));
                      v90 += *v91 + 1;
                    }

                    v91 += 8;
                    --v92;
                  }

                  while (v92);
                  putchar(10);
                  if (v90 >= 1)
                  {
                    do
                    {
                      putchar(45);
                      --v90;
                    }

                    while (v90);
                  }

                  putchar(10);
                  v17 = &off_10000C000;
                }
              }

              sub_10000191C(names, info, infoCnt, v15, &v121);
              if ((byte_10000C218 & 1) == 0 && dword_10000C038 != 1)
              {
                sub_10000191C(v17[60], qword_10000C1E8, 0x24u, qword_10000C1F0, &v121);
              }
            }

            v93 = names;
            v94 = info;
            if (((v105 | byte_10000C214) & 1) == 0)
            {
              if (byte_10000C218)
              {
                v95 = sub_10000299C;
              }

              else
              {
                v95 = sub_1000029D0;
              }

              sub_100002000(memory_info, memory_infoCnt, info, names, namesCnt, v121, v95);
              v93 = names;
              v94 = info;
            }

            sub_100002AB4(v93, v94, infoCnt, !v16);
            if (dword_10000C038 != 1)
            {
              v96 = qword_10000C1F0;
              *qword_10000C1F0 = 0u;
              *(v96 + 16) = 0u;
              *(v96 + 32) = 0;
              qword_10000C1F8 = 0;
            }

            if (memory_info)
            {
              if (memory_infoCnt)
              {
                v97 = vm_deallocate(mach_task_self_, memory_info, 176 * memory_infoCnt);
                if (v97)
                {
                  v101 = __stderrp;
                  mach_error_string(v97);
                  fprintf(v101, "%s: vm_deallocate: %s\n");
                  goto LABEL_194;
                }
              }
            }

            if (((byte_10000C210 | byte_10000C20C) & 1) != 0 && (byte_10000C220 & 1) == 0 && (byte_10000C208 & 1) == 0)
            {
              puts("\nZONE TOTALS");
              puts("---------------------------------------------");
              printf("TOTAL SIZE        = %llu\n", qword_10000C238);
              printf("TOTAL USED        = %llu\n", qword_10000C240);
              if (byte_10000C210 == 1)
              {
                printf("TOTAL WASTED      = %llu\n", qword_10000C238 - qword_10000C240);
                printf("TOTAL FRAGMENTED  = %llu\n", qword_10000C248);
                printf("TOTAL COLLECTABLE = %llu\n", qword_10000C250);
              }

              if (byte_10000C20C == 1)
              {
                printf("TOTAL ALLOCS      = %llu\n", qword_10000C258);
              }
            }

            if (byte_10000C208 != 1 || (byte_10000C260 & 1) != 0)
            {
              exit(0);
            }

            v105 = 1;
            sleep(1u);
          }

          if (v19 == 53)
          {
            v100 = __stderrp;
            mach_error_string(53);
            fprintf(v100, "%s: mach_memory_info: %s (entitlement required or rate-limit exceeded)\n");
          }

          else
          {
            v99 = __stderrp;
            if (v19 == 8)
            {
              mach_error_string(8);
              fprintf(v99, "%s: mach_memory_info: %s (try running as root)\n");
            }

            else
            {
              mach_error_string(v19);
              fprintf(v99, "%s: mach_memory_info: %s\n");
            }
          }

LABEL_194:
          exit(1);
        }

        v9 |= 0x12u;
      }
    }

    dword_10000C038 = v9;
LABEL_40:
    if (v11 == ++v8)
    {
      v7 = v115;
      goto LABEL_55;
    }
  }
}

void sub_10000179C(FILE *a1)
{
  fprintf(a1, "usage: %s [-w] [-s] [-c] [-h] [-H] [-t] [-d] [-l] [-L] [-k] [-kt] [-kd] [name]\n\n", qword_10000C200);
  fwrite("\t-w\tshow wasted memory for each zone\n", 0x25uLL, 1uLL, a1);
  fwrite("\t-s\tsort zones by wasted memory\n", 0x20uLL, 1uLL, a1);
  fwrite("\t-c\t(default) display output formatted in columns\n", 0x32uLL, 1uLL, a1);
  fwrite("\t-h\tdisplay this help message\n", 0x1EuLL, 1uLL, a1);
  fwrite("\t-H\thide column names\n", 0x16uLL, 1uLL, a1);
  fwrite("\t-t\tdisplay the total size of allocations over the life of the zone\n", 0x44uLL, 1uLL, a1);
  fwrite("\t-d\tdisplay deltas over time\n", 0x1DuLL, 1uLL, a1);
  fwrite("\t-l\t(default) display wired memory info after zone info\n", 0x38uLL, 1uLL, a1);
  fwrite("\t-L\tdo not show wired memory info, only show zone info\n", 0x37uLL, 1uLL, a1);
  fwrite("\t-k\tcoalesce all kalloc zones for specific size\n", 0x30uLL, 1uLL, a1);
  fwrite("\t-kt\tcoalesce kalloc type/kext zones with default\n", 0x32uLL, 1uLL, a1);
  fwrite("\t-kd\tcoalesce kalloc data zones with default\n", 0x2DuLL, 1uLL, a1);
  fwrite("\nAny option (including default options) can be overridden by specifying the option in upper-case.\n\n", 0x63uLL, 1uLL, a1);
  exit(__stdoutp != a1);
}

uint64_t sub_10000191C(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v5 = a5;
    v8 = result;
    v9 = 0;
    v10 = a3;
    v11 = result;
    v42 = a3;
    while (!*(a4 + v9))
    {
LABEL_71:
      ++v9;
      v11 += 80;
      if (v9 == v10)
      {
        return result;
      }
    }

    v12 = v8 + 80 * v9;
    v13 = (a2 + (v9 << 6));
    if (byte_10000C21C)
    {
      printf("%.*s zone:\n", 80, (v8 + 80 * v9));
      printf("\tcur_size:    %lluK bytes (%llu elements)\n", v13[1] >> 10, v13[1] / v13[3]);
      printf("\tmax_size:    %lluK bytes (%llu elements)\n", v13[2] >> 10, v13[2] / v13[3]);
      printf("\telem_size:   %llu bytes\n", v13[3]);
      printf("\t# of elems:  %llu\n", *v13);
      v15 = v13[3];
      v14 = v13[4];
      if (v15)
      {
        v15 = v14 / v15;
      }

      result = printf("\talloc_size:  %lluK bytes (%llu elements)\n", v14 >> 10, v15);
      if (v13[6])
      {
        result = puts("\tEXHAUSTIBLE");
      }

      if (v13[7])
      {
        result = puts("\tCOLLECTABLE");
      }

      if (byte_10000C210 == 1)
      {
        v16 = *v13 * v13[3];
        qword_10000C240 += v16;
        v17 = v13[1];
        qword_10000C238 += v17;
        v18 = v13[7] >> 1;
        qword_10000C250 += v18;
        v19 = v17 - v16;
        v20 = v19 - v18;
        qword_10000C248 += v19 - v18;
        printf("\t\t\t\t\tWASTED: %llu\n", v19);
        v39 = v20;
        v10 = v42;
        printf("\t\t\t\t\tFRAGMENTED: %llu\n", v39);
        result = printf("\t\t\t\t\tCOLLECTABLE: %llu\n", v18);
      }

      if (byte_10000C20C == 1)
      {
        qword_10000C258 += v13[5];
        result = printf("\t\t\t\t\tTOTAL: %llu\n", qword_10000C258);
      }

LABEL_70:
      *v5 += *v13;
      goto LABEL_71;
    }

    v21 = a4;
    v22 = v8;
    v23 = a2;
    v24 = dword_10000C050;
    v25 = (dword_10000C050 - 1);
    if (dword_10000C050 < 2)
    {
      LODWORD(v26) = 0;
LABEL_24:
      if (v26 != v25)
      {
        v30 = __OFSUB__(v24, v26);
        v31 = v24 - v26;
        v10 = v42;
        if (!((v31 < 0) ^ v30 | (v31 == 0)))
        {
          do
          {
            putchar(32);
            --v31;
          }

          while (v31);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v26 = 0;
      do
      {
        v27 = *(v11 + v26);
        if (v27 == 32)
        {
          v28 = 46;
        }

        else
        {
          if (!*(v11 + v26))
          {
            goto LABEL_24;
          }

          v28 = v27;
        }

        putchar(v28);
        ++v26;
      }

      while (v25 != v26);
    }

    if (*(v12 + v25))
    {
      v29 = 36;
    }

    else
    {
      v29 = 32;
    }

    putchar(v29);
    v10 = v42;
LABEL_31:
    a2 = v23;
    if (byte_10000C078 == 1)
    {
      printf(" %*llu", unk_10000C074 * dword_10000C070, v13[3]);
    }

    v8 = v22;
    if (byte_10000C098 == 1)
    {
      printf(" %*lluK", (dword_10000C090 - 1) * unk_10000C094, v13[1] >> 10);
    }

    a4 = v21;
    if (v13[2] <= 0x26259FFFFuLL)
    {
      v5 = a5;
      if (byte_10000C0B8)
      {
        printf(" %*lluK");
      }
    }

    else
    {
      v5 = a5;
      if (byte_10000C0B8)
      {
        printf(" %*s");
      }
    }

    if (byte_10000C0D8 == 1)
    {
      printf(" %*llu", unk_10000C0D4 * dword_10000C0D0, v13[1] / v13[3]);
    }

    v32 = v13[2];
    if (v32 <= 0x26259FFFFLL)
    {
      if (byte_10000C0F8)
      {
        v40 = v32 / v13[3];
        printf(" %*llu");
      }
    }

    else if (byte_10000C0F8)
    {
      printf(" %*s");
    }

    if (byte_10000C118 == 1)
    {
      printf(" %*llu", unk_10000C114 * dword_10000C110, *v13);
    }

    if (byte_10000C138 == 1)
    {
      printf(" %*lluK", (dword_10000C130 - 1) * unk_10000C134, v13[4] >> 10);
    }

    if (byte_10000C158 == 1)
    {
      printf(" %*llu", unk_10000C154 * dword_10000C150, v13[4] / v13[3]);
    }

    v33 = *v13 * v13[3];
    qword_10000C240 += v33;
    v34 = v13[1];
    qword_10000C238 += v34;
    qword_10000C258 += v13[5];
    v35 = v13[7];
    qword_10000C250 += v35 >> 1;
    v36 = v34 - (v33 + (v35 >> 1));
    qword_10000C248 += v36;
    v37 = 67;
    if ((v35 & 1) == 0)
    {
      v37 = 32;
    }

    v38 = 88;
    if (!v13[6])
    {
      v38 = 32;
    }

    printf(" %c%c", v38, v37);
    if (byte_10000C198 == 1)
    {
      if (v36 > 0x3FF)
      {
        printf(" %*lluK");
      }

      else
      {
        printf(" %*lluB");
      }
    }

    if (byte_10000C1B8 == 1)
    {
      if (v35 > 0x7FF)
      {
        printf(" %*lluK");
      }

      else
      {
        printf(" %*lluB");
      }
    }

    if (byte_10000C1D8 == 1)
    {
      if (v13[5] > 0x3FFuLL)
      {
        printf(" %*lluK");
      }

      else
      {
        printf(" %*lluB");
      }
    }

    result = putchar(10);
    goto LABEL_70;
  }

  return result;
}

void sub_100002000(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int (__cdecl *a7)(void *, const void *, const void *))
{
  v67 = a3;
  v11 = a2;
  v12 = a2;
  v13 = __chkstk_darwin();
  v15 = &v66 - v14;
  v69 = qword_10000C238;
  v16 = &off_10000C000;
  qword_10000C268 = v13;
  qword_10000C278 = CSSymbolicatorCreateWithMachKernel();
  qword_10000C280 = v17;
  v18 = OSKextCopyLoadedKextInfo();
  qword_10000C270 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryApplyFunction(v18, sub_1000030F8, qword_10000C270);
  CFRelease(v18);
  v68 = v11;
  if (v11)
  {
    v19 = 0;
    v20 = vdupq_n_s64(v12 - 1);
    v21 = xmmword_100003450;
    v22 = xmmword_100003460;
    v23 = v15 + 8;
    v24 = vdupq_n_s64(4uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v20, v22));
      if (vuzp1_s16(v25, *v20.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v20).i8[2])
      {
        *(v23 - 1) = v19 + 1;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
      {
        *v23 = v19 + 2;
        v23[1] = v19 + 3;
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 += 4;
    }

    while (((v12 + 3) & 0x1FFFFFFFCLL) != v19);
    v74 = a4;
    v75 = a5;
    qsort_r(v15, v12, 4uLL, &v74, a7);
    v66 = a6;
    v26 = 0;
    v11 = 0;
    v71 = 0;
    v73 = 0;
    v70 = a4;
    while (1)
    {
      v27 = *&v15[4 * v26];
      v28 = v16[77] + 176 * v27;
      v29 = *v28;
      if ((*v28 & 3) != 0 && *(v28 + 8) == 2)
      {
        v11 = *(v28 + 16);
      }

      if ((v29 & 0x200) == 0 && (v29 & 0x900) != 0)
      {
        break;
      }

LABEL_42:
      if (++v26 == v12)
      {
        v40 = vcvtd_n_f64_u64(v11, 0xAuLL) * 0.0009765625;
        LODWORD(v11) = v68;
        a6 = v66;
        v41 = v73;
        v42 = v71;
        goto LABEL_45;
      }
    }

    if ((v29 & 0x800) != 0)
    {
      if ((v29 & 0x2000) != 0)
      {
        v31 = *(v28 + 16) / *(v28 + 66);
        goto LABEL_21;
      }

      v30 = *(v28 + 66);
      if (v30 < a5)
      {
        v31 = *(v28 + 16) / *(v67 + (v30 << 6) + 24);
LABEL_21:
        v73 += v31;
      }
    }

    if (*(v28 + 16) > 0x3FFuLL || *(v28 + 56) >= 0x400uLL)
    {
      v32 = sub_100002BB8(v27, a4);
      v33 = qword_10000C228;
      v34 = qword_10000C230;
      v35 = strlen(v32);
      if (qword_10000C230 <= v35)
      {
        v72 = v11;
        v36 = a5;
        v37 = v35 - qword_10000C230 + 1;
        v38 = v32;
        while (strncmp(v33, v38, v34))
        {
          ++v38;
          if (!--v37)
          {
            v16 = &off_10000C000;
            a5 = v36;
            a4 = v70;
            v11 = v72;
            goto LABEL_42;
          }
        }

        if ((v71 & 1) == 0)
        {
          puts("-------------------------------------------------------------------------------------------------------------");
          puts("                                                               kmod          vm        peak               cur");
          puts("wired memory                                                     id         tag        size  waste       size");
          puts("-------------------------------------------------------------------------------------------------------------");
        }

        printf("%-67s", v32);
        free(v32);
        v16 = &off_10000C000;
        printf("%12d", *(qword_10000C268 + 176 * v27 + 64));
        a5 = v36;
        a4 = v70;
        if (*(qword_10000C268 + 176 * v27 + 56))
        {
          printf(" %10lluK");
        }

        else
        {
          printf(" %11s");
        }

        v11 = v72;
        if (*(qword_10000C268 + 176 * v27 + 40))
        {
          printf(" %5lluK");
        }

        else
        {
          printf(" %6s");
        }

        printf(" %9lluK", *(qword_10000C268 + 176 * v27 + 16) >> 10);
        v39 = qword_10000C268 + 176 * v27;
        if ((*(v39 + 1) & 8) == 0)
        {
          qword_10000C238 += *(v39 + 16);
        }

        putchar(10);
        v71 = 1;
      }

      else
      {
        v16 = &off_10000C000;
      }
    }

    else
    {
      v16 = &off_10000C000;
    }

    goto LABEL_42;
  }

  v74 = a4;
  v75 = a5;
  qsort_r(v15, v12, 4uLL, &v74, a7);
  v41 = 0;
  v42 = 0;
  v40 = 0.0;
LABEL_45:
  if (qword_10000C230)
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_50:
    if (v41)
    {
      snprintf(__str, 0x28uLL, "%lld of %lld", v41, a6);
      printf("zone tags%100s\n", __str);
    }

    snprintf(__str, 0x28uLL, "%6.2fM of %6.2fM", qword_10000C238 * 0.0009765625 * 0.0009765625, v40);
    printf("total%104s\n", __str);
    if (!v11)
    {
      goto LABEL_91;
    }

    goto LABEL_53;
  }

  printf("%-67s", "zones");
  printf("%12s", "");
  printf(" %11s", "");
  printf(" %6s", "");
  printf(" %9lluK", v69 >> 10);
  putchar(10);
  if (v42)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (!v11)
  {
    goto LABEL_91;
  }

LABEL_53:
  v43 = 0;
  LODWORD(v73) = 0;
  do
  {
    v44 = *&v15[4 * v43];
    v45 = (v16[77] + 176 * v44);
    v46 = v45[6];
    if (v46)
    {
      v47 = *v45;
      if ((*v45 & 0x200) == 0)
      {
        v48 = v45[2];
        if ((v47 & 0x900) == 0 || v46 != v48)
        {
          v50 = sub_100002BB8(*&v15[4 * v43], 0);
          v51 = qword_10000C228;
          v52 = qword_10000C230;
          v53 = strlen(v50);
          if (qword_10000C230 <= v53)
          {
            v54 = v53 - qword_10000C230 + 1;
            v55 = v50;
            while (strncmp(v51, v55, v52))
            {
              ++v55;
              if (!--v54)
              {
                v16 = &off_10000C000;
                goto LABEL_77;
              }
            }

            if ((v73 & 1) == 0)
            {
              puts("-------------------------------------------------------------------------------------------------------------");
              puts("                                                                        largest        peak               cur");
              puts("maps                                                           free        free        size              size");
              puts("-------------------------------------------------------------------------------------------------------------");
            }

            printf("%-55s", v50);
            free(v50);
            v16 = &off_10000C000;
            if (*(qword_10000C268 + 176 * v44 + 24))
            {
              printf(" %10lluK");
            }

            else
            {
              printf(" %11s");
            }

            if (*(qword_10000C268 + 176 * v44 + 32))
            {
              printf(" %10lluK");
            }

            else
            {
              printf(" %11s");
            }

            if (*(qword_10000C268 + 176 * v44 + 56))
            {
              printf(" %10lluK");
            }

            else
            {
              printf(" %11s");
            }

            printf(" %16lluK", v46 >> 10);
            putchar(10);
            LODWORD(v73) = 1;
          }
        }
      }
    }

LABEL_77:
    ++v43;
  }

  while (v43 != v12);
  if (v68)
  {
    v56 = 0;
    LODWORD(v73) = 0;
    do
    {
      v57 = *&v15[4 * v56];
      v58 = v16[77] + 176 * v57;
      v59 = *(v58 + 16);
      if (v59 && (*(v58 + 1) & 0x10) != 0)
      {
        v60 = sub_100002BB8(v57, 0);
        v61 = qword_10000C228;
        v62 = qword_10000C230;
        v63 = strlen(v60);
        if (qword_10000C230 > v63)
        {
LABEL_86:
          v16 = &off_10000C000;
        }

        else
        {
          v64 = v63 - qword_10000C230 + 1;
          v65 = v60;
          while (strncmp(v61, v65, v62))
          {
            ++v65;
            if (!--v64)
            {
              goto LABEL_86;
            }
          }

          v16 = &off_10000C000;
          if ((v73 & 1) == 0)
          {
            puts("-------------------------------------------------------------------------------------------------------------");
            puts("                                                                                                          cur");
            puts("zone views                                                                                              inuse");
            puts("-------------------------------------------------------------------------------------------------------------");
          }

          printf("%-55s", v60);
          free(v60);
          printf(" %11s", "");
          printf(" %11s", "");
          printf(" %11s", "");
          printf(" %16lluK", v59 >> 10);
          putchar(10);
          LODWORD(v73) = 1;
        }
      }

      ++v56;
    }

    while (v56 != v12);
  }

LABEL_91:
  qword_10000C238 = v69;
}

uint64_t sub_10000299C(uint64_t a1, int *a2, int *a3)
{
  v3 = *(qword_10000C268 + 176 * *a2 + 16);
  v4 = *(qword_10000C268 + 176 * *a3 + 16);
  v5 = v3 > v4;
  v6 = v3 < v4;
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

CFComparisonResult sub_1000029D0(uint64_t a1, int *a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = sub_100002BB8(*a2, *a1);
  v7 = *(a1 + 8);
  v8 = sub_100002BB8(*a3, *a1);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
  v10 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
  v13.length = CFStringGetLength(v9);
  v13.location = 0;
  v11 = CFStringCompareWithOptionsAndLocale(v9, v10, v13, 0x40uLL, 0);
  CFRelease(v9);
  CFRelease(v10);
  free(v6);
  free(v8);
  return v11;
}

void sub_100002AB4(vm_address_t address, void *a2, unsigned int a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    free(address);
LABEL_12:

    free(a2);
    return;
  }

  if (address && a3 && (v6 = vm_deallocate(mach_task_self_, address, 80 * a3)) != 0 || a2 && a3 && (v6 = vm_deallocate(mach_task_self_, a2, a3 << 6)) != 0)
  {
    v7 = __stderrp;
    v8 = qword_10000C200;
    v9 = mach_error_string(v6);
    fprintf(v7, "%s: vm_deallocate: %s\n", v8, v9);
    exit(1);
  }

  if (dword_10000C038 != 1)
  {
    free(qword_10000C1E0);
    a2 = qword_10000C1E8;
    goto LABEL_12;
  }
}

char *sub_100002BB8(int a1, uint64_t a2)
{
  v20 = 0;
  __s = 0;
  v3 = qword_10000C268 + 176 * a1;
  if ((*v3 & 0x400) != 0)
  {
    asprintf(&__s, "%s");
    goto LABEL_8;
  }

  Path = *(v3 + 8);
  v5 = *v3;
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (Path && (v17 = *(v3 + 8), CSSymbolicatorGetSymbolWithAddressAtTime(), (Name = CSSymbolGetName()) != 0))
      {
        asprintf(&__s, "%s", Name);
        CSSymbolicatorGetSourceInfoWithAddressAtTime();
        Path = CSSourceInfoGetPath();
        if (!Path)
        {
          goto LABEL_9;
        }

        LineNumber = CSSourceInfoGetLineNumber();
        printf(" (%s:%d)", Path, LineNumber);
      }

      else
      {
        asprintf(&__s, "site 0x%qx");
      }
    }

    else
    {
      if (v5 == 3)
      {
        v22 = 0;
        if (Path > 0xE)
        {
          asprintf(&v22, "VM_KERN_COUNT_%lld");
        }

        else
        {
          v12 = (&off_100008198)[Path];
LABEL_17:
          asprintf(&v22, "%s");
        }

        goto LABEL_39;
      }

      asprintf(&__s, "");
    }

LABEL_8:
    Path = 0;
    goto LABEL_9;
  }

  if (*v3)
  {
    Value = CFDictionaryGetValue(qword_10000C270, *(v3 + 8));
    if (Value && (v7 = CFDictionaryGetValue(Value, kCFBundleIdentifierKey), CFStringGetCStringPtr(v7, 0x8000100u)))
    {
      asprintf(&__s, "%s");
    }

    else
    {
      asprintf(&__s, "(unloaded kmod)");
    }

LABEL_9:
    v8 = __s;
    if (!__s)
    {
      return v8;
    }

    goto LABEL_10;
  }

  v22 = 0;
  switch(Path)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
      goto LABEL_17;
    default:
      if (Path == 255)
      {
        goto LABEL_17;
      }

      asprintf(&v22, "VM_KERN_MEMORY_%lld");
      break;
  }

LABEL_39:
  Path = 0;
  v8 = v22;
  __s = v22;
  if (!v22)
  {
    return v8;
  }

LABEL_10:
  v9 = *v3;
  if ((*v3 & 0x800) != 0)
  {
    v10 = strlen(v8);
    v22 = 0;
    if ((v9 & 0x2000) != 0)
    {
      asprintf(&v22, "size.%d", *(v3 + 66));
      v8 = __s;
      v11 = v22;
    }

    else
    {
      v11 = (a2 + 80 * *(v3 + 66));
      v22 = v11;
    }

    v13 = strnlen(v11, 0x50uLL);
    if (v13 + v10 <= 0x3D || v13 >= 0x3D)
    {
      v15 = v10;
    }

    else
    {
      v15 = 61 - v13;
    }

    asprintf(&v20, "%.*s[%.*s]", v15, v8, v13, v11);
    free(__s);
    v8 = v20;
    __s = v20;
  }

  if (v8 && Path)
  {
    asprintf(&v20, "%-64s%3ld", v8, Path);
    free(__s);
    return v20;
  }

  return v8;
}

void sub_1000030F8(int a1, CFDictionaryRef theDict, __CFDictionary *a3)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"OSBundleLoadTag");
  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a3, valuePtr, theDict);
}