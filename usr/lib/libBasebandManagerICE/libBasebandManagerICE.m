void Timestamp::Timestamp(Timestamp *this)
{
  v15 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v12 = 0uLL;
  if ((gettimeofday(&v12, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v10 = __error();
  v11 = strerror(*v10);
  *buf = 136315138;
  v14 = v11;
  _os_log_error_impl(&dword_297476000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v12;
  v9 = *MEMORY[0x29EDCA608];
}

void Timestamp::Timestamp(Timestamp *this, const Timestamp **a2)
{
  *(this + 1) = 0;
  v3 = this + 8;
  *(this + 2) = 0;
  *this = this + 8;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != (a2 + 1))
  {
    while (1)
    {
      v6 = *(v5 + 8);
      v8 = *this;
      v7 = *(this + 1);
      v9 = v3;
      if (*this != v3)
      {
        v10 = *(this + 1);
        v11 = v3;
        if (v7)
        {
          do
          {
            v9 = v10;
            v10 = *(v10 + 1);
          }

          while (v10);
        }

        else
        {
          do
          {
            v9 = *(v11 + 2);
            v12 = *v9 == v11;
            v11 = v9;
          }

          while (v12);
        }

        if (*(v9 + 8) >= v6)
        {
          break;
        }
      }

      if (v7)
      {
        v13 = v9;
      }

      else
      {
        v13 = v3;
      }

      if (v7)
      {
        v14 = v9 + 8;
      }

      else
      {
        v14 = v3;
      }

      if (!*v14)
      {
        goto LABEL_25;
      }

LABEL_28:
      v19 = *(v5 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v5 + 2);
          v12 = *v20 == v5;
          v5 = v20;
        }

        while (!v12);
      }

      v5 = v20;
      if (v20 == v4)
      {
        return;
      }
    }

    v14 = v3;
    v13 = v3;
    if (v7)
    {
      v15 = *(this + 1);
      while (1)
      {
        while (1)
        {
          v13 = v15;
          v16 = *(v15 + 32);
          if (v16 <= v6)
          {
            break;
          }

          v15 = *v13;
          v14 = v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        if (v16 >= v6)
        {
          goto LABEL_28;
        }

        v15 = *(v13 + 1);
        if (!v15)
        {
          v14 = v13 + 8;
          break;
        }
      }
    }

LABEL_25:
    v17 = operator new(0x38uLL);
    v18 = *(v5 + 2);
    v17[6] = *(v5 + 6);
    *(v17 + 2) = v18;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v13;
    *v14 = v17;
    if (*v8)
    {
      *this = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v17);
    ++*(this + 2);
    goto LABEL_28;
  }
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t **a1, __n128 *a2, int a3)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 32);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = *(v8 + 1);
      if (!v6)
      {
        v7 = v8 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *v8 = 0;
    *(v8 + 1) = 0;
    *(v8 + 2) = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 40) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v28 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v23 + 1) = 0xAAAAAAAA00000000;
  memset(&v24, 0, sizeof(v24));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v24))
  {
    v24.tm_isdst = -1;
    *&v23 = mktime(&v24);
    if (v23 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 136315138;
      v27 = v20;
      _os_log_error_impl(&dword_297476000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0uLL;
      if ((gettimeofday(&v23, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v27 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v23 = 0uLL;
  if (gettimeofday(&v23, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v21 = __error();
    v22 = strerror(*v21);
    *buf = 136315138;
    v27 = v22;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 32);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_297478D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v47 = *MEMORY[0x29EDCA608];
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v8;
  v40[8] = v8;
  v40[5] = v8;
  v40[6] = v8;
  v40[3] = v8;
  v40[4] = v8;
  v40[1] = v8;
  v40[2] = v8;
  v39 = v8;
  v40[0] = v8;
  *__p = v8;
  v38 = v8;
  v35 = v8;
  v36 = v8;
  v33 = v8;
  v34 = v8;
  v32 = v8;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v10;
  do
  {
    if (*(v9 + 32) >= a2)
    {
      v12 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 32) < a2));
  }

  while (v9);
  if (v12 != v10 && *(v12 + 32) <= a2)
  {
    v14 = *(v12 + 40);
    v13 = *(v12 + 48);
    if ((a3 & 0x11) != 0)
    {
LABEL_9:
      v30.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v31 = v14;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v30.tm_mon = v15;
      *&v30.tm_isdst = v15;
      *&v30.tm_sec = v15;
      localtime_r(&v31, &v30);
      v45 = 0u;
      v46 = 0u;
      *__s = 0u;
      v44 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v16 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v16 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v16, &v30);
      v17 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, __s, v17);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "-", 1);
        v18 = v33;
        v19 = &v33 + *(v33 - 24);
        if (*(v19 + 36) == -1)
        {
          std::ios_base::getloc((&v33 + *(v33 - 24)));
          v20 = std::locale::use_facet(&v42, MEMORY[0x29EDC93D0]);
          (v20->__vftable[2].~facet_0)(v20, 32);
          std::locale::~locale(&v42);
          v18 = v33;
        }

        *(v19 + 36) = 48;
        *(&v34 + *(v18 - 24) + 8) = 3;
        MEMORY[0x29C271B60](&v33, (v13 / 1000));
      }

      goto LABEL_22;
    }
  }

  else
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_9;
    }
  }

  MEMORY[0x29C271B80](&v33, v14);
  if ((a3 & 4) != 0)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_22;
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ".", 1);
    v13 = (v13 / 1000);
  }

  MEMORY[0x29C271B60](v21, v13);
LABEL_22:
  if ((BYTE8(v39) & 0x10) != 0)
  {
    v23 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v23 = *(&v36 + 1);
    }

    v24 = v36;
    v22 = v23 - v36;
    if ((v23 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((BYTE8(v39) & 8) == 0)
    {
      v22 = 0;
      a4[23] = 0;
      goto LABEL_36;
    }

    v24 = *(&v34 + 1);
    v22 = *(&v35 + 1) - *(&v34 + 1);
    if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_40:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v26 = operator new(v25);
    *(a4 + 1) = v22;
    *(a4 + 2) = v25 | 0x8000000000000000;
    *a4 = v26;
    a4 = v26;
    goto LABEL_35;
  }

  a4[23] = v22;
  if (v22)
  {
LABEL_35:
    memmove(a4, v24, v22);
  }

LABEL_36:
  a4[v22] = 0;
  *&v32 = *MEMORY[0x29EDC9528];
  v27 = *(MEMORY[0x29EDC9528] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v33 = v27;
  *(&v33 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v33 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  result = MEMORY[0x29C271DA0](v40);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2974792B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x29EDC9528]);
  MEMORY[0x29C271DA0](&a33);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 24);
  v8 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x29EDC9590] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x29EDC9568] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x29C271CA0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v5);
  return a1;
}

void sub_2974795E0(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C271DA0](v1);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v8, v1);
  return v5;
}

void sub_297479718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6B128, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C271B10](v14, a1);
  if (LOBYTE(v14[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x29EDC93D0]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C271B20](v14);
  return a1;
}

void sub_297479F8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C271B20](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x297479F6CLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      memset(__b, 170, sizeof(__b));
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        if ((v12 | 7) == 0x17)
        {
          v14 = 25;
        }

        else
        {
          v14 = (v12 | 7) + 1;
        }

        v13 = operator new(v14);
        __b[1] = v12;
        __b[2] = (v14 | 0x8000000000000000);
        __b[0] = v13;
      }

      else
      {
        HIBYTE(__b[2]) = v12;
        v13 = __b;
      }

      memset(v13, __c, v12);
      *(v13 + v12) = 0;
      if (SHIBYTE(__b[2]) >= 0)
      {
        v15 = __b;
      }

      else
      {
        v15 = __b[0];
      }

      v16 = (*(*v6 + 96))(v6, v15, v12);
      if (SHIBYTE(__b[2]) < 0)
      {
        v17 = v16;
        operator delete(__b[0]);
        if (v17 != v12)
        {
          return 0;
        }
      }

      else if (v16 != v12)
      {
        return 0;
      }
    }

    v18 = a4 - a3;
    if (v18 < 1 || (*(*v6 + 96))(v6, a3, v18) == v18)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_29747A1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *ABMGetRootVersionString@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29769A2A0;
  strcpy(result, "AppleBasebandServices_Manager-1397");
  return result;
}

void ABMServerFactory::ABMServerFactory(ABMServerFactory *this)
{
  Factory::Factory(this);
  *v1 = &unk_2A1E41928;
}

{
  Factory::Factory(this);
  *v1 = &unk_2A1E41928;
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

void sub_29747A550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, char a18)
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

uint64_t std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void _ZNSt3__115allocate_sharedB8ne200100I16ABMServerFactoryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x30uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E41988;
  Factory::Factory(&v2[1]);
  v2[1].__vftable = &unk_2A1E41928;
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

void sub_29747A7F4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ABMServerFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E41988;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t hasBasebandEntitlement(xpc_object_t *a1, int a2)
{
  v4 = MEMORY[0x29C272BA0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 == MEMORY[0x29EDCAA00])
  {
    remote_connection = xpc_dictionary_get_remote_connection(*a1);
    if (remote_connection)
    {
      v8 = remote_connection;
      xpc_retain(remote_connection);
    }

    else
    {
      v8 = xpc_null_create();
    }

    if (MEMORY[0x29C272BA0](v8) != MEMORY[0x29EDCA9F0])
    {
      v6 = 0;
LABEL_75:
      xpc_release(v8);
      return v6 & 1;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v39 = v9;
    v40 = v9;
    xpc_connection_get_audit_token();
    xdict = 0xAAAAAAAAAAAAAAAALL;
    v10 = xpc_copy_entitlement_for_token();
    v11 = v10;
    if (v10)
    {
      xdict = v10;
    }

    else
    {
      v11 = xpc_null_create();
      xdict = v11;
      if (!v11)
      {
        v12 = xpc_null_create();
        v11 = 0;
        goto LABEL_15;
      }
    }

    if (MEMORY[0x29C272BA0](v11) == v5)
    {
      xpc_retain(v11);
      goto LABEL_16;
    }

    v12 = xpc_null_create();
LABEL_15:
    xdict = v12;
LABEL_16:
    xpc_release(v11);
    v13 = xpc_null_create();
    if (MEMORY[0x29C272BA0](xdict) == v5)
    {
      __p = &xdict;
      v42 = kKeyEntitlementFineGrained;
      xpc::dict::object_proxy::operator xpc::array(&__p, object);
      v14 = object[0];
      object[0] = xpc_null_create();
      xpc_release(v13);
      xpc_release(object[0]);
      v13 = v14;
    }

    v15 = MEMORY[0x29C272BA0](v13);
    v16 = MEMORY[0x29EDCA9E0];
    if (v15 != MEMORY[0x29EDCA9E0])
    {
      v6 = 0;
LABEL_36:
      if ((v6 & 1) == 0 && (a2 & 1) == 0)
      {
        if (MEMORY[0x29C272BA0](xdict) == v5)
        {
          value = xpc_dictionary_get_value(xdict, kKeyEntitlementBasebanddAllow);
          v33 = value;
          __p = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            v33 = xpc_null_create();
            __p = v33;
          }

          if (MEMORY[0x29C272BA0](v33) == MEMORY[0x29EDCAA40])
          {
            v6 = 0;
          }

          else
          {
            v6 = xpc::dyn_cast_or_default(&__p, 0);
            v33 = __p;
          }

          xpc_release(v33);
        }

        else
        {
          v6 = 0;
        }
      }

      xpc_release(v13);
      xpc_release(xdict);
      goto LABEL_75;
    }

    if (v13)
    {
      xpc_retain(v13);
      v17 = v13;
    }

    else
    {
      v17 = xpc_null_create();
      if (!v17)
      {
        v17 = xpc_null_create();
        v18 = 0;
LABEL_24:
        xpc_release(v18);
        if (v13)
        {
          xpc_retain(v13);
          v19 = v13;
        }

        else
        {
          v19 = xpc_null_create();
        }

        if (MEMORY[0x29C272BA0](v13) == v16)
        {
          count = xpc_array_get_count(v13);
          if (v19)
          {
            goto LABEL_29;
          }
        }

        else
        {
          count = 0;
          if (v19)
          {
LABEL_29:
            xpc_retain(v19);
            v35 = v19;
            goto LABEL_32;
          }
        }

        v35 = xpc_null_create();
LABEL_32:
        xpc_release(v19);
        if (!count && v17 == v35)
        {
          v6 = 0;
LABEL_35:
          xpc_release(v35);
          xpc_release(v17);
          goto LABEL_36;
        }

        v6 = 0;
        v21 = 0;
        v22 = count - 1;
        while (1)
        {
          v37 = 0xAAAAAAAAAAAAAAAALL;
          v23 = xpc_array_get_value(v17, v21);
          v37 = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            v37 = xpc_null_create();
          }

          memset(object, 170, sizeof(object));
          __p = 0;
          v42 = 0;
          v43 = 0;
          xpc::dyn_cast_or_default();
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p);
            v24 = HIBYTE(object[2]);
            if (a2)
            {
LABEL_46:
              v25 = kBasebandXpcRestricted;
              v26 = strlen(kBasebandXpcRestricted);
              v27 = v26;
              if ((v24 & 0x80) != 0)
              {
                if (v26 != object[1])
                {
                  goto LABEL_58;
                }

                if (v26 == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                goto LABEL_57;
              }

              goto LABEL_52;
            }
          }

          else
          {
            v24 = HIBYTE(object[2]);
            if (a2)
            {
              goto LABEL_46;
            }
          }

          v25 = kBasebandXpc;
          v28 = strlen(kBasebandXpc);
          v27 = v28;
          if ((v24 & 0x80) != 0)
          {
            if (v28 != object[1])
            {
              goto LABEL_58;
            }

            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

LABEL_57:
            if (memcmp(object[0], v25, v27))
            {
              goto LABEL_58;
            }

            goto LABEL_65;
          }

LABEL_52:
          if (v27 != v24 || memcmp(object, v25, v27))
          {
LABEL_58:
            v29 = 1;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(object[0]);
            goto LABEL_60;
          }

LABEL_65:
          v29 = 0;
          v6 = 1;
          if ((v24 & 0x80) != 0)
          {
            goto LABEL_59;
          }

LABEL_60:
          xpc_release(v37);
          if (v29)
          {
            v30 = v21 + 1;
            if (v22 != v21++)
            {
              continue;
            }

            v21 = v30;
            if (v17 != v35)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }
    }

    xpc_retain(v17);
    v18 = v17;
    goto LABEL_24;
  }

  v6 = 0;
  return v6 & 1;
}

void sub_29747AD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  xpc_release(object);
  xpc_release(v28);
  xpc_release(a16);
  xpc_release(v27);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::array(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) != MEMORY[0x29EDCA9E0])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE6B130, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void sub_29747B4E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(BOOL,BOOL,char const*)>::~function(uint64_t a1)
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

uint64_t VoIPCallDelegate::create@<X0>(capabilities::abs *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  capabilities::abs::supportedSARFeatures(a1);
  result = capabilities::abs::operator&();
  if (result)
  {
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
    v7 = operator new(0x28uLL);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = &unk_2A1E41A48;
    result = std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(v7 + 3, a1, a2);
    *a3 = v7 + 24;
    a3[1] = v7;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_29747BB60(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ***VoIPCallDelegate::VoIPCallDelegate(void ***a1, dispatch_object_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v18 = v6;
    goto LABEL_8;
  }

  v18 = v17;
  (*(*v6 + 24))(v6, v17);
LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  v7 = operator new(8uLL);
  if (v5)
  {
    dispatch_retain(v5);
  }

  v8 = v18;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (v18 != v17)
  {
    v8 = (*(*v18 + 16))();
LABEL_13:
    v20 = v8;
    goto LABEL_15;
  }

  v20 = v19;
  (*(*v18 + 24))();
LABEL_15:
  *v7 = 0;
  v9 = [VoIPCallObserverImpl alloc];
  v10 = v20;
  if (!v20)
  {
LABEL_18:
    v22 = v10;
    goto LABEL_20;
  }

  v11 = v9;
  if (v20 != v19)
  {
    v10 = (*(*v20 + 16))();
    v9 = v11;
    goto LABEL_18;
  }

  v22 = v21;
  (*(*v20 + 24))();
  v9 = v11;
LABEL_20:
  v12 = [(VoIPCallObserverImpl *)v9 initWithCallback:v21 queue:v5];
  v13 = *v7;
  *v7 = v12;

  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  v21[0] = v7;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2A1E419F8;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = v7;
  *a1 = v7;
  a1[1] = v14;
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if (v5)
    {
LABEL_28:
      dispatch_release(v5);
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    if (v5)
    {
      goto LABEL_28;
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v5)
  {
LABEL_33:
    dispatch_release(v5);
  }

LABEL_34:
  v15 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29747BF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  operator delete(v20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v19);
  std::function<void ()(BOOL,BOOL,char const*)>::~function(&a10);
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "voip");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029769A399)
  {
    if (((v2 & 0x800000029769A399 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769A399))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769A399 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

id **std::unique_ptr<VoIPCallObserver>::~unique_ptr[abi:ne200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E41A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ***std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(void ***a1, NSObject **a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v11 = v6;
    goto LABEL_8;
  }

  v11 = v10;
  (*(*v6 + 24))(v6, v10);
LABEL_8:
  VoIPCallDelegate::VoIPCallDelegate(a1, &v9, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if (v5)
  {
LABEL_12:
    dispatch_release(v5);
  }

LABEL_13:
  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29747C3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void OBDManager::create(char *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, OBDManager **a5@<X8>)
{
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x80uLL);
  v11 = *a2;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = a3[1];
  v27 = *a3;
  v28 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a4;
  v14 = a4[1];
  v26[0] = v13;
  v26[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OBDManager::OBDManager(v10, a1, &object, &v27, v26);
  v30 = v10;
  *buf = v10;
  v15 = operator new(0x20uLL);
  v15[1] = 0;
  v16 = v15 + 1;
  *v15 = &unk_2A1E41B28;
  v15[2] = 0;
  v15[3] = v10;
  v31 = v15;
  *buf = 0;
  v17 = *(v10 + 2);
  if (!v17)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v15;
    if (atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v17->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v15 + 2, 1uLL, memory_order_relaxed);
    *(v10 + 1) = v10;
    *(v10 + 2) = v15;
    v18 = v15;
    std::__shared_weak_count::__release_weak(v17);
    v15 = v18;
    if (!atomic_fetch_add(v16, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v19 = v15;
      (*(*v15 + 16))();
      std::__shared_weak_count::__release_weak(v19);
    }
  }

LABEL_13:
  if (*buf)
  {
    OBDManager::~OBDManager(*buf);
    operator delete(v20);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v21 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v22 = v30;
  if (v30 && OBDManager::init(v30))
  {
    v23 = v31;
    *a5 = v22;
    a5[1] = v23;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18CB080 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v24 = qword_2A18CB080;
    if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

LABEL_34:
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v24, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager!", buf, 2u);
    *a5 = 0;
    a5[1] = 0;
    v25 = v31;
    if (!v31)
    {
      return;
    }

    goto LABEL_30;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
  v24 = qword_2A18CB080;
  if (os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_34;
  }

LABEL_29:
  *a5 = 0;
  a5[1] = 0;
  v25 = v31;
  if (!v31)
  {
    return;
  }

LABEL_30:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }
}

void sub_29747C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29747C790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::unique_ptr<OBDManager>::~unique_ptr[abi:ne200100](va2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

BOOL OBDManager::init(OBDManager *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v9 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return v2 != 0;
    }

    *buf = 0;
    v10 = "Audio Manager is null pointer!";
LABEL_30:
    _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    return v2 != 0;
  }

  v3 = *(this + 8);
  if (!v3)
  {
    v9 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      return v2 != 0;
    }

    *buf = 0;
    v10 = "On-Body handler is not created";
    goto LABEL_30;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v3 = *(this + 8);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN10OBDManager4initEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e11_v16__0i8i12l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = _Block_copy(aBlock);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_retain(v7);
  }

  v15 = v6;
  v16 = v7;
  v8 = v3[5];
  if (v8 >= v3[6])
  {
    v12 = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(v3 + 4, &v15);
    v7 = v16;
    v3[5] = v12;
    if (!v7)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v6)
  {
    *v8 = _Block_copy(v6);
    v8[1] = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  *v8 = 0;
  v8[1] = v7;
  if (v7)
  {
LABEL_12:
    dispatch_retain(v7);
  }

LABEL_13:
  v3[5] = (v8 + 2);
  if (v7)
  {
LABEL_14:
    dispatch_release(v7);
  }

LABEL_15:
  if (v15)
  {
    _Block_release(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return v2 != 0;
}

void sub_29747C9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    if (!v17)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

uint64_t OBDManager::OBDManager(uint64_t a1, char *__s, NSObject **a3, void *a4, void *a5)
{
  v7 = __s;
  v9 = 0x7FFFFFFFFFFFFFF7;
  v10 = strlen(__s);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v10 | 7) + 1;
    }

    p_dst = operator new(v19);
    *(&__dst + 1) = v11;
    v60 = v19 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v60) = v10;
    p_dst = &__dst;
    if (!v10)
    {
      LOBYTE(__dst) = 0;
      v13 = SHIBYTE(v60);
      if ((SHIBYTE(v60) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, v7, v11);
  *(p_dst + v11) = 0;
  v13 = SHIBYTE(v60);
  if ((SHIBYTE(v60) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v14 = &__dst;
    if (v13 == 22)
    {
      v56 = a5;
      v15 = v7;
      v16 = a4;
      v17 = 22;
      v18 = 23;
LABEL_15:
      v20 = 2 * v17;
      if (v18 > 2 * v17)
      {
        v20 = v18;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v17 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v14 + v13) = 46;
    v27 = v13 + 1;
    if (SHIBYTE(v60) < 0)
    {
      *(&__dst + 1) = v27;
    }

    else
    {
      HIBYTE(v60) = v27 & 0x7F;
    }

    v26 = v14 + v27;
    goto LABEL_34;
  }

LABEL_12:
  v13 = *(&__dst + 1);
  v18 = v60 & 0x7FFFFFFFFFFFFFFFLL;
  v17 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 != *(&__dst + 1))
  {
    v14 = __dst;
    goto LABEL_30;
  }

  v56 = a5;
  if (v18 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v7;
  v14 = __dst;
  v16 = a4;
  if (v17 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v24 = operator new(v22);
  v25 = v24;
  if (v17)
  {
    memmove(v24, v14, v17);
  }

  v25[v17] = 46;
  if (!v23)
  {
    operator delete(v14);
  }

  *(&__dst + 1) = v18;
  v60 = v22 | 0x8000000000000000;
  *&__dst = v25;
  v26 = &v25[v18];
  a4 = v16;
  v7 = v15;
  a5 = v56;
LABEL_34:
  *v26 = 0;
  v62 = v60;
  *v61 = __dst;
  v60 = 0;
  __dst = 0uLL;
  v28 = SHIBYTE(v62);
  if ((SHIBYTE(v62) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v62) - 13) < 0xA)
    {
      v29 = (SHIBYTE(v62) + 10);
      v30 = v61;
      v31 = 22;
LABEL_40:
      v32 = 2 * v31;
      if (v29 > 2 * v31)
      {
        v32 = v29;
      }

      if ((v32 | 7) == 0x17)
      {
        v33 = 25;
      }

      else
      {
        v33 = (v32 | 7) + 1;
      }

      if (v32 >= 0x17)
      {
        v9 = v33;
      }

      else
      {
        v9 = 23;
      }

      v34 = v31 == 22;
      goto LABEL_49;
    }

    v39 = v61;
LABEL_56:
    v40 = v39 + v28;
    *v40 = *"OBDManager";
    *(v40 + 4) = 29285;
    v41 = v28 + 10;
    if (SHIBYTE(v62) < 0)
    {
      v61[1] = (v28 + 10);
    }

    else
    {
      HIBYTE(v62) = v41 & 0x7F;
    }

    v38 = v39 + v41;
    goto LABEL_60;
  }

  v28 = v61[1];
  v31 = (v62 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v31 - v61[1] >= 0xA)
  {
    v39 = v61[0];
    goto LABEL_56;
  }

  v29 = v61[1] + 10;
  if ((0x7FFFFFFFFFFFFFF7 - (v62 & 0x7FFFFFFFFFFFFFFFLL)) < v61[1] - v31 + 10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v30 = v61[0];
  if (v31 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v34 = 0;
LABEL_49:
  v35 = operator new(v9);
  v36 = v35;
  if (v28)
  {
    memmove(v35, v30, v28);
  }

  v37 = v36 + v28;
  *v37 = *"OBDManager";
  *(v37 + 4) = 29285;
  if (!v34)
  {
    operator delete(v30);
  }

  v61[1] = v29;
  v62 = v9 | 0x8000000000000000;
  v61[0] = v36;
  v38 = &v29[v36];
LABEL_60:
  *v38 = 0;
  v64 = v62;
  *__p = *v61;
  v61[1] = 0;
  v62 = 0;
  v61[0] = 0;
  if (v64 >= 0)
  {
    v42 = __p;
  }

  else
  {
    v42 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony.abm", v42);
  if (SHIBYTE(v64) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v60) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_87;
    }
  }

  else if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v61[0]);
  if ((SHIBYTE(v60) & 0x80000000) == 0)
  {
LABEL_66:
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v44 = *a3;
    *(a1 + 24) = *a3;
    if (!v44)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_87:
  operator delete(__dst);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v44 = *a3;
  *(a1 + 24) = *a3;
  if (v44)
  {
LABEL_67:
    dispatch_retain(v44);
  }

LABEL_68:
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = *a5;
  *(a1 + 32) = 257;
  v45 = a5[1];
  *(a1 + 72) = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

  v46 = *a4;
  *(a1 + 104) = *a4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  v47 = a4[1];
  *(a1 + 112) = v47;
  if (v47)
  {
    atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
    v46 = *(a1 + 104);
  }

  if (!v46)
  {
    AudioManager::create(v7, __p);
    v53 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v54 = *(a1 + 112);
    *(a1 + 104) = v53;
    if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v55 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v55->__on_zero_shared)(v55);
      std::__shared_weak_count::__release_weak(v55);
    }
  }

  if (!*(a1 + 64))
  {
    v48 = *(a1 + 24);
    object = v48;
    if (v48)
    {
      dispatch_retain(v48);
    }

    CMOnBodyDelegate::create(&object, v43, __p);
    v49 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v50 = *(a1 + 72);
    *(a1 + 64) = v49;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    v51 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v44 = object;
    if (object)
    {
      dispatch_release(object);
    }
  }

  *(a1 + 120) = capabilities::txpower::supportedControlInput(v44);
  return a1;
}

void sub_29747D014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (object)
  {
    dispatch_release(object);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24);
    v28 = v23[12];
    if (!v28)
    {
LABEL_3:
      v29 = v23[10];
      if (!v29)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24);
    v28 = v23[12];
    if (!v28)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v28);
  v29 = v23[10];
  if (!v29)
  {
LABEL_4:
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v26);
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](v25);
    v30 = v23[3];
    if (!v30)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  dispatch_release(v29);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v26);
  std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](v25);
  v30 = v23[3];
  if (!v30)
  {
LABEL_5:
    v31 = v23[2];
    if (!v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  dispatch_release(v30);
  v31 = v23[2];
  if (!v31)
  {
LABEL_7:
    MEMORY[0x29C270D60](v23);
    _Unwind_Resume(a1);
  }

LABEL_6:
  std::__shared_weak_count::__release_weak(v31);
  goto LABEL_7;
}

void sub_29747D108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if ((SHIBYTE(a14) & 0x80000000) == 0)
      {
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x29747D09CLL);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x29747D094);
}

void OBDManager::~OBDManager(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  if (*(this + 8))
  {
    v5 = *(this + 10);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 10);
      *(this + 10) = 0;
      if (v6)
      {
        dispatch_release(v6);
        v7 = *(this + 10);
        *(this + 10) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }
      }
    }

    CMOnBodyDelegate::stopMotionDetection(*(this + 8));
  }

  v8 = *(this + 5);
  for (i = *(this + 6); i != v8; i -= 16)
  {
    v10 = *(i - 8);
    if (v10)
    {
      dispatch_release(v10);
    }

    v12 = *(i - 16);
    v11 = v12;
    if (v12)
    {
      _Block_release(v11);
    }
  }

  *(this + 6) = v8;
  v13 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 14);
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (v14)
  {
    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(this + 14);
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v16 = *(this + 12);
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *(this + 10);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 9);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = *(this + 5);
    if (!v19)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v19 = *(this + 5);
    if (!v19)
    {
      goto LABEL_42;
    }
  }

  v20 = *(this + 6);
  v21 = v19;
  if (v20 != v19)
  {
    do
    {
      v22 = *(v20 - 1);
      if (v22)
      {
        dispatch_release(v22);
      }

      v24 = *(v20 - 2);
      v20 -= 16;
      v23 = v24;
      if (v24)
      {
        _Block_release(v23);
      }
    }

    while (v20 != v19);
    v21 = *(this + 5);
  }

  *(this + 6) = v19;
  operator delete(v21);
LABEL_42:
  v25 = *(this + 3);
  if (v25)
  {
    dispatch_release(v25);
  }

  v26 = *(this + 2);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  JUMPOUT(0x29C270D60);
}

void OBDManager::stopOBDTimer(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void OBDManager::stopCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void ___ZN10OBDManager4initEv_block_invoke(void *a1, unsigned int a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = a1[5];
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_29EE6B190[a2];
    }

    v13 = "Confidence Level Unknown";
    if (a3 == 1)
    {
      v13 = "Confidence Level High";
    }

    if (!a3)
    {
      v13 = "Confidence Level Low";
    }

    v18 = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I On Body Callback: OnBody: %s, confidence: %s", &v18, 0x16u);
  }

  *(v7 + 88) = a2;
  if (*(v7 + 96))
  {
    OBDManager::startCoreMotionCallbackWatchdog(v7);
    v14 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "OBD has not started yet!", &v18, 2u);
    v17 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_18:
    v16 = *MEMORY[0x29EDCA608];
  }
}

void OBDManager::startCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
  v6 = *(this + 10);
  *(this + 10) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 10);
  }

  v7 = dispatch_time(0, 5120000000);
  dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 10);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke;
  handler[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  handler[4] = this;
  handler[5] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(*(this + 10));
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

char *OBDManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[6];
  if (v4 >= a1[7])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(a1 + 5, a2);
    a1[6] = result;
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
    a1[6] = (v4 + 2);
  }

  return result;
}

void OBDManager::start(OBDManager *this, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 12))
  {
    v4 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I WARNING - OBD Manager has started already!", &v7, 2u);
    }
  }

  if (*(this + 8))
  {
    OBDManager::startCoreMotionCallbackWatchdog(this);
    CMOnBodyDelegate::startMotionDetection(*(this + 8));
  }

  OBDManager::startOBDTimer(this, a2);
  v5 = *this;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Core Motion OnBody Detection is starting with %lld msec", &v7, 0xCu);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void OBDManager::startOBDTimer(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v5)
    {
      dispatch_release(v5);
      v6 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v6)
      {
        dispatch_release(v6);
      }
    }
  }

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  v8 = *(a1 + 96);
  *(a1 + 96) = v7;
  if (v8)
  {
    dispatch_release(v8);
    v7 = *(a1 + 96);
  }

  v9 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke;
  v13[3] = &__block_descriptor_64_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a2;
  dispatch_source_set_event_handler(v12, v13);
  dispatch_activate(*(a1 + 96));
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void OBDManager::stop(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  if (*(this + 8))
  {
    v5 = *(this + 10);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 10);
      *(this + 10) = 0;
      if (v6)
      {
        dispatch_release(v6);
        v7 = *(this + 10);
        *(this + 10) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }
      }
    }

    v8 = *(this + 8);

    CMOnBodyDelegate::stopMotionDetection(v8);
  }
}

void ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = 5120;
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I WARNING - Motion did not report the callback in %llu milli-seconds", &v9, 0xCu);
        }
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v5)
        {
          return;
        }
      }

      else
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
        if (!v5)
        {
          return;
        }
      }

      v17 = a1;
      if (config::hw::iPad(v4))
      {
        OBDManager::updateOBDState_iPad(v3);
        v7 = *(v3 + 40);
        v8 = *(v3 + 48);
        if (v7 != v8)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

      OBDManager::updateOBDState_iPhone(v3);
      v7 = *(v3 + 40);
      v8 = *(v3 + 48);
      if (v7 == v8)
      {
LABEL_32:
        v15 = *(v3 + 96);
        v16 = dispatch_time(0, 1000000 * v17[7]);
        dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
        return;
      }

LABEL_13:
      while (*v7)
      {
        v9 = _Block_copy(*v7);
        v10 = *(v7 + 8);
        if (v10)
        {
          goto LABEL_15;
        }

LABEL_16:
        v11 = *(v3 + 32);
        v12 = *(v3 + 33);
        if (v9)
        {
          v13 = _Block_copy(v9);
        }

        else
        {
          v13 = 0;
        }

        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3321888768;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEclIJS2_S3_EEEvDpT__block_invoke;
        block[3] = &__block_descriptor_42_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE_e5_v8__0l;
        if (v13)
        {
          v14 = _Block_copy(v13);
        }

        else
        {
          v14 = 0;
        }

        aBlock = v14;
        v20 = v11;
        v21 = v12;
        dispatch_async(v10, block);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v10)
        {
          dispatch_release(v10);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        v7 += 16;
        if (v7 == v8)
        {
          goto LABEL_32;
        }
      }

      v9 = 0;
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      dispatch_retain(v10);
      goto LABEL_16;
    }
  }
}

void OBDManager::updateOBDState(OBDManager *this)
{
  if (config::hw::iPad(this))
  {

    OBDManager::updateOBDState_iPad(this);
  }

  else
  {

    OBDManager::updateOBDState_iPhone(this);
  }
}

void OBDManager::setMotionParameter(uint64_t a1, ctu **a2)
{
  if (*(a1 + 64))
  {
    ctu::xpc_to_cf(&cf, *a2, a2);
    v3 = cf;
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
    {
      v7 = v3;
      CFRetain(v3);
      v5 = cf;
      if (!cf)
      {
LABEL_8:
        CMOnBodyDelegate::setThresholds(*(a1 + 64), v3);
        if (v3)
        {
          CFRelease(v3);
        }

        return;
      }
    }

    else
    {
      v3 = 0;
      v7 = 0;
      v5 = cf;
      if (!cf)
      {
        goto LABEL_8;
      }
    }

    CFRelease(v5);
    goto LABEL_8;
  }
}

void sub_29747DFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void OBDManager::updateOBDState_iPad(OBDManager *this)
{
  v22 = *MEMORY[0x29EDCA608];
  *(this + 16) = 257;
  v2 = *(this + 30);
  if (capabilities::txpower::operator&() && !*(this + 22))
  {
    *(this + 16) = 0;
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  v4 = *(this + 22);
  if (v4 > 2)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_29EE6B190[v4];
  }

  v6 = *(this + 32);
  v7 = sar::toString();
  v8 = *(this + 33);
  v9 = sar::toString();
  v10 = *(this + 30);
  v11 = capabilities::txpower::operator&();
  v12 = "YES";
  v14 = 136315906;
  v15 = v5;
  v16 = 2080;
  if (!v11)
  {
    v12 = "NO";
  }

  v17 = v7;
  v18 = 2080;
  v19 = v9;
  v20 = 2080;
  v21 = v12;
  _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v14, 0x2Au);
LABEL_10:
  v13 = *MEMORY[0x29EDCA608];
}

void OBDManager::updateOBDState_iPhone(OBDManager *this)
{
  v1 = this;
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 13) + 56);
  *(this + 32) = 1;
  if (!v2)
  {
LABEL_7:
    if (!capabilities::txpower::supportsMotionAlways(this) || (v5 = *(v1 + 30), !capabilities::txpower::operator&()) || *(v1 + 22))
    {
      *(v1 + 33) = 1;
      v6 = v1 + 33;
      if (*(v1 + 22))
      {
        v3 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_15:
      *v6 = 0;
      v3 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_12:
      v7 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_14:
    *(v1 + 32) = 0;
    v6 = v1 + 33;
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    v4 = *(this + 30);
    this = capabilities::txpower::operator&();
    if (this && !*(v1 + 22))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  *(this + 16) = 256;
  v3 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

LABEL_16:
  v8 = *(*(v1 + 13) + 56);
  if (v8 > 3)
  {
    v9 = "Unknown Audio Output";
    v10 = *(v1 + 22);
    if (v10 > 2)
    {
      goto LABEL_18;
    }

LABEL_20:
    v11 = off_29EE6B190[v10];
    goto LABEL_21;
  }

  v9 = off_29EE6B170[v8];
  v10 = *(v1 + 22);
  if (v10 <= 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v11 = "Unknown";
LABEL_21:
  v12 = *(v1 + 32);
  v13 = sar::toString();
  v14 = *(v1 + 33);
  v15 = sar::toString();
  v16 = *(v1 + 30);
  v17 = capabilities::txpower::operator&();
  v20 = 136316162;
  v18 = "YES";
  v21 = v9;
  v22 = 2080;
  if (!v17)
  {
    v18 = "NO";
  }

  v23 = v11;
  v24 = 2080;
  v25 = v13;
  v26 = 2080;
  v27 = v15;
  v28 = 2080;
  v29 = v18;
  _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Audio Output: %s, Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v20, 0x34u);
  v19 = *MEMORY[0x29EDCA608];
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void **std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](void **a1)
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

uint64_t dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(uint64_t a1)
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

char *std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(unint64_t *a1, uint64_t a2)
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

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    OBDManager::~OBDManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029769A4D3)
  {
    if (((v2 & 0x800000029769A4D3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769A4D3))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769A4D3 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

OBDManager **std::unique_ptr<OBDManager>::~unique_ptr[abi:ne200100](OBDManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    OBDManager::~OBDManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t data::TransportService::ThrottlingConfig::asString@<X0>(data::TransportService::ThrottlingConfig *this@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v4;
  v23[8] = v4;
  v23[5] = v4;
  v23[6] = v4;
  v23[3] = v4;
  v23[4] = v4;
  v23[1] = v4;
  v23[2] = v4;
  v22 = v4;
  v23[0] = v4;
  *__p = v4;
  v21 = v4;
  v18 = v4;
  *__src = v4;
  v16 = v4;
  v17 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "enabled ", 8);
  v6 = "???";
  if (!*this)
  {
    v6 = "Disabled";
  }

  if (*this == 1)
  {
    v7 = "Enabled";
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  if (*this == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", timeout ", 10);
    MEMORY[0x29C271B70](v9, *(this + 1));
  }

  if ((BYTE8(v22) & 0x10) != 0)
  {
    v11 = v22;
    if (v22 < __src[1])
    {
      *&v22 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
    v10 = v11 - __src[0];
    if ((v11 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((BYTE8(v22) & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    v12 = *(&v17 + 1);
    v10 = *(&v18 + 1) - *(&v17 + 1);
    if (*(&v18 + 1) - *(&v17 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_26:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v14 = operator new(v13);
    *(a2 + 1) = v10;
    *(a2 + 2) = v13 | 0x8000000000000000;
    *a2 = v14;
    a2 = v14;
    goto LABEL_21;
  }

  a2[23] = v10;
  if (v10)
  {
LABEL_21:
    memmove(a2, v12, v10);
  }

LABEL_22:
  a2[v10] = 0;
  *&v16 = *MEMORY[0x29EDC9538];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v16 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return MEMORY[0x29C271DA0](v23);
}

void sub_29747EB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C271DA0](v9 + 112);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  *(a1 + 112) = MEMORY[0x29EDC95A8] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x29EDC9538] + 16);
  v5 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x29EDC95A8] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C271CA0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_29747ED30(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x29C271DA0](v1);
  _Unwind_Resume(a1);
}

data::TransportService *data::TransportService::TransportService(data::TransportService *this)
{
  data::TransportService::State::create(this, this);
  return this;
}

{
  data::TransportService::State::create(this, this);
  return this;
}

void data::TransportService::State::create(data::TransportService::State *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::abs::supportsDataTransportService(this))
  {
    v3 = operator new(0x68uLL);
    data::TransportService::State::State(v3);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(&v5, v3);
    v4 = v5;
    *a2 = v5;
    data::TransportService::State::init(v4);
  }
}

void sub_29747EE1C(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void data::TransportService::enterLowPower(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_46;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::exitLowPower(uint64_t **this)
{
  v1 = *this;
  if (v1)
  {
    v2[0] = MEMORY[0x29EDCA5F8];
    v2[1] = 0x40000000;
    v2[2] = ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke;
    v2[3] = &__block_descriptor_tmp_48;
    v2[4] = v1;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v1, v2);
  }
}

void data::TransportService::setConfig(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *a2;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke;
    v4[3] = &__block_descriptor_tmp_51;
    v4[4] = v2;
    v4[5] = v3;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v2, v4);
  }
}

void data::TransportService::dumpState(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK4data16TransportService5State9dumpStateEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_52;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::unblockThrottling(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_53;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
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

void data::TransportService::State::init(data::TransportService::State *this)
{
  v119 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Inited", buf, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  v3 = xmmword_2A18CAC48;
  if (!xmmword_2A18CAC48)
  {
    memset(buf, 170, sizeof(buf));
    v4 = operator new(0x40uLL);
    sys::UIObserver::UIObserver(v4);
    std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v4);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&xmmword_2A18CAC48 + 1);
    xmmword_2A18CAC48 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v3 = xmmword_2A18CAC48;
  }

  v90 = *(&xmmword_2A18CAC48 + 1);
  if (*(&xmmword_2A18CAC48 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18CAC48 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke;
  aBlock[3] = &__block_descriptor_tmp;
  aBlock[4] = this;
  aBlock[5] = data::TransportService::State::handleUILockStateChange_sync;
  aBlock[6] = 0;
  v8 = _Block_copy(aBlock);
  v86 = v3;
  v9 = *(this + 1);
  if (!v9 || (v10 = *this, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = *(this + 2);
  v92 = v13;
  v85 = v8;
  if (v8)
  {
    v14 = _Block_copy(v8);
  }

  else
  {
    v14 = 0;
  }

  v93 = v14;
  dispatch_retain(v13);
  *v94 = 0u;
  v95 = 0u;
  v98 = v13;
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  v99 = v14;
  dispatch_retain(v13);
  object = v13;
  v87 = v10;
  v88 = v12;
  v84 = this;
  if (!v14)
  {
    v101 = 0;
    dispatch_retain(v13);
    goto LABEL_29;
  }

  v15 = _Block_copy(v14);
  v101 = v15;
  dispatch_retain(v13);
  if (!v15)
  {
LABEL_29:
    dispatch_retain(v13);
    v102 = 0;
    goto LABEL_30;
  }

  v16 = _Block_copy(v15);
  dispatch_retain(v13);
  v102 = 0;
  if (!v16)
  {
LABEL_30:
    dispatch_retain(v13);
    v83 = 0;
    v21 = 1;
LABEL_31:
    dispatch_retain(v13);
    v17 = 0;
    v22 = 1;
LABEL_32:
    dispatch_retain(v13);
    v18 = 0;
    v23 = 1;
LABEL_33:
    dispatch_retain(v13);
    v19 = 0;
    v103 = v13;
    v24 = 1;
    goto LABEL_34;
  }

  v17 = _Block_copy(v16);
  dispatch_retain(v13);
  v83 = v16;
  if (!v17)
  {
    v21 = 0;
    goto LABEL_31;
  }

  v18 = _Block_copy(v17);
  dispatch_retain(v13);
  if (!v18)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_32;
  }

  v19 = _Block_copy(v18);
  dispatch_retain(v13);
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_33;
  }

  v20 = _Block_copy(v19);
  dispatch_retain(v13);
  v103 = v13;
  if (v20)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v104 = _Block_copy(v20);
    dispatch_retain(v13);
    dispatch_release(v13);
    _Block_release(v20);
    goto LABEL_35;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_34:
  v104 = 0;
  dispatch_retain(v13);
  dispatch_release(v13);
LABEL_35:
  dispatch_release(v13);
  if ((v24 & 1) == 0)
  {
    _Block_release(v19);
  }

  dispatch_release(v13);
  if ((v23 & 1) == 0)
  {
    _Block_release(v18);
  }

  v102 = boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>)::stored_vtable;
  dispatch_release(v13);
  if ((v22 & 1) == 0)
  {
    _Block_release(v17);
  }

  dispatch_release(v13);
  if ((v21 & 1) == 0)
  {
    _Block_release(v83);
  }

  *&v106 = 0xAAAAAAAAAAAAAAAALL;
  *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = 0;
  *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
  boost::function1<void,BOOL>::move_assign(buf, &v102);
  boost::function1<void,BOOL>::move_assign(&v102, &v95 + 8);
  boost::function1<void,BOOL>::move_assign(&v95 + 8, buf);
  if (*buf && (buf[0] & 1) == 0 && **buf)
  {
    (**buf)(&buf[8], &buf[8], 2);
  }

  if (v102)
  {
    if ((v102 & 1) == 0 && *v102)
    {
      (*v102)(&v103, &v103, 2u);
    }

    v102 = 0;
  }

  dispatch_release(object);
  if (v101)
  {
    _Block_release(v101);
  }

  dispatch_release(v98);
  if (v99)
  {
    _Block_release(v99);
  }

  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = &unk_2A1E41DA0;
  v25[1] = v87;
  v25[2] = v88;
  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v26 = operator new(0x18uLL);
  *v26 = &unk_2A1E41DA0;
  v26[1] = v87;
  v26[2] = v88;
  atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf[8] = v26;
  *buf = 2;
  v27 = v94[1];
  if (v94[1] < v95)
  {
    v28 = operator new(0x18uLL);
    *v28 = &unk_2A1E41DA0;
    v28[1] = v87;
    v28[2] = v88;
    atomic_fetch_add_explicit(&v88->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27[1] = v28;
    *v27 = 2;
    v94[1] = v27 + 3;
LABEL_58:
    (*(*v26 + 8))(v26);
    goto LABEL_59;
  }

  v51 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v94, buf);
  v52 = *buf ^ (*buf >> 31);
  v94[1] = v51;
  if (v52 == 2)
  {
    v26 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (v52 == 1)
  {
    v53 = v106;
    if (v106 && atomic_fetch_add((v106 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_94:
      (*(*v53 + 24))(v53);
    }
  }

  else
  {
    v53 = v106;
    if (v106 && atomic_fetch_add((v106 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_94;
    }
  }

LABEL_59:
  (*(*v25 + 8))(v25);
  std::__shared_weak_count::__release_weak(v88);
  v29 = *(v86 + 40);
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v113 = v30;
  v114 = v30;
  v111 = v30;
  v112 = v30;
  v109 = v30;
  v110 = v30;
  v107 = v30;
  v108 = v30;
  *buf = v30;
  v106 = v30;
  v31 = v29[3];
  v115 = 10;
  __p = buf;
  v117 = 0;
  v118 = v31;
  pthread_mutex_lock(v31);
  v32 = v29[1];
  if (!v32 || atomic_load_explicit(v32 + 2, memory_order_acquire) != 1)
  {
    v36 = operator new(0x20uLL);
    v37 = *v29;
    v38 = **v29;
    v39 = operator new(0x40uLL);
    boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v39, v38);
    *v36 = v39;
    *(v36 + 1) = 0;
    boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v36, v39, v36 + 1);
    *(v36 + 2) = v37[2];
    v40 = v37[3];
    *(v36 + 3) = v40;
    if (v40)
    {
      atomic_fetch_add_explicit((v40 + 8), 1u, memory_order_relaxed);
    }

    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v29, v36);
    v33 = **v29;
    v35 = -1;
LABEL_66:
    v34 = *(v33 + 8);
    object = v34;
    if (v33 == v34)
    {
      goto LABEL_87;
    }

    goto LABEL_67;
  }

  v33 = **v29;
  v34 = v29[2];
  v35 = 1;
  if (v34 == v33)
  {
    goto LABEL_66;
  }

  object = v29[2];
LABEL_67:
  v41 = 0;
  do
  {
    isa = v34[2].isa;
    v44 = *(isa + 4);
    if (v44)
    {
      for (i = *v44; i != v44[1]; i += 24)
      {
        if ((*i ^ (*i >> 31)) > 1)
        {
          if ((*(**(i + 8) + 24))(*(i + 8)))
          {
            goto LABEL_83;
          }
        }

        else
        {
          v46 = *(i + 16);
          if (!v46 || !atomic_load_explicit((v46 + 8), memory_order_acquire))
          {
LABEL_83:
            if (*(isa + 24) == 1)
            {
              *(isa + 24) = 0;
              boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(isa, buf);
            }

            break;
          }
        }
      }
    }

    v47 = object[2].isa;
    if (*(v47 + 24))
    {
      v34 = object[1].isa;
    }

    else
    {
      v34 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(**v29, v47 + 16, &object);
    }

    object = v34;
    ++v41;
  }

  while (v34 != **v29 && v35 >= v41);
LABEL_87:
  v29[2] = v34;
  v48 = operator new(0x50uLL);
  v48[1] = 0;
  v48[2] = 0;
  *(v48 + 24) = 1;
  *(v48 + 7) = 1;
  *v48 = &unk_2A1E41BF8;
  v49 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v49, v94);
  v49[3] = 0;
  v50 = *(&v95 + 1);
  if (*(&v95 + 1))
  {
    v49[3] = *(&v95 + 1);
    if (v50)
    {
      *(v49 + 2) = v96;
      v49[6] = v97;
    }

    else
    {
      (*v50)(&v96, v49 + 32, 0);
    }
  }

  v48[5] = 0;
  v48[4] = v49;
  v54 = operator new(0x18uLL);
  v54[1] = 0x100000001;
  *v54 = &unk_2A1E41CA0;
  v54[2] = v49;
  v48[5] = v54;
  v48[6] = v29[3];
  v55 = v29[4];
  v48[7] = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(v55 + 2, 1u, memory_order_relaxed);
  }

  *(v48 + 16) = 0;
  *(v48 + 68) = 0;
  v102 = v48;
  v103 = 0;
  v56 = operator new(0x18uLL);
  *(v56 + 1) = 0x100000001;
  *v56 = &unk_2A1E41D00;
  *(v56 + 2) = v48;
  v103 = v56;
  v57 = **v29;
  v58 = operator new(0x20uLL);
  v59 = (v57 + 32);
  v58[2] = v48;
  v58[3] = v56;
  atomic_fetch_add_explicit(v56 + 2, 1u, memory_order_relaxed);
  v60 = *v57;
  *(v60 + 8) = v58;
  *v58 = v60;
  *v57 = v58;
  v58[1] = v57;
  ++*(v57 + 16);
  v61 = *(v57 + 32);
  if (v61)
  {
    v62 = v57 + 32;
    v63 = *(v57 + 32);
    do
    {
      v64 = *(v63 + 32);
      v65 = v64 == 2;
      v66 = v64 < 2;
      v67 = v64 < 2;
      if (!v66)
      {
        v62 = v63;
      }

      if (v65)
      {
        v62 = v63;
      }

      v63 = *(v63 + 8 * v67);
    }

    while (v63);
    if (v62 == v59 || *(v62 + 32) != 2)
    {
      v68 = *(v61 + 8);
      while (v68 != 2)
      {
        if (v68 < 3)
        {
          v69 = v61[1];
          if (!v69)
          {
            v59 = v61 + 1;
            goto LABEL_116;
          }
        }

        else
        {
          v69 = *v61;
          v59 = v61;
          if (!*v61)
          {
            goto LABEL_116;
          }
        }

        v68 = *(v69 + 8);
        v61 = v69;
      }
    }

    *(v48 + 16) = 2;
    *(v48 + 68) = 0xAAAAAAAAAAAAAA00;
  }

  else
  {
    v61 = (v57 + 32);
LABEL_116:
    v70 = operator new(0x38uLL);
    v70[4] = 0xAAAAAA0000000002;
    *(v70 + 10) = -1431655766;
    v70[6] = v58;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v61;
    *v59 = v70;
    v71 = **(v57 + 24);
    if (v71)
    {
      *(v57 + 24) = v71;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 32), v70);
    ++*(v57 + 40);
    v48 = v102;
    v56 = v103;
    *(v102 + 16) = 2;
    *(v48 + 68) = 0xAAAAAAAAAAAAAA00;
    if (!v56)
    {
      v89 = v48;
      v72 = v103;
      v73 = v85;
      if (!v103)
      {
        goto LABEL_126;
      }

      goto LABEL_122;
    }
  }

  atomic_fetch_add_explicit(v56 + 3, 1u, memory_order_relaxed);
  *&v89 = v48;
  *(&v89 + 1) = v56;
  atomic_fetch_add_explicit(v56 + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v56 + 24))(v56);
  }

  v72 = v103;
  v73 = v85;
  if (v103)
  {
LABEL_122:
    if (atomic_fetch_add(v72 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v72 + 16))(v72);
      if (atomic_fetch_add(v72 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v72 + 24))(v72);
      }
    }
  }

LABEL_126:
  pthread_mutex_unlock(v118);
  v74 = __p;
  if (__p)
  {
    if (v117 > 0)
    {
      v81 = __p + 16 * v117;
      do
      {
        v82 = *(v81 - 1);
        if (v82)
        {
          if (atomic_fetch_add(v82 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v82 + 16))(v82);
            if (atomic_fetch_add(v82 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v82 + 24))(v82);
            }
          }
        }

        v81 -= 16;
      }

      while (v81 > v74);
    }

    if (v115 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v95 + 1))
  {
    if ((BYTE8(v95) & 1) == 0 && **(&v95 + 1))
    {
      (**(&v95 + 1))(&v96, &v96, 2);
    }

    *(&v95 + 1) = 0;
  }

  v75 = v94[0];
  if (v94[0])
  {
    v76 = v94[1];
    v77 = v94[0];
    if (v94[1] != v94[0])
    {
      do
      {
        v76 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v76);
      }

      while (v76 != v75);
      v77 = v94[0];
    }

    v94[1] = v75;
    operator delete(v77);
  }

  dispatch_release(v92);
  if (v93)
  {
    _Block_release(v93);
  }

  if (atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v73)
    {
      goto LABEL_147;
    }

    goto LABEL_146;
  }

  (v88->__on_zero_shared)(v88);
  std::__shared_weak_count::__release_weak(v88);
  if (v73)
  {
LABEL_146:
    _Block_release(v73);
  }

LABEL_147:
  v78 = operator new(0x20uLL);
  v78[1] = v89;
  v79 = *(v84 + 7);
  *v78 = v79;
  *(v78 + 1) = v84 + 56;
  *(v79 + 8) = v78;
  *(v84 + 7) = v78;
  ++*(v84 + 9);
  if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v90->__on_zero_shared)(v90);
    std::__shared_weak_count::__release_weak(v90);
  }

  v80 = *MEMORY[0x29EDCA608];
}

void sub_2974802C0(uint64_t a1, int a2)
{
  if (a2)
  {
    boost::signals2::slot_base::~slot_base(v4);
    operator delete(v4);
    *v2 = &unk_2A1E41C60;
    boost::weak_ptr<void>::~weak_ptr(v3);
    operator delete(v2);
    JUMPOUT(0x297480570);
  }

  JUMPOUT(0x297480568);
}

void sub_2974802D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  operator delete(v45);
  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  JUMPOUT(0x297480568);
}

void sub_29748038C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  boost::signals2::connection::~connection(va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_2974803AC(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x297480568);
}

void sub_2974803EC(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count((v2 + 8));
    JUMPOUT(0x297480570);
  }

  JUMPOUT(0x297480568);
}

void sub_297480408(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x297480568);
}

void sub_297480428(uint64_t a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v4);
    *v2 = &unk_2A1E41C60;
    boost::weak_ptr<void>::~weak_ptr(v3);
    operator delete(v2);
    JUMPOUT(0x297480570);
  }

  JUMPOUT(0x297480568);
}

void sub_297480444(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748044CLL);
  }

  JUMPOUT(0x297480568);
}

void sub_297480458(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x297480460);
  }

  JUMPOUT(0x297480568);
}

void sub_297480490(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&a45);
    JUMPOUT(0x297480578);
  }

  JUMPOUT(0x297480568);
}

void sub_2974804A4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974804ACLL);
  }

  JUMPOUT(0x297480568);
}

void sub_2974804D8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974804E0);
  }

  JUMPOUT(0x297480568);
}

void sub_2974804F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(&a41);
    JUMPOUT(0x297480570);
  }

  JUMPOUT(0x297480568);
}

void sub_297480510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E41BA8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_2974806B0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1 + 7;
  v3 = a1[8];
  if (v3 != a1 + 7)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[9])
  {
    v4 = a1[8];
    v5 = *(a1[7] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[9] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8 && atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
        {
          v9 = v4;
          (*(*v8 + 24))(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }

  v10 = a1[12];
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[11];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (a1[9])
    {
LABEL_16:
      v12 = a1[8];
      v13 = *(a1[7] + 8);
      v14 = *v12;
      *(v14 + 8) = v13;
      *v13 = v14;
      a1[9] = 0;
      if (v12 != v2)
      {
        do
        {
          v15 = v12[1];
          v16 = v12[3];
          if (v16 && atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
          {
            v17 = v12;
            (*(*v16 + 24))(v16);
            v12 = v17;
          }

          operator delete(v12);
          v12 = v15;
        }

        while (v15 != v2);
      }
    }
  }

  else if (a1[9])
  {
    goto LABEL_16;
  }

  MEMORY[0x29C270D60](a1 + 4);
  v18 = a1[3];
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = a1[2];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = a1[1];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

void boost::signals2::connection::disconnect(boost::signals2::connection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = v1[2];
    while (v2)
    {
      v3 = v2;
      atomic_compare_exchange_strong_explicit(v1 + 2, &v3, v2 + 1, memory_order_relaxed, memory_order_relaxed);
      v4 = v3 == v2;
      v2 = v3;
      if (v4)
      {
        v5 = *this;
        if (v5)
        {
          boost::signals2::detail::connection_body_base::disconnect(v5);
        }

        if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 16))(v1);
          if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v1 + 24))(v1);
          }
        }

        return;
      }
    }
  }
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_297480C84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body_base>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::connection::~connection(boost::signals2::connection *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void *ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

data::TransportService::State *data::TransportService::State::State(data::TransportService::State *this)
{
  v10 = 12;
  strcpy(label, "ipc.svc.data");
  v7 = 12;
  strcpy(__p, "ipc.svc.data");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create(label, v2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 32, v11);
  MEMORY[0x29C270D60](v11);
  ctu::OsLogContext::~OsLogContext(v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    operator delete(*label);
    goto LABEL_6;
  }

  if (v10 < 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(this + 12) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 5) = 0x2D00000000;
  return this;
}

void data::TransportService::State::handleUILockStateChange_sync(data::TransportService::State *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(this + 4);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "unlocked";
    if (a2)
    {
      v6 = "locked";
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I UI has %s", &v8, 0xCu);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    v5 = *MEMORY[0x29EDCA608];
    return;
  }

  data::TransportService::State::unblockThrottling_sync(this);
  v7 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

atomic_uint *boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  result = boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(&v6, a2, &v6 + 1);
  v4 = *a1;
  v5 = a1[1];
  *a1 = v6;
  *&v6 = v4;
  *(&v6 + 1) = v5;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_297481930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E41F28;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_297481A24(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v34, &v33, v10 + 8);
      if (*v12)
      {
        v13 = *(v10 + 1);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = operator new(0x38uLL);
        v15 = *(v10 + 2);
        v14[6] = *(v10 + 6);
        *(v14 + 2) = v15;
        v16 = v34;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v12 = v14;
        v17 = **v9;
        if (v17)
        {
          *v9 = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v14);
        ++*(a1 + 40);
        v13 = *(v10 + 1);
        if (v13)
        {
          do
          {
LABEL_15:
            v18 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_8;
        }
      }

      do
      {
        v18 = *(v10 + 2);
        v19 = *v18 == v10;
        v10 = v18;
      }

      while (!v19);
LABEL_8:
      v10 = v18;
    }

    while (v18 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v20 = *(a2 + 24);
  if (v20 != v11)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    do
    {
      v21[6] = v22;
      v23 = a2;
      if (v20 != v11)
      {
        v23 = *(v20 + 6);
      }

      v24 = *(v20 + 1);
      v25 = v24;
      v26 = v20;
      if (v24)
      {
        do
        {
          v27 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v26 + 2);
          v19 = *v27 == v26;
          v26 = v27;
        }

        while (!v19);
      }

      v28 = a2;
      if (v27 != v11)
      {
        v28 = *(v27 + 6);
      }

      while (v23 != v28)
      {
        v23 = *(v23 + 8);
        v22 = *(v22 + 8);
      }

      if (v24)
      {
        do
        {
          v29 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v29 = *(v20 + 2);
          v19 = *v29 == v20;
          v20 = v29;
        }

        while (!v19);
      }

      v30 = v21[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v21[2];
          v19 = *v31 == v21;
          v21 = v31;
        }

        while (!v19);
      }

      v20 = v29;
      v21 = v31;
    }

    while (v29 != v11);
  }

  return a1;
}

void sub_297481FF8(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
      if (v29 >= *(v16 + 10))
      {
        v30 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_61;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v30 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
LABEL_61:
      v31 = v30;
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v30 + 10);
          if (v29 >= v33)
          {
            if (v33 >= v29)
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }

LABEL_62:
          v31 = *v30;
          v5 = v30;
          if (!*v30)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_62;
          }

LABEL_68:
          v5 = v30 + 1;
          v31 = v30[1];
          if (!v31)
          {
            goto LABEL_72;
          }
        }
      }
    }

    v34 = *(v30 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v30;
        v5 = v30;
        if (!*v30)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v30 + 1;
        v35 = v30[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v30 = v35;
    }
  }

  else
  {
    v30 = a1 + 1;
  }

LABEL_72:
  *a3 = v30;
  return v5;
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E41EB8;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_2974825D0(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((v1 + 3), v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_50;
    }

    v17 = (*a3)[1];
    v9 = v6;
    v21 = (v6 - 1);
    if (v17 != a1)
    {
LABEL_41:
      v35 = a2;
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v21, a2, &std::piecewise_construct, &v35)[6] = v17;
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v7 = *a2;
  v8 = a2[2];
  v9 = v6;
  v10 = v5;
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v15 = *(v10 + 8);
        v16 = v15 < 1;
        if (v15 == 1)
        {
          v16 = *(v10 + 10) < v8;
        }

        if (!v16)
        {
          break;
        }

        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 == v7;
      v16 = v11 < v7;
      v13 = v11 < v7;
      if (v16)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v12)
      {
        v13 = 0;
        v9 = v10;
      }

      else
      {
        v9 = v14;
      }

      v10 = v10[v13];
    }

    while (v10);
  }

LABEL_16:
  if (v9[6] == *a3)
  {
    v17 = (*a3)[1];
    if (v7 == 1)
    {
      v18 = v6;
      v19 = v5;
      while (1)
      {
        v20 = *(v19 + 8);
        if (v20 == 1)
        {
          if (v8 < *(v19 + 10))
          {
            goto LABEL_24;
          }

LABEL_19:
          v19 = v19[1];
          if (!v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v20 <= 1)
          {
            goto LABEL_19;
          }

LABEL_24:
          v18 = v19;
          v19 = *v19;
          if (!v19)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v18 = v6;
    v24 = v5;
    do
    {
      v25 = *(v24 + 8);
      v26 = v7 == v25;
      v16 = v7 < v25;
      v27 = v7 >= v25;
      if (v16)
      {
        v28 = v24;
      }

      else
      {
        v28 = v18;
      }

      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v18 = v28;
      }

      v24 = v24[v27];
    }

    while (v24);
LABEL_39:
    if (v18 == v6)
    {
      v21 = (v6 - 1);
      if (v17 != a1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = (v6 - 1);
      if (v17 != v18[6])
      {
        goto LABEL_41;
      }
    }

LABEL_28:
    v22 = v9[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      v29 = v9;
      do
      {
        v23 = v29[2];
        v12 = *v23 == v29;
        v29 = v23;
      }

      while (!v12);
    }

    if (*v21 == v9)
    {
      *v21 = v23;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v9);
    operator delete(v9);
  }

LABEL_50:
  v30 = *a3;
  v31 = **a3;
  v32 = (*a3)[1];
  *(v31 + 8) = v32;
  *v32 = v31;
  --a1[2];
  v33 = v30[3];
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v33 + 16))(v33);
      if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 24))(v33);
      }
    }
  }

  operator delete(v30);
  return v32;
}

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, void **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    if (*a2 != 1)
    {
      v13 = *(v6 + 8);
      if (v8 == v13)
      {
        return v6;
      }

      v10 = a1[1];
      while (1)
      {
        if (v8 < v13)
        {
          v6 = *v10;
          v7 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= v8)
          {
            return v10;
          }

          v6 = v10[1];
          if (!v6)
          {
LABEL_21:
            v7 = v10 + 1;
            goto LABEL_22;
          }
        }

        v13 = *(v6 + 8);
        v10 = v6;
        if (v8 == v13)
        {
          return v6;
        }
      }
    }

    v9 = a2[2];
    while (1)
    {
      v10 = v6;
      v11 = *(v6 + 8);
      if (v11 == 1)
      {
        v12 = *(v6 + 10);
        if (v9 >= v12)
        {
          if (v12 >= v9)
          {
            return v10;
          }

          goto LABEL_10;
        }

LABEL_4:
        v6 = *v6;
        v7 = v10;
        if (!*v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_22:
  v15 = operator new(0x38uLL);
  v16 = *(*a4 + 2);
  v15[4] = **a4;
  *(v15 + 10) = v16;
  v15[6] = 0;
  *v15 = 0;
  v15[1] = 0;
  v15[2] = v10;
  *v7 = v15;
  v17 = **a1;
  if (v17)
  {
    *a1 = v17;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
  a1[2] = (a1[2] + 1);
  return v15;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_297483490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::signals2::slot_base::~slot_base(boost::signals2::slot_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v3 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v3);
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    v7 = 0;
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[v5];
    do
    {
      v8 = &v3[v7];
      v9 = &v6[v7];
      v10 = *&v3[v7 + 8];
      if ((*&v3[v7] ^ (*&v3[v7] >> 31)) == 2)
      {
        *(v9 + 1) = (*(*v10 + 32))(v10);
      }

      else
      {
        *(v9 + 1) = v10;
        v11 = *&v3[v7 + 16];
        *&v6[v7 + 16] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed);
        }
      }

      *v9 = *v8 ^ (*v8 >> 31);
      v7 += 24;
    }

    while (v8 + 6 != v4);
    a1[1] = &v6[v7];
  }

  return a1;
}

void sub_297483788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 24;
    v14 = -v11;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v13);
      v13 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

atomic_uint *boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  else if (v1 == 1)
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  return result;
}

uint64_t boost::weak_ptr<void>::~weak_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E41BF8;
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result ^ (*result >> 31);
  if (v2 == 2)
  {
    (*(**(result + 8) + 16))(&v8);
    *(a2 + 8) = (*(*v8 + 16))(v8);
    *a2 = 1;
    result = v8;
    if (v8)
    {
      return (*(*v8 + 8))(v8);
    }
  }

  else if (v2 == 1)
  {
    v3 = *(result + 16);
    if (v3)
    {
      v4 = *(v3 + 8);
      while (v4)
      {
        v5 = v4;
        atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 1, memory_order_relaxed, memory_order_relaxed);
        v6 = v5 == v4;
        v4 = v5;
        if (v6)
        {
          *(a2 + 8) = *(result + 8);
          *(a2 + 16) = v3;
          *a2 = 0;
          return result;
        }
      }

      v3 = 0;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = v3;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_297483E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
    if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 16))(v1);
      result = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        return v2;
      }
    }
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void (***boost::function<void ()(BOOL)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x800000029769A830 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029769A830 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>,void,BOOL>::invoke(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v18 = 1;
LABEL_11:
    v17 = 0;
    v22[0] = 0;
    goto LABEL_21;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          v17 = _Block_copy(v15);
          v22[0] = v17;
          _Block_release(v16);
        }

        else
        {
          v17 = 0;
          v22[0] = 0;
        }

        _Block_release(v14);
      }

      else
      {
        v17 = 0;
        v22[0] = 0;
      }

      _Block_release(v12);
    }

    else
    {
      v17 = 0;
      v22[0] = 0;
    }

    _Block_release(v10);
  }

  else
  {
    v17 = 0;
    v22[0] = 0;
  }

  _Block_release(v8);
  v18 = 0;
LABEL_21:
  v19 = operator new(1uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable;
  if (v17)
  {
    v21 = _Block_copy(v17);
  }

  else
  {
    v21 = 0;
  }

  v20[1] = v21;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke;
  block[3] = &__block_descriptor_tmp_28;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable && (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable & 1) == 0 && boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable[0])
  {
    (boost::function1<void,BOOL>::assign_to<dispatch::block<void({block_pointer})(BOOL)>>(dispatch::block<void({block_pointer})(BOOL)>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_2974843FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()(BOOL)>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvbEEEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E42080;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E42008;
  *(a1 + 8) = &unk_2A1E42038;
  *(a1 + 24) = &unk_2A1E42060;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E420D8;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E42080;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E420B0;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E420D8;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E42008;
  *(v2 + 1) = &unk_2A1E42038;
  *(v2 + 3) = &unk_2A1E42060;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_2974847F0(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E420D8;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E420D8;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E420D8;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E420D8;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E420D8;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E42080;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E420B0;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E420D8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E42008;
  *(a1 + 8) = &unk_2A1E42038;
  *(a1 + 24) = &unk_2A1E42060;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_297484ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_297484EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_297484F04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(BOOL)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x800000029769A86ELL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029769A86ELL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function1<void,BOOL>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_2974850D0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,BOOL>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}