void sub_2992DF02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2992DF064(_BOOL8 result, uint64_t a2)
{
  xmmword_2A1461EE0 = 0u;
  *&qword_2A1461EF0 = 0u;
  dword_2A1461F00 = 1065353216;
  if (a2)
  {
    v2 = result;
    v12 = (result + 32 * a2);
    do
    {
      v3 = sub_29923AF34(&xmmword_2A1461EE0, v2);
      v4 = v3;
      v5 = *(&xmmword_2A1461EE0 + 1);
      if (!*(&xmmword_2A1461EE0 + 1))
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(*(&xmmword_2A1461EE0 + 8));
      v6.i16[0] = vaddlv_u8(v6);
      v7 = v6.u32[0];
      if (v6.u32[0] > 1uLL)
      {
        v8 = v3;
        if (v3 >= *(&xmmword_2A1461EE0 + 1))
        {
          v8 = v3 % *(&xmmword_2A1461EE0 + 1);
        }
      }

      else
      {
        v8 = (*(&xmmword_2A1461EE0 + 1) - 1) & v3;
      }

      v9 = *(xmmword_2A1461EE0 + 8 * v8);
      if (!v9 || (v10 = *v9) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v11 = *(v10 + 1);
        if (v11 == v4)
        {
          break;
        }

        if (v7 > 1)
        {
          if (v11 >= v5)
          {
            v11 %= v5;
          }
        }

        else
        {
          v11 &= v5 - 1;
        }

        if (v11 != v8)
        {
          goto LABEL_19;
        }

LABEL_18:
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_19;
        }
      }

      result = sub_29923AF78(&xmmword_2A1461EE0, v10 + 8, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 16;
    }

    while (v2 != v12);
  }

  return result;
}

void sub_2992DF520(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992DF554(va);
  sub_29923B058(&xmmword_2A1461EE0);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992DF554(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1 && *(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    operator delete(v2);
  }

  return a1;
}

double sub_2992DF5C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = (*(*a2 + 544))(a2);
  if (v6)
  {
    v7 = v5;
    v8 = 2 * v6;
    while (1)
    {
      v9 = *v7;
      v10 = u_charType(v9);
      v11 = v9 != 12295 && v10 == 10;
      v12 = v11;
      v13 = 1;
      if (v10 == 11 || v12 || (v9 - 13056) < 0x7B || (v9 - 13183) <= 0x80)
      {
        break;
      }

      ++v7;
      v8 -= 2;
      if (!v8)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v13 = 0;
  }

  v14 = sub_299237120();
  v15 = v14;
  v16 = *a3;
  v17 = *(a3 + 1);
  v18 = *a3;
  v19 = a1;
  if (*a3 == v17)
  {
LABEL_24:
    v22 = 0.0;
    if (!v13)
    {
      return v22;
    }
  }

  else
  {
    v20 = *(*(a1 + 8) + 8);
    v21 = *a3;
    do
    {
      if (*(v20 + 60) == *v21 || *(v20 + 56) == *v21)
      {
        return v14[14];
      }

      ++v21;
    }

    while (v21 != v17);
    while (*v18)
    {
      if (++v18 == v17)
      {
        goto LABEL_24;
      }
    }
  }

  if (!(*(*a2 + 48))(a2))
  {
    return 0.0;
  }

  v23 = 0;
  v22 = 0.0;
  v69 = v15;
  do
  {
    v24 = (*(*a2 + 560))(a2, v23);
    if ((*v24 - 3) < 2)
    {
      goto LABEL_125;
    }

    if (*v24 == 9)
    {
      v22 = v22 + v15[13];
      goto LABEL_125;
    }

    v25 = v24;
    v27 = sub_2992C71F4(a2, v23);
    if (v23)
    {
      v11 = *v25 == 5;
    }

    v72 = v26;
    v73 = v27;
    (*(**(*(v19 + 8) + 8) + 40))(&__str);
    v28 = 0;
    v29 = 0;
    v74 = 0;
    v30 = 0;
    v75 = 0;
    v76 = 0;
LABEL_33:
    v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if (v29 >= HIBYTE(__str.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_94;
      }

      v34 = v29;
      LODWORD(v35) = v29 + 1;
      v36 = __str.__r_.__value_.__s.__data_[v29];
      if ((__str.__r_.__value_.__s.__data_[v29] & 0x80000000) == 0)
      {
LABEL_45:
        v29 = v35;
        goto LABEL_69;
      }

      v37 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_47:
      if (v37 == v35)
      {
        goto LABEL_92;
      }

      v38 = v35;
      if (v36 < 0xE0)
      {
        if (v36 < 0xC2)
        {
          goto LABEL_92;
        }

        v41 = v36 & 0x1F;
      }

      else
      {
        if (v36 > 0xEF)
        {
          if (v36 > 0xF4)
          {
            goto LABEL_92;
          }

          v42 = p_str->__r_.__value_.__s.__data_[v35];
          if (((byte_299413A20[v42 >> 4] >> (v36 + 16)) & 1) == 0)
          {
            goto LABEL_92;
          }

          v35 = v29 + 2;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            v43 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__l.__size_ == v35)
            {
              goto LABEL_92;
            }
          }

          else
          {
            if (v35 == HIBYTE(__str.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_92;
            }

            v43 = &__str;
          }

          v40 = v43->__r_.__value_.__s.__data_[v35] ^ 0x80;
          if (v40 > 0x3F)
          {
LABEL_92:
            v55 = 0.0;
            if ((v28 & 1) == 0)
            {
              goto LABEL_122;
            }

            v56 = v76 + 1;
            goto LABEL_95;
          }

          v39 = v42 & 0x3F | ((v36 - 240) << 6);
        }

        else
        {
          v39 = v36 & 0xF;
          if (((a00000000000000[v36 & 0xF] >> (p_str->__r_.__value_.__s.__data_[v35] >> 5)) & 1) == 0)
          {
            goto LABEL_92;
          }

          v40 = p_str->__r_.__value_.__s.__data_[v35] & 0x3F;
        }

        LODWORD(v35) = v35 + 1;
        if (size == v35)
        {
          goto LABEL_92;
        }

        v38 = v35;
        v41 = v40 | (v39 << 6);
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__str;
      }

      else
      {
        v44 = __str.__r_.__value_.__r.__words[0];
      }

      v45 = v44->__r_.__value_.__s.__data_[v38] ^ 0x80;
      if (v45 > 0x3F)
      {
        goto LABEL_92;
      }

      v36 = v45 | (v41 << 6);
      v29 = v35 + 1;
LABEL_69:
      if (v36 != 32)
      {
        std::string::basic_string(&v77, &__str, v34, v29 - v34, v79);
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v77;
        }

        else
        {
          v46 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v47 = v77.__r_.__value_.__l.__size_;
        }

        v48 = *(*(*(v19 + 8) + 8) + 8);
        v49 = (*(*v48 + 504))(v48, v46, v47);
        v70 = v49 == 0;
        if (v49)
        {
          v50 = 0;
        }

        else
        {
          v51 = u_charType(v36);
          v50 = 1;
          if (v51 != 27 && v36 - 65038 >= 2 && v36 != 8205)
          {
            v50 = v51 == 26;
          }

          if (!v74 || !v50)
          {
            v52 = sub_2992C7FAC(v36);
            v53 = v76;
            if (v52 == -1)
            {
              v53 = v76 + 1;
            }

            v76 = v53;
          }

          v54 = v75;
          if (v30)
          {
            v54 = v75 + (!v74 || !v50);
          }

          v75 = v54;
          v19 = a1;
        }

        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        v30 = v70;
        v28 |= v70;
        v74 = v50;
        v15 = v69;
        goto LABEL_33;
      }
    }

    if (v29 < SLODWORD(__str.__r_.__value_.__r.__words[1]))
    {
      v34 = v29;
      LODWORD(v35) = v29 + 1;
      v36 = *(__str.__r_.__value_.__r.__words[0] + v29);
      if ((*(__str.__r_.__value_.__r.__words[0] + v29) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v37 = __str.__r_.__value_.__l.__size_;
      goto LABEL_47;
    }

LABEL_94:
    v55 = 0.0;
    v56 = v76;
    if ((v28 & 1) == 0)
    {
      goto LABEL_122;
    }

LABEL_95:
    v57 = v25[1];
    v58 = sub_299237120();
    v59 = *v73;
    if (v59 == 9787 || (u_charType(v59) - 19) > 0xA)
    {
      if (v57 < 18001)
      {
        v60 = 0.0;
        if (v57 >= 3001)
        {
          v60 = (v57 - 3000) / 15000.0 * v58[8] + 0.0;
        }
      }

      else
      {
        v60 = v58[8] + 0.0;
      }

      if (!v72)
      {
        goto LABEL_121;
      }

      if (v72 == 1)
      {
        v61 = v58[11];
      }

      else
      {
        v62 = *v73;
        if ((v62 - 12353) < 0x56 || v62 == 12316 || v62 == 12540)
        {
          goto LABEL_121;
        }

        v63 = 0;
        for (i = 1; i != v72; ++i)
        {
          v65 = v73[i];
          if ((v65 - 12353) >= 0x56 && v65 != 12540 && v65 != 12316)
          {
            break;
          }

          v63 = i >= v72 - 1;
        }

        if (!v63)
        {
          goto LABEL_121;
        }

        v61 = v58[12];
      }

      v60 = v60 + v61;
    }

    else
    {
      v60 = v58[7];
    }

LABEL_121:
    v55 = v60 + v56 * v15[9] + v75 * v15[10];
    v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
LABEL_122:
    if (v31 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v22 = v22 + v55;
LABEL_125:
    ++v23;
  }

  while (v23 < (*(*a2 + 48))(a2));
  return v22;
}

void sub_2992DFC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992DFCA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v103 = *MEMORY[0x29EDCA608];
  v95 = -1;
  v8 = sub_299237120();
  v9 = v8;
  v10 = *(a2 + 48);
  if ((*(a2 + 56) - v10) >> 3 >= *(v8 + 156))
  {
    v11 = *(v8 + 156);
  }

  else
  {
    v11 = (*(a2 + 56) - v10) >> 3;
  }

  v12 = *(a1 + 8);
  if (v12 && ((*(*v12 + 48))(v12) & 1) != 0)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8), a3);
    v92 = 0;
    v93 = 0;
    v94 = 0;
    sub_29928EF5C(&v92, v11);
    v84 = v9;
    v85 = a1;
    v82 = a3;
    v83 = a4;
    sub_29920DF4C(v91, (*(a2 + 56) - *(a2 + 48)) >> 3);
    v13 = *(a2 + 48);
    v87 = a2;
    if (*(a2 + 56) != v13)
    {
      v14 = 0;
      do
      {
        v15 = *(v13 + 8 * v14);
        if ((*(*v15 + 408))(v15) == 1 || 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3) >= v11)
        {
          break;
        }

        v16 = (*(*v15 + 96))(v15);
        v17 = (*(*v15 + 408))(v15);
        if (v16 != 71 && (v16 != 76 && v16 != 74 || v17))
        {
          *(v91[0] + v14) = 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3);
          (*(**(a1 + 8) + 16))(__p);
          v18 = v93;
          if (v93 >= v94)
          {
            v19 = 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3);
            v20 = v19 + 1;
            if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_299212A8C();
            }

            if (0x5555555555555556 * ((v94 - v92) >> 3) > v20)
            {
              v20 = 0x5555555555555556 * ((v94 - v92) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v94 - v92) >> 3) >= 0x555555555555555)
            {
              v21 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v21 = v20;
            }

            *v98 = &v92;
            if (v21)
            {
              sub_29920DDE0(&v92, v21);
            }

            v22 = (8 * ((v93 - v92) >> 3));
            *v22 = 0;
            v22[1] = 0;
            v22[2] = 0;
            *v22 = *__p;
            v22[2] = v90;
            __p[0] = 0;
            __p[1] = 0;
            v90 = 0;
            v23 = 24 * v19 + 24;
            v24 = (24 * v19 - (v93 - v92));
            memcpy(v22 - (v93 - v92), v92, v93 - v92);
            v25 = v92;
            v26 = v94;
            v92 = v24;
            v93 = v23;
            v94 = 0;
            *&buf[16] = v25;
            v97 = v26;
            *buf = v25;
            *&buf[8] = v25;
            sub_29920DE38(buf);
            v93 = v23;
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            *v93 = 0;
            *(v18 + 1) = 0;
            *(v18 + 2) = 0;
            *v18 = *__p;
            *(v18 + 2) = v90;
            v93 = v18 + 24;
          }
        }

        ++v14;
        v13 = *(a2 + 48);
      }

      while (v14 < (*(a2 + 56) - v13) >> 3);
    }

    v27 = sub_2993652F8(0xCu);
    v28 = v83;
    v29 = a2;
    v30 = a1;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v80 = (*(**(a1 + 8) + 56))(*(a1 + 8));
      v81 = "Montreal";
      if (v80 == 1)
      {
        v81 = "RNNLM";
      }

      *buf = 136315138;
      *&buf[4] = v81;
      _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "[Inference Engine: %s]", buf, 0xCu);
    }

    (*(**(a1 + 8) + 64))(__p);
    v31 = v84;
    v32 = (*(a2 + 56) - *(a2 + 48)) >> 3;
    *buf = 0;
    sub_2991DEB68(v83, v32);
    v33 = v82;
    v34 = *(a2 + 48);
    if (*(a2 + 56) != v34)
    {
      v35 = 0;
      while (1)
      {
        v36 = *(v34 + 8 * v35);
        if ((*(*v36 + 408))(v36) == 1)
        {
          goto LABEL_99;
        }

        if (((*(*v36 + 96))(v36) == 76 || (*(*v36 + 96))(v36) == 74) && !(*(*v36 + 408))(v36))
        {
          (*(**(v30 + 8) + 16))(buf);
          v40 = sub_2992DF5C0(v30, v36, buf);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v37 = 0.0;
          goto LABEL_43;
        }

        if ((*(*v36 + 96))(v36) == 71)
        {
          break;
        }

        v38 = *(v91[0] + v35);
        if (v38 == -1)
        {
          v37 = v31[5];
          goto LABEL_42;
        }

        v39 = *(__p[0] + v38);
        v40 = sub_2992DF5C0(v30, v36, &v92[24 * v38]);
        v37 = v39;
LABEL_43:
        v41 = 0.0;
        if ((*(*v36 + 96))(v36) != 71)
        {
          v41 = (*(**(v30 + 16) + 16))(*(v30 + 16), v33, v36) * 0.1;
        }

        v42 = *(v31 + 3);
        if ((**(v30 + 24) & 0x6000002) == 0x4000002)
        {
          v43 = 0.0;
        }

        else
        {
          v43 = v31[3];
        }

        v44 = (*(*v36 + 48))(v36);
        if (v44)
        {
          v45 = v44 - 1;
          if (*(*(*v36 + 560))(v36, v44 - 1) == 8 || *(*(*v36 + 560))(v36, v45) == 10)
          {
            v43 = v31[4];
            v46 = (*(*v36 + 544))(v36);
            v48 = v47;
            v49 = (*(*v36 + 552))(v36);
            v86 = v50;
            if (v48 < 5 || (v51 = *(v29 + 48), *(v29 + 56) == v51))
            {
LABEL_85:
              v31 = v84;
            }

            else
            {
              v52 = v49;
              v53 = 0;
              while (1)
              {
                v54 = *(v51 + 8 * v53);
                if (v54 != v36 && (*(*v54 + 408))(v54) != 1)
                {
                  v55 = (*(*v54 + 544))(v54);
                  v57 = v56;
                  v58 = (*(*v54 + 552))(v54);
                  v60 = v46 || v57 == 0;
                  v61 = v60;
                  v62 = v48 >= v57 && v57 + 2 >= v48;
                  if (v62 && v61)
                  {
                    v64 = v58;
                    v65 = v59;
                    v66 = memcmp(v46, v55, 2 * v57);
                    v67 = v52 || v65 == 0;
                    v68 = v67;
                    v69 = !v66 && v86 >= v65;
                    v70 = !v69 || !v68;
                    if (!v70 && !memcmp(v52, v64, 2 * v65))
                    {
                      break;
                    }
                  }
                }

                ++v53;
                v29 = v87;
                v51 = *(v87 + 48);
                if (v53 >= (*(v87 + 56) - v51) >> 3)
                {
                  v33 = v82;
                  v28 = v83;
                  v30 = v85;
                  goto LABEL_85;
                }
              }

              v78 = *(v91[0] + v53);
              v31 = v84;
              if (v78 != -1 && v37 > *(__p[0] + v78))
              {
                v37 = *(__p[0] + v78);
              }

              v33 = v82;
              v28 = v83;
              v29 = v87;
              v30 = v85;
            }
          }
        }

        v71 = v43 * v36[55] / v31[2];
        *(*v28 + 8 * v35) = v41 + v40 + v37 - v71;
        v72 = sub_2993652F8(0xCu);
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          v73 = sub_2993652F8(0xCu);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            v74 = (*(*v36 + 544))(v36);
            sub_299277B3C(v74, v75, &v88);
            v76 = &v88;
            if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v76 = v88.__r_.__value_.__r.__words[0];
            }

            v77 = *(*v28 + 8 * v35);
            *buf = 136316418;
            *&buf[4] = v76;
            *&buf[12] = 2048;
            *&buf[14] = v37;
            *&buf[22] = 2048;
            v97 = v77;
            *v98 = 2048;
            *&v98[2] = -v40;
            v99 = 2048;
            v100 = -v41;
            v101 = 2048;
            v102 = v71;
            _os_log_debug_impl(&dword_29918C000, v73, OS_LOG_TYPE_DEBUG, "[%s] Adjust Static LM Score: %.3f -> %.3f Penalties: (UNK: %.3f, LM: %.3f, Match: %.3f)", buf, 0x3Eu);
            if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v88.__r_.__value_.__l.__data_);
            }
          }
        }

        ++v35;
        v34 = *(v29 + 48);
        if (v35 >= (*(v29 + 56) - v34) >> 3)
        {
          goto LABEL_99;
        }
      }

      v37 = (*(*v36 + 392))(v36);
LABEL_42:
      v40 = 0.0;
      goto LABEL_43;
    }

LABEL_99:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v91[0])
    {
      v91[1] = v91[0];
      operator delete(v91[0]);
    }

    *buf = &v92;
    sub_29920E060(buf);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  v79 = *MEMORY[0x29EDCA608];
}

void sub_2992E0814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char *__p, char *a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = &a27;
  sub_29920E060(&__p);
  _Unwind_Resume(a1);
}

void sub_2992E08DC(const void *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(0xDu);
  v3 = os_signpost_id_make_with_pointer(v2, a1);
  v4 = sub_2993652F8(0xDu);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MecabraThaiInit", "ThaiEngine engine init", buf, 2u);
    }
  }

  operator new();
}

void sub_2992E0DF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992E11C0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992E11C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_29929234C(v2);
    MEMORY[0x29C29BFB0](v3, 0x10F0C40E34FE0DELL);
  }

  return a1;
}

void sub_2992E1208(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v8 = sub_2993652F8(3u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = a2;
    _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[ThaiEngine::analyzeString] analysisStr: [%@]", buf, 0xCu);
  }

  ptr = 0;
  v9 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v9, &ptr);
  v10 = sub_2993652F8(0xDu);
  v11 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v10;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "MecabraAnalyzeStringWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  if (a2 && a5)
  {
    Length = CFStringGetLength(a2);
    if (Length <= CFArrayGetCount(a5))
    {
      operator new();
    }
  }

  *buf = &unk_2A1F65118;
  *&buf[8] = 0u;
  v18 = 0u;
  v19 = 1065353216;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  sub_299276BDC(a2, __p);
  sub_2993E5900(__p[0], (__p[1] - __p[0]) >> 1, 0, v15);
  sub_2992E17D0(a1, buf, v15, __p);
}

void sub_2992E1534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  MEMORY[0x29C29BFB0](v19, 0x60C40AA6EF139);
  sub_2992E5624(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E15D8(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 72) + 56))(*(a1 + 72));
  v4 = sub_2993652F8(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 0;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[ThaiEngine::fillResultCandidateSet] Final Candidates", v12, 2u);
  }

  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v8 = *v5;
      v9 = v7 + 1;
      *(*v5 + 8) = v7 + 1;
      if (v7 <= 3)
      {
        (*(*v8 + 528))(v8, 12, "Autocorrected", 1);
        v8 = *v5;
      }

      *v5++ = 0;
      v10 = sub_29928A270(v8);
      (*(**(a1 + 72) + 16))(*(a1 + 72), v10);

      v7 = v9;
    }

    while (v5 != v6);
  }

  return (*(**(a1 + 72) + 64))(*(a1 + 72));
}

uint64_t sub_2992E1758(uint64_t a1)
{
  result = (*(**(a1 + 104) + 80))(*(a1 + 104));
  v3 = *(a1 + 96);
  if (v3)
  {
    result = *v3;
    if (*v3)
    {

      return MEMORY[0x2A1C680D0]();
    }
  }

  return result;
}

void sub_2992E17D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 128);
  sub_2993BB9DC(*a4, (*(a4 + 8) - *a4) >> 1, v5);
}

void sub_2992E1FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, const void *);
  sub_2992E6A00(v10 - 192);
  sub_2992E3B48(va, 0);
  sub_29939B024(va1);
  _Unwind_Resume(a1);
}

void sub_2992E210C()
{
  sub_29921F128(v0 - 192);
  v1 = *(v0 - 232);
  *(v0 - 232) = 0;
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  JUMPOUT(0x2992E20D4);
}

void sub_2992E214C(void *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  JUMPOUT(0x2992E2104);
}

void sub_2992E2164(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFArray *a4)
{
  sub_2993E5CC4(a4, v8);
  sub_299276BDC(a3, &__p);
  sub_2992E17D0(a1, a2, v8, &__p);
}

void sub_2992E220C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  a13 = &unk_2A1F65C80;
  __p = &a14;
  sub_29922CB20(&__p);
  _Unwind_Resume(a1);
}

void sub_2992E2260(uint64_t a1, const __CFString *a2, const __CFArray *a3)
{
  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  v6 = &unk_2A1F65118;
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_2992E2164(a1, &v6, a2, a3);
}

uint64_t sub_2992E2370(uint64_t a1, CFArrayRef theArray, int a3, uint64_t a4)
{
  if (!theArray)
  {
    return 0;
  }

  if (!CFArrayGetCount(theArray))
  {
    sub_2992E2508(a1, a4, a3);
    sub_2992E2658(a1);
    return 1;
  }

  v8 = sub_2992C0B24(theArray);
  if (!v8)
  {
    v11 = sub_2992C0BE0(theArray);
    if (v11)
    {
      v12 = v11;
      Length = CFStringGetLength(v11);
      v10 = Length != 0;
      if (Length)
      {
        sub_2992E2508(a1, a4, a3);
        if (*(a1 + 225) == 1)
        {
          sub_2992E2260(a1, v12, theArray);
        }

        v16 = sub_2992C0E90(theArray);
        sub_2992E1208(a1, v12, v14, v15, v16);
      }

      CFRelease(v12);
      return v10;
    }

    return 0;
  }

  if (v8 != CFArrayGetCount(theArray))
  {
    return 0;
  }

  return sub_2992E2888(a1, theArray, a3, a4);
}

void sub_2992E24D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_299229F00(&a9, 0);
  sub_299219AB4(&a10, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E2508(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    operator new();
  }

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
    v6 = *(a1 + 64);
  }

  else
  {
    v6 = 0;
  }

  sub_299256E88(a1 + 8, v6);
  *(*(a1 + 104) + 96) = 1;
  result = sub_2993B5454(a3, 0, 0);
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_2992E2658(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  ptr = 0;
  v2 = sub_2993652F8(0xDu);
  ptr = os_signpost_id_make_with_pointer(v2, &ptr);
  v3 = sub_2993652F8(0xDu);
  v4 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v3;
    if (os_signpost_enabled(v3))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, &v11, 2u);
    }
  }

  (*(**(a1 + 120) + 16))(&v11);
  *buf = &unk_2A1F65CF8;
  v16 = sub_2992AD278;
  v17 = buf;
  sub_2992AB9D4(&v11, buf);
  sub_29922D72C(buf);
  sub_2992AC684(&v11, 5, "Final", 0, 1);
  sub_2992E15D8(a1, &v11);
  v6 = sub_2993652F8(0xDu);
  v7 = ptr;
  if (ptr - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_29918C000, v8, OS_SIGNPOST_INTERVAL_END, v7, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
    }
  }

  v11 = &unk_2A1F65118;
  *buf = &v13;
  sub_29921EC68(buf);
  sub_29921ED28(&v12);
  v9 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t sub_2992E2888(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_2992E2508(a1, a4, a3);
  if (a4)
  {
    *(*(a1 + 216) + 144) = a4;
  }

  (*(**(a1 + 104) + 32))(*(a1 + 104));
  sub_29932CA50(*(a1 + 104), 1);
  (*(**(a1 + 216) + 16))(*(a1 + 216));
  Count = CFArrayGetCount(a2);
  v8 = Count - 1;
  if (Count < 1)
  {
LABEL_18:
    if (*(*(a1 + 216) + 16) - *(*(a1 + 216) + 8) >= 9uLL)
    {
      CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      v25 = *(a1 + 216);
      operator new();
    }

    goto LABEL_19;
  }

  v9 = Count;
  v10 = *(CFArrayGetValueAtIndex(a2, 0) + 3);
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = **v10;
  v12 = __dynamic_cast(v10, &unk_2A1F6F680, &unk_2A1F6E330, 0);
  if (!v12)
  {
    goto LABEL_19;
  }

  v13 = v12;
  v14 = 0;
  v15 = 1;
  do
  {
    if (v15 - 1 >= v8 || (v16 = *(CFArrayGetValueAtIndex(a2, v15) + 3)) == 0)
    {
      v19 = *(a1 + 216);
LABEL_12:
      v20 = 1;
      goto LABEL_13;
    }

    v17 = **v16;
    v18 = __dynamic_cast(v16, &unk_2A1F6F680, &unk_2A1F6E330, 0);
    v19 = *(a1 + 216);
    if (!v18)
    {
      goto LABEL_12;
    }

    v20 = v13[16] == 2;
LABEL_13:
    if (!sub_29930BA18(v19, v13, v20))
    {
      break;
    }

    v14 = v15 >= v9;
    if (v9 == v15)
    {
      break;
    }

    v21 = *(CFArrayGetValueAtIndex(a2, v15) + 3);
    if (!v21)
    {
      break;
    }

    v22 = **v21;
    v13 = __dynamic_cast(v21, &unk_2A1F6F680, &unk_2A1F6E330, 0);
    ++v15;
  }

  while (v13);
  if (v14)
  {
    goto LABEL_18;
  }

LABEL_19:
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2992E30C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E3250(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 & 0x1000000) != 0)
  {
    return 1;
  }

  if ((a3 & 0x800000) == 0)
  {
    return 0;
  }

  if ((*(a1 + 58) & 4) != 0)
  {
    return 1;
  }

  else
  {
    return sub_2993D8854(*(a1 + 96), a2) ^ 1;
  }
}

__CFString *sub_2992E3294(const __CFArray *a1, const __CFString *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = CFArrayGetCount(a1);
  v6 = Count - 1;
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      CFStringAppend(Mutable, ValueAtIndex);
      if (a2 && i < v6)
      {
        CFStringAppend(Mutable, a2);
      }
    }
  }

  return Mutable;
}

BOOL sub_2992E3330(uint64_t a1, const __CFString *a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a4;
    sub_2992E2508(a1, a4, a3);
    if (v5)
    {
      sub_2993245EC(v5);
      v5 = *(v5 + 6);
    }

    if (CFStringGetLength(a2) >= 1)
    {
      sub_2992E1208(a1, a2, v7, v8, v5);
    }

    sub_2992E2658(a1);
  }

  return a2 != 0;
}

void sub_2992E3464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a9)
  {
    (*(*a9 + 16))(a9);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E34B8(uint64_t a1, int a2)
{
  if (*(a1 + 55) >= 0)
  {
    v4 = *(a1 + 55);
  }

  else
  {
    v4 = *(a1 + 40);
  }

  v5 = (*(*a1 + 48))(a1);
  v6 = (*(*a1 + 312))(a1, v5);
  v7 = v4 - a2;
  v8 = (*(*a1 + 112))(a1);
  v9 = (*(*a1 + 96))(a1);
  switch(v9)
  {
    case 'A':
      v13 = (*(a1 + 96) * -4400.0) + 20000;
      if (v7 >= 1)
      {
        v8 = v13 + 6000 * v7;
      }

      else
      {
        v8 = v13;
      }

      break;
    case 'U':
      v8 = ((*(a1 + 96) * -4400.0) + 8000);
      break;
    case 'L':
      v10 = (*(*a1 + 200))(a1);
      v11 = 1000 * v7;
      if (v7 <= 0)
      {
        v11 = 0;
      }

      v12 = v11 - 8000 * v6 + v8;
      if (v10)
      {
        v8 = v12;
      }

      else
      {
        v8 = 5000;
      }

      break;
  }

  if (((*(*a1 + 200))(a1) & 1) == 0)
  {
    *(a1 + 136) = 83;
  }

  v14 = *(*a1 + 480);

  return v14(a1, v8);
}

void sub_2992E36EC(void *a1)
{
  if ((*(*a1 + 112) & 0x10) != 0)
  {
    v2 = CFURLCreateWithFileSystemPath(0, *(*a1 + 144), kCFURLPOSIXPathStyle, 1u);
    v7[1] = v2;
    if (v2)
    {
      v3 = v2;
      sub_2993B4AE4(v2, @"th.rnnlm", @"th", v7);
      v4 = v7[0];
      if (v7[0])
      {
        v7[0] = 0;
        v5 = a1[10];
        a1[10] = v4;
        if (v5)
        {
          (*(*v5 + 8))(v5);
          v4 = a1[10];
          v5 = v7[0];
        }

        v6 = a1[15];
        *(*(a1[16] + 16) + 8) = v4;
        *(v6 + 16) = v4;
        *(*(v6 + 24) + 16) = v4;
        *(*a1 + 112) &= ~0x10uLL;
        v7[0] = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      CFRelease(v3);
    }
  }
}

void sub_2992E37FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_2992E3814(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_2992E38F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }
}

void sub_2992E39DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }
}

uint64_t sub_2992E3AC0(uint64_t a1, const char *a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(*(a1 + 104) + 104);
  if (!v4)
  {
    return 0;
  }

  Surface = MecabraCandidateGetSurface(a3, a2, a3);
  v8 = MecabraCandidateGetSurface(v4, v6, v7);
  if (CFStringCompare(Surface, v8, 0))
  {
    return 0;
  }

  v10 = *(a1 + 104);

  return sub_29932D3E4(v10);
}

void sub_2992E3B48(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_2992E3B80(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v158 = a2 - 2;
    v152 = a2 - 11;
    v153 = (a2 - 88);
    v151 = (a2 - 264);
    v155 = a2 - 46;
    v156 = a2 - 6;
    v7 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v92 = (v7 + 168);
                v91 = *(v7 + 168);
                v95 = *(a2 - 2);
                v94 = (a2 - 8);
                v93 = v95;
                v96 = (v7 + 80);
                if (v91 <= *(v7 + 80))
                {
                  if (v93 <= v91)
                  {
                    return;
                  }

                  sub_2992E51C0((v7 + 88), v94 - 5);
                  v142 = *v92;
                  *v92 = *v94;
                  *v94 = v142;
                  if (*v92 <= *v96)
                  {
                    return;
                  }

                  sub_2992E51C0(v7, (v7 + 88));
                }

                else
                {
                  if (v93 <= v91)
                  {
                    sub_2992E51C0(v7, (v7 + 88));
                    v149 = *(v7 + 80);
                    *(v7 + 80) = *(v7 + 168);
                    *(v7 + 168) = v149;
                    if (*v94 <= v149)
                    {
                      return;
                    }

                    sub_2992E51C0((v7 + 88), v94 - 5);
                    v96 = (v7 + 168);
                  }

                  else
                  {
                    sub_2992E51C0(v7, v94 - 5);
                  }

                  v92 = v94;
                }

                v150 = *v96;
                *v96 = *v92;
                *v92 = v150;
                return;
              case 4:
                sub_2992E4BCC(v7, v7 + 88, v7 + 176, v153);
                return;
              case 5:
                sub_2992E4BCC(v7, v7 + 88, v7 + 176, v7 + 264);
                if (*(a2 - 2) > *(v7 + 344))
                {
                  sub_2992E51C0((v7 + 264), v153);
                  v84 = *(v7 + 344);
                  *(v7 + 344) = *(a2 - 2);
                  *(a2 - 2) = v84;
                  if (*(v7 + 344) > *(v7 + 256))
                  {
                    sub_2992E51C0((v7 + 176), (v7 + 264));
                    v85 = *(v7 + 256);
                    v86 = *(v7 + 344);
                    *(v7 + 256) = v86;
                    *(v7 + 344) = v85;
                    if (v86 > *(v7 + 168))
                    {
                      sub_2992E51C0((v7 + 88), (v7 + 176));
                      v87 = *(v7 + 168);
                      v88 = *(v7 + 256);
                      *(v7 + 168) = v88;
                      *(v7 + 256) = v87;
                      if (v88 > *(v7 + 80))
                      {
                        sub_2992E51C0(v7, (v7 + 88));
                        v89 = *(v7 + 80);
                        *(v7 + 80) = *(v7 + 168);
                        *(v7 + 168) = v89;
                      }
                    }
                  }
                }

                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 2) > *(v7 + 80))
              {
                sub_2992E51C0(v7, v153);
                v90 = *(v7 + 80);
                *(v7 + 80) = *(a2 - 2);
                *(a2 - 2) = v90;
              }

              return;
            }
          }

          if (v8 <= 2111)
          {
            if (a4)
            {
              if (v7 != a2)
              {
                v97 = v7 + 88;
                if ((v7 + 88) != a2)
                {
                  v98 = 0;
                  v99 = v7;
                  do
                  {
                    v100 = v97;
                    v101 = *(v99 + 168);
                    if (v101 > *(v99 + 80))
                    {
                      v102 = *v100;
                      v169 = *(v100 + 16);
                      *v168 = v102;
                      *(v100 + 8) = 0;
                      *(v100 + 16) = 0;
                      *v100 = 0;
                      *v170 = *(v99 + 112);
                      v171 = *(v99 + 128);
                      *(v99 + 112) = 0;
                      *(v99 + 120) = 0;
                      *__p = *(v99 + 136);
                      v173 = *(v99 + 152);
                      *(v99 + 128) = 0;
                      *(v99 + 136) = 0;
                      *(v99 + 144) = 0;
                      *(v99 + 152) = 0;
                      v174 = *(v99 + 160);
                      v175 = *(v99 + 164);
                      v103 = v98;
                      v176 = v101;
                      while (1)
                      {
                        sub_2992E532C(v7 + v103 + 88, (v7 + v103));
                        if (!v103)
                        {
                          break;
                        }

                        v104 = *(v7 + v103 - 8);
                        v103 -= 88;
                        if (v176 <= v104)
                        {
                          v105 = v7 + v103 + 88;
                          goto LABEL_143;
                        }
                      }

                      v105 = v7;
LABEL_143:
                      sub_2992E532C(v105, v168);
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v170[0])
                      {
                        v170[1] = v170[0];
                        operator delete(v170[0]);
                      }

                      if (SHIBYTE(v169) < 0)
                      {
                        operator delete(v168[0]);
                      }
                    }

                    v97 = v100 + 88;
                    v98 += 88;
                    v99 = v100;
                  }

                  while ((v100 + 88) != a2);
                }
              }
            }

            else if (v7 != a2)
            {
              v143 = v7 + 88;
              if ((v7 + 88) != a2)
              {
                do
                {
                  v144 = v143;
                  v145 = *(a1 + 168);
                  if (v145 > *(a1 + 80))
                  {
                    v146 = *v144;
                    v169 = *(v144 + 16);
                    *v168 = v146;
                    *(v144 + 8) = 0;
                    *(v144 + 16) = 0;
                    *v144 = 0;
                    *v170 = *(a1 + 112);
                    v171 = *(a1 + 128);
                    *(a1 + 112) = 0;
                    *(a1 + 120) = 0;
                    *__p = *(a1 + 136);
                    v173 = *(a1 + 152);
                    *(a1 + 128) = 0;
                    *(a1 + 136) = 0;
                    *(a1 + 144) = 0;
                    *(a1 + 152) = 0;
                    v174 = *(a1 + 160);
                    v175 = *(a1 + 164);
                    v176 = v145;
                    do
                    {
                      sub_2992E532C(a1 + 88, a1);
                      v147 = a1 - 88;
                      v148 = *(a1 - 8);
                      a1 -= 88;
                    }

                    while (v176 > v148);
                    sub_2992E532C(v147 + 88, v168);
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (v170[0])
                    {
                      v170[1] = v170[0];
                      operator delete(v170[0]);
                    }

                    if (SHIBYTE(v169) < 0)
                    {
                      operator delete(v168[0]);
                    }
                  }

                  v143 = v144 + 88;
                  a1 = v144;
                }

                while ((v144 + 88) != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v106 = v10 >> 1;
              v107 = v10 >> 1;
              do
              {
                v108 = v107;
                if (v106 >= v107)
                {
                  v109 = (2 * v107) | 1;
                  v110 = v7 + 88 * v109;
                  if (2 * v108 + 2 < v9)
                  {
                    v111 = *(v110 + 80);
                    v112 = *(v110 + 168);
                    v113 = v111 <= v112;
                    v114 = v111 <= v112 ? 0 : 88;
                    v110 += v114;
                    if (!v113)
                    {
                      v109 = 2 * v108 + 2;
                    }
                  }

                  v115 = v7 + 88 * v108;
                  v116 = *(v115 + 80);
                  if (*(v110 + 80) <= v116)
                  {
                    v117 = *v115;
                    v169 = *(v115 + 16);
                    *v168 = v117;
                    *(v115 + 8) = 0;
                    *(v115 + 16) = 0;
                    *v115 = 0;
                    *v170 = *(v115 + 24);
                    v171 = *(v115 + 40);
                    *(v115 + 24) = 0;
                    *(v115 + 32) = 0;
                    *(v115 + 40) = 0;
                    *__p = *(v115 + 48);
                    v173 = *(v115 + 64);
                    *(v115 + 48) = 0;
                    *(v115 + 56) = 0;
                    *(v115 + 64) = 0;
                    v118 = *(v115 + 72);
                    v175 = *(v115 + 76);
                    v174 = v118;
                    v176 = v116;
                    do
                    {
                      v119 = v110;
                      sub_2992E532C(v115, v110);
                      if (v106 < v109)
                      {
                        break;
                      }

                      v120 = (2 * v109) | 1;
                      v110 = v7 + 88 * v120;
                      if (2 * v109 + 2 < v9)
                      {
                        v121 = *(v110 + 80);
                        v122 = *(v110 + 168);
                        v123 = v121 <= v122;
                        v124 = v121 <= v122 ? 0 : 88;
                        v110 += v124;
                        if (!v123)
                        {
                          v120 = 2 * v109 + 2;
                        }
                      }

                      v115 = v119;
                      v109 = v120;
                    }

                    while (*(v110 + 80) <= v116);
                    sub_2992E532C(v119, v168);
                    if (__p[0])
                    {
                      __p[1] = __p[0];
                      operator delete(__p[0]);
                    }

                    if (v170[0])
                    {
                      v170[1] = v170[0];
                      operator delete(v170[0]);
                    }

                    if (SHIBYTE(v169) < 0)
                    {
                      operator delete(v168[0]);
                    }
                  }
                }

                v107 = v108 - 1;
              }

              while (v108);
              v125 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
              do
              {
                v126 = 0;
                v127 = *v7;
                v160 = *(v7 + 16);
                *v159 = v127;
                *(v7 + 8) = 0;
                *(v7 + 16) = 0;
                *v7 = 0;
                *v161 = *(v7 + 24);
                v162 = *(v7 + 40);
                *(v7 + 24) = 0;
                *(v7 + 32) = 0;
                *(v7 + 40) = 0;
                *v163 = *(v7 + 48);
                v164 = *(v7 + 64);
                *(v7 + 48) = 0;
                *(v7 + 56) = 0;
                *(v7 + 64) = 0;
                v128 = *(v7 + 72);
                v166 = *(v7 + 76);
                v165 = v128;
                v167 = *(v7 + 80);
                v129 = v7;
                do
                {
                  v130 = v129 + 88 * v126;
                  v131 = v130 + 88;
                  if (2 * v126 + 2 >= v125)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v132 = *(v130 + 168);
                    v133 = *(v130 + 256);
                    v134 = v130 + 176;
                    if (v132 <= v133)
                    {
                      v126 = (2 * v126) | 1;
                    }

                    else
                    {
                      v131 = v134;
                      v126 = 2 * v126 + 2;
                    }
                  }

                  sub_2992E532C(v129, v131);
                  v129 = v131;
                }

                while (v126 <= ((v125 - 2) >> 1));
                a2 = (a2 - 88);
                if (v131 == a2)
                {
                  sub_2992E532C(v131, v159);
                }

                else
                {
                  sub_2992E532C(v131, a2);
                  sub_2992E532C(a2, v159);
                  v135 = v131 - v7 + 88;
                  if (v135 >= 89)
                  {
                    v136 = (0x2E8BA2E8BA2E8BA3 * (v135 >> 3) - 2) >> 1;
                    v137 = v7 + 88 * v136;
                    v138 = *(v131 + 80);
                    if (*(v137 + 80) > v138)
                    {
                      v139 = *v131;
                      v169 = *(v131 + 16);
                      *v168 = v139;
                      *(v131 + 8) = 0;
                      *(v131 + 16) = 0;
                      *v131 = 0;
                      *v170 = *(v131 + 24);
                      v171 = *(v131 + 40);
                      *(v131 + 24) = 0;
                      *(v131 + 32) = 0;
                      *(v131 + 40) = 0;
                      *__p = *(v131 + 48);
                      v173 = *(v131 + 64);
                      *(v131 + 48) = 0;
                      *(v131 + 56) = 0;
                      *(v131 + 64) = 0;
                      v140 = *(v131 + 72);
                      v175 = *(v131 + 76);
                      v174 = v140;
                      v176 = v138;
                      do
                      {
                        v141 = v137;
                        sub_2992E532C(v131, v137);
                        if (!v136)
                        {
                          break;
                        }

                        v136 = (v136 - 1) >> 1;
                        v137 = v7 + 88 * v136;
                        v131 = v141;
                      }

                      while (*(v137 + 80) > v138);
                      sub_2992E532C(v141, v168);
                      if (__p[0])
                      {
                        __p[1] = __p[0];
                        operator delete(__p[0]);
                      }

                      if (v170[0])
                      {
                        v170[1] = v170[0];
                        operator delete(v170[0]);
                      }

                      if (SHIBYTE(v169) < 0)
                      {
                        operator delete(v168[0]);
                      }
                    }
                  }
                }

                if (v163[0])
                {
                  v163[1] = v163[0];
                  operator delete(v163[0]);
                }

                if (v161[0])
                {
                  v161[1] = v161[0];
                  operator delete(v161[0]);
                }

                if (SHIBYTE(v160) < 0)
                {
                  operator delete(v159[0]);
                }

                v113 = v125-- <= 2;
              }

              while (!v113);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = v7 + 88 * (v9 >> 1);
          v13 = *v158;
          if (v8 >= 0x2C01)
          {
            v15 = (v12 + 80);
            v14 = *(v12 + 80);
            v16 = (v7 + 80);
            v154 = a3;
            if (v14 <= *(v7 + 80))
            {
              if (v13 <= v14 || (sub_2992E51C0(v12, v153), v19 = *(v12 + 80), *(v12 + 80) = *v158, *v158 = v19, *(v12 + 80) <= *v16))
              {
LABEL_28:
                v26 = v7 + 88 * v11;
                v29 = *(v26 - 8);
                v28 = (v26 - 8);
                v27 = v29;
                v30 = (a1 + 168);
                v31 = *v156;
                if (v29 <= *(a1 + 168))
                {
                  if (v31 <= v27 || (sub_2992E51C0(v28 - 10, v152), v33 = *v28, *v28 = *v156, *v156 = v33, *v28 <= *v30))
                  {
LABEL_41:
                    v38 = a1 + 88 * v11;
                    v41 = *(v38 + 168);
                    v40 = (v38 + 168);
                    v39 = v41;
                    v42 = (a1 + 256);
                    v43 = *v155;
                    if (v41 <= *(a1 + 256))
                    {
                      if (v43 <= v39 || (sub_2992E51C0(v40 - 10, v151), v45 = *v40, *v40 = *v155, *v155 = v45, v39 = *v40, *v40 <= *v42))
                      {
LABEL_51:
                        v48 = *v15;
                        if (*v15 <= *v28)
                        {
                          a3 = v154;
                          if (v39 <= v48 || (sub_2992E51C0(v12, v40 - 5), v49 = *(v12 + 80), v50 = *v40, *(v12 + 80) = *v40, *v40 = v49, v50 <= *v28))
                          {
LABEL_60:
                            v22 = a1;
                            v23 = v12;
LABEL_61:
                            sub_2992E51C0(v22, v23);
LABEL_62:
                            v53 = *v16;
                            *v16 = *v15;
                            *v15 = v53;
                            goto LABEL_63;
                          }

                          sub_2992E51C0(v28 - 10, v12);
                          v40 = (v12 + 80);
                        }

                        else
                        {
                          a3 = v154;
                          if (v39 <= v48)
                          {
                            sub_2992E51C0(v28 - 10, v12);
                            v51 = *v28;
                            *v28 = *(v12 + 80);
                            *(v12 + 80) = v51;
                            if (*v40 <= v51)
                            {
                              goto LABEL_60;
                            }

                            sub_2992E51C0(v12, v40 - 5);
                            v28 = (v12 + 80);
                          }

                          else
                          {
                            sub_2992E51C0(v28 - 10, v40 - 5);
                          }
                        }

                        v52 = *v28;
                        *v28 = *v40;
                        *v40 = v52;
                        goto LABEL_60;
                      }

                      sub_2992E51C0((a1 + 176), v40 - 5);
                      v46 = v40;
                    }

                    else
                    {
                      v44 = (a1 + 176);
                      if (v43 <= v39)
                      {
                        sub_2992E51C0(v44, v40 - 5);
                        v39 = *v42;
                        *v42 = *v40;
                        *v40 = v39;
                        if (*v155 <= v39)
                        {
                          goto LABEL_51;
                        }

                        sub_2992E51C0(v40 - 10, v151);
                        v42 = v40;
                      }

                      else
                      {
                        sub_2992E51C0(v44, v151);
                      }

                      v46 = (a2 - 184);
                    }

                    v47 = *v42;
                    *v42 = *v46;
                    *v46 = v47;
                    v39 = *v40;
                    goto LABEL_51;
                  }

                  sub_2992E51C0((a1 + 88), v28 - 5);
                  v34 = v28;
                }

                else
                {
                  v32 = (a1 + 88);
                  if (v31 <= v27)
                  {
                    sub_2992E51C0(v32, v28 - 5);
                    v36 = *v30;
                    *v30 = *v28;
                    *v28 = v36;
                    if (*v156 <= v36)
                    {
                      goto LABEL_41;
                    }

                    sub_2992E51C0(v28 - 10, v152);
                    v30 = v28;
                  }

                  else
                  {
                    sub_2992E51C0(v32, v152);
                  }

                  v34 = a2 - 6;
                }

                v37 = *v30;
                *v30 = *v34;
                *v34 = v37;
                goto LABEL_41;
              }

              sub_2992E51C0(v7, v12);
              v17 = (v7 + 80);
              v20 = (v12 + 80);
            }

            else
            {
              if (v13 <= v14)
              {
                sub_2992E51C0(v7, v12);
                v24 = *(v7 + 80);
                *(v7 + 80) = *(v12 + 80);
                *(v12 + 80) = v24;
                if (*v158 <= v24)
                {
                  goto LABEL_28;
                }

                sub_2992E51C0(v12, v153);
                v17 = (v12 + 80);
              }

              else
              {
                sub_2992E51C0(v7, v153);
                v17 = (v7 + 80);
              }

              v20 = a2 - 2;
            }

            v25 = *v17;
            *v17 = *v20;
            *v20 = v25;
            goto LABEL_28;
          }

          v15 = (v7 + 80);
          v18 = *(v7 + 80);
          v16 = (v12 + 80);
          if (v18 > *(v12 + 80))
          {
            if (v13 <= v18)
            {
              sub_2992E51C0(v12, v7);
              v35 = *(v12 + 80);
              *(v12 + 80) = *(v7 + 80);
              *(v7 + 80) = v35;
              if (*v158 <= v35)
              {
                goto LABEL_63;
              }

              sub_2992E51C0(v7, v153);
              v16 = (v7 + 80);
            }

            else
            {
              sub_2992E51C0(v12, v153);
            }

            v15 = a2 - 2;
            goto LABEL_62;
          }

          if (v13 > v18)
          {
            sub_2992E51C0(v7, v153);
            v21 = *(v7 + 80);
            *(v7 + 80) = *v158;
            *v158 = v21;
            if (*(v7 + 80) > *v16)
            {
              v22 = v12;
              v23 = v7;
              goto LABEL_61;
            }
          }

LABEL_63:
          --a3;
          if (a4)
          {
            break;
          }

          v54 = *(a1 + 80);
          if (*(a1 - 8) > v54)
          {
            goto LABEL_66;
          }

          v72 = *a1;
          v169 = *(a1 + 16);
          *v168 = v72;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          *v170 = *(a1 + 24);
          v171 = *(a1 + 40);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *__p = *(a1 + 48);
          v173 = *(a1 + 64);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          v73 = *(a1 + 72);
          v175 = *(a1 + 76);
          v174 = v73;
          v176 = v54;
          if (v54 <= *v158)
          {
            v76 = a1 + 88;
            do
            {
              v7 = v76;
              if (v76 >= a2)
              {
                break;
              }

              v77 = *(v76 + 80);
              v76 += 88;
            }

            while (v54 <= v77);
          }

          else
          {
            v74 = a1;
            do
            {
              v7 = v74 + 88;
              v75 = *(v74 + 168);
              v74 += 88;
            }

            while (v54 <= v75);
          }

          v78 = a2;
          if (v7 < a2)
          {
            v79 = a2;
            do
            {
              v78 = (v79 - 88);
              v80 = *(v79 - 2);
              v79 = (v79 - 88);
            }

            while (v54 > v80);
          }

          while (v7 < v78)
          {
            sub_2992E51C0(v7, v78);
            v81 = *(v7 + 80);
            *(v7 + 80) = *(v78 + 20);
            *(v78 + 20) = v81;
            do
            {
              v82 = *(v7 + 168);
              v7 += 88;
            }

            while (v176 <= v82);
            do
            {
              v83 = *(v78 - 2);
              v78 = (v78 - 88);
            }

            while (v176 > v83);
          }

          if (v7 - 88 != a1)
          {
            sub_2992E532C(a1, (v7 - 88));
          }

          sub_2992E532C(v7 - 88, v168);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v170[0])
          {
            v170[1] = v170[0];
            operator delete(v170[0]);
          }

          if (SHIBYTE(v169) < 0)
          {
            operator delete(v168[0]);
          }

          a4 = 0;
        }

        v54 = *(a1 + 80);
LABEL_66:
        v55 = 0;
        v56 = *a1;
        v169 = *(a1 + 16);
        *v168 = v56;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        *v170 = *(a1 + 24);
        v171 = *(a1 + 40);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *__p = *(a1 + 48);
        v173 = *(a1 + 64);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        v57 = *(a1 + 72);
        v175 = *(a1 + 76);
        v174 = v57;
        v176 = v54;
        do
        {
          v58 = *(a1 + v55 + 168);
          v55 += 88;
        }

        while (v58 > v54);
        v59 = a1 + v55;
        v60 = a2;
        if (v55 == 88)
        {
          v63 = a2;
          while (v59 < v63)
          {
            v61 = (v63 - 88);
            v64 = *(v63 - 2);
            v63 = (v63 - 88);
            if (v64 > v54)
            {
              goto LABEL_76;
            }
          }

          v61 = v63;
        }

        else
        {
          do
          {
            v61 = (v60 - 88);
            v62 = *(v60 - 2);
            v60 = (v60 - 88);
          }

          while (v62 <= v54);
        }

LABEL_76:
        if (v59 >= v61)
        {
          v70 = (v59 - 88);
        }

        else
        {
          v65 = v59;
          v66 = v61;
          do
          {
            sub_2992E51C0(v65, v66);
            v67 = *(v65 + 80);
            *(v65 + 80) = *(v66 + 20);
            *(v66 + 20) = v67;
            do
            {
              v68 = *(v65 + 168);
              v65 += 88;
            }

            while (v68 > v176);
            do
            {
              v69 = *(v66 - 2);
              v66 = (v66 - 88);
            }

            while (v69 <= v176);
          }

          while (v65 < v66);
          v70 = (v65 - 88);
        }

        if (v70 != a1)
        {
          sub_2992E532C(a1, v70);
        }

        sub_2992E532C(v70, v168);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v170[0])
        {
          v170[1] = v170[0];
          operator delete(v170[0]);
        }

        if (SHIBYTE(v169) < 0)
        {
          operator delete(v168[0]);
        }

        if (v59 >= v61)
        {
          break;
        }

LABEL_95:
        sub_2992E3B80(a1, v70, a3, a4 & 1);
        a4 = 0;
        v7 = v70 + 88;
      }

      v71 = sub_2992E4D64(a1, v70);
      v7 = v70 + 88;
      if (sub_2992E4D64(v70 + 88, a2))
      {
        break;
      }

      if (!v71)
      {
        goto LABEL_95;
      }
    }

    a2 = v70;
    if (!v71)
    {
      continue;
    }

    break;
  }
}

void sub_2992E4BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + 80);
  v8 = *(a2 + 80);
  v10 = (a1 + 80);
  v12 = (a3 + 80);
  v11 = *(a3 + 80);
  if (v8 <= *(a1 + 80))
  {
    if (v11 > v8)
    {
      sub_2992E51C0(a2, a3);
      v11 = *(a2 + 80);
      *(a2 + 80) = *(a3 + 80);
      *(a3 + 80) = v11;
      if (*(a2 + 80) > *v10)
      {
        sub_2992E51C0(a1, a2);
        v13 = v10;
        v14 = v9;
LABEL_10:
        v16 = *v13;
        *v13 = *v14;
        *v14 = v16;
        v11 = *v12;
      }
    }
  }

  else
  {
    if (v11 > v8)
    {
      sub_2992E51C0(a1, a3);
      v13 = v10;
LABEL_9:
      v14 = v12;
      goto LABEL_10;
    }

    sub_2992E51C0(a1, a2);
    v15 = *(a1 + 80);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 80) = v15;
    v11 = *v12;
    if (*v12 > v15)
    {
      sub_2992E51C0(a2, a3);
      v13 = v9;
      goto LABEL_9;
    }
  }

  if (*(a4 + 80) > v11)
  {
    sub_2992E51C0(a3, a4);
    v17 = *(a3 + 80);
    *(a3 + 80) = *(a4 + 80);
    *(a4 + 80) = v17;
    if (*(a3 + 80) > *v9)
    {
      sub_2992E51C0(a2, a3);
      v18 = *(a2 + 80);
      *(a2 + 80) = *(a3 + 80);
      *(a3 + 80) = v18;
      if (*(a2 + 80) > *v10)
      {
        sub_2992E51C0(a1, a2);
        v19 = *(a1 + 80);
        *(a1 + 80) = *(a2 + 80);
        *(a2 + 80) = v19;
      }
    }
  }
}

BOOL sub_2992E4D64(uint64_t a1, uint64_t a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v13 = (a1 + 168);
      v12 = *(a1 + 168);
      v15 = (a2 - 8);
      v14 = *(a2 - 8);
      v16 = (a1 + 80);
      if (v12 <= *(a1 + 80))
      {
        if (v14 <= v12)
        {
          return 1;
        }

        sub_2992E51C0((a1 + 88), (a2 - 88));
        v23 = *v13;
        *v13 = *v15;
        *v15 = v23;
        if (*v13 <= *v16)
        {
          return 1;
        }

        sub_2992E51C0(a1, (a1 + 88));
      }

      else
      {
        if (v14 <= v12)
        {
          sub_2992E51C0(a1, (a1 + 88));
          v26 = *(a1 + 80);
          *(a1 + 80) = *(a1 + 168);
          *(a1 + 168) = v26;
          if (*v15 <= v26)
          {
            return 1;
          }

          sub_2992E51C0((a1 + 88), v15 - 5);
          v16 = (a1 + 168);
        }

        else
        {
          sub_2992E51C0(a1, (a2 - 88));
        }

        v13 = v15;
      }

      v27 = *v16;
      *v16 = *v13;
      *v13 = v27;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_2992E4BCC(a1, a1 + 88, a1 + 176, a1 + 264);
        if (*(a2 - 8) > *(a1 + 344))
        {
          sub_2992E51C0((a1 + 264), (a2 - 88));
          v6 = *(a1 + 344);
          *(a1 + 344) = *(a2 - 8);
          *(a2 - 8) = v6;
          if (*(a1 + 344) > *(a1 + 256))
          {
            sub_2992E51C0((a1 + 176), (a1 + 264));
            v7 = *(a1 + 256);
            v8 = *(a1 + 344);
            *(a1 + 256) = v8;
            *(a1 + 344) = v7;
            if (v8 > *(a1 + 168))
            {
              sub_2992E51C0((a1 + 88), (a1 + 176));
              v9 = *(a1 + 168);
              v10 = *(a1 + 256);
              *(a1 + 168) = v10;
              *(a1 + 256) = v9;
              if (v10 > *(a1 + 80))
              {
                sub_2992E51C0(a1, (a1 + 88));
                v11 = *(a1 + 80);
                *(a1 + 80) = *(a1 + 168);
                *(a1 + 168) = v11;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_2992E4BCC(a1, a1 + 88, a1 + 176, a2 - 88);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 80))
    {
      sub_2992E51C0(a1, (a2 - 88));
      v5 = *(a1 + 80);
      *(a1 + 80) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    return 1;
  }

LABEL_17:
  v18 = (a1 + 168);
  v17 = *(a1 + 168);
  v19 = a1 + 176;
  v20 = (a1 + 80);
  v22 = (a1 + 256);
  v21 = *(a1 + 256);
  if (v17 > *(a1 + 80))
  {
    if (v21 <= v17)
    {
      sub_2992E51C0(a1, (a1 + 88));
      v28 = *(a1 + 80);
      *(a1 + 80) = *(a1 + 168);
      *(a1 + 168) = v28;
      if (*(a1 + 256) <= v28)
      {
        goto LABEL_35;
      }

      sub_2992E51C0((a1 + 88), (a1 + 176));
      v20 = (a1 + 168);
    }

    else
    {
      sub_2992E51C0(a1, (a1 + 176));
    }

    v18 = (a1 + 256);
    goto LABEL_34;
  }

  if (v21 > v17)
  {
    sub_2992E51C0((a1 + 88), (a1 + 176));
    v24 = *v18;
    v25 = *v22;
    *v18 = *v22;
    *v22 = v24;
    if (v25 > *v20)
    {
      sub_2992E51C0(a1, (a1 + 88));
LABEL_34:
      v29 = *v20;
      *v20 = *v18;
      *v18 = v29;
    }
  }

LABEL_35:
  v30 = a1 + 264;
  if (a1 + 264 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *(v30 + 80);
    if (v33 > *(v19 + 80))
    {
      *v39 = *v30;
      v40 = *(v30 + 16);
      *v30 = 0;
      *(v30 + 8) = 0;
      *v41 = *(v30 + 24);
      v42 = *(v30 + 40);
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 40) = 0;
      *__p = *(v30 + 48);
      v44 = *(v30 + 64);
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      *(v30 + 48) = 0;
      v34 = *(v30 + 72);
      v46 = *(v30 + 76);
      v45 = v34;
      v35 = v31;
      v47 = v33;
      while (1)
      {
        sub_2992E532C(a1 + v35 + 264, (a1 + v35 + 176));
        if (v35 == -176)
        {
          break;
        }

        v36 = *(a1 + v35 + 168);
        v35 -= 88;
        if (v47 <= v36)
        {
          v37 = a1 + v35 + 264;
          goto LABEL_43;
        }
      }

      v37 = a1;
LABEL_43:
      sub_2992E532C(v37, v39);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v41[0])
      {
        v41[1] = v41[0];
        operator delete(v41[0]);
      }

      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (++v32 == 8)
      {
        return v30 + 88 == a2;
      }
    }

    v19 = v30;
    v31 += 88;
    v30 += 88;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_2992E51C0(uint64_t *a1, __int128 *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  *v20 = a1[1];
  *&v20[7] = *(a1 + 15);
  v5 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v7 = *(a1 + 3);
  v6 = a1 + 3;
  v8 = a1[5];
  *v6 = 0;
  a1[4] = 0;
  a1[5] = 0;
  v16 = v7;
  v17 = *(a1 + 3);
  v9 = a1[8];
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v19 = *(a1 + 38);
  v18 = *(a1 + 18);
  v10 = *a2;
  a1[2] = *(a2 + 2);
  *a1 = v10;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_29922323C(v6, (a2 + 24));
  sub_29922323C((a1 + 6), a2 + 3);
  v11 = *(a2 + 18);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 18) = v11;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v4;
  *(a2 + 1) = *v20;
  *(a2 + 15) = *&v20[7];
  *(a2 + 23) = v5;
  v12 = *(a2 + 3);
  if (v12)
  {
    *(a2 + 4) = v12;
    operator delete(v12);
  }

  *(a2 + 24) = v16;
  *(a2 + 5) = v8;
  v13 = *(a2 + 6);
  if (v13)
  {
    *(a2 + 7) = v13;
    operator delete(v13);
  }

  result = v17;
  a2[3] = v17;
  *(a2 + 8) = v9;
  *(a2 + 18) = v18;
  *(a2 + 38) = v19;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992E532C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_29922323C(a1 + 24, (a2 + 24));
  sub_29922323C(a1 + 48, a2 + 3);
  v5 = *(a2 + 18);
  *(a1 + 76) = *(a2 + 38);
  *(a1 + 72) = v5;
  *(a1 + 80) = *(a2 + 20);
  return a1;
}

void sub_2992E53AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2992E5400(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2992E5400(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_2992E5454(a1, i))
  {
    i -= 88;
  }

  *(a1 + 8) = a2;
}

void sub_2992E5454(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    *(a2 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    *(a2 + 32) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

uint64_t sub_2992E5558(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E3B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E55A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

const void **sub_2992E5624(const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29930830C(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

__n128 sub_2992E56EC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E3D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E5724(uint64_t a1, void **a2, uint64_t a3, double *a4)
{
  v5 = *a2;
  v6 = *a4;
  v7 = *(a1 + 8);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v9 = *(*v5 + 112);
  if (v9 && CFStringGetLength(*(*v5 + 112)) && (sub_2992E3250(v7, v9, *(*v5 + 104)) & 1) == 0)
  {
    v10 = *(*v5 + 104);
    CFArrayAppendValue(Mutable, v9);
    v11 = (v10 & 0x3800002) != 0;
    while (1)
    {
      v5 = v5[1];
      if (!v5 || ((*(**v5 + 24))() & 1) != 0)
      {
        break;
      }

      v12 = *(*v5 + 112);
      if (!v12 || !CFStringGetLength(*(*v5 + 112)) || (sub_2992E3250(v7, v12, *(*v5 + 104)) & 1) != 0)
      {
        goto LABEL_4;
      }

      if (!v11)
      {
        v11 = (*(*v5 + 104) & 0x3800002) != 0;
      }

      CFArrayAppendValue(Mutable, v12);
    }

    if (CFArrayGetCount(Mutable))
    {
      v13 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
      Count = CFArrayGetCount(Mutable);
      while (Count > 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, --Count);
        CFArrayAppendValue(v13, ValueAtIndex);
      }

      CFArrayAppendValue(**(a1 + 16), v13);
      v16 = *(a1 + 24);
      v31 = v11;
      sub_2992E5A5C(v16, &v31);
      v17 = *(a1 + 32);
      v19 = v17[1];
      v18 = v17[2];
      if (v19 >= v18)
      {
        v22 = *v17;
        v23 = v19 - *v17;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          sub_299212A8C();
        }

        v26 = v18 - v22;
        if (v26 >> 1 > v25)
        {
          v25 = v26 >> 1;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
        v28 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          sub_2992F86B0(v17, v28);
        }

        v29 = v6;
        *(4 * v24) = v29;
        v21 = 4 * v24 + 4;
        memcpy(0, v22, v23);
        v30 = *v17;
        *v17 = 0;
        v17[1] = v21;
        v17[2] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        v20 = v6;
        *v19 = v20;
        v21 = (v19 + 1);
      }

      v17[1] = v21;
      if (v13)
      {
        CFRelease(v13);
      }
    }
  }

LABEL_4:
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_2992E59C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_2992530BC(va, 0);
  sub_2992530BC(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E5A10(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E438))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E5A5C(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_299212A8C();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_2992E5B04(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

uint64_t sub_2992E5B04(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_2991C1750(&v2, a2);
    }

    sub_299212A8C();
  }

  return result;
}

void sub_2992E5BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992E5BC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (v6)
  {
    v8 = v7 - 1;
    if (((v7 - 1) ^ (v6 - 1)) < 0x40)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v7 - 1;
  }

  v9 = v8 >> 6;
  if (v7 >= 0x41)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  *(*a1 + 8 * v10) = 0;
LABEL_9:
  v22 = v4;
  v23 = v5;
  v11 = *(a2 + 8);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *a1 + 8 * (v6 >> 6);
  v20 = *a2;
  v21 = v11;
  v18 = v12;
  v19 = v13;
  v16 = v14;
  v17 = v6 & 0x3F;
  sub_2992E5C68(&v20, &v18, &v16, &v15);
}

void sub_2992E5C68(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_2992E5CF8(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_2992E5CF8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

__n128 sub_2992E5E44(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E458;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E5E7C(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v25 = *a4;
  v6 = a1[1];
  v7 = sub_2992B8D0C(a3, off_2A145F3B8);
  sub_2992E6078(&v23, *v7, v7[1], v7[1] - *v7);
  if (*(v6 + 225))
  {
    v8 = 0;
  }

  else
  {
    v9 = HIBYTE(v24);
    if (v24 < 0)
    {
      v9 = *(&v23 + 1);
    }

    v10 = a1[3];
    if (v9 == *(v10 + 8))
    {
      if (v24 >= 0)
      {
        v11 = &v23;
      }

      else
      {
        v11 = v23;
      }

      v8 = memcmp(v11, *v10, 2 * v9) != 0;
    }

    else
    {
      v8 = 1;
    }
  }

  v12 = *(a2 + 4);
  v17 = v24;
  *v16 = v23;
  v24 = 0;
  v23 = 0uLL;
  *v18 = 0u;
  *__p = 0u;
  v20 = 0u;
  v21 = v12;
  v22 = v8;
  v13 = a1[2];
  v14 = v13[1];
  if (v14 >= v13[2])
  {
    v15 = sub_2992E610C(v13, v16, &v25);
  }

  else
  {
    sub_2992E6260(v13, v13[1], v16, &v25);
    v15 = v14 + 88;
    v13[1] = v14 + 88;
  }

  v13[1] = v15;
  if (__p[1])
  {
    *&v20 = __p[1];
    operator delete(__p[1]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }
}

void sub_2992E5FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_29922C934(&a9);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E602C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E4C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E6078(uint64_t result, __int16 *a2, __int16 *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v5 = result;
  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a4 | 3) + 1;
    }

    sub_299212A48(result, v6);
  }

  *(result + 23) = a4;
  while (a2 != a3)
  {
    v7 = *a2++;
    *v5++ = v7;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_2992E610C(uint64_t *a1, __int128 *a2, _DWORD *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_299212A8C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v7 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_2992E6340(a1, v7);
  }

  v14 = 0;
  v15 = 88 * v3;
  sub_2992E6260(a1, (88 * v3), a2, a3);
  v16 = (88 * v3 + 88);
  v8 = a1[1];
  v9 = 88 * v3 + *a1 - v8;
  sub_2992E639C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_2992E654C(&v14);
  return v13;
}

void sub_2992E624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2992E654C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992E6260(int a1, void *__dst, __int128 *a3, _DWORD *a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v7;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29922C820((__dst + 3), *(a3 + 3), *(a3 + 4), (*(a3 + 4) - *(a3 + 3)) >> 3);
  __dst[6] = 0;
  __dst[7] = 0;
  __dst[8] = 0;
  result = sub_299215EC0((__dst + 6), *(a3 + 6), *(a3 + 7), (*(a3 + 7) - *(a3 + 6)) >> 1);
  v9 = *(a3 + 18);
  *(__dst + 38) = *(a3 + 38);
  *(__dst + 18) = v9;
  *(__dst + 20) = *a4;
  return result;
}

void sub_2992E630C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992E6340(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992E639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v9 = *(v7 + 72);
      *(a4 + 76) = *(v7 + 76);
      *(a4 + 72) = v9;
      *(a4 + 80) = *(v7 + 80);
      v7 += 88;
      a4 += 88;
    }

    while (v7 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      sub_2992E5454(a1, v5);
      v5 += 88;
    }

    while (v5 != a3);
  }

  return sub_2992E64C0(v11);
}

uint64_t sub_2992E64C0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992E64F8(a1);
  }

  return a1;
}

void sub_2992E64F8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 88;
      sub_2992E5454(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_2992E654C(uint64_t a1)
{
  sub_2992E6584(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992E6584(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_2992E5454(v5, v4 - 88);
  }
}

uint64_t sub_2992E65CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2992E66C8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E4E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6700(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a1 + 8);
  if (**(a1 + 32) >= 2)
  {
    *a4 = 1;
  }

  if (*(v6 + 225) == 1)
  {
    v7 = *(a2 + 24);
    v8 = *(a1 + 24);
    v9 = *(v8 + 8);
  }

  else
  {
    v8 = *(a1 + 24);
    v10 = *(a2 + 24);
    if (v10 == *(v8 + 8))
    {
      memcmp(*(a2 + 16), *v8, 2 * v10);
    }
  }

  v11 = *(a2 + 16);
  v12 = *v8;
  sub_29922B434();
}

void sub_2992E6930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29921F128(va);
  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  if (a4)
  {
    (*(*a4 + 16))(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E69B4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E558))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992E6A00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2992E6AFC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E578;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6B34(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = *a3;
  v6 = *(a1 + 8);
  if (**(a1 + 32) >= 2)
  {
    *a4 = 1;
  }

  if (*(v6 + 225) == 1)
  {
    v7 = *(a2 + 24);
    v8 = *(a1 + 24);
    v9 = *(v8 + 8);
  }

  else
  {
    v8 = *(a1 + 24);
    v10 = *(a2 + 24);
    if (v10 == *(v8 + 8))
    {
      memcmp(*(a2 + 16), *v8, 2 * v10);
    }
  }

  v11 = *(a2 + 16);
  v12 = *v8;
  sub_29922B434();
}

void sub_2992E6D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29921F128(va);
  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  if (a4)
  {
    (*(*a4 + 16))(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E6DE8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E5D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992E6EB0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E5F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E6EE8(uint64_t a1, uint64_t a2, int *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *a3;
  if (*(*(a1 + 8) + 225) == 1)
  {
    v5 = *(a2 + 24);
    v6 = *(a1 + 24);
    v7 = *v6;
  }

  else
  {
    v6 = *(a1 + 24);
    v8 = v6[5] - 1;
    if (*v6)
    {
      v9 = v6[5] - 1;
    }

    else
    {
      v9 = 0;
    }

    if (*(a2 + 24) == v9)
    {
      memcmp(*(a2 + 16), (*v6 + 2), 2 * v9);
    }
  }

  v10 = *(a2 + 16);
  v11 = v6[1];
  sub_29922B434();
}

void sub_2992E7118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29921F128(va);
  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  if (a4)
  {
    (*(*a4 + 16))(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E719C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E658))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992E7264(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6E678;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992E729C(uint64_t a1, uint64_t a2, int *a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *a3;
  if (*(*(a1 + 8) + 225) == 1)
  {
    v5 = *(a2 + 24);
    v6 = *(a1 + 24);
    v7 = *(v6 + 8);
  }

  else
  {
    v6 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v8 == *(v6 + 8))
    {
      memcmp(*(a2 + 16), *v6, 2 * v8);
    }
  }

  v9 = *(a2 + 16);
  v10 = *v6;
  sub_29922B434();
}

void sub_2992E74B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29921F128(va);
  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  if (a4)
  {
    (*(*a4 + 16))(a4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992E7538(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E6D8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2992E7620()
{
  v0 = sub_29936C2B8();
  v1 = sub_29936C3FC(v0, 3, off_2A145F738[0], off_2A145F710[0], 0);
  v2 = v1[23];
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = v1[23];
  }

  else
  {
    v4 = *(v1 + 1);
  }

  v5 = CFURLCreateFromFileSystemRepresentation(0, v3, v4, 0);
  qword_2A1460C60 = objc_msgSend_informationDictionaryAtPath_(MecabraWordProperties, v6, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_2992E7710()
{
  v0 = sub_29936C2B8();
  v1 = sub_29936C3FC(v0, 3, off_2A145F738[0], off_2A145F718[0], 0);
  v2 = v1[23];
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = v1[23];
  }

  else
  {
    v4 = *(v1 + 1);
  }

  v5 = CFURLCreateFromFileSystemRepresentation(0, v3, v4, 0);
  qword_2A1460C70 = objc_msgSend_informationDictionaryAtPath_(MecabraWordProperties, v6, v5);
  if (v5)
  {

    CFRelease(v5);
  }
}

void sub_2992E7914()
{
  v0 = sub_29936C2B8();
  v1 = sub_29936C3FC(v0, 3, off_2A145F738[0], off_2A145F708[0], 0);
  v2 = v1[23];
  if (v2 >= 0)
  {
    v3 = v1;
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = v1[23];
  }

  else
  {
    v4 = *(v1 + 1);
  }

  v7 = CFURLCreateFromFileSystemRepresentation(0, v3, v4, 0);
  v5 = objc_alloc(MEMORY[0x29EDB8D80]);
  qword_2A1460C80 = objc_msgSend_initWithContentsOfURL_(v5, v6, v7);
}

uint64_t sub_2992E88CC(void *a1, uint64_t a2)
{
  sub_299233548(a2, "dicdir", v9);
  sub_2991C6CA8(__p, "char.bin");
  sub_299260A18(v9, __p, &v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v8;
  }

  else
  {
    v3 = v8.__r_.__value_.__r.__words[0];
  }

  v4 = sub_2992E89C8(a1, v3);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
  }

  return v4;
}

void sub_2992E8980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992E89C8(void *a1, const char *a2)
{
  if ((sub_299211244((a1 + 1), a2, "r") & 1) == 0)
  {
    std::ios_base::clear((a1 + *(a1[49] - 24) + 392), 0);
    v19 = sub_2991C0E9C(a1 + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/char_property.cpp", 70);
    v20 = sub_2991C0E9C(v19, "(", 1);
    v21 = MEMORY[0x29C29BD30](v20, 85);
    v22 = sub_2991C0E9C(v21, ") [", 3);
    v23 = sub_2991C0E9C(v22, "cmmap_.open(filename, r)", 26);
    v24 = "] ";
    v25 = 2;
LABEL_20:
    sub_2991C0E9C(v23, v24, v25);
    return 0;
  }

  v4 = a1[2];
  v5 = *v4;
  if ((32 * *v4) + 0x40000 != a1[3])
  {
    std::ios_base::clear((a1 + *(a1[49] - 24) + 392), 0);
    v26 = sub_2991C0E9C(a1 + 49, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/char_property.cpp", 70);
    v27 = sub_2991C0E9C(v26, "(", 1);
    v28 = MEMORY[0x29C29BD30](v27, 94);
    v29 = sub_2991C0E9C(v28, ") [", 3);
    v30 = sub_2991C0E9C(v29, "fsize == cmmap_.size()", 22);
    v31 = sub_2991C0E9C(v30, "] ", 2);
    v32 = sub_2991C0E9C(v31, "invalid file size: ", 19);
    v25 = strlen(a2);
    v23 = v32;
    v24 = a2;
    goto LABEL_20;
  }

  v6 = v4 + 1;
  v7 = a1[44];
  for (a1[45] = v7; v5; --v5)
  {
    v8 = a1[46];
    if (v7 >= v8)
    {
      v9 = a1[44];
      v10 = (v7 - v9) >> 3;
      if ((v10 + 1) >> 61)
      {
        sub_299212A8C();
      }

      v11 = v8 - v9;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_2991C1E60((a1 + 44), v13);
      }

      *(8 * v10) = v6;
      v7 = (8 * v10 + 8);
      v14 = a1[44];
      v15 = a1[45] - v14;
      v16 = (8 * v10 - v15);
      memcpy(v16, v14, v15);
      v17 = a1[44];
      a1[44] = v16;
      a1[45] = v7;
      a1[46] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v7++ = v6;
    }

    v6 += 8;
    a1[45] = v7;
  }

  a1[47] = v6;
  return 1;
}

uint64_t sub_2992E8C28(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_299212A8C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_299212AA4(result, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(result + 8) - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_299212AFC(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

uint64_t (*sub_2992E8D58(uint64_t a1))(void *a1, char *a2, uint64_t a3)
{
  v2 = *(*(a1 + 24) + 64);
  if (v2 && ((*(*v2 + 24))(v2) & 1) == 0)
  {
    if (**(a1 + 32))
    {
      return sub_2992E8E24;
    }

    v3 = (*(*(a1 + 16) + 2) & 0x80) == 0;
    v4 = sub_2992E8E30;
    v5 = sub_2992E8F3C;
  }

  else
  {
    v3 = (*(*(a1 + 16) + 2) & 0x80) == 0;
    v4 = sub_2992E8F48;
    v5 = sub_2992E9248;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2992E8E30(void *a1, char *a2, uint64_t a3)
{
  result = sub_2992E9BD0(a1, a2, a3);
  if (!result)
  {
    v8 = sub_2992896C0(a1, v6, v7);
    v11 = sub_2992896C0(a2, v9, v10);
    v12 = (*(*v8 + 14))(v8);
    if (v12 >= (*(*v11 + 14))(v11))
    {
      v13 = (*(*v8 + 14))(v8);
      return v13 > (*(*v11 + 14))(v11);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_2992E8F48(void *a1, char *a2, uint64_t a3)
{
  v5 = sub_2992896C0(a1, a2, a3);
  v6 = (*(*v5 + 13))(v5);
  v7 = (*(*v5 + 13))(v5);
  v8 = (*(*v5 + 3))(v5);
  Length = CFStringGetLength(v8);
  if ((v7 & 4) != 0 && ((v12 = Length, (*(*v5 + 25))(v5)) ? (v13 = v12 < 5) : (v13 = 0), v13))
  {
    v15 = 2;
  }

  else
  {
    if ((v6 & 0x10) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if ((v6 & 4) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }
  }

  v16 = sub_2992896C0(a2, v10, v11);
  v17 = (*(*v16 + 13))(v16);
  v18 = (*(*v16 + 13))(v16);
  v19 = (*(*v16 + 3))(v16);
  v20 = CFStringGetLength(v19);
  if ((v18 & 4) != 0 && ((v22 = v20, (*(*v16 + 25))(v16)) ? (v23 = v22 < 5) : (v23 = 0), v23))
  {
    v24 = 2;
  }

  else if ((v17 & 4) != 0)
  {
    v24 = 0;
  }

  else if ((v17 & 0x10) != 0)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  if (v15 < v24)
  {
    return -1;
  }

  if (v15 > v24)
  {
    return 1;
  }

  result = sub_2992E9BD0(a1, a2, v21);
  if (!result)
  {
    v28 = sub_2992896C0(a1, v26, v27);
    v31 = sub_2992896C0(a2, v29, v30);
    v32 = (*(*v28 + 14))(v28);
    if (v32 < (*(*v31 + 14))(v31))
    {
      return -1;
    }

    v33 = (*(*v28 + 14))(v28);
    return v33 > (*(*v31 + 14))(v31);
  }

  return result;
}

uint64_t sub_2992E9248(void *a1, char *a2, uint64_t a3)
{
  v5 = sub_2992896C0(a1, a2, a3);
  v6 = (*(*v5 + 13))(v5);
  if ((v6 & 0x10) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if ((v6 & 4) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_2992896C0(a2, v7, v8);
  v12 = (*(*v11 + 13))(v11);
  if ((v12 & 0x10) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if ((v12 & 4) != 0)
  {
    v14 = 0;
  }

  if (v10 < v14)
  {
    return -1;
  }

  if (v10 > v14)
  {
    return 1;
  }

  return sub_2992E9A0C(a1, a2, v13, 1.15);
}

uint64_t (*sub_2992E9334(uint64_t a1))(void *a1, char *a2, uint64_t a3)
{
  v1 = *(*(a1 + 24) + 64);
  v2 = sub_2992E9248;
  if (v1)
  {
    v3 = (*(*v1 + 24))(v1);
    v2 = sub_2992E9248;
    if ((v3 & 1) == 0)
    {
      return sub_2992E8F3C;
    }
  }

  return v2;
}

uint64_t (*sub_2992E93B0(uint64_t a1))(void *a1, char *a2, uint64_t a3)
{
  if ((*(*(a1 + 24) + 25) & 0x40) != 0)
  {
    return sub_2992E93E0;
  }

  else
  {
    return sub_2992E94C8;
  }
}

uint64_t sub_2992E93E0(void *a1, char *a2, uint64_t a3)
{
  v5 = sub_2992896C0(a1, a2, a3);
  v6 = (*(*v5 + 13))(v5);
  if ((v6 & 0x10) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if ((v6 & 4) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_2992896C0(a2, v7, v8);
  v12 = (*(*v11 + 13))(v11);
  if ((v12 & 0x10) != 0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if ((v12 & 4) != 0)
  {
    v13 = 0;
  }

  if (v10 < v13)
  {
    return -1;
  }

  if (v10 > v13)
  {
    return 1;
  }

  return sub_2992E94C8(a1, a2, 0);
}

uint64_t sub_2992E94C8(void *a1, char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v5 = sub_2992896C0(a1, a2, a3);
  v8 = sub_2992896C0(a2, v6, v7);
  Length = (*(*v5 + 7))(v5);
  v12 = (*(*v8 + 7))(v8);
  if (!Length && (v13 = sub_2993652F8(3u), os_log_type_enabled(v13, OS_LOG_TYPE_FAULT)))
  {
    v24 = (*(*v5 + 3))(v5);
    v26 = 138412290;
    v27 = v24;
    _os_log_fault_impl(&dword_29918C000, v13, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v26, 0xCu);
    if (v12)
    {
      goto LABEL_6;
    }
  }

  else if (v12)
  {
    goto LABEL_6;
  }

  v14 = sub_2993652F8(3u);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    v25 = (*(*v8 + 3))(v8);
    v26 = 138412290;
    v27 = v25;
    _os_log_fault_impl(&dword_29918C000, v14, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v26, 0xCu);
  }

LABEL_6:
  if (Length)
  {
    Length = CFStringGetLength(Length);
  }

  if (v12)
  {
    v15 = CFStringGetLength(v12);
  }

  else
  {
    v15 = 0;
  }

  if (Length == v15)
  {
    v16 = sub_2992896C0(a1, v10, v11);
    v19 = sub_2992896C0(a2, v17, v18);
    v20 = (*(*v16 + 14))(v16);
    if (v20 >= (*(*v19 + 14))(v19))
    {
      v22 = (*(*v16 + 14))(v16);
      result = v22 > (*(*v19 + 14))(v19);
    }

    else
    {
      result = -1;
    }
  }

  else if (Length < v15)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

  v23 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t (*sub_2992E97B0(void *a1))(void *a1, char *a2, uint64_t a3)
{
  v1 = sub_2992E93E0;
  if ((*(a1[3] + 25) & 0x40) == 0)
  {
    if (CFArrayGetCount(*(*a1 + 8)))
    {
      return sub_2992E9824;
    }

    Count = CFArrayGetCount(*(a1[1] + 8));
    v1 = sub_2992E93E0;
    if (Count)
    {
      return sub_2992E9824;
    }
  }

  return v1;
}

uint64_t sub_2992E9824(void *a1, char *a2, uint64_t a3)
{
  v5 = sub_2992896C0(a1, a2, a3);
  v6 = (*(*v5 + 13))(v5);
  if ((v6 & 0x10) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if ((v6 & 4) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_2992896C0(a2, v7, v8);
  v12 = (*(*v11 + 13))(v11);
  if ((v12 & 0x10) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  if ((v12 & 4) != 0)
  {
    v15 = 0;
  }

  if (v10 < v15)
  {
    return -1;
  }

  if (v10 > v15)
  {
    return 1;
  }

  v17 = sub_2992896C0(a1, v13, v14);
  v20 = sub_2992896C0(a2, v18, v19);
  v21 = (*(*v17 + 14))(v17);
  if (v21 < (*(*v20 + 14))(v20))
  {
    return -1;
  }

  v22 = (*(*v17 + 14))(v17);
  return v22 > (*(*v20 + 14))(v20);
}

uint64_t sub_2992E99C8(void *a1, char *a2, uint64_t a3)
{
  Surface = MecabraCandidateGetSurface(a1, a2, a3);
  Length = CFStringGetLength(Surface);
  v8 = MecabraCandidateGetSurface(a2, v6, v7);
  v9 = CFStringGetLength(v8);
  if (Length > v9)
  {
    return -1;
  }

  else
  {
    return Length < v9;
  }
}

uint64_t sub_2992E9A0C(void *a1, char *a2, uint64_t a3, double a4)
{
  v7 = sub_2992896C0(a1, a2, a3);
  v10 = sub_2992896C0(a2, v8, v9);
  v11 = (*(*v7 + 49))(v7);
  v14 = (*(*v10 + 49))(v10);
  if (v11 <= v14)
  {
    if (v11 >= v14 || (v16 = v14 * a4, result = v16 > v11, v16 <= v11))
    {
LABEL_9:
      v17 = sub_2992896C0(a1, v12, v13);
      v20 = sub_2992896C0(a2, v18, v19);
      v21 = (*(*v17 + 14))(v17);
      if (v21 >= (*(*v20 + 14))(v20))
      {
        v22 = (*(*v17 + 14))(v17);
        return v22 > (*(*v20 + 14))(v20);
      }

      else
      {
        return -1;
      }
    }
  }

  else
  {
    if (v11 * a4 <= v14)
    {
      result = 0;
    }

    else
    {
      result = -1;
    }

    if (!result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_2992E9BD0(void *a1, char *a2, uint64_t a3)
{
  v4 = sub_2992896C0(a1, a2, a3);
  v7 = sub_2992896C0(a2, v5, v6);
  v8 = (*(*v4 + 49))(v4);
  v9 = (*(*v7 + 49))(v7);
  v10 = (*(*v4 + 13))(v4);
  v11 = (*(*v4 + 3))(v4);
  Length = CFStringGetLength(v11);
  if ((v10 & 4) != 0)
  {
    v14 = Length;
    v15 = (*(*v4 + 25))(v4);
    if (v14 < 5)
    {
      v13 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v16 = (*(*v7 + 13))(v7);
  v17 = (*(*v7 + 3))(v7);
  v18 = CFStringGetLength(v17);
  if ((v16 & 4) != 0)
  {
    v20 = v18;
    v21 = (*(*v7 + 25))(v7);
    if (v20 < 5)
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if ((v13 | v19))
  {
    v22 = v13 ^ 1 | v19;
    v23 = (((v13 ^ 1) & v19) << 63) >> 63;
    if (v22)
    {
      return v23;
    }

    else
    {
      return 1;
    }
  }

  else if (v8 <= v9)
  {
    return v8 < v9 && v9 * 1.15 > v8;
  }

  else if (v8 * 1.15 <= v9)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

BOOL sub_2992E9E20(uint64_t *a1, void *a2, uint64_t a3, int a4)
{
  if ((atomic_load_explicit(&qword_2A1460C98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460C98))
  {
    sub_299255778(0);
    word_2A1460C90 = word_2A1461DF4;
    __cxa_guard_release(&qword_2A1460C98);
  }

  v6 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if ((*(v6 + 837) & 1) == 0)
  {
    sub_29924C9E4(v6, a4, 0, 7);
    v6 = *a1;
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  v7 = a2[1];
  if (v7 != *a2)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
    if (v8 <= 0x666666666666666)
    {
      sub_2992EA198(v8);
    }

    sub_299212A8C();
  }

  sub_29924D87C(v6, &__p);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v6 != 0;
}

void sub_2992EA198(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992EA1F0(uint64_t *a1, unsigned int a2, int a3)
{
  v4 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    sub_2992EA308(a1, a2 + 1);
    v4 = *a1;
  }

  v7 = (v4 + 24 * a2);
  v9 = v7[1];
  v8 = v7[2];
  if (v9 >= v8)
  {
    v11 = *v7;
    v12 = v9 - *v7;
    v13 = v12 >> 2;
    v14 = (v12 >> 2) + 1;
    if (v14 >> 62)
    {
      sub_299212A8C();
    }

    v15 = v8 - v11;
    if (v15 >> 1 > v14)
    {
      v14 = v15 >> 1;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
    v17 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      sub_2992F86B0(v7, v17);
    }

    *(4 * v13) = a3;
    v10 = 4 * v13 + 4;
    memcpy(0, v11, v12);
    v18 = *v7;
    *v7 = 0;
    v7[1] = v10;
    v7[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v9 = a3;
    v10 = (v9 + 4);
  }

  v7[1] = v10;
}

void sub_2992EA308(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_2992EA5DC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_2992EA3B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = 0u;
  v28 = 0u;
  v29 = 1065353216;
  v26 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
    result = sub_29921ED28(&v27);
LABEL_21:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return result;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (v3 + 24 * v7);
    v9 = *v8;
    if (*v8 == v8[1])
    {
      v10 = *v8;
    }

    else
    {
      sub_2992EA748(&v27, &v26);
      v7 = v26;
      v3 = *a1;
      v4 = a1[1];
      v9 = *(*a1 + 24 * v26);
      v10 = *(*a1 + 24 * v26 + 8);
    }

    v11 = (v10 - v9) >> 2;
    if (v11 <= 1)
    {
      v11 = 0;
    }

    v6 += 1 + v11;
    v26 = ++v7;
  }

  while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  v12 = DWORD2(v28);
  result = sub_29921ED28(&v27);
  if (!v6)
  {
    goto LABEL_21;
  }

  LODWORD(v27) = -1;
  result = sub_299280940(a2, v6 + 2);
  v14 = *a1;
  v15 = a1[1];
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a1) >> 3);
  v17 = *a2;
  v18 = (*a2 + 4 * v6);
  *v18 = v12;
  v18[1] = v16 - 1;
  if (v15 != v14)
  {
    v19 = 0;
    v20 = 0;
    v21 = v17 + 4 * v16;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    do
    {
      v22 = (v14 + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      if (v23 != v24)
      {
        if (v24 - v23 == 4)
        {
          *(v17 + 4 * v20) = *v23;
        }

        else
        {
          result = (v19 << 8) | ((v24 - v23) >> 2);
          *(v17 + 4 * v20) = result | 0x80000000;
          do
          {
            v25 = *v23;
            v23 += 4;
            *(v21 + 4 * v19++) = v25;
          }

          while (v23 != v24);
        }
      }

      ++v20;
    }

    while (v20 != v16);
  }

  return result;
}

void sub_2992EA568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921ED28(va);
  _Unwind_Resume(a1);
}

void *sub_2992EA57C(void *result, void *a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = a3 + 1;
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      v4 = *a2 + 4 * v3;
      if (*(v4 - 8))
      {
        v5 = *(*a2 + 4 * a3);
        if (v5 != -1)
        {
          if ((v5 & 0x80000000) == 0)
          {
            return result;
          }

          v6 = ((v5 >> 8) & 0x7FFFFF) + *(v4 - 4) + 1;
          result[1] = v6;
          a3 = v6 + v5;
        }
      }
    }
  }

  result[2] = a3;
  return result;
}

void sub_2992EA5DC(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29920D90C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_29920DDE0(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_29920DE38(v18);
  }
}

void *sub_2992EA748(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2992EA974(uint64_t a1, int a2, CFTypeRef cf, uint64_t a4)
{
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(cf);
      Length = CFDataGetLength(cf);
      __src = 0;
      v25 = 0;
      v26 = 0;
      if (Length >= 8)
      {
        v11 = 0;
        v12 = Length >> 3;
        v13 = BytePtr + 4;
        do
        {
          if (v11 >= v26)
          {
            v14 = __src;
            v15 = v11 - __src;
            v16 = (v11 - __src) >> 3;
            v17 = v16 + 1;
            if ((v16 + 1) >> 61)
            {
              sub_2992EAC5C();
            }

            v18 = v26 - __src;
            if ((v26 - __src) >> 2 > v17)
            {
              v17 = v18 >> 2;
            }

            if (v18 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v17;
            }

            if (v19)
            {
              sub_2992EAC74(&__src, v19);
            }

            v20 = (v11 - __src) >> 3;
            v21 = 8 * v16;
            *v21 = *(v13 - 2);
            *(v21 + 4) = *v13;
            v11 = 8 * v16 + 8;
            v22 = (8 * v16 - 8 * v20);
            memcpy((v21 - 8 * v20), v14, v15);
            v23 = __src;
            __src = v22;
            v25 = v11;
            v26 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v11 = *(v13 - 2);
            *(v11 + 4) = *v13;
            v11 += 8;
          }

          v25 = v11;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      sub_2992EAB38(a1, a2, &__src, a4);
      if (__src)
      {
        v25 = __src;
        operator delete(__src);
      }
    }
  }
}

void sub_2992EAB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992EAB38(uint64_t result, int a2, float **a3, uint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (*a3 != v5)
  {
    v7 = result;
    v8 = 0;
    for (i = (v4 + 2); *(i - 4) != a2; i += 4)
    {
      ++v8;
      if (*(i - 4))
      {
        v10 = i == v5;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = *(i - 1);
    do
    {
      if (v8)
      {
        if (!*v4)
        {
          break;
        }

        v13 = v12 - v4[1];
        v14 = 1.0;
        if (v13 > 0.0)
        {
          v14 = 0.0;
          if (v13 < *v7)
          {
            v14 = 1.0 - ((v13 * 100.0) / (*v7 * 100.0));
          }
        }

        if (v14 >= *(v7 + 4))
        {
          v15[0] = *v4;
          *&v15[1] = v14;
          result = (*(a4 + 16))(a4, v15);
          if (++v11 > *(v7 + 8))
          {
            break;
          }
        }
      }

      v4 += 2;
      --v8;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_2992EAC74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_2992EACBC(void *a1, unsigned int *a2)
{
  *a1 = a2;
  v2 = *a2;
  sub_2992AAD08();
}

void sub_2992EAE38(_Unwind_Exception *a1)
{
  operator delete(v3);
  sub_2992EAF08((v2 + 24));
  sub_2992EAF08(v1 + 1);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    sub_2992EE20C(v1, v5);
  }

  _Unwind_Resume(a1);
}

void sub_2992EAEA8(std::exception *this)
{
  this->__vftable = &unk_2A1F6E780;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t *sub_2992EAF08(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2993EEDEC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10E0C400F5837B5);
  }

  return a1;
}

uint64_t sub_2992EAF50(uint64_t a1)
{
  v2 = (a1 + 16);
  sub_2993EEE54(*(a1 + 16));
  sub_2993EEE54(*(a1 + 24));
  *(a1 + 40) = 0;
  sub_2992EAF08((a1 + 24));
  sub_2992EAF08(v2);
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_2992EE20C(a1 + 8, v3);
  }

  return a1;
}

void sub_2992EB008(_Unwind_Exception *a1, int a2)
{
  v4 = v2;
  MEMORY[0x29C29BFB0](v4, 0x1060C40C17344BBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2992EAFF8);
  }

  _Unwind_Resume(a1);
}

void sub_2992EB058(int a1, CFStringRef theString, uint64_t a3, char a4)
{
  if ((a4 & 8) == 0 && CFStringGetLength(theString) >= 3)
  {
    sub_299276B44();
  }
}

void sub_2992EB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  _Block_object_dispose(&a21, 8);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  if (a12)
  {
    MEMORY[0x29C29BF70](a12, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

__n128 sub_2992EB2A8(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2992EB2CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t sub_2992EB2E4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (!a3)
  {
    v5 = *(result + 40);
    v6 = sub_2993B2928(v5[4], *(a2 + 8));
    v8 = v7;
    v15[0] = v6;
    v15[1] = v7;
    v14[2] = (*(*v5[4] + 24))(v5[4], *(a2 + 8), 1);
    v14[3] = v9;
    v10 = (2 * v8);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *v6;
        v6 = (v6 + 1);
        v11 = (1025 * (v11 + v12)) ^ ((1025 * (v11 + v12)) >> 6);
        --v10;
      }

      while (v10);
    }

    v13 = sub_2992BB92C(v15, *(*(*v5 + 104) + 8));
    sub_2992EE264(v14, v13);
  }

  *a4 = 1;
  return result;
}

void sub_2992EB434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  MEMORY[0x29C29BFB0](v12, 0x10E1C40CFE76A11);
  if (a12)
  {
    sub_2991A893C(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992EB46C(uint64_t result, uint64_t **a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4++;
      v7 = sub_29928A270(v6);
      result = sub_2993EEFE0(v3, v7, v8);
    }

    while (v4 != v5);
    v4 = *a2;
  }

  a2[1] = v4;
  v3[4] = v3[1];
  return result;
}

void sub_2992EB4D0(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 40) = a3;
  CFStringGetLength(*(a2 + 152));
  v5 = *(a2 + 160);
  v4 = *(a2 + 168);
  operator new[]();
}

void sub_2992EB99C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992EBA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v9[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = 0;
  v5 = (*(a2 + 8) - 1) < 2;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = sub_2992EE400;
  v6[3] = &unk_29EF10C00;
  v6[4] = v9;
  v6[5] = v8;
  v6[6] = v7;
  v6[7] = a1;
  v6[8] = a2;
  v6[9] = a4;
  v6[10] = a3;
  v6[11] = a5;
  sub_2992AAE6C(*(a1 + 8), a2, v5, v6);
}

void sub_2992EBBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

__n128 sub_2992EBC00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  result = *(a2 + 168);
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = result;
  return result;
}

void sub_2992EBC68(uint64_t a1, const __CFString *a2, uint64_t a3, CFIndex a4, CFIndex a5, UniChar *a6, uint64_t a7)
{
  if (!a2)
  {
    return;
  }

  v8 = a4;
  v10 = *(*(*a1 + 104) + 8);
  if (!v10)
  {
    v13 = a4;
LABEL_34:
    v76.location = v13;
    v76.length = a5;
    CFStringGetCharacters(a2, v76, a6);
    goto LABEL_35;
  }

  while (1)
  {
    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(a2, v8);
    v13 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
    if (RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length == CFStringGetLength(a2))
    {
      break;
    }

    if (RangeOfComposedCharactersAtIndex.length == 1)
    {
      if (RangeOfComposedCharactersAtIndex.location < 0)
      {
        v37 = 0;
        v35 = a1;
      }

      else
      {
        v34 = *(a3 + 160);
        v35 = a1;
        if (v34 <= RangeOfComposedCharactersAtIndex.location)
        {
          v37 = 0;
        }

        else
        {
          v36 = *(a3 + 136);
          if (v36)
          {
            v37 = *(v36 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location);
          }

          else
          {
            v63 = *(a3 + 144);
            if (v63)
            {
              v37 = *(v63 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location);
            }

            else
            {
              if (*(a3 + 176) <= RangeOfComposedCharactersAtIndex.location || (v65 = *(a3 + 168), v65 > RangeOfComposedCharactersAtIndex.location))
              {
                v66 = RangeOfComposedCharactersAtIndex.location - 4;
                if (RangeOfComposedCharactersAtIndex.location < 4uLL)
                {
                  v66 = 0;
                }

                if (v66 + 64 < v34)
                {
                  v34 = v66 + 64;
                }

                *(a3 + 168) = v66;
                *(a3 + 176) = v34;
                v78.length = v34 - v66;
                v78.location = *(a3 + 152) + v66;
                CFStringGetCharacters(*(a3 + 128), v78, a3);
                v65 = *(a3 + 168);
              }

              v37 = *(a3 + 2 * (RangeOfComposedCharactersAtIndex.location - v65));
            }
          }
        }
      }

      sub_29922E56C(v10, v37, &v72);
      v60 = v72;
      if (v73 != v72)
      {
        v62 = 0;
        do
        {
          a6[RangeOfComposedCharactersAtIndex.location - v8] = *&v60[2 * v62];
          sub_2992EBC68(v35, a2, a3, RangeOfComposedCharactersAtIndex.location + 1, a5 - 1, a6 + 1, a7);
          ++v62;
          v60 = v72;
        }

        while (v62 < (v73 - v72) >> 1);
      }

      goto LABEL_80;
    }

    if (v8 <= RangeOfComposedCharactersAtIndex.location)
    {
      location = RangeOfComposedCharactersAtIndex.location;
    }

    else
    {
      location = v8;
    }

    v15 = v13 - location;
    if (v13 - location >= 1)
    {
      v16 = &a6[-v8];
      v17 = -location;
      v18 = location + 64;
      do
      {
        if (location >= 4)
        {
          v19 = 4;
        }

        else
        {
          v19 = location;
        }

        if (location < 0 || (v20 = *(a3 + 160), v20 <= location))
        {
          v23 = 0;
        }

        else
        {
          v21 = *(a3 + 136);
          if (v21)
          {
            v22 = v21 + 2 * *(a3 + 152);
          }

          else
          {
            v24 = *(a3 + 144);
            if (v24)
            {
              v23 = *(v24 + *(a3 + 152) + location);
              goto LABEL_19;
            }

            if (*(a3 + 176) <= location || (v25 = *(a3 + 168), v25 > location))
            {
              v26 = v19 + v17;
              v27 = v18 - v19;
              v28 = location - v19;
              v29 = v28 + 64;
              if (v28 + 64 >= v20)
              {
                v29 = *(a3 + 160);
              }

              *(a3 + 168) = v28;
              *(a3 + 176) = v29;
              if (v20 >= v27)
              {
                v20 = v27;
              }

              v75.location = v28 + *(a3 + 152);
              v75.length = v20 + v26;
              CFStringGetCharacters(*(a3 + 128), v75, a3);
              v25 = *(a3 + 168);
            }

            v22 = a3 - 2 * v25;
          }

          v23 = *(v22 + 2 * location);
        }

LABEL_19:
        v16[location++] = v23;
        --v17;
        ++v18;
      }

      while (v13 != location);
    }

    a5 -= v15;
    a6 += v15;
    v10 = *(*(*a1 + 104) + 8);
    v8 = RangeOfComposedCharactersAtIndex.location + RangeOfComposedCharactersAtIndex.length;
    if (!v10)
    {
      goto LABEL_34;
    }
  }

  if (RangeOfComposedCharactersAtIndex.length != 1)
  {
    if (RangeOfComposedCharactersAtIndex.length >= 1)
    {
      v38 = 0;
      v39 = RangeOfComposedCharactersAtIndex.location - v8;
      v40 = -RangeOfComposedCharactersAtIndex.location;
      v41 = RangeOfComposedCharactersAtIndex.location + 64;
      v42 = RangeOfComposedCharactersAtIndex.location;
      v43 = &a6[v39];
      v44 = a3 + 2 * RangeOfComposedCharactersAtIndex.location;
      do
      {
        if (v42 >= 4)
        {
          v45 = 4;
        }

        else
        {
          v45 = v42;
        }

        v46 = RangeOfComposedCharactersAtIndex.location + v38;
        if (RangeOfComposedCharactersAtIndex.location + v38 < 0 || (v47 = *(a3 + 160), v47 <= v46))
        {
          v50 = 0;
        }

        else
        {
          v48 = *(a3 + 136);
          if (v48)
          {
            v49 = v48 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location;
          }

          else
          {
            v51 = *(a3 + 144);
            if (v51)
            {
              v50 = *(v51 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location + v38);
              goto LABEL_58;
            }

            if (*(a3 + 176) <= v46 || (v52 = *(a3 + 168), v52 > v46))
            {
              v53 = v45 + v40;
              v54 = v41 - v45;
              v55 = -v45;
              v56 = 64 - v45;
              v57 = v38 + RangeOfComposedCharactersAtIndex.location - v45;
              v58 = RangeOfComposedCharactersAtIndex.location + v38 + v56;
              if (v58 >= v47)
              {
                v58 = *(a3 + 160);
              }

              *(a3 + 168) = v57;
              *(a3 + 176) = v58;
              v59 = RangeOfComposedCharactersAtIndex.location + v38 + v55;
              if (v47 >= v54)
              {
                v47 = v54;
              }

              v77.location = v59 + *(a3 + 152);
              v77.length = v47 + v53;
              CFStringGetCharacters(*(a3 + 128), v77, a3);
              v44 = a3 + 2 * RangeOfComposedCharactersAtIndex.location;
              v52 = *(a3 + 168);
            }

            v49 = v44 - 2 * v52;
          }

          v50 = *(v49 + 2 * v38);
        }

LABEL_58:
        v43[v38++] = v50;
        ++v42;
        --v40;
        ++v41;
      }

      while (RangeOfComposedCharactersAtIndex.length != v38);
    }

LABEL_35:
    v30 = *(a7 + 16);

    v30();
    return;
  }

  if (RangeOfComposedCharactersAtIndex.location < 0 || (v31 = *(a3 + 160), v31 <= RangeOfComposedCharactersAtIndex.location))
  {
    v33 = 0;
  }

  else
  {
    v32 = *(a3 + 136);
    if (v32)
    {
      v33 = *(v32 + 2 * *(a3 + 152) + 2 * RangeOfComposedCharactersAtIndex.location);
    }

    else
    {
      v64 = *(a3 + 144);
      if (v64)
      {
        v33 = *(v64 + *(a3 + 152) + RangeOfComposedCharactersAtIndex.location);
      }

      else
      {
        if (*(a3 + 176) <= RangeOfComposedCharactersAtIndex.location || (v67 = *(a3 + 168), v67 > RangeOfComposedCharactersAtIndex.location))
        {
          v68 = RangeOfComposedCharactersAtIndex.location - 4;
          if (RangeOfComposedCharactersAtIndex.location < 4uLL)
          {
            v68 = 0;
          }

          if (v68 + 64 < v31)
          {
            v31 = v68 + 64;
          }

          *(a3 + 168) = v68;
          *(a3 + 176) = v31;
          v79.length = v31 - v68;
          v79.location = *(a3 + 152) + v68;
          CFStringGetCharacters(*(a3 + 128), v79, a3);
          v67 = *(a3 + 168);
        }

        v33 = *(a3 + 2 * (RangeOfComposedCharactersAtIndex.location - v67));
      }
    }
  }

  sub_29922E56C(v10, v33, &v72);
  v60 = v72;
  if (v73 != v72)
  {
    v61 = 0;
    do
    {
      a6[RangeOfComposedCharactersAtIndex.location - v8] = *&v60[2 * v61];
      (*(a7 + 16))(a7);
      ++v61;
      v60 = v72;
    }

    while (v61 < (v73 - v72) >> 1);
  }

LABEL_80:
  if (v60)
  {
    v73 = v60;
    operator delete(v60);
  }
}

void sub_2992EC1C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992EC1E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 8);
  if (*(a1 + 72) >= 1 && v3 != 0)
  {
    v7 = *(a1 + 64);
    v8 = -v7;
    v9 = v7 + 64;
    do
    {
      if (v7 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v7;
      }

      if (v7 < 0 || (v11 = *(*(a1 + 32) + 8), v12 = *(v11 + 200), v12 <= v7))
      {
        v14 = 0;
      }

      else
      {
        v13 = *(v11 + 176);
        if (v13)
        {
          v14 = *(v13 + 2 * *(v11 + 192) + 2 * v7);
        }

        else
        {
          v18 = *(v11 + 184);
          if (v18)
          {
            v14 = *(v18 + *(v11 + 192) + v7);
          }

          else
          {
            if (*(v11 + 216) <= v7 || (v19 = *(v11 + 208), v19 > v7))
            {
              v20 = v10 + v8;
              v21 = v9 - v10;
              v22 = v7 - v10;
              v23 = v22 + 64;
              if (v22 + 64 >= v12)
              {
                v23 = *(v11 + 200);
              }

              *(v11 + 208) = v22;
              *(v11 + 216) = v23;
              if (v12 >= v21)
              {
                v12 = v21;
              }

              v27.location = v22 + *(v11 + 192);
              v27.length = v12 + v20;
              CFStringGetCharacters(*(v11 + 168), v27, (v11 + 40));
              v19 = *(v11 + 208);
            }

            v14 = *(v11 - 2 * v19 + 2 * v7 + 40);
          }
        }
      }

      v26[0] = v14;
      v15 = **(a1 + 56);
      CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
      v3 = CursorByAdvancingWithCharacters;
      ++v7;
      --v8;
      ++v9;
    }

    while (v7 < *(a1 + 72) + *(a1 + 64) && CursorByAdvancingWithCharacters != 0);
  }

  sub_2992EC3C4(v26, *v2, v3, *(a1 + 80), *(a1 + 88), *(a1 + 104));
  v5 = *(a1 + 96);
  v6 = *(a1 + 72);
  if (!v5)
  {
    v6 = 0;
  }

  v25[0] = *(a1 + 96);
  v25[1] = v6;
  v24[0] = v5;
  v24[1] = v6;
  sub_2992EBA20(v2, v25, v24, v26, *(*(a1 + 40) + 8) + 40);
}

void sub_2992EC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2992EC6EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992EC3C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  *(a1 + 16) = 0;
  v9 = (a1 + 16);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a4[20] + 8 * a5);
  *(a1 + 48) = 0;
  *(a1 + 56) = a6;
  v10 = *(a2 + 8);
  if (*(v10 + 5) != 1 || (v11 = *(v10 + 40)) == 0)
  {
    v11 = *(v10 + 32);
  }

  v12 = *(v11 + 32);
  v13 = v12 - 1;
  if (a6)
  {
    v14 = 18;
    goto LABEL_14;
  }

  v16 = a4[26];
  v15 = a4[27];
  if (v15 == v16 || (v17 = a4[23], a4[24] == v17) || (v18 = (v15 - v16) >> 2, v18 != *v17))
  {
    v14 = 19;
LABEL_14:
    v21 = a4[v14];
    Length = CFStringGetLength(v21);
    v23 = *(a1 + 40);
    v24 = Length >= v23;
    v25 = Length - v23;
    if (v24)
    {
      v26.length = v25;
    }

    else
    {
      v26.length = 0;
    }

    v26.location = 0;
    v33 = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v21, v26);
    operator new();
  }

  v19 = v18 - v17[a5];
  if (v19 >= v12)
  {
    v20 = 4 * (v19 - v13);
    v19 = v13;
  }

  else
  {
    if (v19 < v13)
    {
      sub_2992141C0((a1 + 16), &dword_2994144B8);
    }

    v20 = 0;
  }

  if (v19 >= 1)
  {
    sub_2992EDEE0(v9, *(a1 + 24), (v20 + a4[26]), (v20 + a4[26] + 4 * v19), v19);
  }

  v27 = *(a2 + 8);
  if (*(v27 + 5) != 1 || (v28 = *(v27 + 40)) == 0)
  {
    v28 = *(v27 + 32);
  }

  v29 = *(a1 + 24) - *(a1 + 16);
  v30 = *(v28 + 8);
  LMLanguageModelJointProbability();
  *(a1 + 48) = -v31;
  return a1;
}

void sub_2992EC640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  v15 = *v13;
  if (*v13)
  {
    *(v12 + 24) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992EC6EC(void *a1)
{
  sub_299321FA0(*(*(*a1 + 88) + 8));
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2992EC734(void *a1, __int128 *a2)
{
  *a1 = &unk_2A1F6E780;
  v3 = a1 + 1;
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v4;
  }

  return a1;
}

void sub_2992EC7B0(std::exception *this)
{
  this->__vftable = &unk_2A1F6E780;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992EC824(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2992EC840(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v7 = a2;
    v8 = a2 - 1;
    v9 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = v7 - v9;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                sub_2992ED698(v9, v9 + 1, v8);
                return;
              case 4:

                sub_2992ED8B4(v9, v9 + 1, v9 + 2, v8);
                return;
              case 5:

                sub_2992EDA4C(v9, v9 + 1, v9 + 2, v9 + 3, v8);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            v7 = a2;
            if (v10 == 2)
            {
              v51 = *v9;
              v52 = (*(**(a2 - 1) + 176))(*(a2 - 1));
              if (v52 < (*(*v51 + 176))(v51))
              {
                v53 = *v9;
                *v9 = *(a2 - 1);
                *(a2 - 1) = v53;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v54 = v9 + 1;
            v55 = v9 == v7 || v54 == v7;
            v56 = v55;
            if (a4)
            {
              if ((v56 & 1) == 0)
              {
                v57 = 0;
                v58 = v9;
                do
                {
                  v60 = *v58;
                  v59 = v58[1];
                  v58 = v54;
                  v61 = (*(*v59 + 176))(v59);
                  if (v61 < (*(*v60 + 176))(v60))
                  {
                    v62 = *v58;
                    v63 = v57;
                    while (1)
                    {
                      *(v9 + v63 + 8) = *(v9 + v63);
                      if (!v63)
                      {
                        break;
                      }

                      v64 = *(v9 + v63 - 8);
                      v65 = (*(*v62 + 176))(v62);
                      v63 -= 8;
                      if (v65 >= (*(*v64 + 176))(v64))
                      {
                        v66 = (v9 + v63 + 8);
                        goto LABEL_85;
                      }
                    }

                    v66 = v9;
LABEL_85:
                    *v66 = v62;
                  }

                  v54 = v58 + 1;
                  v57 += 8;
                }

                while (v58 + 1 != a2);
              }
            }

            else if ((v56 & 1) == 0)
            {
              do
              {
                v105 = *a1;
                v104 = a1[1];
                a1 = v54;
                v106 = (*(*v104 + 176))(v104);
                if (v106 < (*(*v105 + 176))(v105))
                {
                  v107 = *a1;
                  v108 = a1;
                  do
                  {
                    v109 = v108;
                    v110 = *--v108;
                    *v109 = v110;
                    v111 = *(v109 - 2);
                    v112 = (*(*v107 + 176))(v107);
                  }

                  while (v112 < (*(*v111 + 176))(v111));
                  *v108 = v107;
                }

                v54 = a1 + 1;
              }

              while (a1 + 1 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != v7)
            {
              v67 = (v10 - 2) >> 1;
              v113 = v67;
              do
              {
                v68 = v67;
                if (v113 >= v67)
                {
                  v69 = (2 * v67) | 1;
                  v70 = &a1[v69];
                  if (2 * v67 + 2 < v10)
                  {
                    v71 = v70[1];
                    v72 = (*(**v70 + 176))();
                    if (v72 < (*(*v71 + 176))(v71))
                    {
                      ++v70;
                      v69 = 2 * v68 + 2;
                    }
                  }

                  v73 = &a1[v68];
                  v74 = *v73;
                  v75 = (*(**v70 + 176))();
                  if (v75 >= (*(*v74 + 176))(v74))
                  {
                    v76 = *v73;
                    do
                    {
                      v77 = v70;
                      *v73 = *v70;
                      if (v113 < v69)
                      {
                        break;
                      }

                      v78 = 2 * v69;
                      v69 = (2 * v69) | 1;
                      v70 = &a1[v69];
                      v79 = v78 + 2;
                      if (v78 + 2 < v10)
                      {
                        v80 = v70[1];
                        v81 = (*(**v70 + 176))();
                        if (v81 < (*(*v80 + 176))(v80))
                        {
                          ++v70;
                          v69 = v79;
                        }
                      }

                      v82 = (*(**v70 + 176))();
                      v73 = v77;
                    }

                    while (v82 >= (*(*v76 + 176))(v76));
                    *v77 = v76;
                  }
                }

                v67 = v68 - 1;
              }

              while (v68);
              do
              {
                v83 = 0;
                v84 = *a1;
                v85 = a1;
                do
                {
                  v86 = v85;
                  v87 = &v85[v83];
                  v85 = v87 + 1;
                  v88 = 2 * v83;
                  v83 = (2 * v83) | 1;
                  v89 = v88 + 2;
                  if (v88 + 2 < v10)
                  {
                    v91 = v87[2];
                    v90 = v87 + 2;
                    v92 = (*(**(v90 - 1) + 176))(*(v90 - 1));
                    if (v92 < (*(*v91 + 176))(v91))
                    {
                      v85 = v90;
                      v83 = v89;
                    }
                  }

                  *v86 = *v85;
                }

                while (v83 <= ((v10 - 2) >> 1));
                v93 = a2 - 1;
                v55 = v85 == --a2;
                if (v55)
                {
                  *v85 = v84;
                }

                else
                {
                  *v85 = *v93;
                  *v93 = v84;
                  v94 = (v85 - a1 + 8) >> 3;
                  v95 = v94 < 2;
                  v96 = v94 - 2;
                  if (!v95)
                  {
                    v97 = v96 >> 1;
                    v98 = &a1[v96 >> 1];
                    v99 = *v85;
                    v100 = (*(**v98 + 176))();
                    if (v100 < (*(*v99 + 176))(v99))
                    {
                      v101 = *v85;
                      do
                      {
                        v102 = v98;
                        *v85 = *v98;
                        if (!v97)
                        {
                          break;
                        }

                        v97 = (v97 - 1) >> 1;
                        v98 = &a1[v97];
                        v103 = (*(**v98 + 176))();
                        v85 = v102;
                      }

                      while (v103 < (*(*v101 + 176))(v101));
                      *v102 = v101;
                    }
                  }
                }

                v95 = v10-- <= 2;
              }

              while (!v95);
            }

            return;
          }

          v11 = v10 >> 1;
          v12 = &v9[v10 >> 1];
          if (v10 < 0x81)
          {
            sub_2992ED698(&a1[v10 >> 1], a1, v8);
          }

          else
          {
            sub_2992ED698(a1, &a1[v10 >> 1], v8);
            sub_2992ED698(a1 + 1, v12 - 1, a2 - 2);
            sub_2992ED698(a1 + 2, &a1[v11 + 1], a2 - 3);
            sub_2992ED698(v12 - 1, &a1[v10 >> 1], &a1[v11 + 1]);
            v13 = *a1;
            *a1 = *v12;
            *v12 = v13;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v14 = *a1;
          v15 = (*(**(a1 - 1) + 176))(*(a1 - 1));
          if (v15 < (*(*v14 + 176))(v14))
          {
            break;
          }

          v34 = *a1;
          v35 = *v8;
          v36 = (*(**a1 + 176))(*a1);
          if (v36 >= (*(*v35 + 176))(v35))
          {
            v39 = a1 + 1;
            do
            {
              v9 = v39;
              if (v39 >= v7)
              {
                break;
              }

              ++v39;
              v40 = *v9;
              v41 = (*(*v34 + 176))(v34);
            }

            while (v41 >= (*(*v40 + 176))(v40));
          }

          else
          {
            v9 = a1;
            do
            {
              v37 = v9[1];
              ++v9;
              v38 = (*(*v34 + 176))(v34);
            }

            while (v38 >= (*(*v37 + 176))(v37));
          }

          v42 = v7;
          if (v9 < v7)
          {
            v42 = v7;
            do
            {
              v43 = *--v42;
              v44 = (*(*v34 + 176))(v34);
            }

            while (v44 < (*(*v43 + 176))(v43));
          }

          while (v9 < v42)
          {
            v45 = *v9;
            *v9 = *v42;
            *v42 = v45;
            do
            {
              v46 = v9[1];
              ++v9;
              v47 = (*(*v34 + 176))(v34);
            }

            while (v47 >= (*(*v46 + 176))(v46));
            do
            {
              v48 = *--v42;
              v49 = (*(*v34 + 176))(v34);
            }

            while (v49 < (*(*v48 + 176))(v48));
          }

          v50 = v9 - 1;
          if (v9 - 1 != a1)
          {
            *a1 = *v50;
          }

          a4 = 0;
          *v50 = v34;
        }

        v16 = 0;
        v17 = *a1;
        do
        {
          v18 = (*(*a1[v16 + 1] + 176))(a1[v16 + 1]);
          ++v16;
        }

        while (v18 < (*(*v17 + 176))(v17));
        v19 = &a1[v16];
        if (v16 == 1)
        {
          v7 = a2;
          do
          {
            if (v19 >= v7)
            {
              break;
            }

            v22 = *--v7;
            v23 = (*(*v22 + 176))(v22);
          }

          while (v23 >= (*(*v17 + 176))(v17));
        }

        else
        {
          do
          {
            v20 = *--v7;
            v21 = (*(*v20 + 176))(v20);
          }

          while (v21 >= (*(*v17 + 176))(v17));
        }

        if (v19 >= v7)
        {
          v31 = v19 - 1;
        }

        else
        {
          v24 = &a1[v16];
          v25 = v7;
          do
          {
            v26 = *v24;
            *v24 = *v25;
            *v25 = v26;
            do
            {
              v27 = v24[1];
              ++v24;
              v28 = (*(*v27 + 176))(v27);
            }

            while (v28 < (*(*v17 + 176))(v17));
            do
            {
              v29 = *--v25;
              v30 = (*(*v29 + 176))(v29);
            }

            while (v30 >= (*(*v17 + 176))(v17));
          }

          while (v24 < v25);
          v31 = v24 - 1;
        }

        if (v31 != a1)
        {
          *a1 = *v31;
        }

        *v31 = v17;
        v32 = v19 >= v7;
        v7 = a2;
        if (v32)
        {
          break;
        }

LABEL_38:
        sub_2992EC840(a1, v31, a3, a4 & 1);
        a4 = 0;
        v9 = v31 + 1;
      }

      v33 = sub_2992EDC58(a1, v31);
      v9 = v31 + 1;
      if (sub_2992EDC58(v31 + 1, a2))
      {
        break;
      }

      if (!v33)
      {
        goto LABEL_38;
      }
    }

    a2 = v31;
    if (!v33)
    {
      continue;
    }

    break;
  }
}

void sub_2992ED698(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = (*(**a2 + 176))();
  v8 = (*(*v6 + 176))(v6);
  v9 = *a2;
  v10 = (*(**a3 + 176))();
  (*(*v9 + 176))(v9);
  if (v7 >= v8)
  {
    if (v10 < v11)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *a1;
      v15 = (*(**a2 + 176))();
      if (v15 < (*(*v14 + 176))(v14))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }

  else
  {
    v12 = *a1;
    if (v10 >= v11)
    {
      *a1 = *a2;
      *a2 = v12;
      v17 = (*(**a3 + 176))();
      if (v17 < (*(*v12 + 176))(v12))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
      }
    }

    else
    {
      *a1 = *a3;
      *a3 = v12;
    }
  }
}

void sub_2992ED8B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  sub_2992ED698(a1, a2, a3);
  v8 = *a3;
  v9 = (*(**a4 + 176))();
  if (v9 < (*(*v8 + 176))(v8))
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    v11 = *a2;
    v12 = (*(**a3 + 176))();
    if (v12 < (*(*v11 + 176))(v11))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *a1;
      v15 = (*(**a2 + 176))();
      if (v15 < (*(*v14 + 176))(v14))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }
}

void sub_2992EDA4C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  sub_2992ED8B4(a1, a2, a3, a4);
  v10 = *a4;
  v11 = (*(**a5 + 176))();
  if (v11 < (*(*v10 + 176))(v10))
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    v13 = *a3;
    v14 = (*(**a4 + 176))();
    if (v14 < (*(*v13 + 176))(v13))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      v17 = (*(**a3 + 176))();
      if (v17 < (*(*v16 + 176))(v16))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
        v19 = *a1;
        v20 = (*(**a2 + 176))();
        if (v20 < (*(*v19 + 176))(v19))
        {
          v21 = *a1;
          *a1 = *a2;
          *a2 = v21;
        }
      }
    }
  }
}

BOOL sub_2992EDC58(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *a1;
        v6 = (*(**(a2 - 1) + 176))(*(a2 - 1));
        if (v6 < (*(*v5 + 176))(v5))
        {
          v7 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_2992ED698(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_2992ED8B4(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_2992EDA4C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v8 = a1 + 2;
  sub_2992ED698(a1, a1 + 1, a1 + 2);
  v9 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *v8;
    v13 = (*(**v9 + 176))();
    if (v13 < (*(*v12 + 176))(v12))
    {
      v14 = *v9;
      v15 = v10;
      while (1)
      {
        *(a1 + v15 + 24) = *(a1 + v15 + 16);
        if (v15 == -16)
        {
          break;
        }

        v16 = *(a1 + v15 + 8);
        v17 = (*(*v14 + 176))(v14);
        v15 -= 8;
        if (v17 >= (*(*v16 + 176))(v16))
        {
          v18 = (a1 + v15 + 24);
          goto LABEL_19;
        }
      }

      v18 = a1;
LABEL_19:
      *v18 = v14;
      if (++v11 == 8)
      {
        return v9 + 1 == a2;
      }
    }

    v8 = v9;
    v10 += 8;
    if (++v9 == a2)
    {
      return 1;
    }
  }
}

char *sub_2992EDEE0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_299212A8C();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      sub_2992F86B0(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v22 = &__dst[4 * a5];
    v23 = &v10[-4 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 4;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v22);
    }

    v30 = 4 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_34;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 4;
    *v20 = v21;
    v20 += 4;
    v19 += 4;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[4 * a5];
    v27 = &v19[-4 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 4;
      *v28 = v29;
      v28 += 4;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[4 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_34:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void *sub_2992EE0E0(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2992F8674(v6, v10);
    }

    sub_299212A8C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2992EE20C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_2991A893C(v2);
    }

    JUMPOUT(0x29C29BFB0);
  }
}

void sub_2992EE264(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2992EE2E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992EE2F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992EE2F8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992BBCD8(v2);
    MEMORY[0x29C29BFB0](v3, 0x1060C40285832E9);
  }

  return a1;
}

void sub_2992EE344(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992EE37C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2992BBCD8(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992EE3C0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6E7F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2992EE400(uint64_t a1, _WORD **a2)
{
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 64) + 8);
  v6 = sub_2993B2928(*(v4 + 32), a2[1]);
  v8 = v7;
  v9 = (*(**(v4 + 32) + 24))(*(v4 + 32), a2[1], 1);
  v11 = v10;
  *(*(*(a1 + 32) + 8) + 24) = &v8[-v5];
  *(*(*(a1 + 40) + 8) + 24) = &v6[v5];
  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (v12 == 0.0)
  {
    v13 = v4;
    v15 = *(a1 + 72);
    v14 = *(a1 + 80);
    v16 = *v14;
    v17 = v14[1];
    LODWORD(v83) = 0;
    sub_299321FD8(*(*(*v15 + 88) + 8), v16, v17, &v83);
    v87 = 0;
    v88 = 0;
    __p = 0;
    sub_29920DED0(&__p, v15[2], v15[3], (v15[3] - v15[2]) >> 2);
    sub_2992141C0(&__p, &v83);
    sub_2992141C0(&__p, dword_2994144BC);
    v18 = *(*v15 + 8);
    if (*(v18 + 5) != 1 || (v19 = *(v18 + 40)) == 0)
    {
      v19 = *(v18 + 32);
    }

    v20 = *(v19 + 8);
    LMLanguageModelJointProbability();
    v22 = v21;
    if (__p)
    {
      v87 = __p;
      operator delete(__p);
    }

    *(*(*(a1 + 48) + 8) + 24) = -v22;
    v12 = *(*(*(a1 + 48) + 8) + 24);
    v4 = v13;
  }

  v23 = *(a1 + 72);
  v24 = *(v23 + 2);
  v25 = *(v23 + 3);
  if (v24 == v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v25 - 4);
  }

  v79 = *(v4 + 40);
  v29 = v25 - v24 == 4 && v26 == 1 || v26 == 502;
  if (((*a2)[2] & 0x800) == 0 || v29)
  {
    v78 = v4;
    __p = 0;
    v87 = 0;
    v88 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v30 = *(*(*v23 + 88) + 8);
    v77 = v29;
    if (v11)
    {
      v31 = 0;
      v32 = 0;
      do
      {
        v80 = (*(v9 + 2 * v31) - 48);
        v90[0] = 0;
        sub_299321FD8(v30, &v6[v32], v80, v90);
        sub_2992141C0(&v83, v90);
        v33 = v80;
        sub_299266D00(&__p, &v80);
        v32 += v33;
        ++v31;
      }

      while (v31 < v11);
    }

    else
    {
      v90[0] = 0;
      v80 = v8;
      if (*(v23 + 1))
      {
        v34 = *(v23 + 5);
        if (v8 > v34)
        {
          while (1)
          {
            v35 = *(*(*v23 + 104) + 8);
            v36 = v6[v34];
            v39 = *(v35 + 8);
            v37 = v35 + 8;
            v38 = v39;
            if (v39)
            {
              v40 = v37;
              do
              {
                v41 = *(v38 + 26);
                v42 = v41 >= v36;
                v43 = v41 < v36;
                if (v42)
                {
                  v40 = v38;
                }

                v38 = *(v38 + 8 * v43);
              }

              while (v38);
              if (v40 != v37 && *(v40 + 26) <= v36)
              {
                LOWORD(v36) = *(v40 + 28);
              }
            }

            v89 = v36;
            v44 = *v30;
            CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
            if (!CursorByAdvancingWithCharacters)
            {
              break;
            }

            if (++v34 == v8)
            {
              goto LABEL_41;
            }
          }

          if (v34 != v8)
          {
            goto LABEL_46;
          }

LABEL_41:
          v46 = *v30;
          if (LMLexiconCursorHasEntries())
          {
            TokenID = 0;
            if (CursorByAdvancingWithCharacters && *v30)
            {
              v48 = *v30;
              TokenID = LMLexiconCursorFirstTokenID();
            }

            v90[0] = TokenID;
          }
        }
      }

LABEL_46:
      sub_2992141C0(&v83, v90);
      sub_299266D00(&__p, &v80);
    }

    v80 = 0;
    v81 = 0;
    v82 = 0;
    v49 = *(*v23 + 8);
    if (*(v49 + 5) != 1 || (v50 = *(v49 + 40)) == 0)
    {
      v50 = *(v49 + 32);
    }

    v51 = *(v23 + 2);
    v52 = *(v23 + 3);
    if (v51 == v52)
    {
      v53 = 0;
    }

    else
    {
      v53 = *(v52 - 1);
    }

    v56 = v52 - v51 == 4 && v53 == 1 || v53 == 502;
    if (v23 + 2 == &v80)
    {
      v57 = 0;
    }

    else
    {
      sub_2992EE0E0(&v80, v51, v52, (v52 - v51) >> 2);
      v57 = v81;
    }

    sub_2992EDEE0(&v80, v57, v83, v84, (v84 - v83) >> 2);
    v58 = *(v50 + 8);
    LMLanguageModelJointProbability();
    v60 = -v59;
    if (v56)
    {
      v61 = *(v50 + 8);
      LMLanguageModelJointProbability();
      v60 = v62 * -0.5 + v60 * 0.5;
    }

    LOBYTE(v90[0]) = 0;
    v63 = *(*v23 + 8);
    if (*(v63 + 5) != 1 || (v64 = *(v63 + 40)) == 0)
    {
      v64 = *(v63 + 32);
    }

    v65 = *(v64 + 8);
    v66 = LMLanguageModelTokenSequenceIsBlocklisted() ^ 1 | ((v90[0] & 4) >> 2);
    v67 = *(v23 + 56);
    if ((v79 & 2) != 0 || (v66 & 1) == 0)
    {
      if ((v66 & v67 & 1) == 0)
      {
LABEL_90:
        if (v80)
        {
          v81 = v80;
          operator delete(v80);
        }

        if (v83)
        {
          v84 = v83;
          operator delete(v83);
        }

        if (__p)
        {
          v87 = __p;
          operator delete(__p);
        }

        if (v66)
        {
          v72 = (2 * *(*(*(a1 + 32) + 8) + 24));
          if (v72)
          {
            v73 = 0;
            v74 = *(*(*(a1 + 40) + 8) + 24);
            do
            {
              v75 = *v74++;
              v73 = (1025 * (v73 + v75)) ^ ((1025 * (v73 + v75)) >> 6);
              --v72;
            }

            while (v72);
          }

          v76 = sub_2992BB92C(*(a1 + 64), *(*(*v78 + 104) + 8));
          sub_2992EE264(&__p, v76);
        }

        return;
      }

      if (!v77)
      {
        goto LABEL_87;
      }

      goto LABEL_77;
    }

    if (v67)
    {
      if (v77)
      {
LABEL_77:
        *(v23 + 5);
LABEL_87:
        log2(*(v23 + 5));
        goto LABEL_88;
      }

      v69 = (v79 & 8) == 0;
      v68 = 0.0;
      v70 = -2.0;
    }

    else
    {
      v68 = 0.0;
      if (v77 || (v79 & 8) == 0 && *(v23 + 5) > 2uLL)
      {
LABEL_88:
        v66 = 1;
        goto LABEL_90;
      }

      if ((v79 & 8) != 0)
      {
        goto LABEL_84;
      }

      v69 = *(v23 + 3) - *(v23 + 2) == 4;
      v68 = -0.15;
      v70 = -0.5;
    }

    if (v69)
    {
      v68 = v70;
    }

LABEL_84:
    if (v60 + v68 >= v12)
    {
      v66 = 0;
      goto LABEL_90;
    }

    v71 = v60 - v23[6];
    v66 = v71 < 5.0;
    if (v71 >= 5.0 || (v67 & 1) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_87;
  }
}

void sub_2992EEB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2992EEBC0(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  v5 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  if (!sub_299377154(v5))
  {
    return 0;
  }

  v7 = (*(*v6 + 440))(v6);
  valuePtr[1] = v7;
  v6 = v7 != 0;
  if (v7)
  {
    v8 = v7;
    valuePtr[0] = CFStringGetLength(v7);
    v9 = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
    CFDictionaryAddValue(a2, @"acceptedSyllableLength", v9);
    if (v9)
    {
      CFRelease(v9);
    }

    CFRelease(v8);
  }

  return v6;
}

void sub_2992EECF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  sub_2992292D8(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992EED3C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();

    return MEMORY[0x2A1C70FE8](v1, sel_isMemberOfClass_, v2);
  }

  return result;
}

uint64_t sub_2992EED88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x29EDB9FB8], a2, a3);

  return MEMORY[0x2A1C70FE8](v4, sel_removeItemAtURL_error_, a1);
}

uint64_t sub_2992EEDCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x29EDB8E78], a2, a3);
  v6 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v5, a1, 4);

  return MEMORY[0x2A1C70FE8](v4, sel_BOOLForKey_, v6);
}

void *sub_2992EEE28(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x29EDB8E78], a2, a3);
  v6 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v5, a1, 1);
  result = objc_msgSend_stringForKey_(v4, v7, v6);
  if (result)
  {

    return objc_msgSend_UTF8String(result, v9, v10);
  }

  return result;
}

uint64_t sub_2992EEE98()
{
  if (qword_2A1460CA0 != -1)
  {
    dispatch_once(&qword_2A1460CA0, &unk_2A1F6E850);
  }

  return qword_2A1460CA8;
}

void sub_2992EEEE0()
{
  v0 = sub_299276360("/System/Library/PrivateFrameworks/ProofReader.framework");
  v3 = objc_msgSend_stringByStandardizingPath(v0, v1, v2);
  qword_2A1460CA8 = objc_msgSend_bundleWithPath_(MEMORY[0x29EDB9F48], v4, v3);

  CFRelease(v0);
}

CFStringRef sub_2992EEF40(CFStringRef theString, int a2, char a3)
{
  if (a3)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
    if (sub_299277300(a2) == 2 || sub_299277300(a2) == 5)
    {
      v6 = @"Traditional - Simplified";
    }

    else
    {
      v6 = @"Simplified - Traditional";
    }

    CFStringTransform(MutableCopy, 0, v6, 0);
    return MutableCopy;
  }

  else
  {

    return CFStringCreateCopy(0, theString);
  }
}

uint64_t sub_2992EEFDC(int a1)
{
  if (qword_2A1460CC8 != -1)
  {
    dispatch_once(&qword_2A1460CC8, &unk_2A1F6E870);
  }

  switch(a1)
  {
    case 5:
      return qword_2A1460CC0;
    case 2:
      return qword_2A1460CB8;
    case 1:
      return qword_2A1460CB0;
  }

  return 0;
}

void *sub_2992EF064()
{
  qword_2A1460CB0 = &unk_2A1F83760;
  qword_2A1460CB8 = &unk_2A1F83778;
  result = &unk_2A1F83790;
  qword_2A1460CC0 = result;
  return result;
}

uint64_t sub_2992EF0B8(void *a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (qword_2A1460CD8 != -1)
  {
    dispatch_once(&qword_2A1460CD8, &unk_2A1F6E890);
  }

  result = objc_msgSend_length(a1, a2, a3);
  if (result)
  {
    v7 = result;
    if (objc_msgSend__fastCharacterContents(a1, v5, v6))
    {
      result = uset_containsAllCodePoints() != 0;
    }

    else
    {
      v9 = 0;
      while (1)
      {
        if (v7 >= 0x100)
        {
          v10 = 256;
          objc_msgSend_getCharacters_range_(a1, v8, v12, v9, 256);
        }

        else
        {
          v10 = v7;
          objc_msgSend_getCharacters_range_(a1, v8, v12, v9, v7);
        }

        result = uset_containsAllCodePoints();
        if (!result)
        {
          break;
        }

        v9 += v10;
        v7 -= v10;
        if (!v7)
        {
          result = 1;
          break;
        }
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992EF1D4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = sub_2992EF1F4(a1, a2, a3);
  qword_2A1460CD0 = result;
  return result;
}

uint64_t sub_2992EF1F4(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  HIDWORD(v10) = 0;
  v3 = objc_msgSend_length(@"[[:Hani:]]", a2, a3);
  if (objc_msgSend__fastCharacterContents(@"[[:Hani:]]", v4, v5))
  {
    result = uset_openPattern();
  }

  else
  {
    MEMORY[0x2A1C7C4A8]();
    objc_msgSend_getCharacters_range_(@"[[:Hani:]]", v8, &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v3);
    result = uset_openPattern();
  }

  if (SHIDWORD(v10) >= 1 && result)
  {
    uset_close();
    result = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992EF2F4(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return *(&off_29EF10C20 + a1);
  }
}

void *sub_2992EF314(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  sub_2992F2784((a1 + 1));
  a1[55] = sub_299237120();
  sub_299255778(0);
  a1[56] = &qword_2A1461DC0;
  a1[57] = a3;
  a1[2] = a2;
  return a1;
}

uint64_t sub_2992EF38C(uint64_t result, uint64_t a2, int a3, unsigned __int8 a4)
{
  v4 = *(a2 + 64);
  if (v4)
  {
    v5 = *(v4 + 8) >> 1;
    v6 = *(a2 + 88) >> 1;
  }

  else
  {
    v6 = *(a2 + 88) >> 1;
    LOWORD(v5) = v6;
  }

  *(result + 26) = v5;
  *(result + 20) = v6;
  v7 = *(a2 + 104);
  if ((v7 & 0x10) != 0)
  {
    v8 = 8;
  }

  else if ((v7 & 0x20) != 0)
  {
    v8 = 10;
  }

  else if (*(a2 + 109) - 7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_299414618[(*(a2 + 109) - 7)];
  }

  v9 = *(a2 + 80);
  *(result + 8) = *(a2 + 109);
  *(result + 12) = v9;
  v10 = *(a2 + 84);
  *result = v8;
  *(result + 4) = v10;
  HIDWORD(v11) = *(a2 + 92);
  LODWORD(v11) = HIDWORD(v11);
  *(result + 30) = v11 >> 16;
  *(result + 36) = *(a2 + 108);
  if (((a3 == 1) & a4) != 0)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12 | (8 * (*(a2 + 107) != 0)) | *(result + 37) & 0xF0 | (2 * (*(a2 + 106) != 0));
  if (!*(a2 + 106))
  {
    ++v13;
  }

  *(result + 37) = v13;
  *(result + 24) = a3;
  if (v4)
  {
    LODWORD(v4) = *(v4 + 14);
  }

  *(result + 16) = v4;
  return result;
}

void sub_2992EF484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6, int a7)
{
  v41 = *MEMORY[0x29EDCA608];
  v10 = *a1[57];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    v34 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (v10 >> 5) & 1;
    v14 = a2;
    do
    {
      v15 = *(v14 + 109);
      if (v15 != 2)
      {
        if (a5 < 1)
        {
          v12 += *(v14 + 84);
          v16 = *(v14 + 86);
          if (*v14)
          {
            v12 += (*(**a1 + 64))(*a1, *(*v14 + 92), *(v14 + 94));
            v15 = *(v14 + 109);
          }

          v11 += v16;
          if (v15 != 3)
          {
            v17 = sub_2993E4BB0(*a1, v14, v13, word_2A1460D10, 0x80u);
            v18 = v17;
            if (v17)
            {
              v19 = v17;
              sub_299217A18(v37, word_2A1460D10, v17);
              v20 = *(v14 + 64);
              if (v20)
              {
                sub_299217A18(v36, *v20, *(v20 + 8) >> 1);
              }

              v39 = 0;
              memset(v38, 0, sizeof(v38));
              sub_2992EF38C(v38, v14, v18, a6);
              if (*(a1[56] + 50) == *(v14 + 94))
              {
                if ((atomic_load_explicit(&qword_2A1460CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460CE0))
                {
                  v40[5] = *&off_29EF10CA8;
                  v40[6] = xmmword_29EF10CB8;
                  v40[7] = *&off_29EF10CC8;
                  v40[8] = xmmword_29EF10CD8;
                  v40[1] = unk_29EF10C68;
                  v40[2] = xmmword_29EF10C78;
                  v40[3] = *&off_29EF10C88;
                  v40[4] = xmmword_29EF10C98;
                  v40[0] = xmmword_29EF10C58;
                  sub_299274E3C(&qword_2A1460CE8, v40, 9);
                  __cxa_atexit(sub_29926ECD0, &qword_2A1460CE8, &dword_29918C000);
                  __cxa_guard_release(&qword_2A1460CE0);
                }

                v21 = sub_29927512C(&qword_2A1460CE8, word_2A1460D10, v19);
                if (qword_2A1460CF0)
                {
                  v22 = vcnt_s8(qword_2A1460CF0);
                  v22.i16[0] = vaddlv_u8(v22);
                  if (v22.u32[0] > 1uLL)
                  {
                    v23 = v21;
                    if (v21 >= qword_2A1460CF0)
                    {
                      v23 = v21 % qword_2A1460CF0;
                    }
                  }

                  else
                  {
                    v23 = (qword_2A1460CF0 - 1) & v21;
                  }

                  v24 = *(qword_2A1460CE8 + 8 * v23);
                  if (v24)
                  {
                    for (i = *v24; i; i = *i)
                    {
                      v26 = i[1];
                      if (v21 == v26)
                      {
                        if (i[3] == v19)
                        {
                          v27 = i[2];
                          v28 = v19;
                          v29 = word_2A1460D10;
                          while (*v29 == *v27)
                          {
                            ++v27;
                            ++v29;
                            if (!--v28)
                            {
                              goto LABEL_34;
                            }
                          }
                        }
                      }

                      else
                      {
                        if (v22.u32[0] > 1uLL)
                        {
                          if (v26 >= qword_2A1460CF0)
                          {
                            v26 %= qword_2A1460CF0;
                          }
                        }

                        else
                        {
                          v26 &= qword_2A1460CF0 - 1;
                        }

                        if (v26 != v23)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

                LODWORD(v38[0]) = 5;
              }

LABEL_34:
              sub_2992DD840(__p, v38);
            }

            v30 = v34 || *(v14 + 106) != 0;
            v34 = v30;
          }
        }

        else
        {
          --a5;
        }
      }

      v14 = *(v14 + 8);
    }

    while (v14);
  }

  if (a7)
  {
    sub_2993E4F9C(a2, 1, a5);
  }

  sub_2992FE060();
  v31 = a1[57];
  operator new();
}

void sub_2992EF94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  __cxa_guard_abort(&qword_2A1460CE0);
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992EF9F4(uint64_t a1, void *a2, uint64_t **a3, int a4, int *a5, unsigned int *a6)
{
  v124[1] = *MEMORY[0x29EDCA608];
  (*(**a3 + 544))(*a3);
  if (!v12)
  {
    goto LABEL_124;
  }

  v115 = a4;
  v116 = (*(**a3 + 408))(*a3);
  v13 = *a3;
  if (a6)
  {
    (*(*v13 + 480))(*a3, *a6);
    v14 = *a6;
    (*(**a3 + 488))();
    v15 = *a6;
    v16 = v116;
  }

  else
  {
    sub_299255778(0);
    v17 = (*(*v13 + 304))(v13);
    v18 = *v17;
    if (0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3) < 2 || *(v18 + 38) == 1 || *(v18 + 78) == 1)
    {
      goto LABEL_35;
    }

    v19 = *(v18 + 30);
    v20 = *(v18 + 70);
    v110 = (*(*v13 + 544))(v13);
    v21 = *(*v17 + 24);
    sub_299255778(0);
    if (xmmword_2A1461E10 > v19 || WORD1(xmmword_2A1461E10) < v19)
    {
      v23 = WORD5(xmmword_2A1461E10) < v19 || WORD4(xmmword_2A1461E10) > v19;
      v24 = !v23 || HIWORD(xmmword_2A1461E10) == v19;
      if (!v24 && WORD6(xmmword_2A1461E10) != v19)
      {
        goto LABEL_35;
      }
    }

    sub_299255778(0);
    v26 = xmmword_2A1461E10 <= v20 && WORD1(xmmword_2A1461E10) >= v20;
    if (v26 || (WORD4(xmmword_2A1461E10) <= v20 ? (v27 = WORD5(xmmword_2A1461E10) >= v20) : (v27 = 0), v27 || (HIWORD(xmmword_2A1461E10) != v20 ? (v28 = WORD6(xmmword_2A1461E10) == v20) : (v28 = 1), v28 || v19 == HIWORD(xmmword_2A1461E10) && (v20 != qword_2A1461E20 ? (v108 = v20 == WORD1(qword_2A1461E20)) : (v108 = 1), v108))))
    {
LABEL_35:
      v29 = 0;
    }

    else
    {
      v29 = 2000;
      if (v21 == 2)
      {
        if (*v110 == 811151463)
        {
          v29 = 0;
        }

        else
        {
          v29 = 2000;
        }
      }
    }

    v30 = (*(*v13 + 544))(v13);
    v31 = *v17;
    v112 = a1;
    if (v17[1] != *v17)
    {
      v32 = v30;
      v33 = 0;
      v34 = 0;
      v35 = 24;
      do
      {
        v36 = sub_299281F40(v32, *(v31 + v35), 0, 0);
        if (v34 == v36)
        {
          v37 = 15000;
        }

        else
        {
          v37 = 25000;
        }

        if (v36)
        {
          v38 = v34 == 0;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          v37 = 0;
        }

        v29 += v37;
        v31 = *v17;
        v32 += 2 * *(*v17 + v35);
        ++v33;
        v35 += 40;
        v34 = v36;
      }

      while (v33 < 0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3));
    }

    v39 = *a3;
    v40 = (*(**a3 + 112))(*a3);
    (*(*v39 + 480))(v39, (v40 + v29));
    v41 = *a3;
    v42 = (*(**a3 + 384))(*a3);
    (*(*v41 + 488))(v41, (v42 + v29));
    v43 = *a3;
    v16 = v116;
    a1 = v112;
    if (v116 != 1)
    {
      *(v43 + 55) += v29;
    }

    v15 = (*(*v43 + 112))(v43);
  }

  v44 = **a3;
  if (v16 != 1)
  {
    v63 = (*(v44 + 544))();
    if (a4)
    {
      v65 = v64;
      if (v64)
      {
        v66 = v63;
        if (*v63 != 32)
        {
          v68 = MEMORY[0x29EDCA600];
          while (1)
          {
            v70 = *v66++;
            v69 = v70;
            if (!(v70 <= 0x7FuLL ? *(v68 + 4 * v69 + 60) & 0x40000 : __maskrune(v69, 0x40000uLL)))
            {
              break;
            }

            if (!--v65)
            {
              v114 = a1;
              v72 = (*(**a3 + 544))(*a3);
              v74 = v73;
              v121 = 0uLL;
              *&v122 = 0;
              (*(**a3 + 544))();
              sub_299218E20(&v121, v75 + 1);
              LOWORD(v117) = 32;
              sub_29922E664(&v121, &v117);
              sub_29925493C(&v117, v72, &v72[v74], &v121);
              v76 = (*(**a3 + 304))(*a3);
              v117 = 0;
              v118 = 0;
              v119 = 0;
              sub_29921E8E0(&v117, *v76, v76[1], 0xCCCCCCCCCCCCCCCDLL * ((v76[1] - *v76) >> 3));
              if (v117 != v118)
              {
                ++v117[12];
                (*(**a3 + 200))();
                v77 = *(*a3 + 87);
                if (v77 >= 0)
                {
                  v78 = (*a3 + 8);
                }

                else
                {
                  v78 = (*a3)[8];
                }

                v79 = (*a3)[9];
                if (v77 >= 0)
                {
                  v80 = *(*a3 + 87);
                }

                else
                {
                  v80 = (*a3)[9];
                }

                sub_2992FE060();
                (*(**a3 + 112))();
                v81 = *(*a3 + 55);
                (*(**a3 + 376))(*a3);
                (*(**a3 + 408))(*a3);
                v82 = *(v114 + 456);
                operator new();
              }

              v62 = 0;
              if (v117)
              {
                v118 = v117;
                operator delete(v117);
              }

              v87 = v121;
              if (v121)
              {
                *(&v121 + 1) = v121;
                goto LABEL_116;
              }

              goto LABEL_117;
            }
          }
        }
      }
    }

    (*(**a3 + 400))(*a3, 0.0);
    v67 = *a3;
    v67[23] = 0;
    sub_29925B164((a1 + 8), v67);
    goto LABEL_119;
  }

  if ((*(v44 + 48))() != 1 || (**(a1 + 456) & 4) != 0)
  {
LABEL_111:
    v62 = 0;
  }

  else
  {
    v45 = *a3;
    v46 = *(*a3 + 87);
    if (v46 >= 0)
    {
      v47 = (*a3 + 8);
    }

    else
    {
      v47 = (*a3)[8];
    }

    if (v46 >= 0)
    {
      v48 = *(*a3 + 87);
    }

    else
    {
      v48 = v45[9];
    }

    v49 = (*(*v45 + 544))(v45);
    if (v49)
    {
      v51 = v50 == 0;
    }

    else
    {
      v51 = 1;
    }

    if (!v51)
    {
      v88 = 0;
      while (1)
      {
        v89 = *(v49 + 2 * v88);
        v90 = v89 - 48;
        v91 = (v89 + 240);
        if (v90 >= 0xA && v91 >= 0xA)
        {
          break;
        }

        if (v50 == ++v88)
        {
          if (!v48)
          {
            break;
          }

          v93 = 0;
          while (1)
          {
            v94 = *(v47 + 2 * v93);
            v95 = v94 - 48;
            v96 = (v94 + 240);
            if (v95 >= 0xA && v96 > 9)
            {
              break;
            }

            if (v48 == ++v93)
            {
              v93 = v48;
              break;
            }
          }

          if (v50 >= v93)
          {
            break;
          }

          goto LABEL_111;
        }
      }
    }

    v113 = a1;
    v52 = sub_299237120();
    v53 = (*(**a3 + 560))(*a3, 0);
    v109 = *(v53 + 26);
    v111 = *(v53 + 24);
    v54 = *v53;
    v55 = *(v53 + 16);
    v123 = *(v53 + 32);
    v121 = v54;
    v122 = v55;
    v118 = 0;
    v119 = 0;
    v117 = 0;
    sub_2992DBD58(&v117, &v121, v124, 1uLL);
    if (!v115 || !v111 || *(*(**a3 + 544))(*a3) == 32 || (v56 = (*(**a3 + 544))(*a3)) == 0)
    {
LABEL_94:
      v83 = **(v113 + 456);
      (*(**a3 + 112))();
      v84 = v52[144];
      (*(**a3 + 544))(*a3);
      sub_2992FE060();
      v85 = *(*a3 + 55);
      v86 = *(v113 + 456);
      operator new();
    }

    v57 = MEMORY[0x29EDCA600];
    v58 = v111;
    do
    {
      v60 = *v56++;
      v59 = v60;
      if (v60 <= 0x7FuLL)
      {
        v61 = *(v57 + 4 * v59 + 60) & 0x40000;
      }

      else
      {
        v61 = __maskrune(v59, 0x40000uLL);
      }

      if (!v61)
      {
        goto LABEL_94;
      }

      --v58;
    }

    while (v58);
    v62 = 0;
    v87 = v117;
    if (v117)
    {
      v118 = v117;
LABEL_116:
      operator delete(v87);
    }
  }

LABEL_117:
  v98 = *a3;
  *a3 = 0;
  if (v98)
  {
    (*(*v98 + 16))(v98);
LABEL_119:
    v62 = *a3;
  }

  if (!v62 || (v99 = (*(*v62 + 304))(v62), *v99 != v99[1]) && **v99 == 9 && ((*(**a3 + 176))() & 1) != 0)
  {
LABEL_124:
    v100 = 0;
    goto LABEL_125;
  }

  if (v16 == 1)
  {
    v103 = "[ME::addCandidateFromMecabNode] Adding a partial candidate";
  }

  else
  {
    v103 = "[ME::addCandidateFromMecabNode] Adding a non-partial candidate";
  }

  (*(**a3 + 528))(*a3, 3, v103, 1);
  if (v16 == 1)
  {
    v15 = (*(**a3 + 112))();
  }

  v104 = *a3;
  *a3 = 0;
  *&v121 = v104;
  v120[0] = &unk_2A1F65308;
  v120[3] = v120;
  v100 = sub_2992AB710(a2, &v121, 1, 0, v120);
  sub_29921F128(v120);
  v105 = v121;
  *&v121 = 0;
  if (v105)
  {
    (*(*v105 + 16))(v105);
  }

  v106 = v100 ^ 1;
  if (!a5)
  {
    v106 = 1;
  }

  if ((v106 & 1) == 0)
  {
    v107 = *a5;
    if (*a5 <= v15)
    {
      v107 = v15;
    }

    *a5 = v107;
    v100 = 1;
  }

LABEL_125:
  v101 = *MEMORY[0x29EDCA608];
  return v100;
}

void sub_2992F0868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992F09DC(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned __int8 a8, uint64_t a9, uint64_t a10)
{
  v99 = *MEMORY[0x29EDCA608];
  v92 = 0;
  v66 = sub_2993232FC(a5, &v92);
  if (*(a5 + 64) != *(a5 + 56) || a4 != 0)
  {
    v67 = *(a10 + 184);
    v73 = *(v67 + 32);
    v15 = 300;
    if (a7)
    {
      v15 = 302;
      v16 = 4;
    }

    else
    {
      v16 = 0;
    }

    v65 = *(a1[55] + v15);
    v17 = *a1[57];
    v18 = (*(**a1 + 232))();
    v19 = sub_299322E10(v17, v18);
    v20 = **(a5 + 80);
    v21 = *(a5 + 32);
    v22 = (*(a5 + 40) - v21) >> 1;
    if (v21)
    {
      v23 = v22 - v20;
    }

    else
    {
      v23 = 0;
    }

    v24 = v22 > v20;
    v25 = **(a5 + 104);
    v26 = *(a5 + 56);
    if (!v24)
    {
      v23 = 0;
    }

    v74 = v23;
    v27 = (*(a5 + 64) - v26) >> 1;
    if (v27 <= v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = (v26 + 2 * v25);
    }

    if (v26)
    {
      v29 = v27 - v25;
    }

    else
    {
      v29 = 0;
    }

    if (v27 <= v25)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    v69 = *(a5 + 8);
    v70 = *(a5 + 16);
    v31 = v92;
    v90 = 0;
    v89 = 0;
    v91 = 0;
    sub_299217A18(&v89, v28, v30 - v92);
    v32 = v90;
    v33 = v89;
    sub_299217A18(&v89, a3, a4);
    v34 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3);
    v71 = v34;
    if (((v66 ^ 1) & v31 & 1) == 0)
    {
      v35 = v34 - *(a1[55] + 340);
      v34 = v35 & ~(v35 >> 63);
    }

    if ((~*a1[57] & 0x81000000) != 0)
    {
      v79 = a4;
    }

    else
    {
      v36 = sub_2992AB494(a2);
      if (v36 == -1)
      {
        v37 = a4;
      }

      else
      {
        v37 = 0;
      }

      v79 = v37;
      if (v36 != -1 && a4)
      {
        v38 = *(*(a2 + 48) + 8 * v36);
        v41 = *(v38 + 64);
        v39 = v38 + 64;
        v40 = v41;
        v42 = *(v39 + 23);
        if (v42 >= 0)
        {
          v40 = v39;
        }

        v43 = *(v39 + 8);
        if (v42 >= 0)
        {
          v43 = v42;
        }

        v79 = v43;
        a3 = v40;
      }
    }

    if (v34 <= v71)
    {
      v72 = (v32 - v33) >> 1;
      v44 = "exact";
      if (a7)
      {
        v44 = "prefix";
      }

      v64 = v44;
      v45 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3);
      v46 = v34;
      while (1)
      {
        v47 = *(*(a5 + 104) + 8 * v46);
        if (v46 == v45)
        {
          v48 = v72;
        }

        else
        {
          v48 = *(*(a5 + 104) + 8 * v46);
        }

        if (v70 != v69 && v46 != v45)
        {
          v49 = *(*(a5 + 8) + 40 * v46 + 30);
        }

        v75 = v46;
        if (a4 || (v74 - *(*(a5 + 80) + 8 * v46)) >= 2)
        {
          break;
        }

        v45 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3);
LABEL_79:
        if (++v46 > v45)
        {
          goto LABEL_80;
        }
      }

      v50 = v72 - v48;
      v84 = &unk_2A1F74930;
      v88 = 0;
      v86 = 0;
      v87 = 0;
      v85 = 0;
      v51 = *(v67 + 32) != 1 || v72 == v48;
      v52 = v67;
      if (!v51)
      {
        sub_299373E34(&v85, v50);
        v53 = 0;
        do
        {
          LOWORD(__src) = *(v89 + v48 + v53);
          sub_299259B8C(&v84, v53++, &__src, 1uLL, 1, 0, 0xFFFFFF, -1, 0.0, 255);
        }

        while (v72 - v48 != v53);
        sub_299374D28(&v85, v86, *(v67 + 8), *(v67 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v67 + 16) - *(v67 + 8)) >> 3));
        v88 = 1;
        v52 = &v84;
        v50 = v72 - v48;
      }

      *(a10 + 184) = v52;
      v54 = (v89 + 2 * v48);
      if (v89)
      {
        v55 = v50 + a4;
      }

      else
      {
        v55 = 0;
      }

      v83 = sub_299322FD4(v54, v55, a6);
      v81 = v55;
      v82 = v54;
      v56 = CFStringCreateWithCharacters(0, v54, v55);
      v57 = sub_2993652F8(3u);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = v64;
        v95 = 2112;
        v96 = v56;
        v97 = 1024;
        v98 = v19 & 0xFFFFFFDF | v16;
        _os_log_debug_impl(&dword_29918C000, v57, OS_LOG_TYPE_DEBUG, "[MJ::makeMecabSingleWordCandidates] Searching single-word %s candidates for [%@] with option: 0x%.6X", buf, 0x1Cu);
      }

      if (sub_2993E4FF0(*a1, v82, v81, v83, 0, v19 & 0xFFFFFFDF | v16))
      {
        if (v83)
        {
          v78 = v83[2];
        }

        else
        {
          v78 = 0;
        }

        v59 = (*(**a1 + 248))();
        if (v59)
        {
          if ((*a1[57] & 0x4000000) != 0)
          {
            v60 = v81;
          }

          else
          {
            v60 = v79;
          }

          if ((*a1[57] & 0x4000000) != 0)
          {
            v61 = v82;
          }

          else
          {
            v61 = a3;
          }

          sub_2992EF484(a1, v59, v61, v60, v78, a8, 0);
        }

        v58 = 0;
        if (v56)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v58 = 4;
        if (v56)
        {
LABEL_77:
          CFRelease(v56);
        }
      }

      sub_29926C200(&v83);
      v84 = &unk_2A1F74930;
      *buf = &v85;
      sub_299259FC8(buf);
      v45 = 0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3);
      v46 = v75;
      if ((v58 | 4) != 4)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

LABEL_80:
    *(a10 + 184) = v67;
    if (v89)
    {
      v90 = v89;
      operator delete(v89);
    }
  }

  v62 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2992F1AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v68 + 16))(v68);
  sub_299219AB4(&a66, 0);
  sub_29926C200(&a67);
  a68 = a30;
  STACK[0x280] = a40;
  sub_299259FC8(&STACK[0x280]);
  v70 = STACK[0x200];
  if (STACK[0x200])
  {
    STACK[0x208] = v70;
    operator delete(v70);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992F1CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, unsigned __int8 a8, char a9)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a5 >= 2)
  {
    v15 = *a1;
    v16 = *a1[57];
    v17 = (*(**a1 + 232))(*a1);
    v18 = sub_299322F38(v16, v17);
    result = sub_2993E4FF0(v15, a4, a5, a6, 0, v18);
    if (result)
    {
      v19 = 304;
      if (a9)
      {
        v19 = 306;
      }

      if (a6)
      {
        v23 = a6[2];
      }

      else
      {
        v23 = 0;
      }

      v22 = *(a1[55] + v19);
      v20 = (*(**a1 + 248))();
      if (v20)
      {
        sub_2992EF484(a1, v20, a4, a5, v23, a8, 0);
      }

      result = 1;
    }
  }

  else
  {
    result = 0;
  }

  v21 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992F2364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  MEMORY[0x29C29BFB0](v27, 0x10F3C4074548AAFLL);
  v30 = *(v28 - 128);
  if (v30)
  {
    *(v28 - 120) = v30;
    operator delete(v30);
  }

  if (a27)
  {
    (*(*a27 + 16))(a27);
  }

  _Unwind_Resume(a1);
}

void sub_2992F2458(uint64_t a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = sub_2993652F8(3u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a3 + 48);
    for (i = *(a3 + 56); v8 != i; v8 += 8)
    {
      v10 = sub_2993652F8(3u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = (*(**v8 + 24))();
        v12 = (*(**v8 + 112))();
        *buf = 138412546;
        v22 = v11;
        v23 = 1024;
        v24 = v12;
        _os_log_debug_impl(&dword_29918C000, v10, OS_LOG_TYPE_DEBUG, "Partial phrase: %@ (weight: %d)", buf, 0x12u);
      }
    }
  }

  v13 = *(a3 + 48);
  v14 = *(a3 + 56);
  if (v13 == v14 || !*v13)
  {
    v15 = 4000;
  }

  else
  {
    v15 = (*(**v13 + 112))(*v13) + 4000;
    v13 = *(a3 + 48);
    v14 = *(a3 + 56);
  }

  for (; v13 != v14; ++v13)
  {
    if ((*(**v13 + 112))() < v15)
    {
      v16 = *v13;
      ++*a4;
      (*(*v16 + 480))(v16);
      (*(**v13 + 528))(*v13, 3, "Adding a partial phrase candidate", 1);
      v20[0] = &unk_2A1F65308;
      v20[3] = v20;
      v17 = sub_2992AB710(a2, v13, 1, 0, v20);
      sub_29921F128(v20);
      if ((v17 & 1) == 0)
      {
        v18 = sub_2993652F8(3u);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_29918C000, v18, OS_LOG_TYPE_DEBUG, "∟ rejected", buf, 2u);
        }
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_2992F2768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29921F128(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992F2784(uint64_t a1)
{
  *a1 = &unk_2A1F68A78;
  *(a1 + 8) = 0;
  sub_299213890(a1 + 16);
  sub_29919C3A8((a1 + 360));
  sub_29918D970((a1 + 368));
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  return a1;
}

void sub_2992F27DC(_Unwind_Exception *a1)
{
  sub_29919C3B0(v1 + 360);
  sub_299213950(v1 + 16);
  _Unwind_Resume(a1);
}

__CFArray *sub_2992F2800(int a1, uint64_t a2, uint64_t a3, const __CFString *a4)
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  v7 = sub_2992F28F4(a1);
  if (!v7)
  {
    return 0;
  }

  if (a1 == 5 && a4)
  {
    sub_2992DC2CC(a4);
  }

  return sub_29931DE54(v7);
}

void sub_2992F28DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void **sub_2992F28F4(int a1)
{
  if ((atomic_load_explicit(&qword_2A1460E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460E10))
  {
    *&qword_2A1460E28 = 0u;
    xmmword_2A1460E18 = 0u;
    dword_2A1460E38 = 1065353216;
    __cxa_atexit(sub_2992F3080, &xmmword_2A1460E18, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460E10);
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v2 = sub_299277300(a1);
  v3 = 24938;
  if (((1 << v2) & 0x2E) != 0)
  {
    v3 = 26746;
  }

  else
  {
    v11 = 0;
    if (((1 << v2) & 0x50) != 0)
    {
      return v11;
    }
  }

  HIBYTE(v19) = 2;
  LOWORD(__p[0]) = v3;
  BYTE2(__p[0]) = 0;
  if (sub_2992F313C(__p))
  {
    goto LABEL_30;
  }

  if (v19 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  cf = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v4, 0x8000100u);
  v5 = sub_2991C0548(&xmmword_2A1460E18, __p);
  v6 = v5;
  v7 = *(&xmmword_2A1460E18 + 1);
  if (!*(&xmmword_2A1460E18 + 1))
  {
    goto LABEL_27;
  }

  v8 = vcnt_s8(*(&xmmword_2A1460E18 + 8));
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *(&xmmword_2A1460E18 + 1))
    {
      v10 = v5 % *(&xmmword_2A1460E18 + 1);
    }
  }

  else
  {
    v10 = (*(&xmmword_2A1460E18 + 1) - 1) & v5;
  }

  v12 = *(xmmword_2A1460E18 + 8 * v10);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_27:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= v7)
      {
        v14 %= v7;
      }
    }

    else
    {
      v14 &= v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_27;
    }

LABEL_26:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_27;
    }
  }

  if (!sub_2991C09F4(&xmmword_2A1460E18, v13 + 2, __p))
  {
    goto LABEL_26;
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_30:
  v15 = sub_2992F313C(__p);
  if (!v15)
  {
    sub_2991D6EC4("unordered_map::at: key not found");
  }

  v11 = v15 + 5;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}