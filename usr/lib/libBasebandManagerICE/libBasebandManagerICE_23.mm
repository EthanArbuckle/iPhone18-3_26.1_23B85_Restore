void *_ZNKSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE7__cloneEPNS0_6__baseISD_EE(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E491E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void _ZNSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE18destroy_deallocateEv(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEEclEOS7_OSC_OiOj(void *a1, int *a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v250 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  *v223 = *a3;
  v224 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v7 = a1[2];
  if (!v7)
  {
    goto LABEL_452;
  }

  v8 = *a4;
  v9 = *a5;
  v10 = a1[3];
  v11 = std::__shared_weak_count::lock(v7);
  v244 = v11;
  if (!v11)
  {
    goto LABEL_452;
  }

  if (a1[1])
  {
    v242 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v241[7] = v12;
    v241[8] = v12;
    v241[5] = v12;
    v241[6] = v12;
    v241[3] = v12;
    v241[4] = v12;
    v241[1] = v12;
    v241[2] = v12;
    v240 = v12;
    v241[0] = v12;
    *v238 = v12;
    v239 = v12;
    v236 = v12;
    v237 = v12;
    v234 = v12;
    v235 = v12;
    std::ostringstream::basic_ostringstream[abi:ne200100](&v234);
    v13 = v234;
    *(&v234 + *(v234 - 24) + 8) |= 0x200u;
    *(&v234 + *(v13 - 24) + 8) = *(&v234 + *(v13 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x29C271B60](&v234, v8);
    memset(&__p, 0, sizeof(__p));
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          if (v224 >= 0)
          {
            v14 = HIBYTE(v224);
          }

          else
          {
            v14 = v223[1];
          }

          v15 = v14 + 14;
          if (v14 + 14 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v15 < 0x17)
          {
            v249.__r_.__value_.__s.__data_[15] = 0;
            v249.__r_.__value_.__r.__words[2] = 0;
            *(&v249.__r_.__value_.__s + 23) = v14 + 14;
            strcpy(&v249, "ARI_CLI_ERR - ");
            v18 = &v249.__r_.__value_.__s.__data_[14];
            if (!v14)
            {
LABEL_44:
              v18[v14] = 0;
              __p = v249;
              goto LABEL_403;
            }
          }

          else
          {
            if ((v15 | 7) == 0x17)
            {
              v16 = 25;
            }

            else
            {
              v16 = (v15 | 7) + 1;
            }

            v17 = operator new(v16);
            v249.__r_.__value_.__l.__size_ = v14 + 14;
            v249.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
            v249.__r_.__value_.__r.__words[0] = v17;
            qmemcpy(v17, "ARI_CLI_ERR - ", 14);
            v18 = v17 + 14;
          }

          if (v224 >= 0)
          {
            v40 = v223;
          }

          else
          {
            v40 = v223[0];
          }

          memmove(v18, v40, v14);
          goto LABEL_44;
        }

        v33 = asString();
        v34 = strlen(v33);
        if (v34 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v35 = v34;
        if (v34 >= 0x17)
        {
          if ((v34 | 7) == 0x17)
          {
            v41 = 25;
          }

          else
          {
            v41 = (v34 | 7) + 1;
          }

          p_dst = operator new(v41);
          __dst.__r_.__value_.__l.__size_ = v35;
          __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v34;
          p_dst = &__dst;
          if (!v34)
          {
LABEL_50:
            p_dst->__r_.__value_.__s.__data_[v35] = 0;
            size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              size = __dst.__r_.__value_.__l.__size_;
              v45 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v45 - __dst.__r_.__value_.__l.__size_ < 3)
              {
                v43 = __dst.__r_.__value_.__l.__size_ + 3;
                if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 3 - v45)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v44 = __dst.__r_.__value_.__r.__words[0];
                if (v45 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v57 = 0;
                  v56 = 0x7FFFFFFFFFFFFFF7;
LABEL_82:
                  v58 = operator new(v56);
                  v59 = v58;
                  if (size)
                  {
                    memmove(v58, v44, size);
                  }

                  v60 = v59 + size;
                  *(v60 + 2) = 32;
                  *v60 = 11552;
                  if (!v57)
                  {
                    operator delete(v44);
                  }

                  __dst.__r_.__value_.__l.__size_ = v43;
                  __dst.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
                  __dst.__r_.__value_.__r.__words[0] = v59;
                  v61 = (v59 + v43);
LABEL_126:
                  *v61 = 0;
                  v249 = __dst;
                  memset(&__dst, 0, sizeof(__dst));
                  if (v224 >= 0)
                  {
                    v84 = v223;
                  }

                  else
                  {
                    v84 = v223[0];
                  }

                  if (v224 >= 0)
                  {
                    v85 = HIBYTE(v224);
                  }

                  else
                  {
                    v85 = v223[1];
                  }

                  v86 = std::string::append(&v249, v84, v85);
                  v87 = v86->__r_.__value_.__r.__words[0];
                  v247.__r_.__value_.__r.__words[0] = v86->__r_.__value_.__l.__size_;
                  *(v247.__r_.__value_.__r.__words + 7) = *(&v86->__r_.__value_.__r.__words[1] + 7);
                  v88 = HIBYTE(v86->__r_.__value_.__r.__words[2]);
                  v86->__r_.__value_.__l.__size_ = 0;
                  v86->__r_.__value_.__r.__words[2] = 0;
                  v86->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p.__r_.__value_.__r.__words[0] = v87;
                  __p.__r_.__value_.__l.__size_ = v247.__r_.__value_.__r.__words[0];
                  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v247.__r_.__value_.__r.__words + 7);
                  *(&__p.__r_.__value_.__s + 23) = v88;
                  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v249.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_136:
                      if (!v9)
                      {
LABEL_252:
                        if (!v8)
                        {
                          goto LABEL_403;
                        }

LABEL_253:
                        if ((BYTE8(v240) & 0x10) != 0)
                        {
                          v139 = v240;
                          if (v240 < *(&v237 + 1))
                          {
                            *&v240 = *(&v237 + 1);
                            v139 = *(&v237 + 1);
                          }

                          v140 = &v237;
                        }

                        else
                        {
                          if ((BYTE8(v240) & 8) == 0)
                          {
                            v137 = 0;
                            *(&v247.__r_.__value_.__s + 23) = 0;
                            v138 = &v247;
                            goto LABEL_273;
                          }

                          v140 = &v235 + 1;
                          v139 = *(&v236 + 1);
                        }

                        v141 = *v140;
                        v137 = v139 - *v140;
                        if (v137 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        if (v137 >= 0x17)
                        {
                          if ((v137 | 7) == 0x17)
                          {
                            v142 = 25;
                          }

                          else
                          {
                            v142 = (v137 | 7) + 1;
                          }

                          v138 = operator new(v142);
                          v247.__r_.__value_.__l.__size_ = v137;
                          v247.__r_.__value_.__r.__words[2] = v142 | 0x8000000000000000;
                          v247.__r_.__value_.__r.__words[0] = v138;
                        }

                        else
                        {
                          *(&v247.__r_.__value_.__s + 23) = v139 - *v140;
                          v138 = &v247;
                          if (!v137)
                          {
LABEL_273:
                            v138[v137] = 0;
                            v143 = std::string::insert(&v247, 0, "(contextId ", 0xDuLL);
                            v144 = *&v143->__r_.__value_.__l.__data_;
                            __dst.__r_.__value_.__r.__words[2] = v143->__r_.__value_.__r.__words[2];
                            *&__dst.__r_.__value_.__l.__data_ = v144;
                            v143->__r_.__value_.__l.__size_ = 0;
                            v143->__r_.__value_.__r.__words[2] = 0;
                            v143->__r_.__value_.__r.__words[0] = 0;
                            v145 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                            if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                            {
                              v145 = __dst.__r_.__value_.__l.__size_;
                              v148 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                              if (v148 - __dst.__r_.__value_.__l.__size_ < 2)
                              {
                                v146 = __dst.__r_.__value_.__l.__size_ + 2;
                                if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v148)
                                {
                                  std::string::__throw_length_error[abi:ne200100]();
                                }

                                v147 = __dst.__r_.__value_.__r.__words[0];
                                if (v148 >= 0x3FFFFFFFFFFFFFF3)
                                {
                                  v152 = 0;
                                  v151 = 0x7FFFFFFFFFFFFFF7;
LABEL_288:
                                  v153 = operator new(v151);
                                  v154 = v153;
                                  if (v145)
                                  {
                                    memmove(v153, v147, v145);
                                  }

                                  *(v154 + v145) = 10528;
                                  if (!v152)
                                  {
                                    operator delete(v147);
                                  }

                                  __dst.__r_.__value_.__l.__size_ = v146;
                                  __dst.__r_.__value_.__r.__words[2] = v151 | 0x8000000000000000;
                                  __dst.__r_.__value_.__r.__words[0] = v154;
                                  v155 = (v154 + v146);
LABEL_299:
                                  *v155 = 0;
                                  v249 = __dst;
                                  memset(&__dst, 0, sizeof(__dst));
                                  if ((v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v158 = &v249;
                                  }

                                  else
                                  {
                                    v158 = v249.__r_.__value_.__r.__words[0];
                                  }

                                  if ((v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v159 = HIBYTE(v249.__r_.__value_.__r.__words[2]);
                                  }

                                  else
                                  {
                                    v159 = v249.__r_.__value_.__l.__size_;
                                  }

                                  std::string::append(&__p, v158, v159);
                                  if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v249.__r_.__value_.__l.__data_);
                                    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                    {
LABEL_307:
                                      if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_403;
                                      }

LABEL_311:
                                      operator delete(v247.__r_.__value_.__l.__data_);
                                      goto LABEL_403;
                                    }
                                  }

                                  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_307;
                                  }

                                  operator delete(__dst.__r_.__value_.__l.__data_);
                                  if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_403;
                                  }

                                  goto LABEL_311;
                                }

LABEL_279:
                                v149 = 2 * v148;
                                if (v146 > 2 * v148)
                                {
                                  v149 = v146;
                                }

                                if ((v149 | 7) == 0x17)
                                {
                                  v150 = 25;
                                }

                                else
                                {
                                  v150 = (v149 | 7) + 1;
                                }

                                if (v149 >= 0x17)
                                {
                                  v151 = v150;
                                }

                                else
                                {
                                  v151 = 23;
                                }

                                v152 = v148 == 22;
                                goto LABEL_288;
                              }

                              v156 = __dst.__r_.__value_.__r.__words[0];
                            }

                            else
                            {
                              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
                              {
                                v146 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 2;
                                v147 = &__dst;
                                v148 = 22;
                                goto LABEL_279;
                              }

                              v156 = &__dst;
                            }

                            *(&v156->__r_.__value_.__l.__data_ + v145) = 10528;
                            v157 = v145 + 2;
                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                            {
                              __dst.__r_.__value_.__l.__size_ = v145 + 2;
                            }

                            else
                            {
                              *(&__dst.__r_.__value_.__s + 23) = v157 & 0x7F;
                            }

                            v155 = v156 + v157;
                            goto LABEL_299;
                          }
                        }

                        memmove(v138, v141, v137);
                        goto LABEL_273;
                      }

LABEL_140:
                      *(&v247.__r_.__value_.__s + 23) = 11;
                      strcpy(&v247, "(message ");
                      v89 = Ari::MsgNameById(v9);
                      v90 = strlen(v89);
                      v91 = std::string::append(&v247, v89, v90);
                      v92 = *&v91->__r_.__value_.__l.__data_;
                      __dst.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
                      *&__dst.__r_.__value_.__l.__data_ = v92;
                      v91->__r_.__value_.__l.__size_ = 0;
                      v91->__r_.__value_.__r.__words[2] = 0;
                      v91->__r_.__value_.__r.__words[0] = 0;
                      v93 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                      {
                        v93 = __dst.__r_.__value_.__l.__size_;
                        v96 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        if (v96 - __dst.__r_.__value_.__l.__size_ < 2)
                        {
                          v94 = __dst.__r_.__value_.__l.__size_ + 2;
                          if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 2 - v96)
                          {
                            std::string::__throw_length_error[abi:ne200100]();
                          }

                          v95 = __dst.__r_.__value_.__r.__words[0];
                          if (v96 >= 0x3FFFFFFFFFFFFFF3)
                          {
                            v100 = 0;
                            v99 = 0x7FFFFFFFFFFFFFF7;
LABEL_155:
                            v101 = operator new(v99);
                            v102 = v101;
                            if (v93)
                            {
                              memmove(v101, v95, v93);
                            }

                            *(v102 + v93) = 10528;
                            if (!v100)
                            {
                              operator delete(v95);
                            }

                            __dst.__r_.__value_.__l.__size_ = v94;
                            __dst.__r_.__value_.__r.__words[2] = v99 | 0x8000000000000000;
                            __dst.__r_.__value_.__r.__words[0] = v102;
                            v103 = (v102 + v94);
LABEL_243:
                            *v103 = 0;
                            v249 = __dst;
                            memset(&__dst, 0, sizeof(__dst));
                            if ((v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v135 = &v249;
                            }

                            else
                            {
                              v135 = v249.__r_.__value_.__r.__words[0];
                            }

                            if ((v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v136 = HIBYTE(v249.__r_.__value_.__r.__words[2]);
                            }

                            else
                            {
                              v136 = v249.__r_.__value_.__l.__size_;
                            }

                            std::string::append(&__p, v135, v136);
                            if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v249.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
LABEL_251:
                                if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                {
                                  goto LABEL_252;
                                }

LABEL_261:
                                operator delete(v247.__r_.__value_.__l.__data_);
                                if (v8)
                                {
                                  goto LABEL_253;
                                }

LABEL_403:
                                v38 = 1;
                                v39 = *(v10 + 56);
                                if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_404;
                                }

                                goto LABEL_414;
                              }
                            }

                            else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_251;
                            }

                            operator delete(__dst.__r_.__value_.__l.__data_);
                            if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
                              goto LABEL_252;
                            }

                            goto LABEL_261;
                          }

LABEL_146:
                          v97 = 2 * v96;
                          if (v94 > 2 * v96)
                          {
                            v97 = v94;
                          }

                          if ((v97 | 7) == 0x17)
                          {
                            v98 = 25;
                          }

                          else
                          {
                            v98 = (v97 | 7) + 1;
                          }

                          if (v97 >= 0x17)
                          {
                            v99 = v98;
                          }

                          else
                          {
                            v99 = 23;
                          }

                          v100 = v96 == 22;
                          goto LABEL_155;
                        }

                        v104 = __dst.__r_.__value_.__r.__words[0];
                      }

                      else
                      {
                        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 21) < 2)
                        {
                          v94 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 2;
                          v95 = &__dst;
                          v96 = 22;
                          goto LABEL_146;
                        }

                        v104 = &__dst;
                      }

                      *(&v104->__r_.__value_.__l.__data_ + v93) = 10528;
                      v134 = v93 + 2;
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        __dst.__r_.__value_.__l.__size_ = v93 + 2;
                      }

                      else
                      {
                        *(&__dst.__r_.__value_.__s + 23) = v134 & 0x7F;
                      }

                      v103 = v104 + v134;
                      goto LABEL_243;
                    }
                  }

                  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_136;
                  }

                  operator delete(__dst.__r_.__value_.__l.__data_);
                  if (!v9)
                  {
                    goto LABEL_252;
                  }

                  goto LABEL_140;
                }

LABEL_73:
                v54 = 2 * v45;
                if (v43 > 2 * v45)
                {
                  v54 = v43;
                }

                if ((v54 | 7) == 0x17)
                {
                  v55 = 25;
                }

                else
                {
                  v55 = (v54 | 7) + 1;
                }

                if (v54 >= 0x17)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = 23;
                }

                v57 = v45 == 22;
                goto LABEL_82;
              }

              v63 = __dst.__r_.__value_.__r.__words[0];
            }

            else
            {
              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) - 20) < 3)
              {
                v43 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) + 3;
                v44 = &__dst;
                v45 = 22;
                goto LABEL_73;
              }

              v63 = &__dst;
            }

            v82 = v63 + size;
            v82[2] = 32;
            *v82 = 11552;
            v83 = size + 3;
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              __dst.__r_.__value_.__l.__size_ = size + 3;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v83 & 0x7F;
            }

            v61 = v63 + v83;
            goto LABEL_126;
          }
        }

        memmove(p_dst, v33, v35);
        goto LABEL_50;
      }

      v19 = SHIBYTE(v224);
      if (v224 >= 0)
      {
        v20 = HIBYTE(v224);
      }

      else
      {
        v20 = v223[1];
      }

      v21 = v20 + 17;
      if (v20 + 17 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v21 < 0x17)
      {
        v249.__r_.__value_.__r.__words[2] = 32;
        *(&v249.__r_.__value_.__s + 23) = v20 + 17;
        *&v249.__r_.__value_.__l.__data_ = *"ARI_NO_CLI_ACK - ";
        v24 = &v249.__r_.__value_.__s.__data_[17];
        if (!v20)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if ((v21 | 7) == 0x17)
        {
          v22 = 25;
        }

        else
        {
          v22 = (v21 | 7) + 1;
        }

        v23 = operator new(v22);
        v249.__r_.__value_.__l.__size_ = v20 + 17;
        v249.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
        v249.__r_.__value_.__r.__words[0] = v23;
        v23[16] = 32;
        *v23 = *"ARI_NO_CLI_ACK - ";
        v24 = v23 + 17;
      }

      if (v19 >= 0)
      {
        v37 = v223;
      }

      else
      {
        v37 = v223[0];
      }

      memmove(v24, v37, v20);
LABEL_37:
      v38 = 0;
      v24[v20] = 0;
      __p = v249;
      v39 = *(v10 + 56);
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_404;
      }

      goto LABEL_414;
    }

    *(&v230.__r_.__value_.__s + 23) = 14;
    strcpy(&v230, "ARI_TIMEOUT - ");
    v25 = Ari::MsgNameById(v9);
    v26 = strlen(v25);
    v27 = std::string::append(&v230, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v231.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v231.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = SHIBYTE(v231.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v29 = v231.__r_.__value_.__l.__size_;
      v32 = (v231.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v32 - v231.__r_.__value_.__l.__size_ < 9)
      {
        v30 = v231.__r_.__value_.__l.__size_ + 9;
        if (0x7FFFFFFFFFFFFFF7 - (v231.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v231.__r_.__value_.__l.__size_ + 9 - v32)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v31 = v231.__r_.__value_.__r.__words[0];
        if (v32 >= 0x3FFFFFFFFFFFFFF3)
        {
          v49 = 0;
          v48 = 0x7FFFFFFFFFFFFFF7;
LABEL_65:
          v50 = operator new(v48);
          v51 = v50;
          if (v29)
          {
            memmove(v50, v31, v29);
          }

          v52 = v51 + v29;
          *v52 = *", client ";
          *(v52 + 8) = 32;
          if (!v49)
          {
            operator delete(v31);
          }

          v231.__r_.__value_.__l.__size_ = v30;
          v231.__r_.__value_.__r.__words[2] = v48 | 0x8000000000000000;
          v231.__r_.__value_.__r.__words[0] = v51;
          v53 = (v51 + v30);
LABEL_94:
          *v53 = 0;
          v232 = v231;
          memset(&v231, 0, sizeof(v231));
          if (v224 >= 0)
          {
            v66 = v223;
          }

          else
          {
            v66 = v223[0];
          }

          if (v224 >= 0)
          {
            v67 = HIBYTE(v224);
          }

          else
          {
            v67 = v223[1];
          }

          v68 = std::string::append(&v232, v66, v67);
          v69 = *&v68->__r_.__value_.__l.__data_;
          v247.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
          *&v247.__r_.__value_.__l.__data_ = v69;
          v68->__r_.__value_.__l.__size_ = 0;
          v68->__r_.__value_.__r.__words[2] = 0;
          v68->__r_.__value_.__r.__words[0] = 0;
          v70 = SHIBYTE(v247.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v70 = v247.__r_.__value_.__l.__size_;
            v73 = (v247.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v73 - v247.__r_.__value_.__l.__size_ < 0xD)
            {
              v71 = v247.__r_.__value_.__l.__size_ + 13;
              if (0x7FFFFFFFFFFFFFF7 - (v247.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v247.__r_.__value_.__l.__size_ + 13 - v73)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v72 = v247.__r_.__value_.__r.__words[0];
              if (v73 >= 0x3FFFFFFFFFFFFFF3)
              {
                v77 = 0;
                v76 = 0x7FFFFFFFFFFFFFF7;
LABEL_115:
                v78 = operator new(v76);
                v79 = v78;
                if (v70)
                {
                  memmove(v78, v72, v70);
                }

                qmemcpy((v79 + v70), "(contextId ", 13);
                if (!v77)
                {
                  operator delete(v72);
                }

                v247.__r_.__value_.__l.__size_ = v71;
                v247.__r_.__value_.__r.__words[2] = v76 | 0x8000000000000000;
                v247.__r_.__value_.__r.__words[0] = v79;
                v80 = (v79 + v71);
LABEL_166:
                *v80 = 0;
                __dst = v247;
                memset(&v247, 0, sizeof(v247));
                if ((BYTE8(v240) & 0x10) != 0)
                {
                  v108 = v240;
                  if (v240 < *(&v237 + 1))
                  {
                    *&v240 = *(&v237 + 1);
                    v108 = *(&v237 + 1);
                  }

                  v109 = &v237;
                }

                else
                {
                  if ((BYTE8(v240) & 8) == 0)
                  {
                    v106 = 0;
                    HIBYTE(v229) = 0;
                    v107 = &v227;
                    goto LABEL_182;
                  }

                  v109 = &v235 + 1;
                  v108 = *(&v236 + 1);
                }

                v110 = *v109;
                v106 = v108 - *v109;
                if (v106 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                if (v106 >= 0x17)
                {
                  if ((v106 | 7) == 0x17)
                  {
                    v111 = 25;
                  }

                  else
                  {
                    v111 = (v106 | 7) + 1;
                  }

                  v107 = operator new(v111);
                  v228 = v106;
                  v229 = v111 | 0x8000000000000000;
                  v227 = v107;
                }

                else
                {
                  HIBYTE(v229) = v108 - *v109;
                  v107 = &v227;
                  if (!v106)
                  {
LABEL_182:
                    *(v107 + v106) = 0;
                    if (v229 >= 0)
                    {
                      v112 = &v227;
                    }

                    else
                    {
                      v112 = v227;
                    }

                    if (v229 >= 0)
                    {
                      v113 = HIBYTE(v229);
                    }

                    else
                    {
                      v113 = v228;
                    }

                    v114 = std::string::append(&__dst, v112, v113);
                    v115 = *v114;
                    v249.__r_.__value_.__r.__words[2] = v114[2];
                    *&v249.__r_.__value_.__l.__data_ = v115;
                    v114[1] = 0;
                    v114[2] = 0;
                    *v114 = 0;
                    v116 = SHIBYTE(v249.__r_.__value_.__r.__words[2]);
                    if ((SHIBYTE(v249.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      v116 = v249.__r_.__value_.__l.__size_;
                      v119 = (v249.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if (v119 - v249.__r_.__value_.__l.__size_ < 2)
                      {
                        v117 = v249.__r_.__value_.__l.__size_ + 2;
                        if (0x7FFFFFFFFFFFFFF7 - (v249.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v249.__r_.__value_.__l.__size_ + 2 - v119)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v118 = v249.__r_.__value_.__r.__words[0];
                        if (v119 >= 0x3FFFFFFFFFFFFFF3)
                        {
                          v123 = 0;
                          v122 = 0x7FFFFFFFFFFFFFF7;
LABEL_203:
                          v114 = operator new(v122);
                          v124 = v114;
                          if (v116)
                          {
                            v114 = memmove(v114, v118, v116);
                          }

                          *(v124 + v116) = 10528;
                          if (!v123)
                          {
                            operator delete(v118);
                          }

                          v249.__r_.__value_.__l.__size_ = v117;
                          v249.__r_.__value_.__r.__words[2] = v122 | 0x8000000000000000;
                          v249.__r_.__value_.__r.__words[0] = v124;
                          v125 = (v124 + v117);
LABEL_214:
                          *v125 = 0;
                          *&v245 = v249.__r_.__value_.__l.__size_;
                          v128 = v249.__r_.__value_.__r.__words[0];
                          *(&v245 + 7) = *(&v249.__r_.__value_.__r.__words[1] + 7);
                          v129 = HIBYTE(v249.__r_.__value_.__r.__words[2]);
                          memset(&v249, 0, sizeof(v249));
                          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            __p.__r_.__value_.__r.__words[0] = v128;
                            __p.__r_.__value_.__l.__size_ = v245;
                            *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v245 + 7);
                            *(&__p.__r_.__value_.__s + 23) = v129;
                            if (SHIBYTE(v229) < 0)
                            {
                              goto LABEL_216;
                            }

LABEL_224:
                            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                            {
LABEL_217:
                              operator delete(__dst.__r_.__value_.__l.__data_);
                              if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
                              {
                                goto LABEL_218;
                              }

                              goto LABEL_226;
                            }

LABEL_225:
                            if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
                            {
LABEL_218:
                              operator delete(v247.__r_.__value_.__l.__data_);
                              if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
                              {
                                goto LABEL_219;
                              }

                              goto LABEL_227;
                            }

LABEL_226:
                            if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
                            {
LABEL_219:
                              operator delete(v232.__r_.__value_.__l.__data_);
                              if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
                              {
                                goto LABEL_220;
                              }

                              goto LABEL_228;
                            }

LABEL_227:
                            if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
                            {
LABEL_220:
                              operator delete(v231.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(v230.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_229;
                              }

                              goto LABEL_221;
                            }

LABEL_228:
                            if ((SHIBYTE(v230.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                            {
LABEL_229:
                              capabilities::coredump::recoveryForControlMessageTimeout(v114);
                              v130 = capabilities::coredump::operator&();
                              if (!v130)
                              {
LABEL_402:
                                capabilities::coredump::recoveryForControlMessageTimeout(v130);
                                if (!capabilities::coredump::operator&())
                                {
                                  v204 = *(v10 + 56);
                                  if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
                                  {
                                    std::stringbuf::str[abi:ne200100](&v249, &v234 + 8);
                                    v222 = (v249.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v249 : v249.__r_.__value_.__r.__words[0];
                                    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                                    *(__dst.__r_.__value_.__r.__words + 4) = v222;
                                    _os_log_error_impl(&dword_297476000, v204, OS_LOG_TYPE_ERROR, "WARNING! A MESSAGE TIMED OUT BUT WE'RE SKIPPING MODEM RESET: %s", &__dst, 0xCu);
                                    if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                                    {
                                      operator delete(v249.__r_.__value_.__l.__data_);
                                    }
                                  }

                                  v38 = 0;
                                  v39 = *(v10 + 56);
                                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                                  {
LABEL_404:
                                    if ((v38 & *(v10 + 89)) != 1)
                                    {
                                      goto LABEL_446;
                                    }

                                    goto LABEL_405;
                                  }

LABEL_414:
                                  p_p = &__p;
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                  {
                                    p_p = __p.__r_.__value_.__r.__words[0];
                                  }

                                  LODWORD(v249.__r_.__value_.__l.__data_) = 136315138;
                                  *(v249.__r_.__value_.__r.__words + 4) = p_p;
                                  _os_log_error_impl(&dword_297476000, v39, OS_LOG_TYPE_ERROR, "%s", &v249, 0xCu);
                                  if ((v38 & *(v10 + 89)) != 1)
                                  {
                                    goto LABEL_446;
                                  }

LABEL_405:
                                  v200 = *(v10 + 136);
                                  if (!v200)
                                  {
                                    goto LABEL_446;
                                  }

                                  v201 = std::__shared_weak_count::lock(v200);
                                  __dst.__r_.__value_.__l.__size_ = v201;
                                  if (!v201)
                                  {
                                    goto LABEL_446;
                                  }

                                  __dst.__r_.__value_.__r.__words[0] = *(v10 + 128);
                                  if (!__dst.__r_.__value_.__r.__words[0])
                                  {
                                    goto LABEL_444;
                                  }

                                  v202 = xpc_dictionary_create(0, 0, 0);
                                  if (v202 || (v202 = xpc_null_create()) != 0)
                                  {
                                    if (MEMORY[0x29C272BA0](v202) == MEMORY[0x29EDCAA00])
                                    {
                                      xpc_retain(v202);
                                      v203 = v202;
                                    }

                                    else
                                    {
                                      v203 = xpc_null_create();
                                    }
                                  }

                                  else
                                  {
                                    v203 = xpc_null_create();
                                    v202 = 0;
                                  }

                                  xpc_release(v202);
                                  v206 = xpc_string_create(*MEMORY[0x29EDBEB60]);
                                  if (!v206)
                                  {
                                    v206 = xpc_null_create();
                                  }

                                  xpc_dictionary_set_value(v203, *MEMORY[0x29EDBEB00], v206);
                                  v207 = xpc_null_create();
                                  xpc_release(v206);
                                  xpc_release(v207);
                                  v208 = xpc_string_create(*MEMORY[0x29EDBF750]);
                                  if (!v208)
                                  {
                                    v208 = xpc_null_create();
                                  }

                                  xpc_dictionary_set_value(v203, *MEMORY[0x29EDBEEE0], v208);
                                  v209 = xpc_null_create();
                                  xpc_release(v208);
                                  xpc_release(v209);
                                  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                  {
                                    v210 = &__p;
                                  }

                                  else
                                  {
                                    v210 = __p.__r_.__value_.__r.__words[0];
                                  }

                                  v211 = xpc_string_create(v210);
                                  if (!v211)
                                  {
                                    v211 = xpc_null_create();
                                  }

                                  xpc_dictionary_set_value(v203, *MEMORY[0x29EDBED88], v211);
                                  v212 = xpc_null_create();
                                  xpc_release(v211);
                                  xpc_release(v212);
                                  v213 = __dst.__r_.__value_.__r.__words[0];
                                  v214 = *MEMORY[0x29EDBEAA8];
                                  v215 = strlen(*MEMORY[0x29EDBEAA8]);
                                  if (v215 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  v216 = v215;
                                  if (v215 >= 0x17)
                                  {
                                    if ((v215 | 7) == 0x17)
                                    {
                                      v218 = 25;
                                    }

                                    else
                                    {
                                      v218 = (v215 | 7) + 1;
                                    }

                                    v217 = operator new(v218);
                                    v249.__r_.__value_.__l.__size_ = v216;
                                    v249.__r_.__value_.__r.__words[2] = v218 | 0x8000000000000000;
                                    v249.__r_.__value_.__r.__words[0] = v217;
                                  }

                                  else
                                  {
                                    *(&v249.__r_.__value_.__s + 23) = v215;
                                    v217 = &v249;
                                    if (!v215)
                                    {
LABEL_438:
                                      v217[v216] = 0;
                                      v231.__r_.__value_.__r.__words[0] = v203;
                                      if (v203)
                                      {
                                        xpc_retain(v203);
                                      }

                                      else
                                      {
                                        v231.__r_.__value_.__r.__words[0] = xpc_null_create();
                                      }

                                      v230.__r_.__value_.__r.__words[0] = 0;
                                      Service::runCommand(v213, &v249, &v231.__r_.__value_.__l.__data_, &v230.__r_.__value_.__l.__data_);
                                      xpc_release(v231.__r_.__value_.__l.__data_);
                                      v231.__r_.__value_.__r.__words[0] = 0;
                                      if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v249.__r_.__value_.__l.__data_);
                                      }

                                      xpc_release(v203);
                                      v201 = __dst.__r_.__value_.__l.__size_;
                                      if (__dst.__r_.__value_.__l.__size_)
                                      {
LABEL_444:
                                        if (!atomic_fetch_add(v201 + 1, 0xFFFFFFFFFFFFFFFFLL))
                                        {
                                          v219 = v201;
                                          (*(*v201 + 16))();
                                          std::__shared_weak_count::__release_weak(v219);
                                        }
                                      }

LABEL_446:
                                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(__p.__r_.__value_.__l.__data_);
                                      }

                                      *&v234 = *MEMORY[0x29EDC9538];
                                      *(&v234 + *(v234 - 24)) = *(MEMORY[0x29EDC9538] + 24);
                                      *(&v234 + 1) = MEMORY[0x29EDC9570] + 16;
                                      if (SHIBYTE(v239) < 0)
                                      {
                                        operator delete(v238[1]);
                                      }

                                      *(&v234 + 1) = MEMORY[0x29EDC9568] + 16;
                                      std::locale::~locale(&v235);
                                      std::ostream::~ostream();
                                      MEMORY[0x29C271DA0](v241);
                                      v11 = v244;
                                      if (!v244)
                                      {
                                        goto LABEL_452;
                                      }

                                      goto LABEL_451;
                                    }
                                  }

                                  memmove(v217, v214, v216);
                                  goto LABEL_438;
                                }

                                goto LABEL_403;
                              }

                              xdict = 0xAAAAAAAAAAAAAAAALL;
                              v131 = xpc_dictionary_create(0, 0, 0);
                              v132 = v131;
                              if (v131)
                              {
                                xdict = v131;
                              }

                              else
                              {
                                v132 = xpc_null_create();
                                xdict = v132;
                                if (!v132)
                                {
                                  v133 = xpc_null_create();
                                  v132 = 0;
                                  goto LABEL_317;
                                }
                              }

                              if (MEMORY[0x29C272BA0](v132) == MEMORY[0x29EDCAA00])
                              {
                                xpc_retain(v132);
                                goto LABEL_318;
                              }

                              v133 = xpc_null_create();
LABEL_317:
                              xdict = v133;
LABEL_318:
                              xpc_release(v132);
                              v160 = MEMORY[0x29C272BA0](xdict);
                              v161 = MEMORY[0x29EDCAA00];
                              if (v160 != MEMORY[0x29EDCAA00])
                              {
                                v162 = *(v10 + 56);
                                if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
                                {
                                  LOWORD(v249.__r_.__value_.__l.__data_) = 0;
                                  _os_log_error_impl(&dword_297476000, v162, OS_LOG_TYPE_ERROR, "Failed to create an input dictionary", &v249, 2u);
                                }

                                goto LABEL_401;
                              }

                              memset(&v249, 170, sizeof(v249));
                              Timestamp::Timestamp(&v249);
                              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                              {
                                v163 = &__p;
                              }

                              else
                              {
                                v163 = __p.__r_.__value_.__r.__words[0];
                              }

                              v164 = xpc_string_create(v163);
                              if (!v164)
                              {
                                v164 = xpc_null_create();
                              }

                              xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD398], v164);
                              v165 = xpc_null_create();
                              xpc_release(v164);
                              xpc_release(v165);
                              v166 = *MEMORY[0x29EDBD2E0];
                              __dst.__r_.__value_.__r.__words[0] = &xdict;
                              __dst.__r_.__value_.__l.__size_ = v166;
                              xpc::dict::object_proxy::operator=(&__dst, &object);
                              xpc_release(object);
                              object = 0;
                              v167 = *MEMORY[0x29EDBFC08];
                              v168 = strlen(*MEMORY[0x29EDBFC08]);
                              if (v168 > 0x7FFFFFFFFFFFFFF7)
                              {
                                std::string::__throw_length_error[abi:ne200100]();
                              }

                              v169 = v168;
                              if (v168 >= 0x17)
                              {
                                if ((v168 | 7) == 0x17)
                                {
                                  v171 = 25;
                                }

                                else
                                {
                                  v171 = (v168 | 7) + 1;
                                }

                                v170 = operator new(v171);
                                v231.__r_.__value_.__l.__size_ = v169;
                                v231.__r_.__value_.__r.__words[2] = v171 | 0x8000000000000000;
                                v231.__r_.__value_.__r.__words[0] = v170;
                              }

                              else
                              {
                                *(&v231.__r_.__value_.__s + 23) = v168;
                                v170 = &v231;
                                if (!v168)
                                {
LABEL_335:
                                  v170[v169] = 0;
                                  v172 = *MEMORY[0x29EDBFBF8];
                                  v173 = strlen(*MEMORY[0x29EDBFBF8]);
                                  if (v173 > 0x7FFFFFFFFFFFFFF7)
                                  {
                                    std::string::__throw_length_error[abi:ne200100]();
                                  }

                                  v174 = v173;
                                  if (v173 >= 0x17)
                                  {
                                    if ((v173 | 7) == 0x17)
                                    {
                                      v176 = 25;
                                    }

                                    else
                                    {
                                      v176 = (v173 | 7) + 1;
                                    }

                                    v175 = operator new(v176);
                                    v230.__r_.__value_.__l.__size_ = v174;
                                    v230.__r_.__value_.__r.__words[2] = v176 | 0x8000000000000000;
                                    v230.__r_.__value_.__r.__words[0] = v175;
                                  }

                                  else
                                  {
                                    *(&v230.__r_.__value_.__s + 23) = v173;
                                    v175 = &v230;
                                    if (!v173)
                                    {
LABEL_344:
                                      v175[v174] = 0;
                                      if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v177 = &v230;
                                      }

                                      else
                                      {
                                        v177 = v230.__r_.__value_.__r.__words[0];
                                      }

                                      if ((v230.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                      {
                                        v178 = HIBYTE(v230.__r_.__value_.__r.__words[2]);
                                      }

                                      else
                                      {
                                        v178 = v230.__r_.__value_.__l.__size_;
                                      }

                                      v179 = std::string::append(&v231, v177, v178);
                                      v180 = *&v179->__r_.__value_.__l.__data_;
                                      v232.__r_.__value_.__r.__words[2] = v179->__r_.__value_.__r.__words[2];
                                      *&v232.__r_.__value_.__l.__data_ = v180;
                                      v179->__r_.__value_.__l.__size_ = 0;
                                      v179->__r_.__value_.__r.__words[2] = 0;
                                      v179->__r_.__value_.__r.__words[0] = 0;
                                      Timestamp::asString(&v249, 0, 9, &v227);
                                      if (v229 >= 0)
                                      {
                                        v181 = &v227;
                                      }

                                      else
                                      {
                                        v181 = v227;
                                      }

                                      if (v229 >= 0)
                                      {
                                        v182 = HIBYTE(v229);
                                      }

                                      else
                                      {
                                        v182 = v228;
                                      }

                                      v183 = std::string::append(&v232, v181, v182);
                                      v184 = *&v183->__r_.__value_.__l.__data_;
                                      v247.__r_.__value_.__r.__words[2] = v183->__r_.__value_.__r.__words[2];
                                      *&v247.__r_.__value_.__l.__data_ = v184;
                                      v183->__r_.__value_.__l.__size_ = 0;
                                      v183->__r_.__value_.__r.__words[2] = 0;
                                      v183->__r_.__value_.__r.__words[0] = 0;
                                      v185 = *MEMORY[0x29EDBFBE8];
                                      v186 = strlen(*MEMORY[0x29EDBFBE8]);
                                      if (v186 > 0x7FFFFFFFFFFFFFF7)
                                      {
                                        std::string::__throw_length_error[abi:ne200100]();
                                      }

                                      v187 = v186;
                                      if (v186 >= 0x17)
                                      {
                                        if ((v186 | 7) == 0x17)
                                        {
                                          v189 = 25;
                                        }

                                        else
                                        {
                                          v189 = (v186 | 7) + 1;
                                        }

                                        v188 = operator new(v189);
                                        *(&v245 + 1) = v187;
                                        v246 = v189 | 0x8000000000000000;
                                        *&v245 = v188;
                                      }

                                      else
                                      {
                                        HIBYTE(v246) = v186;
                                        v188 = &v245;
                                        if (!v186)
                                        {
LABEL_365:
                                          *(v188 + v187) = 0;
                                          if (v246 >= 0)
                                          {
                                            v190 = &v245;
                                          }

                                          else
                                          {
                                            v190 = v245;
                                          }

                                          if (v246 >= 0)
                                          {
                                            v191 = HIBYTE(v246);
                                          }

                                          else
                                          {
                                            v191 = *(&v245 + 1);
                                          }

                                          v192 = std::string::append(&v247, v190, v191);
                                          v193 = *&v192->__r_.__value_.__l.__data_;
                                          __dst.__r_.__value_.__r.__words[2] = v192->__r_.__value_.__r.__words[2];
                                          *&__dst.__r_.__value_.__l.__data_ = v193;
                                          v192->__r_.__value_.__l.__size_ = 0;
                                          v192->__r_.__value_.__r.__words[2] = 0;
                                          v192->__r_.__value_.__r.__words[0] = 0;
                                          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                          {
                                            v194 = &__dst;
                                          }

                                          else
                                          {
                                            v194 = __dst.__r_.__value_.__r.__words[0];
                                          }

                                          v195 = xpc_string_create(v194);
                                          if (!v195)
                                          {
                                            v195 = xpc_null_create();
                                          }

                                          xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBD2D0], v195);
                                          v196 = xpc_null_create();
                                          xpc_release(v195);
                                          xpc_release(v196);
                                          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                                          {
                                            operator delete(__dst.__r_.__value_.__l.__data_);
                                            if ((SHIBYTE(v246) & 0x80000000) == 0)
                                            {
LABEL_378:
                                              if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                              {
                                                goto LABEL_379;
                                              }

                                              goto LABEL_387;
                                            }
                                          }

                                          else if ((SHIBYTE(v246) & 0x80000000) == 0)
                                          {
                                            goto LABEL_378;
                                          }

                                          operator delete(v245);
                                          if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                          {
LABEL_379:
                                            if ((SHIBYTE(v229) & 0x80000000) == 0)
                                            {
                                              goto LABEL_380;
                                            }

                                            goto LABEL_388;
                                          }

LABEL_387:
                                          operator delete(v247.__r_.__value_.__l.__data_);
                                          if ((SHIBYTE(v229) & 0x80000000) == 0)
                                          {
LABEL_380:
                                            if ((SHIBYTE(v232.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                            {
                                              goto LABEL_381;
                                            }

                                            goto LABEL_389;
                                          }

LABEL_388:
                                          operator delete(v227);
                                          if ((SHIBYTE(v232.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                          {
LABEL_381:
                                            if ((SHIBYTE(v230.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                            {
                                              goto LABEL_382;
                                            }

                                            goto LABEL_390;
                                          }

LABEL_389:
                                          operator delete(v232.__r_.__value_.__l.__data_);
                                          if ((SHIBYTE(v230.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                          {
LABEL_382:
                                            if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                            {
LABEL_383:
                                              __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
                                              __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
                                              abm::HelperClient::create(&__dst, "ariTransportService", v197);
                                              v232.__r_.__value_.__r.__words[0] = xdict;
                                              if (xdict)
                                              {
                                                xpc_retain(xdict);
                                              }

                                              else
                                              {
                                                v232.__r_.__value_.__r.__words[0] = xpc_null_create();
                                              }

                                              v198 = *MEMORY[0x29EDBD328];
                                              *&v247.__r_.__value_.__l.__data_ = 0uLL;
                                              abm::HelperClient::perform();
                                              if (v247.__r_.__value_.__l.__size_)
                                              {
                                                dispatch_release(v247.__r_.__value_.__l.__size_);
                                              }

                                              if (v247.__r_.__value_.__r.__words[0])
                                              {
                                                _Block_release(v247.__r_.__value_.__l.__data_);
                                              }

                                              xpc_release(v232.__r_.__value_.__l.__data_);
                                              v232.__r_.__value_.__r.__words[0] = 0;
                                              v199 = __dst.__r_.__value_.__l.__size_;
                                              if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                                              {
                                                (v199->__on_zero_shared)(v199);
                                                std::__shared_weak_count::__release_weak(v199);
                                              }

                                              std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v249, v249.__r_.__value_.__l.__size_);
LABEL_401:
                                              xpc_release(xdict);
                                              if (v160 != v161)
                                              {
                                                goto LABEL_403;
                                              }

                                              goto LABEL_402;
                                            }

LABEL_391:
                                            operator delete(v231.__r_.__value_.__l.__data_);
                                            goto LABEL_383;
                                          }

LABEL_390:
                                          operator delete(v230.__r_.__value_.__l.__data_);
                                          if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                                          {
                                            goto LABEL_383;
                                          }

                                          goto LABEL_391;
                                        }
                                      }

                                      memmove(v188, v185, v187);
                                      goto LABEL_365;
                                    }
                                  }

                                  memmove(v175, v172, v174);
                                  goto LABEL_344;
                                }
                              }

                              memmove(v170, v167, v169);
                              goto LABEL_335;
                            }

LABEL_221:
                            operator delete(v230.__r_.__value_.__l.__data_);
                            goto LABEL_229;
                          }

                          operator delete(__p.__r_.__value_.__l.__data_);
                          __p.__r_.__value_.__r.__words[0] = v128;
                          __p.__r_.__value_.__l.__size_ = v245;
                          *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v245 + 7);
                          *(&__p.__r_.__value_.__s + 23) = v129;
                          if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v249.__r_.__value_.__l.__data_);
                            if ((SHIBYTE(v229) & 0x80000000) == 0)
                            {
                              goto LABEL_224;
                            }
                          }

                          else if ((SHIBYTE(v229) & 0x80000000) == 0)
                          {
                            goto LABEL_224;
                          }

LABEL_216:
                          operator delete(v227);
                          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_217;
                          }

                          goto LABEL_225;
                        }

LABEL_194:
                        v120 = 2 * v119;
                        if (v117 > 2 * v119)
                        {
                          v120 = v117;
                        }

                        if ((v120 | 7) == 0x17)
                        {
                          v121 = 25;
                        }

                        else
                        {
                          v121 = (v120 | 7) + 1;
                        }

                        if (v120 >= 0x17)
                        {
                          v122 = v121;
                        }

                        else
                        {
                          v122 = 23;
                        }

                        v123 = v119 == 22;
                        goto LABEL_203;
                      }

                      v126 = v249.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      if ((SHIBYTE(v249.__r_.__value_.__r.__words[2]) - 21) < 2)
                      {
                        v117 = SHIBYTE(v249.__r_.__value_.__r.__words[2]) + 2;
                        v118 = &v249;
                        v119 = 22;
                        goto LABEL_194;
                      }

                      v126 = &v249;
                    }

                    *(&v126->__r_.__value_.__l.__data_ + v116) = 10528;
                    v127 = v116 + 2;
                    if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v249.__r_.__value_.__l.__size_ = v116 + 2;
                    }

                    else
                    {
                      *(&v249.__r_.__value_.__s + 23) = v127 & 0x7F;
                    }

                    v125 = v126 + v127;
                    goto LABEL_214;
                  }
                }

                memmove(v107, v110, v106);
                goto LABEL_182;
              }

LABEL_106:
              v74 = 2 * v73;
              if (v71 > 2 * v73)
              {
                v74 = v71;
              }

              if ((v74 | 7) == 0x17)
              {
                v75 = 25;
              }

              else
              {
                v75 = (v74 | 7) + 1;
              }

              if (v74 >= 0x17)
              {
                v76 = v75;
              }

              else
              {
                v76 = 23;
              }

              v77 = v73 == 22;
              goto LABEL_115;
            }

            v81 = v247.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(v247.__r_.__value_.__r.__words[2]) - 10) < 0xD)
            {
              v71 = SHIBYTE(v247.__r_.__value_.__r.__words[2]) + 13;
              v72 = &v247;
              v73 = 22;
              goto LABEL_106;
            }

            v81 = &v247;
          }

          qmemcpy(v81 + v70, "(contextId ", 13);
          v105 = v70 + 13;
          if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
          {
            v247.__r_.__value_.__l.__size_ = v70 + 13;
          }

          else
          {
            *(&v247.__r_.__value_.__s + 23) = v105 & 0x7F;
          }

          v80 = v81 + v105;
          goto LABEL_166;
        }

LABEL_56:
        v46 = 2 * v32;
        if (v30 > 2 * v32)
        {
          v46 = v30;
        }

        if ((v46 | 7) == 0x17)
        {
          v47 = 25;
        }

        else
        {
          v47 = (v46 | 7) + 1;
        }

        if (v46 >= 0x17)
        {
          v48 = v47;
        }

        else
        {
          v48 = 23;
        }

        v49 = v32 == 22;
        goto LABEL_65;
      }

      v62 = v231.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v231.__r_.__value_.__r.__words[2]) - 14) < 9)
      {
        v30 = SHIBYTE(v231.__r_.__value_.__r.__words[2]) + 9;
        v31 = &v231;
        v32 = 22;
        goto LABEL_56;
      }

      v62 = &v231;
    }

    v64 = v62 + v29;
    *v64 = *", client ";
    v64[8] = 32;
    v65 = v29 + 9;
    if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
    {
      v231.__r_.__value_.__l.__size_ = v29 + 9;
    }

    else
    {
      *(&v231.__r_.__value_.__s + 23) = v65 & 0x7F;
    }

    v53 = v62 + v65;
    goto LABEL_94;
  }

LABEL_451:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v221 = v11;
    (v11->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v221);
    if ((SHIBYTE(v224) & 0x80000000) == 0)
    {
      goto LABEL_454;
    }

    goto LABEL_453;
  }

LABEL_452:
  if (SHIBYTE(v224) < 0)
  {
LABEL_453:
    operator delete(v223[0]);
  }

LABEL_454:
  v220 = *MEMORY[0x29EDCA608];
}

void sub_297598FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, xpc_object_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, xpc_object_t object, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29759946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v14 - 232);
  if ((a14 & 0x80000000) == 0)
  {
    JUMPOUT(0x297599464);
  }

  JUMPOUT(0x29759945CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZZN19ARITransportService4initEvEUb_E3__0NS_9allocatorIS3_EEFvN9AriHostRt20ARI_CLIENT_ERROR_EVTENS_12basic_stringIcNS_11char_traitsIcEENS4_IcEEEEijEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN19ARITransportService4initEvEUb_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN19ARITransportService4initEvEUb_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN19ARITransportService4initEvEUb_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN19ARITransportService4initEvEUb_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

_BYTE *std::stringbuf::str[abi:ne200100](_BYTE *__dst, uint64_t a2)
{
  v2 = __dst;
  v3 = *(a2 + 96);
  if ((v3 & 0x10) != 0)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 48);
    if (v4 < v5)
    {
      *(a2 + 88) = v5;
      v4 = v5;
    }

    v6 = *(a2 + 40);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      __dst[23] = 0;
LABEL_4:
      *__dst = 0;
      return __dst;
    }

    v6 = *(a2 + 16);
    v7 = *(a2 + 32) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v2[1] = v7;
    v2[2] = v8 | 0x8000000000000000;
    *v2 = v9;
    v2 = v9;
  }

  else
  {
    __dst[23] = v7;
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  __dst = memmove(v2, v6, v7);
  *(v2 + v7) = 0;
  return __dst;
}

uint64_t std::function<void ()(AriHostRt::ARI_CLIENT_ERROR_EVT,std::string,int,unsigned int)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void ctu::SharedSynchronizable<ARITransportService>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E49268;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19ARITransportServiceEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c48_ZTSNSt3__110shared_ptrIK19ARITransportServiceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJNS1_6StatusEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = xpc_null_create();
  (*(v1 + 16))(v1, &v2);
  xpc_release(object);
}

void *__copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t ___ZNK3ctu20SharedSynchronizableI19ARITransportServiceE20execute_wrapped_syncIZNS1_9dumpStateEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t result)
{
  if (*(**(result + 40) + 72))
  {
    return MEMORY[0x2A1C6C778](result);
  }

  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v1 + 16))(v1, &v4);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE40c16_ZTS10WakeReason(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE40c16_ZTS10WakeReason(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t __cxx_global_var_init_41()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_42()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

lcdm::CrashDB *lcdm::CrashDB::CrashDB(lcdm::CrashDB *this)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "crash.db");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 16, v5);
  MEMORY[0x29C270D60](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = capabilities::abs::LCDMPurgeAge(v2);
  return this;
}

void sub_297599BDC(_Unwind_Exception *a1)
{
  v3 = v2;
  std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](v3);
  MEMORY[0x29C270D60](v1 + 16);
  v5 = *(v1 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

lcdm::CrashDB *lcdm::CrashDB::create@<X0>(lcdm::CrashDB *this@<X0>, lcdm::CrashDB **a2@<X8>)
{
  result = capabilities::abs::supportsLCDM(this);
  if (result)
  {
    v4 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v4);
    *a2 = v4;
    result = operator new(0x20uLL);
    *result = &unk_2A1E49308;
    *(result + 1) = 0;
    *(result + 2) = 0;
    *(result + 3) = v4;
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_297599CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t lcdm::CrashDB::emplaceCrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  lcdm::CrashEntry::CrashEntry(&v18, a2, a3, a4);
  v6 = v19;
  if (v19)
  {
    v14 = v18;
    v15 = v19;
    memset(v16, 0, sizeof(v16));
    v7 = (*(&v21 + 1) >> 4) & 0xFFFFFFFFFFFFFF8;
    if (*(&v20 + 1) == v20)
    {
      v8 = 0;
    }

    else
    {
      v8 = (*(v20 + v7) + 32 * (BYTE8(v21) & 0x7F));
      v9 = ((v22 + *(&v21 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8;
      v10 = (v22 + BYTE8(v21)) & 0x7F;
      if ((*(v20 + v9) + 32 * v10) != v8)
      {
        v11 = v10 - (BYTE8(v21) & 0x7F) + 16 * (v9 - v7);
LABEL_9:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v16, (v20 + v7), v8, v11);
        lcdm::CrashDB::addCrashEntry(a1, &v14);
        lcdm::CrashEntry::~CrashEntry(&v14);
        goto LABEL_10;
      }
    }

    v11 = 0;
    goto LABEL_9;
  }

  v12 = *(a1 + 16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Not adding crash entry because it is invalid", buf, 2u);
  }

LABEL_10:
  lcdm::CrashEntry::~CrashEntry(&v18);
  return v6;
}

void sub_297599E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  lcdm::CrashEntry::~CrashEntry(&a9);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void sub_297599E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a14 == a13)
  {
    v22 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = __p;
    if (!__p)
    {
LABEL_3:
      lcdm::CrashEntry::~CrashEntry(&a21);
      _Unwind_Resume(a1);
    }
  }

  operator delete(v22);
  lcdm::CrashEntry::~CrashEntry(&a21);
  _Unwind_Resume(a1);
}

void lcdm::CrashDB::addCrashEntry(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 64) >= 5uLL)
  {
    v4 = *(a1 + 16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Evicting oldest crash entry", v80, 2u);
    }

    lcdm::CrashEntry::~CrashEntry((*(*(a1 + 32) + 8 * (*(a1 + 56) / 0x38uLL)) + 72 * (*(a1 + 56) % 0x38uLL)));
    v5 = vaddq_s64(*(a1 + 56), xmmword_2976A2B90);
    *(a1 + 56) = v5;
    if (v5.i64[0] >= 0x70uLL)
    {
      operator delete(**(a1 + 32));
      *(a1 + 32) += 8;
      *(a1 + 56) -= 56;
    }
  }

  v6 = *(a1 + 16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v80 = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Adding new crash entry", v80, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 56 * ((v8 - v9) >> 3) - 1;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64) + v12;
  if (v11 == v13)
  {
    if (v12 >= 0x38)
    {
      *(a1 + 56) = v12 - 56;
      *v80 = *v9;
      *(a1 + 32) = v9 + 8;
LABEL_14:
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>((a1 + 24), v80);
LABEL_28:
      v9 = *(a1 + 32);
      v13 = *(a1 + 64) + *(a1 + 56);
      goto LABEL_29;
    }

    v14 = *(a1 + 48);
    v15 = *(a1 + 24);
    if (v10 < (v14 - v15))
    {
      v16 = operator new(0xFC0uLL);
      if (v14 != v8)
      {
        *v8 = v16;
        *(a1 + 40) = v8 + 8;
        goto LABEL_28;
      }

      if (v9 != v15)
      {
        v40 = v9;
LABEL_75:
        *(v40 - 1) = v16;
        *v80 = v16;
        *(a1 + 32) = v40;
        goto LABEL_14;
      }

      v63 = (v14 - v9) >> 2;
      if (v8 == v9)
      {
        v63 = 1;
      }

      if (!(v63 >> 61))
      {
        v64 = v16;
        v65 = (v63 + 3) >> 2;
        v66 = 8 * v63;
        v67 = operator new(8 * v63);
        v40 = &v67[8 * v65];
        v68 = v40;
        v16 = v64;
        if (v8 != v9)
        {
          v68 = &v40[v10];
          v69 = v8 - v9 - 8;
          v70 = &v67[8 * v65];
          v71 = v9;
          if (v69 < 0x38)
          {
            goto LABEL_81;
          }

          v72 = &v67[8 * v65];
          v70 = v72;
          v71 = v9;
          if ((v72 - v9) < 0x20)
          {
            goto LABEL_81;
          }

          v73 = (v69 >> 3) + 1;
          v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
          v70 = &v40[v74];
          v71 = &v9[v74];
          v75 = (v9 + 16);
          v76 = v72 + 16;
          v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v78 = *v75;
            *(v76 - 1) = *(v75 - 1);
            *v76 = v78;
            v75 += 2;
            v76 += 2;
            v77 -= 4;
          }

          while (v77);
          if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_81:
            do
            {
              v79 = *v71;
              v71 += 8;
              *v70 = v79;
              v70 += 8;
            }

            while (v70 != v68);
          }
        }

        *(a1 + 24) = v67;
        *(a1 + 32) = v40;
        *(a1 + 40) = v68;
        *(a1 + 48) = &v67[v66];
        if (v9)
        {
          operator delete(v15);
          v16 = v64;
          v40 = *(a1 + 32);
        }

        goto LABEL_75;
      }

LABEL_77:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = (v14 - v15) >> 2;
    if (v14 == v15)
    {
      v17 = 1;
    }

    if (v17 >> 61)
    {
      goto LABEL_77;
    }

    v18 = 8 * v17;
    v19 = operator new(8 * v17);
    v20 = operator new(0xFC0uLL);
    v21 = v20;
    v22 = &v19[v10];
    v23 = &v19[v18];
    if (v10 != v18)
    {
      goto LABEL_24;
    }

    if (v10 >= 1)
    {
      v22 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_24:
      *v22 = v20;
      v24 = v22 + 8;
      if (v8 != v9)
      {
        goto LABEL_45;
      }

LABEL_25:
      v25 = v22;
LABEL_26:
      v26 = *(a1 + 24);
      *(a1 + 24) = v19;
      *(a1 + 32) = v25;
      *(a1 + 40) = v24;
      *(a1 + 48) = v23;
      if (v26)
      {
        operator delete(v26);
      }

      goto LABEL_28;
    }

    if (v8 == v9)
    {
      v41 = 1;
    }

    else
    {
      v41 = v10 >> 2;
    }

    if (v41 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v22 = operator new(8 * v41);
    v23 = &v22[8 * v41];
    operator delete(v19);
    v42 = *(a1 + 32);
    v8 = *(a1 + 40);
    v19 = v22;
    *v22 = v21;
    v24 = v22 + 8;
    if (v8 == v42)
    {
      goto LABEL_25;
    }

LABEL_45:
    while (v22 != v19)
    {
      v43 = v22;
LABEL_44:
      v44 = *(v8 - 1);
      v8 -= 8;
      *(v43 - 1) = v44;
      v25 = v43 - 8;
      v22 = v25;
      if (v8 == *(a1 + 32))
      {
        goto LABEL_26;
      }
    }

    if (v24 < v23)
    {
      v43 = &v19[8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1)];
      v46 = v24 - v19;
      v45 = v24 == v19;
      v24 += 8 * ((((v23 - v24) >> 3) + 1 + ((((v23 - v24) >> 3) + 1) >> 63)) >> 1);
      if (!v45)
      {
        memmove(v43, v22, v46);
      }

      goto LABEL_44;
    }

    if (v23 == v19)
    {
      v47 = 1;
    }

    else
    {
      v47 = (v23 - v19) >> 2;
    }

    if (v47 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v48 = operator new(8 * v47);
    v49 = v48;
    v50 = (v47 + 3) >> 2;
    v43 = &v48[8 * v50];
    v51 = v24 - v19;
    v45 = v24 == v19;
    v24 = v43;
    if (!v45)
    {
      v24 = &v43[v51];
      v52 = v51 - 8;
      if (v52 >= 0x18 && (v53 = 8 * v50, (&v48[8 * v50] - v22) >= 0x20))
      {
        v57 = (v52 >> 3) + 1;
        v58 = 8 * (v57 & 0x3FFFFFFFFFFFFFFCLL);
        v54 = &v43[v58];
        v55 = &v22[v58];
        v59 = (v22 + 16);
        v60 = &v48[v53 + 16];
        v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v62 = *v59;
          *(v60 - 1) = *(v59 - 1);
          *v60 = v62;
          v59 += 2;
          v60 += 32;
          v61 -= 4;
        }

        while (v61);
        if (v57 == (v57 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v54 = &v48[8 * v50];
        v55 = v22;
      }

      do
      {
        v56 = *v55;
        v55 += 8;
        *v54 = v56;
        v54 += 8;
      }

      while (v54 != v24);
    }

LABEL_58:
    v23 = &v48[8 * v47];
    operator delete(v19);
    v19 = v49;
    goto LABEL_44;
  }

LABEL_29:
  v27 = *&v9[8 * (v13 / 0x38)] + 72 * (v13 % 0x38);
  v28 = *a2;
  *(v27 + 16) = *(a2 + 16);
  *v27 = v28;
  *(v27 + 40) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 24) = 0u;
  v29 = (v27 + 24);
  v30 = *(a2 + 7);
  v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
  v32 = *(a2 + 4);
  if (*(a2 + 5) == v32)
  {
    v38 = 0;
    v39 = 0;
  }

  else
  {
    v33 = *(a2 + 8) + v30;
    v34 = (v33 >> 4) & 0xFFFFFFFFFFFFFF8;
    v35 = v33 & 0x7F;
    v36 = *(v32 + v34) + 32 * v35;
    v37 = v35 - (*(a2 + 7) & 0x7FLL) + 16 * (v34 - v31);
    v38 = (*(v32 + v31) + 32 * (*(a2 + 7) & 0x7FLL));
    if (v36 == v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v37;
    }
  }

  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v29, (v32 + v31), v38, v39);
  ++*(a1 + 64);
}

void sub_29759A46C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::~CrashEntry(lcdm::CrashEntry *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    v3 = *(this + 4);
    *(this + 8) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(this + 8) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(this + 8) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(this + 7) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(this + 4);
    v14 = *(this + 5);
    if (v14 != v15)
    {
      *(this + 5) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = *(this + 3);
  if (v16)
  {
    operator delete(v16);
  }
}

uint64_t lcdm::CrashDB::purgeCrashEntriesOlderThan(lcdm::CrashDB *this, unint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = lcdm::purgeCrashEntriesOlderThan(this + 3, a2, a3);
  v17 = a2;
  memset(__dst, 170, sizeof(__dst));
  v20[1] = std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke;
  v20[2] = 15;
  v20[0] = &v17;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[14] = v6;
  v24[15] = v6;
  v24[13] = v6;
  v24[12] = v6;
  v24[11] = v6;
  v24[10] = v6;
  v24[9] = v6;
  v24[8] = v6;
  v24[7] = v6;
  v24[6] = v6;
  v24[5] = v6;
  v24[4] = v6;
  v24[3] = v6;
  v24[2] = v6;
  v24[1] = v6;
  v24[0] = v6;
  *buf = v24;
  *&buf[8] = xmmword_29769E5C0;
  v22 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v23 = 0;
  __p = v24;
  v19[0] = 1;
  v19[1] = v20;
  v19[2] = 15;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(buf, "{:%H hr %M min %S sec}", 22, v19);
  v7 = *&buf[16];
  if (*&buf[16] >= 0x7FFFFFFFFFFFFFF8uLL)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = __p;
  if (*&buf[16] >= 0x17uLL)
  {
    if ((*&buf[16] | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (*&buf[16] | 7) + 1;
    }

    v9 = operator new(v14);
    __dst[1] = v7;
    __dst[2] = (v14 | 0x8000000000000000);
    __dst[0] = v9;
  }

  else
  {
    HIBYTE(__dst[2]) = buf[16];
    v9 = __dst;
    if (!*&buf[16])
    {
      LOBYTE(__dst[0]) = 0;
      v10 = __p;
      if (__p == v24)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  memmove(v9, v8, v7);
  *(v7 + v9) = 0;
  v10 = __p;
  if (__p != v24)
  {
LABEL_5:
    operator delete(v10);
  }

LABEL_6:
  v11 = *(this + 2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      v15 = __dst[0];
    }

    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Purged %zu crash entries older than %{public}s", buf, 0x16u);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    operator delete(__dst[0]);
    v16 = *MEMORY[0x29EDCA608];
    return v5;
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v12 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_29759A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p)
{
  if (__p != v58)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::purgeCrashEntriesOlderThan(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[1];
  v7 = (v6 + 8 * (v4 / 0x38));
  if (a1[2] == v6)
  {
    v10 = 0;
    goto LABEL_60;
  }

  v9 = *(v6 + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38);
  v10 = *(v6 + 8 * ((v4 + v5) / 0x38)) + 72 * ((v4 + v5) % 0x38);
  if (v9 != v10)
  {
    while (1)
    {
      v11 = *v9;
      v115[16] = *(v9 + 16);
      *v115 = v11;
      memset(v116, 0, 48);
      v12 = *(v9 + 56);
      v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
      v14 = *(v9 + 32);
      if (*(v9 + 40) == v14)
      {
        break;
      }

      v15 = (*(v14 + v13) + 32 * (*(v9 + 56) & 0x7FLL));
      v16 = *(v9 + 64) + v12;
      v17 = (v16 >> 4) & 0xFFFFFFFFFFFFFF8;
      v18 = v16 & 0x7F;
      if ((*(v14 + v17) + 32 * v18) == v15)
      {
        goto LABEL_9;
      }

      v19 = v18 - (*(v9 + 56) & 0x7FLL) + 16 * (v17 - v13);
LABEL_10:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v116, (v14 + v13), v15, v19);
      v20 = a3 - *&v115[8];
      lcdm::CrashEntry::~CrashEntry(v115);
      if (v20 > a2)
      {
        goto LABEL_13;
      }

      v9 += 72;
      if (v9 - *v7 == 4032)
      {
        v21 = v7[1];
        ++v7;
        v9 = v21;
      }

      if (v9 == v10)
      {
        goto LABEL_60;
      }
    }

    v15 = 0;
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

LABEL_13:
  if (v9 != v10)
  {
    v22 = v9;
    v23 = v7;
    while (1)
    {
      v22 += 72;
      if (v22 - *v23 == 4032)
      {
        v24 = v23[1];
        ++v23;
        v22 = v24;
      }

      if (v22 == v10)
      {
        v10 = v9;
        goto LABEL_60;
      }

      v25 = *v22;
      v113 = *(v22 + 16);
      v112 = v25;
      memset(v114, 0, 48);
      v26 = *(v22 + 56);
      v27 = (v26 >> 4) & 0xFFFFFFFFFFFFFF8;
      v28 = *(v22 + 32);
      if (*(v22 + 40) == v28)
      {
        break;
      }

      v29 = (*(v28 + v27) + 32 * (*(v22 + 56) & 0x7FLL));
      v30 = *(v22 + 64) + v26;
      v31 = (v30 >> 4) & 0xFFFFFFFFFFFFFF8;
      v32 = v30 & 0x7F;
      if ((*(v28 + v31) + 32 * v32) == v29)
      {
        goto LABEL_22;
      }

      v33 = v32 - (*(v22 + 56) & 0x7FLL) + 16 * (v31 - v27);
LABEL_23:
      std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v114, (v28 + v27), v29, v33);
      v34 = a3 - *(&v112 + 1);
      lcdm::CrashEntry::~CrashEntry(&v112);
      if (v34 <= a2)
      {
        v35 = *v22;
        *(v9 + 16) = *(v22 + 16);
        *v9 = v35;
        v37 = *(v9 + 32);
        v36 = *(v9 + 40);
        if (v36 == v37)
        {
          *(v9 + 64) = 0;
          v45 = 0;
        }

        else
        {
          v109 = v7;
          v110 = v5;
          v38 = *(v9 + 56);
          v39 = &v37[v38 >> 7];
          v40 = *v39;
          v41 = *v39 + 32 * (v38 & 0x7F);
          v42 = *(v37 + (((*(v9 + 64) + v38) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v9 + 64) + v38) & 0x7F);
          if (v41 != v42)
          {
            do
            {
              v43 = *(v41 + 8);
              if (v43)
              {
                *(v41 + 16) = v43;
                operator delete(v43);
                v40 = *v39;
              }

              v41 += 32;
              if (v41 - v40 == 4096)
              {
                v44 = v39[1];
                ++v39;
                v40 = v44;
                v41 = v44;
              }
            }

            while (v41 != v42);
            v37 = *(v9 + 32);
            v36 = *(v9 + 40);
          }

          v7 = v109;
          v5 = v110;
          *(v9 + 64) = 0;
          v45 = (v36 - v37) >> 3;
          if (v45 >= 3)
          {
            do
            {
              operator delete(*v37);
              v36 = *(v9 + 40);
              v37 = (*(v9 + 32) + 8);
              *(v9 + 32) = v37;
              v45 = (v36 - v37) >> 3;
            }

            while (v45 > 2);
          }
        }

        if (v45 == 1)
        {
          v46 = 64;
        }

        else
        {
          if (v45 != 2)
          {
            goto LABEL_41;
          }

          v46 = 128;
        }

        *(v9 + 56) = v46;
LABEL_41:
        v47 = *(v9 + 64);
        if (!v47)
        {
          while (v36 != v37)
          {
            operator delete(*(v36 - 8));
            v37 = *(v9 + 32);
            v36 = *(v9 + 40) - 8;
            *(v9 + 40) = v36;
          }

          *(v9 + 56) = 0;
          std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
          v51 = *(v9 + 32);
          v50 = *(v9 + 40);
          if (v50 == v51)
          {
            goto LABEL_51;
          }

LABEL_50:
          *(v9 + 40) = v50 + ((v51 - v50 + 7) & 0xFFFFFFFFFFFFFFF8);
          goto LABEL_51;
        }

        v48 = *(v9 + 56);
        if (v48 >= 0x80)
        {
          operator delete(*v37);
          v36 = *(v9 + 40);
          v37 = (*(v9 + 32) + 8);
          *(v9 + 32) = v37;
          v47 = *(v9 + 64);
          v48 = *(v9 + 56) - 128;
          *(v9 + 56) = v48;
        }

        if (v36 == v37)
        {
          v49 = 0;
        }

        else
        {
          v49 = 16 * (v36 - v37) - 1;
        }

        if (v49 - (v48 + v47) >= 0x80)
        {
          operator delete(*(v36 - 8));
          *(v9 + 40) -= 8;
        }

        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        v51 = *(v9 + 32);
        v50 = *(v9 + 40);
        if (v50 != v51)
        {
          goto LABEL_50;
        }

LABEL_51:
        std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(v9 + 24);
        *(v9 + 24) = *(v22 + 24);
        *(v9 + 40) = *(v22 + 40);
        *(v22 + 40) = 0u;
        *(v22 + 24) = 0u;
        *(v9 + 56) = *(v22 + 56);
        *(v9 + 64) = *(v22 + 64);
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        v9 += 72;
        if (v9 - *v7 == 4032)
        {
          v52 = v7[1];
          ++v7;
          v9 = v52;
        }
      }
    }

    v29 = 0;
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v10 = v9;
LABEL_60:
  v53 = a1[4];
  v54 = a1[5];
  v55 = v53 + v54;
  v56 = (v53 + v54) / 0x38;
  v57 = a1[1];
  v58 = a1[2];
  v59 = (v57 + 8 * v56);
  if (v58 == v57)
  {
    v60 = 0;
  }

  else
  {
    v60 = *v59 + 72 * (v55 - 56 * v56);
  }

  if (v60 == v10)
  {
    v61 = 0;
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v61 = 56 * ((v59 - v7) >> 3) - 0x71C71C71C71C71C7 * ((v60 - *v59) >> 3) + 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    v62 = v53 / 0x38;
    v63 = (v57 + 8 * (v53 / 0x38));
    if (v58 != v57)
    {
LABEL_65:
      v64 = (*v63 + 72 * (v53 - 56 * v62));
      if (v10 == v64)
      {
        goto LABEL_66;
      }

      goto LABEL_70;
    }
  }

  v64 = 0;
  if (!v10)
  {
LABEL_66:
    v65 = 0;
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }

    goto LABEL_75;
  }

LABEL_70:
  v65 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3) + 0x71C71C71C71C71C7 * ((v64 - *v63) >> 3);
  if (v65)
  {
    v68 = 56 * ((v7 - v63) >> 3) - 0x71C71C71C71C71C7 * ((v10 - *v7) >> 3);
    if (v68 < 1)
    {
      v94 = 55 - v68;
      v67 = (v63 - 8 * (v94 / 0x38));
      v66 = *v67 + 72 * (56 * (v94 / 0x38) - v94) + 3960;
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }

    else
    {
      v67 = (v63 + 8 * (v68 / 0x38uLL));
      v66 = *v67 + 72 * (v68 % 0x38uLL);
      if (v61 < 1)
      {
        return v5 - v54;
      }
    }
  }

  else
  {
    v66 = v64;
    v67 = v63;
    if (v61 < 1)
    {
      return v5 - v54;
    }
  }

LABEL_75:
  v69 = *v67;
  v70 = v61 - 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v65 > (v54 - v61) >> 1)
  {
    v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
    if (v70 < 1)
    {
      v95 = 55 - v70;
      v72 = v67 - 8 * (v95 / 0x38);
      v73 = *v72;
      v74 = (*v72 + 72 * (56 * (v95 / 0x38) - v95) + 3960);
      if (v58 != v57)
      {
LABEL_78:
        v75 = (*v59 + 72 * (v55 - 56 * v56));
        if (v72 != v59)
        {
          goto LABEL_79;
        }

        goto LABEL_93;
      }
    }

    else
    {
      v72 = v67 + 8 * (v70 / 0x38uLL);
      v73 = *v72;
      v74 = (*v72 + 72 * (v70 % 0x38uLL));
      if (v58 != v57)
      {
        goto LABEL_78;
      }
    }

    v75 = 0;
    if (v72 != v59)
    {
LABEL_79:
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, (v73 + 4032), v67, v66);
      v76 = *&v115[8];
      v77 = *&v115[16];
      v78 = (v72 + 8);
      if (v72 + 8 != v59)
      {
        do
        {
          v79 = *v78++;
          memset(v115, 170, sizeof(v115));
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v79, v79 + 252, v76, v77);
          v76 = *&v115[8];
          v77 = *&v115[16];
        }

        while (v78 != v59);
      }

      v80 = *v59;
      memset(v115, 170, sizeof(v115));
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v80, v75, v76, v77);
      v82 = *&v115[8];
      v81 = *&v115[16];
      v84 = a1[1];
      v83 = a1[2];
      if (v83 != v84)
      {
LABEL_82:
        v85 = a1[5] + a1[4];
        v86 = *(v84 + 8 * (v85 / 0x38)) + 72 * (v85 % 0x38);
        if (v86 == v81)
        {
          goto LABEL_100;
        }

        goto LABEL_97;
      }

LABEL_94:
      v86 = 0;
      if (!v81)
      {
LABEL_100:
        if (v83 == v84)
        {
          v98 = 0;
        }

        else
        {
          v98 = 56 * ((v83 - v84) >> 3) - 1;
        }

        v99 = a1[4];
        v54 = a1[5] - v61;
        a1[5] = v54;
        if ((v98 - (v99 + v54)) >= 0x70)
        {
          do
          {
            operator delete(*(v83 - 8));
            v83 = a1[2] - 8;
            v100 = v83 == a1[1];
            v101 = 56 * ((v83 - a1[1]) >> 3) - 1;
            a1[2] = v83;
            if (v100)
            {
              v101 = 0;
            }

            v54 = a1[5];
          }

          while ((v101 - (v54 + a1[4])) >= 0x70);
        }

        return v5 - v54;
      }

      do
      {
LABEL_97:
        lcdm::CrashEntry::~CrashEntry(v81);
        v81 = (v96 + 72);
        if ((v81 - *v82) == 4032)
        {
          v97 = v82[1];
          ++v82;
          v81 = v97;
        }
      }

      while (v81 != v86);
      v84 = a1[1];
      v83 = a1[2];
      goto LABEL_100;
    }

LABEL_93:
    memset(v115, 170, sizeof(v115));
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v74, v75, v67, v66);
    v82 = *&v115[8];
    v81 = *&v115[16];
    v84 = a1[1];
    v83 = a1[2];
    if (v83 != v84)
    {
      goto LABEL_82;
    }

    goto LABEL_94;
  }

  v71 = v61 != 0x71C71C71C71C71C7 * ((v66 - *v67) >> 3);
  if (v70 < 1)
  {
    v102 = (55 - v70) / 0x38uLL;
    v87 = v67 - v102;
    v88 = *v87 + 72 * (v70 - 55 + 56 * v102) + 3960;
    if (v63 != v67)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v87 = v67 + v70 / 0x38uLL;
    v88 = *v87 + 72 * (v70 % 0x38uLL);
    if (v63 != v67)
    {
LABEL_86:
      memset(v115, 170, sizeof(v115));
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v69, v66, v87, v88);
      v87 = *&v115[8];
      v88 = *&v115[16];
      for (i = v67 - 1; i != v63; v88 = *&v115[16])
      {
        v90 = *i--;
        memset(v115, 170, sizeof(v115));
        std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v90, v90 + 4032, v87, v88);
        v87 = *&v115[8];
      }

      v91 = *v63;
      memset(v115, 170, sizeof(v115));
      v92 = v91 + 4032;
      v93 = v64;
      goto LABEL_110;
    }
  }

  memset(v115, 170, sizeof(v115));
  v93 = v64;
  v92 = v66;
LABEL_110:
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(v115, v93, v92, v87, v88);
  v103 = *&v115[16];
  while (v64 != v103)
  {
    lcdm::CrashEntry::~CrashEntry(v64);
    v64 = (v64 + 72);
    if ((v64 - *v63) == 4032)
    {
      v104 = *(v63 + 1);
      v63 = (v63 + 8);
      v64 = v104;
    }
  }

  v54 = a1[5] - v61;
  v105 = a1[4] + v61;
  a1[4] = v105;
  a1[5] = v54;
  if (v105 >= 0x70)
  {
    v106 = a1[1];
    do
    {
      operator delete(*v106);
      v106 = (a1[1] + 8);
      a1[1] = v106;
      v107 = a1[4] - 56;
      a1[4] = v107;
    }

    while (v107 >= 0x70);
    v54 = a1[5];
  }

  return v5 - v54;
}

void sub_29759B2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::CrashDB::purgeOldCrashEntries(lcdm::CrashDB *this)
{
  v2 = *(this + 9);
  SystemTime = TelephonyUtilGetSystemTime();

  return lcdm::CrashDB::purgeCrashEntriesOlderThan(this, v2, SystemTime);
}

uint64_t lcdm::serializeCrashDB(_DWORD *a1, unint64_t a2, void *a3, os_log_t oslog)
{
  v35 = *MEMORY[0x29EDCA608];
  if (a3[5])
  {
    v8 = lcdm::calculateTotalLength(a3);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__src = v9;
    v28 = v9;
    lcdm::createReturnTLVHeader(v8, __src);
    v10 = HIDWORD(__src[0]);
    v11 = HIDWORD(__src[0]) + 8;
    if (a2 < v11)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize return TLV header", buf, 2u);
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      else
      {
        v12 = 0;
        v13 = __src[1];
        if (!__src[1])
        {
          goto LABEL_24;
        }
      }

      goto LABEL_23;
    }

    *a1 = __src[0];
    a1[1] = v10;
    memcpy(a1 + 2, __src[1], v10);
    v14 = a3[1];
    if (a3[2] == v14 || (v15 = a3[4], v16 = (v14 + 8 * (v15 / 0x38)), v17 = (*v16 + 72 * (v15 % 0x38)), v18 = *(v14 + 8 * ((a3[5] + v15) / 0x38)) + 72 * ((a3[5] + v15) % 0x38), v17 == v18))
    {
      v12 = 1;
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(v13);
      goto LABEL_24;
    }

    v12 = 1;
    while (1)
    {
      v32 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30 = v19;
      v31 = v19;
      *buf = v19;
      lcdm::CrashEntry::convertToSubTLVs(v17, buf);
      if ((buf[0] & 1) == 0)
      {
        break;
      }

      v20 = lcdm::serializeSubTLVs(a1 + v11, a2 - v11, &buf[8]);
      v22 = v21;
      std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
      v11 += v22;
      if ((v20 & 1) == 0)
      {
        goto LABEL_20;
      }

      v17 = (v17 + 72);
      if ((v17 - *v16) == 4032)
      {
        v23 = v16[1];
        ++v16;
        v17 = v23;
      }

      if (v17 == v18)
      {
        goto LABEL_22;
      }
    }

    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&buf[8]);
LABEL_20:
    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
LABEL_22:
      v13 = __src[1];
      if (!__src[1])
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    lcdm::CrashEntry::toDebugString(v17, buf);
    if ((SBYTE7(v30) & 0x80u) == 0)
    {
      v26 = buf;
    }

    else
    {
      v26 = *buf;
    }

    *v33 = 136315138;
    v34 = v26;
    _os_log_error_impl(&dword_297476000, oslog, OS_LOG_TYPE_ERROR, "Failed to serialize crash entry (%s)", v33, 0xCu);
    if (SBYTE7(v30) < 0)
    {
      operator delete(*buf);
    }

    v12 = 0;
    v13 = __src[1];
    if (__src[1])
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v12 = 1;
      _os_log_impl(&dword_297476000, oslog, OS_LOG_TYPE_INFO, "No crash entries to serialize", buf, 2u);
    }
  }

LABEL_24:
  v24 = *MEMORY[0x29EDCA608];
  return v12;
}

void sub_29759B6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (!a12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a12);
  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::createCrashContextData(os_log_t *this@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  lcdm::CrashDB::logAllEntries(this);
  lcdm::createReturnTLVHeader(0, &v17);
  v4 = *__p;
  v5 = v4 + lcdm::calculateTotalLength(this + 3) + 8;
  if (*&__p[4])
  {
    operator delete(*&__p[4]);
  }

  v6 = operator new(v5);
  bzero(v6, v5);
  if ((lcdm::serializeCrashDB(v6, v5, this + 3, this[2]) & 1) == 0)
  {
    v10 = this[2];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      *a2 = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      goto LABEL_10;
    }

    LOWORD(v17) = 0;
    v11 = "Failed to serialize crash entries";
    v12 = v10;
    v13 = 2;
LABEL_12:
    _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, v11, &v17, v13);
    goto LABEL_9;
  }

  if (v7 != v5)
  {
    v14 = v7;
    v15 = this[2];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v17 = 134218240;
    *__p = v14;
    *&__p[8] = 2048;
    *&__p[10] = v5;
    v11 = "Serialized data size %zu does not match expected size %zu";
    v12 = v15;
    v13 = 22;
    goto LABEL_12;
  }

  *a2 = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v8 = operator new(v5);
  *(a2 + 8) = v8;
  v9 = &v8[v5];
  *(a2 + 24) = &v8[v5];
  memcpy(v8, v6, v5);
  *(a2 + 16) = v9;
LABEL_10:
  operator delete(v6);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_29759B8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void lcdm::CrashDB::logAllEntries(lcdm::CrashDB *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(this + 2);
  if (*(this + 8))
  {
    if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297476000, v1, OS_LOG_TYPE_DEBUG, "#D Crash entries:", __p, 2u);
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v3 = *(this + 4);
      if (*(this + 5) == v3)
      {
        goto LABEL_18;
      }
    }

    v4 = *(this + 7);
    v5 = *(v3 + 8 * (v4 / 0x38));
    v6 = (v5 + 72 * (v4 % 0x38));
    v7 = *(v3 + 8 * ((*(this + 8) + v4) / 0x38)) + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      v8 = 0;
      v9 = (v3 + 8 * (v4 / 0x38));
      while (1)
      {
        v10 = *(this + 2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          break;
        }

        v6 = (v6 + 72);
        if (v6 - v5 == 4032)
        {
          goto LABEL_9;
        }

LABEL_6:
        if (v6 == v7)
        {
          goto LABEL_18;
        }
      }

      lcdm::CrashEntry::toDebugString(v6, __p);
      v12 = __p;
      if (v15 < 0)
      {
        v12 = __p[0];
      }

      *buf = 67109378;
      v17 = v8;
      v18 = 2080;
      v19 = v12;
      _os_log_debug_impl(&dword_297476000, v10, OS_LOG_TYPE_DEBUG, "#D Entry[%d] = %s", buf, 0x12u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      ++v8;
      v5 = *v9;
      v6 = (v6 + 72);
      if (v6 - *v9 != 4032)
      {
        goto LABEL_6;
      }

LABEL_9:
      v11 = v9[1];
      ++v9;
      v5 = v11;
      v6 = v11;
      goto LABEL_6;
    }
  }

  else if (os_log_type_enabled(*(this + 2), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297476000, v1, OS_LOG_TYPE_DEFAULT, "#I No crash entries", __p, 2u);
  }

LABEL_18:
  v13 = *MEMORY[0x29EDCA608];
}

void lcdm::createReturnTLVHeader(lcdm *this@<X0>, void *a2@<X8>)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3;
  v11 = v3;
  v9 = 4;
  strcpy(__p, "CTXT");
  lcdm::constructSubTLVWithUInt32Value(__p, this, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
LABEL_3:
      if (!v4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v4 = v11;
    *a2 = *(&v10 + 1);
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(&v11 + 1) - v4;
    if (*(&v11 + 1) == v4)
    {
      goto LABEL_3;
    }
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
  }

  v6 = operator new(v5);
  a2[1] = v6;
  v7 = &v6[v5];
  a2[3] = &v6[v5];
  memcpy(v6, v4, v5);
  a2[2] = v7;
  if (v4)
  {
LABEL_4:
    *(&v11 + 1) = v4;
    operator delete(v4);
  }
}

void sub_29759BC20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t lcdm::calculateTotalLength(void *a1)
{
  v1 = a1[1];
  if (a1[2] != v1)
  {
    v2 = a1[4];
    v3 = *(v1 + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38);
    v4 = *(v1 + 8 * ((a1[5] + v2) / 0x38)) + 72 * ((a1[5] + v2) % 0x38);
    if (v3 != v4)
    {
      LODWORD(v5) = 0;
      v6 = (v1 + 8 * (v2 / 0x38));
      while (1)
      {
        v7 = *v3;
        v20 = *(v3 + 16);
        v19 = v7;
        memset(v21, 0, 48);
        v8 = *(v3 + 56);
        v9 = (v8 >> 4) & 0xFFFFFFFFFFFFFF8;
        v10 = *(v3 + 32);
        if (*(v3 + 40) == v10)
        {
          break;
        }

        v11 = (*(v10 + v9) + 32 * (*(v3 + 56) & 0x7FLL));
        v12 = *(v3 + 64) + v8;
        v13 = (v12 >> 4) & 0xFFFFFFFFFFFFFF8;
        v14 = v12 & 0x7F;
        if ((*(v10 + v13) + 32 * v14) == v11)
        {
          goto LABEL_9;
        }

        v15 = v14 - (*(v3 + 56) & 0x7FLL) + 16 * (v13 - v9);
LABEL_10:
        std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v21, (v10 + v9), v11, v15);
        v16 = v19;
        lcdm::CrashEntry::~CrashEntry(&v19);
        v3 += 72;
        if (v3 - *v6 == 4032)
        {
          v17 = v6[1];
          ++v6;
          v3 = v17;
        }

        v5 = (v16 + v5);
        if (v3 == v4)
        {
          return v5;
        }
      }

      v11 = 0;
LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  return 0;
}

void sub_29759BDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14)
{
  if (a14 == a13)
  {
    v15 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t std::deque<lcdm::CrashEntry>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(a1 + 40) + v4) / 0x38] + 72 * ((*(a1 + 40) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  v2 = v1[4];
  v3 = v1[5];
  if (v3 == v2)
  {
    v3 = v1[4];
    v1[8] = 0;
    v10 = 0;
  }

  else
  {
    v4 = v1[7];
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(v1[8] + v4) / 0x38] + 72 * ((v1[8] + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = v1[4];
      v3 = v1[5];
    }

    v1[8] = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = v1[5];
        v2 = (v1[4] + 8);
        v1[4] = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_18;
    }

    v11 = 56;
  }

  v1[7] = v11;
LABEL_18:
  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = v1[4];
    v13 = v1[5];
    if (v13 != v14)
    {
      v1[5] = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = v1[3];
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C270D60](v1 + 2);
  v16 = v1[1];
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<lcdm::CrashDB *,std::shared_ptr<lcdm::CrashDB>::__shared_ptr_default_delete<lcdm::CrashDB,lcdm::CrashDB>,std::allocator<lcdm::CrashDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A2C2ELL)
  {
    if (((v2 & 0x80000002976A2C2ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A2C2ELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A2C2ELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void lcdm::CrashDB::~CrashDB(lcdm::CrashDB *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3 == v2)
  {
    *(this + 8) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(this + 7);
    v5 = &v2[v4 / 0x38];
    v6 = (*v5 + 72 * (v4 % 0x38));
    v7 = v2[(*(this + 8) + v4) / 0x38] + 72 * ((*(this + 8) + v4) % 0x38);
    if (v6 != v7)
    {
      do
      {
        lcdm::CrashEntry::~CrashEntry(v6);
        v6 = (v8 + 72);
        if (v6 - *v5 == 4032)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
        }
      }

      while (v6 != v7);
      v2 = *(this + 4);
      v3 = *(this + 5);
    }

    *(this + 8) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(this + 5);
        v2 = (*(this + 4) + 8);
        *(this + 4) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 28;
    goto LABEL_15;
  }

  if (v10 == 2)
  {
    v11 = 56;
LABEL_15:
    *(this + 7) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(this + 4);
    v13 = *(this + 5);
    if (v13 != v14)
    {
      *(this + 5) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v15 = *(this + 3);
  if (v15)
  {
    operator delete(v15);
  }

  MEMORY[0x29C270D60](this + 16);
  v16 = *(this + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

lcdm::CrashDB **std::unique_ptr<lcdm::CrashDB>::~unique_ptr[abi:ne200100](lcdm::CrashDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    lcdm::CrashDB::~CrashDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t std::__basic_format_arg_value<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>::__handle::__handle[abi:ne200100]<std::chrono::duration<long long,std::ratio<1l,1000l>>>(std::chrono::duration<long long,std::ratio<1l,1000l>> &)::{lambda(std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>&,void const*)#1}::__invoke(std::locale::__imp **a1, uint64_t a2, uint64_t *a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v82 = 0;
  v83 = -1;
  strcpy(v84, " ");
  memset(&v84[2], 0, 18);
  locale = *a1;
  v8 = a1[1];
  v102[0].__locale_ = locale;
  if (locale == v8 || *locale == 125)
  {
    goto LABEL_31;
  }

  *&v92 = locale;
  *(&v92 + 1) = v8;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v92) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  if (v92 >= v8)
  {
    goto LABEL_9;
  }

  v9 = *v92;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
LABEL_9:
      v11 = *locale;
      switch(v11)
      {
        case '<':
          v12 = 1;
          break;
        case '>':
          v12 = 3;
          break;
        case '^':
          v12 = 2;
          break;
        default:
LABEL_25:
          v14 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(&v82, v102, v8, a1);
          locale = v102[0].__locale_;
          if (v102[0].__locale_ == v8)
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if ((v15 & 1) == 0 && *v102[0].__locale_ == 76)
          {
            LOBYTE(v82) = v82 | 0x40;
            locale = (v102[0].__locale_ + 1);
          }

          goto LABEL_31;
      }

      LOBYTE(v82) = v82 & 0xF8 | v12;
      locale = (locale + 1);
      v102[0].__locale_ = locale;
      if (locale == v8)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
  }

  v3 = (v82 & 0xF8);
  LOBYTE(v82) = v3 | v10;
  v13 = v92 - locale;
  if (v92 - locale == 1)
  {
    if (*locale == 123)
    {
      std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
    }

    v84[0] = *locale;
  }

  else if (v92 != locale)
  {
    memmove(v84, locale, v13);
  }

  locale = (locale + v13 + 1);
  v102[0].__locale_ = locale;
  if (locale != v8)
  {
    goto LABEL_25;
  }

LABEL_31:
  v16 = a1[1];
  if (locale != v16)
  {
    v17 = *locale;
    if (v17 != 37 && v17 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier expects a '%' or a '}'");
    }

    v18 = WORD1(v82);
    v3 = locale;
    while (v17 != 37)
    {
      if (v17 == 125)
      {
        goto LABEL_59;
      }

      v19 = v3;
      if (v17 == 123)
      {
        std::__throw_format_error[abi:ne200100]("The chrono specifiers contain a '{'");
      }

LABEL_42:
      v3 = (v19 + 1);
      if ((v19 + 1) != v16)
      {
        v17 = *v3;
        if (v17 != 125)
        {
          continue;
        }
      }

LABEL_59:
      *&v84[4] = locale;
      *&v84[12] = v3 - locale;
      *a1 = v3;
      v23 = v82;
      if ((v18 & 0x4000) == 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      v25 = SHIDWORD(v82);
      v26 = *(a2 + 8);
      if (v26 <= SHIDWORD(v82))
      {
        LOBYTE(v27) = 0;
      }

      else if (v26 > 0xC)
      {
        v28 = *(a2 + 16) + 32 * SHIDWORD(v82);
        v25 = *v28;
        v3 = *(v28 + 8);
        LOBYTE(v27) = *(v28 + 16);
        v102[0] = *(v28 + 17);
        *(&v102[0].__locale_ + 7) = *(v28 + 24);
      }

      else
      {
        v27 = (*(a2 + 24) >> (5 * BYTE4(v82))) & 0x1FLL;
        v25 = *(*(a2 + 16) + 16 * SHIDWORD(v82));
        v3 = *(*(a2 + 16) + 16 * SHIDWORD(v82) + 8);
      }

      *&v92 = v25;
      *(&v92 + 1) = v3;
      LOBYTE(v93) = v27;
      *(&v93 + 1) = v102[0];
      *(&v93 + 1) = *(&v102[0].__locale_ + 7);
      v24 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
      if ((v82 & 0x80000000) != 0)
      {
        goto LABEL_69;
      }

LABEL_61:
      v80 = v83;
      goto LABEL_75;
    }

    v19 = (v3 + 1);
    if ((v3 + 1) == v16)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing a conversion specifier");
    }

    v20 = 1;
    switch(*v19)
    {
      case '%':
      case 'M':
      case 'Q':
      case 'S':
      case 'n':
      case 'q':
      case 't':
        goto LABEL_42;
      case 'A':
      case 'a':
        v18 |= 2u;
        goto LABEL_166;
      case 'B':
      case 'b':
      case 'h':
        WORD1(v82) = v18 | 0x20;
        goto LABEL_159;
      case 'C':
      case 'Y':
      case 'y':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'D':
      case 'F':
      case 'x':
        goto LABEL_152;
      case 'E':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier E");
        }

        v21 = *v19;
        if (v21 == 88)
        {
          goto LABEL_41;
        }

        if (*v19 > 0x77u)
        {
          if (v21 == 120)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
          }

          if (v21 == 122)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
          }

          if (v21 != 121)
          {
LABEL_175:
            std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier E is invalid");
          }
        }

        else if (v21 != 67 && v21 != 89)
        {
          if (v21 == 99)
          {
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
          }

          goto LABEL_175;
        }

        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
      case 'G':
      case 'U':
      case 'V':
      case 'W':
      case 'g':
        WORD1(v82) = v18 | 0x10;
LABEL_152:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
      case 'H':
      case 'I':
      case 'R':
      case 'T':
      case 'X':
      case 'p':
      case 'r':
        goto LABEL_41;
      case 'O':
        v19 = (v3 + 2);
        if ((v3 + 2) == v16)
        {
          std::__throw_format_error[abi:ne200100]("End of input while parsing the modifier O");
        }

        v22 = *v19;
        if (v22 <= 0x4C)
        {
          if (v22 - 72 >= 2)
          {
            goto LABEL_58;
          }

LABEL_41:
          v18 |= v20;
          WORD1(v82) = v18;
        }

        else if (*v19 <= 0x52u)
        {
          if (v22 != 77)
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (*v19 > 0x54u)
          {
            if (*v19 <= 0x6Cu)
            {
              if (v22 - 85 < 3)
              {
                WORD1(v82) = v18 | 0x10;
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date");
              }

              if (v22 - 100 < 2)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
              }

              goto LABEL_58;
            }

            if (*v19 <= 0x76u)
            {
              if (v22 == 109)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
              }

              if (v22 != 117)
              {
LABEL_58:
                std::__throw_format_error[abi:ne200100]("The date time type specifier for modifier O is invalid");
              }
            }

            else if (v22 != 119)
            {
              if (v22 == 121)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a year");
              }

              if (v22 == 122)
              {
                std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
              }

              goto LABEL_58;
            }

            WORD1(v82) = v18 | 4;
            std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
          }

          if (v22 != 83)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_42;
      case 'Z':
      case 'z':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a time zone");
      case 'c':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a date and time");
      case 'd':
      case 'e':
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a day");
      case 'j':
        v20 = 8;
        goto LABEL_41;
      case 'm':
LABEL_159:
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a month");
      case 'u':
      case 'w':
LABEL_166:
        WORD1(v82) = v18 | 4;
        std::__throw_format_error[abi:ne200100]("The supplied date time doesn't contain a weekday");
      default:
        std::__throw_format_error[abi:ne200100]("The date time type specifier is invalid");
    }
  }

  v18 = WORD1(v82);
  *a1 = locale;
  v23 = v82;
  if ((v18 & 0x4000) != 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  v24 = HIDWORD(v82);
  if ((v18 & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_69:
  v29 = v83;
  v30 = *(a2 + 8);
  if (v30 <= v83)
  {
    LOBYTE(v31) = 0;
  }

  else if (v30 > 0xC)
  {
    v32 = *(a2 + 16) + 32 * v83;
    v29 = *v32;
    v3 = *(v32 + 8);
    LOBYTE(v31) = *(v32 + 16);
    v102[0] = *(v32 + 17);
    *(&v102[0].__locale_ + 7) = *(v32 + 24);
  }

  else
  {
    v31 = (*(a2 + 24) >> (5 * v83)) & 0x1FLL;
    v29 = *(*(a2 + 16) + 16 * v83);
    v3 = *(*(a2 + 16) + 16 * v83 + 8);
  }

  *&v92 = v29;
  *(&v92 + 1) = v3;
  LOBYTE(v93) = v31;
  *(&v93 + 1) = v102[0];
  *(&v93 + 1) = *(&v102[0].__locale_ + 7);
  v80 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__dst, &v92);
LABEL_75:
  v33 = *v84;
  v34 = *&v84[4];
  v101 = 0xAAAAAAAAAAAAAAAALL;
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v100[7] = v35;
  v100[8] = v35;
  v100[5] = v35;
  v100[6] = v35;
  v100[3] = v35;
  v100[4] = v35;
  v100[1] = v35;
  v100[2] = v35;
  v99 = v35;
  v100[0] = v35;
  v97 = v35;
  v98 = v35;
  v95 = v35;
  __src = v35;
  v93 = v35;
  v94 = v35;
  v92 = v35;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v92);
  v81 = v24;
  v36 = v23 & 7 | (8 * ((v23 >> 6) & 1)) & 0xFFFFFFFFFFFFFC0FLL | (16 * (v18 & 0x3F));
  v37 = *(v92 - 24);
  if ((v36 & 8) == 0)
  {
    v38 = std::locale::classic();
    v39 = (&v92 + v37);
    v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::ios_base::getloc(v39);
    std::ios_base::imbue(v39, v38);
    std::locale::~locale(v102);
    rdbuf = v39->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(rdbuf, v38);
      __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
      std::locale::locale(&__dst, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, v38);
      std::locale::~locale(&__dst);
    }

    std::locale::~locale(&v85);
    if (!*(&v34 + 1))
    {
      goto LABEL_79;
    }

LABEL_125:
    if (*a3 < 0)
    {
      LOBYTE(v102[0].__locale_) = 45;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v102, 1);
      v102[0].__locale_ = -*a3;
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, v102, v34, *(&v34 + 1));
    }

    else
    {
      std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(&v92, a3, v34, *(&v34 + 1));
    }

    v55 = -1;
    v56 = v36 | (v81 << 32);
    v57 = BYTE8(v99);
    if ((BYTE8(v99) & 0x10) != 0)
    {
      goto LABEL_109;
    }

LABEL_129:
    if ((v57 & 8) != 0)
    {
      v59 = *(&v94 + 1);
      v60 = *(&v95 + 1) - *(&v94 + 1);
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = v33 << 32;
      v62 = *a2;
      v63 = v55;
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_131:
    v72 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v60, v62, v56, v63 | v61);
    goto LABEL_141;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C271CA0](v102);
    v49 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v49, v102);
    }

    else
    {
      std::locale::locale(v49, v102);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v102);
  }

  std::locale::locale(&v91, (a2 + 32));
  v85.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((&v92 + v37));
  std::ios_base::imbue((&v92 + v37), &v91);
  std::locale::~locale(v102);
  v71 = *(&v94 + v37 + 8);
  if (v71)
  {
    (*(v71->__locale_ + 2))(v71, &v91);
    __dst.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&__dst, v71 + 1);
    std::locale::operator=(v71 + 1, &v91);
    std::locale::~locale(&__dst);
  }

  std::locale::~locale(&v85);
  std::locale::~locale(&v91);
  if (*(&v34 + 1))
  {
    goto LABEL_125;
  }

LABEL_79:
  v110 = 0xAAAAAAAAAAAAAAAALL;
  *&v41 = 0xAAAAAAAAAAAAAAAALL;
  *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v109[7] = v41;
  v109[8] = v41;
  v109[5] = v41;
  v109[6] = v41;
  v109[3] = v41;
  v109[4] = v41;
  v109[1] = v41;
  v109[2] = v41;
  v108 = v41;
  v109[0] = v41;
  v106 = v41;
  v107 = v41;
  v104 = v41;
  v105 = v41;
  *&v102[0].__locale_ = v41;
  v103 = v41;
  std::ostringstream::basic_ostringstream[abi:ne200100](v102);
  v42 = v102[0].__locale_;
  v43 = v93;
  *(&v102[1].__locale_ + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 8);
  v44 = *(v42 - 3);
  std::ios_base::getloc((&v93 + *(v43 - 24)));
  v90.__locale_ = 0xAAAAAAAAAAAAAAAALL;
  std::ios_base::getloc((v102 + v44));
  std::ios_base::imbue((v102 + v44), &__loc);
  std::locale::~locale(&__dst);
  v45 = *(&v104 + v44 + 8);
  if (v45)
  {
    (*(v45->__locale_ + 2))(v45, &__loc);
    v91.__locale_ = 0xAAAAAAAAAAAAAAAALL;
    std::locale::locale(&v91, v45 + 1);
    std::locale::operator=(v45 + 1, &__loc);
    std::locale::~locale(&v91);
  }

  std::locale::~locale(&v90);
  std::locale::~locale(&__loc);
  *(&v102[2] + *(v102[0].__locale_ - 3)) = *(&v93 + *(v93 - 24) + 16);
  v46 = MEMORY[0x29C271BA0](v102, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "ms", 2);
  if ((BYTE8(v108) & 0x10) != 0)
  {
    v50 = v108;
    if (v108 < *(&v105 + 1))
    {
      *&v108 = *(&v105 + 1);
      v50 = *(&v105 + 1);
    }

    v51 = v105;
    v47 = v50 - v105;
    if ((v50 - v105) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_137;
    }
  }

  else
  {
    if ((BYTE8(v108) & 8) == 0)
    {
      v47 = 0;
      HIBYTE(v88) = 0;
      p_dst = &__dst;
      goto LABEL_98;
    }

    v51 = *(&v103 + 1);
    v47 = *(&v104 + 1) - *(&v103 + 1);
    if (*(&v104 + 1) - *(&v103 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_137:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v47 >= 0x17)
  {
    if ((v47 | 7) == 0x17)
    {
      v52 = 25;
    }

    else
    {
      v52 = (v47 | 7) + 1;
    }

    p_dst = operator new(v52);
    v87 = v47;
    v88 = v52 | 0x8000000000000000;
    __dst.__locale_ = p_dst;
    goto LABEL_97;
  }

  HIBYTE(v88) = v47;
  p_dst = &__dst;
  if (v47)
  {
LABEL_97:
    memmove(p_dst, v51, v47);
  }

LABEL_98:
  *(p_dst + v47) = 0;
  if (v88 >= 0)
  {
    v53 = &__dst;
  }

  else
  {
    v53 = __dst.__locale_;
  }

  if (v88 >= 0)
  {
    v54 = HIBYTE(v88);
  }

  else
  {
    v54 = v87;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v93, v53, v54);
  v55 = v80;
  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst.__locale_);
  }

  v102[0] = *MEMORY[0x29EDC9538];
  *(v102 + *(v102[0].__locale_ - 3)) = *(MEMORY[0x29EDC9538] + 24);
  v102[1].__locale_ = (MEMORY[0x29EDC9570] + 16);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(*(&v106 + 1));
  }

  v102[1].__locale_ = (MEMORY[0x29EDC9568] + 16);
  std::locale::~locale(&v103);
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v109);
  v56 = v36 | (v81 << 32);
  v57 = BYTE8(v99);
  if ((BYTE8(v99) & 0x10) == 0)
  {
    goto LABEL_129;
  }

LABEL_109:
  v58 = v99;
  if (v99 < *(&__src + 1))
  {
    *&v99 = *(&__src + 1);
    v58 = *(&__src + 1);
  }

  v59 = __src;
  v60 = v58 - __src;
  v61 = v33 << 32;
  v62 = *a2;
  v63 = v55;
  if ((v55 & 0x80000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_112:
  LODWORD(v64) = 0;
  v65 = v59;
  if (v55 && v60)
  {
    v64 = v55 & 0x7FFFFFFF;
    if (*v59 < 0)
    {
      v69 = v62;
      v70 = v56;
      v67 = v59;
    }

    else
    {
      v66 = 0;
      v65 = &v59[v64];
      v67 = &v59[v64 - 1];
      while (1)
      {
        if (v60 - 1 == v66)
        {
          LODWORD(v64) = v60;
          v65 = &v59[v60];
          goto LABEL_140;
        }

        if (v64 - 1 == v66)
        {
          break;
        }

        v68 = v59[++v66];
        if (v68 < 0)
        {
          v69 = v62;
          v70 = v56;
          v64 = v64 - v66 + 1;
          v67 = &v59[v66 - 1];
          goto LABEL_135;
        }
      }

      if ((*v65 & 0x80000000) == 0)
      {
        goto LABEL_140;
      }

      v69 = v62;
      v70 = v56;
      v64 = 1;
    }

LABEL_135:
    v73 = v67 - v59;
    v74 = v59;
    LODWORD(v64) = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v67, &v59[v60], v64, 0);
    v59 = v74;
    v65 = v75;
    LODWORD(v64) = v73 + v64;
    v56 = v70;
    v62 = v69;
  }

LABEL_140:
  v72 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v59, v65 - v59, v62, v56, v63 | v61, v64);
LABEL_141:
  v76 = v72;
  *&v92 = *MEMORY[0x29EDC9528];
  v77 = *(MEMORY[0x29EDC9528] + 72);
  *(&v92 + *(v92 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v93 = v77;
  *(&v93 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v98) < 0)
  {
    operator delete(*(&v97 + 1));
  }

  *(&v93 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v94);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C271DA0](v100);
  *a2 = v76;
  v79 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29759D384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::locale a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::locale a23, std::locale a24, std::locale a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a26, MEMORY[0x29EDC9528]);
  MEMORY[0x29C271DA0](&a42);
  _Unwind_Resume(a1);
}

void std::__formatter::__format_chrono_using_chrono_specs[abi:ne200100]<char,std::chrono::duration<long long,std::ratio<1l,1000l>>>(void *a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v87 = *MEMORY[0x29EDCA608];
  memset(v54, 0, sizeof(v54));
  v53 = 0u;
  v8 = *a2 / 1000 % 0x15180uLL;
  v9 = v8 / 0xE10;
  LOWORD(v8) = v8 % 0xE10;
  v50 = v8 % 0x3Cu;
  v51 = v8 / 0x3Cu;
  v52 = v9;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0x3AAAAAAAAAAAAAALL;
  v49 = 0;
  v46 = 0xAAAAAAAA00435455;
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  std::locale::use_facet(&v66, MEMORY[0x29EDC9400]);
  std::locale::~locale(&v66);
  if (a4)
  {
    v10 = &a3[a4];
    v11 = a1 + 7;
    while (*a3 != 37)
    {
      LOBYTE(v66.__locale_) = *a3;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
      v14 = a3;
LABEL_4:
      a3 = v14 + 1;
      if (v14 + 1 == v10)
      {
        goto LABEL_94;
      }
    }

    v14 = a3 + 1;
    switch(a3[1])
    {
      case '%':
        LOBYTE(v66.__locale_) = 37;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'C':
        if ((DWORD2(v53) - 8100) > 0xFFFFDCD7)
        {
          goto LABEL_3;
        }

        v62 = 0;
        v63 = 3;
        if (SDWORD2(v53) >= -1900)
        {
          v26 = 0;
        }

        else
        {
          v26 = -99;
        }

        v61 = ((DWORD2(v53) + v26 + 1900) / 100);
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v27;
        v85 = v27;
        v82 = v27;
        v83 = v27;
        v80 = v27;
        v81 = v27;
        v78 = v27;
        v79 = v27;
        v76 = v27;
        v77 = v27;
        v74 = v27;
        v75 = v27;
        v72 = v27;
        v73 = v27;
        v70 = v27;
        v71 = v27;
        v66.__locale_ = &v70;
        v67 = xmmword_29769E5C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 3;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{:02}", 5, &v58);
        v28 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v29 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v44 = 25;
          }

          else
          {
            v44 = (*(&v67 + 1) | 7) + 1;
          }

          p_dst = operator new(v44);
          v56 = v28;
          v57 = v44 | 0x8000000000000000;
          __dst = p_dst;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          p_dst = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v31 = __p;
            if (__p == &v70)
            {
LABEL_35:
              if (v57 >= 0)
              {
                v24 = &__dst;
              }

              else
              {
                v24 = __dst;
              }

              if (v57 >= 0)
              {
                v25 = HIBYTE(v57);
              }

              else
              {
                v25 = v56;
              }

              goto LABEL_53;
            }

LABEL_34:
            operator delete(v31);
            goto LABEL_35;
          }
        }

        memmove(p_dst, v29, v28);
        v11 = a1 + 7;
        *(p_dst + v28) = 0;
        v31 = __p;
        if (__p == &v70)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      case 'E':
        v17 = a3[2];
        goto LABEL_56;
      case 'F':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        v61 = (DWORD1(v53) + 1);
        v62 = 0;
        v64 = 0;
        v65 = 99;
        v63 = v53;
        *&v32 = 0xAAAAAAAAAAAAAAAALL;
        *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v32;
        v85 = v32;
        v82 = v32;
        v83 = v32;
        v80 = v32;
        v81 = v32;
        v78 = v32;
        v79 = v32;
        v76 = v32;
        v77 = v32;
        v74 = v32;
        v75 = v32;
        v72 = v32;
        v73 = v32;
        v70 = v32;
        v71 = v32;
        v66.__locale_ = &v70;
        v67 = xmmword_29769E5C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 2;
        v59 = &v61;
        v60 = 99;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "-{:02}-{:02}", 12, &v58);
        v33 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v43 = 25;
          }

          else
          {
            v43 = (*(&v67 + 1) | 7) + 1;
          }

          v35 = operator new(v43);
          v56 = v33;
          v57 = v43 | 0x8000000000000000;
          __dst = v35;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v35 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v36 = __p;
            if (__p == &v70)
            {
              goto LABEL_47;
            }

LABEL_46:
            operator delete(v36);
            goto LABEL_47;
          }
        }

        memmove(v35, v34, v33);
        v11 = a1 + 7;
        *(v35 + v33) = 0;
        v36 = __p;
        if (__p != &v70)
        {
          goto LABEL_46;
        }

LABEL_47:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

LABEL_53:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, v24, v25);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_4;
      case 'O':
        v14 = a3 + 2;
        v17 = a3[2];
        if (v17 == 83)
        {
          goto LABEL_7;
        }

LABEL_56:
        v14 = a3 + 2;
        if (v17 != 122)
        {
          goto LABEL_3;
        }

        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 1);
        goto LABEL_4;
      case 'Q':
        v18 = *a2;
        v62 = 0;
        v63 = 4;
        v61 = v18;
        *&v19 = 0xAAAAAAAAAAAAAAAALL;
        *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v84 = v19;
        v85 = v19;
        v82 = v19;
        v83 = v19;
        v80 = v19;
        v81 = v19;
        v78 = v19;
        v79 = v19;
        v76 = v19;
        v77 = v19;
        v74 = v19;
        v75 = v19;
        v72 = v19;
        v73 = v19;
        v70 = v19;
        v71 = v19;
        v66.__locale_ = &v70;
        v67 = xmmword_29769E5C0;
        v68 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
        v69 = 0;
        __p = &v70;
        v58 = 1;
        v59 = &v61;
        v60 = 4;
        std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v66, "{}", 2, &v58);
        v20 = *(&v67 + 1);
        if (*(&v67 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = __p;
        if (*(&v67 + 1) >= 0x17uLL)
        {
          if ((*(&v67 + 1) | 7) == 0x17)
          {
            v42 = 25;
          }

          else
          {
            v42 = (*(&v67 + 1) | 7) + 1;
          }

          v22 = operator new(v42);
          v56 = v20;
          v57 = v42 | 0x8000000000000000;
          __dst = v22;
        }

        else
        {
          HIBYTE(v57) = BYTE8(v67);
          v22 = &__dst;
          if (!*(&v67 + 1))
          {
            v11 = a1 + 7;
            LOBYTE(__dst) = 0;
            v23 = __p;
            if (__p == &v70)
            {
              goto LABEL_18;
            }

LABEL_17:
            operator delete(v23);
            goto LABEL_18;
          }
        }

        memmove(v22, v21, v20);
        v11 = a1 + 7;
        *(v22 + v20) = 0;
        v23 = __p;
        if (__p != &v70)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v57 >= 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst;
        }

        if (v57 >= 0)
        {
          v25 = HIBYTE(v57);
        }

        else
        {
          v25 = v56;
        }

        goto LABEL_53;
      case 'S':
      case 'T':
LABEL_7:
        v15 = *(v11 + *(a1[2] - 24));
        v16 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        std::__formatter::__format_sub_seconds[abi:ne200100]<char,long long,std::ratio<1l,1000l>>(a1, a2);
        goto LABEL_4;
      case 'Y':
        std::__formatter::__format_year[abi:ne200100]<char>(a1, DWORD2(v53) + 1900);
        goto LABEL_4;
      case 'Z':
        if (v48 >= 0)
        {
          v37 = &v46;
        }

        else
        {
          v37 = v46;
        }

        if (v48 >= 0)
        {
          v38 = SHIBYTE(v48);
        }

        else
        {
          v38 = v47;
        }

        if (v38)
        {
          v39 = *(v11 + *(a1[2] - 24));
          do
          {
            if (v39)
            {
              v40 = *v37;
              v41 = v39[6];
              if (v41 == v39[7])
              {
                if ((*(*v39 + 104))(v39, v40) == -1)
                {
                  v39 = 0;
                }
              }

              else
              {
                v39[6] = v41 + 1;
                *v41 = v40;
              }
            }

            ++v37;
            --v38;
          }

          while (v38);
        }

        goto LABEL_4;
      case 'j':
        MEMORY[0x29C271B60](a1 + 2, (*a2 / 86400000));
        goto LABEL_4;
      case 'n':
        LOBYTE(v66.__locale_) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'q':
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, "ms", 2);
        goto LABEL_4;
      case 't':
        LOBYTE(v66.__locale_) = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1 + 2, &v66, 1);
        goto LABEL_4;
      case 'z':
        std::__formatter::__format_zone_offset[abi:ne200100]<char>(a1, v49, 0);
        goto LABEL_4;
      default:
LABEL_3:
        v12 = *(v11 + *(a1[2] - 24));
        v13 = *(*a1 - 24);
        std::time_put<char,std::ostreambuf_iterator<char>>::put();
        goto LABEL_4;
    }
  }

LABEL_94:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v46);
  }

  v45 = *MEMORY[0x29EDCA608];
}

void sub_29759DD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (STACK[0x210] != v19)
  {
    operator delete(STACK[0x210]);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void std::__formatter::__format_sub_seconds[abi:ne200100]<char,long long,std::ratio<1l,1000l>>(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1 + 2;
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v11, MEMORY[0x29EDC93F8]);
  LOBYTE(v10[0]) = (v4->__vftable[1].~facet)(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v10, 1);
  std::locale::~locale(&v11);
  v5 = *(v3 + *(*v3 - 24) + 40);
  v6 = *a2 % 1000;
  v7 = v6 + 1000;
  if (!v6)
  {
    v7 = 0;
  }

  if (*a2 >= 0)
  {
    v8 = *a2 % 1000;
  }

  else
  {
    v8 = v7;
  }

  v11.__locale_ = v8;
  v12 = 0;
  v14 = 0;
  v15 = 196;
  v13 = 3;
  v10[0] = 2;
  v10[1] = &v11;
  v10[2] = 196;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v5, "{:0{}}", 6, v10);
  v9 = *MEMORY[0x29EDCA608];
}

void std::__formatter::__format_year[abi:ne200100]<char>(uint64_t a1, unsigned int a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v3 = a2;
    LOBYTE(v18) = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v18, 1);
    a2 = -v3;
  }

  v17[1] = 0;
  v17[2] = 3;
  v17[0] = a2;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[14] = v4;
  v22[15] = v4;
  v22[13] = v4;
  v22[12] = v4;
  v22[11] = v4;
  v22[10] = v4;
  v22[9] = v4;
  v22[8] = v4;
  v22[7] = v4;
  v22[6] = v4;
  v22[5] = v4;
  v22[4] = v4;
  v22[3] = v4;
  v22[2] = v4;
  v22[1] = v4;
  v22[0] = v4;
  v18 = v22;
  *__len = xmmword_29769E5C0;
  v20 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v21 = 0;
  __p = v22;
  v16[0] = 1;
  v16[1] = v17;
  v16[2] = 3;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v18, "{:04}", 5, v16);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (__len[1] | 7) + 1;
    }

    v7 = operator new(v12);
    v14 = v5;
    v15 = v12 | 0x8000000000000000;
    v13 = v7;
  }

  else
  {
    HIBYTE(v15) = __len[1];
    v7 = &v13;
    if (!__len[1])
    {
      LOBYTE(v13) = 0;
      v8 = __p;
      if (__p == v22)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  memmove(v7, v6, v5);
  *(v7 + v5) = 0;
  v8 = __p;
  if (__p != v22)
  {
LABEL_7:
    operator delete(v8);
  }

LABEL_8:
  if (v15 >= 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13;
  }

  if (v15 >= 0)
  {
    v10 = HIBYTE(v15);
  }

  else
  {
    v10 = v14;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), v9, v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v13);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_29759E19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__formatter::__format_zone_offset[abi:ne200100]<char>(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v14 = *MEMORY[0x29EDCA608];
  v5 = (a1 + 16);
  if ((a2 & 0x8000000000000000) != 0)
  {
    LOBYTE(v11) = 45;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v11, 1);
    v4 = -v4;
  }

  else
  {
    LOBYTE(v11) = 43;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 16), &v11, 1);
  }

  v6 = *(v5 + *(*v5 - 24) + 40);
  v12 = 0;
  v13 = 4;
  v10 = 4;
  v11 = v4 / 0xE10;
  v8 = 1;
  v9 = &v11;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, "{:02}", 5, &v8);
  if (a3)
  {
    LOBYTE(v11) = 58;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, &v11, 1);
  }

  v12 = 0;
  v13 = 4;
  v10 = 4;
  v11 = (v4 % 0xE10) / 60;
  v8 = 1;
  v9 = &v11;
  std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, "{:02}", 5, &v8);
  v7 = *MEMORY[0x29EDCA608];
}

void std::__vformat_to[abi:ne200100]<std::ostreambuf_iterator<char>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v30 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[14] = v4;
  v27[15] = v4;
  v27[13] = v4;
  v27[12] = v4;
  v27[11] = v4;
  v27[10] = v4;
  v27[9] = v4;
  v27[8] = v4;
  v27[7] = v4;
  v27[6] = v4;
  v27[5] = v4;
  v27[4] = v4;
  v27[3] = v4;
  v27[2] = v4;
  v27[1] = v4;
  v27[0] = v4;
  v24 = xmmword_29769E5C0;
  v25 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v26 = 0;
  __p = v27;
  v29 = a1;
  v5 = *a4;
  v19[0] = a2;
  v19[1] = &a2[a3];
  v20 = 0;
  v21 = 0;
  v22 = v5;
  v23 = v27;
  v15 = *a4;
  v16 = a4[2];
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v14 = &v23;
  LOBYTE(v17.__locale_) = 0;
  v18 = 0;
  std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v14);
  if (v18 == 1)
  {
    std::locale::~locale(&v17);
  }

  v6 = __p;
  v7 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v8 = v29;
    do
    {
      if (v8)
      {
        v9 = *v6;
        v10 = v8[6];
        if (v10 == v8[7])
        {
          if ((*(*v8 + 104))(v8, v9) == -1)
          {
            v8 = 0;
          }
        }

        else
        {
          v8[6] = v10 + 1;
          *v10 = v9;
        }
      }

      ++v6;
      --v7;
    }

    while (v7);
    v6 = __p;
  }

  if (v6 != v27)
  {
    operator delete(v6);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_29759E520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
{
  if (a17 == 1)
  {
    std::locale::~locale(v60 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  if (__p != v61)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  if (a2 == a3)
  {
    goto LABEL_74;
  }

  v61 = result;
  v7 = *a4;
  v8 = a5;
  for (i = a3; ; i = v11)
  {
    v10 = 0x8E38E38E38E38E39 * ((v8 - v7) >> 3);
    if ((0x8E38E38E38E38E39 * ((i - v6) >> 3)) < v10)
    {
      v10 = 0x8E38E38E38E38E39 * ((i - v6) >> 3);
    }

    v11 = i - 72 * v10;
    if (v10)
    {
      while (1)
      {
        v14 = *(i - 72);
        *(v8 - 56) = *(i - 56);
        *(v8 - 72) = v14;
        v16 = *(v8 - 40);
        v15 = *(v8 - 32);
        if (v15 == v16)
        {
          *(v8 - 8) = 0;
          v24 = 0;
        }

        else
        {
          v17 = *(v8 - 16);
          v18 = &v16[v17 >> 7];
          v19 = *v18;
          v20 = *v18 + 32 * (v17 & 0x7F);
          v21 = *(v16 + (((*(v8 - 8) + v17) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v8 - 8) + v17) & 0x7F);
          if (v20 != v21)
          {
            do
            {
              v22 = *(v20 + 8);
              if (v22)
              {
                *(v20 + 16) = v22;
                operator delete(v22);
                v19 = *v18;
              }

              v20 += 32;
              if (v20 - v19 == 4096)
              {
                v23 = v18[1];
                ++v18;
                v19 = v23;
                v20 = v23;
              }
            }

            while (v20 != v21);
            v16 = *(v8 - 40);
            v15 = *(v8 - 32);
          }

          *(v8 - 8) = 0;
          v24 = (v15 - v16) >> 3;
          if (v24 >= 3)
          {
            do
            {
              operator delete(*v16);
              v15 = *(v8 - 32);
              v16 = (*(v8 - 40) + 8);
              *(v8 - 40) = v16;
              v24 = (v15 - v16) >> 3;
            }

            while (v24 > 2);
          }
        }

        if (v24 == 1)
        {
          v25 = 64;
        }

        else
        {
          if (v24 != 2)
          {
            goto LABEL_28;
          }

          v25 = 128;
        }

        *(v8 - 16) = v25;
LABEL_28:
        v26 = *(v8 - 8);
        if (!v26)
        {
          while (v15 != v16)
          {
            operator delete(*(v15 - 8));
            v16 = *(v8 - 40);
            v15 = *(v8 - 32) - 8;
            *(v8 - 32) = v15;
          }

          *(v8 - 16) = 0;
          v29 = *(v8 - 48);
          v30 = v15 - v16;
          if (*(v8 - 24) - v29 <= (v15 - v16))
          {
            goto LABEL_53;
          }

LABEL_40:
          v31 = v15 - v16;
          if (v15 == v16)
          {
            v32 = 0;
            v33 = v30;
            goto LABEL_51;
          }

          if ((v30 & 0x8000000000000000) != 0)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v32 = operator new(v30);
          v33 = &v32[v30];
          if ((v31 - 8) < 0x18 || (v32 - v16) < 0x20)
          {
            v36 = v32;
            v37 = v16;
          }

          else
          {
            v34 = ((v31 - 8) >> 3) + 1;
            v35 = v34 & 0x3FFFFFFFFFFFFFFCLL;
            v36 = &v32[v35 * 8];
            v37 = &v16[v35];
            v38 = (v16 + 2);
            v39 = v32 + 16;
            v40 = v34 & 0x3FFFFFFFFFFFFFFCLL;
            do
            {
              v41 = *v38;
              *(v39 - 1) = *(v38 - 1);
              *v39 = v41;
              v38 += 2;
              v39 += 2;
              v40 -= 4;
            }

            while (v40);
            if (v34 == (v34 & 0x3FFFFFFFFFFFFFFCLL))
            {
LABEL_51:
              *(v8 - 48) = v32;
              *(v8 - 40) = v32;
              *(v8 - 32) = v33;
              *(v8 - 24) = &v32[v30];
              if (v29)
              {
                operator delete(v29);
              }

              goto LABEL_53;
            }
          }

          do
          {
            v42 = *v37++;
            *v36 = v42;
            v36 += 8;
          }

          while (v36 != v33);
          goto LABEL_51;
        }

        v27 = *(v8 - 16);
        if (v27 >= 0x80)
        {
          operator delete(*v16);
          v15 = *(v8 - 32);
          v16 = (*(v8 - 40) + 8);
          *(v8 - 40) = v16;
          v26 = *(v8 - 8);
          v27 = *(v8 - 16) - 128;
          *(v8 - 16) = v27;
        }

        v28 = 16 * (v15 - v16) - 1;
        if (v15 == v16)
        {
          v28 = 0;
        }

        if (v28 - (v27 + v26) >= 0x80)
        {
          operator delete(*(v15 - 8));
          v16 = *(v8 - 40);
          v15 = *(v8 - 32) - 8;
          *(v8 - 32) = v15;
        }

        v29 = *(v8 - 48);
        v30 = v15 - v16;
        if (*(v8 - 24) - v29 > (v15 - v16))
        {
          goto LABEL_40;
        }

LABEL_53:
        v44 = *(v8 - 40);
        v43 = *(v8 - 32);
        if (v43 == v44)
        {
          v45 = *(v8 - 40);
          v46 = *(v8 - 48);
          v47 = 0;
          if (*(v8 - 24) != v46)
          {
LABEL_57:
            if (v45 == v44)
            {
              v48 = 0;
              v49 = v47;
              goto LABEL_68;
            }

            if ((v47 & 0x8000000000000000) != 0)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v48 = operator new(v47);
            v49 = &v48[v47];
            if (v47 - 8 < 0x18)
            {
              v50 = v48;
            }

            else
            {
              v50 = v48;
              if ((v48 - v44) >= 0x20)
              {
                v51 = ((v47 - 8) >> 3) + 1;
                v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
                v50 = &v48[v52];
                v53 = &v44[v52];
                v54 = (v44 + 16);
                v55 = v48 + 16;
                v56 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v57 = *v54;
                  *(v55 - 1) = *(v54 - 1);
                  *v55 = v57;
                  v54 += 2;
                  v55 += 2;
                  v56 -= 4;
                }

                while (v56);
                v44 = v53;
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_68:
                  *(v8 - 48) = v48;
                  *(v8 - 40) = v48;
                  *(v8 - 32) = v49;
                  *(v8 - 24) = &v48[v47];
                  if (v46)
                  {
                    operator delete(v46);
                  }

                  goto LABEL_10;
                }
              }
            }

            do
            {
              v58 = *v44;
              v44 += 8;
              *v50 = v58;
              v50 += 8;
            }

            while (v50 != v49);
            goto LABEL_68;
          }
        }

        else
        {
          v45 = &v43[(v44 - v43 + 7) & 0xFFFFFFFFFFFFFFF8];
          *(v8 - 32) = v45;
          v46 = *(v8 - 48);
          v47 = v45 - v44;
          if (*(v8 - 24) - v46 > (v45 - v44))
          {
            goto LABEL_57;
          }
        }

LABEL_10:
        v13 = (i - 48);
        *(v8 - 48) = *(i - 48);
        *(v8 - 32) = *(i - 32);
        *v13 = 0u;
        v13[1] = 0u;
        *(v8 - 16) = *(i - 16);
        *(v8 - 8) = *(i - 8);
        *(i - 16) = 0;
        *(i - 8) = 0;
        a5 = v8 - 72;
        v8 -= 72;
        i -= 72;
        if (i == v11)
        {
          goto LABEL_7;
        }
      }
    }

    a5 = v8;
LABEL_7:
    if (v11 == v6)
    {
      break;
    }

    v12 = *--v5;
    v7 = v12;
    v8 = v12 + 4032;
  }

  if (*v5 + 4032 == a5)
  {
    v59 = v5[1];
    ++v5;
    a5 = v59;
  }

  v6 = a3;
  result = v61;
LABEL_74:
  *result = v6;
  result[1] = v5;
  result[2] = a5;
  return result;
}

void std::__split_buffer<lcdm::SubTLV *>::shrink_to_fit(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 - v3;
  if (*(a1 + 24) - *a1 <= (v1 - v3))
  {
    return;
  }

  v6 = v1 - v3;
  if (v1 == v3)
  {
    v7 = 0;
    v8 = (v1 - v3);
    goto LABEL_13;
  }

  if (v4 < 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = operator new(v1 - v3);
  v8 = &v7[v4];
  if ((v6 - 8) < 0x18)
  {
    v9 = v7;
    do
    {
LABEL_12:
      v17 = *v3;
      v3 += 8;
      *v9 = v17;
      v9 += 8;
    }

    while (v9 != v8);
    goto LABEL_13;
  }

  v9 = v7;
  if ((v7 - v3) < 0x20)
  {
    goto LABEL_12;
  }

  v10 = ((v6 - 8) >> 3) + 1;
  v11 = 8 * (v10 & 0x3FFFFFFFFFFFFFFCLL);
  v9 = &v7[v11];
  v12 = &v3[v11];
  v13 = (v3 + 16);
  v14 = v7 + 16;
  v15 = v10 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = *v13;
    *(v14 - 1) = *(v13 - 1);
    *v14 = v16;
    v13 += 2;
    v14 += 2;
    v15 -= 4;
  }

  while (v15);
  v3 = v12;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_13:
  *a1 = v7;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = &v7[v4];
  if (v2)
  {

    operator delete(v2);
  }
}

__int128 **std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<lcdm::CrashEntry *,std::__deque_iterator<lcdm::CrashEntry,lcdm::CrashEntry *,lcdm::CrashEntry&,lcdm::CrashEntry **,long,56l>,0>(__int128 **result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_76;
  }

  v59 = result;
  v9 = *a4;
  while (1)
  {
    v11 = 0x8E38E38E38E38E39 * ((v9 - a5 + 4032) >> 3);
    if ((0x8E38E38E38E38E39 * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0x8E38E38E38E38E39 * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_3:
    v10 = *(v6 + 1);
    v6 = (v6 + 8);
    v9 = v10;
    a5 = v10;
  }

  v12 = (v7 + 72 * v11);
  do
  {
    v13 = *v7;
    *(a5 + 16) = *(v7 + 16);
    *a5 = v13;
    v15 = *(a5 + 32);
    v14 = *(a5 + 40);
    if (v14 == v15)
    {
      *(a5 + 64) = 0;
      v23 = 0;
    }

    else
    {
      v16 = *(a5 + 56);
      v17 = &v15[v16 >> 7];
      v18 = *v17;
      v19 = *v17 + 32 * (v16 & 0x7F);
      v20 = *(v15 + (((*(a5 + 64) + v16) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a5 + 64) + v16) & 0x7F);
      if (v19 != v20)
      {
        do
        {
          v21 = *(v19 + 8);
          if (v21)
          {
            *(v19 + 16) = v21;
            operator delete(v21);
            v18 = *v17;
          }

          v19 += 32;
          if (v19 - v18 == 4096)
          {
            v22 = v17[1];
            ++v17;
            v18 = v22;
            v19 = v22;
          }
        }

        while (v19 != v20);
        v15 = *(a5 + 32);
        v14 = *(a5 + 40);
      }

      *(a5 + 64) = 0;
      v23 = (v14 - v15) >> 3;
      if (v23 >= 3)
      {
        do
        {
          operator delete(*v15);
          v14 = *(a5 + 40);
          v15 = (*(a5 + 32) + 8);
          *(a5 + 32) = v15;
          v23 = (v14 - v15) >> 3;
        }

        while (v23 > 2);
      }
    }

    if (v23 == 1)
    {
      v24 = 64;
    }

    else
    {
      if (v23 != 2)
      {
        goto LABEL_27;
      }

      v24 = 128;
    }

    *(a5 + 56) = v24;
LABEL_27:
    v25 = *(a5 + 64);
    if (!v25)
    {
      while (v14 != v15)
      {
        operator delete(*(v14 - 8));
        v15 = *(a5 + 32);
        v14 = *(a5 + 40) - 8;
        *(a5 + 40) = v14;
      }

      *(a5 + 56) = 0;
      v28 = *(a5 + 24);
      v29 = v14 - v15;
      if (*(a5 + 48) - v28 <= (v14 - v15))
      {
        goto LABEL_52;
      }

LABEL_39:
      v30 = v14 - v15;
      if (v14 == v15)
      {
        v31 = 0;
        v32 = v29;
        goto LABEL_50;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v31 = operator new(v29);
      v32 = &v31[v29];
      if ((v30 - 8) < 0x18 || (v31 - v15) < 0x20)
      {
        v35 = v31;
        v36 = v15;
      }

      else
      {
        v33 = ((v30 - 8) >> 3) + 1;
        v34 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        v35 = &v31[v34 * 8];
        v36 = &v15[v34];
        v37 = (v15 + 2);
        v38 = v31 + 16;
        v39 = v33 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v40 = *v37;
          *(v38 - 1) = *(v37 - 1);
          *v38 = v40;
          v37 += 2;
          v38 += 2;
          v39 -= 4;
        }

        while (v39);
        if (v33 == (v33 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_50:
          *(a5 + 24) = v31;
          *(a5 + 32) = v31;
          *(a5 + 40) = v32;
          *(a5 + 48) = &v31[v29];
          if (v28)
          {
            operator delete(v28);
          }

          goto LABEL_52;
        }
      }

      do
      {
        v41 = *v36++;
        *v35 = v41;
        v35 += 8;
      }

      while (v35 != v32);
      goto LABEL_50;
    }

    v26 = *(a5 + 56);
    if (v26 >= 0x80)
    {
      operator delete(*v15);
      v14 = *(a5 + 40);
      v15 = (*(a5 + 32) + 8);
      *(a5 + 32) = v15;
      v25 = *(a5 + 64);
      v26 = *(a5 + 56) - 128;
      *(a5 + 56) = v26;
    }

    v27 = 16 * (v14 - v15) - 1;
    if (v14 == v15)
    {
      v27 = 0;
    }

    if (v27 - (v26 + v25) >= 0x80)
    {
      operator delete(*(v14 - 8));
      v15 = *(a5 + 32);
      v14 = *(a5 + 40) - 8;
      *(a5 + 40) = v14;
    }

    v28 = *(a5 + 24);
    v29 = v14 - v15;
    if (*(a5 + 48) - v28 > (v14 - v15))
    {
      goto LABEL_39;
    }

LABEL_52:
    v43 = *(a5 + 32);
    v42 = *(a5 + 40);
    if (v42 == v43)
    {
      v44 = *(a5 + 32);
      v45 = *(a5 + 24);
      v46 = 0;
      if (*(a5 + 48) == v45)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v44 = &v42[(v43 - v42 + 7) & 0xFFFFFFFFFFFFFFF8];
      *(a5 + 40) = v44;
      v45 = *(a5 + 24);
      v46 = v44 - v43;
      if (*(a5 + 48) - v45 <= (v44 - v43))
      {
        goto LABEL_9;
      }
    }

    if (v44 == v43)
    {
      v47 = 0;
      v48 = v46;
      goto LABEL_67;
    }

    if ((v46 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v47 = operator new(v46);
    v48 = &v47[v46];
    if (v46 - 8 < 0x18)
    {
      v49 = v47;
      do
      {
LABEL_66:
        v57 = *v43;
        v43 += 8;
        *v49 = v57;
        v49 += 8;
      }

      while (v49 != v48);
      goto LABEL_67;
    }

    v49 = v47;
    if ((v47 - v43) < 0x20)
    {
      goto LABEL_66;
    }

    v50 = ((v46 - 8) >> 3) + 1;
    v51 = 8 * (v50 & 0x3FFFFFFFFFFFFFFCLL);
    v49 = &v47[v51];
    v52 = &v43[v51];
    v53 = (v43 + 16);
    v54 = v47 + 16;
    v55 = v50 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v56 = *v53;
      *(v54 - 1) = *(v53 - 1);
      *v54 = v56;
      v53 += 2;
      v54 += 2;
      v55 -= 4;
    }

    while (v55);
    v43 = v52;
    if (v50 != (v50 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_66;
    }

LABEL_67:
    *(a5 + 24) = v47;
    *(a5 + 32) = v47;
    *(a5 + 40) = v48;
    *(a5 + 48) = &v47[v46];
    if (v45)
    {
      operator delete(v45);
    }

LABEL_9:
    *(a5 + 24) = *(v7 + 24);
    *(a5 + 40) = *(v7 + 40);
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(a5 + 56) = *(v7 + 7);
    *(a5 + 64) = *(v7 + 8);
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v7 = (v7 + 72);
    a5 += 72;
  }

  while (v7 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_3;
  }

  if (*v6 + 4032 == a5)
  {
    v58 = *(v6 + 1);
    v6 = (v6 + 8);
    a5 = v58;
  }

  result = v59;
LABEL_76:
  *result = v12;
  result[1] = v6;
  result[2] = a5;
  return result;
}

void *Stats::Stats(void *a1, char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    v2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", v2);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(a1 + 1, v2, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v5);
  *a1 = &unk_2A1E49358;
  return a1;
}

void *ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t qos_class)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v6 = dispatch_queue_create(a2, v5);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    a1[3] = 0;
    dispatch_release(v7);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 4, v9);
  MEMORY[0x29C270D60](v9);
  return a1;
}

void Stats::~Stats(Stats *this)
{
  MEMORY[0x29C270D60](this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t Stats::create@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  if (a1)
  {
    v6 = GetOsLogContext()[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 136315906;
      *&v7[4] = "ABM ASSERT";
      *&v7[12] = 2080;
      *&v7[14] = "statsType != statsType";
      v8 = 2080;
      v9 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Stats/Stats.cpp";
      v10 = 1024;
      v11 = 33;
      _os_log_fault_impl(&dword_297476000, v6, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", v7, 0x26u);
    }

    __break(1u);
  }

  BootStats::createInternal(v7);
  v3 = *v7;
  *a2 = *v7;
  result = v3.n128_u64[0];
  if (v3.n128_u64[0])
  {
    result = (*(*v3.n128_u64[0] + 16))(v3.n128_u64[0], 0, v3);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

atomic_ullong *ABMServer::create_default_global@<X0>(atomic_ullong **a1@<X8>)
{
  v3 = operator new(0x10uLL);
  *v3 = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v4);
  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(v3, v4);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2A1E497B0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void sub_29759F448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ABMServer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29759F45C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void ABMServer::ABMServer(ABMServer *this)
{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

atomic_ullong *ABMServerInternal::create@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v3);

  return std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(a1, v3);
}

void ABMServer::init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    v4 = a3;
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    a3 = v4;
  }

  else
  {
    __p = *a2;
  }

  ABMServerInternal::init(v3, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29759F644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 8;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_5;
  v6[4] = a1;
  v6[5] = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = v4;
  block[5] = &v8;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  dispatch_sync(v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

uint64_t ABMServerInternal::start(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to start server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E49488;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_67_0;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::stop(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to stop server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E494C0;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_67_0;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::shutdown(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to shutdown server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v6 = dispatch_group_create();
  a2 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  dispatch_retain(v6);
  dispatch_group_enter(a2);
  v5 = a2;
LABEL_8:
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke;
  v11[3] = &unk_2A1E494F8;
  v11[4] = &v13;
  v11[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v17 = v11;
  *buf = MEMORY[0x29EDCA5F8];
  v19 = 0x40000000;
  v20 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v21 = &__block_descriptor_tmp_67_0;
  v22 = this + 8;
  v23 = &v17;
  v7 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_sync(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  dispatch_group_leave(v9);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_16:
  _Block_object_dispose(&v13, 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v8;
}

void ABMServer::broadcast(uint64_t *a1, uint64_t a2, const void **a3, const void **a4)
{
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v7 = *a3;
    v10 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *a2;
  v7 = *a3;
  v10 = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  if (*a4)
  {
    v8 = _Block_copy(*a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  ABMServerInternal::broadcast(v6, &v11, &v10, &v9);
  if (v8)
  {
    _Block_release(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_29759FE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    _Block_release(v16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::broadcast(uint64_t a1, uint64_t a2, const void **a3, void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal9broadcastENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_29_1;
  v9[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ABMServerInternal::ABMServerInternal(ABMServerInternal *this)
{
  *this = &unk_2A1E49420;
  v12 = 11;
  strcpy(__p, "server.main");
  object = 0;
  v10 = xpc_null_create();
  ctu::XpcServer::XpcServer();
  xpc_release(v10);
  v10 = 0;
  *this = &unk_2A1E49420;
  ctu::OsLogContext::OsLogContext(__p, "com.apple.telephony.abm", "server.main");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 72, &object);
  MEMORY[0x29C270D60](&object);
  ctu::OsLogContext::~OsLogContext(__p);
  *this = &unk_2A1E49420;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = this + 88;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 3;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v2 = operator new(0x38uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E49850;
  Registry::Registry(&v2[1]);
  *(this + 20) = v4;
  *(this + 21) = v2;
  shared_owners = v2[1].__shared_owners_;
  if (!shared_owners)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (shared_owners->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_7:
  _ZNSt3__115allocate_sharedB8ne200100I16ABMServerFactoryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(__p);
  v7 = __p[0];
  v6 = __p[1];
  *(this + 22) = __p[0];
  *(this + 23) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1E4AFC8;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8[3] = v7;
    v8[4] = v6;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v8[3] = v7;
    v8[4] = 0;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
  }

  *(this + 13) = 0u;
  *(this + 14) = 0u;
}

void sub_2975A02AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v2 + 176));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v2 + 160));
  if (*v6)
  {
    dispatch_group_leave(*v6);
    if (*v6)
    {
      dispatch_release(*v6);
    }
  }

  if (v2[127] < 0)
  {
    operator delete(*v5);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*v4);
  MEMORY[0x29C270D60](v3);
  ctu::XpcServer::~XpcServer(v2);
  _Unwind_Resume(a1);
}

void sub_2975A0364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a13);
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2975A0358);
}

void ABMServerInternal::~ABMServerInternal(void **this)
{
  *this = &unk_2A1E49420;
  ABMServerInternal::finishShutdown_sync(this);
  v2 = this[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[27];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[25];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[23];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this[21];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = this[17];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = this[17];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(this[11]);
  MEMORY[0x29C270D60](this + 9);

  ctu::XpcServer::~XpcServer(this);
}

{
  ABMServerInternal::~ABMServerInternal(this);

  operator delete(v1);
}

void ABMServerInternal::finishShutdown_sync(ABMServerInternal *this)
{
  v2 = (this + 88);
  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*(this + 11));
  *(this + 10) = v2;
  *(this + 12) = 0;
  *v2 = 0;
  group = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownGlobalServices(*(this + 28), &group);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  Listener_sync = ctu::XpcServer::getListener_sync(this);
  xpc_connection_cancel(*Listener_sync);
  object = xpc_null_create();
  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ABMServerInternal::changeState_sync(this, 5);
  (*(**(this + 26) + 40))(*(this + 26), 5);
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM shutdown completed ---------", v5, 2u);
  }

  ABMServerInternal::stopRunLoop_sync(this);
  if (group)
  {
    dispatch_release(group);
  }
}

void sub_2975A06F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, dispatch_object_t a12)
{
  xpc_release(object);
  if (a12)
  {
    dispatch_release(a12);
  }

  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to init server", buf, 2u);
  }

  v4 = *(v2 + 192);
  v5 = *(a1 + 40);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v41 = v7;
  v42 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ABMServerRegistryBuilder::setupQMIServer(v4, (v2 + 160), &v41);
  v8 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  ABMServerRegistryBuilder::setupAdaptiveTimerService(*(v2 + 192), (v2 + 160));
  v10 = capabilities::radio::vendor(v9);
  if (v10 == 2)
  {
    _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(buf);
  }

  else
  {
    if (v10 != 3)
    {
      goto LABEL_18;
    }

    _ZNSt3__115allocate_sharedB8ne200100I17BootControllerINTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(buf);
  }

  v11 = *buf;
  memset(buf, 0, 16);
  v12 = *(v2 + 216);
  *(v2 + 208) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = buf[1];
  if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_18:
  ABMServerInternal::startRunLoop_sync(v2);
  object = xpc_connection_create_mach_service(kABMDefaultServiceName[0], 0, 1uLL);
  if (!object)
  {
    object = xpc_null_create();
  }

  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ctu::XpcServer::startListener_sync(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kAppleBasebandManagerDaemonReady", 0, 0, 1u);
  v15 = (a1 + 48);
  v16 = (v2 + 104);
  if (v2 + 104 != a1 + 48)
  {
    v17 = *(a1 + 71);
    if (*(v2 + 127) < 0)
    {
      if (v17 >= 0)
      {
        v19 = (a1 + 48);
      }

      else
      {
        v19 = *(a1 + 48);
      }

      if (v17 >= 0)
      {
        v20 = *(a1 + 71);
      }

      else
      {
        v20 = *(a1 + 56);
      }

      std::string::__assign_no_alias<false>(v16, v19, v20);
    }

    else if ((*(a1 + 71) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v16, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v18 = *&v15->isa;
      *(v2 + 120) = *(a1 + 64);
      *v16 = v18;
    }
  }

  v21 = *(v2 + 72);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 71) < 0)
    {
      v15 = v15->isa;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v15;
    _os_log_impl(&dword_297476000, v21, OS_LOG_TYPE_DEFAULT, "#I host: %s", buf, 0xCu);
  }

  ABMServerInternal::changeState_sync(v2, 3u);
  v23 = *(v2 + 168);
  v22 = *(v2 + 176);
  aBlock[5] = *(v2 + 160);
  v39 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v22)(buf);
  v24 = *buf;
  memset(buf, 0, 16);
  v25 = *(v2 + 232);
  *(v2 + 224) = v24;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = buf[1];
  if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  v27 = *(v2 + 224);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_11;
  aBlock[4] = v2;
  v28 = _Block_copy(aBlock);
  v29 = v28;
  if (!v28)
  {
    v31 = *(v27 + 128);
    *(v27 + 128) = 0;
    if (!v31)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v30 = _Block_copy(v28);
  v31 = *(v27 + 128);
  *(v27 + 128) = v30;
  if (v31)
  {
LABEL_51:
    _Block_release(v31);
  }

LABEL_52:
  if (v29)
  {
    _Block_release(v29);
  }

  (*(**(v2 + 224) + 16))(*(v2 + 224));
  buf[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapGlobalServices(*(v2 + 224), buf);
  dispatch_group_wait(buf[0], 0xFFFFFFFFFFFFFFFFLL);
  v37 = 6;
  v32 = (*(**(v2 + 208) + 48))(*(v2 + 208), &v37);
  if (v37 > 2)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if ((v33 & 1) == 0)
  {
    v34 = *(v2 + 72);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36[0] = 0;
      _os_log_impl(&dword_297476000, v34, OS_LOG_TYPE_DEFAULT, "#I Previous shutdown was not clean", v36, 2u);
    }

    (*(**(v2 + 208) + 32))(*(v2 + 208));
    (*(**(v2 + 208) + 40))(*(v2 + 208), 3);
  }

  if (buf[0])
  {
    dispatch_release(buf[0]);
  }

  v35 = *MEMORY[0x29EDCA608];
}

void sub_2975A0D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::startRunLoop_sync(ABMServerInternal *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__sig) = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Starting ABM RunLoop", &buf, 2u);
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_15_3;
  v6[4] = this;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf.__opaque[24] = v4;
  *&buf.__opaque[40] = v4;
  *&buf.__sig = v4;
  *&buf.__opaque[8] = v4;
  pthread_attr_init(&buf);
  pthread_attr_set_qos_class_np(&buf, QOS_CLASS_USER_INITIATED, 0);
  pthread_create(this + 19, &buf, sServerRunLoopMain, v6);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (object)
  {
    dispatch_release(object);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_2975A0F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void ABMServerInternal::changeState_sync(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = to_string(*(a1 + 128));
    *buf = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = to_string(a2);
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I State change: %s -> %s", buf, 0x16u);
  }

  *(a1 + 128) = a2;
  v6 = *(a1 + 136);
  if (v6)
  {
    v8 = *(a1 + 136);
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    ABMServerInternal::checkShutdown_sync(a1, &v8);
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_2975A1060(_Unwind_Exception *a1)
{
  dispatch_group_leave(v1);
  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v6 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    aBlock[0] = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  aBlock[0] = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock[1] = v8;
  v9 = v6[2];
  if (!v9 || (v10 = v6[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  *v13 = v6;
  v14 = (v13 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *(v13 + 2) = *aBlock;
  aBlock[0] = 0;
  aBlock[1] = 0;
  v15 = v6[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v13;
  v16[1] = v10;
  v16[2] = v12;
  dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableINS1_9XpcServerEE15execute_wrappedIZZZN17ABMServerInternal4initENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISJ_NS7_14default_deleteISJ_EEEEENUlPvE_8__invokeESS_);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v17 = aBlock[1];
    if (!aBlock[1])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = aBlock[1];
  if (aBlock[1])
  {
LABEL_17:
    _Block_release(v17);
  }

LABEL_18:
  if (aBlock[0])
  {
    CFRelease(aBlock[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 128);
  if (v2 > 5)
  {
    return;
  }

  if (((1 << v2) & 0x35) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  ABMServerInternal::changeState_sync(*(a1 + 40), 0);
  v4 = *MEMORY[0x29EDBEA58];
  v5 = strlen(*MEMORY[0x29EDBEA58]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v7 = operator new(v8);
    __dst[1] = v6;
    v13 = v8 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v13) = v5;
    v7 = __dst;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  memmove(v7, v4, v6);
LABEL_16:
  *(v6 + v7) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  v9 = a1;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
    v9 = a1;
  }

  *(*(*(v9 + 32) + 8) + 24) = 1;
  v10 = *(v9 + 48);
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  ABMServerInternal::start_sync(v1, &v11);
  if (v10)
  {
    dispatch_group_leave(v10);

    dispatch_release(v10);
  }
}

void sub_2975A1450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::broadcastServerState_sync(void *a1, uint64_t a2)
{
  cf = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = Mutable;
    std::string::__init_copy_ctor_external(&v23, v7, v8);
    Mutable = v9;
  }

  else
  {
    v23 = *a2;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *MEMORY[0x29EDBE658], &v23, v4, v6);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x29EDBED30];
  v11 = strlen(*MEMORY[0x29EDBED30]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v13 = operator new(v15);
    __dst[1] = v12;
    v21 = v15 | 0x8000000000000000;
    __dst[0] = v13;
LABEL_17:
    memmove(v13, v10, v12);
    *(v12 + v13) = 0;
    v14 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v21) = v11;
  v13 = __dst;
  if (v11)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v14 = cf;
  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_18:
  v16 = CFGetTypeID(v14);
  if (v16 == CFDictionaryGetTypeID())
  {
    v19 = v14;
    CFRetain(v14);
    v17 = v14;
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  v19 = 0;
LABEL_21:
  v18 = 0;
  ABMServerInternal::broadcast_sync(a1, __dst, &v19, &v18);
  if (v17)
  {
    CFRelease(v17);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
    if (!v14)
    {
      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  CFRelease(v14);
}

void sub_2975A1678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

void ABMServerInternal::start_sync(uint64_t a1, NSObject **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    abm::asString();
    v5 = v19 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v21 = v5;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Starting ABM with profile: %s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**(a1 + 208) + 40))(*(a1 + 208), 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224));
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapDynamicServices(*(a1 + 224), __p);
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = __p[0];
  v11 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_16_2;
  block[4] = a1;
  block[5] = v7;
  v16 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *a2;
  group = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v10, v11, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v13 = v16;
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_18:
  if (__p[0])
  {
    dispatch_release(__p[0]);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2975A198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 48);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(v1 + 128);
  if (v2 <= 5)
  {
    v4 = 1;
    if (((1 << v2) & 0x15) != 0)
    {
      v4 = 0;
LABEL_21:
      *(*(a1[4] + 8) + 24) = v4;
      return;
    }

    if (((1 << v2) & 0x28) != 0)
    {
      goto LABEL_21;
    }

    ABMServerInternal::changeState_sync(a1[5], 2u);
    v5 = *MEMORY[0x29EDBEA60];
    v6 = strlen(*MEMORY[0x29EDBEA60]);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v6 | 7) + 1;
      }

      v8 = operator new(v9);
      __dst[1] = v7;
      v13 = v9 | 0x8000000000000000;
      __dst[0] = v8;
    }

    else
    {
      HIBYTE(v13) = v6;
      v8 = __dst;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    memmove(v8, v5, v7);
LABEL_14:
    *(v7 + v8) = 0;
    ABMServerInternal::broadcastServerState_sync(v1, __dst);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }

    v10 = a1[6];
    v11 = v10;
    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    ABMServerInternal::stop_sync(v1, &v11);
    if (v10)
    {
      dispatch_group_leave(v10);
      dispatch_release(v10);
    }

    v4 = 1;
    goto LABEL_21;
  }
}

void sub_2975A1BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::stop_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 2);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownDynamicServices(*(a1 + 224), &v15);
  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v15;
  v9 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_19_1;
  block[4] = a1;
  block[5] = v5;
  v13 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = *a2;
  group = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v8, v9, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_12:
  if (v15)
  {
    dispatch_release(v15);
  }
}

void sub_2975A1DE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  *(*(a1[4] + 8) + 24) = ABMServerInternal::checkShutdown_sync(v3, &v4);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_2975A1E90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ABMServerInternal::checkShutdown_sync(ABMServerInternal *this, dispatch_object_t *a2)
{
  v3 = *(this + 128);
  result = 1;
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      v5 = *a2;
      if (*a2)
      {
        dispatch_retain(*a2);
        dispatch_group_enter(v5);
      }

      v6 = *(this + 17);
      *(this + 17) = v5;
      if (!v6)
      {
        return 1;
      }

      dispatch_group_leave(v6);
      v7 = v6;
      goto LABEL_30;
    }

    ABMServerInternal::changeState_sync(this, 4);
    v10 = *MEMORY[0x29EDBEA60];
    v11 = strlen(*MEMORY[0x29EDBEA60]);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v11 | 7) + 1;
      }

      v13 = operator new(v14);
      __dst[1] = v12;
      v18 = v14 | 0x8000000000000000;
      __dst[0] = v13;
    }

    else
    {
      HIBYTE(v18) = v11;
      v13 = __dst;
      if (!v11)
      {
LABEL_24:
        *(v12 + v13) = 0;
        ABMServerInternal::broadcastServerState_sync(this, __dst);
        v15 = a2;
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__dst[0]);
          v15 = a2;
        }

        v8 = *v15;
        v16 = v8;
        if (v8)
        {
          dispatch_retain(v8);
          dispatch_group_enter(v8);
        }

        ABMServerInternal::shutdown_sync(this, &v16);
        if (!v8)
        {
          return 1;
        }

        goto LABEL_29;
      }
    }

    memmove(v13, v10, v12);
    goto LABEL_24;
  }

  switch(v3)
  {
    case 3:
      ABMServerInternal::finishShutdown_sync(this);
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (!v8)
      {
        return 1;
      }

      goto LABEL_29;
    case 4:
      return 0;
    case 5:
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (v8)
      {
LABEL_29:
        dispatch_group_leave(v8);
        v7 = v8;
LABEL_30:
        dispatch_release(v7);
        return 1;
      }

      break;
  }

  return result;
}

void sub_2975A20A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::shutdown_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 4);
  v4 = *a2;
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  ABMServerInternal::stop_sync(a1, &v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2975A2194(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

char *to_string(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    v3 = GetOsLogContext()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v7) = a1;
      _os_log_fault_impl(&dword_297476000, v3, OS_LOG_TYPE_FAULT, "Unknown server state %d", buf, 8u);
    }

    v4 = GetOsLogContext()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v7 = "ABM ASSERT";
      v8 = 2080;
      v9 = "false";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/ABMServer.cpp";
      v12 = 1024;
      v13 = 77;
      _os_log_fault_impl(&dword_297476000, v4, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  result = off_29EE6BE60[a1];
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  pthread_setname_np("ABM.Server.RunLoop");
  pthread_set_qos_class_self_np(QOS_CLASS_DEFAULT, 0);
  *(v2 + 144) = CFRunLoopGetCurrent();
  dispatch_group_leave(*(a1 + 40));
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I ABM RunLoop Started", v4, 2u);
  }
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t sServerRunLoopMain(void (**a1)(void))
{
  memset(&context, 0, sizeof(context));
  v2 = CFRunLoopSourceCreate(*MEMORY[0x29EDB8ED8], 0, &context);
  if (!v2)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18CB080 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
      v7 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create dummySource for ABM server runloop", v9, 2u);
    return 0;
  }

  v3 = v2;
  Current = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x29EDB8FC0];
  CFRunLoopAddSource(Current, v3, *MEMORY[0x29EDB8FC0]);
  a1[2](a1);
    ;
  }

  v6 = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(v6, v3, v5);
  CFRelease(v3);
  return 0;
}

void ABMServerInternal::stopRunLoop_sync(ABMServerInternal *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping ABM RunLoop", v6, 2u);
  }

  usleep(0x7A120u);
  CFRunLoopStop(*(this + 18));
  *(this + 18) = 0;
  v3 = pthread_join(*(this + 19), 0);
  *(this + 19) = 0;
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopped ABM RunLoop: %d", v6, 8u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ABMServerInternal::changeState_sync(v1, 1u);
  v2 = *MEMORY[0x29EDBE940];
  v3 = strlen(*MEMORY[0x29EDBE940]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v14 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_9:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
    isBootSessionChanged = sys::isBootSessionChanged(v9);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  else
  {
    isBootSessionChanged = sys::isBootSessionChanged(v7);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  if ((sys::updateBootSessionUUID(isBootSessionChanged) & 1) == 0)
  {
    v10 = *(v1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Failed to update session id", v12, 2u);
    }
  }

  return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
}

void sub_2975A27B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  if (*(v2 + 128) == 4)
  {
    ABMServerInternal::finishShutdown_sync(v2);
  }

  else
  {
    ABMServerInternal::changeState_sync(v2, 3);
    (*(**(v1 + 26) + 40))(*(v1 + 26), 3);
    v4 = *(v1 + 9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", &buf, 2u);
    }
  }

  *(&buf.__pn_.__r_.__value_.__s + 23) = 17;
  strcpy(&buf, "/tmp/abm.shutdown");
  if (remove(&buf, v3))
  {
    unlink(&buf);
  }

  v5 = *MEMORY[0x29EDBE948];
  v6 = strlen(*MEMORY[0x29EDBE948]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v20 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_15;
  }

  HIBYTE(v20) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_15:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  v10 = *MEMORY[0x29EDBE980];
  v11 = strlen(*MEMORY[0x29EDBE980]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_29;
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    __p[1] = v12;
    v18 = v14 | 0x8000000000000000;
    __p[0] = v13;
    goto LABEL_26;
  }

  HIBYTE(v18) = v11;
  v13 = __p;
  if (v11)
  {
LABEL_26:
    memmove(v13, v10, v12);
  }

  *(v12 + v13) = 0;
  v15 = 0;
  v16 = 0;
  ABMServerInternal::broadcast_sync(v1, __p, &v16, &v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2975A2B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::finishStop_sync(ABMServerInternal *this)
{
  ABMServerInternal::changeState_sync(this, 3u);
  (*(**(this + 26) + 40))(*(this + 26), 3);
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", v3, 2u);
  }
}

void ABMServerInternal::broadcast_sync(void *a1, uint64_t a2, ctu **a3, void **a4)
{
  v76 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v43 = v7;
  if (*a3)
  {
    ctu::cf_to_xpc(&v70, *a3, v8);
    xpc_dictionary_set_value(v7, kKeyEventData[0], v70);
    v9 = v70;
    v70 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v70);
    v70 = 0;
  }

  v10 = xpc_string_create(kCommandSignalNotification[0]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyCommand[0], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = a2;
  if (*(a2 + 23) < 0)
  {
    v12 = *a2;
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyEvent[0], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = dispatch_group_create();
  v16 = a1[2];
  if (!v16 || (v44 = a1[1], (v17 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
    v45 = v18;
    v19 = a1[10];
    v47 = a1;
    v20 = a1 + 11;
    if (v19 == v20)
    {
      goto LABEL_90;
    }

LABEL_23:
    while (1)
    {
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v69 = 0xAAAAAAAAAAAAAAAALL;
      v21 = v19[4];
      v67 = v21;
      if (v21)
      {
        break;
      }

      v21 = xpc_null_create();
      v67 = v21;
      v23 = v19[5];
      v22 = v19[6];
      v68 = v23;
      v69 = v22;
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v21)
      {
        xpc_retain(v21);
        v65 = v23;
        v66 = v22;
        if (!v22)
        {
          goto LABEL_29;
        }

LABEL_28:
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        goto LABEL_29;
      }

      v21 = xpc_null_create();
      v65 = v23;
      v66 = v22;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v64 = *a3;
      v24 = v64;
      if (v64)
      {
        CFRetain(v64);
        *buf = v24;
        CFRetain(v24);
      }

      else
      {
        *buf = 0;
      }

      isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v23, a2, buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!isNotificationRegistered)
      {
        goto LABEL_76;
      }

      SystemTime = TelephonyUtilGetSystemTime();
      v27 = v47[9];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a2;
        if (*(a2 + 23) < 0)
        {
          v28 = *a2;
          if (*(v23 + 23) < 0)
          {
            goto LABEL_46;
          }

LABEL_44:
          v29 = *v23;
          v63.__r_.__value_.__r.__words[2] = *(v23 + 16);
          *&v63.__r_.__value_.__l.__data_ = v29;
        }

        else
        {
          if ((*(v23 + 23) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_46:
          std::string::__init_copy_ctor_external(&v63, *v23, *(v23 + 8));
        }

        v30 = &v63;
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v63.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v28;
        v72 = 2080;
        v73 = v30;
        v74 = 2048;
        v75 = SystemTime;
        _os_log_impl(&dword_297476000, v27, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        v7 = v43;
      }

      if (*a4)
      {
        if (v15)
        {
          dispatch_retain(v15);
          dispatch_group_enter(v15);
        }

        v31 = v47[3];
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
        handler[3] = &__block_descriptor_tmp_31_2;
        handler[4] = v47;
        group = v15;
        if (v15)
        {
          dispatch_retain(v15);
          if (group)
          {
            dispatch_group_enter(group);
          }
        }

        v57 = v44;
        v58 = v45;
        atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v59 = v23;
        v60 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v62 = SystemTime;
        xpc_connection_send_message_with_reply(v21, v7, v31, handler);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v32 = v60;
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v32 = v60;
          if (!v60)
          {
LABEL_69:
            v33 = v58;
            if (v58)
            {
              goto LABEL_70;
            }

            goto LABEL_71;
          }
        }

        if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_69;
        }

        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v33 = v58;
        if (v58)
        {
LABEL_70:
          std::__shared_weak_count::__release_weak(v33);
        }

LABEL_71:
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (v15)
        {
          dispatch_group_leave(v15);
          dispatch_release(v15);
        }

        goto LABEL_76;
      }

      xpc_connection_send_message(v21, v7);
LABEL_76:
      v34 = v66;
      if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      xpc_release(v21);
      v35 = v69;
      if (v69 && !atomic_fetch_add((v69 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      xpc_release(v67);
      v36 = v19[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v19[2];
          v38 = *v37 == v19;
          v19 = v37;
        }

        while (!v38);
      }

      v19 = v37;
      if (v37 == v20)
      {
        goto LABEL_90;
      }
    }

    xpc_retain(v21);
    v23 = v19[5];
    v22 = v19[6];
    v68 = v23;
    v69 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_25:
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v45 = v17;
  v19 = a1[10];
  v47 = a1;
  v20 = a1 + 11;
  if (v19 != v20)
  {
    goto LABEL_23;
  }

LABEL_90:
  v39 = v47[28];
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v53 = v7;
  if (v7)
  {
    xpc_retain(v7);
    v40 = v53;
  }

  else
  {
    v40 = xpc_null_create();
    v53 = v40;
  }

  ServiceManager::handleBroadcastEvent(v39, &object, &v53);
  xpc_release(v40);
  v53 = 0;
  if (object)
  {
    dispatch_release(object);
  }

  if (*a4)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_32;
    block[3] = &__block_descriptor_tmp_33_1;
    block[4] = v47;
    block[5] = v44;
    v50 = v45;
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
    }

    else
    {
      v51 = *a2;
    }

    v41 = *a4;
    if (*a4)
    {
      v41 = _Block_copy(v41);
    }

    aBlock = v41;
    dispatch_group_notify(v15, v47[3], block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  std::__shared_weak_count::__release_weak(v45);
  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v7);
  v42 = *MEMORY[0x29EDCA608];
}