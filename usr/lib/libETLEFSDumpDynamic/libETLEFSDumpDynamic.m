uint64_t ETLEFSDumpInterpret(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  result = malloc(0x50uLL);
  *a3 = 0;
  if (result)
  {
    v7 = result;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    if (a2 < 0x38 || (v8 = *(a1 + 16), *result = *a1, *(result + 16) = v8, *(result + 32) = *(a1 + 32), *(result + 48) = *(a1 + 48), a2 - 62 > 0xFFFFFFF9))
    {
      v10 = 0;
    }

    else
    {
      *(result + 56) = *(a1 + 56);
      *(result + 60) = *(a1 + 60);
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14[14] = v9;
      v14[15] = v9;
      v14[12] = v9;
      v14[13] = v9;
      v14[10] = v9;
      v14[11] = v9;
      v14[8] = v9;
      v14[9] = v9;
      v14[6] = v9;
      v14[7] = v9;
      v14[4] = v9;
      v14[5] = v9;
      v14[2] = v9;
      v14[3] = v9;
      v14[0] = v9;
      v14[1] = v9;
      TelephonyUtilStrlcpy();
      v10 = strdup(v14);
      *(v7 + 62) = v10;
      if (v10)
      {
        v11 = v10;
        TelephonyUtilStrlcpy();
        v12 = strdup(v14);
        *(v7 + 70) = v12;
        if (v12)
        {
          *a3 = v7;
          result = 1;
          goto LABEL_9;
        }

        v10 = v11;
      }
    }

    free(v10);
    free(v7);
    result = 0;
  }

LABEL_9:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t ETLEFSDumpInfoFree(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 62));
    free(*(a1 + 70));
    free(a1);
  }

  return 1;
}

BOOL ETLEFSDumpCopyCrashHeaderDetails(uint64_t a1, _WORD *a2, _WORD *a3)
{
  if (a1)
  {
    *a2 = *a1;
    *a3 = *(a1 + 4);
  }

  return a1 != 0;
}

BOOL ETLEFSDumpCopySoftwareVersion(uint64_t a1)
{
  if (a1)
  {
    TelephonyUtilStrlcpy();
  }

  return a1 != 0;
}

BOOL ETLEFSDUmpCopyCrashLocationDetails(uint64_t a1, uint64_t a2)
{
  *(a2 + 320) = 0;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (a1)
  {
    v3 = *(a1 + 60);
    *a2 = *(a1 + 56);
    *(a2 + 4) = v3;
    v4 = *(a1 + 62);
    TelephonyUtilStrlcpy();
    v5 = *(a1 + 70);
    TelephonyUtilStrlcpy();
  }

  return a1 != 0;
}

uint64_t ETLEFCopyCrashLocationDetailsM20(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v8 = operator new(0x20uLL);
    v171 = xmmword_2977DFBB0;
    strcpy(v8, "Not provided from Baseband");
    v169 = 0x7AAAAAAAAAAAAAALL;
    v170 = v8;
    v168 = 0xAAAAAAAAAAAAAAAALL;
    strcpy(&v167, "Unknown");
    if (a2)
    {
      v9 = a2;
      v10 = a1;
      while (*v10)
      {
        ++v10;
        if (!--v9)
        {
          v10 = &a1[a2];
          break;
        }
      }
    }

    else
    {
      v10 = a1;
    }

    v11 = v10 - a1;
    memset(__dst, 170, sizeof(__dst));
    if ((v10 - a1) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 > 0x16)
    {
      if ((v11 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v11 | 7) + 1;
      }

      v12 = operator new(v19);
      __dst[1] = (v10 - a1);
      __dst[2] = (v19 | 0x8000000000000000);
      __dst[0] = v12;
      if (v10 == a1)
      {
LABEL_20:
        *v12 = 0;
        *(a3 + 384) = 0;
        *(a3 + 352) = 0u;
        *(a3 + 368) = 0u;
        *(a3 + 320) = 0u;
        *(a3 + 336) = 0u;
        *(a3 + 288) = 0u;
        *(a3 + 304) = 0u;
        *(a3 + 256) = 0u;
        *(a3 + 272) = 0u;
        *(a3 + 224) = 0u;
        *(a3 + 240) = 0u;
        *(a3 + 192) = 0u;
        *(a3 + 208) = 0u;
        *(a3 + 160) = 0u;
        *(a3 + 176) = 0u;
        *(a3 + 128) = 0u;
        *(a3 + 144) = 0u;
        *(a3 + 96) = 0u;
        *(a3 + 112) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        v13 = HIBYTE(__dst[2]);
        v14 = SHIBYTE(__dst[2]);
        v15 = __dst[1];
        if (SHIBYTE(__dst[2]) < 0)
        {
          v13 = __dst[1];
        }

        *a3 = 0uLL;
        *(a3 + 16) = 0uLL;
        if (!v13)
        {
          v20 = SHIBYTE(v169);
          if ((SHIBYTE(v169) & 0x8000000000000000) != 0)
          {
            v21 = v167;
            v20 = v168;
            v22 = (a3 + 4);
            v23 = v167;
          }

          else
          {
            v21 = &v167;
            v22 = (a3 + 4);
            v23 = &v167;
          }

          strncpy(v22, v23, v20);
          strncpy((a3 + 68), v21, v20);
          *a3 = 0;
          v34 = (a3 + 132);
          if (v171 >= 0)
          {
            v35 = &v170;
          }

          else
          {
            v35 = v170;
          }

          if (v171 >= 0)
          {
            v36 = HIBYTE(v171);
          }

          else
          {
            v36 = v171;
          }

          strncpy(v34, v35, v36);
          if ((v14 & 0x80) == 0)
          {
LABEL_225:
            if (SHIBYTE(v169) < 0)
            {
              operator delete(v167);
              if ((SHIBYTE(v171) & 0x80000000) == 0)
              {
                return v4;
              }
            }

            else if ((SHIBYTE(v171) & 0x80000000) == 0)
            {
              return v4;
            }

            operator delete(v170);
            return v4;
          }

LABEL_224:
          operator delete(__dst[0]);
          goto LABEL_225;
        }

        v164 = 0uLL;
        v165 = 0;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v157 = 0xAAAAAAAAAAAAAAAALL;
        v159 = 0xAAAAAAAAAAAAAA00;
        v162 = v16;
        v158 = 0;
        v160 = 0;
        v161 = 0;
        LOBYTE(v162) = 0;
        BYTE8(v162) = 0;
        v163 = 0;
        memset(buf, 0, sizeof(buf));
        *(&__s2 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v155 = 0x4AAAAAAAAAAAAAALL;
        *&__s2 = 0xAAAAAA003A727373;
        if ((v14 & 0x80000000) != 0)
        {
          if (v15 >= 4)
          {
            v24 = 4;
          }

          else
          {
            v24 = v15;
          }

          v18 = memcmp(__dst[0], &__s2, v24);
          if (v24 != 4)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v14 >= 4)
          {
            v17 = 4;
          }

          else
          {
            v17 = v14;
          }

          v18 = memcmp(__dst, &__s2, v17);
          if (v17 != 4)
          {
            goto LABEL_42;
          }
        }

        if (!v18)
        {
          v164 = __s2;
          v165 = v155;
        }

LABEL_42:
        v153.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
        *&v153.__r_.__value_.__r.__words[1] = xmmword_2977DFBC0;
        strcpy(v153.__r_.__value_.__l.__data_, "([^:]*):([^:]*):([^:]*):(.*)");
        if (ETLEFSearchCrashReason(__dst, &__s2, &v153.__r_.__value_.__l.__data_, buf))
        {
          v151 = v4;
          v25 = *buf;
          v26 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          v27 = buf;
          if (v26 <= 1)
          {
            v28 = buf;
          }

          else
          {
            v28 = *buf;
          }

          if (v28[40] == 1)
          {
            v29 = *(v28 + 3);
            if (v26 > 1)
            {
              v27 = *buf;
            }

            v30 = *(v27 + 4);
            v31 = v30 - v29;
            if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v31 > 0x16)
            {
              if ((v31 | 7) == 0x17)
              {
                v48 = 25;
              }

              else
              {
                v48 = (v31 | 7) + 1;
              }

              p_p = operator new(v48);
              __p.__r_.__value_.__l.__size_ = v30 - v29;
              __p.__r_.__value_.__r.__words[2] = v48 | 0x8000000000000000;
              __p.__r_.__value_.__r.__words[0] = p_p;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v30 - v29;
              p_p = &__p;
            }

            if (v30 != v29)
            {
              memmove(p_p, v29, v30 - v29);
            }

            p_p->__r_.__value_.__s.__data_[v31] = 0;
            v49 = __p.__r_.__value_.__r.__words[0];
            v50 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if (v28[40])
            {
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v51 = &__p;
              }

              else
              {
                v51 = __p.__r_.__value_.__r.__words[0];
              }

              if (*(v27 + 4) - *(v28 + 3) >= 0x40uLL)
              {
                v52 = 64;
              }

              else
              {
                v52 = *(v27 + 4) - *(v28 + 3);
              }

              strncpy((a3 + 4), v51, v52);
            }

            if (v50 < 0)
            {
              operator delete(v49);
              v25 = *buf;
              v26 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
            }
          }

          if (v26 <= 2)
          {
            v53 = &buf[24];
          }

          else
          {
            v53 = (v25 + 48);
          }

          if (v26 <= 2)
          {
            v54 = &v157;
          }

          else
          {
            v54 = (v25 + 64);
          }

          if (*v54 != 1)
          {
            v60 = (v25 + 88);
            if (v26 <= 3)
            {
              v60 = &v157;
            }

            if (*v60 == 1)
            {
              goto LABEL_124;
            }

            goto LABEL_141;
          }

          v55 = *v53;
          v56 = &buf[32];
          if (v26 > 2)
          {
            v56 = (v25 + 56);
          }

          v57 = *v56;
          v58 = *v56 - v55;
          if (v58 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v149 = v56;
          if (v58 > 0x16)
          {
            if ((v58 | 7) == 0x17)
            {
              v61 = 25;
            }

            else
            {
              v61 = (v58 | 7) + 1;
            }

            v59 = operator new(v61);
            __p.__r_.__value_.__l.__size_ = v58;
            __p.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v59;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = *v56 - v55;
            v59 = &__p;
          }

          if (v57 != v55)
          {
            memmove(v59, v55, v58);
          }

          v59->__r_.__value_.__s.__data_[v58] = 0;
          v62 = __p.__r_.__value_.__r.__words[0];
          v63 = *v54;
          v64 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (v63)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v72 = &__p;
            }

            else
            {
              v72 = __p.__r_.__value_.__r.__words[0];
            }

            if (*v149 - *v53 >= 0x40uLL)
            {
              v73 = 64;
            }

            else
            {
              v73 = *v149 - *v53;
            }

            strncpy((a3 + 68), v72, v73);
            if ((v64 & 0x80000000) == 0)
            {
LABEL_121:
              v65 = (v25 + 88);
              if (v26 <= 3)
              {
                v65 = &v157;
              }

              if (*v65 == 1)
              {
LABEL_124:
                v66 = (v25 + 72);
                if (v26 <= 3)
                {
                  v66 = &buf[24];
                }

                v67 = *v66;
                v68 = (v25 + 80);
                if (v26 <= 3)
                {
                  v68 = &buf[32];
                }

                v69 = *v68;
                v70 = *v68 - v67;
                if (v70 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v70 > 0x16)
                {
                  if ((v70 | 7) == 0x17)
                  {
                    v75 = 25;
                  }

                  else
                  {
                    v75 = (v70 | 7) + 1;
                  }

                  v4 = v151;
                  v71 = operator new(v75);
                  __p.__r_.__value_.__l.__size_ = v70;
                  __p.__r_.__value_.__r.__words[2] = v75 | 0x8000000000000000;
                  __p.__r_.__value_.__r.__words[0] = v71;
                }

                else
                {
                  *(&__p.__r_.__value_.__s + 23) = *v68 - v67;
                  v71 = &__p;
                  v4 = v151;
                }

                if (v69 != v67)
                {
                  memmove(v71, v67, v70);
                }

                v71->__r_.__value_.__s.__data_[v70] = 0;
                goto LABEL_149;
              }

LABEL_141:
              memset(&__p, 0, sizeof(__p));
              v4 = v151;
LABEL_149:
              *a3 = std::stoi(&__p, 0, 10);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_182:
              if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v153.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v155) & 0x80000000) == 0)
                {
LABEL_184:
                  v85 = *buf;
                  if (!*buf)
                  {
                    goto LABEL_186;
                  }

                  goto LABEL_185;
                }
              }

              else if ((SHIBYTE(v155) & 0x80000000) == 0)
              {
                goto LABEL_184;
              }

              operator delete(__s2);
              v85 = *buf;
              if (!*buf)
              {
LABEL_186:
                memset(buf, 170, 24);
                v86 = SHIBYTE(v165);
                if ((SHIBYTE(v165) & 0x8000000000000000) != 0)
                {
                  v86 = *(&v164 + 1);
                  if (*(&v164 + 1))
                  {
LABEL_188:
                    v87 = SHIBYTE(__dst[2]);
                    if ((SHIBYTE(__dst[2]) & 0x8000000000000000) != 0)
                    {
                      v87 = __dst[1];
                      if (__dst[1] >= v86)
                      {
                        v88 = __dst[0];
                        v89 = __dst[1] - v86;
                        if (__dst[1] - v86 > 0x7FFFFFFFFFFFFFF7)
                        {
                          goto LABEL_342;
                        }

LABEL_207:
                        if (v89 >= 0x17)
                        {
                          if ((v89 | 7) == 0x17)
                          {
                            v95 = 25;
                          }

                          else
                          {
                            v95 = (v89 | 7) + 1;
                          }

                          v94 = operator new(v95);
                          *&buf[8] = v89;
                          *&buf[16] = v95 | 0x8000000000000000;
                          *buf = v94;
                        }

                        else
                        {
                          buf[23] = v89;
                          v94 = buf;
                          if (v87 == v86)
                          {
LABEL_220:
                            v94[v89] = 0;
                            if ((buf[23] & 0x8000000000000000) != 0)
                            {
                              v98 = *buf;
                              if (*&buf[8] >= 0x100uLL)
                              {
                                v99 = 256;
                              }

                              else
                              {
                                v99 = *&buf[8];
                              }

                              strncpy((a3 + 132), *buf, v99);
                              operator delete(v98);
                              if ((SHIBYTE(v165) & 0x80000000) == 0)
                              {
LABEL_223:
                                if ((HIBYTE(__dst[2]) & 0x80) == 0)
                                {
                                  goto LABEL_225;
                                }

                                goto LABEL_224;
                              }
                            }

                            else
                            {
                              strncpy((a3 + 132), buf, buf[23]);
                              if ((SHIBYTE(v165) & 0x80000000) == 0)
                              {
                                goto LABEL_223;
                              }
                            }

                            operator delete(v164);
                            goto LABEL_223;
                          }
                        }

                        v96 = (v88 + v86);
LABEL_219:
                        memmove(v94, v96, v89);
                        goto LABEL_220;
                      }
                    }

                    else if (v86 <= SHIBYTE(__dst[2]))
                    {
                      v88 = __dst;
                      v89 = SHIBYTE(__dst[2]) - v86;
                      if (v89 > 0x7FFFFFFFFFFFFFF7)
                      {
                        goto LABEL_342;
                      }

                      goto LABEL_207;
                    }

                    std::string::__throw_out_of_range[abi:ne200100]();
                  }
                }

                else if (HIBYTE(v165))
                {
                  goto LABEL_188;
                }

                v90 = SHIBYTE(__dst[2]);
                if (SHIBYTE(__dst[2]) >= 0)
                {
                  v89 = HIBYTE(__dst[2]);
                }

                else
                {
                  v89 = __dst[1];
                }

                v91 = v89 + 4;
                if (v89 + 4 > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_342:
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v91 < 0x17)
                {
                  memset(&buf[5], 0, 19);
                  buf[23] = v89 + 4;
                  v94 = &buf[4];
                  strcpy(buf, "RAW=");
                  if (!v89)
                  {
                    goto LABEL_220;
                  }
                }

                else
                {
                  if ((v91 | 7) == 0x17)
                  {
                    v92 = 25;
                  }

                  else
                  {
                    v92 = (v91 | 7) + 1;
                  }

                  v93 = operator new(v92);
                  *&buf[8] = v89 + 4;
                  *&buf[16] = v92 | 0x8000000000000000;
                  *buf = v93;
                  *v93 = 1029128530;
                  v94 = (v93 + 1);
                }

                if (v90 >= 0)
                {
                  v96 = __dst;
                }

                else
                {
                  v96 = __dst[0];
                }

                goto LABEL_219;
              }

LABEL_185:
              *&buf[8] = v85;
              operator delete(v85);
              goto LABEL_186;
            }
          }

          else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_121;
          }

          operator delete(v62);
          v25 = *buf;
          v26 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          v74 = (*buf + 88);
          if (v26 <= 3)
          {
            v74 = &v157;
          }

          if (*v74 == 1)
          {
            goto LABEL_124;
          }

          goto LABEL_141;
        }

        if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
        {
          v153.__r_.__value_.__l.__size_ = 15;
          v33 = v153.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v153.__r_.__value_.__s + 23) = 15;
          v33 = &v153;
        }

        strcpy(v33, "([^:]*):([^:]*)");
        if (ETLEFSearchCrashReason(__dst, &__s2, &v153.__r_.__value_.__l.__data_, buf))
        {
          v37 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          if (v37 <= 1)
          {
            v38 = buf;
          }

          else
          {
            v38 = *buf;
          }

          if (v38[40] != 1)
          {
            goto LABEL_174;
          }

          v39 = *(v38 + 3);
          if (v37 <= 1)
          {
            v40 = buf;
          }

          else
          {
            v40 = *buf;
          }

          v41 = *(v40 + 4);
          v42 = v41 - v39;
          if ((v41 - v39) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v42 > 0x16)
          {
            if ((v42 | 7) == 0x17)
            {
              v77 = 25;
            }

            else
            {
              v77 = (v42 | 7) + 1;
            }

            v43 = operator new(v77);
            __p.__r_.__value_.__l.__size_ = v41 - v39;
            __p.__r_.__value_.__r.__words[2] = v77 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v43;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v41 - v39;
            v43 = &__p;
          }

          if (v41 != v39)
          {
            memmove(v43, v39, v41 - v39);
          }

          v43->__r_.__value_.__s.__data_[v42] = 0;
          v78 = __p.__r_.__value_.__r.__words[0];
          v79 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (v38[40])
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = &__p;
            }

            else
            {
              v80 = __p.__r_.__value_.__r.__words[0];
            }

            if (*(v40 + 4) - *(v38 + 3) >= 0x40uLL)
            {
              v81 = 64;
            }

            else
            {
              v81 = *(v40 + 4) - *(v38 + 3);
            }

            strncpy((a3 + 4), v80, v81);
          }

          if ((v79 & 0x80000000) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }

        HIBYTE(v155) = 11;
        strcpy(&__s2, "ssr:return:");
        if (SHIBYTE(__dst[2]) < 0)
        {
          if (__dst[1] >= 0xB)
          {
            v76 = 11;
          }

          else
          {
            v76 = __dst[1];
          }

          v45 = memcmp(__dst[0], &__s2, v76);
          if (v76 != 11)
          {
            goto LABEL_236;
          }
        }

        else
        {
          if (SHIBYTE(__dst[2]) >= 0xB)
          {
            v44 = 11;
          }

          else
          {
            v44 = SHIBYTE(__dst[2]);
          }

          v45 = memcmp(__dst, &__s2, v44);
          if (v44 != 11)
          {
            goto LABEL_236;
          }
        }

        if (!v45)
        {
          if (SHIBYTE(v165) < 0)
          {
            std::string::__assign_no_alias<false>(&v164, &__s2, 0xBuLL);
          }

          else
          {
            v164 = __s2;
            v165 = v155;
          }
        }

LABEL_236:
        std::string::__assign_external(&v153, v46, v47);
        if (!ETLEFSearchCrashReason(__dst, &__s2, &v153.__r_.__value_.__l.__data_, buf))
        {
          if (SHIBYTE(v153.__r_.__value_.__r.__words[2]) < 0)
          {
            v153.__r_.__value_.__l.__size_ = 15;
            v108 = v153.__r_.__value_.__r.__words[0];
          }

          else
          {
            *(&v153.__r_.__value_.__s + 23) = 15;
            v108 = &v153;
          }

          strcpy(v108, "([^:]*):([^:]*)");
          if (!ETLEFSearchCrashReason(__dst, &__s2, &v153.__r_.__value_.__l.__data_, buf))
          {
            v117 = SHIBYTE(v169);
            if ((SHIBYTE(v169) & 0x8000000000000000) != 0)
            {
              v118 = v167;
              v117 = v168;
              v119 = (a3 + 4);
              v120 = v167;
            }

            else
            {
              v118 = &v167;
              v119 = (a3 + 4);
              v120 = &v167;
            }

            strncpy(v119, v120, v117);
            v84 = (a3 + 68);
            v82 = v118;
            v83 = v117;
            goto LABEL_181;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3) <= 1)
          {
            v109 = &buf[24];
          }

          else
          {
            v109 = (*buf + 24);
          }

          std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](&__p, v109);
          v110 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v78 = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v111 = &__p;
          }

          else
          {
            v111 = __p.__r_.__value_.__r.__words[0];
          }

          v112 = *buf;
          v113 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          if (v113 <= 1)
          {
            v114 = buf;
          }

          else
          {
            v114 = *buf;
          }

          if (v114[40] == 1)
          {
            if (v113 <= 1)
            {
              v112 = buf;
            }

            v115 = *(v112 + 4) - *(v112 + 3);
            if (v115 >= 0x40)
            {
              v116 = 64;
            }

            else
            {
              v116 = v115;
            }
          }

          else
          {
            v116 = 0;
          }

          strncpy((a3 + 4), v111, v116);
          if ((v110 & 0x80000000) == 0)
          {
LABEL_174:
            if (v169 >= 0)
            {
              v82 = &v167;
            }

            else
            {
              v82 = v167;
            }

            if (v169 >= 0)
            {
              v83 = HIBYTE(v169);
            }

            else
            {
              v83 = v168;
            }

            v84 = (a3 + 68);
LABEL_181:
            strncpy(v84, v82, v83);
            *a3 = 0;
            goto LABEL_182;
          }

LABEL_173:
          operator delete(v78);
          goto LABEL_174;
        }

        v151 = v4;
        v100 = *buf;
        v101 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
        if (v101 <= 1)
        {
          v102 = buf;
        }

        else
        {
          v102 = *buf;
        }

        if (v102[40] == 1)
        {
          v103 = *(v102 + 3);
          if (v101 <= 1)
          {
            v104 = buf;
          }

          else
          {
            v104 = *buf;
          }

          v105 = *(v104 + 4);
          v106 = v105 - v103;
          if ((v105 - v103) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v106 > 0x16)
          {
            if ((v106 | 7) == 0x17)
            {
              v121 = 25;
            }

            else
            {
              v121 = (v106 | 7) + 1;
            }

            v107 = operator new(v121);
            __p.__r_.__value_.__l.__size_ = v105 - v103;
            __p.__r_.__value_.__r.__words[2] = v121 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v107;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v105 - v103;
            v107 = &__p;
          }

          if (v105 != v103)
          {
            memmove(v107, v103, v105 - v103);
          }

          v107->__r_.__value_.__s.__data_[v106] = 0;
          v122 = __p.__r_.__value_.__r.__words[0];
          v123 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (v102[40])
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v124 = &__p;
            }

            else
            {
              v124 = __p.__r_.__value_.__r.__words[0];
            }

            if (*(v104 + 4) - *(v102 + 3) >= 0x40uLL)
            {
              v125 = 64;
            }

            else
            {
              v125 = *(v104 + 4) - *(v102 + 3);
            }

            strncpy((a3 + 4), v124, v125);
          }

          if (v123 < 0)
          {
            operator delete(v122);
            v100 = *buf;
            v101 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
          }
        }

        if (v101 <= 2)
        {
          v126 = &buf[24];
        }

        else
        {
          v126 = (v100 + 48);
        }

        if (v101 <= 2)
        {
          v127 = &v157;
        }

        else
        {
          v127 = (v100 + 64);
        }

        if (*v127 != 1)
        {
          v133 = (v100 + 88);
          if (v101 <= 3)
          {
            v133 = &v157;
          }

          if (*v133 != 1)
          {
            goto LABEL_141;
          }

          goto LABEL_311;
        }

        v128 = *v126;
        v129 = &buf[32];
        if (v101 > 2)
        {
          v129 = (v100 + 56);
        }

        v130 = *v129;
        v131 = *v129 - v128;
        if (v131 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v150 = v129;
        if (v131 > 0x16)
        {
          if ((v131 | 7) == 0x17)
          {
            v134 = 25;
          }

          else
          {
            v134 = (v131 | 7) + 1;
          }

          v132 = operator new(v134);
          __p.__r_.__value_.__l.__size_ = v131;
          __p.__r_.__value_.__r.__words[2] = v134 | 0x8000000000000000;
          __p.__r_.__value_.__r.__words[0] = v132;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = *v129 - v128;
          v132 = &__p;
        }

        if (v130 != v128)
        {
          memmove(v132, v128, v131);
        }

        v132->__r_.__value_.__s.__data_[v131] = 0;
        v135 = __p.__r_.__value_.__r.__words[0];
        v136 = *v127;
        v137 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (v136)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v145 = &__p;
          }

          else
          {
            v145 = __p.__r_.__value_.__r.__words[0];
          }

          if (*v150 - *v126 >= 0x40uLL)
          {
            v146 = 64;
          }

          else
          {
            v146 = *v150 - *v126;
          }

          strncpy((a3 + 68), v145, v146);
          if ((v137 & 0x80000000) == 0)
          {
LABEL_308:
            v138 = (v100 + 88);
            if (v101 <= 3)
            {
              v138 = &v157;
            }

            if (*v138 != 1)
            {
              goto LABEL_141;
            }

LABEL_311:
            v139 = (v100 + 72);
            if (v101 <= 3)
            {
              v139 = &buf[24];
            }

            v140 = *v139;
            v141 = (v100 + 80);
            if (v101 <= 3)
            {
              v141 = &buf[32];
            }

            v142 = *v141;
            v143 = *v141 - v140;
            if (v143 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v143 > 0x16)
            {
              if ((v143 | 7) == 0x17)
              {
                v148 = 25;
              }

              else
              {
                v148 = (v143 | 7) + 1;
              }

              v4 = v151;
              v144 = operator new(v148);
              __p.__r_.__value_.__l.__size_ = v143;
              __p.__r_.__value_.__r.__words[2] = v148 | 0x8000000000000000;
              __p.__r_.__value_.__r.__words[0] = v144;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = *v141 - v140;
              v144 = &__p;
              v4 = v151;
            }

            if (v142 != v140)
            {
              memmove(v144, v140, v143);
            }

            v144->__r_.__value_.__s.__data_[v143] = 0;
            goto LABEL_149;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_308;
        }

        operator delete(v135);
        v100 = *buf;
        v101 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
        v147 = (*buf + 88);
        if (v101 <= 3)
        {
          v147 = &v157;
        }

        if (*v147 != 1)
        {
          goto LABEL_141;
        }

        goto LABEL_311;
      }
    }

    else
    {
      HIBYTE(__dst[2]) = v10 - a1;
      v12 = __dst;
      if (v10 == a1)
      {
        goto LABEL_20;
      }
    }

    memcpy(v12, a1, v10 - a1);
    v12 = (v12 + v11);
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2977D1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "buff is null", buf, 2u);
  }

  return v4;
}

void sub_2977D2A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      v36 = a33;
      if (!a33)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  v36 = a33;
  if (!a33)
  {
LABEL_4:
    if ((*(v34 - 169) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v36);
  if ((*(v34 - 169) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v34 - 145) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v34 - 192));
  if ((*(v34 - 145) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v34 - 121) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(v34 - 168));
  if ((*(v34 - 121) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(v34 - 97) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(v34 - 144));
  if ((*(v34 - 97) & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_15:
  operator delete(*(v34 - 120));
  _Unwind_Resume(exception_object);
}

uint64_t ETLEFSearchCrashReason(uint64_t a1, const void **a2, const void **a3, void *a4)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  v8 = v7 + v5;
  if (v7 + v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    HIBYTE(__p.__end_cap_.__value_) = v7 + v5;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v88[16] = v15;
    *&v88[32] = v15;
    *&v87[0].__locale_ = v15;
    *v88 = v15;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if ((v8 | 7) == 0x17)
  {
    v12 = 25;
  }

  else
  {
    v12 = (v8 | 7) + 1;
  }

  p_p = operator new(v12);
  __p.__end_ = (v7 + v5);
  __p.__end_cap_.__value_ = (v12 | 0x8000000000000000);
  __p.__begin_ = p_p;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v88[16] = v14;
  *&v88[32] = v14;
  *&v87[0].__locale_ = v14;
  *v88 = v14;
  if (v5)
  {
LABEL_15:
    v16 = *a2;
    if (v4 >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(p_p, v17, v5);
  }

LABEL_19:
  if (v7)
  {
    v18 = *a3;
    if (v6 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    memmove(p_p + v5, v19, v7);
  }

  *(&p_p->first + v5 + v7) = 0;
  MEMORY[0x29C275600](v87);
  v87[1].__locale_ = std::locale::use_facet(v87, MEMORY[0x29EDC93D0]);
  *v88 = std::locale::use_facet(v87, MEMORY[0x29EDC93E8]);
  memset(&v88[8], 0, 40);
  value_high = HIBYTE(__p.__end_cap_.__value_);
  if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
  {
    begin = &__p;
  }

  else
  {
    begin = __p.__begin_;
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    value_high = __p.__end_;
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(v87, begin, &value_high[begin]) != &value_high[begin])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v91 = 0xAAAAAAAAAAAAAAAALL;
  v92 = 0xAAAAAAAAAAAAAA00;
  v94 = v22;
  *&v91[16] = 0;
  v93 = 0uLL;
  LOBYTE(v94) = 0;
  BYTE8(v94) = 0;
  v95 = 0;
  __p.__begin_ = 0;
  __p.__end_ = 0;
  v23 = *(a1 + 23);
  if (v23 >= 0)
  {
    v24 = a1;
  }

  else
  {
    v24 = *a1;
  }

  if (v23 >= 0)
  {
    v25 = *(a1 + 23);
  }

  else
  {
    v25 = *(a1 + 8);
  }

  v26 = (v24 + v25);
  __p.__end_cap_.__value_ = 0;
  v90.i64[0] = v24 + v25;
  v90.i64[1] = v24 + v25;
  v91[0] = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, (*&v88[12] + 1), &v90);
  *&v91[8] = v24;
  *&v91[16] = v24;
  LOBYTE(v92) = 0;
  v93 = v90;
  LOBYTE(v94) = v91[0];
  v95 = v24;
  BYTE8(v94) = 1;
  if ((*&v88[8] & 0x1F0) == 0)
  {
    v27 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(v87, v24, (v24 + v25), &__p, 0, 1);
    goto LABEL_44;
  }

  if (!*&v88[12])
  {
    v27 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(v87, v24, v24 + v25, &__p, 0, 1);
LABEL_44:
    if ((v27 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_45:
    v28 = __p.__begin_;
    end = __p.__end_;
    if (__p.__end_ == __p.__begin_)
    {
      v30 = &v90;
    }

    else
    {
      v30 = __p.__begin_;
    }

    first = v30->first;
    *&v91[16] = first;
    p_second = &__p.__begin_->second;
    if (__p.__end_ == __p.__begin_)
    {
      p_second = &v90.i64[1];
    }

    v33 = *&v91[8];
    LOBYTE(v92) = *&v91[8] != first;
    v93.i64[0] = *p_second;
    LOBYTE(v94) = v93.i64[0] != v93.i64[1];
    v85 = 1;
    v34 = a4;
    goto LABEL_74;
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(v87, v24, (v24 + v25), &__p, 0, 1))
  {
    goto LABEL_45;
  }

LABEL_51:
  v34 = a4;
  if (!v25)
  {
LABEL_64:
    v85 = 0;
    v28 = __p.__begin_;
    v33 = *&v91[8];
    __p.__end_ = __p.__begin_;
    end = __p.__begin_;
    goto LABEL_74;
  }

  v35 = v24 + 1;
  v36 = v25 - 1;
  if (v36)
  {
    while (1)
    {
      std::vector<std::sub_match<char const*>>::assign(&__p, 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3), &v90);
      if ((*&v88[8] & 0x1F0) == 0)
      {
        break;
      }

      if (!*&v88[12])
      {
        v37 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0);
LABEL_59:
        if (v37)
        {
          goto LABEL_45;
        }

        goto LABEL_60;
      }

      if (std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0))
      {
        goto LABEL_45;
      }

LABEL_60:
      std::vector<std::sub_match<char const*>>::assign(&__p, 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3), &v90);
      ++v35;
      if (!--v36)
      {
        goto LABEL_61;
      }
    }

    v37 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0);
    goto LABEL_59;
  }

LABEL_61:
  std::vector<std::sub_match<char const*>>::assign(&__p, 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3), &v90);
  if ((*&v88[8] & 0x1F0) != 0)
  {
    if (*&v88[12])
    {
      v34 = a4;
      if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0))
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    }

    v38 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0);
  }

  else
  {
    v38 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(v87, v35, v26, &__p, 128, 0);
  }

  v34 = a4;
  if ((v38 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_68:
  v28 = __p.__begin_;
  end = __p.__end_;
  if (__p.__end_ == __p.__begin_)
  {
    v39 = &v90;
  }

  else
  {
    v39 = __p.__begin_;
  }

  v40 = v39->first;
  *&v91[16] = v40;
  v41 = &__p.__begin_->second;
  if (__p.__end_ == __p.__begin_)
  {
    v41 = &v90.i64[1];
  }

  v33 = *&v91[8];
  LOBYTE(v92) = *&v91[8] != v40;
  v93.i64[0] = *v41;
  LOBYTE(v94) = v93.i64[0] != v93.i64[1];
  v85 = 1;
LABEL_74:
  v42 = *(a1 + 23);
  if (v42 >= 0)
  {
    v43 = a1;
  }

  else
  {
    v43 = *a1;
  }

  if (v42 >= 0)
  {
    v44 = *(a1 + 23);
  }

  else
  {
    v44 = *(a1 + 8);
  }

  v45 = end - v28;
  v46 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 3);
  v47 = *v34;
  v48 = v34[1];
  v49 = &v48[-*v34];
  v50 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 3);
  v51 = v46 - v50;
  if (v46 <= v50)
  {
    if (v46 < v50)
    {
      v48 = &v47[v45];
      v34[1] = &v47[v45];
    }

    v66 = v43 + v44;
    if (v48 == v47)
    {
      goto LABEL_97;
    }
  }

  else
  {
    v52 = v34[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v52 - v48) >> 3) >= v51)
    {
      v81 = &v48[24 * v51];
      v82 = 24 * v46 - 8 * (v49 >> 3);
      do
      {
        *v48 = 0;
        *(v48 + 1) = 0;
        v48[16] = 0;
        v48 += 24;
        v82 -= 24;
      }

      while (v82);
      v34[1] = v81;
      v47 = *v34;
      v48 = v81;
      v66 = v43 + v44;
      if (v48 == *v34)
      {
LABEL_97:
        v67 = v43 - v33;
        v68 = __p.__begin_;
        goto LABEL_112;
      }
    }

    else
    {
      if (v46 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v83 = v44;
      v84 = v43;
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v47) >> 3);
      v54 = 0x5555555555555556 * ((v52 - v47) >> 3);
      if (v54 <= v46)
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 3);
      }

      if (v53 >= 0x555555555555555)
      {
        v55 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v55 = v54;
      }

      if (v55 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v56 = v33;
      v57 = operator new(24 * v55);
      v58 = &v57[24 * v51 + v49];
      v59 = 24 * v46 - 8 * (v49 >> 3);
      v60 = &v57[v49];
      v33 = v56;
      v43 = v84;
      do
      {
        *v60 = 0;
        *(v60 + 1) = 0;
        v60[16] = 0;
        v60 += 24;
        v59 -= 24;
      }

      while (v59);
      v61 = &v57[24 * v55];
      if (v47 != v48)
      {
        v62 = v47;
        v63 = v57;
        do
        {
          v64 = *v62;
          *(v63 + 2) = *(v62 + 2);
          *v63 = v64;
          v63 += 24;
          v62 += 24;
        }

        while (v62 != v48);
      }

      v34 = a4;
      *a4 = v57;
      a4[1] = v58;
      a4[2] = v61;
      v65 = v83;
      if (v47)
      {
        operator delete(v47);
        v65 = v83;
        v43 = v84;
        v33 = v56;
        v58 = a4[1];
      }

      v47 = *a4;
      v48 = v58;
      v66 = v43 + v65;
      if (v48 == *a4)
      {
        goto LABEL_97;
      }
    }
  }

  v69 = 0;
  v70 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
  v68 = __p.__begin_;
  v71 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  v67 = v43 - v33;
  if (v70 <= 1)
  {
    v70 = 1;
  }

  v72 = (v47 + 16);
  v73 = __p.__begin_;
  do
  {
    if (v71 <= v69)
    {
      v74 = &v90;
    }

    else
    {
      v74 = v73;
    }

    *(v72 - 2) = v67 + v74->i64[0];
    v75 = &v73->second;
    if (v71 <= v69)
    {
      v75 = &v90.i64[1];
    }

    *(v72 - 1) = &(*v75)[v67];
    p_matched = &v73->matched;
    if (v71 <= v69)
    {
      p_matched = v91;
    }

    *v72 = *p_matched;
    v72 += 24;
    ++v69;
    ++v73;
  }

  while (v70 != v69);
LABEL_112:
  v34[3] = v66;
  v34[4] = v66;
  *(v34 + 40) = 0;
  v77 = vdupq_n_s64(v67);
  v78 = vaddq_s64(v77, *&v91[8]);
  *(v34 + 3) = v78;
  *(v34 + 64) = v92;
  *(v34 + 9) = vaddq_s64(v77, v93);
  *(v34 + 88) = v94;
  v34[13] = v78.i64[0];
  *(v34 + 96) = BYTE8(v94);
  if (v68)
  {
    __p.__end_ = v68;
    operator delete(v68);
  }

  v79 = *&v88[32];
  if (*&v88[32] && !atomic_fetch_add((*&v88[32] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v79);
  }

  std::locale::~locale(v87);
  return v85;
}

void sub_2977D3368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 + 40);
  std::locale::~locale(&a13);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2977D339C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::locale a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a13);
  _Unwind_Resume(a1);
}

void *std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  if (*(a2 + 16) != 1)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    return __dst;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    __dst = operator new(v6);
    v2[1] = v5;
    v2[2] = v6 | 0x8000000000000000;
    *v2 = __dst;
    v2 = __dst;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(__dst + 23) = v5;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  __dst = memmove(v2, v3, v5);
LABEL_12:
  *(v2 + v5) = 0;
  return __dst;
}

uint64_t ETLEFSearchBasebandCrashReasonM20(capabilities::radio *a1, uint64_t a2)
{
  v82 = *MEMORY[0x29EDCA608];
  v4 = capabilities::radio::mav25Plus(a1);
  v5 = 64488;
  if (v4)
  {
    v5 = 3048;
  }

  v76 = v5;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  memset(__p, 0, 24);
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 1);
  }

  folder = ctu::fs::read_folder();
  v11 = folder;
  v12 = __p[0];
  v75 = a2;
  if (folder)
  {
    v13 = -1431655765 * ((__p[1] - __p[0]) >> 3);
    if (v13)
    {
      v73 = folder;
      v14 = 0;
      v15 = 24 * v13;
      while (1)
      {
        v17 = __p[0];
        v18 = (__p[0] + v14);
        __s2[23] = 6;
        strcpy(__s2, "OCIMEM");
        v19 = *(__p[0] + v14 + 23);
        if (v19 < 0)
        {
          v21 = *v18;
          if (v18[1] >= 6)
          {
            v20 = 6;
          }

          else
          {
            v20 = v18[1];
          }
        }

        else
        {
          if (v19 >= 6)
          {
            v20 = 6;
          }

          else
          {
            v20 = v19;
          }

          v21 = __p[0] + v14;
        }

        v22 = memcmp(v21, __s2, v20);
        if (v20 != 6 || v22 != 0)
        {
          goto LABEL_13;
        }

        if ((v19 & 0x80000000) != 0)
        {
          v25 = *&v17[v14 + 8];
          v26 = v25 > 4;
          v27 = v25 - 4;
          if (!v26)
          {
            v32 = v78;
            if (v78 < v79)
            {
              goto LABEL_45;
            }

            goto LABEL_11;
          }

          __s2[23] = 4;
          strcpy(__s2, ".BIN");
          v28 = *&v17[v14 + 8];
          v29 = v28 >= v27;
          v30 = v28 - v27;
          if (!v29)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (v30 >= 4)
          {
            v31 = 4;
          }

          else
          {
            v31 = v30;
          }

          v24 = memcmp(&(*v18)[v27], __s2, v31);
          if (v31 != 4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v19 <= 4)
          {
            v32 = v78;
            if (v78 < v79)
            {
              goto LABEL_43;
            }

            goto LABEL_11;
          }

          __s2[23] = 4;
          strcpy(__s2, ".BIN");
          v24 = memcmp(v18 + v19 - 4, __s2, 4uLL);
        }

        if (v24)
        {
          goto LABEL_13;
        }

        v32 = v78;
        if (v78 < v79)
        {
          if ((v19 & 0x80000000) != 0)
          {
LABEL_45:
            std::string::__init_copy_ctor_external(v32, *&v17[v14], *&v17[v14 + 8]);
          }

          else
          {
LABEL_43:
            v10 = *v18;
            v32->__r_.__value_.__r.__words[2] = v18[2];
            *&v32->__r_.__value_.__l.__data_ = v10;
          }

          v16 = &v32[1];
          goto LABEL_12;
        }

LABEL_11:
        v16 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v77, v18);
LABEL_12:
        v78 = v16;
LABEL_13:
        v14 += 24;
        if (v15 == v14)
        {
          v12 = __p[0];
          v11 = v73;
          break;
        }
      }
    }
  }

  if (v12)
  {
    v33 = __p[1];
    v34 = v12;
    if (__p[1] != v12)
    {
      do
      {
        v35 = *(v33 - 1);
        v33 -= 3;
        if (v35 < 0)
        {
          operator delete(*v33);
        }
      }

      while (v33 != v12);
      v34 = __p[0];
    }

    __p[1] = v12;
    operator delete(v34);
  }

  v36 = v77;
  if (!v11)
  {
LABEL_115:
    if (!v36)
    {
      goto LABEL_123;
    }

    goto LABEL_116;
  }

  if (v78 != v77)
  {
    LOBYTE(v11) = 0;
    *&v10 = 136315138;
    v72 = v10;
    while (1)
    {
      memset(__p, 170, 24);
      v37 = *(a1 + 23);
      if (v37 >= 0)
      {
        v38 = *(a1 + 23);
      }

      else
      {
        v38 = *(a1 + 1);
      }

      v39 = v38 + 1;
      if (v38 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v39 >= 0x17)
      {
        break;
      }

      memset(__s2, 0, 24);
      v41 = __s2;
      __s2[23] = v38 + 1;
      if (v38)
      {
        goto LABEL_70;
      }

LABEL_74:
      *&v41[v38] = 47;
      v44 = *(v36 + 23);
      if (v44 >= 0)
      {
        v45 = v36;
      }

      else
      {
        v45 = *v36;
      }

      if (v44 >= 0)
      {
        v46 = *(v36 + 23);
      }

      else
      {
        v46 = v36[1];
      }

      v47 = std::string::append(__s2, v45, v46);
      v48 = *&v47->__r_.__value_.__l.__data_;
      __p[2] = v47->__r_.__value_.__r.__words[2];
      *__p = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      if ((__s2[23] & 0x80000000) != 0)
      {
        operator delete(*__s2);
      }

      if (SHIBYTE(__p[2]) >= 0)
      {
        v49 = __p;
      }

      else
      {
        v49 = __p[0];
      }

      v50 = open(v49, 0, v72);
      if (v50 < 0)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v66 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v66 = __p[0];
          }

          *__s2 = v72;
          *&__s2[4] = v66;
          _os_log_error_impl(&dword_2977D1000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to open %s", __s2, 0xCu);
        }

        v57 = 0;
      }

      else
      {
        v51 = operator new[](0x100uLL);
        v51[14] = 0u;
        v51[15] = 0u;
        v51[12] = 0u;
        v51[13] = 0u;
        v51[10] = 0u;
        v51[11] = 0u;
        v51[8] = 0u;
        v51[9] = 0u;
        v51[6] = 0u;
        v51[7] = 0u;
        v51[4] = 0u;
        v51[5] = 0u;
        v51[2] = 0u;
        v51[3] = 0u;
        *v51 = 0u;
        v51[1] = 0u;
        if (lseek(v50, v76, 1) < 1 || read(v50, v51, 0x100uLL) < 1)
        {
          v57 = 0;
        }

        else
        {
          *&__s2[384] = -1431655766;
          *&v52 = 0xAAAAAAAAAAAAAAAALL;
          *(&v52 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&__s2[352] = v52;
          *&__s2[368] = v52;
          *&__s2[320] = v52;
          *&__s2[336] = v52;
          *&__s2[288] = v52;
          *&__s2[304] = v52;
          *&__s2[256] = v52;
          *&__s2[272] = v52;
          *&__s2[224] = v52;
          *&__s2[240] = v52;
          *&__s2[192] = v52;
          *&__s2[208] = v52;
          *&__s2[160] = v52;
          *&__s2[176] = v52;
          *&__s2[128] = v52;
          *&__s2[144] = v52;
          *&__s2[96] = v52;
          *&__s2[112] = v52;
          *&__s2[80] = v52;
          *&__s2[48] = v52;
          *&__s2[64] = v52;
          *&__s2[16] = v52;
          *&__s2[32] = v52;
          *__s2 = v52;
          if (ETLEFCopyCrashLocationDetailsM20(v51, 0x100u, __s2))
          {
            v53 = v75;
            v55 = *(v75 + 8);
            v54 = *(v75 + 16);
            if (v55 >= v54)
            {
              v58 = *v75;
              v59 = v55 - *v75;
              v60 = 0xA3A0FD5C5F02A3A1 * (v59 >> 2) + 1;
              if (v60 > 0xA8E83F5717C0A8)
              {
                std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
              }

              v61 = 0xA3A0FD5C5F02A3A1 * ((v54 - v58) >> 2);
              if (2 * v61 > v60)
              {
                v60 = 2 * v61;
              }

              if (v61 >= 0x54741FAB8BE054)
              {
                v62 = 0xA8E83F5717C0A8;
              }

              else
              {
                v62 = v60;
              }

              if (v62)
              {
                if (v62 > 0xA8E83F5717C0A8)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v63 = operator new(388 * v62);
              }

              else
              {
                v63 = 0;
              }

              v64 = &v63[4 * (v59 >> 2)];
              v74 = &v63[388 * v62];
              memcpy(v64, __s2, 0x184uLL);
              v56 = v64 + 388;
              v65 = &v64[-v59];
              memcpy(v65, v58, v59);
              *v75 = v65;
              *(v75 + 8) = v56;
              v53 = v75;
              *(v75 + 16) = v74;
              if (v58)
              {
                operator delete(v58);
              }
            }

            else
            {
              memcpy(*(v75 + 8), __s2, 0x184uLL);
              v56 = (v55 + 388);
            }

            *(v53 + 8) = v56;
          }

          v57 = 1;
        }

        operator delete[](v51);
        close(v50);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      LOBYTE(v11) = v57 | v11;
      v36 += 3;
      if (v36 == v78)
      {
        v36 = v77;
        goto LABEL_115;
      }
    }

    if ((v39 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v39 | 7) + 1;
    }

    v41 = operator new(v40);
    *&__s2[8] = v38 + 1;
    *&__s2[16] = v40 | 0x8000000000000000;
    *__s2 = v41;
LABEL_70:
    v42 = *a1;
    if (v37 >= 0)
    {
      v43 = a1;
    }

    else
    {
      v43 = *a1;
    }

    memmove(v41, v43, v38);
    goto LABEL_74;
  }

  LOBYTE(v11) = 0;
  if (v77)
  {
LABEL_116:
    p_data = &v78->__r_.__value_.__l.__data_;
    v68 = v36;
    if (v78 != v36)
    {
      do
      {
        v69 = *(p_data - 1);
        p_data -= 3;
        if (v69 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v36);
      v68 = v77;
    }

    v78 = v36;
    operator delete(v68);
  }

LABEL_123:
  v70 = *MEMORY[0x29EDCA608];
  return v11 & 1;
}

void sub_2977D3B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void **);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2977D3B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  std::vector<std::string>::~vector[abi:ne200100](&__p);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void sub_2977D3BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2977D3BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2977D3BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a14);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2977D3C24);
}

void sub_2977D3C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6E048, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_29EE6E050, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "basic_string");
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *a1)
{
  locale = a1[6].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
    a1 = v2;
  }

  std::locale::~locale(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E53B28;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E53B80;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = *(a1 + 40);
    *(a1 + 56) = v10;
    v11 = *(a1 + 24) & 0x1F0;
    if (v11 <= 0x3F)
    {
      goto LABEL_4;
    }

LABEL_9:
    switch(v11)
    {
      case 0x40u:
LABEL_20:

        return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      case 0x80u:
        v15 = memchr(a2, 10, a3 - a2);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = a3;
        }

        if (v16 == a2)
        {
          v17 = operator new(0x10uLL);
          v18 = *(v10 + 8);
          v17[1] = v18;
          *(v10 + 8) = v17;
          *(a1 + 56) = v17;
          if (v16 != a3)
          {
            ++v16;
          }

          if (v16 == a3)
          {
            return a3;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v16);
          if (v16 != a3)
          {
            ++v16;
          }

          if (v16 == a3)
          {
            return a3;
          }
        }

        v19 = *(a1 + 56);
        do
        {
          v29 = memchr(v16, 10, a3 - v16);
          if (v29)
          {
            v30 = v29;
          }

          else
          {
            v30 = a3;
          }

          if (v30 == v16)
          {
            v20 = operator new(0x10uLL);
            v21 = *(v19 + 8);
            v20[1] = v21;
            *(v19 + 8) = v20;
            *(a1 + 56) = v20;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v16, v30);
          }

          v22 = operator new(0x18uLL);
          v23 = *(v19 + 8);
          v22[1] = *(v10 + 8);
          v22[2] = v23;
          *v22 = &unk_2A1E54140;
          *(v10 + 8) = v22;
          *(v19 + 8) = 0;
          v24 = operator new(0x10uLL);
          v25 = *(a1 + 56);
          v26 = *(v25 + 8);
          v24[1] = v26;
          *(v19 + 8) = v24;
          *(v25 + 8) = 0;
          v27 = operator new(0x10uLL);
          v28 = *(v19 + 8);
          *v27 = &unk_2A1E54188;
          v27[1] = v28;
          *(v25 + 8) = v27;
          v19 = *(v19 + 8);
          *(a1 + 56) = v19;
          if (v30 == a3)
          {
            v16 = v30;
          }

          else
          {
            v16 = v30 + 1;
          }
        }

        while (v16 != a3);
        break;
      case 0x100u:
        v12 = memchr(a2, 10, a3 - a2);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = a3;
        }

        if (v13 == a2)
        {
          v31 = operator new(0x10uLL);
          v32 = *(v10 + 8);
          v31[1] = v32;
          *(v10 + 8) = v31;
          *(a1 + 56) = v31;
          if (v13 != a3)
          {
            ++v13;
          }

          if (v13 == a3)
          {
            return a3;
          }
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, v13);
          if (v13 != a3)
          {
            ++v13;
          }

          if (v13 == a3)
          {
            return a3;
          }
        }

        v33 = *(a1 + 56);
        do
        {
          v43 = memchr(v13, 10, a3 - v13);
          if (v43)
          {
            v44 = v43;
          }

          else
          {
            v44 = a3;
          }

          if (v44 == v13)
          {
            v34 = operator new(0x10uLL);
            v35 = *(v33 + 8);
            v34[1] = v35;
            *(v33 + 8) = v34;
            *(a1 + 56) = v34;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v13, v44);
          }

          v36 = operator new(0x18uLL);
          v37 = *(v33 + 8);
          v36[1] = *(v10 + 8);
          v36[2] = v37;
          *v36 = &unk_2A1E54140;
          *(v10 + 8) = v36;
          *(v33 + 8) = 0;
          v38 = operator new(0x10uLL);
          v39 = *(a1 + 56);
          v40 = *(v39 + 8);
          v38[1] = v40;
          *(v33 + 8) = v38;
          *(v39 + 8) = 0;
          v41 = operator new(0x10uLL);
          v42 = *(v33 + 8);
          *v41 = &unk_2A1E54188;
          v41[1] = v42;
          *(v39 + 8) = v41;
          v33 = *(v33 + 8);
          *(a1 + 56) = v33;
          if (v44 == a3)
          {
            v13 = v44;
          }

          else
          {
            v13 = v44 + 1;
          }
        }

        while (v13 != a3);
        break;
      default:
        goto LABEL_66;
    }

    return a3;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = *(a1 + 40);
  *(a1 + 56) = v10;
  v11 = *(a1 + 24) & 0x1F0;
  if (v11 > 0x3F)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v11)
  {
    if (v11 != 16)
    {
      if (v11 != 32)
      {
LABEL_66:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
      }

      goto LABEL_20;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  else
  {

    return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
  }
}

void sub_2977D45CC(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 17);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v7, a3);
    if (v8 != v7)
    {
      continue;
    }

    v9 = *(a1 + 56);
    v10 = *(a1 + 28);
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
    if (v8 == v11)
    {
      break;
    }

    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v11, a3, v9, (v10 + 1), (*(a1 + 28) + 1));
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    v12 = operator new(0x10uLL);
    v13 = *(a1 + 56);
    v14 = *(v13 + 8);
    v12[1] = v14;
    *(v13 + 8) = v12;
    *(a1 + 56) = v12;
  }

LABEL_11:
  if (v8 != a3)
  {
    if (*v8 == 124)
    {
      v22 = *(a1 + 56);
      v23 = v8 + 1;
      v24 = v8 + 1;
      while (1)
      {
        v8 = v24;
        v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(a1, v24, a3);
        if (v8 == v24)
        {
          v25 = *(a1 + 56);
          v26 = *(a1 + 28);
          v27 = std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(a1, v8, a3);
          if (v8 == v27)
          {
LABEL_8:
            if (v8 == v23)
            {
              v28 = operator new(0x10uLL);
              v29 = *(a1 + 56);
              v30 = *(v29 + 8);
              v28[1] = v30;
              *(v29 + 8) = v28;
              *(a1 + 56) = v28;
            }

            v15 = operator new(0x18uLL);
            v16 = *(v22 + 8);
            v15[1] = *(v6 + 8);
            v15[2] = v16;
            *v15 = &unk_2A1E54140;
            *(v6 + 8) = v15;
            *(v22 + 8) = 0;
            v17 = operator new(0x10uLL);
            v18 = *(a1 + 56);
            v19 = *(v18 + 8);
            v17[1] = v19;
            *(v22 + 8) = v17;
            *(v18 + 8) = 0;
            v20 = operator new(0x10uLL);
            v21 = *(v22 + 8);
            *v20 = &unk_2A1E54188;
            v20[1] = v21;
            *(v18 + 8) = v20;
            *(a1 + 56) = *(v22 + 8);
            goto LABEL_11;
          }

          v24 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v27, a3, v25, (v26 + 1), (*(a1 + 28) + 1));
        }

        if (v24 == v8)
        {
          goto LABEL_8;
        }
      }
    }

    return v8;
  }

  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  result = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      v7 = operator new(0x18uLL);
      v8 = (*(a1 + 24) & 0x5F0) == 1024;
      v9 = *(a1 + 56);
      v10 = *(v9 + 8);
      *v7 = &unk_2A1E53C78;
      v7[1] = v10;
      *(v7 + 16) = v8;
      *(v9 + 8) = v7;
      *(a1 + 56) = v7;
      result = a2 + 1;
    }

    if (result != a3)
    {
      do
      {
        if (result == a3)
        {
          v11 = a3;
          goto LABEL_13;
        }

        v11 = result;
        v12 = *(a1 + 56);
        v13 = *(a1 + 28);
        v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, result, a3);
        if (v11 == v14)
        {
          break;
        }

        result = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v14, a3, v12, (v13 + 1), (*(a1 + 28) + 1));
      }

      while (v11 != result);
      if (v11 + 1 == a3 && *v11 == 36)
      {
        v15 = operator new(0x18uLL);
        v16 = (*(a1 + 24) & 0x5F0) == 1024;
        v17 = *(a1 + 56);
        v18 = *(v17 + 8);
        *v15 = &unk_2A1E53CC0;
        v15[1] = v18;
        *(v15 + 16) = v16;
        *(v17 + 8) = v15;
        *(a1 + 56) = v15;
        ++v11;
      }

LABEL_13:
      if (v11 != a3)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
      }
    }

    return a3;
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_12;
  }

  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v7, a3);
  }

  while (v8 != v7);
  if (v8 == a2)
  {
LABEL_12:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  if (v8 == a3)
  {
    return a3;
  }

  while (*v8 == 124)
  {
    v9 = a1->__end_;
    v10 = v8 + 1;
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v8 + 1, a3);
    if (v8 + 1 == v11)
    {
      goto LABEL_12;
    }

    do
    {
      v8 = v11;
      v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(a1, v11, a3);
    }

    while (v8 != v11);
    if (v8 == v10)
    {
      goto LABEL_12;
    }

    v12 = operator new(0x18uLL);
    first = v9->__first_;
    v12[1].__vftable = end->__first_;
    v12[2].__vftable = first;
    v12->__vftable = &unk_2A1E54140;
    end->__first_ = v12;
    v9->__first_ = 0;
    v14 = operator new(0x10uLL);
    v15 = a1->__end_;
    v16 = v15->__first_;
    v14[1].__vftable = v16;
    v9->__first_ = v14;
    v15->__first_ = 0;
    v17 = operator new(0x10uLL);
    v18 = v9->__first_;
    v17->__vftable = &unk_2A1E54188;
    v17[1].__vftable = v18;
    v15->__first_ = v17;
    a1->__end_ = v9->__first_;
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 14);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::__empty_state<char> *,std::shared_ptr<std::__empty_state<char>>::__shared_ptr_default_delete<std::__empty_state<char>,std::__empty_state<char>>,std::allocator<std::__empty_state<char>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002977DFC99)
  {
    if (((v2 & 0x80000002977DFC99 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002977DFC99))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002977DFC99 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void (__cdecl ***std::__empty_state<char>::~__empty_state(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__empty_state<char>::~__empty_state(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(this->__first_);
  }
}

{
  first = this->__first_;
  if (first)
  {
    v3 = this;
    (first->~__node_0)(this->__first_);
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_assertion<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v3 = *a2;
  if (v3 > 0x5B)
  {
    if (v3 == 92)
    {
      v20 = a2 + 1;
      if (a2 + 1 != a3)
      {
        v21 = a2[1];
        if (v21 == 66)
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, a2);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2A1E53D08;
          *(v23 + 1) = v24;
          std::locale::locale(v23 + 2, a1);
          *(v23 + 24) = *(a1 + 8);
          v23[40] = 0;
          *(*(a1 + 56) + 8) = v23;
          *(a1 + 56) = v23;
        }

        return v20 + 1;
      }

      return a2;
    }

    if (v3 != 94)
    {
      return a2;
    }

    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E53C78;
LABEL_17:
    *v15 = v18;
    *(v15 + 16) = v16;
    *(v17 + 8) = v15;
    *(v13 + 56) = v15;
    return v14 + 1;
  }

  if (v3 == 36)
  {
    v13 = a1;
    v14 = a2;
    v15 = operator new(0x18uLL);
    v16 = (*(v13 + 24) & 0x5F0) == 1024;
    v17 = *(v13 + 56);
    v15[1] = *(v17 + 8);
    v18 = &unk_2A1E53CC0;
    goto LABEL_17;
  }

  if (v3 != 40)
  {
    return a2;
  }

  v4 = a2 + 1;
  if (a2 + 1 == a3 || a2[1] != 63 || a2 + 2 == a3)
  {
    return a2;
  }

  v5 = a2[2];
  if (v5 == 33)
  {
    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v31.__loop_count_ = v25;
    *&v31.__start_.__cntrl_ = v25;
    *&v31.__traits_.__loc_.__locale_ = v25;
    *&v31.__traits_.__col_ = v25;
    v26 = a1;
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
    v28 = v26;
    v31.__flags_ = v26->__flags_;
    v29 = v4 + 2;
    v30 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v29, a3);
    LODWORD(v26) = v31.__marked_count_;
    std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v28, &v31, 1, v28->__marked_count_);
    v28->__marked_count_ += v26;
    if (v12 == v30 || *v12 != 41)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
    }

    goto LABEL_27;
  }

  if (v5 != 61)
  {
    return a2;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31.__loop_count_ = v6;
  *&v31.__start_.__cntrl_ = v6;
  *&v31.__traits_.__loc_.__locale_ = v6;
  *&v31.__traits_.__col_ = v6;
  v7 = a1;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v31);
  v9 = v7;
  v31.__flags_ = v7->__flags_;
  v10 = v4 + 2;
  v11 = a3;
  v12 = std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(&v31, v10, a3);
  LODWORD(v7) = v31.__marked_count_;
  std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(v9, &v31, 0, v9->__marked_count_);
  v9->__marked_count_ += v7;
  if (v12 == v11 || *v12 != 41)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

LABEL_27:
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&v31.__traits_.__loc_);
  return v12 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v4 = *a2;
  if (v4 > 0x3E)
  {
    v11 = v4 - 92;
    if (v11 <= 0x21)
    {
      v3 = a2;
      if (((1 << (v4 - 92)) & 0x300000006) != 0)
      {
        return v3;
      }

      if (v4 == 92)
      {
        v22 = a2 + 1;
        if (a3 == a2 + 1)
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
        }

        v23 = *v22;
        v24 = v23 - 48;
        if (v23 == 48)
        {
          v25 = 0;
LABEL_46:
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v25);
          return v22 + 1;
        }

        if ((v23 - 49) <= 8)
        {
          v3 = a2 + 2;
          if (a2 + 2 == a3)
          {
            v34 = a2;
            v35 = a3;
            v3 = a3;
          }

          else
          {
            while (1)
            {
              v33 = *v3;
              if ((v33 - 48) > 9)
              {
                break;
              }

              if (v24 >= 0x19999999)
              {
                goto LABEL_75;
              }

              ++v3;
              v24 = v33 + 10 * v24 - 48;
              if (v3 == a3)
              {
                v3 = a3;
                break;
              }
            }

            v34 = a2;
            v35 = a3;
            if (!v24)
            {
LABEL_75:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
            }
          }

          if (v24 > *(a1 + 28))
          {
            goto LABEL_75;
          }

          v36 = a1;
          std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v24);
          if (v3 != v22)
          {
            return v3;
          }

          a1 = v36;
          a3 = v35;
          a2 = v34;
          v23 = *v22;
        }

        v37 = a1;
        if (v23 > 99)
        {
          if (v23 == 119)
          {
            v42 = a2;
            v43 = a3;
            v46 = operator new(0xB0uLL);
            std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v46, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
            *(*(v37 + 56) + 8) = v46;
            *(v37 + 56) = v46;
            v46[40] |= 0x500u;
            std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v46, 95);
            a1 = v37;
LABEL_68:
            v3 = v22 + 1;
            a3 = v43;
            a2 = v42;
            goto LABEL_69;
          }

          if (v23 != 115)
          {
            v3 = v22;
            if (v23 == 100)
            {
              v38 = a2;
              v39 = a3;
              v41 = operator new(0xB0uLL);
              std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v41, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
              a1 = v37;
              *(*(v37 + 56) + 8) = v41;
              *(v37 + 56) = v41;
              v41[40] |= 0x400u;
              goto LABEL_61;
            }

LABEL_69:
            if (v22 == v3)
            {
              v3 = a2;
              v47 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, v22, a3, 0);
              if (v47 != v22)
              {
                return v47;
              }
            }

            return v3;
          }

          v42 = a2;
          v43 = a3;
          v44 = operator new(0xB0uLL);
          std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 0, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
        }

        else
        {
          if (v23 == 68)
          {
            v42 = a2;
            v43 = a3;
            v44 = operator new(0xB0uLL);
            std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
            a1 = v37;
            *(*(v37 + 56) + 8) = v44;
            *(v37 + 56) = v44;
            v45 = v44[40] | 0x400;
LABEL_67:
            v44[40] = v45;
            goto LABEL_68;
          }

          if (v23 != 83)
          {
            v3 = v22;
            if (v23 == 87)
            {
              v38 = a2;
              v39 = a3;
              v40 = operator new(0xB0uLL);
              std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v40, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
              *(*(v37 + 56) + 8) = v40;
              *(v37 + 56) = v40;
              v40[40] |= 0x500u;
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v40, 95);
              a1 = v37;
LABEL_61:
              v3 = v22 + 1;
              a3 = v39;
              a2 = v38;
              goto LABEL_69;
            }

            goto LABEL_69;
          }

          v42 = a2;
          v43 = a3;
          v44 = operator new(0xB0uLL);
          std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v44, v37, *(*(v37 + 56) + 8), 1, *(v37 + 24) & 1, (*(v37 + 24) & 8) != 0);
        }

        a1 = v37;
        *(*(v37 + 56) + 8) = v44;
        *(v37 + 56) = v44;
        v45 = v44[40] | 0x4000;
        goto LABEL_67;
      }

      if (v11 == 31)
      {
        goto LABEL_73;
      }
    }

    if (v4 == 91)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    if (v4 == 63)
    {
      goto LABEL_73;
    }

    goto LABEL_45;
  }

  v3 = a2;
  if (*a2 <= 0x28u)
  {
    if (v4 != 36)
    {
      if (v4 == 40)
      {
        if (a2 + 1 != a3)
        {
          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            ++*(a1 + 36);
            v12 = a1;
            v13 = a3;
            v14 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
            if (v14 != v13 && *v14 == 41)
            {
              --*(v12 + 36);
              return v14 + 1;
            }
          }

          else
          {
            if ((*(a1 + 24) & 2) != 0)
            {
              v19 = *(a1 + 28);
            }

            else
            {
              v15 = a1;
              v16 = a3;
              v17 = operator new(0x18uLL);
              a3 = v16;
              v18 = v17;
              a1 = v15;
              v19 = *(v15 + 28) + 1;
              *(v15 + 28) = v19;
              v20 = *(v15 + 56);
              v21 = *(v20 + 8);
              *v18 = &unk_2A1E53FD8;
              v18[1] = v21;
              *(v18 + 4) = v19;
              *(v20 + 8) = v18;
              *(v15 + 56) = v18;
            }

            ++*(a1 + 36);
            v26 = a1;
            v27 = a3;
            v28 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
            if (v28 != v27)
            {
              v22 = v28;
              if (*v28 == 41)
              {
                v29 = v26;
                if ((*(v26 + 24) & 2) == 0)
                {
                  v30 = operator new(0x18uLL);
                  v29 = v26;
                  v31 = *(v26 + 56);
                  v32 = *(v31 + 8);
                  *v30 = &unk_2A1E54020;
                  v30[1] = v32;
                  *(v30 + 4) = v19;
                  *(v31 + 8) = v30;
                  *(v26 + 56) = v30;
                }

                --*(v29 + 36);
                return v22 + 1;
              }
            }
          }
        }

        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
      }

      goto LABEL_45;
    }
  }

  else if (v4 != 41)
  {
    if (v4 == 46)
    {
      v5 = a1;
      v6 = a2;
      v7 = operator new(0x10uLL);
      v8 = *(v5 + 56);
      v9 = *(v8 + 8);
      *v7 = &unk_2A1E53D98;
      v7[1] = v9;
      *(v8 + 8) = v7;
      *(v5 + 56) = v7;
      return v6 + 1;
    }

    if (v4 - 42 < 2)
    {
LABEL_73:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

LABEL_45:
    v22 = a2;
    v25 = v4;
    goto LABEL_46;
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  v6 = a2;
  if (a2 == a3)
  {
    return v6;
  }

  v7 = *(a1 + 24) & 0x1F0;
  v8 = *a2;
  if (v8 > 0x3E)
  {
    if (v8 == 63)
    {
      v6 = a2 + 1;
      if (v7)
      {
        v19 = 1;
      }

      else
      {
        v19 = v6 == a3;
      }

      if (!v19 && *v6 == 63)
      {
        v6 = a2 + 2;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v9 = 0;
        v16 = 1;
        v17 = 0;
        goto LABEL_72;
      }

      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      v16 = 1;
      goto LABEL_71;
    }

    v6 = a2;
    if (v8 != 123)
    {
      return v6;
    }

    v10 = a2 + 1;
    if (a2 + 1 != a3)
    {
      v11 = *v10;
      if ((v11 & 0xF8) == 0x30 || (v11 & 0xFE) == 0x38)
      {
        v12 = v11 - 48;
        v13 = a2 + 2;
        if (a2 + 2 == a3)
        {
LABEL_19:
          v13 = a3;
        }

        else
        {
          while (1)
          {
            v14 = *v13;
            if ((v14 & 0xF8) != 0x30 && (v14 & 0xFE) != 0x38)
            {
              break;
            }

            if (v12 >= 214748364)
            {
              goto LABEL_74;
            }

            v12 = v14 + 10 * v12 - 48;
            if (++v13 == a3)
            {
              goto LABEL_19;
            }
          }
        }

        if (v13 != v10)
        {
          if (v13 != a3)
          {
            v15 = *v13;
            if (v15 != 44)
            {
              if (v15 == 125)
              {
                v6 = v13 + 1;
                if (!v7 && v6 != a3 && *v6 == 63)
                {
                  v9 = v12;
                  v6 = v13 + 2;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  v16 = v12;
                  v17 = 0;
LABEL_72:
                  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v9, v16, a4, __mexp_begin, __mexp_end, v17);
                  return v6;
                }

                v9 = v12;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                v16 = v12;
LABEL_71:
                v17 = 1;
                goto LABEL_72;
              }

              goto LABEL_74;
            }

            v20 = v13 + 1;
            if (v13 + 1 == a3)
            {
              goto LABEL_74;
            }

            v21 = *v20;
            if (v21 == 125)
            {
              v6 = v13 + 2;
              if (!v7 && v6 != a3 && *v6 == 63)
              {
                v9 = v12;
                v6 = v13 + 3;
                __mexp_begin = __mexp_begin;
                __mexp_end = __mexp_end;
                goto LABEL_34;
              }

              v9 = v12;
              __mexp_begin = __mexp_begin;
              __mexp_end = __mexp_end;
LABEL_43:
              v16 = -1;
              goto LABEL_71;
            }

            if (v20 != a3 && ((v21 & 0xF8) == 0x30 || (v21 & 0xFE) == 0x38))
            {
              v22 = v21 - 48;
              v23 = v13 + 2;
              if (v23 == a3)
              {
LABEL_60:
                v23 = a3;
              }

              else
              {
                while (1)
                {
                  v24 = *v23;
                  if ((v24 & 0xF8) != 0x30 && (v24 & 0xFE) != 0x38)
                  {
                    break;
                  }

                  if (v22 >= 214748364)
                  {
                    goto LABEL_74;
                  }

                  v22 = v24 + 10 * v22 - 48;
                  if (++v23 == a3)
                  {
                    goto LABEL_60;
                  }
                }
              }

              if (v23 != v20 && v23 != a3 && *v23 == 125)
              {
                if (v22 >= v12)
                {
                  v6 = v23 + 1;
                  if (!v7 && v6 != a3 && *v6 == 63)
                  {
                    v9 = v12;
                    v16 = v22;
                    v6 = v23 + 2;
                    __mexp_begin = __mexp_begin;
                    __mexp_end = __mexp_end;
                    v17 = 0;
                    goto LABEL_72;
                  }

                  v9 = v12;
                  v16 = v22;
                  __mexp_begin = __mexp_begin;
                  __mexp_end = __mexp_end;
                  goto LABEL_71;
                }

                goto LABEL_74;
              }
            }
          }

          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
        }
      }
    }

LABEL_74:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v8 == 42)
  {
    v6 = a2 + 1;
    if (v7)
    {
      v18 = 1;
    }

    else
    {
      v18 = v6 == a3;
    }

    if (!v18 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 0;
      goto LABEL_34;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 0;
    goto LABEL_43;
  }

  v6 = a2;
  if (v8 == 43)
  {
    v6 = a2 + 1;
    if (!v7 && v6 != a3 && *v6 == 63)
    {
      v6 = a2 + 2;
      __mexp_begin = __mexp_begin;
      __mexp_end = __mexp_end;
      v9 = 1;
LABEL_34:
      v16 = -1;
      v17 = 0;
      goto LABEL_72;
    }

    __mexp_begin = __mexp_begin;
    __mexp_end = __mexp_end;
    v9 = 1;
    goto LABEL_43;
  }

  return v6;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(std::basic_regex<char> *this, BOOL a2)
{
  v3 = operator new(0x30uLL);
  first = this->__end_->__first_;
  *v3 = &unk_2A1E53D08;
  *(v3 + 1) = first;
  std::locale::locale(v3 + 2, &this->__traits_.__loc_);
  *(v3 + 24) = *&this->__traits_.__ct_;
  v3[40] = 1;
  this->__end_->__first_ = v3;
  this->__end_ = v3;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](uint64_t a1)
{
  v2 = MEMORY[0x29C275600]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void std::basic_regex<char,std::regex_traits<char>>::__push_lookahead(std::basic_regex<char> *this, const std::basic_regex<char> *a2, BOOL a3, unsigned int a4)
{
  v8 = operator new(0x58uLL);
  first = this->__end_->__first_;
  *v8 = &unk_2A1E53D50;
  *(v8 + 1) = first;
  std::locale::locale(v8 + 2, &a2->__traits_.__loc_);
  *(v8 + 24) = *&a2->__traits_.__ct_;
  *(v8 + 40) = *&a2->__flags_;
  cntrl = a2->__start_.__cntrl_;
  *(v8 + 7) = a2->__start_.__ptr_;
  *(v8 + 8) = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v8 + 9) = a2->__end_;
  *(v8 + 20) = a4;
  v8[84] = a3;
  this->__end_->__first_ = v8;
  this->__end_ = v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 6);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53D08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__word_boundary<char,std::regex_traits<char>>::~__word_boundary(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53D08;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__word_boundary<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53D50;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void std::__lookahead<char,std::regex_traits<char>>::~__lookahead(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53D50;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(a1);
}

void std::__lookahead<char,std::regex_traits<char>>::__exec(uint64_t a1, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAA00;
  v24 = v4;
  v21 = 0;
  v23 = 0uLL;
  LOBYTE(v24) = 0;
  BYTE8(v24) = 0;
  v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  *&v19 = *(a2 + 24);
  *(&v19 + 1) = v19;
  LOBYTE(v20) = 0;
  std::vector<std::sub_match<char const*>>::assign(&__p, v5, &v19);
  *(&v20 + 1) = v6;
  v21 = v6;
  LOBYTE(v22) = 0;
  v23 = v19;
  LOBYTE(v24) = v20;
  v25 = v6;
  BYTE8(v24) = 1;
  v7 = *(a2 + 88) & 0xFFF;
  v8 = *(a2 + 16);
  if (v8 == *(a2 + 8))
  {
    v9 = *(a2 + 92);
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 84) == std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1 + 16, v8, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v9))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    begin = __p.__begin_;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  begin = __p.__begin_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((__p.__end_ - __p.__begin_) >> 3);
  if (v11 < 2)
  {
LABEL_10:
    if (!begin)
    {
      return;
    }

    goto LABEL_11;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 32);
  v14 = 2;
  v15 = 1;
  do
  {
    v16 = &begin[v15];
    v17 = v13 + 24 * v12;
    *v17 = v16->std::pair<const char *, const char *>;
    *(v17 + 16) = v16->matched;
    v15 = v14;
    ++v12;
    ++v14;
  }

  while (v11 > v15);
LABEL_11:

  operator delete(begin);
}

void sub_2977D6734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v48 = 0;
  memset(&v48[8], 0, 85);
  v13 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
  v51 = v13;
  if (*&v48[56])
  {
    operator delete(*&v48[56]);
  }

  if (*&v48[32])
  {
    operator delete(*&v48[32]);
  }

  v14 = *(v13 - 8);
  *(v13 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    std::vector<std::sub_match<char const*>>::__append((v13 - 64), v15 - v16, &__x);
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v19 - v20);
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = a3 - a2;
  v22 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v22 & 0xFFF) == 0 && (v22 >> 12) >= v21)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v24 = (v13 - 96);
    v25 = *(v13 - 2);
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 96);
    }

    v26 = *v24;
    if (*v24 > -994)
    {
      if (v26 != -993)
      {
        if (v26 == -992)
        {
          *&v31 = 0xAAAAAAAAAAAAAAAALL;
          *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v48[64] = v31;
          *&v48[80] = v31;
          *&v48[32] = v31;
          *&v48[48] = v31;
          *v48 = v31;
          *&v48[16] = v31;
          std::__state<char>::__state(v48, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 96);
          (*(**&v48[80] + 24))(*&v48[80], 0, v48);
          v32 = v51;
          if (v51 >= v52)
          {
            v51 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v50, v48);
            if (*&v48[56])
            {
              *&v48[64] = *&v48[56];
              operator delete(*&v48[56]);
            }
          }

          else
          {
            v33 = *&v48[16];
            *v51 = *v48;
            *(v32 + 1) = v33;
            *(v32 + 6) = 0;
            *(v32 + 7) = 0;
            *(v32 + 4) = 0;
            *(v32 + 5) = 0;
            *(v32 + 2) = *&v48[32];
            *(v32 + 6) = *&v48[48];
            *&v48[32] = 0;
            *&v48[40] = 0;
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 56) = *&v48[56];
            *(v32 + 9) = *&v48[72];
            memset(&v48[48], 0, 32);
            v34 = *&v48[80];
            *(v32 + 85) = *&v48[85];
            *(v32 + 10) = v34;
            v51 = v32 + 96;
          }

          if (*&v48[32])
          {
            *&v48[40] = *&v48[32];
            operator delete(*&v48[32]);
          }
        }

        else if (v26 != -991)
        {
          goto LABEL_57;
        }

        goto LABEL_17;
      }

      goto LABEL_30;
    }

    if ((v26 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v23 = v50;
    v13 = v51;
    ++v22;
    if (v50 == v51)
    {
      v17 = 0;
      if (!v50)
      {
        return v17;
      }

      goto LABEL_42;
    }
  }

  if (v26 != -1000)
  {
LABEL_57:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
  }

  v27 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v27 == a2)
  {
LABEL_30:
    v28 = v51;
    v29 = *(v51 - 5);
    if (v29)
    {
      *(v51 - 4) = v29;
      operator delete(v29);
    }

    v30 = *(v28 - 8);
    if (v30)
    {
      *(v28 - 7) = v30;
      operator delete(v30);
    }

    v51 = v28 - 96;
    goto LABEL_17;
  }

  v39 = *a4;
  *v39 = a2;
  *(v39 + 8) = v27;
  *(v39 + 16) = 1;
  v40 = *(v13 - 8);
  v41 = *(v13 - 7) - v40;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    v43 = (v40 + 16);
    v44 = 1;
    do
    {
      v45 = v39 + 24 * v44;
      *v45 = *(v43 - 1);
      v46 = *v43;
      v43 += 24;
      *(v45 + 16) = v46;
    }

    while (v42 > v44++);
  }

  v17 = 1;
  v23 = v50;
  if (v50)
  {
LABEL_42:
    for (i = v51; i != v23; i -= 96)
    {
      v36 = *(i - 5);
      if (v36)
      {
        *(i - 4) = v36;
        operator delete(v36);
      }

      v37 = *(i - 8);
      if (v37)
      {
        *(i - 7) = v37;
        operator delete(v37);
      }
    }

    operator delete(v23);
  }

  return v17;
}

void sub_2977D6B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__state<char>::~__state(&a9);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v9 - 88));
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v8 = begin;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_29;
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= __n)
    {
      v10 = __n;
    }

    v11 = v9 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v10;
    if (v11 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_29:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    v13 = operator new(24 * v11);
    this->__begin_ = v13;
    this->__end_ = v13;
    this->__end_cap_.__value_ = &v13[v12];
    v14 = 24 * __n;
    v15 = &v13[__n];
    do
    {
      v13->std::pair<const char *, const char *> = __u->std::pair<const char *, const char *>;
      *&v13->matched = *&__u->matched;
      ++v13;
      v14 -= 24;
    }

    while (v14);
    goto LABEL_28;
  }

  end = this->__end_;
  v17 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v17 >= __n)
  {
    v18 = __n;
  }

  else
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v18)
  {
    first = __u->first;
    second = __u->second;
    v21 = v18;
    matched = __u->matched;
    if (v18 == 1)
    {
      goto LABEL_32;
    }

    v8 = &begin[v18 & 0xFFFFFFFFFFFFFFFELL];
    v21 = v18 & 1;
    v23 = begin + 1;
    v24 = v18 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v23[-1].first = first;
      v23[-1].second = second;
      v23->first = first;
      v23->second = second;
      v23[-1].matched = matched;
      v23->matched = matched;
      v23 += 2;
      v24 -= 2;
    }

    while (v24);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_32:
      do
      {
        v8->first = first;
        v8->second = second;
        v8->matched = matched;
        ++v8;
        --v21;
      }

      while (v21);
    }
  }

  if (__n <= v17)
  {
    v15 = &begin[__n];
LABEL_28:
    this->__end_ = v15;
    return;
  }

  v25 = &end[__n - v17];
  v26 = 24 * __n - 24 * v17;
  do
  {
    v27 = __u->std::pair<const char *, const char *>;
    *&end->matched = *&__u->matched;
    end->std::pair<const char *, const char *> = v27;
    ++end;
    v26 -= 24;
  }

  while (v26);
  this->__end_ = v25;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 12);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 16);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void **std::vector<std::__state<char>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

char *std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(96 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 16);
  v9 = &v7[96 * v2];
  *v9 = *a2;
  *(v9 + 1) = v8;
  v10 = &v7[96 * v6];
  *(v9 + 2) = *(a2 + 32);
  *(v9 + 6) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v9 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(v9 + 85) = *(a2 + 85);
  *(v9 + 9) = v11;
  *(v9 + 10) = v12;
  v13 = v9 + 96;
  v14 = *a1;
  v15 = a1[1];
  v16 = &v9[*a1 - v15];
  if (*a1 != v15)
  {
    v17 = *a1;
    v18 = &v9[*a1 - v15];
    do
    {
      v19 = *(v17 + 1);
      *v18 = *v17;
      *(v18 + 1) = v19;
      *(v18 + 5) = 0;
      *(v18 + 6) = 0;
      *(v18 + 2) = *(v17 + 2);
      *(v18 + 6) = *(v17 + 6);
      *(v17 + 4) = 0;
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
      *(v18 + 8) = 0;
      *(v18 + 9) = 0;
      *(v18 + 56) = *(v17 + 56);
      *(v18 + 9) = *(v17 + 9);
      *(v17 + 7) = 0;
      *(v17 + 8) = 0;
      *(v17 + 9) = 0;
      v20 = *(v17 + 10);
      *(v18 + 85) = *(v17 + 85);
      *(v18 + 10) = v20;
      v17 += 96;
      v18 += 96;
    }

    while (v17 != v15);
    do
    {
      v21 = *(v14 + 7);
      if (v21)
      {
        *(v14 + 8) = v21;
        operator delete(v21);
      }

      v22 = *(v14 + 4);
      if (v22)
      {
        *(v14 + 5) = v22;
        operator delete(v22);
      }

      v14 += 96;
    }

    while (v14 != v15);
    v14 = *a1;
  }

  *a1 = v16;
  a1[1] = v13;
  a1[2] = v10;
  if (v14)
  {
    operator delete(v14);
  }

  return v13;
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v13 = &end[__n];
      v14 = 24 * __n;
      do
      {
        v15 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v15;
        ++end;
        v14 -= 24;
      }

      while (v14);
      end = v13;
    }

    this->__end_ = end;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v6 = v5 + __n;
    if (v5 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v9 = __n;
      v10 = __x;
      v11 = this;
      v12 = operator new(24 * v8);
      this = v11;
      __x = v10;
      __n = v9;
    }

    else
    {
      v12 = 0;
    }

    v16 = &v12[24 * v5];
    v17 = 24 * __n;
    v18 = (v16 + 24 * __n);
    v19 = v16;
    do
    {
      v20 = __x->std::pair<const char *, const char *>;
      v19[1].first = *&__x->matched;
      *v19 = v20;
      v19 = (v19 + 24);
      v17 -= 24;
    }

    while (v17);
    v21 = &v12[24 * v8];
    begin = this->__begin_;
    v23 = (v16 + this->__begin_ - end);
    if (end != this->__begin_)
    {
      v24 = v23;
      do
      {
        v25 = begin->std::pair<const char *, const char *>;
        *&v24->matched = *&begin->matched;
        v24->std::pair<const char *, const char *> = v25;
        ++v24;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v23;
    this->__end_ = v18;
    this->__end_cap_.__value_ = v21;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 16 * __n;
      bzero(this->__end_, 16 * __n);
      end = (end + v12);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 4) + __n;
    if (v7 >> 60)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 >> 60)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v10 = __n;
      v11 = operator new(16 * v9);
      __n = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = __n;
    bzero(&v11[v6 >> 4], 16 * __n);
    memcpy(v11, begin, v6);
    this->__begin_ = v11;
    this->__end_ = &v11[(v6 >> 4) + v13];
    this->__end_cap_.__value_ = &v11[v9];
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::__state<char>::__state(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(v8);
    *(a1 + 32) = v9;
    *(a1 + 40) = v9;
    *(a1 + 48) = &v9[v8];
    v10 = 24 * ((v8 - 24) / 0x18uLL) + 24;
    memcpy(v9, v7, v10);
    *(a1 + 40) = &v9[v10];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v12 = *(a2 + 7);
  v11 = *(a2 + 8);
  v13 = v11 - v12;
  if (v11 != v12)
  {
    if (v13 < 0)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v14 = operator new(v11 - v12);
    *(a1 + 56) = v14;
    *(a1 + 64) = v14;
    *(a1 + 72) = &v14[v13];
    v15 = v13 & 0x7FFFFFFFFFFFFFF0;
    memcpy(v14, v12, v15);
    *(a1 + 64) = &v14[v15];
  }

  v16 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v16;
  return a1;
}

void sub_2977D7550(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_260;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = (v5 == 94 ? a2 + 2 : a2 + 1);
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_260;
    }

    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      ++v7;
    }

    if (v7 == a3)
    {
      v9 = v7;
LABEL_13:
      if (v9 != a3)
      {
        if (*v9 == 45)
        {
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
          ++v9;
        }

        if (v9 != a3 && *v9 == 93)
        {
          return v9 + 1;
        }
      }

LABEL_260:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    v11 = a3 - 1;
    while (1)
    {
      v9 = v7;
      v12 = v7;
      if (v7 == a3)
      {
        goto LABEL_22;
      }

      v13 = *v7;
      v12 = v7;
      if (v13 == 93)
      {
        goto LABEL_22;
      }

      v14 = (v7 + 1);
      __p[0] = 0;
      __p[1] = 0;
      v97 = 0;
      v12 = v7;
      if ((v7 + 1) == a3 || v13 != 91)
      {
        goto LABEL_67;
      }

      v15 = *v14;
      if (v15 != 46)
      {
        if (v15 == 58)
        {
          v23 = (v7 + 2);
          if (&a3[-v7 - 2] < 2)
          {
            goto LABEL_258;
          }

          v24 = 1;
          v25 = v9 + 3;
          if (v9[2] == 58)
          {
            goto LABEL_44;
          }

          do
          {
            do
            {
              if (v25 == v11)
              {
                goto LABEL_258;
              }

              v25 = &v14[++v24 + 1];
            }

            while (v14[v24] != 58);
LABEL_44:
            ;
          }

          while (*v25 != 93);
          if (!(v14 - a3 + v24))
          {
            goto LABEL_258;
          }

          v26 = *(a1 + 24);
          v27 = v24 - 1;
          memset(__dst, 170, sizeof(__dst));
          if (v24 - 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v89 = v8;
          if (v24 >= 0x18)
          {
            v37 = a1;
            if ((v27 | 7) == 0x17)
            {
              v38 = 25;
            }

            else
            {
              v38 = (v27 | 7) + 1;
            }

            v28 = operator new(v38);
            *&__dst[8] = v24 - 1;
            *&__dst[16] = v38 | 0x8000000000000000;
            *__dst = v28;
            a1 = v37;
            v23 = v14 + 1;
          }

          else
          {
            __dst[23] = v24 - 1;
            v28 = __dst;
            if (v24 == 1)
            {
LABEL_85:
              v28[v24 - 1] = 0;
              v39 = __dst[23];
              if (__dst[23] >= 0)
              {
                v40 = __dst;
              }

              else
              {
                v40 = *__dst;
              }

              if (__dst[23] < 0)
              {
                v39 = *&__dst[8];
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), v40, &v40[v39]);
              if (__dst[23] >= 0)
              {
                v41 = __dst;
              }

              else
              {
                v41 = *__dst;
              }

              classname = std::__get_classname(v41, v26 & 1);
              v8 = v89;
              if ((__dst[23] & 0x80000000) != 0)
              {
                v43 = classname;
                operator delete(*__dst);
                classname = v43;
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v44 = 0;
              v89[40] |= classname;
              v7 = &v14[v24 + 2];
              v12 = v9;
              if (SHIBYTE(v97) < 0)
              {
LABEL_97:
                operator delete(__p[0]);
                if ((v44 & 1) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              goto LABEL_153;
            }
          }

          memmove(v28, v23, v24 - 1);
          goto LABEL_85;
        }

        if (v15 == 61)
        {
          v16 = (v7 + 2);
          if (&a3[-v7 - 2] < 2)
          {
            goto LABEL_258;
          }

          v17 = (v7 + 3);
          v18 = (v7 + 2);
          if (*(v7 + 2) == 61)
          {
            goto LABEL_35;
          }

          do
          {
            do
            {
              if (v17 == v11)
              {
LABEL_258:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              ++v18;
              ++v17;
            }

            while (*(v17 - 1) != 61);
LABEL_35:
            ;
          }

          while (*v17 != 93);
          if (a3 == v18)
          {
            goto LABEL_258;
          }

          v19 = v8;
          memset(v99, 170, sizeof(v99));
          v20 = a1;
          std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(v99, a1, v16, v18);
          v21 = SHIBYTE(v99[2]);
          if ((SHIBYTE(v99[2]) & 0x8000000000000000) != 0)
          {
            v21 = v99[1];
            if (!v99[1])
            {
LABEL_261:
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
            }

            memset(__s, 170, sizeof(__s));
            v22 = v99[0];
            memset(__dst, 170, sizeof(__dst));
            if (v99[1] > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }
          }

          else
          {
            if (!HIBYTE(v99[2]))
            {
              goto LABEL_261;
            }

            memset(__s, 170, sizeof(__s));
            v22 = v99;
            memset(__dst, 170, sizeof(__dst));
          }

          if (v21 > 0x16)
          {
            if ((v21 | 7) == 0x17)
            {
              v46 = 25;
            }

            else
            {
              v46 = (v21 | 7) + 1;
            }

            v45 = operator new(v46);
            *&__dst[8] = v21;
            *&__dst[16] = v46 | 0x8000000000000000;
            *__dst = v45;
          }

          else
          {
            __dst[23] = v21;
            v45 = __dst;
          }

          memmove(v45, v22, v21);
          v45[v21] = 0;
          memset(__s, 170, sizeof(__s));
          a1 = v20;
          (*(**(v20 + 16) + 32))(__s);
          v47 = HIBYTE(__s[2]);
          if (SHIBYTE(__s[2]) < 0)
          {
            v47 = __s[1];
          }

          v8 = v19;
          if (v47 != 1)
          {
            if (v47 == 12)
            {
              v48 = __s;
              if (SHIBYTE(__s[2]) < 0)
              {
                v48 = __s[0];
              }

              *(v48 + 11) = *(v48 + 3);
              if ((__dst[23] & 0x80000000) != 0)
              {
LABEL_114:
                operator delete(*__dst);
              }

LABEL_118:
              v49 = HIBYTE(__s[2]);
              if (SHIBYTE(__s[2]) < 0)
              {
                v49 = __s[1];
              }

              if (v49)
              {
                v50 = *(v19 + 144);
                if (v50 >= *(v19 + 152))
                {
                  v54 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v19 + 136, __s);
                }

                else
                {
                  if (SHIBYTE(__s[2]) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v19 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v51 = *__s;
                    *(v50 + 16) = __s[2];
                    *v50 = v51;
                  }

                  v54 = (v50 + 24);
                  *(v19 + 144) = v50 + 24;
                }

                *(v19 + 144) = v54;
              }

              else
              {
                v52 = HIBYTE(v99[2]);
                if (SHIBYTE(v99[2]) < 0)
                {
                  v52 = v99[1];
                }

                if (v52 == 2)
                {
                  v60 = v99;
                  if (SHIBYTE(v99[2]) < 0)
                  {
                    v60 = v99[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v19, *v60, *(v60 + 1));
                }

                else
                {
                  if (v52 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v53 = v99;
                  if (SHIBYTE(v99[2]) < 0)
                  {
                    v53 = v99[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v19, *v53);
                }
              }

              if (SHIBYTE(__s[2]) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v99[2]) < 0)
              {
                operator delete(v99[0]);
                v44 = 0;
                v7 = (v18 + 2);
                v12 = v9;
                if (SHIBYTE(v97) < 0)
                {
                  goto LABEL_97;
                }
              }

              else
              {
                v44 = 0;
                v7 = (v18 + 2);
                v12 = v9;
                if (SHIBYTE(v97) < 0)
                {
                  goto LABEL_97;
                }
              }

              goto LABEL_153;
            }

            if (SHIBYTE(__s[2]) < 0)
            {
              *__s[0] = 0;
              __s[1] = 0;
              if ((__dst[23] & 0x80000000) != 0)
              {
                goto LABEL_114;
              }

              goto LABEL_118;
            }

            LOBYTE(__s[0]) = 0;
            HIBYTE(__s[2]) = 0;
          }

          if ((__dst[23] & 0x80000000) != 0)
          {
            goto LABEL_114;
          }

          goto LABEL_118;
        }

        v12 = v7;
LABEL_67:
        v7 = *(a1 + 24) & 0x1F0;
        v33 = 0;
        goto LABEL_70;
      }

      if (&a3[-v7 - 2] < 2)
      {
        goto LABEL_259;
      }

      v29 = (v7 + 3);
      v30 = (v7 + 2);
      if (*(v7 + 2) != 46)
      {
        break;
      }

LABEL_54:
      if (*v29 != 93)
      {
        goto LABEL_52;
      }

      if (a3 == v30)
      {
LABEL_259:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
      }

      std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(__dst, a1, (v7 + 2), v30);
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *__dst;
      v97 = *&__dst[16];
      v31 = *&__dst[8];
      if (__dst[23] >= 0)
      {
        v32 = HIBYTE(v97);
      }

      else
      {
        v32 = __p[1];
      }

      if ((v32 - 1) >= 2)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
      }

      v12 = v30 + 2;
      v7 = *(a1 + 24) & 0x1F0;
      v33 = __dst[23];
      if (__dst[23] >= 0)
      {
        v31 = HIBYTE(v97);
      }

      if (v31)
      {
        if (v12 == a3)
        {
          goto LABEL_135;
        }

        goto LABEL_134;
      }

LABEL_70:
      if ((v7 | 0x40) == 0x40)
      {
        v34 = *v12;
        if (v34 == 92)
        {
          if (v7)
          {
            v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v12 + 1, a3, __p);
          }

          else
          {
            v35 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v12 + 1, a3, __p, v8);
          }

          v12 = v35;
          if (v35 == a3)
          {
            goto LABEL_135;
          }

          goto LABEL_134;
        }
      }

      else
      {
        LOBYTE(v34) = *v12;
      }

      if (v33 < 0)
      {
        v36 = __p[0];
        __p[1] = 1;
        *__p[0] = v34;
        v36[1] = 0;
        if (++v12 == a3)
        {
          goto LABEL_135;
        }
      }

      else
      {
        HIBYTE(v97) = 1;
        LOWORD(__p[0]) = v34;
        if (++v12 == a3)
        {
          goto LABEL_135;
        }
      }

LABEL_134:
      v55 = *v12;
      if (v55 != 93)
      {
        v57 = (v12 + 1);
        if (v12 + 1 != a3 && v55 == 45)
        {
          v58 = *v57;
          if (v58 != 93)
          {
            v94[0] = 0;
            v94[1] = 0;
            v95 = 0;
            v12 += 2;
            if (v57 + 1 != a3 && v58 == 91 && *v12 == 46)
            {
              v59 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v57 + 2, a3, v94);
              v7 = v90;
              goto LABEL_177;
            }

            if ((v7 | 0x40) == 0x40 && v58 == 92)
            {
              if (v7)
              {
                v59 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v12, a3, v94);
              }

              else
              {
                v59 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v12, a3, v94, v8);
              }

              v7 = v90;
LABEL_177:
              v12 = v59;
            }

            else
            {
              HIBYTE(v95) = 1;
              LOWORD(v94[0]) = v58;
              v7 = v90;
            }

            *v92 = *__p;
            v61 = v97;
            __p[1] = 0;
            v97 = 0;
            *v90 = *v94;
            v91 = v95;
            v94[1] = 0;
            v93 = v61;
            v94[0] = 0;
            v95 = 0;
            __p[0] = 0;
            if (*(v8 + 170) == 1)
            {
              if (*(v8 + 169) == 1)
              {
                v62 = v92[1];
                if (v93 >= 0)
                {
                  v62 = SHIBYTE(v93);
                }

                if (v62)
                {
                  v63 = 0;
                  v64 = SHIBYTE(v93) >> 63;
                  do
                  {
                    if (v64)
                    {
                      v65 = v92[0];
                    }

                    else
                    {
                      v65 = v92;
                    }

                    v66 = (*(**(v8 + 24) + 40))(*(v8 + 24), *(v65 + v63));
                    if (v93 >= 0)
                    {
                      v67 = v92;
                    }

                    else
                    {
                      v67 = v92[0];
                    }

                    *(v67 + v63++) = v66;
                    v68 = SHIBYTE(v93);
                    v64 = SHIBYTE(v93) >> 63;
                    if (v93 < 0)
                    {
                      v68 = v92[1];
                    }
                  }

                  while (v63 < v68);
                }

                v69 = v90[1];
                if (SHIBYTE(v91) >= 0)
                {
                  v69 = SHIBYTE(v91);
                }

                if (v69)
                {
                  v70 = 0;
                  v71 = SHIBYTE(v91) >> 63;
                  do
                  {
                    if (v71)
                    {
                      v72 = v90[0];
                    }

                    else
                    {
                      v72 = v90;
                    }

                    v73 = (*(**(v8 + 24) + 40))(*(v8 + 24), *(v72 + v70));
                    if (SHIBYTE(v91) >= 0)
                    {
                      v74 = v90;
                    }

                    else
                    {
                      v74 = v90[0];
                    }

                    *(v74 + v70++) = v73;
                    v75 = SHIBYTE(v91);
                    v71 = SHIBYTE(v91) >> 63;
                    if (SHIBYTE(v91) < 0)
                    {
                      v75 = v90[1];
                    }
                  }

                  while (v70 < v75);
                }
              }

              v76 = HIBYTE(v93);
              if (v93 >= 0)
              {
                v77 = v92;
              }

              else
              {
                v77 = v92[0];
              }

              if (v93 < 0)
              {
                v76 = v92[1];
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(v99, v8 + 16, v77, &v76[v77]);
              v78 = HIBYTE(v91);
              if (SHIBYTE(v91) >= 0)
              {
                v79 = v90;
              }

              else
              {
                v79 = v90[0];
              }

              if (SHIBYTE(v91) < 0)
              {
                v78 = v90[1];
              }

              std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v8 + 16, v79, &v78[v79]);
              *__dst = *v99;
              *&__dst[16] = v99[2];
              v101 = *__s;
              v102 = __s[2];
              memset(__s, 0, sizeof(__s));
              memset(v99, 0, sizeof(v99));
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v8 + 88), __dst);
              if ((SHIBYTE(v102) & 0x80000000) == 0)
              {
                if ((__dst[23] & 0x80000000) == 0)
                {
                  goto LABEL_218;
                }

LABEL_246:
                operator delete(*__dst);
                if (SHIBYTE(__s[2]) < 0)
                {
                  goto LABEL_247;
                }

LABEL_219:
                if (SHIBYTE(v99[2]) < 0)
                {
                  goto LABEL_248;
                }

LABEL_250:
                if (SHIBYTE(v91) < 0)
                {
                  operator delete(v90[0]);
                  if (SHIBYTE(v93) < 0)
                  {
                    goto LABEL_255;
                  }

LABEL_252:
                  if ((SHIBYTE(v95) & 0x80000000) == 0)
                  {
                    goto LABEL_152;
                  }

LABEL_256:
                  operator delete(v94[0]);
                  v44 = 1;
                  if (SHIBYTE(v97) < 0)
                  {
                    goto LABEL_97;
                  }
                }

                else
                {
                  if ((SHIBYTE(v93) & 0x80000000) == 0)
                  {
                    goto LABEL_252;
                  }

LABEL_255:
                  operator delete(v92[0]);
                  if (SHIBYTE(v95) < 0)
                  {
                    goto LABEL_256;
                  }

LABEL_152:
                  v44 = 1;
                  if (SHIBYTE(v97) < 0)
                  {
                    goto LABEL_97;
                  }
                }

LABEL_153:
                if ((v44 & 1) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }

              operator delete(v101);
              if ((__dst[23] & 0x80000000) != 0)
              {
                goto LABEL_246;
              }

LABEL_218:
              if ((SHIBYTE(__s[2]) & 0x80000000) == 0)
              {
                goto LABEL_219;
              }

LABEL_247:
              operator delete(__s[0]);
              if ((SHIBYTE(v99[2]) & 0x80000000) == 0)
              {
                goto LABEL_250;
              }

LABEL_248:
              v88 = v99[0];
            }

            else
            {
              v80 = HIBYTE(v93);
              if (v93 < 0)
              {
                v80 = v92[1];
              }

              if (v80 != 1)
              {
                goto LABEL_265;
              }

              v81 = HIBYTE(v91);
              if (SHIBYTE(v91) < 0)
              {
                v81 = v90[1];
              }

              if (v81 != 1)
              {
LABEL_265:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
              }

              if (*(v8 + 169) == 1)
              {
                if (v93 >= 0)
                {
                  v82 = v92;
                }

                else
                {
                  v82 = v92[0];
                }

                v83 = (*(**(v8 + 24) + 40))(*(v8 + 24), *v82);
                if (v93 >= 0)
                {
                  v84 = v92;
                }

                else
                {
                  v84 = v92[0];
                }

                *v84 = v83;
                if (SHIBYTE(v91) >= 0)
                {
                  v85 = v90;
                }

                else
                {
                  v85 = v90[0];
                }

                v86 = (*(**(v8 + 24) + 40))(*(v8 + 24), *v85);
                if (SHIBYTE(v91) >= 0)
                {
                  v87 = v90;
                }

                else
                {
                  v87 = v90[0];
                }

                *v87 = v86;
              }

              *__dst = *v92;
              *&__dst[16] = v93;
              v92[0] = 0;
              v92[1] = 0;
              v93 = 0;
              v101 = *v90;
              v102 = v91;
              v90[0] = 0;
              v90[1] = 0;
              v91 = 0;
              std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v8 + 88), __dst);
              if (SHIBYTE(v102) < 0)
              {
                operator delete(v101);
              }

              if ((__dst[23] & 0x80000000) == 0)
              {
                goto LABEL_250;
              }

              v88 = *__dst;
            }

            operator delete(v88);
            goto LABEL_250;
          }
        }
      }

LABEL_135:
      if (SHIBYTE(v97) < 0)
      {
        if (__p[1])
        {
          if (__p[1] == 1)
          {
            v56 = __p[0];
            goto LABEL_142;
          }

          v56 = __p[0];
LABEL_151:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v8, *v56, *(v56 + 1));
          goto LABEL_152;
        }

        operator delete(__p[0]);
      }

      else if (HIBYTE(v97))
      {
        v56 = __p;
        if (HIBYTE(v97) == 1)
        {
LABEL_142:
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, *v56);
          goto LABEL_152;
        }

        goto LABEL_151;
      }

LABEL_22:
      v7 = v12;
LABEL_23:
      if (v9 == v7)
      {
        goto LABEL_13;
      }
    }

    do
    {
LABEL_52:
      if (v29 == v11)
      {
        goto LABEL_259;
      }

      ++v30;
      ++v29;
    }

    while (*(v29 - 1) != 46);
    goto LABEL_54;
  }

  return a2;
}

void sub_2977D830C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 11);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void (__cdecl ***std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_any_but_newline<char>::~__match_any_but_newline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 3);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = *a2;
  if (v4 <= 0x71)
  {
    if (*a2 > 0x65u)
    {
      if (v4 == 102)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 12;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 12;
        return a2 + 1;
      }

      if (v4 == 110)
      {
        if (!a4)
        {
          v6 = a2;
          v8 = 10;
          goto LABEL_82;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 10;
        return a2 + 1;
      }
    }

    else
    {
      switch(v4)
      {
        case '0':
          if (!a4)
          {
            v6 = a2;
            v8 = 0;
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 0;
          return a2 + 1;
        case 'c':
          v6 = a2 + 1;
          if (a2 + 1 == a3)
          {
            goto LABEL_98;
          }

          if (*v6 < 65)
          {
            goto LABEL_98;
          }

          v7 = *v6;
          if (v7 >= 0x5B && (v7 - 97) > 0x19u)
          {
            goto LABEL_98;
          }

          v8 = v7 & 0x1F;
          if (!a4)
          {
            goto LABEL_82;
          }

          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v8;
          *(a4 + 1) = 0;
          return v6 + 1;
        case '_':
          goto LABEL_98;
      }
    }

LABEL_76:
    if ((v4 & 0x80000000) == 0 && (a1->__traits_.__ct_->__tab_[*a2] & 0x500) != 0)
    {
      goto LABEL_98;
    }

    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v4;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    v6 = a2;
    v8 = v4;
LABEL_82:
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    return v6 + 1;
  }

  if (*a2 <= 0x74u)
  {
    if (v4 == 114)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 13;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 13;
      return a2 + 1;
    }

    if (v4 == 116)
    {
      if (!a4)
      {
        v6 = a2;
        v8 = 9;
        goto LABEL_82;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 9;
      return a2 + 1;
    }

    goto LABEL_76;
  }

  if (v4 == 117)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v10 = a2[1];
    if ((v10 & 0xF8) != 0x30 && (v10 & 0xFE) != 0x38 && (v10 | 0x20u) - 97 >= 6)
    {
      goto LABEL_98;
    }

    a2 += 2;
    if (a2 == a3)
    {
      goto LABEL_98;
    }

    v11 = *a2;
    v12 = -48;
    if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
    {
      v11 |= 0x20u;
      if ((v11 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v12 = -87;
    }

    v5 = 16 * (v12 + v11);
LABEL_48:
    if (a2 + 1 == a3)
    {
      goto LABEL_98;
    }

    v13 = a2[1];
    v14 = -48;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      v13 |= 0x20u;
      if ((v13 - 97) >= 6)
      {
        goto LABEL_98;
      }

      v14 = -87;
    }

    if (a2 + 2 != a3)
    {
      v15 = a2[2];
      v16 = -48;
      if ((v15 & 0xF8) == 0x30 || (v15 & 0xFE) == 0x38)
      {
        goto LABEL_58;
      }

      v15 |= 0x20u;
      if ((v15 - 97) < 6)
      {
        v16 = -87;
LABEL_58:
        v17 = v15 + 16 * (v5 + v14 + v13) + v16;
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v17;
          *(a4 + 1) = 0;
          return a2 + 3;
        }

        v18 = a2;
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v17);
        return v18 + 3;
      }
    }

LABEL_98:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (v4 != 118)
  {
    if (v4 == 120)
    {
      v5 = 0;
      goto LABEL_48;
    }

    goto LABEL_76;
  }

  if (!a4)
  {
    v6 = a2;
    v8 = 11;
    goto LABEL_82;
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = 11;
  return a2 + 1;
}

void sub_2977D8CA4(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 4);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(std::basic_regex<char> *this, int __i)
{
  flags = this->__flags_;
  if (flags)
  {
    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1E53EB8;
  }

  else
  {
    if ((flags & 8) == 0)
    {
      v5 = operator new(0x18uLL);
      end = this->__end_;
      first = end->__first_;
      v5->__vftable = &unk_2A1E53F48;
      v5->__first_ = first;
      LODWORD(v5[1].__vftable) = __i;
      end->__first_ = v5;
      this->__end_ = v5;
      return;
    }

    v8 = operator new(0x30uLL);
    v9 = v8;
    v8[1].__locale_ = this->__end_->__first_;
    v10 = &unk_2A1E53F00;
  }

  v8->__locale_ = v10;
  std::locale::locale(v8 + 2, &this->__traits_.__loc_);
  *&v9[3].__locale_ = *&this->__traits_.__ct_;
  LODWORD(v9[5].__locale_) = __i;
  this->__end_->__first_ = v9;
  this->__end_ = v9;
}

std::locale *std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53DE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_icase<char,std::regex_traits<char>>::~__match_char_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53DE0;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53E28;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__match_char_collate<char,std::regex_traits<char>>::~__match_char_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53E28;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__match_char_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void (__cdecl ***std::__match_char<char>::~__match_char(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__match_char<char>::~__match_char(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__match_char<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53EB8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_icase<char,std::regex_traits<char>>::~__back_ref_icase(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53EB8;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_icase<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  v7 = *(v3 + 8) != *v3;
  if (v4 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v8));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v8));
      if (v9 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v8)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53F00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void std::__back_ref_collate<char,std::regex_traits<char>>::~__back_ref_collate(std::locale *a1)
{
  a1->__locale_ = &unk_2A1E53F00;
  std::locale::~locale(a1 + 2);
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  operator delete(a1);
}

uint64_t std::__back_ref_collate<char,std::regex_traits<char>>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void (__cdecl ***std::__back_ref<char>::~__back_ref(void (__cdecl ***result)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 1))(result[1]);
    return v2;
  }

  return result;
}

void std::__back_ref<char>::~__back_ref(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v2 = a1[1];
  if (v2)
  {
    v3 = a1;
    (*(*v2 + 1))(a1[1]);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t std::__back_ref<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) != 1)
  {
    goto LABEL_5;
  }

  v6 = v4;
  v5 = *v4;
  v7 = *(v6 + 8) - v5;
  v8 = *(a2 + 16);
  if (*(a2 + 24) - v8 < v7)
  {
    goto LABEL_5;
  }

  v9 = result;
  v10 = a2;
  result = memcmp(v5, *(a2 + 16), v7);
  a2 = v10;
  if (!result)
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
LABEL_5:
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  if (*(a1 + 169) == 1)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    if (v5 < v4)
    {
      *v5 = v3;
      v6 = (v5 + 1);
      goto LABEL_28;
    }

    v10 = *(a1 + 40);
    v11 = v5 - v10;
    v12 = v5 - v10 + 1;
    if (v12 >= 0)
    {
      v13 = v4 - v10;
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = v3;
        v16 = operator new(v14);
        v3 = v15;
      }

      else
      {
        v16 = 0;
      }

      v22 = &v16[v14];
      v16[v11] = v3;
      v6 = &v16[v11 + 1];
      goto LABEL_26;
    }

LABEL_29:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v7 = *(a1 + 170);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v9 < v8)
  {
    *v9 = a2;
    *(a1 + 48) = v9 + 1;
    return;
  }

  v10 = *(a1 + 40);
  v11 = v9 - v10;
  v17 = v9 - v10 + 1;
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v18 = v8 - v10;
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    v20 = a2;
    v21 = operator new(v19);
    a2 = v20;
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v22 = &v16[v19];
  v16[v11] = a2;
  v6 = &v16[v11 + 1];
LABEL_26:
  memcpy(v16, v10, v11);
  *(a1 + 40) = v16;
  *(a1 + 48) = v6;
  *(a1 + 56) = v22;
  if (v10)
  {
    operator delete(v10);
    *(a1 + 48) = v6;
    return;
  }

LABEL_28:
  *(a1 + 48) = v6;
}

uint64_t std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_2977D9B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  std::vector<std::string>::~vector[abi:ne200100]((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  v1 = std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(a1);

  operator delete(v1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__exec(const std::__bracket_expression<char, std::regex_traits<char>> *this, std::__bracket_expression<char, std::regex_traits<char>>::__state *a2)
{
  v2 = a2;
  current = a2->__current_;
  last = a2->__last_;
  if (current == last)
  {
    v10 = 0;
    negate = this->__negate_;
    goto LABEL_67;
  }

  if (!this->__might_have_digraph_ || current + 1 == last)
  {
    goto LABEL_42;
  }

  LOBYTE(__src) = *current;
  v6 = current[1];
  HIBYTE(__src) = current[1];
  if (this->__icase_)
  {
    LOBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_);
    HIBYTE(__src) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v6);
  }

  __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[2] = 0x2AAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  std::__get_collation_name(&v118, &__s);
  __p = v118;
  size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v118.__r_.__value_.__r.__words[2]);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v118.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v9 = __s.__r_.__value_.__r.__words[0];
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
LABEL_11:
      operator delete(v9);
      goto LABEL_15;
    }

    goto LABEL_181;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 3)
  {
LABEL_181:
    (*(*this->__traits_.__col_ + 32))(&v118);
    if (v8 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v118;
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
      {
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = __s.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>(&__p.__r_.__value_.__l.__data_, p_s, v90);
      }

      else
      {
        *__p.__r_.__value_.__l.__data_ = 0;
        __p.__r_.__value_.__l.__size_ = 0;
      }
    }

    else if (HIBYTE(v118.__r_.__value_.__r.__words[2]) == 1 || HIBYTE(v118.__r_.__value_.__r.__words[2]) == 12)
    {
      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__assign_no_alias<true>(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __s;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
    }

LABEL_9:
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v9 = __s.__r_.__value_.__r.__words[0];
    goto LABEL_11;
  }

LABEL_15:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v28)
    {
      goto LABEL_17;
    }

LABEL_42:
    negate = 0;
    v10 = 1;
    goto LABEL_43;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_42;
  }

LABEL_17:
  begin = this->__digraphs_.__begin_;
  v13 = this->__digraphs_.__end_ - begin;
  if (v13)
  {
    v14 = v13 >> 1;
    if ((v13 >> 1) <= 1)
    {
      v14 = 1;
    }

    p_second = &begin->second;
    while (__src != *(p_second - 1) || HIBYTE(__src) != *p_second)
    {
      p_second += 2;
      if (!--v14)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_249;
  }

LABEL_26:
  if (!this->__collate_ || this->__ranges_.__begin_ == this->__ranges_.__end_)
  {
LABEL_204:
    if (this->__equivalences_.__begin_ == this->__equivalences_.__end_)
    {
      v91 = 0;
      goto LABEL_231;
    }

    memset(&__s, 170, sizeof(__s));
    v92 = &__s;
    std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__src, &v118);
    v93 = this->__equivalences_.__begin_;
    v94 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    v95 = this->__equivalences_.__end_ - v93;
    if (v95)
    {
      v96 = v2;
      v97 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v92 = __s.__r_.__value_.__r.__words[0];
      }

      if (v97 <= 1)
      {
        v99 = 1;
      }

      else
      {
        v99 = 0xAAAAAAAAAAAAAAABLL * (v95 >> 3);
      }

      v100 = 1;
      v101 = 1;
      do
      {
        v102 = HIBYTE(v93->__r_.__value_.__r.__words[2]);
        v103 = v102;
        if ((v102 & 0x80u) != 0)
        {
          v102 = v93->__r_.__value_.__l.__size_;
        }

        if (v98 == v102)
        {
          v104 = v103 >= 0 ? v93 : v93->__r_.__value_.__r.__words[0];
          if (!memcmp(v92, v104, v98))
          {
            v91 = 1;
            v73 = 5;
            v2 = v96;
            if ((v94 & 0x80) == 0)
            {
              goto LABEL_228;
            }

            goto LABEL_227;
          }
        }

        v101 = v100++ < v97;
        ++v93;
        --v99;
      }

      while (v99);
      v73 = 0;
      v91 = 0;
      v2 = v96;
      if ((v94 & 0x80) == 0)
      {
        goto LABEL_228;
      }
    }

    else
    {
      v101 = 0;
      v73 = 0;
      v91 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_228:
        if (v101)
        {
          goto LABEL_229;
        }

LABEL_231:
        if (__src < 0)
        {
          neg_mask = this->__neg_mask_;
        }

        else
        {
          mask = this->__mask_;
          tab = this->__traits_.__ct_->__tab_;
          v107 = tab[__src];
          if (((v107 & mask) != 0 || __src == 95 && (mask & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((tab[SHIBYTE(__src)] & mask) != 0 || (mask & 0x80) != 0 && SHIBYTE(__src) == 95))
          {
            goto LABEL_249;
          }

          neg_mask = this->__neg_mask_;
          if ((neg_mask & v107) != 0 || __src == 95 && (neg_mask & 0x80) != 0)
          {
LABEL_248:
            negate = v91;
LABEL_250:
            v10 = 2;
            goto LABEL_67;
          }
        }

        if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
        {
          if ((this->__traits_.__ct_->__tab_[SHIBYTE(__src)] & neg_mask) == 0)
          {
            negate = 1;
            if (SHIBYTE(__src) != 95 || (neg_mask & 0x80) == 0)
            {
              goto LABEL_250;
            }
          }

          goto LABEL_248;
        }

LABEL_249:
        negate = 1;
        goto LABEL_250;
      }
    }

LABEL_227:
    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_228;
  }

  memset(&v118, 170, sizeof(v118));
  __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[2] = 0x2AAAAAAAAAAAAAALL;
  __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAA00AAAALL;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  (*(*this->__traits_.__col_ + 32))(&v118);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v17 = this->__ranges_.__begin_;
  v18 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  v19 = this->__ranges_.__end_ - v17;
  if (!v19)
  {
    v27 = 0;
    v73 = 0;
    goto LABEL_200;
  }

  v111 = v2;
  v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v118;
  }

  else
  {
    v21 = v118.__r_.__value_.__r.__words[0];
  }

  v22 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v118.__r_.__value_.__l.__size_;
  }

  if (v20 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 4);
  }

  v25 = &v17->second.__r_.__value_.__r.__words[2] + 7;
  v26 = 1;
  v27 = 1;
  do
  {
    v63 = *(v25 - 24);
    if (v63 >= 0)
    {
      v64 = (v25 - 47);
    }

    else
    {
      v64 = *(v25 - 47);
    }

    if (v63 >= 0)
    {
      v65 = *(v25 - 24);
    }

    else
    {
      v65 = *(v25 - 39);
    }

    if (v23 >= v65)
    {
      v66 = v65;
    }

    else
    {
      v66 = v23;
    }

    v67 = memcmp(v64, v21, v66);
    if (v67)
    {
      if ((v67 & 0x80000000) == 0)
      {
        goto LABEL_117;
      }
    }

    else if (v65 > v23)
    {
      goto LABEL_117;
    }

    v68 = *v25;
    if (v68 >= 0)
    {
      v69 = (v25 - 23);
    }

    else
    {
      v69 = *(v25 - 23);
    }

    if (v68 >= 0)
    {
      v70 = *v25;
    }

    else
    {
      v70 = *(v25 - 15);
    }

    if (v70 >= v23)
    {
      v71 = v23;
    }

    else
    {
      v71 = v70;
    }

    v72 = memcmp(v21, v69, v71);
    if (v72)
    {
      if (v72 < 0)
      {
LABEL_142:
        v73 = 5;
        goto LABEL_198;
      }
    }

    else if (v23 <= v70)
    {
      goto LABEL_142;
    }

LABEL_117:
    v27 = v26++ < v20;
    v25 += 48;
    --v24;
  }

  while (v24);
  v73 = 0;
LABEL_198:
  v2 = v111;
  v18 = v22;
LABEL_200:
  if (v18 < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if (!v27)
  {
    goto LABEL_204;
  }

  v91 = 1;
LABEL_229:
  v10 = 2;
  negate = v91;
  if (v73)
  {
    goto LABEL_67;
  }

LABEL_43:
  v29 = *v2->__current_;
  __p.__r_.__value_.__s.__data_[0] = *v2->__current_;
  if (this->__icase_)
  {
    LODWORD(v29) = (this->__traits_.__ct_->do_tolower)(this->__traits_.__ct_, v29);
    __p.__r_.__value_.__s.__data_[0] = v29;
  }

  v30 = this->__chars_.__begin_;
  v31 = this->__chars_.__end_ - v30;
  if (v31)
  {
    if (v31 <= 1)
    {
      v31 = 1;
    }

    do
    {
      v32 = *v30++;
      if (v32 == v29)
      {
        goto LABEL_66;
      }

      --v31;
    }

    while (v31);
  }

  v33 = this->__neg_mask_;
  if (v33 || this->__neg_chars_.__begin_ != this->__neg_chars_.__end_)
  {
    if ((v29 & 0x80000000) != 0 || (this->__traits_.__ct_->__tab_[v29] & v33) == 0)
    {
      v35 = (v33 >> 7) & 1;
      v34 = v29 == 95 ? v35 : 0;
    }

    else
    {
      v34 = 1;
    }

    end = this->__neg_chars_.__end_;
    v37 = memchr(this->__neg_chars_.__begin_, v29, end - this->__neg_chars_.__begin_);
    v38 = !v37 || v37 == end;
    v39 = !v38;
    if ((v34 & 1) == 0 && !v39)
    {
      goto LABEL_66;
    }
  }

  v42 = this->__ranges_.__begin_;
  v43 = this->__ranges_.__end_;
  if (v42 == v43)
  {
    goto LABEL_147;
  }

  memset(&v118, 170, sizeof(v118));
  v114 = negate;
  if (this->__collate_)
  {
    __s.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    __s.__r_.__value_.__r.__words[2] = 0x1AAAAAAAAAAAAAALL;
    __s.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA00AALL;
    __s.__r_.__value_.__s.__data_[0] = v29;
    (*(*this->__traits_.__col_ + 32))(&v118);
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v42 = this->__ranges_.__begin_;
    v44 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
    v45 = this->__ranges_.__end_ - v42;
    if (!v45)
    {
LABEL_76:
      v46 = 0;
      if ((v44 & 0x80) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }
  }

  else
  {
    v44 = 1;
    *(&v118.__r_.__value_.__s + 23) = 1;
    LOWORD(v118.__r_.__value_.__l.__data_) = v29;
    v45 = v43 - v42;
    if (!v45)
    {
      goto LABEL_76;
    }
  }

  v110 = v10;
  v112 = v2;
  v47 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 4);
  v109 = v44;
  if ((v44 & 0x80u) == 0)
  {
    v48 = &v118;
  }

  else
  {
    v48 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v49 = v44;
  }

  else
  {
    v49 = v118.__r_.__value_.__l.__size_;
  }

  if (v47 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 4);
  }

  v51 = &v42->second.__r_.__value_.__r.__words[2] + 7;
  v52 = 1;
  v46 = 1;
  while (2)
  {
    v53 = *(v51 - 24);
    if (v53 >= 0)
    {
      v54 = (v51 - 47);
    }

    else
    {
      v54 = *(v51 - 47);
    }

    if (v53 >= 0)
    {
      v55 = *(v51 - 24);
    }

    else
    {
      v55 = *(v51 - 39);
    }

    if (v49 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = v49;
    }

    v57 = memcmp(v54, v48, v56);
    if (v57)
    {
      if (v57 < 0)
      {
        goto LABEL_104;
      }
    }

    else if (v55 <= v49)
    {
LABEL_104:
      v58 = *v51;
      if (v58 >= 0)
      {
        v59 = (v51 - 23);
      }

      else
      {
        v59 = *(v51 - 23);
      }

      if (v58 >= 0)
      {
        v60 = *v51;
      }

      else
      {
        v60 = *(v51 - 15);
      }

      if (v60 >= v49)
      {
        v61 = v49;
      }

      else
      {
        v61 = v60;
      }

      v62 = memcmp(v48, v59, v61);
      if (v62)
      {
        if (v62 < 0)
        {
LABEL_115:
          negate = 1;
          v2 = v112;
          goto LABEL_144;
        }
      }

      else if (v49 <= v60)
      {
        goto LABEL_115;
      }
    }

    v46 = v52++ < v47;
    v51 += 48;
    if (--v50)
    {
      continue;
    }

    break;
  }

  v2 = v112;
  negate = v114;
LABEL_144:
  v10 = v110;
  if (v109 < 0)
  {
LABEL_145:
    operator delete(v118.__r_.__value_.__l.__data_);
  }

LABEL_146:
  if (!v46)
  {
LABEL_147:
    if (this->__equivalences_.__begin_ != this->__equivalences_.__end_)
    {
      v74 = v10;
      memset(&__s, 170, sizeof(__s));
      v75 = &__s;
      std::regex_traits<char>::__transform_primary<char *>(&__s, &this->__traits_, &__p, &__p.__r_.__value_.__s.__data_[1]);
      v76 = this->__equivalences_.__begin_;
      v77 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v78 = this->__equivalences_.__end_ - v76;
      if (v78)
      {
        v115 = negate;
        v113 = v2;
        v79 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = __s.__r_.__value_.__l.__size_;
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v75 = __s.__r_.__value_.__r.__words[0];
        }

        if (v79 <= 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = 0xAAAAAAAAAAAAAAABLL * (v78 >> 3);
        }

        v82 = 1;
        v83 = 1;
        do
        {
          v84 = HIBYTE(v76->__r_.__value_.__r.__words[2]);
          v85 = v84;
          if ((v84 & 0x80u) != 0)
          {
            v84 = v76->__r_.__value_.__l.__size_;
          }

          if (v80 == v84)
          {
            v86 = v85 >= 0 ? v76 : v76->__r_.__value_.__r.__words[0];
            if (!memcmp(v75, v86, v80))
            {
              negate = 1;
              v2 = v113;
              if ((v77 & 0x80) == 0)
              {
                goto LABEL_170;
              }

              goto LABEL_169;
            }
          }

          v83 = v82++ < v79;
          ++v76;
          --v81;
        }

        while (v81);
        v2 = v113;
        negate = v115;
        if ((v77 & 0x80) == 0)
        {
          goto LABEL_170;
        }

LABEL_169:
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      else
      {
        v83 = 0;
        if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_169;
        }
      }

LABEL_170:
      if (v83)
      {
        v10 = v74;
        goto LABEL_67;
      }

      LOBYTE(v29) = __p.__r_.__value_.__s.__data_[0];
      v10 = v74;
    }

    v87 = this->__mask_;
    if ((v29 & 0x80) != 0 || (this->__traits_.__ct_->__tab_[v29] & v87) == 0)
    {
      v88 = (v87 >> 7) & 1;
      if (v29 != 95)
      {
        LOBYTE(v88) = 0;
      }

      negate |= v88;
      goto LABEL_67;
    }

LABEL_66:
    negate = 1;
  }

LABEL_67:
  if (this->__negate_ == (negate & 1))
  {
    first = 0;
    v41 = -993;
  }

  else
  {
    v2->__current_ += v10;
    first = this->__first_;
    v41 = -995;
  }

  v2->__do_ = v41;
  v2->__node_ = first;
}

void sub_2977DA734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      _Unwind_Resume(a1);
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void ***std::vector<std::pair<std::string,std::string>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t std::pair<std::string,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *std::__bracket_expression<char,std::regex_traits<char>>::~__bracket_expression(std::locale *a1)
{
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = v8 - 6;
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void std::regex_traits<char>::__transform_primary<char *>(void *a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  v4 = a4 - __src;
  memset(__dst, 170, sizeof(__dst));
  if ((a4 - __src) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a4 - __src;
    v9 = __dst;
    if (a4 == __src)
    {
      goto LABEL_10;
    }

LABEL_9:
    memcpy(v9, __src, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v10 = 25;
  }

  else
  {
    v10 = (v4 | 7) + 1;
  }

  v9 = operator new(v10);
  __dst[1] = v4;
  __dst[2] = (v10 | 0x8000000000000000);
  __dst[0] = v9;
  if (a4 != __src)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v9 + v4) = 0;
  memset(a1, 170, 24);
  v11 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v11 = __dst[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v12, &v11[v12]);
  v13 = *(a1 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1[1];
  }

  if (v13 == 1)
  {
LABEL_26:
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v13 == 12)
  {
    if (v14 >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    v15[11] = v15[3];
    if (SHIBYTE(__dst[2]) < 0)
    {
      goto LABEL_27;
    }

    return;
  }

  if ((v14 & 0x80000000) == 0)
  {
    *a1 = 0;
    *(a1 + 23) = 0;
    goto LABEL_26;
  }

  **a1 = 0;
  a1[1] = 0;
  if (SHIBYTE(__dst[2]) < 0)
  {
LABEL_27:
    operator delete(__dst[0]);
  }
}

void sub_2977DABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x29C275580](exception, 5);
  __cxa_throw(exception, MEMORY[0x29EDC9420], MEMORY[0x29EDC9378]);
}

char *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, char *__src, char *a3, uint64_t a4)
{
  if (a3 - __src < 2 || a3 - 1 == __src)
  {
    goto LABEL_15;
  }

  v5 = __src + 1;
  v6 = __src;
  if (*__src != 46)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v5 != 93)
  {
LABEL_5:
    while (v5 != a3 - 1)
    {
      ++v6;
      if (*v5++ == 46)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v6)
  {
    goto LABEL_15;
  }

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(&v10, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v10;
  v7 = v11;
  *(a4 + 16) = v11;
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  if (v8 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v5 != 115)
      {
        if (v5 == 119)
        {
          *(a5 + 160) |= 0x500u;
          v15 = a2;
          std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
          return v15 + 1;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v7 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v5 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v5 != 100)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
      }

      v7 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v7;
    return a2 + 1;
  }

  if (*a2 > 0x52u)
  {
    if (v5 == 83)
    {
      v6 = *(a5 + 164) | 0x4000;
      goto LABEL_24;
    }

    if (v5 != 87)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    *(a5 + 164) |= 0x500u;
    if (*(a5 + 169) == 1)
    {
      v8 = a2;
      v9 = a5;
      v10 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v11 = v9;
      v13 = v9[9];
      v12 = v9[10];
      if (v13 < v12)
      {
        *v13 = v10;
        v14 = (v13 + 1);
LABEL_54:
        v11[9] = v14;
        return v8 + 1;
      }

      v21 = v9[8];
      v22 = v13 - v21;
      v23 = v13 - v21 + 1;
      if (v23 >= 0)
      {
        v24 = v12 - v21;
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          v26 = v10;
          v27 = operator new(v25);
          v10 = v26;
        }

        else
        {
          v27 = 0;
        }

        v27[v22] = v10;
        v14 = &v27[v22 + 1];
        memcpy(v27, v21, v22);
        v9[8] = v27;
        v9[9] = v14;
        v9[10] = &v27[v25];
        if (v21)
        {
          operator delete(v21);
        }

        v11 = v9;
        goto LABEL_54;
      }

LABEL_62:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v17 = *(a5 + 170);
    v19 = *(a5 + 72);
    v18 = *(a5 + 80);
    if (v19 >= v18)
    {
      v28 = *(a5 + 64);
      v29 = v19 - v28;
      v30 = v19 - v28 + 1;
      if (v30 < 0)
      {
        goto LABEL_62;
      }

      v31 = a5;
      v32 = a2;
      v33 = v18 - v28;
      if (2 * v33 > v30)
      {
        v30 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v30;
      }

      if (v34)
      {
        v35 = operator new(v34);
      }

      else
      {
        v35 = 0;
      }

      v35[v29] = 95;
      v20 = &v35[v29 + 1];
      memcpy(v35, v28, v29);
      v31[8] = v35;
      v31[9] = v20;
      v31[10] = &v35[v34];
      if (v28)
      {
        operator delete(v28);
      }

      a5 = v31;
      a2 = v32;
    }

    else
    {
      *v19 = 95;
      v20 = (v19 + 1);
    }

    *(a5 + 72) = v20;
    return a2 + 1;
  }

  if (!*a2)
  {
    if (*(a4 + 23) < 0)
    {
      *(a4 + 8) = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 0;
    return a2 + 1;
  }

  if (v5 != 68)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
  }

  v6 = *(a5 + 164) | 0x400;
LABEL_24:
  *(a5 + 164) = v6;
  return a2 + 1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
    goto LABEL_82;
  }

  v4 = *a2;
  v5 = *a2;
  if (v4 > 0x65)
  {
    if (*a2 <= 0x71u)
    {
      if (v4 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 12;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 12);
          return a2 + 1;
        }
      }

      else
      {
        if (v4 != 110)
        {
          goto LABEL_48;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = 10;
          return a2 + 1;
        }

        else
        {
          std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 10);
          return a2 + 1;
        }
      }
    }

    else
    {
      switch(v4)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 13;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 13);
            return a2 + 1;
          }

        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 9;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 9);
            return a2 + 1;
          }

        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = 11;
            return a2 + 1;
          }

          else
          {
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 11);
            return a2 + 1;
          }

        default:
          goto LABEL_48;
      }
    }
  }

  if (*a2 <= 0x5Bu)
  {
    if (v4 != 34 && v4 != 47)
    {
      goto LABEL_48;
    }

    goto LABEL_21;
  }

  if (v4 == 92)
  {
LABEL_21:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
      return a2 + 1;
    }
  }

  if (v4 != 97)
  {
    if (v4 == 98)
    {
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      else
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 8);
        return a2 + 1;
      }
    }

LABEL_48:
    if ((v4 & 0xFFFFFFF8) == 0x30)
    {
      v8 = v4 - 48;
      if (a2 + 1 == a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2 + 1;
        v10 = a2[1];
        if ((v10 & 0xF8) == 0x30)
        {
          v8 = v10 + 8 * v8 - 48;
          if (a2 + 2 != a3)
          {
            v11 = a2[2];
            v12 = v11 & 0xF8;
            v13 = v11 + 8 * v8 - 48;
            if (v12 == 48)
            {
              v9 = a2 + 3;
            }

            else
            {
              v9 = a2 + 2;
            }

            if (v12 == 48)
            {
              v8 = v13;
            }

            if (!a4)
            {
              goto LABEL_81;
            }

            goto LABEL_69;
          }

          v9 = a3;
          if (!a4)
          {
LABEL_81:
            std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
            return v9;
          }

LABEL_69:
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          result = v9;
          *a4 = v8;
          *(a4 + 1) = 0;
          return result;
        }
      }

      if (!a4)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_82:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = 7;
    return a2 + 1;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, 7);
    return a2 + 1;
  }
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v6 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v8 = *(a1 + 120);
    v7 = *(a1 + 128);
    if (v8 < v7)
    {
      *v8 = v6;
      v9 = v8 + 2;
LABEL_41:
      *(a1 + 120) = v9;
      return;
    }

    v19 = *(a1 + 112);
    v20 = v8 - v19;
    v21 = (v8 - v19) >> 1;
    if (v21 > -2)
    {
      v22 = v7 - v19;
      if (v22 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v22;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v23;
      }

      if (!v24)
      {
        v25 = 0;
LABEL_39:
        v31 = &v25[2 * v21];
        *v31 = v6;
        v9 = v31 + 2;
        memcpy(v25, v19, v20);
        *(a1 + 112) = v25;
        *(a1 + 120) = v9;
        *(a1 + 128) = &v25[2 * v24];
        if (v19)
        {
          operator delete(v19);
        }

        goto LABEL_41;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = operator new(2 * v24);
        goto LABEL_39;
      }

LABEL_47:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_46:
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v10 = a2 | (a3 << 8);
  v12 = *(a1 + 120);
  v11 = *(a1 + 128);
  if (*(a1 + 170) == 1)
  {
    if (v12 >= v11)
    {
      v13 = *(a1 + 112);
      v14 = v12 - v13;
      v15 = (v12 - v13) >> 1;
      if (v15 <= -2)
      {
        goto LABEL_46;
      }

      v16 = v11 - v13;
      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

      goto LABEL_42;
    }
  }

  else if (v12 >= v11)
  {
    v13 = *(a1 + 112);
    v14 = v12 - v13;
    v15 = (v12 - v13) >> 1;
    if (v15 <= -2)
    {
      goto LABEL_46;
    }

    v27 = v11 - v13;
    if (v27 <= v15 + 1)
    {
      v28 = v15 + 1;
    }

    else
    {
      v28 = v27;
    }

    if (v27 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v28;
    }

    if (v18)
    {
      if (v18 < 0)
      {
        goto LABEL_47;
      }

LABEL_37:
      v29 = v10;
      v30 = operator new(2 * v18);
      v10 = v29;
      goto LABEL_43;
    }

LABEL_42:
    v30 = 0;
LABEL_43:
    v32 = &v30[2 * v15];
    *v32 = v10;
    v26 = v32 + 2;
    memcpy(v30, v13, v14);
    *(a1 + 112) = v30;
    *(a1 + 120) = v26;
    *(a1 + 128) = &v30[2 * v18];
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_45;
  }

  *v12 = v10;
  v26 = v12 + 2;
LABEL_45:
  *(a1 + 120) = v26;
}