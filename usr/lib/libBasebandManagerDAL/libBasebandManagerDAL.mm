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
  _os_log_error_impl(&dword_297288000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
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
      _os_log_error_impl(&dword_297288000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
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
    _os_log_impl(&dword_297288000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
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
    _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
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

void sub_29728A950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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
        MEMORY[0x29C26EA50](&v33, (v13 / 1000));
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

  MEMORY[0x29C26EA70](&v33, v14);
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

  MEMORY[0x29C26EA50](v21, v13);
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
  result = MEMORY[0x29C26EC90](v40);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29728AE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17, MEMORY[0x29EDC9528]);
  MEMORY[0x29C26EC90](&a33);
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
  MEMORY[0x29C26EB90](a1 + 32);
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

void sub_29728B1B4(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C26EC90](v1);
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

void sub_29728B2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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
  __cxa_throw(exception, off_29EE673A0, MEMORY[0x29EDC9348]);
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
  MEMORY[0x29C26EA00](v14, a1);
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

  MEMORY[0x29C26EA10](v14);
  return a1;
}

void sub_29728BB60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C26EA10](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29728BB40);
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

void sub_29728BDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WorkoutModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v14[0] = v6;
  v14[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  WorkoutModule::WorkoutModule(v4, v14);
  *a2 = v5;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x20uLL);
  v8[1] = 0;
  v10 = v8 + 1;
  *v8 = &unk_2A1E34890;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  v11 = *(v5 + 80);
  if (v11)
  {
    if (v11->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
      *(v5 + 72) = v5;
      *(v5 + 80) = v8;
      v12 = v8;
      std::__shared_weak_count::__release_weak(v11);
      v8 = v12;
      if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_12:
        v13 = v8;
        (*(*v8 + 16))(v8, v9);
        std::__shared_weak_count::__release_weak(v13);
        if (!v7)
        {
          return;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  if (!v7)
  {
    return;
  }

LABEL_9:

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29728BF34(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule*)#1}::operator() const(WorkoutModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29728BF5C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](uint64_t result)
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

uint64_t WorkoutModule::WorkoutModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E34650;
  ctu::OsLogContext::OsLogContext(v12, "com.apple.telephony.abm", "workout.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("workout.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 104, v13);
  MEMORY[0x29C26DE80](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_2A1E34650;
  *(a1 + 112) = 0;
  *(a1 + 132) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = operator new(0x30uLL);
  v7->__shared_owners_ = 0;
  p_shared_owners = &v7->__shared_owners_;
  v7->__shared_weak_owners_ = 0;
  v7->__vftable = &unk_2A1E347D0;
  v7[1].__vftable = 0;
  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v9 = objc_alloc_init(MEMORY[0x29EDBABE0]);
  v7[1].__shared_weak_owners_ = [objc_alloc(MEMORY[0x29EDBAF08]) initWithHealthStore:v9];

  *(a1 + 136) = v7 + 1;
  *(a1 + 144) = v7;
  shared_owners = v7[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7[1].__vftable = &v7[1];
      v7[1].__shared_owners_ = v7;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7[1].__vftable = &v7[1];
    v7[1].__shared_owners_ = v7;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  *(a1 + 152) = config::hw::watch(shared_owners);
  *(a1 + 153) = 0;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  return a1;
}

void sub_29728C31C(_Unwind_Exception *a1)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v1 + 136);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C26DE80](v1 + 104);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void WorkoutModule::~WorkoutModule(WorkoutModule *this)
{
  *this = &unk_2A1E34650;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 18);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 15);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C26DE80](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  WorkoutModule::~WorkoutModule(this);

  operator delete(v1);
}

_WORD *WorkoutModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_WORD *WorkoutModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 770;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void WorkoutModule::shutdownWithStage(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void WorkoutModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void WorkoutModule::registerCommandHandlers_sync(WorkoutModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", buf, 2u);
    v3 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v4 = off_2A1399388;
    if (off_2A1399388)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v4 = off_2A1399388;
    if (off_2A1399388)
    {
      goto LABEL_10;
    }
  }

  CommandDriverFactory::create_default_global(buf, v3);
  v5 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v6 = *(&off_2A1399388 + 1);
  off_2A1399388 = v5;
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

  v4 = off_2A1399388;
LABEL_10:
  v28 = v4;
  v29 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v4 + 152))(&v30, v4);
  v8 = v30;
  v30 = 0uLL;
  v9 = *(this + 15);
  *(this + 7) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v30 + 1);
  if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (*(this + 14))
    {
      goto LABEL_24;
    }
  }

  else if (*(this + 14))
  {
    goto LABEL_24;
  }

  v12 = *(this + 13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "Failed to create workout command driver", buf, 2u);
  }

LABEL_24:
  WorkoutModule::overrides_sync(this);
  v13 = *(this + 10);
  if (!v13 || (v14 = *(this + 9), (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  p_shared_weak_owners = &v15->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v16);
  }

  strcpy(buf, "kCommandGetWorkoutInfo");
  v27 = 22;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  aBlock[4] = this;
  aBlock[5] = v14;
  v24 = v16;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(aBlock);
  v25 = v18;
  Service::registerCommandHandler(this, buf, &v25);
  if (v18)
  {
    _Block_release(v18);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
  }

  strcpy(buf, "kCommandSetWorkoutInfo");
  v27 = 22;
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3321888768;
  v20[2] = ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke_4;
  v20[3] = &__block_descriptor_56_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v20[4] = this;
  v20[5] = v14;
  v21 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = _Block_copy(v20);
  v22 = v19;
  Service::registerCommandHandler(this, buf, &v22);
  if (v19)
  {
    _Block_release(v19);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  std::__shared_weak_count::__release_weak(v16);
}

void sub_29728CE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v31)
  {
    _Block_release(v31);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a30 & 0x80000000) == 0)
    {
LABEL_5:
      v33 = a23;
      if (!a23)
      {
LABEL_10:
        std::__shared_weak_count::__release_weak(v30);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v33);
      std::__shared_weak_count::__release_weak(v30);
      _Unwind_Resume(a1);
    }
  }

  else if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  v33 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void WorkoutModule::overrides_sync(WorkoutModule *this)
{
  v36 = *MEMORY[0x29EDCA608];
  v34 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v3 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v3, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p = v3;
    v2 = operator new(0x20uLL);
    *v2 = &unk_2A1E34960;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = v3;
    v4 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v3;
    *(&xmmword_2A1399338 + 1) = v2;
    if (!v4)
    {
      *buf = v3;
      *&buf[8] = v2;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v2 = *(&xmmword_2A1399338 + 1);
  v3 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p = operator new(0x28uLL);
  v33 = xmmword_29742C680;
  strcpy(__p, "workout::kKeyWorkoutInfoOverride");
  Preferences::getPreference<BOOL>(v3, &__p, &v34);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v5 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v9 = v34;
    *(this + 153) = v34;
    if (v9 != 1)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v6 = v34;
    *(this + 153) = v34;
    if (v6 != 1)
    {
      goto LABEL_74;
    }
  }

  v31 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v8 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v8, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p = v8;
    v7 = operator new(0x20uLL);
    *v7 = &unk_2A1E34960;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = v8;
    v10 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v8;
    *(&xmmword_2A1399338 + 1) = v7;
    if (!v10)
    {
      *buf = v8;
      *&buf[8] = v7;
      goto LABEL_23;
    }

    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v7 = *(&xmmword_2A1399338 + 1);
  v8 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_23:
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p = operator new(0x20uLL);
  v33 = xmmword_29742C690;
  strcpy(__p, "workout::kKeyWorkoutType");
  Preferences::getPreference<unsigned int>(v8, &__p, &v31);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v11 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  *(this + 43) = v31;
  v12 = (this + 172);
  v30 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v14 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v14, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p = v14;
    v13 = operator new(0x20uLL);
    *v13 = &unk_2A1E34960;
    v13[1] = 0;
    v13[2] = 0;
    v13[3] = v14;
    v15 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v14;
    *(&xmmword_2A1399338 + 1) = v13;
    if (!v15)
    {
      *buf = v14;
      *&buf[8] = v13;
      goto LABEL_36;
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v13 = *(&xmmword_2A1399338 + 1);
  v14 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_36:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p = operator new(0x20uLL);
  v33 = xmmword_29742C6A0;
  strcpy(__p, "workout::kKeyWorkoutState");
  Preferences::getPreference<unsigned int>(v14, &__p, &v30);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v16 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  *(this + 44) = v30;
  v29 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v18 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v18, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p = v18;
    v17 = operator new(0x20uLL);
    *v17 = &unk_2A1E34960;
    v17[1] = 0;
    v17[2] = 0;
    v17[3] = v18;
    v19 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v18;
    *(&xmmword_2A1399338 + 1) = v17;
    if (!v19)
    {
      *buf = v18;
      *&buf[8] = v17;
      goto LABEL_49;
    }

    if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }
  }

  v17 = *(&xmmword_2A1399338 + 1);
  v18 = xmmword_2A1399338;
  *buf = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_49:
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p = operator new(0x20uLL);
  v33 = xmmword_29742C6B0;
  strcpy(__p, "workout::kKeyWorkoutLocation");
  Preferences::getPreference<unsigned int>(v18, &__p, &v29);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v20 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  *(this + 45) = v29;
  v28 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (xmmword_2A1399338)
  {
LABEL_56:
    v21 = *(&xmmword_2A1399338 + 1);
    v22 = xmmword_2A1399338;
    *buf = xmmword_2A1399338;
    if (!*(&xmmword_2A1399338 + 1))
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v22 = operator new(0x18uLL);
  MEMORY[0x29C26DFD0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
  __p = v22;
  v21 = operator new(0x20uLL);
  *v21 = &unk_2A1E34960;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = v22;
  v23 = *(&xmmword_2A1399338 + 1);
  *&xmmword_2A1399338 = v22;
  *(&xmmword_2A1399338 + 1) = v21;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    goto LABEL_56;
  }

  *buf = v22;
  *&buf[8] = v21;
LABEL_62:
  atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
LABEL_63:
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  __p = operator new(0x20uLL);
  v33 = xmmword_29742C6A0;
  strcpy(__p, "workout::kKeySwimLocation");
  Preferences::getPreference<unsigned int>(v22, &__p, &v28);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p);
  }

  v24 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  *(this + 46) = v28;
  v25 = *(this + 13);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    WorkoutModule::WorkoutStatus::to_string(&__p, v12);
    if (v33 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    *&buf[4] = p_p;
    _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, "#I Processed workout override; %s", buf, 0xCu);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_74:
  v27 = *MEMORY[0x29EDCA608];
}

void sub_29728D830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v5 = a1[4];
  v17 = 0;
  v6 = a1[6];
  if (v6 && (v17 = std::__shared_weak_count::lock(v6)) != 0 && a1[5])
  {
    if (*(v5 + 152))
    {
      if (*a3)
      {
        v7 = _Block_copy(*a3);
        v8 = *(v5 + 80);
        if (!v8)
        {
LABEL_18:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v7 = 0;
        v8 = *(v5 + 80);
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v11 = *(v5 + 72);
      v12 = std::__shared_weak_count::lock(v8);
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v5;
      v14[1] = v7;
      v15 = *(v5 + 88);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    else
    {
      v10 = *a3;
      object = xpc_null_create();
      v10[2](v10, 3760250884, &object);
      xpc_release(object);
    }
  }

  else
  {
    v9 = *a3;
    object = xpc_null_create();
    v9[2](v9, 3760250880, &object);
    xpc_release(object);
  }

  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_29728DC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN13WorkoutModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, void *a2, void (***a3)(const void *, uint64_t, xpc_object_t *))
{
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v8 = std::__shared_weak_count::lock(v6);
  v23 = v8;
  if (!v8 || !a1[5])
  {
LABEL_8:
    v10 = *a3;
    object = xpc_null_create();
    v10[2](v10, 3760250880, &object);
    xpc_release(object);
    if (!v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if ((*(v5 + 152) & 1) == 0)
  {
    v11 = *a3;
    object = xpc_null_create();
    v11[2](v11, 3760250884, &object);
    xpc_release(object);
LABEL_9:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    return;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v9 = *a3;
    object = xpc_null_create();
    v9[2](v9, 3760250882, &object);
    xpc_release(object);
    goto LABEL_9;
  }

  v12 = *a2;
  if (!v12)
  {
    v12 = xpc_null_create();
    v13 = *a3;
    if (*a3)
    {
      goto LABEL_15;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  xpc_retain(v12);
  v13 = *a3;
  if (!*a3)
  {
    goto LABEL_17;
  }

LABEL_15:
  v14 = _Block_copy(v13);
LABEL_18:
  v15 = *(v5 + 80);
  if (!v15 || (v16 = *(v5 + 72), (v17 = std::__shared_weak_count::lock(v15)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v5;
  v19[1] = v12;
  v20 = xpc_null_create();
  v19[2] = v14;
  v21 = *(v5 + 88);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI13WorkoutModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v8 = v23;
  if (v23)
  {
    goto LABEL_9;
  }
}

void sub_29728DF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void WorkoutModule::registerEventHandlers_sync(WorkoutModule *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBF460];
  v8 = strlen(*MEMORY[0x29EDBF460]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v15 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v15) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E348E0;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v17 = v12;
  Service::registerEventHandler(this, &__p, v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(__p);
    goto LABEL_19;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

void sub_29728E1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::function<void ()(dispatch::group_session,xpc::dict)>::~function(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v15);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void WorkoutModule::start(void *a1)
{
  v2 = a1[10];
  if (!v2 || (v3 = a1[9], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = a1;
  v7 = a1[11];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::start(dispatch::group_session)::$_0>(WorkoutModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t Preferences::getPreference<BOOL>(uint64_t (***a1)(void, uint64_t), const char *a2, ctu::cf *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      v9 = ctu::cf::assign(a3, v6, v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26DF80](&v11);
  return v9;
}

uint64_t Preferences::getPreference<unsigned int>(uint64_t (***a1)(void, uint64_t), const char *a2, ctu::cf *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      v9 = ctu::cf::assign(a3, v6, v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26DF80](&v11);
  return v9;
}

void WorkoutModule::WorkoutStatus::to_string(WorkoutModule::WorkoutStatus *this, unsigned int *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v13[0] = *a2;
  v13[1] = 0;
  v13[2] = v3;
  v13[3] = 0;
  v4 = a2[3];
  v13[4] = a2[2];
  v13[5] = 0;
  v13[7] = 0;
  v13[8] = 202950;
  v13[6] = v4;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[14] = v5;
  v18[15] = v5;
  v18[13] = v5;
  v18[12] = v5;
  v18[11] = v5;
  v18[10] = v5;
  v18[9] = v5;
  v18[8] = v5;
  v18[7] = v5;
  v18[6] = v5;
  v18[5] = v5;
  v18[4] = v5;
  v18[3] = v5;
  v18[2] = v5;
  v18[1] = v5;
  v18[0] = v5;
  v14 = v18;
  *__len = xmmword_29742C6C0;
  v16 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v17 = 0;
  __p = v18;
  v12[0] = 4;
  v12[1] = v13;
  v12[2] = 202950;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v14, "Workout: Type={} State={} Loc={} SwimLoc={}", 43, v12);
  v6 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (__len[1] | 7) + 1;
    }

    v11 = operator new(v10);
    *(this + 1) = v6;
    *(this + 2) = v10 | 0x8000000000000000;
    *this = v11;
    this = v11;
LABEL_11:
    memmove(this, v7, v6);
    *(this + v6) = 0;
    v8 = __p;
    if (__p == v18)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(this + 23) = __len[1];
  if (v6)
  {
    goto LABEL_11;
  }

  *this = 0;
  v8 = __p;
  if (__p != v18)
  {
LABEL_5:
    operator delete(v8);
  }

LABEL_6:
  v9 = *MEMORY[0x29EDCA608];
}

void sub_29728E6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  if (__p != v61)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void WorkoutModule::start_sync(WorkoutModule *this)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(this + 128))
  {
    goto LABEL_16;
  }

  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(this + 128) = 1;
  v7 = *MEMORY[0x29EDBB008];
  v8 = *(this + 11);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN13WorkoutModule10start_syncEv_block_invoke;
  handler[3] = &__block_descriptor_80_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0_e8_v12__0i8l;
  handler[4] = this;
  handler[5] = v3;
  v16 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v17 = this;
  v18 = v3;
  v19 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  notify_register_dispatch(v7, this + 33, v8, handler);
  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Workout manager started", v14, 2u);
  }

  v10 = *(this + 17);
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = 0;
  v11 = operator new(0x20uLL);
  *v11 = &unk_2A1E349B0;
  v11[1] = this;
  v11[2] = v3;
  v11[3] = v5;
  v21 = v11;
  HealthStoreManager::queryWorkoutInfo(v10, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
    v12 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v21)
    {
      (*(*v21 + 40))();
    }

    v12 = v19;
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  std::__shared_weak_count::__release_weak(v12);
LABEL_13:
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v5);
  std::__shared_weak_count::__release_weak(v5);
LABEL_16:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_29728E964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(&a20);
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    v22 = a16;
    if (!a16)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v20);
      std::__shared_weak_count::__release_weak(v20);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v22);
  std::__shared_weak_count::__release_weak(v20);
  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void ___ZN13WorkoutModule10start_syncEv_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Workout notification received", buf, 2u);
        }

        v7 = *(v3 + 136);
        v11 = *(a1 + 56);
        v8 = *(a1 + 72);
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        v16 = 0;
        v9 = operator new(0x20uLL);
        *v9 = &unk_2A1E349B0;
        *(v9 + 8) = v11;
        *(v9 + 3) = v8;
        v16 = v9;
        HealthStoreManager::queryWorkoutInfo(v7, v15);
        if (v16 == v15)
        {
          (*(*v16 + 32))(v16);
          if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (v16)
        {
          (*(*v16 + 40))();
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_12:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

LABEL_13:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_29728EBB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29728EBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void HealthStoreManager::queryWorkoutInfo(uint64_t *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v9 = a1[2];
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN18HealthStoreManager16queryWorkoutInfoENSt3__18functionIFvN3abm11WorkoutTypeENS2_12WorkoutStateENS2_15WorkoutLocationENS2_12SwimLocationEEEE_block_invoke;
  v13[3] = &__block_descriptor_80_e8_32c43_ZTSNSt3__18weak_ptrI18HealthStoreManagerEE48c105_ZTSNSt3__18functionIFvN3abm11WorkoutTypeENS1_12WorkoutStateENS1_15WorkoutLocationENS1_12SwimLocationEEEE_e47_v24__0___HKCurrentWorkoutSnapshot_8__NSError_16l;
  v13[4] = v5;
  v14 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *(a2 + 24);
  if (!v10)
  {
    goto LABEL_8;
  }

  if (v10 != a2)
  {
    v10 = (*(*v10 + 16))(v10);
LABEL_8:
    v16 = v10;
    goto LABEL_10;
  }

  v16 = v15;
  (*(*v10 + 24))(v10, v15);
LABEL_10:
  [v9 currentWorkoutSnapshotWithCompletion:v13];
  if (v16 == v15)
  {
    (*(*v16 + 32))(v16);
    v11 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    (*(*v16 + 40))();
  }

  v11 = v14;
  if (v14)
  {
LABEL_14:
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_15:
  std::__shared_weak_count::__release_weak(v7);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29728EE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(abm::WorkoutType,abm::WorkoutState,abm::WorkoutLocation,abm::SwimLocation)>::~function(uint64_t a1)
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

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(result + 72) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSNSt3__18weak_ptrI13WorkoutModuleEE56c40_ZTSZN13WorkoutModule10start_syncEvE3__0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void WorkoutModule::stop_sync(WorkoutModule *this)
{
  if (*(this + 128) == 1)
  {
    v6 = v1;
    v7 = v2;
    *(this + 128) = 0;
    *(this + 164) = 0;
    *(this + 156) = 0;
    if (*(this + 33))
    {
      v3 = this;
      notify_cancel(*(this + 33));
      this = v3;
      *(v3 + 33) = 0;
    }

    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Workout manager stopped", v5, 2u);
    }
  }
}

void WorkoutModule::sendWorkoutInfo_sync(WorkoutModule *this)
{
  v37 = *MEMORY[0x29EDCA608];
  if (!*(this + 14))
  {
    goto LABEL_38;
  }

  v2 = 156;
  if (*(this + 153))
  {
    v2 = 172;
  }

  v3 = (this + v2);
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  xdict = 0xAAAAAAAAAAAAAAAALL;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xdict = v8;
  }

  else
  {
    v9 = xpc_null_create();
    xdict = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = xpc_int64_create(v5);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutType", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(v4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutState", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(v7);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeyWorkoutLocation", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(v6);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kKeySwimLocation", v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = *(this + 13);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, &xdict);
    v20 = v31 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v36 = v20;
    _os_log_impl(&dword_297288000, v19, OS_LOG_TYPE_DEFAULT, "#I Sending workout info: %s\n", buf, 0xCu);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v21 = *(this + 10);
  if (!v21 || (v22 = *(this + 9), (v23 = std::__shared_weak_count::lock(v21)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = v23;
  atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v24);
    v25 = *(this + 14);
    v26 = xdict;
    object = xdict;
    if (xdict)
    {
      goto LABEL_30;
    }

LABEL_32:
    object = xpc_null_create();
    goto LABEL_33;
  }

  v25 = *(this + 14);
  v26 = xdict;
  object = xdict;
  if (!xdict)
  {
    goto LABEL_32;
  }

LABEL_30:
  xpc_retain(v26);
LABEL_33:
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = 0;
  v27 = operator new(0x20uLL);
  *v27 = &unk_2A1E34A40;
  v27[1] = this;
  v27[2] = v22;
  v27[3] = v24;
  v34 = v27;
  (*(*v25 + 16))(v25, &object, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))();
  }

  xpc_release(object);
  object = 0;
  std::__shared_weak_count::__release_weak(v24);
  xpc_release(xdict);
LABEL_38:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_29728F3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<HealthStoreManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E347D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<HealthStoreManager>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(void *a1)
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

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

uint64_t *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  result = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    v6 = result;
    std::locale::~locale(&v12);
    return v6;
  }

  return result;
}

void sub_29728F730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_12;
      }

      if (++v3 == v4)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_12:
        v8 = v5[4];
        if (!v8 || (v10 = *v8, v9 = v8[1], v8[1] = v9 + 1, v9 < v10))
        {
          v11 = *v5;
          v12 = v5[2];
          v5[2] = v12 + 1;
          *(v11 + v12) = v7;
          if (v5[2] == v5[1])
          {
            v13 = v3;
            (v5[3])(v5, 2);
            v3 = v13;
          }
        }

        if (++v3 == v4)
        {
          return v5;
        }
      }

      else
      {
        *a2 = v5;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v4, a1, a2);
        v5 = *a2;
        if (v3 == v4)
        {
          return v5;
        }
      }
    }

    if (++v3 == v4 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_12;
  }

  return v5;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x29EDCA608];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2A1E34838;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

uint64_t std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v2 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(a1, v2);
    case 2u:
      v18 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<char>(a1, v18);
    case 3u:
      v19 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<int>(a1, v19);
    case 4u:
      v10 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<long long>(a1, v10);
    case 5u:
      v21 = *a2;
      v22 = *(a2 + 1);

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<__int128>(a1, v21, v22);
    case 6u:
      v20 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned int>(a1, v20);
    case 7u:
      v28 = *a2;

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned long long>(a1, v28);
    case 8u:
      v15 = *a2;
      v16 = *(a2 + 1);

      return std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<unsigned __int128>(a1, v15, v16);
    case 9u:
      v11 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_60;
      }

      v12 = a1;
      v13 = *a1;
      v14 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] <= 0xCu && ((1 << v50[1]) & 0x1801) != 0)
        {
          goto LABEL_59;
        }

LABEL_72:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

LABEL_59:
      *v13 = v14;
      a1 = v12;
LABEL_60:
      v43 = *(a1 + 8);
      v44 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v44, v45, v11);
LABEL_69:
      *v43 = result;
      return result;
    case 0xAu:
      v29 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_68;
      }

      v30 = a1;
      v31 = *a1;
      v32 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] > 0xCu || ((1 << v50[1]) & 0x1801) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

      *v31 = v32;
      a1 = v30;
LABEL_68:
      v43 = *(a1 + 8);
      v48 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v48, v49, v29);
      goto LABEL_69;
    case 0xBu:
      v24 = *a2;
      *v50 = 0;
      *&v50[8] = -1;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_64;
      }

      v25 = a1;
      v26 = *a1;
      v27 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 319);
      if (v50[1] - 13 >= 6)
      {
        if (v50[1] > 0xCu || ((1 << v50[1]) & 0x1801) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*&v50[2] & 0x80000000) == 0 && *&v50[8] == -1)
      {
        *&v50[8] = 6;
      }

      *v26 = v27;
      a1 = v25;
LABEL_64:
      v43 = *(a1 + 8);
      v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v43);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v46, v47, v24);
      goto LABEL_69;
    case 0xCu:
      v33 = *a2;
      *v50 = 1;
      *&v50[4] = 0xFFFFFFFF00000000;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_53;
      }

      v34 = a1;
      v35 = *a1;
      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 296);
      if (v50[1] >= 2u && v50[1] != 19)
      {
        goto LABEL_71;
      }

      *v35 = v36;
      a1 = v34;
LABEL_53:
      v37 = *(a1 + 8);
      v38 = strlen(v33);
      result = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v33, v38, v37);
      *v37 = result;
      return result;
    case 0xDu:
      v4 = *a2;
      v5 = *(a2 + 1);
      *v50 = 1;
      *&v50[4] = 0xFFFFFFFF00000000;
      v51 = 32;
      v52 = 0;
      v53 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_12;
      }

      v6 = a1;
      v7 = *a1;
      v8 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v50, *a1, 296);
      if (v50[1] >= 2u && v50[1] != 19)
      {
LABEL_71:
        std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
      }

      *v7 = v8;
      a1 = v6;
LABEL_12:
      v9 = *(a1 + 8);
      result = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v50, v4, v5, v9);
      *v9 = result;
      return result;
    case 0xEu:

      return std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(a1, a2);
    case 0xFu:
      v39 = *(a1 + 8);
      v40 = *a2;
      v41 = *(a2 + 1);
      v42 = *a1;

      return v41(v42, v39, v40);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v12 = 0;
  v13 = -1;
  v14 = 32;
  v15 = 0;
  v16 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v12, *a1, 292);
    if (BYTE1(v12) - 8 >= 2 && BYTE1(v12) != 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v12, v7);
  v10 = 1536;
  if ((v8 & 0xFF00) == 0x900)
  {
    v10 = 1792;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v7, v8 & 0xFFFFFFFFFFFF00FFLL | v10 | 0x20, v9, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(uint64_t a1, unsigned int a2)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16))
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 < 6)
    {
      *v4 = v5;
      v6 = *(a1 + 8);
LABEL_4:
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
      result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v7, v8, 0);
      *v6 = result;
      return result;
    }

    if (BYTE1(v15) > 1u)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
    }

    v12 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "a BOOL", -1);
    if ((v15 & 7) != 0)
    {
      v13 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v13 > 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v15) = v15 | 1;
      v14 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v14 > 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v10 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
  result = std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v10, v11);
  *v6 = result;
  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v18 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = a1;
  v10 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v18, v5);
  result = v18;
  if (v10)
  {
    if (v18 == v5)
    {
      return result;
    }
  }

  if (a3)
  {
    v13 = *v18;
    v11 = v9;
    v12 = a2;
    switch(v13)
    {
      case ' ':
        v14 = *v9 | 0x18;
        break;
      case '+':
        v14 = *v9 & 0xE7 | 0x10;
        break;
      case '-':
        v14 = *v9 & 0xE7 | 8;
        break;
      default:
        goto LABEL_16;
    }

    *v9 = v14;
    v18 = ++result;
    if (result == v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v9;
    v12 = a2;
  }

LABEL_16:
  if ((a3 & 2) == 0 || *result != 35 || (*v11 |= 0x20u, ++result, v18 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_24;
    }

    if ((*v11 & 7) == 0)
    {
      *v11 |= 4u;
    }

    v18 = ++result;
    if (result != v5)
    {
LABEL_24:
      v15 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v11, &v18, v5, v12);
      result = v18;
      if (!v15 || v18 != v5)
      {
        v16 = v9;
        if ((a3 & 8) != 0)
        {
          v17 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, &v18, v5, a2);
          result = v18;
          if (v17)
          {
            v16 = v9;
            if (v18 == v5)
            {
              return result;
            }
          }

          else
          {
            v16 = v9;
          }
        }

        if ((a3 & 0x10) == 0 || *result != 76 || (*v16 |= 0x40u, ++result, v18 = result, result != v5))
        {
          if ((a3 & 0x80) == 0 || *result != 110 || (*v16 |= 0x80u, ++result, v18 = result, result != v5))
          {
            if ((a3 & 0x20) != 0)
            {
              std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(v16, &v18);
              result = v18;
            }

            if ((a3 & 0x100) != 0 && result != v5 && *result != 125)
            {
              std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v16) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v16[0];
  if (v16[0] < a3)
  {
    v7 = *v16[0];
    switch(v7)
    {
      case '<':
        v8 = 1;
        goto LABEL_17;
      case '>':
        v8 = 3;
        goto LABEL_17;
      case '^':
        v8 = 2;
LABEL_17:
        *a1 = *a1 & 0xF8 | v8;
        v13 = *a2;
        v14 = v6 - *a2;
        if (v14 == 1)
        {
          v15 = *v13;
          if (v15 == 123)
          {
            std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
          }

          a1[12] = v15;
        }

        else if (v6 != v13)
        {
          memmove(a1 + 12, v13, v6 - *a2);
        }

        v11 = &(*a2)[v14];
        goto LABEL_23;
    }
  }

  v9 = **a2;
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
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    *a2 = v6 + 1;
    if (v6 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6 + 1, a3, a4);
    if (v11 == a3 || *v11 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The argument index is invalid");
    }

    v12 = v11 + 1;
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    LODWORD(v8) = v7 - 48;
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v13 = v6 + 9;
    if (a3 - v6 <= 9)
    {
      v13 = a3;
    }

    v12 = v6 + 1;
    if (v6 + 1 == v13)
    {
LABEL_17:
      if (v12 == a3)
      {
        v12 = a3;
      }

      else
      {
        v15 = *v12;
        if ((v15 - 48) <= 9)
        {
          v8 = v15 + 10 * v8 - 48;
          if (v8 >> 31 || (v12 = v6 + 2, v6 + 2 != a3) && *v12 - 48 <= 9)
          {
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }
    }

    else
    {
      v6 = v13 - 1;
      while (1)
      {
        v14 = *v12;
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        LODWORD(v8) = v14 + 10 * v8 - 48;
        if (++v12 == v13)
        {
          v12 = v13;
          goto LABEL_17;
        }
      }
    }
  }

  *(a1 + 4) = v8;
  *a2 = v12;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v6 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v7 = *v6;
    if (v7 == 123)
    {
      *a2 = v4 + 2;
      if (v4 + 2 == a3)
      {
        std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
      }

      v9 = a2;
      v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      if (v11 == a3 || *v11 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

      v13 = v11 + 1;
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v12;
      a2 = v9;
    }

    else
    {
      if ((v7 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      if (a3 - v6 <= 9)
      {
        v14 = a3;
      }

      else
      {
        v14 = v4 + 10;
      }

      LODWORD(v15) = v7 - 48;
      v13 = v4 + 2;
      if (v13 == v14)
      {
        v14 = v13;
        if (v13 == a3)
        {
LABEL_23:
          v13 = a3;
        }

        else
        {
LABEL_17:
          v17 = *v14;
          if ((v17 - 48) > 9)
          {
            v13 = v14;
          }

          else
          {
            v15 = v17 + 10 * v15 - 48;
            if (v15 >> 31 || (v13 = v6 + 2, v6 + 2 != a3) && *v13 - 48 <= 9)
            {
              std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
            }
          }
        }
      }

      else
      {
        v6 = v14 - 1;
        while (1)
        {
          v16 = *v13;
          if ((v16 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v15) = v16 + 10 * v15 - 48;
          if (++v13 == v14)
          {
            if (v14 == a3)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }
        }
      }

      *(a1 + 8) = v15;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v13;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, void *a2)
{
  v2 = *a2;
  v3 = 12;
  switch(**a2)
  {
    case 'A':
      goto LABEL_19;
    case 'B':
      v3 = 3;
      goto LABEL_19;
    case 'E':
      v3 = 14;
      goto LABEL_19;
    case 'F':
      v3 = 16;
      goto LABEL_19;
    case 'G':
      v3 = 18;
      goto LABEL_19;
    case 'P':
      v3 = 9;
      goto LABEL_19;
    case 'X':
      v3 = 7;
      goto LABEL_19;
    case 'a':
      v3 = 11;
      goto LABEL_19;
    case 'b':
      v3 = 2;
      goto LABEL_19;
    case 'c':
      v3 = 10;
      goto LABEL_19;
    case 'd':
      v3 = 5;
      goto LABEL_19;
    case 'e':
      v3 = 13;
      goto LABEL_19;
    case 'f':
      v3 = 15;
      goto LABEL_19;
    case 'g':
      v3 = 17;
      goto LABEL_19;
    case 'o':
      v3 = 4;
      goto LABEL_19;
    case 'p':
      v3 = 8;
      goto LABEL_19;
    case 's':
      v3 = 1;
      goto LABEL_19;
    case 'x':
      v3 = 6;
LABEL_19:
      *(result + 1) = v3;
      *a2 = v2 + 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  v21.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v21.__r_.__value_.__r.__words[1] = xmmword_29742C6D0;
  strcpy(v21.__r_.__value_.__l.__data_, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v21, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v23 = v3->__r_.__value_.__r.__words[2];
  v22 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v5 = *(&v22 + 1);
    v6 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v6 - *(&v22 + 1) < 0x14)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      v8 = *(&v22 + 1) + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v23 & 0x7FFFFFFFFFFFFFFFLL) < *(&v22 + 1) + 20 - v6)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v9 = v22;
      if (v6 > 0x3FFFFFFFFFFFFFF2)
      {
        v12 = 0;
LABEL_16:
        v13 = operator new(v7);
        v14 = v13;
        if (v5)
        {
          memmove(v13, v9, v5);
        }

        v15 = &v14[v5];
        *v15 = *" formatting argument";
        *(v15 + 4) = 1953391981;
        if (!v12)
        {
          operator delete(v9);
        }

        *(&v22 + 1) = v8;
        v23 = v7 | 0x8000000000000000;
        *&v22 = v14;
        v16 = &v14[v8];
LABEL_27:
        *v16 = 0;
        v25 = v23;
        v24 = v22;
        v23 = 0;
        v22 = 0uLL;
        if (v25 >= 0)
        {
          v20 = &v24;
        }

        else
        {
          v20 = v24;
        }

        std::__throw_format_error[abi:ne200100](v20);
      }

LABEL_7:
      v10 = 2 * v6;
      if (v8 > 2 * v6)
      {
        v10 = v8;
      }

      if ((v10 | 7) == 0x17)
      {
        v11 = 25;
      }

      else
      {
        v11 = (v10 | 7) + 1;
      }

      if (v10 >= 0x17)
      {
        v7 = v11;
      }

      else
      {
        v7 = 23;
      }

      v12 = v6 == 22;
      goto LABEL_16;
    }

    v17 = v22;
  }

  else
  {
    if ((SHIBYTE(v23) - 3) < 0x14)
    {
      v8 = SHIBYTE(v23) + 20;
      v9 = &v22;
      v6 = 22;
      goto LABEL_7;
    }

    v17 = &v22;
  }

  v18 = v17 + v5;
  *v18 = *" formatting argument";
  *(v18 + 4) = 1953391981;
  v19 = v5 + 20;
  if (SHIBYTE(v23) < 0)
  {
    *(&v22 + 1) = v5 + 20;
  }

  else
  {
    HIBYTE(v23) = v19 & 0x7F;
  }

  v16 = v17 + v19;
  goto LABEL_27;
}

void sub_297291040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(a16);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "sign");
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "alternate form");
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "zero-padding");
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "precision");
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, "locale-specific form");
  }

  v4 = *(result + 1);
  if (!*(result + 1))
  {
    if (a4)
    {
      return result;
    }

LABEL_16:
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  if (v4 >= 0x20)
  {
    std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
  }

  if (((1 << v4) & a4) == 0)
  {
    goto LABEL_16;
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  v41.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v41.__r_.__value_.__r.__words[1] = xmmword_29742C6A0;
  strcpy(v41.__r_.__value_.__l.__data_, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v41, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
    v8 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 - v42.__r_.__value_.__l.__size_ < 0x14)
    {
      v9 = 0x7FFFFFFFFFFFFFF7;
      v10 = v42.__r_.__value_.__l.__size_ + 20;
      if (0x7FFFFFFFFFFFFFF7 - (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v42.__r_.__value_.__l.__size_ + 20 - v8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v42.__r_.__value_.__r.__words[0];
      if (v8 >= 0x3FFFFFFFFFFFFFF3)
      {
        v14 = 0;
LABEL_16:
        v15 = operator new(v9);
        v16 = v15;
        if (size)
        {
          memmove(v15, v11, size);
        }

        v17 = v16 + size;
        *v17 = *" does not allow the ";
        *(v17 + 16) = 543516788;
        if (!v14)
        {
          operator delete(v11);
        }

        v42.__r_.__value_.__l.__size_ = v10;
        v42.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v16;
        v18 = (v16 + v10);
LABEL_27:
        *v18 = 0;
        v43 = v42;
        memset(&v42, 0, sizeof(v42));
        v22 = strlen(a2);
        v23 = std::string::append(&v43, a2, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v45 = v23->__r_.__value_.__r.__words[2];
        v44 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = SHIBYTE(v45);
        if ((SHIBYTE(v45) & 0x8000000000000000) != 0)
        {
          v25 = *(&v44 + 1);
          v26 = (v45 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v26 - *(&v44 + 1) < 7)
          {
            v27 = 0x7FFFFFFFFFFFFFF7;
            v28 = *(&v44 + 1) + 7;
            if (0x7FFFFFFFFFFFFFF7 - (v45 & 0x7FFFFFFFFFFFFFFFLL) < *(&v44 + 1) + 7 - v26)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v29 = v44;
            if (v26 >= 0x3FFFFFFFFFFFFFF3)
            {
              v32 = 0;
LABEL_42:
              v33 = operator new(v27);
              v34 = v33;
              if (v25)
              {
                memmove(v33, v29, v25);
              }

              v35 = &v34[v25];
              *(v35 + 3) = 1852795252;
              *v35 = 1953525536;
              if (!v32)
              {
                operator delete(v29);
              }

              *(&v44 + 1) = v28;
              v45 = v27 | 0x8000000000000000;
              *&v44 = v34;
              v36 = &v34[v28];
LABEL_55:
              *v36 = 0;
              v47 = v45;
              v46 = v44;
              v45 = 0;
              v44 = 0uLL;
              if (v47 >= 0)
              {
                v40 = &v46;
              }

              else
              {
                v40 = v46;
              }

              std::__throw_format_error[abi:ne200100](v40);
            }

LABEL_33:
            v30 = 2 * v26;
            if (v28 > 2 * v26)
            {
              v30 = v28;
            }

            if ((v30 | 7) == 0x17)
            {
              v31 = 25;
            }

            else
            {
              v31 = (v30 | 7) + 1;
            }

            if (v30 >= 0x17)
            {
              v27 = v31;
            }

            else
            {
              v27 = 23;
            }

            v32 = v26 == 22;
            goto LABEL_42;
          }

          v37 = v44;
        }

        else
        {
          if ((SHIBYTE(v45) - 16) < 7)
          {
            v28 = SHIBYTE(v45) + 7;
            v29 = &v44;
            v26 = 22;
            goto LABEL_33;
          }

          v37 = &v44;
        }

        v38 = (v37 + v25);
        *(v38 + 3) = 1852795252;
        *v38 = 1953525536;
        v39 = v25 + 7;
        if (SHIBYTE(v45) < 0)
        {
          *(&v44 + 1) = v25 + 7;
        }

        else
        {
          HIBYTE(v45) = v39 & 0x7F;
        }

        v36 = v37 + v39;
        goto LABEL_55;
      }

LABEL_7:
      v12 = 2 * v8;
      if (v10 > 2 * v8)
      {
        v12 = v10;
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
        v9 = v13;
      }

      else
      {
        v9 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_16;
    }

    v19 = v42.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) - 3) < 0x14)
    {
      v10 = SHIBYTE(v42.__r_.__value_.__r.__words[2]) + 20;
      v11 = &v42;
      v8 = 22;
      goto LABEL_7;
    }

    v19 = &v42;
  }

  v20 = v19 + size;
  *v20 = *" does not allow the ";
  *(v20 + 4) = 543516788;
  v21 = size + 20;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    v42.__r_.__value_.__l.__size_ = size + 20;
  }

  else
  {
    *(&v42.__r_.__value_.__s + 23) = v21 & 0x7F;
  }

  v18 = v19 + v21;
  goto LABEL_27;
}

void sub_297291558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(a30);
    if (a28 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  _Unwind_Resume(a1);
}

uint64_t std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      MEMORY[0x29C26EB90](__p);
      v12 = (a2 + 32);
      if (*(a2 + 40) == 1)
      {
        std::locale::operator=(v12, __p);
      }

      else
      {
        std::locale::locale(v12, __p);
        *(a2 + 40) = 1;
      }

      std::locale::~locale(__p);
    }

    std::locale::locale(&v19, (a2 + 32));
    v13 = std::locale::use_facet(&v19, MEMORY[0x29EDC93F8]);
    std::locale::~locale(&v19);
    memset(__p, 170, sizeof(__p));
    v14 = v13->__vftable;
    if (a1)
    {
      (v14[2].~facet)(__p, v13);
    }

    else
    {
      (v14[2].~facet_0)(__p, v13);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v16 = HIBYTE(__p[2]);
    }

    else
    {
      v16 = __p[1];
    }

    result = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v15, v16, *a2, a3, a4);
    if (SHIBYTE(__p[2]) < 0)
    {
      v17 = result;
      operator delete(__p[0]);
      return v17;
    }
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }

  return result;
}

void sub_2972917F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v27[23] = *MEMORY[0x29EDCA608];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) != 0)
  {
    v9 = *(a1 + 1);
    v10 = a2[1];
    if (v10 <= v9)
    {
      LOBYTE(v11) = 0;
    }

    else if (v10 > 0xC)
    {
      v13 = a2[2] + 32 * v9;
      v9 = *v13;
      v2 = *(v13 + 8);
      LOBYTE(v11) = *(v13 + 16);
      v23[0] = *(v13 + 17);
      *(v23 + 7) = *(v13 + 24);
    }

    else
    {
      v11 = (a2[3] >> (5 * v9)) & 0x1FLL;
      v12 = (a2[2] + 16 * v9);
      v9 = *v12;
      v2 = v12[1];
    }

    v24 = v9;
    v25 = v2;
    v26 = v11;
    *v27 = v23[0];
    *&v27[7] = *(v23 + 7);
    v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v22, &v24);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
LABEL_3:
      v8 = *(a1 + 2);
      goto LABEL_16;
    }
  }

  v14 = *(a1 + 2);
  v15 = a2[1];
  if (v15 <= v14)
  {
    LOBYTE(v16) = 0;
  }

  else if (v15 > 0xC)
  {
    v18 = a2[2] + 32 * v14;
    v14 = *v18;
    v2 = *(v18 + 8);
    LOBYTE(v16) = *(v18 + 16);
    v23[0] = *(v18 + 17);
    *(v23 + 7) = *(v18 + 24);
  }

  else
  {
    v16 = (a2[3] >> (5 * v14)) & 0x1FLL;
    v17 = (a2[2] + 16 * v14);
    v14 = *v17;
    v2 = v17[1];
  }

  v24 = v14;
  v25 = v2;
  v26 = v16;
  *v27 = v23[0];
  *&v27[7] = *(v23 + 7);
  v8 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v22, &v24);
LABEL_16:
  v19 = *MEMORY[0x29EDCA608];
  v20 = v8 | (*(a1 + 3) << 32);
  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  *&v15[5] = *MEMORY[0x29EDCA608];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      goto LABEL_11;
    }

    *&v14[15] = -1431655766;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13 = v7;
    *v14 = v7;
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

    v10 = v15;
LABEL_18:
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, &v13, v10, v8, v12);
    goto LABEL_19;
  }

  if (BYTE1(a3) > 5u)
  {
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 7) = -1431655766;
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

    v10 = &v13 + 11;
    goto LABEL_18;
  }

  if (BYTE1(a3) != 4)
  {
LABEL_11:
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 7) = -1431655766;
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, &v13, &v13 + 11, 0, 0xAu);
    goto LABEL_19;
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  *(&v13 + 5) = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, &v13, &v13 + 13, v5, 8u);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = __src;
  v7 = HIDWORD(a4);
  if (a4 <= 0)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), v6, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      v6 += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  if (a2)
  {
    if (*__src < 0)
    {
      v11 = a4;
      v12 = a5;
    }

    else
    {
      v8 = 0;
      v9 = &__src[v7];
      __src = &__src[v7 - 1];
      while (1)
      {
        if (a2 - 1 == v8)
        {
          v19 = a2;
          goto LABEL_36;
        }

        if (v7 - 1 == v8)
        {
          break;
        }

        v10 = v6[++v8];
        if (v10 < 0)
        {
          v11 = a4;
          v12 = a5;
          v7 = v7 - v8 + 1;
          __src = &v6[v8 - 1];
          goto LABEL_21;
        }
      }

      if ((*v9 & 0x80000000) == 0)
      {
        v19 = HIDWORD(a4);
        goto LABEL_36;
      }

      v11 = a4;
      v12 = a5;
      v7 = 1;
    }

LABEL_21:
    v20 = (__src - v6);
    v21 = a2;
    v22 = std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(__src, &v6[a2], v7, 1);
    a2 = v21;
    v19 = &v20[v22];
    a5 = v12;
    a4 = v11;
  }

  else
  {
    v19 = 0;
  }

LABEL_36:

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v6, a2, a3, a4, a5, v19);
}

uint64_t std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    v13 = *(a3 + 32);
    if (v13)
    {
      v15 = *v13;
      v14 = v13[1];
      if (*v13 - v14 >= a2)
      {
        v16 = a2;
      }

      else
      {
        v16 = *v13 - v14;
      }

      v13[1] = v14 + a2;
      if (v15 <= v14 || v16 == 0)
      {
        return a3;
      }
    }

    else
    {
      v16 = a2;
    }

    v23 = *(a3 + 16);
    do
    {
      v25 = *(a3 + 8) - v23;
      if (v25 < v16 + 1)
      {
        (*(a3 + 24))(a3, v16 + 2);
        v23 = *(a3 + 16);
        v25 = *(a3 + 8) - v23;
      }

      if (v25 >= v16)
      {
        v26 = v16;
      }

      else
      {
        v26 = v25;
      }

      if (v26)
      {
        memmove((*a3 + v23), __src, v26);
        v23 = *(a3 + 16);
      }

      v23 += v26;
      *(a3 + 16) = v23;
      __src += v26;
      v24 = v16 > v25;
      v16 -= v26;
    }

    while (v24);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v27 = v9 >> 1;
      v9 -= v9 >> 1;
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v27, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_41:
      v21 = a2;
      goto LABEL_42;
    }

LABEL_17:
    v9 = 0;
    v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - a6, SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (v12)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  if ((a4 & 7) == 0)
  {
    goto LABEL_17;
  }

  v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
  v12 = *(v11 + 32);
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_18:
  v20 = *v12;
  v19 = v12[1];
  if (*v12 - v19 >= a2)
  {
    v21 = a2;
  }

  else
  {
    v21 = *v12 - v19;
  }

  v12[1] = v19 + a2;
  if (v20 > v19 && v21 != 0)
  {
LABEL_42:
    v28 = *(v11 + 16);
    do
    {
      v29 = *(v11 + 8) - v28;
      if (v29 < v21 + 1)
      {
        (*(v11 + 24))(v11, v21 + 2);
        v28 = *(v11 + 16);
        v29 = *(v11 + 8) - v28;
      }

      if (v29 >= v21)
      {
        v30 = v21;
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        memmove((*v11 + v28), __src, v30);
        v28 = *(v11 + 16);
      }

      v28 += v30;
      *(v11 + 16) = v28;
      __src += v30;
      v24 = v21 > v29;
      v21 -= v30;
    }

    while (v24);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v9, v10);
}

uint64_t std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v105 = a2;
  memset(v106, 170, sizeof(v106));
  v104 = a1;
  v7 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v104);
  v8 = v7 & 0x7FFFFFFF;
  LODWORD(v106[0]) = v7 & 0x7FFFFFFF;
  v9 = (v7 << 11) | 0x7FF;
  v10 = 1496;
  v11 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v12 = v10 >> 1;
    v13 = &v11[v10 >> 1];
    v15 = *v13;
    v14 = v13 + 1;
    v10 += ~(v10 >> 1);
    if (v9 >= v15)
    {
      v11 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  while (v10);
  if (v11 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100] || (v16 = *(v11 - 1), ((v16 >> 4) & 0x7F) + (v16 >> 11) < v8))
  {
    BYTE4(v106[0]) = 16;
    v106[1] = 0;
    LODWORD(v106[2]) = 0;
  }

  else
  {
    v26 = v16 & 0xF;
    BYTE4(v106[0]) = v26;
    v106[1] = 0;
    LODWORD(v106[2]) = 0;
    if (v26 == 9)
    {
      v25 = 3;
      goto LABEL_25;
    }

    if (v26 == 3)
    {
      v25 = 2;
      goto LABEL_25;
    }
  }

  v17 = 201;
  v18 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v19 = v17 >> 1;
    v20 = &v18[v17 >> 1];
    v22 = *v20;
    v21 = v20 + 1;
    v17 += ~(v17 >> 1);
    if (v9 >= v22)
    {
      v18 = v21;
    }

    else
    {
      v17 = v19;
    }
  }

  while (v17);
  if (v18 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v23 = *(v18 - 1);
    v24 = (v23 & 3) == 0 && ((v23 >> 2) & 0x1FF) + (v23 >> 11) >= v8;
    if (v24)
    {
      v25 = 1;
LABEL_25:
      LODWORD(v106[1]) = v25;
    }
  }

  if (a1 == a2)
  {
    return 0;
  }

  if (v104 != v105)
  {
    v101 = a2;
    v102 = a3;
    v27 = 0;
LABEL_35:
    v31 = v8;
    while (1)
    {
      v32 = v104;
      if (v104 == v105)
      {
LABEL_75:
        if (v31 - 262142 < 0xFFFC1102)
        {
          goto LABEL_29;
        }

        v55 = &std::__width_estimation_table::__entries[abi:ne200100];
        v56 = 107;
        do
        {
          v57 = v56 >> 1;
          v58 = &v55[v56 >> 1];
          v60 = *v58;
          v59 = v58 + 1;
          v56 += ~(v56 >> 1);
          if (((v31 << 14) | 0x3FFF) >= v60)
          {
            v55 = v59;
          }

          else
          {
            v56 = v57;
          }
        }

        while (v56);
        if (v55 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
LABEL_29:
          v28 = v27 + 1;
          v29 = v102;
          if (a4)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v24 = (*(v55 - 1) & 0x3FFF) + (*(v55 - 1) >> 14) >= v31;
          v61 = 1;
          if (v24)
          {
            v61 = 2;
          }

          v28 = v61 + v27;
          v29 = v102;
          if (a4)
          {
LABEL_31:
            v30 = v32 == v101 || v28 > v29;
            v27 = v28;
            if (v30)
            {
              return v27;
            }

            goto LABEL_35;
          }
        }

        if (v28 <= v29)
        {
          goto LABEL_31;
        }

        return v27;
      }

      v33 = (__clz(*v104 ^ 0xFF) - 24);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          if (v105 - v104 >= 3)
          {
            v41 = (v104[1] & 0xC0) == 128;
            if ((v104[1] & 0xC0) == 0x80)
            {
              v41 = (v104[2] & 0xC0) == 128;
            }

            if (v41)
            {
              ++v104;
              v42 = *v32 & 0xF;
              v104 = v32 + 2;
              v43 = (v42 << 12) | ((v32[1] & 0x3F) << 6);
              v104 = v32 + 3;
              v36 = -2147418115;
              if (v43 >= 0x800)
              {
                v36 = v43 | v32[2] & 0x3F;
                if ((v43 & 0xF800) == 0xD800)
                {
                  v36 = -2147418115;
                }
              }

              goto LABEL_64;
            }
          }
        }

        else if (v33 == 4 && v105 - v104 >= 4)
        {
          v37 = (v104[1] & 0xC0) == 128;
          if ((v104[1] & 0xC0) == 0x80)
          {
            v37 = (v104[2] & 0xC0) == 128;
            if ((v104[2] & 0xC0) == 0x80)
            {
              v37 = (v104[3] & 0xC0) == 128;
            }
          }

          if (v37)
          {
            ++v104;
            v38 = *v32 & 7;
            v104 = v32 + 2;
            v39 = (v38 << 12) | ((v32[1] & 0x3F) << 6);
            v104 = v32 + 3;
            v40 = v32[2];
            v104 = v32 + 4;
            v36 = -2147418115;
            if (v39 >= 0x400)
            {
              v36 = v32[3] & 0x3F | ((v39 | v40 & 0x3F) << 6);
              if (v39 >> 10 >= 0x11)
              {
                v36 = -2147418115;
              }
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        if (!v33)
        {
          ++v104;
          v36 = *v32;
          goto LABEL_64;
        }

        if (v33 == 2 && v105 - v104 >= 2)
        {
          v34 = v104 + 1;
          if ((v104[1] & 0xC0) == 0x80)
          {
            ++v104;
            v35 = *v32 & 0x1F;
            v104 = v32 + 2;
            v36 = -2147418115;
            if (v35 >= 2)
            {
              v36 = *v34 & 0x3F | (v35 << 6);
            }

            goto LABEL_64;
          }
        }
      }

      ++v104;
      v36 = -2147418115;
LABEL_64:
      v44 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
      v45 = 1496;
      do
      {
        v46 = v45 >> 1;
        v47 = &v44[v45 >> 1];
        v49 = *v47;
        v48 = v47 + 1;
        v45 += ~(v45 >> 1);
        if (((v36 << 11) | 0x7FFu) >= v49)
        {
          v44 = v48;
        }

        else
        {
          v45 = v46;
        }
      }

      while (v45);
      v8 = v36 & 0x7FFFFFFF;
      if (v44 == &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
      {
        v53 = 16;
      }

      else
      {
        v50 = *(v44 - 1);
        v51 = ((v50 >> 4) & 0x7F) + (v50 >> 11);
        v52 = v50 & 0xF;
        if (v51 >= v8)
        {
          v53 = v52;
        }

        else
        {
          v53 = 16;
        }
      }

      v54 = std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](v106, v8, v53);
      LODWORD(v106[0]) = v8;
      BYTE4(v106[0]) = v53;
      if (v54)
      {
        goto LABEL_75;
      }
    }
  }

  if (v8 - 262142 >= 0xFFFC1102)
  {
    v63 = (v7 << 14) | 0x3FFF;
    if (a4)
    {
      if (v104 == a2)
      {
        v79 = 107;
        v80 = &std::__width_estimation_table::__entries[abi:ne200100];
        do
        {
          v81 = v79 >> 1;
          v82 = &v80[v79 >> 1];
          v84 = *v82;
          v83 = v82 + 1;
          v79 += ~(v79 >> 1);
          if (v63 >= v84)
          {
            v80 = v83;
          }

          else
          {
            v79 = v81;
          }
        }

        while (v79);
        if (v80 == &std::__width_estimation_table::__entries[abi:ne200100])
        {
          return 1;
        }

        else if ((*(v80 - 1) & 0x3FFFu) + (*(v80 - 1) >> 14) < v8)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        v27 = 0;
        do
        {
          while (1)
          {
            v64 = &std::__width_estimation_table::__entries[abi:ne200100];
            v65 = 107;
            do
            {
              v66 = v65 >> 1;
              v67 = &v64[v65 >> 1];
              v69 = *v67;
              v68 = v67 + 1;
              v65 += ~(v65 >> 1);
              if (v63 >= v69)
              {
                v64 = v68;
              }

              else
              {
                v65 = v66;
              }
            }

            while (v65);
            if (v64 != &std::__width_estimation_table::__entries[abi:ne200100])
            {
              break;
            }

            if (++v27 > a3)
            {
              return v27;
            }
          }

          if ((*(v64 - 1) & 0x3FFFu) + (*(v64 - 1) >> 14) < v8)
          {
            v70 = 1;
          }

          else
          {
            v70 = 2;
          }

          v27 += v70;
        }

        while (v27 <= a3);
      }
    }

    else if (v104 == a2)
    {
      v92 = 107;
      v93 = &std::__width_estimation_table::__entries[abi:ne200100];
      do
      {
        v94 = v92 >> 1;
        v95 = &v93[v92 >> 1];
        v97 = *v95;
        v96 = v95 + 1;
        v92 += ~(v92 >> 1);
        if (v63 >= v97)
        {
          v93 = v96;
        }

        else
        {
          v92 = v94;
        }
      }

      while (v92);
      if (v93 == &std::__width_estimation_table::__entries[abi:ne200100])
      {
        v98 = 1;
      }

      else
      {
        v98 = 1;
        if ((*(v93 - 1) & 0x3FFFu) + (*(v93 - 1) >> 14) >= v8)
        {
          v98 = 2;
        }
      }

      if (v98 <= a3)
      {
        return v98;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v71 = 0;
      do
      {
        while (1)
        {
          v27 = v71;
          v72 = &std::__width_estimation_table::__entries[abi:ne200100];
          v73 = 107;
          do
          {
            v74 = v73 >> 1;
            v75 = &v72[v73 >> 1];
            v77 = *v75;
            v76 = v75 + 1;
            v73 += ~(v73 >> 1);
            if (v63 >= v77)
            {
              v72 = v76;
            }

            else
            {
              v73 = v74;
            }
          }

          while (v73);
          if (v72 != &std::__width_estimation_table::__entries[abi:ne200100])
          {
            break;
          }

          v71 = v27 + 1;
          if (v27 + 1 > a3)
          {
            return v27;
          }
        }

        if ((*(v72 - 1) & 0x3FFFu) + (*(v72 - 1) >> 14) < v8)
        {
          v78 = 1;
        }

        else
        {
          v78 = 2;
        }

        v71 = v78 + v27;
      }

      while (v71 <= a3);
    }
  }

  else
  {
    v27 = a4 != 0 || a3 != 0;
    if ((a4 != 0 || a3 != 0) && v104 != a2)
    {
      if (a4)
      {
        if (a3 + 1 > 1)
        {
          return a3 + 1;
        }

        else
        {
          return 1;
        }
      }

      if (a3 <= 1)
      {
        v85 = 1;
      }

      else
      {
        v85 = a3;
      }

      v24 = v85 != 0;
      v86 = v85 - 1;
      if (__PAIR128__(v24 - 1, v86) >= a3)
      {
        v86 = a3;
      }

      if (v86 && (a3 <= 1 ? (v87 = 1) : (v87 = a3), (v24 = v87 != 0, v88 = v87 - 1, __PAIR128__(v24 - 1, v88) >= a3) ? (v89 = a3) : (v89 = v88), (~v89 & 0xFFFFFFFFFFFFFFFELL) != 0))
      {
        v99 = v86 + 1;
        v27 = (v86 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v90 = (v86 + 1) | 1;
        v100 = v27;
        do
        {
          v100 -= 2;
        }

        while (v100);
        if (v99 == v27)
        {
          return v27;
        }
      }

      else
      {
        v90 = 1;
      }

      do
      {
        v91 = v90 + 1;
        if (v90 > a3)
        {
          break;
        }

        ++v90;
      }

      while (v91 <= a3);
      return v91 - 1;
    }
  }

  return v27;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v6 = *(a1 + 12);
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          if (a3 == 2)
          {
            return 0;
          }

          if (a3 != 13)
          {
LABEL_45:
            *(a1 + 8) = 0;
            v4 = *(a1 + 4);
            if (a3 == 5 && !*(a1 + 4))
            {
              return 0;
            }

            if ((v4 > 5 || ((1 << v4) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
            {
              if (*(a1 + 4) <= 6u)
              {
                if (v4 != 4)
                {
LABEL_14:
                  if (v4 != 6)
                  {
LABEL_78:
                    if ((a3 != 11 || v4 != 11) && (a3 > 0xD || ((1 << a3) & 0x2404) == 0) && v4 != 8)
                    {
                      goto LABEL_74;
                    }

                    return 0;
                  }

LABEL_69:
                  if ((a3 - 11) < 2u)
                  {
                    return 0;
                  }

                  goto LABEL_78;
                }

                goto LABEL_53;
              }

LABEL_67:
              if (v4 != 7)
              {
                if (v4 != 12)
                {
                  goto LABEL_78;
                }

                goto LABEL_69;
              }

              v10 = a3 - 2;
              if (a3 - 2 >= 0xC)
              {
LABEL_74:
                if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
                {
                  v16 = 1;
                  v17 = 16;
                  v15 = a1;
                  goto LABEL_91;
                }

                v15 = a1;
                if (a3 == 9)
                {
                  *(a1 + 8) = 3;
                  return 1;
                }

                if (a3 == 3)
                {
                  v16 = 2;
                  v17 = 12;
LABEL_91:
                  *(v15 + 8) = v16;
                  *(v15 + v17) = 0;
                  return 1;
                }

                return 1;
              }

              v11 = 2817;
LABEL_73:
              if ((v11 >> v10))
              {
                return 0;
              }

              goto LABEL_74;
            }

            return 1;
          }
        }

        else if (a3 != 13)
        {
          if (a3 == 2)
          {
            *(a1 + 12) = 1;
            return 0;
          }

          goto LABEL_45;
        }

        *(a1 + 12) = 2;
        return 0;
      }

      if (a3 == 3)
      {
        *(a1 + 12) = 0;
        return 0;
      }

      *(a1 + 8) = 0;
      v12 = *(a1 + 4);
      if (a3 == 5 && !*(a1 + 4))
      {
        return 0;
      }

      if (v12 <= 5 && ((1 << v12) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
      {
        return 1;
      }

      if (*(a1 + 4) > 6u)
      {
        if (v12 != 7)
        {
          if (v12 != 12)
          {
            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 2817;
          goto LABEL_122;
        }
      }

      else
      {
        if (v12 != 4)
        {
          if (v12 != 6)
          {
LABEL_114:
            if (a3 == 11 && v12 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v12 == 8)
            {
              return 0;
            }

            goto LABEL_123;
          }

LABEL_107:
          if ((a3 - 11) < 2u)
          {
            return 0;
          }

          goto LABEL_114;
        }

        v25 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v26 = 3381;
LABEL_122:
          if ((v26 >> v25))
          {
            return 0;
          }
        }
      }

LABEL_123:
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
      {
        *(a1 + 8) = 1;
        *(a1 + 16) = 0;
        return 1;
      }

      if (a3 == 9)
      {
        *(a1 + 8) = 3;
        return 1;
      }

      return 1;
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }

    v8 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v9 = v8 > 5 || ((1 << v8) & 0x23) == 0;
    if (!v9 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
    {
      return 1;
    }

    if (*(a1 + 4) > 6u)
    {
      if (v8 != 7)
      {
        if (v8 != 12)
        {
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 2817;
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 != 6)
        {
LABEL_92:
          if (a3 == 11 && v8 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v8 == 8)
          {
            return 0;
          }

          goto LABEL_102;
        }

LABEL_86:
        if ((a3 - 11) < 2u)
        {
          return 0;
        }

        goto LABEL_92;
      }

      v18 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_102;
      }

      v19 = 3381;
    }

    if ((v19 >> v18))
    {
      return 0;
    }

LABEL_102:
    if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
    {
      if (a3 != 3)
      {
        return 1;
      }

      v22 = a1;
      v23 = 2;
      v24 = 12;
    }

    else
    {
      v23 = 1;
      v24 = 16;
      v22 = a1;
    }

    *(v22 + 8) = v23;
    *(v22 + v24) = 0;
    return 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    v5 = v4 > 5 || ((1 << v4) & 0x23) == 0;
    if (v5 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) <= 6u)
      {
        if (v4 != 4)
        {
          goto LABEL_14;
        }

LABEL_53:
        v10 = a3 - 2;
        if (a3 - 2 >= 0xC)
        {
          goto LABEL_74;
        }

        v11 = 3381;
        goto LABEL_73;
      }

      goto LABEL_67;
    }

    return 1;
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 201;
  v4 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v5 = v3 >> 1;
    v6 = &v4[v3 >> 1];
    v8 = *v6;
    v7 = v6 + 1;
    v3 += ~(v3 >> 1);
    if (((a2 << 11) | 0x7FF) >= v8)
    {
      v4 = v7;
    }

    else
    {
      v3 = v5;
    }
  }

  while (v3);
  if (v4 == &std::__indic_conjunct_break::__entries[abi:ne200100] || ((v9 = *(v4 - 1), v10 = ((v9 >> 2) & 0x1FF) + (v9 >> 11), v11 = v9 & 3, v11 != 3) ? (v12 = v10 >= a2) : (v12 = 0), !v12))
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 4);
    if (a3 == 5 && !*(a1 + 4))
    {
      return 0;
    }

    if ((v13 > 5 || ((1 << v13) & 0x23) == 0) && (a3 > 5 || ((1 << a3) & 0x23) == 0))
    {
      if (*(a1 + 4) > 6u)
      {
        if (v13 != 7)
        {
          if (v13 != 12)
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 2817;
          goto LABEL_53;
        }
      }

      else
      {
        if (v13 != 4)
        {
          if (v13 != 6)
          {
            goto LABEL_45;
          }

LABEL_41:
          if ((a3 - 11) >= 2u)
          {
LABEL_45:
            if (a3 == 11 && v13 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v13 == 8)
            {
              return 0;
            }

            goto LABEL_54;
          }

          return 0;
        }

        v16 = a3 - 2;
        if (a3 - 2 < 0xC)
        {
          v17 = 3381;
LABEL_53:
          if ((v17 >> v16))
          {
            return 0;
          }
        }
      }

LABEL_54:
      if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
      {
        v21 = 1;
        v22 = 16;
        v20 = a1;
        goto LABEL_59;
      }

      v20 = a1;
      if (a3 == 9)
      {
        *(a1 + 8) = 3;
      }

      else if (a3 == 3)
      {
        v21 = 2;
        v22 = 12;
LABEL_59:
        *(v20 + 8) = v21;
        *(v20 + v22) = 0;
        return 1;
      }

      return 1;
    }

    return 1;
  }

  if (*(a1 + 16))
  {
    if ((v11 - 1) >= 2)
    {
      *(a1 + 16) = 0;
      return 0;
    }

    return 0;
  }

  if (v11 == 1)
  {
    return 0;
  }

  if (v11 == 2)
  {
    *(a1 + 16) = 1;
    return 0;
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  if (v15 <= 5 && ((1 << v15) & 0x23) != 0 || a3 <= 5 && ((1 << a3) & 0x23) != 0)
  {
    return 1;
  }

  if (*(a1 + 4) > 6u)
  {
    if (v15 != 7)
    {
      if (v15 != 12)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 2817;
  }

  else
  {
    if (v15 != 4)
    {
      if (v15 != 6)
      {
LABEL_68:
        if (a3 == 11 && v15 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v15 == 8)
        {
          return 0;
        }

        goto LABEL_77;
      }

LABEL_64:
      if ((a3 - 11) < 2u)
      {
        return 0;
      }

      goto LABEL_68;
    }

    v23 = a3 - 2;
    if (a3 - 2 >= 0xC)
    {
      goto LABEL_77;
    }

    v24 = 3381;
  }

  if ((v24 >> v23))
  {
    return 0;
  }

LABEL_77:
  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v27 = 1;
    v28 = 16;
LABEL_82:
    *(a1 + 8) = v27;
    *(a1 + v28) = 0;
    return 1;
  }

  if (a3 != 9)
  {
    if (a3 != 3)
    {
      return 1;
    }

    v27 = 2;
    v28 = 12;
    goto LABEL_82;
  }

  *(a1 + 8) = 3;
  return 1;
}

uint64_t std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, size_t a2, int __c)
{
  v4 = a2;
  __src = __c;
  v6 = __clz(~__c) - 24;
  if (v6)
  {
    if (a2)
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v9 = *(a1 + 32);
        v10 = v8;
        if (!v9 || ((v12 = *v9, v11 = v9[1], *v9 - v11 >= v8) ? (v10 = v8) : (v10 = *v9 - v11), v9[1] = v11 + v8, v12 > v11))
        {
          v13 = *(a1 + 16);
          p_src = &__src;
          do
          {
            v16 = *(a1 + 8) - v13;
            if (v16 < v10 + 1)
            {
              (*(a1 + 24))(a1, v10 + 2);
              v13 = *(a1 + 16);
              v16 = *(a1 + 8) - v13;
            }

            if (v16 >= v10)
            {
              v17 = v10;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              memcpy((*a1 + v13), p_src, v17);
              v13 = *(a1 + 16);
            }

            v13 += v17;
            *(a1 + 16) = v13;
            p_src = (p_src + v17);
            v15 = v10 > v16;
            v10 -= v17;
          }

          while (v15);
        }

        ++v7;
      }

      while (v7 != v4);
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (!v18)
    {
      goto LABEL_29;
    }

    v20 = *v18;
    v19 = v18[1];
    if (*v18 - v19 < a2)
    {
      v4 = *v18 - v19;
    }

    v18[1] = v19 + a2;
    if (v20 > v19 && v4 != 0)
    {
LABEL_29:
      v23 = *(a1 + 16);
      do
      {
        v24 = *(a1 + 8) - v23;
        if (v24 < v4 + 1)
        {
          (*(a1 + 24))(a1, v4 + 2);
          v23 = *(a1 + 16);
          v24 = *(a1 + 8) - v23;
        }

        if (v24 >= v4)
        {
          v25 = v4;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          memset((*a1 + v23), __c, v25);
          v23 = *(a1 + 16);
        }

        v23 += v25;
        *(a1 + 16) = v23;
        v15 = v4 > v24;
        v4 -= v25;
      }

      while (v15);
    }
  }

  return a1;
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) == 0)
      {
        return result;
      }

      goto LABEL_12;
    case 4:
      result = *a2;
      if ((*a2 & 0x8000000000000000) != 0)
      {
LABEL_12:
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      if (result >> 31)
      {
        goto LABEL_10;
      }

      return result;
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_10;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_10:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
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

  v19 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v15, a7, a1, a9);
  v87 = v10;
  if ((v12 & 0x40) == 0)
  {
    goto LABEL_67;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x29C26EB90](v93);
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

void sub_297293A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t a1, _BYTE *__src, unsigned __int8 *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v10 = a3;
  v11 = __src;
  v12 = a1;
  v13 = HIDWORD(a7);
  v14 = a3 - __src;
  LODWORD(v15) = *(a5 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = a5[1];
  }

  v16 = a4 - __src - 1 + v15;
  v85 = HIDWORD(a8);
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v16)
    {
      v84 = 0;
      v29 = *(a1 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v28 = (a7 >> 32) - v16;
      if ((a7 & 7u) > 1)
      {
        if ((a7 & 7) != 3)
        {
          v84 = v28 - (v28 >> 1);
          v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v28 >> 1, SHIDWORD(a8));
          v29 = *(v12 + 32);
          if (!v29)
          {
            goto LABEL_121;
          }

          goto LABEL_56;
        }
      }

      else if ((a7 & 7) != 0)
      {
        v84 = (a7 >> 32) - v16;
        v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, 0, SHIDWORD(a8));
        v29 = *(v12 + 32);
        if (!v29)
        {
          goto LABEL_121;
        }

LABEL_56:
        v38 = *v29;
        v37 = v29[1];
        v39 = v37 + v14;
        if (*v29 - v37 < v14)
        {
          v14 = *v29 - v37;
        }

        v29[1] = v39;
        if (v38 <= v37 || v14 == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_121;
      }

      v84 = 0;
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, (a7 >> 32) - v16, SHIDWORD(a8));
      v29 = *(v12 + 32);
      if (v29)
      {
        goto LABEL_56;
      }
    }

LABEL_121:
    v80 = *(v12 + 16);
    do
    {
      v81 = *(v12 + 8) - v80;
      if (v81 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v80 = *(v12 + 16);
        v81 = *(v12 + 8) - v80;
      }

      if (v81 >= v14)
      {
        v82 = v14;
      }

      else
      {
        v82 = v81;
      }

      if (v82)
      {
        memmove((*v12 + v80), v11, v82);
        v80 = *(v12 + 16);
      }

      v80 += v82;
      *(v12 + 16) = v80;
      v11 += v82;
      v31 = v14 > v81;
      v14 -= v82;
    }

    while (v31);
    goto LABEL_63;
  }

  v83 = a7;
  v17 = *(a1 + 32);
  if (!v17)
  {
    goto LABEL_28;
  }

  v19 = *v17;
  v18 = v17[1];
  v20 = v18 + v14;
  if (*v17 - v18 < v14)
  {
    v14 = *v17 - v18;
  }

  v17[1] = v20;
  if (v19 > v18 && v14 != 0)
  {
LABEL_28:
    v30 = *(a1 + 16);
    do
    {
      v32 = *(v12 + 8) - v30;
      if (v32 < v14 + 1)
      {
        (*(v12 + 24))(v12, v14 + 2);
        v30 = *(v12 + 16);
        v32 = *(v12 + 8) - v30;
      }

      if (v32 >= v14)
      {
        v33 = v14;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        memmove((*v12 + v30), v11, v33);
        v30 = *(v12 + 16);
      }

      v30 += v33;
      *(v12 + 16) = v30;
      v11 += v33;
      v31 = v14 > v32;
      v14 -= v33;
    }

    while (v31);
  }

  if (v13 <= v16)
  {
    v84 = 0;
    v8 = v83;
    goto LABEL_63;
  }

  v22 = v13 - v16;
  v23 = *(v12 + 32);
  if (!v23)
  {
    v26 = v13 - v16;
    v8 = v83;
    goto LABEL_45;
  }

  v25 = *v23;
  v24 = v23[1];
  if (*v23 - v24 >= v22)
  {
    v26 = v13 - v16;
  }

  else
  {
    v26 = *v23 - v24;
  }

  v23[1] = v24 + v22;
  v27 = v25 <= v24 || v26 == 0;
  v8 = v83;
  if (!v27)
  {
LABEL_45:
    v34 = *(v12 + 16);
    do
    {
      v35 = *(v12 + 8) - v34;
      if (v35 < v26 + 1)
      {
        (*(v12 + 24))(v12, v26 + 2);
        v34 = *(v12 + 16);
        v35 = *(v12 + 8) - v34;
      }

      if (v35 >= v26)
      {
        v36 = v26;
      }

      else
      {
        v36 = v35;
      }

      if (v36)
      {
        memset((*v12 + v34), 48, v36);
        v34 = *(v12 + 16);
      }

      v34 += v36;
      *(v12 + 16) = v34;
      v31 = v26 > v35;
      v26 -= v36;
    }

    while (v31);
  }

  v84 = 0;
LABEL_63:
  v41 = *(a5 + 23);
  v42 = v41;
  v43 = a5 + v41;
  if (v42 >= 0)
  {
    v44 = v43;
  }

  else
  {
    v44 = (*a5 + a5[1]);
  }

  if (v42 >= 0)
  {
    v45 = a5;
  }

  else
  {
    v45 = *a5;
  }

  v46 = v45 + 1;
  v47 = v8 & 0xFF00;
  while (1)
  {
    v49 = v44 - 1;
    v48 = *(v44 - 1);
    if (v47 != 1792)
    {
      break;
    }

    v50 = &v10[v48];
    v51 = *(v12 + 32);
    if (!v51)
    {
      goto LABEL_94;
    }

    v53 = *v51;
    v52 = v51[1];
    v54 = v52 + v48;
    if (*v51 - v52 < v48)
    {
      v48 = *v51 - v52;
    }

    v51[1] = v54;
    if (v53 > v52 && v48 != 0)
    {
LABEL_94:
      v66 = *(v12 + 16);
      do
      {
        v67 = *(v12 + 8) - v66;
        if (v67 < v48 + 1)
        {
          (*(v12 + 24))(v12, v48 + 2);
          v66 = *(v12 + 16);
          v67 = *(v12 + 8) - v66;
        }

        if (v67 >= v48)
        {
          v68 = v48;
        }

        else
        {
          v68 = v67;
        }

        if (v68)
        {
          v69 = (*v12 + v66);
          v70 = v68;
          v71 = v10;
          do
          {
            v73 = *v71++;
            v72 = v73;
            v74 = v73 - 32;
            if ((v73 - 97) < 6)
            {
              v72 = v74;
            }

            *v69++ = v72;
            --v70;
          }

          while (v70);
          v66 = *(v12 + 16);
        }

        v10 += v68;
        v66 += v68;
        *(v12 + 16) = v66;
        v31 = v48 > v67;
        v48 -= v68;
      }

      while (v31);
    }

    v10 = v50;
    if (v44 == v46)
    {
      goto LABEL_118;
    }

LABEL_90:
    v61 = *(v12 + 32);
    if (v61)
    {
      v63 = *v61;
      v62 = v61[1];
      v61[1] = v62 + 1;
      --v44;
      if (v62 >= v63)
      {
        continue;
      }
    }

    v64 = *v12;
    v65 = *(v12 + 16);
    *(v12 + 16) = v65 + 1;
    *(v64 + v65) = a6;
    v44 = v49;
    if (*(v12 + 16) == *(v12 + 8))
    {
      (*(v12 + 24))(v12, 2);
      v44 = v49;
    }
  }

  v56 = *(v12 + 32);
  if (!v56)
  {
    goto LABEL_108;
  }

  v58 = *v56;
  v57 = v56[1];
  v59 = v57 + v48;
  if (*v56 - v57 < v48)
  {
    v48 = *v56 - v57;
  }

  v56[1] = v59;
  if (v58 > v57 && v48 != 0)
  {
LABEL_108:
    v75 = *(v12 + 16);
    v76 = v10;
    do
    {
      v77 = *(v12 + 8) - v75;
      if (v77 < v48 + 1)
      {
        (*(v12 + 24))(v12, v48 + 2);
        v75 = *(v12 + 16);
        v77 = *(v12 + 8) - v75;
      }

      if (v77 >= v48)
      {
        v78 = v48;
      }

      else
      {
        v78 = v77;
      }

      if (v78)
      {
        memmove((*v12 + v75), v76, v78);
        v75 = *(v12 + 16);
      }

      v75 += v78;
      *(v12 + 16) = v75;
      v76 += v78;
      v31 = v48 > v77;
      v48 -= v78;
    }

    while (v31);
  }

  v10 += *v49;
  if (v44 != v46)
  {
    goto LABEL_90;
  }

LABEL_118:

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v12, v84, v85);
}

uint64_t std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v8 = a1;
  v9 = a2 - a1;
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v27 = v10 >> 1;
        v10 -= v10 >> 1;
        *__c = HIDWORD(a5);
        v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v27, SHIDWORD(a5));
        v12 = *(v11 + 32);
        if (!v12)
        {
          goto LABEL_41;
        }

        goto LABEL_31;
      }
    }

    else if ((a4 & 7) != 0)
    {
      *__c = HIDWORD(a5);
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, 0, SHIDWORD(a5));
      v12 = *(v11 + 32);
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_31;
    }

    v10 = 0;
    *__c = HIDWORD(a5);
    v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, (a4 >> 32) - (a2 - a1), SHIDWORD(a5));
    v12 = *(v11 + 32);
    if (!v12)
    {
LABEL_41:
      v32 = *(v11 + 16);
      do
      {
        v33 = *(v11 + 8) - v32;
        if (v33 < v9 + 1)
        {
          (*(v11 + 24))(v11, v9 + 2);
          v32 = *(v11 + 16);
          v33 = *(v11 + 8) - v32;
        }

        if (v33 >= v9)
        {
          v34 = v9;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          v35 = (*v11 + v32);
          v36 = v34;
          v37 = v8;
          do
          {
            v38 = *v37++;
            *v35++ = a6(v38);
            --v36;
          }

          while (v36);
          v32 = *(v11 + 16);
        }

        v8 += v34;
        v32 += v34;
        *(v11 + 16) = v32;
        v20 = v9 > v33;
        v9 -= v34;
      }

      while (v20);
LABEL_38:

      return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, v10, __c[0]);
    }

LABEL_31:
    v29 = *v12;
    v28 = v12[1];
    v30 = v28 + v9;
    if (*v12 - v28 < v9)
    {
      v9 = *v12 - v28;
    }

    v12[1] = v30;
    if (v29 <= v28 || v9 == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  v13 = *(a3 + 32);
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = *v13;
  v14 = v13[1];
  v16 = v14 + v9;
  if (*v13 - v14 < v9)
  {
    v9 = *v13 - v14;
  }

  v13[1] = v16;
  if (v15 > v14 && v9 != 0)
  {
LABEL_15:
    v19 = *(a3 + 16);
    do
    {
      v21 = *(a3 + 8) - v19;
      if (v21 < v9 + 1)
      {
        (*(a3 + 24))(a3, v9 + 2);
        v19 = *(a3 + 16);
        v21 = *(a3 + 8) - v19;
      }

      if (v21 >= v9)
      {
        v22 = v9;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        v23 = (*a3 + v19);
        v24 = v22;
        v25 = v8;
        do
        {
          v26 = *v25++;
          *v23++ = a6(v26);
          --v24;
        }

        while (v24);
        v19 = *(a3 + 16);
      }

      v8 += v22;
      v19 += v22;
      *(a3 + 16) = v19;
      v20 = v9 > v21;
      v9 -= v22;
    }

    while (v20);
  }

  return a3;
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v13 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v13 % 0x64u];
        return a1 + 5;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = std::__itoa::__digits_base_10[v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = std::__itoa::__digits_base_10[v9 / 0x2710uLL];
        v9 %= 0x2710u;
        *(a1 + 5) = std::__itoa::__digits_base_10[v9 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v9 % 0x64u];
        return (a1 + 9);
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v11 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v11 % 0x64u];
        return a1 + 4;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = std::__itoa::__digits_base_10[v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = std::__itoa::__digits_base_10[v5 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v5 % 0x64u];
        return (a1 + 7);
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v6];
      v12 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v12 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v12 % 0x64u];
      return a1 + 3;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[(5243 * (a2 % 0x2710)) >> 19];
      *(a1 + 3) = std::__itoa::__digits_base_10[(a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      return (a1 + 5);
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v10];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      return a1 + 2;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      return (a1 + 3);
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    return a1 + 1;
  }

  else
  {
    *a1 = a2 | 0x30;
    return (a1 + 1);
  }
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x11)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 4;
      *(v6 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v6 -= 4;
      v8 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v8);
  }

  v9 = (v6 - 1);
  do
  {
    *v9-- = a01[v7 & 1];
    v8 = v7 > 1;
    v7 >>= 1;
  }

  while (v8);
  return v5;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x41)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 6;
      *(v6 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x40);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a01234567[v7 & 7];
    v9 = v7 > 7;
    v7 >>= 3;
  }

  while (v9);
  return v5;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v5 = a1 + v3;
  if (a3 < 0x101)
  {
    v7 = a3;
    v6 = v5;
  }

  else
  {
    v6 = a1 + v3;
    do
    {
      v7 = a3 >> 8;
      *(v6 - 2) = *&std::__itoa::__base_16_lut[2 * a3];
      v6 -= 2;
      a3 = v7;
    }

    while (v7 > 0x100);
  }

  v8 = (v6 - 1);
  do
  {
    *v8-- = a0123456789abcd_0[v7 & 0xF];
    v9 = v7 > 0xF;
    v7 >>= 4;
  }

  while (v9);
  return v5;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<char>(uint64_t a1, unsigned __int8 a2)
{
  v16 = 0;
  v17 = -1;
  v18 = 32;
  v19 = 0;
  v20 = 0;
  if ((**(a1 + 16) & 1) == 0)
  {
    v7 = *(a1 + 8);
    goto LABEL_14;
  }

  v4 = *a1;
  v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v16, *a1, 311);
  v6 = BYTE1(v16);
  if (BYTE1(v16) - 2 >= 6)
  {
    if (BYTE1(v16) > 0x13u || ((1 << SBYTE1(v16)) & 0x80401) == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
    }

    v9 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v16, 48, "a character", -1);
    if ((v16 & 7) == 0)
    {
      LOBYTE(v16) = v16 | 1;
    }

    v6 = BYTE1(v16);
    *v4 = v9;
    v7 = *(a1 + 8);
    if (v6 == 10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *v4 = v5;
    v7 = *(a1 + 8);
    if (v6 == 10)
    {
      goto LABEL_14;
    }
  }

  if (!v6)
  {
LABEL_14:
    v10 = *v7;
    v11 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v16, v7);
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v11, v12, 1);
    *v7 = result;
    return result;
  }

  v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v16, v7);
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v7, v14, v15, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<int>(uint64_t a1, int a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v13 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<long long>(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = -1;
  v16 = 32;
  v17 = 0;
  v18 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v14, *a1, 311);
    if (BYTE1(v14) - 2 >= 6 && BYTE1(v14) != 0)
    {
      if (BYTE1(v14) != 10)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
      }

      v13 = v5;
      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v14, 48, "an integer", -1);
      v5 = v13;
      if ((v14 & 7) == 0)
      {
        LOBYTE(v14) = v14 | 1;
      }
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v14, v7);
  if ((v9 & 0xFF00) == 0xA00)
  {
    if (a2 != a2)
    {
      std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
    }

    v10 = *v7;
    __src = a2;
    result = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v10, v9, v8, 1);
    *v7 = result;
  }

  else
  {
    if (a2 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = -a2;
    }

    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v12, v7, v9, v8, a2 < 0);
    *v7 = result;
  }

  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v9, a4, a5, v13, v10, v8, v12);
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
    result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v13, &v13[21], 0, 10);
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
  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v13, &v13[24], v5, 8);
LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
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
    MEMORY[0x29C26EB90](v93);
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