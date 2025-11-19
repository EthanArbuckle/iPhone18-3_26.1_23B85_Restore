const segment_command_64 *__cdecl getsegbyname(const char *segname)
{
  v2 = _NSGetMachExecuteHeader();
  ncmds = v2->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v4 = &v2[1];
  while (v4->cmd != 25 || strncmp(v4->segname, segname, 0x10uLL))
  {
    v4 = (v4 + v4->cmdsize);
    if (!--ncmds)
    {
      return 0;
    }
  }

  return v4;
}

const section_64 *__cdecl getsectbynamefromheader_64(const mach_header_64 *mhp, const char *segname, const char *sectname)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v7 = 0;
  v8 = mhp + 1;
  while (1)
  {
    if (v8->magic == 25 && (!strncmp(&v8->cpusubtype, segname, 0x10uLL) || mhp->filetype == 1))
    {
      magic = v8[2].magic;
      if (magic)
      {
        break;
      }
    }

LABEL_11:
    v8 = (v8 + v8->cputype);
    if (++v7 == ncmds)
    {
      return 0;
    }
  }

  p_cpusubtype = &v8[2].cpusubtype;
  while (strncmp(p_cpusubtype->sectname, sectname, 0x10uLL) || strncmp(p_cpusubtype->segname, segname, 0x10uLL))
  {
    ++p_cpusubtype;
    if (!--magic)
    {
      goto LABEL_11;
    }
  }

  return p_cpusubtype;
}

uint8_t *__cdecl getsegmentdata(const mach_header_64 *mhp, const char *segname, unint64_t *size)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v7 = 0;
  v8 = mhp + 1;
  while (1)
  {
    if (v8->magic == 25)
    {
      if (!strcmp(&v8->cpusubtype, "__TEXT"))
      {
        v7 = mhp - *&v8->flags;
      }

      if (!strncmp(&v8->cpusubtype, segname, 0x10uLL))
      {
        break;
      }
    }

    v8 = (v8 + v8->cputype);
    if (!--ncmds)
    {
      return 0;
    }
  }

  v10 = *&v8->flags;
  *size = *&v8[1].magic;
  return &v7[v10];
}

const section_64 *__cdecl getsectbyname(const char *segname, const char *sectname)
{
  v4 = _NSGetMachExecuteHeader();

  return getsectbynamefromheader_64(v4, segname, sectname);
}

uint8_t *__cdecl getsectiondata(const mach_header_64 *mhp, const char *segname, const char *sectname, unint64_t *size)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 28;
  if (mhp->magic == -17958193)
  {
    v10 = 32;
  }

  v11 = mhp + v10;
  while (*v11 != 1)
  {
    if (*v11 == 25)
    {
      if (!strcmp(v11 + 8, "__TEXT"))
      {
        v8 = mhp - *(v11 + 3);
      }

      if (!strncmp(v11 + 8, segname, 0x10uLL))
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = v11 + 72;
          while (strncmp(v13, sectname, 0x10uLL) || strncmp(v13 + 16, segname, 0x10uLL))
          {
            v13 += 80;
            if (!--v12)
            {
              goto LABEL_24;
            }
          }

          v17 = *(v13 + 4);
          *size = *(v13 + 5);
          return &v8[v17];
        }
      }
    }

LABEL_24:
    v11 += *(v11 + 1);
    if (++v9 == ncmds)
    {
      return 0;
    }
  }

  if (!strcmp(v11 + 8, "__TEXT"))
  {
    v8 = mhp - *(v11 + 6);
  }

  if (strncmp(v11 + 8, segname, 0x10uLL))
  {
    goto LABEL_24;
  }

  v14 = *(v11 + 12);
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v11 + 56;
  while (strncmp(v15, sectname, 0x10uLL) || strncmp(v15 + 16, segname, 0x10uLL))
  {
    v15 += 68;
    if (!--v14)
    {
      goto LABEL_24;
    }
  }

  v18 = *(v15 + 8);
  *size = *(v15 + 9);
  return &v8[v18];
}

char *__cdecl getsectdatafromheader_64(const mach_header_64 *mhp, const char *segname, const char *sectname, uint64_t *size)
{
  result = getsectbynamefromheader_64(mhp, segname, sectname);
  if (result)
  {
    *size = *(result + 5);
    return *(result + 4);
  }

  else
  {
    *size = 0;
  }

  return result;
}

const NXArchInfo *NXGetLocalArchInfo(void)
{
  *host_info_out = 0;
  host_info_outCnt = 2;
  v0 = MEMORY[0x29C2B0DF0]();
  v1 = host_info(v0, 12, host_info_out, &host_info_outCnt);
  v2 = MEMORY[0x29EDCA6B0];
  v3 = mach_port_deallocate(*MEMORY[0x29EDCA6B0], v0);
  if (v1)
  {
    v13 = 0u;
    v14 = 0u;
    *host_info_out = 0u;
    host_info_outCnt = 12;
    v4 = MEMORY[0x29C2B0DF0](v3);
    v5 = host_info(v4, 1, host_info_out, &host_info_outCnt);
    mach_port_deallocate(*v2, v4);
    if (v5)
    {
      return 0;
    }

    v7 = host_info_out[3];
    v8 = v13;
  }

  else
  {
    v7 = host_info_out[0];
    v8 = host_info_out[1];
  }

  if (v8 == 1 && v7 == 6)
  {
    v10 = 3;
  }

  else
  {
    v10 = v8;
  }

  return NXGetArchInfoFromCpuType(v7, v10);
}

const NXArchInfo *__cdecl NXGetArchInfoFromCpuType(cpu_type_t cputype, cpu_subtype_t cpusubtype)
{
  v3 = &ArchInfoTable;
  while (*(v3 + 2) != cputype || cpusubtype != -1 && ((*(v3 + 3) ^ cpusubtype) & 0xFFFFFF) != 0)
  {
    v4 = v3[4];
    v3 += 4;
    if (!v4)
    {
      if (cputype == 18)
      {
        v3 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        *v3 = xmmword_29F28B630;
        *(v3 + 1) = unk_29F28B640;
        *(v3 + 3) = cpusubtype;
        v6 = malloc_type_malloc(0x1EuLL, 0x1000040A86A77D5uLL);
        v3[3] = v6;
        if (v6)
        {
          __sprintf_chk(v6, 0, 0x1EuLL, "PowerPC cpusubtype %u");
          return v3;
        }

LABEL_13:
        free(v3);
      }

      else if (cputype == 7)
      {
        v3 = malloc_type_malloc(0x20uLL, 0x1050040796EC678uLL);
        *v3 = xmmword_29F28B570;
        *(v3 + 1) = unk_29F28B580;
        *(v3 + 3) = cpusubtype;
        v5 = malloc_type_malloc(0x1FuLL, 0x10000400B4D1E18uLL);
        v3[3] = v5;
        if (v5)
        {
          __sprintf_chk(v5, 0, 0x1FuLL, "Intel family %u model %u");
          return v3;
        }

        goto LABEL_13;
      }

      return 0;
    }
  }

  return v3;
}

const NXArchInfo *__cdecl NXGetArchInfoFromName(const char *name)
{
  v2 = &ArchInfoTable;
  v3 = "hppa";
  while (strcmp(v3, name))
  {
    v4 = v2[1].name;
    ++v2;
    v3 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return v2;
}

void NXFreeArchInfo(const NXArchInfo *x)
{
  for (i = &ArchInfoTable; i != x; ++i)
  {
    if (!i[1].name)
    {
      free(x->description);

      free(x);
      return;
    }
  }
}

fat_arch *__cdecl NXFindBestFatArch(cpu_type_t cputype, cpu_subtype_t cpusubtype, fat_arch *fat_archs, uint32_t nfat_archs)
{
  v5 = internal_NXFindBestFatArch(cputype, cpusubtype, fat_archs, 0, nfat_archs);
  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return &fat_archs[v5];
  }
}

uint64_t internal_NXFindBestFatArch(int a1, int a2, _DWORD *a3, _DWORD *a4, unsigned int a5)
{
  if (!a5)
  {
LABEL_10:
    result = 0xFFFFFFFFLL;
    if (a1 <= 13)
    {
      if (a1 <= 10)
      {
        if (a1 == 6)
        {
          if (a5)
          {
            result = 0;
            v85 = a3;
            v86 = a4;
            while (1)
            {
              v87 = a4 ? v86 : v85;
              if (*v87 == 6 && (v87[1] & 0xFFFFFF) == 1)
              {
                break;
              }

              ++result;
              v86 += 8;
              v85 += 5;
              if (a5 == result)
              {
                if ((a2 & 0xFFFFFF) != 1)
                {
                  return 0xFFFFFFFFLL;
                }

                result = 0;
                v88 = a3;
                v89 = a4;
                while (1)
                {
                  v90 = a4 ? v89 : v88;
                  if (*v90 == 6 && (v90[1] & 0xFFFFFF) == 2)
                  {
                    break;
                  }

                  ++result;
                  v89 += 8;
                  v88 += 5;
                  if (a5 == result)
                  {
                    v91 = 0;
                    v92 = a4;
                    while (1)
                    {
                      v93 = a4 ? v92 : a3;
                      if (*v93 == 6 && (v93[1] & 0xFFFFFF) == 3)
                      {
                        break;
                      }

                      ++v91;
                      v92 += 8;
                      a3 += 5;
                      result = 0xFFFFFFFFLL;
                      if (a5 == v91)
                      {
                        return result;
                      }
                    }

                    return v91;
                  }
                }

                return result;
              }
            }

            return result;
          }
        }

        else
        {
          if (a1 != 7)
          {
            return result;
          }

          v34 = a2 & 0xFFFFFF;
          if ((a2 & 0xFFFFFFu) - 3 < 2)
          {
LABEL_109:
            if (a5)
            {
              result = 0;
              v41 = a3;
              v42 = a4;
              while (1)
              {
                v43 = a4 ? v42 : v41;
                if (*v43 == 7 && (v43[1] & 0xFFFFFF) == 3)
                {
                  break;
                }

                ++result;
                v42 += 8;
                v41 += 5;
                if (a5 == result)
                {
                  result = 0;
                  v44 = a3;
                  v45 = a4;
                  while (1)
                  {
                    v46 = a4 ? v45 : v44;
                    if (*v46 == 7 && (v46[1] & 0xFFFFFF) == 4)
                    {
                      break;
                    }

                    ++result;
                    v45 += 8;
                    v44 += 5;
                    if (a5 == result)
                    {
                      result = 0;
                      v47 = a3;
                      v48 = a4;
                      while (1)
                      {
                        v49 = a4 ? v48 : v47;
                        if (*v49 == 7 && (v49[1] & 0xFFFFFF) == 0x84)
                        {
                          break;
                        }

                        ++result;
                        v48 += 8;
                        v47 += 5;
                        if (a5 == result)
                        {
                          result = 0;
                          v50 = a3;
                          for (i = a4; ; i += 8)
                          {
                            v52 = a4 ? i : v50;
                            if (*v52 == 7 && (v52[1] & 0xFFFFFF) == 5)
                            {
                              break;
                            }

                            ++result;
                            v50 += 5;
                            if (a5 == result)
                            {
                              v53 = 16;
                              v54 = a5;
                              v55 = a3;
                              v56 = a4;
                              do
                              {
                                if (a4)
                                {
                                  v57 = v56;
                                }

                                else
                                {
                                  v57 = v55;
                                }

                                if (*v57 == 7)
                                {
                                  v58 = v57[1] & 0xF;
                                  if (v58 < v53)
                                  {
                                    v53 = v58;
                                  }
                                }

                                v56 += 8;
                                v55 += 5;
                                --v54;
                              }

                              while (v54);
                              if (v53 != 16)
                              {
                                v59 = 0;
                                v60 = 0x7FFFFFFF;
                                result = 0xFFFFFFFFLL;
                                v61 = a4;
                                do
                                {
                                  if (a4)
                                  {
                                    v62 = v61;
                                  }

                                  else
                                  {
                                    v62 = a3;
                                  }

                                  if (*v62 == 7)
                                  {
                                    v63 = v62[1];
                                    v64 = v63 & 0xF;
                                    v65 = (v63 >> 4) & 0xFFFFF;
                                    if (v65 < v60)
                                    {
                                      v66 = v59;
                                    }

                                    else
                                    {
                                      v65 = v60;
                                      v66 = result;
                                    }

                                    if (v64 == v53)
                                    {
                                      v60 = v65;
                                      result = v66;
                                    }

                                    else
                                    {
                                      result = result;
                                    }
                                  }

                                  ++v59;
                                  v61 += 8;
                                  a3 += 5;
                                }

                                while (a5 != v59);
                                return result;
                              }

                              return 0xFFFFFFFFLL;
                            }
                          }

                          return result;
                        }
                      }

                      return result;
                    }
                  }

                  return result;
                }
              }

              return result;
            }
          }

          else if (v34 == 5 || v34 == 132)
          {
LABEL_101:
            if (a5)
            {
              result = 0;
              v38 = a3;
              v39 = a4;
              while (1)
              {
                v40 = a4 ? v39 : v38;
                if (*v40 == 7 && (v40[1] & 0xFFFFFF) == 4)
                {
                  return result;
                }

                ++result;
                v39 += 8;
                v38 += 5;
                if (a5 == result)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          else if (a5)
          {
            result = 0;
            v35 = a3;
            v36 = a4;
            while (1)
            {
              v37 = a4 ? v36 : v35;
              if (*v37 == 7 && (v37[1] & 0xFFFFFF) == 5)
              {
                return result;
              }

              ++result;
              v36 += 8;
              v35 += 5;
              if (a5 == result)
              {
                goto LABEL_101;
              }
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

      if (a1 == 11)
      {
        if (!a5)
        {
          return 0xFFFFFFFFLL;
        }

        v26 = 0;
        v96 = a4;
        while (1)
        {
          v97 = a4 ? v96 : a3;
          if (*v97 == 11 && (v97[1] & 0xFFFFFF) == 0)
          {
            break;
          }

          ++v26;
          v96 += 8;
          a3 += 5;
          result = 0xFFFFFFFFLL;
          if (a5 == v26)
          {
            return result;
          }
        }

        return v26;
      }

      if (a1 != 12)
      {
        if (!a5)
        {
          return 0xFFFFFFFFLL;
        }

        v26 = 0;
        v27 = a4;
        while (1)
        {
          v28 = a4 ? v27 : a3;
          if (*v28 == 13 && (v28[1] & 0xFFFFFF) == 0)
          {
            break;
          }

          ++v26;
          v27 += 8;
          a3 += 5;
          result = 0xFFFFFFFFLL;
          if (a5 == v26)
          {
            return result;
          }
        }

        return v26;
      }
    }

    else
    {
      if (a1 <= 16777222)
      {
        switch(a1)
        {
          case 14:
            if (!a5)
            {
              return 0xFFFFFFFFLL;
            }

            v26 = 0;
            v98 = a4;
            while (1)
            {
              v99 = a4 ? v98 : a3;
              if (*v99 == 14 && (v99[1] & 0xFFFFFF) == 0)
              {
                break;
              }

              ++v26;
              v98 += 8;
              a3 += 5;
              result = 0xFFFFFFFFLL;
              if (a5 == v26)
              {
                return result;
              }
            }

            break;
          case 15:
            if (!a5)
            {
              return 0xFFFFFFFFLL;
            }

            v26 = 0;
            v94 = a4;
            while (1)
            {
              v95 = a4 ? v94 : a3;
              if (*v95 == 15 && (v95[1] & 0xFFFFFF) == 0)
              {
                break;
              }

              ++v26;
              v94 += 8;
              a3 += 5;
              result = 0xFFFFFFFFLL;
              if (a5 == v26)
              {
                return result;
              }
            }

            break;
          case 18:
            v10 = a2 & 0xFFFFFF;
            if ((a2 & 0xFFFFFFu) <= 0xB)
            {
              if (((1 << a2) & 0x2F8) != 0)
              {
LABEL_17:
                if (a5)
                {
                  result = 0;
                  v11 = a3;
                  v12 = a4;
                  while (1)
                  {
                    v13 = a4 ? v12 : v11;
                    if (*v13 == 18 && (v13[1] & 0xFFFFFF) == 7)
                    {
                      return result;
                    }

                    ++result;
                    v12 += 8;
                    v11 += 5;
                    if (a5 == result)
                    {
                      result = 0;
                      v14 = a3;
                      v15 = a4;
                      while (1)
                      {
                        v16 = a4 ? v15 : v14;
                        if (*v16 == 18 && (v16[1] & 0xFFFFFF) == 6)
                        {
                          return result;
                        }

                        ++result;
                        v15 += 8;
                        v14 += 5;
                        if (a5 == result)
                        {
                          result = 0;
                          v17 = a3;
                          v18 = a4;
                          while (1)
                          {
                            v19 = a4 ? v18 : v17;
                            if ((*v19 & 0xFFFFFF) == 0x12 && (v19[1] & 0xFFFFFF) == 5)
                            {
                              return result;
                            }

                            ++result;
                            v18 += 8;
                            v17 += 5;
                            if (a5 == result)
                            {
                              result = 0;
                              v20 = a3;
                              v21 = a4;
                              while (1)
                              {
                                v22 = a4 ? v21 : v20;
                                if (*v22 == 18 && (v22[1] & 0xFFFFFF) == 4)
                                {
                                  return result;
                                }

                                ++result;
                                v21 += 8;
                                v20 += 5;
                                if (a5 == result)
                                {
                                  result = 0;
                                  v23 = a3;
                                  v24 = a4;
                                  while (1)
                                  {
                                    v25 = a4 ? v24 : v23;
                                    if (*v25 == 18 && (v25[1] & 0xFFFFFF) == 3)
                                    {
                                      return result;
                                    }

                                    ++result;
                                    v24 += 8;
                                    v23 += 5;
                                    if (a5 == result)
                                    {
                                      goto LABEL_289;
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

                return 0xFFFFFFFFLL;
              }

              if (((1 << a2) & 0xC00) != 0)
              {
LABEL_272:
                if (a5)
                {
                  result = 0;
                  v105 = a3;
                  v106 = a4;
                  while (1)
                  {
                    v107 = a4 ? v106 : v105;
                    if (*v107 == 18 && (v107[1] & 0xFFFFFF) == 0xB)
                    {
                      return result;
                    }

                    ++result;
                    v106 += 8;
                    v105 += 5;
                    if (a5 == result)
                    {
                      result = 0;
                      v108 = a3;
                      v109 = a4;
                      while (1)
                      {
                        v110 = a4 ? v109 : v108;
                        if (*v110 == 18 && (v110[1] & 0xFFFFFF) == 0xA)
                        {
                          return result;
                        }

                        ++result;
                        v109 += 8;
                        v108 += 5;
                        if (a5 == result)
                        {
                          goto LABEL_17;
                        }
                      }
                    }
                  }
                }

                return 0xFFFFFFFFLL;
              }

              if (!v10)
              {
                goto LABEL_264;
              }
            }

            if (v10 == 100)
            {
LABEL_264:
              if (a5)
              {
                result = 0;
                v102 = a3;
                v103 = a4;
                while (1)
                {
                  v104 = a4 ? v103 : v102;
                  if (*v104 == 18 && (v104[1] & 0xFFFFFF) == 0x64)
                  {
                    return result;
                  }

                  ++result;
                  v103 += 8;
                  v102 += 5;
                  if (a5 == result)
                  {
                    goto LABEL_272;
                  }
                }
              }

              return 0xFFFFFFFFLL;
            }

LABEL_289:
            if (!a5)
            {
              return 0xFFFFFFFFLL;
            }

            v26 = 0;
            v111 = a4;
            while (1)
            {
              v112 = a4 ? v111 : a3;
              if (*v112 == 18 && (v112[1] & 0xFFFFFF) == 0)
              {
                break;
              }

              ++v26;
              v111 += 8;
              a3 += 5;
              result = 0xFFFFFFFFLL;
              if (a5 == v26)
              {
                return result;
              }
            }

            break;
          default:
            return result;
        }

        return v26;
      }

      if (a1 == 16777223)
      {
        if (!a5)
        {
          return 0xFFFFFFFFLL;
        }

        v26 = 0;
        v100 = a4;
        while (1)
        {
          v101 = a4 ? v100 : a3;
          if (*v101 == 16777223 && (v101[1] & 0xFFFFFF) == 3)
          {
            break;
          }

          ++v26;
          v100 += 8;
          a3 += 5;
          result = 0xFFFFFFFFLL;
          if (a5 == v26)
          {
            return result;
          }
        }

        return v26;
      }

      if (a1 != 16777228)
      {
        if (a1 != 16777234)
        {
          return result;
        }

        if ((a2 & 0xFFFFFF) != 0x64 && (a2 & 0xFFFFFF) != 0)
        {
LABEL_79:
          if (!a5)
          {
            return 0xFFFFFFFFLL;
          }

          v26 = 0;
          v32 = a4;
          while (1)
          {
            v33 = a4 ? v32 : a3;
            if (*v33 == 16777234 && (v33[1] & 0xFFFFFF) == 0)
            {
              break;
            }

            ++v26;
            v32 += 8;
            a3 += 5;
            result = 0xFFFFFFFFLL;
            if (a5 == v26)
            {
              return result;
            }
          }

          return v26;
        }

        if (a5)
        {
          result = 0;
          v29 = a3;
          v30 = a4;
          while (1)
          {
            v31 = a4 ? v30 : v29;
            if (*v31 == 16777234 && (v31[1] & 0xFFFFFF) == 0x64)
            {
              return result;
            }

            ++result;
            v30 += 8;
            v29 += 5;
            if (a5 == result)
            {
              goto LABEL_79;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }

    if (a5)
    {
      v67 = 0;
      result = 0;
      v68 = 0;
      v69 = a5;
      v70 = a3;
      v71 = a4;
      do
      {
        if (a4)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        if (*v72 == 16777228)
        {
          v73 = v72[1];
          v74 = v73 & 0xFFFFFF;
          if (v73)
          {
            v75 = 0;
          }

          else
          {
            v75 = 9;
          }

          if (v73 == 1)
          {
            v75 = 10;
          }

          if (HIBYTE(v73))
          {
            v76 = 11;
          }

          else
          {
            v76 = 0;
          }

          if (v73 == -2147483646)
          {
            v77 = 12;
          }

          else
          {
            v77 = v76;
          }

          if (v74 != 2)
          {
            v77 = v75;
          }

          if (v77 <= v68)
          {
            result = result;
          }

          else
          {
            v68 = v77;
            result = v67;
          }
        }

        ++v67;
        v71 += 8;
        v70 += 5;
      }

      while (v69 != v67);
      if (v68)
      {
        return result;
      }

      if (a1 == 16777228)
      {
        v78 = 0;
        result = 0;
        v79 = 0;
        v80 = a3;
        v81 = a4;
        do
        {
          if (a4)
          {
            v82 = v81;
          }

          else
          {
            v82 = v80;
          }

          if (*v82 == 12)
          {
            if (v79)
            {
              v83 = v82[1];
              v84 = &a4[8 * result + 1];
              if (!a4)
              {
                v84 = &a3[5 * result + 1];
              }

              if (v83 <= *v84)
              {
                result = result;
              }

              else
              {
                result = v78;
              }

              v79 = 1;
            }

            else
            {
              v79 = 1;
              result = v78;
            }
          }

          ++v78;
          v81 += 8;
          v80 += 5;
        }

        while (v69 != v78);
        if (v79)
        {
          return result;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  v7 = a3;
  v8 = a4;
  while (1)
  {
    v9 = a4 ? v8 : v7;
    if (a1 != 16777228 && *v9 == a1 && ((v9[1] ^ a2) & 0xFFFFFF) == 0)
    {
      return result;
    }

    ++result;
    v8 += 8;
    v7 += 5;
    if (a5 == result)
    {
      goto LABEL_10;
    }
  }
}

fat_arch_64 *__cdecl NXFindBestFatArch_64(cpu_type_t cputype, cpu_subtype_t cpusubtype, fat_arch_64 *fat_archs64, uint32_t nfat_archs)
{
  v5 = internal_NXFindBestFatArch(cputype, cpusubtype, 0, fat_archs64, nfat_archs);
  if (v5 == -1)
  {
    return 0;
  }

  else
  {
    return &fat_archs64[v5];
  }
}

cpu_subtype_t NXCombineCpuSubtypes(cpu_type_t cputype, cpu_subtype_t cpusubtype1, cpu_subtype_t cpusubtype2)
{
  if (cputype == 7)
  {
    return 3;
  }

  if (cputype == 16777223)
  {
    v4 = cpusubtype2 == 8 || cpusubtype1 == 8;
    v5 = 3;
    goto LABEL_7;
  }

  v7 = cpusubtype1 & 0xFFFFFF;
  v8 = cpusubtype2 & 0xFFFFFF;
  if ((cpusubtype1 & 0xFFFFFF) == (cpusubtype2 & 0xFFFFFF))
  {
    return cpusubtype1;
  }

  result = -1;
  if (cputype > 13)
  {
    if (cputype > 17)
    {
      if (cputype == 18)
      {
        if (!v7)
        {
          return cpusubtype2;
        }

        if (!v8)
        {
          return cpusubtype1;
        }

        result = 1;
        if (v7 != 1 && v8 != 1)
        {
          if (v7 <= v8)
          {
            return cpusubtype2;
          }

          else
          {
            return cpusubtype1;
          }
        }

        return result;
      }

      if (cputype != 16777228)
      {
        return result;
      }
    }

    else if (cputype != 14)
    {
      if (cputype != 15)
      {
        return result;
      }

      if (((cpusubtype2 | cpusubtype1) & 0xFFFFFE) != 0)
      {
        return result;
      }

      result = 1;
      if (v7 == 1 || v8 == 1)
      {
        return result;
      }

      return -1;
    }

    if (((cpusubtype2 | cpusubtype1) & 0xFFFFFF) != 0)
    {
      return result;
    }

    return -1;
  }

  if (cputype > 11)
  {
    if (cputype != 12)
    {
      if ((cpusubtype1 & 0xFFFFFD | 2) != 2 || (cpusubtype2 & 0xFFFFFD | 2) != 2)
      {
        return result;
      }

LABEL_32:
      result = 2;
      if (v7 == 2 || v8 == 2)
      {
        return result;
      }

      return -1;
    }

    result = cpusubtype2;
    if (!v7)
    {
      return result;
    }

    result = cpusubtype1;
    if (!v8)
    {
      return result;
    }

    if ((cpusubtype1 & 0xFFFFFFu) > 6)
    {
      switch(v7)
      {
        case 7u:
          v10 = v8 - 6;
          if (v8 - 6 >= 4)
          {
            return 7;
          }

          v11 = &unk_299DC54B0;
          break;
        case 8u:
          v10 = v8 - 6;
          if (v8 - 6 >= 4)
          {
            return 8;
          }

          v11 = &unk_299DC54A0;
          break;
        case 9u:
          v4 = v8 == 8;
          v5 = 9;
          goto LABEL_7;
        default:
          return -1;
      }

      return v11[v10];
    }

    result = cpusubtype2 & 0xFFFFFF;
    if (v7 == 5)
    {
      return result;
    }

    if (v7 != 6)
    {
      return -1;
    }

    v4 = v8 == 8;
    v5 = 6;
LABEL_7:
    if (v4)
    {
      return -1;
    }

    else
    {
      return v5;
    }
  }

  if (cputype != 6)
  {
    if (((cpusubtype2 | cpusubtype1) & 0xFFFFFE) != 0)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (cputype == 11)
    {
      return v9;
    }

    else
    {
      return -1;
    }
  }

  if (v7 - 1 <= 2 && v8 - 1 <= 2 && (v7 != 3 || v8 != 2) && (v7 != 2 || v8 != 3))
  {
    result = 3;
    if (v7 != 3 && v8 != 3)
    {
      goto LABEL_32;
    }
  }

  return result;
}

unint64_t get_end(void)
{
  v0 = _NSGetMachExecuteHeader();
  ncmds = v0->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v2 = v0;
  result = 0;
  v4 = v2 + 1;
  do
  {
    if (v4->magic == 25)
    {
      v5 = *&v4[1].magic;
      if (v5 + *&v4->flags > result)
      {
        result = v5 + *&v4->flags;
      }
    }

    v4 = (v4 + v4->cputype);
    --ncmds;
  }

  while (ncmds);
  return result;
}

unint64_t get_etext(void)
{
  result = getsectbyname("__TEXT", "__text");
  if (result)
  {
    return *(result + 40) + *(result + 32);
  }

  return result;
}

unint64_t get_edata(void)
{
  result = getsectbyname("__DATA", "__data");
  if (result)
  {
    return *(result + 40) + *(result + 32);
  }

  return result;
}

const section *__cdecl getsectbynamefromheader(const mach_header *mhp, const char *segname, const char *sectname)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v7 = 0;
  v8 = mhp + 1;
  while (1)
  {
    if (v8->magic == 1 && (!strncmp(&v8->cpusubtype, segname, 0x10uLL) || mhp->filetype == 1))
    {
      sizeofcmds = v8[1].sizeofcmds;
      if (sizeofcmds)
      {
        break;
      }
    }

LABEL_11:
    v8 = (v8 + v8->cputype);
    if (++v7 == ncmds)
    {
      return 0;
    }
  }

  v10 = &v8[2];
  while (strncmp(v10->sectname, sectname, 0x10uLL) || strncmp(v10->segname, segname, 0x10uLL))
  {
    ++v10;
    if (!--sizeofcmds)
    {
      goto LABEL_11;
    }
  }

  return v10;
}

const section *__cdecl getsectbynamefromheaderwithswap(mach_header *mhp, const char *segname, const char *sectname, int fSwap)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v9 = 0;
  v10 = mhp + 1;
  if (fSwap)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 1;
  }

  while (1)
  {
    if (v10->magic != v11)
    {
      cputype = v10->cputype;
      v15 = bswap32(cputype);
      if (fSwap)
      {
        cputype = v15;
      }

      goto LABEL_19;
    }

    if (fSwap)
    {
      swap_segment_command(v10, NX_BigEndian);
    }

    if (!strncmp(&v10->cpusubtype, segname, 0x10uLL) || mhp->filetype == 1)
    {
      v12 = &v10[2];
      if (fSwap)
      {
        swap_section(&v10[2], v10[1].sizeofcmds, NX_BigEndian);
      }

      sizeofcmds = v10[1].sizeofcmds;
      if (sizeofcmds)
      {
        break;
      }
    }

LABEL_16:
    cputype = v10->cputype;
    ncmds = mhp->ncmds;
LABEL_19:
    v10 = (v10 + cputype);
    if (++v9 >= ncmds)
    {
      return 0;
    }
  }

  while (strncmp(v12->sectname, sectname, 0x10uLL) || strncmp(v12->segname, segname, 0x10uLL))
  {
    ++v12;
    if (!--sizeofcmds)
    {
      goto LABEL_16;
    }
  }

  return v12;
}

const section *__cdecl getsectbynamefromheaderwithswap_64(mach_header_64 *mhp, const char *segname, const char *sectname, int fSwap)
{
  ncmds = mhp->ncmds;
  if (!ncmds)
  {
    return 0;
  }

  v9 = 0;
  v10 = mhp + 1;
  if (fSwap)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 1;
  }

  while (1)
  {
    if (v10->magic != v11)
    {
      cputype = v10->cputype;
      v15 = bswap32(cputype);
      if (fSwap)
      {
        cputype = v15;
      }

      goto LABEL_19;
    }

    if (fSwap)
    {
      swap_segment_command_64(v10, NX_BigEndian);
    }

    if (!strncmp(&v10->cpusubtype, segname, 0x10uLL) || mhp->filetype == 1)
    {
      p_cpusubtype = &v10[2].cpusubtype;
      if (fSwap)
      {
        swap_section_64(&v10[2].cpusubtype, v10[2].magic, NX_BigEndian);
      }

      magic = v10[2].magic;
      if (magic)
      {
        break;
      }
    }

LABEL_16:
    cputype = v10->cputype;
    ncmds = mhp->ncmds;
LABEL_19:
    v10 = (v10 + cputype);
    if (++v9 >= ncmds)
    {
      return 0;
    }
  }

  while (strncmp(p_cpusubtype->sectname, sectname, 0x10uLL) || strncmp(p_cpusubtype->segname, segname, 0x10uLL))
  {
    p_cpusubtype = (p_cpusubtype + 80);
    if (!--magic)
    {
      goto LABEL_16;
    }
  }

  return p_cpusubtype;
}

char *__cdecl getsectdata(const char *segname, const char *sectname, unint64_t *size)
{
  v6 = _NSGetMachExecuteHeader();
  result = getsectbynamefromheader_64(v6, segname, sectname);
  if (result)
  {
    v9 = result + 32;
    result = *(result + 4);
    v8 = *(v9 + 1);
  }

  else
  {
    v8 = 0;
  }

  *size = v8;
  return result;
}

char *__cdecl getsectdatafromheader(const mach_header *mhp, const char *segname, const char *sectname, uint32_t *size)
{
  result = getsectbynamefromheader(mhp, segname, sectname);
  if (result)
  {
    *size = *(result + 9);
    return *(result + 8);
  }

  else
  {
    *size = 0;
  }

  return result;
}

char *__cdecl getsectdatafromFramework(const char *FrameworkName, const char *segname, const char *sectname, unint64_t *size)
{
  v8 = _dyld_image_count();
  if (!v8)
  {
LABEL_8:
    result = 0;
LABEL_9:
    *size = 0;
    return result;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    image_name = _dyld_get_image_name(v10);
    v13 = strrchr(image_name, 47);
    if (v13)
    {
      v15 = v13[1];
      v14 = v13 + 1;
      if (v15)
      {
        image_name = v14;
      }
    }

    if (!strcmp(image_name, FrameworkName))
    {
      break;
    }

    v10 = ++v11;
    if (v9 <= v11)
    {
      goto LABEL_8;
    }
  }

  image_header = _dyld_get_image_header(v11);
  image_vmaddr_slide = _dyld_get_image_vmaddr_slide(v10);
  result = getsectbynamefromheader_64(image_header, segname, sectname);
  if (!result)
  {
    goto LABEL_9;
  }

  v19 = *(result + 4);
  *size = *(result + 5);
  return (v19 + image_vmaddr_slide);
}

int8x16_t swap_i386_thread_state(int8x16_t *a1)
{
  v1 = vrev32q_s8(a1[1]);
  *a1 = vrev32q_s8(*a1);
  a1[1] = v1;
  result = vrev32q_s8(a1[2]);
  v3 = vrev32q_s8(a1[3]);
  a1[2] = result;
  a1[3] = v3;
  return result;
}

int8x16_t swap_x86_thread_state64(int8x16_t *a1)
{
  v1 = vrev64q_s8(a1[1]);
  *a1 = vrev64q_s8(*a1);
  a1[1] = v1;
  v2 = vrev64q_s8(a1[3]);
  a1[2] = vrev64q_s8(a1[2]);
  a1[3] = v2;
  v3 = vrev64q_s8(a1[5]);
  a1[4] = vrev64q_s8(a1[4]);
  a1[5] = v3;
  v4 = vrev64q_s8(a1[7]);
  a1[6] = vrev64q_s8(a1[6]);
  a1[7] = v4;
  result = vrev64q_s8(a1[8]);
  v6 = vrev64q_s8(a1[9]);
  a1[8] = result;
  a1[9] = v6;
  a1[10].i64[0] = bswap64(a1[10].u64[0]);
  return result;
}

int8x8_t swap_x86_state_hdr(int8x8_t *a1)
{
  result = vrev32_s8(*a1);
  *a1 = result;
  return result;
}

int8x8_t swap_x86_float_state64(int8x8_t *a1, int a2)
{
  *a1 = vrev32_s8(*a1);
  v2 = a1[1].u16[0];
  if (a2 == 1)
  {
    v3 = bswap32(v2);
    a1[1].i16[0] = v2 & 0xF0C0 | (v3 >> 31) | (v3 >> 10) & 0xC00 | (v3 >> 14) & 0x300 | (v3 >> 21) & 0x20 | (v3 >> 23) & 0x10 | (v3 >> 25) & 8 | (v3 >> 27) & 4 | (v3 >> 29) & 2;
    v4 = bswap32(a1[1].u16[1]);
    v5 = (v4 >> 7) & 0x3800 | (v4 >> 31) | (__rbit32(HIWORD(v4) & 3) >> 16) | (v4 >> 11) & 0x400 | (v4 >> 13) & 0x200 | (v4 >> 15) & 0x100 | (v4 >> 17) & 0x80 | (v4 >> 19) & 0x40 | (v4 >> 21) & 0x20 | (v4 >> 23) & 0x10 | (v4 >> 25) & 8 | (v4 >> 27) & 4 | (v4 >> 29) & 2;
  }

  else
  {
    a1[1].i16[0] = __rev16((v2 >> 6) & 0x30 | (v2 >> 2) & 0xC0 | (__rbit32(v2 & 0x3F) >> 16));
    v6 = a1[1].u16[1];
    v5 = bswap32(((v6 << 11) & 0x2000 | (((v6 >> 3) & 1) << 12) & 0xFFFFBFFF | (((v6 >> 4) & 1) << 11) & 0xFFFFBFFF | (((v6 >> 5) & 1) << 10) & 0xFFFFBFFF | (((v6 >> 6) & 1) << 9) & 0xFFFFBFFF | (((v6 >> 7) & 1) << 8) & 0xFFFFBFFF | (((v6 >> 1) & 1) << 14) | (v6 >> 13) & 2 | (v6 >> 15) | (v6 >> 9) & 0x1C | (v6 >> 5) & 0x20 | (v6 >> 3) & 0x40 | (v6 >> 1) & 0x80) + (v6 << 15)) >> 16;
  }

  a1[1].i16[1] = v5;
  a1[1].i16[3] = bswap32(a1[1].u16[3]) >> 16;
  a1[2].i32[0] = bswap32(a1[2].u32[0]);
  a1[2].i16[2] = bswap32(a1[2].u16[2]) >> 16;
  a1[2].i16[3] = bswap32(a1[2].u16[3]) >> 16;
  a1[3].i32[0] = bswap32(a1[3].u32[0]);
  a1[3].i16[2] = bswap32(a1[3].u16[2]) >> 16;
  a1[3].i16[3] = bswap32(a1[3].u16[3]) >> 16;
  result = vrev32_s8(a1[4]);
  a1[4] = result;
  a1[65].i32[0] = bswap32(a1[65].u32[0]);
  return result;
}

uint64_t swap_x86_exception_state64(uint64_t result)
{
  *result = 0;
  *(result + 4) = bswap32(*(result + 4));
  *(result + 8) = bswap64(*(result + 8));
  return result;
}

double swap_x86_thread_state(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = bswap32(*a1);
  if (a2 == 1)
  {
    v2 = v4;
  }

  *a1 = v4;
  *(a1 + 4) = bswap32(v3);
  if (v2 == 4)
  {
    *&result = swap_x86_thread_state64((a1 + 8)).u64[0];
  }

  else if (v2 == 1)
  {
    *&result = swap_i386_thread_state((a1 + 8)).u64[0];
  }

  return result;
}

int8x8_t swap_x86_float_state(int8x8_t *a1, int a2)
{
  v2 = a1->i32[0];
  v3 = a1->u32[1];
  v4 = bswap32(a1->i32[0]);
  if (a2 == 1)
  {
    v2 = v4;
  }

  a1->i32[0] = v4;
  a1->i32[1] = bswap32(v3);
  if (v2 == 5)
  {
    return swap_x86_float_state64(a1 + 1, a2);
  }

  if (v2 == 2)
  {
    return swap_i386_float_state(a1 + 1, a2);
  }

  return result;
}

int8x8_t swap_i386_float_state(int8x8_t *a1, int a2)
{
  *a1 = vrev32_s8(*a1);
  v2 = a1[1].u16[0];
  if (a2 == 1)
  {
    v3 = bswap32(v2);
    a1[1].i16[0] = v2 & 0xF0C0 | (v3 >> 31) | (v3 >> 10) & 0xC00 | (v3 >> 14) & 0x300 | (v3 >> 21) & 0x20 | (v3 >> 23) & 0x10 | (v3 >> 25) & 8 | (v3 >> 27) & 4 | (v3 >> 29) & 2;
    v4 = bswap32(a1[1].u16[1]);
    v5 = (v4 >> 7) & 0x3800 | (v4 >> 31) | (__rbit32(HIWORD(v4) & 3) >> 16) | (v4 >> 11) & 0x400 | (v4 >> 13) & 0x200 | (v4 >> 15) & 0x100 | (v4 >> 17) & 0x80 | (v4 >> 19) & 0x40 | (v4 >> 21) & 0x20 | (v4 >> 23) & 0x10 | (v4 >> 25) & 8 | (v4 >> 27) & 4 | (v4 >> 29) & 2;
  }

  else
  {
    a1[1].i16[0] = __rev16((v2 >> 6) & 0x30 | (v2 >> 2) & 0xC0 | (__rbit32(v2 & 0x3F) >> 16));
    v6 = a1[1].u16[1];
    v5 = bswap32(((v6 << 11) & 0x2000 | (((v6 >> 3) & 1) << 12) & 0xFFFFBFFF | (((v6 >> 4) & 1) << 11) & 0xFFFFBFFF | (((v6 >> 5) & 1) << 10) & 0xFFFFBFFF | (((v6 >> 6) & 1) << 9) & 0xFFFFBFFF | (((v6 >> 7) & 1) << 8) & 0xFFFFBFFF | (((v6 >> 1) & 1) << 14) | (v6 >> 13) & 2 | (v6 >> 15) | (v6 >> 9) & 0x1C | (v6 >> 5) & 0x20 | (v6 >> 3) & 0x40 | (v6 >> 1) & 0x80) + (v6 << 15)) >> 16;
  }

  a1[1].i16[1] = v5;
  a1[1].i16[3] = bswap32(a1[1].u16[3]) >> 16;
  a1[2].i32[0] = bswap32(a1[2].u32[0]);
  a1[2].i16[2] = bswap32(a1[2].u16[2]) >> 16;
  a1[2].i16[3] = bswap32(a1[2].u16[3]) >> 16;
  a1[3].i32[0] = bswap32(a1[3].u32[0]);
  a1[3].i16[2] = bswap32(a1[3].u16[2]) >> 16;
  a1[3].i16[3] = bswap32(a1[3].u16[3]) >> 16;
  result = vrev32_s8(a1[4]);
  a1[4] = result;
  a1[65].i32[0] = bswap32(a1[65].u32[0]);
  return result;
}

uint64_t swap_x86_exception_state(uint64_t result, int a2)
{
  v2 = *result;
  v3 = *(result + 4);
  v4 = bswap32(*result);
  if (a2 == 1)
  {
    v2 = v4;
  }

  *result = v4;
  *(result + 4) = bswap32(v3);
  if (v2 == 6)
  {
    *(result + 8) = 0;
    *(result + 12) = bswap32(*(result + 12));
    *(result + 16) = bswap64(*(result + 16));
  }

  else if (v2 == 3)
  {
    *(result + 8) = 0;
    *(result + 12) = vrev32_s8(*(result + 12));
  }

  return result;
}

int8x8_t swap_i386_exception_state(uint64_t a1)
{
  *a1 = 0;
  result = vrev32_s8(*(a1 + 4));
  *(a1 + 4) = result;
  return result;
}

int8x16_t swap_x86_debug_state32(int8x16_t *a1)
{
  result = vrev32q_s8(*a1);
  v2 = vrev32q_s8(a1[1]);
  *a1 = result;
  a1[1] = v2;
  return result;
}

int8x16_t swap_x86_debug_state64(int8x16_t *a1)
{
  v1 = vrev64q_s8(a1[1]);
  *a1 = vrev64q_s8(*a1);
  a1[1] = v1;
  result = vrev64q_s8(a1[2]);
  v3 = vrev64q_s8(a1[3]);
  a1[2] = result;
  a1[3] = v3;
  return result;
}

double swap_x86_debug_state(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = bswap32(*a1);
  if (a2 == 1)
  {
    v2 = v4;
  }

  *a1 = v4;
  *(a1 + 4) = bswap32(v3);
  if (v2 == 11)
  {
    *&result = swap_x86_debug_state64((a1 + 8)).u64[0];
  }

  else if (v2 == 10)
  {
    *&result = swap_x86_debug_state32((a1 + 8)).u64[0];
  }

  return result;
}

void slot_name(cpu_type_t a1, cpu_subtype_t a2, char **a3, char **a4)
{
  v6 = NXGetArchInfoFromCpuType(a1, a2);
  if (v6)
  {
    name = v6->name;
    description = v6->description;
  }

  else
  {
    name = "Unknown CPU";
    description = &unk_299DC5499;
  }

  *a3 = name;
  *a4 = description;
}

void swap_fat_arch(fat_arch *fat_archs, uint32_t nfat_arch, NXByteOrder target_byte_order)
{
  if (nfat_arch)
  {
    v3 = nfat_arch;
    p_align = &fat_archs->align;
    do
    {
      *(p_align - 1) = vrev32q_s8(*(p_align - 1));
      *p_align = bswap32(*p_align);
      p_align += 5;
      --v3;
    }

    while (v3);
  }
}

void swap_fat_arch_64(fat_arch_64 *fat_archs64, uint32_t nfat_arch, NXByteOrder target_byte_order)
{
  if (nfat_arch)
  {
    v3 = nfat_arch;
    do
    {
      *&fat_archs64->cputype = vrev32_s8(*&fat_archs64->cputype);
      *&fat_archs64->offset = vrev64q_s8(*&fat_archs64->offset);
      *&fat_archs64->align = vrev32_s8(*&fat_archs64->align);
      ++fat_archs64;
      --v3;
    }

    while (v3);
  }
}

void swap_mach_header(mach_header *mh, NXByteOrder target_byte_order)
{
  *&mh->magic = vrev32q_s8(*&mh->magic);
  *&mh->ncmds = vrev32_s8(*&mh->ncmds);
  mh->flags = bswap32(mh->flags);
}

void swap_mach_header_64(mach_header_64 *mh, NXByteOrder target_byte_order)
{
  v2 = vrev32q_s8(*&mh->ncmds);
  *&mh->magic = vrev32q_s8(*&mh->magic);
  *&mh->ncmds = v2;
}

void swap_segment_command(segment_command *sg, NXByteOrder target_byte_order)
{
  *&sg->cmd = vrev32_s8(*&sg->cmd);
  *&sg->vmaddr = vrev32q_s8(*&sg->vmaddr);
  *&sg->maxprot = vrev32q_s8(*&sg->maxprot);
}

void swap_segment_command_64(segment_command_64 *sg, NXByteOrder target_byte_order)
{
  *&sg->cmd = vrev32_s8(*&sg->cmd);
  *&sg->vmaddr = vrev64q_s8(*&sg->vmaddr);
  *&sg->fileoff = vrev64q_s8(*&sg->fileoff);
  *&sg->maxprot = vrev32q_s8(*&sg->maxprot);
}

void swap_section(section *s, uint32_t nsects, NXByteOrder target_byte_order)
{
  if (nsects)
  {
    v3 = nsects;
    p_reserved2 = &s->reserved2;
    do
    {
      v5 = vrev32q_s8(*(p_reserved2 - 1));
      *(p_reserved2 - 2) = vrev32q_s8(*(p_reserved2 - 2));
      *(p_reserved2 - 1) = v5;
      *p_reserved2 = bswap32(*p_reserved2);
      p_reserved2 += 17;
      --v3;
    }

    while (v3);
  }
}

void swap_section_64(section_64 *s, uint32_t nsects, NXByteOrder target_byte_order)
{
  if (nsects)
  {
    v3 = nsects;
    p_flags = &s->flags;
    do
    {
      v5 = vrev32q_s8(p_flags[-1]);
      p_flags[-2] = vrev64q_s8(p_flags[-2]);
      p_flags[-1] = v5;
      *p_flags = vrev32q_s8(*p_flags);
      p_flags += 5;
      --v3;
    }

    while (v3);
  }
}

void swap_dysymtab_command(dysymtab_command *dyst, NXByteOrder target_byte_sex)
{
  v2 = vrev32q_s8(*&dyst->iextdefsym);
  *&dyst->cmd = vrev32q_s8(*&dyst->cmd);
  *&dyst->iextdefsym = v2;
  v3 = vrev32q_s8(*&dyst->extrefsymoff);
  *&dyst->tocoff = vrev32q_s8(*&dyst->tocoff);
  *&dyst->extrefsymoff = v3;
  *&dyst->extreloff = vrev32q_s8(*&dyst->extreloff);
}

void swap_routines_command(routines_command *r_cmd, NXByteOrder target_byte_sex)
{
  v2 = vrev32q_s8(*&r_cmd->reserved1);
  *&r_cmd->cmd = vrev32q_s8(*&r_cmd->cmd);
  *&r_cmd->reserved1 = v2;
  *&r_cmd->reserved5 = vrev32_s8(*&r_cmd->reserved5);
}

void swap_routines_command_64(routines_command_64 *r_cmd, NXByteOrder target_byte_sex)
{
  *&r_cmd->cmd = vrev32_s8(*&r_cmd->cmd);
  *&r_cmd->init_address = vrev64q_s8(*&r_cmd->init_address);
  *&r_cmd->reserved1 = vrev64q_s8(*&r_cmd->reserved1);
  *&r_cmd->reserved3 = vrev64q_s8(*&r_cmd->reserved3);
  *&r_cmd->reserved5 = vrev64q_s8(*&r_cmd->reserved5);
}

void swap_twolevel_hint(twolevel_hint *hints, uint32_t nhints, NXByteOrder target_byte_sex)
{
  if (nhints)
  {
    v3 = nhints;
    do
    {
      if (target_byte_sex == NX_LittleEndian)
      {
        HIDWORD(v5) = bswap32(*hints);
        LODWORD(v5) = HIDWORD(v5);
        v4 = (v5 >> 24);
      }

      else
      {
        HIDWORD(v6) = *hints;
        LODWORD(v6) = *hints;
        v4 = bswap32(v6 >> 8);
      }

      *hints++ = v4;
      --v3;
    }

    while (v3);
  }
}

void swap_build_tool_version(build_tool_version *bt, uint32_t ntools, NXByteOrder target_byte_sex)
{
  if (ntools)
  {
    v3 = ntools;
    do
    {
      *bt = vrev32_s8(*bt);
      ++bt;
      --v3;
    }

    while (v3);
  }
}

void swap_dyld_info_command(dyld_info_command *ed, NXByteOrder target_byte_sex)
{
  v2 = vrev32q_s8(*&ed->bind_off);
  *&ed->cmd = vrev32q_s8(*&ed->cmd);
  *&ed->bind_off = v2;
  *&ed->lazy_bind_off = vrev32q_s8(*&ed->lazy_bind_off);
}

void swap_fileset_entry_command(fileset_entry_command *lc, NXByteOrder target_byte_sex)
{
  *&lc->cmd = vrev32_s8(*&lc->cmd);
  *&lc->vmaddr = vrev64q_s8(*&lc->vmaddr);
  *&lc->entry_id.offset = vrev32_s8(*&lc->entry_id.offset);
}

void swap_nlist(nlist *symbols, uint32_t nsymbols, NXByteOrder target_byte_order)
{
  if (nsymbols)
  {
    v3 = nsymbols;
    p_n_value = &symbols->n_value;
    do
    {
      *(p_n_value - 2) = bswap32(*(p_n_value - 2));
      *(p_n_value - 1) = bswap32(*(p_n_value - 1)) >> 16;
      *p_n_value = bswap32(*p_n_value);
      p_n_value += 3;
      --v3;
    }

    while (v3);
  }
}

void swap_nlist_64(nlist_64 *symbols, uint32_t nsymbols, NXByteOrder target_byte_order)
{
  if (nsymbols)
  {
    v3 = nsymbols;
    p_n_value = &symbols->n_value;
    do
    {
      *(p_n_value - 2) = bswap32(*(p_n_value - 2));
      *(p_n_value - 1) = bswap32(*(p_n_value - 1)) >> 16;
      *p_n_value = bswap64(*p_n_value);
      p_n_value += 2;
      --v3;
    }

    while (v3);
  }
}

void swap_ranlib(ranlib *ranlibs, uint32_t nranlibs, NXByteOrder target_byte_order)
{
  if (nranlibs)
  {
    v3 = nranlibs;
    do
    {
      *ranlibs = vrev32_s8(*ranlibs);
      ++ranlibs;
      --v3;
    }

    while (v3);
  }
}

void swap_ranlib_64(ranlib_64 *ranlibs, uint64_t nranlibs, NXByteOrder target_byte_order)
{
  for (; nranlibs; --nranlibs)
  {
    *ranlibs = vrev64q_s8(*ranlibs);
    ++ranlibs;
  }
}

void swap_relocation_info(relocation_info *relocs, uint32_t nrelocs, NXByteOrder target_byte_order)
{
  if (nrelocs)
  {
    v3 = nrelocs;
    v4 = relocs + 1;
    do
    {
      v5 = *(v4 - 1);
      if (target_byte_order == NX_LittleEndian)
      {
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_8;
        }

        v6 = bswap32(*v4);
        *(v4 - 1) = bswap32(*(v4 - 1));
        *v4 = (v6 >> 8) & 0xF0FFFFFF | (v6 << 28) | (((v6 >> 7) & 1) << 24) & 0xF1FFFFFF | (((v6 >> 5) & 3) << 25) & 0xF7FFFFFF | (((v6 >> 4) & 1) << 27);
      }

      else
      {
        if ((v5 & 0x80000000) != 0)
        {
LABEL_8:
          v7 = bswap32(*v4);
          *(v4 - 1) = bswap32(v5);
          *v4 = v7;
          goto LABEL_9;
        }

        *(v4 - 1) = bswap64((*v4 >> 20) & 0x60 | (*v4 << 8) | (*v4 >> 17) & 0x80 | (*v4 >> 23) & 0x10 | (*v4 >> 28) | (v5 << 32));
      }

LABEL_9:
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void swap_indirect_symbols(uint32_t *indirect_symbols, uint32_t nindirect_symbols, NXByteOrder target_byte_sex)
{
  if (nindirect_symbols)
  {
    v3 = nindirect_symbols;
    do
    {
      *indirect_symbols = bswap32(*indirect_symbols);
      ++indirect_symbols;
      --v3;
    }

    while (v3);
  }
}

void swap_dylib_reference(dylib_reference *refs, uint32_t nrefs, NXByteOrder target_byte_sex)
{
  if (nrefs)
  {
    v3 = nrefs;
    do
    {
      if (target_byte_sex == NX_LittleEndian)
      {
        HIDWORD(v5) = bswap32(*refs);
        LODWORD(v5) = HIDWORD(v5);
        v4 = (v5 >> 8);
      }

      else
      {
        HIDWORD(v6) = *refs;
        LODWORD(v6) = *refs;
        v4 = bswap32(v6 >> 24);
      }

      *refs++ = v4;
      --v3;
    }

    while (v3);
  }
}

void swap_dylib_module(dylib_module *mods, uint32_t nmods, NXByteOrder target_byte_sex)
{
  if (nmods)
  {
    v3 = nmods;
    p_nextrel = &mods->nextrel;
    do
    {
      v5 = vrev32q_s8(p_nextrel[-1]);
      p_nextrel[-2] = vrev32q_s8(p_nextrel[-2]);
      p_nextrel[-1] = v5;
      p_nextrel[1].i32[0] = bswap32(p_nextrel[1].u32[0]);
      *p_nextrel = vrev32q_s8(*p_nextrel);
      p_nextrel = (p_nextrel + 52);
      --v3;
    }

    while (v3);
  }
}

void swap_dylib_module_64(dylib_module_64 *mods, uint32_t nmods, NXByteOrder target_byte_sex)
{
  if (nmods)
  {
    v3 = nmods;
    p_nextrel = &mods->nextrel;
    do
    {
      v5 = vrev32q_s8(p_nextrel[-1]);
      p_nextrel[-2] = vrev32q_s8(p_nextrel[-2]);
      p_nextrel[-1] = v5;
      *p_nextrel = vrev32q_s8(*p_nextrel);
      p_nextrel[1].i64[0] = bswap64(p_nextrel[1].u64[0]);
      p_nextrel = (p_nextrel + 56);
      --v3;
    }

    while (v3);
  }
}

void swap_dylib_table_of_contents(dylib_table_of_contents *tocs, uint32_t ntocs, NXByteOrder target_byte_sex)
{
  if (ntocs)
  {
    v3 = ntocs;
    do
    {
      *tocs = vrev32_s8(*tocs);
      ++tocs;
      --v3;
    }

    while (v3);
  }
}