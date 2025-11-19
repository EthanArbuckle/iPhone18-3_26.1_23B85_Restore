void sub_29707E2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    v29 = a1;
    operator delete(__p);
    a1 = v29;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, size_t a8)
{
  v8 = a8;
  v12 = HIDWORD(a5);
  v13 = (a4 >> 32) - (a6 + a8);
  if ((a4 & 7u) <= 1)
  {
    if ((a4 & 7) != 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if ((a4 & 7) == 3)
  {
LABEL_5:
    v14 = (a4 >> 32) - (a6 + a8);
    v13 = 0;
    goto LABEL_7;
  }

  v14 = v13 >> 1;
  v13 -= v13 >> 1;
LABEL_7:
  v15 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v14, SHIDWORD(a5));
  v16 = v15;
  v17 = a7 - a1;
  v18 = *(v15 + 32);
  if (v18)
  {
    v19 = *v18;
    v20 = v18[1];
    if (*v18 - v20 >= v17)
    {
      v21 = a7 - a1;
    }

    else
    {
      v21 = *v18 - v20;
    }

    v22 = v20 + v17;
    v18[1] = v22;
    if (v19 <= v20 || v21 == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v21 = a7 - a1;
  }

  v24 = *(v15 + 16);
  do
  {
    v26 = *(v16 + 8) - v24;
    if (v26 < v21 + 1)
    {
      (*(v16 + 24))(v16, v21 + 2);
      v24 = *(v16 + 16);
      v26 = *(v16 + 8) - v24;
    }

    if (v26 >= v21)
    {
      v27 = v21;
    }

    else
    {
      v27 = v26;
    }

    if (v27)
    {
      memmove((*v16 + v24), a1, v27);
      v24 = *(v16 + 16);
    }

    v24 += v27;
    *(v16 + 16) = v24;
    a1 += v27;
    v25 = v21 > v26;
    v21 -= v27;
  }

  while (v25);
  v18 = *(v16 + 32);
  if (!v18)
  {
    goto LABEL_40;
  }

  v19 = *v18;
  v22 = v18[1];
LABEL_30:
  v28 = v19 - v22;
  if (v19 - v22 >= v8)
  {
    v28 = v8;
  }

  v25 = v19 > v22;
  v29 = v22 + v8;
  v18[1] = v29;
  if (!v25 || v28 == 0)
  {
    v31 = a2 - a7;
    goto LABEL_49;
  }

  v24 = *(v16 + 16);
  v8 = v28;
  do
  {
LABEL_40:
    v32 = *(v16 + 8) - v24;
    if (v32 < v8 + 1)
    {
      (*(v16 + 24))(v16, v8 + 2);
      v24 = *(v16 + 16);
      v32 = *(v16 + 8) - v24;
    }

    if (v32 >= v8)
    {
      v33 = v8;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      memset((*v16 + v24), 48, v33);
      v24 = *(v16 + 16);
    }

    v24 += v33;
    *(v16 + 16) = v24;
    v25 = v8 > v32;
    v8 -= v33;
  }

  while (v25);
  v18 = *(v16 + 32);
  v31 = a2 - a7;
  if (!v18)
  {
    goto LABEL_61;
  }

  v19 = *v18;
  v29 = v18[1];
LABEL_49:
  v34 = v19 - v29;
  if (v19 - v29 >= v31)
  {
    v34 = v31;
  }

  v18[1] = v29 + v31;
  if (v19 > v29 && v34 != 0)
  {
    v24 = *(v16 + 16);
    v31 = v34;
    do
    {
LABEL_61:
      v37 = *(v16 + 8) - v24;
      if (v37 < v31 + 1)
      {
        (*(v16 + 24))(v16, v31 + 2);
        v24 = *(v16 + 16);
        v37 = *(v16 + 8) - v24;
      }

      if (v37 >= v31)
      {
        v38 = v31;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        memmove((*v16 + v24), a7, v38);
        v24 = *(v16 + 16);
      }

      v24 += v38;
      *(v16 + 16) = v24;
      a7 += v38;
      v25 = v31 > v37;
      v31 -= v38;
    }

    while (v25);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v16, v13, v12);
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 5), 112, 3uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C26C020](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v83[130] = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    memset(v83, 170, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v81 = v10;
    v82 = 0;
    if (v10 < 1075)
    {
      v83[0] = v10 + 316;
      if ((v10 + 316) < 0x401)
      {
        v11 = &v83[2];
      }

      else
      {
        v11 = operator new(v10 + 316);
      }
    }

    else
    {
      v81 = 1074;
      v82 = v10 - 1074;
      v83[0] = 1390;
      v11 = operator new(0x56EuLL);
    }

    v83[1] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v12;
    *v79 = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,double>(&v81, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v8, &v78, v9);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v13 = *(&v78 + 1);
    v14 = v79[1];
    if (*(&v78 + 1) == v79[1])
    {
      ++v79[1];
      *v14 = 46;
      v15 = v79[0];
      v16 = v79[1] - 1;
      if (v79[0] != v79[1] - 1)
      {
        if (v79[0] + 1 == v16)
        {
          v18 = *v79[0];
          *v79[0] = *(v79[0] + 1);
          v15[1] = v18;
        }

        else
        {
          v17 = *(v79[1] - 1);
          memmove(v79[0] + 1, v79[0], v16 - v79[0]);
          *v15 = v17;
        }
      }

      v13 = v79[0];
      *(&v78 + 1) = v79[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v37 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x29C26BF30](&v80);
            v38 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v38, &v80);
            }

            else
            {
              std::locale::locale(v38, &v80);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v80);
          }

          std::locale::locale(&v77, (a1 + 32));
          v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v81, &v78, &v77, v5, a3);
          std::locale::~locale(&v77);
          goto LABEL_74;
        }

        v23 = v79[1];
        v24 = v83[1];
        v25 = v79[1] - v83[1];
        v26 = v82;
        if (v79[1] + v82 - v83[1] < v5 >> 32)
        {
          v27 = *a1;
          if ((v5 & 7) == 4)
          {
            if (v83[1] != v78)
            {
              v28 = *v83[1];
              v29 = *(v27 + 32);
              if (!v29 || (v31 = *v29, v30 = v29[1], v29[1] = v30 + 1, v30 < v31))
              {
                v32 = *v27;
                v33 = *(v27 + 16);
                *(v27 + 16) = v33 + 1;
                *(v32 + v33) = v28;
                if (*(v27 + 16) == *(v27 + 8))
                {
                  v34 = v27;
                  (*(v27 + 24))(v27, 2);
                  v27 = v34;
                }
              }

              ++v24;
              v23 = v79[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v26)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v82)
            {
LABEL_39:
              v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
              v40 = v36;
LABEL_74:
              if (v83[0] >= 0x401uLL)
              {
                operator delete(v83[1]);
              }

              v56 = *MEMORY[0x29EDCA608];
              return v40;
            }
          }

          v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v79[0], v26);
          goto LABEL_70;
        }

        if (v82)
        {
          v39 = v79[0];
          if (v79[0] != v79[1])
          {
            v40 = *a1;
            v41 = v79[0] - v83[1];
            v42 = *(*a1 + 32);
            if (v42)
            {
              v43 = *v42;
              v44 = v42[1];
              if (*v42 - v44 >= v41)
              {
                v45 = v79[0] - v83[1];
              }

              else
              {
                v45 = (*v42 - v44);
              }

              v46 = &v41[v44];
              v42[1] = &v41[v44];
              if (v43 <= v44 || !v45)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v45 = v79[0] - v83[1];
            }

            v62 = *(v40 + 16);
            do
            {
              v63 = *(v40 + 8) - v62;
              if (v63 < (v45 + 1))
              {
                (*(v40 + 24))(v40, v45 + 2);
                v62 = *(v40 + 16);
                v63 = *(v40 + 8) - v62;
              }

              if (v63 >= v45)
              {
                v64 = v45;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                memmove((*v40 + v62), v24, v64);
                v62 = *(v40 + 16);
              }

              v62 += v64;
              *(v40 + 16) = v62;
              v24 += v64;
              v53 = v45 > v63;
              v45 -= v64;
            }

            while (v53);
            v42 = *(v40 + 32);
            if (!v42)
            {
              goto LABEL_115;
            }

            v43 = *v42;
            v46 = v42[1];
LABEL_108:
            v65 = &v46[v26];
            v42[1] = &v46[v26];
            v66 = v43 >= v46;
            v67 = v43 - v46;
            if (v67 == 0 || !v66)
            {
              v70 = v23 - v39;
              goto LABEL_124;
            }

            if (v67 < v26)
            {
              v26 = v67;
            }

            v62 = *(v40 + 16);
            do
            {
LABEL_115:
              v68 = *(v40 + 8) - v62;
              if (v68 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v62 = *(v40 + 16);
                v68 = *(v40 + 8) - v62;
              }

              if (v68 >= v26)
              {
                v69 = v26;
              }

              else
              {
                v69 = v68;
              }

              if (v69)
              {
                memset((*v40 + v62), 48, v69);
                v62 = *(v40 + 16);
              }

              v62 += v69;
              *(v40 + 16) = v62;
              v53 = v26 > v68;
              v26 -= v69;
            }

            while (v53);
            v42 = *(v40 + 32);
            v70 = v23 - v39;
            if (!v42)
            {
              do
              {
LABEL_133:
                v73 = *(v40 + 8) - v62;
                if (v73 < v70 + 1)
                {
                  (*(v40 + 24))(v40, v70 + 2);
                  v62 = *(v40 + 16);
                  v73 = *(v40 + 8) - v62;
                }

                if (v73 >= v70)
                {
                  v74 = v70;
                }

                else
                {
                  v74 = v73;
                }

                if (v74)
                {
                  memmove((*v40 + v62), v39, v74);
                  v62 = *(v40 + 16);
                }

                v62 += v74;
                *(v40 + 16) = v62;
                v39 += v74;
                v53 = v70 > v73;
                v70 -= v74;
              }

              while (v53);
              goto LABEL_74;
            }

            v43 = *v42;
            v65 = v42[1];
LABEL_124:
            v71 = v43 - v65;
            if (v43 - v65 >= v70)
            {
              v71 = v70;
            }

            v42[1] = &v65[v70];
            if (v43 <= v65 || v71 == 0)
            {
              goto LABEL_74;
            }

            v62 = *(v40 + 16);
            v70 = v71;
            goto LABEL_133;
          }
        }

        v40 = *a1;
        v47 = *(*a1 + 32);
        if (!v47 || ((v48 = *v47, v49 = v47[1], *v47 - v49 >= v25) ? (v50 = v79[1] - v83[1]) : (v50 = (*v47 - v49)), (v51 = &v25[v49], v47[1] = &v25[v49], v48 > v49) && (v25 = v50) != 0))
        {
          v52 = *(v40 + 16);
          do
          {
            v54 = *(v40 + 8) - v52;
            if (v54 < (v25 + 1))
            {
              (*(v40 + 24))(v40, v25 + 2);
              v52 = *(v40 + 16);
              v54 = *(v40 + 8) - v52;
            }

            if (v54 >= v25)
            {
              v55 = v25;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              memmove((*v40 + v52), v24, v55);
              v52 = *(v40 + 16);
            }

            v52 += v55;
            *(v40 + 16) = v52;
            v24 += v55;
            v53 = v25 > v54;
            v25 -= v55;
          }

          while (v53);
          v47 = *(v40 + 32);
          if (!v47)
          {
            do
            {
LABEL_88:
              v60 = *(v40 + 8) - v52;
              if (v60 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v52 = *(v40 + 16);
                v60 = *(v40 + 8) - v52;
              }

              if (v60 >= v26)
              {
                v61 = v26;
              }

              else
              {
                v61 = v60;
              }

              if (v61)
              {
                memset((*v40 + v52), 48, v61);
                v52 = *(v40 + 16);
              }

              v52 += v61;
              *(v40 + 16) = v52;
              v53 = v26 > v60;
              v26 -= v61;
            }

            while (v53);
            goto LABEL_74;
          }

          v48 = *v47;
          v51 = v47[1];
        }

        v58 = v48 - v51;
        if (v48 - v51 >= v26)
        {
          v58 = v26;
        }

        v47[1] = &v51[v26];
        if (v48 <= v51 || v58 == 0)
        {
          goto LABEL_74;
        }

        v52 = *(v40 + 16);
        v26 = v58;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

    if (a3 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v19 = 6;
    }

    if (v79[0] == v79[1])
    {
      v20 = v78 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v79[0] + ~v13;
    if (v22 < v21)
    {
      v82 += v21 - v22;
    }

    goto LABEL_29;
  }

  v75 = *a1;
  v76 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v75, a2, a3, a4 < 0.0, 0);
}

void sub_29707EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<double,double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 6), 112, 4uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x29C26BFC0](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(uint64_t a1, uint64_t a2, void *a3, std::locale *this, uint64_t a5, unint64_t a6)
{
  memset(__p, 170, 24);
  v143 = std::locale::use_facet(this, MEMORY[0x29EDC93F8]);
  (v143->__vftable[1].__on_zero_shared)(__p);
  v9 = a3[2];
  v10 = *a3;
  if (v9 >= a3[1])
  {
    v9 = a3[1];
  }

  v11 = v9 - v10;
  v144 = a3;
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v12 = __p[1];
    if (!__p[1])
    {
      goto LABEL_59;
    }

    v15 = __p[0];
    v14 = *__p[0];
    v139 = v9 - v10;
    if ((v9 - v10) <= v14)
    {
      *__p[0] = 0;
      __p[1] = 0;
      v11 = v9 - v10;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v16 = *__p[0];
    v13 = __p[0];
  }

  else
  {
    if (!HIBYTE(__p[2]))
    {
      goto LABEL_59;
    }

    if (v11 <= SLOBYTE(__p[0]))
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(__p[2]) = 0;
      goto LABEL_59;
    }

    v137 = a5;
    v138 = a1;
    v139 = v9 - v10;
    v13 = __p[0];
    v12 = __p[1];
    v14 = SLOBYTE(__p[0]);
    v15 = __p;
    v16 = __p[0];
  }

  v146 = 0uLL;
  v147 = 0;
  v17 = &v12[v13];
  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p + SHIBYTE(__p[2]);
  }

  else
  {
    v18 = v17;
  }

  v19 = v139 - v14;
  if (v139 <= v14)
  {
    v37 = 0;
    v36 = v16 + v19;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    goto LABEL_56;
  }

  v20 = (v18 - 1);
  do
  {
    while (1)
    {
      v21 = HIBYTE(v147);
      if ((SHIBYTE(v147) & 0x80000000) == 0)
      {
        break;
      }

      v23 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (*(&v146 + 1) != v23)
      {
        v23 = *(&v146 + 1);
        v29 = v146;
        goto LABEL_40;
      }

      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v146;
      if (v23 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_22;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
      v28 = operator new(v26);
      v29 = v28;
      if (v23)
      {
        memmove(v28, v22, v23);
      }

      if (!v27)
      {
        operator delete(v22);
      }

      *&v146 = v29;
      v147 = v26 | 0x8000000000000000;
LABEL_40:
      *(&v146 + 1) = v23 + 1;
      v31 = &v29[v23];
      *v31 = v16;
      v31[1] = 0;
      if (v15 != v20)
      {
        goto LABEL_41;
      }

LABEL_15:
      v16 = *v15;
      v19 -= *v15;
      if (v19 <= 0)
      {
        goto LABEL_51;
      }
    }

    if (HIBYTE(v147) == 22)
    {
      v22 = &v146;
      v23 = 22;
LABEL_22:
      if (v23 + 1 > 2 * v23)
      {
        v24 = v23 + 1;
      }

      else
      {
        v24 = 2 * v23;
      }

      if ((v24 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v24 | 7) + 1;
      }

      if (v24 >= 0x17)
      {
        v26 = v25;
      }

      else
      {
        v26 = 23;
      }

      v27 = v23 == 22;
      goto LABEL_32;
    }

    HIBYTE(v147) = (HIBYTE(v147) + 1) & 0x7F;
    v30 = &v146 + v21;
    *v30 = v16;
    v30[1] = 0;
    if (v15 == v20)
    {
      goto LABEL_15;
    }

LABEL_41:
    v32 = (v15 + 1);
    v33 = (v15 + 1);
    do
    {
      v34 = *v33;
      v33 = (v33 + 1);
      v16 = v34;
      if (v34)
      {
        v35 = 1;
      }

      else
      {
        v35 = v32 == v20;
      }

      v32 = v33;
    }

    while (!v35);
    v15 = (v33 - 1);
    v19 -= v16;
  }

  while (v19 > 0);
LABEL_51:
  v36 = v16 + v19;
  if (SHIBYTE(v147) < 0)
  {
    v38 = (v147 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (*(&v146 + 1) == v38)
    {
      if ((v147 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      __src = v146;
      v128 = 0x7FFFFFFFFFFFFFF7;
      if (v38 >= 0x3FFFFFFFFFFFFFF3)
      {
        v131 = 0;
      }

      else
      {
LABEL_205:
        if (v38 + 1 > 2 * v38)
        {
          v129 = v38 + 1;
        }

        else
        {
          v129 = 2 * v38;
        }

        if ((v129 | 7) == 0x17)
        {
          v130 = 25;
        }

        else
        {
          v130 = (v129 | 7) + 1;
        }

        if (v129 >= 0x17)
        {
          v128 = v130;
        }

        else
        {
          v128 = 23;
        }

        v131 = v38 == 22;
      }

      v132 = v128;
      v133 = operator new(v128);
      v134 = v133;
      if (v38)
      {
        memmove(v133, __src, v38);
      }

      if (!v131)
      {
        operator delete(__src);
      }

      *&v146 = v134;
      v147 = v132 | 0x8000000000000000;
    }

    else
    {
      v38 = *(&v146 + 1);
      v134 = v146;
    }

    *(&v146 + 1) = v38 + 1;
    v135 = &v134[v38];
    *v135 = v36;
    v135[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v37 = HIBYTE(v147);
    a3 = v144;
    a1 = v138;
    v11 = v139;
    a5 = v137;
    if (HIBYTE(v147) == 22)
    {
      __src = &v146;
      v38 = 22;
      goto LABEL_205;
    }

LABEL_56:
    HIBYTE(v147) = (v37 + 1) & 0x7F;
    v39 = &v146 + v37;
    *v39 = v36;
    v39[1] = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_57:
      operator delete(__p[0]);
    }
  }

  *__p = v146;
  __p[2] = v147;
LABEL_59:
  v40 = HIDWORD(a6);
  v41 = *(a2 + 16);
  v42 = HIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    v42 = __p[1];
  }

  v43 = &v42[a3[3] - v41 + *(a2 + 4) - (v42 != 0)];
  v44 = a5 & 7;
  v45 = (a5 >> 32) - v43;
  if (a5 >> 32 <= v43)
  {
    v142 = 0;
    v45 = 0;
    LOBYTE(v46) = v40;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  if (v44 == 4)
  {
    LOBYTE(v46) = 48;
  }

  else
  {
    v46 = HIDWORD(a6);
  }

  if (v44 == 4)
  {
    v47 = 3;
  }

  else
  {
    v47 = v44;
  }

  if (v47 > 1)
  {
    if (v47 != 3)
    {
      v142 = v45 - (v45 >> 1);
      v45 >>= 1;
      if (v44 != 4)
      {
        goto LABEL_83;
      }

      goto LABEL_78;
    }

    goto LABEL_75;
  }

  if (!v47)
  {
LABEL_75:
    v142 = 0;
    if (v44 == 4)
    {
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v142 = v45;
  v45 = 0;
  if (v44 != 4)
  {
    goto LABEL_83;
  }

LABEL_78:
  if (v10 != v41)
  {
    v48 = *v41;
    v49 = *(a1 + 32);
    if (!v49 || (v51 = *v49, v50 = v49[1], v49[1] = v50 + 1, v50 < v51))
    {
      v52 = *a1;
      v53 = *(a1 + 16);
      *(a1 + 16) = v53 + 1;
      *(v52 + v53) = v48;
      if (*(a1 + 16) == *(a1 + 8))
      {
        v54 = v45;
        (*(a1 + 24))(a1, 2);
        v45 = v54;
      }
    }
  }

LABEL_83:
  v140 = v40 & 0xFFFFFF00 | v46;
  v55 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v45, v140);
  v56 = v55;
  if (v44 != 4)
  {
    v57 = *(a2 + 16);
    if (v10 != v57)
    {
      v58 = *v57;
      v59 = *(v55 + 32);
      if (!v59 || (v61 = *v59, v60 = v59[1], v59[1] = v60 + 1, v60 < v61))
      {
        v62 = *v55;
        v63 = *(v55 + 16);
        *(v55 + 16) = v63 + 1;
        *(v62 + v63) = v58;
        if (*(v55 + 16) == *(v55 + 8))
        {
          (*(v55 + 24))(v55, 2);
        }
      }
    }
  }

  v64 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v64 = __p[1];
    if (!__p[1])
    {
      goto LABEL_120;
    }

    v65 = __p[0];
LABEL_94:
    v66 = v64 + v65;
    v67 = (v143->__vftable[1].~facet_0)(v143);
    v68 = v65 + 1;
    while (1)
    {
      v70 = v66 - 1;
      v69 = *(v66 - 1);
      v71 = *(v56 + 32);
      if (v71)
      {
        v73 = *v71;
        v72 = v71[1];
        if (*v71 - v72 >= v69)
        {
          v74 = *(v66 - 1);
        }

        else
        {
          v74 = *v71 - v72;
        }

        v71[1] = v72 + v69;
        if (v73 <= v72 || v74 == 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v74 = *(v66 - 1);
      }

      v81 = *(v56 + 16);
      v82 = v10;
      do
      {
        v84 = *(v56 + 8) - v81;
        if (v84 < v74 + 1)
        {
          (*(v56 + 24))(v56, v74 + 2);
          v81 = *(v56 + 16);
          v84 = *(v56 + 8) - v81;
        }

        if (v84 >= v74)
        {
          v85 = v74;
        }

        else
        {
          v85 = v84;
        }

        if (v85)
        {
          memmove((*v56 + v81), v82, v85);
          v81 = *(v56 + 16);
        }

        v81 += v85;
        *(v56 + 16) = v81;
        v82 += v85;
        v83 = v74 > v84;
        v74 -= v85;
      }

      while (v83);
LABEL_104:
      if (v66 == v68)
      {
        goto LABEL_126;
      }

      v10 += *(v66 - 1);
      v76 = *(v56 + 32);
      if (v76)
      {
        v78 = *v76;
        v77 = v76[1];
        v76[1] = v77 + 1;
        --v66;
        if (v77 >= v78)
        {
          continue;
        }
      }

      v79 = *v56;
      v80 = *(v56 + 16);
      *(v56 + 16) = v80 + 1;
      *(v79 + v80) = v67;
      v66 = v70;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
        v66 = v70;
      }
    }
  }

  if (HIBYTE(__p[2]))
  {
    v65 = __p;
    goto LABEL_94;
  }

LABEL_120:
  v86 = *(v56 + 32);
  if (v86)
  {
    v88 = *v86;
    v87 = v86[1];
    if (*v86 - v87 >= v11)
    {
      v89 = v11;
    }

    else
    {
      v89 = *v86 - v87;
    }

    v86[1] = v87 + v11;
    if (v88 <= v87 || !v89)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v89 = v11;
  }

  v125 = *(v56 + 16);
  do
  {
    v126 = *(v56 + 8) - v125;
    if (v126 < v89 + 1)
    {
      (*(v56 + 24))(v56, v89 + 2);
      v125 = *(v56 + 16);
      v126 = *(v56 + 8) - v125;
    }

    if (v126 >= v89)
    {
      v127 = v89;
    }

    else
    {
      v127 = v126;
    }

    if (v127)
    {
      memmove((*v56 + v125), v10, v127);
      v125 = *(v56 + 16);
    }

    v125 += v127;
    *(v56 + 16) = v125;
    v10 += v127;
    v83 = v89 > v126;
    v89 -= v127;
  }

  while (v83);
LABEL_126:
  if (v144[1] != v144[3])
  {
    v90 = (v143->__vftable[1].~facet)(v143);
    v91 = *(v56 + 32);
    if (!v91 || (v93 = *v91, v92 = v91[1], v91[1] = v92 + 1, v92 < v93))
    {
      v94 = *v56;
      v95 = *(v56 + 16);
      *(v56 + 16) = v95 + 1;
      *(v94 + v95) = v90;
      if (*(v56 + 16) == *(v56 + 8))
      {
        (*(v56 + 24))(v56, 2);
      }
    }

    v96 = v144[1];
    v97 = (v96 + 1);
    v98 = v144[2] - (v96 + 1);
    v99 = *(v56 + 32);
    if (v99)
    {
      v100 = *v99;
      v101 = v99[1];
      if (*v99 - v101 >= v98)
      {
        v102 = v98;
      }

      else
      {
        v102 = *v99 - v101;
      }

      v103 = v101 + v98;
      v99[1] = v103;
      if (v100 <= v101 || !v102)
      {
        v104 = *(a2 + 4);
        goto LABEL_151;
      }
    }

    else
    {
      v102 = v144[2] - (v96 + 1);
    }

    v105 = *(v56 + 16);
    do
    {
      v106 = *(v56 + 8) - v105;
      if (v106 < v102 + 1)
      {
        (*(v56 + 24))(v56, v102 + 2);
        v105 = *(v56 + 16);
        v106 = *(v56 + 8) - v105;
      }

      if (v106 >= v102)
      {
        v107 = v102;
      }

      else
      {
        v107 = v106;
      }

      if (v107)
      {
        memmove((*v56 + v105), v97, v107);
        v105 = *(v56 + 16);
      }

      v105 += v107;
      *(v56 + 16) = v105;
      v97 += v107;
      v83 = v102 > v106;
      v102 -= v107;
    }

    while (v83);
    v99 = *(v56 + 32);
    v104 = *(a2 + 4);
    if (v99)
    {
      v100 = *v99;
      v103 = v99[1];
LABEL_151:
      v108 = v100 - v103;
      if (v100 - v103 >= v104)
      {
        v108 = v104;
      }

      v99[1] = v103 + v104;
      if (v100 > v103 && v108 != 0)
      {
        v105 = *(v56 + 16);
        v104 = v108;
        goto LABEL_184;
      }
    }

    else
    {
      do
      {
LABEL_184:
        v123 = *(v56 + 8) - v105;
        if (v123 < v104 + 1)
        {
          (*(v56 + 24))(v56, v104 + 2);
          v105 = *(v56 + 16);
          v123 = *(v56 + 8) - v105;
        }

        if (v123 >= v104)
        {
          v124 = v104;
        }

        else
        {
          v124 = v123;
        }

        if (v124)
        {
          memset((*v56 + v105), 48, v124);
          v105 = *(v56 + 16);
        }

        v105 += v124;
        *(v56 + 16) = v105;
        v83 = v104 > v123;
        v104 -= v124;
      }

      while (v83);
    }
  }

  v111 = v144[2];
  v110 = v144[3];
  if (v111 != v110)
  {
    v112 = v110 - v111;
    v113 = *(v56 + 32);
    if (v113)
    {
      v115 = *v113;
      v114 = v113[1];
      if (*v113 - v114 >= v112)
      {
        v116 = v112;
      }

      else
      {
        v116 = *v113 - v114;
      }

      v113[1] = v114 + v112;
      if (v115 > v114 && v116 != 0)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v116 = v112;
LABEL_172:
      v120 = *(v56 + 16);
      do
      {
        v121 = *(v56 + 8) - v120;
        if (v121 < v116 + 1)
        {
          (*(v56 + 24))(v56, v116 + 2);
          v120 = *(v56 + 16);
          v121 = *(v56 + 8) - v120;
        }

        if (v121 >= v116)
        {
          v122 = v116;
        }

        else
        {
          v122 = v121;
        }

        if (v122)
        {
          memmove((*v56 + v120), v111, v122);
          v120 = *(v56 + 16);
        }

        v120 += v122;
        *(v56 + 16) = v120;
        v111 += v122;
        v83 = v116 > v121;
        v116 -= v122;
      }

      while (v83);
    }
  }

  result = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v56, v142, v140);
  if (SHIBYTE(__p[2]) < 0)
  {
    v119 = result;
    operator delete(__p[0]);
    return v119;
  }

  return result;
}

void sub_29707FEF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    v29 = a1;
    operator delete(__p);
    a1 = v29;
  }

  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C26BFC0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v5 = a2;
  v83[130] = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2 >> 8;
    v9 = fabs(a4);
    memset(v83, 170, 0x410uLL);
    if (a3 == -1)
    {
      v10 = 1074;
    }

    else
    {
      v10 = a3;
    }

    v81 = v10;
    v82 = 0;
    if (v10 < 1075)
    {
      v83[0] = v10 + 316;
      if ((v10 + 316) < 0x401)
      {
        v11 = &v83[2];
      }

      else
      {
        v11 = operator new(v10 + 316);
      }
    }

    else
    {
      v81 = 1074;
      v82 = v10 - 1074;
      v83[0] = 1390;
      v11 = operator new(0x56EuLL);
    }

    v83[1] = v11;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v12;
    *v79 = v12;
    std::__formatter::__format_buffer[abi:ne200100]<double,long double>(&v81, a4 < 0.0, ((a3 & 0x80000000) == 0), (v5 >> 3) & 3, v8, &v78, v9);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_29;
    }

    v13 = *(&v78 + 1);
    v14 = v79[1];
    if (*(&v78 + 1) == v79[1])
    {
      ++v79[1];
      *v14 = 46;
      v15 = v79[0];
      v16 = v79[1] - 1;
      if (v79[0] != v79[1] - 1)
      {
        if (v79[0] + 1 == v16)
        {
          v18 = *v79[0];
          *v79[0] = *(v79[0] + 1);
          v15[1] = v18;
        }

        else
        {
          v17 = *(v79[1] - 1);
          memmove(v79[0] + 1, v79[0], v16 - v79[0]);
          *v15 = v17;
        }
      }

      v13 = v79[0];
      *(&v78 + 1) = v79[0]++;
      if ((BYTE1(v5) - 17) > 1u)
      {
LABEL_29:
        if ((v5 & 0x40) != 0)
        {
          v37 = *a1;
          if ((*(a1 + 40) & 1) == 0)
          {
            MEMORY[0x29C26BF30](&v80);
            v38 = (a1 + 32);
            if (*(a1 + 40) == 1)
            {
              std::locale::operator=(v38, &v80);
            }

            else
            {
              std::locale::locale(v38, &v80);
              *(a1 + 40) = 1;
            }

            std::locale::~locale(&v80);
          }

          std::locale::locale(&v77, (a1 + 32));
          v40 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v37, &v81, &v78, &v77, v5, a3);
          std::locale::~locale(&v77);
          goto LABEL_74;
        }

        v23 = v79[1];
        v24 = v83[1];
        v25 = v79[1] - v83[1];
        v26 = v82;
        if (v79[1] + v82 - v83[1] < v5 >> 32)
        {
          v27 = *a1;
          if ((v5 & 7) == 4)
          {
            if (v83[1] != v78)
            {
              v28 = *v83[1];
              v29 = *(v27 + 32);
              if (!v29 || (v31 = *v29, v30 = v29[1], v29[1] = v30 + 1, v30 < v31))
              {
                v32 = *v27;
                v33 = *(v27 + 16);
                *(v27 + 16) = v33 + 1;
                *(v32 + v33) = v28;
                if (*(v27 + 16) == *(v27 + 8))
                {
                  v34 = v27;
                  (*(v27 + 24))(v27, 2);
                  v27 = v34;
                }
              }

              ++v24;
              v23 = v79[1];
            }

            v5 = v5 & 0xFFFFFFFFFFFFFF00 | v5 & 0xB8 | 3;
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | 0x3000000000;
            if (!v26)
            {
              goto LABEL_39;
            }
          }

          else
          {
            v35 = a3 & 0xFFFFFF00FFFFFFFFLL | (BYTE4(a3) << 32);
            if (!v82)
            {
LABEL_39:
              v36 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23 - v24, v27, v5, v35, v25);
LABEL_70:
              v40 = v36;
LABEL_74:
              if (v83[0] >= 0x401uLL)
              {
                operator delete(v83[1]);
              }

              v56 = *MEMORY[0x29EDCA608];
              return v40;
            }
          }

          v36 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v24, v23, v27, v5, v35, v25, v79[0], v26);
          goto LABEL_70;
        }

        if (v82)
        {
          v39 = v79[0];
          if (v79[0] != v79[1])
          {
            v40 = *a1;
            v41 = v79[0] - v83[1];
            v42 = *(*a1 + 32);
            if (v42)
            {
              v43 = *v42;
              v44 = v42[1];
              if (*v42 - v44 >= v41)
              {
                v45 = v79[0] - v83[1];
              }

              else
              {
                v45 = (*v42 - v44);
              }

              v46 = &v41[v44];
              v42[1] = &v41[v44];
              if (v43 <= v44 || !v45)
              {
                goto LABEL_108;
              }
            }

            else
            {
              v45 = v79[0] - v83[1];
            }

            v62 = *(v40 + 16);
            do
            {
              v63 = *(v40 + 8) - v62;
              if (v63 < (v45 + 1))
              {
                (*(v40 + 24))(v40, v45 + 2);
                v62 = *(v40 + 16);
                v63 = *(v40 + 8) - v62;
              }

              if (v63 >= v45)
              {
                v64 = v45;
              }

              else
              {
                v64 = v63;
              }

              if (v64)
              {
                memmove((*v40 + v62), v24, v64);
                v62 = *(v40 + 16);
              }

              v62 += v64;
              *(v40 + 16) = v62;
              v24 += v64;
              v53 = v45 > v63;
              v45 -= v64;
            }

            while (v53);
            v42 = *(v40 + 32);
            if (!v42)
            {
              goto LABEL_115;
            }

            v43 = *v42;
            v46 = v42[1];
LABEL_108:
            v65 = &v46[v26];
            v42[1] = &v46[v26];
            v66 = v43 >= v46;
            v67 = v43 - v46;
            if (v67 == 0 || !v66)
            {
              v70 = v23 - v39;
              goto LABEL_124;
            }

            if (v67 < v26)
            {
              v26 = v67;
            }

            v62 = *(v40 + 16);
            do
            {
LABEL_115:
              v68 = *(v40 + 8) - v62;
              if (v68 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v62 = *(v40 + 16);
                v68 = *(v40 + 8) - v62;
              }

              if (v68 >= v26)
              {
                v69 = v26;
              }

              else
              {
                v69 = v68;
              }

              if (v69)
              {
                memset((*v40 + v62), 48, v69);
                v62 = *(v40 + 16);
              }

              v62 += v69;
              *(v40 + 16) = v62;
              v53 = v26 > v68;
              v26 -= v69;
            }

            while (v53);
            v42 = *(v40 + 32);
            v70 = v23 - v39;
            if (!v42)
            {
              do
              {
LABEL_133:
                v73 = *(v40 + 8) - v62;
                if (v73 < v70 + 1)
                {
                  (*(v40 + 24))(v40, v70 + 2);
                  v62 = *(v40 + 16);
                  v73 = *(v40 + 8) - v62;
                }

                if (v73 >= v70)
                {
                  v74 = v70;
                }

                else
                {
                  v74 = v73;
                }

                if (v74)
                {
                  memmove((*v40 + v62), v39, v74);
                  v62 = *(v40 + 16);
                }

                v62 += v74;
                *(v40 + 16) = v62;
                v39 += v74;
                v53 = v70 > v73;
                v70 -= v74;
              }

              while (v53);
              goto LABEL_74;
            }

            v43 = *v42;
            v65 = v42[1];
LABEL_124:
            v71 = v43 - v65;
            if (v43 - v65 >= v70)
            {
              v71 = v70;
            }

            v42[1] = &v65[v70];
            if (v43 <= v65 || v71 == 0)
            {
              goto LABEL_74;
            }

            v62 = *(v40 + 16);
            v70 = v71;
            goto LABEL_133;
          }
        }

        v40 = *a1;
        v47 = *(*a1 + 32);
        if (!v47 || ((v48 = *v47, v49 = v47[1], *v47 - v49 >= v25) ? (v50 = v79[1] - v83[1]) : (v50 = (*v47 - v49)), (v51 = &v25[v49], v47[1] = &v25[v49], v48 > v49) && (v25 = v50) != 0))
        {
          v52 = *(v40 + 16);
          do
          {
            v54 = *(v40 + 8) - v52;
            if (v54 < (v25 + 1))
            {
              (*(v40 + 24))(v40, v25 + 2);
              v52 = *(v40 + 16);
              v54 = *(v40 + 8) - v52;
            }

            if (v54 >= v25)
            {
              v55 = v25;
            }

            else
            {
              v55 = v54;
            }

            if (v55)
            {
              memmove((*v40 + v52), v24, v55);
              v52 = *(v40 + 16);
            }

            v52 += v55;
            *(v40 + 16) = v52;
            v24 += v55;
            v53 = v25 > v54;
            v25 -= v55;
          }

          while (v53);
          v47 = *(v40 + 32);
          if (!v47)
          {
            do
            {
LABEL_88:
              v60 = *(v40 + 8) - v52;
              if (v60 < v26 + 1)
              {
                (*(v40 + 24))(v40, v26 + 2);
                v52 = *(v40 + 16);
                v60 = *(v40 + 8) - v52;
              }

              if (v60 >= v26)
              {
                v61 = v26;
              }

              else
              {
                v61 = v60;
              }

              if (v61)
              {
                memset((*v40 + v52), 48, v61);
                v52 = *(v40 + 16);
              }

              v52 += v61;
              *(v40 + 16) = v52;
              v53 = v26 > v60;
              v26 -= v61;
            }

            while (v53);
            goto LABEL_74;
          }

          v48 = *v47;
          v51 = v47[1];
        }

        v58 = v48 - v51;
        if (v48 - v51 >= v26)
        {
          v58 = v26;
        }

        v47[1] = &v51[v26];
        if (v48 <= v51 || v58 == 0)
        {
          goto LABEL_74;
        }

        v52 = *(v40 + 16);
        v26 = v58;
        goto LABEL_88;
      }
    }

    else if ((BYTE1(v5) - 17) > 1u)
    {
      goto LABEL_29;
    }

    if (a3 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a3;
    }

    if ((a3 & 0x80000000) != 0)
    {
      v19 = 6;
    }

    if (v79[0] == v79[1])
    {
      v20 = v78 - v13;
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 + v19;
    v22 = v79[0] + ~v13;
    if (v22 < v21)
    {
      v82 += v21 - v22;
    }

    goto LABEL_29;
  }

  v75 = *a1;
  v76 = *MEMORY[0x29EDCA608];

  return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v75, a2, a3, a4 < 0.0, 0);
}

void sub_2970807E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
{
  if (a18 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__formatter::__format_buffer[abi:ne200100]<double,long double>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, char *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v8 = *(a1 + 2);
  if (a2)
  {
    v9 = 45;
  }

  else if (a4 == 2)
  {
    v9 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v9 = 32;
  }

  *v8++ = v9;
LABEL_8:
  if (a5 <= 14)
  {
    if (a5 > 11)
    {
      if (a5 == 12)
      {
        if (a3)
        {
          v24 = *a1;
        }

        else
        {
          v24 = 0xFFFFFFFFLL;
        }

        return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>(a1, v24, v8, a6);
      }

      else if (a5 == 13)
      {
        v10 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
        *(a6 + 24) = result;
        v12 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v12;
          v13 = result - v8 - 2;
          if (v13 < 4)
          {
LABEL_19:
            *(a6 + 16) = result;
          }

          else
          {
            if (v13 >= 6)
            {
              v13 = 6;
            }

            v14 = -v13;
            while (*(result + v14) != 101)
            {
              if (++v14 == -3)
              {
                goto LABEL_19;
              }
            }

            *(a6 + 16) = result + v14;
          }
        }

        else
        {
          *(a6 + 8) = result;
          *(a6 + 16) = v12;
        }
      }

      else
      {
        v30 = *a1;
        *a6 = v8;
        result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
        *(a6 + 24) = result;
        v31 = v8 + 1;
        if (v8[1] == 46)
        {
          *(a6 + 8) = v31;
          v32 = result - v8 - 2;
          if (v32 < 4)
          {
LABEL_68:
            v31 = result;
          }

          else
          {
            if (v32 >= 6)
            {
              v32 = 6;
            }

            v33 = -v32;
            while (*(result + v33) != 101)
            {
              if (++v33 == -3)
              {
                goto LABEL_68;
              }
            }

            v31 = (result + v33);
          }
        }

        else
        {
          *(a6 + 8) = result;
        }

        *(a6 + 16) = v31;
        *v31 = 69;
      }

      return result;
    }

    if (!a5)
    {
      if (a3)
      {
        v22 = *a1;
        a1[1] = 0;
        *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
        *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
        *a6 = v8;
        result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
        *(a6 + 24) = result;
        v18 = v8 + 1;
        if (v8 + 1 != result)
        {
          v19 = result - v18;
          if (result - v18 >= 4)
          {
            v23 = 6;
            if (v19 < 6)
            {
              v23 = result - v18;
            }

            v21 = -v23;
            while (*(result + v21) != 101)
            {
              if (++v21 == -3)
              {
                goto LABEL_57;
              }
            }

LABEL_89:
            v46 = result + v21;
            if (*v18 != 46)
            {
              v18 = result;
            }

            *(a6 + 8) = v18;
            *(a6 + 16) = v46;
            return result;
          }

          goto LABEL_57;
        }

        goto LABEL_72;
      }

      *a6 = v8;
      v36 = std::to_chars(v8, (*(a1 + 2) + *(a1 + 1)), a3, a7);
      v37 = v36;
      *(a6 + 24) = v36;
      v38 = v36 - v8;
      if (v36 - v8 < 4)
      {
LABEL_81:
        v40 = v36;
      }

      else
      {
        if (v38 >= 6)
        {
          v38 = 6;
        }

        v39 = -v38;
        while (*(v36 + v39) != 101)
        {
          if (++v39 == -3)
          {
            goto LABEL_81;
          }
        }

        v40 = v36 + v39;
      }

      *(a6 + 16) = v40;
      result = memchr(v8 + 1, 46, v40 - (v8 + 1));
      if (result)
      {
        v47 = result;
      }

      else
      {
        v47 = v40;
      }

      if (v47 == v40)
      {
        v47 = v37;
      }

      *(a6 + 8) = v47;
      return result;
    }

    if (a3)
    {
      v34 = *a1;
      *a6 = v8;
      v35 = (a6 + 24);
      if (v34 != -1)
      {
        result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 4);
LABEL_84:
        *v35 = result;
        v43 = v8[1];
        v42 = v8 + 1;
        if (v43 == 46)
        {
          v44 = result - 2;
          v45 = memchr((result - 6), 112, 4uLL);
          result = v42;
          if (v45)
          {
            v42 = v45;
          }

          else
          {
            v42 = v44;
          }
        }

        *(a6 + 8) = result;
        *(a6 + 16) = v42;
        return result;
      }
    }

    else
    {
      *a6 = v8;
      v35 = (a6 + 24);
      v41 = *(a1 + 2) + *(a1 + 1);
    }

    result = std::to_chars();
    goto LABEL_84;
  }

  if ((a5 - 15) < 2)
  {
    v15 = *a1;
    *a6 = v8;
    result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
    *(a6 + 16) = result;
    *(a6 + 24) = result;
    if (v15)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 0;
    }

    *(a6 + 8) = result - v16;
    return result;
  }

  if (a5 == 17)
  {
    v17 = *a1;
    a1[1] = 0;
    *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
    *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
    *a6 = v8;
    result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
    *(a6 + 24) = result;
    v18 = v8 + 1;
    if (v8 + 1 != result)
    {
      v19 = result - v18;
      if (result - v18 >= 4)
      {
        v20 = 6;
        if (v19 < 6)
        {
          v20 = result - v18;
        }

        v21 = -v20;
        while (*(result + v21) != 101)
        {
          if (++v21 == -3)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_89;
      }

LABEL_57:
      *(a6 + 16) = result;
      v28 = result;
      result = memchr(v18, 46, v19);
      if (result)
      {
        v29 = result;
      }

      else
      {
        v29 = v28;
      }

      *(a6 + 8) = v29;
      return result;
    }

LABEL_72:
    *(a6 + 8) = result;
    *(a6 + 16) = result;
    return result;
  }

  v25 = *a1;
  a1[1] = 0;
  *(a6 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a6 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *a6 = v8;
  result = MEMORY[0x29C26BFF0](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
  *(a6 + 24) = result;
  v18 = v8 + 1;
  if (v8 + 1 == result)
  {
    goto LABEL_72;
  }

  v19 = result - v18;
  if (result - v18 < 4)
  {
    goto LABEL_57;
  }

  v26 = 6;
  if (v19 < 6)
  {
    v26 = result - v18;
  }

  v27 = -v26;
  while (*(result + v27) != 101)
  {
    if (++v27 == -3)
    {
      goto LABEL_57;
    }
  }

  if (*v18 != 46)
  {
    v18 = result;
  }

  *(a6 + 8) = v18;
  *(a6 + 16) = result + v27;
  *(result + v27) = 69;
  return result;
}

uint64_t std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<double,long double>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 **a4@<X8>)
{
  v4 = a3;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  a4[2] = 0xAAAAAAAAAAAAAAAALL;
  *a4 = a3;
  if (a2 == -1)
  {
    result = std::to_chars();
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
LABEL_3:
      v8 = result - 2;
      result = memchr((result - 6), 112, 4uLL);
      if (result)
      {
        v9 = result;
      }

      else
      {
        v9 = v8;
      }

      a4[1] = v7;
      a4[2] = v9;
      v7 = v9;
      if (v9 == v4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    result = MEMORY[0x29C26BFF0](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
    a4[3] = result;
    v7 = v4 + 1;
    if (v4[1] == 46)
    {
      goto LABEL_3;
    }
  }

  a4[1] = result;
  a4[2] = v7;
  do
  {
LABEL_10:
    v10 = *v4;
    if ((v10 - 97) < 6)
    {
      LOBYTE(v10) = v10 - 32;
    }

    *v4++ = v10;
  }

  while (v4 != v7);
LABEL_13:
  *v7 = 80;
  return result;
}

uint64_t std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *a2, size_t a3, uint64_t *a4)
{
  v6 = *a4;
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v9 = v7;
  if ((v7 & 0x80000000) == 0)
  {
    v10 = 0;
    v11 = a2;
    if (a3 && v9)
    {
      v12 = v9 & 0x7FFFFFFF;
      if (*a2 < 0)
      {
        v14 = a2;
      }

      else
      {
        v13 = 0;
        v11 = &a2[v12];
        v14 = &a2[v12 - 1];
        while (1)
        {
          if (a3 - 1 == v13)
          {
            v10 = a3;
            v11 = &a2[a3];
            goto LABEL_18;
          }

          if (v12 - 1 == v13)
          {
            break;
          }

          v15 = a2[++v13];
          if (v15 < 0)
          {
            v12 = v12 - v13 + 1;
            v14 = &a2[v13 - 1];
            goto LABEL_14;
          }
        }

        if ((*v11 & 0x80000000) == 0)
        {
          v10 = v9 & 0x7FFFFFFF;
          goto LABEL_18;
        }

        v12 = 1;
      }

LABEL_14:
      v10 = v14 - a2 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v14, &a2[a3], v12, 0);
    }

LABEL_18:
    v17 = v11 - a2;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v17, v6, v8, v9, v10);
  }

  return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v6, v8, v7);
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v16[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v15[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v14 = v7;
    *v15 = v7;
    *v13 = v7;
    *&v13[16] = v7;
    v12 = 2;
    if (BYTE1(a3) == 2)
    {
      v8 = "0b";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v8 = "0B";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v10 = v16;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    memset(v13, 170, 19);
    v12 = 16;
    if (BYTE1(a3) == 6)
    {
      v8 = "0x";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v8 = "0X";
      v9 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v10 = &v13[19];
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    memset(v13, 170, 21);
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 10);
    goto LABEL_19;
  }

  *&v13[8] = 0xAAAAAAAAAAAAAAAALL;
  *&v13[16] = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v10 = a3;
  v12 = a3;
  if (a5)
  {
    v13 = 45;
LABEL_7:
    *a6 = v13;
    v15 = a6 + 1;
    goto LABEL_8;
  }

  v14 = (a3 >> 3) & 3;
  if (v14 == 2)
  {
    v13 = 43;
    goto LABEL_7;
  }

  v15 = a6;
  if (v14 == 3)
  {
    v13 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v16 = *a8;
      if (*a8)
      {
        v17 = a8 + 1;
        do
        {
          *v15 = v16;
          v15 = (v15 + 1);
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }
    }
  }

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C26BF30](v93);
    v20 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v20, v93);
    }

    else
    {
      std::locale::locale(v20, v93);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(v93);
  }

  std::locale::locale(&v90, (a2 + 32));
  v21 = std::locale::use_facet(&v90, MEMORY[0x29EDC93F8]);
  v22 = v19 - v15;
  std::locale::~locale(&v90);
  memset(v93, 170, sizeof(v93));
  (v21->__vftable[1].__on_zero_shared)(v93, v21);
  if ((SHIBYTE(v93[2].__locale_) & 0x8000000000000000) != 0)
  {
    locale = v93[0].__locale_;
    v24 = v93[1].__locale_;
    if (v93[1].__locale_ && v22 > *v93[0].__locale_)
    {
      v86 = v21;
      v25 = v93[0].__locale_;
      goto LABEL_26;
    }

    operator delete(v93[0].__locale_);
LABEL_67:
    v47 = v19;
    v48 = HIDWORD(v10);
    v49 = *a2;
    if ((v12 & 7) == 4)
    {
      v50 = v15 - v9;
      v51 = *(v49 + 32);
      v52 = v15 - v9;
      if (!v51 || ((v54 = *v51, v53 = v51[1], *v51 - v53 >= v50) ? (v52 = v15 - v9) : (v52 = *v51 - v53), (v51[1] = v53 + v50, v54 > v53) ? (v55 = v52 == 0) : (v55 = 1), !v55))
      {
        v63 = *(v49 + 16);
        do
        {
          v65 = *(v49 + 8) - v63;
          if (v65 < v52 + 1)
          {
            (*(v49 + 24))(v49, v52 + 2);
            v63 = *(v49 + 16);
            v65 = *(v49 + 8) - v63;
          }

          if (v65 >= v52)
          {
            v66 = v52;
          }

          else
          {
            v66 = v65;
          }

          if (v66)
          {
            memmove((*v49 + v63), v9, v66);
            v63 = *(v49 + 16);
          }

          v63 += v66;
          *(v49 + 16) = v63;
          v9 += v66;
          v64 = v52 > v65;
          v52 -= v66;
        }

        while (v64);
      }

      LODWORD(v10) = v87;
      v56 = a4;
      v57 = v87 & 0xF8 | 3;
      if (v48 >= v50)
      {
        v58 = v50;
      }

      else
      {
        v58 = v48;
      }

      v48 = (v48 - v58);
      v49 = *a2;
      v59 = 48;
    }

    else
    {
      v56 = a4;
      v59 = BYTE4(a4);
      v57 = v10;
      v15 = v9;
    }

    v60 = v48 << 32;
    v61 = v56 & 0xFFFFFF00FFFFFFFFLL | (v59 << 32);
    if ((v10 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47, v49, v10 & 0xFFFF0700 | v60 | v57, v61, std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v47 - v15, v49, v60 | v10 & 0xFFFFFF00 | v57, v61, v47 - v15);
    }
  }

  if (!HIBYTE(v93[2].__locale_) || v22 <= SLOBYTE(v93[0].__locale_))
  {
    goto LABEL_67;
  }

  v86 = v21;
  locale = v93;
  v25 = v93[0].__locale_;
  v24 = v93[1].__locale_;
LABEL_26:
  v85 = *a2;
  v90.__locale_ = 0;
  v91 = 0;
  v92 = 0;
  v26 = v24 + v25;
  if (SHIBYTE(v93[2].__locale_) >= 0)
  {
    v27 = v93 + SHIBYTE(v93[2].__locale_);
  }

  else
  {
    v27 = v26;
  }

  v28 = *locale;
  v29 = *locale;
  v30 = v22 - v28;
  if (v22 <= v28)
  {
    v68 = 0;
    v67 = v29 + v30;
    v69 = v86;
    goto LABEL_99;
  }

  v84 = v19;
  v31 = v27 - 1;
  do
  {
    while (1)
    {
      v32 = HIBYTE(v92);
      if ((SHIBYTE(v92) & 0x80000000) == 0)
      {
        break;
      }

      v34 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v91 != v34)
      {
        v40 = v90.__locale_;
        v34 = v91;
        goto LABEL_56;
      }

      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v90.__locale_;
      v89 = locale;
      if (v34 < 0x3FFFFFFFFFFFFFF3)
      {
        goto LABEL_38;
      }

      v38 = 0;
      v37 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
      v39 = operator new(v37);
      v40 = v39;
      if (v34)
      {
        memmove(v39, v33, v34);
      }

      if (!v38)
      {
        operator delete(v33);
      }

      v90.__locale_ = v40;
      v92 = v37 | 0x8000000000000000;
      locale = v89;
LABEL_56:
      v91 = v34 + 1;
      v42 = v40 + v34;
      *v42 = v29;
      v42[1] = 0;
      if (locale != v31)
      {
        goto LABEL_57;
      }

LABEL_31:
      v29 = *locale;
      v30 -= *locale;
      if (v30 <= 0)
      {
        goto LABEL_95;
      }
    }

    if (HIBYTE(v92) == 22)
    {
      v89 = locale;
      v33 = &v90;
      v34 = 22;
LABEL_38:
      if (v34 + 1 > 2 * v34)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 2 * v34;
      }

      if ((v35 | 7) == 0x17)
      {
        v36 = 25;
      }

      else
      {
        v36 = (v35 | 7) + 1;
      }

      if (v35 >= 0x17)
      {
        v37 = v36;
      }

      else
      {
        v37 = 23;
      }

      v38 = v34 == 22;
      goto LABEL_48;
    }

    HIBYTE(v92) = (HIBYTE(v92) + 1) & 0x7F;
    v41 = &v90 + v32;
    *v41 = v29;
    v41[1] = 0;
    if (locale == v31)
    {
      goto LABEL_31;
    }

LABEL_57:
    v43 = (locale + 1);
    v44 = (locale + 1);
    do
    {
      v45 = *v44++;
      v29 = v45;
      if (v45)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43 == v31;
      }

      v43 = v44;
    }

    while (!v46);
    locale = (v44 - 1);
    v30 -= v29;
  }

  while (v30 > 0);
LABEL_95:
  v67 = v29 + v30;
  if (SHIBYTE(v92) < 0)
  {
    v72 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    LODWORD(v19) = v84;
    v69 = v86;
    if (v91 == v72)
    {
      if ((v92 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v71 = v90.__locale_;
      v70 = v86;
      if (v72 >= 0x3FFFFFFFFFFFFFF3)
      {
        v77 = 0;
        v76 = 0x7FFFFFFFFFFFFFF7;
      }

      else
      {
LABEL_103:
        if (v72 + 1 > 2 * v72)
        {
          v74 = v72 + 1;
        }

        else
        {
          v74 = 2 * v72;
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

        v77 = v72 == 22;
      }

      v78 = v76;
      v79 = operator new(v76);
      v73 = v79;
      if (v72)
      {
        memmove(v79, v71, v72);
      }

      if (!v77)
      {
        operator delete(v71);
      }

      v90.__locale_ = v73;
      v92 = v78 | 0x8000000000000000;
      v69 = v70;
    }

    else
    {
      v73 = v90.__locale_;
      v72 = v91;
    }

    v91 = v72 + 1;
  }

  else
  {
    v68 = HIBYTE(v92);
    LODWORD(v19) = v84;
    v69 = v86;
    if (HIBYTE(v92) == 22)
    {
      v70 = v86;
      v71 = &v90;
      v72 = 22;
      goto LABEL_103;
    }

LABEL_99:
    v72 = v68;
    HIBYTE(v92) = (v68 + 1) & 0x7F;
    v73 = &v90;
  }

  v80 = v73 + v72;
  *v80 = v67;
  v80[1] = 0;
  v81 = (v69->__vftable[1].~facet_0)(v69);
  result = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v85, v9, v15, v19, &v90, v81, v87, a4);
  if (SHIBYTE(v92) < 0)
  {
    v82 = result;
    operator delete(v90.__locale_);
    result = v82;
  }

  if (SHIBYTE(v93[2].__locale_) < 0)
  {
    v83 = result;
    operator delete(v93[0].__locale_);
    return v83;
  }

  return result;
}

void sub_2970817F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  if (capabilities::radio::vendor(a1) == 1)
  {
    v6 = operator new(0x270uLL);
    v7 = v6;
    v8 = *a1;
    v9 = a1[1];
    v15 = v8;
    v16 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *a2;
    v11 = a2[1];
    v14[0] = v10;
    v14[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13[0] = 0;
    v13[1] = 0;
    BootModule::BootModule(v6, &v15, v14, v13);
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<BootModule>::shared_ptr[abi:ne200100]<BootModule,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1},0>(&v17, v7);
    v12 = v17;
    v17 = 0uLL;
    *a3 = v12;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    BootModule::init(*a3);
  }
}

void sub_297081978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
    if (!v14)
    {
LABEL_3:
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11);
      _Unwind_Resume(a1);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void BootModule::init(BootModule *this)
{
  v5 = *(this + 9);
  v3 = *(this + 10);
  v4 = this + 72;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN10BootModule4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_22_1;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_238;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 11);
  if (!*(this + 12))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

uint64_t BootModule::BootModule(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v8);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E26658;
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "boot.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2("boot.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v10, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v10);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v10;
  if (v10)
  {
    dispatch_retain(v10);
    *(a1 + 96) = 0;
    dispatch_release(v10);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, &__dst);
  MEMORY[0x29C26B020](&__dst);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &unk_2A1E26658;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 156) = 15;
  v11 = dispatch_semaphore_create(0);
  *(a1 + 232) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = v11;
  *(a1 + 194) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = -1;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0;
  *(a1 + 416) = -1;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  config::hw::regionInfo(v11);
  *(a1 + 488) = dispatch_group_create();
  *(a1 + 496) = 0;
  v12 = (*(*a1 + 16))(a1);
  v13 = 0x7FFFFFFFFFFFFFF7;
  v14 = strlen(v12);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v14 | 7) + 1;
    }

    p_dst = operator new(v21);
    *(&__dst + 1) = v15;
    v87 = v21 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_19:
    memmove(p_dst, v12, v15);
    *(p_dst + v15) = 0;
    v17 = SHIBYTE(v87);
    if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  HIBYTE(v87) = v14;
  p_dst = &__dst;
  if (v14)
  {
    goto LABEL_19;
  }

  LOBYTE(__dst) = 0;
  v17 = SHIBYTE(v87);
  if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
  {
LABEL_13:
    if (v17 - 12 < 0xB)
    {
      v18 = v17 + 11;
      v19 = &__dst;
      v20 = 22;
LABEL_23:
      v22 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v22 = v18;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v24 = v23;
      }

      else
      {
        v24 = 23;
      }

      v25 = v20 == 22;
      goto LABEL_32;
    }

    v30 = &__dst;
LABEL_39:
    v31 = v30 + v17;
    *v31 = *".resetqueue";
    *(v31 + 7) = 1702192501;
    v32 = v17 + 11;
    if (SHIBYTE(v87) < 0)
    {
      *(&__dst + 1) = v17 + 11;
    }

    else
    {
      HIBYTE(v87) = v32 & 0x7F;
    }

    v29 = v30 + v32;
    goto LABEL_43;
  }

LABEL_20:
  v17 = *(&__dst + 1);
  v20 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - *(&__dst + 1) >= 0xB)
  {
    v30 = __dst;
    goto LABEL_39;
  }

  v18 = *(&__dst + 1) + 11;
  if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = __dst;
  if (v20 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_23;
  }

  v25 = 0;
  v24 = 0x7FFFFFFFFFFFFFF7;
LABEL_32:
  v26 = operator new(v24);
  v27 = v26;
  if (v17)
  {
    memmove(v26, v19, v17);
  }

  v28 = &v27[v17];
  *v28 = *".resetqueue";
  *(v28 + 7) = 1702192501;
  if (!v25)
  {
    operator delete(v19);
  }

  *(&__dst + 1) = v18;
  v87 = v24 | 0x8000000000000000;
  *&__dst = v27;
  v29 = &v27[v18];
  v13 = 0x7FFFFFFFFFFFFFF7;
LABEL_43:
  *v29 = 0;
  v89 = v87;
  *buf = __dst;
  v87 = 0;
  __dst = 0uLL;
  if (v89 >= 0)
  {
    v33 = buf;
  }

  else
  {
    v33 = *buf;
  }

  v34 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v35 = dispatch_queue_create(v33, v34);
  *(a1 + 504) = v35;
  if (SHIBYTE(v89) < 0)
  {
    operator delete(*buf);
    if ((SHIBYTE(v87) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(v87) & 0x80000000) == 0)
  {
    goto LABEL_48;
  }

  operator delete(__dst);
LABEL_48:
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 584) = *a4;
  v36 = a4[1];
  *(a1 + 592) = v36;
  if (v36)
  {
    atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 600) = -1;
  *(a1 + 608) = *a3;
  v37 = a3[1];
  *(a1 + 616) = v37;
  if (v37)
  {
    atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
  }

  v38 = (a1 + 584);
  *(a1 + 188) = 0;
  *(a1 + 576) = 0;
  *(a1 + 184) = 0;
  *(a1 + 304) = 0;
  *(a1 + 152) = 0;
  *(a1 + 328) = 8;
  if (capabilities::abs::supportsLCDM(v35))
  {
    v39 = operator new(0x50uLL);
    lcdm::CrashDB::CrashDB(v39);
    *buf = v39;
    v40 = operator new(0x20uLL);
    *v40 = &unk_2A1E2AB68;
    *(v40 + 1) = 0;
    *(v40 + 2) = 0;
    *(v40 + 3) = v39;
    *(a1 + 560) = v39;
    v41 = *(a1 + 568);
    *(a1 + 568) = v40;
    if (!v41)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v40 = 0;
    *(a1 + 560) = 0;
    v41 = *(a1 + 568);
    *(a1 + 568) = 0;
    if (!v41)
    {
      goto LABEL_58;
    }
  }

  if (!atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_58:
  if (sys::isBootSessionChanged(v40))
  {
    v42 = *(a1 + 104);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
    if (v43)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v42, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband boot stats", buf, 2u);
    }

    *(a1 + 528) = 0;
    goto LABEL_99;
  }

  xdict = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!qword_2A18B74D0)
  {
    v45 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v45);
    *&__dst = v45;
    v44 = operator new(0x20uLL);
    *v44 = &unk_2A1E26F90;
    v44[1] = 0;
    v44[2] = 0;
    v44[3] = v45;
    v46 = off_2A18B74D8;
    qword_2A18B74D0 = v45;
    off_2A18B74D8 = v44;
    if (!v46)
    {
      *buf = v45;
      *&buf[8] = v44;
      goto LABEL_72;
    }

    if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

  v44 = off_2A18B74D8;
  *buf = qword_2A18B74D0;
  *&buf[8] = off_2A18B74D8;
  if (off_2A18B74D8)
  {
LABEL_72:
    atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::getHealthInfo(*buf, &xdict);
  v47 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
  }

  value = xpc_dictionary_get_value(xdict, "KeyBasebandStats");
  v49 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v49 = xpc_null_create();
  }

  v50 = xpc_null_create();
  v51 = MEMORY[0x29EDCAA00];
  if (v49 && MEMORY[0x29C26CE60](v49) == v51)
  {
    xpc_retain(v49);
    v52 = v49;
  }

  else
  {
    v52 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v52) != v51)
  {
    if (v50)
    {
      xpc_retain(v50);
      v53 = v50;
    }

    else
    {
      v53 = xpc_null_create();
    }

    xpc_release(v52);
    v52 = v53;
  }

  xpc_release(v50);
  xpc_release(v49);
  if (MEMORY[0x29C26CE60](v52) != v51)
  {
    v54 = *(a1 + 104);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v54, OS_LOG_TYPE_ERROR, "Baseband boot stats not found", buf, 2u);
    }

    *(a1 + 528) = 0;
  }

  v55 = xpc_dictionary_get_value(v52, *MEMORY[0x29EDBF2C0]);
  *buf = v55;
  if (v55)
  {
    xpc_retain(v55);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 528) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  v56 = xpc_dictionary_get_value(v52, *MEMORY[0x29EDBF2C8]);
  *buf = v56;
  if (v56)
  {
    xpc_retain(v56);
  }

  else
  {
    *buf = xpc_null_create();
  }

  *(a1 + 532) = xpc::dyn_cast_or_default(buf, 0);
  xpc_release(*buf);
  xpc_release(v52);
  xpc_release(xdict);
LABEL_99:
  if (!*v38)
  {
    _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(buf);
    v74 = *buf;
    memset(buf, 0, sizeof(buf));
    v75 = *(a1 + 592);
    *v38 = v74;
    if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v75->__on_zero_shared)(v75);
      std::__shared_weak_count::__release_weak(v75);
    }

    v76 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);
      std::__shared_weak_count::__release_weak(v76);
    }
  }

  capabilities::abs::supportedMobileAssetTypes(v43);
  v57 = capabilities::abs::operator&();
  if (v57 || (capabilities::abs::supportedMobileAssetTypes(v57), capabilities::abs::operator&()))
  {
    v58 = (*(*a1 + 16))(a1);
    v59 = strlen(v58);
    if (v59 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v60 = v59;
    if (v59 >= 0x17)
    {
      if ((v59 | 7) == 0x17)
      {
        v66 = 25;
      }

      else
      {
        v66 = (v59 | 7) + 1;
      }

      v61 = operator new(v66);
      *(&__dst + 1) = v60;
      v87 = v66 | 0x8000000000000000;
      *&__dst = v61;
    }

    else
    {
      HIBYTE(v87) = v59;
      v61 = &__dst;
      if (!v59)
      {
        LOBYTE(__dst) = 0;
        v62 = SHIBYTE(v87);
        if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
        {
LABEL_106:
          if (v62 - 12 < 0xB)
          {
            v63 = v62 + 11;
            v64 = &__dst;
            v65 = 22;
            goto LABEL_116;
          }

          v77 = &__dst;
          goto LABEL_138;
        }

LABEL_113:
        v62 = *(&__dst + 1);
        v65 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v65 - *(&__dst + 1) < 0xB)
        {
          v63 = *(&__dst + 1) + 11;
          if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 11 - v65)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v64 = __dst;
          if (v65 >= 0x3FFFFFFFFFFFFFF3)
          {
            v69 = 0;
LABEL_125:
            v70 = operator new(v13);
            v71 = v70;
            if (v62)
            {
              memmove(v70, v64, v62);
            }

            v72 = &v71[v62];
            *v72 = *".assetqueue";
            *(v72 + 7) = 1702192501;
            if (!v69)
            {
              operator delete(v64);
            }

            *(&__dst + 1) = v63;
            v87 = v13 | 0x8000000000000000;
            *&__dst = v71;
            v73 = &v71[v63];
LABEL_142:
            *v73 = 0;
            v89 = v87;
            *buf = __dst;
            v87 = 0;
            __dst = 0uLL;
            if (v89 >= 0)
            {
              v80 = buf;
            }

            else
            {
              v80 = *buf;
            }

            v81 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
            v82 = dispatch_queue_create(v80, v81);
            v83 = *(a1 + 520);
            *(a1 + 520) = v82;
            if (v83)
            {
              dispatch_release(v83);
            }

            if (SHIBYTE(v89) < 0)
            {
              operator delete(*buf);
              if ((SHIBYTE(v87) & 0x80000000) == 0)
              {
                return a1;
              }
            }

            else if ((SHIBYTE(v87) & 0x80000000) == 0)
            {
              return a1;
            }

            operator delete(__dst);
            return a1;
          }

LABEL_116:
          v67 = 2 * v65;
          if (v63 > 2 * v65)
          {
            v67 = v63;
          }

          if ((v67 | 7) == 0x17)
          {
            v68 = 25;
          }

          else
          {
            v68 = (v67 | 7) + 1;
          }

          if (v67 >= 0x17)
          {
            v13 = v68;
          }

          else
          {
            v13 = 23;
          }

          v69 = v65 == 22;
          goto LABEL_125;
        }

        v77 = __dst;
LABEL_138:
        v78 = v77 + v62;
        *v78 = *".assetqueue";
        *(v78 + 7) = 1702192501;
        v79 = v62 + 11;
        if (SHIBYTE(v87) < 0)
        {
          *(&__dst + 1) = v62 + 11;
        }

        else
        {
          HIBYTE(v87) = v79 & 0x7F;
        }

        v73 = v77 + v79;
        goto LABEL_142;
      }
    }

    memmove(v61, v58, v60);
    *(v61 + v60) = 0;
    v62 = SHIBYTE(v87);
    if ((SHIBYTE(v87) & 0x8000000000000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_113;
  }

  return a1;
}

void sub_2970827FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void *a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t object)
{
  v35 = v21;
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v25 = (v20 + 512);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v20 + 608);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v23);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v20 + 560);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v35);
  v26 = *(v20 + 520);
  if (v26)
  {
    dispatch_release(v26);
  }

  if (*v25)
  {
    dispatch_resume(*v25);
    if (*v25)
    {
      dispatch_release(*v25);
    }
  }

  v27 = *(v20 + 504);
  if (v27)
  {
    dispatch_release(v27);
  }

  v28 = *(v20 + 496);
  if (v28)
  {
    dispatch_group_leave(v28);
    v29 = *(v20 + 496);
    if (v29)
    {
      dispatch_release(v29);
    }
  }

  v30 = *(v20 + 488);
  if (v30)
  {
    dispatch_release(v30);
    if (*(v20 + 487) < 0)
    {
LABEL_13:
      operator delete(*(v22 + 296));
      if ((*(v20 + 447) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if (*(v20 + 487) < 0)
  {
    goto LABEL_13;
  }

  if ((*(v20 + 447) & 0x80000000) == 0)
  {
LABEL_14:
    if (*(v20 + 399) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(v22 + 256));
  if (*(v20 + 399) < 0)
  {
LABEL_15:
    operator delete(*(v22 + 208));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v22 + 176);
    v31 = *(v22 + 168);
    if (!v31)
    {
      goto LABEL_22;
    }

LABEL_21:
    _Block_release(v31);
LABEL_22:
    if (*(v20 + 303) < 0)
    {
      operator delete(*(v20 + 280));
      if ((*(v20 + 279) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((*(v20 + 279) & 0x80000000) == 0)
    {
LABEL_24:
      BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
      v32 = *(v20 + 176);
      if (!v32)
      {
        goto LABEL_30;
      }

LABEL_28:
      dispatch_group_leave(v32);
      v33 = *(v20 + 176);
      if (v33)
      {
        dispatch_release(v33);
      }

LABEL_30:
      if (*v22)
      {
        dispatch_group_leave(*v22);
        if (*v22)
        {
          dispatch_release(*v22);
        }
      }

      v34 = *(v20 + 160);
      if (v34)
      {
        dispatch_release(v34);
      }

      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v22 - 32);
      if (*(v20 + 135) < 0)
      {
        operator delete(*a10);
      }

      MEMORY[0x29C26B020](v20 + 104);
      ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(a12);
      Service::~Service(v20);
      _Unwind_Resume(a1);
    }

    operator delete(*(v20 + 256));
    BootModule::MobileAssetUpdate::~MobileAssetUpdate(a11);
    v32 = *(v20 + 176);
    if (!v32)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_20:
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v22 + 176);
  v31 = *(v22 + 168);
  if (!v31)
  {
    goto LABEL_22;
  }

  goto LABEL_21;
}

BOOL BootModule::isPTMobileAssetSupported(BootModule *this)
{
  capabilities::abs::supportedMobileAssetTypes(this);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    return 1;
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  return capabilities::abs::operator&() != 0;
}

void BootModule::~BootModule(BootModule *this)
{
  *this = &unk_2A1E26658;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v31, 2u);
  }

  v4 = *(this + 77);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 74);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 71);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 68);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 65);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    dispatch_resume(v9);
    v10 = *(this + 64);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 63);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 62);
  if (v12)
  {
    dispatch_group_leave(v12);
    v13 = *(this + 62);
    if (v13)
    {
      dispatch_release(v13);
    }
  }

  v14 = *(this + 61);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
    if ((*(this + 447) & 0x80000000) == 0)
    {
LABEL_29:
      if ((*(this + 399) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_34:
      operator delete(*(this + 47));
      v15 = *(this + 44);
      if (!v15)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((*(this + 447) & 0x80000000) == 0)
  {
    goto LABEL_29;
  }

  operator delete(*(this + 53));
  if (*(this + 399) < 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  v15 = *(this + 44);
  if (!v15)
  {
LABEL_36:
    v16 = *(this + 42);
    if (!v16)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_35:
  if (atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  v16 = *(this + 42);
  if (v16)
  {
LABEL_37:
    _Block_release(v16);
  }

LABEL_38:
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
    if ((*(this + 279) & 0x80000000) == 0)
    {
LABEL_40:
      if ((*(this + 255) & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_46;
    }
  }

  else if ((*(this + 279) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(*(this + 32));
  if ((*(this + 255) & 0x80000000) == 0)
  {
LABEL_41:
    if ((*(this + 223) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:
    operator delete(*(this + 25));
    v17 = *(this + 22);
    if (!v17)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

LABEL_46:
  operator delete(*(this + 29));
  if (*(this + 223) < 0)
  {
    goto LABEL_47;
  }

LABEL_42:
  v17 = *(this + 22);
  if (!v17)
  {
    goto LABEL_50;
  }

LABEL_48:
  dispatch_group_leave(v17);
  v18 = *(this + 22);
  if (v18)
  {
    dispatch_release(v18);
  }

LABEL_50:
  v19 = *(this + 21);
  if (v19)
  {
    dispatch_group_leave(v19);
    v20 = *(this + 21);
    if (v20)
    {
      dispatch_release(v20);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    dispatch_release(v21);
  }

  v22 = *(this + 18);
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 135) & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  (v22->__on_zero_shared)(v22);
  std::__shared_weak_count::__release_weak(v22);
  if (*(this + 135) < 0)
  {
LABEL_58:
    operator delete(*(this + 14));
  }

LABEL_59:
  MEMORY[0x29C26B020](v2);
  v23 = *(this + 12);
  if (v23)
  {
    dispatch_release(v23);
  }

  v24 = *(this + 11);
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(this + 10);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v26 = *(this + 3);
  if (v26)
  {
    v27 = *(this + 4);
    v28 = *(this + 3);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 1);
        v27 -= 3;
        if (v29 < 0)
        {
          operator delete(*v27);
        }
      }

      while (v27 != v26);
      v28 = *(this + 3);
    }

    *(this + 4) = v26;
    operator delete(v28);
  }

  v30 = *(this + 2);
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }
}

{
  BootModule::~BootModule(this);

  operator delete(v1);
}

void BootModule::changeState_sync(uint64_t a1, unsigned int a2)
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = *(a1 + 576);
    if (v6 > 8)
    {
      v7 = "Unknown";
      if (a2 > 8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = off_29EE63FF0[v6];
      if (a2 > 8)
      {
LABEL_4:
        v8 = "Unknown";
LABEL_7:
        *buf = 136446466;
        *&buf[4] = v7;
        *&buf[12] = 2082;
        *&buf[14] = v8;
        _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I boot state changing %{public}s -> %{public}s", buf, 0x16u);
        goto LABEL_8;
      }
    }

    v8 = off_29EE63FF0[a2];
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 576) = a2;
  if (!capabilities::ipc::supportsPCI(v5))
  {
    goto LABEL_43;
  }

  v9 = (a1 + 344);
  if (*(a1 + 576) - 3 > 1)
  {
    v19 = *(a1 + 352);
    *v9 = 0;
    *(a1 + 352) = 0;
    if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_43;
    }

    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v9)
    {
      goto LABEL_43;
    }

    v10 = *(a1 + 336);
    if (v10)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v11 = off_2A18B7340;
    if (!off_2A18B7340)
    {
      ABMServer::create_default_global(buf);
      v12 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v13 = *(&off_2A18B7340 + 1);
      off_2A18B7340 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A18B7340;
    }

    v38 = v11;
    v39 = *(&off_2A18B7340 + 1);
    if (*(&off_2A18B7340 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
    v15 = *(*v11 + 144);
    pci::event::Listener::create();
    v16 = v41;
    v41 = 0uLL;
    v17 = *(a1 + 352);
    *v9 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    if (*(&v41 + 1) && !atomic_fetch_add((*(&v41 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v41 + 1) + 16))(*(&v41 + 1));
      std::__shared_weak_count::__release_weak(*(&v41 + 1));
    }

    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v18 = *(a1 + 104);
    if (*(a1 + 344))
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Listening for PCI events", buf, 2u);
        if (!*(a1 + 176))
        {
          goto LABEL_49;
        }

        goto LABEL_44;
      }

LABEL_43:
      if (!*(a1 + 176))
      {
        goto LABEL_49;
      }

      goto LABEL_44;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v18, OS_LOG_TYPE_ERROR, "Could not create PCI event listener!", buf, 2u);
    if (!*(a1 + 176))
    {
      goto LABEL_49;
    }
  }

LABEL_44:
  v20 = *(a1 + 576);
  if (v20 != 4)
  {
    goto LABEL_50;
  }

  v21 = *(a1 + 104);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v21, OS_LOG_TYPE_DEFAULT, "#I Releasing shutdown request session", buf, 2u);
  }

  (*(*a1 + 104))(a1, 7);
  v22 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

LABEL_49:
  v20 = *(a1 + 576);
LABEL_50:
  if (v20 != 7)
  {
    goto LABEL_75;
  }

  *buf = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *buf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF4A0], v23, v25);
  v26 = *MEMORY[0x29EDBF460];
  v27 = strlen(*MEMORY[0x29EDBF460]);
  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v31 = 25;
    }

    else
    {
      v31 = (v27 | 7) + 1;
    }

    v29 = operator new(v31);
    __dst[1] = v28;
    v37 = v31 | 0x8000000000000000;
    __dst[0] = v29;
  }

  else
  {
    HIBYTE(v37) = v27;
    v29 = __dst;
    if (!v27)
    {
      LOBYTE(__dst[0]) = 0;
      v30 = *buf;
      if (!*buf)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }
  }

  memmove(v29, v26, v28);
  *(v28 + v29) = 0;
  v30 = *buf;
  if (!*buf)
  {
LABEL_65:
    cf = 0;
    goto LABEL_66;
  }

LABEL_63:
  v32 = CFGetTypeID(v30);
  if (v32 != CFDictionaryGetTypeID())
  {
    goto LABEL_65;
  }

  cf = v30;
  CFRetain(v30);
LABEL_66:
  v34 = 0;
  Service::broadcastEvent(a1, __dst, &cf, &v34);
  if (v34)
  {
    _Block_release(v34);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    if (!v30)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  operator delete(__dst[0]);
  if (v30)
  {
LABEL_74:
    CFRelease(v30);
  }

LABEL_75:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_29708367C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *aBlock, uint64_t a20, uint64_t a21, char a22)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void BootModule::requestReset(void *a1, __int128 *a2, void **a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (!capabilities::abs::shouldIgnoreResets(v8))
  {
    v13 = a1[63];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_9_1;
    block[4] = a1;
    block[5] = v7;
    v18 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    ResetInfo::ResetInfo(&v19, a2);
    v14 = *a3;
    if (*a3)
    {
      v14 = _Block_copy(v14);
    }

    aBlock = v14;
    dispatch_async(v13, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v25 < 0)
    {
      operator delete(__p);
      if ((v23 & 0x80000000) == 0)
      {
LABEL_20:
        if ((v21 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    else if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    operator delete(v22);
    if ((v21 & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    operator delete(v20);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_22:
      v15 = v18;
      if (!v18)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

LABEL_27:
    operator delete(v19.__r_.__value_.__l.__data_);
    v15 = v18;
    if (!v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    std::__shared_weak_count::__release_weak(v15);
    goto LABEL_29;
  }

  v10 = a1[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT) && ((ResetInfo::asString(a2, v27), v28 >= 0) ? (v11 = v27) : (v11 = v27[0]), *buf = 136446210, v30 = v11, _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring modem reset request: %{public}s", buf, 0xCu), v28 < 0))
  {
    operator delete(v27[0]);
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v12 = *a3;
    if (!*a3)
    {
      goto LABEL_29;
    }
  }

  v28 = 0;
  LOBYTE(v27[0]) = 0;
  v12[2](v12, 0, v27);
  if (v28 < 0)
  {
    operator delete(v27[0]);
  }

LABEL_29:
  std::__shared_weak_count::__release_weak(v9);
  v16 = *MEMORY[0x29EDCA608];
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v21 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_16;
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_29;
  v9[4] = v3;
  ResetInfo::ResetInfo(&v10, (a1 + 56));
  v6 = *(a1 + 168);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  aBlock = v6;
  v18 = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v9);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      operator delete(v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_22:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v13);
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  if (v3 > 8 || ((1 << v3) & 0x1C7) == 0)
  {
    v12 = *(v2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      ResetInfo::asString((a1 + 40), &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Reset requested: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(*v2 + 104))(v2, 1);
    *v65 = 0xAAAAAAAAAAAAAAAALL;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      *v65 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      *v65 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_37;
      }
    }

    if (MEMORY[0x29C26CE60](v15) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v15);
      goto LABEL_38;
    }

    v16 = xpc_null_create();
LABEL_37:
    *v65 = v16;
LABEL_38:
    xpc_release(v15);
    ResetInfo::addToDict((a1 + 40), v65);
    v21 = *v65;
    v64 = *v65;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v21 = xpc_null_create();
      v64 = v21;
    }

    BootModule::submitBBResetMetric_sync(v2, &v64);
    xpc_release(v21);
    v22 = *v65;
    v63 = *v65;
    v64 = 0;
    if (*v65)
    {
      xpc_retain(*v65);
    }

    else
    {
      v22 = xpc_null_create();
      v63 = v22;
    }

    BootModule::updateResetInfoAnalyticsEvent_sync(v2, &v63);
    xpc_release(v22);
    v63 = 0;
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    v23 = *MEMORY[0x29EDBEB60];
    v24 = strlen(*MEMORY[0x29EDBEB60]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v24 != __p.__r_.__value_.__l.__size_)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      v26 = memcmp(__p.__r_.__value_.__l.__data_, v23, v24);
      operator delete(v25);
      if (v26)
      {
LABEL_50:
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
LABEL_51:
          __p = *(a1 + 40);
          goto LABEL_58;
        }

LABEL_57:
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
LABEL_58:
        v27 = *MEMORY[0x29EDBEB68];
        v28 = strlen(*MEMORY[0x29EDBEB68]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v28 == __p.__r_.__value_.__l.__size_)
          {
            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v29 = __p.__r_.__value_.__r.__words[0];
            v30 = memcmp(__p.__r_.__value_.__l.__data_, v27, v28);
            operator delete(v29);
            if (!v30)
            {
              goto LABEL_65;
            }
          }

          else
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else if (v28 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, v27, v28))
        {
LABEL_65:
          BootModule::reportStatisticsSoftReset_sync(v2);
        }

LABEL_67:
        *(v2 + 194) = 0;
        memset(&buf, 170, 16);
        (*(*v2 + 88))(&buf, v2);
        if (!buf.__r_.__value_.__r.__words[0])
        {
LABEL_102:
          size = buf.__r_.__value_.__l.__size_;
          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          xpc_release(*v65);
          goto LABEL_106;
        }

        Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
        v31 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v31 + 1) + 16))(*(&v31 + 1));
          std::__shared_weak_count::__release_weak(*(&v31 + 1));
        }

        if (v31)
        {
          Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
          ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
          v33 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = ScaledTime;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            ScaledTime = v34;
          }

          v35 = ScaledTime / 1000;
        }

        else
        {
          v35 = 360000;
        }

        object = 0xAAAAAAAAAAAAAAAALL;
        v36 = buf.__r_.__value_.__r.__words[0];
        v37 = operator new(0x38uLL);
        strcpy(v37, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v38 = *(v36 + 48);
        std::string::__init_copy_ctor_external(&__p, v37, 0x33uLL);
        (*(*v38 + 24))(&object, v38, &__p, v35);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        operator delete(v37);
        v40 = *(a1 + 160);
        v39 = *(a1 + 168);
        __p.__r_.__value_.__r.__words[0] = v2;
        __p.__r_.__value_.__l.__size_ = v40;
        __p.__r_.__value_.__r.__words[2] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(&v53, (a1 + 40));
        v41 = *(a1 + 152);
        if (v41)
        {
          v41 = _Block_copy(v41);
        }

        aBlock = v41;
        v61 = object;
        if (object)
        {
          dispatch_retain(object);
          v42 = object;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(v2 + 88);
        v44 = operator new(0x98uLL);
        v45 = v44;
        *&v44->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v46 = __p.__r_.__value_.__r.__words[2];
        v44->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(v44 + 1, &v53);
        v47 = aBlock;
        if (aBlock)
        {
          v47 = _Block_copy(aBlock);
        }

        v48 = v61;
        v45[5].__words[2] = v47;
        v45[6].__words[0] = v48;
        v61 = 0;
        dispatch_group_notify_f(v42, v43, v45, _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_);
        if (v61)
        {
          dispatch_release(v61);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v59 < 0)
        {
          operator delete(v58);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_96:
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_109;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        operator delete(v56);
        if ((v55 & 0x80000000) == 0)
        {
LABEL_97:
          if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_110;
        }

LABEL_109:
        operator delete(v54);
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_98:
          v49 = __p.__r_.__value_.__r.__words[2];
          if (!__p.__r_.__value_.__r.__words[2])
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

LABEL_110:
        operator delete(v53.__r_.__value_.__l.__data_);
        v49 = __p.__r_.__value_.__r.__words[2];
        if (!__p.__r_.__value_.__r.__words[2])
        {
LABEL_100:
          if (object)
          {
            dispatch_release(object);
          }

          goto LABEL_102;
        }

LABEL_99:
        std::__shared_weak_count::__release_weak(v49);
        goto LABEL_100;
      }
    }

    else if (v24 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, v23, v24))
    {
      goto LABEL_50;
    }

    BootModule::reportStatisticsHardResetTime_sync(v2);
    goto LABEL_67;
  }

  v5 = v3;
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_297227A00;
  strcpy(__p.__r_.__value_.__l.__data_, "Reset rejected; Boot state is: ");
  v6 = off_29EE63FF0[v5];
  v7 = strlen(v6);
  v8 = std::string::append(&__p, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v2 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v18 = buf.__r_.__value_.__r.__words[0];
    ResetInfo::asString((a1 + 40), &__p);
    p_buf = &buf;
    if (v17 < 0)
    {
      p_buf = v18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v65 = 136315394;
    *&v65[4] = p_buf;
    v66 = 2080;
    v67 = p_p;
    _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D %s; %s", v65, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(a1 + 152);
  if (v11)
  {
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = buf;
    }

    (*(v11 + 16))(v11, 3760250880, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_14;
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_14:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_106:
  v51 = *MEMORY[0x29EDCA608];
}

void sub_2970844CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::submitBBResetMetric_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26CE60](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "No input is given", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of baseband reset", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_BOOL_create(*(a1 + 360));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE5A8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(a1 + 368));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF890], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 416));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF898], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v15 = *v15;
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v18 = *v18;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v21 = *v21;
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF888], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_int64_create(*(a1 + 328));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE548], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE588], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(524310);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE660], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = *a2;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE580], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = *MEMORY[0x29EDBEBD0];
  v33 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v33 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v33 | 7) + 1;
    }

    v35 = operator new(v36);
    v40 = v34;
    v41 = v36 | 0x8000000000000000;
    *buf = v35;
LABEL_48:
    memmove(v35, v32, v34);
    *(v35 + v34) = 0;
    object = v8;
    if (v8)
    {
      goto LABEL_43;
    }

LABEL_49:
    object = xpc_null_create();
    goto LABEL_50;
  }

  HIBYTE(v41) = v33;
  v35 = buf;
  if (v33)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  object = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

LABEL_43:
  xpc_retain(v8);
LABEL_50:
  v37 = 0;
  Service::runCommand(a1, buf, &object, &v37);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v8);
}

void sub_297084BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::updateResetInfoAnalyticsEvent_sync(uint64_t a1, xpc_object_t *a2)
{
  v191[2] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C26CE60](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
    }

    goto LABEL_282;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of baseband reset", &buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v5)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v11 = xpc_BOOL_create(*(a1 + 360));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "inVoiceCall", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 368));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(a1 + 416));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat2", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v17 = *v17;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v20 = *v20;
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN2", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = *(a1 + 400);
  if (v23)
  {
    v24 = xpc_uint64_create(v23);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
  }

  v26 = *(a1 + 448);
  if (v26)
  {
    v27 = xpc_uint64_create(v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId2", v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
  }

  v29 = *(a1 + 408);
  if (v29)
  {
    v30 = xpc_uint64_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac", v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
  }

  v32 = *(a1 + 456);
  if (v32)
  {
    v33 = xpc_uint64_create(v32);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac2", v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
  }

  v35 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v35 = *v35;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "sku", v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  v38 = xpc_int64_create(*(a1 + 328));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "operatingMode", v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED80]);
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v41 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  is_transcription_pending = util::apfs::is_transcription_pending(v42);
  v44 = xpc_BOOL_create((is_transcription_pending ^ 1u) & v41);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "isMTBF", v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  memset(__s1, 170, sizeof(__s1));
  v46 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  *&buf = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &buf, *MEMORY[0x29EDBF5C8], v47);
  xpc_release(buf);
  if (is_transcription_pending)
  {
    v48 = *(a1 + 104);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_296FF7000, v48, OS_LOG_TYPE_DEFAULT, "#I APFS transcription is pending", &buf, 2u);
    }

    if (v41)
    {
      v49 = *(a1 + 104);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_296FF7000, v49, OS_LOG_TYPE_DEFAULT, "#I Downgrading Baseband Reset MTBF metric because APFS transcription is pending", &buf, 2u);
      }
    }
  }

  if (__s1[2] >= 0)
  {
    v50 = __s1;
  }

  else
  {
    v50 = __s1[0];
  }

  v51 = xpc_string_create(v50);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetType", v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = strlen(*MEMORY[0x29EDBF6D8]);
  v54 = v53;
  v55 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v53 != -1)
    {
      v56 = __s1;
      goto LABEL_78;
    }

LABEL_283:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v53 == -1)
  {
    goto LABEL_283;
  }

  v56 = __s1[0];
  v55 = __s1[1];
LABEL_78:
  if (v55 >= v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = v55;
  }

  if (!memcmp(v56, *MEMORY[0x29EDBF6D8], v57) && v55 == v54)
  {
    v58 = xpc_string_create(*MEMORY[0x29EDBE918]);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v58);
    v59 = xpc_null_create();
    xpc_release(v58);
    xpc_release(v59);
    goto LABEL_246;
  }

  memset(&v180, 170, sizeof(v180));
  v60 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  *&buf = v60;
  if (v60)
  {
    xpc_retain(v60);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v180, &buf, "no-reset-reason", v61);
  xpc_release(buf);
  memset(&__str, 170, sizeof(__str));
  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v180;
  }

  v62 = *MEMORY[0x29EDBF750];
  v63 = strlen(*MEMORY[0x29EDBF750]);
  v64 = v63;
  v65 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v63 != -1)
    {
      v65 = __s1[1];
      if (__s1[1] >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = __s1[1];
      }

      v67 = memcmp(__s1[0], v62, v68);
      if (v67)
      {
        goto LABEL_232;
      }

      goto LABEL_104;
    }

LABEL_285:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v63 == -1)
  {
    goto LABEL_285;
  }

  if (SHIBYTE(__s1[2]) >= v63)
  {
    v66 = v63;
  }

  else
  {
    v66 = SHIBYTE(__s1[2]);
  }

  v67 = memcmp(__s1, v62, v66);
  if (v67)
  {
    goto LABEL_232;
  }

LABEL_104:
  if (v65 == v64)
  {
    v69 = capabilities::radio::maverick(v67);
    if (v69)
    {
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v70;
      v178 = v70;
      v175 = v70;
      v176 = v70;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(ATCS_TIMEOUT on message for svc=[0-9]*)(client=[0-9]*).*(txid=[0-9]*)(msgid=0x[a-zA-Z0-9]*)\\)(.*)", 0);
      *&v71 = 0xAAAAAAAAAAAAAAAALL;
      *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v71;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v71;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      size = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v180;
      }

      else
      {
        v73 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v74 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v73, (v73 + size), &buf, 0);
      v75 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v180;
      }

      else
      {
        v76 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v76, (v76 + v75), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (!v74)
      {
        goto LABEL_226;
      }

      begin = v167[0].__begin_;
      v78 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      if (v78 <= 1)
      {
        v79 = v167;
      }

      else
      {
        v79 = v167[0].__begin_;
      }

      if (v79[1].matched)
      {
        if (v78 <= 1)
        {
          v80 = v167;
        }

        else
        {
          v80 = v167[0].__begin_;
        }

        i = v80[1].first.__i_;
        v82 = v80[1].second.__i_;
        v83 = v82 - i;
        if ((v82 - i) > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v83 > 0x16)
        {
          if ((v83 | 7) == 0x17)
          {
            v93 = 25;
          }

          else
          {
            v93 = (v83 | 7) + 1;
          }

          v157 = v93;
          p_dst = operator new(v93);
          __dst.__r_.__value_.__l.__size_ = v82 - i;
          __dst.__r_.__value_.__r.__words[2] = v157 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v82 - i;
          p_dst = &__dst;
        }

        if (v82 != i)
        {
          memmove(p_dst, i, v82 - i);
        }

        p_dst->__r_.__value_.__s.__data_[v83] = 0;
        v5 = MEMORY[0x29EDCAA00];
      }

      else
      {
        memset(&__dst, 0, sizeof(__dst));
      }

      p_matched = &begin[4].matched;
      if (v78 <= 4)
      {
        p_matched = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_matched->__value_) == 1)
      {
        v95 = &begin[4];
        if (v78 <= 4)
        {
          v95 = &v167[1];
        }

        v96 = v95->__begin_;
        p_second = &begin[4].second;
        if (v78 <= 4)
        {
          p_second = &v167[1].__end_;
        }

        v98 = *p_second;
        v99 = *p_second - v96;
        if (v99 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v99 > 0x16)
        {
          if ((v99 | 7) == 0x17)
          {
            v104 = 25;
          }

          else
          {
            v104 = (v99 | 7) + 1;
          }

          v100 = operator new(v104);
          v164 = v99;
          v165 = v104 | 0x8000000000000000;
          v163 = v100;
        }

        else
        {
          HIBYTE(v165) = *p_second - v96;
          v100 = &v163;
        }

        if (v98 != v96)
        {
          memmove(v100, v96, v99);
        }

        *(v100 + v99) = 0;
        v103 = HIBYTE(v165);
        v102 = v163;
        v101 = v164;
      }

      else
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 0;
      }

      if ((v103 & 0x80u) == 0)
      {
        v105 = &v163;
      }

      else
      {
        v105 = v102;
      }

      if ((v103 & 0x80u) == 0)
      {
        v106 = v103;
      }

      else
      {
        v106 = v101;
      }

      v107 = std::string::append(&__dst, v105, v106);
      v108 = *&v107->__r_.__value_.__l.__data_;
      *&v183[0] = *(&v107->__r_.__value_.__l + 2);
      buf = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3);
      p_end_cap = &v167[0].__begin_[5].matched;
      if (v109 <= 5)
      {
        p_end_cap = &v167[1].__end_cap_;
      }

      if (LOBYTE(p_end_cap->__value_) == 1)
      {
        v111 = v109 > 5;
        if (v109 <= 5)
        {
          v112 = &v167[1];
        }

        else
        {
          v112 = v167[0].__begin_ + 5;
        }

        v113 = v112->first.__i_;
        p_end = &v167[0].__begin_[5].second;
        if (!v111)
        {
          p_end = &v167[1].__end_;
        }

        v115 = *p_end;
        v116 = *p_end - v113;
        if (v116 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v116 > 0x16)
        {
          if ((v116 | 7) == 0x17)
          {
            v121 = 25;
          }

          else
          {
            v121 = (v116 | 7) + 1;
          }

          p_p = operator new(v121);
          v161 = v116;
          v162 = v121 | 0x8000000000000000;
          __p = p_p;
        }

        else
        {
          HIBYTE(v162) = *p_end - v113;
          p_p = &__p;
        }

        if (v115 != v113)
        {
          memmove(p_p, v113, v116);
        }

        *(p_p + v116) = 0;
        v120 = HIBYTE(v162);
        v119 = __p;
        v118 = v161;
      }

      else
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        __p = 0;
        v161 = 0;
        v162 = 0;
      }

      if ((v120 & 0x80u) == 0)
      {
        v122 = &__p;
      }

      else
      {
        v122 = v119;
      }

      if ((v120 & 0x80u) == 0)
      {
        v123 = v120;
      }

      else
      {
        v123 = v118;
      }

      v124 = std::string::append(&buf, v122, v123);
      v125 = v124->__r_.__value_.__r.__words[0];
      v191[0] = v124->__r_.__value_.__l.__size_;
      *(v191 + 7) = *(&v124->__r_.__value_.__r.__words[1] + 7);
      v126 = HIBYTE(v124->__r_.__value_.__r.__words[2]);
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v125;
      __str.__r_.__value_.__l.__size_ = v191[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v191 + 7);
      *(&__str.__r_.__value_.__s + 23) = v126;
      if (SHIBYTE(v162) < 0)
      {
        operator delete(__p);
        if ((SBYTE7(v183[0]) & 0x80000000) == 0)
        {
LABEL_209:
          if ((SHIBYTE(v165) & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_216;
        }
      }

      else if ((SBYTE7(v183[0]) & 0x80000000) == 0)
      {
        goto LABEL_209;
      }

      operator delete(buf);
      if ((SHIBYTE(v165) & 0x80000000) == 0)
      {
LABEL_210:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_217;
      }

LABEL_216:
      operator delete(v163);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_211:
        v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_212;
        }

        goto LABEL_218;
      }

LABEL_217:
      operator delete(__dst.__r_.__value_.__l.__data_);
      v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_212:
        if ((v127 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v180, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v180 = __str;
        }

LABEL_226:
        if (v167[0].__begin_)
        {
          v167[0].__end_ = v167[0].__begin_;
          operator delete(v167[0].__begin_);
        }

        v130 = v178;
        if (v178 && !atomic_fetch_add((v178 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        std::locale::~locale(&v175);
        goto LABEL_232;
      }

LABEL_218:
      if ((v127 & 0x80u) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((v127 & 0x80u) == 0)
      {
        v129 = v127;
      }

      else
      {
        v129 = __str.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v180.__r_.__value_.__l.__data_, p_str, v129);
      goto LABEL_226;
    }

    if (capabilities::radio::ice(v69))
    {
      *&v85 = 0xAAAAAAAAAAAAAAAALL;
      *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v177 = v85;
      v178 = v85;
      v175 = v85;
      v176 = v85;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v175, "(.*ARI_TIMEOUT -.*)( SZ\\([0-9]*\\).*)", 0);
      *&v86 = 0xAAAAAAAAAAAAAAAALL;
      *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v170 = 0xAAAAAAAAAAAAAA00;
      v167[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v173 = v86;
      v168 = 0;
      v169 = 0;
      v171 = 0;
      v172 = 0;
      LOBYTE(v173) = 0;
      BYTE8(v173) = 0;
      v174 = 0;
      memset(v167, 0, 41);
      v186 = 0xAAAAAAAAAAAAAA00;
      *(&v183[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v189 = v86;
      v184 = 0;
      v185 = 0;
      v187 = 0;
      v188 = 0;
      LOBYTE(v189) = 0;
      BYTE8(v189) = 0;
      v190 = 0;
      buf = 0u;
      v183[0] = 0u;
      v87 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v180;
      }

      else
      {
        v88 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v180.__r_.__value_.__l.__size_;
      }

      *(v183 + 9) = 0uLL;
      v89 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v175, v88, (v88 + v87), &buf, 0);
      v90 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v180;
      }

      else
      {
        v91 = v180.__r_.__value_.__r.__words[0];
      }

      if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v90 = v180.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v167, v91, (v91 + v90), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (v89)
      {
        v92 = v167;
        if (0xAAAAAAAAAAAAAAABLL * ((v167[0].__end_ - v167[0].__begin_) >> 3) > 1)
        {
          v92 = v167[0].__begin_;
        }

        std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](&buf, &v92[1]);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__str.__r_.__value_.__l.__data_ = buf;
        __str.__r_.__value_.__r.__words[2] = *&v183[0];
        std::string::operator=(&v180, &__str);
      }

      goto LABEL_226;
    }
  }

LABEL_232:
  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v180;
  }

  else
  {
    v131 = v180.__r_.__value_.__r.__words[0];
  }

  v132 = xpc_string_create(v131);
  if (!v132)
  {
    v132 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetReason", v132);
  v133 = xpc_null_create();
  xpc_release(v132);
  xpc_release(v133);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &__str;
  }

  else
  {
    v134 = __str.__r_.__value_.__r.__words[0];
  }

  v135 = xpc_string_create(v134);
  if (!v135)
  {
    v135 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "shortResetReason", v135);
  v136 = xpc_null_create();
  xpc_release(v135);
  xpc_release(v136);
  v137 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v137)
  {
    v137 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v137);
  v138 = xpc_null_create();
  xpc_release(v137);
  xpc_release(v138);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_246;
    }
  }

  else if ((SHIBYTE(v180.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_246;
  }

  operator delete(v180.__r_.__value_.__l.__data_);
LABEL_246:
  v139 = xpc_string_create("metricsCCBasebandResetInfo");
  if (!v139)
  {
    v139 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE7F8], v139);
  v140 = xpc_null_create();
  xpc_release(v139);
  xpc_release(v140);
  v141 = xpc_string_create("Reset");
  if (!v141)
  {
    v141 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B8], v141);
  v142 = xpc_null_create();
  xpc_release(v141);
  xpc_release(v142);
  if (v10)
  {
    xpc_retain(v10);
    v143 = v10;
  }

  else
  {
    v143 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF020], v143);
  v144 = xpc_null_create();
  xpc_release(v143);
  xpc_release(v144);
  v145 = xpc_dictionary_create(0, 0, 0);
  if (v145 || (v145 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v145) == v5)
    {
      xpc_retain(v145);
      v146 = v145;
    }

    else
    {
      v146 = xpc_null_create();
    }
  }

  else
  {
    v146 = xpc_null_create();
    v145 = 0;
  }

  xpc_release(v145);
  v147 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v147)
  {
    v147 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE588], v147);
  v148 = xpc_null_create();
  xpc_release(v147);
  xpc_release(v148);
  if (v8)
  {
    xpc_retain(v8);
    v149 = v8;
  }

  else
  {
    v149 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE580], v149);
  v150 = xpc_null_create();
  xpc_release(v149);
  xpc_release(v150);
  v151 = *MEMORY[0x29EDBEBD0];
  v152 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v152 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v153 = v152;
  if (v152 >= 0x17)
  {
    if ((v152 | 7) == 0x17)
    {
      v155 = 25;
    }

    else
    {
      v155 = (v152 | 7) + 1;
    }

    p_buf = operator new(v155);
    *(&buf + 1) = v153;
    *&v183[0] = v155 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_275:
    memmove(p_buf, v151, v153);
    *(p_buf + v153) = 0;
    object = v146;
    if (v146)
    {
      goto LABEL_270;
    }

LABEL_276:
    object = xpc_null_create();
    goto LABEL_277;
  }

  BYTE7(v183[0]) = v152;
  p_buf = &buf;
  if (v152)
  {
    goto LABEL_275;
  }

  LOBYTE(buf) = 0;
  object = v146;
  if (!v146)
  {
    goto LABEL_276;
  }

LABEL_270:
  xpc_retain(v146);
LABEL_277:
  v158 = 0;
  Service::runCommand(a1, &buf, &object, &v158);
  xpc_release(object);
  object = 0;
  if (SBYTE7(v183[0]) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v146);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v10);
  xpc_release(v8);
LABEL_282:
  v156 = *MEMORY[0x29EDCA608];
}

void sub_29708600C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a37);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  xpc_release(v64);
  xpc_release(v63);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsHardResetTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of hard reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF4F0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = (*(this + 132) + 1);
  *(this + 132) = v8;
  v9 = xpc_int64_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  object = v4;
  *buf = operator new(0x20uLL);
  v14 = xmmword_297227A10;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = 0;
  Service::runCommand(this, buf, &object, &v11);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_297086668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsSoftReset_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of soft reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = (*(this + 133) + 1);
  *(this + 133) = v5;
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_297227A10;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2970868A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEEUb_EUb0_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    v4 = *(a1 + 16);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_10;
  }

LABEL_14:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_10:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *__copy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1, uint64_t a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 40));
  result = *(a2 + 152);
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = *(a2 + 160);
  v5 = *(a2 + 168);
  *(a1 + 152) = result;
  *(a1 + 160) = v6;
  *(a1 + 168) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v4 = *(a1 + 40);

  operator delete(v4);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 56), (a2 + 56));
  result = *(a2 + 168);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 168) = result;
  return result;
}

void sub_297086B1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_13:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

LABEL_8:

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN10BootModule4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 104);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *__p = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", __p, 2u);
  }

  v5 = capabilities::ipc::supportsPCI(v4);
  if (v5)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule4initEv_block_invoke_10;
    aBlock[3] = &__block_descriptor_tmp_16_1;
    v7 = a1[5];
    v6 = a1[6];
    aBlock[4] = v2;
    aBlock[5] = v7;
    v31 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = _Block_copy(aBlock);
    v9 = *(v2 + 336);
    *(v2 + 336) = v8;
    if (v9)
    {
      _Block_release(v9);
    }

    v5 = v31;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  capabilities::abs::supportedMobileAssetTypes(v5);
  v10 = capabilities::abs::operator&();
  if (v10 || (capabilities::abs::supportedMobileAssetTypes(v10), capabilities::abs::operator&()))
  {
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v11 = off_2A18B75C0;
    if (!off_2A18B75C0)
    {
      SharedData::create_default_global(__p);
      v12 = *__p;
      *__p = 0;
      *&__p[8] = 0;
      v13 = *(&off_2A18B75C0 + 1);
      off_2A18B75C0 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&__p[8];
      if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A18B75C0;
    }

    v15 = *(&off_2A18B75C0 + 1);
    v28 = v11;
    v29 = *(&off_2A18B75C0 + 1);
    if (*(&off_2A18B75C0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_297227A20;
    strcpy(*__p, "Baseband Mobile Asset PT image");
    SharedData::setPreference<char const*>(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v17 = off_2A18B75C0;
        if (!off_2A18B75C0)
        {
          SharedData::create_default_global(__p);
          v18 = *__p;
          *__p = 0;
          *&__p[8] = 0;
          v19 = *(&off_2A18B75C0 + 1);
          off_2A18B75C0 = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v20 = *&__p[8];
          if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          v17 = off_2A18B75C0;
        }

        v21 = *(&off_2A18B75C0 + 1);
        v28 = v17;
        v29 = *(&off_2A18B75C0 + 1);
        if (*(&off_2A18B75C0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297227A30;
        strcpy(*__p, "BasebandMobileAssetVerificationState");
        SharedData::getPreference<std::string>(v17, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A18B75C0;
          if (!off_2A18B75C0)
          {
LABEL_43:
            SharedData::create_default_global(__p);
            v23 = *__p;
            *__p = 0;
            *&__p[8] = 0;
            v24 = *(&off_2A18B75C0 + 1);
            off_2A18B75C0 = v23;
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v25 = *&__p[8];
            if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }

            v22 = off_2A18B75C0;
          }
        }

        else
        {
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A18B75C0;
          if (!off_2A18B75C0)
          {
            goto LABEL_43;
          }
        }

        v26 = *(&off_2A18B75C0 + 1);
        v28 = v22;
        v29 = *(&off_2A18B75C0 + 1);
        if (*(&off_2A18B75C0 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297227A40;
        strcpy(*__p, "BasebandMobileAssetVerificationVersion");
        SharedData::getPreference<std::string>(v22, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        return;
      }
    }

    else
    {
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }
    }

    *__p = 0;
    _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Clear MobileAsset PT path", __p, 2u);
    goto LABEL_28;
  }
}

void sub_297087234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29708724C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297087264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_10(void *a1, int a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    v18 = v10;
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_12;
      }

      memset(&v16, 170, sizeof(v16));
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
      }

      else
      {
        v16 = *a3;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule4initEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_14_2;
      v12[4] = v9;
      v14 = a2;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }

      v15 = a4;
      ctu::SharedSynchronizable<BootModule>::execute_wrapped((v9 + 72), v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_12:
          if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }

LABEL_16:
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          return;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_16;
      }
    }
  }
}

void sub_297087430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_2(uint64_t a1)
{
  v73 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!*(a1 + 64))
  {
    v6 = *(a1 + 63);
    v7 = *(a1 + 48);
    if (v6 >= 0)
    {
      v8 = *(a1 + 63);
    }

    else
    {
      v8 = *(a1 + 48);
    }

    v9 = v8 + 11;
    if (v8 + 11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = (a1 + 40);
    if (v9 < 0x17)
    {
      v63[1] = 0;
      v64 = 0;
      HIBYTE(v64) = v8 + 11;
      *(v63 + 7) = 540693582;
      v63[0] = *"PCI-EVENT: ";
      v13 = &v63[1] + 3;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v9 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v9 | 7) + 1;
      }

      v12 = operator new(v11);
      v63[1] = (v8 + 11);
      v64 = v11 | 0x8000000000000000;
      v63[0] = v12;
      *(v12 + 7) = 540693582;
      *v12 = *"PCI-EVENT: ";
      v13 = v12 + 11;
    }

    v14 = *v10;
    if (v6 >= 0)
    {
      v15 = (a1 + 40);
    }

    else
    {
      v15 = *v10;
    }

    memmove(v13, v15, v8);
LABEL_20:
    v13[v8] = 0;
    if ((v6 & 0x80000000) == 0 || v7 != 27 || (**v10 == 0x67676972742D5041 ? (v16 = *(*v10 + 8) == 0x7361622064657265) : (v16 = 0), v16 ? (v17 = *(*v10 + 16) == 0x657220646E616265) : (v17 = 0), v17 ? (v18 = *(*v10 + 19) == 0x746573657220646ELL) : (v18 = 0), !v18))
    {
LABEL_57:
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v71 = v32;
      v72 = v32;
      v69 = v32;
      v70 = v32;
      v67 = v32;
      v68 = v32;
      *buf = v32;
      v33 = *MEMORY[0x29EDBEB60];
      v34 = strlen(*MEMORY[0x29EDBEB60]);
      if (v34 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v35 = v34;
      if (v34 >= 0x17)
      {
        if ((v34 | 7) == 0x17)
        {
          v37 = 25;
        }

        else
        {
          v37 = (v34 | 7) + 1;
        }

        v36 = operator new(v37);
        *&__dst[8] = v35;
        *&__dst[16] = v37 | 0x8000000000000000;
        *__dst = v36;
      }

      else
      {
        __dst[23] = v34;
        v36 = __dst;
        if (!v34)
        {
LABEL_66:
          v36[v35] = 0;
          v38 = *MEMORY[0x29EDBF750];
          v39 = strlen(*MEMORY[0x29EDBF750]);
          if (v39 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v40 = v39;
          if (v39 >= 0x17)
          {
            if ((v39 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v39 | 7) + 1;
            }

            v41 = operator new(v42);
            *(&v61 + 1) = v40;
            v62 = v42 | 0x8000000000000000;
            *&v61 = v41;
          }

          else
          {
            HIBYTE(v62) = v39;
            v41 = &v61;
            if (!v39)
            {
LABEL_75:
              v41[v40] = 0;
              Timestamp::Timestamp(v57);
              Timestamp::asString(v57, 0, 9, __p);
              v56 = 0;
              LOBYTE(v55) = 0;
              ResetInfo::ResetInfo(buf, __dst, &v61, v63, __p, 7, &v55);
              if (v60 < 0)
              {
                operator delete(__p[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
LABEL_77:
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
                if ((SHIBYTE(v62) & 0x80000000) == 0)
                {
                  goto LABEL_77;
                }
              }

              operator delete(v61);
              if ((__dst[23] & 0x80000000) == 0)
              {
LABEL_78:
                v43 = v2[13];
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_83;
                }

LABEL_102:
                if (*(a1 + 63) < 0)
                {
                  v10 = *v10;
                }

                v46 = *(a1 + 68);
                *__dst = 136315394;
                *&__dst[4] = v10;
                *&__dst[12] = 1024;
                *&__dst[14] = v46;
                _os_log_error_impl(&dword_296FF7000, v43, OS_LOG_TYPE_ERROR, "PCI event: %s, sleeping for %u ms, then requesting Baseband reset", __dst, 0x12u);
LABEL_83:
                usleep(1000 * *(a1 + 68));
                ResetInfo::ResetInfo(&v48, buf);
                v47 = 0;
                BootModule::requestReset(v2, &v48, &v47);
                if (v54 < 0)
                {
                  operator delete(v53);
                  if ((v52 & 0x80000000) == 0)
                  {
LABEL_85:
                    if ((v50 & 0x80000000) == 0)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_95;
                  }
                }

                else if ((v52 & 0x80000000) == 0)
                {
                  goto LABEL_85;
                }

                operator delete(v51);
                if ((v50 & 0x80000000) == 0)
                {
LABEL_86:
                  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_96;
                }

LABEL_95:
                operator delete(v49);
                if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_87:
                  if ((SHIBYTE(v72) & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_97;
                }

LABEL_96:
                operator delete(v48.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v72) & 0x80000000) == 0)
                {
LABEL_88:
                  if ((SBYTE7(v70) & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                operator delete(*(&v71 + 1));
                if ((SBYTE7(v70) & 0x80000000) == 0)
                {
LABEL_89:
                  if ((SHIBYTE(v68) & 0x80000000) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                operator delete(v69);
                if ((SHIBYTE(v68) & 0x80000000) == 0)
                {
LABEL_90:
                  if ((SBYTE7(v67) & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_100;
                }

LABEL_99:
                operator delete(*(&v67 + 1));
                if ((SBYTE7(v67) & 0x80000000) == 0)
                {
LABEL_91:
                  if ((SHIBYTE(v64) & 0x80000000) == 0)
                  {
                    goto LABEL_92;
                  }

LABEL_101:
                  operator delete(v63[0]);
                  v45 = *MEMORY[0x29EDCA608];
                  return;
                }

LABEL_100:
                operator delete(*buf);
                if ((SHIBYTE(v64) & 0x80000000) == 0)
                {
                  goto LABEL_92;
                }

                goto LABEL_101;
              }

LABEL_82:
              operator delete(*__dst);
              v43 = v2[13];
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_83;
              }

              goto LABEL_102;
            }
          }

          memmove(v41, v38, v40);
          goto LABEL_75;
        }
      }

      memmove(v36, v33, v35);
      goto LABEL_66;
    }

    v19 = SHIBYTE(v64);
    if ((SHIBYTE(v64) & 0x8000000000000000) != 0)
    {
      v19 = v63[1];
      v22 = (v64 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v22 - v63[1] < 0x1F)
      {
        v20 = v63[1] + 31;
        if ((0x7FFFFFFFFFFFFFF7 - (v64 & 0x7FFFFFFFFFFFFFFFLL)) < v63[1] - v22 + 31)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = v63[0];
        if (v22 > 0x3FFFFFFFFFFFFFF2)
        {
          v26 = 0;
          v25 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
          v27 = operator new(v25);
          v28 = v27;
          if (v19)
          {
            memmove(v27, v21, v19);
          }

          qmemcpy(v28 + v19, " [likely caused by bbctl reset]", 31);
          if (!v26)
          {
            operator delete(v21);
          }

          v63[1] = v20;
          v64 = v25 | 0x8000000000000000;
          v63[0] = v28;
          v29 = &v20[v28];
          goto LABEL_56;
        }

LABEL_39:
        v23 = 2 * v22;
        if (v20 > 2 * v22)
        {
          v23 = v20;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v25 = v24;
        }

        else
        {
          v25 = 23;
        }

        v26 = v22 == 22;
        goto LABEL_48;
      }

      v30 = v63[0];
      qmemcpy(v63[0] + v63[1], " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      v63[1] = (v19 + 31);
    }

    else
    {
      if (SHIBYTE(v64) < 0x17)
      {
        v20 = (SHIBYTE(v64) + 31);
        v21 = v63;
        v22 = 22;
        goto LABEL_39;
      }

      v30 = v63;
      qmemcpy(v63 + SHIBYTE(v64), " [likely caused by bbctl reset]", 31);
      v31 = v19 + 31;
      HIBYTE(v64) = (v19 + 31) & 0x7F;
    }

    v29 = v30 + v31;
LABEL_56:
    *v29 = 0;
    goto LABEL_57;
  }

  v3 = v2[13];
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
LABEL_92:
    v44 = *MEMORY[0x29EDCA608];
    return;
  }

  v4 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v4 = *v4;
  }

  *buf = 136315138;
  *&buf[4] = v4;
  _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I PCI event: %s", buf, 0xCu);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_297087B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v2 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v2;
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SharedData::setPreference<char const*>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(v10, v4);
  v5 = v10[0];
  v6 = *MEMORY[0x29EDB8ED8];
  value = 0;
  ctu::cf::convert_copy(&value, "", 0x8000100, v6, v7);
  v8 = value;
  v10[1] = value;
  if (value)
  {
    v9 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v5, value, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
    CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9);
    CFRelease(v8);
  }

  MEMORY[0x29C26B130](v10);
  os_unfair_lock_unlock((a1 + 40));
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v6, v4);
  v5 = (**a1)(a1, v6);
  if (v5)
  {
    ctu::cf::assign();
    CFRelease(v5);
  }

  MEMORY[0x29C26B130](&v6);
  os_unfair_lock_unlock((a1 + 40));
}

_WORD *BootModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

char *BootModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  result = operator new(3uLL);
  a1[1] = result + 3;
  a1[2] = result + 3;
  *result = 256;
  result[2] = 3;
  *a1 = result;
  return result;
}

void BootModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 == 3)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36;
    v8[3] = &__block_descriptor_tmp_43;
    v7 = *a3;
    v8[4] = a1;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v8);
    if (object)
    {
      dispatch_group_leave(object);
      v5 = object;
      if (object)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
      v12[3] = &__block_descriptor_tmp_24_2;
      v4 = *a3;
      v12[4] = a1;
      v13 = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v13);
      }

      ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v12);
      if (!v13)
      {
        return;
      }

      dispatch_group_leave(v13);
      v5 = v13;
      if (!v13)
      {
        return;
      }

LABEL_18:
      dispatch_release(v5);
      return;
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25;
    v10[3] = &__block_descriptor_tmp_35;
    v6 = *a3;
    v10[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v10);
    if (group)
    {
      dispatch_group_leave(group);
      v5 = group;
      if (group)
      {
        goto LABEL_18;
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown prepare", &buf, 2u);
  }

  v4 = *(v2 + 576);
  if (v4 <= 8)
  {
    v5 = 1 << v4;
    if ((v5 & 0x1E1) != 0)
    {
      (*(*v2 + 104))(v2, 8);
      v6 = *(v2 + 176);
      *(v2 + 176) = 0;
      if (v6)
      {
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }

    else if ((v5 & 0xE) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(v7);
      }

      v8 = *(v2 + 176);
      *(v2 + 176) = v7;
      if (v8)
      {
        dispatch_group_leave(v8);
        dispatch_release(v8);
      }

      v9 = *(v2 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Holding shutdown request session", &buf, 2u);
      }
    }

    else
    {
      (*(*v2 + 104))(v2, 7);
    }
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v20, v2);
  if (v20)
  {
    Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
    v10 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v10 + 1) + 16))(*(&v10 + 1));
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
      if (v10)
      {
LABEL_19:
        Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
        ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
        size = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = ScaledTime;
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
          ScaledTime = v13;
        }

        v14 = ScaledTime / 1000;
        goto LABEL_25;
      }
    }

    else if (v10)
    {
      goto LABEL_19;
    }

    v14 = 240000;
LABEL_25:
    v15 = v20;
    v16 = operator new(0x38uLL);
    strcpy(v16, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v17 = *(v15 + 48);
    std::string::__init_copy_ctor_external(&buf, v16, 0x35uLL);
    (*(*v17 + 24))(&object, v17, &buf, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    operator delete(v16);
  }

  if (notify_is_valid_token(*(v2 + 600)))
  {
    notify_cancel(*(v2 + 600));
  }

  v18 = v21;
  if (v21)
  {
    if (!atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_297088460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29708847C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297088490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v18);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_2970884C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2970884D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2970884EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3 || (v4 = v2[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v2[13];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v2[13];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Shutdown baseband", buf, 2u);
  }

LABEL_6:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26;
  aBlock[3] = &__block_descriptor_tmp_32_1;
  v8 = *(a1 + 40);
  aBlock[4] = v2;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = v4;
  v12 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  (*(*v2 + 120))(v2, &v13);
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2970886DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26(void *a1)
{
  v2 = a1[7];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v37 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[6])
  {
LABEL_52:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }

    return;
  }

  v35 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v35 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF420], v5, v7);
  v8 = *MEMORY[0x29EDBF460];
  v9 = strlen(*MEMORY[0x29EDBF460]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v9 | 7) + 1;
    }

    v11 = operator new(v13);
    __dst[1] = v10;
    v34 = v13 | 0x8000000000000000;
    __dst[0] = v11;
LABEL_15:
    memmove(v11, v8, v10);
    *(v10 + v11) = 0;
    v12 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v34) = v9;
  v11 = __dst;
  if (v9)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v12 = v35;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_16:
  v14 = CFGetTypeID(v12);
  if (v14 == CFDictionaryGetTypeID())
  {
    cf = v12;
    CFRetain(v12);
    goto LABEL_19;
  }

LABEL_18:
  cf = 0;
LABEL_19:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28_3;
  v15 = a1[5];
  aBlock[4] = v3;
  group = v15;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(group);
  }

  v16 = a1[7];
  v29 = a1[6];
  v30 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v31);
  if (v31)
  {
    _Block_release(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = *MEMORY[0x29EDBEBF0];
  v18 = strlen(*MEMORY[0x29EDBEBF0]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v20 = operator new(v21);
    __p[1] = v19;
    v26 = v21 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_37;
  }

  HIBYTE(v26) = v18;
  v20 = __p;
  if (v18)
  {
LABEL_37:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  v23 = 0;
  v24 = 0;
  Service::broadcastEvent(v3, __p, &v24, &v23);
  if (v23)
  {
    _Block_release(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v4 = v37;
  if (v37)
  {
    goto LABEL_52;
  }
}

void sub_297088AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, std::__shared_weak_count *a25, void *a26, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
    v29 = a25;
    if (!a25)
    {
LABEL_5:
      v30 = group;
      if (!group)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a25;
    if (!a25)
    {
      goto LABEL_5;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  v30 = group;
  if (!group)
  {
    goto LABEL_11;
  }

LABEL_9:
  dispatch_group_leave(v30);
  if (group)
  {
    dispatch_release(group);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 80);
    _Unwind_Resume(a1);
  }

LABEL_11:
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[6];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3;
        v7[3] = &__block_descriptor_tmp_27;
        v7[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v6);
  v2 = v6;
  if (v6)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v8, v3, 0x35uLL);
    (*(*v4 + 32))(v4, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
  }

  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_297088E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_297088E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v18, v1);
  v2 = v18;
  if (v18)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v20, v3, 0x33uLL);
    (*(*v4 + 32))(v4, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
    v5 = v18;
    v6 = operator new(0x38uLL);
    strcpy(v6, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v7 = *(v5 + 48);
    std::string::__init_copy_ctor_external(&v20, v6, 0x35uLL);
    (*(*v7 + 32))(v7, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v6);
  }

  v8 = v1[73];
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = v1[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      if (v9)
      {
        v11 = "successful";
      }

      LODWORD(v20.__r_.__value_.__l.__data_) = 136315138;
      *(v20.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (forced) %s", &v20, 0xCu);
    }
  }

  v12 = v1[18];
  v1[17] = 0;
  v1[18] = 0;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v1[44];
  v1[43] = 0;
  v1[44] = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v1[74];
  v1[73] = 0;
  v1[74] = 0;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v1[65];
  if (v15)
  {
    dispatch_async(v15, &__block_literal_global_2);
  }

  v16 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *MEMORY[0x29EDCA608];
}