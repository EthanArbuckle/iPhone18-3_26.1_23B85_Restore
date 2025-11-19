void sub_296E4AB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__state<char>::~__state(va);
  std::deque<std::__state<char>>::~deque[abi:ne200100]((v9 - 144));
  _Unwind_Resume(a1);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v68 = 0;
  v69 = 0;
  v70 = 0;
  *&v67[36] = -1431655766;
  *v65 = 0xAAAAAAAA00000000;
  memset(&v65[8], 0, 32);
  *v66 = 0u;
  memset(v67, 0, 36);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v53 = 0;
    v54 = *v67;
    if (!*v67)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  __x.second = a3;
  *&__x.matched = 0xAAAAAAAAAAAAAA00;
  __x.first = a3;
  *v63 = 0;
  memset(&v63[8], 0, 85);
  v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
  if (*&v63[56])
  {
    *&v63[64] = *&v63[56];
    operator delete(*&v63[56]);
  }

  if (*&v63[32])
  {
    *&v63[40] = *&v63[32];
    operator delete(*&v63[32]);
  }

  v13 = v69;
  *(v69 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
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
    std::vector<std::sub_match<char const*>>::__append((v13 - 4), v15 - v16, &__x);
    v13 = v69;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v61 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append((v13 - 40), v18 - v19);
    v13 = v69;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v62 = a3;
  v23 = (a3 - a2);
  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v24 = (++v22 & 0xFFF) != 0 || (v22 >> 12) < v23;
    if (!v24)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v26 = v13 - 1;
    v25 = *(v13 - 2);
    v27 = v13 - 6;
    if (v25)
    {
      (*(*v25 + 16))(v25, v13 - 6);
    }

    v28 = *v27;
    if (*v27 <= -994)
    {
      if ((v28 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v28 != -1000)
      {
LABEL_84:
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }

      v29 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v29 == a2 || (a5 & 0x1000) != 0 && v29 != v62)
      {
LABEL_34:
        v30 = v69;
        v31 = *(v69 - 5);
        if (v31)
        {
          *(v69 - 4) = v31;
          operator delete(v31);
        }

        v32 = *(v30 - 8);
        if (v32)
        {
          *(v30 - 7) = v32;
          operator delete(v32);
        }

        v69 = v30 - 6;
        goto LABEL_16;
      }

      v37 = v20;
      v38 = &v29[-*(v13 - 11)];
      if ((v21 & (v37 >= v38)) == 0)
      {
        v39 = *(v13 - 5);
        *v65 = *v27;
        *&v65[16] = v39;
        if (v65 != v27)
        {
          std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v65[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v67, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v40 = *v26;
        *&v67[29] = *(v13 - 11);
        *&v67[24] = v40;
        v37 = v38;
      }

      v41 = v69;
      if (v37 == v23)
      {
        v42 = v68;
        while (v41 != v42)
        {
          v43 = *(v41 - 5);
          if (v43)
          {
            *(v41 - 4) = v43;
            operator delete(v43);
          }

          v44 = *(v41 - 8);
          if (v44)
          {
            *(v41 - 7) = v44;
            operator delete(v44);
          }

          v41 -= 6;
        }

        v69 = v42;
        v21 = 1;
        v20 = v23;
      }

      else
      {
        v20 = v37;
        v45 = *(v69 - 5);
        if (v45)
        {
          *(v69 - 4) = v45;
          operator delete(v45);
        }

        v46 = *(v41 - 8);
        if (v46)
        {
          *(v41 - 7) = v46;
          operator delete(v46);
        }

        v69 = v41 - 6;
        v21 = 1;
      }
    }

    else
    {
      switch(v28)
      {
        case -993:
          goto LABEL_34;
        case -992:
          *&v33 = 0xAAAAAAAAAAAAAAAALL;
          *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v63[64] = v33;
          *&v63[80] = v33;
          *&v63[32] = v33;
          *&v63[48] = v33;
          *v63 = v33;
          *&v63[16] = v33;
          std::__state<char>::__state(v63, v13 - 6);
          (*(**v26 + 24))(*v26, 1, v13 - 6);
          (*(**&v63[80] + 24))(*&v63[80], 0, v63);
          v34 = v69;
          if (v69 >= v70)
          {
            v69 = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(&v68, v63);
            if (*&v63[56])
            {
              *&v63[64] = *&v63[56];
              operator delete(*&v63[56]);
            }
          }

          else
          {
            v35 = *&v63[16];
            *v69 = *v63;
            v34[1] = v35;
            *(v34 + 6) = 0;
            *(v34 + 7) = 0;
            *(v34 + 4) = 0;
            *(v34 + 5) = 0;
            v34[2] = *&v63[32];
            *(v34 + 6) = *&v63[48];
            *&v63[32] = 0;
            *&v63[40] = 0;
            *(v34 + 8) = 0;
            *(v34 + 9) = 0;
            *(v34 + 56) = *&v63[56];
            *(v34 + 9) = *&v63[72];
            memset(&v63[48], 0, 32);
            v36 = *&v63[80];
            *(v34 + 85) = *&v63[85];
            *(v34 + 10) = v36;
            v69 = v34 + 6;
          }

          if (*&v63[32])
          {
            *&v63[40] = *&v63[32];
            operator delete(*&v63[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v69;
  }

  while (v68 != v69);
  if ((v21 & 1) == 0)
  {
    goto LABEL_69;
  }

  v47 = *v61;
  *v47 = a2;
  *(v47 + 8) = &v20[a2];
  *(v47 + 16) = 1;
  if (v66[0] != *&v65[32])
  {
    v48 = 0xAAAAAAAAAAAAAAABLL * ((v66[0] - *&v65[32]) >> 3);
    v49 = (*&v65[32] + 16);
    v50 = 1;
    do
    {
      v51 = v47 + 24 * v50;
      *v51 = *(v49 - 1);
      v52 = *v49;
      v49 += 24;
      *(v51 + 16) = v52;
      v24 = v48 > v50++;
    }

    while (v24);
  }

  v53 = 1;
  v54 = *v67;
  if (*v67)
  {
LABEL_70:
    *&v67[8] = v54;
    operator delete(v54);
  }

LABEL_71:
  if (*&v65[32])
  {
    v66[0] = *&v65[32];
    operator delete(*&v65[32]);
  }

  v55 = v68;
  if (v68)
  {
    v56 = v69;
    v57 = v68;
    if (v69 != v68)
    {
      do
      {
        v58 = *(v56 - 5);
        if (v58)
        {
          *(v56 - 4) = v58;
          operator delete(v58);
        }

        v59 = *(v56 - 8);
        if (v59)
        {
          *(v56 - 7) = v59;
          operator delete(v59);
        }

        v56 -= 6;
      }

      while (v56 != v55);
      v57 = v68;
    }

    v69 = v55;
    operator delete(v57);
  }

  return v53;
}

void sub_296E4B170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__state<char>::~__state(&a27);
  std::vector<std::__state<char>>::~vector[abi:ne200100]((v27 - 120));
  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void std::deque<std::__state<char>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x2A;
  v4 = v2 - 42;
  if (v3)
  {
    *(a1 + 32) = v4;
    goto LABEL_4;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v7 - v8;
  v10 = v6 - *a1;
  if (v7 - v8 < v10)
  {
    if (v6 != v7)
    {
      v44 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
      return;
    }

    v44 = operator new(0xFC0uLL);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v44);
LABEL_4:
    v5 = *(a1 + 8);
    v44 = *v5;
    *(a1 + 8) = v5 + 1;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v44);
    return;
  }

  v11 = v10 >> 2;
  if (v6 == *a1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = 8 * v12;
  v14 = operator new(8 * v12);
  v15 = operator new(0xFC0uLL);
  v16 = v15;
  v17 = &v14[v9];
  v18 = &v14[v13];
  if (v9 != v13)
  {
    goto LABEL_15;
  }

  if (v9 < 1)
  {
    if (v7 == v8)
    {
      v22 = 1;
    }

    else
    {
      v22 = v9 >> 2;
    }

    if (v22 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v17 = operator new(8 * v22);
    v18 = &v17[8 * v22];
    operator delete(v14);
    v23 = *(a1 + 8);
    v7 = *(a1 + 16);
    v14 = v17;
    *v17 = v16;
    v19 = v17 + 8;
    if (v7 == v23)
    {
      goto LABEL_16;
    }

LABEL_31:
    while (v17 != v14)
    {
      v24 = v17;
LABEL_30:
      v25 = *(v7 - 8);
      v7 -= 8;
      *(v24 - 1) = v25;
      v20 = v24 - 8;
      v17 = v20;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_17;
      }
    }

    if (v19 < v18)
    {
      v24 = &v14[8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1)];
      v27 = v19 - v14;
      v26 = v19 == v14;
      v19 += 8 * ((((v18 - v19) >> 3) + 1 + ((((v18 - v19) >> 3) + 1) >> 63)) >> 1);
      if (!v26)
      {
        memmove(v24, v17, v27);
      }

      goto LABEL_30;
    }

    if (v18 == v14)
    {
      v28 = 1;
    }

    else
    {
      v28 = (v18 - v14) >> 2;
    }

    if (v28 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = operator new(8 * v28);
    v30 = v29;
    v31 = (v28 + 3) >> 2;
    v24 = &v29[8 * v31];
    v32 = v19 - v14;
    v26 = v19 == v14;
    v19 = v24;
    if (!v26)
    {
      v19 = &v24[v32];
      v33 = v32 - 8;
      if (v33 >= 0x18 && (v34 = 8 * v31, (&v29[8 * v31] - v17) >= 0x20))
      {
        v38 = (v33 >> 3) + 1;
        v39 = 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        v35 = &v24[v39];
        v36 = &v17[v39];
        v40 = (v17 + 16);
        v41 = &v29[v34 + 16];
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *v40;
          *(v41 - 1) = *(v40 - 1);
          *v41 = v43;
          v40 += 2;
          v41 += 32;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = &v29[8 * v31];
        v36 = v17;
      }

      do
      {
        v37 = *v36;
        v36 += 8;
        *v35 = v37;
        v35 += 8;
      }

      while (v35 != v19);
    }

LABEL_44:
    v18 = &v29[8 * v28];
    operator delete(v14);
    v14 = v30;
    goto LABEL_30;
  }

  v17 -= ((v9 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_15:
  *v17 = v15;
  v19 = v17 + 8;
  if (v7 != v8)
  {
    goto LABEL_31;
  }

LABEL_16:
  v20 = v17;
LABEL_17:
  v21 = *a1;
  *a1 = v14;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19;
  *(a1 + 24) = v18;
  if (v21)
  {

    operator delete(v21);
  }
}

void sub_296E4B634(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(char **a1, void *a2)
{
  v4 = a1[2];
  if (v4 != a1[3])
  {
    goto LABEL_19;
  }

  v5 = *a1;
  v6 = a1[1];
  if (v6 > *a1)
  {
    v7 = ((v6 - *a1) >> 3) + 1;
    v8 = &v6[-8 * (v7 / 2)];
    v9 = v4 - v6;
    if (v4 != v6)
    {
      memmove(&v6[-8 * (v7 / 2)], a1[1], v4 - v6);
      v6 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v6[8 * (v7 / -2)];
    goto LABEL_19;
  }

  v10 = (v4 - v5) >> 2;
  if (v4 == v5)
  {
    v10 = 1;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = v10 >> 2;
  v12 = 8 * v10;
  v13 = operator new(8 * v10);
  v14 = &v13[8 * v11];
  v16 = v4 - v6;
  v15 = v4 == v6;
  v4 = v14;
  if (!v15)
  {
    v4 = &v14[v16];
    v17 = v16 - 8;
    if ((v16 - 8) < 0x38)
    {
      v18 = &v13[8 * v11];
      do
      {
LABEL_16:
        v27 = *v6;
        v6 += 8;
        *v18 = v27;
        v18 += 8;
      }

      while (v18 != v4);
      goto LABEL_17;
    }

    v19 = &v13[8 * v11];
    v18 = v19;
    if ((v19 - v6) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = (v17 >> 3) + 1;
    v21 = 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
    v18 = &v14[v21];
    v22 = &v6[v21];
    v23 = (v6 + 16);
    v24 = v19 + 16;
    v25 = v20 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v26 = *v23;
      *(v24 - 1) = *(v23 - 1);
      *v24 = v26;
      v23 += 2;
      v24 += 2;
      v25 -= 4;
    }

    while (v25);
    v6 = v22;
    if (v20 != (v20 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v4;
  a1[3] = &v13[v12];
  if (v5)
  {
    operator delete(v5);
    v4 = a1[2];
  }

LABEL_19:
  *v4 = *a2;
  a1[2] = v4 + 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (v8 >= v7)
    {
      v11 = v7 - v4;
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v12 = 1;
      }

      if (v12 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = (v12 + 3) >> 2;
      v14 = 8 * v12;
      v15 = operator new(8 * v12);
      v6 = &v15[8 * v13];
      v16 = v6;
      v17 = v8 - v4;
      if (v8 != v4)
      {
        v16 = &v6[v17];
        v18 = v17 - 8;
        v19 = &v15[8 * v13];
        v20 = v4;
        if (v18 < 0x38)
        {
          goto LABEL_24;
        }

        v21 = &v15[8 * v13];
        v19 = v21;
        v20 = v4;
        if ((v21 - v4) < 0x20)
        {
          goto LABEL_24;
        }

        v22 = (v18 >> 3) + 1;
        v23 = 8 * (v22 & 0x3FFFFFFFFFFFFFFCLL);
        v19 = &v6[v23];
        v20 = &v4[v23];
        v24 = (v4 + 16);
        v25 = v21 + 16;
        v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v27 = *v24;
          *(v25 - 1) = *(v24 - 1);
          *v25 = v27;
          v24 += 2;
          v25 += 2;
          v26 -= 4;
        }

        while (v26);
        if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_24:
          do
          {
            v28 = *v20;
            v20 += 8;
            *v19 = v28;
            v19 += 8;
          }

          while (v19 != v16);
        }
      }

      *a1 = v15;
      *(a1 + 8) = v6;
      *(a1 + 16) = v16;
      *(a1 + 24) = &v15[v14];
      if (v4)
      {
        operator delete(v5);
        v6 = *(a1 + 8);
      }
    }

    else
    {
      v9 = (((v7 - v8) >> 3) + 1) / 2;
      v6 = &v4[8 * v9];
      if (v8 != v4)
      {
        memmove(&v4[8 * v9], v4, v8 - v4);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = &v8[8 * v9];
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  *(v6 - 1) = *a2;
  *(a1 + 8) = v6 - 8;
}

void std::deque<std::__state<char>>::__add_front_capacity(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) >= 0x2A)
  {
    *(a1 + 32) = v5 + 42;
    v41 = *(v2 - 1);
    *(a1 + 16) = v2 - 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
    return;
  }

  v6 = *(a1 + 24);
  v7 = *a1;
  v8 = &v6[-*a1];
  if (v2 - v3 < v8)
  {
    if (v3 == v7)
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v41);
      v37 = *(a1 + 16);
      v41 = *(v37 - 8);
      *(a1 + 16) = v37 - 8;
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v41 = operator new(0xFC0uLL);
      std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(a1, &v41);
      if (*(a1 + 16) - *(a1 + 8) == 8)
      {
LABEL_9:
        v9 = 21;
LABEL_42:
        *(a1 + 32) = v9;
        return;
      }
    }

    v9 = *(a1 + 32) + 42;
    goto LABEL_42;
  }

  if (v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 >> 2;
  }

  if (v10 >> 61)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = operator new(8 * v10);
  v12 = operator new(0xFC0uLL);
  v13 = v12;
  if (v10)
  {
    v14 = &v11[8 * v10];
    *v11 = v12;
    v15 = v11 + 8;
    if (v3 != v2)
    {
LABEL_16:
      v16 = v11;
      while (1)
      {
        if (v15 == v14)
        {
          if (v16 <= v11)
          {
            if (v15 == v11)
            {
              v20 = 1;
            }

            else
            {
              v20 = (v15 - v11) >> 2;
            }

            if (v20 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v21 = operator new(8 * v20);
            v22 = v21;
            v23 = v20 >> 2;
            v17 = &v21[8 * (v20 >> 2)];
            v25 = v15 - v16;
            v24 = v15 == v16;
            v15 = v17;
            if (!v24)
            {
              v15 = &v17[v25];
              v26 = v25 - 8;
              if (v26 < 0x18 || (v27 = 8 * v23, (&v21[8 * v23] - v16) < 0x20))
              {
                v28 = &v21[8 * (v20 >> 2)];
                v29 = v16;
                goto LABEL_32;
              }

              v31 = (v26 >> 3) + 1;
              v32 = 8 * (v31 & 0x3FFFFFFFFFFFFFFCLL);
              v28 = &v17[v32];
              v29 = &v16[v32];
              v33 = (v16 + 16);
              v34 = &v21[v27 + 16];
              v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v36 = *v33;
                *(v34 - 1) = *(v33 - 1);
                *v34 = v36;
                v33 += 2;
                v34 += 32;
                v35 -= 4;
              }

              while (v35);
              if (v31 != (v31 & 0x3FFFFFFFFFFFFFFCLL))
              {
                do
                {
LABEL_32:
                  v30 = *v29;
                  v29 += 8;
                  *v28 = v30;
                  v28 += 8;
                }

                while (v28 != v15);
              }
            }

            v14 = &v21[8 * v20];
            if (v11)
            {
              operator delete(v11);
            }

            v11 = v22;
            goto LABEL_18;
          }

          v19 = (((v16 - v11) >> 3) + 1 + ((((v16 - v11) >> 3) + 1) >> 63)) >> 1;
          v17 = &v16[-8 * v19];
          if (v15 != v16)
          {
            memmove(&v16[-8 * v19], v16, v15 - v16);
          }

          v15 = &v17[v15 - v16];
        }

        else
        {
          v17 = v16;
        }

LABEL_18:
        v18 = *v3;
        v3 += 8;
        *v15 = v18;
        v15 += 8;
        v16 = v17;
        if (v3 == *(a1 + 16))
        {
          goto LABEL_45;
        }
      }
    }
  }

  else
  {
    v38 = operator new(8uLL);
    v14 = v38 + 8;
    operator delete(v11);
    v3 = *(a1 + 8);
    v39 = *(a1 + 16);
    v11 = v38;
    *v38 = v13;
    v15 = v38 + 8;
    if (v3 != v39)
    {
      goto LABEL_16;
    }
  }

  v17 = v11;
LABEL_45:
  v40 = *a1;
  *a1 = v11;
  *(a1 + 8) = v17;
  *(a1 + 16) = v15;
  *(a1 + 24) = v14;
  if (v15 - v17 == 8)
  {
    *(a1 + 32) = 21;
    if (!v40)
    {
      return;
    }
  }

  else
  {
    *(a1 + 32) += 42;
    if (!v40)
    {
      return;
    }
  }

  operator delete(v40);
}

void sub_296E4BCC8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void **std::deque<std::__state<char>>::~deque[abi:ne200100](void **a1)
{
  std::deque<std::__state<char>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *std::vector<std::sub_match<char const*>>::__assign_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) >= a4)
  {
    v16 = a1[1];
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - result) >> 3) >= a4)
    {
      while (v5 != a3)
      {
        *result = *v5;
        result[16] = v5[16];
        v5 += 24;
        result += 24;
      }

      a1[1] = result;
    }

    else
    {
      v17 = &a2[v16 - result];
      if (v16 != result)
      {
        do
        {
          *result = *v5;
          result[16] = v5[16];
          v5 += 24;
          result += 24;
        }

        while (v5 != v17);
      }

      if (v17 == a3)
      {
        a1[1] = v16;
      }

      else
      {
        v18 = v16;
        do
        {
          v19 = *v17;
          *(v16 + 2) = *(v17 + 2);
          *v16 = v19;
          v16 += 24;
          v17 += 24;
          v18 += 24;
        }

        while (v17 != a3);
        a1[1] = v18;
      }
    }
  }

  else
  {
    if (result)
    {
      a1[1] = result;
      v9 = a4;
      operator delete(result);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_25;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    v12 = v10 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v11;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_25:
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = 24 * v12;
    result = operator new(24 * v12);
    v14 = result;
    *a1 = result;
    a1[1] = result;
    a1[2] = &result[v13];
    if (v5 != a3)
    {
      v15 = 24 * ((a3 - v5 - 24) / 0x18uLL) + 24;
      result = memcpy(result, v5, v15);
      v14 += v15;
    }

    a1[1] = v14;
  }

  return result;
}

char *std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  result = *a1;
  if (a4 <= (v7 - result) >> 4)
  {
    v15 = *(a1 + 8);
    if (a4 <= (v15 - result) >> 4)
    {
      if (a2 == a3)
      {
        *(a1 + 8) = result;
        return result;
      }

      v24 = a3 - a2 - 16;
      if (v24 < 0xF0 || ((v44 = v24 & 0xFFFFFFFFFFFFFFF0 | 8, v45 = &result[v44], v46 = &a2[v44], v47 = (v24 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v47]) ? (v48 = a2 + 8 >= &result[v47]) : (v48 = 1), v48 ? (v49 = 0) : (v49 = 1), v45 > a2 ? (v50 = result >= v46) : (v50 = 1), !v50 || (v49 & 1) != 0))
      {
        v15 = result;
        v25 = a2;
      }

      else
      {
        v51 = (v24 >> 4) + 1;
        v52 = 16 * (v51 & 0x1FFFFFFFFFFFFFFCLL);
        v15 = &result[v52];
        v25 = &a2[v52];
        v53 = (a2 + 32);
        v54 = result + 32;
        v55 = v51 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v57 = *(v53 - 2);
          v56 = *(v53 - 1);
          v59 = *v53;
          v58 = v53[1];
          v53 += 4;
          *(v54 - 2) = v57;
          *(v54 - 1) = v56;
          *v54 = v59;
          v54[1] = v58;
          v54 += 4;
          v55 -= 4;
        }

        while (v55);
        if (v51 == (v51 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_26;
        }
      }

      do
      {
        v26 = *v25;
        v27 = *(v25 + 1);
        v25 += 16;
        *v15 = v26;
        *(v15 + 1) = v27;
        v15 += 16;
      }

      while (v25 != a3);
LABEL_26:
      *(a1 + 8) = v15;
      return result;
    }

    v16 = &a2[v15 - result];
    if (v15 != result)
    {
      v17 = v15 - result - 16;
      if (v17 < 0xF0 || ((v28 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v29 = &result[v28], v30 = &a2[v28], v31 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < &a2[v31]) ? (v32 = a2 + 8 >= &result[v31]) : (v32 = 1), v32 ? (v33 = 0) : (v33 = 1), v29 > a2 ? (v34 = result >= v30) : (v34 = 1), !v34 || (v33 & 1) != 0))
      {
        v18 = result;
        v19 = a2;
      }

      else
      {
        v35 = (v17 >> 4) + 1;
        v36 = 16 * (v35 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &result[v36];
        v19 = &a2[v36];
        v37 = (a2 + 32);
        v38 = result + 32;
        v39 = v35 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v41 = *(v37 - 2);
          v40 = *(v37 - 1);
          v43 = *v37;
          v42 = v37[1];
          v37 += 4;
          *(v38 - 2) = v41;
          *(v38 - 1) = v40;
          *v38 = v43;
          v38[1] = v42;
          v38 += 4;
          v39 -= 4;
        }

        while (v39);
        if (v35 == (v35 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_18;
        }
      }

      do
      {
        v20 = *v19;
        v21 = *(v19 + 1);
        v19 += 16;
        *v18 = v20;
        *(v18 + 1) = v21;
        v18 += 16;
      }

      while (v19 != v16);
    }

LABEL_18:
    if (v16 != a3)
    {
      v22 = v15;
      do
      {
        v23 = *v16;
        v16 += 16;
        *v15 = v23;
        v15 += 16;
        v22 += 16;
      }

      while (v16 != a3);
      *(a1 + 8) = v22;
      return result;
    }

    goto LABEL_26;
  }

  if (result)
  {
    *(a1 + 8) = result;
    v9 = a4;
    operator delete(result);
    a4 = v9;
    v7 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  if (a4 >> 60)
  {
    goto LABEL_60;
  }

  v10 = v7 >> 3;
  if (v7 >> 3 <= a4)
  {
    v10 = a4;
  }

  v32 = v7 >= 0x7FFFFFFFFFFFFFF0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (!v32)
  {
    v11 = v10;
  }

  if (v11 >> 60)
  {
LABEL_60:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v12 = 16 * v11;
  result = operator new(16 * v11);
  v13 = result;
  *a1 = result;
  *(a1 + 8) = result;
  *(a1 + 16) = &result[v12];
  if (a2 != a3)
  {
    v14 = (a3 - a2) & 0xFFFFFFFFFFFFFFF0;
    result = memcpy(result, a2, v14);
    v13 += v14;
  }

  *(a1 + 8) = v13;
  return result;
}

void std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(std::vector<std::ssub_match> *this, std::vector<std::ssub_match>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        end->first.__i_ = 0;
        end->second.__i_ = 0;
        end->matched = 0;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v5 = v4 + __n;
    if (v4 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      if (v7 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v8 = __n;
      v9 = this;
      v10 = operator new(24 * v7);
      this = v9;
      __n = v8;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[24 * v4];
    v14 = 24 * __n;
    v15 = &v13[24 * __n];
    v16 = v13;
    do
    {
      *v16 = 0;
      *(v16 + 1) = 0;
      v16[16] = 0;
      v16 += 24;
      v14 -= 24;
    }

    while (v14);
    v17 = &v10[24 * v7];
    begin = this->__begin_;
    v19 = &v13[(this->__begin_ - end)];
    if (end != this->__begin_)
    {
      v20 = v19;
      do
      {
        v21 = begin->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
        *&v20->matched = *&begin->matched;
        v20->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v21;
        ++v20;
        ++begin;
      }

      while (begin != end);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = v15;
    this->__end_cap_.__value_ = v17;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v6 = MEMORY[0x29C267870]();
  *(a1 + 8) = std::locale::use_facet(v6, MEMORY[0x29EDC93D0]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x29EDC93E8]);
  *(a1 + 24) = a3;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(a1, v8, &v8[v7]) != &v8[v7])
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>();
  }

  return a1;
}

void sub_296E4C49C(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v1[5]);
  std::locale::~locale(v1);
  _Unwind_Resume(a1);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = operator new(8uLL);
  *v6 = &unk_2A1E11200;
  v7 = operator new(0x10uLL);
  v7[1] = v6;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E11258;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = v7;
  v9 = *(a1 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
LABEL_4:
      if (v10)
      {
        if (v10 != 16)
        {
          if (v10 != 32)
          {
LABEL_27:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>();
          }

          goto LABEL_15;
        }

        return std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      else
      {

        return std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
      }
    }
  }

  else
  {
    *(a1 + 56) = *(a1 + 40);
    v10 = *(a1 + 24) & 0x1F0;
    if (v10 <= 0x3F)
    {
      goto LABEL_4;
    }
  }

  switch(v10)
  {
    case 0x40u:
LABEL_15:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x80u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(a1, a2, a3);
    case 0x100u:

      return std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(a1, a2, a3);
    default:
      goto LABEL_27;
  }
}

void sub_296E4C70C(_Unwind_Exception *a1)
{
  std::__empty_state<char>::~__empty_state(v2);
  (*(*v1 + 8))(v1);
  _Unwind_Resume(a1);
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
    if (LOBYTE(v8->__traits_.__loc_.__locale_) == 124)
    {
      v22 = *(a1 + 56);
      v23 = (&v8->__traits_.__loc_.__locale_ + 1);
      v24 = &v8->__traits_.__loc_.__locale_ + 1;
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
            *v15 = &unk_2A1E11818;
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
            *v20 = &unk_2A1E11860;
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
      *v7 = &unk_2A1E11350;
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
        *v15 = &unk_2A1E11398;
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

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
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
    v9 = *(a1 + 56);
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
    v13 = *(v9 + 8);
    v12[1] = *(v6 + 8);
    v12[2] = v13;
    *v12 = &unk_2A1E11818;
    *(v6 + 8) = v12;
    *(v9 + 8) = 0;
    v14 = operator new(0x10uLL);
    v15 = *(a1 + 56);
    v16 = *(v15 + 8);
    v14[1] = v16;
    *(v9 + 8) = v14;
    *(v15 + 8) = 0;
    v17 = operator new(0x10uLL);
    v18 = *(v9 + 8);
    *v17 = &unk_2A1E11860;
    v17[1] = v18;
    *(v15 + 8) = v17;
    *(a1 + 56) = *(v9 + 8);
    if (v8 == a3)
    {
      return a3;
    }
  }

  return v8;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_grep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E11818;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E11860;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_egrep<std::__wrap_iter<char const*>>(uint64_t a1, void *__s, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = memchr(__s, 10, a3 - __s);
  v8 = __s;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a3;
  }

  if (v9 == v8)
  {
    v11 = operator new(0x10uLL);
    v12 = *(v6 + 8);
    v11[1] = v12;
    *(v6 + 8) = v11;
    *(a1 + 56) = v11;
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v8, v9);
    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    if (v10 == a3)
    {
      return a3;
    }
  }

  v13 = *(a1 + 56);
  do
  {
    v23 = memchr(v10, 10, a3 - v10);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = a3;
    }

    if (v24 == v10)
    {
      v14 = operator new(0x10uLL);
      v15 = *(v13 + 8);
      v14[1] = v15;
      *(v13 + 8) = v14;
      *(a1 + 56) = v14;
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v10, v24);
    }

    v16 = operator new(0x18uLL);
    v17 = *(v13 + 8);
    v16[1] = *(v6 + 8);
    v16[2] = v17;
    *v16 = &unk_2A1E11818;
    *(v6 + 8) = v16;
    *(v13 + 8) = 0;
    v18 = operator new(0x10uLL);
    v19 = *(a1 + 56);
    v20 = *(v19 + 8);
    v18[1] = v20;
    *(v13 + 8) = v18;
    *(v19 + 8) = 0;
    v21 = operator new(0x10uLL);
    v22 = *(v13 + 8);
    *v21 = &unk_2A1E11860;
    v21[1] = v22;
    *(v19 + 8) = v21;
    v13 = *(v13 + 8);
    *(a1 + 56) = v13;
    if (v24 == a3)
    {
      v10 = v24;
    }

    else
    {
      v10 = v24 + 1;
    }
  }

  while (v10 != a3);
  return a3;
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
          std::basic_regex<char,std::regex_traits<char>>::__push_word_boundary(a1, 1);
        }

        else
        {
          if (v21 != 98)
          {
            return a2;
          }

          v23 = operator new(0x30uLL);
          v24 = *(*(a1 + 56) + 8);
          *v23 = &unk_2A1E113E0;
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
    v18 = &unk_2A1E11350;
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
    v18 = &unk_2A1E11398;
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom<std::__wrap_iter<char const*>>(uint64_t a1, std::basic_regex<char> *a2, std::basic_regex<char> *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  locale_low = LOBYTE(a2->__traits_.__loc_.__locale_);
  if (locale_low > 0x3E)
  {
    if (LOBYTE(a2->__traits_.__loc_.__locale_) > 0x5Bu)
    {
      if (locale_low == 92)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

      if (locale_low != 123)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

      goto LABEL_32;
    }

    if (locale_low != 91)
    {
      if (locale_low != 63)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
      }

LABEL_32:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)11>();
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  if (locale_low != 40)
  {
    if (locale_low == 46)
    {
      v4 = a1;
      v5 = a2;
      v6 = operator new(0x10uLL);
      v7 = *(v4 + 56);
      v8 = *(v7 + 8);
      *v6 = &unk_2A1E11470;
      v6[1] = v8;
      *(v7 + 8) = v6;
      *(v4 + 56) = v6;
      return (&v5->__traits_.__loc_.__locale_ + 1);
    }

    if (locale_low - 42 >= 2)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_pattern_character<char const*>(a1, a2, a3);
    }

    goto LABEL_32;
  }

  if ((&a2->__traits_.__loc_.__locale_ + 1) == a3)
  {
LABEL_33:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  v10 = a1;
  if ((&a2->__traits_.__loc_.__locale_ + 2) != a3 && BYTE1(a2->__traits_.__loc_.__locale_) == 63 && BYTE2(a2->__traits_.__loc_.__locale_) == 58)
  {
    ++*(a1 + 36);
    v11 = a3;
    v12 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
    if (v12 != v11 && LOBYTE(v12->__traits_.__loc_.__locale_) == 41)
    {
      --*(v10 + 36);
      return (&v12->__traits_.__loc_.__locale_ + 1);
    }

    goto LABEL_33;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    v16 = *(a1 + 28);
  }

  else
  {
    v13 = a3;
    v14 = operator new(0x18uLL);
    a3 = v13;
    v15 = v14;
    a1 = v10;
    v16 = *(v10 + 28) + 1;
    *(v10 + 28) = v16;
    v17 = *(v10 + 56);
    v18 = *(v17 + 8);
    *v15 = &unk_2A1E116B0;
    v15[1] = v18;
    *(v15 + 4) = v16;
    *(v17 + 8) = v15;
    *(v10 + 56) = v15;
  }

  ++*(a1 + 36);
  v19 = a3;
  v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<std::__wrap_iter<char const*>>();
  if (v20 == v19)
  {
    goto LABEL_33;
  }

  v21 = v20;
  if (LOBYTE(v20->__traits_.__loc_.__locale_) != 41)
  {
    goto LABEL_33;
  }

  v22 = v10;
  if ((*(v10 + 24) & 2) == 0)
  {
    v23 = operator new(0x18uLL);
    v22 = v10;
    v24 = *(v10 + 56);
    v25 = *(v24 + 8);
    *v23 = &unk_2A1E116F8;
    v23[1] = v25;
    *(v23 + 4) = v16;
    *(v24 + 8) = v23;
    *(v10 + 56) = v23;
  }

  --*(v22 + 36);
  return (&v21->__traits_.__loc_.__locale_ + 1);
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

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_atom_escape<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3)
{
  v3 = this;
  if (this != a3 && LOBYTE(this->__traits_.__loc_.__locale_) == 92)
  {
    v4 = &this->__traits_.__loc_.__locale_ + 1;
    if (a3 == (&this->__traits_.__loc_.__locale_ + 1))
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
    }

    v5 = *v4;
    v6 = v5 - 48;
    if (v5 == 48)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
      return (v3 + 2);
    }

    v7 = v3;
    if ((v5 - 49) <= 8)
    {
      v3 = (v3 + 2);
      if (v4 + 1 == a3)
      {
        v9 = a3;
        v3 = a3;
      }

      else
      {
        while (1)
        {
          locale_low = LOBYTE(v3->__traits_.__loc_.__locale_);
          if ((locale_low - 48) > 9)
          {
            break;
          }

          if (v6 >= 0x19999999)
          {
            goto LABEL_23;
          }

          v3 = (v3 + 1);
          v6 = locale_low + 10 * v6 - 48;
          if (v3 == a3)
          {
            v3 = a3;
            break;
          }
        }

        v9 = a3;
        if (!v6)
        {
LABEL_23:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
        }
      }

      if (v6 > a1->__marked_count_)
      {
        goto LABEL_23;
      }

      v10 = a1;
      std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v6);
      a1 = v10;
      a3 = v9;
      if (v3 != v4)
      {
        return v3;
      }
    }

    v11 = a1;
    v12 = a3;
    v13 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(a1, v4, a3);
    v14 = v12;
    v3 = v13;
    if (v13 == v4)
    {
      v15 = std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(v11, v4, v14, 0);
      if (v15 == v4)
      {
        return v7;
      }

      else
      {
        return v15;
      }
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_21;
    }

    v5 = a2[1];
    v6 = v5 == 94;
    v7 = v5 == 94 ? a2 + 2 : a2 + 1;
    v8 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v8, a1, *(*(a1 + 56) + 8), v6, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
    *(*(a1 + 56) + 8) = v8;
    *(a1 + 56) = v8;
    if (v7 == a3)
    {
      goto LABEL_21;
    }

    v9 = v7;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v7 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 93);
      v9 = v7 + 1;
    }

    if (v9 == a3)
    {
      v10 = v9;
    }

    else
    {
      do
      {
        v10 = v9;
        std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(a1, v9, a3, v8);
      }

      while (v10 != v9);
    }

    if (v10 == a3)
    {
      goto LABEL_21;
    }

    if (*v10 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v8, 45);
      ++v10;
    }

    if (v10 == a3 || *v10 != 93)
    {
LABEL_21:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v10 + 1;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_character_class_escape<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3)
  {
    return v3;
  }

  v5 = *a2;
  if (v5 > 0x63)
  {
    if (v5 == 119)
    {
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_14;
    }

    if (v5 == 115)
    {
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_17;
    }

    if (v5 != 100)
    {
      return v3;
    }

    v7 = operator new(0xB0uLL);
    std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 0, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_12:
    *(*(a1 + 56) + 8) = v7;
    *(a1 + 56) = v7;
    v8 = v7[40] | 0x400;
LABEL_18:
    v7[40] = v8;
    goto LABEL_19;
  }

  switch(v5)
  {
    case 'D':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
      goto LABEL_12;
    case 'S':
      v7 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v7, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_17:
      *(*(a1 + 56) + 8) = v7;
      *(a1 + 56) = v7;
      v8 = v7[40] | 0x4000;
      goto LABEL_18;
    case 'W':
      v6 = operator new(0xB0uLL);
      std::__bracket_expression<char,std::regex_traits<char>>::__bracket_expression[abi:ne200100](v6, a1, *(*(a1 + 56) + 8), 1, *(a1 + 24) & 1, (*(a1 + 24) & 8) != 0);
LABEL_14:
      *(*(a1 + 56) + 8) = v6;
      *(a1 + 56) = v6;
      v6[40] |= 0x500u;
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v6, 95);
LABEL_19:
      ++v3;
      break;
  }

  return v3;
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

void std::basic_regex<char,std::regex_traits<char>>::__parse_expression_term<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return;
  }

  v5 = *a2;
  if (v5 == 93)
  {
    return;
  }

  v8 = 0;
  v9 = a2 + 1;
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  if (a2 + 1 == a3 || v5 != 91)
  {
LABEL_25:
    v17 = *(a1 + 24) & 0x1F0;
    goto LABEL_26;
  }

  v10 = a2[1];
  if (v10 != 46)
  {
    if (v10 == 58)
    {
      v11 = a2 + 2;
      if (a3 - (v4 + 2) >= 2 && a3 - 1 != v11)
      {
        v12 = v4 + 2;
        v13 = v4 + 3;
        if (v4[2] != 58)
        {
          goto LABEL_14;
        }

LABEL_13:
        if (*v13 == 93)
        {
          if (a3 != v12)
          {
            v21 = std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(a1, v11, v12, *(a1 + 24) & 1);
            if (!v21)
            {
              std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
            }

            *(a4 + 160) |= v21;
            if (SHIBYTE(v35) < 0)
            {
              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
LABEL_14:
          while (v13 != a3 - 1)
          {
            ++v12;
            if (*v13++ == 58)
            {
              goto LABEL_13;
            }
          }
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    if (v10 == 61)
    {
      std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(a1, a2 + 2, a3, a4);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_69;
    }

    v8 = 0;
    goto LABEL_25;
  }

  v14 = a2 + 2;
  if (a3 - (v4 + 2) < 2 || a3 - 1 == v14)
  {
LABEL_90:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  v15 = v4 + 2;
  v16 = v9 + 2;
  if (*(v16 - 1) != 46)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*v16 != 93)
  {
LABEL_21:
    while (v16 != a3 - 1)
    {
      ++v15;
      if (*v16++ == 46)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_90;
  }

  if (a3 == v15)
  {
    goto LABEL_90;
  }

  v22 = a1;
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, v14, v15, &v36);
  a1 = v22;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
    a1 = v22;
  }

  v35 = v37;
  *__p = v36;
  v23 = HIBYTE(v37);
  v8 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v23 = __p[1];
  }

  if ((v23 - 1) >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v4 = v15 + 2;
  v17 = *(a1 + 24) & 0x1F0;
  v24 = SHIBYTE(v37);
  if (v37 < 0)
  {
    v24 = __p[1];
  }

  if (v24)
  {
LABEL_49:
    if (v4 == a3)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_26:
  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v18) = *v4;
    goto LABEL_45;
  }

  v18 = *v4;
  if (v18 != 92)
  {
LABEL_45:
    if (v8 < 0)
    {
      v25 = __p[0];
      __p[1] = 1;
    }

    else
    {
      HIBYTE(v35) = 1;
      v25 = __p;
    }

    *v25 = v18;
    *(v25 + 1) = 0;
    ++v4;
    goto LABEL_49;
  }

  v19 = a1;
  if (v17)
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p);
  }

  else
  {
    v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v4 + 1, a3, __p, a4);
  }

  v4 = v20;
  a1 = v19;
  if (v4 == a3)
  {
LABEL_51:
    if (SHIBYTE(v35) < 0)
    {
      if (!__p[1])
      {
        goto LABEL_68;
      }

      if (__p[1] != 1)
      {
        v27 = __p[0];
LABEL_67:
        std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v27, *(v27 + 1));
        goto LABEL_68;
      }

      v27 = __p[0];
    }

    else
    {
      if (!HIBYTE(v35))
      {
        goto LABEL_68;
      }

      v27 = __p;
      if (HIBYTE(v35) != 1)
      {
        goto LABEL_67;
      }
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v27);
    goto LABEL_68;
  }

LABEL_50:
  v26 = *v4;
  if (v26 == 93)
  {
    goto LABEL_51;
  }

  v28 = v4 + 1;
  if (v4 + 1 == a3 || v26 != 45 || *v28 == 93)
  {
    goto LABEL_51;
  }

  v36 = 0uLL;
  v37 = 0;
  v29 = v4 + 2;
  if (v28 + 1 != a3 && *v28 == 91 && *v29 == 46)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(a1, v28 + 2, a3, &v36);
    goto LABEL_81;
  }

  if ((v17 | 0x40) != 0x40)
  {
    LOBYTE(v28) = *v28;
    goto LABEL_79;
  }

  LODWORD(v28) = *v28;
  if (v28 != 92)
  {
LABEL_79:
    HIBYTE(v37) = 1;
    LOWORD(v36) = v28;
    goto LABEL_81;
  }

  if (v17)
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36);
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<std::__wrap_iter<char const*>>(a1, v29, a3, &v36, a4);
  }

LABEL_81:
  *v32 = *__p;
  v33 = v35;
  __p[1] = 0;
  v35 = 0;
  __p[0] = 0;
  *v30 = v36;
  v31 = v37;
  v36 = 0uLL;
  v37 = 0;
  std::__bracket_expression<char,std::regex_traits<char>>::__add_range[abi:ne200100](a4, v32, v30);
  if ((SHIBYTE(v31) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_86:
    operator delete(v32[0]);
    if (SHIBYTE(v37) < 0)
    {
      goto LABEL_87;
    }

LABEL_68:
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_69;
  }

  operator delete(v30[0]);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_86;
  }

LABEL_83:
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
    goto LABEL_68;
  }

LABEL_87:
  operator delete(v36);
  if (SHIBYTE(v35) < 0)
  {
LABEL_69:
    operator delete(__p[0]);
  }
}

void sub_296E4E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_equivalence_class<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_39;
  }

  v6 = a2 + 1;
  v7 = a2;
  if (*a2 != 61)
  {
    goto LABEL_5;
  }

LABEL_4:
  if (*v6 != 93)
  {
LABEL_5:
    while (v6 != a3 - 1)
    {
      ++v7;
      if (*v6++ == 61)
      {
        goto LABEL_4;
      }
    }

LABEL_39:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  if (a3 == v7)
  {
    goto LABEL_39;
  }

  memset(v17, 170, sizeof(v17));
  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v7, v17);
  v8 = SHIBYTE(v17[2]);
  if ((SHIBYTE(v17[2]) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v17[2]))
    {
      memset(__p, 170, sizeof(__p));
      v9 = v17;
      goto LABEL_14;
    }

LABEL_40:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  v8 = v17[1];
  if (!v17[1])
  {
    goto LABEL_40;
  }

  memset(__p, 170, sizeof(__p));
  v9 = v17[0];
LABEL_14:
  std::regex_traits<char>::__transform_primary<std::__wrap_iter<char *>>(a1, v9, v8 + v9, __p);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    if (__p[1])
    {
LABEL_16:
      v10 = *(a4 + 144);
      if (v10 >= *(a4 + 152))
      {
        *(a4 + 144) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a4 + 136, __p);
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a4 + 144), __p[0], __p[1]);
        }

        else
        {
          v11 = *__p;
          *(v10 + 16) = __p[2];
          *v10 = v11;
        }

        *(a4 + 144) = v10 + 24;
        *(a4 + 144) = v10 + 24;
        if (SHIBYTE(__p[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_33;
    }
  }

  else if (HIBYTE(__p[2]))
  {
    goto LABEL_16;
  }

  v12 = HIBYTE(v17[2]);
  if (SHIBYTE(v17[2]) < 0)
  {
    v12 = v17[1];
  }

  if (v12 == 2)
  {
    v14 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v14 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](a4, *v14, *(v14 + 1));
  }

  else
  {
    if (v12 != 1)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
    }

    v13 = v17;
    if (SHIBYTE(v17[2]) < 0)
    {
      v13 = v17[0];
    }

    std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a4, *v13);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_37:
    operator delete(__p[0]);
    if (SHIBYTE(v17[2]) < 0)
    {
      goto LABEL_38;
    }

    return v7 + 2;
  }

LABEL_33:
  if ((SHIBYTE(v17[2]) & 0x80000000) == 0)
  {
    return v7 + 2;
  }

LABEL_38:
  operator delete(v17[0]);
  return v7 + 2;
}

void sub_296E4EBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v20 + 144) = v21;
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  if (a3 - a2 < 2 || a3 - 1 == a2)
  {
    goto LABEL_15;
  }

  v5 = a2 + 1;
  v6 = a2;
  if (*a2 != 46)
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

  std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(a1, a2, v6, &v10);
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
      if (v5 == 115)
      {
        *(a5 + 160) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 119)
      {
        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (v5 != 98)
    {
      if (v5 == 100)
      {
        *(a5 + 160) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

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

  else
  {
    if (*a2 > 0x52u)
    {
      if (v5 == 83)
      {
        *(a5 + 164) |= 0x4000u;
        return a2 + 1;
      }

      if (v5 == 87)
      {
        *(a5 + 164) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_neg_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

    if (*a2)
    {
      if (v5 == 68)
      {
        *(a5 + 164) |= 0x400u;
        return a2 + 1;
      }

      return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<std::__wrap_iter<char const*>>(a1, a2, a3, a4);
    }

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

void std::regex_traits<char>::__lookup_collatename<std::__wrap_iter<char const*>>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 <= 0x16)
  {
    __dst[23] = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v5);
    goto LABEL_10;
  }

  if ((v5 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v5 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  *&__dst[8] = v5;
  *&__dst[16] = v9 | 0x8000000000000000;
  *__dst = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  v8[v5] = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if ((__dst[23] & 0x80000000) != 0)
  {
    v12 = *__dst;
    if (!*&__dst[8])
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (!__dst[23])
    {
      return;
    }

    v12 = __dst;
  }

  std::__get_collation_name(&v19, v12);
  *a4 = *&v19.__r_.__value_.__l.__data_;
  v13 = v19.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v19.__r_.__value_.__l + 2);
  v14 = HIBYTE(v13);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a4 + 8);
  }

  if (v14)
  {
LABEL_17:
    if ((__dst[23] & 0x80000000) == 0)
    {
      return;
    }

    v12 = *__dst;
LABEL_23:
    operator delete(v12);
    return;
  }

  if ((__dst[23] & 0x8000000000000000) != 0)
  {
    v12 = *__dst;
    if (*&__dst[8] >= 3uLL)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (__dst[23] < 3)
  {
LABEL_25:
    (*(**(a1 + 16) + 32))(&v19);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v19;
    if (*(a4 + 23) < 0)
    {
      v16 = *(a4 + 8);
      if (v16 == 1 || v16 == 12)
      {
        if (__dst != a4)
        {
          if (__dst[23] >= 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = *__dst;
          }

          if (__dst[23] >= 0)
          {
            v18 = __dst[23];
          }

          else
          {
            v18 = *&__dst[8];
          }

          std::string::__assign_no_alias<false>(a4, v17, v18);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v15 = *(a4 + 23);
      if (v15 == 1 || v15 == 12)
      {
        if (__dst != a4)
        {
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__assign_no_alias<true>(a4, *__dst, *&__dst[8]);
          }

          else
          {
            *a4 = *__dst;
            *(a4 + 16) = *&__dst[16];
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }

    goto LABEL_17;
  }
}

void sub_296E4F668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t std::regex_traits<char>::__lookup_classname<std::__wrap_iter<char const*>>(uint64_t a1, _BYTE *a2, _BYTE *a3, BOOL a4)
{
  v4 = a3 - a2;
  memset(__dst, 170, sizeof(__dst));
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 <= 0x16)
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v8 = __dst;
    if (a3 == a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    memmove(v8, a2, v4);
    goto LABEL_10;
  }

  if ((v4 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v4 | 7) + 1;
  }

  v10 = a2;
  v11 = operator new(v9);
  a2 = v10;
  v8 = v11;
  __dst[1] = v4;
  __dst[2] = (v9 | 0x8000000000000000);
  __dst[0] = v11;
  if (a3 != a2)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v8 + v4) = 0;
  v12 = HIBYTE(__dst[2]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    v12 = __dst[1];
  }

  (*(**(a1 + 8) + 48))(*(a1 + 8), v13, &v12[v13]);
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  result = std::__get_classname(v14, a4);
  if (SHIBYTE(__dst[2]) < 0)
  {
    v16 = result;
    operator delete(__dst[0]);
    return v16;
  }

  return result;
}

void sub_296E4F804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = a2;
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(a1, a2, a3);
  if (v6 != v4)
  {
    return v6;
  }

  if (v4 == a3 || v4 + 1 == a3 || *v6 != 92)
  {
    return v4;
  }

  v7 = v4[1];
  if (v7 == 40)
  {
    v6 = v4 + 2;
  }

  if (v6 != v4)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v11 = *(a1 + 28);
    }

    else
    {
      v9 = v6;
      v10 = operator new(0x18uLL);
      v6 = v9;
      v11 = *(a1 + 28) + 1;
      *(a1 + 28) = v11;
      v12 = *(a1 + 56);
      v13 = *(v12 + 8);
      *v10 = &unk_2A1E116B0;
      v10[1] = v13;
      *(v10 + 4) = v11;
      *(v12 + 8) = v10;
      *(a1 + 56) = v10;
    }

    do
    {
      if (v6 == a3)
      {
        goto LABEL_31;
      }

      v14 = v6;
      v15 = *(a1 + 56);
      v16 = *(a1 + 28);
      v17 = std::basic_regex<char,std::regex_traits<char>>::__parse_nondupl_RE<std::__wrap_iter<char const*>>(a1, v6, a3);
      if (v14 == v17)
      {
        break;
      }

      v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v17, a3, v15, (v16 + 1), (*(a1 + 28) + 1));
    }

    while (v14 != v6);
    if (v14 == a3)
    {
      v4 = a3;
    }

    else
    {
      if (v14 + 1 == a3 || *v14 != 92)
      {
        goto LABEL_31;
      }

      if (v14[1] == 41)
      {
        v4 = v14 + 2;
      }

      else
      {
        v4 = v14;
      }
    }

    if (v4 != v14)
    {
      if ((*(a1 + 24) & 2) == 0)
      {
        v18 = operator new(0x18uLL);
        v19 = *(a1 + 56);
        v20 = *(v19 + 8);
        *v18 = &unk_2A1E116F8;
        v18[1] = v20;
        *(v18 + 4) = v11;
        *(v19 + 8) = v18;
        *(a1 + 56) = v18;
        return v4;
      }

      return v4;
    }

LABEL_31:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
  }

  if ((v7 & 0xF8) != 0x30 && (v7 & 0xFE) != 0x38 || (v7 - 49) > 8)
  {
    return v4;
  }

  if ((v7 - 48) > *(a1 + 28))
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)4>();
  }

  std::basic_regex<char,std::regex_traits<char>>::__push_back_ref(a1, v7 - 48);
  return v4 + 2;
}

std::basic_regex<char> *std::basic_regex<char,std::regex_traits<char>>::__parse_RE_dupl_symbol<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, std::basic_regex<char> *this, std::basic_regex<char> *a3, std::__owns_one_state<char> *a4, size_t __mexp_begin, size_t __mexp_end)
{
  if (this == a3)
  {
    return this;
  }

  locale_low = LOBYTE(this->__traits_.__loc_.__locale_);
  if (locale_low == 42)
  {
    v7 = this;
    std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, 0, 0xFFFFFFFFFFFFFFFFLL, a4, __mexp_begin, __mexp_end, 1);
    return (&v7->__traits_.__loc_.__locale_ + 1);
  }

  if ((&this->__traits_.__loc_.__locale_ + 1) == a3 || locale_low != 92)
  {
    return this;
  }

  v9 = BYTE1(this->__traits_.__loc_.__locale_) == 123 ? (&this->__traits_.__loc_.__locale_ + 2) : this;
  if (v9 == this)
  {
    return this;
  }

  if (v9 == a3)
  {
    v10 = 0;
LABEL_20:
    v12 = a3;
    goto LABEL_21;
  }

  v11 = LOBYTE(v9->__traits_.__loc_.__locale_);
  if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
  {
    goto LABEL_54;
  }

  v10 = v11 - 48;
  v12 = &v9->__traits_.__loc_.__locale_ + 1;
  if ((&v9->__traits_.__loc_.__locale_ + 1) == a3)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = *v12;
    if ((v13 & 0xF8) != 0x30 && (v13 & 0xFE) != 0x38)
    {
      break;
    }

    if (v10 >= 214748364)
    {
      goto LABEL_54;
    }

    v10 = v13 + 10 * v10 - 48;
    if (++v12 == a3)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  if (v12 == v9)
  {
    goto LABEL_54;
  }

  if (v12 == a3)
  {
    goto LABEL_55;
  }

  v14 = *v12;
  v15 = (v12 + 1);
  if (v14 == 44)
  {
    if (v15 == a3)
    {
      goto LABEL_55;
    }

    v16 = LOBYTE(v15->__traits_.__loc_.__locale_);
    if ((v16 & 0xF8) == 0x30 || (v16 & 0xFE) == 0x38)
    {
      v15 = (v12 + 2);
      if (v12 + 2 == a3)
      {
        goto LABEL_55;
      }

      v17 = v16 - 48;
      while (1)
      {
        v22 = LOBYTE(v15->__traits_.__loc_.__locale_);
        if ((v22 & 0xF8) != 0x30 && (v22 & 0xFE) != 0x38)
        {
          break;
        }

        if (v17 >= 214748364)
        {
          goto LABEL_54;
        }

        v17 = v22 + 10 * v17 - 48;
        v15 = (v15 + 1);
        if (v15 == a3)
        {
          v15 = a3;
          break;
        }
      }
    }

    else
    {
      v17 = -1;
    }

    if (v15 != a3)
    {
      if ((&v15->__traits_.__loc_.__locale_ + 1) == a3 || LOBYTE(v15->__traits_.__loc_.__locale_) != 92)
      {
        goto LABEL_55;
      }

      if (BYTE1(v15->__traits_.__loc_.__locale_) == 125)
      {
        a3 = (&v15->__traits_.__loc_.__locale_ + 2);
      }

      else
      {
        a3 = v15;
      }
    }

    if (a3 != v15)
    {
      if (v17 == -1)
      {
        v20 = v10;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        v19 = a3;
        v21 = -1;
        goto LABEL_53;
      }

      if (v17 >= v10)
      {
        v19 = a3;
        v20 = v10;
        v21 = v17;
        __mexp_begin = __mexp_begin;
        __mexp_end = __mexp_end;
        goto LABEL_53;
      }

LABEL_54:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
    }

LABEL_55:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
  }

  if (v15 == a3 || v14 != 92)
  {
    goto LABEL_55;
  }

  v18 = (v12[1] == 125 ? v12 + 2 : v12);
  if (v12 == v18)
  {
    goto LABEL_55;
  }

  v19 = v18;
  v20 = v10;
  __mexp_begin = __mexp_begin;
  __mexp_end = __mexp_end;
  v21 = v10;
LABEL_53:
  std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v20, v21, a4, __mexp_begin, __mexp_end, 1);
  return v19;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_RE<std::__wrap_iter<char const*>>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
  }

  v4 = a2 + 1;
  v3 = *a2;
  if ((a2 + 1 != a3 || v3 != 36) && ((v3 - 46) > 0x2E || ((1 << (v3 - 46)) & 0x600000000001) == 0))
  {
    v18 = a2;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v3);
    return v18 + 1;
  }

  v6 = a2;
  if (v4 == a3)
  {
    goto LABEL_9;
  }

  v7 = *a2;
  if (v7 == 92)
  {
    v8 = *v4;
    if ((v8 - 36) > 0x3A || ((1 << (v8 - 36)) & 0x580000000000441) == 0)
    {
      return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
    }

    v10 = a1;
    v11 = a2;
    v12 = a3;
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v8);
    a2 = v11;
    a3 = v12;
    a1 = v10;
    v6 = v4 + 1;
    if (v4 + 1 == v11)
    {
LABEL_9:
      if (*v6 != 46)
      {
        return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
      }

LABEL_19:
      v14 = a1;
      v15 = operator new(0x10uLL);
      end = v14->__end_;
      first = end->__first_;
      v15->__vftable = &unk_2A1E118A8;
      v15->__first_ = first;
      end->__first_ = v15;
      v14->__end_ = v15;
      return v6 + 1;
    }

    return v6;
  }

  v6 = a2;
  if (v7 == 46)
  {
    goto LABEL_19;
  }

  return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(a1, a2, a3);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(a1, a2, a3);
  v9 = v8;
  if (v8 == a2 && v8 != a3)
  {
    v10 = *v8;
    switch(v10)
    {
      case '$':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E11398;
        break;
      case '(':
        if ((*(a1 + 24) & 2) != 0)
        {
          v16 = *(a1 + 28);
        }

        else
        {
          v15 = operator new(0x18uLL);
          v16 = *(a1 + 28) + 1;
          *(a1 + 28) = v16;
          v17 = *(a1 + 56);
          v18 = *(v17 + 8);
          *v15 = &unk_2A1E116B0;
          v15[1] = v18;
          *(v15 + 4) = v16;
          *(v17 + 8) = v15;
          *(a1 + 56) = v15;
        }

        ++*(a1 + 36);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<std::__wrap_iter<char const*>>(a1, v9 + 1, a3);
        if (v19 == a3 || (v9 = v19, *v19 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        if ((*(a1 + 24) & 2) == 0)
        {
          v20 = operator new(0x18uLL);
          v21 = *(a1 + 56);
          v22 = *(v21 + 8);
          *v20 = &unk_2A1E116F8;
          v20[1] = v22;
          *(v20 + 4) = v16;
          *(v21 + 8) = v20;
          *(a1 + 56) = v20;
        }

        --*(a1 + 36);
        goto LABEL_17;
      case '^':
        v11 = operator new(0x18uLL);
        v12 = (*(a1 + 24) & 0x5F0) == 1024;
        v13 = *(a1 + 56);
        v11[1] = *(v13 + 8);
        v14 = &unk_2A1E11350;
        break;
      default:
        goto LABEL_18;
    }

    *v11 = v14;
    *(v11 + 16) = v12;
    *(v13 + 8) = v11;
    *(a1 + 56) = v11;
LABEL_17:
    ++v9;
  }

LABEL_18:
  if (v9 == a2)
  {
    return a2;
  }

  v23 = (*(a1 + 28) + 1);

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<std::__wrap_iter<char const*>>(a1, v9, a3, v6, (v7 + 1), v23);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_one_char_or_coll_elem_ERE<std::__wrap_iter<char const*>>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a2);
    if (result != a2)
    {
      return result;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  v7 = *a2;
  v8 = (v7 - 36);
  if (v8 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v7 - 36)) & 0x5800000080004D1) != 0)
  {
    goto LABEL_6;
  }

  if (v8 == 5)
  {
    if (!this->__open_count_)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, 41);
      return a2 + 1;
    }
  }

  else
  {
LABEL_13:
    if ((v7 - 123) >= 2)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v7);
      return a2 + 1;
    }
  }

LABEL_6:
  result = std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(this, a2, a3);
  if (result == a2)
  {
    if (*result == 46)
    {
      v9 = result;
      v10 = operator new(0x10uLL);
      end = this->__end_;
      first = end->__first_;
      v10->__vftable = &unk_2A1E118A8;
      v10->__first_ = first;
      end->__first_ = v10;
      this->__end_ = v10;
      return v9 + 1;
    }

    return std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<std::__wrap_iter<char const*>>(this, a2, a3);
  }

  return result;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_QUOTED_CHAR_ERE<std::__wrap_iter<char const*>>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 == a3 || a2 + 1 == a3 || *a2 != 92)
  {
    return v3;
  }

  v4 = a2[1];
  v5 = (v4 - 36) > 0x3A || ((1 << (v4 - 36)) & 0x5800000080004F1) == 0;
  if (!v5 || (v4 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v4);
    v3 += 2;
    return v3;
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    return std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<std::__wrap_iter<char const*>>(a1, a2 + 1, a3, 0);
  }

  if (std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(a1, v4))
  {
    v3 += 2;
  }

  return v3;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C267730](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_296E5042C(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x296E503ECLL);
  }

  __cxa_rethrow();
}

std::string *abm::trace::getBasebandTraceDirSuffix@<X0>(abm::trace *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  result = capabilities::radio::vendor(this);
  if ((result - 2) < 3)
  {
    v5 = abm::trace::kICETraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  if (result == 1)
  {
    if (v2)
    {
      *(&a2->__r_.__value_.__s + 23) = 5;
      strcpy(a2, "-qdss");
      return result;
    }

    v5 = abm::trace::kEURTraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  return result;
}

void sub_296E50558(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::getCoreDumpDirSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&_MergedGlobals_0);
    if (v4)
    {
      v5 = capabilities::radio::maverick(v4);
      v6 = abm::trace::kEURCoreDumpSnapshotDirectorySuffix;
      if (!v5)
      {
        v6 = abm::trace::kCoreDumpSnapshotDirectorySuffix;
      }

      std::string::basic_string[abi:ne200100]<0>(*v6);
      __cxa_guard_release(&_MergedGlobals_0);
    }
  }

  if (byte_2A18B7D67 < 0)
  {
    v3 = xmmword_2A18B7D50;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_2A18B7D50;
    a1->__r_.__value_.__r.__words[2] = unk_2A18B7D60;
  }
}

uint64_t abm::trace::isSupported(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = strcasecmp(*a1, abm::trace::kDIAG);
    if (v3)
    {
LABEL_3:
      v4 = v1;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = strcasecmp(a1, abm::trace::kDIAG);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (capabilities::radio::maverick(v3))
  {
    return 1;
  }

  LOBYTE(v2) = v1[23];
  v4 = v1;
  if ((v2 & 0x80) == 0)
  {
LABEL_4:
    v5 = strcasecmp(v4, abm::trace::kICETrace);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (capabilities::radio::ice(v5))
    {
      return 1;
    }

    LOBYTE(v2) = v1[23];
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_11:
  v5 = strcasecmp(*v1, abm::trace::kICETrace);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x80) == 0)
  {
LABEL_6:
    v6 = v1;
    if (!strcasecmp(v1, abm::trace::kBasebandTrace))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *v1;
  if (!strcasecmp(*v1, abm::trace::kBasebandTrace))
  {
    return 1;
  }

LABEL_15:
  v7 = strcasecmp(v6, abm::trace::kEURCoreDump);
  if (v7)
  {
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (capabilities::radio::maverick(v7))
    {
      return 1;
    }

    if ((v1[23] & 0x80) == 0)
    {
LABEL_17:
      if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
      {
        return 1;
      }

      if (!strcasecmp(v1, abm::trace::kCompression))
      {
        goto LABEL_40;
      }

      if (strcasecmp(v1, abm::trace::kBasebandIPC))
      {
        if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
        {
          goto LABEL_40;
        }

LABEL_34:
        if (strcasecmp(v1, abm::trace::kProfile))
        {
          if (strcasecmp(v1, abm::trace::kTraceTailspin) && strcasecmp(v1, "Settings") && strcasecmp(v1, "LogFilter"))
          {
            return 0;
          }

          goto LABEL_40;
        }

        return 1;
      }

      goto LABEL_43;
    }
  }

  v1 = *v1;
  if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
  {
    return 1;
  }

  if (!strcasecmp(v1, abm::trace::kCompression))
  {
    goto LABEL_40;
  }

  if (strcasecmp(v1, abm::trace::kBasebandIPC))
  {
    if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
    {
LABEL_40:

      return MEMORY[0x2A1C6EE08]();
    }

    goto LABEL_34;
  }

LABEL_43:

  return MEMORY[0x2A1C6EDC8]();
}

size_t std::string::basic_string[abi:ne200100]<0>(const char *a1)
{
  result = strlen(a1);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v3 = result;
  if (result >= 0x17)
  {
    if ((result | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (result | 7) + 1;
    }

    v4 = operator new(v5);
    *(&xmmword_2A18B7D50 + 1) = v3;
    unk_2A18B7D60 = v5 | 0x8000000000000000;
    *&xmmword_2A18B7D50 = v4;
  }

  else
  {
    v4 = &xmmword_2A18B7D50;
    byte_2A18B7D67 = result;
    if (!result)
    {
      LOBYTE(xmmword_2A18B7D50) = 0;
      return result;
    }
  }

  result = memmove(v4, a1, v3);
  *(v4 + v3) = 0;
  return result;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t awd::MipcCommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x70uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::MipcCommandDriver::MipcCommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<awd::MipcCommandDriver>::shared_ptr[abi:ne200100]<awd::MipcCommandDriver,std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 48))(*a2);
}

void sub_296E50CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

uint64_t awd::MipcCommandDriver::configTypeFromPayloadType(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

const char *awd::MipcCommandDriver::asString(int a1)
{
  v1 = "MipcCommandDriver::ConfigType::kDevice";
  if (a1 == 1)
  {
    v1 = "MipcCommandDriver::ConfigType::kComponent";
  }

  if (a1 == 2)
  {
    return "MipcCommandDriver::ConfigType::kInvalid";
  }

  else
  {
    return v1;
  }
}

void awd::MipcCommandDriver::sendEnableMetricSubmission(void *a1, uint64_t *a2, uint64_t a3, const void **a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a4)
  {
    v7 = _Block_copy(*a4);
    v8 = a1[2];
    if (!v8)
    {
LABEL_12:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v7 = 0;
    v8 = a1[2];
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = a1[1];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = operator new(0x20uLL);
  *v12 = v5;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = a1;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void awd::MipcCommandDriver::sendAddConfiguration(void *a1, uint64_t *a2, char a3, uint64_t a4, const void **a5)
{
  v6 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    v26 = *a2;
    v27 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = a3;
    v30 = 0;
    v31 = 0;
    __p = 0;
    v11 = *a4;
    v10 = *(a4 + 8);
    v12 = v10 - *a4;
    if (v10 == *a4)
    {
      v14 = 0;
      v13 = 0;
      v15 = *a5;
      if (*a5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v13 = operator new(v10 - *a4);
      v14 = &v13[v12];
      memcpy(v13, v11, v12);
      v15 = *a5;
      if (*a5)
      {
LABEL_7:
        v16 = _Block_copy(v15);
        v33 = a1;
        v17 = a1[2];
        if (!v17)
        {
LABEL_25:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

LABEL_13:
        v19 = a1[1];
        v20 = std::__shared_weak_count::lock(v17);
        if (!v20)
        {
          goto LABEL_25;
        }

        v21 = v20;
        v22 = operator new(0x40uLL);
        *v22 = v6;
        v22[1] = v9;
        v26 = 0;
        v27 = 0;
        *(v22 + 16) = a3;
        v22[3] = v13;
        v22[4] = v14;
        v30 = 0;
        v31 = 0;
        __p = 0;
        v22[5] = v14;
        v22[6] = v16;
        aBlock = 0;
        v22[7] = a1;
        v23 = a1[3];
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = operator new(0x18uLL);
        *v24 = v22;
        v24[1] = v19;
        v24[2] = v21;
        dispatch_async_f(v23, v24, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
        if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v25 = aBlock;
          if (!aBlock)
          {
            goto LABEL_19;
          }
        }

        else
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          v25 = aBlock;
          if (!aBlock)
          {
LABEL_19:
            if (__p)
            {
              v30 = __p;
              operator delete(__p);
            }

            if (v27)
            {
              if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v27->__on_zero_shared)(v27);
                std::__shared_weak_count::__release_weak(v27);
              }
            }

            return;
          }
        }

        _Block_release(v25);
        goto LABEL_19;
      }
    }

    v16 = 0;
    v33 = a1;
    v17 = a1[2];
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_13;
  }

  v18 = a1[5];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v26) = 0;
    _os_log_error_impl(&dword_296E3E000, v18, OS_LOG_TYPE_ERROR, "AppContext is NULL", &v26, 2u);
  }
}

void awd::MipcCommandDriver::sendClearConfiguration(void *a1, uint64_t *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (*a3)
    {
      v6 = _Block_copy(*a3);
      v7 = a1[2];
      if (!v7)
      {
LABEL_16:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v6 = 0;
      v7 = a1[2];
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    v9 = a1[1];
    v10 = std::__shared_weak_count::lock(v7);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = operator new(0x20uLL);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v6;
    v12[3] = a1;
    v13 = a1[3];
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = operator new(0x18uLL);
    *v14 = v12;
    v14[1] = v9;
    v14[2] = v11;
    dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v8 = a1[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&dword_296E3E000, v8, OS_LOG_TYPE_ERROR, "AppContext is NULL", v15, 2u);
    }
  }
}

void awd::MipcCommandDriver::sendUpdateProperties(void *a1, uint64_t *a2, const void **a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (*a3)
  {
    v6 = _Block_copy(*a3);
    v7 = a1[2];
    if (!v7)
    {
LABEL_12:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v6 = 0;
    v7 = a1[2];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v8 = a1[1];
  v9 = std::__shared_weak_count::lock(v7);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = operator new(0x20uLL);
  *v11 = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = a1;
  v12 = a1[3];
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v11;
  v13[1] = v8;
  v13[2] = v10;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendUpdateProperties(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);

    std::__shared_weak_count::__release_weak(v10);
  }
}

void awd::MipcCommandDriver::sendQueriableMetric(void *a1, uint64_t *a2, __int128 *a3, __int128 *a4, const void **a5)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = a3[1];
    v19 = *a3;
    v20 = v8;
    v21 = *a4;
    v22 = *(a4 + 2);
    if (*a5)
    {
      v9 = _Block_copy(*a5);
      v10 = a1[2];
      if (!v10)
      {
LABEL_14:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }
    }

    else
    {
      v9 = 0;
      v10 = a1[2];
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    v12 = a1[1];
    v13 = std::__shared_weak_count::lock(v10);
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = operator new(0x58uLL);
    *v15 = v6;
    v15[1] = v7;
    v16 = v20;
    *(v15 + 1) = v19;
    *(v15 + 2) = v16;
    *(v15 + 3) = v21;
    v15[8] = v22;
    v15[9] = v9;
    v15[10] = a1;
    v17 = a1[3];
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = operator new(0x18uLL);
    *v18 = v15;
    v18[1] = v12;
    v18[2] = v14;
    dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendQueriableMetric(std::shared_ptr<awd::AppContext>,awd::MetricInfo const&,awd::TriggerInfo const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v11 = a1[5];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_296E3E000, v11, OS_LOG_TYPE_ERROR, "AppContext is NULL", &v19, 2u);
    }
  }
}

void awd::MipcCommandDriver::sendQueriableMetric(void *a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v5 = *a2;
  if (*a2)
  {
    v15 = xmmword_296EB7E60;
    v7 = a2[1];
    v12 = v5;
    v13 = v7;
    *buf = 0;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *a4;
    if (*a4)
    {
      v8 = _Block_copy(v8);
    }

    aBlock = v8;
    (*(*a1 + 40))(a1, &v12, a3, buf, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v9 = v13;
    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  else
  {
    v10 = a1[5];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296E3E000, v10, OS_LOG_TYPE_ERROR, "AppContext is NULL", buf, 2u);
    }
  }
}

void sub_296E516BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void awd::MipcCommandDriver::init(awd::MipcCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::init(void)::$_0>(awd::MipcCommandDriver::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::init(void)::$_0,dispatch_queue_s *::default_delete<awd::MipcCommandDriver::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

awd::AwdCommandDriver *awd::MipcCommandDriver::MipcCommandDriver(awd::AwdCommandDriver *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  object[1] = *a2;
  v17 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AwdCommandDriver::AwdCommandDriver();
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  *a1 = &unk_2A1E118F0;
  Name = awd::AwdCommandDriver::getName(a1);
  v6 = *(a1 + 3);
  object[0] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  Registry::getRouterServer(&v12, *a2);
  v7 = v12;
  if (v12)
  {
    Registry::getRouterServer(v11, *a2);
    abb::router::Server::createLocalLink(&v14, v11[0]);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 88, Name, object, &v14);
  v8 = v15;
  if (v7)
  {
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v8 = v11[1];
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }

  return a1;
}

void sub_296E519FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, dispatch_object_t object)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  if (object)
  {
    dispatch_release(object);
    awd::AwdCommandDriver::~AwdCommandDriver(v16);
    _Unwind_Resume(a1);
  }

  awd::AwdCommandDriver::~AwdCommandDriver(v16);
  _Unwind_Resume(a1);
}

void sub_296E51A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void awd::MipcCommandDriver::handleAddConfigResultInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Add_Config_Result_Ind *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = mipc::operator==();
  v5 = *(this + 5);
  if (v4)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(a2 + 11);
      v7 = **(a2 + 13);
      v8 = "success";
      if (!**(a2 + 13))
      {
        v8 = "failed";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109634;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v6;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v7;
      HIWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
      __p.__r_.__value_.__r.__words[2] = v8;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Got add configuration indication from BB (appId: %d, result: %d) -- %s", &__p, 0x18u);
    }

    v11 = *(this + 9);
    v10 = this + 72;
    v9 = v11;
    if (v11)
    {
      v12 = **(a2 + 11);
      v13 = v10;
      do
      {
        v14 = v9[32];
        v15 = v14 >= v12;
        v16 = v14 < v12;
        if (v15)
        {
          v13 = v9;
        }

        v9 = *&v9[8 * v16];
      }

      while (v9);
      if (v13 != v10 && v13[32] <= v12)
      {
        v17 = *(v13 + 5);
        v18 = *(v13 + 6);
        __p.__r_.__value_.__r.__words[0] = v17;
        __p.__r_.__value_.__l.__size_ = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17)
        {
          v19 = **(a2 + 11);
          v20 = **(a2 + 13) == 0;
          awd::AppContext::operator()();
        }

        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      __p = *(a2 + 40);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v25 = p_p;
    _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Error on add configuration result indication (%s)", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void awd::MipcCommandDriver::handleDeleteConfigResultInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Delete_Config_Result_Ind *a2)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = mipc::operator==();
  v5 = *(this + 5);
  if (v4)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(a2 + 11);
      v7 = **(a2 + 13);
      v8 = "success";
      if (!**(a2 + 13))
      {
        v8 = "failed";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109634;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v6;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v7;
      HIWORD(__p.__r_.__value_.__r.__words[1]) = 2080;
      __p.__r_.__value_.__r.__words[2] = v8;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Got clear configuration indication from BB (appId: %d, result: %d) -- %s", &__p, 0x18u);
    }

    v11 = *(this + 9);
    v10 = this + 72;
    v9 = v11;
    if (v11)
    {
      v12 = **(a2 + 11);
      v13 = v10;
      do
      {
        v14 = v9[32];
        v15 = v14 >= v12;
        v16 = v14 < v12;
        if (v15)
        {
          v13 = v9;
        }

        v9 = *&v9[8 * v16];
      }

      while (v9);
      if (v13 != v10 && v13[32] <= v12)
      {
        v17 = *(v13 + 5);
        v18 = *(v13 + 6);
        __p.__r_.__value_.__r.__words[0] = v17;
        __p.__r_.__value_.__l.__size_ = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17)
        {
          v19 = **(a2 + 11);
          v20 = **(a2 + 13) == 0;
          awd::AppContext::operator()();
        }

        if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      __p = *(a2 + 40);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v25 = p_p;
    _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Error on clear configuration result indication (%s)", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void awd::MipcCommandDriver::handleSubmitTriggerInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Submit_Trigger_Ind *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = mipc::operator==();
  v5 = *(this + 5);
  if (v4)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(a2 + 11);
      v7 = **(a2 + 15);
      v8 = **(a2 + 12);
      v9 = **(a2 + 14);
      v10 = **(a2 + 13);
      v11 = **(a2 + 16);
      *buf = 67110400;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      *&buf[14] = 1024;
      *v32 = v8;
      *&v32[4] = 1024;
      *&v32[6] = v9;
      *&v32[10] = 1024;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Got trigger submission from BB (appId: %d, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x, profileId: 0x%x, time: %lld)", buf, 0x2Au);
    }

    v14 = *(this + 9);
    v13 = this + 72;
    v12 = v14;
    if (v14)
    {
      v15 = **(a2 + 11);
      v16 = v13;
      do
      {
        v17 = v12[32];
        v18 = v17 >= v15;
        v19 = v17 < v15;
        if (v18)
        {
          v16 = v12;
        }

        v12 = *&v12[8 * v19];
      }

      while (v12);
      if (v16 != v13 && v16[32] <= v15)
      {
        v20 = *(v16 + 5);
        v21 = *(v16 + 6);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v20)
        {
          v22 = **(a2 + 12);
          v23 = **(a2 + 15);
          v24 = **(a2 + 14);
          *buf = **(a2 + 13);
          *&buf[4] = 0;
          *&buf[8] = v23;
          *&buf[12] = v22;
          *v32 = v24;
          *&v32[4] = -1431699456;
          *&v32[8] = -1431655936;
          v33 = -1431655936;
          *v27 = v24;
          v28 = 0;
          v29 = -1431655766;
          v30 = 0;
          awd::AppContext::operator()();
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      *buf = *(a2 + 40);
      *v32 = *(a2 + 7);
    }

    v26 = buf;
    if (v32[7] < 0)
    {
      v26 = *buf;
    }

    *v27 = 136315138;
    v28 = v26;
    _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Error on trigger submission indication (%s)", v27, 0xCu);
    if ((v32[7] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

void awd::MipcCommandDriver::handleMetricSubmissionInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Metric_Submission_Ind *a2)
{
  v47 = *MEMORY[0x29EDCA608];
  v4 = mipc::operator==();
  v5 = *(this + 5);
  if (v4)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(a2 + 11);
      v7 = **(a2 + 15);
      v8 = **(a2 + 16);
      v9 = **(a2 + 12);
      v10 = **(a2 + 14);
      v11 = **(a2 + 13);
      v12 = **(a2 + 17);
      v13 = **(a2 + 18);
      *buf = 67110912;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      *&buf[14] = 1024;
      *v39 = v8;
      *&v39[4] = 1024;
      *&v39[6] = v9;
      *&v39[10] = 1024;
      v40 = v10;
      v41 = 1024;
      v42 = v11;
      v43 = 1024;
      v44 = v12;
      v45 = 1024;
      v46 = v13;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Got metric submission from BB (appId: %d, metricId:0x%x, component: 0x%x, submissionId: 0x%x, triggerId: 0x%x, profileId: 0x%x, current segment: %u, total length: %u)", buf, 0x32u);
    }

    v16 = *(this + 9);
    v15 = this + 72;
    v14 = v16;
    if (v16)
    {
      v17 = **(a2 + 11);
      v18 = v15;
      do
      {
        v19 = v14[32];
        v20 = v19 >= v17;
        v21 = v19 < v17;
        if (v20)
        {
          v18 = v14;
        }

        v14 = *&v14[8 * v21];
      }

      while (v14);
      if (v18 != v15 && v18[32] <= v17)
      {
        v23 = *(v18 + 5);
        v22 = *(v18 + 6);
        *&v37 = v23;
        *(&v37 + 1) = v22;
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v23)
        {
          v24 = **(a2 + 12);
          v25 = *(a2 + 17);
          v26 = **(a2 + 16);
          v27 = **(a2 + 15);
          v28 = **(a2 + 14);
          *buf = **(a2 + 13);
          *&buf[4] = v27;
          *&buf[8] = v26;
          *&buf[12] = v24;
          *v39 = v28;
          *&v39[4] = -1431699456;
          *&v39[8] = -1431655936;
          v40 = -1431655936;
          v29 = *v25;
          v30 = *(a2 + 19);
          __p = 0;
          v32 = *v30;
          v31 = *(v30 + 8);
          v33 = v31 - v32;
          if (v31 != v32)
          {
            if ((v33 & 0x8000000000000000) != 0)
            {
              std::vector<std::string>::__throw_length_error[abi:ne200100]();
            }

            __p = operator new(v31 - v32);
            memcpy(__p, v32, v33);
          }

          awd::AppContext::operator()();
          if (__p)
          {
            operator delete(__p);
          }
        }

        if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v22->__on_zero_shared)(v22);
          std::__shared_weak_count::__release_weak(v22);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      *buf = *(a2 + 40);
      *v39 = *(a2 + 7);
    }

    v35 = buf;
    if (v39[7] < 0)
    {
      v35 = *buf;
    }

    LODWORD(v37) = 136315138;
    *(&v37 + 4) = v35;
    _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Error on metric submission indication (%s)", &v37, 0xCu);
    if ((v39[7] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_296E5252C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void awd::MipcCommandDriver::handleMetricSubmissionEndInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Metric_Submission_End_Ind *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = mipc::operator==();
  v5 = *(this + 5);
  if (v4)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v6 = **(a2 + 11);
      v7 = **(a2 + 15);
      v8 = **(a2 + 12);
      v9 = **(a2 + 14);
      v10 = **(a2 + 13);
      v11 = **(a2 + 16);
      *buf = 67110400;
      *&buf[4] = v6;
      *&buf[8] = 1024;
      *&buf[10] = v7;
      *&buf[14] = 1024;
      *v30 = v8;
      *&v30[4] = 1024;
      *&v30[6] = v9;
      *&v30[10] = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = v11;
      _os_log_impl(&dword_296E3E000, v5, OS_LOG_TYPE_DEFAULT, "#I Got metric submission end from BB (appId: %d, component: 0x%x, submissionId: 0x%x, triggerId=0x%x, profileId=0x%x, num packets: %d)", buf, 0x26u);
    }

    v14 = *(this + 9);
    v13 = this + 72;
    v12 = v14;
    if (v14)
    {
      v15 = **(a2 + 11);
      v16 = v13;
      do
      {
        v17 = v12[32];
        v18 = v17 >= v15;
        v19 = v17 < v15;
        if (v18)
        {
          v16 = v12;
        }

        v12 = *&v12[8 * v19];
      }

      while (v12);
      if (v16 != v13 && v16[32] <= v15)
      {
        v20 = *(v16 + 5);
        v21 = *(v16 + 6);
        *&v28 = v20;
        *(&v28 + 1) = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v20)
        {
          v22 = **(a2 + 12);
          v23 = **(a2 + 15);
          v24 = **(a2 + 14);
          *buf = **(a2 + 13);
          *&buf[4] = 0;
          *&buf[8] = v23;
          *&buf[12] = v22;
          *v30 = v24;
          *&v30[4] = -1431699456;
          *&v30[8] = -1431655936;
          v31 = -1431655936;
          v25 = **(a2 + 16);
          awd::AppContext::operator()();
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(buf, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      *buf = *(a2 + 40);
      *v30 = *(a2 + 7);
    }

    v27 = buf;
    if (v30[7] < 0)
    {
      v27 = *buf;
    }

    LODWORD(v28) = 136315138;
    *(&v28 + 4) = v27;
    _os_log_error_impl(&dword_296E3E000, v5, OS_LOG_TYPE_ERROR, "Error on metric submission end indication (%s)", &v28, 0xCu);
    if ((v30[7] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
}

void awd::MipcCommandDriver::handleBatchMetricSubmissionInd_sync(awd::MipcCommandDriver *this, const mipc::dale_awd::Batch_Metric_Submission_Ind *a2)
{
  v65 = *MEMORY[0x29EDCA608];
  if (mipc::operator==())
  {
    v4 = *(a2 + 11);
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(this + 5);
      if (v6 != *v4)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v62.__r_.__value_.__l.__data_) = 0;
          _os_log_debug_impl(&dword_296E3E000, v7, OS_LOG_TYPE_DEBUG, "#D Received batch metric indication", &v62, 2u);
          v50 = *(a2 + 11);
          v5 = *v50;
          v8 = v50[1] - *v50;
          if (*v50)
          {
            v51 = v8 >= 0x1C;
          }

          else
          {
            v51 = 0;
          }

          if (!v51)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v8 = v6 - v5;
          if (v5)
          {
            v9 = v8 >= 0x1C;
          }

          else
          {
            v9 = 0;
          }

          if (!v9)
          {
            goto LABEL_64;
          }
        }

        v10 = *(v5 + 13);
        if (*(v5 + 13))
        {
          v56 = *(v5 + 12);
          v11 = v5[5];
          v13 = v5[1];
          v12 = v5[2];
          v14 = *v5;
          v58 = *(v5 + 3);
          v15 = operator new(0x40uLL);
          v16 = v15;
          *v15 = v5;
          *(v15 + 1) = v8;
          v17 = (v15 + 64);
          *(v15 + 4) = v14;
          *(v15 + 5) = v13;
          v60 = v13;
          v61 = v12;
          *(v15 + 6) = v12;
          *(v15 + 28) = v58;
          *(v15 + 9) = v11;
          *(v15 + 20) = v56;
          *(v15 + 21) = v10;
          *(v15 + 11) = -1431655766;
          *(v15 + 6) = v5 + 7;
          *(v15 + 7) = v10;
          v62.__r_.__value_.__r.__words[0] = v15;
          v18 = v10 + 28;
          v62.__r_.__value_.__l.__size_ = (v15 + 64);
          v62.__r_.__value_.__r.__words[2] = (v15 + 64);
          v19 = v8 - (v10 + 28);
          if (v8 != v10 + 28 && v19 >= 0x1C)
          {
            v20 = (v5 + v18);
            v21 = *(v5 + v18 + 26);
            if (*(v5 + v18 + 26))
            {
              v22 = v14;
              v23 = v58;
              v24 = (v15 + 64);
              do
              {
                v25 = v22;
                v26 = v60;
                v27 = v61;
                v28 = v23;
                v29 = v11;
                v11 = v20[5];
                v57 = v20[4];
                v59 = *(v20 + 12);
                v23 = v20[3];
                v22 = *v20;
                v60 = v20[1];
                v61 = v20[2];
                if (v25 != *v20 || v26 != v20[1] || v27 != v20[2] || v28 != v23 || v29 != v11)
                {
                  v34 = v20[3];
                  v35 = *v20;
                  awd::MipcCommandDriver::handleBatchMetricSubmissionInd_sync(mipc::dale_awd::Batch_Metric_Submission_Ind const&)::$_0::operator()(this, &v62);
                  v62.__r_.__value_.__l.__size_ = v16;
                  v17 = v16;
                  v22 = v35;
                  v23 = v34;
                }

                v36 = v20 + 7;
                v37 = v21;
                if (v17 >= v24)
                {
                  v54 = v23;
                  v55 = v22;
                  v53 = v11;
                  v38 = v17 - v16;
                  v39 = (v17 - v16) >> 6;
                  v40 = v39 + 1;
                  if ((v39 + 1) >> 58)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v24 - v16) >> 5 > v40)
                  {
                    v40 = (v24 - v16) >> 5;
                  }

                  if (v24 - v16 >= 0x7FFFFFFFFFFFFFC0)
                  {
                    v41 = 0x3FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v41 = v40;
                  }

                  if (v41)
                  {
                    if (v41 >> 58)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v42 = operator new(v41 << 6);
                    v36 = v20 + 7;
                  }

                  else
                  {
                    v42 = 0;
                  }

                  v43 = &v42[64 * v39];
                  *v43 = v20;
                  *(v43 + 1) = v19;
                  *(v43 + 4) = v55;
                  *(v43 + 5) = v60;
                  v24 = &v42[64 * v41];
                  v11 = v53;
                  *(v43 + 6) = v61;
                  *(v43 + 7) = v54;
                  *(v43 + 8) = v57;
                  *(v43 + 9) = v53;
                  *(v43 + 20) = v59;
                  *(v43 + 21) = v37;
                  *(v43 + 11) = -1431655766;
                  v17 = (v43 + 64);
                  *(v43 + 6) = v36;
                  *(v43 + 7) = v37;
                  memcpy(v42, v16, v38);
                  v62.__r_.__value_.__r.__words[0] = v42;
                  v62.__r_.__value_.__l.__size_ = v17;
                  v62.__r_.__value_.__r.__words[2] = v24;
                  if (v16)
                  {
                    operator delete(v16);
                  }

                  v16 = v42;
                  v23 = v54;
                  v22 = v55;
                }

                else
                {
                  *v17 = v20;
                  *(v17 + 8) = v19;
                  *(v17 + 16) = v22;
                  *(v17 + 20) = v60;
                  *(v17 + 24) = v61;
                  *(v17 + 28) = v23;
                  *(v17 + 32) = v57;
                  *(v17 + 36) = v11;
                  *(v17 + 40) = v59;
                  *(v17 + 42) = v21;
                  *(v17 + 44) = -1431655766;
                  *(v17 + 48) = v36;
                  *(v17 + 56) = v21;
                  v17 += 64;
                }

                v62.__r_.__value_.__l.__size_ = v17;
                v19 -= v37 + 28;
                if (v19 < 0x1C)
                {
                  break;
                }

                v20 = (v20 + v37 + 28);
                v21 = *(v20 + 13);
              }

              while (*(v20 + 13));
            }
          }

LABEL_65:
          awd::MipcCommandDriver::handleBatchMetricSubmissionInd_sync(mipc::dale_awd::Batch_Metric_Submission_Ind const&)::$_0::operator()(this, &v62);
          v49 = v62.__r_.__value_.__r.__words[0];
          v62.__r_.__value_.__l.__size_ = v62.__r_.__value_.__r.__words[0];
          if (v62.__r_.__value_.__r.__words[0])
          {
            goto LABEL_66;
          }

          goto LABEL_67;
        }

LABEL_64:
        memset(&v62, 0, sizeof(v62));
        goto LABEL_65;
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v62.__r_.__value_.__l.__data_) = 0;
      v46 = "Empty payload in batch metric submission";
      v47 = v7;
    }

    else
    {
      v45 = *(this + 5);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      LOWORD(v62.__r_.__value_.__l.__data_) = 0;
      v46 = "Invalid payload TLV in batch metric submission";
      v47 = v45;
    }

    _os_log_error_impl(&dword_296E3E000, v47, OS_LOG_TYPE_ERROR, v46, &v62, 2u);
    goto LABEL_67;
  }

  v44 = *(this + 5);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, *(a2 + 5), *(a2 + 6));
    }

    else
    {
      v62 = *(a2 + 40);
    }

    v48 = &v62;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v62.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v64 = v48;
    _os_log_error_impl(&dword_296E3E000, v44, OS_LOG_TYPE_ERROR, "Error in batch metric submission (%s)", buf, 0xCu);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      v49 = v62.__r_.__value_.__r.__words[0];
LABEL_66:
      operator delete(v49);
    }
  }

LABEL_67:
  v52 = *MEMORY[0x29EDCA608];
}

void sub_296E52C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void awd::MipcCommandDriver::handleBatchMetricSubmissionInd_sync(mipc::dale_awd::Batch_Metric_Submission_Ind const&)::$_0::operator()(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x29EDCA608];
  if (*a2 != a2[1])
  {
    v3 = *(a1 + 72);
    if (v3)
    {
      v5 = *(*a2 + 16);
      v6 = a1 + 72;
      do
      {
        v7 = *(v3 + 32);
        v8 = v7 >= v5;
        v9 = v7 < v5;
        if (v8)
        {
          v6 = v3;
        }

        v3 = *(v3 + 8 * v9);
      }

      while (v3);
      if (v6 != a1 + 72 && *(v6 + 32) <= v5)
      {
        v10 = *(v6 + 48);
        v46 = *(v6 + 40);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v46)
        {
          v11 = *(*a2 + 36);
          v12 = *(*a2 + 20);
          v13 = *(*a2 + 24);
          v14 = *(*a2 + 28);
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110144;
            v49 = v5;
            LOWORD(v50) = 1024;
            *(&v50 + 2) = v11;
            HIWORD(v50) = 1024;
            v51 = v12;
            LOWORD(v52) = 1024;
            *(&v52 + 2) = v14;
            HIWORD(v52) = 1024;
            v53 = v13;
            _os_log_debug_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEBUG, "#D >>>> Start  (AppId: %d, Component: 0x%x, SubmissionId: 0x%x, TriggerId: 0x%x, ProfileId: 0x%x)", buf, 0x20u);
          }

          v44 = v11;
          v45 = v5;
          v41 = v13;
          *buf = v13;
          v49 = 0;
          v50 = __PAIR64__(v12, v11);
          v43 = v12;
          v51 = v14;
          v52 = 0xAAAAAA00AAAA0000;
          v53 = -1431655936;
          v42 = v14;
          awd::AppContext::operator()();
          v16 = *a2;
          v17 = a2[1];
          v40 = v10;
          if (*a2 != v17)
          {
            while (1)
            {
              v19 = *(v16 + 32);
              v18 = *(v16 + 36);
              v21 = *(v16 + 20);
              v20 = *(v16 + 24);
              v22 = *(v16 + 28);
              v23 = *(a1 + 40);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67110400;
                v49 = v45;
                LOWORD(v50) = 1024;
                *(&v50 + 2) = v18;
                HIWORD(v50) = 1024;
                v51 = v21;
                LOWORD(v52) = 1024;
                *(&v52 + 2) = v22;
                HIWORD(v52) = 1024;
                v53 = v20;
                v54 = 1024;
                LODWORD(v55) = v19;
                _os_log_debug_impl(&dword_296E3E000, v23, OS_LOG_TYPE_DEBUG, "#D    * Metric (AppId: %d, Component: 0x%x, SubmissionId: 0x%x, TriggerId: 0x%x, ProfileId: 0x%x, MetricId: 0x%x)", buf, 0x26u);
              }

              *buf = v20;
              v49 = v19;
              v50 = __PAIR64__(v21, v18);
              v51 = v22;
              v52 = 0xAAAAAA00AAAA0000;
              v53 = -1431655936;
              v24 = *(v16 + 40);
              v25 = *(v16 + 48);
              v26 = *(v16 + 56);
              __p = 0;
              if (!v26)
              {
                goto LABEL_31;
              }

              if ((v26 & 0x8000000000000000) != 0)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v27 = operator new(v26);
              __p = v27;
              if (v26 < 0x20)
              {
                v28 = v25;
              }

              else
              {
                v28 = v25;
                if (&v27[-v25] >= 0x20)
                {
                  v28 = (v25 + (v26 & 0x7FFFFFFFFFFFFFE0));
                  v29 = v27 + 16;
                  v30 = (v25 + 16);
                  v31 = v26 & 0x7FFFFFFFFFFFFFE0;
                  do
                  {
                    v32 = *v30;
                    *(v29 - 1) = *(v30 - 1);
                    *v29 = v32;
                    v29 += 2;
                    v30 += 2;
                    v31 -= 32;
                  }

                  while (v31);
                  v27 += v26 & 0x7FFFFFFFFFFFFFE0;
                  if (v26 == (v26 & 0x7FFFFFFFFFFFFFE0))
                  {
                    goto LABEL_31;
                  }
                }
              }

              v33 = v27;
              do
              {
                v34 = *v28++;
                *v33++ = v34;
              }

              while (v28 != (v25 + v26));
LABEL_31:
              awd::AppContext::operator()();
              if (__p)
              {
                operator delete(__p);
              }

              v16 += 64;
              if (v16 == v17)
              {
                v16 = *a2;
                v35 = a2[1];
                goto LABEL_35;
              }
            }
          }

          v35 = *a2;
LABEL_35:
          v36 = *(a1 + 40);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67110400;
            v49 = v45;
            LOWORD(v50) = 1024;
            *(&v50 + 2) = v44;
            HIWORD(v50) = 1024;
            v51 = v43;
            LOWORD(v52) = 1024;
            *(&v52 + 2) = v42;
            HIWORD(v52) = 1024;
            v53 = v41;
            v54 = 2048;
            v55 = (v35 - v16) >> 6;
            _os_log_debug_impl(&dword_296E3E000, v36, OS_LOG_TYPE_DEBUG, "#D    > Done   (AppId: %d, Component: 0x%x, SubmissionId: 0x%x, TriggerId: 0x%x, ProfileId: 0x%x, Count: %lu)", buf, 0x2Au);
            v39 = *a2;
            v38 = a2[1];
          }

          *buf = v41;
          v49 = 0;
          v50 = __PAIR64__(v43, v44);
          v51 = v42;
          v52 = 0xAAAAAA00AAAA0000;
          v53 = -1431655936;
          awd::AppContext::operator()();
          v10 = v40;
        }

        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }
  }

  v37 = *MEMORY[0x29EDCA608];
}

void sub_296E53178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a27);
  _Unwind_Resume(a1);
}

void awd::MipcCommandDriver::~MipcCommandDriver(awd::MipcCommandDriver *this)
{
  *this = &unk_2A1E118F0;
  *(this + 11) = &unk_2A1E11970;
  v1 = *(this + 13);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  awd::AwdCommandDriver::~AwdCommandDriver(this);
}

{
  *this = &unk_2A1E118F0;
  *(this + 11) = &unk_2A1E11970;
  v1 = *(this + 13);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    awd::AwdCommandDriver::~AwdCommandDriver(this);
  }

  else
  {
    awd::AwdCommandDriver::~AwdCommandDriver(this);
  }

  operator delete(v2);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2A1E11970;
  v1 = *(this + 2);
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
  *this = &unk_2A1E11970;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

atomic_ullong *std::shared_ptr<awd::MipcCommandDriver>::shared_ptr[abi:ne200100]<awd::MipcCommandDriver,std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E119A0;
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

void sub_296E535B8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver*)#1}::operator() const(awd::MipcCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<awd::MipcCommandDriver *,std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver *)#1},std::allocator<awd::MipcCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<awd::MipcCommandDriver *,std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver *)#1},std::allocator<awd::MipcCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3awd16AwdCommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<awd::MipcCommandDriver> ctu::SharedSynchronizable<awd::AwdCommandDriver>::make_shared_ptr<awd::MipcCommandDriver>(awd::MipcCommandDriver*)::{lambda(awd::MipcCommandDriver*)#1}::operator() const(awd::MipcCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

void *std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v2 = *((*a1)[3] + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Send enable metric submission not supported on this device", buf, 2u);
  }

  v3 = *v1;
  v4 = v1[2];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *buf = v4;
  awd::AppContext::operator()();
  if (*buf)
  {
    _Block_release(*buf);
  }

  v5 = v1[2];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v1[1];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(v1);
  v7 = a1;
  if (a1)
  {
    v8 = a1[2];
    if (v8)
    {
      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v7 = a1;
      }
    }

    operator delete(v7);
  }
}

void sub_296E53914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::unique_ptr<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = a1;
  v131 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v90 = v2;
  v3 = v2[7];
  v5 = v2[3];
  v4 = v2[4];
  if (*(v2 + 16) == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (*(v2 + 16))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v84 = v4 - v5;
  if (v4 == v5)
  {
    isa = v3[5].isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_ERROR))
    {
      AppID = awd::AppContext::getAppID(*v2);
      *buf = 67109120;
      *&buf[4] = AppID;
      _os_log_error_impl(&dword_296E3E000, isa, OS_LOG_TYPE_ERROR, "Empty payload (appId: %d)", buf, 8u);
      v77 = *v2;
      v14 = v2[6];
      if (!v14)
      {
LABEL_17:
        v106 = v14;
        awd::AppContext::operator()();
        v11 = v106;
        if (v106)
        {
LABEL_18:
          _Block_release(v11);
        }

LABEL_19:
        std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v90);
LABEL_34:
        v27 = v1[2];
        if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        operator delete(v1);
        goto LABEL_38;
      }
    }

    else
    {
      v13 = *v2;
      v14 = v2[6];
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    v14 = _Block_copy(v14);
    goto LABEL_17;
  }

  v8 = v3[5].isa;
  if (v7 == 2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v78 = awd::AppContext::getAppID(*v2);
      v79 = *(v2 + 16);
      *buf = 67109376;
      *&buf[4] = v78;
      *v126 = 1024;
      *&v126[2] = v79;
      _os_log_error_impl(&dword_296E3E000, v8, OS_LOG_TYPE_ERROR, "Illegal payload type (appId: %d, type: %d)", buf, 0xEu);
      v80 = *v2;
      v10 = v2[6];
      if (!v10)
      {
LABEL_12:
        aBlock = v10;
        awd::AppContext::operator()();
        v11 = aBlock;
        if (aBlock)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v9 = *v2;
      v10 = v2[6];
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    v10 = _Block_copy(v10);
    goto LABEL_12;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = awd::AppContext::getAppID(*v2);
    v16 = *(v2 + 16);
    *buf = 67109634;
    *&buf[4] = v15;
    *v126 = 2080;
    *&v126[2] = awd::asString();
    *&v126[10] = 2048;
    *&v126[12] = v84;
    _os_log_impl(&dword_296E3E000, v8, OS_LOG_TYPE_DEFAULT, "#I Requesting to add configuration (appId: %d, type: %s, payload size: %zu)", buf, 0x1Cu);
  }

  v17 = operator new(0x20uLL);
  v82 = v7;
  v17[1] = 0;
  v17[2] = 0;
  *v17 = &unk_2A1E119F0;
  *(v17 + 24) = 1;
  *&v104 = v17 + 3;
  *(&v104 + 1) = v17;
  v18 = dispatch_group_create();
  v83 = v18;
  if ((v84 + 58999) >= 0xE678)
  {
    v29 = 0;
    v87 = v3;
    v88 = (v84 + 58999) / 0xE678uLL;
    v30 = 1;
    while (1)
    {
      *&v32 = 0xAAAAAAAAAAAAAAAALL;
      *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v102 = v32;
      *v103 = v32;
      *__p = v32;
      *v101 = v32;
      v99[3] = v32;
      v99[4] = v32;
      v99[1] = v32;
      v99[2] = v32;
      v99[0] = v32;
      mipc::dale_awd::Add_Config_Req::Add_Config_Req();
      v33 = v2[3];
      v34 = (v33 + v29);
      v35 = v33 + v84;
      if (v35 >= v34 + 59000)
      {
        v35 = v34 + 59000;
      }

      v36 = v35 - v34;
      if (v35 == v34)
      {
        v37 = 0;
        v38 = 0;
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v37 = operator new(v35 - v34);
        v38 = &v37[v36];
        memcpy(v37, v34, v36);
      }

      v39 = awd::AppContext::getAppID(*v2);
      v40 = operator new(4uLL);
      *v40 = v39;
      v41 = __p[1];
      __p[1] = v40;
      if (v41)
      {
        operator delete(v41);
      }

      v42 = operator new(4uLL);
      *v42 = 0;
      v43 = v101[0];
      v101[0] = v42;
      if (v43)
      {
        operator delete(v43);
      }

      v44 = operator new(4uLL);
      *v44 = v82;
      v45 = v101[1];
      v101[1] = v44;
      if (v45)
      {
        operator delete(v45);
      }

      v46 = operator new(1uLL);
      *v46 = v88;
      v47 = v102[0];
      v102[0] = v46;
      if (v47)
      {
        operator delete(v47);
      }

      v48 = operator new(1uLL);
      *v48 = v30 - 1;
      v49 = v102[1];
      v102[1] = v48;
      if (v49)
      {
        operator delete(v49);
      }

      v50 = operator new(2uLL);
      v51 = v38 - v37;
      *v50 = v38 - v37;
      v52 = v103[0];
      v103[0] = v50;
      if (v52)
      {
        operator delete(v52);
      }

      v53 = operator new(0x18uLL);
      *v53 = 0;
      v53[1] = 0;
      v53[2] = 0;
      if (v38 != v37)
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v54 = operator new(v38 - v37);
        *v53 = v54;
        v55 = &v54[v51];
        v53[2] = &v54[v51];
        memcpy(v54, v37, v51);
        v53[1] = v55;
      }

      v56 = v103[1];
      v103[1] = v53;
      v18 = v83;
      if (v56)
      {
        v57 = *v56;
        if (*v56)
        {
          v56[1] = v57;
          operator delete(v57);
        }

        operator delete(v56);
      }

      v110 = 0xAAAAAAAAAAAAAAAALL;
      *&v58 = 0xAAAAAAAAAAAAAAAALL;
      *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v108 = v58;
      v109 = v58;
      v107 = v58;
      mipc::dale_awd::Add_Config_Req::serialize(&v107, v99);
      if (v110)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Serialization error");
        exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
        __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
      }

      v124 = 0xAAAAAAAAAAAAAAAALL;
      *&v59 = 0xAAAAAAAAAAAAAAAALL;
      *(&v59 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v122 = v59;
      v123 = v59;
      v120 = v59;
      v121 = v59;
      v118 = v59;
      v119 = v59;
      v116 = v59;
      v117 = v59;
      MEMORY[0x29C266720](&v116, &v107);
      abb::router::SendProxy::SendProxy(buf, &v87[11], &v116);
      MEMORY[0x29C266730](&v116);
      if (v110 != -1)
      {
        *&v116 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
        *(&v116 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
        (*(&v116 + v110))(&v91, &v107);
      }

      v60 = v2[1];
      v91 = *v2;
      v92 = v60;
      if (v60)
      {
        atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LOBYTE(v93) = *(v2 + 16);
      *(&v93 + 1) = (v84 + 58999) / 0xE678uLL;
      LODWORD(v94) = v30 - 1;
      *(&v94 + 1) = v36;
      v95 = v104;
      if (*(&v104 + 1))
      {
        atomic_fetch_add_explicit((*(&v104 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      group[0] = v83;
      if (v83)
      {
        dispatch_retain(v83);
        if (group[0])
        {
          dispatch_group_enter(group[0]);
        }
      }

      group[1] = v87;
      v61 = v87[2].isa;
      if (!v61 || (v62 = v87[1].isa, (v63 = std::__shared_weak_count::lock(v61)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v97 = v62;
      v98 = v63;
      atomic_fetch_add_explicit(&v63->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v64 = v63;
        (v63->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v64);
      }

      v65 = v91;
      v66 = v92;
      v91 = 0;
      v92 = 0;
      v108 = v93;
      v109 = v94;
      v67 = v95;
      v68 = *group;
      v95 = 0uLL;
      group[0] = 0;
      v113 = *(&v68 + 1);
      v69 = v97;
      v70 = v98;
      v97 = 0;
      v98 = 0;
      *&v116 = v65;
      *(&v116 + 1) = v66;
      v107 = 0uLL;
      v117 = v93;
      v118 = v94;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v85 = v68;
      v86 = v67;
      v119 = v67;
      v120 = v68;
      *&v121 = v69;
      *(&v121 + 1) = v70;
      v114 = 0;
      v115 = 0;
      v71 = operator new(0x68uLL);
      *v71 = &unk_2A1E11A40;
      *(v71 + 1) = v65;
      *(v71 + 2) = v66;
      v72 = v94;
      *(v71 + 24) = v93;
      *(v71 + 40) = v72;
      *(v71 + 72) = v85;
      *(v71 + 56) = v86;
      *(v71 + 11) = v69;
      *(v71 + 12) = v70;
      v130 = v71;
      std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v129, v128);
      if (v130 == v129)
      {
        break;
      }

      v3 = v87;
      if (v130)
      {
        (*(*v130 + 40))();
      }

      v73 = v98;
      if (v98)
      {
        goto LABEL_85;
      }

LABEL_86:
      if (group[0])
      {
        dispatch_group_leave(group[0]);
        if (group[0])
        {
          dispatch_release(group[0]);
        }
      }

      v74 = *(&v95 + 1);
      if (*(&v95 + 1) && !atomic_fetch_add((*(&v95 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v74->__on_zero_shared)(v74);
        std::__shared_weak_count::__release_weak(v74);
        v75 = v92;
        if (v92)
        {
LABEL_92:
          if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v75->__on_zero_shared)(v75);
            std::__shared_weak_count::__release_weak(v75);
          }
        }
      }

      else
      {
        v75 = v92;
        if (v92)
        {
          goto LABEL_92;
        }
      }

      MEMORY[0x29C266750](buf);
      if (v37)
      {
        operator delete(v37);
      }

      MEMORY[0x29C266F50](v99);
      v31 = v88 > v30++;
      v29 += 59000;
      if (!v31)
      {
        goto LABEL_23;
      }
    }

    (*(*v130 + 32))(v130);
    v3 = v87;
    v73 = v98;
    if (!v98)
    {
      goto LABEL_86;
    }

LABEL_85:
    std::__shared_weak_count::__release_weak(v73);
    goto LABEL_86;
  }

LABEL_23:
  v19 = *v2;
  v20 = v2[1];
  *buf = *v2;
  *v126 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = v2[6];
  if (v21)
  {
    v22 = _Block_copy(v21);
    v23 = *(&v104 + 1);
    v24 = v104;
    *&v126[8] = v22;
    *&v126[16] = v104;
    if (!*(&v104 + 1))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v22 = 0;
  v23 = *(&v104 + 1);
  v24 = v104;
  *&v126[8] = 0;
  *&v126[16] = v104;
  if (*(&v104 + 1))
  {
LABEL_27:
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_28:
  v127 = v3;
  v25 = v3[3].isa;
  v26 = operator new(0x30uLL);
  *v26 = v19;
  v26[1] = v20;
  v26[2] = v22;
  v26[3] = v24;
  v26[4] = v23;
  v26[5] = v3;
  *&v99[0] = 0;
  dispatch_group_notify_f(v18, v25, v26, dispatch::detail::group_notify<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](v99);
  if (v18)
  {
    dispatch_release(v18);
  }

  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v1 = a1;
  std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&v90);
  if (a1)
  {
    goto LABEL_34;
  }

LABEL_38:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_296E54404(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[6];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      v2[4] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}::~Add_Config_Cnf(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[8];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[7];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[1];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void *awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[2];
    if (!v3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = a1[2];
  if (v3)
  {
LABEL_4:
    _Block_release(v3);
  }

LABEL_5:
  v4 = a1[1];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E119F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 48) = -1;
  return a1;
}

{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 48) = -1;
  return a1;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a2;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    a2 = v3;
    if ((*(v3 + 31) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a2 + 31) & 0x80000000) == 0)
  {
    return;
  }

  v4 = *(a2 + 8);

  operator delete(v4);
}

void mipc::Error::~Error(mipc::Error *this)
{
  v1 = *(this + 5);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(*(this + 1));
    return;
  }

  v2 = this;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  this = v2;
  if (v2[31] < 0)
  {
    goto LABEL_6;
  }
}

uint64_t std::function<void ()(abb::router::Message const&)>::~function(uint64_t a1)
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

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E11A40;
  v2 = a1[12];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[9];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[8];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  v1 = std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(a1);

  operator delete(v1);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x68uLL);
  v3 = v2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *v2 = &unk_2A1E11A40;
  *(v2 + 1) = v5;
  *(v2 + 2) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(v2 + 24) = *(a1 + 24);
  *(v2 + 40) = *(a1 + 40);
  v6 = *(a1 + 64);
  *(v2 + 7) = *(a1 + 56);
  *(v2 + 8) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 72);
  *(v3 + 9) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    v8 = *(v3 + 9);
    if (v8)
    {
      dispatch_group_enter(v8);
    }
  }

  *(v3 + 5) = *(a1 + 80);
  v9 = *(a1 + 96);
  *(v3 + 12) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  return v3;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2A1E11A40;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v6;
  v7 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 72);
  *(a2 + 72) = v8;
  if (v8)
  {
    dispatch_retain(v8);
    v9 = *(a2 + 72);
    if (v9)
    {
      dispatch_group_enter(v9);
    }
  }

  *(a2 + 80) = *(a1 + 80);
  v10 = *(a1 + 96);
  *(a2 + 96) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy[abi:ne200100](a1 + 1);

  operator delete(a1);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v51 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v4;
  v38 = v4;
  *v36 = v4;
  *&v36[16] = v4;
  v35[0] = v4;
  v35[1] = v4;
  if (!abb::router::Message::isError(this))
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266F20](v35, v8, *(__p[0] + 1) - *__p[0]);
    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_14;
  }

  abb::router::Message::getError(__p, this);
  if ((v42 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *&v40.__r_.__value_.__l.__data_ = *__p;
  v6 = mipc::toErrorCode(LODWORD(__p[0]), v5);
  std::error_code::message(&buf[8], &v40);
  *&v47[2] = 0;
  *v48 = 0;
  *buf = v6;
  MEMORY[0x29C266F10](v35, buf, 1);
  v7 = *v48;
  if (!*v48 || atomic_fetch_add((*v48 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((v47[1] & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if ((v47[1] & 0x80000000) != 0)
  {
LABEL_6:
    operator delete(*&buf[8]);
  }

LABEL_14:
  v11 = *(a1 + 96);
  if (v11)
  {
    v12 = *(a1 + 80);
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      v18 = *(a1 + 88);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = v13;
        (v13->__on_zero_shared)(v13, v14, v15, v16, v17);
        std::__shared_weak_count::__release_weak(v19);
        if (!v18)
        {
          goto LABEL_23;
        }
      }

      v20 = mipc::operator==();
      if ((v20 & 1) == 0)
      {
        **(a1 + 56) = 0;
      }

      v21 = *(v12 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        AppID = awd::AppContext::getAppID(*(a1 + 8));
        v24 = *(a1 + 24);
        v25 = awd::asString();
        v26 = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 40);
        v29 = *(a1 + 48);
        if (v20)
        {
          *buf = 136316674;
          *&buf[4] = "success";
          *&buf[12] = 1024;
          *&buf[14] = AppID;
          v44 = 2080;
          v45 = v25;
          v46 = 2048;
          *v47 = v27;
          *&v47[8] = 1024;
          *v48 = v28;
          *&v48[4] = 2048;
          *&v48[6] = v29;
          v49 = 2080;
          v50 = &unk_296EC917B;
          _os_log_debug_impl(&dword_296E3E000, v21, OS_LOG_TYPE_DEBUG, "#D Send add configuration (single segment) confirmation %s (appId: %d, type: %s, total segments: %zu, current segment: %u, segment length: %zu)%s", buf, 0x40u);
          goto LABEL_23;
        }

        if ((v36[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v39, *&v36[8], *&v36[16]);
        }

        else
        {
          v39 = *&v36[8];
        }

        v30 = std::string::insert(&v39, 0, ", (", 3uLL);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&v40, ")", 1uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v42 = v32->__r_.__value_.__r.__words[2];
        *__p = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = __p;
        if (v42 < 0)
        {
          v34 = __p[0];
        }

        *buf = 136316674;
        *&buf[4] = "error";
        *&buf[12] = 1024;
        *&buf[14] = AppID;
        v44 = 2080;
        v45 = v26;
        v46 = 2048;
        *v47 = v27;
        *&v47[8] = 1024;
        *v48 = v28;
        *&v48[4] = 2048;
        *&v48[6] = v29;
        v49 = 2080;
        v50 = v34;
        _os_log_debug_impl(&dword_296E3E000, v21, OS_LOG_TYPE_DEBUG, "#D Send add configuration (single segment) confirmation %s (appId: %d, type: %s, total segments: %zu, current segment: %u, segment length: %zu)%s", buf, 0x40u);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
          if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_33:
            if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_23;
            }

LABEL_37:
            operator delete(v39.__r_.__value_.__l.__data_);
            goto LABEL_23;
          }
        }

        else if ((SHIBYTE(v40.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

        operator delete(v40.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }
    }
  }

LABEL_23:
  mipc::dale_awd::Add_Config_Cnf::~Add_Config_Cnf(v35);
  v22 = *MEMORY[0x29EDCA608];
}

void sub_296E55288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      mipc::dale_awd::Add_Config_Cnf::~Add_Config_Cnf(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  mipc::dale_awd::Add_Config_Cnf::~Add_Config_Cnf(&a9);
  _Unwind_Resume(a1);
}

void sub_296E552F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a29);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v29 - 160);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS3_10AppContextEEENS3_11PayloadTypeERKNS5_6vectorIhNS5_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd14Add_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS3_10AppContextEEENS3_11PayloadTypeERKNS5_6vectorIhNS5_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd14Add_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS3_10AppContextEEENS3_11PayloadTypeERKNS5_6vectorIhNS5_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd14Add_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZNK3awd17MipcCommandDriver20sendAddConfigurationENSt3__110shared_ptrINS3_10AppContextEEENS3_11PayloadTypeERKNS5_6vectorIhNS5_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEEENK3$_0clEvEUlRKN4mipc8dale_awd14Add_Config_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__function::__alloc_func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Add_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy[abi:ne200100](void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[8];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[7];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1[1];
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = a1[1];
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

void *std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x29EDCA608];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x29EDCA608];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    memset(v8, 170, 24);
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_296E5578C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  v3 = v2[4];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = v2[2];
    if (!v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  v4 = v2[2];
  if (v4)
  {
LABEL_5:
    _Block_release(v4);
  }

LABEL_6:
  v5 = v2[1];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(v2);
  return a1;
}

void **dispatch::detail::group_notify<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v11 = a1;
  v2 = *(a1[5] + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1[3];
    AppID = awd::AppContext::getAppID(*a1);
    v5 = "error";
    if (v3)
    {
      v5 = "success";
    }

    *buf = 136315394;
    *&buf[4] = v5;
    v13 = 1024;
    v14 = AppID;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Add configuration %s (appId: %d)", buf, 0x12u);
  }

  v6 = *a1;
  v7 = a1[2];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  *buf = v7;
  v8 = *a1[3];
  awd::AppContext::operator()();
  if (*buf)
  {
    _Block_release(*buf);
  }

  result = std::unique_ptr<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendAddConfiguration(std::shared_ptr<awd::AppContext>,awd::PayloadType,std::vector<unsigned char> const&,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v11);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(awd::AppContext ***a1)
{
  v60 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v34 = *a1;
  v2 = (*a1)[3];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39[4] = v3;
  *__p = v3;
  v39[2] = v3;
  v39[3] = v3;
  v39[0] = v3;
  v39[1] = v3;
  mipc::dale_awd::Delete_Config_Req::Delete_Config_Req();
  AppID = awd::AppContext::getAppID(*v1);
  v5 = operator new(4uLL);
  *v5 = AppID;
  v6 = __p[1];
  __p[1] = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = operator new(4uLL);
  *v7 = 0;
  v8 = v41;
  v41 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(v2 + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = awd::AppContext::getAppID(*v1);
    *buf = 67109120;
    v56 = v10;
    _os_log_impl(&dword_296E3E000, v9, OS_LOG_TYPE_DEFAULT, "#I Requesting to clear configuration (appId: %d)", buf, 8u);
  }

  v54 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v11;
  v53 = v11;
  v51 = v11;
  mipc::dale_awd::Delete_Config_Req::serialize(&v51, v39);
  if (v54)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v50 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = v12;
  v49 = v12;
  v46 = v12;
  v47 = v12;
  v44 = v12;
  v45 = v12;
  v42 = v12;
  v43 = v12;
  MEMORY[0x29C266720](&v42, &v51);
  abb::router::SendProxy::SendProxy(buf, (v2 + 88), &v42);
  MEMORY[0x29C266730](&v42);
  if (v54 != -1)
  {
    *&v42 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v42 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v42 + v54))(&v35, &v51);
  }

  v13 = v1[1];
  *&v35 = *v1;
  *(&v35 + 1) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = v1[2];
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  aBlock[0] = v14;
  v15 = *(v2 + 2);
  if (!v15 || (v16 = *(v2 + 1), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  aBlock[1] = v16;
  v37 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v18 = v17;
    (v17->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v18);
  }

  v19 = v35;
  v20 = *aBlock;
  v35 = 0uLL;
  v38 = v2;
  aBlock[0] = 0;
  v21 = v37;
  aBlock[1] = 0;
  v37 = 0;
  v51 = 0uLL;
  v31 = v20;
  v32 = v19;
  v42 = v19;
  v43 = v20;
  *&v53 = 0;
  *(&v53 + 1) = v2;
  v52 = 0uLL;
  *&v44 = v21;
  *(&v44 + 1) = v2;
  v22 = operator new(0x38uLL);
  *v22 = &unk_2A1E11AD0;
  *(v22 + 24) = v31;
  *(v22 + 8) = v32;
  *(v22 + 5) = v21;
  *(v22 + 6) = v2;
  v59 = v22;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v58, v57);
  if (v59 == v58)
  {
    (*(*v59 + 32))(v59);
    v23 = v37;
    if (v37)
    {
LABEL_22:
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  else
  {
    if (v59)
    {
      (*(*v59 + 40))(v59);
    }

    v23 = v37;
    if (v37)
    {
      goto LABEL_22;
    }
  }

  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  v24 = *(&v35 + 1);
  if (*(&v35 + 1) && !atomic_fetch_add((*(&v35 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  MEMORY[0x29C266750](buf);
  mipc::dale_awd::Delete_Config_Req::~Delete_Config_Req(v39);
  if (v34)
  {
    v25 = v34[2];
    if (v25)
    {
      _Block_release(v25);
    }

    v26 = v34[1];
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    operator delete(v34);
  }

  v27 = a1;
  if (a1)
  {
    v28 = a1[2];
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
      v27 = a1;
    }

    operator delete(v27);
  }

  v29 = *MEMORY[0x29EDCA608];
}

void sub_296E55EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0,std::default_delete<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void *awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}::~Delete_Config_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void *abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E11AD0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E11AD0;
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = __p;
  }

  else
  {
    v5 = __p;
  }

  operator delete(v5);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1)
{
  v2 = operator new(0x38uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E11AD0;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[3];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v7 = a1[4];
  v6 = a1[5];
  v2[3] = v5;
  v2[4] = v7;
  v2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v2[6] = a1[6];
  return v2;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E11AD0;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[3];
  if (result)
  {
    result = _Block_copy(result);
  }

  v8 = a1[4];
  v7 = a1[5];
  a2[3] = result;
  a2[4] = v8;
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  a2[6] = a1[6];
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = __p[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = __p;
  }

  else
  {
    v5 = __p;
  }

  operator delete(v5);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1}>(awd::MipcCommandDriver::sendClearConfiguration(std::shared_ptr<awd::AppContext>,dispatch::block<void({block_pointer})(BOOL)>)::$_0::operator() const(void)::{lambda(mipc::dale_awd::Delete_Config_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v58 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v4;
  v45 = v4;
  *v43 = v4;
  *&v43[16] = v4;
  v42[0] = v4;
  v42[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((v50 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v47 = *__p;
    v6 = mipc::toErrorCode(LODWORD(__p[0]), v5);
    std::error_code::message(&buf[8], &v47);
    v56 = 0;
    v57 = 0;
    *buf = v6;
    MEMORY[0x29C266F60](v42, buf, 1);
    v7 = v57;
    if (!v57 || atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (v55 < 0)
    {
LABEL_6:
      operator delete(*&buf[8]);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266F70](v42, v8, *(__p[0] + 1) - *__p[0]);
    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  *buf = 0;
  *&buf[8] = 0;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v11)
  {
    v13 = std::__shared_weak_count::lock(v11);
    v14 = v13;
    *&buf[8] = v13;
    if (v13)
    {
      *buf = *(a1 + 32);
      if (*buf)
      {
        if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_28;
        }

        v15 = 0;
LABEL_27:
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v15)
        {
          goto LABEL_69;
        }

LABEL_28:
        v18 = mipc::operator==();
        v19 = *(v12 + 40);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_65;
        }

        AppID = awd::AppContext::getAppID(*(a1 + 8));
        v21 = AppID;
        if (v18)
        {
          *buf = 136315650;
          *&buf[4] = "success";
          *&buf[12] = 1024;
          *&buf[14] = AppID;
          v53 = 2080;
          v54 = &unk_296EC917B;
          _os_log_impl(&dword_296E3E000, v19, OS_LOG_TYPE_DEFAULT, "#I Clear configuration %s (appId: %d)%s", buf, 0x1Cu);
          v22 = *(a1 + 8);
          v23 = *(a1 + 24);
          if (!v23)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        if ((v43[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v46, *&v43[8], *&v43[16]);
        }

        else
        {
          v46 = *&v43[8];
        }

        v24 = std::string::insert(&v46, 0, ", (", 3uLL);
        v25 = *&v24->__r_.__value_.__l.__data_;
        v48 = v24->__r_.__value_.__r.__words[2];
        v47 = v25;
        v24->__r_.__value_.__l.__size_ = 0;
        v24->__r_.__value_.__r.__words[2] = 0;
        v24->__r_.__value_.__r.__words[0] = 0;
        cat = SHIBYTE(v48);
        if ((SHIBYTE(v48) & 0x8000000000000000) != 0)
        {
          cat = v47.__cat_;
          v29 = v48 & 0x7FFFFFFFFFFFFFFFLL;
          v28 = (v48 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v28 == v47.__cat_)
          {
            v30 = 0x7FFFFFFFFFFFFFF7;
            if (v29 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v27 = *&v47.__val_;
            if (v28 > 0x3FFFFFFFFFFFFFF2)
            {
              v33 = 0;
LABEL_50:
              v34 = operator new(v30);
              v35 = v34;
              if (v28)
              {
                memmove(v34, v27, v28);
              }

              v35[v28] = 41;
              if (!v33)
              {
                operator delete(v27);
              }

              v47.__cat_ = v29;
              v48 = v30 | 0x8000000000000000;
              *&v47.__val_ = v35;
              v36 = &v35[v29];
LABEL_60:
              *v36 = 0;
              v50 = v48;
              *__p = v47;
              v47.__cat_ = 0;
              v48 = 0;
              *&v47.__val_ = 0;
              v38 = __p;
              if (v50 < 0)
              {
                v38 = __p[0];
              }

              *buf = 136315650;
              *&buf[4] = "error";
              *&buf[12] = 1024;
              *&buf[14] = v21;
              v53 = 2080;
              v54 = v38;
              _os_log_impl(&dword_296E3E000, v19, OS_LOG_TYPE_DEFAULT, "#I Clear configuration %s (appId: %d)%s", buf, 0x1Cu);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__p[0]);
                if ((SHIBYTE(v48) & 0x80000000) == 0)
                {
LABEL_64:
                  if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_72;
                }
              }

              else if ((SHIBYTE(v48) & 0x80000000) == 0)
              {
                goto LABEL_64;
              }

              operator delete(*&v47.__val_);
              if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_65:
                v39 = *(a1 + 8);
                v23 = *(a1 + 24);
                if (!v23)
                {
                  goto LABEL_67;
                }

                goto LABEL_66;
              }

LABEL_72:
              operator delete(v46.__r_.__value_.__l.__data_);
              v41 = *(a1 + 8);
              v23 = *(a1 + 24);
              if (!v23)
              {
LABEL_67:
                *buf = v23;
                awd::AppContext::operator()();
                if (*buf)
                {
                  _Block_release(*buf);
                }

                goto LABEL_69;
              }

LABEL_66:
              v23 = _Block_copy(v23);
              goto LABEL_67;
            }

LABEL_41:
            v31 = 2 * v28;
            if (v29 > 2 * v28)
            {
              v31 = v29;
            }

            if ((v31 | 7) == 0x17)
            {
              v32 = 25;
            }

            else
            {
              v32 = (v31 | 7) + 1;
            }

            if (v31 >= 0x17)
            {
              v30 = v32;
            }

            else
            {
              v30 = 23;
            }

            v33 = v28 == 22;
            goto LABEL_50;
          }

          v27 = *&v47.__val_;
        }

        else
        {
          v27 = &v47;
          if (SHIBYTE(v48) == 22)
          {
            v28 = 22;
            v29 = 23;
            goto LABEL_41;
          }
        }

        *(&cat->__vftable + v27) = 41;
        v37 = (&cat->__vftable + 1);
        if (SHIBYTE(v48) < 0)
        {
          v47.__cat_ = v37;
        }

        else
        {
          HIBYTE(v48) = v37 & 0x7F;
        }

        v36 = v37 + v27;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = *(a1 + 8);
  v17 = *(a1 + 24);
  if (v17)
  {
    v17 = _Block_copy(v17);
  }

  v51 = v17;
  awd::AppContext::operator()();
  if (v51)
  {
    _Block_release(v51);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = 1;
    goto LABEL_27;
  }

LABEL_69:
  mipc::dale_awd::Delete_Config_Cnf::~Delete_Config_Cnf(v42);
  v40 = *MEMORY[0x29EDCA608];
}