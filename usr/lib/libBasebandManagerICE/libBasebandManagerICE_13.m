void sub_29751BB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
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
    result = MEMORY[0x29C271D30](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
            MEMORY[0x29C271CA0](&v80);
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

void sub_29751C410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, void *__p)
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
        result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 1, v10);
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
        result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 1, v30);
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
        result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 3, v22);
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
        result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 4);
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
    result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 2, v15);
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
    result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 3, v17);
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
  result = MEMORY[0x29C271D60](v8, *(a1 + 2) + *(a1 + 1), 3, v25);
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
    result = MEMORY[0x29C271D60](a3, *(a1 + 16) + *(a1 + 8), 4, a2);
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
    MEMORY[0x29C271CA0](v93);
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

void sub_29751D424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

const char *asString(_DWORD *a1)
{
  v1 = "Unknown";
  if (*a1 == 1)
  {
    v1 = "PoweredOn";
  }

  if (*a1)
  {
    return v1;
  }

  else
  {
    return "LowPower";
  }
}

const char *asString(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE6B958[v1];
  }
}

void SystemState::SystemState(SystemState *this)
{
  *this = 0x200000001;
  *(this + 2) = -536870144;
}

{
  *this = 0x200000001;
  *(this + 2) = -536870144;
}

uint64_t SystemState::acceptSystemNotification(SystemState *this, int a2)
{
  v2 = 0;
  HIDWORD(v4) = a2 + 536870288;
  LODWORD(v4) = a2 + 536870288;
  v3 = v4 >> 4;
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (*this == 1)
      {
        *(this + 1) = 0;
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 == 1)
    {
      if (*this == 1)
      {
        if (*(this + 1))
        {
          *(this + 1) = 1;
        }

        *this = 0;
        goto LABEL_21;
      }

      return 0;
    }

    return v2;
  }

  if (v3 != 2)
  {
    if (v3 == 9)
    {
      if (!*this && *(this + 1) == 2)
      {
        *this = 1;
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 == 11)
    {
      if (!*this && *(this + 1) != 2)
      {
        *(this + 1) = 2;
LABEL_21:
        *(this + 2) = a2;
        return 1;
      }

      return 0;
    }

    return v2;
  }

  if (!*(this + 1))
  {
    *this = 0x200000001;
    goto LABEL_21;
  }

  return 0;
}

uint64_t __cxx_global_var_init_2()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

atomic_ullong *CellularCertClient::create@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x18uLL);
  ctu::OsLogLogger::OsLogLogger(v3, "com.apple.telephony.abm", "cellularcert.client");
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;

  return std::shared_ptr<CellularCertClient>::shared_ptr[abi:ne200100]<CellularCertClient,0>(a1, v3);
}

void CellularCertClient::CellularCertClient(CellularCertClient *this)
{
  v1 = ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", "cellularcert.client");
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
}

{
  v1 = ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", "cellularcert.client");
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
}

void CellularCertClient::~CellularCertClient(os_log_t *this)
{
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Destroy client", v4, 2u);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x29C270D60](this);
}

{
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Destroy client", v4, 2u);
  }

  v3 = this[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x29C270D60](this);
}

void CellularCertClient::bootstrapTest(CellularCertClient *this@<X0>, uint64_t a2@<X8>)
{
  v4 = abm::kCommandCellularCertBootstrap[0];
  v5 = xpc_null_create();
  v6 = v5;
  CellularCertClient::sendCommandInternal(this, v4, &v6, a2);
  xpc_release(v5);
}

void CellularCertClient::sendCommandInternal(uint64_t a1@<X0>, const char *a2@<X1>, xpc_object_t *a3@<X2>, uint64_t a4@<X8>)
{
  v69 = *MEMORY[0x29EDCA608];
  v58 = 0;
  v59 = &v58;
  v60 = 0x4802000000;
  v61 = __Block_byref_object_copy__1;
  v62 = __Block_byref_object_dispose__1;
  v63 = 0xAAAAAAAAE020E002;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3002000000;
  v55 = __Block_byref_object_copy__3;
  v56 = __Block_byref_object_dispose__4;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v8 = xpc_int64_create(-534716414);
  v9 = v8;
  v10 = MEMORY[0x29EDCAA00];
  if (v8)
  {
    v57 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v57 = v9;
    if (!v9)
    {
      v11 = xpc_null_create();
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v9) == v10)
  {
    xpc_retain(v9);
    goto LABEL_9;
  }

  v11 = xpc_null_create();
LABEL_8:
  v57 = v11;
LABEL_9:
  xpc_release(v9);
  memset(object, 170, sizeof(object));
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    object[0] = v12;
  }

  else
  {
    v13 = xpc_null_create();
    object[0] = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_16;
    }
  }

  if (MEMORY[0x29C272BA0](v13) == v10)
  {
    xpc_retain(v13);
    v15 = v13;
    goto LABEL_17;
  }

  v14 = xpc_null_create();
LABEL_16:
  v15 = v13;
  object[0] = v14;
  v13 = v14;
LABEL_17:
  xpc_release(v15);
  v16 = xpc_string_create("cellularcertd");
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDC6FB8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_string_create("com.apple.abm.cellularcert");
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDC6FC0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create("ABMCellularCertServerReady");
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDC6FC8], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_string_create("CellularCertClient");
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDC6FB0], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  TelephonyXPC::Client::create();
  xpc_release(object[0]);
  object[0] = 0;
  v24 = dispatch_group_create();
  v25 = v24;
  if (v24)
  {
    dispatch_retain(v24);
    dispatch_group_enter(v25);
  }

  v26 = *(a1 + 8);
  v27 = *(a1 + 16);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN18CellularCertClient19sendCommandInternalEPKcN3xpc4dictE_block_invoke;
  aBlock[3] = &unk_2A1E45B40;
  aBlock[6] = v26;
  v47 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  group = v25;
  if (v25)
  {
    dispatch_retain(v25);
    dispatch_group_enter(group);
  }

  aBlock[4] = &v58;
  aBlock[5] = &v52;
  v28 = _Block_copy(aBlock);
  global_queue = dispatch_get_global_queue(0, 0);
  v30 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v49 = v28;
  v50 = v30;
  v31 = strlen(a2);
  if (v31 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v35 = 25;
    }

    else
    {
      v35 = (v31 | 7) + 1;
    }

    p_dst = operator new(v35);
    *(&__dst + 1) = v32;
    v68 = v35 | 0x8000000000000000;
    *&__dst = p_dst;
LABEL_44:
    memcpy(p_dst, a2, v32);
    *(p_dst + v32) = 0;
    v34 = v49;
    if (!v49)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  HIBYTE(v68) = v31;
  p_dst = &__dst;
  if (v31)
  {
    goto LABEL_44;
  }

  LOBYTE(__dst) = 0;
  v34 = v49;
  if (v49)
  {
LABEL_45:
    v34 = _Block_copy(v34);
  }

LABEL_46:
  v44 = v34;
  v45 = v50;
  if (v50)
  {
    dispatch_retain(v50);
  }

  v43 = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    v43 = xpc_null_create();
  }

  TelephonyXPC::Command::create();
  xpc_release(v43);
  if (v45)
  {
    dispatch_release(v45);
  }

  if (v44)
  {
    _Block_release(v44);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(__dst);
  }

  atomic_fetch_add_explicit(0xAAAAAAAAAAAAAAB2, 1uLL, memory_order_relaxed);
  TelephonyXPC::Client::perform();
  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (!atomic_fetch_add(0xAAAAAAAAAAAAAAB2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(MEMORY[0xAAAAAAAAAAAAAAAA] + 16))(0xAAAAAAAAAAAAAAAALL);
    std::__shared_weak_count::__release_weak(0xAAAAAAAAAAAAAAAALL);
  }

  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v25)
  {
    dispatch_group_leave(v25);
    dispatch_release(v25);
  }

  v36 = *a1;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__dst) = 136315138;
    *(&__dst + 4) = a2;
    _os_log_impl(&dword_297476000, v36, OS_LOG_TYPE_DEFAULT, "#I Sent command '%s' to cellularcert daemon", &__dst, 0xCu);
  }

  if (dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL))
  {
    v37 = operator new(0x30uLL);
    strcpy(v37, "Timeout waiting for response from server");
    v38 = v59;
    *(v59 + 10) = -534716413;
    if (*(v38 + 71) < 0)
    {
      v39 = v37;
      operator delete(v38[6]);
      v37 = v39;
    }

    v38[6] = v37;
    v38[7] = 40;
    v38[8] = 0x8000000000000030;
  }

  *a4 = *(v59 + 10) == 0;
  v40 = v53[5];
  *(a4 + 8) = v40;
  if (!v40)
  {
    *(a4 + 8) = xpc_null_create();
    if (!v25)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  xpc_retain(v40);
  if (v25)
  {
LABEL_82:
    dispatch_release(v25);
  }

LABEL_83:
  v41 = object[2];
  if (object[2] && !atomic_fetch_add(object[2] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  _Block_object_dispose(&v52, 8);
  xpc_release(v57);
  _Block_object_dispose(&v58, 8);
  if (SHIBYTE(v66) < 0)
  {
    operator delete(v64);
  }

  v42 = *MEMORY[0x29EDCA608];
}

void sub_29751E054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, dispatch_group_t group, char a25, uint64_t a26, xpc_object_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void CellularCertClient::shutdownTest(CellularCertClient *this@<X0>, uint64_t a2@<X8>)
{
  v4 = abm::kCommandCellularCertShutdown[0];
  v5 = xpc_null_create();
  v6 = v5;
  CellularCertClient::sendCommandInternal(this, v4, &v6, a2);
  xpc_release(v5);
}

void CellularCertClient::configureTest(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = abm::kCommandCellularCertConfigure[0];
  v6 = *a2;
  v7 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
    v7 = v6;
  }

  CellularCertClient::sendCommandInternal(a1, v5, &v7, a3);
  xpc_release(v6);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u32[2] = a2[2].n128_u32[2];
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

xpc_object_t __Block_byref_object_copy__3(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void ___ZN18CellularCertClient19sendCommandInternalEPKcN3xpc4dictE_block_invoke(void *a1, uint64_t a2, xpc_object_t *a3)
{
  v4 = a1[7];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[6])
      {
        v9 = *(a1[4] + 8);
        *(v9 + 40) = *a2;
        if (v9 + 40 != a2)
        {
          v10 = *(a2 + 31);
          if (*(v9 + 71) < 0)
          {
            if (v10 >= 0)
            {
              v12 = (a2 + 8);
            }

            else
            {
              v12 = *(a2 + 8);
            }

            if (v10 >= 0)
            {
              v13 = *(a2 + 31);
            }

            else
            {
              v13 = *(a2 + 16);
            }

            std::string::__assign_no_alias<false>((v9 + 48), v12, v13);
          }

          else if ((*(a2 + 31) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>((v9 + 48), *(a2 + 8), *(a2 + 16));
          }

          else
          {
            v11 = *(a2 + 8);
            *(v9 + 64) = *(a2 + 24);
            *(v9 + 48) = v11;
          }
        }

        v14 = *(a1[5] + 8);
        v15 = *a3;
        if (v15)
        {
          xpc_retain(v15);
        }

        else
        {
          v15 = xpc_null_create();
        }

        v16 = *(v14 + 40);
        *(v14 + 40) = v15;
        xpc_release(v16);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void __copy_helper_block_e8_48c43_ZTSNSt3__18weak_ptrI18CellularCertClientEE64c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[8];
  a1[8] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[8];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_48c43_ZTSNSt3__18weak_ptrI18CellularCertClientEE64c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 64);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

atomic_ullong *std::shared_ptr<CellularCertClient>::shared_ptr[abi:ne200100]<CellularCertClient,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E45B80;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = *(a2 + 16);
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *(a2 + 8) = a2;
        *(a2 + 16) = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_29751E79C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<CellularCertClient>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<CellularCertClient *,std::shared_ptr<CellularCertClient>::__shared_ptr_default_delete<CellularCertClient,CellularCertClient>,std::allocator<CellularCertClient>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<CellularCertClient *,std::shared_ptr<CellularCertClient>::__shared_ptr_default_delete<CellularCertClient,CellularCertClient>,std::allocator<CellularCertClient>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Destroy client", v5, 2u);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = MEMORY[0x29C270D60](v1);
    operator delete(v4);
  }
}

uint64_t std::__shared_ptr_pointer<CellularCertClient *,std::shared_ptr<CellularCertClient>::__shared_ptr_default_delete<CellularCertClient,CellularCertClient>,std::allocator<CellularCertClient>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A09A3)
  {
    if (((v2 & 0x80000002976A09A3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A09A3))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A09A3 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<CellularCertClient>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Destroy client", v6, 2u);
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = MEMORY[0x29C270D60](v1);
    operator delete(v5);
    return v2;
  }

  return result;
}

void ARIXpcServer::create(uint64_t *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  *v3 = &unk_2A1E45BD0;
  ctu::OsLogContext::OsLogContext(block, "com.apple.telephony.abm", "ipc.xpc.ari");
  ctu::SharedLoggable<ARIXpcServer,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3 + 1);
  ctu::OsLogContext::~OsLogContext(block);
  *v3 = &unk_2A1E45BD0;
  v3[6] = xpc_null_create();
  *a1 = v3;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E45C80;
  v4[2] = 0;
  v4[3] = v3;
  a1[1] = v4;
  v6 = v3[2];
  if (!v6)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    v3[1] = v3;
    v3[2] = v4;
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    v3[1] = v3;
    v3[2] = v4;
    v7 = v4;
    std::__shared_weak_count::__release_weak(v6);
    v4 = v7;
    if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      v8 = v4;
      (*(*v4 + 16))();
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_7:
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 + 8;
  v14 = *a1;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI12ARIXpcServerE20execute_wrapped_syncIZNS1_6createEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_5;
  block[4] = v11;
  block[5] = &v14;
  v12 = *(v9 + 24);
  if (*(v9 + 32))
  {
    dispatch_async_and_wait(v12, block);
    v13 = v15;
    if (!v15)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v12, block);
    v13 = v15;
    if (!v15)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_29751EBB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<ARIXpcServer> ctu::SharedSynchronizable<ARIXpcServer>::make_shared_ptr<ARIXpcServer>(ARIXpcServer*)::{lambda(ARIXpcServer*)#1}::operator() const(ARIXpcServer*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29751EBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogContext::~OsLogContext(va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ARIXpcServer::ARIXpcServer(ARIXpcServer *this)
{
  *this = &unk_2A1E45BD0;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(v3, "com.apple.telephony.abm", "ipc.xpc.ari");
  ctu::SharedLoggable<ARIXpcServer,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2);
  ctu::OsLogContext::~OsLogContext(v3);
  *this = &unk_2A1E45BD0;
  *(this + 6) = xpc_null_create();
}

{
  *this = &unk_2A1E45BD0;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(v3, "com.apple.telephony.abm", "ipc.xpc.ari");
  ctu::SharedLoggable<ARIXpcServer,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2);
  ctu::OsLogContext::~OsLogContext(v3);
  *this = &unk_2A1E45BD0;
  *(this + 6) = xpc_null_create();
}

void *ctu::SharedLoggable<ARIXpcServer,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1)
{
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create_with_target_V2("ipc.xpc.ari", initially_inactive, 0);
  dispatch_set_qos_class_floor(v3, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v3);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
    a1[3] = 0;
    dispatch_release(v3);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 4, v5);
  MEMORY[0x29C270D60](v5);
  return a1;
}

void *ARIXpcServer::initialize_sync(ARIXpcServer *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297476000, v1, OS_LOG_TYPE_DEFAULT, "#I XPC Listener: Setting up entitlement checker", v4, 2u);
  }

  v5[0] = &unk_2A1E45CD0;
  v5[1] = sValidateConnection;
  v6 = v5;
  AriHostRt::RegisterEntitlementChecker();
  result = v6;
  if (v6 == v5)
  {
    result = (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    result = (*(*v6 + 40))();
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29751EF90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(void *)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t sValidateConnection(void *a1)
{
  if (a1)
  {
    v1 = a1;
    xpc_retain(a1);
    xdict = v1;
  }

  else
  {
    v1 = xpc_null_create();
    xdict = v1;
    if (!v1)
    {
      v2 = xpc_null_create();
      v1 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v1) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v1);
    goto LABEL_9;
  }

  v2 = xpc_null_create();
LABEL_8:
  xdict = v2;
LABEL_9:
  xpc_release(v1);
  v3 = xdict;
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  pid = xpc_connection_get_pid(remote_connection);
  if (getpid() == pid)
  {
    v6 = 1;
  }

  else
  {
    v6 = hasBasebandEntitlement(&xdict, 0);
    v3 = xdict;
  }

  xpc_release(v3);
  return v6;
}

void std::__shared_ptr_pointer<ARIXpcServer *,std::shared_ptr<ARIXpcServer> ctu::SharedSynchronizable<ARIXpcServer>::make_shared_ptr<ARIXpcServer>(ARIXpcServer*)::{lambda(ARIXpcServer *)#1},std::allocator<ARIXpcServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ARIXpcServer *,std::shared_ptr<ARIXpcServer> ctu::SharedSynchronizable<ARIXpcServer>::make_shared_ptr<ARIXpcServer>(ARIXpcServer*)::{lambda(ARIXpcServer *)#1},std::allocator<ARIXpcServer>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI12ARIXpcServerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI12ARIXpcServerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI12ARIXpcServerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI12ARIXpcServerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ARIXpcServer> ctu::SharedSynchronizable<ARIXpcServer>::make_shared_ptr<ARIXpcServer>(ARIXpcServer*)::{lambda(ARIXpcServer*)#1}::operator() const(ARIXpcServer*)::{lambda(void *)#1}::__invoke(char *a1)
{
  if (a1)
  {
    *a1 = &unk_2A1E45BD0;
    xpc_release(*(a1 + 6));
    *(a1 + 6) = 0;
    MEMORY[0x29C270D60](a1 + 40);
    v2 = *(a1 + 4);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 2);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void *std::__function::__func<BOOL (*)(void *),std::allocator<BOOL (*)(void *)>,BOOL ()(void *)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E45CD0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(void *),std::allocator<BOOL (*)(void *)>,BOOL ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E45CD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(void *),std::allocator<BOOL (*)(void *)>,BOOL ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002976A0C2BLL)
  {
    return a1 + 8;
  }

  if (((v2 & 0x80000002976A0C2BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A0C2BLL))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A0C2BLL & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<BOOL ()(void *)>::~function(uint64_t a1)
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

void BootStats::BootStats(BootStats *this)
{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E49358;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E45D80;
}

{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E49358;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E45D80;
}

void sub_29751F458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29751F544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void BootStats::~BootStats(BootStats *this)
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

  operator delete(this);
}

double BootStats::createInternal@<D0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  v7 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3 + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v8);
  *v3 = &unk_2A1E49358;
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  *v3 = &unk_2A1E45D80;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void sub_29751F75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext((v17 - 32));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t BootStats::init(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  return 1;
}

void BootStats::updateData(uint64_t a1@<X0>, CFDictionaryRef *a2@<X1>, xpc_object_t *a3@<X2>, __CFDictionary **a4@<X8>)
{
  v25 = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  if (*a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, *a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!MutableCopy)
    {
      goto LABEL_5;
    }
  }

  v25 = MutableCopy;
LABEL_5:
  v10 = *MEMORY[0x29EDBF490];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF490]))
  {
    value = xpc_dictionary_get_value(*a3, v10);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v10);
    LODWORD(v12) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C270E70](&v26);
    v12 = v12;
    MEMORY[0x29C270ED0](object);
  }

  v13 = *MEMORY[0x29EDBF4F0];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF4F0]))
  {
    v14 = xpc_dictionary_get_value(*a3, v13);
    object[0] = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v13);
    LODWORD(v15) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C270E70](&v26);
    v15 = v15;
    MEMORY[0x29C270ED0](object);
  }

  v16 = MEMORY[0x29EDBE920];
  if (v12 && v15 && v15 >= v12)
  {
    v18 = difftime(v15, v12);
    v19 = *(a1 + 56);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ctu::cf::dict_adapter::dict_adapter(object, *a2);
  ctu::cf::MakeCFString::MakeCFString(&v26, *v16);
  LODWORD(v18) = ctu::cf::map_adapter::getInt(object, v26);
  MEMORY[0x29C270E70](&v26);
  v18 = v18;
  MEMORY[0x29C270ED0](object);
  v19 = *(a1 + 56);
  if (!v19)
  {
LABEL_21:
    v18 = 0;
    v15 = 0;
    *(a1 + 56) = v12;
    v19 = v12;
  }

LABEL_22:
  ctu::cf::update<char const*,long>(MutableCopy, *MEMORY[0x29EDBF408], v19, v8, v17);
  ctu::cf::update<char const*,long>(MutableCopy, v10, v12, v8, v20);
  ctu::cf::update<char const*,long>(MutableCopy, v13, v15, v8, v21);
  ctu::cf::update<char const*,long>(MutableCopy, *v16, v18, v8, v22);
  if (MutableCopy)
  {
    v23 = CFGetTypeID(MutableCopy);
    if (v23 == CFDictionaryGetTypeID())
    {
      *a4 = MutableCopy;
      CFRetain(MutableCopy);
    }

    else
    {
      *a4 = 0;
    }

    CFRelease(MutableCopy);
  }

  else
  {
    *a4 = 0;
  }
}

void sub_29751FAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, char a12)
{
  MEMORY[0x29C270E70](&a12);
  MEMORY[0x29C270ED0](&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

void sub_29751FB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E45DC8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_29751FC80(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ctu::cf::update<char const*,long>(__CFDictionary *a1, const __CFString **a2, const void *a3, const __CFAllocator *a4, const __CFAllocator *a5)
{
  valuePtr = 0;
  ctu::cf::convert_copy(&valuePtr, a2, 0x8000100, a4, a5);
  v8 = valuePtr;
  valuePtr = a3;
  v9 = CFNumberCreate(a4, kCFNumberLongType, &valuePtr);
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (!v9)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CFDictionarySetValue(a1, v8, v9);
  }

  CFRelease(v10);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v12;
}

void sub_29751FE3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_29751FE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t TraceFilter::determineFilterAction(std::string *a1)
{
  v74 = *MEMORY[0x29EDCA608];
  std::string::__assign_external(a1, *MEMORY[0x29EDBECB0]);
  if (TelephonyUtilIsInternalBuild())
  {
    v66 = -1431655766;
    v2 = *MEMORY[0x29EDBEB40];
    v3 = strlen(*MEMORY[0x29EDBEB40]);
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      if ((v3 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v3 | 7) + 1;
      }

      p_dst = operator new(v8);
      *(&__dst + 1) = v4;
      v69 = v8 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v69) = v3;
      p_dst = &__dst;
      if (!v3)
      {
LABEL_12:
        *(p_dst + v4) = 0;
        memset(&__p, 0, 24);
        if (prop::logfilter::get(&__dst, &__p))
        {
          v9 = util::convert<int>(&__p, &v66, 0);
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        operator delete(*&__p.st_dev);
LABEL_17:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(__dst);
          if (v9)
          {
LABEL_19:
            v10 = v66;
            v67.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
            v11 = *MEMORY[0x29EDBFC08];
            v12 = strlen(*MEMORY[0x29EDBFC08]);
            if (v12 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v13 = v12;
            if (v12 >= 0x17)
            {
              if ((v12 | 7) == 0x17)
              {
                v22 = 25;
              }

              else
              {
                v22 = (v12 | 7) + 1;
              }

              v14 = operator new(v22);
              *(&__dst + 1) = v13;
              v69 = v22 | 0x8000000000000000;
              *&__dst = v14;
            }

            else
            {
              HIBYTE(v69) = v12;
              v14 = &__dst;
              if (!v12)
              {
                LOBYTE(__dst) = 0;
                v15 = SHIBYTE(v69);
                if ((SHIBYTE(v69) & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_34;
              }
            }

            memmove(v14, v11, v13);
            *(v14 + v13) = 0;
            v15 = SHIBYTE(v69);
            if ((SHIBYTE(v69) & 0x80000000) == 0)
            {
LABEL_23:
              if (!v15)
              {
                goto LABEL_45;
              }

              memset(&__p, 0, 64);
              v16 = statvfs(&__dst, &__p);
              st_ino = __p.st_ino;
              st_rdev = __p.st_rdev;
              if ((v15 & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

LABEL_34:
            if (!*(&__dst + 1))
            {
              operator delete(__dst);
              goto LABEL_45;
            }

            memset(&__p, 0, 64);
            v16 = statvfs(__dst, &__p);
            st_ino = __p.st_ino;
            st_rdev = __p.st_rdev;
            if ((v15 & 0x80000000) == 0)
            {
LABEL_25:
              if (v16)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }

LABEL_36:
            v23 = v16;
            operator delete(__dst);
            if (v23)
            {
              goto LABEL_45;
            }

LABEL_37:
            v24 = (st_ino * st_rdev) >> 20;
            if ((v10 & 0x80000000) == 0 && v24 <= v10)
            {
              std::string::__assign_external(&v67, *MEMORY[0x29EDBECA8]);
            }

            if ((atomic_load_explicit(&qword_2A18CB1B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB1B8))
            {
              qword_2A18CB1C0 = 0;
              qword_2A18CB1C8 = 0;
              __cxa_guard_release(&qword_2A18CB1B8);
            }

            if (_MergedGlobals_3 != -1)
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_2);
              v25 = qword_2A18CB1C8;
              if (!os_log_type_enabled(qword_2A18CB1C8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              goto LABEL_43;
            }

            v25 = qword_2A18CB1C8;
            if (os_log_type_enabled(qword_2A18CB1C8, OS_LOG_TYPE_DEFAULT))
            {
LABEL_43:
              __p.st_dev = 134217984;
              *&__p.st_mode = v24;
              _os_log_impl(&dword_297476000, v25, OS_LOG_TYPE_DEFAULT, "Free disk space = %lu MB", &__p, 0xCu);
            }

LABEL_45:
            size = v67.__r_.__value_.__l.__size_;
            v19 = v67.__r_.__value_.__r.__words[0];
            v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
LABEL_46:
            v65 = -1431655766;
            v26 = *MEMORY[0x29EDBEDE8];
            v27 = strlen(*MEMORY[0x29EDBEDE8]);
            if (v27 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v28 = v27;
            if (v27 >= 0x17)
            {
              if ((v27 | 7) == 0x17)
              {
                v30 = 25;
              }

              else
              {
                v30 = (v27 | 7) + 1;
              }

              v29 = operator new(v30);
              *(&__dst + 1) = v28;
              v69 = v30 | 0x8000000000000000;
              *&__dst = v29;
            }

            else
            {
              HIBYTE(v69) = v27;
              v29 = &__dst;
              if (!v27)
              {
LABEL_55:
                *(v29 + v28) = 0;
                memset(&__p, 0, 24);
                if (prop::logfilter::get(&__dst, &__p))
                {
                  v6 = util::convert<int>(&__p, &v65, 0);
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v6 = 0;
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                operator delete(*&__p.st_dev);
LABEL_60:
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__dst);
                  if (v6)
                  {
LABEL_62:
                    v31 = v65;
                    memset(&v64, 0, sizeof(v64));
                    if (v65 < 0)
                    {
                      v42 = 0;
                      v41 = 0;
                      v40 = 0;
                      if ((v21 & 0x80u) == 0)
                      {
                        v44 = v21;
                      }

                      else
                      {
                        v44 = size;
                      }

                      if (v44)
                      {
                        goto LABEL_147;
                      }

                      goto LABEL_144;
                    }

                    __dst = 0uLL;
                    v69 = 0;
                    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v32 = off_2A18CAFB8;
                    if (!off_2A18CAFB8)
                    {
                      SharedData::create_default_global(&__p.st_dev);
                      v33 = *&__p.st_dev;
                      *&__p.st_dev = 0;
                      __p.st_ino = 0;
                      v34 = *(&off_2A18CAFB8 + 1);
                      off_2A18CAFB8 = v33;
                      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v34->__on_zero_shared)(v34);
                        std::__shared_weak_count::__release_weak(v34);
                      }

                      v35 = __p.st_ino;
                      if (__p.st_ino && !atomic_fetch_add((__p.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v35->__on_zero_shared)(v35);
                        std::__shared_weak_count::__release_weak(v35);
                      }

                      v32 = off_2A18CAFB8;
                    }

                    v67.__r_.__value_.__r.__words[0] = v32;
                    v67.__r_.__value_.__l.__size_ = *(&off_2A18CAFB8 + 1);
                    if (*(&off_2A18CAFB8 + 1))
                    {
                      atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v36 = *MEMORY[0x29EDBFC30];
                    v37 = strlen(*MEMORY[0x29EDBFC30]);
                    if (v37 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v38 = v37;
                    if (v37 >= 0x17)
                    {
                      v63 = v19;
                      if ((v37 | 7) == 0x17)
                      {
                        v45 = 25;
                      }

                      else
                      {
                        v45 = (v37 | 7) + 1;
                      }

                      p_p = operator new(v45);
                      __p.st_ino = v38;
                      *&__p.st_uid = v45 | 0x8000000000000000;
                      *&__p.st_dev = p_p;
                      v19 = v63;
                    }

                    else
                    {
                      HIBYTE(__p.st_gid) = v37;
                      p_p = &__p;
                      if (!v37)
                      {
LABEL_93:
                        *(&p_p->st_dev + v38) = 0;
                        os_unfair_lock_lock((v32 + 40));
                        if ((__p.st_gid & 0x80000000) == 0)
                        {
                          v46 = &__p;
                        }

                        else
                        {
                          v46 = *&__p.st_dev;
                        }

                        ctu::cf::MakeCFString::MakeCFString(buf, v46);
                        v47 = (**v32)(v32, *buf);
                        if (v47)
                        {
                          ctu::cf::assign();
                          CFRelease(v47);
                        }

                        MEMORY[0x29C270E70](buf);
                        os_unfair_lock_unlock((v32 + 40));
                        if (SHIBYTE(__p.st_gid) < 0)
                        {
                          operator delete(*&__p.st_dev);
                        }

                        v48 = v67.__r_.__value_.__l.__size_;
                        if (v67.__r_.__value_.__l.__size_ && !atomic_fetch_add((v67.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v48->__on_zero_shared)(v48);
                          std::__shared_weak_count::__release_weak(v48);
                        }

                        v49.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                        v49.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                        *&__p.st_blksize = v49;
                        *__p.st_qspare = v49;
                        __p.st_birthtimespec = v49;
                        *&__p.st_size = v49;
                        __p.st_mtimespec = v49;
                        __p.st_ctimespec = v49;
                        *&__p.st_uid = v49;
                        __p.st_atimespec = v49;
                        *&__p.st_dev = v49;
                        if (v69 >= 0)
                        {
                          v50 = &__dst;
                        }

                        else
                        {
                          v50 = __dst;
                        }

                        if (stat(v50, &__p))
                        {
                          v51 = -1;
                          goto LABEL_134;
                        }

                        if (SHIBYTE(v69) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, __dst, *(&__dst + 1));
                        }

                        else
                        {
                          *&__p.st_dev = __dst;
                          *&__p.st_uid = v69;
                        }

                        v52 = *MEMORY[0x29EDBFBF8];
                        v53 = strlen(*MEMORY[0x29EDBFBF8]);
                        if (v53 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v54 = v53;
                        if (v53 >= 0x17)
                        {
                          if ((v53 | 7) == 0x17)
                          {
                            v56 = 25;
                          }

                          else
                          {
                            v56 = (v53 | 7) + 1;
                          }

                          v55 = operator new(v56);
                          v67.__r_.__value_.__l.__size_ = v54;
                          v67.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
                          v67.__r_.__value_.__r.__words[0] = v55;
                        }

                        else
                        {
                          *(&v67.__r_.__value_.__s + 23) = v53;
                          v55 = &v67;
                          if (!v53)
                          {
LABEL_120:
                            v55[v54] = 0;
                            NumberOfLogDumps = util::getNumberOfLogDumps(&__p, &v67);
                            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v67.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                              {
LABEL_122:
                                if (NumberOfLogDumps >> 31)
                                {
                                  v51 = -1;
                                }

                                else
                                {
                                  v51 = NumberOfLogDumps;
                                }

                                if (v51 == -1)
                                {
                                  goto LABEL_134;
                                }

LABEL_132:
                                if (v51 >= v31)
                                {
                                  std::string::__assign_external(&v64, *MEMORY[0x29EDBECA8]);
                                  v51 = NumberOfLogDumps;
                                }

LABEL_134:
                                if ((atomic_load_explicit(&qword_2A18CB1B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB1B8))
                                {
                                  qword_2A18CB1C0 = 0;
                                  qword_2A18CB1C8 = 0;
                                  __cxa_guard_release(&qword_2A18CB1B8);
                                }

                                if (_MergedGlobals_3 == -1)
                                {
                                  v58 = qword_2A18CB1C8;
                                  if (!os_log_type_enabled(qword_2A18CB1C8, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  dispatch_once(&_MergedGlobals_3, &__block_literal_global_2);
                                  v58 = qword_2A18CB1C8;
                                  if (!os_log_type_enabled(qword_2A18CB1C8, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_138:
                                    if (SHIBYTE(v69) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v41 = v64.__r_.__value_.__l.__size_;
                                    v40 = v64.__r_.__value_.__r.__words[0];
                                    v42 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
                                    if ((v21 & 0x80u) == 0)
                                    {
                                      v59 = v21;
                                    }

                                    else
                                    {
                                      v59 = size;
                                    }

                                    if (v59)
                                    {
                                      goto LABEL_147;
                                    }

LABEL_144:
                                    if ((v42 & 0x80u) == 0)
                                    {
                                      v41 = v42;
                                    }

                                    if (!v41)
                                    {
LABEL_148:
                                      if ((v42 & 0x80) != 0)
                                      {
                                        operator delete(v40);
                                        if ((v21 & 0x80) == 0)
                                        {
                                          goto LABEL_150;
                                        }
                                      }

                                      else if ((v21 & 0x80) == 0)
                                      {
LABEL_150:
                                        v60 = *MEMORY[0x29EDCA608];
                                        return v6;
                                      }

                                      operator delete(v19);
                                      v62 = *MEMORY[0x29EDCA608];
                                      return v6;
                                    }

LABEL_147:
                                    std::string::__assign_external(a1, *MEMORY[0x29EDBECA8]);
                                    goto LABEL_148;
                                  }
                                }

                                *buf = 67109376;
                                *&buf[4] = v51;
                                v71 = 1024;
                                v72 = v31;
                                _os_log_impl(&dword_297476000, v58, OS_LOG_TYPE_DEFAULT, "Log dump count = %d, max log limit = %d", buf, 0xEu);
                                goto LABEL_138;
                              }
                            }

                            else if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                            {
                              goto LABEL_122;
                            }

                            operator delete(*&__p.st_dev);
                            if (NumberOfLogDumps >> 31)
                            {
                              v51 = -1;
                            }

                            else
                            {
                              v51 = NumberOfLogDumps;
                            }

                            if (v51 == -1)
                            {
                              goto LABEL_134;
                            }

                            goto LABEL_132;
                          }
                        }

                        memmove(v55, v52, v54);
                        goto LABEL_120;
                      }
                    }

                    memmove(p_p, v36, v38);
                    goto LABEL_93;
                  }
                }

                else if (v6)
                {
                  goto LABEL_62;
                }

                v40 = 0;
                v41 = 0;
                v42 = 0;
                if ((v21 & 0x80u) == 0)
                {
                  v43 = v21;
                }

                else
                {
                  v43 = size;
                }

                if (v43)
                {
                  goto LABEL_147;
                }

                goto LABEL_144;
              }
            }

            memmove(v29, v26, v28);
            goto LABEL_55;
          }
        }

        else if (v9)
        {
          goto LABEL_19;
        }

        v19 = 0;
        size = 0;
        v21 = 0;
        goto LABEL_46;
      }
    }

    memmove(p_dst, v2, v4);
    goto LABEL_12;
  }

  v6 = 1;
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_297520884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16sGetOsLogContextv_block_invoke_1()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "trace.filter");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void LegacyAccessoryManager::create(LegacyAccessoryManager *this@<X0>, const char *a2@<X1>, queue a3@<0:X2>, LegacyAccessoryManager **a4@<X8>)
{
  v7 = operator new(0x78uLL);
  v8 = *a2;
  v20 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v20;
  LegacyAccessoryManager::LegacyAccessoryManager(v7, this, v9);
  v21 = v7;
  *buf = v7;
  v10 = operator new(0x20uLL);
  v10[1] = 0;
  v11 = v10 + 1;
  *v10 = &unk_2A1E45E98;
  v10[2] = 0;
  v10[3] = v7;
  v22 = v10;
  *buf = 0;
  v12 = *(v7 + 2);
  if (!v12)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    v13 = v10;
    std::__shared_weak_count::__release_weak(v12);
    v10 = v13;
    if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v14 = v10;
      (*(*v10 + 16))();
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_9:
  if (*buf)
  {
    LegacyAccessoryManager::~LegacyAccessoryManager(*buf);
    operator delete(v15);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  v16 = v21;
  if (v21 && LegacyAccessoryManager::init(v21))
  {
    v17 = v22;
    *a4 = v16;
    a4[1] = v17;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v18 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_24:
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v18, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager!", buf, 2u);
    *a4 = 0;
    a4[1] = 0;
    v19 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_20;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
  v18 = qword_2A18CB080;
  if (os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_24;
  }

LABEL_19:
  *a4 = 0;
  a4[1] = 0;
  v19 = v22;
  if (!v22)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_297520D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297520D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<LegacyAccessoryManager>::~unique_ptr[abi:ne200100](va);
  if (v5)
  {
    dispatch_release(v5);
  }

  _Unwind_Resume(a1);
}

BOOL LegacyAccessoryManager::init(LegacyAccessoryManager *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 7);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    LegacyAccessoryManager::generateAccessoryMapping(this);
    if (*(this + 9))
    {
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_26;
      aBlock[4] = this;
      aBlock[5] = v4;
      v17 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = _Block_copy(aBlock);
      ctu::iokit::IOHIDController::registerKeyboardCallback();
      if (v18)
      {
        _Block_release(v18);
      }

      ctu::iokit::IOHIDController::start(*(this + 9));
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    v5 = *(this + 7);
    if (!v5)
    {
      goto LABEL_33;
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke_5;
    v14[3] = &__block_descriptor_tmp_9_3;
    v14[4] = this;
    v14[5] = v4;
    v15 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = _Block_copy(v14);
    v7 = *(this + 3);
    if (v7)
    {
      dispatch_retain(*(this + 3));
    }

    if (v6)
    {
      v8 = _Block_copy(v6);
      v9 = *(v5 + 24);
      *(v5 + 24) = v8;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (!v9)
      {
LABEL_23:
        if (v7)
        {
          dispatch_retain(v7);
        }

        v11 = *(v5 + 32);
        *(v5 + 32) = v7;
        if (v11)
        {
          dispatch_release(v11);
        }

        if (v7)
        {
          dispatch_release(v7);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        IOKitEventNotifier::start(*(this + 7));
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

LABEL_33:
        if (v3)
        {
          std::__shared_weak_count::__release_weak(v3);
        }

        goto LABEL_35;
      }
    }

    _Block_release(v9);
    goto LABEL_23;
  }

  v10 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "LegacyAccessoryManager";
    _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I IOKit Event Notifier is NULL: %s", buf, 0xCu);
  }

LABEL_35:
  result = v2 != 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297521000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LegacyAccessoryManager::LegacyAccessoryManager(LegacyAccessoryManager *this, const char *__s, queue a3)
{
  v6 = 0x7FFFFFFFFFFFFFF7;
  v7 = strlen(__s);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v7 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v8;
    v52 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v52) = v7;
    p_dst = &__dst;
    if (!v7)
    {
      LOBYTE(__dst) = 0;
      v10 = SHIBYTE(v52);
      if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v8);
  *(p_dst + v8) = 0;
  v10 = SHIBYTE(v52);
  if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v11 = &__dst;
    if (v10 == 22)
    {
      v12 = 22;
      v13 = 23;
LABEL_15:
      v15 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v15 = v13;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = v12 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v11 + v10) = 46;
    v22 = v10 + 1;
    if (SHIBYTE(v52) < 0)
    {
      *(&__dst + 1) = v22;
    }

    else
    {
      HIBYTE(v52) = v22 & 0x7F;
    }

    v21 = v11 + v22;
    goto LABEL_34;
  }

LABEL_12:
  v10 = *(&__dst + 1);
  v13 = v52 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 != *(&__dst + 1))
  {
    v11 = __dst;
    goto LABEL_30;
  }

  if (v13 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = __dst;
  if (v12 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v19 = operator new(v17);
  v20 = v19;
  if (v12)
  {
    memmove(v19, v11, v12);
  }

  v20[v12] = 46;
  if (!v18)
  {
    operator delete(v11);
  }

  *(&__dst + 1) = v13;
  v52 = v17 | 0x8000000000000000;
  *&__dst = v20;
  v21 = &v20[v13];
LABEL_34:
  *v21 = 0;
  v54 = v52;
  *v53 = __dst;
  v52 = 0;
  __dst = 0uLL;
  v23 = SHIBYTE(v54);
  if ((SHIBYTE(v54) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v54) - 1) < 0x16)
    {
      v24 = (SHIBYTE(v54) + 22);
      v25 = v53;
      v26 = 22;
LABEL_40:
      v27 = 2 * v26;
      if (v24 > 2 * v26)
      {
        v27 = v24;
      }

      if ((v27 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v27 | 7) + 1;
      }

      if (v27 >= 0x17)
      {
        v6 = v28;
      }

      else
      {
        v6 = 23;
      }

      v29 = v26 == 22;
      goto LABEL_49;
    }

    v33 = v53;
LABEL_56:
    qmemcpy(v33 + v23, "LegacyAccessoryManager", 22);
    v34 = v23 + 22;
    if (SHIBYTE(v54) < 0)
    {
      v53[1] = (v23 + 22);
    }

    else
    {
      HIBYTE(v54) = v34 & 0x7F;
    }

    v32 = v33 + v34;
    goto LABEL_60;
  }

  v23 = v53[1];
  v26 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v26 - v53[1] >= 0x16)
  {
    v33 = v53[0];
    goto LABEL_56;
  }

  v24 = v53[1] + 22;
  if ((0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFLL)) < v53[1] - v26 + 22)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v53[0];
  if (v26 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v29 = 0;
LABEL_49:
  v30 = operator new(v6);
  v31 = v30;
  if (v23)
  {
    memmove(v30, v25, v23);
  }

  qmemcpy(v31 + v23, "LegacyAccessoryManager", 22);
  if (!v29)
  {
    operator delete(v25);
  }

  v53[1] = v24;
  v54 = v6 | 0x8000000000000000;
  v53[0] = v31;
  v32 = &v24[v31];
LABEL_60:
  *v32 = 0;
  v56 = v54;
  *__p = *v53;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  if (v56 >= 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", v35);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    }
  }

  else if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v53[0]);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
LABEL_66:
    *(this + 1) = 0;
    *(this + 2) = 0;
    v36 = *a3.fObj.fObj;
    *(this + 3) = *a3.fObj.fObj;
    if (!v36)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_98:
  operator delete(__dst);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v36 = *a3.fObj.fObj;
  *(this + 3) = *a3.fObj.fObj;
  if (v36)
  {
LABEL_67:
    dispatch_retain(v36);
  }

LABEL_68:
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v37 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(__p);
    v38 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v39 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v38;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    v40 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v37 = off_2A18CAD88;
  }

  v41 = *(&off_2A18CAD88 + 1);
  v53[0] = v37;
  v53[1] = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v42 = *(*v37 + 144);
  *(this + 7) = 0xAAAAAAAAAAAAAAAALL;
  *(this + 8) = 0xAAAAAAAAAAAAAAAALL;
  v43 = operator new(0x88uLL);
  v43[1] = 0;
  v43[2] = 0;
  *v43 = &unk_2A1E43628;
  ctu::OsLogLogger::OsLogLogger((v43 + 3), "com.apple.telephony", "iokit.event");
  v45 = ctu::iokit::Controller::create(v42, v44);
  *(v43 + 6) = 0u;
  *(v43 + 7) = 0u;
  *(v43 + 4) = 0u;
  *(v43 + 5) = 0u;
  *(v43 + 3) = 0u;
  v43[16] = v42;
  *(this + 7) = v43 + 3;
  *(this + 8) = v43;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 92) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = this + 104;
  if (capabilities::txpower::supportsKeyboard(v45))
  {
    v50 = *a3.fObj.fObj;
    if (*a3.fObj.fObj)
    {
      dispatch_retain(*a3.fObj.fObj);
    }

    ctu::iokit::IOHIDController::create();
    v46 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v47 = *(this + 10);
    *(this + 72) = v46;
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    v48 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v50)
    {
      dispatch_release(v50);
    }

    if (!*(this + 9))
    {
      v49 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&dword_297476000, v49, OS_LOG_TYPE_ERROR, "Failed to create IO HID Controller!", __p, 2u);
      }
    }
  }
}

void sub_29752175C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  std::vector<dispatch::callback<void({block_pointer})>>::~vector[abi:ne200100](v24);
  v26 = *(v23 + 24);
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  MEMORY[0x29C270D60](v23);
  _Unwind_Resume(a1);
}

void sub_297521848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (SHIBYTE(a14) < 0)
      {
        operator delete(a12);
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x297521840);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x2975217A0);
}

void LegacyAccessoryManager::~LegacyAccessoryManager(LegacyAccessoryManager *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 9);
  if (v7)
  {
    ctu::iokit::IOHIDController::stop(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    IOKitEventNotifier::shutdown(v8);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 13));
  v9 = *(this + 10);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 8);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v12 = *(this + 5);
  v13 = v11;
  if (v12 != v11)
  {
    do
    {
      v14 = *(v12 - 1);
      if (v14)
      {
        dispatch_release(v14);
      }

      v16 = *(v12 - 2);
      v12 -= 16;
      v15 = v16;
      if (v16)
      {
        _Block_release(v15);
      }
    }

    while (v12 != v11);
    v13 = *(this + 4);
  }

  *(this + 5) = v11;
  operator delete(v13);
LABEL_26:
  v17 = *(this + 3);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  JUMPOUT(0x29C270D60);
}

uint64_t *LegacyAccessoryManager::generateAccessoryMapping(uint64_t *this)
{
  v1 = this;
  v3 = this + 13;
  v2 = this[13];
  v4 = this + 13;
  v5 = this + 13;
  if (v2)
  {
    v6 = this[13];
    while (1)
    {
      while (1)
      {
        v5 = v6;
        v7 = *(v6 + 28);
        if (v7 < 3)
        {
          break;
        }

        v6 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      v6 = v5[1];
      if (!v6)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 28) = 2;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = v8;
    *v4 = v5;
    v9 = **(v1 + 96);
    if (v9)
    {
      *(v1 + 96) = v9;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v5);
    v2 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v5 + 8) = 16;
  v10 = v3;
  v11 = v3;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v2;
        v12 = *(v2 + 28);
        if (v12 < 5)
        {
          break;
        }

        v2 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 4)
      {
        break;
      }

      v2 = v11[1];
      if (!v2)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 28) = 4;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(v1 + 96);
    if (v14)
    {
      *(v1 + 96) = v14;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v11);
    ++*(v1 + 112);
  }

  *(v11 + 8) = 32;
  v15 = *v3;
  v16 = v3;
  v17 = v3;
  if (*v3)
  {
    v18 = *v3;
    while (1)
    {
      while (1)
      {
        v17 = v18;
        v19 = *(v18 + 28);
        if (v19 < 9)
        {
          break;
        }

        v18 = *v17;
        v16 = v17;
        if (!*v17)
        {
          goto LABEL_28;
        }
      }

      if (v19 == 8)
      {
        break;
      }

      v18 = v17[1];
      if (!v18)
      {
        v16 = v17 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v20 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 28) = 8;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v20;
    *v16 = v17;
    v21 = **(v1 + 96);
    if (v21)
    {
      *(v1 + 96) = v21;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v17);
    v15 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v17 + 8) = 64;
  v22 = v3;
  v23 = v3;
  if (v15)
  {
    while (1)
    {
      while (1)
      {
        v23 = v15;
        v24 = *(v15 + 28);
        if (v24 < 0x11)
        {
          break;
        }

        v15 = *v23;
        v22 = v23;
        if (!*v23)
        {
          goto LABEL_38;
        }
      }

      if (v24 == 16)
      {
        break;
      }

      v15 = v23[1];
      if (!v15)
      {
        v22 = v23 + 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v25 = v23;
    v23 = operator new(0x28uLL);
    *(v23 + 28) = 16;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v25;
    *v22 = v23;
    v26 = **(v1 + 96);
    if (v26)
    {
      *(v1 + 96) = v26;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v23);
    ++*(v1 + 112);
  }

  *(v23 + 8) = 1024;
  v27 = *v3;
  v28 = v3;
  v29 = v3;
  if (*v3)
  {
    v30 = *v3;
    while (1)
    {
      while (1)
      {
        v29 = v30;
        v31 = *(v30 + 28);
        if (v31 < 0x21)
        {
          break;
        }

        v30 = *v29;
        v28 = v29;
        if (!*v29)
        {
          goto LABEL_48;
        }
      }

      if (v31 == 32)
      {
        break;
      }

      v30 = v29[1];
      if (!v30)
      {
        v28 = v29 + 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v32 = v29;
    v29 = operator new(0x28uLL);
    *(v29 + 28) = 32;
    *v29 = 0;
    v29[1] = 0;
    v29[2] = v32;
    *v28 = v29;
    v33 = **(v1 + 96);
    if (v33)
    {
      *(v1 + 96) = v33;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v29);
    v27 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v29 + 8) = 256;
  v34 = v3;
  v35 = v3;
  if (v27)
  {
    while (1)
    {
      while (1)
      {
        v35 = v27;
        v36 = *(v27 + 28);
        if (v36 < 0x41)
        {
          break;
        }

        v27 = *v35;
        v34 = v35;
        if (!*v35)
        {
          goto LABEL_58;
        }
      }

      if (v36 == 64)
      {
        break;
      }

      v27 = v35[1];
      if (!v27)
      {
        v34 = v35 + 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v37 = v35;
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 64;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v37;
    *v34 = v35;
    v38 = **(v1 + 96);
    if (v38)
    {
      *(v1 + 96) = v38;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v35);
    ++*(v1 + 112);
  }

  *(v35 + 8) = 2048;
  v39 = *v3;
  v40 = v3;
  v41 = v3;
  if (*v3)
  {
    v42 = *v3;
    while (1)
    {
      while (1)
      {
        v41 = v42;
        v43 = *(v42 + 28);
        if (v43 < 0x81)
        {
          break;
        }

        v42 = *v41;
        v40 = v41;
        if (!*v41)
        {
          goto LABEL_68;
        }
      }

      if (v43 == 128)
      {
        break;
      }

      v42 = v41[1];
      if (!v42)
      {
        v40 = v41 + 1;
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    v44 = v41;
    v41 = operator new(0x28uLL);
    *(v41 + 28) = 128;
    *v41 = 0;
    v41[1] = 0;
    v41[2] = v44;
    *v40 = v41;
    v45 = **(v1 + 96);
    if (v45)
    {
      *(v1 + 96) = v45;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v41);
    v39 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v41 + 8) = 4096;
  v46 = v3;
  v47 = v3;
  if (v39)
  {
    while (1)
    {
      while (1)
      {
        v47 = v39;
        v48 = *(v39 + 28);
        if (v48 < 0x101)
        {
          break;
        }

        v39 = *v47;
        v46 = v47;
        if (!*v47)
        {
          goto LABEL_78;
        }
      }

      if (v48 == 256)
      {
        break;
      }

      v39 = v47[1];
      if (!v39)
      {
        v46 = v47 + 1;
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v49 = v47;
    v47 = operator new(0x28uLL);
    *(v47 + 28) = 256;
    *v47 = 0;
    v47[1] = 0;
    v47[2] = v49;
    *v46 = v47;
    v50 = **(v1 + 96);
    if (v50)
    {
      *(v1 + 96) = v50;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v47);
    ++*(v1 + 112);
  }

  *(v47 + 8) = 0x2000;
  v51 = *v3;
  v52 = v3;
  v53 = v3;
  if (*v3)
  {
    v54 = *v3;
    while (1)
    {
      while (1)
      {
        v53 = v54;
        v55 = *(v54 + 28);
        if (v55 < 0x201)
        {
          break;
        }

        v54 = *v53;
        v52 = v53;
        if (!*v53)
        {
          goto LABEL_88;
        }
      }

      if (v55 == 512)
      {
        break;
      }

      v54 = v53[1];
      if (!v54)
      {
        v52 = v53 + 1;
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v56 = v53;
    v53 = operator new(0x28uLL);
    *(v53 + 28) = 512;
    *v53 = 0;
    v53[1] = 0;
    v53[2] = v56;
    *v52 = v53;
    v57 = **(v1 + 96);
    if (v57)
    {
      *(v1 + 96) = v57;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v53);
    v51 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v53 + 8) = 0x4000;
  v58 = v3;
  v59 = v3;
  if (v51)
  {
    while (1)
    {
      while (1)
      {
        v59 = v51;
        v60 = *(v51 + 28);
        if (v60 < 0x401)
        {
          break;
        }

        v51 = *v59;
        v58 = v59;
        if (!*v59)
        {
          goto LABEL_98;
        }
      }

      if (v60 == 1024)
      {
        break;
      }

      v51 = v59[1];
      if (!v51)
      {
        v58 = v59 + 1;
        goto LABEL_98;
      }
    }
  }

  else
  {
LABEL_98:
    v61 = v59;
    v59 = operator new(0x28uLL);
    *(v59 + 28) = 1024;
    *v59 = 0;
    v59[1] = 0;
    v59[2] = v61;
    *v58 = v59;
    v62 = **(v1 + 96);
    if (v62)
    {
      *(v1 + 96) = v62;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v59);
    ++*(v1 + 112);
  }

  *(v59 + 8) = 0x8000;
  v63 = *v3;
  v64 = v3;
  v65 = v3;
  if (*v3)
  {
    v66 = *v3;
    while (1)
    {
      while (1)
      {
        v65 = v66;
        v67 = *(v66 + 28);
        if (v67 < 0x801)
        {
          break;
        }

        v66 = *v65;
        v64 = v65;
        if (!*v65)
        {
          goto LABEL_108;
        }
      }

      if (v67 == 2048)
      {
        break;
      }

      v66 = v65[1];
      if (!v66)
      {
        v64 = v65 + 1;
        goto LABEL_108;
      }
    }
  }

  else
  {
LABEL_108:
    v68 = v65;
    v65 = operator new(0x28uLL);
    *(v65 + 28) = 2048;
    *v65 = 0;
    v65[1] = 0;
    v65[2] = v68;
    *v64 = v65;
    v69 = **(v1 + 96);
    if (v69)
    {
      *(v1 + 96) = v69;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v65);
    v63 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v65 + 8) = 0x10000;
  v70 = v3;
  if (v63)
  {
    while (1)
    {
      while (1)
      {
        v70 = v63;
        v71 = *(v63 + 28);
        if (v71 <= 0x1000)
        {
          break;
        }

        v63 = *v70;
        v3 = v70;
        if (!*v70)
        {
          goto LABEL_118;
        }
      }

      if (v71 == 4096)
      {
        break;
      }

      v63 = v70[1];
      if (!v63)
      {
        v3 = v70 + 1;
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    v72 = v70;
    v70 = operator new(0x28uLL);
    *(v70 + 28) = 4096;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v72;
    *v3 = v70;
    v73 = **(v1 + 96);
    if (v73)
    {
      *(v1 + 96) = v73;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v70);
    ++*(v1 + 112);
  }

  *(v70 + 8) = 0x20000;
  return this;
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke(void *a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_58;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_58;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  if (*(v5 + 92) == a2)
  {
    goto LABEL_58;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "OPENED";
    if (a2)
    {
      v10 = "CLOSED";
    }

    LODWORD(v29) = 136315138;
    *(&v29 + 4) = v10;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", &v29, 0xCu);
  }

  v12 = (v5 + 104);
  v11 = *(v5 + 104);
  *(v5 + 92) = a2;
  v13 = (v5 + 104);
  if (a2)
  {
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 7);
          if (v14 <= 0x1000)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_20;
          }
        }

        if (v14 == 4096)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          v12 = v13 + 1;
          goto LABEL_20;
        }
      }

      v15 = v13;
    }

    else
    {
LABEL_20:
      v15 = operator new(0x28uLL);
      *(v15 + 28) = 4096;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v13;
      *v12 = v15;
      v16 = **(v5 + 96);
      if (v16)
      {
        *(v5 + 96) = v16;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v15);
      ++*(v5 + 112);
    }

    *(v5 + 88) |= *(v15 + 8);
    v20 = *(v5 + 32);
    v21 = *(v5 + 40);
    if (v20 != v21)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

  if (v11)
  {
    while (1)
    {
      while (1)
      {
        v13 = v11;
        v17 = *(v11 + 7);
        if (v17 <= 0x1000)
        {
          break;
        }

        v11 = *v13;
        v12 = v13;
        if (!*v13)
        {
          goto LABEL_30;
        }
      }

      if (v17 == 4096)
      {
        break;
      }

      v11 = v13[1];
      if (!v11)
      {
        v12 = v13 + 1;
        goto LABEL_30;
      }
    }

    v18 = v13;
  }

  else
  {
LABEL_30:
    v18 = operator new(0x28uLL);
    *(v18 + 28) = 4096;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v13;
    *v12 = v18;
    v19 = **(v5 + 96);
    if (v19)
    {
      *(v5 + 96) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v18);
    ++*(v5 + 112);
  }

  *(v5 + 88) &= ~*(v18 + 8);
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  if (v20 != v21)
  {
LABEL_40:
    while (!*v20)
    {
      v22 = 0;
      v23 = *(v20 + 8);
      if (v23)
      {
        goto LABEL_42;
      }

LABEL_43:
      v24 = *(v5 + 88);
      if (!v22)
      {
        v26 = 0;
        *&v29 = MEMORY[0x29EDCA5F8];
        *(&v29 + 1) = 1174405120;
        v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
        v31 = &__block_descriptor_tmp_17_0;
LABEL_49:
        v27 = 0;
        goto LABEL_50;
      }

      v25 = _Block_copy(v22);
      v26 = v25;
      *&v29 = MEMORY[0x29EDCA5F8];
      *(&v29 + 1) = 1174405120;
      v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
      v31 = &__block_descriptor_tmp_17_0;
      if (!v25)
      {
        goto LABEL_49;
      }

      v27 = _Block_copy(v25);
LABEL_50:
      aBlock = v27;
      v33 = v24;
      dispatch_async(v23, &v29);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v26)
      {
        _Block_release(v26);
      }

      if (v23)
      {
        dispatch_release(v23);
      }

      if (v22)
      {
        _Block_release(v22);
      }

      v20 += 16;
      if (v20 == v21)
      {
        goto LABEL_58;
      }
    }

    v22 = _Block_copy(*v20);
    v23 = *(v20 + 8);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_42:
    dispatch_retain(v23);
    goto LABEL_43;
  }

LABEL_58:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_297522580(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke_5(void *a1, unint64_t a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v9)
        {
          return;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (!v9)
        {
          return;
        }
      }

      LegacyAccessoryManager::accessoryNotification_sync(v7, a2, a3);
    }
  }
}

void LegacyAccessoryManager::accessoryNotification_sync(uint64_t a1, unint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Port Number: %u", __p, 8u);
    v6 = *a1;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v30 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v32 = v7;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Status: %s", buf, 0xCu);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *a1;
  }

  v8 = HIDWORD(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT) && ((ctu::iokit::asString(), v30 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136315138, v32 = v9, _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Type: %s", buf, 0xCu), v30 < 0))
  {
    operator delete(__p[0]);
    if ((a3 - 3) <= 0xFFFFFFFD)
    {
LABEL_16:
      v10 = *a1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = a3;
        _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I This port (%d) is not supported.", __p, 8u);
      }

      goto LABEL_61;
    }
  }

  else if ((a3 - 3) <= 0xFFFFFFFD)
  {
    goto LABEL_16;
  }

  v11 = *a1;
  v12 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG);
  if (a2 == 1)
  {
    if (!v12)
    {
      if (v8 == 4096)
      {
        goto LABEL_42;
      }

LABEL_22:
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_297476000, v13, OS_LOG_TYPE_DEBUG, "#D Detected not keyboard type. Setting the accessory bitmask", __p, 2u);
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          while (1)
          {
LABEL_33:
            while (1)
            {
              v16 = v14;
              v17 = *(v14 + 28);
              if (v17 <= v8)
              {
                break;
              }

              v14 = *v16;
              v15 = v16;
              if (!*v16)
              {
                goto LABEL_37;
              }
            }

            if (v17 >= v8)
            {
              break;
            }

            v14 = v16[1];
            if (!v14)
            {
              v15 = v16 + 1;
              goto LABEL_37;
            }
          }

          v18 = v16;
          goto LABEL_41;
        }
      }

      else
      {
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          goto LABEL_33;
        }
      }

      v16 = v15;
LABEL_37:
      v18 = operator new(0x28uLL);
      v18[7] = v8;
      v18[8] = 0;
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = v16;
      *v15 = v18;
      v19 = **(a1 + 96);
      if (v19)
      {
        *(a1 + 96) = v19;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v18);
      ++*(a1 + 112);
LABEL_41:
      *(a1 + 88) |= v18[8];
      goto LABEL_42;
    }

    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is attached", __p, 2u);
    if (v8 != 4096)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v12)
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is detached. Clear all the bits in the accessory state", __p, 2u);
    }

    *(a1 + 88) = 0;
  }

LABEL_42:
  v20 = *a1;
  if (*(a1 + 92) == 1)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_297476000, v20, OS_LOG_TYPE_DEBUG, "#D If a keyboard is covered, we should set the keyboard accessory state regardless of the accessory event", __p, 2u);
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        while (1)
        {
LABEL_49:
          while (1)
          {
            v23 = v21;
            v24 = *(v21 + 7);
            if (v24 <= 0x1000)
            {
              break;
            }

            v21 = *v23;
            v22 = v23;
            if (!*v23)
            {
              goto LABEL_53;
            }
          }

          if (v24 == 4096)
          {
            break;
          }

          v21 = v23[1];
          if (!v21)
          {
            v22 = v23 + 1;
            goto LABEL_53;
          }
        }

        v25 = v23;
        goto LABEL_57;
      }
    }

    else
    {
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        goto LABEL_49;
      }
    }

    v23 = v22;
LABEL_53:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = 4096;
    *v25 = 0;
    v25[1] = 0;
    v25[2] = v23;
    *v22 = v25;
    v26 = **(a1 + 96);
    if (v26)
    {
      *(a1 + 96) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v25);
    ++*(a1 + 112);
LABEL_57:
    *(a1 + 88) |= *(v25 + 8);
    v20 = *a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 88);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v27;
    _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Accessory State: 0x%x\n", __p, 8u);
  }

  LegacyAccessoryManager::notifyClients(a1);
LABEL_61:
  v28 = *MEMORY[0x29EDCA608];
}

void LegacyAccessoryManager::notifyClients(NSObject **this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 22);
    LODWORD(v13) = 67109120;
    HIDWORD(v13) = v3;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Accessory State: 0x%x\n", &v13, 8u);
  }

  v4 = this[4];
  v5 = this[5];
  if (v4 != v5)
  {
    while (!v4->isa)
    {
      v6 = 0;
      isa = v4[1].isa;
      if (isa)
      {
        goto LABEL_8;
      }

LABEL_9:
      v8 = *(this + 22);
      if (!v6)
      {
        v10 = 0;
        v13 = MEMORY[0x29EDCA5F8];
        v14 = 1174405120;
        v15 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
        v16 = &__block_descriptor_tmp_17_0;
LABEL_15:
        v11 = 0;
        goto LABEL_16;
      }

      v9 = _Block_copy(v6);
      v10 = v9;
      v13 = MEMORY[0x29EDCA5F8];
      v14 = 1174405120;
      v15 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
      v16 = &__block_descriptor_tmp_17_0;
      if (!v9)
      {
        goto LABEL_15;
      }

      v11 = _Block_copy(v9);
LABEL_16:
      aBlock = v11;
      v18 = v8;
      dispatch_async(isa, &v13);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (isa)
      {
        dispatch_release(isa);
      }

      if (v6)
      {
        _Block_release(v6);
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_24;
      }
    }

    v6 = _Block_copy(v4->isa);
    isa = v4[1].isa;
    if (!isa)
    {
      goto LABEL_9;
    }

LABEL_8:
    dispatch_retain(isa);
    goto LABEL_9;
  }

LABEL_24:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_297522D78(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *LegacyAccessoryManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[5];
  if (v4 >= a1[6])
  {
    result = std::vector<dispatch::callback<void({block_pointer})>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})> const&>(a1 + 4, a2);
    a1[5] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[5] = (v4 + 2);
  }

  return result;
}

void **std::vector<dispatch::callback<void({block_pointer})(unsigned int)>>::~vector[abi:ne200100](void **a1)
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
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
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

char *std::vector<dispatch::callback<void({block_pointer})(unsigned int)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(unsigned int)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    LegacyAccessoryManager::~LegacyAccessoryManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<LegacyAccessoryManager *,std::shared_ptr<LegacyAccessoryManager>::__shared_ptr_default_delete<LegacyAccessoryManager,LegacyAccessoryManager>,std::allocator<LegacyAccessoryManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A0E2FLL)
  {
    if (((v2 & 0x80000002976A0E2FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A0E2FLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A0E2FLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

LegacyAccessoryManager **std::unique_ptr<LegacyAccessoryManager>::~unique_ptr[abi:ne200100](LegacyAccessoryManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    LegacyAccessoryManager::~LegacyAccessoryManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

double BootModuleICE::create@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x278uLL);
  v7 = v6;
  v8 = *a1;
  v9 = a1[1];
  v14 = v8;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11 = a2[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BootModuleICE::BootModuleICE(v6, &v14, v13);
  v16[0] = 0xAAAAAAAAAAAAAAAALL;
  v16[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BootModuleICE>::shared_ptr[abi:ne200100]<BootModuleICE,std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE*)#1},0>(v16, v7);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  BootModule::init(v16[0]);
  result = *v16;
  *a3 = *v16;
  return result;
}

void sub_2975233A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975233B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v11)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t BootModuleICE::BootModuleICE(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v18 = *a3;
  v19 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = 0;
  BootModule::BootModule(a1, &v20, &v18, &v16);
  v6 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v19;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v21;
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  *a1 = &unk_2A1E45F18;
  v9 = capabilities::radio::vendor(v8);
  if (v9 == 2)
  {
    _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v15);
LABEL_17:
    v10 = v15;
    v15 = 0uLL;
    v11 = *(a1 + 592);
    *(a1 + 584) = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *(&v15 + 1);
    if (!*(&v15 + 1) || atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      return a1;
    }

    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    return a1;
  }

  if (v9 == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I17BootControllerINTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v15);
    goto LABEL_17;
  }

  v14 = *(a1 + 104);
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    return a1;
  }

  LOWORD(v15) = 0;
  _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "Unsupported or unknown radio vendor!", &v15, 2u);
  return a1;
}

void sub_297523664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  v6 = *(v4 - 32);
  if (!v6)
  {
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v6);
  _Unwind_Resume(a1);
}

void BootModuleICE::~BootModuleICE(BootModuleICE *this)
{
  *this = &unk_2A1E45F18;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  BootModule::~BootModule(this);
}

{
  *this = &unk_2A1E45F18;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v3, 2u);
  }

  BootModule::~BootModule(this);
}

{
  *this = &unk_2A1E45F18;
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  BootModule::~BootModule(this);
  operator delete(v3);
}

void BootModuleICE::requestFSSync_sync(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = xpc_BOOL_create(1);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBF2A8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_BOOL_create(1);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEF38], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = *(a1 + 80);
  if (!v10 || (v11 = *(a1 + 72), (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *MEMORY[0x29EDBEBB8];
  v15 = strlen(*MEMORY[0x29EDBEBB8]);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v15 | 7) + 1;
    }

    v17 = operator new(v18);
    __dst[1] = v16;
    v30 = v18 | 0x8000000000000000;
    __dst[0] = v17;
LABEL_24:
    memmove(v17, v14, v16);
    *(v16 + v17) = 0;
    object = v5;
    if (v5)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  HIBYTE(v30) = v15;
  v17 = __dst;
  if (v15)
  {
    goto LABEL_24;
  }

  LOBYTE(__dst[0]) = 0;
  object = v5;
  if (v5)
  {
LABEL_19:
    xpc_retain(v5);
    goto LABEL_26;
  }

LABEL_25:
  object = xpc_null_create();
LABEL_26:
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 1174405120;
  v22[2] = ___ZN13BootModuleICE18requestFSSync_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE_block_invoke;
  v22[3] = &__block_descriptor_tmp_27;
  v22[4] = a1;
  v19 = *a2;
  if (*a2)
  {
    v19 = _Block_copy(v19);
  }

  v20 = *(a2 + 8);
  aBlock = v19;
  v24 = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  v25 = v11;
  v26 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = _Block_copy(v22);
  v27 = v21;
  Service::runCommand(a1, __dst, &object, &v27);
  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(object);
  object = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::__shared_weak_count::__release_weak(v13);
  xpc_release(v5);
}

void sub_297523BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, xpc_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v28 + 40);
  xpc_release(object);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v27);
  xpc_release(v25);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE18requestFSSync_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE_block_invoke(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[8];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[7];
  if (v10)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
      v12 = a1[5];
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v11 = xpc_null_create();
      v12 = a1[5];
      if (v12)
      {
LABEL_6:
        v13 = _Block_copy(v12);
        v14 = a1[6];
        if (!v14)
        {
LABEL_8:
          v15 = v7[10];
          if (!v15 || (v16 = v7[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
          {
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }

          v18 = v17;
          v19 = operator new(0x30uLL);
          *v19 = v10;
          v19[1] = v9;
          *(v19 + 4) = a2;
          v19[3] = v11;
          v20 = xpc_null_create();
          if (v13)
          {
            v19[4] = _Block_copy(v13);
            v19[5] = v14;
            if (!v14)
            {
LABEL_13:
              v21 = v7[11];
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              v22 = operator new(0x18uLL);
              *v22 = v19;
              v22[1] = v16;
              v22[2] = v18;
              dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZN13BootModuleICE18requestFSSync_syncENS_8callbackIU13block_pointerFviNS1_2cf11CFSharedRefIK14__CFDictionaryEEEEEEUb_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISH_NSM_14default_deleteISH_EEEEENUlPvE_8__invokeESR_);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }

              if (v14)
              {
                dispatch_release(v14);
              }

              if (v13)
              {
                _Block_release(v13);
              }

              xpc_release(v20);
              goto LABEL_20;
            }
          }

          else
          {
            v19[4] = 0;
            v19[5] = v14;
            if (!v14)
            {
              goto LABEL_13;
            }
          }

          dispatch_retain(v14);
          goto LABEL_13;
        }

LABEL_7:
        dispatch_retain(v14);
        goto LABEL_8;
      }
    }

    v13 = 0;
    v14 = a1[6];
    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void __copy_helper_block_e8_40c87_ZTSN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE56c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  v4 = a2[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a2[6];
  a1[5] = v4;
  a1[6] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a2[8];
  a1[7] = a2[7];
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c87_ZTSN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE56c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    _Block_release(v4);
  }
}

uint64_t dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void BootModuleICE::softReset_sync(uint64_t a1, const ResetInfo *a2, void **a3)
{
  v6 = *(a1 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Performing soft reset", buf, 2u);
  }

  v7 = *(a1 + 80);
  if (!v7 || (v8 = *(a1 + 72), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  p_shared_weak_owners = &v9->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_11_0;
  aBlock[4] = a1;
  aBlock[5] = v8;
  v20 = v10;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  ResetInfo::ResetInfo(&v21, a2);
  v12 = *a3;
  if (*a3)
  {
    v12 = _Block_copy(v12);
  }

  v28 = v12;
  v13 = _Block_copy(aBlock);
  v14 = *(a1 + 88);
  if (v14)
  {
    dispatch_retain(*(a1 + 88));
  }

  *buf = v13;
  *&buf[8] = v14;
  if (v13)
  {
    v15 = _Block_copy(v13);
    v17 = v15;
    v18 = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v15 = 0;
  v17 = 0;
  v18 = v14;
  if (v14)
  {
LABEL_13:
    dispatch_retain(v14);
  }

LABEL_14:
  BootModuleICE::shutdownAndFlush_sync(a1, &v17);
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27 < 0)
  {
    operator delete(__p);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_26:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_35;
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v24);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    operator delete(v21.__r_.__value_.__l.__data_);
    v16 = v20;
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_35:
  operator delete(v22);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v16 = v20;
  if (v20)
  {
LABEL_29:
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_30:
  std::__shared_weak_count::__release_weak(v10);
}

void sub_297524210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *aBlock)
{
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v34 - 80);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo((v33 + 56));
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v32);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1, int a2, const __CFDictionary **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v82 = v8;
    if (v8)
    {
      if (!a1[5])
      {
LABEL_114:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v38 = v8;
          (v8->__on_zero_shared)(v8, v9, v10, v11);
          std::__shared_weak_count::__release_weak(v38);
        }

        return;
      }

      memset(&v80, 0, sizeof(v80));
      if (a2)
      {
        v67[0] = 0xAAAAAAAAAAAAAAAALL;
        v67[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v67, *a3);
        v12 = *MEMORY[0x29EDBE648];
        __dst = 0uLL;
        v66 = 0;
        ctu::cf::MakeCFString::MakeCFString(&v57, v12);
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C270E70](&v57);
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        v80 = *v59;
        v59[23] = 0;
        v59[0] = 0;
        v13 = (v7 + 112);
        if ((v7 + 112) != &v80)
        {
          if (*(v7 + 135) < 0)
          {
            v15 = (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v80 : v80.__r_.__value_.__r.__words[0];
            v16 = (v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v80.__r_.__value_.__r.__words[2]) : v80.__r_.__value_.__l.__size_;
            std::string::__assign_no_alias<false>((v7 + 112), v15, v16);
          }

          else if ((*(&v80.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>((v7 + 112), v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
          }

          else
          {
            *&v13->__r_.__value_.__l.__data_ = *&v80.__r_.__value_.__l.__data_;
            *(v7 + 128) = *(&v80.__r_.__value_.__l + 2);
          }

          if ((v59[23] & 0x80000000) != 0)
          {
            operator delete(*v59);
          }
        }

        if (SHIBYTE(v66) < 0)
        {
          operator delete(__dst);
          size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
          if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v80.__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v18 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
          if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = v80.__r_.__value_.__l.__size_;
          }

          if (!v18)
          {
LABEL_52:
            v20 = std::string::__assign_external(&v80, "Failed shutdown and FS sync of baseband.", 0x28uLL);
            if (v13 != v20)
            {
              v21 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
              if (*(v7 + 135) < 0)
              {
                if (v21 >= 0)
                {
                  v23 = v20;
                }

                else
                {
                  v23 = v20->__r_.__value_.__r.__words[0];
                }

                if (v21 >= 0)
                {
                  v24 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v24 = v20->__r_.__value_.__l.__size_;
                }

                std::string::__assign_no_alias<false>((v7 + 112), v23, v24);
              }

              else if ((*(&v20->__r_.__value_.__s + 23) & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>((v7 + 112), v20->__r_.__value_.__l.__data_, v20->__r_.__value_.__l.__size_);
              }

              else
              {
                v22 = *&v20->__r_.__value_.__l.__data_;
                *(v7 + 128) = *(&v20->__r_.__value_.__l + 2);
                *&v13->__r_.__value_.__l.__data_ = v22;
              }
            }
          }
        }

        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v63 = v25;
        v64 = v25;
        *v61 = v25;
        v62 = v25;
        *&v59[16] = v25;
        v60 = v25;
        *v59 = v25;
        v26 = *MEMORY[0x29EDBEB60];
        v27 = strlen(*MEMORY[0x29EDBEB60]);
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v28 = v27;
        if (v27 >= 0x17)
        {
          if ((v27 | 7) == 0x17)
          {
            v30 = 25;
          }

          else
          {
            v30 = (v27 | 7) + 1;
          }

          p_dst = operator new(v30);
          *(&__dst + 1) = v28;
          v66 = v30 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v66) = v27;
          p_dst = &__dst;
          if (!v27)
          {
LABEL_73:
            p_dst[v28] = 0;
            v31 = *MEMORY[0x29EDBF7E8];
            v32 = strlen(*MEMORY[0x29EDBF7E8]);
            if (v32 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v33 = v32;
            if (v32 >= 0x17)
            {
              if ((v32 | 7) == 0x17)
              {
                v35 = 25;
              }

              else
              {
                v35 = (v32 | 7) + 1;
              }

              v34 = operator new(v35);
              *(&v57 + 1) = v33;
              v58 = v35 | 0x8000000000000000;
              *&v57 = v34;
            }

            else
            {
              HIBYTE(v58) = v32;
              v34 = &v57;
              if (!v32)
              {
LABEL_82:
                v34[v33] = 0;
                Timestamp::Timestamp(v53);
                Timestamp::asString(v53, 0, 9, v55);
                v52 = 0;
                LOBYTE(v51) = 0;
                ResetInfo::ResetInfo(v59, &__dst, &v57, &v80, v55, 7, &v51);
                if (v56 < 0)
                {
                  operator delete(v55[0]);
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                  if ((SHIBYTE(v58) & 0x80000000) == 0)
                  {
LABEL_84:
                    if ((SHIBYTE(v66) & 0x80000000) == 0)
                    {
                      goto LABEL_85;
                    }

LABEL_91:
                    operator delete(__dst);
LABEL_85:
                    ResetInfo::ResetInfo(&v44, v59);
                    v39[0] = MEMORY[0x29EDCA5F8];
                    v39[1] = 1174405120;
                    v39[2] = ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_6;
                    v39[3] = &__block_descriptor_tmp_9_4;
                    v36 = a1[21];
                    if (v36)
                    {
                      v36 = _Block_copy(v36);
                    }

                    v40 = v36;
                    v42 = a2;
                    if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                    {
                      std::string::__init_copy_ctor_external(&v41, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v41 = v80;
                    }

                    v43 = _Block_copy(v39);
                    BootModule::handleReset_sync(v7, &v44, &v43);
                    if (v43)
                    {
                      _Block_release(v43);
                    }

                    if (v50 < 0)
                    {
                      operator delete(v49);
                      if ((v48 & 0x80000000) == 0)
                      {
LABEL_97:
                        if ((v46 & 0x80000000) == 0)
                        {
                          goto LABEL_98;
                        }

                        goto LABEL_104;
                      }
                    }

                    else if ((v48 & 0x80000000) == 0)
                    {
                      goto LABEL_97;
                    }

                    operator delete(v47);
                    if ((v46 & 0x80000000) == 0)
                    {
LABEL_98:
                      if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_99;
                      }

                      goto LABEL_105;
                    }

LABEL_104:
                    operator delete(v45);
                    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_99:
                      if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_106;
                    }

LABEL_105:
                    operator delete(v44.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_100:
                      v37 = v40;
                      if (!v40)
                      {
LABEL_108:
                        if (SHIBYTE(v64) < 0)
                        {
                          operator delete(v63[1]);
                          if ((SBYTE7(v62) & 0x80000000) == 0)
                          {
LABEL_110:
                            if ((SHIBYTE(v60) & 0x80000000) == 0)
                            {
                              goto LABEL_111;
                            }

                            goto LABEL_119;
                          }
                        }

                        else if ((SBYTE7(v62) & 0x80000000) == 0)
                        {
                          goto LABEL_110;
                        }

                        operator delete(v61[0]);
                        if ((SHIBYTE(v60) & 0x80000000) == 0)
                        {
LABEL_111:
                          if ((v59[23] & 0x80000000) == 0)
                          {
                            goto LABEL_112;
                          }

                          goto LABEL_120;
                        }

LABEL_119:
                        operator delete(*&v59[24]);
                        if ((v59[23] & 0x80000000) == 0)
                        {
LABEL_112:
                          MEMORY[0x29C270ED0](v67);
                          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_113;
                          }

                          goto LABEL_39;
                        }

LABEL_120:
                        operator delete(*v59);
                        MEMORY[0x29C270ED0](v67);
                        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                        {
LABEL_113:
                          operator delete(v80.__r_.__value_.__l.__data_);
                          v8 = v82;
                          if (!v82)
                          {
                            return;
                          }

                          goto LABEL_114;
                        }

                        goto LABEL_39;
                      }

LABEL_107:
                      _Block_release(v37);
                      goto LABEL_108;
                    }

LABEL_106:
                    operator delete(v41.__r_.__value_.__l.__data_);
                    v37 = v40;
                    if (!v40)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_107;
                  }
                }

                else
                {
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                  if ((SHIBYTE(v58) & 0x80000000) == 0)
                  {
                    goto LABEL_84;
                  }
                }

                operator delete(v57);
                if ((SHIBYTE(v66) & 0x80000000) == 0)
                {
                  goto LABEL_85;
                }

                goto LABEL_91;
              }
            }

            memmove(v34, v31, v33);
            goto LABEL_82;
          }
        }

        memmove(p_dst, v26, v28);
        goto LABEL_73;
      }

      ResetInfo::ResetInfo(&v73, (a1 + 7));
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
      aBlock[3] = &__block_descriptor_tmp_3_1;
      v14 = a1[21];
      if (v14)
      {
        v14 = _Block_copy(v14);
      }

      v69 = v14;
      v71 = 0;
      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v80;
      }

      v72 = _Block_copy(aBlock);
      BootModule::hardReset_sync(v7, &v73, &v72);
      if (v72)
      {
        _Block_release(v72);
      }

      if (v79 < 0)
      {
        operator delete(v78);
        if ((v77 & 0x80000000) == 0)
        {
LABEL_27:
          if ((v75 & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_34;
        }
      }

      else if ((v77 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      operator delete(v76);
      if ((v75 & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }

LABEL_34:
      operator delete(v74);
      if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_36;
      }

LABEL_35:
      operator delete(v73.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_30:
        v17 = v69;
        if (!v69)
        {
LABEL_38:
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_113;
          }

LABEL_39:
          v8 = v82;
          if (!v82)
          {
            return;
          }

          goto LABEL_114;
        }

LABEL_37:
        _Block_release(v17);
        goto LABEL_38;
      }

LABEL_36:
      operator delete(__p.__r_.__value_.__l.__data_);
      v17 = v69;
      if (!v69)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }
  }
}

void sub_29752498C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo((v69 - 240));
  if (*(v69 - 105) < 0)
  {
    operator delete(*(v69 - 128));
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v69 - 96);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 64);
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    (*(v1 + 16))(v1, v2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_297524BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }
}

void sub_297524C28(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_32c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 32);
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }
}

void ___ZN13BootModuleICE14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 64);
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    (*(v1 + 16))(v1, v2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_297524D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1, void *a2)
{
  v4 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 56), (a2 + 7));
  result = a2[21];
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 168) = result;
  return result;
}

void sub_297524DA8(_Unwind_Exception *exception_object)
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

void BootModuleICE::shutdownAndFlush_sync(uint64_t a1, uint64_t a2)
{
  Registry::getAdaptiveTimerService(&v21, *(a1 + 608));
  v5 = v21;
  v4 = v22;
  if (!v22 || atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = 2000;
    goto LABEL_10;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  Registry::getAdaptiveTimerService(&v21, *(a1 + 608));
  ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  v7 = v22;
  if (v22 && !atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = ScaledTime;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    ScaledTime = v8;
  }

  v9 = ScaledTime / 1000;
LABEL_10:
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleICE21shutdownAndFlush_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_31_0;
  aBlock[4] = a1;
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v20 = _Block_copy(aBlock);
  v12 = *(a1 + 88);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  util::GuaranteedCallback::create(&v20, &object, v9, &v21);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  v13 = v22;
  v15[0] = v21;
  v15[1] = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  BootModuleICE::issueShutdownComand_sync(a1, v15);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v22;
  if (v22 && !atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v19)
  {
    dispatch_release(v19);
  }

  if (v18)
  {
    _Block_release(v18);
  }
}

void sub_297525134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3 - 48);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v2 + 40);
  _Unwind_Resume(a1);
}

void sub_297525158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  v15 = *(v13 - 56);
  if (v15)
  {
    _Block_release(v15);
  }

  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v12 + 40);
  _Unwind_Resume(a1);
}

void BootModuleICE::shutdown_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 576) == 8)
  {
    v3 = operator new(0x28uLL);
    strcpy(v3, "BootModule already in shutdown state");
    v4 = *a2;
    std::string::__init_copy_ctor_external(&v20, v3, 0x24uLL);
    v4[2](v4, 0, &v20);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
    return;
  }

  v6 = *(a1 + 80);
  if (!v6 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v20.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v20.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_28_2;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v18 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *a2;
  if (*a2)
  {
    v11 = _Block_copy(v11);
  }

  v19 = v11;
  v12 = _Block_copy(aBlock);
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
  }

  v20.__r_.__value_.__r.__words[0] = v12;
  v20.__r_.__value_.__l.__size_ = v13;
  if (!v12)
  {
    v14 = 0;
    v15 = 0;
    v16 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v14 = _Block_copy(v12);
  v15 = v14;
  v16 = v13;
  if (v13)
  {
LABEL_15:
    dispatch_retain(v13);
  }

LABEL_16:
  BootModuleICE::shutdownAndFlush_sync(a1, &v15);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2975253F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *aBlock)
{
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(&a10);
  dispatch::callback<void({block_pointer})(int,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v20 - 72);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void sub_297525434(_Unwind_Exception *a1)
{
  if (*(v2 - 49) < 0)
  {
    operator delete(*(v2 - 72));
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, int a2)
{
  v3 = a1[4];
  v17 = 0;
  v18 = 0;
  v4 = a1[6];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v18 = v6;
    if (!v6)
    {
      return;
    }

    v7 = a1[5];
    v17 = v7;
    if (v7)
    {
      v8 = v6;
      (*(*v3 + 104))(v3, 8);
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_27_1;
      v12[4] = v3;
      v12[5] = v7;
      v13 = v8;
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = a2;
      v9 = a1[7];
      if (v9)
      {
        v9 = _Block_copy(v9);
      }

      v14 = v9;
      aBlock = _Block_copy(v12);
      BootModule::checkFSSyncStatus_sync(v3, &aBlock);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v14)
      {
        _Block_release(v14);
      }

      v10 = v13;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = v18;
  if (v18)
  {
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_297525650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    _Block_release(a16);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v18 + 40);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v19 - 64);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1, char a2, char a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || *(a1 + 64))
  {
    v5 = operator new(0x30uLL);
    strcpy(v5, "Baseband shutdown did not complete rfs sync");
    v6 = v4[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 64);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v23;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "%s: result=%x", &buf, 0x12u);
      v7 = v4[73];
      if (v7)
      {
LABEL_6:
        v8 = (*(*v7 + 32))(v7);
        v9 = v4[13];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "failed";
          if (v8)
          {
            v10 = "successful";
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (forced) %s", &buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = v4[73];
      if (v7)
      {
        goto LABEL_6;
      }
    }

    v11 = *(a1 + 56);
    std::string::__init_copy_ctor_external(&buf, v5, 0x2BuLL);
    (*(v11 + 16))(v11, 3760250880, &buf);
LABEL_11:
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    operator delete(v5);
    goto LABEL_14;
  }

  v13 = v4[17];
  if (!v13)
  {
    v5 = operator new(0x38uLL);
    strcpy(v5, "Baseband shutdown did not complete rfs sync in-time");
    v22 = *(a1 + 56);
    std::string::__init_copy_ctor_external(&buf, v5, 0x33uLL);
    (*(v22 + 16))(v22, 3760250880, &buf);
    goto LABEL_11;
  }

  v14 = v4[13];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Poweroff: RFS sync request completed; wait for reset detection", &buf, 2u);
    v13 = v4[17];
  }

  v15 = operator new(0x28uLL);
  v28 = v15;
  v29 = xmmword_29769A2A0;
  strcpy(v15, "Poweroff: Wait for reset detection");
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_18;
  v24[3] = &__block_descriptor_tmp_23_1;
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v24[4] = v4;
  v24[5] = v17;
  v25 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    v18 = _Block_copy(v18);
  }

  aBlock = v18;
  v19 = _Block_copy(v24);
  v27 = v19;
  v20 = dispatch_time(0, 3000000000);
  ResetDetection::add(v13, &v28, 1, &v27, v20);
  if (v19)
  {
    _Block_release(v19);
  }

  operator delete(v15);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v21 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_14:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_297525A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock)
{
  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
    operator delete(v16);
    _Unwind_Resume(a1);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE13shutdown_syncEN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke_18(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = operator new(0x30uLL);
    strcpy(v5, "Poweroff: Timeout waiting for reset detection");
    v6 = *(v4 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v5;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "%s", &__p, 0xCu);
    }

    v7 = *(a1 + 56);
    std::string::__init_copy_ctor_external(&__p, v5, 0x2DuLL);
    (*(v7 + 16))(v7, 3760250883, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    operator delete(v5);
  }

  else
  {
    v8 = *(v4 + 104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I Poweroff: Baseband asserted reset detection line", &__p, 2u);
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>((a1 + 56), &__p, "");
  }

  v9 = *(v4 + 584);
  if (v9)
  {
    v10 = (*(*v9 + 32))(v9);
    v11 = *(v4 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "forced";
      if (!a2)
      {
        v12 = "graceful";
      }

      v13 = "successful";
      if (!v10)
      {
        v13 = "failed";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
      *(__p.__r_.__value_.__r.__words + 4) = v12;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = v13;
      _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (%s) %s", &__p, 0x16u);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297525D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(uint64_t *a1, unsigned int *a2, char *__s)
{
  v4 = *a1;
  v5 = *a2;
  v6 = strlen(__s);
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
    v11 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_9;
  }

  HIBYTE(v11) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_9:
    memcpy(v8, __s, v7);
  }

  *(v7 + v8) = 0;
  (*(v4 + 16))(v4, v5, __dst);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_297525E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN13BootModuleICE21shutdownAndFlush_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE_block_invoke(void *a1, int a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  if (a2)
  {
    memset(&__p, 0, sizeof(__p));
    if (a2 == -534716413)
    {
      block.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
      *&block.__r_.__value_.__r.__words[1] = xmmword_2976A0EA0;
      strcpy(block.__r_.__value_.__l.__data_, "Timeout shutting down baseband: ");
      v7 = *(a3 + 23);
      if (v7 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v7 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }
    }

    else
    {
      block.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
      *&block.__r_.__value_.__r.__words[1] = xmmword_2976A0E90;
      strcpy(block.__r_.__value_.__l.__data_, "Error shutting down baseband: ");
      v13 = *(a3 + 23);
      if (v13 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v13 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = *(a3 + 8);
      }
    }

    v14 = std::string::append(&block, v8, v9);
    v15 = v14->__r_.__value_.__r.__words[0];
    v31[0] = v14->__r_.__value_.__l.__size_;
    *(v31 + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v15;
    __p.__r_.__value_.__l.__size_ = v31[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v31 + 7);
    *(&__p.__r_.__value_.__s + 23) = v16;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }

    v17 = *(v4 + 104);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_error_impl(&dword_297476000, v17, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    v31[0] = 0;
    v18 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v21 = Mutable;
    if (Mutable)
    {
      v31[0] = Mutable;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&block, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      block = __p;
    }

    ctu::cf::insert<char const*,std::string>(v21, *MEMORY[0x29EDBE648], &block, v18, v20);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
      if (!v21)
      {
        goto LABEL_37;
      }
    }

    else if (!v21)
    {
LABEL_37:
      v22 = a1[5];
      if (v22)
      {
        v23 = _Block_copy(v22);
      }

      else
      {
        v23 = 0;
      }

      v24 = a1[6];
      block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
      block.__r_.__value_.__l.__size_ = 1174405120;
      block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiNS3_IS4_EEEEEvDpT__block_invoke;
      v33 = &__block_descriptor_tmp_54;
      if (v23)
      {
        v25 = _Block_copy(v23);
        v36 = a2;
        aBlock = v25;
        cf = v21;
        if (!v21)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v36 = a2;
        aBlock = 0;
        cf = v21;
        if (!v21)
        {
LABEL_45:
          dispatch_async(v24, &block);
          if (cf)
          {
            CFRelease(cf);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v23)
          {
            _Block_release(v23);
          }

          if (v21)
          {
            CFRelease(v21);
            CFRelease(v21);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_55;
        }
      }

      CFRetain(v21);
      goto LABEL_45;
    }

    CFRetain(v21);
    goto LABEL_37;
  }

  v10 = a1[5];
  if (!v10)
  {
    v11 = 0;
    v12 = a1[6];
    v29 = 0;
    v30 = v12;
    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v11 = _Block_copy(v10);
  v12 = a1[6];
  v29 = v11;
  v30 = v12;
  if (v12)
  {
LABEL_11:
    dispatch_retain(v12);
  }

LABEL_12:
  BootModuleICE::requestFSSync_sync(v4, &v29);
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

LABEL_55:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_297526400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c87_ZTSN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c87_ZTSN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void BootModuleICE::issueShutdownComand_sync(void *a1, void *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = std::__shared_weak_count::lock(v3)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(buf, v7);
    v9 = *buf;
    memset(buf, 0, sizeof(buf));
    v10 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CADD8;
  }

  v12 = *(&off_2A18CADD8 + 1);
  v24 = v8;
  v25 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 16))(&v26, v8);
  v28 = 0;
  v29 = 0;
  if (v27)
  {
    v29 = std::__shared_weak_count::lock(v27);
    if (v29)
    {
      v28 = v26;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v13 = v28;
    if (v28)
    {
LABEL_23:
      v20[0] = MEMORY[0x29EDCA5F8];
      v20[1] = 1174405120;
      v20[2] = ___ZN13BootModuleICE24issueShutdownComand_syncENSt3__110shared_ptrIN4util18GuaranteedCallbackEEE_block_invoke;
      v20[3] = &__block_descriptor_tmp_33;
      v14 = a2[1];
      v20[4] = *a2;
      v21 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = _Block_copy(v20);
      v16 = a1[11];
      if (v16)
      {
        dispatch_retain(v16);
      }

      aBlock = v15;
      object = v16;
      (*(*v13 + 32))(v13, 0, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      v17 = v21;
      if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v18 = v29;
        if (!v29)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

LABEL_37:
      v18 = v29;
      if (!v29)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v13 = v28;
    if (v28)
    {
      goto LABEL_23;
    }
  }

  v19 = a1[13];
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_37;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v19, OS_LOG_TYPE_ERROR, "Driver unavailable for baseband shutdown", buf, 2u);
  v18 = v29;
  if (!v29)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_40:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_297526938(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void ___ZN13BootModuleICE24issueShutdownComand_syncENSt3__110shared_ptrIN4util18GuaranteedCallbackEEE_block_invoke(uint64_t a1, ctu::cf **a2)
{
  v2 = *(a1 + 32);
  v3 = *a2;
  ctu::cf::show(v11, *a2, a2);
  if (v12 >= 0)
  {
    v4 = v11;
  }

  else
  {
    v4 = v11[0];
  }

  v5 = strlen(v4);
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

    p_dst = operator new(v8);
    __dst.__r_.__value_.__l.__size_ = v6;
    __dst.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_12;
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_12:
    memmove(p_dst, v4, v6);
  }

  p_dst->__r_.__value_.__s.__data_[v6] = 0;
  if (v3)
  {
    v9 = -534716414;
  }

  else
  {
    v9 = 0;
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4util18GuaranteedCallback3runEiNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_3_4;
  block[4] = v2;
  v16 = v9;
  v10 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  if (*(v2 + 48) == -1)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once((v2 + 48), block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_22:
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(v11[0]);
    return;
  }

LABEL_26:
  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v12 < 0)
  {
    goto LABEL_27;
  }
}

void sub_297526B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  operator delete(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c53_ZTSNSt3__110shared_ptrIN4util18GuaranteedCallbackEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c53_ZTSNSt3__110shared_ptrIN4util18GuaranteedCallbackEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<BootModuleICE>::shared_ptr[abi:ne200100]<BootModuleICE,std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E46170;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}