unint64_t *webrtc::ErleEstimator::Update(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, unint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t *a11)
{
  v11 = result[79] + 1;
  result[79] = v11;
  if (v11 >= *result)
  {
    v16 = result;
    v18 = result + 14;
    webrtc::SubbandErleEstimator::Update(result + 14, a5, a6, a7, a9, a10, a11);
    v21 = v16[78];
    if (v21)
    {
      v22 = v16[60];
      v23 = 0xFC0FC0FC0FC0FC1 * ((v16[61] - v22) >> 2);
      if (v16[61] == v22)
      {
        v22 = 0;
      }

      v24 = 46;
      if (*(v16 + 112))
      {
        v24 = 49;
      }

      v25 = &v18[v24];
      v26 = *v25;
      v27 = v25[1] - *v25;
      v28 = 0xFC0FC0FC0FC0FC1 * (v27 >> 2);
      if (v27)
      {
        v29 = v26;
      }

      else
      {
        v29 = 0;
      }

      if (a4)
      {
        v30 = a3;
      }

      else
      {
        v30 = 0;
      }

      webrtc::SignalDependentErleEstimator::Update(v21, a2, v30, a4, a5, a6, a7, v20, v19, a9, a10, v22, v23, v29, v28, a11);
    }

    return webrtc::FullBandErleEstimator::Update((v16 + 1), a5, 0x41uLL, a6, a7, a9, a10, a11);
  }

  return result;
}

void dcsctp::ErrorCausesToString(dcsctp *this@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, std::string *a6@<X8>)
{
  memset(&v162, 0, sizeof(v162));
  dcsctp::Parameters::descriptors(this, a2, a3, a4, a5, &v160);
  v9 = v160;
  if (v161 != v160)
  {
    v159 = a6;
    v10 = 0;
    v11 = 0;
    v158 = off_288291728;
    v157 = off_288296CA8;
    v151 = off_2882A18D8;
    v156 = off_288294C10;
    v155 = off_2882A18A8;
    v150 = off_2882A1908;
    v154 = off_288297390;
    v153 = off_28829FFD0;
    v152 = off_288294C40;
    while (1)
    {
      if (!v11)
      {
        goto LABEL_25;
      }

      size = HIBYTE(v162.__r_.__value_.__r.__words[2]);
      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = 22;
      }

      else
      {
        v14 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v162.__r_.__value_.__l.__size_;
      }

      if (v14 == size)
      {
        std::string::__grow_by_and_replace(&v162, v14, 1uLL, v14, v14, 0, 1uLL, "\n");
        v15 = v160;
        if (0xAAAAAAAAAAAAAAABLL * ((v161 - v160) >> 3) <= v11)
        {
          goto LABEL_430;
        }

        goto LABEL_26;
      }

      if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v162;
      }

      else
      {
        v16 = v162.__r_.__value_.__r.__words[0];
      }

      if (v16 + size <= "\n" && &v16->__r_.__value_.__l.__data_ + size + 1 > "\n")
      {
        goto LABEL_430;
      }

      v16->__r_.__value_.__s.__data_[size] = 10;
      v18 = size + 1;
      if ((SHIBYTE(v162.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      v162.__r_.__value_.__l.__size_ = v18;
      v16->__r_.__value_.__s.__data_[v18] = 0;
      v15 = v160;
      if (0xAAAAAAAAAAAAAAABLL * ((v161 - v160) >> 3) <= v11)
      {
        goto LABEL_430;
      }

LABEL_26:
      v19 = &v15[v10];
      v20 = *&v15[v10];
      v21 = *(v19 + 2);
      if (v20 > 5)
      {
        if (v20 <= 7)
        {
          if (v20 == 6)
          {
            if (v21)
            {
              v44 = *(v19 + 1);
            }

            else
            {
              v44 = 0;
            }

            if (v21 >= 4 && __rev16(*v44) == 6)
            {
              v45 = __rev16(v44[1]);
              v46 = v45 >= 4 && v21 >= v45;
              if (v46 && v21 - v45 <= 3)
              {
                if (v45 >= 5)
                {
                  operator new();
                }

                __p[0] = &unk_2882A1890;
                __p[1] = 0;
                __len = 0;
                v165 = 0;
                v166 = 1;
                v155(__p);
              }
            }

            v166 = 0;
            v48 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = 22;
            }

            else
            {
              v49 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v50 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v50 = v162.__r_.__value_.__l.__size_;
            }

            if (v49 - v50 >= 0x24)
            {
              v94 = v162.__r_.__value_.__r.__words[0];
              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v94 = &v162;
              }

              v95 = v94 + v50;
              if (v94 + v50 <= "Failed to parse error cause of type " && v95 + 36 > "Failed to parse error cause of type ")
              {
LABEL_430:
                __break(1u);
                goto LABEL_431;
              }

              qmemcpy(v95, "Failed to parse error cause of type ", 36);
              v96 = v50 + 36;
              if (v48 < 0)
              {
                v162.__r_.__value_.__l.__size_ = v50 + 36;
              }

              else
              {
                *(&v162.__r_.__value_.__s + 23) = v96 & 0x7F;
              }

              v94->__r_.__value_.__s.__data_[v96] = 0;
            }

            else
            {
              std::string::__grow_by_and_replace(&v162, v49, v50 - v49 + 36, v50, v50, 0, 0x24uLL, "Failed to parse error cause of type ");
            }

            webrtc::StringBuilder::operator<<(&v162, 6, v8);
            if (v166 != 1)
            {
              goto LABEL_6;
            }

            __p[0] = &unk_2882A1890;
            v128 = __p[1];
            if (!__p[1])
            {
              goto LABEL_6;
            }

            goto LABEL_410;
          }

          v35 = *(v19 + 1);
          if (!v21)
          {
            v35 = 0;
          }

          if (v21 >= 4 && __rev16(*v35) == 7 && v21 == 4 && __rev16(v35[1]) == 4)
          {
            __src.__r_.__value_.__r.__words[0] = &unk_288294BF8;
            __src.__r_.__value_.__s.__data_[8] = 1;
            v156(&__src);
          }

          v73 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = 22;
          }

          else
          {
            v74 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v75 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v75 = v162.__r_.__value_.__l.__size_;
          }

          if (v74 - v75 < 0x24)
          {
            std::string::__grow_by_and_replace(&v162, v74, v75 - v74 + 36, v75, v75, 0, 0x24uLL, "Failed to parse error cause of type ");
          }

          else
          {
            v76 = v162.__r_.__value_.__r.__words[0];
            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v76 = &v162;
            }

            v77 = v76 + v75;
            if (v76 + v75 <= "Failed to parse error cause of type " && v77 + 36 > "Failed to parse error cause of type ")
            {
              goto LABEL_430;
            }

            qmemcpy(v77, "Failed to parse error cause of type ", 36);
            v78 = v75 + 36;
            if (v73 < 0)
            {
              v162.__r_.__value_.__l.__size_ = v75 + 36;
            }

            else
            {
              *(&v162.__r_.__value_.__s + 23) = v78 & 0x7F;
            }

            v76->__r_.__value_.__s.__data_[v78] = 0;
          }

          v12 = 7;
        }

        else
        {
          switch(v20)
          {
            case 8:
              v57 = *(v19 + 1);
              if (!v21)
              {
                v57 = 0;
              }

              if (v21 >= 4 && __rev16(*v57) == 8)
              {
                v58 = __rev16(v57[1]);
                v59 = v58 >= 4 && v21 >= v58;
                if (v59 && v21 - v58 <= 3)
                {
                  __src.__r_.__value_.__r.__words[0] = &unk_2882A18C0;
                  __src.__r_.__value_.__r.__words[2] = 0;
                  v168 = 0;
                  if (v58 <= 4)
                  {
                    v139 = 0;
                  }

                  else
                  {
                    v139 = v58 - 4;
                  }

                  __src.__r_.__value_.__l.__size_ = 0;
                  if (!v139)
                  {
                    __p[0] = &unk_2882A18C0;
                    __p[1] = 0;
                    __len = 0;
                    v165 = 0;
                    v166 = 1;
                    v151(__p);
                  }

                  if ((v139 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

LABEL_431:
                  std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
                }
              }

              LOBYTE(__p[0]) = 0;
              v166 = 0;
              v61 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v62 = 22;
              }

              else
              {
                v62 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v63 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v63 = v162.__r_.__value_.__l.__size_;
              }

              if (v62 - v63 >= 0x24)
              {
                v100 = v162.__r_.__value_.__r.__words[0];
                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v100 = &v162;
                }

                v101 = v100 + v63;
                if (v100 + v63 <= "Failed to parse error cause of type " && v101 + 36 > "Failed to parse error cause of type ")
                {
                  goto LABEL_430;
                }

                qmemcpy(v101, "Failed to parse error cause of type ", 36);
                v102 = v63 + 36;
                if (v61 < 0)
                {
                  v162.__r_.__value_.__l.__size_ = v63 + 36;
                }

                else
                {
                  *(&v162.__r_.__value_.__s + 23) = v102 & 0x7F;
                }

                v100->__r_.__value_.__s.__data_[v102] = 0;
              }

              else
              {
                std::string::__grow_by_and_replace(&v162, v62, v63 - v62 + 36, v63, v63, 0, 0x24uLL, "Failed to parse error cause of type ");
              }

              webrtc::StringBuilder::operator<<(&v162, 8, v8);
              if (v166 != 1)
              {
                goto LABEL_6;
              }

              __p[0] = &unk_2882A18C0;
              v128 = __p[1];
              if (!__p[1])
              {
                goto LABEL_6;
              }

LABEL_410:
              __len = v128;
              operator delete(v128);
              goto LABEL_6;
            case 9:
              v68 = *(v19 + 1);
              if (!v21)
              {
                v68 = 0;
              }

              if (v21 >= 8 && __rev16(*v68) == 9 && v21 == 8 && __rev16(v68[1]) == 8)
              {
                v69 = bswap32(*(v68 + 1));
                __p[0] = &unk_288296C90;
                LODWORD(__p[1]) = v69;
                LOBYTE(__len) = 1;
                v157(__p, v8, &__src);
                v70 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  v70 = __src.__r_.__value_.__l.__size_;
                  p_src = __src.__r_.__value_.__r.__words[0];
                  v132 = __src.__r_.__value_.__l.__size_ == 0;
                  if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
                  {
                    goto LABEL_430;
                  }
                }

                else
                {
                  v132 = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
                  p_src = &__src;
                }

                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v133 = 22;
                }

                else
                {
                  v133 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                }

                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v134 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v134 = v162.__r_.__value_.__l.__size_;
                }

                if (v133 - v134 >= v70)
                {
                  if (!v132)
                  {
                    if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v135 = &v162;
                    }

                    else
                    {
                      v135 = v162.__r_.__value_.__r.__words[0];
                    }

                    if ((v70 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_430;
                    }

                    v136 = v135 + v134;
                    if ((v135 + v134) <= p_src && &v136[v70] > p_src)
                    {
                      goto LABEL_430;
                    }

                    v137 = v70;
                    memmove(v136, p_src, v70);
                    v138 = v134 + v137;
                    if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v162.__r_.__value_.__l.__size_ = v134 + v137;
                    }

                    else
                    {
                      *(&v162.__r_.__value_.__s + 23) = v138 & 0x7F;
                    }

                    v135->__r_.__value_.__s.__data_[v138] = 0;
                  }
                }

                else
                {
                  std::string::__grow_by_and_replace(&v162, v133, v134 + v70 - v133, v134, v134, 0, v70, p_src);
                }

                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__src.__r_.__value_.__l.__data_);
                }

                goto LABEL_6;
              }

              v85 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v86 = 22;
              }

              else
              {
                v86 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v87 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v87 = v162.__r_.__value_.__l.__size_;
              }

              if (v86 - v87 >= 0x24)
              {
                v109 = v162.__r_.__value_.__r.__words[0];
                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v109 = &v162;
                }

                v110 = v109 + v87;
                if (v109 + v87 <= "Failed to parse error cause of type " && v110 + 36 > "Failed to parse error cause of type ")
                {
                  goto LABEL_430;
                }

                qmemcpy(v110, "Failed to parse error cause of type ", 36);
                v111 = v87 + 36;
                if (v85 < 0)
                {
                  v162.__r_.__value_.__l.__size_ = v87 + 36;
                }

                else
                {
                  *(&v162.__r_.__value_.__s + 23) = v111 & 0x7F;
                }

                v109->__r_.__value_.__s.__data_[v111] = 0;
              }

              else
              {
                std::string::__grow_by_and_replace(&v162, v86, v87 - v86 + 36, v87, v87, 0, 0x24uLL, "Failed to parse error cause of type ");
              }

              v12 = 9;
              break;
            case 10:
              v29 = *(v19 + 1);
              if (!v21)
              {
                v29 = 0;
              }

              if (v21 >= 4 && __rev16(*v29) == 10 && v21 == 4 && __rev16(v29[1]) == 4)
              {
                __src.__r_.__value_.__r.__words[0] = &unk_288291710;
                __src.__r_.__value_.__s.__data_[8] = 1;
                v158(&__src);
              }

              v79 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v80 = 22;
              }

              else
              {
                v80 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v81 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v81 = v162.__r_.__value_.__l.__size_;
              }

              if (v80 - v81 >= 0x24)
              {
                v103 = v162.__r_.__value_.__r.__words[0];
                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v103 = &v162;
                }

                v104 = v103 + v81;
                if (v103 + v81 <= "Failed to parse error cause of type " && v104 + 36 > "Failed to parse error cause of type ")
                {
                  goto LABEL_430;
                }

                qmemcpy(v104, "Failed to parse error cause of type ", 36);
                v105 = v81 + 36;
                if (v79 < 0)
                {
                  v162.__r_.__value_.__l.__size_ = v81 + 36;
                }

                else
                {
                  *(&v162.__r_.__value_.__s + 23) = v105 & 0x7F;
                }

                v103->__r_.__value_.__s.__data_[v105] = 0;
              }

              else
              {
                std::string::__grow_by_and_replace(&v162, v80, v81 - v80 + 36, v81, v81, 0, 0x24uLL, "Failed to parse error cause of type ");
              }

              v12 = 10;
              break;
            default:
LABEL_178:
              *__p = *v19;
              __len = *(v19 + 2);
              if (dcsctp::ParseAndPrint<dcsctp::RestartOfAnAssociationWithNewAddressesCause>(__p, &v162, v8))
              {
                goto LABEL_6;
              }

              *__p = *v19;
              __len = *(v19 + 2);
              dcsctp::ParseAndPrint<dcsctp::UserInitiatedAbortCause>(__p, &v162);
              if (v71)
              {
                goto LABEL_6;
              }

              *__p = *v19;
              __len = *(v19 + 2);
              dcsctp::ParseAndPrint<dcsctp::ProtocolViolationCause>(__p, &v162);
              if (v72)
              {
                goto LABEL_6;
              }

              std::string::append(&v162, "Unhandled parameter of type: ", 0x1DuLL);
              v12 = *v19;
              break;
          }
        }

LABEL_5:
        webrtc::StringBuilder::operator<<(&v162, v12, v8);
        goto LABEL_6;
      }

      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v51 = *(v19 + 1);
          if (!v21)
          {
            v51 = 0;
          }

          if (v21 >= 8 && __rev16(*v51) == 3)
          {
            v52 = __rev16(v51[1]);
            if (v21 == 8 && v52 == 8)
            {
              v130 = bswap32(*(v51 + 1));
              __p[0] = &unk_28829FFB8;
              LODWORD(__p[1]) = v130;
              LOBYTE(__len) = 1;
              v153(__p);
            }
          }

          v54 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = 22;
          }

          else
          {
            v55 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v56 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = v162.__r_.__value_.__l.__size_;
          }

          if (v55 - v56 >= 0x24)
          {
            v97 = v162.__r_.__value_.__r.__words[0];
            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v97 = &v162;
            }

            v98 = v97 + v56;
            if (v97 + v56 <= "Failed to parse error cause of type " && v98 + 36 > "Failed to parse error cause of type ")
            {
              goto LABEL_430;
            }

            qmemcpy(v98, "Failed to parse error cause of type ", 36);
            v99 = v56 + 36;
            if (v54 < 0)
            {
              v162.__r_.__value_.__l.__size_ = v56 + 36;
            }

            else
            {
              *(&v162.__r_.__value_.__s + 23) = v99 & 0x7F;
            }

            v97->__r_.__value_.__s.__data_[v99] = 0;
          }

          else
          {
            std::string::__grow_by_and_replace(&v162, v55, v56 - v55 + 36, v56, v56, 0, 0x24uLL, "Failed to parse error cause of type ");
          }

          v12 = 3;
        }

        else
        {
          if (v20 != 4)
          {
            v22 = *(v19 + 1);
            if (!v21)
            {
              v22 = 0;
            }

            if (v21 < 4 || __rev16(*v22) != 5 || ((v23 = __rev16(v22[1]), v23 >= 4) ? (v24 = v21 >= v23) : (v24 = 0), v24 ? (v25 = v21 - v23 > 3) : (v25 = 1), v25))
            {
              LOBYTE(__p[0]) = 0;
              v166 = 0;
              v26 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v27 = 22;
              }

              else
              {
                v27 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v28 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v28 = v162.__r_.__value_.__l.__size_;
              }

              if (v27 - v28 >= 0x24)
              {
                v112 = v162.__r_.__value_.__r.__words[0];
                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v112 = &v162;
                }

                v113 = v112 + v28;
                if (v112 + v28 <= "Failed to parse error cause of type " && v113 + 36 > "Failed to parse error cause of type ")
                {
                  goto LABEL_430;
                }

                qmemcpy(v113, "Failed to parse error cause of type ", 36);
                v114 = v28 + 36;
                if (v26 < 0)
                {
                  v162.__r_.__value_.__l.__size_ = v28 + 36;
                }

                else
                {
                  *(&v162.__r_.__value_.__s + 23) = v114 & 0x7F;
                }

                v112->__r_.__value_.__s.__data_[v114] = 0;
              }

              else
              {
                std::string::__grow_by_and_replace(&v162, v27, v28 - v27 + 36, v28, v28, 0, 0x24uLL, "Failed to parse error cause of type ");
              }

              webrtc::StringBuilder::operator<<(&v162, 5, v8);
            }

            else
            {
              __src.__r_.__value_.__r.__words[0] = &unk_2882A18F0;
              __src.__r_.__value_.__r.__words[2] = 0;
              v168 = 0;
              if (v23 <= 4)
              {
                v140 = 0;
              }

              else
              {
                v140 = v23 - 4;
              }

              __src.__r_.__value_.__l.__size_ = 0;
              if (v140)
              {
                if ((v140 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                goto LABEL_431;
              }

              __p[0] = &unk_2882A18F0;
              __p[1] = 0;
              __len = 0;
              v165 = 0;
              v166 = 1;
              v150(&__src);
              v141 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v141 = __src.__r_.__value_.__l.__size_;
                v143 = __src.__r_.__value_.__r.__words[0];
                v142 = __src.__r_.__value_.__l.__size_ == 0;
                if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
                {
                  goto LABEL_430;
                }
              }

              else
              {
                v142 = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
                v143 = &__src;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v144 = 22;
              }

              else
              {
                v144 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v145 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v145 = v162.__r_.__value_.__l.__size_;
              }

              if (v144 - v145 >= v141)
              {
                if (!v142)
                {
                  if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v146 = &v162;
                  }

                  else
                  {
                    v146 = v162.__r_.__value_.__r.__words[0];
                  }

                  if ((v141 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_430;
                  }

                  v147 = v146 + v145;
                  if ((v146 + v145) <= v143 && &v147[v141] > v143)
                  {
                    goto LABEL_430;
                  }

                  v148 = v141;
                  memmove(v147, v143, v141);
                  v149 = v145 + v148;
                  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                  {
                    v162.__r_.__value_.__l.__size_ = v145 + v148;
                  }

                  else
                  {
                    *(&v162.__r_.__value_.__s + 23) = v149 & 0x7F;
                  }

                  v146->__r_.__value_.__s.__data_[v149] = 0;
                }
              }

              else
              {
                std::string::__grow_by_and_replace(&v162, v144, v145 + v141 - v144, v145, v145, 0, v141, v143);
              }

              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__src.__r_.__value_.__l.__data_);
              }
            }

            if (v166 != 1)
            {
              goto LABEL_6;
            }

            __p[0] = &unk_2882A18F0;
            v128 = __p[1];
            if (!__p[1])
            {
              goto LABEL_6;
            }

            goto LABEL_410;
          }

          v64 = *(v19 + 1);
          if (!v21)
          {
            v64 = 0;
          }

          if (v21 >= 4 && __rev16(*v64) == 4 && v21 == 4 && __rev16(v64[1]) == 4)
          {
            __src.__r_.__value_.__r.__words[0] = &unk_288297378;
            __src.__r_.__value_.__s.__data_[8] = 1;
            v154(__p);
            v65 = SHIBYTE(__len);
            if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
            {
              v37 = __p[0];
              v65 = __p[1];
              v36 = __p[1] == 0;
              if (!__p[0] && __p[1])
              {
                goto LABEL_430;
              }
            }

            else
            {
              v36 = SHIBYTE(__len) == 0;
              v37 = __p;
            }

            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = 22;
            }

            else
            {
              v66 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v67 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v67 = v162.__r_.__value_.__l.__size_;
            }

            if (v66 - v67 >= v65)
            {
              if (!v36)
              {
                if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v124 = &v162;
                }

                else
                {
                  v124 = v162.__r_.__value_.__r.__words[0];
                }

                if ((v65 & 0x8000000000000000) != 0)
                {
                  goto LABEL_430;
                }

                v125 = v124 + v67;
                if (v124 + v67 <= v37 && &v125[v65] > v37)
                {
                  goto LABEL_430;
                }

                v126 = v65;
                memmove(v125, v37, v65);
                v127 = v67 + v126;
                if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
                {
                  v162.__r_.__value_.__l.__size_ = v67 + v126;
                }

                else
                {
                  *(&v162.__r_.__value_.__s + 23) = v127 & 0x7F;
                }

                v124->__r_.__value_.__s.__data_[v127] = 0;
              }
            }

            else
            {
              std::string::__grow_by_and_replace(&v162, v66, v67 + v65 - v66, v67, v67, 0, v65, v37);
            }

            if (SHIBYTE(__len) < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_6;
          }

          v82 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = 22;
          }

          else
          {
            v83 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v84 = v162.__r_.__value_.__l.__size_;
          }

          if (v83 - v84 >= 0x24)
          {
            v106 = v162.__r_.__value_.__r.__words[0];
            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v106 = &v162;
            }

            v107 = v106 + v84;
            if (v106 + v84 <= "Failed to parse error cause of type " && v107 + 36 > "Failed to parse error cause of type ")
            {
              goto LABEL_430;
            }

            qmemcpy(v107, "Failed to parse error cause of type ", 36);
            v108 = v84 + 36;
            if (v82 < 0)
            {
              v162.__r_.__value_.__l.__size_ = v84 + 36;
            }

            else
            {
              *(&v162.__r_.__value_.__s + 23) = v108 & 0x7F;
            }

            v106->__r_.__value_.__s.__data_[v108] = 0;
          }

          else
          {
            std::string::__grow_by_and_replace(&v162, v83, v84 - v83 + 36, v84, v84, 0, 0x24uLL, "Failed to parse error cause of type ");
          }

          v12 = 4;
        }

        goto LABEL_5;
      }

      if (v20 == 1)
      {
        v38 = *(v19 + 1);
        if (!v21)
        {
          v38 = 0;
        }

        if (v21 >= 8 && __rev16(*v38) == 1)
        {
          v39 = __rev16(v38[1]);
          if (v21 == 8 && v39 == 8)
          {
            v129 = bswap32(v38[2]);
            __p[0] = &unk_288294C28;
            LOWORD(__p[1]) = HIWORD(v129);
            LOBYTE(__len) = 1;
            v152(__p);
          }
        }

        v41 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v42 = 22;
        }

        else
        {
          v42 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v43 = v162.__r_.__value_.__l.__size_;
        }

        if (v42 - v43 >= 0x24)
        {
          v91 = v162.__r_.__value_.__r.__words[0];
          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v91 = &v162;
          }

          v92 = v91 + v43;
          if (v91 + v43 <= "Failed to parse error cause of type " && v92 + 36 > "Failed to parse error cause of type ")
          {
            goto LABEL_430;
          }

          qmemcpy(v92, "Failed to parse error cause of type ", 36);
          v93 = v43 + 36;
          if (v41 < 0)
          {
            v162.__r_.__value_.__l.__size_ = v43 + 36;
          }

          else
          {
            *(&v162.__r_.__value_.__s + 23) = v93 & 0x7F;
          }

          v91->__r_.__value_.__s.__data_[v93] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v162, v42, v43 - v42 + 36, v43, v43, 0, 0x24uLL, "Failed to parse error cause of type ");
        }

        v12 = 1;
        goto LABEL_5;
      }

      if (v20 != 2)
      {
        goto LABEL_178;
      }

      if (v21)
      {
        v30 = *(v19 + 1);
      }

      else
      {
        v30 = 0;
      }

      dcsctp::MissingMandatoryParameterCause::Parse(v30, v21, __p);
      if (v166 == 1)
      {
        (*(__p[0] + 3))(&__src, __p);
        v32 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__src.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v32 = __src.__r_.__value_.__l.__size_;
          v34 = __src.__r_.__value_.__r.__words[0];
          v33 = __src.__r_.__value_.__l.__size_ == 0;
          if (!__src.__r_.__value_.__r.__words[0] && __src.__r_.__value_.__l.__size_)
          {
            goto LABEL_430;
          }
        }

        else
        {
          v33 = SHIBYTE(__src.__r_.__value_.__r.__words[2]) == 0;
          v34 = &__src;
        }

        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v118 = 22;
        }

        else
        {
          v118 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v119 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v119 = v162.__r_.__value_.__l.__size_;
        }

        if (v118 - v119 >= v32)
        {
          if (!v33)
          {
            if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v120 = &v162;
            }

            else
            {
              v120 = v162.__r_.__value_.__r.__words[0];
            }

            if ((v32 & 0x8000000000000000) != 0)
            {
              goto LABEL_430;
            }

            v121 = v120 + v119;
            if ((v120 + v119) <= v34 && &v121[v32] > v34)
            {
              goto LABEL_430;
            }

            v122 = v32;
            memmove(v121, v34, v32);
            v123 = v119 + v122;
            if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
            {
              v162.__r_.__value_.__l.__size_ = v119 + v122;
            }

            else
            {
              *(&v162.__r_.__value_.__s + 23) = v123 & 0x7F;
            }

            v120->__r_.__value_.__s.__data_[v123] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v162, v118, v119 + v32 - v118, v119, v119, 0, v32, v34);
        }

        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
          if (v166 != 1)
          {
            goto LABEL_6;
          }
        }

        else if (v166 != 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v88 = SHIBYTE(v162.__r_.__value_.__r.__words[2]);
        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v89 = 22;
        }

        else
        {
          v89 = (v162.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v90 = HIBYTE(v162.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v90 = v162.__r_.__value_.__l.__size_;
        }

        if (v89 - v90 >= 0x24)
        {
          v115 = v162.__r_.__value_.__r.__words[0];
          if ((v162.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v115 = &v162;
          }

          v116 = v115 + v90;
          if (v115 + v90 <= "Failed to parse error cause of type " && v116 + 36 > "Failed to parse error cause of type ")
          {
            goto LABEL_430;
          }

          qmemcpy(v116, "Failed to parse error cause of type ", 36);
          v117 = v90 + 36;
          if (v88 < 0)
          {
            v162.__r_.__value_.__l.__size_ = v90 + 36;
          }

          else
          {
            *(&v162.__r_.__value_.__s + 23) = v117 & 0x7F;
          }

          v115->__r_.__value_.__s.__data_[v117] = 0;
        }

        else
        {
          std::string::__grow_by_and_replace(&v162, v89, v90 - v89 + 36, v90, v90, 0, 0x24uLL, "Failed to parse error cause of type ");
        }

        webrtc::StringBuilder::operator<<(&v162, 2, v31);
        if (v166 != 1)
        {
          goto LABEL_6;
        }
      }

      __p[0] = &unk_288296880;
      v128 = __p[1];
      if (__p[1])
      {
        goto LABEL_410;
      }

LABEL_6:
      ++v11;
      v9 = v160;
      v10 += 24;
      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((v161 - v160) >> 3))
      {
        a6 = v159;
        goto LABEL_426;
      }
    }

    *(&v162.__r_.__value_.__s + 23) = v18 & 0x7F;
    v16->__r_.__value_.__s.__data_[v18] = 0;
LABEL_25:
    v15 = v160;
    if (0xAAAAAAAAAAAAAAABLL * ((v161 - v160) >> 3) <= v11)
    {
      goto LABEL_430;
    }

    goto LABEL_26;
  }

LABEL_426:
  *a6 = v162;
  memset(&v162, 0, sizeof(v162));
  if (v9)
  {
    v161 = v9;
    operator delete(v9);
    if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v162.__r_.__value_.__l.__data_);
    }
  }
}

BOOL dcsctp::ParseAndPrint<dcsctp::RestartOfAnAssociationWithNewAddressesCause>(unsigned __int16 *a1, std::string *this, char *a3)
{
  v3 = *a1;
  if (v3 != 11)
  {
    return v3 == 11;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  if (!v5)
  {
    v4 = 0;
  }

  if (v5 >= 4 && __rev16(*v4) == 11)
  {
    v6 = __rev16(v4[1]);
    v7 = v6 >= 4 && v5 >= v6;
    if (v7 && v5 - v6 <= 3)
    {
      __src = &unk_28829A910;
      v37 = 0;
      if (v6 <= 4)
      {
        v17 = 0;
      }

      else
      {
        v17 = v6 - 4;
      }

      __len = 0;
      v39 = 0;
      if (v17)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_66:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v18 = this;
      v31 = &unk_28829A910;
      __p = 0;
      v33 = 0;
      v34 = 0;
      v35 = 1;
      unk_28829A928(&__src, &v31);
      v19 = SHIBYTE(__len);
      if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
      {
        p_src = __src;
        v19 = v37;
        v20 = v37 == 0;
        v22 = v18;
        if (!__src && v37)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v20 = SHIBYTE(__len) == 0;
        p_src = &__src;
        v22 = v18;
      }

      v23 = SHIBYTE(v22->__r_.__value_.__r.__words[2]);
      if (v23 >= 0)
      {
        v24 = 22;
      }

      else
      {
        v24 = (v22->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if (v23 >= 0)
      {
        size = HIBYTE(v22->__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v22->__r_.__value_.__l.__size_;
      }

      if (v24 - size < v19)
      {
        std::string::__grow_by_and_replace(v22, v24, size + v19 - v24, size, size, 0, v19, p_src);
        goto LABEL_63;
      }

      if (v20)
      {
LABEL_63:
        if (SHIBYTE(__len) < 0)
        {
          operator delete(__src);
        }

        goto LABEL_30;
      }

      if (v23 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = v22->__r_.__value_.__r.__words[0];
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        v27 = v22;
        v28 = v26 + size;
        if (v26 + size > p_src || &v28[v19] <= p_src)
        {
          v29 = v19;
          memmove(v28, p_src, v19);
          v30 = size + v29;
          if (SHIBYTE(v27->__r_.__value_.__r.__words[2]) < 0)
          {
            v27->__r_.__value_.__l.__size_ = v30;
          }

          else
          {
            *(&v27->__r_.__value_.__s + 23) = v30 & 0x7F;
          }

          v26->__r_.__value_.__s.__data_[v30] = 0;
          goto LABEL_63;
        }
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }
  }

  LOBYTE(v31) = 0;
  v35 = 0;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v10 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v9 < 0)
  {
    v11 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = 22;
    v11 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v10 - v11 >= 0x24)
  {
    v13 = this->__r_.__value_.__r.__words[0];
    if (v9 >= 0)
    {
      v13 = this;
    }

    if (v13 + v11 <= "Failed to parse error cause of type " && &v13[1].__r_.__value_.__r.__words[1] + v11 + 4 > "Failed to parse error cause of type ")
    {
      goto LABEL_65;
    }

    qmemcpy(v13 + v11, "Failed to parse error cause of type ", 36);
    v15 = v11 + 36;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
    }

    v13->__r_.__value_.__s.__data_[v15] = 0;
  }

  else
  {
    v12 = this;
    std::string::__grow_by_and_replace(this, v10, v11 - v10 + 36, v11, v11, 0, 0x24uLL, "Failed to parse error cause of type ");
    this = v12;
  }

  webrtc::StringBuilder::operator<<(this, 0xB, a3);
LABEL_30:
  if (v35 == 1)
  {
    v31 = &unk_28829A910;
    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }
  }

  return v3 == 11;
}

void dcsctp::ParseAndPrint<dcsctp::UserInitiatedAbortCause>(uint64_t a1, std::string *a2)
{
  if (*a1 != 12)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  dcsctp::UserInitiatedAbortCause::Parse(v4, v3, __len_1);
  if (v27 != 1)
  {
    v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v9 >= 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v9 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (v10 - size >= 0x24)
    {
      if (v9 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = a2->__r_.__value_.__r.__words[0];
      }

      if (v12 + size <= "Failed to parse error cause of type " && &v12[1].__r_.__value_.__r.__words[1] + size + 4 > "Failed to parse error cause of type ")
      {
        goto LABEL_56;
      }

      qmemcpy(v12 + size, "Failed to parse error cause of type ", 36);
      v14 = size + 36;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v14;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v12->__r_.__value_.__s.__data_[v14] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(a2, v10, size - v10 + 36, size, size, 0, 0x24uLL, "Failed to parse error cause of type ");
    }

    webrtc::StringBuilder::operator<<(a2, 0xC, v5);
    goto LABEL_50;
  }

  (*(__len_1[0] + 24))(&__p, __len_1);
  v6 = __len;
  if ((__len & 0x8000000000000000) != 0)
  {
    p_p = __p;
    v6 = v23;
    v7 = v23 == 0;
    if (!__p && v23)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v7 = __len == 0;
    p_p = &__p;
  }

  v15 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v15 >= 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v15 >= 0)
  {
    v17 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = a2->__r_.__value_.__l.__size_;
  }

  if (v16 - v17 < v6)
  {
    std::string::__grow_by_and_replace(a2, v16, v17 + v6 - v16, v17, v17, 0, v6, p_p);
    if ((__len & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v7)
  {
LABEL_45:
    if ((__len & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v15 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v19 = v18 + v17, v18 + v17 <= p_p) && &v19[v6] > p_p)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v20 = v6;
  memmove(v19, p_p, v6);
  v21 = v17 + v20;
  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&a2->__r_.__value_.__s + 23) = v21 & 0x7F;
    v18->__r_.__value_.__s.__data_[v21] = 0;
    goto LABEL_45;
  }

  a2->__r_.__value_.__l.__size_ = v21;
  v18->__r_.__value_.__s.__data_[v21] = 0;
  if (__len < 0)
  {
LABEL_46:
    operator delete(__p);
  }

LABEL_50:
  if (v27 == 1)
  {
    __len_1[0] = &unk_2882A1920;
    if (v26 < 0)
    {
      operator delete(__len_1[1]);
    }
  }
}

void dcsctp::ParseAndPrint<dcsctp::ProtocolViolationCause>(uint64_t a1, std::string *a2)
{
  if (*a1 != 13)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 8);
  }

  else
  {
    v4 = 0;
  }

  dcsctp::ProtocolViolationCause::Parse(v4, v3, __len_1);
  if (v27 != 1)
  {
    v9 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v9 >= 0)
    {
      v10 = 22;
    }

    else
    {
      v10 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if (v9 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    if (v10 - size >= 0x24)
    {
      if (v9 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = a2->__r_.__value_.__r.__words[0];
      }

      if (v12 + size <= "Failed to parse error cause of type " && &v12[1].__r_.__value_.__r.__words[1] + size + 4 > "Failed to parse error cause of type ")
      {
        goto LABEL_56;
      }

      qmemcpy(v12 + size, "Failed to parse error cause of type ", 36);
      v14 = size + 36;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v14;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v12->__r_.__value_.__s.__data_[v14] = 0;
    }

    else
    {
      std::string::__grow_by_and_replace(a2, v10, size - v10 + 36, size, size, 0, 0x24uLL, "Failed to parse error cause of type ");
    }

    webrtc::StringBuilder::operator<<(a2, 0xD, v5);
    goto LABEL_50;
  }

  (*(__len_1[0] + 24))(&__p, __len_1);
  v6 = __len;
  if ((__len & 0x8000000000000000) != 0)
  {
    p_p = __p;
    v6 = v23;
    v7 = v23 == 0;
    if (!__p && v23)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v7 = __len == 0;
    p_p = &__p;
  }

  v15 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v15 >= 0)
  {
    v16 = 22;
  }

  else
  {
    v16 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v15 >= 0)
  {
    v17 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = a2->__r_.__value_.__l.__size_;
  }

  if (v16 - v17 < v6)
  {
    std::string::__grow_by_and_replace(a2, v16, v17 + v6 - v16, v17, v17, 0, v6, p_p);
    if ((__len & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v7)
  {
LABEL_45:
    if ((__len & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (v15 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = a2->__r_.__value_.__r.__words[0];
  }

  if ((v6 & 0x8000000000000000) != 0 || (v19 = v18 + v17, v18 + v17 <= p_p) && &v19[v6] > p_p)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v20 = v6;
  memmove(v19, p_p, v6);
  v21 = v17 + v20;
  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&a2->__r_.__value_.__s + 23) = v21 & 0x7F;
    v18->__r_.__value_.__s.__data_[v21] = 0;
    goto LABEL_45;
  }

  a2->__r_.__value_.__l.__size_ = v21;
  v18->__r_.__value_.__s.__data_[v21] = 0;
  if (__len < 0)
  {
LABEL_46:
    operator delete(__p);
  }

LABEL_50:
  if (v27 == 1)
  {
    __len_1[0] = &unk_288299ED8;
    if (v26 < 0)
    {
      operator delete(__len_1[1]);
    }
  }
}

_BYTE *dcsctp::ErrorChunk::Parse@<X0>(_BYTE *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (a2 < 4 || *v3 != 9 || ((v4 = v3[3], v5 = v4 | (v3[2] << 8), (v4 & 3) == 0) ? (v6 = v5 >= 4) : (v6 = 0), v6 ? (v7 = a2 >= v5) : (v7 = 0), v7 ? (v8 = a2 - v5 >= 4) : (v8 = 1), v8))
  {
LABEL_17:
    *a3 = 0;
    *(a3 + 32) = 0;
    return result;
  }

  v9 = v3 + 4;
  if (v5 >= 4)
  {
    v10 = v5 - 4;
  }

  else
  {
    v10 = 0;
  }

  if (v5 <= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (v5 >= 5)
  {
    v12 = v10;
    v13 = v11;
    while (v12 >= 4)
    {
      v14 = __rev16(*(v13 + 1));
      if (v14 < 4 || v12 < v14)
      {
        break;
      }

      v16 = (v14 + 3) & 0xFFFC;
      v17 = v12 - v16;
      if (v12 >= v16)
      {
        if (v17 >= v12)
        {
          v17 = v12;
        }

        v13 += v16;
        v18 = v12 > v16;
        if (v12 <= v16)
        {
          v13 = 0;
        }

        v12 = v17;
        if (v18)
        {
          continue;
        }
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    goto LABEL_17;
  }

  *a3 = &unk_2882935C8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  return result;
}

void dcsctp::ErrorChunk::~ErrorChunk(dcsctp::ErrorChunk *this)
{
  *this = &unk_2882935C8;
  v1 = *(this + 1);
  if (v1)
  {
    *(this + 2) = v1;
    operator delete(v1);
  }
}

{
  *this = &unk_2882935C8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

void dcsctp::ErrorChunk::SerializeTo(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = v10 - v9;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8);
  }

  v13 = *a2;
  v14 = a2[1] - *a2;
  v15 = v11 + 4;
  v16 = v14 + v11 + 4;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      a2[1] = v13 + v16;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a2, v11 + 4);
    v13 = *a2;
  }

  v17 = (v13 + v14);
  *v17 = 9;
  v17[2] = HIBYTE(v15);
  v17[3] = v15;
  if (v11 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    webrtc::webrtc_checks_impl::FatalLog("Source/webrtc/net/dcsctp/packet/bounded_byte_writer.h", 59, "data.size() >= FixedSize", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, a5, a6, a7, a8, v20);
    dcsctp::ErrorChunk::ToString(v19);
  }

  else if (v9 && v10 != v9)
  {
    v18 = (*a2 + v14 + 4);

    memcpy(v18, v12, v10 - v9);
  }
}

void dcsctp::ErrorChunk::ToString(char *a1@<X8>)
{
  a1[23] = 5;
  if (a1 <= "ERROR" && a1 + 5 > "ERROR")
  {
    __break(1u);
  }

  else
  {
    strcpy(a1, "ERROR");
  }
}

uint64_t absl::anonymous namespace::Base64UnescapeInternal<std::string>(unsigned __int8 *a1, unint64_t a2, std::string *this, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2 - (a2 >> 2);
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v9 & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = v8 - size;
    if (v8 <= size)
    {
      v22 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = v8;
      *(v22 + v8) = 0;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v17 = this->__r_.__value_.__r.__words[2];
    v11 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = HIBYTE(v17);
    if (v11 - size < v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = v8 - v9;
    if (v8 <= v9)
    {
      *(&this->__r_.__value_.__s + 23) = v8;
      this->__r_.__value_.__s.__data_[v8] = 0;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v11 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v9 < v10)
    {
LABEL_4:
      v13 = this;
      v14 = a1;
      v15 = a2;
      v16 = a4;
      std::string::__grow_by(this, v11, v10 - v11 + size, size, size, 0, 0);
      a2 = v15;
      a1 = v14;
      a4 = v16;
      this = v13;
      v13->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&v13->__r_.__value_.__s + 23);
    }
  }

  if ((v9 & 0x80) == 0)
  {
    *(&this->__r_.__value_.__s + 23) = (size + v10) & 0x7F;
    this->__r_.__value_.__s.__data_[size + v10] = 0;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    v18 = this;
    if (a2 >= 4)
    {
      goto LABEL_17;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v18 = this;
LABEL_86:
    v30 = a2;
    goto LABEL_87;
  }

  v57 = this->__r_.__value_.__r.__words[0];
  this->__r_.__value_.__l.__size_ = size + v10;
  *(v57 + size + v10) = 0;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v18 = this->__r_.__value_.__r.__words[0];
  if (!this->__r_.__value_.__r.__words[0])
  {
    if (a2 < 4)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v30 = a2;
      goto LABEL_133;
    }

    v19 = 0;
    LOBYTE(v28) = 0;
    v25 = 0;
    v21 = 0;
    while (1)
    {
      if (*a1 && a1[1] && a1[2] && (v19 = (*(a4 + a1[1]) << 12) | (*(a4 + *a1) << 18) | (*(a4 + a1[2]) << 6) | *(a4 + a1[3]), (v19 & 0x80000000) == 0))
      {
        v30 = a2 - 4;
        a1 += 4;
      }

      else
      {
        v43 = 0;
        v44 = a2 - 2;
        v45 = a2 - 3;
        v30 = a2 - 4;
        v46 = a1;
        a5 = a2;
        while (1)
        {
          v47 = *v46++;
          v28 = v47;
          v48 = *(a4 + v47);
          if ((v48 & 0x80000000) == 0)
          {
            break;
          }

          --a5;
          a6 = absl::ascii_internal::kPropertyBits[v28];
          if ((a6 & 8) != 0)
          {
            ++v43;
            --v44;
            --v45;
            --v30;
            if (a5 > 3)
            {
              continue;
            }
          }

          v18 = 0;
          v20 = 0;
          v41 = 1;
          a1 = v46;
          v30 = a5;
          if (v48 < 0)
          {
            goto LABEL_151;
          }

          goto LABEL_130;
        }

        while (1)
        {
          v50 = &a1[v43];
          v28 = a1[v43 + 1];
          v51 = *(a4 + v28);
          if ((v51 & 0x80000000) == 0)
          {
            break;
          }

          ++v43;
          if ((absl::ascii_internal::kPropertyBits[v28] & 8) != 0)
          {
            --v45;
            --v30;
            v49 = v44-- > 2;
            if (v49)
            {
              continue;
            }
          }

          v18 = 0;
          a1 += v43 + 1;
          v30 = ~v43 + a2;
          v41 = 1;
          v20 = 1;
LABEL_150:
          if ((v51 & 0x80000000) == 0)
          {
            goto LABEL_130;
          }

LABEL_151:
          if (v28 != 46 && v28 != 61)
          {
            if ((absl::ascii_internal::kPropertyBits[v28] & 8) == 0)
            {
              goto LABEL_179;
            }

            goto LABEL_130;
          }

LABEL_153:
          v68 = v30 + 1;
          v67 = a1 - 1;
          goto LABEL_154;
        }

        v52 = v50 + 2;
        a1 = v50 + 2;
        while (1)
        {
          v53 = *a1++;
          v28 = v53;
          v51 = *(a4 + v53);
          if ((v51 & 0x80000000) == 0)
          {
            break;
          }

          v54 = v45 - 1;
          if ((absl::ascii_internal::kPropertyBits[v28] & 8) != 0)
          {
            --v30;
            v52 = a1;
            v49 = v45-- > 1;
            if (v49)
            {
              continue;
            }
          }

          v18 = 0;
          v30 = v54 + 1;
          v20 = 2;
          v41 = 1;
          goto LABEL_150;
        }

        a1 = v52 + 1;
        while (1)
        {
          v55 = *a1++;
          v28 = v55;
          v25 = *(a4 + v55);
          if ((v25 & 0x80000000) == 0)
          {
            break;
          }

          v38 = v30-- != 0;
          v56 = v38;
          if ((absl::ascii_internal::kPropertyBits[v28] & 8) == 0 || (v56 & 1) == 0)
          {
            v18 = 0;
            ++v30;
            v20 = 3;
            v41 = 1;
            if ((v25 & 0x80000000) == 0)
            {
              goto LABEL_130;
            }

            goto LABEL_151;
          }
        }
      }

      v18 = 0;
      v20 = 0;
      v21 += 3;
      v41 = 1;
      a2 = v30;
      if (v30 <= 3)
      {
LABEL_129:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_151;
      }
    }
  }

  if (a2 <= 3)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_86;
  }

LABEL_17:
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  v21 = 0;
  while (*a1)
  {
    if (!a1[1])
    {
      break;
    }

    if (!a1[2])
    {
      break;
    }

    v23 = (*(a4 + a1[1]) << 12) | (*(a4 + *a1) << 18) | (*(a4 + a1[2]) << 6) | *(a4 + a1[3]);
    if ((v23 & 0x80000000) != 0)
    {
      break;
    }

    a2 -= 4;
    a1 += 4;
    v26 = v21 + 3;
    if (v21 + 3 > v8)
    {
      goto LABEL_179;
    }

LABEL_46:
    v40 = v18 + v21;
    *(v40 + 1) = bswap32(v23) >> 16;
    v23 >>= 16;
    *v40 = v23;
    v21 = v26;
    if (a2 <= 3)
    {
      v41 = 0;
      v20 = 0;
      v21 = v26;
      LOBYTE(v28) = v24;
      v19 = v23;
      v30 = a2;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_151;
    }
  }

  v27 = 0;
  v28 = a2 - 4;
  v29 = -2;
  a5 = a1;
  v30 = a2;
  while (1)
  {
    v31 = *a5++;
    a6 = v31;
    v19 = *(a4 + v31);
    if ((v19 & 0x80000000) == 0)
    {
      break;
    }

    --v30;
    if ((absl::ascii_internal::kPropertyBits[a6] & 8) != 0)
    {
      ++v27;
      --v29;
      --v28;
      if (v30 > 3)
      {
        continue;
      }
    }

    v41 = 0;
    v20 = 0;
    v42 = v19;
    LOBYTE(v28) = a6;
    v19 = v23;
    a1 = a5;
    if ((v42 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_151;
  }

  while (1)
  {
    a5 = &a1[v27];
    v30 = a2 + v29;
    v32 = a1[v27 + 1];
    v33 = *(a4 + v32);
    if ((v33 & 0x80000000) == 0)
    {
      break;
    }

    a5 = absl::ascii_internal::kPropertyBits[v32];
    ++v27;
    if ((a5 & 8) != 0)
    {
      --v29;
      --v28;
      if (v30 > 2)
      {
        continue;
      }
    }

    v41 = 0;
    a1 += v27 + 1;
    v30 = ~v27 + a2;
    v20 = 1;
    LOBYTE(v28) = v32;
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_151;
  }

  v19 = v33 | (v19 << 6);
  a1 = (a5 + 2);
  do
  {
    v35 = *a1++;
    v34 = v35;
    v36 = *(a4 + v35);
    if ((v36 & 0x80000000) == 0)
    {
      v19 = v36 | (v19 << 6);
      while (1)
      {
        v37 = *a1++;
        v24 = v37;
        v25 = *(a4 + v37);
        if ((v25 & 0x80000000) == 0)
        {
          break;
        }

        v38 = v28-- != 0;
        v39 = v38;
        if ((absl::ascii_internal::kPropertyBits[v24] & 8) == 0 || (v39 & 1) == 0)
        {
          v41 = 0;
          v30 = v28 + 1;
          v20 = 3;
          LOBYTE(v28) = v24;
          goto LABEL_129;
        }
      }

      v23 = v25 | (v19 << 6);
      a2 = v28;
      v26 = v21 + 3;
      if (v21 + 3 > v8)
      {
        goto LABEL_179;
      }

      goto LABEL_46;
    }

    --v30;
    if ((absl::ascii_internal::kPropertyBits[v34] & 8) == 0)
    {
      break;
    }

    --v28;
  }

  while (v30 > 1);
  v41 = 0;
  v20 = 2;
  LOBYTE(v28) = v34;
  if (v36 < 0)
  {
    goto LABEL_151;
  }

LABEL_130:
  if (v28 == 46 || v28 == 61)
  {
    goto LABEL_153;
  }

  if (v41)
  {
LABEL_133:
    v69 = 0;
    do
    {
      while (1)
      {
        if (v30 == v69)
        {
          v68 = 0;
          v67 = &a1[v30];
          v41 = 1;
          goto LABEL_154;
        }

        v66 = a1[v69];
        v70 = *(a4 + v66);
        if (v70 < 0)
        {
          break;
        }

        v19 = v70 | (v19 << 6);
        v71 = v20 + 1;
        if (v20 == 3)
        {
          v21 += 3;
          v20 = 0;
        }

        else
        {
          ++v20;
        }

        if (v71 == 4)
        {
          v19 = 0;
        }

        a1 += v69 + 1;
        v30 += ~v69;
        v69 = 0;
      }

      ++v69;
    }

    while ((absl::ascii_internal::kPropertyBits[v66] & 8) != 0);
    v67 = &a1[v69 - 1];
    v68 = v30 - v69 + 1;
    v41 = 1;
    if (v66 != 46)
    {
      goto LABEL_146;
    }

    goto LABEL_154;
  }

LABEL_87:
  v58 = v20;
  while (2)
  {
    v59 = 0;
    v60 = (a1 + 4);
    v61 = v30 - 2;
    while (2)
    {
      if (v30 == v59)
      {
        v20 = v58;
LABEL_117:
        v41 = 0;
        v68 = 0;
        v67 = &a1[v30];
        goto LABEL_154;
      }

      a5 = a1[v59];
      v62 = *(a4 + a5);
      if (v62 < 0)
      {
        ++v59;
        ++v60;
        --v61;
        if ((absl::ascii_internal::kPropertyBits[a5] & 8) == 0)
        {
          v41 = 0;
          v67 = &a1[v59 - 1];
          v68 = v30 - v59 + 1;
          v20 = v58;
LABEL_118:
          LODWORD(v66) = a5;
          if (a5 != 46)
          {
            goto LABEL_146;
          }

LABEL_154:
          if (v20 > 1)
          {
            if (v20 == 3)
            {
              v74 = v21 + 2;
              if ((v41 & 1) == 0)
              {
                if (v74 > v8)
                {
                  goto LABEL_179;
                }

                v75 = v18 + v21;
                v75[1] = v19 >> 2;
                *v75 = v19 >> 10;
              }

              v72 = -2;
              v21 = v74;
              i = 0;
              if (v68)
              {
                goto LABEL_174;
              }
            }

            else
            {
              if (v20 != 2)
              {
                goto LABEL_194;
              }

              if ((v41 & 1) == 0)
              {
                if (v21 + 1 > v8)
                {
                  goto LABEL_179;
                }

                v18->__r_.__value_.__s.__data_[v21] = v19 >> 4;
              }

              v72 = -3;
              ++v21;
              for (i = 0; v68; --v68)
              {
LABEL_174:
                v76 = *v67;
                if (v76 == 61 || v76 == 46)
                {
                  ++i;
                }

                else if ((absl::ascii_internal::kPropertyBits[*v67] & 8) == 0)
                {
                  goto LABEL_179;
                }

                ++v67;
              }
            }
          }

          else
          {
            if (v20)
            {
              if (v20 == 1)
              {
                goto LABEL_179;
              }

LABEL_194:
              absl::raw_log_internal::RawLog(3, "escaping.cc", 675, "This can't happen; base64 decoder state = %d", a5, a6, a7, a8, v20);
              __break(1u);
LABEL_195:
              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v72 = -1;
            i = 0;
            if (v68)
            {
              goto LABEL_174;
            }
          }

          if ((i & v72) != 0)
          {
            goto LABEL_179;
          }

          v78 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if ((v78 & 0x8000000000000000) != 0)
          {
            if (this->__r_.__value_.__l.__size_ < v21)
            {
              goto LABEL_195;
            }

            this->__r_.__value_.__l.__size_ = v21;
            this = this->__r_.__value_.__r.__words[0];
          }

          else
          {
            if (v21 > v78)
            {
              goto LABEL_195;
            }

            *(&this->__r_.__value_.__s + 23) = v21;
          }

          this->__r_.__value_.__s.__data_[v21] = 0;
          return 1;
        }

        continue;
      }

      break;
    }

    a5 = v19 << 6;
    v19 = a5 | v62;
    v20 = v58 + 1;
    if (v58 == 3)
    {
      v60 = &a1[v59 + 1];
      v30 += ~v59;
      goto LABEL_95;
    }

    a7 = v30 - 1;
    a6 = v59;
    while (2)
    {
      if (a7 == a6)
      {
        a1 += v59 + 1;
        v30 += ~v59;
        goto LABEL_117;
      }

      a5 = a1[a6 + 1];
      a8 = *(a4 + a5);
      if ((a8 & 0x80000000) != 0)
      {
        a8 = absl::ascii_internal::kPropertyBits[a5];
        ++a6;
        ++v60;
        --v61;
        if ((a8 & 8) == 0)
        {
          v41 = 0;
          v67 = &a1[a6];
          v68 = v30 - a6;
          goto LABEL_118;
        }

        continue;
      }

      break;
    }

    a5 = v19 << 6;
    v19 = a5 | a8;
    v20 = v58 + 2;
    a7 = v30 - a6 - 2;
    if (v58 == 2)
    {
      v60 = &a1[a6 + 2];
      v30 = v30 - a6 - 2;
      goto LABEL_95;
    }

    v65 = a6;
    while (2)
    {
      if (v30 - 2 == v65)
      {
        a1 += a6 + 2;
        v30 = v30 - a6 - 2;
        goto LABEL_117;
      }

      a5 = a1[v65 + 2];
      a8 = *(a4 + a5);
      if ((a8 & 0x80000000) != 0)
      {
        a8 = absl::ascii_internal::kPropertyBits[a5];
        ++v65;
        ++v60;
        --v61;
        if ((a8 & 8) == 0)
        {
          v41 = 0;
          v67 = &a1[v65 + 1];
          v68 = ~v65 + v30;
          goto LABEL_118;
        }

        continue;
      }

      break;
    }

    a5 = v19 << 6;
    v19 = a5 | a8;
    v20 = v58 + 3;
    v30 = v30 - v65 - 3;
    if (v58 == 1)
    {
      v60 = &a1[v65 + 3];
      goto LABEL_95;
    }

LABEL_111:
    v68 = v61 - 1;
    if (v61 == 1)
    {
      a1 += v65 + 3;
      goto LABEL_117;
    }

    v66 = *(v60 - 1);
    a6 = *(a4 + v66);
    if ((a6 & 0x80000000) == 0)
    {
      a5 = v19 << 6;
      LOBYTE(v19) = (v19 << 6) | *(a4 + v66);
      v30 = v61 - 2;
LABEL_95:
      v63 = v21 + 3;
      if (v21 + 3 > v8)
      {
        goto LABEL_179;
      }

      v58 = 0;
      v64 = v18 + v21;
      v64[2] = v19;
      v64[1] = BYTE1(a5);
      *v64 = BYTE2(a5);
      v21 = v63;
      a1 = v60;
      v19 = 0;
      continue;
    }

    break;
  }

  a5 = absl::ascii_internal::kPropertyBits[v66];
  ++v60;
  --v61;
  if ((a5 & 8) != 0)
  {
    goto LABEL_111;
  }

  v41 = 0;
  v67 = (v60 - 2);
  if (v66 == 46)
  {
    goto LABEL_154;
  }

LABEL_146:
  if (v66 == 61)
  {
    goto LABEL_154;
  }

LABEL_179:
  result = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  return result;
}

_DWORD *absl::strings_internal::Base64EscapeInternal<std::string>(unint64_t a1, unint64_t a2, std::string *this, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0xBFFFFFFFFFFFFFFELL)
  {
    std::string::basic_string[abi:sn200100]<0>(&v28, "Check input_len <= kMaxSize failed: ");
    std::string::basic_string[abi:sn200100]<0>(&v27, "CalculateBase64EscapedLenInternal() overflow");
    std::string::operator+=[abi:sn200100](&v28, &v27);
    std::string::~string(&v27);
    (atomic_load_explicit(absl::raw_log_internal::internal_log_function, memory_order_acquire))(3, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/third_party/abseil-cpp/absl/strings/internal/escaping.cc", 43, &v28);
    __break(1u);
    goto LABEL_32;
  }

  v9 = this;
  v10 = 4 * (a2 / 3);
  if (a2 % 3)
  {
    v11 = v10 | 3;
    v12 = v10 + 4;
    if (a4)
    {
      v11 = v10 + 4;
    }

    v10 |= 2uLL;
    if (a4)
    {
      v10 = v12;
    }

    if (a2 % 3 != 1)
    {
      v10 = v11;
    }
  }

  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v14 = v10 - size;
    if (v10 <= size)
    {
      v23 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = v10;
      *(v23 + v10) = 0;
      v22 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v21 = this->__r_.__value_.__r.__words[2];
    v15 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v16 = HIBYTE(v21);
    if (v15 - size >= v14)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v14 = v10 - size;
  if (v10 > size)
  {
    v15 = 22;
    LOBYTE(v16) = *(&this->__r_.__value_.__s + 23);
    if (22 - size >= v14)
    {
LABEL_13:
      if ((v16 & 0x80) != 0)
      {
        v24 = v9->__r_.__value_.__r.__words[0];
        v9->__r_.__value_.__l.__size_ = size + v14;
        *(v24 + size + v14) = 0;
        v22 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
        this = v9;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v10 = size + v14;
      *(&v9->__r_.__value_.__s + 23) = (size + v14) & 0x7F;
      goto LABEL_19;
    }

LABEL_12:
    v17 = a1;
    v18 = a2;
    v19 = size;
    v20 = a5;
    std::string::__grow_by(this, v15, v14 - v15 + size, size, size, 0, 0);
    size = v19;
    a1 = v17;
    a2 = v18;
    a5 = v20;
    v9->__r_.__value_.__l.__size_ = v19;
    LOBYTE(v16) = *(&v9->__r_.__value_.__s + 23);
    goto LABEL_13;
  }

  *(&this->__r_.__value_.__s + 23) = v10;
LABEL_19:
  v9->__r_.__value_.__s.__data_[v10] = 0;
  v22 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  this = v9;
  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v22 = v9->__r_.__value_.__l.__size_;
  this = v9->__r_.__value_.__r.__words[0];
LABEL_25:
  result = absl::strings_internal::Base64EscapeInternal(a1, a2, this, v22, a5, a4, a7, a8);
  v26 = SHIBYTE(v9->__r_.__value_.__r.__words[2]);
  if ((v26 & 0x8000000000000000) != 0)
  {
    if (v9->__r_.__value_.__l.__size_ >= result)
    {
      v9->__r_.__value_.__l.__size_ = result;
      v9 = v9->__r_.__value_.__r.__words[0];
      goto LABEL_30;
    }

LABEL_32:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (result > v26)
  {
    goto LABEL_32;
  }

  *(&v9->__r_.__value_.__s + 23) = result;
LABEL_30:
  *(result + v9) = 0;
  return result;
}

char *std::string::basic_string[abi:sn200100]<0>(char *a1, char *__s)
{
  if (!__s)
  {
    goto LABEL_13;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_14;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a1[23] = v4;
  v5 = &a1[v4];
  if (a1 <= __s && v5 > __s)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *v5 = 0;
  return a1;
}

std::string *std::string::operator+=[abi:sn200100](std::string *this, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
LABEL_29:
    __break(1u);
    return this;
  }

  v6 = this;
  v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v8 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - size < v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 22;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (22 - v7 < v4)
    {
LABEL_14:
      std::string::__grow_by_and_replace(this, v8, v4 - v8 + size, size, size, 0, v4, v3);
      return v6;
    }
  }

  if (!v4)
  {
    return v6;
  }

  v10 = this;
  if ((v7 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[0];
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  this = (v10 + size);
  if (v10 + size <= v3 && v10 + size + v4 > v3)
  {
    goto LABEL_29;
  }

  v12 = v4;
  memmove(this, v3, v4);
  v13 = size + v12;
  if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
  {
    v6->__r_.__value_.__l.__size_ = v13;
  }

  else
  {
    *(&v6->__r_.__value_.__s + 23) = v13 & 0x7F;
  }

  v10->__r_.__value_.__s.__data_[v13] = 0;
  return v6;
}

_DWORD *absl::strings_internal::Base64EscapeInternal(unint64_t this, uint64_t a2, _BYTE *a3, int64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  if (3 * a4 < (4 * a2))
  {
    return 0;
  }

  v9 = (this + a2);
  if (a2 < 3)
  {
    i = a3;
    v13 = a4;
    v14 = a2;
    if (a2 <= 1)
    {
      goto LABEL_7;
    }

LABEL_14:
    if (v14 == 2)
    {
      if (v13 < 3)
      {
        return 0;
      }

      v19 = bswap32(*this);
      *i = *(a5 + (WORD1(v19) >> 10));
      i[1] = *(a5 + ((v19 >> 20) & 0x3F));
      i[2] = *(a5 + ((v19 >> 14) & 0x3CLL));
      if (!a6)
      {
        return (i + 3 - a3);
      }

      if (v13 == 3)
      {
        return 0;
      }

      v18 = 61;
    }

    else
    {
      if (v14 != 3)
      {
LABEL_27:
        result = absl::raw_log_internal::RawLog(3, "escaping.cc", 201, "Logic problem? szsrc = %zu", a5, a6, a7, a8, v14);
        __break(1u);
        return result;
      }

      if (v13 < 4)
      {
        return 0;
      }

      v16 = *this;
      v17 = bswap32(*(this + 1));
      *i = *(a5 + (v16 >> 2));
      i[1] = *(a5 + (((__PAIR64__(v16, v17) >> 16) & 0x3F000) >> 12));
      i[2] = *(a5 + ((v17 >> 22) & 0x3F));
      v18 = *(a5 + ((v17 >> 16) & 0x3F));
    }

    i[3] = v18;
    goto LABEL_19;
  }

  for (i = a3; this < (v9 - 3); i += 4)
  {
    v11 = *this;
    this += 3;
    v12 = bswap32(v11);
    *i = *(a5 + (v12 >> 26));
    i[1] = *(a5 + ((v12 >> 20) & 0x3F));
    i[2] = *(a5 + ((v12 >> 14) & 0x3F));
    i[3] = *(a5 + ((v12 >> 8) & 0x3F));
  }

  v13 = &a3[a4] - i;
  v14 = &v9[-this];
  if (v14 > 1)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (!v14)
  {
    return (i - a3);
  }

  if (v14 != 1)
  {
    goto LABEL_27;
  }

  if (v13 < 2)
  {
    return 0;
  }

  v15 = *this;
  *i = *(a5 + (v15 >> 2));
  i[1] = *(a5 + 16 * (v15 & 3));
  if (a6)
  {
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      *(i + 1) = 15677;
LABEL_19:
      i += 4;
      return (i - a3);
    }

    return 0;
  }

  return (i + 2 - a3);
}

webrtc::Event *webrtc::Event::Event(webrtc::Event *this, char a2, char a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(this + 112) = a2;
  *(this + 113) = a3;
  if (pthread_mutex_init(this, 0))
  {
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/event.cc", 86, "pthread_mutex_init(&event_mutex_, nullptr) == 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v4, v5, v6, v7, v17);
    goto LABEL_6;
  }

  if (pthread_condattr_init(&v18))
  {
LABEL_6:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/event.cc", 88, "pthread_condattr_init(&cond_attr) == 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v8, v9, v10, v11, v17);
LABEL_7:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/event.cc", 92, "pthread_cond_init(&event_cond_, &cond_attr) == 0", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v12, v13, v14, v15, v17);
  }

  if (pthread_cond_init((this + 64), &v18))
  {
    goto LABEL_7;
  }

  pthread_condattr_destroy(&v18);
  return this;
}

uint64_t webrtc::Event::Set(webrtc::Event *this)
{
  pthread_mutex_lock(this);
  *(this + 113) = 1;
  pthread_cond_broadcast((this + 64));

  return pthread_mutex_unlock(this);
}

uint64_t webrtc::Event::Wait(webrtc::Event *this, TimeDelta a2, TimeDelta a3)
{
  var0 = a2.var0;
  if (a3.var0 >= a2.var0)
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    if (a2.var0 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }
  }

  else
  {
    gettimeofday(&v22, 0);
    v7 = v22.tv_sec + a3.var0 / 1000000;
    v8 = a3.var0 % 1000000 + v22.tv_usec;
    if (v8 <= 999999)
    {
      v3 = 1000 * v8;
    }

    else
    {
      ++v7;
      v3 = 1000 * v8 - 1000000000;
    }

    v9 = v7 & 0xFFFFFFFFFFFFFF00;
    v10 = v7;
    v11 = 1;
    if (var0 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      gettimeofday(&v22, 0);
      v12 = v22.tv_sec + var0 / 1000000;
      v13 = var0 % 1000000 + v22.tv_usec;
      if (v13 <= 999999)
      {
        var0 = 1000 * v13;
      }

      else
      {
        ++v12;
        var0 = 1000 * v13 - 1000000000;
      }

      v14 = v12 & 0xFFFFFFFFFFFFFF00;
      v15 = v12;
      v16 = 1;
      if (!v17)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v17)
  {
LABEL_13:
    (*(*v17 + 16))(v17);
  }

LABEL_14:
  pthread_mutex_lock(this);
  if ((v11 & 1) == 0)
  {
    v22.tv_sec = v15 | v14;
    *&v22.tv_usec = var0;
    v23 = v16;
    if ((*(this + 113) & 1) == 0)
    {
      while (1)
      {
        if (v23)
        {
          v18 = pthread_cond_timedwait((this + 64), this, &v22);
          if (*(this + 113))
          {
            goto LABEL_31;
          }
        }

        else
        {
          v18 = pthread_cond_wait((this + 64), this);
          if (*(this + 113))
          {
            goto LABEL_31;
          }
        }

        if (v18)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_30:
    v18 = 0;
    goto LABEL_31;
  }

  v22.tv_sec = v9 | v10;
  *&v22.tv_usec = v3;
  v23 = v11;
  if (*(this + 113) == 1)
  {
    goto LABEL_38;
  }

  do
  {
    if ((v23 & 1) == 0)
    {
      v18 = pthread_cond_wait((this + 64), this);
      v19 = *(this + 113);
      if (v19)
      {
        break;
      }

      continue;
    }

    v18 = pthread_cond_timedwait((this + 64), this, &v22);
    v19 = *(this + 113);
    if (v19)
    {
      break;
    }
  }

  while (!v18);
  if (v18 != 60)
  {
    goto LABEL_31;
  }

  v22.tv_sec = v15 | v14;
  *&v22.tv_usec = var0;
  v23 = v16;
  if (v19)
  {
    goto LABEL_30;
  }

  do
  {
    if (v23)
    {
      v18 = pthread_cond_timedwait((this + 64), this, &v22);
    }

    else
    {
      v18 = pthread_cond_wait((this + 64), this);
    }
  }

  while ((*(this + 113) & 1) == 0 && !v18);
LABEL_31:
  if (v18)
  {
    v20 = 0;
    goto LABEL_41;
  }

LABEL_38:
  if ((*(this + 112) & 1) == 0)
  {
    *(this + 113) = 0;
  }

  v20 = 1;
LABEL_41:
  pthread_mutex_unlock(this);
  return v20;
}

float webrtc::EventLogWriter::MaybeLogEncoderConfig(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 40);
  if (v2 != 1 || v3 == 0)
  {
    if (v2 != v3)
    {
      goto LABEL_23;
    }
  }

  else if (*(a1 + 56) != *(a2 + 32))
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 51);
  v6 = *(a2 + 27);
  if (v5 == 1 && v6 != 0)
  {
    v5 = *(a1 + 50);
    v6 = *(a2 + 26);
  }

  if (v5 != v6)
  {
    goto LABEL_23;
  }

  v8 = *(a1 + 49);
  v9 = *(a2 + 25);
  if (v8 == 1 && *(a2 + 25))
  {
    v8 = *(a1 + 48);
    v9 = *(a2 + 24);
  }

  if (v8 != v9)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + 36);
  v11 = *(a2 + 12);
  if (v10 == 1 && *(a2 + 12))
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 8);
  }

  if (v10 != v11)
  {
LABEL_23:
    operator new();
  }

  if (*(a1 + 28))
  {
    if (*(a2 + 4))
    {
      v12 = *(a1 + 24);
      v13 = v12 - *a2;
      if (v13 < 0)
      {
        v13 = *a2 - v12;
      }

      result = *(a1 + 12) * v12;
      v15 = result;
      if (*(a1 + 8) < result)
      {
        v15 = *(a1 + 8);
      }

      if (v13 >= v15)
      {
        goto LABEL_23;
      }
    }
  }

  else if (*(a2 + 4))
  {
    goto LABEL_23;
  }

  if (*(a1 + 44))
  {
    if (*(a2 + 20))
    {
      v16 = *(a1 + 40);
      v17 = vabds_f32(v16, *(a2 + 16));
      result = v16 * *(a1 + 16);
      if (v17 >= result)
      {
        goto LABEL_23;
      }
    }
  }

  else if (*(a2 + 20))
  {
    goto LABEL_23;
  }

  return result;
}

void webrtc::Expand::~Expand(webrtc::Expand *this)
{
  *this = &unk_2882935F8;
  v1 = *(this + 16);
  *(this + 16) = 0;
  if (v1)
  {
    v2 = v1 - 16;
    v3 = *(v1 - 8);
    if (v3)
    {
      v4 = (v1 + 112 * v3 - 72);
      v5 = -112 * v3;
      do
      {
        v6 = v4[4];
        v4[4] = 0;
        if (v6)
        {
          MEMORY[0x2743DA520](v6, 0x1000C80BDFB0063);
        }

        v7 = *v4;
        *v4 = 0;
        if (v7)
        {
          MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
        }

        v4 -= 14;
        v5 += 112;
      }

      while (v5);
    }

    MEMORY[0x2743DA520](v2, 0x1010C80963A50D5);
  }
}

{
  *this = &unk_2882935F8;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 112 * v4 - 72);
      v6 = -112 * v4;
      do
      {
        v7 = v5[4];
        v5[4] = 0;
        if (v7)
        {
          MEMORY[0x2743DA520](v7, 0x1000C80BDFB0063);
        }

        v8 = *v5;
        *v5 = 0;
        if (v8)
        {
          MEMORY[0x2743DA520](v8, 0x1000C80BDFB0063);
        }

        v5 -= 14;
        v6 += 112;
      }

      while (v6);
    }

    MEMORY[0x2743DA520](v3, 0x1010C80963A50D5);
    v1 = vars8;
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::Expand::Reset(uint64_t this)
{
  *(this + 24) = 1;
  *(this + 40) = 0;
  *(this + 72) = 0;
  if (*(this + 32))
  {
    v1 = 0;
    v2 = 0;
    while (1)
    {
      v3 = *(this + 128);
      if (*(v3 - 8) <= v2)
      {
        break;
      }

      v4 = v3 + v1;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      v5 = *(this + 128);
      if (*(v5 - 8) <= v2)
      {
        break;
      }

      v6 = v5 + v1;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      ++v2;
      v1 += 112;
      if (v2 >= *(this + 32))
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

uint64_t webrtc::Expand::Process(webrtc::Expand *this, webrtc::AudioMultiVector *a2, uint64_t a3)
{
  v3 = MEMORY[0x28223BE20](this, a2, a3);
  v193 = v4;
  v5 = v3;
  v206[461] = *MEMORY[0x277D85DE8];
  v6 = *(v3 + 64);
  v188 = *(v3 + 28) / 8000;
  if (*(v3 + 24) == 1)
  {
    if (*(*(v3 + 16) + 16) != *(*(v3 + 16) + 8))
    {
      operator new[]();
    }

    goto LABEL_172;
  }

  v7 = *(v3 + 72);
  if (v7)
  {
    v8 = 0;
    v9 = *(v3 + 8);
    do
    {
      v10 = v7 - v8;
      if (v7 - v8 >= 0x100)
      {
        v10 = 256;
      }

      *(v9 + 2) = (*(v9 + 2) + 2);
      if (v7 != v8)
      {
        v11 = v203 + v8;
        v12 = *v9;
        v13 = v10;
        do
        {
          v12 += *(v9 + 2);
          v3 = webrtc::RandomVector::kRandomTable[v12];
          *v11++ = v3;
          --v13;
        }

        while (v13);
        *v9 = v12;
      }

      v8 += v10;
    }

    while (v8 < v7);
  }

  v14 = *(v5 + 104) + *(v5 + 108);
  *(v5 + 108) = v14;
  if (v14 < 1)
  {
    v15 = 1;
  }

  else
  {
    if (v14 == 1)
    {
      goto LABEL_18;
    }

    v15 = -1;
  }

  *(v5 + 104) = v15;
LABEL_18:
  if (*(v5 + 32))
  {
    v16 = 0;
    v189 = &v201[v6];
    v17 = *(v5 + 8 * v14 + 80);
    v191 = *(v5 + 72) - v17;
    v194 = WebRtcSpl_ScaleAndAddVectorsWithRound;
    v192 = &v196 + 2 * v17;
    v18 = v6;
    v187 = -2 * v6;
    v190 = v17 & 0xFFFFFFFFFFFFFFFCLL;
    v186 = &v202[v6];
    v185 = vdupq_n_s32(0x100020u);
    v195 = v17 + *(v5 + 64);
    do
    {
      v19 = *(v5 + 128);
      if (*(v19 - 8) <= v16)
      {
        goto LABEL_172;
      }

      v20 = (v19 + 112 * v16);
      v21 = *(v5 + 108);
      if (v21 == 2)
      {
        operator new[]();
      }

      if (v21 == 1)
      {
        operator new[]();
      }

      if (!v21 && v195)
      {
        v22 = *(v20 + 7);
        v23 = *(v20 + 6);
        v24 = (v23 + *(v20 + 8) - v22) % v23 - v191 >= v195 ? v195 : (v23 + *(v20 + 8) - v22) % v23 - v191;
        v25 = (v22 + v191) % v23;
        v26 = v23 - v25;
        v27 = v23 - v25 >= v24 ? v24 : v23 - v25;
        v3 = memcpy(v201, (*(v20 + 5) + 2 * v25), 2 * v27);
        if (v24 > v26)
        {
          v3 = memcpy(&v201[v27], *(v20 + 5), 2 * (v24 - v27));
        }
      }

      v28 = *(v5 + 28);
      if (v28 == 8000)
      {
        v30 = 27307;
        v31 = 5461;
        v32 = -5461;
        v29 = v17 & 0xFFFFFFFFFFFFFFF0;
        if (*v20 < 820)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v29 = v17 & 0xFFFFFFFFFFFFFFF0;
        if (v28 == 32000)
        {
          v30 = 31208;
          v31 = 1560;
          v32 = -1560;
          if (*v20 < 820)
          {
            goto LABEL_54;
          }
        }

        else if (v28 == 16000)
        {
          v30 = 29789;
          v31 = 2979;
          v32 = -2979;
          if (*v20 < 820)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v30 = 31711;
          v31 = 1057;
          v32 = -1057;
          if (*v20 < 820)
          {
            goto LABEL_54;
          }
        }
      }

      if (v20[17] > 0x2000)
      {
        v33 = *(v5 + 16);
        v34 = *(v33 + 8);
        v35 = *(v33 + 16) - v34;
        if (!v35)
        {
          goto LABEL_172;
        }

        v36 = *(v5 + 64);
        if (v36)
        {
          if (v16 >= v35 >> 3)
          {
            goto LABEL_172;
          }

          v37 = 0;
          v38 = *(v34 + 8 * v16);
          v39 = (*(*v34 + 8) + *(*v34 + 24) - *(*v34 + 16)) % *(*v34 + 8) - v36;
          v41 = v38[1];
          v40 = v38[2];
          v42 = *v38;
          v43 = v201;
          LODWORD(v3) = v31;
          do
          {
            v44 = v39 + v37 + v40;
            if (v44 >= v41)
            {
              v45 = v41;
            }

            else
            {
              v45 = 0;
            }

            v46 = *v43++;
            *(v42 + 2 * (v44 - v45)) = (((v46 * *v20) >> 14) * v3 + v30 * *(v42 + 2 * (v44 - v45)) + 0x4000) >> 15;
            v30 += v32;
            v3 = (v3 + v31);
            ++v37;
            --v36;
          }

          while (v36);
        }
      }

LABEL_54:
      v47 = *(v20 + 2);
      v197 = *(v20 + 6);
      v196 = v47;
      v48 = v20[15];
      if (v48 <= 0)
      {
        v49 = 0;
      }

      else
      {
        v49 = 1 << (v48 - 1);
      }

      if (!v17)
      {
        goto LABEL_77;
      }

      v50 = v20[14];
      if (v17 < 4)
      {
        v51 = 0;
LABEL_69:
        v70 = v17 - v51;
        v71 = 2 * v51;
        v72 = v205 + v51;
        v73 = (v203 + v71);
        do
        {
          v74 = v73->i16[0];
          v73 = (v73 + 2);
          *v72++ = (v49 + v74 * v50) >> v48;
          --v70;
        }

        while (v70);
        goto LABEL_71;
      }

      v52 = vdupq_n_s32(v49);
      v53 = vdupq_n_s32(v48);
      if (v17 >= 0x10)
      {
        v55 = vnegq_s32(v53);
        v56 = v29;
        v57 = v206;
        v58 = &v204;
        do
        {
          v59 = *v58[-2].i8;
          v60 = vdupq_n_s16(v50);
          v61 = vmlal_s16(v52, *v60.i8, *v59.i8);
          v62 = vmlal_high_s16(v52, v60, v59);
          v63 = vmlal_s16(v52, *v60.i8, *v58);
          v64 = vmlal_high_s16(v52, v60, *v58->i8);
          v57[-1] = vuzp1q_s16(vshlq_s32(v61, v55), vshlq_s32(v62, v55));
          *v57 = vuzp1q_s16(vshlq_s32(v63, v55), vshlq_s32(v64, v55));
          v58 += 4;
          v57 += 2;
          v56 -= 16;
        }

        while (v56);
        if (v17 == v29)
        {
          goto LABEL_71;
        }

        v54 = v29;
        v51 = v29;
        if ((v17 & 0xC) == 0)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v54 = 0;
      }

      v65 = (v203 + 2 * v54);
      v66 = (v205 + 2 * v54);
      v67 = v54 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
      v68 = vnegq_s32(v53);
      do
      {
        v69 = *v65++;
        *v66++ = vmovn_s32(vshlq_s32(vmlal_s16(v52, vdup_n_s16(v50), v69), v68));
        v67 += 4;
      }

      while (v67);
      v51 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v17 != v190)
      {
        goto LABEL_69;
      }

LABEL_71:
      v75 = v20[1];
      v76 = v20[7];
      v77 = v20[6];
      v78 = v20[5];
      v79 = v20[4];
      v80 = v20[3];
      v81 = v205;
      v82 = v20[2];
      v83 = &v196 + 3;
      v84 = v17;
      v3 = &v196 + 6;
      LOWORD(v85) = HIWORD(v197);
      do
      {
        v86 = *(v3 + 2);
        v3 += 2;
        v87 = *(v83 - 3) * v76 + *(v83 - 2) * v77 + *(v83 - 1) * v78 + *v83 * v79 + v86 * v80 + v85 * v82;
        v88 = *v81++;
        v89 = v88 * v75 - v87;
        if (v89 <= -134217728)
        {
          v89 = -134217728;
        }

        if (v89 >= 134215679)
        {
          v89 = 134215679;
        }

        v85 = (v89 + 2048) >> 12;
        v83[3] = v85;
        v83 = v3;
        --v84;
      }

      while (v84);
LABEL_77:
      v90 = *v192;
      *(v20 + 6) = *(v192 + 2);
      *(v20 + 2) = v90;
      v91 = *(v5 + 72);
      v92 = 32 - __clz(v91 ^ (v91 >> 31));
      if (v91)
      {
        v93 = v92;
      }

      else
      {
        v93 = 31;
      }

      v94 = 0x100u >> (v93 - 5);
      if (*(v5 + 112))
      {
        v94 = 0;
      }

      v95 = v20[17];
      LODWORD(v96) = (v20[17] - v20[16]) >> (13 - v93);
      v97 = v96;
      if (v17 >= v96)
      {
        v96 = v96;
      }

      else
      {
        v96 = v17;
      }

      if (v96)
      {
        v98 = 0;
        v99 = 0x4000 - v95;
        if (v96 < 0x10)
        {
          goto LABEL_91;
        }

        if (v187 < 0x20)
        {
          goto LABEL_91;
        }

        v98 = v96 & 0xFFFFFFFFFFFFFFF0;
        v100 = v99 + v94 * (v96 & 0xFFFFFFF0);
        v101 = v95 - v94 * (v96 & 0xFFF0);
        v102 = vmlaq_s16(vdupq_n_s16(v99), vdupq_n_s16(v94), xmmword_273B92350);
        v103 = vdupq_n_s16(8 * v94);
        v104 = vmlaq_s16(vdupq_n_s16(v95), vdupq_n_s16(-v94), xmmword_273B92350);
        v105 = vdupq_n_s16(-8 * v94);
        v106 = v202;
        v107 = &v199;
        v108 = v186;
        v109 = v96 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v110 = vaddq_s16(v102, v103);
          v111 = vaddq_s16(v104, v105);
          v112 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(v108[-2], *v104.i8), v107[-2], *v102.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(*v108[-2].i8, v104), *v107[-2].i8, v102), 0xEuLL);
          v113 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v108, *v111.i8), *v107, *v110.i8), 0xEuLL), vmlal_high_s16(vmull_high_s16(*v108->i8, v111), *v107->i8, v110), 0xEuLL);
          v106[-1] = v112;
          *v106 = v113;
          v102 = vaddq_s16(v110, v103);
          v104 = vaddq_s16(v111, v105);
          v108 += 4;
          v107 += 4;
          v106 += 2;
          v109 -= 16;
        }

        while (v109);
        v99 = v100;
        LOWORD(v95) = v101;
        if (v96 != v98)
        {
LABEL_91:
          v114 = v96 - v98;
          v115 = 2 * v98;
          v116 = &v201[v98];
          v117 = &v198[v115];
          v101 = v95;
          do
          {
            v118 = *v117++;
            v3 = (v118 * v99);
            *v116 = (v3 + v116[v18] * v101 + 0x2000) >> 14;
            ++v116;
            v101 -= v94;
            v99 += v94;
            --v114;
          }

          while (v114);
        }

        v20[17] = v101;
        if (v17 <= v97)
        {
LABEL_94:
          v119 = *(v5 + 40);
          if (!v119)
          {
            goto LABEL_102;
          }

          goto LABEL_95;
        }
      }

      else
      {
        v101 = v20[17];
        v20[17] = v95;
        if (v17 <= v97)
        {
          goto LABEL_94;
        }
      }

      if (v94)
      {
        v101 = v20[16];
        v20[17] = v101;
      }

      v3 = v194(&v189[v96], v101, &v198[2 * v96], (0x4000 - v101), 0xEu, &v201[v96], v17 - v96);
      v119 = *(v5 + 40);
      if (!v119)
      {
LABEL_102:
        if (v20[52])
        {
          goto LABEL_143;
        }

LABEL_103:
        if (!v17)
        {
          goto LABEL_112;
        }

        goto LABEL_104;
      }

LABEL_95:
      if (v119 == 3)
      {
        v120 = 1049;
      }

      else
      {
        if (v119 != 7)
        {
          goto LABEL_103;
        }

        v120 = 2097;
      }

      v124 = v120 / v188;
      if (*(v20 + 27) > v124)
      {
        v124 = *(v20 + 27);
      }

      *(v20 + 27) = v124;
      if (!v17)
      {
LABEL_112:
        if (*(v5 + 112))
        {
          goto LABEL_143;
        }

        v125 = *(v20 + 27);
        goto LABEL_139;
      }

LABEL_104:
      v121 = *v20;
      if (v17 < 4)
      {
        v122 = 0;
LABEL_121:
        v133 = v17 - v122;
        v134 = &v201[v122];
        do
        {
          *v134 = (*v134 * v121 + 0x2000) >> 14;
          ++v134;
          --v133;
        }

        while (v133);
        goto LABEL_123;
      }

      if (v17 >= 0x10)
      {
        v126 = vdupq_n_s16(v121);
        v127 = v29;
        v128 = v202;
        do
        {
          v129 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v126.i8, *v128), 0xEuLL), vmull_high_s16(v126, *v128->i8), 0xEuLL);
          *v128[-2].i8 = vrshrn_high_n_s32(vrshrn_n_s32(vmull_s16(*v126.i8, v128[-2]), 0xEuLL), vmull_high_s16(v126, *v128[-2].i8), 0xEuLL);
          *v128->i8 = v129;
          v128 += 4;
          v127 -= 16;
        }

        while (v127);
        if (v17 == v29)
        {
          goto LABEL_123;
        }

        v123 = v29;
        v122 = v29;
        if ((v17 & 0xC) == 0)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v123 = 0;
      }

      v130 = &v201[v123];
      v131 = v123 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
      v132 = vdup_n_s16(v121);
      do
      {
        *v130 = vrshrn_n_s32(vmull_s16(v132, *v130), 0xEuLL);
        ++v130;
        v131 += 4;
      }

      while (v131);
      v122 = v17 & 0xFFFFFFFFFFFFFFFCLL;
      if (v17 != v190)
      {
        goto LABEL_121;
      }

LABEL_123:
      if (*(v5 + 112))
      {
        goto LABEL_143;
      }

      v125 = *(v20 + 27);
      if (v17 >= 4)
      {
        v137 = -v125;
        v138 = vdupq_n_s32(-v125);
        if (v17 < 0x10)
        {
          v139 = 0;
          v140 = 1048608;
LABEL_132:
          v136 = v190 * v137 + 1048608;
          v150 = vmlaq_s32(vdupq_n_s32(v140), v138, xmmword_273B90830);
          v151 = vdupq_n_s32(-4 * v125);
          v152 = &v201[v139];
          v153 = v139 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
          do
          {
            *v152 = vrshrn_n_s32(vmulq_s32(vshrq_n_s32(v150, 6uLL), vmovl_s16(*v152)), 0xEuLL);
            ++v152;
            v150 = vaddq_s32(v150, v151);
            v153 += 4;
          }

          while (v153);
          v135 = v17 & 0xFFFFFFFFFFFFFFFCLL;
          if (v17 == v190)
          {
            goto LABEL_139;
          }

          goto LABEL_137;
        }

        v141 = vmlaq_s32(v185, v138, xmmword_273B92360);
        v142 = vmlaq_s32(v185, v138, xmmword_273B90830);
        v143 = vdupq_n_s32(-8 * v125);
        v140 = v29 * v137 + 1048608;
        v144 = v29;
        v145 = v202;
        do
        {
          v146 = vaddq_s32(v141, v143);
          v147 = vaddq_s32(v142, v143);
          v148 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vshrq_n_s32(v142, 6uLL), vmovl_s16(v145[-2])), 0xEuLL), vmulq_s32(vshrq_n_s32(v141, 6uLL), vmovl_high_s16(*v145[-2].i8)), 0xEuLL);
          v149 = vrshrn_high_n_s32(vrshrn_n_s32(vmulq_s32(vshrq_n_s32(v147, 6uLL), vmovl_s16(*v145)), 0xEuLL), vmulq_s32(vshrq_n_s32(v146, 6uLL), vmovl_high_s16(*v145->i8)), 0xEuLL);
          *v145[-2].i8 = v148;
          *v145->i8 = v149;
          v142 = vaddq_s32(v147, v143);
          v141 = vaddq_s32(v146, v143);
          v145 += 4;
          v144 -= 16;
        }

        while (v144);
        if (v17 == v29)
        {
          goto LABEL_139;
        }

        v139 = v29;
        if ((v17 & 0xC) != 0)
        {
          goto LABEL_132;
        }

        v135 = v29;
        v136 = v29 * v137 + 1048608;
      }

      else
      {
        v135 = 0;
        v136 = 1048608;
      }

LABEL_137:
      v154 = v17 - v135;
      v155 = &v201[v135];
      do
      {
        *v155 = ((v136 >> 6) * *v155 + 0x2000) >> 14;
        ++v155;
        v136 -= v125;
        --v154;
      }

      while (v154);
LABEL_139:
      v156 = (1065353216 - (((v17 << 10) * v125) & 0xFFFF0000)) >> 16;
      v157 = *v20;
      v158 = (v156 * v157 + 0x2000) >> 14;
      if (v119 >= 4 && v157 <= v158)
      {
        LOWORD(v158) = 0;
      }

      *v20 = v158;
LABEL_143:
      v159 = *(v5 + 128);
      if (*(v159 - 8) <= v16)
      {
        goto LABEL_172;
      }

      webrtc::BackgroundNoise::GenerateBackgroundNoise(*(v5 + 48), v203, 750, v16, *(v159 + 112 * v16 + 108), v119 > 199, v17, &v196);
      if (v17)
      {
        if (v17 < 4)
        {
          v160 = 0;
LABEL_156:
          v170 = v17 - v160;
          v171 = v160;
          v172 = &v198[2 * v160 + 4];
          v173 = &v201[v171];
          do
          {
            v174 = *v172++;
            *v173++ += v174;
            --v170;
          }

          while (v170);
          goto LABEL_158;
        }

        if (v17 >= 0x10)
        {
          v162 = v29;
          v163 = &v200;
          v164 = v202;
          do
          {
            v165 = vaddq_s16(*v163, *v164);
            v164[-1] = vaddq_s16(v163[-1], v164[-1]);
            *v164 = v165;
            v164 += 2;
            v163 += 2;
            v162 -= 16;
          }

          while (v162);
          if (v17 == v29)
          {
            goto LABEL_158;
          }

          v161 = v29;
          v160 = v29;
          if ((v17 & 0xC) == 0)
          {
            goto LABEL_156;
          }
        }

        else
        {
          v161 = 0;
        }

        v166 = &v201[v161];
        v167 = &v198[2 * v161 + 4];
        v168 = v161 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          v169 = *v167++;
          *v166 = vadd_s16(v169, *v166);
          ++v166;
          v168 += 4;
        }

        while (v168);
        v160 = v17 & 0xFFFFFFFFFFFFFFFCLL;
        if (v17 != v190)
        {
          goto LABEL_156;
        }
      }

LABEL_158:
      v175 = *(v193 + 8);
      v176 = *(v193 + 16);
      if (!v16)
      {
        if (v176 == v175)
        {
          goto LABEL_172;
        }

        v177 = (*(*v175 + 1) + *(*v175 + 3) - *(*v175 + 2)) % *(*v175 + 1);
        v178 = v17 - v177;
        if (v17 > v177)
        {
          do
          {
            v179 = *v175++;
            webrtc::AudioVector::InsertZerosByPushBack(v179, v178, (*(v179 + 1) + *(v179 + 3) - *(v179 + 2)) % *(v179 + 1));
          }

          while (v175 != v176);
          v175 = *(v193 + 8);
          v176 = *(v193 + 16);
        }
      }

      if (v16 >= v176 - v175)
      {
        goto LABEL_172;
      }

      v3 = webrtc::AudioVector::OverwriteAt(v175[v16++], v201, v17, 0);
    }

    while (v16 < *(v5 + 32));
  }

  v180 = *(v5 + 40);
  if (v180 < 200)
  {
    v181 = v180 + 1;
  }

  else
  {
    v181 = 200;
  }

  *(v5 + 40) = v181;
  v182 = *(v193 + 8);
  if (*(v193 + 16) == v182)
  {
LABEL_172:
    __break(1u);
    webrtc::webrtc_checks_impl::UnreachableCodeReached(v3);
  }

  v183 = *(v5 + 120) + (*(*v182 + 8) + *(*v182 + 24) - *(*v182 + 16)) % *(*v182 + 8);
  if (v183 >= 2 * *(v5 + 28))
  {
    v183 = 2 * *(v5 + 28);
  }

  *(v5 + 120) = v183;
  return 0;
}

uint64_t webrtc::Expand::SetParametersForNormalAfterExpand(webrtc::Expand *this)
{
  *(this + 13) = 0;
  *(this + 112) = 1;
  result = (*(**(this + 7) + 48))(*(this + 7), *(this + 30), *(this + 7));
  v3 = *(this + 7);
  if (v3[64].i8[0] == 1)
  {
    v4 = 1000 * (*&v3[2] - *&v3[34]) / *(this + 7);
    if (v4 >= 150)
    {
      v5.i32[0] = 1;
      v5.i32[1] = v4;
      v3[18] = vadd_s32(v3[18], v5);
      result = atomic_load_explicit(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, memory_order_acquire);
      if (result || (result = webrtc::metrics::HistogramFactoryGetCountsLinear(), v6 = 0, atomic_compare_exchange_strong(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, &v6, result), result))
      {
        result = webrtc::metrics::HistogramAdd(result, v4);
      }
    }

    v3[34] = v3[2];
  }

  return result;
}

uint64_t webrtc::Expand::SetParametersForMergeAfterExpand(uint64_t this)
{
  *(this + 104) = 0xFFFFFFFF00000001;
  *(this + 112) = 1;
  v1 = *(this + 56);
  if (v1[64].i8[0] == 1)
  {
    v2 = 1000 * (*&v1[2] - *&v1[34]) / *(this + 28);
    if (v2 >= 150)
    {
      v3.i32[0] = 1;
      v3.i32[1] = 1000 * (*&v1[2] - *&v1[34]) / *(this + 28);
      v1[18] = vadd_s32(v1[18], v3);
      this = atomic_load_explicit(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, memory_order_acquire);
      if (this || (this = webrtc::metrics::HistogramFactoryGetCountsLinear(), v4 = 0, atomic_compare_exchange_strong(&webrtc::StatisticsCalculator::EndExpandEvent(int)::atomic_histogram_pointer, &v4, this), this))
      {
        this = webrtc::metrics::HistogramAdd(this, v2);
      }
    }

    v1[34] = v1[2];
  }

  return this;
}

uint64_t webrtc::ExpandUmaLogger::UpdateSampleCounter(uint64_t this, unint64_t a2, int a3)
{
  if (*(this + 56) == 1 && (v5 = *(this + 48), v5 <= a2) && *(this + 72) == a3)
  {
    *(this + 64) = a2;
  }

  else
  {
    *(this + 64) = a2;
    *(this + 72) = a3;
    *(this + 48) = a2;
    *(this + 56) = 1;
    v5 = a2;
  }

  if (****(this + 40) - *(**(this + 40) + 8) >= *(*(this + 40) + 8))
  {
    *(this + 48) = a2;
    *(this + 56) = 1;
    if ((*(this + 23) & 0x8000000000000000) != 0)
    {
      v6 = *(this + 24);
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!CountsLinear)
      {
LABEL_10:
        operator new();
      }
    }

    else
    {
      v6 = *(this + 24);
      CountsLinear = webrtc::metrics::HistogramFactoryGetCountsLinear();
      if (!CountsLinear)
      {
        goto LABEL_10;
      }
    }

    webrtc::metrics::HistogramAdd(CountsLinear, 100 * (a2 - v5) / (v6 * a3));
    goto LABEL_10;
  }

  return this;
}

void webrtc::rtcp::ExtendedReports::~ExtendedReports(webrtc::rtcp::ExtendedReports *this)
{
  *this = &unk_288293668;
  if (*(this + 80) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 8) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_288293668;
  if (*(this + 80) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      *(this + 8) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::rtcp::ExtendedReports::Parse(webrtc::rtcp::ExtendedReports *this, const webrtc::rtcp::CommonHeader *a2)
{
  v3 = *(a2 + 1);
  if (v3 <= 3)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
    }

    return 0;
  }

  v12 = *(a2 + 1);
  *(this + 2) = bswap32(*v12);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    v13 = (this + 32);
    *(this + 5) = *(this + 4);
    if (*(this + 80) != 1)
    {
      goto LABEL_6;
    }

LABEL_9:
    v15 = *(v13 + 3);
    if (v15)
    {
      *(this + 8) = v15;
      operator delete(v15);
      v12 = *(a2 + 1);
      v3 = *(a2 + 1);
    }

    *(this + 80) = 0;
    v14 = 1;
    if (v3 < 8)
    {
      return v14;
    }

    goto LABEL_12;
  }

  v13 = (this + 32);
  *(this + 5) = *(this + 4);
  if (*(this + 80) == 1)
  {
    goto LABEL_9;
  }

LABEL_6:
  v14 = 1;
  if (v3 < 8)
  {
    return v14;
  }

LABEL_12:
  v17 = v12 + v3;
  v18 = v12 + 2;
  v19 = v12 + 1;
  while (1)
  {
    v20 = __rev16(*(v19 + 1));
    v21 = &v18[v20];
    if (v21 > v17)
    {
      break;
    }

    v22 = *v19;
    switch(v22)
    {
      case 42:
        if (*(this + 80) == 1)
        {
          v30 = *(v13 + 3);
          if (v30)
          {
            *(this + 8) = v30;
            operator delete(v30);
          }
        }

        *(v13 + 3) = 0;
        *(v13 + 4) = 0;
        *(v13 + 5) = 0;
        *(this + 80) = 1;
        if (v20)
        {
          v31 = v19 + 7;
          do
          {
            v32 = *(v31 - 3);
            v33 = (*(v31 - 2) << 16) | (*(v31 - 1) << 8);
            v34 = *v31;
            v31 += 4;
            LOBYTE(v57) = v32 >> 4;
            BYTE1(v57) = v32 & 0xF;
            HIDWORD(v57) = v33 | v34;
            std::vector<webrtc::rtcp::TargetBitrate::BitrateItem>::push_back[abi:sn200100](v13 + 3, &v57);
            --v20;
          }

          while (v20);
        }

        break;
      case 5:
        if (*(this + 4) == *(this + 5))
        {
          webrtc::rtcp::Dlrr::Parse(v13, v19, v20);
          break;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
LABEL_13:
          webrtc::webrtc_logging_impl::Log("\r\t", v23, v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
        }

        break;
      case 4:
        if (v20 != 2)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v42, v43, v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
          }

          break;
        }

        if (*(this + 24) != 1)
        {
          *(this + 2) = 0;
          *(this + 24) = 1;
          *(this + 2) = bswap64(*(v19 + 1));
          break;
        }

        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          goto LABEL_13;
        }

        break;
      default:
        if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
        {
          v2 = v2 & 0xFFFFFFFF00000000 | 0x2FA;
          webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v35, v36, v37, v38, v39, v40, v41, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
        }

        break;
    }

    v18 = v21 + 1;
    v19 = v21;
    if ((v21 + 1) > v17)
    {
      return 1;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v49, v50, v51, v52, v53, v54, v55, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
  }

  return 0;
}

void webrtc::rtcp::ExtendedReports::SetTargetBitrate(uint64_t a1, char **a2)
{
  v4 = a1 + 56;
  if (*(a1 + 80) == 1 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v5, v6, v7, v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc");
  }

  if (*(a1 + 80) == 1)
  {
    if (v4 != a2)
    {
      v12 = *a2;
      v13 = a2[1];
      v14 = (v13 - *a2) >> 3;

      std::vector<webrtc::rtcp::TargetBitrate::BitrateItem>::__assign_with_size[abi:sn200100]<webrtc::rtcp::TargetBitrate::BitrateItem*,webrtc::rtcp::TargetBitrate::BitrateItem*>(v4, v12, v13, v14);
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    v15 = a2[1] - *a2;
    if (v15)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(a1 + 80) = 1;
  }
}

uint64_t webrtc::rtcp::ExtendedReports::BlockLength(webrtc::rtcp::ExtendedReports *this)
{
  if (*(this + 80) == 1)
  {
    v1 = ((*(this + 8) - *(this + 7)) >> 1) + 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 5) - *(this + 4) + 4;
  if (*(this + 5) == *(this + 4))
  {
    v2 = 0;
  }

  v3 = 8;
  if (*(this + 24))
  {
    v3 = 20;
  }

  return v2 + v3 + v1;
}

uint64_t webrtc::rtcp::ExtendedReports::Create(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v12 = *a3;
  if ((*(*a1 + 16))(a1) + v12 <= a4)
  {
LABEL_4:
    v13 = *a3;
    v14 = (*(*a1 + 16))(a1);
    v15 = (*(*a1 + 16))(a1);
    *(a2 + *a3) = 0x80;
    *(a2 + *a3 + 1) = -49;
    *(a2 + *a3 + 2) = (v15 - 4) >> 10;
    *(a2 + *a3 + 3) = (v15 - 4) >> 2;
    v20 = *a3 + 4;
    *a3 = v20;
    *(a2 + v20) = bswap32(*(a1 + 8));
    v21 = *a3 + 4;
    *a3 = v21;
    if (*(a1 + 24) == 1)
    {
      v22 = a2 + v21;
      *v22 = 33554436;
      v23 = *(a1 + 16);
      *(v22 + 4) = HIBYTE(v23);
      *(v22 + 5) = BYTE6(v23);
      *(v22 + 6) = BYTE5(v23);
      *(v22 + 7) = BYTE4(v23);
      *(v22 + 8) = bswap32(*(a1 + 16));
      v21 = *a3 + 12;
      *a3 = v21;
    }

    if (*(a1 + 32) != *(a1 + 40))
    {
      v24 = a2 + v21;
      *v24 = 5;
      v25 = *(a1 + 40) - *(a1 + 32);
      *(v24 + 2) = v25 >> 10;
      *(v24 + 3) = v25 >> 2;
      v26 = *(a1 + 32);
      v27 = *(a1 + 40);
      if (v26 == v27)
      {
        v29 = *(a1 + 32);
      }

      else
      {
        v28 = (v24 + 4);
        do
        {
          *v28 = bswap32(*v26);
          v28[1] = bswap32(v26[1]);
          v28[2] = bswap32(v26[2]);
          v28 += 3;
          v26 += 3;
        }

        while (v26 != v27);
        v29 = *(a1 + 32);
        v26 = *(a1 + 40);
      }

      v32 = v26 - v29;
      v31 = v32 == 0;
      v33 = v32 + 4;
      if (v31)
      {
        v33 = 0;
      }

      v21 = &v33[*a3];
      *a3 = v21;
    }

    if (*(a1 + 80) != 1)
    {
      goto LABEL_26;
    }

    v34 = (a2 + v21);
    *v34 = 42;
    v34[1] = bswap32(((((*(a1 + 64) - *(a1 + 56)) >> 1) + 4) >> 2) - 1) >> 16;
    v36 = *(a1 + 56);
    v35 = *(a1 + 64);
    if (v36 == v35)
    {
LABEL_24:
      v21 = *(a1 + 80);
      if ((v21 & 1) == 0)
      {
        __break(1u);
LABEL_43:
        webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/rtp_rtcp/source/rtcp_packet/extended_reports.cc", 157, "*index == index_end", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, v16, v17, v18, v19, v21);
        return std::vector<webrtc::rtcp::ReceiveTimeInfo>::push_back[abi:sn200100](v64, v65);
      }

      v21 = *a3 + ((*(a1 + 64) - *(a1 + 56)) >> 1) + 4;
      *a3 = v21;
LABEL_26:
      if (v21 == v14 + v13)
      {
        return 1;
      }

      goto LABEL_43;
    }

    v37 = v35 - v36 - 8;
    if (v37 < 0x40 || (v38 = v37 >> 3, a2 + v21 + 4 < v36 + (v37 & 0xFFFFFFFFFFFFFFF8) + 8) && v36 < a2 + v21 + 4 * v38 + 8)
    {
      v39 = 4;
      goto LABEL_22;
    }

    v42 = v38 + 1;
    if (v37 >= 0x80)
    {
      v44 = 16;
      if ((v42 & 0xF) != 0)
      {
        v44 = v42 & 0xF;
      }

      v43 = v42 - v44;
      v45 = v36 + 4;
      v46 = (v21 + a2 + 4);
      v16 = v42 - v44;
      do
      {
        v68 = *(v45 - 4);
        v69 = *(v45 + 28);
        v70 = *(v45 + 60);
        v71 = *(v45 + 92);
        v47 = v45;
        v48 = vld2q_f32(v47);
        v47 += 8;
        v18 = (v45 + 64);
        v49 = vld2q_f32(v18);
        v50 = vqtbl2q_s8(v70, xmmword_273B92E60);
        v51.i32[0] = vqtbl2q_s8(v68, xmmword_273B92E80).u32[0];
        v50.i32[3] = vqtbl2q_s8(v71, xmmword_273B92E50).i32[3];
        v51.i32[1] = vqtbl2q_s8(v69, xmmword_273B92E70).i32[1];
        v70.val[0] = vqtbl2q_s8(v70, xmmword_273B92EA0);
        v70.val[0].i32[3] = vqtbl2q_s8(v71, xmmword_273B92E90).i32[3];
        v70.val[1] = vld2q_f32(v47);
        v68.val[0].i32[0] = vqtbl2q_s8(v68, xmmword_273B92EC0).u32[0];
        v68.val[0].i32[1] = vqtbl2q_s8(v69, xmmword_273B92EB0).i32[1];
        v17 = (v45 + 96);
        v51.i64[1] = v50.i64[1];
        v68.val[1] = vld2q_f32(v17);
        v68.val[0].i64[1] = v70.val[0].i64[1];
        v72.val[0] = vshrq_n_u32(v48, 0x10uLL);
        v72.val[3] = vshrq_n_u32(v68.val[1], 0x10uLL);
        v72.val[2] = vshrq_n_u32(v49, 0x10uLL);
        v72.val[1] = vshrq_n_u32(v70.val[1], 0x10uLL);
        *v70.val[0].i8 = vshr_n_u16(vmovn_s32(v49), 8uLL);
        v70.val[0].u64[1] = vshr_n_u16(vmovn_s32(v68.val[1]), 8uLL);
        *v69.val[1].i8 = vshr_n_u16(vmovn_s32(v48), 8uLL);
        v69.val[1].u64[1] = vshr_n_u16(vmovn_s32(v70.val[1]), 8uLL);
        v74.val[0] = vorrq_s8(vshlq_n_s8(v51, 4uLL), v68.val[0]);
        v74.val[1] = vqtbl4q_s8(v72, xmmword_273B8E8C0);
        v74.val[2] = vuzp1q_s8(v69.val[1], v70.val[0]);
        v74.val[3] = vuzp1q_s8(vuzp1q_s16(v48, v70.val[1]), vuzp1q_s16(v49, v68.val[1]));
        vst4q_s8(v46, v74);
        v46 += 64;
        v45 += 128;
        v16 -= 16;
      }

      while (v16);
      if (v44 < 9)
      {
        v36 += 8 * v43;
        v39 = 4 * v43 + 4;
LABEL_22:
        v40 = (v39 + v21 + a2 + 1);
        do
        {
          *(v40 - 1) = *(v36 + 1) | (16 * *v36);
          v41 = *(v36 + 4);
          *v40 = BYTE2(v41);
          v40[1] = BYTE1(v41);
          v40[2] = v41;
          v36 += 8;
          v40 += 4;
        }

        while (v36 != v35);
        goto LABEL_24;
      }
    }

    else
    {
      v43 = 0;
    }

    if ((v42 & 7) != 0)
    {
      v52 = v42 & 7;
    }

    else
    {
      v52 = 8;
    }

    v53 = v42 - v52;
    v39 = 4 * (v42 - v52) + 4;
    v54 = v36 + 8 * v53;
    v55 = v36 + 8 * v43 + 4;
    v56 = (v21 + 4 * v43 + a2 + 4);
    v57 = ~v38 + v43 + v52;
    do
    {
      v66 = *(v55 - 4);
      v67 = *(v55 + 28);
      v58.i32[0] = vqtbl2q_s8(v66, xmmword_273B92E80).u32[0];
      v58.i32[1] = vqtbl2q_s8(v67, xmmword_273B92E70).i32[1];
      v66.val[0].i32[0] = vqtbl2q_s8(v66, xmmword_273B92EC0).u32[0];
      v59 = v55;
      v73.val[2] = vld2q_f32(v59);
      v59 += 8;
      v66.val[0].i32[1] = vqtbl2q_s8(v67, xmmword_273B92EB0).i32[1];
      v67.val[0] = vld2q_f32(v59);
      v60 = vorr_s8(vshl_n_s8(v58, 4uLL), *v66.val[0].i8);
      v66.val[0] = vshrq_n_u32(v73.val[2], 0x10uLL);
      v66.val[1] = vshrq_n_u32(v67.val[0], 0x10uLL);
      v61 = vqtbl2q_s8(v66, xmmword_273B92ED0).u64[0];
      v73.val[0] = vshrq_n_u32(v73.val[2], 8uLL);
      v73.val[1] = vshrq_n_u32(v67.val[0], 8uLL);
      v73.val[3] = v67.val[0];
      v62 = vqtbl4q_s8(v73, xmmword_273B8E8C0);
      v63 = vextq_s8(v62, v62, 8uLL).u64[0];
      vst4_s8(v56, *v60.i8);
      v56 += 32;
      v55 += 64;
      v57 += 8;
    }

    while (v57);
    v36 = v54;
    goto LABEL_22;
  }

  while (*a3)
  {
    a6(a5, a2);
    *a3 = 0;
    if ((*(*a1 + 16))(a1) <= a4)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *std::vector<webrtc::rtcp::ReceiveTimeInfo>::push_back[abi:sn200100](void *result, uint64_t *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 2) + 1;
    if (v5 > 0x1555555555555555)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 2);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v5)
    {
      if (v5 <= 0x1555555555555555)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 12;
  return result;
}

void absl::str_format_internal::FlagsToString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = a1 & 1;
  if (a1)
  {
    if (a2 <= "-" && a2 + v4 > "-")
    {
      goto LABEL_96;
    }

    memcpy(a2, "-", v4);
    v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (v5 < 0)
    {
      a2->__r_.__value_.__l.__size_ = v4;
      size = v4;
    }

    else
    {
      v5 = 1;
      *(&a2->__r_.__value_.__s + 23) = 1;
      size = a2->__r_.__value_.__l.__size_;
    }

    a2->__r_.__value_.__s.__data_[v4] = 0;
    v7 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    size = 0;
    v5 = 0;
    v7 = -1;
  }

  v8 = (a1 >> 1) & 1;
  if (v5 >= 0)
  {
    v9 = 22;
  }

  else
  {
    v9 = v7;
  }

  if (v5 >= 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = size;
  }

  if (v9 - v10 >= v8)
  {
    if ((a1 & 2) != 0)
    {
      if (v5 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = a2->__r_.__value_.__r.__words[0];
      }

      v13 = v12 + v10;
      if (v12 + v10 <= "+" && &v13[v8] > "+")
      {
        goto LABEL_96;
      }

      memcpy(v13, "+", (a1 >> 1) & 1);
      v14 = v10 + ((a1 >> 1) & 1);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v14;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v14 & 0x7F;
      }

      v12->__r_.__value_.__s.__data_[v14] = 0;
    }
  }

  else
  {
    if ((a1 & 2) != 0)
    {
      v11 = "+";
    }

    else
    {
      v11 = "";
    }

    std::string::__grow_by_and_replace(a2, v9, v10 + v8 - v9, v10, v10, 0, v8, v11);
  }

  v15 = (a1 >> 2) & 1;
  v16 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v16 >= 0)
  {
    v17 = 22;
  }

  else
  {
    v17 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v16 >= 0)
  {
    v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = a2->__r_.__value_.__l.__size_;
  }

  if (v17 - v18 >= v15)
  {
    if ((a1 & 4) != 0)
    {
      if (v16 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = a2->__r_.__value_.__r.__words[0];
      }

      v21 = v20 + v18;
      if (v20 + v18 <= " " && &v21[v15] > " ")
      {
        goto LABEL_96;
      }

      memcpy(v21, " ", (a1 >> 2) & 1);
      v22 = v18 + ((a1 >> 2) & 1);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v22;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v22 & 0x7F;
      }

      v20->__r_.__value_.__s.__data_[v22] = 0;
    }
  }

  else
  {
    if ((a1 & 4) != 0)
    {
      v19 = " ";
    }

    else
    {
      v19 = "";
    }

    std::string::__grow_by_and_replace(a2, v17, v18 + v15 - v17, v18, v18, 0, v15, v19);
  }

  v23 = (a1 >> 3) & 1;
  v24 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v24 >= 0)
  {
    v25 = 22;
  }

  else
  {
    v25 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v24 >= 0)
  {
    v26 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = a2->__r_.__value_.__l.__size_;
  }

  if (v25 - v26 >= v23)
  {
    if ((a1 & 8) != 0)
    {
      if (v24 >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = a2->__r_.__value_.__r.__words[0];
      }

      v29 = v28 + v26;
      if (v28 + v26 <= "#" && &v29[v23] > "#")
      {
        goto LABEL_96;
      }

      memcpy(v29, "#", (a1 >> 3) & 1);
      v30 = v26 + ((a1 >> 3) & 1);
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        a2->__r_.__value_.__l.__size_ = v30;
      }

      else
      {
        *(&a2->__r_.__value_.__s + 23) = v30 & 0x7F;
      }

      v28->__r_.__value_.__s.__data_[v30] = 0;
    }
  }

  else
  {
    if ((a1 & 8) != 0)
    {
      v27 = "#";
    }

    else
    {
      v27 = "";
    }

    std::string::__grow_by_and_replace(a2, v25, v26 + v23 - v25, v26, v26, 0, v23, v27);
  }

  v31 = a1 & 0x10;
  v32 = (a1 >> 4) & 1;
  v33 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v33 >= 0)
  {
    v34 = 22;
  }

  else
  {
    v34 = (a2->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if (v33 >= 0)
  {
    v35 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = a2->__r_.__value_.__l.__size_;
  }

  if (v34 - v35 < v32)
  {
    if (v31)
    {
      v36 = "0";
    }

    else
    {
      v36 = "";
    }

    std::string::__grow_by_and_replace(a2, v34, v35 + v32 - v34, v35, v35, 0, v32, v36);
    return;
  }

  if (!v31)
  {
    return;
  }

  if (v33 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = a2->__r_.__value_.__r.__words[0];
  }

  v38 = v37 + v35;
  if (v37 + v35 <= "0" && &v38[v32] > "0")
  {
LABEL_96:
    __break(1u);
    return;
  }

  v39 = v32;
  memcpy(v38, "0", v32);
  v40 = v35 + v39;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v40;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v40 & 0x7F;
  }

  v37->__r_.__value_.__s.__data_[v40] = 0;
}

uint64_t absl::str_format_internal::FormatSinkImpl::PutPaddedString(uint64_t result, const void *a2, unint64_t a3, int a4, unsigned int a5, char a6)
{
  v6 = a3;
  v7 = result;
  if ((a5 & 0x80000000) != 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }
  }

  else if (a3 >= a5)
  {
    v6 = a5;
  }

  if (!a2 && v6)
  {
    goto LABEL_45;
  }

  v8 = a4 & ~(a4 >> 31);
  if (v8 >= v6)
  {
    v9 = v8 - v6;
  }

  else
  {
    v9 = 0;
  }

  if ((a6 & 1) == 0)
  {
    if (v6 < v8)
    {
      result = *(result + 24);
      v7[2] += v9;
      v10 = (v7 + 132);
      v11 = v7 - result + 1056;
      v12 = a2;
      v13 = v9 - v11;
      if (v9 <= v11)
      {
        v13 = v9;
        v14 = result;
      }

      else
      {
        v14 = v7 + 4;
        if (v10 == result)
        {
          v16 = v10 - v14;
          if (v10 - v14 < 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          result = memset(result, 32, v7 - result + 1056);
          v15 = &v11[v7[3]];
          v7[3] = v15;
          v16 = v15 - v14;
          if (v15 - v14 < 0)
          {
            goto LABEL_45;
          }
        }

        (v7[1])(*v7, v7 + 4, v16);
        v7[3] = v14;
        if (v13 >= 0x401)
        {
          do
          {
            v13 -= 1024;
            memset(v7 + 4, 32, 0x400uLL);
            v7[3] = v10;
            (v7[1])(*v7, v7 + 4, 1024);
            v7[3] = v14;
          }

          while (v13 > 0x400);
        }
      }

      memset(v14, 32, v13);
      v7[3] += v13;
      a2 = v12;
    }

    if (v6)
    {
      result = v7[3];
      v7[2] += v6;
      if (v6 < v7 - result + 1056)
      {
        memcpy(result, a2, v6);
LABEL_43:
        v7[3] += v6;
        return 1;
      }

      if (result - (v7 + 4) < 0)
      {
        goto LABEL_45;
      }

      v23 = a2;
      (v7[1])(*v7, v7 + 4, result - (v7 + 4));
      v7[3] = v7 + 4;
      (v7[1])(*v7, v23, v6);
    }

    return 1;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  result = *(result + 24);
  v7[2] += v6;
  if (v6 >= v7 - result + 1056)
  {
    if (result - (v7 + 4) < 0)
    {
      goto LABEL_45;
    }

    v17 = a2;
    (v7[1])(*v7, v7 + 4, result - (v7 + 4));
    v7[3] = v7 + 4;
    (v7[1])(*v7, v17, v6);
    if (v6 < v8)
    {
      goto LABEL_24;
    }

    return 1;
  }

  memcpy(result, a2, v6);
  v7[3] += v6;
LABEL_15:
  if (v6 >= v8)
  {
    return 1;
  }

LABEL_24:
  result = v7[3];
  v7[2] += v9;
  v18 = (v7 + 132);
  v19 = v7 - result + 1056;
  v6 = v9 - v19;
  if (v9 <= v19)
  {
    v6 = v9;
    v20 = result;
LABEL_42:
    memset(v20, 32, v6);
    goto LABEL_43;
  }

  v20 = v7 + 4;
  if (v18 != result)
  {
    result = memset(result, 32, v7 - result + 1056);
    v21 = &v19[v7[3]];
    v7[3] = v21;
    v22 = v21 - v20;
    if (v21 - v20 < 0)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v22 = v18 - v20;
  if (v18 - v20 >= 0)
  {
LABEL_40:
    (v7[1])(*v7, v7 + 4, v22);
    v7[3] = v20;
    if (v6 >= 0x401)
    {
      do
      {
        v6 -= 1024;
        memset(v7 + 4, 32, 0x400uLL);
        v7[3] = v18;
        (v7[1])(*v7, v7 + 4, 1024);
        v7[3] = v20;
      }

      while (v6 > 0x400);
    }

    goto LABEL_42;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t external_hmac_alloc(uint64_t a1, int a2, int a3)
{
  result = 2;
  if (a2 <= 20 && a3 <= 20)
  {
    operator new[]();
  }

  return result;
}

uint64_t external_hmac_dealloc(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  MEMORY[0x2743DA520]();
  return 0;
}

uint64_t external_hmac_init(void *a1, const unsigned __int8 *a2, int a3)
{
  if (a3 > 20)
  {
    return 2;
  }

  memcpy(a1, a2, a3);
  result = 0;
  *(a1 + 5) = a3;
  return result;
}

uint64_t external_crypto_init(void)
{
  result = srtp_replace_auth_type(external_hmac, 4);
  if (result)
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v1, v2, v3, v4, v5, v6, v7, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/external_hmac.cc");
    }

    return 1;
  }

  return result;
}

void webrtc::rnn_vad::FeaturesExtractor::FeaturesExtractor(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 20) = 1065167899;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  operator new();
}

void webrtc::rnn_vad::FeaturesExtractor::~FeaturesExtractor(webrtc::rnn_vad::FeaturesExtractor *this)
{
  webrtc::rnn_vad::SpectralFeaturesExtractor::~SpectralFeaturesExtractor((this + 256));
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  webrtc::rnn_vad::AutoCorrelationCalculator::~AutoCorrelationCalculator((this + 120));
  v5 = *(this + 9);
  if (v5)
  {
    *(this + 10) = v5;
    operator delete(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
  }
}

BOOL webrtc::rnn_vad::FeaturesExtractor::CheckSilenceComputeFeatures(uint64_t a1, float *a2, float32x2_t *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    v5 = 0;
    v6 = *(a1 + 4);
    v7 = *(a1 + 8);
    v9 = *(a1 + 32);
    v8 = *(a1 + 36);
    v11 = *(a1 + 24);
    v10 = *(a1 + 28);
    v12 = *(a1 + 12);
    v13 = -*(a1 + 16);
    v14 = -*(a1 + 20);
    do
    {
      v15 = v10;
      v10 = v11;
      v16 = v8;
      v8 = v9;
      v11 = a2[v5];
      v9 = ((((v7 * v10) + (v6 * v11)) + (v12 * v15)) + (v13 * v9)) + (v14 * v16);
      v31[v5++] = v9;
    }

    while (v5 != 240);
    *(a1 + 32) = v9;
    *(a1 + 36) = v8;
    *(a1 + 24) = v11;
    *(a1 + 28) = v10;
    memmove(*(a1 + 40), (*(a1 + 40) + 960), 0x9C0uLL);
    v17 = (*(a1 + 40) + 2496);
    v18 = v31;
  }

  else
  {
    memmove(*(a1 + 40), (*(a1 + 40) + 960), 0x9C0uLL);
    v17 = (*(a1 + 40) + 2496);
    v18 = a2;
  }

  memcpy(v17, v18, 0x3C0uLL);
  webrtc::rnn_vad::ComputeAndPostProcessLpcCoefficients(*(a1 + 64), 864, v31, v20, v21, v22, v23, v24, v25, v26);
  webrtc::rnn_vad::ComputeLpResidual(v31, *(a1 + 64), 864, *(a1 + 96), 0x360uLL);
  v27 = webrtc::rnn_vad::PitchEstimator::Estimate((a1 + 104), *(a1 + 96));
  *(a1 + 4376) = v27;
  a3[20].f32[0] = (v27 - 300) * 0.01;
  v28 = 384 - v27 / 2;
  if (v28 > 0x35F)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(a1 + 64) + 4 * v28;
  }

  return webrtc::rnn_vad::SpectralFeaturesExtractor::CheckSilenceComputeFeatures(a1 + 256, *(a1 + 248), v29, &a3[3], a3, &a3[11], &a3[14], a3 + 17, &a3[20] + 1);
}

void webrtc::FecControllerDefault::FecControllerDefault(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2882936E0;
  v4 = *a2;
  *(a1 + 8) = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v5;
  *(a1 + 48) = a3;
  pthread_mutexattr_init(&v6);
  pthread_mutexattr_setpolicy_np(&v6, 3);
  pthread_mutex_init((a1 + 56), &v6);
  pthread_mutexattr_destroy(&v6);
  operator new();
}

float webrtc::FecControllerDefault::GetProtectionOverheadRateThreshold(webrtc::FecControllerDefault *this)
{
  (*(**(this + 2) + 16))(__p);
  if (v23 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = strtof(v1, 0);
  if ((v23 & 0x80000000) == 0)
  {
    v3 = 1.0;
    if (v2 > 0.0 && v2 <= 1.0)
    {
      goto LABEL_22;
    }

LABEL_10:
    v5 = v2 >= 0.0 && v2 <= v3;
    if (!v5 && (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v6, v7, v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/fec_controller_default.cc");
    }

    return 0.5;
  }

  operator delete(__p[0]);
  v3 = 1.0;
  if (v2 <= 0.0 || v2 > 1.0)
  {
    goto LABEL_10;
  }

LABEL_22:
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    return v2;
  }

  webrtc::webrtc_logging_impl::Log("\r\t\a", v15, v16, v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/fec_controller_default.cc");
  return v2;
}

void webrtc::FecControllerDefault::~FecControllerDefault(webrtc::FecControllerDefault *this)
{
  *this = &unk_2882936E0;
  v2 = *(this + 15);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (!v3)
  {
    *(this + 15) = 0;
    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_6:
    (*(*v4 + 8))(v4);
    v5 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    goto LABEL_8;
  }

  (*(*v3 + 8))(v3);
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_8:
  v6 = *v2;
  if (*v2 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x2743DA540](v2, 0x1060C401E828CA0);
LABEL_12:
  pthread_mutex_destroy((this + 56));
  v7 = *(this + 1);
  if (v7)
  {
    if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 8))(v7);
    }
  }
}

{
  *this = &unk_2882936E0;
  v2 = *(this + 15);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
    v2 = *(this + 15);
    *(this + 15) = 0;
    if (!v2)
    {
      goto LABEL_12;
    }

    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (!v4)
    {
LABEL_8:
      v6 = *v2;
      if (*v2 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 8))(v6);
      }

      MEMORY[0x2743DA540](v2, 0x1060C401E828CA0);
LABEL_12:
      pthread_mutex_destroy((this + 56));
      v7 = *(this + 1);
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v7 + 8))(v7);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *(this + 15) = 0;
    v4 = *(v2 + 40);
    *(v2 + 40) = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  (*(*v4 + 8))(v4);
  v5 = *(v2 + 40);
  *(v2 + 40) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  goto LABEL_8;
}

uint64_t webrtc::FecControllerDefault::SetEncodingData(webrtc::FecControllerDefault *this, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  pthread_mutex_lock((this + 56));
  v10 = *(this + 15);
  *(v10 + 360) = a2;
  *(v10 + 368) = a3;
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  *(v10 + 376) = v11;
  *(this + 16) = a5;

  return pthread_mutex_unlock((this + 56));
}

uint64_t webrtc::FecControllerDefault::UpdateFecRates(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v10 = a2 / 1000.0;
  if (a3 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  pthread_mutex_lock((a1 + 56));
  v12 = *(a1 + 120);
  *(v12 + 96) = a6;
  *(v12 + 108) = v10;
  *(v12 + 112) = v11;
  v13 = (*(**(a1 + 24) + 16))(*(a1 + 24));
  v14 = v13 / 0x3E8uLL;
  if (v13 % 0x3E8uLL > 0x1F3)
  {
    ++v14;
  }

  if (-v13 % 0x3E8uLL <= 0x1F4)
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  if (v13 < 0)
  {
    v16 = v15 - -v13 / 0x3E8uLL;
  }

  else
  {
    v16 = v14;
  }

  v17 = webrtc::media_optimization::VCMLossProtectionLogic::FilteredLoss(v12, v16, 2, a4);
  v18 = *(a1 + 120);
  v19 = v17 / 255.0;
  *(v18 + 104) = v19;
  v20 = *(v18 + 40);
  if (v20 && v20[7] != 3)
  {
    *(v18 + 48) = *(v18 + 96);
    v21 = v18 + 48;
    v22 = *(v21 + 60);
    *(v21 + 8) = v19;
    *(v21 + 12) = v22;
    v23 = *(v21 + 64);
    *(v21 + 32) = *(v21 + 73);
    LODWORD(v24) = *(v21 + 288);
    DWORD1(v24) = *(v21 + 300);
    *(&v24 + 1) = v23;
    *(v21 + 33) = *(v21 + 72);
    *(v21 + 16) = v24;
    v25 = *(v21 + 320);
    *(v21 + 34) = *(v21 + 312);
    *(v21 + 36) = v25;
    *(v21 + 40) = *(v21 + 328);
    (*(*v20 + 16))(v20);
    (*(**(*(a1 + 120) + 40) + 32))(*(*(a1 + 120) + 40));
    (*(**(*(a1 + 120) + 40) + 40))(*(*(a1 + 120) + 40));
    (*(**(*(a1 + 120) + 40) + 64))(*(*(a1 + 120) + 40));
    (*(**(*(a1 + 120) + 40) + 64))(*(*(a1 + 120) + 40));
    pthread_mutex_unlock((a1 + 56));
    (***(a1 + 48))();
    v26 = 0.0;
    if (*(a1 + 136) < 0.0)
    {
      v26 = *(a1 + 136);
    }

    return ((1.0 - v26) * v8);
  }

  else
  {
    pthread_mutex_unlock((a1 + 56));
  }

  return v8;
}

uint64_t webrtc::FecControllerDefault::SetProtectionMethod(webrtc::FecControllerDefault *this, int a2, int a3)
{
  if ((a2 & a3) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  if (a3)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  pthread_mutex_lock((this + 56));
  webrtc::media_optimization::VCMLossProtectionLogic::SetMethod(*(this + 15), v6);

  return pthread_mutex_unlock((this + 56));
}

uint64_t webrtc::FecControllerDefault::UpdateWithEncodedData(uint64_t a1, unint64_t a2, int a3)
{
  pthread_mutex_lock((a1 + 56));
  if (a2)
  {
    v6 = *(a1 + 128);
    if (!v6)
    {
      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v7 = a2;
      goto LABEL_25;
    }

    v7 = a2;
    v8 = a2 / v6;
    v9 = *(a1 + 120);
    v10 = (*(**(a1 + 24) + 16))(*(a1 + 24));
    v11 = v10 / 0x3E8uLL;
    v12 = v10 % 0x3E8uLL;
    if (a3 == 3)
    {
      if (v12 > 0x1F3)
      {
        ++v11;
      }

      if (-v10 % 0x3E8uLL <= 0x1F4)
      {
        v13 = 0;
      }

      else
      {
        v13 = -1;
      }

      if (v10 < 0)
      {
        v14 = v13 - -v10 / 0x3E8uLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = *(v9 + 348);
      if (v15 != -1.0)
      {
        v16 = v14 - *(v9 + 144);
        v17 = *(v9 + 344);
        if (v16 != 1)
        {
          v17 = powf(v17, v16);
        }

        v8 = (v8 * (1.0 - v17)) + (v17 * v15);
      }

      v18 = *(v9 + 352);
      if (v8 <= v18 || v18 == -1.0)
      {
        v18 = v8;
      }

      *(v9 + 348) = v18;
      *(v9 + 144) = v14;
LABEL_25:
      *(*(a1 + 120) + 116) = v7;
      goto LABEL_45;
    }

    if (v12 > 0x1F3)
    {
      ++v11;
    }

    if (-v10 % 0x3E8uLL <= 0x1F4)
    {
      v20 = 0;
    }

    else
    {
      v20 = -1;
    }

    if (v10 < 0)
    {
      v21 = v20 - -v10 / 0x3E8uLL;
    }

    else
    {
      v21 = v11;
    }

    v22 = *(v9 + 336);
    if (v22 != -1.0)
    {
      v23 = v21 - *(v9 + 136);
      v24 = *(v9 + 332);
      if (v23 != 1)
      {
        v24 = powf(v24, v23);
      }

      v8 = (v8 * (1.0 - v24)) + (v24 * v22);
    }

    v25 = *(v9 + 340);
    if (v8 <= v25 || v25 == -1.0)
    {
      v25 = v8;
    }

    *(v9 + 336) = v25;
    *(v9 + 136) = v21;
  }

LABEL_45:

  return pthread_mutex_unlock((a1 + 56));
}

void *webrtc::CopyOnWriteBuffer::SetData<unsigned char,(void *)0>(void *result, void *__src, size_t __n)
{
  v4 = result;
  if (*result)
  {
    if (atomic_load_explicit((*result + 24), memory_order_acquire) != 1)
    {
      operator new();
    }

    v5 = *result;
    **result = 0;
    if (__n)
    {
      if (*(v5 + 8) < __n)
      {
        operator new[]();
      }

      result = memcpy(*(v5 + 16), __src, __n);
      *v5 = __n;
    }
  }

  else
  {
    if (__n)
    {
      operator new();
    }

    *result = 0;
  }

  v4[1] = 0;
  v4[2] = __n;
  return result;
}

void webrtc::WebRtc_rdft(webrtc *this, int a2, unint64_t *a3, int64x2_t *a4, unint64_t *a5, float *a6)
{
  v11 = a4->i64[0];
  v12 = this >> 2;
  if (this <= 4 * a4->i64[0])
  {
    v23 = a4->u64[1];
    if (this <= 4 * v23)
    {
      goto LABEL_8;
    }

LABEL_15:
    a4->i64[1] = v12;
    if (this < 8 || (v39 = a5 + v11, v40 = atanf(1.0) / (this >> 3), v41 = cosf(v40 * (this >> 3)), *v39 = v41, v39[this >> 3] = v41 * 0.5, this < 0x10))
    {
      v23 = v12;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v224 = a3;
      v42 = 4 * v12 - 4;
      v43 = 1;
      do
      {
        v44 = __sincosf_stret(v40 * v43);
        v39[v43] = v44.__cosval * 0.5;
        *(v39 + v42) = v44.__sinval * 0.5;
        ++v43;
        v42 -= 4;
      }

      while (this >> 3 != v43);
      v23 = v12;
      a3 = v224;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_22;
  }

  a4->i64[0] = v12;
  a4->i64[1] = 1;
  if (this >= 0xC)
  {
    v13 = this >> 3;
    v14 = atanf(1.0) / (this >> 3);
    *a5 = 1065353216;
    v15 = cosf(v14 * v13);
    v16 = a5 + v13;
    *v16 = v15;
    v16[1] = v15;
    if (this >= 0x18)
    {
      v17 = 4 * v12 - 8;
      v18 = 2;
      v19 = 1;
      do
      {
        v21 = __sincosf_stret(v14 * v18);
        v22 = &a5[v19];
        *v22 = v21.__cosval;
        v22[1] = v21.__sinval;
        *(a5 + v17) = v21;
        v18 += 2;
        v17 -= 8;
        ++v19;
      }

      while (v18 < v13);
    }
  }

  v11 = v12;
  v23 = a4->u64[1];
  if (this > 4 * v23)
  {
    goto LABEL_15;
  }

LABEL_8:
  if ((a2 & 0x80000000) == 0)
  {
LABEL_9:
    if (this < 5)
    {
      if (this == 4)
      {
      }
    }

    else
    {
      if (this != 5)
      {
        v24 = 0;
        v25 = a5 + 4 * v11;
        v26 = a3 + this - 1;
        v27 = a3 + 3;
        v28 = 2;
        do
        {
          v24 += 2 * v23 / (this >> 1);
          v29 = 0.5 - *&v25[4 * (v23 - v24)];
          v30 = *&v25[4 * v24];
          v31 = *(v27 - 1);
          v32 = v31 - *(v26 - 1);
          v33 = *v27 + *v26;
          v34 = (v29 * v32) - (v30 * v33);
          v35 = (v30 * v32) + (v29 * v33);
          v36 = v31 - v34;
          v37 = *v27 - v35;
          *(v27 - 1) = v36;
          *v27 = v37;
          v38 = *v26 - v35;
          *(v26 - 1) = *(v26 - 1) + v34;
          *v26 = v38;
          v28 += 2;
          v26 -= 2;
          v27 += 2;
        }

        while (v28 < this >> 1);
      }
    }

    v88 = *(a3 + 1);
    v89 = *a3 - v88;
    *a3 = *a3 + v88;
    *(a3 + 1) = v89;
    return;
  }

LABEL_22:
  v45 = (*a3 - *(a3 + 1)) * 0.5;
  *a3 = *a3 - v45;
  *(a3 + 1) = v45;
  if (this >= 5)
  {
    *(a3 + 1) = -v45;
    v46 = this >> 1;
    if (this != 5)
    {
      v47 = 0;
      v48 = a5 + 4 * v11;
      v49 = a3 + this - 1;
      v50 = a3 + 3;
      v51 = 2;
      do
      {
        v47 += 2 * v23 / v46;
        v52 = 0.5 - *&v48[4 * (v23 - v47)];
        v53 = *&v48[4 * v47];
        v54 = *(v50 - 1);
        v55 = v54 - *(v49 - 1);
        v56 = *v50 + *v49;
        v57 = (v53 * v56) + (v52 * v55);
        v58 = (v52 * v56) - (v53 * v55);
        v59 = v54 - v57;
        v60 = v58 - *v50;
        *(v50 - 1) = v59;
        *v50 = v60;
        v61 = v58 - *v49;
        *(v49 - 1) = *(v49 - 1) + v57;
        *v49 = v61;
        v51 += 2;
        v49 -= 2;
        v50 += 2;
      }

      while (v51 < v46);
    }

    *(a3 + v46 + 1) = -*(a3 + v46 + 1);
    if (this < 9)
    {
      v66 = 2;
      v67 = 8;
      if (this == 8)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (this < 0x21)
      {
        v66 = 8;
        v67 = 32;
        if (this == 32)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v64 = 8;
        v65 = 32;
        do
        {
          v66 = v65;
          v65 = 4 * v66;
          v64 = v66;
        }

        while (4 * v66 < this);
        v67 = 4 * v66;
        if ((4 * v66) == this)
        {
LABEL_31:
          if (!v66)
          {
            return;
          }

          v68 = v66 - 1;
          v69 = 8 * v66;
          if (v66 - 1 >= 0x46)
          {
            v70 = 0;
            v98 = (4 * v68) & 0xFFFFFFFFFFFFFFF8;
            if ((a3 + v98) >= a3 && a3 + v98 + 4 >= a3 + 4 && (&a3[v69 / 8] + v98) >= &a3[v69 / 8] && &a3[v69 / 8] + v98 + 4 >= &a3[v69 / 8] + 4 && a3 + v67 + v98 >= a3 + v67 && a3 + v67 + v98 + 4 >= a3 + v67 + 4)
            {
              v99 = 12 * v66;
              v100 = a3 + 12 * v66;
              if (&v100[v98 + 4] >= v100 + 4 && &v100[v98] >= v100 && !(v68 >> 62))
              {
                v70 = 0;
                v101 = (v67 - 4) & 0xFFFFFFFFFFFFFFF8;
                v102 = (a3 + v67 - 4);
                v103 = a3 + 4;
                v104 = (a3 + v101 + 8);
                v105 = &a3[v69 / 8];
                v106 = &a3[v69 / 8] + v101;
                v107 = (v106 + 4);
                v108 = &a3[v69 / 8] + 4;
                v109 = (v106 + 8);
                v110 = a3 + v67;
                v111 = a3 + v67 + v101;
                v112 = (v111 + 4);
                v113 = a3 + v67 + 4;
                v114 = (v111 + 8);
                v115 = a3 + v99;
                v116 = a3 + v99 + v101;
                v117 = (v116 + 4);
                v118 = a3 + v99 + 4;
                v119 = (v116 + 8);
                v120 = v107 <= a3 || v105 >= v102;
                v121 = !v120;
                v122 = v109 <= a3 || v108 >= v102;
                v123 = !v122;
                v223 = v123;
                v225 = v121;
                v124 = v112 <= a3 || v110 >= v102;
                v125 = !v124;
                v126 = v114 <= a3 || v113 >= v102;
                v127 = !v126;
                v221 = v127;
                v222 = v125;
                v128 = v117 <= a3 || v115 >= v102;
                v129 = !v128;
                v130 = v119 <= a3 || v118 >= v102;
                v131 = !v130;
                v219 = v131;
                v220 = v129;
                v132 = v103 >= v107 || v105 >= v104;
                v133 = !v132;
                v134 = v103 >= v109 || v108 >= v104;
                v135 = !v134;
                v217 = v135;
                v218 = v133;
                v136 = v103 >= v112 || v110 >= v104;
                v137 = !v136;
                v138 = v103 >= v114 || v113 >= v104;
                v139 = !v138;
                v215 = v139;
                v216 = v137;
                v140 = v103 >= v117 || v115 >= v104;
                v141 = !v140;
                v142 = v103 >= v119 || v118 >= v104;
                v143 = !v142;
                v213 = v143;
                v214 = v141;
                v144 = v105 >= v109 || v108 >= v107;
                v145 = !v144;
                v146 = v105 >= v112 || v110 >= v107;
                v147 = !v146;
                v148 = v105 >= v114 || v113 >= v107;
                v149 = !v148;
                v150 = v105 >= v117 || v115 >= v107;
                v151 = !v150;
                v152 = v105 >= v119 || v118 >= v107;
                v153 = !v152;
                v154 = v108 >= v112 || v110 >= v109;
                v155 = !v154;
                v156 = v108 >= v114 || v113 >= v109;
                v157 = !v156;
                v158 = v108 >= v117 || v115 >= v109;
                v159 = !v158;
                v160 = v108 >= v119 || v118 >= v109;
                v161 = !v160;
                v162 = v110 >= v114 || v113 >= v112;
                v163 = !v162;
                v164 = v110 >= v117 || v115 >= v112;
                v165 = !v164;
                v166 = v110 >= v119 || v118 >= v112;
                v167 = !v166;
                v168 = v113 >= v117 || v115 >= v114;
                v169 = !v168;
                v170 = v113 >= v119 || v118 >= v114;
                v171 = !v170;
                v172 = v115 >= v119 || v118 >= v117;
                v173 = !v172;
                if ((v103 >= v102 || v104 <= a3) && !v225 && !v223 && !v222 && !v221 && !v220 && !v219 && !v218 && !v217 && !v216 && !v215 && !v214 && !v213 && !v145 && !v147 && !v149 && !v151 && !v153 && !v155 && !v157 && !v159 && !v161 && !v163 && !v165 && !v167 && !v169 && !v171 && !v173)
                {
                  v175 = (v68 >> 1) + 1;
                  v70 = 2 * (v175 & 0xFFFFFFFFFFFFFFFCLL);
                  v176 = v175 & 0xFFFFFFFFFFFFFFFCLL;
                  v177 = a3;
                  do
                  {
                    v178 = v177;
                    v227 = vld2q_f32(v178);
                    v179 = &v178[v99 / 4];
                    v180 = &v177[v67 / 4];
                    v229 = vld2q_f32(v180);
                    v181 = vaddq_f32(v227.val[0], v229.val[0]);
                    v182 = vsubq_f32(vnegq_f32(v227.val[1]), v229.val[1]);
                    v183 = &v177[v69 / 4];
                    v232 = vld2q_f32(v183);
                    v184 = vsubq_f32(v227.val[0], v229.val[0]);
                    v227.val[0] = vsubq_f32(v229.val[1], v227.val[1]);
                    *(&v227 + 16) = vld2q_f32(v179);
                    v229.val[1] = vaddq_f32(v232.val[0], v227.val[1]);
                    v185 = vaddq_f32(v232.val[1], v229.val[0]);
                    v186 = vsubq_f32(v232.val[0], v227.val[1]);
                    v227.val[1] = vsubq_f32(v232.val[1], v229.val[0]);
                    v232.val[0] = vaddq_f32(v181, v229.val[1]);
                    v232.val[1] = vsubq_f32(v182, v185);
                    vst2q_f32(v177, v232);
                    v177 += 8;
                    v229.val[0] = vsubq_f32(v181, v229.val[1]);
                    v229.val[1] = vaddq_f32(v182, v185);
                    vst2q_f32(v183, v229);
                    v229.val[0] = vsubq_f32(v184, v227.val[1]);
                    v229.val[1] = vsubq_f32(v227.val[0], v186);
                    vst2q_f32(v180, v229);
                    v227.val[1] = vaddq_f32(v184, v227.val[1]);
                    v229.val[0] = vaddq_f32(v227.val[0], v186);
                    vst2q_f32(v179, *(&v227 + 16));
                    v176 -= 4;
                  }

                  while (v176);
                  if (v175 == (v175 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    return;
                  }
                }
              }
            }
          }

          else
          {
            v70 = 0;
          }

          v71 = &a3[v70 / 2] + 1;
          v72 = &v71[3 * v66];
          v73 = &a3[v70 / 2] + v66 + 1;
          do
          {
            v74 = *(v71 - 1);
            v75 = *(v73 - 1);
            v76 = v74 + v75;
            v77 = -*v71 - *v73;
            v78 = v74 - v75;
            v79 = *v73 - *v71;
            v80 = &v71[v69 / 4];
            v81 = v71[v69 / 4 - 1];
            v82 = v71[2 * v66];
            v83 = *(v72 - 1);
            v84 = v81 + v83;
            v85 = v82 + *v72;
            v86 = v81 - v83;
            v87 = v82 - *v72;
            *(v71 - 1) = v76 + v84;
            *v71 = v77 - v85;
            *(v80 - 1) = v76 - v84;
            *v80 = v77 + v85;
            *(v73 - 1) = v78 - v87;
            *v73 = v79 - v86;
            v70 += 2;
            *(v72 - 1) = v78 + v87;
            *v72 = v79 + v86;
            v72 += 2;
            v71 += 2;
            v73 += 2;
          }

          while (v70 < v66);
          return;
        }
      }
    }

    if (!v66)
    {
      return;
    }

    v90 = v66 - 1;
    if (v66 - 1 > 0x2D)
    {
      v91 = 0;
      v187 = (4 * v90) & 0xFFFFFFFFFFFFFFF8;
      if ((a3 + v187) >= a3 && a3 + v187 + 4 >= a3 + 4)
      {
        v188 = (a3 + v67);
        if (a3 + v67 + v187 + 4 >= a3 + v67 + 4 && (v188 + v187) >= v188 && !(v90 >> 62))
        {
          v91 = 0;
          v189 = (v67 - 4) & 0xFFFFFFFFFFFFFFF8;
          v190 = a3 + v67 - 4;
          v191 = a3 + 4;
          v192 = a3 + v189 + 8;
          v193 = a3 + v67;
          v194 = a3 + v67 + v189;
          v195 = v194 + 4;
          v196 = v193 + 4;
          v197 = (v194 + 8);
          v198 = v194 + 4 <= a3 || v193 >= v190;
          v199 = !v198;
          v200 = v197 <= a3 || v196 >= v190;
          v201 = !v200;
          v202 = v191 >= v195 || v193 >= v192;
          v203 = !v202;
          v204 = v191 >= v197 || v196 >= v192;
          v205 = !v204;
          v206 = v193 >= v197 || v196 >= v195;
          v207 = !v206;
          if ((v191 >= v190 || v192 <= a3) && !v199 && !v201 && !v203 && !v205 && !v207)
          {
            v209 = (v90 >> 1) + 1;
            v91 = 2 * (v209 & 0xFFFFFFFFFFFFFFFCLL);
            v210 = a3;
            v211 = v209 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v228 = vld2q_f32(v210);
              v230 = vld2q_f32(v188);
              v231.val[0] = vsubq_f32(v228.val[0], v230.val[0]);
              v212.f32[0] = v188[1];
              v212.f32[1] = v188[3];
              v212.f32[2] = v188[5];
              v212.f32[3] = v188[7];
              v231.val[1] = vsubq_f32(v212, v228.val[1]);
              v233.val[0] = vaddq_f32(v228.val[0], v230.val[0]);
              v233.val[1] = vsubq_f32(vnegq_f32(v228.val[1]), v230.val[1]);
              vst2q_f32(v210, v233);
              v210 += 8;
              vst2q_f32(v188, v231);
              v188 += 8;
              v211 -= 4;
            }

            while (v211);
            if (v209 == (v209 & 0xFFFFFFFFFFFFFFFCLL))
            {
              return;
            }
          }
        }
      }
    }

    else
    {
      v91 = 0;
    }

    v92 = &a3[v91 / 2] + v66 + 1;
    v93 = &a3[v91 / 2] + 1;
    do
    {
      v94 = *(v93 - 1);
      v95 = *v93;
      v96 = *(v92 - 1);
      v97 = *v92 - *v93;
      *(v93 - 1) = v94 + v96;
      *v93 = -v95 - *v92;
      v93 += 2;
      *(v92 - 1) = v94 - v96;
      *v92 = v97;
      v91 += 2;
      v92 += 2;
    }

    while (v91 < v66);
    return;
  }

  if (this == 4)
  {

    JUMPOUT(0x2731F0144);
  }
}

unint64_t webrtc::anonymous namespace::bitrv2(unint64_t this, int64x2_t *a2, unint64_t *a3, float *a4)
{
  a2->i64[0] = 0;
  if (this >= 9)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4;
      this >>= 1;
      if (v4)
      {
        if (v4 >= 4)
        {
          v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
          v7 = vdupq_n_s64(this);
          v8 = v5 & 0xFFFFFFFFFFFFFFFCLL;
          v9 = a2;
          do
          {
            v10 = vaddq_s64(v9[1], v7);
            v11 = (v9 + 8 * v5);
            *v11 = vaddq_s64(*v9, v7);
            v11[1] = v10;
            v9 += 2;
            v8 -= 4;
          }

          while (v8);
          if (v5 == v6)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v6 = 0;
        }

        v12 = v5 - v6;
        v13 = &a2->i64[v6];
        do
        {
          v13[v5] = *v13 + this;
          ++v13;
          --v12;
        }

        while (v12);
      }

LABEL_3:
      v4 = 2 * v5;
      if (16 * v5 >= this)
      {
        v15 = 4 * v5;
        if (16 * v5 == this)
        {
          if (v4)
          {
            v14 = &a3[2 * v5];
            goto LABEL_18;
          }
        }

        else if (v4)
        {
          v47 = &a3[2 * v5];
          v48 = 1;
          do
          {
            v49 = 0;
            v50 = 4 * a2->i64[v48];
            v51 = v47 + v50;
            v52 = a3 + v50;
            do
            {
              v53 = 4 * (a2->i64[v49] + 2 * v48);
              v54 = *(a3 + v53 + 4);
              v55 = *v52;
              *v52 = *(a3 + v53);
              *(v52 + 1) = v54;
              v52 += 8;
              *(a3 + v53) = v55;
              v56 = (v47 + v53);
              v57 = v56[1];
              v58 = *v51;
              *v51 = *v56;
              *(v51 + 1) = v57;
              v51 += 8;
              *v56 = v58;
              ++v49;
            }

            while (v48 != v49);
            ++v48;
          }

          while (v48 != v4);
        }

        return this;
      }
    }
  }

  if (this == 8)
  {
    v14 = a3 + 1;
    v15 = 2;
    v4 = 1;
LABEL_18:
    for (i = 0; i != v4; ++i)
    {
      if (i)
      {
        v23 = 0;
        v17 = a2->i64[i];
        this = 2 * i;
        v24 = &v14[v15] + 4 * v17;
        v25 = &a3[v15] + 4 * v17;
        v26 = &a3[v15 / 2] + 4 * v17;
        v27 = a3 + 4 * v17;
        v28 = i;
        do
        {
          v29 = a2->i64[v23 / 8] + this;
          v30 = &v27[v23];
          v31 = a3 + v29;
          v32 = v31[1];
          v33 = *&v27[v23];
          *v30 = *v31;
          *(v30 + 1) = v32;
          *v31 = v33;
          v34 = v29 + 4 * v4;
          v35 = &v26[v23];
          v36 = a3 + v34;
          v37 = v36[1];
          v38 = *&v26[v23];
          *v35 = *v36;
          *(v35 + 1) = v37;
          *v36 = v38;
          v39 = &v25[v23];
          v40 = 4 * (v34 - v15);
          v41 = *(a3 + v40 + 4);
          v42 = *&v25[v23];
          *v39 = *(a3 + v40);
          *(v39 + 1) = v41;
          *(a3 + v40) = v42;
          v43 = (v24 + v23);
          v44 = (&a3[2 * v4] + v40);
          v45 = v44[1];
          v46 = *(v24 + v23);
          *v43 = *v44;
          v43[1] = v45;
          *v44 = v46;
          v23 += 8;
          --v28;
        }

        while (v28);
      }

      else
      {
        v17 = a2->i64[0];
      }

      v18 = 4 * (v17 + 2 * (i + v4));
      v19 = (a3 + v18);
      v20 = *(a3 + v18);
      v21 = *(a3 + v18 + 4);
      v22 = v14 + v18;
      *v19 = *v22;
      *v22 = v20;
      *(v22 + 1) = v21;
    }
  }

  return this;
}

float webrtc::anonymous namespace::cft1st(webrtc::_anonymous_namespace_ *this, uint64_t a2, float *a3, float *a4)
{
  v4.i64[0] = *a2;
  v5.i64[0] = *(a2 + 8);
  v4.i64[1] = *a2;
  v5.i64[1] = v5.i64[0];
  v6.i64[0] = vaddq_f32(v4, v5).u64[0];
  v7 = vsubq_f32(v4, v5);
  v6.i64[1] = v7.i64[1];
  v7.i64[0] = *(a2 + 16);
  v5.i64[0] = *(a2 + 24);
  v8 = vaddq_f32(v7, v5).u64[0];
  v9 = vsubq_f32(v7, v5);
  v10 = vzip1q_s32(v9, vrev64q_s32(v9));
  v10.i64[0] = v8;
  v11 = vaddq_f32(v6, v10);
  v12 = vsubq_f32(v6, v10);
  v13 = v12;
  v13.i32[2] = v11.i32[2];
  v11.i32[2] = v12.i32[2];
  *a2 = v11;
  *(a2 + 16) = v13;
  v12.f32[0] = a3[2];
  v11.i32[0] = *(a2 + 32);
  v13.i32[0] = *(a2 + 36);
  LODWORD(v8) = *(a2 + 40);
  v14 = *(a2 + 44);
  v15 = v11.f32[0] + *&v8;
  v16 = v13.f32[0] + v14;
  v11.f32[0] = v11.f32[0] - *&v8;
  v13.f32[0] = v13.f32[0] - v14;
  LODWORD(v8) = *(a2 + 48);
  v17 = *(a2 + 52);
  v18 = *(a2 + 56);
  v19 = *(a2 + 60);
  v20 = *&v8 + v18;
  v21 = v17 + v19;
  *&v8 = *&v8 - v18;
  v22 = v17 - v19;
  *(a2 + 32) = v15 + v20;
  *(a2 + 36) = v16 + v21;
  *(a2 + 48) = v21 - v16;
  *(a2 + 52) = v15 - v20;
  *(a2 + 40) = v12.f32[0] * ((v11.f32[0] - v22) - (v13.f32[0] + *&v8));
  *(a2 + 44) = v12.f32[0] * ((v13.f32[0] + *&v8) + (v11.f32[0] - v22));
  v11.f32[0] = v11.f32[0] + v22;
  v13.f32[0] = *&v8 - v13.f32[0];
  *&v8 = v12.f32[0] * (v13.f32[0] - v11.f32[0]);
  result = v12.f32[0] * (v13.f32[0] + v11.f32[0]);
  *(a2 + 56) = v8;
  *(a2 + 60) = result;
  if (this >= 0x11)
  {
    v24 = a3 + 3;
    v25 = (a2 + 124);
    for (i = 16; i < this; i += 16)
    {
      v27 = *(v24 - 1);
      v28 = *v24;
      v29 = a3[i / 4];
      v30 = a3[i / 4 + 1];
      v31 = v29 - ((v28 + v28) * v30);
      v32 = -(v30 - ((v28 + v28) * v29));
      v33 = *(v25 - 15);
      v34 = *(v25 - 14);
      v35 = *(v25 - 13);
      v36 = *(v25 - 12);
      v37 = v33 + v35;
      v38 = v34 + v36;
      v39 = v33 - v35;
      v40 = v34 - v36;
      v41 = *(v25 - 11);
      v42 = *(v25 - 10);
      v43 = *(v25 - 9);
      v44 = *(v25 - 8);
      v45 = v41 + v43;
      v46 = v42 + v44;
      v47 = v41 - v43;
      v48 = v42 - v44;
      *(v25 - 15) = v37 + v45;
      *(v25 - 14) = v38 + v46;
      v49 = v37 - v45;
      v50 = v38 - v46;
      *(v25 - 11) = (v27 * v49) - (v28 * v50);
      *(v25 - 10) = (v28 * v49) + (v27 * v50);
      *(v25 - 13) = (v29 * (v39 - v48)) - (v30 * (v40 + v47));
      *(v25 - 12) = (v30 * (v39 - v48)) + (v29 * (v40 + v47));
      *(v25 - 9) = (v31 * (v39 + v48)) - (v32 * (v40 - v47));
      *(v25 - 8) = (v32 * (v39 + v48)) + (v31 * (v40 - v47));
      v51 = a3[i / 4 + 2];
      v52 = a3[i / 4 + 3];
      v53 = v51 - ((v27 + v27) * v52);
      v54 = -(v52 - ((v27 + v27) * v51));
      v55 = *(v25 - 7);
      v56 = *(v25 - 6);
      v57 = *(v25 - 5);
      v58 = *(v25 - 4);
      v59 = v55 + v57;
      v60 = v56 + v58;
      v61 = v55 - v57;
      v62 = v56 - v58;
      v63 = *(v25 - 3);
      v64 = *(v25 - 2);
      v65 = *(v25 - 1);
      v66 = v63 + v65;
      v67 = v64 + *v25;
      v68 = v63 - v65;
      v69 = v64 - *v25;
      *(v25 - 7) = v59 + v66;
      *(v25 - 6) = v60 + v67;
      v70 = v59 - v66;
      v71 = v60 - v67;
      *(v25 - 3) = -(v27 * v71) - (v28 * v70);
      *(v25 - 2) = (v27 * v70) - (v28 * v71);
      *(v25 - 5) = (v51 * (v61 - v69)) - (v52 * (v62 + v68));
      *(v25 - 4) = (v52 * (v61 - v69)) + (v51 * (v62 + v68));
      result = (v54 * (v61 + v69)) + (v53 * (v62 - v68));
      *(v25 - 1) = (v53 * (v61 + v69)) - (v54 * (v62 - v68));
      *v25 = result;
      v25 += 16;
      v24 += 2;
    }
  }

  return result;
}

webrtc::FftBuffer *webrtc::FftBuffer::FftBuffer(webrtc::FftBuffer *this, unint64_t a2, unint64_t a3)
{
  *this = a2;
  if (a3)
  {
    if (a3 < 0x7E07E07E07E07FLL)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<std::vector<webrtc::FftData>>::vector[abi:sn200100](this + 1, a2);
  *(this + 4) = 0;
  v4 = *(this + 1);
  for (i = *(this + 2); v4 != i; v4 += 24)
  {
    v6 = *(v4 + 8);
    if (*v4 != v6)
    {
      bzero(*v4, 520 * ((v6 - *v4 - 520) / 0x208uLL) + 520);
    }
  }

  return this;
}

size_t webrtc::field_trial::FindFullName@<X0>(size_t result@<X0>, size_t a2@<X1>, void *a3@<X8>)
{
  __s1 = result;
  v4 = webrtc::field_trial::trials_init_string;
  if (!webrtc::field_trial::trials_init_string || (result = strlen(webrtc::field_trial::trials_init_string)) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v6 = result;
  __dst = a3;
  v7 = 0;
  while (1)
  {
    result = memchr((v4 + v7), 47, v6 - v7);
    if (result)
    {
      v8 = result - v4;
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 == -1 || v8 == v7;
    v10 = v8 + 1;
    v11 = !v9 && v6 > v10;
    if (!v11 || ((v12 = (v4 + v10), (result = memchr((v4 + v10), 47, v6 - v10)) == 0) ? (v13 = -1) : (v13 = result - v4), v13 != -1 ? (v14 = v13 == v10) : (v14 = 1), v14))
    {
LABEL_34:
      *__dst = 0;
      __dst[1] = 0;
      __dst[2] = 0;
      return result;
    }

    v15 = v8 - v7;
    if (v6 - v7 < v8 - v7)
    {
      v15 = v6 - v7;
    }

    if (a2 == v15)
    {
      result = memcmp(__s1, (v4 + v7), a2);
      if (!result)
      {
        break;
      }
    }

    v7 = v13 + 1;
    if (v13 + 1 >= v6)
    {
      goto LABEL_34;
    }
  }

  if (v6 - v10 >= v13 + ~v8)
  {
    v16 = v13 + ~v8;
  }

  else
  {
    v16 = v6 - v10;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_44:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (v16 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = v16;
  v17 = __dst + v16;
  if (__dst <= v12 && v17 > v12)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v16)
  {
    result = memmove(__dst, v12, v16);
  }

  *v17 = 0;
  return result;
}

void webrtc::field_trial::InitFieldTrialsFromString(webrtc::field_trial *this, const char *a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/system_wrappers/source/field_trial.cc");
  }

  webrtc::field_trial::trials_init_string = this;
}

void webrtc::FieldTrialBasedConfig::GetValue(void **a1@<X1>, size_t a2@<X2>, void *a3@<X8>)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_18:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  v8 = a2;
  v4 = (__p + a2);
  if (__p <= a1 && v4 > a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2)
  {
    memmove(__p, a1, a2);
  }

  *v4 = 0;
  if ((v8 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v6 = v8;
  }

  else
  {
    v6 = __p[1];
  }

  webrtc::field_trial::FindFullName(v5, v6, a3);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void webrtc::FieldTrialBasedConfig::~FieldTrialBasedConfig(webrtc::FieldTrialBasedConfig *this)
{
  *this = &unk_288293A00;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
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
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }
}

{
  *this = &unk_288293A00;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = *(this + 2);
    v4 = *(this + 1);
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
      v4 = *(this + 1);
    }

    *(this + 2) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::FieldTrialStructListBase::~FieldTrialStructListBase(webrtc::FieldTrialStructListBase *this)
{
  *this = &unk_288293760;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

{
  *this = &unk_288293760;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 9);
    v4 = *(this + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(this + 8);
    }

    *(this + 9) = v2;
    operator delete(v4);
  }

  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::FieldTrialParameter<BOOL>::Parse(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[24] != 1)
  {
    return 0;
  }

  v2 = a2[23];
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 != 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    v4 = *a2;
    if (v4 != 48)
    {
      if (v4 == 49)
      {
LABEL_11:
        *(a1 + 57) = 1;
        return 1;
      }

      return 0;
    }

    goto LABEL_17;
  }

  v3 = a2;
  a2 = *a2;
  v2 = *(v3 + 1);
  if (v2 == 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v2 != 5)
  {
    if (v2 == 4 && *a2 == 1702195828)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*a2 != 1936482662 || a2[4] != 101)
  {
    return 0;
  }

LABEL_17:
  *(a1 + 57) = 0;
  return 1;
}

uint64_t webrtc::FieldTrialParameter<double>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] != 1)
  {
    return 0;
  }

  if ((__src[23] & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<double>(*__src, *(__src + 1));
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<double>(__src, __src[23]);
    if (v4)
    {
LABEL_4:
      *(a1 + 64) = v3;
      return 1;
    }
  }

  return 0;
}

uint64_t webrtc::ParseTypedParameter<double>(void **__src, size_t __len)
{
  v9 = 0;
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_20:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v8 = __len;
  v2 = (&__p + __len);
  if (&__p <= __src && v2 > __src)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = 0.0;
  if (__len)
  {
    memmove(&__p, __src, __len);
  }

  *v2 = 0;
  if (v8 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = sscanf(p_p, "%lf%1s", &v10, &v9);
  v5 = v4;
  if ((v8 & 0x80000000) == 0)
  {
    if (v4 >= 1)
    {
      goto LABEL_14;
    }

LABEL_17:
    *&result = 0.0;
    return result;
  }

  operator delete(__p);
  if (v5 < 1)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (v9 == 37)
  {
    *&result = v10 / 100.0;
  }

  else
  {
    *&result = v10;
  }

  return result;
}

uint64_t webrtc::FieldTrialParameter<int>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] != 1)
  {
    return 0;
  }

  if ((__src[23] & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<int>(*__src, *(__src + 1));
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<int>(__src, __src[23]);
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  *(a1 + 60) = v3;
  return 1;
}

uint64_t webrtc::ParseTypedParameter<int>(void **__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v11 = __len;
  v2 = (&__p + __len);
  if (&__p <= __src && v2 > __src)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = 0;
  if (__len)
  {
    memmove(&__p, __src, __len);
  }

  *v2 = 0;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = sscanf(p_p, "%lld", &v12);
  v5 = v4;
  if (v11 < 0)
  {
    operator delete(__p);
    if (v5 != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v4 != 1)
  {
    goto LABEL_17;
  }

  if (!((v12 < 0xFFFFFFFF80000000) | (2 * (v12 > 0x7FFFFFFF))))
  {
    v8 = v12 & 0xFFFFFF00;
    v7 = v12;
    v6 = 0x100000000;
    return v7 | v6 | v8;
  }

LABEL_17:
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return v7 | v6 | v8;
}

uint64_t webrtc::FieldTrialParameter<unsigned int>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] != 1)
  {
    return 0;
  }

  if ((__src[23] & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<unsigned int>(*__src, *(__src + 1));
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<unsigned int>(__src, __src[23]);
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  *(a1 + 60) = v3;
  return 1;
}

uint64_t webrtc::ParseTypedParameter<unsigned int>(void **__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_21:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (__len > 0x16)
  {
    operator new();
  }

  v11 = __len;
  v2 = (&__p + __len);
  if (&__p <= __src && v2 > __src)
  {
    __break(1u);
    goto LABEL_21;
  }

  v12 = 0;
  if (__len)
  {
    memmove(&__p, __src, __len);
  }

  *v2 = 0;
  if (v11 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = sscanf(p_p, "%lld", &v12);
  v5 = v4;
  if (v11 < 0)
  {
    operator delete(__p);
    if (v5 != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v4 != 1)
  {
    goto LABEL_17;
  }

  if (!((v12 >> 63) | (2 * (v12 > 0xFFFFFFFFLL))))
  {
    v8 = v12 & 0xFFFFFF00;
    v7 = v12;
    v6 = 0x100000000;
    return v7 | v6 | v8;
  }

LABEL_17:
  v6 = 0;
  v7 = 0;
  v8 = 0;
  return v7 | v6 | v8;
}

uint64_t webrtc::FieldTrialConstrained<int>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] != 1)
  {
    return 0;
  }

  if ((__src[23] & 0x8000000000000000) != 0)
  {
    v3 = webrtc::ParseTypedParameter<int>(*__src, *(__src + 1));
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  else
  {
    v3 = webrtc::ParseTypedParameter<int>(__src, __src[23]);
    if (!HIDWORD(v3))
    {
      return 0;
    }
  }

  if (*(a1 + 68) == 1 && *(a1 + 64) > v3)
  {
    return 0;
  }

  if ((*(a1 + 76) & 1) != 0 && *(a1 + 72) < v3)
  {
    return 0;
  }

  *(a1 + 60) = v3;
  return 1;
}

uint64_t webrtc::FieldTrialOptional<double>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] == 1)
  {
    if ((__src[23] & 0x8000000000000000) != 0)
    {
      v3 = webrtc::ParseTypedParameter<double>(*__src, *(__src + 1));
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = webrtc::ParseTypedParameter<double>(__src, __src[23]);
      if (v4)
      {
LABEL_4:
        *(a1 + 64) = v3;
        result = 1;
        *(a1 + 72) = 1;
        return result;
      }
    }

    return 0;
  }

  else
  {
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 0;
    }

    return 1;
  }
}

uint64_t webrtc::FieldTrialOptional<int>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] == 1)
  {
    if ((__src[23] & 0x8000000000000000) != 0)
    {
      v3 = webrtc::ParseTypedParameter<int>(*__src, *(__src + 1));
      if (!HIDWORD(v3))
      {
        return 0;
      }
    }

    else
    {
      v3 = webrtc::ParseTypedParameter<int>(__src, __src[23]);
      if (!HIDWORD(v3))
      {
        return 0;
      }
    }

    *(a1 + 60) = v3;
    result = 1;
    *(a1 + 64) = 1;
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t webrtc::FieldTrialOptional<unsigned int>::Parse(uint64_t a1, char *__src)
{
  if (__src[24] == 1)
  {
    if ((__src[23] & 0x8000000000000000) != 0)
    {
      v3 = webrtc::ParseTypedParameter<unsigned int>(*__src, *(__src + 1));
      if (!HIDWORD(v3))
      {
        return 0;
      }
    }

    else
    {
      v3 = webrtc::ParseTypedParameter<unsigned int>(__src, __src[23]);
      if (!HIDWORD(v3))
      {
        return 0;
      }
    }

    *(a1 + 60) = v3;
    result = 1;
    *(a1 + 64) = 1;
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      *(a1 + 64) = 0;
    }

    return 1;
  }

  return result;
}

void webrtc::ParseFieldTrial(char *a1, uint64_t a2, char *a3, size_t a4)
{
  v125 = a3;
  v126 = a4;
  v124[0] = 0;
  v124[1] = 0;
  v109 = v124;
  v123 = v124;
  if (!a2)
  {
    v27 = a4;
    v104 = 0;
    if (!a4)
    {
      goto LABEL_204;
    }

    goto LABEL_51;
  }

  v4 = a1;
  v104 = 0;
  v105 = &a1[8 * a2];
  do
  {
    __s = v4;
    v5 = *v4;
    *(v5 + 56) = 1;
    v6 = *(v5 + 16);
    v7 = *(v5 + 8);
    if (v7 != v6)
    {
      while (1)
      {
        v10 = *v7;
        *(v10 + 56) = 1;
        v11 = *(v10 + 55);
        if ((v11 & 0x8000000000000000) != 0)
        {
          v12 = *(v10 + 32);
          v11 = *(v10 + 40);
        }

        else
        {
          v12 = (v10 + 32);
        }

        for (i = v124[0]; ; i = *v14)
        {
          if (!i)
          {
LABEL_28:
            operator new();
          }

LABEL_16:
          v14 = i;
          v16 = i[4];
          v15 = i[5];
          v17 = v15 >= v11 ? v11 : i[5];
          v18 = memcmp(v12, i[4], v17);
          if (v18)
          {
            break;
          }

          if (v11 >= v15)
          {
            goto LABEL_23;
          }

LABEL_14:
          ;
        }

        if (v18 < 0)
        {
          goto LABEL_14;
        }

LABEL_23:
        v19 = memcmp(v16, v12, v17);
        if (v19)
        {
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_27;
        }

        if (v15 < v11)
        {
LABEL_27:
          i = v14[1];
          if (!i)
          {
            goto LABEL_28;
          }

          goto LABEL_16;
        }

LABEL_9:
        v14[6] = v10;
        if (++v7 == v6)
        {
          goto LABEL_4;
        }
      }
    }

    v8 = (v5 + 32);
    v9 = *(v5 + 55);
    if ((v9 & 0x8000000000000000) != 0)
    {
      v9 = *(v5 + 40);
      if (!v9)
      {
LABEL_3:
        v104 = v5;
        goto LABEL_4;
      }

      v8 = *v8;
    }

    else if (!*(v5 + 55))
    {
      goto LABEL_3;
    }

    v20 = v124[0];
LABEL_33:
    if (!v20)
    {
LABEL_46:
      operator new();
    }

    while (1)
    {
      v21 = v20;
      v23 = v20[4];
      v22 = v20[5];
      if (v22 >= v9)
      {
        v24 = v9;
      }

      else
      {
        v24 = v20[5];
      }

      v25 = memcmp(v8, v20[4], v24);
      if (v25)
      {
        if (v25 < 0)
        {
          goto LABEL_32;
        }
      }

      else if (v22 > v9)
      {
LABEL_32:
        v20 = *v21;
        goto LABEL_33;
      }

      v26 = memcmp(v23, v8, v24);
      if (v26)
      {
        if ((v26 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_45;
      }

      if (v22 >= v9)
      {
        break;
      }

LABEL_45:
      v20 = v21[1];
      if (!v20)
      {
        goto LABEL_46;
      }
    }

    v21[6] = v5;
LABEL_4:
    v4 = __s + 8;
  }

  while (__s + 8 != v105);
  v27 = v126;
  if (!v126)
  {
    goto LABEL_204;
  }

LABEL_51:
  v28 = 0;
  v29 = v125;
  while (2)
  {
    v30 = 0;
    while (1)
    {
      v31 = v29[v30];
      if (v31 == 44 || v31 == 58)
      {
        break;
      }

      if (v27 == ++v30)
      {
        goto LABEL_59;
      }
    }

    if (v27 != v30)
    {
      goto LABEL_60;
    }

LABEL_59:
    v30 = -1;
LABEL_60:
    if (v27 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v27;
    }

    v121 = v29;
    v122 = v32;
    LOBYTE(v118) = 0;
    v120 = 0;
    if (v30 == -1)
    {
      v36 = 0;
      v106 = 0;
      __sa = "";
      v38 = v124[0];
      if (!v124[0])
      {
        goto LABEL_115;
      }

      goto LABEL_88;
    }

    if (v27 <= v30)
    {
      goto LABEL_208;
    }

    v33 = v29[v30];
    v34 = v30 + 1;
    v35 = v27 - v34;
    __sa = &v29[v34];
    v36 = v33 == 58;
    if (v33 == 58)
    {
      if (v27 == v34)
      {
        v37 = -1;
      }

      else
      {
        v39 = memchr(__sa, 44, v35);
        if (v39)
        {
          v37 = v39 - __sa;
        }

        else
        {
          v37 = -1;
        }
      }

      if (v35 >= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = v35;
      }

      if (v40 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_209;
      }

      if (v40 > 0x16)
      {
        operator new();
      }

      HIBYTE(v119) = v40;
      v41 = &v118 + v40;
      if (&v118 <= __sa && v41 > __sa)
      {
        goto LABEL_208;
      }

      if (v40)
      {
        memmove(&v118, __sa, v40);
      }

      *v41 = 0;
      v120 = 1;
      if (v37 == -1)
      {
        v106 = 0;
        __sa = "";
        v32 = v122;
        v38 = v124[0];
        if (!v124[0])
        {
          goto LABEL_115;
        }

        goto LABEL_88;
      }

      if (v35 <= v37)
      {
        abort();
      }

      __sa += v37 + 1;
      v35 -= v37 + 1;
    }

    v32 = v122;
    v106 = v35;
    v38 = v124[0];
    if (!v124[0])
    {
      goto LABEL_115;
    }

LABEL_88:
    v42 = v121;
    v43 = v109;
    do
    {
      while (1)
      {
        v44 = v38[5];
        v45 = v32 >= v44 ? v38[5] : v32;
        v46 = memcmp(v38[4], v42, v45);
        if (v46)
        {
          break;
        }

        if (v44 >= v32)
        {
          goto LABEL_97;
        }

LABEL_89:
        v38 = v38[1];
        if (!v38)
        {
          goto LABEL_98;
        }
      }

      if (v46 < 0)
      {
        goto LABEL_89;
      }

LABEL_97:
      v43 = v38;
      v38 = *v38;
    }

    while (v38);
LABEL_98:
    if (v43 == v109)
    {
      goto LABEL_115;
    }

    v47 = v43[5];
    if (v47 >= v32)
    {
      v48 = v32;
    }

    else
    {
      v48 = v43[5];
    }

    v49 = memcmp(v42, v43[4], v48);
    if (!v49)
    {
      if (v32 < v47)
      {
        goto LABEL_115;
      }

      goto LABEL_106;
    }

    if ((v49 & 0x80000000) == 0)
    {
LABEL_106:
      v50 = v43[6];
      LOBYTE(__p[0]) = 0;
      v117 = 0;
      if (v36)
      {
        *__p = v118;
        v116 = v119;
        v119 = 0;
        v118 = 0uLL;
        v117 = 1;
      }

      v51 = (*(*v50 + 16))(v50, __p);
      v27 = v106;
      if (v117 == 1 && SHIBYTE(v116) < 0)
      {
        operator delete(__p[0]);
      }

      v29 = __sa;
      if (v51 & 1) != 0 || (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
      {
        goto LABEL_201;
      }

      v98 = v98 & 0xFFFFFFFF00000000 | 0x29A;
LABEL_200:
      webrtc::webrtc_logging_impl::Log("\r\t\v\t\v\t", v52, v53, v54, v55, v56, v57, v58, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/field_trial_parser.cc");
      goto LABEL_201;
    }

LABEL_115:
    if (v104)
    {
      v59 = v36;
    }

    else
    {
      v59 = 1;
    }

    if ((v59 & 1) == 0)
    {
      v29 = __sa;
      if (!v32)
      {
LABEL_127:
        if (v28)
        {
          v28 = 1;
          v27 = v106;
          goto LABEL_201;
        }

        goto LABEL_129;
      }

      if (v32 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_209;
      }

      v27 = v106;
      if (v32 > 0x16)
      {
        operator new();
      }

      HIBYTE(v111) = v32;
      if (__dst > v121 || (__dst + v32) <= v121)
      {
        memmove(__dst, v121, v32);
        *(__dst + v32) = 0;
        *v112 = *__dst;
        v113 = v111;
        __dst[0] = 0;
        __dst[1] = 0;
        v111 = 0;
        v114 = 1;
        v94 = (*(*v104 + 16))(v104, v112);
        if (v114 == 1 && SHIBYTE(v113) < 0)
        {
          operator delete(v112[0]);
        }

        if (SHIBYTE(v111) < 0)
        {
          operator delete(__dst[0]);
          if (v94)
          {
            goto LABEL_201;
          }
        }

        else if (v94)
        {
          goto LABEL_201;
        }

        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_201;
        }

        v99 = v99 & 0xFFFFFFFF00000000 | 0x2C2;
        goto LABEL_200;
      }

LABEL_208:
      __break(1u);
      goto LABEL_209;
    }

    v29 = __sa;
    if (!v32)
    {
      goto LABEL_127;
    }

    if ((*v121 == 95) | v28 & 1)
    {
      v27 = v106;
      goto LABEL_201;
    }

LABEL_129:
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v103 = v103 & 0xFFFFFFFF00000000 | 0x301;
      webrtc::webrtc_logging_impl::Log("\r\t\v\t\v\t", v60, v61, v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/field_trial_parser.cc");
      __dst[0] = 0;
      __dst[1] = 0;
      v111 = 0;
      v67 = v123;
      if (v123 == v109)
      {
        goto LABEL_133;
      }

      while (1)
      {
LABEL_139:
        v76 = v67[4];
        v75 = v67[5];
        if (v76)
        {
          v77 = 1;
        }

        else
        {
          v77 = v75 == 0;
        }

        if (!v77)
        {
          goto LABEL_208;
        }

        v79 = __dst[1];
        v78 = v111;
        if (v111 >= 0)
        {
          v80 = 22;
        }

        else
        {
          v80 = (v111 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if (v111 >= 0)
        {
          v81 = HIBYTE(v111);
        }

        else
        {
          v81 = __dst[1];
        }

        if (v80 - v81 < v75)
        {
          if (0x7FFFFFFFFFFFFFF6 - v80 >= &v81[v75 - v80])
          {
            operator new();
          }

          goto LABEL_209;
        }

        if (v75)
        {
          if (v111 >= 0)
          {
            v82 = __dst;
          }

          else
          {
            v82 = __dst[0];
          }

          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_208;
          }

          if (&v81[v82] <= v76 && &v81[v82 + v75] > v76)
          {
            goto LABEL_208;
          }

          memmove(&v81[v82], v67[4], v67[5]);
          v84 = &v81[v75];
          if (SHIBYTE(v111) < 0)
          {
            __dst[1] = &v81[v75];
          }

          else
          {
            HIBYTE(v111) = v84 & 0x7F;
          }

          v84[v82] = 0;
          v85 = HIBYTE(v111);
          v79 = __dst[1];
          v78 = v111;
        }

        else
        {
          v85 = HIBYTE(v111);
        }

        v86 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v85 >= 0)
        {
          v87 = 22;
        }

        else
        {
          v87 = v86;
        }

        if (v85 >= 0)
        {
          v88 = v85;
        }

        else
        {
          v88 = v79;
        }

        if ((v87 - v88) < 2)
        {
          if (0x7FFFFFFFFFFFFFF6 - v87 >= &v88[-v87 + 2])
          {
            operator new();
          }

LABEL_209:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v89 = __dst[0];
        if (v85 >= 0)
        {
          v89 = __dst;
        }

        v90 = &v88[v89];
        if (&v88[v89] <= ", " && v90 + 2 > ", ")
        {
          goto LABEL_208;
        }

        *v90 = 8236;
        v91 = v88 + 2;
        if (SHIBYTE(v111) < 0)
        {
          __dst[1] = v88 + 2;
          v91[v89] = 0;
          v92 = v67[1];
          if (v92)
          {
            do
            {
LABEL_184:
              v93 = v92;
              v92 = *v92;
            }

            while (v92);
            goto LABEL_138;
          }
        }

        else
        {
          HIBYTE(v111) = v91 & 0x7F;
          v91[v89] = 0;
          v92 = v67[1];
          if (v92)
          {
            goto LABEL_184;
          }
        }

        do
        {
          v93 = v67[2];
          v77 = *v93 == v67;
          v67 = v93;
        }

        while (!v77);
LABEL_138:
        v67 = v93;
        if (v93 == v109)
        {
          goto LABEL_133;
        }
      }
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v111 = 0;
    v67 = v123;
    if (v123 != v109)
    {
      goto LABEL_139;
    }

LABEL_133:
    v29 = __sa;
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
    {
      v102 = v102 & 0xFFFFFFFF00000000 | 0x339;
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v68, v69, v70, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/rtc_base/experiments/field_trial_parser.cc");
    }

    v27 = v106;
    if (SHIBYTE(v111) < 0)
    {
      operator delete(__dst[0]);
    }

    v28 = 1;
LABEL_201:
    if (v120 == 1 && SHIBYTE(v119) < 0)
    {
      operator delete(v118);
    }

    if (v27)
    {
      continue;
    }

    break;
  }

LABEL_204:
  v95 = a1;
  if (a2)
  {
    v96 = 8 * a2;
    do
    {
      v97 = *v95++;
      (*(*v97 + 24))(v97);
      v96 -= 8;
    }

    while (v96);
  }

  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v124[0]);
}

uint64_t webrtc::FieldTrialFlag::Parse(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[24] != 1)
  {
    goto LABEL_11;
  }

  v2 = a2[23];
  if (v2 < 0)
  {
    v3 = a2;
    a2 = *a2;
    v2 = *(v3 + 1);
    if (v2 != 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    v4 = *a2;
    if (v4 != 48)
    {
      if (v4 == 49)
      {
LABEL_11:
        *(a1 + 57) = 1;
        return 1;
      }

      return 0;
    }

    goto LABEL_17;
  }

  if (v2 == 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v2 != 5)
  {
    if (v2 == 4 && *a2 == 1702195828)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (*a2 != 1936482662 || a2[4] != 101)
  {
    return 0;
  }

LABEL_17:
  *(a1 + 57) = 0;
  return 1;
}

uint64_t webrtc::AbstractFieldTrialEnum::AbstractFieldTrialEnum(uint64_t a1, _BYTE *a2, size_t a3, int a4, void *a5)
{
  *a1 = &unk_288293910;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_73:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (a3 > 0x16)
  {
    operator new();
  }

  v8 = (a1 + 32);
  *(a1 + 55) = a3;
  v9 = (a1 + 32 + a3);
  if (a1 + 32 <= a2 && v9 > a2)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (a3)
  {
    memmove(v8, a2, a3);
  }

  *v9 = 0;
  *(a1 + 56) = 0;
  *a1 = &unk_288293970;
  *(a1 + 72) = 0;
  v10 = a1 + 72;
  *(a1 + 60) = a4;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 72;
  v11 = *a5;
  v38 = a5 + 1;
  if (*a5 == a5 + 1)
  {
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = a1 + 96;
    return a1;
  }

  do
  {
    v12 = *(a1 + 72);
    v13 = a1 + 72;
    if (*(a1 + 64) == v10)
    {
      goto LABEL_57;
    }

    v14 = *(a1 + 72);
    v15 = a1 + 72;
    if (v12)
    {
      do
      {
        v13 = v14;
        v14 = *(v14 + 8);
      }

      while (v14);
    }

    else
    {
      do
      {
        v13 = *(v15 + 16);
        v16 = *v13 == v15;
        v15 = v13;
      }

      while (v16);
    }

    v17 = *(v13 + 55);
    if (v17 >= 0)
    {
      v18 = (v13 + 32);
    }

    else
    {
      v18 = *(v13 + 32);
    }

    if (v17 >= 0)
    {
      v19 = *(v13 + 55);
    }

    else
    {
      v19 = *(v13 + 40);
    }

    v20 = *(v11 + 55);
    if (v20 >= 0)
    {
      v21 = v11 + 4;
    }

    else
    {
      v21 = v11[4];
    }

    if (v20 >= 0)
    {
      v22 = *(v11 + 55);
    }

    else
    {
      v22 = v11[5];
    }

    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v18, v21, v23);
    if (!v24)
    {
      if (v19 < v22)
      {
        goto LABEL_57;
      }

LABEL_34:
      if (!v12)
      {
LABEL_63:
        operator new();
      }

      while (1)
      {
        v25 = v12;
        v26 = *(v12 + 55);
        v27 = *(v12 + 40);
        if ((v26 & 0x80u) == 0)
        {
          v28 = (v12 + 32);
        }

        else
        {
          v28 = *(v12 + 32);
        }

        if ((v26 & 0x80u) == 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v27;
        }

        if (v29 >= v22)
        {
          v30 = v22;
        }

        else
        {
          v30 = v29;
        }

        v31 = memcmp(v21, v28, v30);
        if (v31)
        {
          if (v31 < 0)
          {
            goto LABEL_36;
          }

LABEL_50:
          v32 = memcmp(v28, v21, v30);
          if (v32)
          {
            if ((v32 & 0x80000000) == 0)
            {
              goto LABEL_61;
            }
          }

          else if (v29 >= v22)
          {
            goto LABEL_61;
          }

          v12 = v25[1];
          if (!v12)
          {
            goto LABEL_63;
          }
        }

        else
        {
          if (v22 >= v29)
          {
            goto LABEL_50;
          }

LABEL_36:
          v12 = *v25;
          if (!*v25)
          {
            goto LABEL_63;
          }
        }
      }
    }

    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_57:
    if (v12)
    {
      v33 = (v13 + 8);
    }

    else
    {
      v33 = (a1 + 72);
    }

    if (!*v33)
    {
      goto LABEL_63;
    }

LABEL_61:
    v34 = v11[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v11[2];
        v16 = *v35 == v11;
        v11 = v35;
      }

      while (!v16);
    }

    v11 = v35;
  }

  while (v35 != v38);
  *(a1 + 96) = 0;
  v36 = *(a1 + 64);
  *(a1 + 104) = 0;
  *(a1 + 88) = a1 + 96;
  if (v36 != v10)
  {
    operator new();
  }

  return a1;
}

void webrtc::AbstractFieldTrialEnum::~AbstractFieldTrialEnum(webrtc::AbstractFieldTrialEnum *this)
{
  *this = &unk_288293970;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 88, *(this + 12));
  std::__tree<webrtc::SocketAddress>::destroy(this + 64, *(this + 9));
  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_288293970;
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 88, *(this + 12));
  std::__tree<webrtc::SocketAddress>::destroy(this + 64, *(this + 9));
  *this = &unk_288293910;
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::AbstractFieldTrialEnum::Parse(uint64_t a1, unsigned __int8 *__src)
{
  if (__src[24] != 1)
  {
    return 0;
  }

  v4 = (a1 + 72);
  v5 = *(a1 + 72);
  v6 = __src[23];
  if (!v5)
  {
    goto LABEL_40;
  }

  if ((v6 & 0x80u) == 0)
  {
    v7 = __src;
  }

  else
  {
    v7 = *__src;
  }

  if ((v6 & 0x80u) == 0)
  {
    v8 = __src[23];
  }

  else
  {
    v8 = *(__src + 1);
  }

  v9 = (a1 + 72);
  do
  {
    while (1)
    {
      v10 = *(v5 + 55);
      v11 = v10 >= 0 ? v5 + 4 : v5[4];
      v12 = v10 >= 0 ? *(v5 + 55) : v5[5];
      v13 = v8 >= v12 ? v12 : v8;
      v14 = memcmp(v11, v7, v13);
      if (v14)
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_24;
      }

LABEL_10:
      v5 = v5[1];
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v9 = v5;
    v5 = *v5;
  }

  while (v5);
LABEL_25:
  if (v9 == v4)
  {
    goto LABEL_40;
  }

  v15 = *(v9 + 55);
  if (v15 >= 0)
  {
    v16 = v9 + 4;
  }

  else
  {
    v16 = v9[4];
  }

  if (v15 >= 0)
  {
    v17 = *(v9 + 55);
  }

  else
  {
    v17 = v9[5];
  }

  if (v17 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v7, v16, v18);
  if (v19)
  {
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

LABEL_40:
    if ((v6 & 0x80) != 0)
    {
      v20 = webrtc::ParseTypedParameter<int>(*__src, *(__src + 1));
      if (!HIDWORD(v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = webrtc::ParseTypedParameter<int>(__src, v6);
      if (!HIDWORD(v20))
      {
        return 0;
      }
    }

    v22 = *(a1 + 96);
    if (!v22)
    {
      return 0;
    }

    v23 = a1 + 96;
    do
    {
      if (*(v22 + 28) >= v20)
      {
        v23 = v22;
      }

      v22 = *(v22 + 8 * (*(v22 + 28) < v20));
    }

    while (v22);
    if (v23 == a1 + 96 || *(v23 + 28) > v20)
    {
      return 0;
    }
  }

  else
  {
    if (v8 < v17)
    {
      goto LABEL_40;
    }

LABEL_37:
    LODWORD(v20) = *(v9 + 14);
  }

  *(a1 + 60) = v20;
  return 1;
}