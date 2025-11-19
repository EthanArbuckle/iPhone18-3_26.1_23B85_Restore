void sub_297116104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
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
  *__len = xmmword_297225680;
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

void sub_29711662C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
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
  v24 = xmmword_297225680;
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

void sub_2971169B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p)
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

void ABMServerFactory::ABMServerFactory(ABMServerFactory *this)
{
  Factory::Factory(this);
  *v1 = &unk_2A1E2ABB8;
}

{
  Factory::Factory(this);
  *v1 = &unk_2A1E2ABB8;
}

void ABMServerFactory::~ABMServerFactory(ABMServerFactory *this)
{
  Factory::~Factory(this);

  operator delete(v1);
}

void ABMServerFactory::createServiceManager(uint64_t *a1@<X1>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = ABMServiceManager::create(v4, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2, v3);

    std::__shared_weak_count::__release_weak(v2);
  }
}

double ABMServerFactory::createBBServerConnection@<D0>(_OWORD *a1@<X8>)
{
  _ZNSt3__115allocate_sharedB8ne200100I19QMIServerConnectionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v4);
  result = v4[0];
  *a1 = *v4;
  return result;
}

void ABMServerFactory::createAdaptiveTimerService(ABMServerFactory *this)
{
  ctu::FirstBootAfterUpdate::create();
  v1 = v8;
  v10 = v8;
  v2 = operator new(0x10uLL);
  *v2 = v6;
  v2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v2 + 2;
  v7 = v2;
  ctu::AdaptiveTimerService::create();
  if (v7)
  {
    v3 = v9;
    v4 = v7;
    if (v9 != v7)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 2;
      }

      while (v3 != v7);
      v4 = v7;
      v1 = v10;
    }

    operator delete(v4);
  }

  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void sub_297117858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](&a15);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](&a15);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<ctu::TimerScalingScenario>>::~vector[abi:ne200100](void **a1)
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
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void _ZNSt3__115allocate_sharedB8ne200100I16ABMServerFactoryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E2AC18;
  Factory::Factory(&v2[1]);
  v2[1].__vftable = &unk_2A1E2ABB8;
  *a1 = v4;
  a1[1] = v2;
  shared_weak_owners = v2[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v2->__on_zero_shared)(v2);

  std::__shared_weak_count::__release_weak(v2);
}

void sub_297117A84(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ABMServerFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E2AC18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__115allocate_sharedB8ne200100I19QMIServerConnectionNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x90uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E2AC68;
  v4 = MEMORY[0x29C26AB90](&v2[1]);
  *a1 = v4;
  a1[1] = v2;
  shared_weak_owners = v2[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    if (shared_weak_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__shared_owners_ = v4;
    v2[1].__shared_weak_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v2->__on_zero_shared)(v2);

  std::__shared_weak_count::__release_weak(v2);
}

void sub_297117C3C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<QMIServerConnection>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E2AC68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t AccessorySimulatorDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0x80uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v20 = v7;
    goto LABEL_6;
  }

  v20 = v19;
  (*(*v7 + 24))(v7, v19);
LABEL_6:
  v8 = *a2;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  AccessorySimulatorDelegate::AccessorySimulatorDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E2AD50;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v17 = v6;
  v18 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297117F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t AccessorySimulatorDelegate::AccessorySimulatorDelegate(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E2ACB8;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
    }

    else
    {
      v12 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v12 = 0;
  }

  v6 = *a3;
  v10 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v11, &v10, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *a1 = &unk_2A1E2ACB8;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2971181D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a10);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::~AccessorySimulatorDelegate(AccessorySimulatorDelegate *this)
{
  *this = &unk_2A1E2ACB8;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E2ACB8;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E2ACB8;
  v2 = *(this + 13);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 11);
  *(this + 11) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);

  operator delete(v5);
}

uint64_t AccessorySimulatorDelegate::handleServerCommand(uint64_t a1, const void **a2, void **a3)
{
  v6 = *MEMORY[0x29EDBF790];
  v7 = strlen(*MEMORY[0x29EDBF790]);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_59:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    p_dst = operator new(v10);
    v36 = v8;
    v37 = v10 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_9;
  }

  HIBYTE(v37) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_9:
    memmove(p_dst, v6, v8);
  }

  v11 = 0;
  *(p_dst + v8) = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  v14 = HIBYTE(v37);
  v15 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v14 = v36;
  }

  if (v13 == v14)
  {
    if (v12 >= 0)
    {
      v16 = a2;
    }

    else
    {
      v16 = *a2;
    }

    if (v37 >= 0)
    {
      v17 = &__dst;
    }

    else
    {
      v17 = __dst;
    }

    v11 = memcmp(v16, v17, v13) == 0;
    if ((v15 & 0x80000000) == 0)
    {
LABEL_17:
      if (!v11)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(__dst);
  if (!v11)
  {
    goto LABEL_31;
  }

LABEL_27:
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 1174405120;
  v33[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke;
  v33[3] = &__block_descriptor_tmp_34;
  v18 = *a3;
  v33[4] = a1;
  object = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v33);
  xpc_release(object);
  object = 0;
LABEL_31:
  v19 = *MEMORY[0x29EDBF758];
  v20 = strlen(*MEMORY[0x29EDBF758]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_59;
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    v36 = v21;
    v37 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_39;
  }

  HIBYTE(v37) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_39:
    memmove(v22, v19, v21);
  }

  v24 = 0;
  *(v22 + v21) = 0;
  v25 = *(a2 + 23);
  if (v25 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = a2[1];
  }

  v27 = HIBYTE(v37);
  v28 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v27 = v36;
  }

  if (v26 != v27)
  {
    if ((SHIBYTE(v37) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_57:
    operator delete(__dst);
    if (!v24)
    {
      return v11;
    }

    goto LABEL_48;
  }

  if (v25 >= 0)
  {
    v30 = a2;
  }

  else
  {
    v30 = *a2;
  }

  if (v37 >= 0)
  {
    v31 = &__dst;
  }

  else
  {
    v31 = __dst;
  }

  v24 = memcmp(v30, v31, v26) == 0;
  if (v28 < 0)
  {
    goto LABEL_57;
  }

LABEL_47:
  if (v24)
  {
LABEL_48:
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 0x40000000;
    v32[2] = ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3;
    v32[3] = &__block_descriptor_tmp_4;
    v32[4] = a1;
    ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped((a1 + 8), v32);
    return 1;
  }

  return v11;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  object = v1;
  v68 = 0;
  if (v1)
  {
    xpc_retain(v1);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = abm::AccessoryInfo::create();
  v5 = v4;
  xpc_release(object);
  object = 0;
  v6 = v3;
  v7 = *(v2 + 96);
  if ((v3 & 0xFFFF0000) != 0x10000)
  {
    if (v7)
    {
      v10 = vcnt_s8(v7);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v3;
        if (v7 <= v3)
        {
          v11 = v3 % *(v2 + 96);
        }
      }

      else
      {
        v11 = (v7 - 1) & v3;
      }

      v19 = *(*(v2 + 88) + 8 * v11);
      if (v19)
      {
        v20 = *v19;
        if (*v19)
        {
          if (v10.u32[0] < 2uLL)
          {
            while (1)
            {
              v22 = *(v20 + 1);
              if (v22 == v3)
              {
                if (v20[8] == v3)
                {
                  goto LABEL_54;
                }
              }

              else if ((v22 & (v7 - 1)) != v11)
              {
                goto LABEL_48;
              }

              v20 = *v20;
              if (!v20)
              {
                goto LABEL_48;
              }
            }
          }

          do
          {
            v21 = *(v20 + 1);
            if (v21 == v3)
            {
              if (v20[8] == v3)
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v21 >= v7)
              {
                v21 %= v7;
              }

              if (v21 != v11)
              {
                break;
              }
            }

            v20 = *v20;
          }

          while (v20);
        }
      }
    }

    else
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
    }

LABEL_48:
    v20 = operator new(0x20uLL);
    *v20 = 0;
    *(v20 + 1) = v3;
    v20[8] = v3;
    v20[9] = -1;
    *(v20 + 10) = 0;
    v20[14] = 0;
    v23 = (*(v2 + 112) + 1);
    v24 = *(v2 + 120);
    if (v7 && (v24 * v7) >= v23)
    {
      v25 = *(v2 + 88);
      v26 = *(v25 + 8 * v11);
      if (v26)
      {
LABEL_51:
        *v20 = *v26;
        goto LABEL_52;
      }

LABEL_126:
      *v20 = *(v2 + 104);
      *(v2 + 104) = v20;
      *(v25 + 8 * v11) = v2 + 104;
      if (!*v20)
      {
        goto LABEL_53;
      }

      v49 = *(*v20 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v49 >= v7)
        {
          v49 %= v7;
        }

        v26 = (v25 + 8 * v49);
      }

      else
      {
        v26 = (v25 + 8 * (v49 & (v7 - 1)));
      }

LABEL_52:
      *v26 = v20;
LABEL_53:
      ++*(v2 + 112);
LABEL_54:
      v18 = 0;
      *(v20 + 9) = v3;
      *(v20 + 13) = v5;
      goto LABEL_55;
    }

    v29 = 1;
    if (v7 >= 3)
    {
      v29 = (v7 & (v7 - 1)) != 0;
    }

    v30 = v29 | (2 * v7);
    v31 = vcvtps_u32_f32(v23 / v24);
    if (v30 <= v31)
    {
      prime = v31;
    }

    else
    {
      prime = v30;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v7 = *(v2 + 96);
    }

    if (prime > v7)
    {
LABEL_77:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = operator new(8 * prime);
      v34 = *(v2 + 88);
      *(v2 + 88) = v33;
      if (v34)
      {
        operator delete(v34);
        v33 = *(v2 + 88);
      }

      *(v2 + 96) = prime;
      bzero(v33, 8 * prime);
      v36 = v2 + 104;
      v35 = *(v2 + 104);
      if (!v35)
      {
        goto LABEL_107;
      }

      v37 = v35[1];
      v38 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v39 = v37 & v38;
        *(v33 + v39) = v36;
        for (i = *v35; *v35; i = *v35)
        {
          v41 = i[1] & v38;
          if (v41 == v39)
          {
            v35 = i;
          }

          else if (*(v33 + v41))
          {
            *v35 = *i;
            *i = **(v33 + v41);
            **(v33 + v41) = i;
          }

          else
          {
            *(v33 + v41) = v35;
            v35 = i;
            v39 = v41;
          }
        }

        goto LABEL_107;
      }

      if (v37 >= prime)
      {
        v37 %= prime;
      }

      *(v33 + v37) = v36;
      v45 = *v35;
      if (!*v35)
      {
LABEL_107:
        v7 = prime;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_108;
        }

        goto LABEL_125;
      }

      while (1)
      {
        v46 = v45[1];
        if (v46 >= prime)
        {
          v46 %= prime;
        }

        if (v46 == v37)
        {
          goto LABEL_101;
        }

        if (*(v33 + v46))
        {
          *v35 = *v45;
          *v45 = **(v33 + v46);
          **(v33 + v46) = v45;
          v45 = v35;
LABEL_101:
          v35 = v45;
          v45 = *v45;
          if (!v45)
          {
            goto LABEL_107;
          }
        }

        else
        {
          *(v33 + v46) = v35;
          v35 = v45;
          v45 = *v45;
          v37 = v46;
          if (!v45)
          {
            goto LABEL_107;
          }
        }
      }
    }

    if (prime < v7)
    {
      v42 = vcvtps_u32_f32(*(v2 + 112) / *(v2 + 120));
      if (v7 < 3 || (v43 = vcnt_s8(v7), v43.i16[0] = vaddlv_u8(v43), v43.u32[0] > 1uLL))
      {
        v42 = std::__next_prime(v42);
      }

      else
      {
        v44 = 1 << -__clz(v42 - 1);
        if (v42 >= 2)
        {
          v42 = v44;
        }
      }

      if (prime <= v42)
      {
        prime = v42;
      }

      if (prime < v7)
      {
        if (!prime)
        {
          v48 = *(v2 + 88);
          *(v2 + 88) = 0;
          if (v48)
          {
            operator delete(v48);
          }

          v7 = 0;
          *(v2 + 96) = 0;
          goto LABEL_125;
        }

        goto LABEL_77;
      }

      v7 = *(v2 + 96);
    }

    if ((v7 & (v7 - 1)) != 0)
    {
LABEL_108:
      if (v7 <= v3)
      {
        v11 = v3 % v7;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v11);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v11 = v3;
        v25 = *(v2 + 88);
        v26 = *(v25 + 8 * v3);
        if (v26)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_126;
    }

LABEL_125:
    v11 = (v7 - 1) & v3;
    v25 = *(v2 + 88);
    v26 = *(v25 + 8 * v11);
    if (v26)
    {
      goto LABEL_51;
    }

    goto LABEL_126;
  }

  if (!v7)
  {
    goto LABEL_29;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v3;
    if (v7 <= v3)
    {
      v9 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v9 = (v7 - 1) & v3;
  }

  v12 = *(v2 + 88);
  v13 = *(v12 + 8 * v9);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_29:
    __p = operator new(0x48uLL);
    v65 = xmmword_29722ABC0;
    strcpy(__p, "Invalid AccessoryID, could not find in cached accessory dictionary");
    (*(*v2 + 48))(&cf, v2, &__p, 5);
    v18 = cf;
    v68 = cf;
    cf = 0;
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_55;
  }

  v15 = v7 - 1;
  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v14[1];
      if (v16 == v3)
      {
        if (*(v14 + 8) == v3)
        {
          goto LABEL_113;
        }
      }

      else if ((v16 & v15) != v9)
      {
        goto LABEL_29;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v17 = v14[1];
    if (v17 == v3)
    {
      break;
    }

    if (v17 >= v7)
    {
      v17 %= v7;
    }

    if (v17 != v9)
    {
      goto LABEL_29;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_29;
    }
  }

  if (*(v14 + 8) != v3)
  {
    goto LABEL_24;
  }

LABEL_113:
  if (v8.u32[0] > 1uLL)
  {
    v47 = v3;
    if (v7 <= v3)
    {
      v47 = v3 % *(v2 + 96);
    }
  }

  else
  {
    v47 = (v7 - 1) & v3;
  }

  v50 = *(v12 + 8 * v47);
  if (!v50 || (v51 = *v50) == 0)
  {
LABEL_149:
    v18 = 0;
    goto LABEL_55;
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v52 = v51[1];
      if (v52 == v3)
      {
        if (*(v51 + 8) == v3)
        {
          goto LABEL_150;
        }
      }

      else if ((v52 & v15) != v47)
      {
        goto LABEL_149;
      }

      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }
    }
  }

  while (2)
  {
    v53 = v51[1];
    if (v53 != v3)
    {
      if (v53 >= v7)
      {
        v53 %= v7;
      }

      if (v53 != v47)
      {
        goto LABEL_149;
      }

      goto LABEL_144;
    }

    if (*(v51 + 8) != v3)
    {
LABEL_144:
      v18 = 0;
      v51 = *v51;
      if (!v51)
      {
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

LABEL_150:
  if (v8.u32[0] > 1uLL)
  {
    if (v7 <= v3)
    {
      v6 = v3 % v7;
    }
  }

  else
  {
    v6 = v15 & v3;
  }

  v54 = *(v12 + 8 * v6);
  do
  {
    v55 = v54;
    v54 = *v54;
  }

  while (v54 != v51);
  if (v55 == (v2 + 104))
  {
    goto LABEL_167;
  }

  v56 = v55[1];
  if (v8.u32[0] > 1uLL)
  {
    if (v56 >= v7)
    {
      v56 %= v7;
    }
  }

  else
  {
    v56 &= v15;
  }

  if (v56 != v6)
  {
LABEL_167:
    if (!*v51)
    {
      goto LABEL_168;
    }

    v57 = *(*v51 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v57 >= v7)
      {
        v57 %= v7;
      }
    }

    else
    {
      v57 &= v15;
    }

    if (v57 != v6)
    {
LABEL_168:
      *(v12 + 8 * v6) = 0;
    }
  }

  v58 = *v51;
  if (*v51)
  {
    v59 = *(v58 + 8);
    if (v8.u32[0] > 1uLL)
    {
      if (v59 >= v7)
      {
        v59 %= v7;
      }
    }

    else
    {
      v59 &= v15;
    }

    if (v59 != v6)
    {
      *(v12 + 8 * v59) = v55;
      v58 = *v51;
    }
  }

  *v55 = v58;
  *v51 = 0;
  --*(v2 + 112);
  operator delete(v51);
  v18 = 0;
LABEL_55:
  if (*(v2 + 80) == 1 && *(v2 + 72))
  {
    v63 = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v27 = operator new(0xCuLL);
    v61 = v27 + 3;
    v62 = (v27 + 3);
    *v27 = v3;
    v27[2] = v5;
    v60 = v27;
    v28 = *(v2 + 72);
    if (!v28)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v28 + 48))(v28, &v63, &v60);
    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }

    if (v63)
    {
      CFRelease(v63);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_297118F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_297118F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18)
{
  operator delete(v18);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void sub_297118F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t object, const void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void ___ZN26AccessorySimulatorDelegate19handleServerCommandENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 104);
    if (v2)
    {
      v3 = *(v1 + 72);
      if (v3)
      {
        *(v2 + 10) = 1;
LABEL_5:
        v8 = *(v2 + 18);
        v9 = *(v2 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v4 = operator new(0xCuLL);
        v11 = v4 + 3;
        v12 = (v4 + 3);
        *v4 = v8;
        v4[2] = v9;
        __p = v4;
        (*(*v3 + 48))(v3, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v2 = *v2;
          if (!v2)
          {
            break;
          }

          v3 = *(v1 + 72);
          *(v2 + 10) = 1;
          if (v3)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        do
        {
          *(v2 + 10) = 1;
          v2 = *v2;
        }

        while (v2);
      }
    }
  }

  if (*(v1 + 112))
  {
    v5 = *(v1 + 104);
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    *(v1 + 104) = 0;
    v7 = *(v1 + 96);
    if (v7)
    {
      bzero(*(v1 + 88), 8 * v7);
    }

    *(v1 + 112) = 0;
  }
}

void sub_2971191AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_2971191C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::start(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Already started", &v8, 2u);
    }
  }

  else
  {
    if (v4)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Starting", &v8, 2u);
    }

    *(v1 + 80) = 1;
    v5 = *(v1 + 104);
    if (v5)
    {
      v6 = *(v1 + 72);
      if (v6)
      {
LABEL_8:
        v8 = *(v5 + 18);
        v9 = *(v5 + 26);
        __p = 0;
        v11 = 0;
        v12 = 0;
        cf = 0;
        v7 = operator new(0xCuLL);
        v11 = v7 + 3;
        v12 = (v7 + 3);
        *v7 = v8;
        v7[2] = v9;
        __p = v7;
        (*(*v6 + 48))(v6, &cf, &__p);
        if (__p)
        {
          v11 = __p;
          operator delete(__p);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          v6 = *(v1 + 72);
          if (v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        do
        {
          v5 = *v5;
        }

        while (v5);
      }
    }
  }
}

void sub_2971193CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_2971193E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void AccessorySimulatorDelegate::stop(AccessorySimulatorDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN26AccessorySimulatorDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    *(v1 + 80) = 0;
  }

  else if (v4)
  {
    *v5 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v5, 2u);
  }
}

void std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AccessorySimulatorDelegate *,std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate *)#1},std::allocator<AccessorySimulatorDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI26AccessorySimulatorDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AccessorySimulatorDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<AccessorySimulatorDelegate>(AccessorySimulatorDelegate*)::{lambda(AccessorySimulatorDelegate*)#1}::operator() const(AccessorySimulatorDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

char *ABMGetRootVersionString@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297227A80;
  strcpy(result, "AppleBasebandServices_Manager-1397");
  return result;
}

uint64_t AccessoriesDelegateBase::AccessoriesDelegateBase(uint64_t a1, uint64_t a2, NSObject **a3, char *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = a1 + 8;
  v8 = *a3;
  *(v7 + 16) = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 40), "com.apple.telephony.abm", a4);
  *a1 = &unk_2A1E2ADA0;
  v9 = a1 + 48;
  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 != a2)
  {
    v10 = (*(*v10 + 16))(v10, v9);
LABEL_6:
    *(a1 + 72) = v10;
    *(a1 + 80) = 0;
    return a1;
  }

  *(a1 + 72) = v9;
  (*(**(a2 + 24) + 24))(*(a2 + 24));
  *(a1 + 80) = 0;
  return a1;
}

void AccessoriesDelegateBase::~AccessoriesDelegateBase(AccessoriesDelegateBase *this)
{
  *this = &unk_2A1E2ADA0;
  v2 = this + 48;
  v3 = *(this + 9);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    MEMORY[0x29C26B020](this + 40);
    v4 = *(this + 4);
    if (v4)
    {
LABEL_5:
      dispatch_release(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    MEMORY[0x29C26B020](this + 40);
    v4 = *(this + 4);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(this + 3);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t AccessoriesDelegateBase::createError@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, CFIndex a3@<X2>, CFErrorRef *a4@<X8>)
{
  v42 = *MEMORY[0x29EDCA608];
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[7] = v8;
  v36[8] = v8;
  v36[5] = v8;
  v36[6] = v8;
  v36[3] = v8;
  v36[4] = v8;
  v36[1] = v8;
  v36[2] = v8;
  v35 = v8;
  v36[0] = v8;
  *__p = v8;
  v34 = v8;
  v31 = v8;
  v32 = v8;
  v29 = v8;
  v30 = v8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "\n", 1);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ":\n", 2);
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v28 = 0xAAAAAAAAAAAAAAAALL;
  if ((BYTE8(v35) & 0x10) != 0)
  {
    v18 = v35;
    if (v35 < *(&v32 + 1))
    {
      *&v35 = *(&v32 + 1);
      v18 = *(&v32 + 1);
    }

    v19 = v32;
    v20 = v18 - v32;
    if ((v18 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      *(&v27.__r_.__value_.__s + 23) = 0;
      v27.__r_.__value_.__s.__data_[0] = 0;
      v17 = 0;
LABEL_16:
      v40 = v27;
      goto LABEL_23;
    }

    v19 = *(&v30 + 1);
    v20 = *(&v31 + 1) - *(&v30 + 1);
    if (*(&v31 + 1) - *(&v30 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_41:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v20 | 7) + 1;
    }

    v21 = operator new(v22);
    v27.__r_.__value_.__l.__size_ = v20;
    v27.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
    v27.__r_.__value_.__r.__words[0] = v21;
LABEL_21:
    memmove(v21, v19, v20);
    v21->__r_.__value_.__s.__data_[v20] = 0;
    v17 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  *(&v27.__r_.__value_.__s + 23) = v20;
  v21 = &v27;
  if (v20)
  {
    goto LABEL_21;
  }

  v27.__r_.__value_.__s.__data_[0] = 0;
  v17 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_22:
  std::string::__init_copy_ctor_external(&v40, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
LABEL_23:
  v38 = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v41 = v40;
  }

  v39 = 0;
  v23 = *MEMORY[0x29EDB8ED8];
  if (ctu::cf::convert_copy())
  {
    v24 = v39;
  }

  else
  {
    v24 = 0;
  }

  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v28 = v24;
    if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_38:
    operator delete(v40.__r_.__value_.__l.__data_);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  operator delete(v41.__r_.__value_.__l.__data_);
  v28 = v24;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_39:
  operator delete(v27.__r_.__value_.__l.__data_);
LABEL_32:
  v41.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDB8F38];
  v40.__r_.__value_.__r.__words[0] = v24;
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  *a4 = CFErrorCreateWithUserInfoKeysAndValues(v23, *MEMORY[0x29EDB8F50], a3, &v41.__r_.__value_.__l.__data_, &v40.__r_.__value_.__l.__data_, 1);
  if (v24)
  {
    CFRelease(v24);
  }

  *&v29 = *MEMORY[0x29EDC9538];
  *(&v29 + *(v29 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v29 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v30);
  std::ostream::~ostream();
  result = MEMORY[0x29C26C030](v36);
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297119D48(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, char a5, int a6, __int16 a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v23 - 144));
  if (*(v23 - 105) < 0)
  {
    operator delete(*(v23 - 128));
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a7, MEMORY[0x29EDC9538]);
    MEMORY[0x29C26C030](va);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  goto LABEL_6;
}

atomic_ullong *BasebandCrashReasonFilter::create@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x60uLL);
  BasebandCrashReasonFilter::BasebandCrashReasonFilter(v3);
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;

  return std::shared_ptr<BasebandCrashReasonFilter>::shared_ptr[abi:ne200100]<BasebandCrashReasonFilter,std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter*)#1},0>(a1, v3);
}

void BasebandCrashReasonFilter::~BasebandCrashReasonFilter(BasebandCrashReasonFilter *this)
{
  *this = &unk_2A1E2AE88;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 10);
    v6 = *(this + 9);
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 9);
        v5 -= 4;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *(this + 9);
    }

    *(this + 10) = v4;
    operator delete(v6);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = *(this + 7);
    v10 = *(this + 6);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 9);
        v9 -= 4;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = *(this + 6);
    }

    *(this + 7) = v8;
    operator delete(v10);
  }

  MEMORY[0x29C26B020](v2);
  v12 = *(this + 4);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 3);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

{
  BasebandCrashReasonFilter::~BasebandCrashReasonFilter(this);

  operator delete(v1);
}

void ***std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
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

void BasebandCrashReasonFilter::BasebandCrashReasonFilter(BasebandCrashReasonFilter *this)
{
  v36 = *MEMORY[0x29EDCA608];
  ctu::OsLogContext::OsLogContext(&buf, "com.apple.telephony.abm", "bb.crashreason.fltr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create_with_target_V2("BasebandCrashReasonFilter", initially_inactive, 0);
  dispatch_set_qos_class_floor(v3, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v3);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    *(this + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 4) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 40, v32);
  MEMORY[0x29C26B020](v32);
  ctu::OsLogContext::~OsLogContext(&buf);
  *this = &unk_2A1E2AE88;
  *(this + 3) = 0u;
  v4 = (this + 48);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  BasebandCrashReasonFilter::readBasebandCrashReasonPatternsFromPreferences(this, &buf);
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = *v4;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *v4;
    }

    *(this + 7) = v6;
    operator delete(v8);
    *v4 = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
  }

  v10 = buf.__r_.__value_.__r.__words[0];
  *(this + 6) = buf.__r_.__value_.__r.__words[0];
  size = buf.__r_.__value_.__l.__size_;
  *(this + 56) = *&buf.__r_.__value_.__r.__words[1];
  v12 = size;
  if (v10 == size)
  {
    goto LABEL_53;
  }

  v13 = *(this + 5);
  v5 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Baseband crash reason patterns and masks initialized from preferences file", &buf, 2u);
    v10 = *(this + 6);
    v12 = *(this + 7);
  }

  if (v10 == v12)
  {
LABEL_53:
    if (capabilities::radio::initium(v5))
    {
      BasebandCrashReasonFilter::readBasebandCrashReasonPatternsFromFactoryFile(&buf);
      v14 = *v4;
      if (*v4)
      {
        v15 = *(this + 7);
        v16 = *v4;
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 9);
            v15 -= 4;
            if (v17 < 0)
            {
              operator delete(*v15);
            }
          }

          while (v15 != v14);
          v16 = *v4;
        }

        *(this + 7) = v14;
        operator delete(v16);
        *v4 = 0;
        *(this + 7) = 0;
        *(this + 8) = 0;
      }

      v18 = buf.__r_.__value_.__r.__words[0];
      *(this + 6) = buf.__r_.__value_.__r.__words[0];
      v19 = buf.__r_.__value_.__l.__size_;
      *(this + 56) = *&buf.__r_.__value_.__r.__words[1];
      if (v18 != v19)
      {
        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Baseband crash reason patterns and masks initialized from factory file", &buf, 2u);
        }
      }
    }
  }

  v21 = *(this + 5);
  if (*(this + 6) == *(this + 7))
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v21, OS_LOG_TYPE_DEFAULT, "#I Default baseband crash reason patterns and masks will be used", &buf, 2u);
    }

    std::vector<ResetInfo::RegexPatternAndReasonMask>::__assign_with_size[abi:ne200100]<ResetInfo::RegexPatternAndReasonMask*,ResetInfo::RegexPatternAndReasonMask*>(this + 6, *(this + 9), *(this + 10), (*(this + 10) - *(this + 9)) >> 5);
    v21 = *(this + 5);
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_296FF7000, v21, OS_LOG_TYPE_DEBUG, "#D The effective baseband crash reason patterns and masks:", &buf, 2u);
    v22 = *(this + 6);
    v23 = *(this + 7);
    if (v22 != v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v22 = *(this + 6);
    v23 = *(this + 7);
    if (v22 != v23)
    {
LABEL_34:
      v24 = 0;
      do
      {
        v25 = *(this + 5);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_36;
        }

        if (*(v22 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *v22, *(v22 + 1));
        }

        else
        {
          v26 = *v22;
          v29.__r_.__value_.__r.__words[2] = *(v22 + 2);
          *&v29.__r_.__value_.__l.__data_ = v26;
        }

        v30 = *(v22 + 6);
        ResetInfo::toString(&v29, &buf);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v32 = 67109378;
        v33 = v24;
        v34 = 2080;
        v35 = p_buf;
        _os_log_debug_impl(&dword_296FF7000, v25, OS_LOG_TYPE_DEBUG, "#D pattern mask [%d]: %s", v32, 0x12u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_48:
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_48;
        }

        ++v24;
LABEL_36:
        v22 += 2;
      }

      while (v22 != v23);
    }
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_29711A4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100]((v18 + 72));
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v19);
  MEMORY[0x29C26B020](v18 + 40);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable((v18 + 8));
  _Unwind_Resume(a1);
}

void BasebandCrashReasonFilter::readBasebandCrashReasonPatternsFromPreferences(BasebandCrashReasonFilter *this@<X0>, void ***a2@<X8>)
{
  v20 = 0;
  cf = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v5 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v5, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v5;
    v4 = operator new(0x20uLL);
    *v4 = &unk_2A1E26558;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v5;
    v6 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v5;
    *(&xmmword_2A18B7520 + 1) = v4;
    if (!v6)
    {
      *&v18 = v5;
      *(&v18 + 1) = v4;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v4 = *(&xmmword_2A18B7520 + 1);
  v5 = xmmword_2A18B7520;
  v18 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p[0] = operator new(0x28uLL);
  *&__p[1] = xmmword_297227AD0;
  strcpy(__p[0], "BasebandCrashReasonRegexPatterns");
  v7 = Preferences::getPreference<__CFArray const*>(v5, __p, &v20);
  if (v20)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(&v18 + 1);
  if (*(&v18 + 1) && !atomic_fetch_add((*(&v18 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (v8)
    {
      goto LABEL_17;
    }
  }

  else if (v8)
  {
LABEL_17:
    v10 = v20;
    v11 = cf;
    cf = v20;
    if (v11)
    {
      CFRelease(v11);
    }

    v16 = v10;
    if (v10)
    {
      CFRetain(v10);
    }

    BasebandCrashReasonFilter::convertBasebandCrashReasonPatternsFromCFSharedArrayToVector(&v16, __p);
    v12 = *a2;
    if (*a2)
    {
      v13 = a2[1];
      while (v13 != v12)
      {
        v14 = *(v13 - 9);
        v13 -= 4;
        if (v14 < 0)
        {
          operator delete(*v13);
        }
      }

      operator delete(v12);
    }

    *a2 = *__p;
    a2[2] = __p[2];
    memset(__p, 0, 24);
    if (v10)
    {
      CFRelease(v10);
    }

    goto LABEL_32;
  }

  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I No baseband crash reason patterns entry found in ABMProperties", __p, 2u);
  }

LABEL_32:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_29711A830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, const void *a20)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v20);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(&a20);
  _Unwind_Resume(a1);
}

uint64_t BasebandCrashReasonFilter::readBasebandCrashReasonPatternsFromFactoryFile@<X0>(void *a1@<X8>)
{
  memset(v10, 170, sizeof(v10));
  MEMORY[0x29C26B190](v10, @"/AppleInternal/Cellular/Factory/BasebandCOFSCD.plist", *MEMORY[0x29EDB8FB0]);
  v9 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  ctu::cf::MakeCFString::MakeCFString(v7, "BasebandCrashReasonRegexPatterns");
  v3 = ctu::cf::map_adapter::copyCFArrayRef(v10, v7[0]);
  MEMORY[0x29C26B130](v7);
  v9 = v3;
  v6 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  BasebandCrashReasonFilter::convertBasebandCrashReasonPatternsFromCFSharedArrayToVector(&v6, v7);
  v4 = v8;
  *a1 = *v7;
  a1[2] = v4;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  if (v3)
  {
    CFRelease(v3);
    CFRelease(v3);
  }

  return MEMORY[0x29C26B1A0](v10);
}

void sub_29711A9D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va1);
  MEMORY[0x29C26B1A0](v3 - 40);
  _Unwind_Resume(a1);
}

void BasebandCrashReasonFilter::convertBasebandCrashReasonPatternsFromCFSharedArrayToVector(CFArrayRef *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (*a1)
  {
    Count = CFArrayGetCount(*a1);
    std::vector<ResetInfo::RegexPatternAndReasonMask>::reserve(a2, Count);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v7 = ValueAtIndex;
        if (ValueAtIndex && (v8 = CFGetTypeID(ValueAtIndex), v8 == CFDictionaryGetTypeID()))
        {
          v18 = v7;
          CFRetain(v7);
        }

        else
        {
          v7 = 0;
          v18 = 0;
        }

        v17[0] = 0xAAAAAAAAAAAAAAAALL;
        v17[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v17, v7);
        memset(&v16, 170, sizeof(v16));
        memset(&__p, 0, sizeof(__p));
        ctu::cf::MakeCFString::MakeCFString(&v19, "BasebandCrashReasonRegexPattern");
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C26B130](&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ctu::cf::MakeCFString::MakeCFString(&__p, "BasebandCrashReasonRegexPatternMask");
        Int = ctu::cf::map_adapter::getInt(v17, __p.__r_.__value_.__l.__data_);
        MEMORY[0x29C26B130](&__p);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v16;
        }

        v15 = Int;
        v10 = *(a2 + 8);
        if (v10 >= *(a2 + 16))
        {
          v12 = std::vector<ResetInfo::RegexPatternAndReasonMask>::__emplace_back_slow_path<ResetInfo::RegexPatternAndReasonMask>(a2, &__p);
          v13 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v12;
          if (v13 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_19:
              MEMORY[0x29C26B180](v17);
              if (!v7)
              {
                continue;
              }

LABEL_23:
              CFRelease(v7);
              continue;
            }
          }

          else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *&__p.__r_.__value_.__l.__data_;
          *(v10 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v10 = v11;
          memset(&__p, 0, sizeof(__p));
          *(v10 + 24) = v15;
          *(a2 + 8) = v10 + 32;
          if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        operator delete(v16.__r_.__value_.__l.__data_);
        MEMORY[0x29C26B180](v17);
        if (v7)
        {
          goto LABEL_23;
        }
      }
    }
  }
}

void sub_29711AC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, const void *a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26B180](&a23);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a25);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void std::vector<ResetInfo::RegexPatternAndReasonMask>::reserve(__int128 **a1, unint64_t a2)
{
  v2 = *a1;
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v4 = a1[1];
    v5 = 32 * a2;
    v6 = operator new(32 * a2);
    v7 = v6;
    v8 = &v6[v5];
    v9 = &v6[v4 - v2];
    if (v4 != v2)
    {
      v10 = v2;
      v11 = v6;
      do
      {
        v12 = *v10;
        *(v11 + 2) = *(v10 + 2);
        *v11 = v12;
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *v10 = 0;
        *(v11 + 6) = *(v10 + 6);
        v10 += 2;
        v11 += 32;
      }

      while (v10 != v4);
      do
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

        v2 += 2;
      }

      while (v2 != v4);
      v2 = *a1;
    }

    *a1 = v7;
    a1[1] = v9;
    a1[2] = v8;
    if (v2)
    {

      operator delete(v2);
    }
  }
}

void std::vector<ResetInfo::RegexPatternAndReasonMask>::__assign_with_size[abi:ne200100]<ResetInfo::RegexPatternAndReasonMask*,ResetInfo::RegexPatternAndReasonMask*>(void **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 5)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 9);
          v10 -= 4;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 >> 59)
    {
      goto LABEL_68;
    }

    v30 = v7 >> 4;
    if (v7 >> 4 <= a4)
    {
      v30 = a4;
    }

    v31 = v7 >= 0x7FFFFFFFFFFFFFE0;
    v32 = 0x7FFFFFFFFFFFFFFLL;
    if (!v31)
    {
      v32 = v30;
    }

    if (v32 >> 59)
    {
LABEL_68:
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v33 = 32 * v32;
    v34 = operator new(32 * v32);
    *a1 = v34;
    a1[1] = v34;
    a1[2] = v34 + v33;
    v41 = v34;
    if (v5 == a3)
    {
      v8 = v34;
    }

    else
    {
      v8 = v34;
      do
      {
        if (v5[23] < 0)
        {
          std::string::__init_copy_ctor_external(v8, *v5, *(v5 + 1));
          v36 = v41;
        }

        else
        {
          v35 = *v5;
          v8->__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&v8->__r_.__value_.__l.__data_ = v35;
          v36 = v8;
        }

        LODWORD(v8[1].__r_.__value_.__l.__data_) = *(v5 + 6);
        v5 += 32;
        v8 = (v36 + 32);
        v41 = (v36 + 32);
      }

      while (v5 != a3);
    }

LABEL_66:
    a1[1] = v8;
    return;
  }

  v13 = a1[1];
  v14 = (v13 - v8);
  if (a4 <= (v13 - v8) >> 5)
  {
    if (a2 != a3)
    {
      v23 = 0;
      do
      {
        v26 = v8 + v23;
        v27 = &v5[v23];
        if (v5 != v8)
        {
          v28 = v27[23];
          if (v26[23] < 0)
          {
            if (v28 >= 0)
            {
              v24 = &v5[v23];
            }

            else
            {
              v24 = *&v5[v23];
            }

            if (v28 >= 0)
            {
              v25 = v27[23];
            }

            else
            {
              v25 = *&v5[v23 + 8];
            }

            std::string::__assign_no_alias<false>((&v8->__r_.__value_.__l.__data_ + v23), v24, v25);
          }

          else if (v27[23] < 0)
          {
            std::string::__assign_no_alias<true>(&v8->__r_.__value_.__r.__words[v23 / 8], *&v5[v23], *&v5[v23 + 8]);
          }

          else
          {
            v29 = *v27;
            *(v26 + 2) = *(v27 + 2);
            *v26 = v29;
          }
        }

        *(v26 + 6) = *(v27 + 6);
        v23 += 32;
      }

      while (&v5[v23] != a3);
      v13 = a1[1];
      v8 = (v8 + v23);
    }

    while (v13 != v8)
    {
      v40 = *(v13 - 9);
      v13 -= 4;
      if (v40 < 0)
      {
        operator delete(*v13);
      }
    }

    goto LABEL_66;
  }

  v15 = &v14[a2];
  if (v13 != v8)
  {
    v16 = 0;
    do
    {
      v19 = &v16[v8];
      v20 = &v16[v5];
      if (v5 != v8)
      {
        v21 = v20[23];
        if (v19[23] < 0)
        {
          if (v21 >= 0)
          {
            v17 = &v16[v5];
          }

          else
          {
            v17 = *&v16[v5];
          }

          if (v21 >= 0)
          {
            v18 = v20[23];
          }

          else
          {
            v18 = *&v16[v5 + 8];
          }

          std::string::__assign_no_alias<false>(&v16[v8], v17, v18);
        }

        else if (v20[23] < 0)
        {
          std::string::__assign_no_alias<true>(&v16[v8], *&v16[v5], *&v16[v5 + 8]);
        }

        else
        {
          v22 = *v20;
          *(v19 + 2) = *(v20 + 2);
          *v19 = v22;
        }
      }

      *(v19 + 6) = *(v20 + 6);
      v16 += 32;
    }

    while (v14 != v16);
    v13 = a1[1];
  }

  v42 = v13;
  v37 = v13;
  if (v15 != a3)
  {
    v37 = v13;
    do
    {
      if (v15[23] < 0)
      {
        std::string::__init_copy_ctor_external(v37, *v15, *(v15 + 1));
        v39 = v42;
      }

      else
      {
        v38 = *v15;
        v37[2] = *(v15 + 2);
        *v37 = v38;
        v39 = v37;
      }

      *(v37 + 6) = *(v15 + 6);
      v15 += 32;
      v37 = v39 + 4;
      v42 = v39 + 4;
    }

    while (v15 != a3);
  }

  a1[1] = v37;
}

void sub_29711B198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_29711B1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetInfo::RegexPatternAndReasonMask>,ResetInfo::RegexPatternAndReasonMask*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

char *std::vector<ResetInfo::RegexPatternAndReasonMask>::__emplace_back_slow_path<ResetInfo::RegexPatternAndReasonMask>(char **a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  if (v7)
  {
    if (v7 >> 59)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v8 = operator new(32 * v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[32 * v2];
  v10 = &v8[32 * v7];
  *v9 = *a2;
  *(v9 + 2) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(v9 + 6) = *(a2 + 24);
  v11 = v9 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = &v9[*a1 - v13];
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      v17 = *v15;
      *(v16 + 2) = *(v15 + 2);
      *v16 = v17;
      *(v15 + 1) = 0;
      *(v15 + 2) = 0;
      *v15 = 0;
      *(v16 + 6) = *(v15 + 6);
      v15 += 32;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      if (v12[23] < 0)
      {
        operator delete(*v12);
      }

      v12 += 32;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = v10;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

atomic_ullong *std::shared_ptr<BasebandCrashReasonFilter>::shared_ptr[abi:ne200100]<BasebandCrashReasonFilter,std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2AF40;
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

void sub_29711B490(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter*)#1}::operator() const(BasebandCrashReasonFilter*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BasebandCrashReasonFilter *,std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter *)#1},std::allocator<BasebandCrashReasonFilter>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandCrashReasonFilter *,std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter *)#1},std::allocator<BasebandCrashReasonFilter>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI25BasebandCrashReasonFilterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI25BasebandCrashReasonFilterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI25BasebandCrashReasonFilterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI25BasebandCrashReasonFilterE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandCrashReasonFilter> ctu::SharedSynchronizable<BasebandCrashReasonFilter>::make_shared_ptr<BasebandCrashReasonFilter>(BasebandCrashReasonFilter*)::{lambda(BasebandCrashReasonFilter*)#1}::operator() const(BasebandCrashReasonFilter*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t abm::ParseWakeDataEureka(xpc_object_t *a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26CE60](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00] || MEMORY[0x29C26CE60](*a2) != v5)
  {
    return 0;
  }

  v7 = xpc_string_create(*MEMORY[0x29EDBEA80]);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE848], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v9 = *MEMORY[0x29EDBEDA8];
  value = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBEDA8]);
  v99 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v99 = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(&v99, 0);
  xpc_release(v99);
  v12 = xpc_int64_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, v9, v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = *MEMORY[0x29EDBE9D0];
  v15 = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBE9D0]);
  if (v15)
  {
    v16 = v15;
    xpc_retain(v15);
  }

  else
  {
    v16 = xpc_null_create();
  }

  v17 = MEMORY[0x29C26CE60](v16);
  v18 = MEMORY[0x29EDCAA40];
  if (v17 != MEMORY[0x29EDCAA40])
  {
    if (v16)
    {
      xpc_retain(v16);
      v19 = v16;
    }

    else
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a2, v14, v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
  }

  switch(v11)
  {
    case 1:
      v101 = xpc_string_create(*MEMORY[0x29EDBEB90]);
      if (!v101)
      {
        v101 = xpc_null_create();
      }

      v39 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v39;
      xpc::dict::object_proxy::operator=(&v99, &v101, &v102);
      xpc_release(v102);
      v102 = 0;
      xpc_release(v101);
      v101 = 0;
      v97 = xpc_string_create(*MEMORY[0x29EDBF0D8]);
      if (!v97)
      {
        v97 = xpc_null_create();
      }

      v40 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v40;
      xpc::dict::object_proxy::operator=(&v99, &v97, &v98);
      xpc_release(v98);
      v98 = 0;
      xpc_release(v97);
      v97 = 0;
      break;
    case 2:
      v95 = xpc_string_create(*MEMORY[0x29EDBEB90]);
      if (!v95)
      {
        v95 = xpc_null_create();
      }

      v41 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v41;
      xpc::dict::object_proxy::operator=(&v99, &v95, &v96);
      xpc_release(v96);
      v96 = 0;
      xpc_release(v95);
      v95 = 0;
      v93 = xpc_string_create(*MEMORY[0x29EDBEE40]);
      if (!v93)
      {
        v93 = xpc_null_create();
      }

      v42 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v42;
      xpc::dict::object_proxy::operator=(&v99, &v93, &v94);
      xpc_release(v94);
      v94 = 0;
      xpc_release(v93);
      v93 = 0;
      break;
    case 3:
    case 11:
      v21 = xpc_string_create(*MEMORY[0x29EDBEE48]);
      if (!v21)
      {
        v21 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v21);
      v22 = xpc_null_create();
      xpc_release(v21);
      xpc_release(v22);
      v23 = xpc_string_create(*MEMORY[0x29EDBECE8]);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v23);
      v24 = xpc_null_create();
      xpc_release(v23);
      xpc_release(v24);
      if (MEMORY[0x29C26CE60](v16) != v18)
      {
        v91 = v16;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          v91 = xpc_null_create();
        }

        abm::_ParseEurekaQMI(&v92);
        xpc_release(v91);
        v91 = 0;
        xpc::dict::dict(&v89, &v92);
        v49 = *MEMORY[0x29EDBF190];
        v99 = a2;
        v100 = v49;
        xpc::dict::object_proxy::operator=(&v99, &v89, &v90);
        xpc_release(v90);
        v90 = 0;
        xpc_release(v89);
        v89 = 0;
        xpc_release(v92);
      }

      break;
    case 4:
    case 13:
      v88 = *a1;
      if (v88)
      {
        xpc_retain(v88);
      }

      else
      {
        v88 = xpc_null_create();
      }

      abm::ParseWakeDataIP(&v88, a2);
      xpc_release(v88);
      v88 = 0;
      break;
    case 5:
    case 12:
      v25 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v25);
      v26 = xpc_null_create();
      xpc_release(v25);
      xpc_release(v26);
      v27 = xpc_string_create(*MEMORY[0x29EDBF0E0]);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v27);
      v28 = xpc_null_create();
      xpc_release(v27);
      xpc_release(v28);
      break;
    case 6:
      v78 = xpc_string_create(*MEMORY[0x29EDBEB90]);
      if (!v78)
      {
        v78 = xpc_null_create();
      }

      v47 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v47;
      xpc::dict::object_proxy::operator=(&v99, &v78, &v79);
      xpc_release(v79);
      v79 = 0;
      xpc_release(v78);
      v78 = 0;
      v76 = xpc_string_create(*MEMORY[0x29EDBEE18]);
      if (!v76)
      {
        v76 = xpc_null_create();
      }

      v48 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v48;
      xpc::dict::object_proxy::operator=(&v99, &v76, &v77);
      xpc_release(v77);
      v77 = 0;
      xpc_release(v76);
      v76 = 0;
      break;
    case 7:
      v74 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v74)
      {
        v74 = xpc_null_create();
      }

      v45 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v45;
      xpc::dict::object_proxy::operator=(&v99, &v74, &v75);
      xpc_release(v75);
      v75 = 0;
      xpc_release(v74);
      v74 = 0;
      v72 = xpc_string_create(*MEMORY[0x29EDBEE10]);
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      v46 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v46;
      xpc::dict::object_proxy::operator=(&v99, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
      break;
    case 9:
      v70 = xpc_string_create(*MEMORY[0x29EDBEE48]);
      if (!v70)
      {
        v70 = xpc_null_create();
      }

      v31 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v31;
      xpc::dict::object_proxy::operator=(&v99, &v70, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v70);
      v70 = 0;
      v68 = xpc_string_create(*MEMORY[0x29EDBEE38]);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      v32 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v32;
      xpc::dict::object_proxy::operator=(&v99, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      if (MEMORY[0x29C26CE60](v16) != v18)
      {
        v66 = xpc_string_create(*MEMORY[0x29EDBECE8]);
        if (!v66)
        {
          v66 = xpc_null_create();
        }

        v99 = a2;
        v100 = v32;
        xpc::dict::object_proxy::operator=(&v99, &v66, &v67);
        xpc_release(v67);
        v67 = 0;
        xpc_release(v66);
        v65 = v16;
        v66 = 0;
        v92 = 0xAAAAAAAAAAAAAAAALL;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          v65 = xpc_null_create();
        }

        abm::_ParseEurekaQMI(&v92);
        xpc_release(v65);
        v65 = 0;
        xpc::dict::dict(&v63, &v92);
        v50 = *MEMORY[0x29EDBF190];
        v99 = a2;
        v100 = v50;
        xpc::dict::object_proxy::operator=(&v99, &v63, &v64);
        xpc_release(v64);
        v64 = 0;
        xpc_release(v63);
        v63 = 0;
        xpc_release(v92);
      }

      break;
    case 10:
      v61 = xpc_string_create(*MEMORY[0x29EDBEA88]);
      if (!v61)
      {
        v61 = xpc_null_create();
      }

      v35 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v35;
      xpc::dict::object_proxy::operator=(&v99, &v61, &v62);
      xpc_release(v62);
      v62 = 0;
      xpc_release(v61);
      v61 = 0;
      v59 = xpc_string_create(*MEMORY[0x29EDBEE30]);
      if (!v59)
      {
        v59 = xpc_null_create();
      }

      v36 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v36;
      xpc::dict::object_proxy::operator=(&v99, &v59, &v60);
      xpc_release(v60);
      v60 = 0;
      xpc_release(v59);
      v59 = 0;
      break;
    case 14:
      v57 = xpc_string_create(*MEMORY[0x29EDBECF8]);
      if (!v57)
      {
        v57 = xpc_null_create();
      }

      v33 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v33;
      xpc::dict::object_proxy::operator=(&v99, &v57, &v58);
      xpc_release(v58);
      v58 = 0;
      xpc_release(v57);
      v57 = 0;
      v55 = xpc_string_create(*MEMORY[0x29EDBF428]);
      if (!v55)
      {
        v55 = xpc_null_create();
      }

      v34 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v34;
      xpc::dict::object_proxy::operator=(&v99, &v55, &v56);
      xpc_release(v56);
      v56 = 0;
      xpc_release(v55);
      v55 = 0;
      break;
    case 15:
      v86 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v86)
      {
        v86 = xpc_null_create();
      }

      v29 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v29;
      xpc::dict::object_proxy::operator=(&v99, &v86, &v87);
      xpc_release(v87);
      v87 = 0;
      xpc_release(v86);
      v86 = 0;
      v84 = xpc_string_create(*MEMORY[0x29EDBEE28]);
      if (!v84)
      {
        v84 = xpc_null_create();
      }

      v30 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v30;
      xpc::dict::object_proxy::operator=(&v99, &v84, &v85);
      xpc_release(v85);
      v85 = 0;
      xpc_release(v84);
      v84 = 0;
      break;
    case 16:
      v82 = xpc_string_create(*MEMORY[0x29EDBEB98]);
      if (!v82)
      {
        v82 = xpc_null_create();
      }

      v43 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v43;
      xpc::dict::object_proxy::operator=(&v99, &v82, &v83);
      xpc_release(v83);
      v83 = 0;
      xpc_release(v82);
      v82 = 0;
      v80 = xpc_string_create(*MEMORY[0x29EDBEE00]);
      if (!v80)
      {
        v80 = xpc_null_create();
      }

      v44 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v44;
      xpc::dict::object_proxy::operator=(&v99, &v80, &v81);
      xpc_release(v81);
      v81 = 0;
      xpc_release(v80);
      v80 = 0;
      break;
    default:
      v53 = xpc_string_create(*MEMORY[0x29EDBEE50]);
      if (!v53)
      {
        v53 = xpc_null_create();
      }

      v37 = *MEMORY[0x29EDBE9D8];
      v99 = a2;
      v100 = v37;
      xpc::dict::object_proxy::operator=(&v99, &v53, &v54);
      xpc_release(v54);
      v54 = 0;
      xpc_release(v53);
      v53 = 0;
      v51 = xpc_string_create(*MEMORY[0x29EDBF428]);
      if (!v51)
      {
        v51 = xpc_null_create();
      }

      v38 = *MEMORY[0x29EDBEDB0];
      v99 = a2;
      v100 = v38;
      xpc::dict::object_proxy::operator=(&v99, &v51, &v52);
      xpc_release(v52);
      v52 = 0;
      xpc_release(v51);
      v51 = 0;
      break;
  }

  xpc_release(v16);
  return 1;
}

void sub_29711C24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v23);
  _Unwind_Resume(a1);
}

void abm::_ParseEurekaQMI(xpc_object_t *a1)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    v3 = xpc_null_create();
    *a1 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v3) != MEMORY[0x29EDCAA00])
  {
    v4 = xpc_null_create();
LABEL_8:
    *a1 = v4;
    goto LABEL_9;
  }

  xpc_retain(v3);
LABEL_9:
  xpc_release(v3);
  memset(v12, 170, sizeof(v12));
  xpc::dyn_cast_or_default();
  __p = 0;
  p_p = &__p;
  v10 = 0x2000000000;
  v11 = 0;
  if (v12[1] == v12[0])
  {
    goto LABEL_14;
  }

  object = *a1;
  if (*a1)
  {
    xpc_retain(*a1);
  }

  else
  {
    object = xpc_null_create();
  }

  qmi::parse();
  xpc_release(object);
  if ((p_p[3] & 1) == 0)
  {
LABEL_14:
    v5 = xpc_BOOL_create(1);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a1, *MEMORY[0x29EDBF6B8], v5);
    v6 = xpc_null_create();
    xpc_release(v5);
    xpc_release(v6);
  }

  _Block_object_dispose(&__p, 8);
  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_29711C68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17)
{
  xpc_release(object);
  _Block_object_dispose(&a16, 8);
  v20 = *(v18 - 56);
  if (v20)
  {
    *(v18 - 48) = v20;
    operator delete(v20);
  }

  xpc::dict::~dict(v17);
  _Unwind_Resume(a1);
}

void ___ZN3abmL15_ParseEurekaQMIEN3xpc6objectE_block_invoke(uint64_t a1, uint64_t a2, unsigned __int16 *a3, int a4, int a5)
{
  v9 = a1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
  v10 = xpc_int64_create(*(a2 + 2));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBF058], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_int64_create(*(a2 + 6));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBF290], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(*(a2 + 5));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBF4E0], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = *(a2 + 8);
  v17 = qmi::asString();
  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBF1B0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  if (a3 && a5 >= 2)
  {
    v20 = xpc_int64_create(*a3);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBEF10], v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
  }

  v22 = 0;
  if (*a2 == 1 && *(a2 + 4) == 128 && *(a2 + 5) == 5)
  {
    v22 = 0;
    if (a5 >= a4)
    {
      v23 = a4;
    }

    else
    {
      v23 = a5;
    }

    v79 = 0;
    v77 = &v78;
    v78 = 0;
    v80 = 0xAAAAAAAA00000000;
    v24 = v23 - 4;
    if (v23 < 4)
    {
      goto LABEL_97;
    }

    v25 = *a3;
    LOWORD(v80) = *a3;
    v26 = a3[1];
    WORD1(v80) = a3[1];
    v72 = v9;
    if (v23 >= 8)
    {
      v27 = 0;
      v28 = (a3 + 2);
      v73 = v23 - 7;
      while (1)
      {
        v32 = *v28;
        v33 = *(v28 + 1);
        if (v73 - v27 >= v33)
        {
          v34 = *(v28 + 1);
        }

        else
        {
          v34 = v73 - v27;
        }

        if (v34)
        {
          v35 = operator new(v34);
          v36 = &v35[v34];
          bzero(v35, v34);
        }

        else
        {
          v35 = 0;
          v36 = 0;
        }

        memcpy(v35, v28 + 3, v34);
        v37 = v78;
        v38 = &v78;
LABEL_34:
        v39 = v38;
        if (v37)
        {
          while (1)
          {
            v38 = v37;
            v40 = *(v37 + 32);
            if (v32 < v40)
            {
              v37 = *v38;
              goto LABEL_34;
            }

            if (v40 >= v32)
            {
              break;
            }

            v37 = v38[1];
            if (!v37)
            {
              v39 = v38 + 1;
              goto LABEL_39;
            }
          }

          v29 = v38;
          v31 = v38 + 5;
          v30 = v38[5];
          if (!v30)
          {
            goto LABEL_25;
          }
        }

        else
        {
LABEL_39:
          v29 = operator new(0x40uLL);
          v29[32] = v32;
          *(v29 + 6) = 0;
          *(v29 + 7) = 0;
          *(v29 + 5) = 0;
          *v29 = 0;
          *(v29 + 1) = 0;
          *(v29 + 2) = v38;
          *v39 = v29;
          if (*v77)
          {
            v77 = *v77;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v78, v29);
          ++v79;
          v31 = v29 + 40;
          v30 = *(v29 + 5);
          if (!v30)
          {
            goto LABEL_25;
          }
        }

        *(v29 + 6) = v30;
        operator delete(v30);
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
LABEL_25:
        v28 += (v33 + 3);
        v27 += v33 + 3;
        *(v29 + 5) = v35;
        *(v29 + 6) = v36;
        *(v29 + 7) = v36;
        if (v27 + 3 >= v24)
        {
          v26 = WORD1(v80);
          v25 = v80;
          v9 = v72;
          break;
        }
      }
    }

    v22 = 0;
    if (!v26 || v25 != 1)
    {
      goto LABEL_97;
    }

    v75 = 0;
    v76 = 0;
    v74 = &v75;
    v41 = v77;
    if (v77 == &v78)
    {
      v42 = 0;
    }

    else
    {
      v42 = 0;
      v43 = &v75;
      v44 = &v75;
LABEL_61:
      if (v42)
      {
        v50 = v44;
      }

      else
      {
        v50 = &v75;
      }

      if (v42)
      {
        v49 = (v44 + 1);
      }

      else
      {
        v44 = &v74;
        v49 = &v75;
      }

      if (v44[1])
      {
        goto LABEL_68;
      }

      while (1)
      {
LABEL_70:
        memset(v81, 170, sizeof(v81));
        v53 = operator new(0x40uLL);
        v81[0] = v53;
        v81[1] = &v74;
        v81[2] = 0;
        v54 = *(v41 + 32);
        v53[5] = 0;
        *(v53 + 32) = v54;
        v53[6] = 0;
        v53[7] = 0;
        v56 = v41[5];
        v55 = v41[6];
        v57 = v55 - v56;
        if (v55 != v56)
        {
          if ((v57 & 0x8000000000000000) != 0)
          {
            std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
          }

          v58 = operator new(v55 - v56);
          v53[5] = v58;
          v53[6] = v58;
          v59 = &v58[v57];
          v53[7] = &v58[v57];
          memcpy(v58, v56, v57);
          v53[6] = v59;
        }

        *v53 = 0;
        v53[1] = 0;
        v53[2] = v50;
        *v49 = v53;
        if (*v43)
        {
          v74 = *v43;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v75, v53);
        ++v76;
        v52 = v41[1];
        if (!v52)
        {
          goto LABEL_78;
        }

        do
        {
LABEL_76:
          v60 = v52;
          v52 = *v52;
        }

        while (v52);
LABEL_80:
        v42 = v75;
        if (v60 == &v78)
        {
          break;
        }

        v43 = v74;
        v41 = v60;
        v44 = &v75;
        if (v74 == &v75)
        {
          goto LABEL_61;
        }

        v45 = v75;
        v46 = &v75;
        if (v75)
        {
          do
          {
            v44 = v45;
            v45 = v45[1];
          }

          while (v45);
        }

        else
        {
          do
          {
            v44 = v46[2];
            v47 = *v44 == v46;
            v46 = v44;
          }

          while (v47);
        }

        v48 = *(v41 + 32);
        if (*(v44 + 32) < v48)
        {
          goto LABEL_61;
        }

        v49 = &v75;
        v50 = &v75;
        if (v75)
        {
          while (1)
          {
            while (1)
            {
              v50 = v42;
              v51 = *(v42 + 32);
              if (v51 <= v48)
              {
                break;
              }

              v42 = *v42;
              v49 = v50;
              if (!*v50)
              {
                goto LABEL_70;
              }
            }

            if (v51 >= v48)
            {
              break;
            }

            v42 = v42[1];
            if (!v42)
            {
              v49 = v50 + 1;
              goto LABEL_70;
            }
          }

LABEL_68:
          v52 = v41[1];
          if (v52)
          {
            goto LABEL_76;
          }

          do
          {
LABEL_78:
            v60 = v41[2];
            v47 = *v60 == v41;
            v41 = v60;
          }

          while (!v47);
          goto LABEL_80;
        }
      }

      if (v75)
      {
        v61 = &v75;
        v62 = v75;
        v9 = v72;
        do
        {
          v63 = *(v62 + 32);
          v64 = v63 >= 0x11;
          v65 = v63 < 0x11;
          if (v64)
          {
            v61 = v62;
          }

          v62 = v62[v65];
        }

        while (v62);
        if (v61 != &v75 && *(v61 + 32) <= 0x11u)
        {
          v67 = v61[5];
          v66 = v61[6];
          v68 = v66 - v67;
          if (v66 != v67)
          {
            if ((v68 & 0x8000000000000000) != 0)
            {
              std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
            }

            v69 = operator new(v66 - v67);
            memcpy(v69, v67, v68);
            if (v68 >= 6 && v69[5] == 7)
            {
              operator delete(v69);
              std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v75);
              v22 = 1;
LABEL_97:
              std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v78);
              goto LABEL_98;
            }

            operator delete(v69);
            v42 = v75;
          }
        }

LABEL_96:
        std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(v42);
        v22 = 0;
        goto LABEL_97;
      }
    }

    v9 = v72;
    goto LABEL_96;
  }

LABEL_98:
  v70 = xpc_BOOL_create(v22);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(v9 + 40), *MEMORY[0x29EDBEF08], v70);
  v71 = xpc_null_create();
  xpc_release(v70);
  xpc_release(v71);
}

void sub_29711CDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a14);
  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a17);
  _Unwind_Resume(a1);
}

void sub_29711CEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a17);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__tree_node<std::__value_type<unsigned char,std::vector<unsigned char>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned char,std::vector<unsigned char>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned char,std::vector<unsigned char>>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,std::vector<unsigned char>>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,std::vector<unsigned char>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

const char *RouterIPCController::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE64648[a1];
  }
}

void RouterIPCController::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  RouterIPCController::RouterIPCController(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<RouterIPCController>::shared_ptr[abi:ne200100]<RouterIPCController,std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_29711D090(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t RouterIPCController::RouterIPCController(uint64_t a1, void *a2)
{
  *a1 = &unk_2A1E2AFC8;
  ctu::OsLogContext::OsLogContext(&v14, "com.apple.telephony.abm", "ipc.router.ctrl");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("ipc.router.ctrl", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v5);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 40, v17);
  MEMORY[0x29C26B020](v17);
  ctu::OsLogContext::~OsLogContext(&v14);
  *a1 = &unk_2A1E2AFC8;
  *(a1 + 48) = *a2;
  v6 = a2[1];
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = operator new(0x20uLL);
  RouterDelegate::RouterDelegate(v7);
  *(a1 + 64) = v7;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E2BE20;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  *(a1 + 72) = v8;
  v9 = *(v7 + 2);
  v10 = *(v7 + 3);
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = v9;
    v15 = v10;
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v14 = *(v7 + 2);
    v15 = 0;
  }

  v16 = 6144;
  ATCSRouterIPCDriver::create();
  v11 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  return a1;
}

void sub_29711D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11 + 64);
  v14 = *(v11 + 56);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  MEMORY[0x29C26B020](v11 + 40);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v12);
  _Unwind_Resume(a1);
}

void RouterIPCController::~RouterIPCController(RouterIPCController *this)
{
  *this = &unk_2A1E2AFC8;
  std::__tree<std::__value_type<int,QMux>,std::__map_value_compare<int,std::__value_type<int,QMux>,std::less<int>,true>,std::allocator<std::__value_type<int,QMux>>>::destroy(*(this + 13));
  v2 = *(this + 11);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 9);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  MEMORY[0x29C26B020](this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

{
  RouterIPCController::~RouterIPCController(this);

  operator delete(v1);
}

uint64_t RouterIPCController::activate(RouterIPCController *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Activating", &v7, 2u);
  }

  if (*(this + 30))
  {
    v6 = GetOsLogContext()[1];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315906;
      v8 = "ABM ASSERT";
      v9 = 2080;
      v10 = "fState == State::kOffline";
      v11 = 2080;
      v12 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
      v13 = 1024;
      v14 = 58;
      _os_log_fault_impl(&dword_296FF7000, v6, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v7, 0x26u);
    }

    __break(1u);
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "kOffline";
    v9 = 2080;
    v10 = "kDisengaged";
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v7, 0x16u);
  }

  *(this + 30) = 2;
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

void RouterIPCController::changeState_sync(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 120);
    if (v5 > 3)
    {
      v6 = "Unknown";
      if (a2 > 3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = off_29EE64648[v5];
      if (a2 > 3)
      {
LABEL_4:
        v7 = "Unknown";
LABEL_7:
        v9 = 136315394;
        v10 = v6;
        v11 = 2080;
        v12 = v7;
        _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v9, 0x16u);
        goto LABEL_8;
      }
    }

    v7 = off_29EE64648[a2];
    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 120) = a2;
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t RouterIPCController::engage(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>(RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0,std::default_delete<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29711D9F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RouterIPCController::recover(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29711DC58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RouterIPCController::teardown(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29711DEC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t RouterIPCController::sleep(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v16 = v15;
      (*(*v3 + 24))(v3, v15);
    }

    else
    {
      v16 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v16 = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v16;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v15)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v16 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v16;
    if (v16 != v15)
    {
      goto LABEL_15;
    }

LABEL_18:
    result = (*(*result + 32))(result);
    goto LABEL_19;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29711E128(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL RouterIPCController::setup_sync(RouterIPCController *this)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 30);
    if (v3 > 3)
    {
      v4 = "Unknown";
    }

    else
    {
      v4 = off_29EE64648[v3];
    }

    v22 = 136315138;
    v23 = v4;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I IPC state is  %s", &v22, 0xCu);
  }

  v5 = *(this + 2);
  if (!v5 || (v6 = *(this + 1), (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
LABEL_27:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v10 = *(this + 10);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v31 = 0;
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E2B0D8;
  v11[1] = this;
  v11[2] = v6;
  v11[3] = v8;
  v31 = v11;
  (*(*v10 + 72))(v10, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))();
  }

  ATCSRouterIPCDriver::resetErrorState(*(this + 10));
  if (*(this + 30))
  {
    v12 = *(this + 12);
    if (v12 == (this + 104))
    {
LABEL_16:
      std::__shared_weak_count::__release_weak(v8);
      v13 = *MEMORY[0x29EDCA608];
      return 1;
    }

    while (*(v12 + 5))
    {
      v15 = *(this + 10);
      v16 = *(v12 + 8);
      QMux::setDriverAndCookie();
      v17 = *(v12 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v12 + 2);
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      v12 = v18;
      if (v18 == (this + 104))
      {
        goto LABEL_16;
      }
    }

    v20 = GetOsLogContext()[1];
    result = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v22 = 136315906;
      v23 = "ABM ASSERT";
      v24 = 2080;
      v25 = "dispatcher";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
      v28 = 1024;
      v29 = 150;
      _os_log_fault_impl(&dword_296FF7000, v20, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v22, 0x26u);
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v21 = GetOsLogContext()[1];
    result = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
    if (result)
    {
      v22 = 136315906;
      v23 = "ABM ASSERT";
      v24 = 2080;
      v25 = "fState != State::kOffline";
      v26 = 2080;
      v27 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
      v28 = 1024;
      v29 = 146;
      _os_log_fault_impl(&dword_296FF7000, v21, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v22, 0x26u);
      __break(1u);
    }
  }

  __break(1u);
  return result;
}

void sub_29711E510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<void ()(std::string)>::~function(va);
  std::__shared_weak_count::__release_weak(v6);
  _Unwind_Resume(a1);
}

void sub_29711E52C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(std::string)>::~function(uint64_t a1)
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

BOOL RouterIPCController::engage_sync(RouterIPCController *this)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Engaging", &v16, 2u);
  }

  if (*(this + 30) != 2)
  {
    v15 = GetOsLogContext()[1];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v16 = 136315906;
      v17 = "ABM ASSERT";
      v18 = 2080;
      v19 = "fState == State::kDisengaged";
      v20 = 2080;
      v21 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
      v22 = 1024;
      v23 = 160;
      _os_log_fault_impl(&dword_296FF7000, v15, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v16, 0x26u);
    }

    __break(1u);
  }

  RouterIPCController::setup_sync(this);
  v3 = RouterDelegate::engage(*(this + 8));
  v4 = *(this + 5);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(this + 30);
      if (v7 > 3)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_29EE64648[v7];
      }

      v16 = 136315394;
      v17 = v8;
      v18 = 2080;
      v19 = "kEngaged";
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v16, 0x16u);
      *(this + 30) = 1;
      v5 = *(this + 12);
      v6 = this + 104;
      if (v5 == this + 104)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(this + 30) = 1;
      v5 = *(this + 12);
      v6 = this + 104;
      if (v5 == this + 104)
      {
LABEL_14:
        v9 = *(this + 5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Finished engaging", &v16, 2u);
        }

        goto LABEL_16;
      }
    }

    do
    {
      QMux::start((v5 + 40));
      v12 = *(v5 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v5 + 2);
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v6);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to engage router", &v16, 2u);
  }

LABEL_16:
  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t RouterIPCController::startWorkers_sync(RouterIPCController *this)
{
  v1 = *(this + 12);
  v2 = this + 104;
  if (v1 != (this + 104))
  {
    do
    {
      QMux::start((v1 + 5));
      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }

  return 1;
}

uint64_t RouterIPCController::recover_sync(RouterIPCController *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Recovering", &v9, 2u);
  }

  if (*(this + 30))
  {
    v8 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v9 = 136315906;
    v10 = "ABM ASSERT";
    v11 = 2080;
    v12 = "fState == State::kOffline";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
    v15 = 1024;
    v16 = 187;
    goto LABEL_15;
  }

  if (!RouterDelegate::recover(*(this + 8)))
  {
    v8 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v9 = 136315906;
    v10 = "ABM ASSERT";
    v11 = 2080;
    v12 = "success";
    v13 = 2080;
    v14 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
    v15 = 1024;
    v16 = 189;
LABEL_15:
    _os_log_fault_impl(&dword_296FF7000, v8, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v9, 0x26u);
LABEL_16:
    __break(1u);
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 30);
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_29EE64648[v4];
    }

    v9 = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = "kDisengaged";
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v9, 0x16u);
  }

  *(this + 30) = 2;
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t RouterIPCController::teardown_sync(RouterIPCController *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Tearing down", &v8, 2u);
  }

  RouterIPCController::stopWorkers_sync(this);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 30);
    if (v4 > 3)
    {
      v5 = "Unknown";
    }

    else
    {
      v5 = off_29EE64648[v4];
    }

    v8 = 136315394;
    v9 = v5;
    v10 = 2080;
    v11 = "kOffline";
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v8, 0x16u);
  }

  *(this + 30) = 0;
  RouterDelegate::teardown(*(this + 8));
  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

void RouterIPCController::stopWorkers_sync(RouterIPCController *this)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 12);
    if (v3 != (this + 104))
    {
      do
      {
        QMux::setDriverAndCookie();
        QMux::stop((v3 + 40));
        v4 = *(v3 + 1);
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = *(v3 + 2);
            v6 = *v5 == v3;
            v3 = v5;
          }

          while (!v6);
        }

        v3 = v5;
      }

      while (v5 != (this + 104));
      v2 = *(this + 10);
    }

    v11 = 0;
    (*(*v2 + 72))(v2, v10);
    if (v11 == v10)
    {
      (*(*v11 + 32))(v11);
    }

    else if (v11)
    {
      (*(*v11 + 40))();
    }
  }

  else
  {
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I No ipc driver", v9, 2u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_29711EE2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<void ()(std::string)>::~function(va);
  _Unwind_Resume(a1);
}

BOOL RouterIPCController::sleep_sync(RouterIPCController *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Sleeping", &v10, 2u);
  }

  if (*(this + 30) != 1)
  {
    v9 = GetOsLogContext()[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315906;
      v11 = "ABM ASSERT";
      v12 = 2080;
      v13 = "fState == State::kEngaged";
      v14 = 2080;
      v15 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/QMI/Driver/RouterIPCController.cpp";
      v16 = 1024;
      v17 = 206;
      _os_log_fault_impl(&dword_296FF7000, v9, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", &v10, 0x26u);
    }

    __break(1u);
  }

  (*(**(this + 10) + 24))(*(this + 10));
  v3 = RouterDelegate::sleep(*(this + 8));
  v4 = *(this + 5);
  if (v3)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 30);
      if (v5 > 3)
      {
        v6 = "Unknown";
      }

      else
      {
        v6 = off_29EE64648[v5];
      }

      v10 = 136315394;
      v11 = v6;
      v12 = 2080;
      v13 = "kSleep";
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I IPC state changing from %s -> %s", &v10, 0x16u);
    }

    *(this + 30) = 3;
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to sleep", &v10, 2u);
  }

  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

void RouterIPCController::createQMuxChannels(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, QMux *a4@<X8>)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = &v8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK3ctu20SharedSynchronizableI19RouterIPCControllerE20execute_wrapped_syncIZNS1_18createQMuxChannelsERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEbbE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSE__block_invoke;
  v9[3] = &__block_descriptor_tmp_9;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v4 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *a4 = 0xAAAAAAAAAAAAAAAALL;
    *(a4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    QMux::QMux(a4);
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerF4QMuxvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_34;
    v15 = v5;
    v16 = &v10;
    dispatch_async_and_wait(v4, &block);
  }

  else
  {
    *a4 = 0xAAAAAAAAAAAAAAAALL;
    *(a4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    QMux::QMux(a4);
    block = MEMORY[0x29EDCA5F8];
    v12 = 0x40000000;
    v13 = ___ZN8dispatch9sync_implIRU13block_pointerF4QMuxvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke;
    v14 = &__block_descriptor_tmp_33;
    v15 = v6;
    v16 = &v10;
    dispatch_sync(v4, &block);
  }
}

atomic_ullong *std::shared_ptr<RouterIPCController>::shared_ptr[abi:ne200100]<RouterIPCController,std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2B088;
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

void sub_29711F304(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController*)#1}::operator() const(RouterIPCController*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<RouterIPCController *,std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController *)#1},std::allocator<RouterIPCController>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RouterIPCController *,std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController *)#1},std::allocator<RouterIPCController>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI19RouterIPCControllerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI19RouterIPCControllerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI19RouterIPCControllerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI19RouterIPCControllerE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<RouterIPCController> ctu::SharedSynchronizable<RouterIPCController>::make_shared_ptr<RouterIPCController>(RouterIPCController*)::{lambda(RouterIPCController*)#1}::operator() const(RouterIPCController*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::__value_type<int,QMux>,std::__map_value_compare<int,std::__value_type<int,QMux>,std::less<int>,true>,std::allocator<std::__value_type<int,QMux>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,QMux>,std::__map_value_compare<int,std::__value_type<int,QMux>,std::less<int>,true>,std::allocator<std::__value_type<int,QMux>>>::destroy(*a1);
    std::__tree<std::__value_type<int,QMux>,std::__map_value_compare<int,std::__value_type<int,QMux>,std::less<int>,true>,std::allocator<std::__value_type<int,QMux>>>::destroy(a1[1]);
    QMux::~QMux((a1 + 5));

    operator delete(a1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>(RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0,std::default_delete<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (RouterDelegate::hasFatalErrorOccurred(*(v3 + 64)))
  {
    RouterDelegate::getFatalErrorReason(*(v3 + 64), v8);
    v10 = 0;
    v4 = v2[4];
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  else
  {
    v5 = *(v3 + 120) == 2 && RouterIPCController::engage_sync(v3);
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    v10 = v5;
    v4 = v2[4];
    if (!v4)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  (*(*v4 + 48))(v4, &v10, v8);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    v6 = v2[4];
    if (v6 != v2 + 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v6 + 32))(v6);
    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  operator delete(v8[0]);
  v6 = v2[4];
  if (v6 == v2 + 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7)
  {
LABEL_16:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_18:
  operator delete(a1);
}

void sub_29711F65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
    std::unique_ptr<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0,std::default_delete<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0,std::default_delete<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0,std::default_delete<RouterIPCController::engage(std::function<void ()(BOOL,std::string)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3 == v1 + 1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(RouterIPCController ***a1)
{
  v2 = *a1;
  v3 = **a1;
  if (!*(*v2 + 30))
  {
    RouterIPCController::recover_sync(v3);
  }

  v7 = 1;
  v4 = v2[4];
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v7);
  v5 = v2[4];
  if (v5 == v2 + 1)
  {
    (*(*v5 + 4))(v5);
    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
LABEL_8:
      operator delete(a1);
      return;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 5))(v5);
    }

    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  operator delete(a1);
}

void sub_29711F8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3 == v1 + 1)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::teardown(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 30);
  if (v4)
  {
    if (v4 == 3)
    {
      RouterIPCController::wake_sync(*v2);
    }

    RouterIPCController::teardown_sync(v3);
  }

  v8 = 1;
  v5 = v2[4];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v8);
  v6 = v2[4];
  if (v6 == v2 + 1)
  {
    (*(*v6 + 4))(v6);
    operator delete(v2);
    v7 = *(a1 + 2);
    if (!v7)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v6)
  {
    (*(*v6 + 5))(v6);
  }

  operator delete(v2);
  v7 = *(a1 + 2);
  if (v7)
  {
LABEL_12:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

LABEL_14:
  operator delete(a1);
}

void sub_29711FAC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<RouterIPCController>::execute_wrapped<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0>(RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::sleep(std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(RouterIPCController ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*v2 + 30) == 1 && RouterIPCController::sleep_sync(v3);
  v8 = v4;
  v5 = v2[4];
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v8);
  v6 = v2[4];
  if (v6 == v2 + 1)
  {
    (*(*v6 + 4))(v6);
    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
LABEL_9:
      operator delete(a1);
      return;
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 5))(v6);
    }

    operator delete(v2);
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  operator delete(a1);
}

void sub_29711FC50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0,std::default_delete<RouterIPCController::recover(std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2B0D8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2B0D8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2B0D8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2B0D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::operator()(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  *__p = *a2;
  v16 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    v18 = v5;
    if (v5)
    {
      if (!a1[2])
      {
        goto LABEL_18;
      }

      v6 = v4[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = __p;
        if (v16 < 0)
        {
          v7 = __p[0];
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v7;
        _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Triggering fatal error for '%s'", &buf, 0xCu);
      }

      v8 = v4[7];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        *(&buf + 1) = v9;
        if (v9)
        {
          v10 = v9;
          v11 = v4[6];
          *&buf = v11;
          if (v11)
          {
            if (v16 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            (*(*v11 + 16))(v11, v12, 1);
          }

          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      v5 = v18;
      if (v18)
      {
LABEL_18:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v5;
          (v5->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }
    }
  }

  if (SHIBYTE(v16) < 0)
  {
LABEL_20:
    operator delete(__p[0]);
  }

LABEL_21:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_297120008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RouterIPCController::setup_sync(void)::$_0,std::allocator<RouterIPCController::setup_sync(void)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19RouterIPCController10setup_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19RouterIPCController10setup_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19RouterIPCController10setup_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19RouterIPCController10setup_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK3ctu20SharedSynchronizableI19RouterIPCControllerE20execute_wrapped_syncIZNS1_18createQMuxChannelsERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEbbE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSE__block_invoke(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  v4 = *v3;
  ChannelForService = RouterDelegate::getChannelForService(*(*v3 + 64), v3[1]);
  v6 = ChannelForService;
  v8 = (v4 + 104);
  v7 = *(v4 + 104);
  if (v7)
  {
    v9 = v4 + 104;
    do
    {
      if (*(v7 + 32) >= ChannelForService)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < ChannelForService));
    }

    while (v7);
    if (v9 != v8 && ChannelForService >= *(v9 + 32))
    {
      v27 = *(v4 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v3[1];
        if (*(v28 + 23) < 0)
        {
          v28 = *v28;
        }

        *buf = 136315394;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = mav_router_channel_get_name_as_cstr();
        _os_log_impl(&dword_296FF7000, v27, OS_LOG_TYPE_DEFAULT, "#I Reusing QMux for service %s, channel %s", buf, 0x16u);
      }

      *a2 = *(v9 + 40);
      v29 = *(v9 + 48);
      a2[1] = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_45;
    }
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = v3[1];
  if (v10[23] < 0)
  {
    v10 = *v10;
  }

  v11 = strlen(v10);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v11 | 7) + 1;
    }

    v13 = operator new(v20);
    *&buf[8] = v12;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v13;
  }

  else
  {
    buf[23] = v11;
    v13 = buf;
    if (!v11)
    {
      buf[0] = 0;
      v14 = *(v4 + 56);
      v30 = *(v4 + 48);
      v31 = v14;
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  memmove(v13, v10, v12);
  v13[v12] = 0;
  v14 = *(v4 + 56);
  v30 = *(v4 + 48);
  v31 = v14;
  if (v14)
  {
LABEL_14:
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_15:
  MEMORY[0x29C26B8C0](a2, 0, 0, buf, &v30, *v3[2], 0);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    v15 = *(v4 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      v16 = v3[1];
      if (*(v16 + 23) < 0)
      {
        v16 = *v16;
      }

      name_as_cstr = mav_router_channel_get_name_as_cstr();
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = name_as_cstr;
      _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Creating new QMux for service %s, channel %s", buf, 0x16u);
      *buf = v6;
      v19 = *a2;
      v18 = a2[1];
      *&buf[8] = *a2;
      *&buf[16] = v18;
      if (!v18)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v15 = *(v4 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }
  }

  *buf = v6;
  v19 = *a2;
  v18 = a2[1];
  *&buf[8] = *a2;
  *&buf[16] = v18;
  if (v18)
  {
LABEL_31:
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_32:
  v21 = *v8;
  v22 = (v4 + 104);
  if (*v8)
  {
    while (1)
    {
      while (1)
      {
        v22 = v21;
        v23 = *(v21 + 32);
        if (v6 >= v23)
        {
          break;
        }

        v21 = *v22;
        v8 = v22;
        if (!*v22)
        {
          goto LABEL_39;
        }
      }

      if (v23 >= v6)
      {
        break;
      }

      v21 = v22[1];
      if (!v21)
      {
        v8 = v22 + 1;
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:
    v24 = operator new(0x38uLL);
    v24[8] = v6;
    *(v24 + 5) = v19;
    *(v24 + 6) = v18;
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = v22;
    *v8 = v24;
    v25 = **(v4 + 96);
    if (v25)
    {
      *(v4 + 96) = v25;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v4 + 104), v24);
    ++*(v4 + 112);
  }

  QMux::~QMux(&buf[8]);
LABEL_45:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_297120464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN8dispatch9sync_implIRU13block_pointerF4QMuxvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v4 = v6;
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    QMux::~QMux(&v6);
  }

  else
  {
    QMux::~QMux(&v6);
  }
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerF4QMuxvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v4 = v6;
  v3 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    QMux::~QMux(&v6);
  }

  else
  {
    QMux::~QMux(&v6);
  }
}

void *ABMServerRegistryBuilder::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E2B168;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = v6;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

__n128 ABMServerRegistryBuilder::ABMServerRegistryBuilder(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void ABMServerRegistryBuilder::~ABMServerRegistryBuilder(ABMServerRegistryBuilder *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void ABMServerRegistryBuilder::setupAdaptiveTimerService(uint64_t a1, Registry **a2)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v4 = *RegistryModel;
  if (!*(*RegistryModel + 64))
  {
    (*(**a1 + 32))(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(v4 + 72);
    *(v4 + 64) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupQMIServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!**RegistryModel)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[1];
      *v6 = v7;
      v6[1] = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 8))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = v6[1];
      *v6 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupRouterServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!*(*RegistryModel + 16))
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v7;
      *(v6 + 24) = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 16))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = *(v6 + 24);
      *(v6 + 16) = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E2B168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ResetInfo::ResetInfo(ResetInfo *this)
{
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
}

{
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
}

uint64_t ResetInfo::ResetInfo(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7)
{
  v17 = 0;
  ctu::cf::assign();
  *a1 = 0uLL;
  *(a1 + 16) = v17;
  v16 = 0uLL;
  v17 = 0;
  ctu::cf::assign();
  *(a1 + 24) = 0uLL;
  *(a1 + 40) = v17;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *a4, *(a4 + 1));
  }

  else
  {
    v12 = *a4;
    *(a1 + 64) = *(a4 + 2);
    *(a1 + 48) = v12;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  *(a1 + 72) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    *(a1 + 80) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    std::string::__init_copy_ctor_external((a1 + 88), *a7, *(a7 + 1));
    return a1;
  }

  *(a1 + 80) = a6;
  if (*(a7 + 23) < 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = *a7;
  *(a1 + 104) = *(a7 + 2);
  *(a1 + 88) = v13;
  return a1;
}

void sub_297120E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (*(v20 + 47) < 0)
  {
    operator delete(*v21);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::ResetInfo(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, int a6, __int128 *a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v14 = *a3;
      this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&this[1].__r_.__value_.__l.__data_ = v14;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
LABEL_6:
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v15;
  }

  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a5, *(a5 + 8));
  }

  else
  {
    __p = *a5;
  }

  this[3].__r_.__value_.__r.__words[0] = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    LODWORD(this[3].__r_.__value_.__r.__words[1]) = a6;
    if ((*(a7 + 23) & 0x80000000) == 0)
    {
LABEL_14:
      v16 = *a7;
      this[4].__r_.__value_.__l.__size_ = *(a7 + 2);
      *&this[3].__r_.__value_.__r.__words[2] = v16;
      return;
    }
  }

  std::string::__init_copy_ctor_external((this + 88), *a7, *(a7 + 1));
}

void sub_297121054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v14 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v14);
  _Unwind_Resume(exception_object);
}

void ResetInfo::~ResetInfo(void **this)
{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void ResetInfo::getType(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void ResetInfo::getSubType(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void ResetInfo::getReason(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void ResetInfo::getTime(ResetInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(this + 9);
  v4 = operator new(0x38uLL);
  v4[8] = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v6;
  v5 = v4;
  v6[0] = v4;
  *(v4 + 24) = 1;
  v6[1] = 1;
  *(v4 + 5) = v3;
  *(v4 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v5, 0, 9, a2);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v5, v6[0]);
}

void ResetInfo::getCrashReason(ResetInfo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 111) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 11), *(this + 12));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 88);
    a2->__r_.__value_.__r.__words[2] = *(this + 13);
  }
}

void ResetInfo::setType(ResetInfo *this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  ctu::cf::assign();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = 0;
  *(this + 1) = 0;
  *(this + 15) = 0;
  *(this + 23) = 0;
  v3 = *MEMORY[0x29EDCA608];
}

void sub_297121404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::setSubType(ResetInfo *this, const __CFString *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  ctu::cf::assign();
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 39) = 0;
  *(this + 47) = 0;
  v3 = *MEMORY[0x29EDCA608];
}

void sub_2971214C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **ResetInfo::setReason(uint64_t a1, void **a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    if (*(a1 + 71) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return std::string::__assign_no_alias<false>(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

void ResetInfo::setTime(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  *(a1 + 72) = Timestamp::convert(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2971215B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **ResetInfo::setCrashReason(uint64_t a1, void **a2)
{
  result = (a1 + 88);
  if (result != a2)
  {
    if (*(a1 + 111) < 0)
    {
      v5 = a2[1];
      if (*(a2 + 23) >= 0)
      {
        v6 = *(a2 + 23);
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return std::string::__assign_no_alias<false>(result, a2, v6);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      return std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    }

    else
    {
      v4 = *a2;
      result[2] = a2[2];
      *result = v4;
    }
  }

  return result;
}

uint64_t ResetInfo::asString@<X0>(ResetInfo *this@<X0>, _BYTE *a2@<X8>)
{
  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_10);
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[7] = v4;
  v57[8] = v4;
  v57[5] = v4;
  v57[6] = v4;
  v57[3] = v4;
  v57[4] = v4;
  v57[1] = v4;
  v57[2] = v4;
  v56 = v4;
  v57[0] = v4;
  *v54 = v4;
  v55 = v4;
  v52 = v4;
  v53 = v4;
  v50 = v4;
  v51 = v4;
  v49 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v49);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v50, "ResetInfo { Type='", 18);
  v6 = *(this + 23);
  if (v6 >= 0)
  {
    v7 = this;
  }

  else
  {
    v7 = *this;
  }

  if (v6 >= 0)
  {
    v8 = *(this + 23);
  }

  else
  {
    v8 = *(this + 1);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "' SubType='", 11);
  v11 = *(this + 47);
  if (v11 >= 0)
  {
    v12 = this + 24;
  }

  else
  {
    v12 = *(this + 3);
  }

  if (v11 >= 0)
  {
    v13 = *(this + 47);
  }

  else
  {
    v13 = *(this + 4);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "' Time='", 8);
  v16 = *(this + 9);
  v60 = 0;
  v61 = 0;
  v59 = &v60;
  v17 = operator new(0x38uLL);
  v17[8] = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = &v60;
  v59 = v17;
  v60 = v17;
  *(v17 + 24) = 1;
  v61 = 1;
  *(v17 + 5) = v16;
  *(v17 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v59, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v59, v60);
  if ((v48 & 0x80u) == 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v19 = v48;
  }

  else
  {
    v19 = __p[1];
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "' Radar='", 9);
  v22 = MEMORY[0x29C26BDF0](v21, *(this + 20));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' Reason='", 10);
  v25 = this + 48;
  v24 = *(this + 6);
  v26 = *(this + 71);
  if (v26 >= 0)
  {
    v27 = this + 48;
  }

  else
  {
    v27 = *(this + 6);
  }

  if (v26 >= 0)
  {
    v28 = *(this + 71);
  }

  else
  {
    v28 = *(this + 7);
  }

  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v27, v28);
  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "' MTBF='", 8);
  *(v30 + *(*v30 - 24) + 8) |= 1u;
  isMTBF = ResetInfo::isMTBF(this);
  v32 = MEMORY[0x29C26BDD0](v30, isMTBF);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "' SCD='", 7);
  *(v33 + *(*v33 - 24) + 8) |= 1u;
  v34 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v25, &ResetInfo::sPatternMasks);
  v35 = MEMORY[0x29C26BDD0](v33, v34);
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "' COF='", 7);
  *(v36 + *(*v36 - 24) + 8) |= 1u;
  v37 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v25, &ResetInfo::sPatternMasks);
  v38 = MEMORY[0x29C26BDD0](v36, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "' }", 3);
  if ((v48 & 0x80000000) == 0)
  {
    v39 = BYTE8(v56);
    if ((BYTE8(v56) & 0x10) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v41 = v56;
    if (v56 < *(&v53 + 1))
    {
      *&v56 = *(&v53 + 1);
      v41 = *(&v53 + 1);
    }

    v42 = v53;
    v40 = v41 - v53;
    if ((v41 - v53) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  v39 = BYTE8(v56);
  if ((BYTE8(v56) & 0x10) != 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  if ((v39 & 8) == 0)
  {
    v40 = 0;
    a2[23] = 0;
    goto LABEL_43;
  }

  v42 = *(&v51 + 1);
  v40 = *(&v52 + 1) - *(&v51 + 1);
  if (*(&v52 + 1) - *(&v51 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_47:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_35:
  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v40 | 7) + 1;
    }

    v44 = operator new(v43);
    *(a2 + 1) = v40;
    *(a2 + 2) = v43 | 0x8000000000000000;
    *a2 = v44;
    a2 = v44;
    goto LABEL_42;
  }

  a2[23] = v40;
  if (v40)
  {
LABEL_42:
    memmove(a2, v42, v40);
  }

LABEL_43:
  a2[v40] = 0;
  *&v49 = *MEMORY[0x29EDC9528];
  v45 = *(MEMORY[0x29EDC9528] + 72);
  *(&v49 + *(v49 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v50 = v45;
  *(&v50 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[1]);
  }

  *(&v50 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v51);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C26C030](v57);
}

void sub_297121B3C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24 - 88, *(v24 - 80));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26C030](va);
  _Unwind_Resume(a1);
}

void ResetInfo::readResetReasonPatterns(ResetInfo *this)
{
  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_10);
  }
}

uint64_t ResetInfo::isMTBF(ResetInfo **this)
{
  v2 = *MEMORY[0x29EDBEB60];
  v3 = *(this + 23);
  if (v3 < 0)
  {
    v4 = *this;
    v3 = this[1];
    v5 = strlen(*MEMORY[0x29EDBEB60]);
    if (!v5)
    {
      return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), &ResetInfo::sPatternMasks) ^ 1;
    }
  }

  else
  {
    v4 = this;
    v5 = strlen(*MEMORY[0x29EDBEB60]);
    if (!v5)
    {
      return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), &ResetInfo::sPatternMasks) ^ 1;
    }
  }

  v6 = v5;
  if (v3 < v5)
  {
    return 0;
  }

  v8 = v4 + v3;
  v9 = *v2;
  v10 = v4;
  while (1)
  {
    if (v3 - v6 == -1)
    {
      return 0;
    }

    result = memchr(v10, v9, v3 - v6 + 1);
    if (!result)
    {
      return result;
    }

    v11 = result;
    result = memcmp(result, v2, v6);
    if (!result)
    {
      break;
    }

    v10 = (v11 + 1);
    v3 = &v8[-v11 - 1];
    if (v3 < v6)
    {
      return 0;
    }
  }

  if (v11 != v8 && v11 - v4 != -1)
  {
    return ResetInfo::reasonMatchesAtLeastOneApplicablePattern(1, (this + 6), &ResetInfo::sPatternMasks) ^ 1;
  }

  return result;
}

uint64_t ResetInfo::addToDict(uint64_t result, __CFDictionary **a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  if (*a2)
  {
    v6 = result;
    if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
    {
      dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_10);
    }

    v7 = *MEMORY[0x29EDB8ED8];
    v8 = *a2;
    v9 = *MEMORY[0x29EDBEB00];
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, *v6, *(v6 + 8));
    }

    else
    {
      v28 = *v6;
    }

    ctu::cf::update<char const*,std::string>(v8, v9, &v28, v7, a5);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      v11 = *a2;
      v12 = *MEMORY[0x29EDBEEE0];
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *a2;
      v12 = *MEMORY[0x29EDBEEE0];
      if ((*(v6 + 47) & 0x80000000) == 0)
      {
LABEL_9:
        v28 = *(v6 + 24);
        goto LABEL_12;
      }
    }

    std::string::__init_copy_ctor_external(&v28, *(v6 + 24), *(v6 + 32));
LABEL_12:
    ctu::cf::update<char const*,std::string>(v11, v12, &v28, v7, v10);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      v14 = *a2;
      v15 = *MEMORY[0x29EDBED88];
      if ((*(v6 + 71) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = *a2;
      v15 = *MEMORY[0x29EDBED88];
      if ((*(v6 + 71) & 0x80000000) == 0)
      {
LABEL_14:
        v28 = *(v6 + 48);
        goto LABEL_17;
      }
    }

    std::string::__init_copy_ctor_external(&v28, *(v6 + 48), *(v6 + 56));
LABEL_17:
    ctu::cf::update<char const*,std::string>(v14, v15, &v28, v7, v13);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    v16 = *(v6 + 72);
    v17 = operator new(0x38uLL);
    v17[8] = 0;
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 2) = &v28.__r_.__value_.__l.__size_;
    v28.__r_.__value_.__r.__words[0] = v17;
    v28.__r_.__value_.__l.__size_ = v17;
    *(v17 + 24) = 1;
    v28.__r_.__value_.__r.__words[2] = 1;
    *(v17 + 5) = v16;
    *(v17 + 6) = 0xAAAAAAAA00000000;
    Timestamp::asString(&v28, 0, 9, &__p);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v28, v28.__r_.__value_.__l.__size_);
    v19 = *a2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = __p;
    }

    ctu::cf::update<char const*,std::string>(v19, *MEMORY[0x29EDBE930], &v28, v7, v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      ctu::cf::update<char const*,unsigned int>(*a2, *MEMORY[0x29EDBE578], *(v6 + 80), v7, v20);
      isMTBF = ResetInfo::isMTBF(v6);
      ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED80], isMTBF, v7, v22);
      v23 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v6 + 48, &ResetInfo::sPatternMasks);
      ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED98], v23, v7, v24);
      v25 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v6 + 48, &ResetInfo::sPatternMasks);
      return ctu::cf::update<char const*,BOOL>(*a2, *MEMORY[0x29EDBED90], v25, v7, v26);
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_24;
  }

  return result;
}

void sub_29712203C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::addToDict(ResetInfo *this, xpc_object_t *a2)
{
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    return;
  }

  if (ResetInfo::readResetReasonPatterns(void)::sOnce != -1)
  {
    dispatch_once(&ResetInfo::readResetReasonPatterns(void)::sOnce, &__block_literal_global_10);
    v4 = this;
    if ((*(this + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = this;
  if (*(this + 23) < 0)
  {
LABEL_4:
    v4 = *this;
  }

LABEL_5:
  v5 = xpc_string_create(v4);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEB00], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = this + 24;
  if (*(this + 47) < 0)
  {
    v7 = *v7;
  }

  v8 = xpc_string_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEEE0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = (this + 48);
  v11 = this + 48;
  if (*(this + 71) < 0)
  {
    v11 = *v10;
  }

  v12 = xpc_string_create(v11);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED88], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = *(this + 9);
  v15 = operator new(0x38uLL);
  v15[8] = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  *(v15 + 2) = v33;
  v32 = v15;
  v33[0] = v15;
  *(v15 + 24) = 1;
  v33[1] = 1;
  *(v15 + 5) = v14;
  *(v15 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v32, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v32, v33[0]);
  if (v31 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE930], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  v19 = xpc_int64_create(*(this + 20));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE578], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  isMTBF = ResetInfo::isMTBF(this);
  v22 = xpc_BOOL_create(isMTBF);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED80], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(2, v10, &ResetInfo::sPatternMasks);
  v25 = xpc_BOOL_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED98], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = ResetInfo::reasonMatchesAtLeastOneApplicablePattern(4, v10, &ResetInfo::sPatternMasks);
  v28 = xpc_BOOL_create(v27);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBED90], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
}

void ResetInfo::fetchFromDict(void **this, xpc_object_t *a2)
{
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    return;
  }

  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEB00]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = v12;
  this[2] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v5 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  *(this + 3) = v12;
  this[5] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v6 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  __p = 0;
  v15 = 0;
  v16 = 0;
  xpc::dyn_cast_or_default();
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *(this + 3) = v12;
  this[8] = v13;
  HIBYTE(v13) = 0;
  LOBYTE(v12) = 0;
  xpc_release(object);
  v7 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE930]);
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  Timestamp::Timestamp(&v12);
  Timestamp::asString(&v12, 0, 9, &__p);
  xpc::dyn_cast_or_default();
  this[9] = Timestamp::convert(&v9);
  if (v10 < 0)
  {
    operator delete(v9);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_25:
    operator delete(__p);
    goto LABEL_22;
  }

  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_25;
  }

LABEL_22:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, *(&v12 + 1));
  xpc_release(object);
  v8 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE578]);
  __p = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    __p = xpc_null_create();
  }

  *(this + 20) = xpc::dyn_cast_or_default(&__p, 7);
  xpc_release(__p);
}

uint64_t ResetInfo::reasonMatchesAtLeastOneApplicablePattern(int a1, uint64_t a2, __int128 **a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    v7 = 0;
    while (1)
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v17 = v8;
      *&v17[16] = v8;
      if (*(v3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v17, *v3, *(v3 + 1));
      }

      else
      {
        v9 = *v3;
        *&v17[16] = *(v3 + 2);
        *v17 = v9;
      }

      *&v17[24] = *(v3 + 6);
      if ((*&v17[24] & a1) != 0)
      {
        memset(&__p, 170, sizeof(__p));
        if ((v17[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v17, *&v17[8]);
        }

        else
        {
          __p = *v17;
        }

        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v20 = v11;
        v21 = v11;
        *&v18[0].__locale_ = v11;
        v19 = v11;
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v18, &__p, 0);
        v12 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a2, v18, 0);
        if (v12)
        {
          v10 = 2;
        }

        else
        {
          v10 = 0;
        }

        v13 = v21;
        if (v21 && !atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          std::locale::~locale(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_25:
            operator delete(__p.__r_.__value_.__l.__data_);
            v7 |= v12;
            if ((v17[23] & 0x80000000) == 0)
            {
              goto LABEL_21;
            }

LABEL_20:
            operator delete(*v17);
            goto LABEL_21;
          }
        }

        else
        {
          std::locale::~locale(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_25;
          }
        }

        v7 |= v12;
        if ((v17[23] & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v10 = 3;
        if ((v17[23] & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

LABEL_21:
      if (v10 == 3 || !v10)
      {
        v3 += 2;
        if (v3 != v4)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  LOBYTE(v7) = 0;
LABEL_28:
  v14 = *MEMORY[0x29EDCA608];
  return v7 & 1;
}

void sub_297122B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t ResetInfo::readResetInfoReasonPatternsFromFactoryFile@<X0>(void *a1@<X8>)
{
  memset(v10, 170, sizeof(v10));
  MEMORY[0x29C26B190](v10, @"/AppleInternal/Cellular/Factory/BasebandCOFSCD.plist", *MEMORY[0x29EDB8FB0]);
  v9 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  ctu::cf::MakeCFString::MakeCFString(v7, "ResetInfoRegexPatterns");
  v3 = ctu::cf::map_adapter::copyCFArrayRef(v10, v7[0]);
  MEMORY[0x29C26B130](v7);
  v9 = v3;
  v6 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(&v6, v7);
  v4 = v8;
  *a1 = *v7;
  a1[2] = v4;
  v7[1] = 0;
  v8 = 0;
  v7[0] = 0;
  if (v3)
  {
    CFRelease(v3);
    CFRelease(v3);
  }

  return MEMORY[0x29C26B1A0](v10);
}

void sub_297122D64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va1);
  MEMORY[0x29C26B1A0](v3 - 40);
  _Unwind_Resume(a1);
}

void ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(CFArrayRef *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *a1;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    std::vector<ResetInfo::RegexPatternAndReasonMask>::reserve(a2, Count);
    if (Count)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
        v8 = ValueAtIndex;
        if (ValueAtIndex && (v9 = CFGetTypeID(ValueAtIndex), v9 == CFDictionaryGetTypeID()))
        {
          v19 = v8;
          CFRetain(v8);
        }

        else
        {
          v8 = 0;
          v19 = 0;
        }

        v18[0] = 0xAAAAAAAAAAAAAAAALL;
        v18[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v18, v8);
        memset(&v17, 170, sizeof(v17));
        memset(&__p, 0, sizeof(__p));
        ctu::cf::MakeCFString::MakeCFString(&v20, "ResetInfoReasonRegexPattern");
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C26B130](&v20);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ctu::cf::MakeCFString::MakeCFString(&__p, "ResetInfoReasonRegexPatternMask");
        Int = ctu::cf::map_adapter::getInt(v18, __p.__r_.__value_.__l.__data_);
        MEMORY[0x29C26B130](&__p);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v17;
        }

        v16 = Int;
        v11 = *(a2 + 8);
        if (v11 >= *(a2 + 16))
        {
          v13 = std::vector<ResetInfo::RegexPatternAndReasonMask>::__emplace_back_slow_path<ResetInfo::RegexPatternAndReasonMask>(a2, &__p);
          v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          *(a2 + 8) = v13;
          if (v14 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_19:
              MEMORY[0x29C26B180](v18);
              if (!v8)
              {
                continue;
              }

LABEL_23:
              CFRelease(v8);
              continue;
            }
          }

          else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = *&__p.__r_.__value_.__l.__data_;
          *(v11 + 16) = *(&__p.__r_.__value_.__l + 2);
          *v11 = v12;
          memset(&__p, 0, sizeof(__p));
          *(v11 + 24) = v16;
          *(a2 + 8) = v11 + 32;
          if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }
        }

        operator delete(v17.__r_.__value_.__l.__data_);
        MEMORY[0x29C26B180](v18);
        if (v8)
        {
          goto LABEL_23;
        }
      }
    }
  }
}