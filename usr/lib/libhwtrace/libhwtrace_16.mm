uint64_t sub_298BAC434(unsigned int a1)
{
  if (a1 >> 12 == 7)
  {
    return 9;
  }

  else
  {
    return dword_298D1AD50[(a1 >> 12) ^ 8];
  }
}

void sub_298BAC45C(uint64_t a1@<X8>)
{
  v2 = &unk_2A13C3000;
  if ((atomic_load_explicit(&qword_2A13C36B0, memory_order_acquire) & 1) == 0)
  {
    v4 = __cxa_guard_acquire(&qword_2A13C36B0);
    v2 = &unk_2A13C3000;
    if (v4)
    {
      dword_2A13C36A8 = getpagesize();
      __cxa_guard_release(&qword_2A13C36B0);
      v2 = &unk_2A13C3000;
    }
  }

  v3 = v2[426];
  if (v3 == -1)
  {
    if (*__error())
    {
      std::generic_category();
      operator new();
    }

    *(a1 + 8) |= 1u;
    *a1 = 0;
  }

  else
  {
    *(a1 + 8) &= ~1u;
    *a1 = v3;
  }
}

uint64_t sub_298BAC580(int a1)
{
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(a1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t sub_298BAC614(int a1)
{
  if (!isatty(a1))
  {
    return 0;
  }

  if ((atomic_load_explicit(&qword_2A13C2DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2DE8))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A13C2B20, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2DE8);
  }

  std::mutex::lock(&stru_2A13C2B20);
  v2 = set_curterm(0);
  v20 = 0;
  v3 = setupterm(0, a1, &v20);
  v4 = 0;
  if (!v3)
  {
    v5 = tigetnum("colors");
    if ((v5 & 0x80000000) == 0)
    {
      v4 = v5 != 0;
LABEL_44:
      v19 = set_curterm(v2);
      del_curterm(v19);
      goto LABEL_45;
    }

    v7 = getenv("TERM");
    v9 = v7;
    if (!v7)
    {
LABEL_43:
      v4 = (v9 != 0) & v8;
      goto LABEL_44;
    }

    v10 = strlen(v7);
    switch(v10)
    {
      case 6uLL:
        if (*v9 == 2003269987 && *(v9 + 2) == 28265)
        {
          goto LABEL_42;
        }

        break;
      case 5uLL:
        v11 = v9[4];
        v12 = *v9 == 1970170220;
        v13 = 120;
        goto LABEL_24;
      case 4uLL:
        if (*v9 == 1769172577 || *v9 == 1953921138)
        {
LABEL_42:
          v8 = 1;
          goto LABEL_43;
        }

        goto LABEL_41;
      default:
        if (v10 < 6)
        {
LABEL_41:
          v8 = 0;
          goto LABEL_43;
        }

        break;
    }

    v11 = *(v9 + 2);
    v12 = *v9 == 1701995379;
    v13 = 28261;
LABEL_24:
    if (v12 && v11 == v13)
    {
      goto LABEL_42;
    }

    if (*v9 == 1919251576 && v9[4] == 109)
    {
      goto LABEL_42;
    }

    v17 = *v9 == 808547446 && v9[4] == 48;
    if (v17 || *v9 == 1953921138)
    {
      goto LABEL_42;
    }

    if (*&v9[v10 - 5] == 1869377379 && v9[v10 - 1] == 114)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_45:
  std::mutex::unlock(&stru_2A13C2B20);
  return v4;
}

uint64_t sub_298BAC878(uint64_t a1, const void *a2, std::string::size_type a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43[2] = *MEMORY[0x29EDCA608];
  v39 = 261;
  v37.__r_.__value_.__r.__words[0] = a2;
  v37.__r_.__value_.__l.__size_ = a3;
  if (!sub_298BAB3F0(&v37, 0))
  {
    *&v37.__r_.__value_.__l.__data_ = 0uLL;
    v37.__r_.__value_.__r.__words[2] = &v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0;
    v42[0] = 0;
    v42[1] = 1;
    if (a5)
    {
      v15 = *a4;
      v14 = *(a4 + 8);
      v16 = sub_298AE0D6C(&v37, v14 + 1, 0);
      v17 = v16;
      if (v14)
      {
        memcpy(v16, v15, v14);
      }

      v17[v14] = 0;
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v36.__r_.__value_.__s + 23) = 12;
    strcpy(&v36, "Executable ");
    v12 = a2;
    if (a2)
    {
      v13 = a3;
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_298ADDDA0();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v35) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
        v13 = a3;
      }

      *(&__dst + v13) = 0;
      v19 = HIBYTE(v35);
      v12 = *(&__dst + 1);
      v18 = __dst;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      __dst = 0uLL;
      v35 = 0;
    }

    if ((v19 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v18;
    }

    if ((v19 & 0x80u) == 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v12;
    }

    v22 = std::string::append(&v36, p_dst, v21);
    v23 = v22->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v33 = 16;
    strcpy(__s, " doesn't exist!");
    v24 = std::string::append(&v37, __s, 0x10uLL);
    v25 = v24->__r_.__value_.__r.__words[0];
    v43[0] = v24->__r_.__value_.__l.__size_;
    *(v43 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
    v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v27 = v43[0];
    *a10 = v25;
    *(a10 + 8) = v27;
    *(a10 + 15) = *(v43 + 7);
    *(a10 + 23) = v26;
    if (v33 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if ((SHIBYTE(v35) & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }
    }

    else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v37.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
LABEL_28:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      operator delete(v36.__r_.__value_.__l.__data_);
      goto LABEL_29;
    }

LABEL_32:
    operator delete(__dst);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

LABEL_29:
  v28 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t sub_298BAD910(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v33.__sigaction_u.__sa_handler = nullsub_142;
    *&v33.sa_mask = 0;
    sigaction(14, &v33, &v32);
    alarm(a2);
    v31 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v31 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v31, v11, &v30);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v31, v11, &v30);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_27;
        }

        goto LABEL_31;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      goto LABEL_42;
    }

    if ((a2 & 0x100000000) != 0)
    {
      v13 = result;
      if (*__error() == 4 && (a5 & 1) == 0)
      {
        kill(*a1, 9);
        alarm(0);
        sigaction(14, &v32, 0);
        if (wait(&v31) != v10)
        {
          operator new();
        }

        if (!a3)
        {
          LODWORD(result) = v13;
          v29 = *MEMORY[0x29EDCA608];
          return result;
        }

        v37.__r_.__value_.__s.__data_[17] = 0;
        WORD1(v37.__r_.__value_.__r.__words[2]) = 0;
        HIDWORD(v37.__r_.__value_.__r.__words[2]) = 285212672;
        strcpy(&v37, "Child timed out:");
        __s = 0uLL;
        v35 = 0;
        v14 = std::string::append(&v37, &__s, 0);
        v15 = v14->__r_.__value_.__s.__data_[0];
        *v36 = *(&v14->__r_.__value_.__l.__data_ + 1);
        *&v36[14] = *(&v14->__r_.__value_.__r.__words[1] + 7);
        v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v15;
        *(a3 + 1) = *v36;
        *(a3 + 15) = *&v36[14];
        *(a3 + 23) = v16;
        LODWORD(result) = v13;
        if (SHIBYTE(v35) < 0)
        {
          operator delete(__s);
          LODWORD(result) = v13;
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
          LODWORD(result) = v13;
        }

        goto LABEL_48;
      }

      LODWORD(result) = v13;
    }

LABEL_27:
    v17 = result;
    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v17;
  }

  if ((a2 & 0x100000000) != 0)
  {
    v18 = result;
    alarm(0);
    sigaction(14, &v32, 0);
    LODWORD(result) = v18;
  }

LABEL_31:
  if (a4)
  {
    v19 = v30.ru_utime.tv_usec + 1000000 * v30.ru_utime.tv_sec;
    ru_maxrss = v30.ru_maxrss;
    v21 = *(a4 + 24);
    *a4 = v19 + 1000000 * v30.ru_stime.tv_sec + v30.ru_stime.tv_usec;
    *(a4 + 8) = v19;
    *(a4 + 16) = ru_maxrss;
    if ((v21 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v31 & 0x7F) != 0x7F)
  {
    if ((v31 & 0x7F) == 0)
    {
      if (BYTE1(v31) == 126)
      {
        if (a3)
        {
          v27 = result;
          MEMORY[0x29C294300](a3, "Program could not be executed");
          LODWORD(result) = v27;
        }
      }

      else if (BYTE1(v31) == 127 && a3)
      {
        v22 = result;
        __s = 0uLL;
        v35 = 0;
        v37.__r_.__value_.__s.__data_[0] = 0;
        strerror_r(2, &v37, 0x7CFuLL);
        MEMORY[0x29C294300](&__s, &v37);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = __s;
        *(a3 + 16) = v35;
LABEL_46:
        LODWORD(result) = v22;
        v25 = *MEMORY[0x29EDCA608];
        return result;
      }

      v28 = *MEMORY[0x29EDCA608];
      return result;
    }

    if (!a3)
    {
LABEL_48:
      v26 = *MEMORY[0x29EDCA608];
      return result;
    }

    v22 = result;
    v24 = strsignal(v31 & 0x7F);
    MEMORY[0x29C294300](a3, v24);
    if ((v31 & 0x80) != 0)
    {
      std::string::append(a3, " (core dumped)");
    }

    goto LABEL_46;
  }

LABEL_42:
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

double sub_298BADE2C@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42[32] = *MEMORY[0x29EDCA608];
  if (!__n || (v9 = memchr(__s, 47, __n)) == 0 || v9 - __s == -1)
  {
    v41[0] = v42;
    v41[1] = 0x1000000000;
    if (a4)
    {
      v10 = &a3[2 * a4];
      goto LABEL_11;
    }

    v21 = getenv("PATH");
    if (!v21 || (v22 = v21, v23 = strlen(v21), sub_298B96164(v22, v23, v41, ":", 1), !LODWORD(v41[1])))
    {
LABEL_34:
      *(a5 + 24) |= 1u;
      v24 = std::generic_category();
      *a5 = 2;
      *(a5 + 8) = v24;
LABEL_35:
      if (v41[0] != v42)
      {
        free(v41[0]);
      }

      v25 = *MEMORY[0x29EDCA608];
      return result;
    }

    a3 = v41[0];
    v10 = (v41[0] + 16 * LODWORD(v41[1]));
LABEL_11:
    while (1)
    {
      v11 = a3[1];
      if (v11)
      {
        break;
      }

LABEL_10:
      a3 += 2;
      if (a3 == v10)
      {
        goto LABEL_34;
      }
    }

    v12 = *a3;
    __src = v40;
    __len = xmmword_298D1A050;
    if (v11 < 0x81)
    {
      v13 = 0;
      v14 = v40;
    }

    else
    {
      sub_298B90C08(&__src, v40, v11, 1);
      v14 = __src;
      v13 = __len;
    }

    memcpy(&v14[v13], v12, v11);
    *&__len = __len + v11;
    v37 = 261;
    *&__dst = __s;
    *(&__dst + 1) = __n;
    v34 = 257;
    v32 = 257;
    v30 = 257;
    sub_298BA8944(&__src, 0, &__dst, &v33, &v31, &v29);
    if ((__len + 1) > *(&__len + 1))
    {
      sub_298B90C08(&__src, v40, __len + 1, 1);
      *(__src + __len) = 0;
      v15 = __src;
      v37 = 257;
      if (*__src)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(__src + __len) = 0;
      v15 = __src;
      v37 = 257;
      if (*__src)
      {
LABEL_17:
        *&__dst = v15;
        v16 = 3;
        goto LABEL_20;
      }
    }

    v16 = 1;
LABEL_20:
    LOBYTE(v37) = v16;
    v17 = sub_298BAB3F0(&__dst, 2);
    v18 = __src;
    v19 = v17;
    if (v17)
    {
      if (__src == v40)
      {
LABEL_9:
        if (!v19)
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v20 = __len;
      if (__len > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_39;
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v36) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v20) = 0;
      *(a5 + 24) &= ~1u;
      result = *&__dst;
      *a5 = __dst;
      *(a5 + 16) = v36;
      v18 = __src;
      if (__src == v40)
      {
        goto LABEL_9;
      }
    }

    free(v18);
    goto LABEL_9;
  }

  if (__n > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_39:
    sub_298ADDDA0();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  HIBYTE(v42[0]) = __n;
  memmove(v41, __s, __n);
  *(v41 + __n) = 0;
  *(a5 + 24) &= ~1u;
  result = *v41;
  *a5 = *v41;
  *(a5 + 16) = v42[0];
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BAE22C(uint64_t a1, const void **a2, int __errnum)
{
  v24 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_28;
  }

  v3 = __errnum;
  if (__errnum == -1)
  {
    v3 = *__error();
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v7 + 2 >= 0x17)
  {
    operator new();
  }

  memset(&v22, 0, sizeof(v22));
  *(&v22.__r_.__value_.__s + 23) = v7 + 2;
  if (v7)
  {
    if ((v6 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(&v22, v8, v7);
  }

  strcpy(&v22 + v7, ": ");
  __p = 0;
  v20 = 0;
  v21 = 0;
  if (v3)
  {
    __strerrbuf[0] = 0;
    strerror_r(v3, __strerrbuf, 0x7CFuLL);
    MEMORY[0x29C294300](&__p, __strerrbuf);
    v9 = HIBYTE(v21);
    v11 = __p;
    v10 = v20;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  if ((v9 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11;
  }

  if ((v9 & 0x80u) == 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = std::string::append(&v22, p_p, v13);
  v15 = v14->__r_.__value_.__s.__data_[0];
  *__strerrbuf = *(&v14->__r_.__value_.__l.__data_ + 1);
  *&__strerrbuf[14] = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v15;
  *(a1 + 1) = *__strerrbuf;
  *(a1 + 15) = *&__strerrbuf[14];
  *(a1 + 23) = v16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(v22.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return;
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BAE450(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    MEMORY[0x29C294300](&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      sub_298BAE22C(a3, &__dst.__r_.__value_.__l.__data_, -1);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  sub_298BAE22C(a3, &__dst.__r_.__value_.__l.__data_, -1);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

pthread_rwlock_t **sub_298BAE700(pthread_rwlock_t **a1)
{
  *a1 = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    sub_298B86A40("Allocation failed");
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *a1 = v3;
  return a1;
}

pthread_rwlock_t **sub_298BAE768(pthread_rwlock_t **a1)
{
  v2 = *a1;
  pthread_rwlock_destroy(*a1);
  free(v2);
  return a1;
}

uint64_t sub_298BAE7A0(unsigned __int8 *a1, unint64_t a2, uint64_t a3, int a4, void *a5)
{
  v151 = *MEMORY[0x29EDCA608];
  v104 = a1;
  v105 = a2;
  v103 = a3;
  v102 = a4;
  if ((byte_2A13C2DF0 & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || sub_298B96A54(&v104, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    goto LABEL_4;
  }

  v8 = std::system_category();
  v137 |= 1u;
  __p[0] = 0;
  __p[1] = v8;
  v9 = getenv("LLVM_SYMBOLIZER_PATH");
  if (v9)
  {
    v10 = v9;
    v11 = strlen(v9);
    sub_298BADE2C(v10, v11, 0, 0, buf);
    v12 = v137;
    if (v137)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (!v105)
  {
    goto LABEL_16;
  }

  *__s = sub_298BA9584(v104, v105, 0);
  *&v139 = v13;
  if (!v13)
  {
    if ((v137 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    sub_298BADE2C("llvm-symbolizer", 0xFuLL, 0, 0, buf);
    v12 = v137;
    if ((v137 & 1) == 0 && SHIBYTE(v136) < 0)
    {
      operator delete(__p[0]);
      v12 = v137;
      if ((BYTE8(v144) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((BYTE8(v144) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_4:
    result = 0;
    v7 = *MEMORY[0x29EDCA608];
    return result;
  }

  sub_298BADE2C("llvm-symbolizer", 0xFuLL, __s, 1, buf);
  v12 = v137;
  if ((v137 & 1) == 0)
  {
LABEL_7:
    if (SHIBYTE(v136) < 0)
    {
      operator delete(__p[0]);
      v12 = v137;
    }
  }

LABEL_9:
  if (BYTE8(v144))
  {
    v137 = v12 | 1;
    __p[0] = *buf;
    __p[1] = *&buf[8];
    goto LABEL_16;
  }

LABEL_19:
  v137 = v12 & 0xFE;
  *__p = *buf;
  v136 = v144;
LABEL_20:
  v119[4] = 261;
  v117 = v104;
  *&v118 = v105;
  if (sub_298BAB3F0(&v117, 0))
  {
    bufsize[0] = 1024;
    if (_NSGetExecutablePath(buf, bufsize) || !realpath_DARWIN_EXTSN(buf, __s))
    {
      *(&v101.__r_.__value_.__s + 23) = 0;
      v101.__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_27;
    }

    v15 = strlen(__s);
    v14 = __s;
  }

  else
  {
    v14 = v104;
    v15 = v105;
  }

  std::string::__init(&v101, v14, v15);
LABEL_27:
  v88 = a5;
  v128 = 0;
  *bufsize = 0;
  v129 = v131;
  v130 = 0x400000000;
  v132 = v134;
  v133 = 0;
  v134[0] = 0;
  v134[1] = 1;
  if (v102)
  {
    if ((v102 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v16 = _dyld_image_count();
  if (v16)
  {
    v17 = v16;
    for (i = 0; i != v17; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v100 = 0;
  v124 = v126;
  v125 = xmmword_298D1A0C0;
  v121 = v123;
  v122 = xmmword_298D1A0C0;
  *buf = "symbolizer-input";
  LOWORD(v145) = 259;
  sub_298BAA5F0(buf, "", 0, &v100, &v124, 1, 0);
  *buf = "symbolizer-output";
  LOWORD(v145) = 259;
  *__s = 0;
  v19 = sub_298BAA5F0(buf, "", 0, __s, &v121, 1, 0);
  if (!v19)
  {
    v19 = close(*__s);
  }

  v21 = v125;
  if ((v125 + 1) > *(&v125 + 1))
  {
    sub_298B90C08(&v124, v126, v125 + 1, 1);
    v21 = v125;
  }

  *(v124 + v21) = 0;
  v22 = *v124;
  *__s = v140;
  v139 = xmmword_298D1A050;
  v141 = 1;
  *&buf[8] = 0;
  BYTE8(v145) = 0;
  *&v146 = 0;
  *&v147 = __s;
  DWORD2(v146) = 0;
  *buf = &unk_2A1F1E0B8;
  v144 = 0uLL;
  *&v145 = 0;
  if (v22)
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  sub_298B99BA4(v19, buf, v124, v20, v23);
  sub_298B99BA4(v24, buf, v25, v26, 1);
  v27 = sub_298B9AE14(buf);
  v29 = v122;
  if ((v122 + 1) > *(&v122 + 1))
  {
    sub_298B90C08(&v121, v123, v122 + 1, 1);
    v29 = v122;
  }

  *(v121 + v29) = 0;
  v30 = *v121;
  v117 = v119;
  v118 = xmmword_298D1A050;
  v120 = 1;
  *&buf[8] = 0;
  BYTE8(v145) = 0;
  *&v146 = 0;
  *&v147 = &v117;
  DWORD2(v146) = 0;
  *buf = &unk_2A1F1E0B8;
  v144 = 0uLL;
  *&v145 = 0;
  if (v30)
  {
    v31 = 3;
  }

  else
  {
    v31 = 1;
  }

  sub_298B99BA4(v27, buf, v121, v28, v31);
  sub_298B99BA4(v32, buf, v33, v34, 1);
  sub_298B9AE14(buf);
  sub_298B9C8D4(v109, v100, 1, 0, 0);
  if (v102 >= 1)
  {
    for (j = 0; j < v102; ++j)
    {
      v36 = *(8 * j);
      if (v36)
      {
        v37 = strlen(*(8 * j));
        v38 = v112;
        if (v37 <= v111 - v112)
        {
          if (v37)
          {
            memcpy(v112, v36, v37);
            v38 = &v112[v37];
            v112 += v37;
          }
        }

        else
        {
          sub_298B9BCEC(v109, v36, v37);
          v38 = v112;
        }

        if (v111 == v38)
        {
          sub_298B9BCEC(v109, " ", 1uLL);
        }

        else
        {
          *v38 = 32;
          ++v112;
        }

        v39 = *(8 * j);
        v40 = (67 - __clz(v39)) >> 2;
        *&v41 = 0x3030303030303030;
        *(&v41 + 1) = 0x3030303030303030;
        v150 = v41;
        v149 = v41;
        if (v40 <= 1)
        {
          v40 = 1;
        }

        v42 = v40 + 2;
        v148 = v41;
        v147 = v41;
        v146 = v41;
        v145 = v41;
        *buf = v41;
        v144 = v41;
        buf[1] = 120;
        if (v39)
        {
          v43 = &buf[v42 - 1];
          do
          {
            *v43-- = a0123456789abcd_1[v39 & 0xF] | 0x20;
            v44 = v39 > 0xF;
            v39 >>= 4;
          }

          while (v44);
        }

        sub_298B9BCEC(v109, buf, v42);
        if (v111 == v112)
        {
          sub_298B9BCEC(v109, "\n", 1uLL);
        }

        else
        {
          *v112++ = 10;
        }
      }
    }
  }

  sub_298B9C9DC(v109);
  v109[0] = v124;
  v109[1] = v125;
  v110 = 1;
  v111 = v121;
  v112 = v122;
  v113 = 1;
  v114 = "";
  v115 = 0;
  v116 = 1;
  v108[0] = xmmword_29EEB60B8;
  v108[1] = *&off_29EEB60C8;
  v45 = SHIBYTE(v136);
  if (v136 >= 0)
  {
    v46 = __p;
  }

  else
  {
    v46 = __p[0];
  }

  v108[2] = xmmword_29EEB60D8;
  v108[3] = *&off_29EEB60E8;
  if ((SHIBYTE(v136) & 0x8000000000000000) != 0)
  {
    v45 = __p[1];
  }

  v47 = a5;
  LODWORD(v93) = 0;
  LODWORD(v94) = 0;
  buf[0] = 0;
  LOBYTE(v144) = 0;
  LODWORD(v87) = 0;
  if ((sub_298BAC878(&v93, v46, v45, v108, 4, buf, v109, 3, v87, 0) & 1) == 0)
  {
    v48 = 0;
    goto LABEL_76;
  }

  sub_298BAD910(&v93, 0, 0, 0, 0);
  v48 = 0;
  if (!v49)
  {
    v50 = v122;
    if ((v122 + 1) > *(&v122 + 1))
    {
      sub_298B90C08(&v121, v123, v122 + 1, 1);
      v50 = v122;
    }

    *(v121 + v50) = 0;
    LOWORD(v145) = 257;
    if (*v121)
    {
      *buf = v121;
      v51 = 3;
    }

    else
    {
      v51 = 1;
    }

    LOBYTE(v145) = v51;
    sub_298B8D930(buf, 0xFFFFFFFFFFFFFFFFLL, 0, 0, 1, 0, 0, &v106);
    v48 = 0;
    if ((v107 & 1) == 0)
    {
      v60 = v106[2] - v106[1];
      *&v99 = v106[1];
      *(&v99 + 1) = v60;
      *buf = &v144;
      *&buf[8] = 0x2000000000;
      sub_298B96E48(&v99, buf, "\n", 1uLL, -1, 1);
      v61 = *buf;
      v98 = 0;
      if (v102 < 1)
      {
        goto LABEL_179;
      }

      v62 = 0;
      while (1)
      {
        v93 = v47;
        v94 = &v98 + 4;
        v95 = &v102;
        v96 = &v103;
        v97 = &v98;
        if (*(8 * v62))
        {
          break;
        }

        sub_298BAF820(&v93);
        v63 = *(v47 + 32);
        if (v63 < *(v47 + 24))
        {
          goto LABEL_112;
        }

        v64 = *(v47 + 16);
        if (v64)
        {
LABEL_111:
          *(v47 + 32) = v64;
          sub_298B9BB84(v47);
          v63 = *(v47 + 32);
LABEL_112:
          *(v47 + 32) = v63 + 1;
          *v63 = 10;
          goto LABEL_166;
        }

        while (*(v47 + 56))
        {
          sub_298B9AE98(v88);
          v63 = v88[4];
          if (v63 < v88[3])
          {
            v47 = v88;
            goto LABEL_112;
          }

          v47 = v88;
          v64 = v88[2];
          if (v64)
          {
            goto LABEL_111;
          }
        }

        LOBYTE(v89[0]) = 10;
        v47 = v88;
        sub_298B9BB84(v88);
LABEL_166:
        v62 = v98 + 1;
        LODWORD(v98) = v62;
        if (v62 >= v102)
        {
          v61 = *buf;
LABEL_179:
          v48 = 1;
LABEL_180:
          if (v61 == &v144 || (v85 = v48, free(v61), v48 = v85, (v107 & 1) == 0))
          {
            if (v106)
            {
              v86 = v48;
              (*(*v106 + 8))(v106);
              v48 = v86;
            }
          }

          goto LABEL_76;
        }
      }

LABEL_115:
      v66 = *buf;
      if (v61 == *buf + 16 * *&buf[8])
      {
LABEL_174:
        v61 = v66;
        v48 = 0;
        goto LABEL_180;
      }

      while (1)
      {
        v67 = v61 + 16;
        v68 = *(v61 + 8);
        if (!v68)
        {
          v61 += 16;
          goto LABEL_166;
        }

        v69 = *v61;
        sub_298BAF820(&v93);
        if (v68 != 1 && *v69 == 16191)
        {
          goto LABEL_126;
        }

        v70 = *(v47 + 32);
        if (v68 <= *(v47 + 24) - v70)
        {
          memcpy(v70, v69, v68);
          v71 = (*(v47 + 32) + v68);
          *(v47 + 32) = v71;
        }

        else
        {
          sub_298B9BCEC(v47, v69, v68);
          v71 = *(v47 + 32);
        }

        if (v71 < *(v47 + 24))
        {
          goto LABEL_125;
        }

        v72 = *(v47 + 16);
        if (v72)
        {
          break;
        }

        while (*(v47 + 56))
        {
          sub_298B9AE98(v88);
          v71 = v88[4];
          if (v71 < v88[3])
          {
            v47 = v88;
            goto LABEL_125;
          }

          v47 = v88;
          v72 = v88[2];
          if (v72)
          {
            goto LABEL_124;
          }
        }

        LOBYTE(v89[0]) = 32;
        v47 = v88;
        sub_298B9BB84(v88);
        v66 = *buf;
        if (v67 == *buf + 16 * *&buf[8])
        {
          goto LABEL_174;
        }

LABEL_127:
        v73 = *(v61 + 16);
        v74 = *(v61 + 24);
        if (v74 < 2 || *v73 != 16191)
        {
          v75 = *(v47 + 32);
          if (v74 > *(v47 + 24) - v75)
          {
            sub_298B9BCEC(v47, v73, v74);
            v65 = *(v47 + 32);
            if (*(v47 + 24) != v65)
            {
              goto LABEL_114;
            }

            goto LABEL_148;
          }

          if (v74)
          {
            v76 = *(v61 + 24);
            memcpy(v75, v73, v74);
            v77 = *(v47 + 32) + v76;
            goto LABEL_146;
          }

          goto LABEL_147;
        }

        v78 = *(v47 + 32);
        if (*(v47 + 24) == v78)
        {
          sub_298B9BCEC(v47, "(", 1uLL);
          v79 = *(v47 + 32);
        }

        else
        {
          *v78 = 40;
          v79 = (*(v47 + 32) + 1);
          *(v47 + 32) = v79;
        }

        v80 = *(8 * v98);
        if (v80)
        {
          v81 = strlen(*(8 * v98));
          v82 = v81;
          if (v81 <= *(v47 + 24) - v79)
          {
            if (v81)
            {
              memcpy(v79, v80, v81);
              v79 = (*(v47 + 32) + v82);
              *(v47 + 32) = v79;
            }
          }

          else
          {
            sub_298B9BCEC(v47, v80, v81);
            v79 = *(v47 + 32);
          }
        }

        if (v79 < *(v47 + 24))
        {
          goto LABEL_143;
        }

        v83 = *(v47 + 16);
        if (v83)
        {
LABEL_142:
          *(v47 + 32) = v83;
          sub_298B9BB84(v47);
          v79 = *(v47 + 32);
LABEL_143:
          *(v47 + 32) = v79 + 1;
          *v79 = 43;
          goto LABEL_144;
        }

        while (*(v47 + 56))
        {
          sub_298B9AE98(v88);
          v79 = v88[4];
          if (v79 < v88[3])
          {
            v47 = v88;
            goto LABEL_143;
          }

          v47 = v88;
          v83 = v88[2];
          if (v83)
          {
            goto LABEL_142;
          }
        }

        LOBYTE(v89[0]) = 43;
        v47 = v88;
        sub_298B9BB84(v88);
LABEL_144:
        v89[0] = *(8 * v98);
        v89[1] = 0;
        v90 = 0;
        v91 = 1;
        v92 = 1;
        sub_298B9C414(v47, v89);
        v84 = *(v47 + 32);
        if (*(v47 + 24) != v84)
        {
          *v84 = 41;
          v77 = *(v47 + 32) + 1;
LABEL_146:
          *(v47 + 32) = v77;
LABEL_147:
          v65 = *(v47 + 32);
          if (*(v47 + 24) != v65)
          {
            goto LABEL_114;
          }

          goto LABEL_148;
        }

        sub_298B9BCEC(v47, ")", 1uLL);
        v65 = *(v47 + 32);
        if (*(v47 + 24) != v65)
        {
LABEL_114:
          *v65 = 10;
          ++*(v47 + 32);
          v61 += 32;
          goto LABEL_115;
        }

LABEL_148:
        sub_298B9BCEC(v47, "\n", 1uLL);
        v61 += 32;
        v66 = *buf;
        if (v61 == *buf + 16 * *&buf[8])
        {
          goto LABEL_174;
        }
      }

LABEL_124:
      *(v47 + 32) = v72;
      sub_298B9BB84(v47);
      v71 = *(v47 + 32);
LABEL_125:
      *(v47 + 32) = v71 + 1;
      *v71 = 32;
LABEL_126:
      v66 = *buf;
      if (v67 == *buf + 16 * *&buf[8])
      {
        goto LABEL_174;
      }

      goto LABEL_127;
    }
  }

LABEL_76:
  v52 = v48;
  if (v120 == 1)
  {
    LOWORD(v145) = 261;
    *buf = v117;
    *&buf[8] = v118;
    sub_298BAB094(buf, 1);
  }

  if (v117 != v119)
  {
    free(v117);
  }

  if (v141 == 1)
  {
    LOWORD(v145) = 261;
    *buf = *__s;
    *&buf[8] = v139;
    sub_298BAB094(buf, 1);
  }

  if (*__s != v140)
  {
    free(*__s);
  }

  if (v121 != v123)
  {
    free(v121);
  }

  if (v124 != v126)
  {
    free(v124);
  }

  if (v130)
  {
    v53 = v129;
    v54 = 8 * v130;
    do
    {
      v55 = *v53++;
      MEMORY[0x29C2945E0](v55, 8);
      v54 -= 8;
    }

    while (v54);
  }

  v56 = v132;
  if (v133)
  {
    v57 = 16 * v133;
    do
    {
      v58 = *v56;
      v56 += 2;
      MEMORY[0x29C2945E0](v58, 8);
      v57 -= 16;
    }

    while (v57);
    v56 = v132;
  }

  if (v56 != v134)
  {
    free(v56);
  }

  if (v129 != v131)
  {
    free(v129);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
    if ((v137 & 1) == 0)
    {
LABEL_101:
      if (SHIBYTE(v136) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if ((v137 & 1) == 0)
  {
    goto LABEL_101;
  }

  result = v52;
  v59 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BAF820(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v16[0] = "#{0}";
  v16[1] = 4;
  v16[2] = &v19;
  v16[3] = 1;
  v17 = &unk_2A1F1E138;
  v18 = v4;
  v19 = &v17;
  __p = 0;
  v21 = 0;
  v22 = 0;
  LODWORD(v24) = 0;
  v28 = 0;
  v29 = 0;
  p_p = &__p;
  v31 = &__p;
  v30 = 0;
  v23 = &unk_2A1F1E040;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_298B9BEC0(v16, &v23);
  if (v27 != v25)
  {
    v27 = v25;
    sub_298B9BB84(&v23);
  }

  sub_298B9AE14(&v23);
  v6 = SHIBYTE(v22);
  if (v22 < 0)
  {
    p_p = __p;
  }

  if ((SHIBYTE(v22) & 0x8000000000000000) != 0)
  {
    v6 = v21;
  }

  v7 = log10(**(a1 + 16));
  v23 = p_p;
  v24 = v6;
  LODWORD(v25) = (v7 + 2.0);
  HIDWORD(v25) = 2;
  sub_298B9C2A8(v3, &v23);
  v8 = *(v3 + 32);
  if (v8 < *(v3 + 24))
  {
LABEL_13:
    *(v3 + 32) = v8 + 1;
    *v8 = 32;
  }

  else
  {
    while (1)
    {
      v9 = *(v3 + 16);
      if (v9)
      {
        *(v3 + 32) = v9;
        sub_298B9BB84(v3);
        v8 = *(v3 + 32);
        goto LABEL_13;
      }

      if (!*(v3 + 56))
      {
        break;
      }

      sub_298B9AE98(v3);
      v8 = *(v3 + 32);
      if (v8 < *(v3 + 24))
      {
        goto LABEL_13;
      }
    }

    LOBYTE(v12[0]) = 32;
    sub_298B9BB84(v3);
  }

  v12[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v12[1] = 0;
  v13 = 18;
  v14 = 1;
  v15 = 1;
  sub_298B9C414(v3, v12);
  v10 = *(v3 + 32);
  if (v10 < *(v3 + 24))
  {
LABEL_20:
    *(v3 + 32) = v10 + 1;
    *v10 = 32;
    if (SHIBYTE(v22) < 0)
    {
LABEL_24:
      operator delete(__p);
    }
  }

  else
  {
    while (1)
    {
      v11 = *(v3 + 16);
      if (v11)
      {
        *(v3 + 32) = v11;
        sub_298B9BB84(v3);
        v10 = *(v3 + 32);
        goto LABEL_20;
      }

      if (!*(v3 + 56))
      {
        break;
      }

      sub_298B9AE98(v3);
      v10 = *(v3 + 32);
      if (v10 < *(v3 + 24))
      {
        goto LABEL_20;
      }
    }

    v32 = 32;
    sub_298B9BB84(v3);
    if (SHIBYTE(v22) < 0)
    {
      goto LABEL_24;
    }
  }
}

uint64_t sub_298BAFAB4(const std::string::value_type *a1, std::string::size_type a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (v4 && *v4)
  {
    v10 = 261;
    v9[0] = a1;
    v9[1] = a2;
    if (sub_298BAB3F0(v9, 0))
    {
      bufsize = 1024;
      if (_NSGetExecutablePath(buf, &bufsize) || !realpath_DARWIN_EXTSN(buf, __s))
      {
        *(&v11.__r_.__value_.__s + 23) = 0;
        v11.__r_.__value_.__s.__data_[0] = 0;
      }

      else
      {
        v7 = strlen(__s);
        std::string::__init(&v11, __s, v7);
        if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      std::string::__init(&v11, a1, a2);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_11:
        operator delete(v11.__r_.__value_.__l.__data_);
        v8 = *MEMORY[0x29EDCA608];
        return 0;
      }
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return 0;
}

int *sub_298BAFBE0()
{
  result = __error();
  v1 = result;
  v2 = *result;
  v3 = atomic_load(&qword_2A13C3778);
  if (v3)
  {
    result = v3();
  }

  *v1 = v2;
  return result;
}

void sub_298BAFC20()
{
  if (!atomic_load_explicit(qword_2A13C2E70, memory_order_acquire))
  {
    sub_298B8D820(qword_2A13C2E70, sub_298B960E0, sub_298B96124);
  }

  v0 = qword_2A13C2E70[0];
  std::recursive_mutex::lock(qword_2A13C2E70[0]);
  if (!atomic_load(dword_2A13C2E28))
  {
    v2 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v3 = (&unk_2A13C2E88 + 24 * v2);
    sigaction(1, &v39, v3);
    LODWORD(v3[1].__sigaction_u.__sa_handler) = 1;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v4 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v5 = (&unk_2A13C2E88 + 24 * v4);
    sigaction(2, &v39, v5);
    LODWORD(v5[1].__sigaction_u.__sa_handler) = 2;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v6 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v7 = (&unk_2A13C2E88 + 24 * v6);
    sigaction(15, &v39, v7);
    LODWORD(v7[1].__sigaction_u.__sa_handler) = 15;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v8 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v9 = (&unk_2A13C2E88 + 24 * v8);
    sigaction(31, &v39, v9);
    LODWORD(v9[1].__sigaction_u.__sa_handler) = 31;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v10 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v11 = (&unk_2A13C2E88 + 24 * v10);
    sigaction(4, &v39, v11);
    LODWORD(v11[1].__sigaction_u.__sa_handler) = 4;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v12 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v13 = (&unk_2A13C2E88 + 24 * v12);
    sigaction(5, &v39, v13);
    LODWORD(v13[1].__sigaction_u.__sa_handler) = 5;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v14 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v15 = (&unk_2A13C2E88 + 24 * v14);
    sigaction(6, &v39, v15);
    LODWORD(v15[1].__sigaction_u.__sa_handler) = 6;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v16 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v17 = (&unk_2A13C2E88 + 24 * v16);
    sigaction(8, &v39, v17);
    LODWORD(v17[1].__sigaction_u.__sa_handler) = 8;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v18 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v19 = (&unk_2A13C2E88 + 24 * v18);
    sigaction(10, &v39, v19);
    LODWORD(v19[1].__sigaction_u.__sa_handler) = 10;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v20 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v21 = (&unk_2A13C2E88 + 24 * v20);
    sigaction(11, &v39, v21);
    LODWORD(v21[1].__sigaction_u.__sa_handler) = 11;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v22 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v23 = (&unk_2A13C2E88 + 24 * v22);
    sigaction(3, &v39, v23);
    LODWORD(v23[1].__sigaction_u.__sa_handler) = 3;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v24 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v25 = (&unk_2A13C2E88 + 24 * v24);
    sigaction(12, &v39, v25);
    LODWORD(v25[1].__sigaction_u.__sa_handler) = 12;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v26 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v27 = (&unk_2A13C2E88 + 24 * v26);
    sigaction(24, &v39, v27);
    LODWORD(v27[1].__sigaction_u.__sa_handler) = 24;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v28 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v29 = (&unk_2A13C2E88 + 24 * v28);
    sigaction(25, &v39, v29);
    LODWORD(v29[1].__sigaction_u.__sa_handler) = 25;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v30 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BB034C;
    *&v39.sa_mask = 0x1500000000;
    v31 = (&unk_2A13C2E88 + 24 * v30);
    sigaction(7, &v39, v31);
    LODWORD(v31[1].__sigaction_u.__sa_handler) = 7;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    if (atomic_load(qword_2A13C2E38))
    {
      v33 = atomic_load(dword_2A13C2E28);
      v39.__sigaction_u.__sa_handler = sub_298BB034C;
      *&v39.sa_mask = 0x1500000000;
      v34 = &dword_2A13C2E28[6 * v33];
      sigaction(13, &v39, v34 + 6);
      v34[28] = 13;
      atomic_fetch_add(dword_2A13C2E28, 1u);
    }

    v35 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BAFBE0;
    *&v39.sa_mask = 0x100000000;
    v36 = (&unk_2A13C2E88 + 24 * v35);
    sigaction(30, &v39, v36);
    LODWORD(v36[1].__sigaction_u.__sa_handler) = 30;
    atomic_fetch_add(dword_2A13C2E28, 1u);
    v37 = atomic_load(dword_2A13C2E28);
    v39.__sigaction_u.__sa_handler = sub_298BAFBE0;
    *&v39.sa_mask = 0x100000000;
    v38 = (&unk_2A13C2E88 + 24 * v37);
    sigaction(29, &v39, v38);
    LODWORD(v38[1].__sigaction_u.__sa_handler) = 29;
    atomic_fetch_add(dword_2A13C2E28, 1u);
  }

  std::recursive_mutex::unlock(v0);
}

void sub_298BB0030(const void *a1, size_t a2)
{
  if (!atomic_load_explicit(qword_2A13C2DF8, memory_order_acquire))
  {
    sub_298B8D820(qword_2A13C2DF8, sub_298BB0718, sub_298BB072C);
  }

  if (a1)
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v5) = a2;
    if (a2)
    {
      memmove(__p, a1, a2);
    }

    *(__p + a2) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
  }

  operator new();
}

void sub_298BB01B0(const void *a1, size_t a2)
{
  if (a1)
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = a2;
    if (a2)
    {
      memmove(__p, a1, a2);
    }

    *(__p + a2) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
  }

  if (!atomic_load_explicit(qword_2A13C2E10, memory_order_acquire))
  {
    sub_298B8D820(qword_2A13C2E10, sub_298B960E0, sub_298B96124);
  }

  v3 = qword_2A13C2E10[0];
  std::recursive_mutex::lock(qword_2A13C2E10[0]);
  for (i = &qword_2A13C3780; ; i = v5 + 1)
  {
    v5 = atomic_load(i);
    if (!v5)
    {
      break;
    }

    v6 = atomic_load(v5);
    if (v6 && sub_298BB06A0(v6, __p))
    {
      v8 = atomic_exchange(v5, 0);
      if (v8)
      {
        free(v8);
      }
    }
  }

  std::recursive_mutex::unlock(v3);
  if (SHIBYTE(v10) < 0)
  {
    v7 = __p[0];

    operator delete(v7);
  }
}

uint64_t sub_298BB034C(unsigned int a1)
{
  v2 = atomic_load(dword_2A13C2E28);
  if (v2)
  {
    v3 = &unk_2A13C2E88;
    do
    {
      sigaction(v3[1].__sigaction_u.__sa_handler, v3, 0);
      atomic_fetch_add(dword_2A13C2E28, 0xFFFFFFFF);
      v3 = (v3 + 24);
      --v2;
    }

    while (v2);
  }

  v18 = -1;
  result = sigprocmask(2, &v18, 0);
  v5 = atomic_exchange(&qword_2A13C3780, 0);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = atomic_exchange(v6, 0);
      if (v7)
      {
        result = stat(v7, &v19);
        if (!result && (v19.st_mode & 0xF000) == 0x8000)
        {
          result = unlink(v7);
          atomic_exchange(v6, v7);
        }
      }

      v6 = atomic_load((v6 + 8));
    }

    while (v6);
  }

  atomic_exchange(&qword_2A13C3780, v5);
  if (a1 <= 0x1F)
  {
    if (((1 << a1) & 0x80008006) != 0)
    {
      v8 = atomic_exchange(&qword_2A13C2E30, 0);
      if (v8)
      {
        return v8(result);
      }

      return raise(a1);
    }

    if (a1 == 13)
    {
      v9 = atomic_exchange(qword_2A13C2E38, 0);
      if (v9)
      {
        return v9(result);
      }

      return raise(a1);
    }
  }

  v10 = 2;
  v11 = 2;
  atomic_compare_exchange_strong(dword_2A13C36C8, &v11, 3u);
  if (v11 == 2)
  {
    result = qword_2A13C36B8(unk_2A13C36C0);
    qword_2A13C36B8 = 0;
    unk_2A13C36C0 = 0;
    atomic_store(0, dword_2A13C36C8);
  }

  atomic_compare_exchange_strong(dword_2A13C36E0, &v10, 3u);
  if (v10 == 2)
  {
    result = qword_2A13C36D0(*algn_2A13C36D8);
    qword_2A13C36D0 = 0;
    *algn_2A13C36D8 = 0;
    atomic_store(0, dword_2A13C36E0);
  }

  v12 = 2;
  v13 = 2;
  atomic_compare_exchange_strong(dword_2A13C36F8, &v13, 3u);
  if (v13 == 2)
  {
    result = qword_2A13C36E8(unk_2A13C36F0);
    qword_2A13C36E8 = 0;
    unk_2A13C36F0 = 0;
    atomic_store(0, dword_2A13C36F8);
  }

  atomic_compare_exchange_strong(dword_2A13C3710, &v12, 3u);
  if (v12 == 2)
  {
    result = qword_2A13C3700(*algn_2A13C3708);
    qword_2A13C3700 = 0;
    *algn_2A13C3708 = 0;
    atomic_store(0, dword_2A13C3710);
  }

  v14 = 2;
  v15 = 2;
  atomic_compare_exchange_strong(dword_2A13C3728, &v15, 3u);
  if (v15 == 2)
  {
    result = qword_2A13C3718(unk_2A13C3720);
    qword_2A13C3718 = 0;
    unk_2A13C3720 = 0;
    atomic_store(0, dword_2A13C3728);
  }

  atomic_compare_exchange_strong(dword_2A13C3740, &v14, 3u);
  if (v14 == 2)
  {
    result = qword_2A13C3730(*algn_2A13C3738);
    qword_2A13C3730 = 0;
    *algn_2A13C3738 = 0;
    atomic_store(0, dword_2A13C3740);
  }

  v16 = 2;
  v17 = 2;
  atomic_compare_exchange_strong(dword_2A13C3758, &v17, 3u);
  if (v17 == 2)
  {
    result = qword_2A13C3748(unk_2A13C3750);
    qword_2A13C3748 = 0;
    unk_2A13C3750 = 0;
    atomic_store(0, dword_2A13C3758);
    atomic_compare_exchange_strong(dword_2A13C3770, &v16, 3u);
    if (v16 == 2)
    {
LABEL_36:
      result = qword_2A13C3760(*algn_2A13C3768);
      qword_2A13C3760 = 0;
      *algn_2A13C3768 = 0;
      atomic_store(0, dword_2A13C3770);
    }
  }

  else
  {
    atomic_compare_exchange_strong(dword_2A13C3770, &v16, 3u);
    if (v16 == 2)
    {
      goto LABEL_36;
    }
  }

  return result;
}

BOOL sub_298BB06A0(const char *a1, void *a2)
{
  v4 = strlen(a1);
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    if (v4 == a2[1])
    {
      if (v4 == -1)
      {
        sub_298ADDDA0();
      }

      a2 = *a2;
      return memcmp(a2, a1, v4) == 0;
    }
  }

  else if (v4 == v5)
  {
    return memcmp(a2, a1, v4) == 0;
  }

  return 0;
}

uint64_t sub_298BB072C(uint64_t result)
{
  if (result)
  {
    v1 = atomic_exchange(&qword_2A13C3780, 0);
    if (v1)
    {
      v2 = sub_298BB07A0(v1);
      MEMORY[0x29C2945F0](v2, 0x30C40EEE2E2AFLL);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

atomic_ullong *sub_298BB07A0(atomic_ullong *a1)
{
  if (atomic_exchange(a1 + 1, 0))
  {
    v2 = sub_298BB07A0();
    MEMORY[0x29C2945F0](v2, 0x30C40EEE2E2AFLL);
  }

  v3 = atomic_exchange(a1, 0);
  if (v3)
  {
    free(v3);
  }

  return a1;
}

uint64_t sub_298BB07F4(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a1 + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_21;
    }

LABEL_15:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(a1 + 5))
    {
      result = v6;
    }

    else
    {
      result = v5;
    }

    goto LABEL_21;
  }

  if ((atomic_load_explicit(&qword_2A13C3040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C3040))
  {
    v10 = 0;
    v9 = 4;
    sysctlbyname("hw.physicalcpu", &v10, &v9, 0, 0);
    v8 = v10;
    if (!v10)
    {
      *v11 = 0x1900000006;
      sysctl(v11, 2u, &v10, &v9, 0, 0);
      v8 = v10;
      if (!v10)
      {
        v8 = -1;
      }
    }

    dword_2A13C3038 = v8;
    __cxa_guard_release(&qword_2A13C3040);
  }

  if (dword_2A13C3038 <= 1)
  {
    result = 1;
  }

  else
  {
    result = dword_2A13C3038;
  }

  v5 = *a1;
  if (*a1)
  {
    goto LABEL_15;
  }

LABEL_21:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

pthread_t sub_298BB0938(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v6 = pthread_attr_init(&v16);
  v15 = v6;
  if (v6)
  {
    sub_298BB0A38("pthread_attr_init failed", v6);
  }

  v13[0] = &v15;
  v13[1] = &v16;
  v14 = 1;
  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v16, a3);
    v15 = v7;
    if (v7)
    {
      sub_298BB0A38("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v16, a1, a2);
  v15 = v8;
  if (v8)
  {
    sub_298BB0A38("pthread_create failed", v8);
  }

  v9 = v12;
  sub_298BB0F20(v13);
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_298BB0A38(char *__s, int a2)
{
  memset(v5, 0, sizeof(v5));
  sub_298BB0E68(&v3, __s);
  sub_298BB0C4C(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  sub_298B868DC(&v3, 1);
}

uint64_t sub_298BB0A98(_opaque_pthread_t *a1)
{
  result = pthread_join(a1, 0);
  if (result)
  {
    sub_298BB0A38("pthread_join failed", result);
  }

  return result;
}

void sub_298BB0AC8(uint64_t a1)
{
  v22[8] = *MEMORY[0x29EDCA608];
  v20 = v22;
  v21 = xmmword_298D1AB80;
  v1 = *(a1 + 32);
  if (*(a1 + 33) != 1 || v1 < 2)
  {
LABEL_17:
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v19 = &v20;
    v18 = 0;
    v11 = &unk_2A1F1E0B8;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_298B99BA4(a1, &v11, *a1, *(a1 + 8), v1);
    sub_298B99BA4(v9, &v11, *(a1 + 16), *(a1 + 24), *(a1 + 33));
    sub_298B9AE14(&v11);
    sub_298B8CB34(&v20, 0);
    v3 = v20;
    v6 = v21 - 1;
    *&v21 = v21 - 1;
    goto LABEL_18;
  }

  switch(v1)
  {
    case 3u:
      v3 = *a1;
      if (!*a1)
      {
        pthread_setname_np(0);
        v4 = v20;
        if (v20 == v22)
        {
          goto LABEL_10;
        }

LABEL_9:
        free(v4);
        goto LABEL_10;
      }

      v6 = strlen(*a1);
      break;
    case 4u:
      v3 = *a1;
      v6 = *(*a1 + 23);
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = v3;
        v3 = *v3;
        v6 = *(v7 + 1);
      }

      break;
    case 6u:
      v3 = *a1;
      v6 = *(a1 + 8);
      break;
    default:
      goto LABEL_17;
  }

LABEL_18:
  v10 = v6 - 63;
  if (v6 < v6 - 63)
  {
    v10 = v6;
  }

  if (v6 <= 0x3F)
  {
    v10 = 0;
  }

  pthread_setname_np(&v3[v10]);
  v4 = v20;
  if (v20 != v22)
  {
    goto LABEL_9;
  }

LABEL_10:
  v5 = *MEMORY[0x29EDCA608];
}

void sub_298BB0C4C(uint64_t a1, const void **a2, int __errnum)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    goto LABEL_28;
  }

  v3 = __errnum;
  if (__errnum == -1)
  {
    v3 = *__error();
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  if (v7 + 2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v7 + 2 >= 0x17)
  {
    operator new();
  }

  memset(&v23, 0, sizeof(v23));
  *(&v23.__r_.__value_.__s + 23) = v7 + 2;
  if (v7)
  {
    if ((v6 & 0x80u) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(&v23, v8, v7);
  }

  strcpy(&v23 + v7, ": ");
  __p = 0;
  v21 = 0;
  v22 = 0;
  if (v3)
  {
    __strerrbuf[0] = 0;
    strerror_r(v3, __strerrbuf, 0x7CFuLL);
    MEMORY[0x29C294300](&__p, __strerrbuf);
    v9 = HIBYTE(v22);
    v11 = __p;
    v10 = v21;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  if ((v9 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = v11;
  }

  if ((v9 & 0x80u) == 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = std::string::append(&v23, p_p, v13);
  v15 = v14->__r_.__value_.__r.__words[0];
  *__strerrbuf = v14->__r_.__value_.__l.__size_;
  *&__strerrbuf[7] = *(&v14->__r_.__value_.__r.__words[1] + 7);
  v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v17 = *__strerrbuf;
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 15) = *&__strerrbuf[7];
  *(a1 + 23) = v16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(v23.__r_.__value_.__l.__data_);
    v19 = *MEMORY[0x29EDCA608];
    return;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  v18 = *MEMORY[0x29EDCA608];
}

_BYTE *sub_298BB0E68(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_298BB0F20(uint64_t a1)
{
  result = pthread_attr_destroy(*(a1 + 8));
  **a1 = result;
  if (result)
  {
    sub_298BB0A38("pthread_attr_destroy failed", result);
  }

  return result;
}

void sub_298BB0F64()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v26 = *MEMORY[0x29EDCA608];
  LOBYTE(__p[0]) = 0;
  v21 = 0;
  bzero(__s, 0x4000uLL);
  v18 = 0x4000;
  if (sysctlbyname("kern.bootargs", __s, &v18, 0, 0))
  {
    std::generic_category();
    v10[0] = "BootArgs.cpp";
    v10[2] = ":";
    v11 = 771;
    v9 = 2;
    strcpy(v8, "32");
    v12[0] = v10;
    v12[2] = v8;
    v13 = 1026;
    v14[0] = v12;
    v14[2] = ": ";
    v15 = 770;
    v16[0] = v14;
    v16[2] = "Couldn't check boot-args.\n";
    v17 = 770;
    sub_298B996A4(v16, &v22);
    operator new();
  }

  v2 = strlen(__s);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v3 = v2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = v2;
  if (v2)
  {
    memcpy(&__dst, __s, v2);
    *(&__dst + v3) = 0;
    if (v21 == 1)
    {
      goto LABEL_7;
    }

LABEL_12:
    *__p = __dst;
    v20 = v24;
    v21 = 1;
    goto LABEL_13;
  }

  LOBYTE(__dst) = 0;
  if (v21 != 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  *__p = __dst;
  v20 = v24;
LABEL_13:
  if (v20 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v20 >= 0)
  {
    v5 = SHIBYTE(v20);
  }

  else
  {
    v5 = __p[1];
  }

  v6 = sub_298BB12A4(v4, v5);
  *(v1 + 8) &= ~1u;
  *v1 = v6;
  if ((v21 & 1) != 0 && SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BB12A4(_BYTE *a1, size_t __n)
{
  v27 = *MEMORY[0x29EDCA608];
  v21 = a1;
  v22 = __n;
  if (__n)
  {
    v2 = __n;
    v4 = memchr(a1, 9, __n);
    if (!v4 || v4 - a1 == -1)
    {
      goto LABEL_9;
    }

    LOBYTE(__s2) = 9;
    v5 = sub_298B96A54(&v21, &__s2, 1uLL, 0);
    if (v5 != -1)
    {
      v6 = v22;
      v7 = v22 >= v5 + 1 ? v5 + 1 : v22;
      v2 = v22 - v7;
      v21 += v7;
      v22 -= v7;
      if (v6 > v5 + 1)
      {
LABEL_9:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        __s2 = 0x100003E00;
        if (v2)
        {
          v8 = 0;
          while (((*(&__s2 + ((v21[v8] >> 3) & 0x18)) >> v21[v8]) & 1) != 0)
          {
            if (v2 == ++v8)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:
          v8 = -1;
        }

        if (v8 >= v2)
        {
          v8 = v2;
        }

        v21 += v8;
        v22 = v2 - v8;
        LOBYTE(__s2) = 32;
        v9 = sub_298B96A54(&v21, &__s2, 1uLL, 0);
        if (v9 == -1)
        {
          v10 = v21;
          v11 = v22;
          v21 = 0;
          v22 = 0;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          __s2 = 0x100003E00;
          if (!v11)
          {
LABEL_29:
            v13 = -1;
            goto LABEL_30;
          }
        }

        else
        {
          v10 = v21;
          if (v9 >= v22)
          {
            v11 = v22;
          }

          else
          {
            v11 = v9;
          }

          if (v22 >= v9 + 1)
          {
            v12 = v9 + 1;
          }

          else
          {
            v12 = v22;
          }

          v21 += v12;
          v22 -= v12;
          v24 = 0;
          v25 = 0;
          v26 = 0;
          __s2 = 0x100003E00;
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        v13 = 0;
        while (((*(&__s2 + ((*(v10 + v13) >> 3) & 0x18)) >> *(v10 + v13)) & 1) != 0)
        {
          if (v11 == ++v13)
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        if (v13 >= v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v13;
        }

        v15 = v11 - v14;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        __s2 = 0x100003E00;
        v16 = (v10 + v11 - 1);
        v17 = v15;
        do
        {
          if (!v17)
          {
            break;
          }

          v18 = *v16--;
          --v17;
        }

        while (((*(&__s2 + ((v18 >> 3) & 0x18)) >> v18) & 1) != 0);
        operator new();
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_298BB1C78(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v123[6] = *MEMORY[0x29EDCA608];
  if (*(a1 + 56) == 1 && ((v5 = *(a1 + 24), v5 > a2) || v5 == a2 && *(a1 + 32) > a3) || !*(a1 + 64))
  {
    v54 = a2;
    v55 = a3;
    v56 = a4;
    LOBYTE(v115[0]) = 0;
    *__p = 0u;
    v118 = 0u;
    v119 = 0u;
    v122 = 0x600000000;
    v57 = v115[0];
    *(a1 + 40) = v115[1];
    v58 = *(a1 + 16);
    LOBYTE(v116) = 0;
    *(&v116 + 1) = v58;
    v120 = 0;
    __src = v123;
    *(a1 + 24) = v57;
    *(a1 + 56) = v116;
    sub_298BBBB74((a1 + 72), __p);
    *(a1 + 120) = v120;
    v59 = (a1 + 128);
    if ((a1 + 128) == &__src)
    {
      goto LABEL_65;
    }

    v60 = __src;
    if (__src != v123)
    {
      v94 = *(a1 + 128);
      if (v94 != (a1 + 144))
      {
        free(v94);
        v60 = __src;
      }

      *(a1 + 128) = v60;
      *(a1 + 136) = v122;
      __src = v123;
      HIDWORD(v122) = 0;
      goto LABEL_64;
    }

    v61 = v122;
    v62 = *(a1 + 136);
    if (v62 >= v122)
    {
      if (v122)
      {
        memmove(*v59, __src, 8 * v122);
      }

LABEL_63:
      *(a1 + 136) = v61;
LABEL_64:
      LODWORD(v122) = 0;
LABEL_65:
      if (__src != v123)
      {
        free(__src);
      }

      v63 = __p[1];
      v64 = v118;
      *(&v119 + 1) = 0;
      v65 = (v118 - __p[1]) >> 3;
      if (v65 >= 3)
      {
        operator delete(*__p[1]);
        v64 = v118;
        v63 = (__p[1] + 8);
        __p[1] = v63;
        v65 = (v118 - v63) >> 3;
        if (v65 >= 3)
        {
          operator delete(*v63);
          v64 = v118;
          v63 = (__p[1] + 8);
          __p[1] = v63;
          v65 = (v118 - v63) >> 3;
          if (v65 >= 3)
          {
            do
            {
              operator delete(*v63);
              v64 = v118;
              v63 = (__p[1] + 8);
              __p[1] = v63;
              v65 = (v118 - v63) >> 3;
            }

            while (v65 > 2);
          }
        }
      }

      if (v65 == 1)
      {
        v66 = 256;
      }

      else
      {
        if (v65 != 2)
        {
          goto LABEL_83;
        }

        v66 = 512;
      }

      *&v119 = v66;
LABEL_83:
      if (v63 != v64)
      {
        do
        {
          v83 = *v63++;
          operator delete(v83);
        }

        while (v63 != v64);
        if (v118 != __p[1])
        {
          *&v118 = v118 + ((__p[1] - v118 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v84 = *(a1 + 64);
      v85 = *v84;
      v49 = v84 + 1;
      v7 = v85;
      a4 = v56;
      a3 = v55;
      a2 = v54;
      goto LABEL_52;
    }

    if (*(a1 + 140) >= v122)
    {
      if (v62)
      {
        memmove(*v59, __src, 8 * v62);
LABEL_104:
        if (v122 != v62)
        {
          memcpy(*v59 + 8 * v62, __src + 8 * v62, 8 * (v122 - v62));
        }

        goto LABEL_63;
      }
    }

    else
    {
      *(a1 + 136) = 0;
      sub_298B90A44(a1 + 128, (a1 + 144), v61, 8);
    }

    v62 = 0;
    goto LABEL_104;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v7 != a2 || v6 != a3)
  {
    v9 = v6 + 1;
    if ((v6 + 1) < *(*(*a1 + 8 * v7) + 184))
    {
LABEL_11:
      v10 = 0;
      v11 = v7 >> 8;
      while (1)
      {
        v12 = v9;
        v13 = v7 | (v11 << 8);
        if (v13 >= a2 && (v13 != a2 || v9 > a3))
        {
          goto LABEL_53;
        }

        v14 = *(*a1 + 8 * v13);
        v15 = v9 + 1;
        if (v9 + 1 >= *(v14 + 184))
        {
          v7 = v13 + 1;
          if (v13 + 1 >= *(a1 + 8))
          {
            v16 = 0;
            v7 = 0;
          }

          else
          {
            v9 = *(*(*a1 + 8 * v7) + 176);
            v10 = v7 >> 8;
            v16 = 1;
          }
        }

        else
        {
          v16 = 1;
          v7 = v7 | (v11 << 8);
          v10 = v11;
          ++v9;
        }

        v17 = (*(a1 + 56) & 1) != 0 ? (*(a1 + 48) >> 22) & 0xF : *(*(a1 + 64) + 72);
        v105 = *(a1 + 40);
        v113 = a4;
        v114 = **(v14 + 8);
        if (*a4 == v114)
        {
          v18 = a4[1];
        }

        else
        {
          v110 = v17;
          v104 = v16;
          v44 = v12;
          v107 = v10;
          v45 = a2;
          v46 = a3;
          *&v115[0] = &v114;
          v47 = a4;
          v48 = sub_298C0E688(a4 + 2, &v114);
          v18 = v48[3];
          if (!v18)
          {
            v51 = v48;
            (*(**(v114 + 96) + 24))(v115, *(v114 + 96));
            v52 = *&v115[0];
            *&v115[0] = 0;
            v53 = v51[3];
            v51[3] = v52;
            if (v53)
            {
              (*(*v53 + 8))(v53);
              v95 = *&v115[0];
              *&v115[0] = 0;
              if (v95)
              {
                (*(*v95 + 8))(v95);
              }
            }

            v18 = v51[3];
            v47 = v113;
          }

          *v47 = v114;
          v47[1] = v18;
          a3 = v46;
          a2 = v45;
          v10 = v107;
          v12 = v44;
          v16 = v104;
          v17 = v110;
        }

        v19 = v18[3];
        if (v19 > v12)
        {
          break;
        }

        if (v18[4] + v19 <= v12)
        {
          v109 = v17;
          v106 = v13;
          v20 = v16;
          v21 = v10;
          v22 = v7;
          v23 = v9;
          v24 = a2;
          v25 = a3;
          v42 = v18[8];
          v28 = v12;
          v19 = v12;
LABEL_23:
          v30 = v18[5];
          v29 = v18 + 5;
          v29[1] = v30;
          v31 = *(v29 - 3);
          (*(**(v29 - 4) + 32))(*(v29 - 4), v19);
          v32 = *v29;
          v33 = 0xAAAAAAAAAAAAAAABLL * ((v29[1] - *v29) >> 2);
          *(v29 - 2) = v19;
          *(v29 - 1) = v33;
          a3 = v25;
          a2 = v24;
          v9 = v23;
          v7 = v22;
          v10 = v21;
          v12 = v28;
          v16 = v20;
          v13 = v106;
          v17 = v109;
          goto LABEL_24;
        }

        v32 = v18[5];
LABEL_24:
        v34 = (v32 + 12 * (v12 - v19));
        v35 = *v34;
        v36 = *(v34 + 2);
        v37 = *(a1 + 56);
        *(a1 + 24) = v13;
        *(a1 + 32) = v12;
        if (v37 == 1)
        {
          *(a1 + 40) = v35;
          *(a1 + 48) = v36;
        }

        else
        {
          *(a1 + 56) = 1;
          *(a1 + 40) = v35;
          *(a1 + 48) = v36;
          v112 = v7;
          v96 = v9;
          v97 = a2;
          v98 = a3;
          v99 = v10;
          v100 = v13;
          v101 = v16;
          v102 = v12;
          v103 = v17;
          sub_298BBBF90(a1 + 24);
          v17 = v103;
          v12 = v102;
          v16 = v101;
          v13 = v100;
          v10 = v99;
          a3 = v98;
          a2 = v97;
          v9 = v96;
          v7 = v112;
        }

        a4 = v113;
        if (v17 == 4)
        {
          v38 = -1;
        }

        else
        {
          if (v17 != 5 && v17 != 3)
          {
            goto LABEL_29;
          }

          v43 = *(a1 + 136);
          if (*(a1 + 140) <= v43)
          {
            v111 = v7;
            v67 = v9;
            v68 = a2;
            v69 = a3;
            v70 = v13;
            v71 = v16;
            v72 = v10;
            v73 = v12;
            sub_298B90A44(a1 + 128, (a1 + 144), v43 + 1, 8);
            v12 = v73;
            v10 = v72;
            v16 = v71;
            v13 = v70;
            a3 = v69;
            a4 = v113;
            a2 = v68;
            v9 = v67;
            v7 = v111;
            v43 = *(a1 + 136);
          }

          *(*(a1 + 128) + 8 * v43) = ((v105 >> 45) & 0x7FFFC) + ((v105 << 17) >> 15) - 4;
          v38 = 1;
        }

        *(a1 + 136) += v38;
LABEL_29:
        v39 = *(a1 + 64);
        if (*(v39 + 48) == 1)
        {
          do
          {
            if (*(v39 + 32) != v13 || *(v39 + 40) != v12)
            {
              break;
            }

            v108 = v13;
            v86 = v16;
            v87 = v12;
            v88 = v10;
            v89 = v7;
            v90 = v9;
            v91 = a2;
            v92 = a3;
            v93 = a4;
            if (*(v39 + 73) == 1)
            {
              --*(a1 + 136);
            }

            if (*(v39 + 104))
            {
              sub_298BBB9B0(a1 + 24);
              v39 = *(a1 + 64);
            }

            a4 = v93;
            a3 = v92;
            a2 = v91;
            v9 = v90;
            v7 = v89;
            v10 = v88;
            v12 = v87;
            v16 = v86;
            v13 = v108;
          }

          while ((*(v39 + 48) & 1) != 0);
        }

        v41 = *(a1 + 120);
        if (v41 < *(v39 + 96))
        {
          v74 = *(*(v39 + 88) + 8 * v41);
          if (v74)
          {
            v76 = *v74;
            v75 = v74[1];
            if (v76 == v13 && v75 == v12)
            {
              v78 = v7;
              v7 = v9;
              v79 = a2;
              v80 = a4;
              v81 = a3;
              v82 = v10;
              sub_298BBBA58(a1 + 24);
              v10 = v82;
              a3 = v81;
              a4 = v80;
              a2 = v79;
              v9 = v7;
              LOBYTE(v7) = v78;
            }
          }
        }

        v11 = v10;
        if ((v16 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v109 = v17;
      v106 = v13;
      v20 = v16;
      v21 = v10;
      v22 = v7;
      v23 = v9;
      v24 = a2;
      v25 = a3;
      v26 = v18[8];
      v27 = v15 - v26;
      v28 = v12;
      if (v26 <= v12)
      {
        v19 = v27;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_23;
    }

    if (++v7 < *(a1 + 8))
    {
      v49 = (*(*a1 + 8 * v7) + 176);
LABEL_52:
      v9 = *v49;
      goto LABEL_11;
    }
  }

LABEL_53:
  v50 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BB251C(uint64_t result, unint64_t a2, unint64_t a3, void *a4)
{
  v4 = result;
  v94[5] = *MEMORY[0x29EDCA608];
  if (*(result + 56) == 1 && ((v5 = *(result + 24), v5 > a2) || v5 == a2 && *(result + 32) > a3) || !*(result + 64))
  {
    LOBYTE(v87) = 0;
    memset(v90, 0, sizeof(v90));
    v93 = 0x100000000;
    v10 = v87;
    *(result + 40) = v88;
    v11 = *(result + 16);
    LOBYTE(v89) = 0;
    *(&v89 + 1) = v11;
    v91 = 0;
    v92 = v94;
    *(result + 24) = v10;
    *(result + 56) = v89;
    sub_298BBBB74((result + 72), v90);
    v12 = v92;
    *(v4 + 120) = v91;
    v13 = (v4 + 128);
    if ((v4 + 128) == &v92)
    {
LABEL_30:
      if (v12 != v94)
      {
        free(v12);
      }

      sub_298AF67DC(v90);
      v17 = *(v4 + 64);
      v18 = *v17;
      v9 = v17 + 1;
      v7 = v18;
      goto LABEL_33;
    }

    if (v12 != v94)
    {
      v14 = *(v4 + 128);
      if (v14 != (v4 + 144))
      {
        free(v14);
        v12 = v92;
      }

      *(v4 + 128) = v12;
      *(v4 + 136) = v93;
      v92 = v94;
      HIDWORD(v93) = 0;
      goto LABEL_29;
    }

    v15 = v93;
    v16 = *(v4 + 136);
    if (v16 >= v93)
    {
      if (v93)
      {
        memmove(*v13, v12, 32 * v93 - 4);
      }

      goto LABEL_28;
    }

    if (*(v4 + 140) >= v93)
    {
      if (v16)
      {
        memmove(*v13, v12, 32 * v16 - 4);
        goto LABEL_26;
      }
    }

    else
    {
      *(v4 + 136) = 0;
      sub_298B90A44(v4 + 128, (v4 + 144), v15, 32);
    }

    v16 = 0;
LABEL_26:
    if (v93 != v16)
    {
      memcpy(*v13 + 32 * v16, &v92[4 * v16], 32 * (v93 - v16));
    }

LABEL_28:
    *(v4 + 136) = v15;
LABEL_29:
    LODWORD(v93) = 0;
    v12 = v92;
    goto LABEL_30;
  }

  v7 = *(result + 24);
  v6 = *(result + 32);
  if (v7 != a2 || v6 != a3)
  {
    v84 = v6 + 1;
    if ((v6 + 1) < *(*(*result + 8 * v7) + 184))
    {
LABEL_34:
      result = 0;
      v19 = v7 >> 8;
      while (1)
      {
        v20 = v84;
        v21 = v7 | (v19 << 8);
        if (v21 >= a2 && (v21 != a2 || v84 > a3))
        {
          goto LABEL_111;
        }

        v22 = *(*v4 + 8 * v21);
        if (v84 + 1 >= *(v22 + 184))
        {
          v7 = v21 + 1;
          if (v21 + 1 >= *(v4 + 8))
          {
            LOBYTE(v7) = 0;
            v85 = 0;
            v23 = result;
          }

          else
          {
            v84 = *(*(*v4 + 8 * v7) + 176);
            v23 = v7 >> 8;
            v85 = 1;
          }
        }

        else
        {
          v23 = v19 & 0xFFFFFFFFFFFFFFLL;
          v85 = 1;
          ++v84;
        }

        v24 = **(v22 + 8);
        v25 = *(v4 + 40);
        v87 = *(v4 + 24);
        v88 = v25;
        *&v89 = *(v4 + 56);
        v26 = (v89 & 1) != 0 ? (DWORD2(v88) >> 22) & 0xF : *(*(v4 + 64) + 72);
        v27 = sub_298C09510(a4, v24);
        v28 = *(v27 + 24);
        v86 = v7;
        if (v28 > v20)
        {
          break;
        }

        if (*(v27 + 32) + v28 <= v20)
        {
          v29 = *(v27 + 64);
          v28 = v20;
LABEL_55:
          v7 = v23;
          v31 = (v27 + 40);
          *(v27 + 48) = *(v27 + 40);
          (*(**(v27 + 8) + 32))(*(v27 + 8), v28, v29, v27 + 40, *(v27 + 16));
          v30 = *v31;
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - *v31) >> 2);
          *(v31 - 2) = v28;
          *(v31 - 1) = v32;
          goto LABEL_56;
        }

        v7 = v23;
        v30 = *(v27 + 40);
LABEL_56:
        v33 = (v30 + 12 * (v20 - v28));
        v34 = *v33;
        LODWORD(v33) = *(v33 + 2);
        v35 = *(v4 + 56);
        *(v4 + 24) = v21;
        *(v4 + 32) = v20;
        *(v4 + 40) = v34;
        *(v4 + 48) = v33;
        if ((v35 & 1) == 0)
        {
          *(v4 + 56) = 1;
          v36 = *(v4 + 64);
          v37 = *(v36 + 64);
          if (v37)
          {
            v38 = 32 * v37;
            v39 = *(v36 + 56) + 32 * v37;
            v40 = *(v4 + 136);
            v41 = v39 - 32;
            v42 = -v38;
            v43 = v39 - 32;
            do
            {
              v39 -= 32;
              v44 = *(v4 + 128);
              v45 = v39;
              if (v40 >= *(v4 + 140))
              {
                v48 = v44 <= v41 && v44 + 32 * v40 > v41;
                sub_298B90A44(v4 + 128, (v4 + 144), v40 + 1, 32);
                if (v48)
                {
                  v45 = (*(v4 + 128) - v44 + v43);
                  v44 = *(v4 + 128);
                }

                else
                {
                  v44 = *(v4 + 128);
                  v45 = v39;
                }
              }

              v46 = (v44 + 32 * *(v4 + 136));
              v47 = v45[1];
              *v46 = *v45;
              v46[1] = v47;
              v40 = *(v4 + 136) + 1;
              *(v4 + 136) = v40;
              v43 -= 32;
              v41 -= 32;
              v42 += 32;
            }

            while (v42);
          }
        }

        v19 = v7;
        LOBYTE(v7) = v86;
        switch(v26)
        {
          case 5:
LABEL_71:
            v49 = *(v4 + 136);
            v50 = *(v4 + 128);
            if (v49 < *(v4 + 140))
            {
              goto LABEL_72;
            }

            if (v50 <= &v87 && v50 + 32 * v49 > &v87)
            {
              v79 = &v87 - v50;
              sub_298B90A44(v4 + 128, (v4 + 144), v49 + 1, 32);
              v50 = *(v4 + 128);
              v51 = &v79[v50];
            }

            else
            {
              sub_298B90A44(v4 + 128, (v4 + 144), v49 + 1, 32);
              v50 = *(v4 + 128);
LABEL_72:
              v51 = &v87;
            }

            v52 = (v50 + 32 * *(v4 + 136));
            v53 = *(v51 + 1);
            *v52 = *v51;
            v52[1] = v53;
            v54 = 1;
LABEL_75:
            *(v4 + 136) += v54;
            break;
          case 4:
            v54 = -1;
            goto LABEL_75;
          case 3:
            goto LABEL_71;
        }

        v55 = *(v4 + 64);
        if (*(v55 + 48) == 1)
        {
          do
          {
            if (*(v55 + 32) != v21 || *(v55 + 40) != v20)
            {
              break;
            }

            if (*(v55 + 73) == 1)
            {
              --*(v4 + 136);
            }

            v71 = *(v55 + 104);
            if (v71)
            {
              v72 = *(v55 + 80);
              if (v72)
              {
                *(v4 + 136) -= v72;
              }

              v73 = *(v4 + 80);
              v74 = *(v4 + 88);
              v75 = ((v74 - v73) << 6) - 1;
              *(v4 + 64) = v71;
              v77 = *(v4 + 104);
              v76 = *(v4 + 112);
              if (v74 == v73)
              {
                v75 = 0;
              }

              v78 = *(*(v73 + (((v76 - 1 + v77) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v76 - 1 + v77) & 0x1FF));
              *(v4 + 112) = v76 - 1;
              *(v4 + 120) = v78;
              v55 = v71;
              if ((v75 - (v76 + v77) + 1) >= 0x400)
              {
                operator delete(*(v74 - 8));
                *(v4 + 88) -= 8;
                v55 = *(v4 + 64);
              }
            }
          }

          while ((*(v55 + 48) & 1) != 0);
        }

        v56 = *(v4 + 120);
        if (v56 < *(v55 + 96))
        {
          v57 = *(*(v55 + 88) + 8 * v56);
          if (v57)
          {
            if (*v57 == v21 && *(v57 + 8) == v20)
            {
              *(v4 + 120) = v56 + 1;
              *(v4 + 64) = v57;
              v59 = *(v57 + 64);
              if (v59)
              {
                v60 = 32 * v59;
                v61 = *(v57 + 56) + v60;
                v62 = *(v4 + 136);
                v63 = (v61 - 32);
                v64 = -v60;
                do
                {
                  v61 -= 32;
                  v65 = *(v4 + 128);
                  v66 = v63;
                  if (v62 >= *(v4 + 140))
                  {
                    if (v65 <= v63 && v65 + 32 * v62 > v63)
                    {
                      v70 = v61 - v65;
                      sub_298B90A44(v4 + 128, (v4 + 144), v62 + 1, 32);
                      v65 = *(v4 + 128);
                      v66 = (v65 + v70);
                    }

                    else
                    {
                      sub_298B90A44(v4 + 128, (v4 + 144), v62 + 1, 32);
                      v65 = *(v4 + 128);
                      v66 = v63;
                    }
                  }

                  v67 = (v65 + 32 * *(v4 + 136));
                  v68 = v66[1];
                  *v67 = *v66;
                  v67[1] = v68;
                  v62 = *(v4 + 136) + 1;
                  *(v4 + 136) = v62;
                  v63 -= 2;
                  v64 += 32;
                }

                while (v64);
              }

              sub_298BBBFF4((v4 + 72), (v4 + 120));
              *(v4 + 120) = 0;
            }
          }
        }

        result = v19;
        if ((v85 & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      v29 = *(v27 + 64);
      if (v29 <= v20)
      {
        v28 = v20 + 1 - v29;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_55;
    }

    if (++v7 < *(result + 8))
    {
      v9 = (*(*result + 8 * v7) + 176);
LABEL_33:
      v84 = *v9;
      goto LABEL_34;
    }
  }

LABEL_111:
  v80 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BB2C98(uint64_t a1, void *a2)
{
  v4 = **(a1 + 8);
  v5 = v4[1];
  v6 = "E";
  v7 = 1;
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = "ASC";
      v7 = 3;
    }

    else if (v5 == 4)
    {
      v6 = "MP";
      v7 = 2;
    }
  }

  else if (v5 == 1)
  {
    v6 = "P";
    v7 = 1;
  }

  else if (v5 == 2)
  {
    v6 = "M";
    v7 = 1;
  }

  v32 = v7;
  memcpy(__dst, v6, v7);
  *(__dst | v7) = 0;
  v8 = *v4;
  v9 = a2[4];
  if (a2[3] - v9 > 0xDuLL)
  {
    qmemcpy(v9, "Timeslice(tid=", 14);
    a2[4] += 14;
    v11 = *(a1 + 32);
    v10 = a2;
    if (HIDWORD(v11))
    {
LABEL_12:
      sub_298B8FEA0(v10, v11, 0, 0, 0);
      v12 = a2[4];
      if (a2[3] - v12 > 6uLL)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v10 = sub_298B9BCEC(a2, "Timeslice(tid=", 0xEuLL);
    v11 = *(a1 + 32);
    if (HIDWORD(v11))
    {
      goto LABEL_12;
    }
  }

  sub_298B8FC48(v10, v11, 0, 0, 0);
  v12 = a2[4];
  if (a2[3] - v12 > 6uLL)
  {
LABEL_13:
    *(v12 + 3) = 1029990771;
    *v12 = 1935745068;
    a2[4] += 7;
    v13 = *(a1 + 24);
    v14 = a2;
    if (HIDWORD(v13))
    {
      goto LABEL_14;
    }

LABEL_19:
    sub_298B8FC48(v14, v13, 0, 0, 0);
    v15 = a2[4];
    if ((a2[3] - v15) > 9)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_18:
  v14 = sub_298B9BCEC(a2, ", asid=", 7uLL);
  v13 = *(a1 + 24);
  if (!HIDWORD(v13))
  {
    goto LABEL_19;
  }

LABEL_14:
  sub_298B8FEA0(v14, v13, 0, 0, 0);
  v15 = a2[4];
  if ((a2[3] - v15) > 9)
  {
LABEL_15:
    *(v15 + 8) = 15730;
    *v15 = *", cluster=";
    a2[4] += 10;
    goto LABEL_21;
  }

LABEL_20:
  sub_298B9BCEC(a2, ", cluster=", 0xAuLL);
LABEL_21:
  if ((v32 & 0x80u) == 0)
  {
    v16 = __dst;
  }

  else
  {
    v16 = __dst[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v17 = v32;
  }

  else
  {
    v17 = __dst[1];
  }

  sub_298B9BCEC(a2, v16, v17);
  v18 = a2[4];
  if (a2[3] - v18 > 6uLL)
  {
    *(v18 + 3) = 1030058607;
    *v18 = 1868767276;
    a2[4] += 7;
  }

  else
  {
    sub_298B9BCEC(a2, ", core=", 7uLL);
  }

  sub_298B8FC48(a2, v8, 0, 0, 0);
  v19 = a2[4];
  if ((a2[3] - v19) > 0xB)
  {
    *(v19 + 8) = 1030057321;
    *v19 = *", startTime=";
    a2[4] += 12;
  }

  else
  {
    sub_298B9BCEC(a2, ", startTime=", 0xCuLL);
  }

  v20 = (*(*a1 + 24))(a1);
  if (HIDWORD(v20))
  {
    sub_298B8FEA0(a2, v20, 0, 0, 0);
    v21 = a2[4];
    if ((a2[3] - v21) <= 0xB)
    {
LABEL_35:
      v22 = sub_298B9BCEC(a2, ", startUnit=", 0xCuLL);
      v23 = *(a1 + 152);
      if (HIDWORD(v23))
      {
        goto LABEL_36;
      }

      goto LABEL_43;
    }
  }

  else
  {
    sub_298B8FC48(a2, v20, 0, 0, 0);
    v21 = a2[4];
    if ((a2[3] - v21) <= 0xB)
    {
      goto LABEL_35;
    }
  }

  *(v21 + 8) = 1031039342;
  *v21 = *", startUnit=";
  a2[4] += 12;
  v23 = *(a1 + 152);
  v22 = a2;
  if (HIDWORD(v23))
  {
LABEL_36:
    sub_298B8FEA0(v22, v23, 0, 0, 0);
    v24 = a2[4];
    if ((a2[3] - v24) > 0xB)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

LABEL_43:
  sub_298B8FC48(v22, v23, 0, 0, 0);
  v24 = a2[4];
  if ((a2[3] - v24) > 0xB)
  {
LABEL_37:
    *(v24 + 8) = 1030057321;
    *v24 = *", kern.time=";
    a2[4] += 12;
    v25 = *(a1 + 64);
    if (v25 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_45;
  }

LABEL_44:
  sub_298B9BCEC(a2, ", kern.time=", 0xCuLL);
  v25 = *(a1 + 64);
  if (v25 != -1)
  {
LABEL_38:
    if (HIDWORD(v25))
    {
      sub_298B8FEA0(a2, v25, 0, 0, 0);
      v26 = a2[4];
      if ((a2[3] - v26) > 0xA)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_298B8FC48(a2, v25, 0, 0, 0);
      v26 = a2[4];
      if ((a2[3] - v26) > 0xA)
      {
        goto LABEL_54;
      }
    }

LABEL_49:
    sub_298B9BCEC(a2, ", kern.csw=", 0xBuLL);
    v28 = *(a1 + 72);
    if (v28 == -1)
    {
      goto LABEL_55;
    }

LABEL_50:
    if (HIDWORD(v28))
    {
      sub_298B8FEA0(a2, v28, 0, 0, 0);
      v29 = a2[4];
      if (a2[3] == v29)
      {
        goto LABEL_62;
      }
    }

    else
    {
      sub_298B8FC48(a2, v28, 0, 0, 0);
      v29 = a2[4];
      if (a2[3] == v29)
      {
        goto LABEL_62;
      }
    }

    goto LABEL_59;
  }

LABEL_45:
  v27 = a2[4];
  if (a2[3] - v27 > 3uLL)
  {
    *v27 = 1701736270;
    a2[4] += 4;
    v26 = a2[4];
    if ((a2[3] - v26) > 0xA)
    {
      goto LABEL_54;
    }

    goto LABEL_49;
  }

  sub_298B9BCEC(a2, "None", 4uLL);
  v26 = a2[4];
  if ((a2[3] - v26) <= 0xA)
  {
    goto LABEL_49;
  }

LABEL_54:
  *(v26 + 7) = 1031238499;
  *v26 = *", kern.csw=";
  a2[4] += 11;
  v28 = *(a1 + 72);
  if (v28 != -1)
  {
    goto LABEL_50;
  }

LABEL_55:
  v30 = a2[4];
  if (a2[3] - v30 > 3uLL)
  {
    *v30 = 1701736270;
    a2[4] += 4;
    v29 = a2[4];
    if (a2[3] == v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
    sub_298B9BCEC(a2, "None", 4uLL);
    v29 = a2[4];
    if (a2[3] == v29)
    {
LABEL_62:
      sub_298B9BCEC(a2, ")", 1uLL);
      if (v32 < 0)
      {
        goto LABEL_63;
      }

      return;
    }
  }

LABEL_59:
  *v29 = 41;
  ++a2[4];
  if (v32 < 0)
  {
LABEL_63:
    operator delete(__dst[0]);
  }
}

uint64_t sub_298BB3320(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  v4 = *(result + 112);
  if (v4 >= *(result + 116))
  {
    v6 = result;
    v7 = a3;
    sub_298B90A44(result + 104, (result + 120), v4 + 1, 8);
    a3 = v7;
    result = v6;
    LODWORD(v4) = *(v6 + 112);
  }

  v5 = ((v3 >> 45) & 0x7FFFC) - 4;
  if (a3)
  {
    v5 = 0;
  }

  *(*(result + 104) + 8 * v4) = v5 + ((v3 << 17) >> 15);
  ++*(result + 112);
  return result;
}

void sub_298BB33B0(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v46 = *MEMORY[0x29EDCA608];
  v6 = sub_298B227A0(2);
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "BacktraceSnapshot::Create", &unk_298EC00B5, buf, 2u);
  }

  v39 = &unk_2A1F1E1D8;
  *&v40 = v7;
  *(&v40 + 1) = v6;
  v41 = &v39;
  v44 = buf;
  v45 = v7;
  *buf = &unk_2A1F1E1D8;
  v43 = v40;
  sub_298BBB834(&v39);
  v37 = 1;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  v38[0] = v8;
  v38[1] = v8;
  v9 = *a1;
  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 664);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = *(v9 + 24);
    v13 = v10 + 664;
    do
    {
      v14 = *(v11 + 32);
      v15 = v14 >= v12;
      v16 = v14 < v12;
      if (v15)
      {
        v13 = v11;
      }

      v11 = *(v11 + 8 * v16);
    }

    while (v11);
    if (v13 != v10 + 664 && v12 >= *(v13 + 32))
    {
      v17 = *(v13 + 40);
    }

    else
    {
LABEL_13:
      v17 = (v10 + 8);
    }
  }

  else
  {
    v17 = a3[2];
  }

LABEL_14:
  v18 = v17[70];
  v19 = v17[71];
  while (1)
  {
    if (v18 == v19)
    {
      v17 = *v17;
      if (!v17)
      {
        v27 = *(v9 + 176);
        v33 = *(a1[a2 - 1] + 184);
        v28 = sub_298C09510(a4, **(*a1 + 8));
        v36[0] = v27;
        v36[1] = v28;
        sub_298C09638(v36);
        operator new();
      }

      goto LABEL_14;
    }

    if (v37)
    {
      v20 = 4;
      v21 = v38;
    }

    else
    {
      v20 = DWORD2(v38[0]);
      if (!DWORD2(v38[0]))
      {
        v26 = 0;
        goto LABEL_23;
      }

      v21 = *&v38[0];
    }

    v22 = v20 - 1;
    v23 = (37 * *v18) & v22;
    v24 = v21 + v23;
    v25 = *v24;
    if (*v18 == *v24)
    {
      goto LABEL_17;
    }

    v29 = 0;
    v30 = 1;
    while (v25 != -1)
    {
      if (v29)
      {
        v31 = 0;
      }

      else
      {
        v31 = v25 == -2;
      }

      if (v31)
      {
        v29 = v24;
      }

      v32 = v23 + v30++;
      v23 = v32 & v22;
      v24 = v21 + v23;
      v25 = *v24;
      if (*v18 == *v24)
      {
        goto LABEL_17;
      }
    }

    if (v29)
    {
      v26 = v29;
    }

    else
    {
      v26 = v24;
    }

LABEL_23:
    *sub_298BBC47C(&v37, v18, v26) = *v18;
LABEL_17:
    ++v18;
  }
}

uint64_t sub_298BB47B8(__int128 *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = *a1;
  v6 = *(a2 + 104);
  v7 = a2;
  do
  {
    v9 = *(v7 + 48);
    *(v7 + 32) = v5;
    if ((v9 & 1) == 0)
    {
      *(v7 + 48) = 1;
    }

    v7 = *(v7 + 104);
  }

  while (v7 != v6 && v7 != 0);
  result = *(a2 + 104);
  if (result == a3)
  {
    v12 = a1[1];
    v27 = *a1;
    v28 = v12;
    goto LABEL_15;
  }

  if ((a4 & 0x100) == 0)
  {
LABEL_10:
    if ((*(a1 + 21) & 0x40) != 0 && (*(result + 21) & 0x40) == 0)
    {
      *(a2 + 73) = 0;
      v11 = a1[1];
      v27 = *a1;
      v28 = v11;
      sub_298BB45C8();
    }

    *(a2 + 73) = 1;
    --*(result + 80);
    if ((*(a1 + 21) & 0x40) == 0 && (*(result + 21) & 0x40) != 0)
    {
      v13 = a1[1];
      v27 = *a1;
      v28 = v13;
      return sub_298BB47B8(&v27, result);
    }

    return result;
  }

  if (a4 - 3 <= 2)
  {
    v14 = a2;
    while (1)
    {
      v14 = *(v14 + 104);
      if (!v14)
      {
        break;
      }

      if (*(v14 + 75) == 1 && *(v14 + 74) == a4)
      {
        v16 = *a1;
        *(a2 + 73) = 1;
        if (result != v14)
        {
          do
          {
            v18 = *(result + 48);
            *(result + 32) = v16;
            if ((v18 & 1) == 0)
            {
              *(result + 48) = 1;
            }

            result = *(result + 104);
          }

          while (result != v14 && result != 0);
          result = v14;
        }

        goto LABEL_54;
      }
    }

    *(a2 + 73) = 0;
    v25 = a1[1];
    v27 = *a1;
    v28 = v25;
LABEL_15:
    sub_298BB45C8();
  }

  if (*(a2 + 75) != 1 || *(a2 + 74) - 3 > 2)
  {
    goto LABEL_10;
  }

  v19 = *(a2 + 104);
  v20 = a2;
  do
  {
    v20 = *(v20 + 104);
    if (!v20)
    {
      v26 = a1[1];
      v27 = *a1;
      v28 = v26;
      return sub_298BB47B8(&v27, v19);
    }
  }

  while (*(v20 + 75) != 1 || *(v20 + 74) != a4);
  v22 = *a1;
  *(a2 + 73) = 1;
  if (result != v20)
  {
    do
    {
      v24 = *(result + 48);
      *(result + 32) = v22;
      if ((v24 & 1) == 0)
      {
        *(result + 48) = 1;
      }

      result = *(result + 104);
    }

    while (result != v20 && result != 0);
    result = v20;
  }

LABEL_54:
  --*(result + 80);
  return result;
}

void *sub_298BB4A50(void *result, uint64_t a2, uint64_t a3, _DWORD *a4, _BYTE *a5)
{
  v5 = *(result + 3) | (*(result + 5) << 16);
  if (v5 < 0)
  {
    v7 = *a4;
    v8 = a4[4];
    if (v8)
    {
      LODWORD(v9) = (v8 - 1) & ((result >> 4) ^ (result >> 9));
      v10 = (v7 + 16 * v9);
      v11 = *v10;
      if (*v10 == result)
      {
        v6 = v10[1];
        if ((v5 & 0x400000) != 0)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }

      v13 = 1;
      while (v11 != -4096)
      {
        v14 = v9 + v13++;
        v9 = v14 & (v8 - 1);
        v11 = *(v7 + 16 * v9);
        if (v11 == result)
        {
          v6 = *(v7 + 16 * v9 + 8);
          if ((v5 & 0x400000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

    v6 = *(v7 + 16 * v8 + 8);
    if ((v5 & 0x400000) != 0)
    {
      goto LABEL_15;
    }

LABEL_7:
    v12 = (*result | (*(result + 2) << 16)) >> 2;
    if ((*a5 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v6 = *&v5 & 0x3FFFFFLL;
  if ((v5 & 0x400000) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  v15 = *(a4 + 3);
  v16 = a4[10];
  if (!v16)
  {
    goto LABEL_24;
  }

  LODWORD(v17) = (v16 - 1) & ((result >> 4) ^ (result >> 9));
  v18 = (v15 + 16 * v17);
  v19 = *v18;
  if (*v18 != result)
  {
    v20 = 1;
    while (v19 != -4096)
    {
      v21 = v17 + v20++;
      v17 = v21 & (v16 - 1);
      v19 = *(v15 + 16 * v17);
      if (v19 == result)
      {
        v12 = *(v15 + 16 * v17 + 8);
        if (*a5)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

LABEL_24:
    v12 = *(v15 + 16 * v16 + 8);
    if ((*a5 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v12 = v18[1];
  if ((*a5 & 1) == 0)
  {
LABEL_27:
    if ((*a5 & 2) == 0)
    {
      return result;
    }

LABEL_43:
    v39 = v12 + a3;
    v40 = (*(result + 3) | (*(result + 5) << 16)) & 0xFFBFFFFF;
    *(result + 3) = *(result + 3);
    *(result + 5) = (v40 | (((v39 & 0xFFFFFFFFFFC00000) != 0) << 22)) >> 16;
    if (v39 < 0x400000)
    {
      v41 = *result & 3 | (4 * v39);
      *(result + 2) = v39 >> 14;
      *result = v41;
      return result;
    }

    v44 = *(a4 + 3);
    v42 = a4 + 6;
    v43 = v44;
    v56 = result;
    v45 = v42[4];
    if (v45)
    {
      v46 = v45 - 1;
      v47 = (v45 - 1) & ((result >> 4) ^ (result >> 9));
      v48 = (v43 + 16 * v47);
      v49 = *v48;
      if (*v48 == result)
      {
LABEL_58:
        v48[1] = v39;
        return result;
      }

      v50 = result;
      v51 = 0;
      v52 = 1;
      while (v49 != -4096)
      {
        if (v51)
        {
          v53 = 0;
        }

        else
        {
          v53 = v49 == -8192;
        }

        if (v53)
        {
          v51 = v48;
        }

        v54 = v47 + v52++;
        v47 = v54 & v46;
        v48 = (v43 + 16 * (v54 & v46));
        v49 = *v48;
        if (*v48 == result)
        {
          goto LABEL_58;
        }
      }

      if (v51)
      {
        v55 = v51;
      }

      else
      {
        v55 = v48;
      }
    }

    else
    {
      v50 = result;
      v55 = 0;
    }

    result = sub_298BBCA50(v42, &v56, v55);
    v48 = result;
    *result = v50;
    result[1] = 0;
    goto LABEL_58;
  }

LABEL_25:
  v22 = v6 + a2;
  v23 = v5 & 0x7FFFFF | ((((v6 + a2) & 0xFFFFFFFFFFC00000) != 0) << 23);
  *(result + 5);
  *(result + 3) = *(result + 3);
  *(result + 5) = BYTE2(v23);
  if (v22 < 0x400000)
  {
    *(result + 3) = v22;
    *(result + 5) = (v23 & 0xC00000 | v22) >> 16;
    goto LABEL_27;
  }

  v56 = result;
  v24 = a4[4];
  if (v24)
  {
    v25 = v24 - 1;
    v26 = (v24 - 1) & ((result >> 4) ^ (result >> 9));
    v27 = (*a4 + 16 * v26);
    v28 = *v27;
    if (*v27 == result)
    {
      goto LABEL_42;
    }

    v29 = 0;
    v30 = 1;
    while (1)
    {
      v31 = a5;
      v32 = a3;
      v33 = result;
      if (v28 == -4096)
      {
        break;
      }

      if (v29)
      {
        v34 = 0;
      }

      else
      {
        v34 = v28 == -8192;
      }

      if (v34)
      {
        v29 = v27;
      }

      v35 = v26 + v30++;
      v26 = v35 & v25;
      v27 = (*a4 + 16 * (v35 & v25));
      v28 = *v27;
      if (*v27 == result)
      {
        goto LABEL_42;
      }
    }

    if (v29)
    {
      v36 = v29;
    }

    else
    {
      v36 = v27;
    }
  }

  else
  {
    v31 = a5;
    v32 = a3;
    v33 = result;
    v36 = 0;
  }

  v37 = a4;
  v38 = sub_298BBCA50(a4, &v56, v36);
  a4 = v37;
  v27 = v38;
  result = v33;
  *v27 = v33;
  v27[1] = 0;
  a3 = v32;
  a5 = v31;
LABEL_42:
  v27[1] = v22;
  if ((*a5 & 2) != 0)
  {
    goto LABEL_43;
  }

  return result;
}

void sub_298BB4DF4(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v10[0] = *(*(a4 + 328) + 24) - 1;
    v10[1] = a4;
    sub_298C097E4(v10, v9);
    return;
  }

  if (a2 >= sub_298BB4FF4(*(*(**(a1 + 8) + 96) + 8), a4))
  {
    v4 = a1;
    v5 = a4;
  }

  else
  {
    if (a2 < sub_298BB4EBC(a4))
    {
      return;
    }

    sub_298BFC9BC(a4, a2, 1);
    v4 = a1;
    v5 = a4;
  }

  sub_298BB5138(v4, v5);
}

uint64_t sub_298BB4EBC(unint64_t a1)
{
  v2 = *(*(a1 + 328) + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(a1 + 88);
    while (1)
    {
      v9 = (v2 >> 1) + v3;
      if (v4 > v9)
      {
        v5 = *(a1 + 128);
        if (v5 <= v9)
        {
          v4 = v9 - v5 + 1;
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        if (*(a1 + 96) + v4 > v9)
        {
          v7 = *(a1 + 104);
          goto LABEL_7;
        }

        v10 = *(a1 + 128);
        v4 = (v2 >> 1) + v3;
      }

      *(a1 + 112) = *(a1 + 104);
      v6 = *(a1 + 80);
      (*(**(a1 + 72) + 40))(*(a1 + 72), v4);
      v7 = *(a1 + 104);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v7) >> 3);
      *(a1 + 88) = v4;
      *(a1 + 96) = v8;
LABEL_7:
      if (*(v7 + 24 * (v9 - v4) + 8))
      {
        v2 >>= 1;
      }

      else
      {
        v3 = v9 + 1;
        v2 += ~(v2 >> 1);
      }

      if (!v2)
      {
        goto LABEL_16;
      }
    }
  }

  v3 = 0;
LABEL_16:
  v11 = v3 - 1;
  if (!v3)
  {
    v11 = 0;
  }

  v15[0] = v11;
  v15[1] = a1;
  sub_298C09708(v15, &v13);
  return v14;
}

uint64_t sub_298BB4FF4(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a2 + 328) + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 - 1;
    v6 = *(a2 + 88);
    while (1)
    {
      v11 = (v3 >> 1) + v4;
      if (v6 > v11)
      {
        v7 = *(a2 + 128);
        if (v7 <= v11)
        {
          v6 = v11 - v7 + 1;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        if (*(a2 + 96) + v6 > v11)
        {
          v9 = *(a2 + 104);
          goto LABEL_7;
        }

        v12 = *(a2 + 128);
        v6 = (v3 >> 1) + v4;
      }

      *(a2 + 112) = *(a2 + 104);
      v8 = *(a2 + 80);
      (*(**(a2 + 72) + 40))(*(a2 + 72), v6);
      v9 = *(a2 + 104);
      v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 112) - v9) >> 3);
      *(a2 + 88) = v6;
      *(a2 + 96) = v10;
LABEL_7:
      if (*(v9 + 24 * (v11 - v6) + 8) > v5)
      {
        v3 >>= 1;
      }

      else
      {
        v4 = v11 + 1;
        v3 += ~(v3 >> 1);
      }

      if (!v3)
      {
        goto LABEL_16;
      }
    }
  }

  v4 = 0;
LABEL_16:
  v13 = v4 - 1;
  if (!v4)
  {
    v13 = 0;
  }

  v17[0] = v13;
  v17[1] = a2;
  sub_298C09708(v17, &v15);
  return v16;
}

uint64_t sub_298BB5138(int64x2_t *a1, uint64_t a2)
{
  v3 = a1[1].i64[1];
  v5 = a1[4].i64[0];
  v4 = a1[4].i64[1];
  v15[0] = *(*(a2 + 328) + 24) - 1;
  v15[1] = a2;
  v8 = a1[3];
  v9 = a1[2];
  sub_298C097E4(v15, &v10);
  if (v3 == v10)
  {
    v6 = (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(v9, v11), vceqq_s64(v8, v12)), xmmword_298D1B0D0)) & 0xF) == 0 && v5 == v13;
    if (v6 && v4 == v14)
    {
      return *(a1->i64[1] + 16);
    }
  }

  if (*(a1->i64[1] + 16) >= a1[6].i64[1])
  {
    return a1[6].i64[1];
  }

  return *(a1->i64[1] + 16);
}

uint64_t sub_298BB5210@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v89 = *MEMORY[0x29EDCA608];
  v8 = sub_298B227A0(2);
  v9 = os_signpost_id_generate(v8);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "formTimeslices", &unk_298EC00B5, buf, 2u);
  }

  v84[0] = &unk_2A1F1E220;
  v84[1] = v9;
  v84[2] = v8;
  v84[3] = v84;
  sub_298BBC3DC(v85, v9, v84);
  sub_298BBB834(v84);
  v10 = a6;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = -1;
  *(a6 + 40) = -1;
  *(a6 + 48) = 1065353216;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0;
  *(a6 + 104) = 0;
  *(a6 + 96) = a6 + 104;
  *(a6 + 80) = a6 + 96;
  *(a6 + 88) = 0;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 112) = 0;
  *(a6 + 120) = a6 + 128;
  v68 = (a6 + 128);
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 1065353216;
  memset(v76, 0, sizeof(v76));
  v77 = 1065353216;
  if (!a2)
  {
    goto LABEL_66;
  }

  v67 = &a1[3 * a2];
  do
  {
    v11 = sub_298C09510(v76, *a1);
    v12 = *a1;
    if (*(*(*a1 + 96) + 24))
    {
      v13 = v11;
      v14 = 0;
      while (1)
      {
        v15 = *(v13 + 152);
        if (v15 > v14)
        {
          break;
        }

        v19 = *(v13 + 160);
        if (v19 + v15 <= v14)
        {
          v42 = *(v13 + 192);
          v15 = v14;
LABEL_15:
          *(v13 + 176) = *(v13 + 168);
          v17 = *(v13 + 144);
          (*(**(v13 + 136) + 48))(*(v13 + 136), v15);
          v18 = *(v13 + 168);
          v19 = 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 176) - v18) >> 3);
          *(v13 + 152) = v15;
          *(v13 + 160) = v19;
          v12 = *a1;
          goto LABEL_16;
        }

        v18 = *(v13 + 168);
LABEL_16:
        v20 = v14 - v15;
        v21 = v18 + 56 * (v14 - v15);
        v75 = *(v21 + 48);
        v74 = *(v21 + 16);
        if ((a5 & (a4 != *(&v74 + 1))) == 0)
        {
          if (*(*(v12 + 96) + 8))
          {
            v22 = *(a3 + 24);
            v69 = *(a3 + 8);
            if (v14 >= v15)
            {
              if (v19 + v15 <= v14)
              {
                v43 = *(v13 + 192);
                v24 = v14;
                goto LABEL_22;
              }
            }

            else
            {
              v23 = *(v13 + 192);
              if (v23 <= v14)
              {
                v24 = v14 - v23 + 1;
              }

              else
              {
                v24 = 0;
              }

LABEL_22:
              *(v13 + 176) = v18;
              v25 = *(v13 + 144);
              (*(**(v13 + 136) + 48))(*(v13 + 136), v24);
              v18 = *(v13 + 168);
              v26 = 0x6DB6DB6DB6DB6DB7 * ((*(v13 + 176) - v18) >> 3);
              *(v13 + 152) = v24;
              *(v13 + 160) = v26;
              v20 = v14 - v24;
            }

            v27 = (v18 + 56 * v20);
            v81 = *v27;
            v29 = *(v27 + 2);
            v28 = *(v27 + 3);
            v30 = v27[2];
            v80 = *(v27 + 6);
            *&v79[31] = v30;
            if (v14 + 1 < *(*(v13 + 328) + 24))
            {
              v82 = v14 + 1;
              v83 = v13;
              sub_298C097E4(&v82, buf);
              v86 = *&buf[1];
              v87 = *&buf[17];
              *v88 = *v79;
              *&v88[15] = *&v79[15];
            }

            v31 = 24 * v29;
            v32 = v29 + 1;
            do
            {
              v33 = v31;
              v34 = v32;
              v35 = v32 - 1;
              if (v32 >= *(*(v13 + 328) + 16))
              {
                break;
              }

              v82 = v32 - 1;
              v83 = v13;
              sub_298C09708(&v82, buf);
              v31 = v33 + 24;
              v32 = v34 + 1;
            }

            while (*&buf[8] < v28);
            v36 = *(v13 + 88);
            if (v36 <= v35)
            {
              if (*(v13 + 96) + v36 <= v35)
              {
                v44 = *(v13 + 128);
                v36 = v35;
                goto LABEL_31;
              }

              v39 = *(v13 + 104);
            }

            else
            {
              v37 = *(v13 + 128);
              if (v37 <= v35)
              {
                v36 = v34 - v37;
              }

              else
              {
                v36 = 0;
              }

LABEL_31:
              *(v13 + 112) = *(v13 + 104);
              v38 = *(v13 + 80);
              (*(**(v13 + 72) + 40))(*(v13 + 72), v36);
              v39 = *(v13 + 104);
              v40 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 + 112) - v39) >> 3);
              *(v13 + 88) = v36;
              *(v13 + 96) = v40;
            }

            v41 = v39 - 24 * v36 + v33;
            *buf = *v41;
            *&buf[16] = *(v41 + 16);
            operator new();
          }

          v12 = *a1;
        }

        if (++v14 >= *(*(v12 + 96) + 24))
        {
          goto LABEL_6;
        }
      }

      v16 = *(v13 + 192);
      if (v16 <= v14)
      {
        v15 = v14 - v16 + 1;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_15;
    }

LABEL_6:
    a1 += 3;
  }

  while (a1 != v67);
  v10 = a6;
  v45 = *(a6 + 16);
  if (v45)
  {
    v46 = MEMORY[0x29EDC9418];
    do
    {
      v48 = *v68;
      if (!*v68)
      {
LABEL_51:
        operator new();
      }

      v49 = v45[2];
      while (1)
      {
        while (1)
        {
          v50 = v48;
          v51 = v48[4];
          if (v49 >= v51)
          {
            break;
          }

          v48 = *v50;
          if (!*v50)
          {
            goto LABEL_51;
          }
        }

        if (v51 >= v49)
        {
          break;
        }

        v48 = v50[1];
        if (!v48)
        {
          goto LABEL_51;
        }
      }

      v52 = v50[6];
      if (!v52)
      {
LABEL_58:
        operator new();
      }

      v53 = v45[3];
      while (1)
      {
        while (1)
        {
          v54 = v52;
          v55 = v52[4];
          if (v53 >= v55)
          {
            break;
          }

          v52 = *v54;
          if (!*v54)
          {
            goto LABEL_58;
          }
        }

        if (v55 >= v53)
        {
          break;
        }

        v52 = v54[1];
        if (!v52)
        {
          goto LABEL_58;
        }
      }

      v56 = v45[4];
      v57 = v45[5];
      if ((v57 - v56) >> 3 < 1)
      {
        v60 = 0;
LABEL_65:
        sub_298BB99F4(v56, v57, (v57 - v56) >> 3, 0, v60);
      }

      else
      {
        v58 = (v57 - v56) >> 3;
        while (1)
        {
          v59 = operator new(8 * v58, v46);
          if (v59)
          {
            break;
          }

          v60 = v58 >> 1;
          v61 = v58 > 1;
          v58 >>= 1;
          if (!v61)
          {
            goto LABEL_65;
          }
        }

        v47 = v59;
        sub_298BB99F4(v56, v57, (v57 - v56) >> 3, v59, v58);
        operator delete(v47);
      }

      v45 = *v45;
      v10 = a6;
    }

    while (v45);
  }

LABEL_66:
  v62 = *(v10 + 88);
  if (v62)
  {
    v65 = (*(v10 + 80) + 16);
    v66 = 32 * v62;
    do
    {
      sub_298BB6060(*(v65 - 1), *v65);
      v65 += 4;
      v66 -= 32;
    }

    while (v66);
  }

  sub_298BBB1C4(v76);
  result = sub_298AE9948(v85);
  v64 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BB6060(uint64_t a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 < 1)
  {
    v8 = 0;
LABEL_7:

    sub_298BB99F4(a1, a2, v4, 0, v8);
  }

  else
  {
    v5 = MEMORY[0x29EDC9418];
    v6 = (a2 - a1) >> 3;
    while (1)
    {
      v7 = operator new(8 * v6, v5);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = v7;
    sub_298BB99F4(a1, a2, v4, v7, v6);

    operator delete(v10);
  }
}

uint64_t sub_298BB613C(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, unsigned __int8 a6)
{
  v72 = *MEMORY[0x29EDCA608];
  v6 = a3[1];
  v69 = *a3;
  v70 = v6;
  v71 = *(a3 + 4);
  sub_298BB5210(a1, a2, &v69, a5, a6, v66);
  v7 = v67;
  if (v67)
  {
    __src = 0;
    v8 = 0;
    do
    {
      v9 = *(v7 + 1);
      v71 = 0;
      v70 = 0uLL;
      v10 = *(v7 + 2);
      v69 = v9;
      v70 = v10;
      v71 = v7[6];
      v7[5] = 0;
      v7[6] = 0;
      v7[4] = 0;
      v11 = v8 - __src;
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - __src) >> 3);
      v13 = v12 + 1;
      if (v12 + 1 > 0x666666666666666)
      {
        sub_298ADDDA0();
      }

      if (0x999999999999999ALL * (-__src >> 3) > v13)
      {
        v13 = 0x999999999999999ALL * (-__src >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
      {
        v14 = 0x666666666666666;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        if (v14 <= 0x666666666666666)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v15 = 8 * ((v8 - __src) >> 3);
      *v15 = v69;
      *(v15 + 16) = v10;
      *(v15 + 32) = v71;
      v71 = 0;
      v70 = 0uLL;
      v8 = (v15 + 40);
      v16 = (40 * v12 - v11);
      memcpy((v15 - v11), __src, v11);
      if (__src)
      {
        operator delete(__src);
      }

      __src = v16;
      sub_298AF0458(&v70);
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    __src = 0;
  }

  *v63 = 0u;
  *v64 = 0u;
  v62 = 0u;
  v65 = 1065353216;
  *v57 = 0u;
  *v58 = 0u;
  v59 = -1;
  v60 = -1;
  v61 = 1065353216;
  v17 = __src;
  if (__src == v8)
  {
    *&v69 = v57;
    sub_298BBD828(__src, v8, &v69, 0, 1);
    goto LABEL_47;
  }

  do
  {
    *&v69 = v17;
    v18 = sub_298BBD348(v57, *v17, v17[1]);
    v19 = v17[2];
    v20 = v17[3];
    v51 = v17;
    if (v19 != v20)
    {
      v21 = v18;
      while (1)
      {
        *&v68 = **(*v19 + 8);
        if (v62 != v68)
        {
          break;
        }

        v22 = *(&v62 + 1);
        v24 = *(*v19 + 176);
        v23 = *(*v19 + 184);
        if (v24 < v23)
        {
          goto LABEL_25;
        }

LABEL_22:
        v19 += 8;
        if (v19 == v20)
        {
          goto LABEL_19;
        }
      }

      *&v69 = &v68;
      v32 = sub_298C0E688(v63, &v68);
      v22 = v32[3];
      if (!v22)
      {
        v33 = v32;
        (*(**(v68 + 96) + 24))(&v69, *(v68 + 96));
        v34 = v33;
        v35 = v69;
        *&v69 = 0;
        v36 = v33[3];
        v33[3] = v35;
        if (v36)
        {
          (*(*v36 + 8))(v36);
          v34 = v33;
          v37 = v69;
          *&v69 = 0;
          if (v37)
          {
            (*(*v37 + 8))(v37);
            v34 = v33;
          }
        }

        v22 = v34[3];
      }

      *&v62 = v68;
      *(&v62 + 1) = v22;
      v24 = *(*v19 + 176);
      v23 = *(*v19 + 184);
      if (v24 >= v23)
      {
        goto LABEL_22;
      }

LABEL_25:
      v25 = *(v22 + 24);
      v26 = 12 * v24 + 8;
      while (1)
      {
        if (v25 > v24)
        {
          v27 = *(v22 + 64);
          if (v27 <= v24)
          {
            v25 = v24 - v27 + 1;
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          if (*(v22 + 32) + v25 > v24)
          {
            v29 = *(v22 + 40);
            goto LABEL_30;
          }

          v31 = *(v22 + 64);
          v25 = v24;
        }

        *(v22 + 48) = *(v22 + 40);
        v28 = *(v22 + 16);
        (*(**(v22 + 8) + 32))(*(v22 + 8), v25);
        v29 = *(v22 + 40);
        v30 = 0xAAAAAAAAAAAAAAABLL * ((*(v22 + 48) - v29) >> 2);
        *(v22 + 24) = v25;
        *(v22 + 32) = v30;
LABEL_30:
        v21[4] += *(v29 - 12 * v25 + v26) & 0x3FFFFF;
        ++v24;
        v26 += 12;
        if (v23 == v24)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_19:
    v17 = v51 + 5;
  }

  while (v51 + 5 != v8);
  *&v69 = v57;
  v17 = __src;
  sub_298BBD828(__src, v8, &v69, 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v8 - __src) >> 3)), 1);
  v38 = __src;
  do
  {
    if (v38[2] != v38[3])
    {
      *v54 = 0uLL;
      *v55 = 0uLL;
      v53 = 0uLL;
      v56 = 1065353216;
      sub_298BB33B0(v38[2], v38[3] - v38[2], a4, &v53);
    }

    v38 += 5;
  }

  while (v38 != v8);
LABEL_47:
  v39 = v58[0];
  if (v58[0])
  {
    do
    {
      v40 = *v39;
      operator delete(v39);
      v39 = v40;
    }

    while (v40);
  }

  v41 = v57[0];
  v57[0] = 0;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = v64[0];
  if (v64[0])
  {
    do
    {
      v48 = *v42;
      v49 = v42[3];
      v42[3] = 0;
      if (v49)
      {
        (*(*v49 + 8))(v49);
      }

      operator delete(v42);
      v42 = v48;
    }

    while (v48);
  }

  v43 = v63[0];
  v63[0] = 0;
  if (v43)
  {
    operator delete(v43);
  }

  v44 = v8;
  if (v17)
  {
    if (v17 != v8)
    {
      do
      {
        v45 = v44 - 5;
        sub_298AF0458(v44 - 3);
        v44 = v45;
      }

      while (v45 != v17);
    }

    operator delete(v17);
  }

  result = sub_298AE7C28(v66);
  v47 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BB7238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v5 = *(a1 + 28);
  if (!v5)
  {
    return;
  }

  v7 = a4;
  v9 = a2;
  v10 = *(v5 + 8);
  if (v10 < 2)
  {
    goto LABEL_128;
  }

  v11 = 0;
  v12 = 0;
  v13 = v10 - 1;
  v14 = 1;
  v15 = a1;
  do
  {
    v16 = **(v15 + 28);
    v17 = *(v16 + 8 * v11);
    *(v17 + 2);
    if ((*v17 & 2) != 0)
    {
      goto LABEL_5;
    }

    v18 = *(v16 + 8 * v14);
    if (((*v18 ^ *v17) & 3) != 0)
    {
      goto LABEL_5;
    }

    v19 = sub_298BF7B4C(a2, (*(v17 + 16) << 17) >> 15, a3);
    v20 = (*(v18 + 2) << 17) >> 15;
    if (v19)
    {
      v21 = *(a3 + 8) <= v20 && *(a3 + 16) > v20;
      v15 = a1;
      if (!v21)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = a1;
      if (sub_298BF7B4C(a2, v20, a3))
      {
        goto LABEL_5;
      }
    }

    v22 = a5[1];
    v119 = *a5;
    v120 = v22;
    v121 = *(a5 + 4);
    v23 = *(v18 + 3) | (*(v18 + 5) << 16);
    if ((v23 & 0x800000) == 0)
    {
      v24 = v23 & 0x3FFFFF;
      if ((v23 & 0x400000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v26 = *v7;
    v27 = *(v7 + 4);
    if (v27)
    {
      LODWORD(v28) = (v27 - 1) & ((v18 >> 4) ^ (v18 >> 9));
      v29 = (v26 + 16 * v28);
      v30 = *v29;
      if (*v29 == v18)
      {
        v24 = v29[1];
        if ((v23 & 0x400000) != 0)
        {
          goto LABEL_23;
        }

        goto LABEL_18;
      }

      v86 = 1;
      do
      {
        if (v30 == -4096)
        {
          goto LABEL_89;
        }

        v87 = v28 + v86++;
        v28 = v87 & (v27 - 1);
        v30 = *(v26 + 16 * v28);
      }

      while (v30 != v18);
      v24 = *(v26 + 16 * v28 + 8);
      if ((v23 & 0x400000) == 0)
      {
        goto LABEL_18;
      }

LABEL_23:
      v31 = v7[3];
      v32 = *(v7 + 10);
      if (v32)
      {
        LODWORD(v33) = (v32 - 1) & ((v18 >> 4) ^ (v18 >> 9));
        v34 = (v31 + 16 * v33);
        v35 = *v34;
        if (*v34 == v18)
        {
          goto LABEL_30;
        }

        v36 = 1;
        while (v35 != -4096)
        {
          v37 = v33 + v36++;
          v33 = v37 & (v32 - 1);
          v35 = *(v31 + 16 * v33);
          if (v35 == v18)
          {
            v34 = (v31 + 16 * v33);
            goto LABEL_30;
          }
        }
      }

      v34 = (v31 + 16 * v32);
LABEL_30:
      sub_298BB4A50(v17, v24, v34[1], v7, &v119);
      v25 = *(v18 + 14);
      if (!v25)
      {
        goto LABEL_82;
      }

      goto LABEL_31;
    }

LABEL_89:
    v24 = *(v26 + 16 * v27 + 8);
    if ((v23 & 0x400000) != 0)
    {
      goto LABEL_23;
    }

LABEL_18:
    sub_298BB4A50(v17, v24, (*v18 | (*(v18 + 2) << 16)) >> 2, v7, &v119);
    v25 = *(v18 + 14);
    if (!v25)
    {
      goto LABEL_82;
    }

LABEL_31:
    v38 = *(v25 + 8);
    if (v38)
    {
      v39 = *v25;
      v40 = *v25 + 8 * v38;
      while (1)
      {
        *(*v39 + 8) = v17;
        sub_298BBB250((v17 + 28));
        v41 = *(v17 + 28);
        v42 = *(v41 + 8);
        v43 = *v41;
        v44 = v39;
        if (v42 >= *(v41 + 12))
        {
          break;
        }

LABEL_34:
        v45 = *(v41 + 8);
        v46 = *v44;
        *v44 = 0;
        *&v43[8 * v45] = v46;
        *(v41 + 8) = v45 + 1;
        v39 += 8;
        if (v39 == v40)
        {
          goto LABEL_82;
        }
      }

      if (v43 <= v39 && &v43[8 * v42] > v39)
      {
        *&v119 = 0;
        v108 = sub_298B90848(v41, (v41 + 16), v42 + 1, 8, &v119);
        v66 = *v41;
        v67 = *(v41 + 8);
        if (v67)
        {
          v68 = (v67 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v114 = 8 * v67;
          if (v68 < 5)
          {
            v69 = v108;
            v70 = *v41;
            goto LABEL_72;
          }

          v71 = v66 >= &v108[v114] || v108 >= &v66[v114];
          v69 = v108;
          v70 = *v41;
          if (!v71)
          {
            goto LABEL_72;
          }

          v72 = v68 + 1;
          v73 = 8 * (v72 & 0x3FFFFFFFFFFFFFFCLL);
          v69 = &v108[v73];
          v70 = &v66[v73];
          v74 = (v66 + 16);
          v75 = v108 + 16;
          v76 = v72 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v77 = *(v74 - 1);
            v78 = *v74;
            *(v74 - 1) = 0u;
            *v74 = 0u;
            *(v75 - 1) = v77;
            *v75 = v78;
            v74 += 2;
            v75 += 2;
            v76 -= 4;
          }

          while (v76);
          if (v72 != (v72 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_72:
            v79 = &v66[8 * v67];
            do
            {
              v80 = *v70;
              *v70 = 0;
              v70 += 8;
              *v69 = v80;
              v69 += 8;
            }

            while (v70 != v79);
          }

          v110 = v66 - 8;
          do
          {
            v81 = *&v110[v114];
            *&v110[v114] = 0;
            if (v81)
            {
              v112 = v81;
              sub_298B07DB0((v81 + 28));
              MEMORY[0x29C2945F0](v112, 0x1020C40CE35E8ABLL);
            }

            v114 -= 8;
          }

          while (v114);
          v66 = *v41;
        }

        v115 = v119;
        if (v66 != (v41 + 16))
        {
          free(v66);
        }

        v82 = v39 - v43;
        *v41 = v108;
        *(v41 + 12) = v115;
        v43 = *v41;
        v44 = (*v41 + v82);
        goto LABEL_34;
      }

      *&v119 = 0;
      v109 = sub_298B90848(v41, (v41 + 16), v42 + 1, 8, &v119);
      v48 = *v41;
      v49 = *(v41 + 8);
      if (!v49)
      {
LABEL_58:
        v65 = v119;
        if (v48 != (v41 + 16))
        {
          free(v48);
        }

        *v41 = v109;
        *(v41 + 12) = v65;
        v43 = v109;
        v44 = v39;
        goto LABEL_34;
      }

      v50 = (v49 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v51 = 8 * v49;
      if (v50 >= 5)
      {
        v54 = v48 >= &v109[v51] || v109 >= &v48[v51];
        v52 = v109;
        v53 = *v41;
        if (v54)
        {
          v55 = v50 + 1;
          v56 = 8 * (v55 & 0x3FFFFFFFFFFFFFFCLL);
          v52 = &v109[v56];
          v53 = &v48[v56];
          v57 = (v48 + 16);
          v58 = v109 + 16;
          v59 = v55 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v60 = *(v57 - 1);
            v61 = *v57;
            *(v57 - 1) = 0uLL;
            *v57 = 0uLL;
            *(v58 - 1) = v60;
            *v58 = v61;
            v57 += 2;
            v58 += 2;
            v59 -= 4;
          }

          while (v59);
          if (v55 == (v55 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_53:
            v111 = v48 - 8;
            do
            {
              v64 = *&v111[v51];
              *&v111[v51] = 0;
              if (v64)
              {
                v113 = v51;
                sub_298B07DB0((v64 + 28));
                MEMORY[0x29C2945F0](v64, 0x1020C40CE35E8ABLL);
                v51 = v113;
              }

              v51 -= 8;
            }

            while (v51);
            v48 = *v41;
            goto LABEL_58;
          }
        }
      }

      else
      {
        v52 = v109;
        v53 = *v41;
      }

      v62 = &v48[8 * v49];
      do
      {
        v63 = *v53;
        *v53 = 0;
        v53 += 8;
        *v52 = v63;
        v52 += 8;
      }

      while (v53 != v62);
      goto LABEL_53;
    }

LABEL_82:
    v15 = a1;
    v83 = **(a1 + 28);
    v84 = *(v83 + 8 * v11);
    *(v83 + 8 * v11) = 0;
    v85 = *(v83 + 8 * v14);
    *(v83 + 8 * v14) = v84;
    if (v85)
    {
      sub_298B07DB0((v85 + 28));
      MEMORY[0x29C2945F0](v85, 0x1020C40CE35E8ABLL);
    }

    v12 = 1;
    v7 = a4;
LABEL_5:
    ++v14;
    ++v11;
  }

  while (v11 != v13);
  v5 = *(v15 + 28);
  if ((v12 & 1) == 0)
  {
    v9 = a2;
    if (!v5)
    {
      return;
    }

    goto LABEL_127;
  }

  if (v5)
  {
    v88 = *v5;
    v89 = *(v5 + 8);
    v90 = *v5 + 8 * v89;
    if (v89)
    {
      v91 = 8 * v89;
      while (*v88)
      {
        v88 += 8;
        v91 -= 8;
        if (!v91)
        {
          v88 = v90;
          goto LABEL_111;
        }
      }
    }

    if (v88 != v90)
    {
      v92 = (v88 + 8);
      if (v88 + 8 != v90)
      {
        do
        {
          v93 = *v92;
          if (*v92)
          {
            *v92 = 0;
            v94 = *v88;
            *v88 = v93;
            if (v94)
            {
              sub_298B07DB0((v94 + 28));
              MEMORY[0x29C2945F0](v94, 0x1020C40CE35E8ABLL);
            }

            v88 += 8;
          }

          ++v92;
        }

        while (v92 != v90);
        v5 = *(a1 + 28);
      }
    }

LABEL_111:
    if (v5)
    {
      v95 = (*v5 + 8 * *(v5 + 8));
      v96 = *v5;
      v97 = *(v5 + 8);
      v98 = *v5 + 8 * v97;
      if (v98 == v95)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v95 = 0;
      v96 = MEMORY[0];
      v97 = MEMORY[8];
      v98 = MEMORY[0] + 8 * MEMORY[8];
      if (!v98)
      {
        goto LABEL_120;
      }
    }
  }

  else
  {
    v88 = 0;
    v95 = 0;
    v96 = MEMORY[0];
    v97 = MEMORY[8];
    v98 = MEMORY[0] + 8 * MEMORY[8];
    if (!v98)
    {
      goto LABEL_120;
    }
  }

  do
  {
    v99 = *v95;
    *v95 = 0;
    v100 = *v88;
    *v88 = v99;
    if (v100)
    {
      sub_298B07DB0((v100 + 28));
      MEMORY[0x29C2945F0](v100, 0x1020C40CE35E8ABLL);
    }

    ++v95;
    v88 += 8;
  }

  while (v95 != v98);
  v96 = *v5;
  v97 = *(v5 + 8);
LABEL_120:
  v101 = &v96[8 * v97];
  v9 = a2;
  if (v101 == v88)
  {
    *(v5 + 8) = (v88 - v96) >> 3;
    v5 = *(a1 + 28);
    if (!v5)
    {
      return;
    }

    goto LABEL_127;
  }

  do
  {
    v103 = *(v101 - 1);
    v101 -= 8;
    v102 = v103;
    *v101 = 0;
    if (v103)
    {
      sub_298B07DB0((v102 + 28));
      MEMORY[0x29C2945F0](v102, 0x1020C40CE35E8ABLL);
    }
  }

  while (v101 != v88);
  *(v5 + 8) = &v88[-*v5] >> 3;
  v5 = *(a1 + 28);
  if (v5)
  {
LABEL_127:
    v10 = *(v5 + 8);
LABEL_128:
    if (v10)
    {
      v104 = *v5;
      v105 = 8 * v10;
      do
      {
        v106 = *v104;
        v104 += 8;
        v107 = a5[1];
        v119 = *a5;
        v120 = v107;
        v121 = *(a5 + 4);
        sub_298BB7238(v106, v9, a3, v7, &v119);
        v105 -= 8;
      }

      while (v105);
    }
  }
}

char ***sub_298BB7A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __int128 *a5)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v282 = *MEMORY[0x29EDCA608];
  v272 = 0;
  v276 = 1;
  v277 = -4096;
  v279 = -4096;
  v280 = -4096;
  v281[0] = -4096;
  v10 = *(a1 + 28);
  if (!v10)
  {
    v272 = 0;
LABEL_244:
    v219 = v276;
    if (v276 <= 1)
    {
      goto LABEL_250;
    }

    goto LABEL_251;
  }

  v11 = *v10;
  v12 = *(v10 + 8);
  if (!v12)
  {
    v272 = 0;
    *(a1 + 28) = 0;
LABEL_247:
    if (v11 == (v10 + 16))
    {
      goto LABEL_249;
    }

    goto LABEL_248;
  }

  v13 = &v11[8 * v12];
  v271 = v13;
  do
  {
    while (1)
    {
      while (1)
      {
        *(*v11 + 2);
        if ((**v11 & 2) == 0)
        {
          break;
        }

        sub_298BBB250(&v272);
        v19 = v272;
        v20 = *(v272 + 2);
        v21 = *v272;
        v22 = v11;
        if (v20 >= *(v272 + 3))
        {
          if (v21 > v11 || &v21[8 * v20] <= v11)
          {
            *&v273 = 0;
            v105 = v272 + 2;
            v106 = sub_298B90848(v272, v272 + 2, v20 + 1, 8, &v273);
            v107 = *v19;
            v108 = *(v19 + 2);
            if (!v108)
            {
              v128 = a4;
LABEL_142:
              v141 = v273;
              if (v107 != v105)
              {
                free(v107);
              }

              *v19 = v106;
              *(v19 + 3) = v141;
              v21 = v106;
              v22 = v11;
              a4 = v128;
              v8 = a2;
LABEL_145:
              v13 = v271;
              goto LABEL_10;
            }

            v109 = (v108 - 1) & 0x1FFFFFFFFFFFFFFFLL;
            v110 = v108;
            v259 = v9;
            if (v109 >= 5)
            {
              v129 = v107 >= &v106[v110 * 8] || v106 >= &v107[v110];
              v111 = v106;
              v112 = *v19;
              if (v129)
              {
                v130 = v109 + 1;
                v131 = v130 & 0x3FFFFFFFFFFFFFFCLL;
                v111 = &v106[v131 * 8];
                v112 = &v107[v131];
                v132 = (v107 + 2);
                v133 = v106 + 16;
                v134 = v130 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v135 = *(v132 - 1);
                  v136 = *v132;
                  *(v132 - 1) = 0uLL;
                  *v132 = 0uLL;
                  *(v133 - 1) = v135;
                  *v133 = v136;
                  v132 += 2;
                  v133 += 2;
                  v134 -= 4;
                }

                while (v134);
                if (v130 == (v130 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_137:
                  v128 = a4;
                  v139 = v107 - 1;
                  do
                  {
                    v140 = v139[v110];
                    v139[v110] = 0;
                    if (v140)
                    {
                      sub_298B07DB0((v140 + 28));
                      MEMORY[0x29C2945F0](v140, 0x1020C40CE35E8ABLL);
                    }

                    --v110;
                  }

                  while (v110 * 8);
                  v107 = *v19;
                  v7 = a3;
                  v9 = v259;
                  goto LABEL_142;
                }
              }
            }

            else
            {
              v111 = v106;
              v112 = *v19;
            }

            v137 = &v107[v108];
            do
            {
              v138 = *v112;
              *v112 = 0;
              v112 += 8;
              *v111 = v138;
              v111 += 8;
            }

            while (v112 != v137);
            goto LABEL_137;
          }

          v261 = v9;
          v264 = a4;
          *&v273 = 0;
          v172 = v272 + 2;
          v173 = sub_298B90848(v272, v272 + 2, v20 + 1, 8, &v273);
          v174 = *v19;
          v175 = *(v19 + 2);
          if (!v175)
          {
LABEL_216:
            v199 = v273;
            if (v174 != v172)
            {
              free(v174);
            }

            v200 = (v11 - v21);
            *v19 = v173;
            *(v19 + 3) = v199;
            v21 = v173;
            v22 = &v200[v173];
            v9 = v261;
            a4 = v264;
            v7 = a3;
            v8 = a2;
            goto LABEL_145;
          }

          v176 = (v175 - 1) & 0x1FFFFFFFFFFFFFFFLL;
          v177 = v175;
          if (v176 >= 5)
          {
            v187 = v174 >= &v173[v177 * 8] || v173 >= &v174[v177];
            v178 = v173;
            v179 = *v19;
            if (v187)
            {
              v188 = v176 + 1;
              v189 = v188 & 0x3FFFFFFFFFFFFFFCLL;
              v178 = &v173[v189 * 8];
              v179 = &v174[v189];
              v190 = (v174 + 2);
              v191 = v173 + 16;
              v192 = v188 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v193 = *(v190 - 1);
                v194 = *v190;
                *(v190 - 1) = 0u;
                *v190 = 0u;
                *(v191 - 1) = v193;
                *v191 = v194;
                v190 += 2;
                v191 += 2;
                v192 -= 4;
              }

              while (v192);
              if (v188 == (v188 & 0x3FFFFFFFFFFFFFFCLL))
              {
LABEL_211:
                v197 = v174 - 1;
                do
                {
                  v198 = v197[v177];
                  v197[v177] = 0;
                  if (v198)
                  {
                    sub_298B07DB0((v198 + 28));
                    MEMORY[0x29C2945F0](v198, 0x1020C40CE35E8ABLL);
                  }

                  --v177;
                }

                while (v177 * 8);
                v174 = *v19;
                goto LABEL_216;
              }
            }
          }

          else
          {
            v178 = v173;
            v179 = *v19;
          }

          v195 = &v174[v175];
          do
          {
            v196 = *v179;
            *v179 = 0;
            v179 += 8;
            *v178 = v196;
            v178 += 8;
          }

          while (v179 != v195);
          goto LABEL_211;
        }

LABEL_10:
        v23 = *(v19 + 2);
        v24 = *v22;
        *v22 = 0;
        *&v21[8 * v23] = v24;
        *(v19 + 2) = v23 + 1;
        v11 += 8;
        if (v11 == v13)
        {
          goto LABEL_237;
        }
      }

      if (**v11)
      {
        v25 = sub_298BF7B4C(v8, (*(*v11 + 16) << 17) >> 15, v7);
        if (v25)
        {
          v14 = v25;
        }

        else
        {
          v14 = off_2A13C2B60;
        }

        v15 = v276;
        v16 = v276 & 1;
        if (v276)
        {
LABEL_8:
          v17 = 4;
          v18 = &v277;
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 0;
        v15 = v276;
        v16 = v276 & 1;
        if (v276)
        {
          goto LABEL_8;
        }
      }

      v17 = v278;
      if (!v278)
      {
        v54 = 0;
LABEL_116:
        sub_298BBB354(&v276, 2 * v54);
        v15 = v276;
        if (v276)
        {
          v117 = 4;
          v118 = &v277;
        }

        else
        {
          v117 = v278;
          if (!v278)
          {
            goto LABEL_194;
          }

          v118 = v277;
        }

        v16 = v276 & 1;
        v159 = v117 - 1;
        v160 = v159 & ((v14 >> 4) ^ (v14 >> 9));
        v28 = &v118[2 * v160];
        v161 = *v28;
        if (v14 != *v28)
        {
          v162 = 0;
          v163 = 1;
          while (v161 != -4096)
          {
            if (v162)
            {
              v164 = 0;
            }

            else
            {
              v164 = v161 == -8192;
            }

            if (v164)
            {
              v162 = v28;
            }

            v165 = v160 + v163++;
            v160 = v165 & v159;
            v28 = &v118[2 * v160];
            v161 = *v28;
            if (v14 == *v28)
            {
              goto LABEL_221;
            }
          }

LABEL_219:
          if (v162)
          {
            v28 = v162;
          }

LABEL_221:
          v7 = a3;
          v8 = a2;
          goto LABEL_38;
        }

        goto LABEL_38;
      }

      v18 = v277;
LABEL_18:
      v26 = v17 - 1;
      v27 = v26 & ((v14 >> 4) ^ (v14 >> 9));
      v28 = &v18[2 * v27];
      v29 = *v28;
      if (v14 == *v28)
      {
        goto LABEL_19;
      }

      v113 = 0;
      v114 = 1;
      while (v29 != -4096)
      {
        if (v113)
        {
          v115 = 0;
        }

        else
        {
          v115 = v29 == -8192;
        }

        if (v115)
        {
          v113 = v28;
        }

        v116 = v27 + v114++;
        v27 = v116 & v26;
        v28 = &v18[2 * v27];
        v29 = *v28;
        if (v14 == *v28)
        {
          goto LABEL_19;
        }
      }

      if (v113)
      {
        v28 = v113;
      }

      if (v16)
      {
        v54 = 4;
      }

      else
      {
        v54 = v278;
      }

      if (4 * (v15 >> 1) + 4 >= 3 * v54)
      {
        goto LABEL_116;
      }

      if (v54 + ~(v15 >> 1) - HIDWORD(v276) <= v54 >> 3)
      {
        sub_298BBB354(&v276, v54);
        v15 = v276;
        if (v276)
        {
          v142 = 4;
          v143 = &v277;
        }

        else
        {
          v142 = v278;
          if (!v278)
          {
LABEL_194:
            v16 = 0;
            v28 = 0;
            goto LABEL_38;
          }

          v143 = v277;
        }

        v16 = v276 & 1;
        v166 = v142 - 1;
        v167 = v166 & ((v14 >> 4) ^ (v14 >> 9));
        v28 = &v143[2 * v167];
        v168 = *v28;
        if (v14 != *v28)
        {
          v162 = 0;
          v169 = 1;
          while (v168 != -4096)
          {
            if (v162)
            {
              v170 = 0;
            }

            else
            {
              v170 = v168 == -8192;
            }

            if (v170)
            {
              v162 = v28;
            }

            v171 = v167 + v169++;
            v167 = v171 & v166;
            v28 = &v143[2 * v167];
            v168 = *v28;
            if (v14 == *v28)
            {
              goto LABEL_221;
            }
          }

          goto LABEL_219;
        }
      }

LABEL_38:
      LODWORD(v276) = (v15 & 0xFFFFFFFE | v16) + 2;
      if (*v28 != -4096)
      {
        --HIDWORD(v276);
      }

      *v28 = v14;
      *(v28 + 2) = 0;
LABEL_19:
      v30 = *(v28 + 2);
      if (!v30)
      {
        break;
      }

      v19 = v272;
      v31 = *&(*v272)[8 * (v30 - 1)];
      v32 = *v11;
      v33 = a5[1];
      v273 = *a5;
      v274 = v33;
      v275 = *(a5 + 4);
      v34 = *(v32 + 3) | (*(v32 + 5) << 16);
      if ((v34 & 0x800000) != 0)
      {
        v42 = *a4;
        v43 = *(a4 + 4);
        if (v43)
        {
          LODWORD(v44) = (v43 - 1) & ((v32 >> 4) ^ (v32 >> 9));
          v45 = (v42 + 16 * v44);
          v46 = *v45;
          if (*v45 == v32)
          {
            v35 = v45[1];
            if ((v34 & 0x400000) != 0)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v144 = 1;
            do
            {
              if (v46 == -4096)
              {
                goto LABEL_154;
              }

              v145 = v44 + v144++;
              v44 = v145 & (v43 - 1);
              v46 = *(v42 + 16 * v44);
            }

            while (v46 != v32);
            v35 = *(v42 + 16 * v44 + 8);
            if ((v34 & 0x400000) != 0)
            {
LABEL_30:
              v47 = a4[3];
              v48 = *(a4 + 10);
              if (v48)
              {
                LODWORD(v49) = (v48 - 1) & ((v32 >> 4) ^ (v32 >> 9));
                v50 = (v47 + 16 * v49);
                v51 = *v50;
                if (*v50 != v32)
                {
                  v52 = 1;
                  do
                  {
                    if (v51 == -4096)
                    {
                      goto LABEL_41;
                    }

                    v53 = v49 + v52++;
                    v49 = v53 & (v48 - 1);
                    v51 = *(v47 + 16 * v49);
                  }

                  while (v51 != v32);
                  v50 = (v47 + 16 * v49);
                }
              }

              else
              {
LABEL_41:
                v50 = (v47 + 16 * v48);
              }

              sub_298BB4A50(v31, v35, v50[1], a4, &v273);
              v36 = *(v32 + 14);
              if (!v36)
              {
                goto LABEL_4;
              }

LABEL_43:
              v55 = *(v36 + 8);
              if (!v55)
              {
                goto LABEL_4;
              }

              v56 = *v36;
              v57 = *v36 + 8 * v55;
              while (2)
              {
                *(*v56 + 8) = v31;
                sub_298BBB250((v31 + 28));
                v58 = *(v31 + 28);
                v59 = *(v58 + 8);
                v60 = *v58;
                v61 = v56;
                if (v59 < *(v58 + 12))
                {
LABEL_46:
                  v62 = *(v58 + 8);
                  v63 = *v61;
                  *v61 = 0;
                  *&v60[8 * v62] = v63;
                  *(v58 + 8) = v62 + 1;
                  v56 += 8;
                  if (v56 == v57)
                  {
                    v7 = a3;
                    v8 = a2;
                    goto LABEL_4;
                  }

                  continue;
                }

                break;
              }

              v64 = v60 <= v56 && &v60[8 * v59] > v56;
              v263 = a4;
              if (!v64)
              {
                *&v273 = 0;
                v65 = (v58 + 16);
                v266 = sub_298B90848(v58, (v58 + 16), v59 + 1, 8, &v273);
                v66 = *v58;
                v67 = *(v58 + 8);
                if (v67)
                {
                  v257 = v9;
                  v68 = (v67 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                  v69 = 8 * v67;
                  if (v68 < 5)
                  {
                    v70 = v266;
                    v71 = *v58;
                    goto LABEL_63;
                  }

                  v72 = v66 >= &v266[v69] || v266 >= &v66[v69];
                  v70 = v266;
                  v71 = *v58;
                  if (!v72)
                  {
                    goto LABEL_63;
                  }

                  v73 = v68 + 1;
                  v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
                  v70 = &v266[v74];
                  v71 = &v66[v74];
                  v75 = (v66 + 16);
                  v76 = v266 + 16;
                  v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v78 = *(v75 - 1);
                    v79 = *v75;
                    *(v75 - 1) = 0uLL;
                    *v75 = 0uLL;
                    *(v76 - 1) = v78;
                    *v76 = v79;
                    v75 += 2;
                    v76 += 2;
                    v77 -= 4;
                  }

                  while (v77);
                  if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
                  {
LABEL_63:
                    v80 = &v66[8 * v67];
                    do
                    {
                      v81 = *v71;
                      *v71 = 0;
                      v71 += 8;
                      *v70 = v81;
                      v70 += 8;
                    }

                    while (v71 != v80);
                  }

                  v82 = v66 - 8;
                  do
                  {
                    v83 = *&v82[v69];
                    *&v82[v69] = 0;
                    if (v83)
                    {
                      sub_298B07DB0((v83 + 28));
                      MEMORY[0x29C2945F0](v83, 0x1020C40CE35E8ABLL);
                    }

                    v69 -= 8;
                  }

                  while (v69);
                  v66 = *v58;
                  v65 = (v58 + 16);
                  v9 = v257;
                }

                v84 = v273;
                if (v66 != v65)
                {
                  free(v66);
                }

                *v58 = v266;
                *(v58 + 12) = v84;
                v60 = v266;
                v61 = v56;
                a4 = v263;
                goto LABEL_46;
              }

              v258 = v9;
              *&v273 = 0;
              v256 = sub_298B90848(v58, (v58 + 16), v59 + 1, 8, &v273);
              v85 = *v58;
              v86 = *(v58 + 8);
              if (v86)
              {
                v87 = (v86 - 1) & 0x1FFFFFFFFFFFFFFFLL;
                v88 = 8 * v86;
                if (v87 < 5)
                {
                  v89 = v256;
                  v90 = *v58;
                  goto LABEL_84;
                }

                v91 = v85 >= &v256[v88] || v256 >= &v85[v88];
                v89 = v256;
                v90 = *v58;
                if (!v91)
                {
                  goto LABEL_84;
                }

                v92 = v87 + 1;
                v93 = 8 * (v92 & 0x3FFFFFFFFFFFFFFCLL);
                v89 = &v256[v93];
                v90 = &v85[v93];
                v94 = (v85 + 16);
                v95 = v256 + 16;
                v96 = v92 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v97 = *(v94 - 1);
                  v98 = *v94;
                  *(v94 - 1) = 0u;
                  *v94 = 0u;
                  *(v95 - 1) = v97;
                  *v95 = v98;
                  v94 += 2;
                  v95 += 2;
                  v96 -= 4;
                }

                while (v96);
                if (v92 != (v92 & 0x3FFFFFFFFFFFFFFCLL))
                {
LABEL_84:
                  v99 = &v85[8 * v86];
                  do
                  {
                    v100 = *v90;
                    *v90 = 0;
                    v90 += 8;
                    *v89 = v100;
                    v89 += 8;
                  }

                  while (v90 != v99);
                }

                v267 = v85 - 8;
                do
                {
                  v101 = *&v267[v88];
                  *&v267[v88] = 0;
                  if (v101)
                  {
                    sub_298B07DB0((v101 + 28));
                    MEMORY[0x29C2945F0](v101, 0x1020C40CE35E8ABLL);
                  }

                  v88 -= 8;
                }

                while (v88);
                v85 = *v58;
              }

              v102 = v273;
              if (v85 != (v58 + 16))
              {
                free(v85);
              }

              v103 = v56 - v60;
              v9 = v258;
              *v58 = v256;
              *(v58 + 12) = v102;
              v60 = v256;
              v61 = &v256[v103];
              a4 = v263;
              goto LABEL_46;
            }
          }
        }

        else
        {
LABEL_154:
          v35 = *(v42 + 16 * v43 + 8);
          if ((v34 & 0x400000) != 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v35 = v34 & 0x3FFFFF;
        if ((v34 & 0x400000) != 0)
        {
          goto LABEL_30;
        }
      }

      sub_298BB4A50(v31, v35, (*v32 | (*(v32 + 2) << 16)) >> 2, a4, &v273);
      v36 = *(v32 + 14);
      if (v36)
      {
        goto LABEL_43;
      }

LABEL_4:
      v13 = v271;
      v11 += 8;
      if (v11 == v271)
      {
        goto LABEL_237;
      }
    }

    sub_298BBB250(&v272);
    v19 = v272;
    v37 = *(v272 + 2);
    v38 = *v272;
    v39 = v11;
    if (v37 < *(v272 + 3))
    {
      goto LABEL_25;
    }

    if (v38 > v11 || &v38[8 * v37] <= v11)
    {
      *&v273 = 0;
      v120 = v272 + 2;
      v121 = sub_298B90848(v272, v272 + 2, v37 + 1, 8, &v273);
      v122 = *v19;
      v123 = *(v19 + 2);
      if (!v123)
      {
        v146 = a4;
LABEL_169:
        v158 = v273;
        if (v122 != v120)
        {
          free(v122);
        }

        *v19 = v121;
        *(v19 + 3) = v158;
        v38 = v121;
        v39 = v11;
        a4 = v146;
        v8 = a2;
        goto LABEL_25;
      }

      v124 = (v123 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v125 = v123;
      v260 = v9;
      if (v124 >= 5)
      {
        if (v122 >= &v121[v125 * 8] || (v126 = v121, v127 = *v19, v121 >= &v122[v125]))
        {
          v147 = v124 + 1;
          v148 = v147 & 0x3FFFFFFFFFFFFFFCLL;
          v126 = &v121[v148 * 8];
          v127 = &v122[v148];
          v149 = (v122 + 2);
          v150 = v121 + 16;
          v151 = v147 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v152 = *(v149 - 1);
            v153 = *v149;
            *(v149 - 1) = 0uLL;
            *v149 = 0uLL;
            *(v150 - 1) = v152;
            *v150 = v153;
            v149 += 2;
            v150 += 2;
            v151 -= 4;
          }

          while (v151);
          if (v147 == (v147 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_164:
            v146 = a4;
            v156 = v122 - 1;
            do
            {
              v157 = v156[v125];
              v156[v125] = 0;
              if (v157)
              {
                sub_298B07DB0((v157 + 28));
                MEMORY[0x29C2945F0](v157, 0x1020C40CE35E8ABLL);
              }

              --v125;
            }

            while (v125 * 8);
            v122 = *v19;
            v120 = v19 + 2;
            v7 = a3;
            v9 = v260;
            goto LABEL_169;
          }
        }
      }

      else
      {
        v126 = v121;
        v127 = *v19;
      }

      v154 = &v122[v123];
      do
      {
        v155 = *v127;
        *v127 = 0;
        v127 += 8;
        *v126 = v155;
        v126 += 8;
      }

      while (v127 != v154);
      goto LABEL_164;
    }

    v262 = v9;
    v265 = a4;
    *&v273 = 0;
    v268 = v272 + 2;
    v180 = sub_298B90848(v272, v272 + 2, v37 + 1, 8, &v273);
    v181 = *v19;
    v182 = *(v19 + 2);
    if (v182)
    {
      v183 = (v182 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v184 = v182;
      if (v183 < 5)
      {
        v185 = v180;
        v186 = *v19;
        goto LABEL_227;
      }

      if (v181 < &v180[v184 * 8])
      {
        v185 = v180;
        v186 = *v19;
        if (v180 < &v181[v184])
        {
          goto LABEL_227;
        }
      }

      v201 = v183 + 1;
      v202 = v201 & 0x3FFFFFFFFFFFFFFCLL;
      v185 = &v180[v202 * 8];
      v186 = &v181[v202];
      v203 = (v181 + 2);
      v204 = v180 + 16;
      v205 = v201 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v206 = *(v203 - 1);
        v207 = *v203;
        *(v203 - 1) = 0u;
        *v203 = 0u;
        *(v204 - 1) = v206;
        *v204 = v207;
        v203 += 2;
        v204 += 2;
        v205 -= 4;
      }

      while (v205);
      if (v201 != (v201 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_227:
        v208 = &v181[v182];
        do
        {
          v209 = *v186;
          *v186 = 0;
          v186 += 8;
          *v185 = v209;
          v185 += 8;
        }

        while (v186 != v208);
      }

      v210 = v181 - 1;
      do
      {
        v211 = v210[v184];
        v210[v184] = 0;
        if (v211)
        {
          sub_298B07DB0((v211 + 28));
          MEMORY[0x29C2945F0](v211, 0x1020C40CE35E8ABLL);
        }

        --v184;
      }

      while (v184 * 8);
      v181 = *v19;
    }

    v212 = v273;
    if (v181 != v268)
    {
      free(v181);
    }

    v213 = (v11 - v38);
    *v19 = v180;
    *(v19 + 3) = v212;
    v38 = v180;
    v39 = &v213[v180];
    v9 = v262;
    a4 = v265;
    v7 = a3;
    v8 = a2;
LABEL_25:
    v40 = *(v19 + 2);
    v41 = *v39;
    *v39 = 0;
    *&v38[8 * v40] = v41;
    LODWORD(v40) = v40 + 1;
    *(v19 + 2) = v40;
    *(v28 + 2) = v40;
    v13 = v271;
    v11 += 8;
  }

  while (v11 != v271);
LABEL_237:
  v10 = *(v9 + 28);
  v272 = 0;
  *(v9 + 28) = v19;
  if (!v10)
  {
    goto LABEL_244;
  }

  v11 = *v10;
  v214 = *(v10 + 8);
  if (!v214)
  {
    goto LABEL_247;
  }

  v215 = v9;
  v216 = 8 * v214;
  v217 = v11 - 8;
  do
  {
    v218 = *&v217[v216];
    *&v217[v216] = 0;
    if (v218)
    {
      sub_298B07DB0((v218 + 28));
      MEMORY[0x29C2945F0](v218, 0x1020C40CE35E8ABLL);
    }

    v216 -= 8;
  }

  while (v216);
  v11 = *v10;
  v9 = v215;
  if (*v10 != v10 + 16)
  {
LABEL_248:
    free(v11);
  }

LABEL_249:
  MEMORY[0x29C2945F0](v10, 0x1080C40ABB4582ELL);
  v219 = v276;
  if (v276 > 1)
  {
    goto LABEL_251;
  }

LABEL_250:
  if (!HIDWORD(v276))
  {
    goto LABEL_278;
  }

LABEL_251:
  v220 = &v282;
  if (v219)
  {
    v233 = &v277;
    v234 = v281 - &v277;
    if ((v281 - &v277) > 0xF)
    {
      goto LABEL_272;
    }

    goto LABEL_267;
  }

  v221 = v278;
  if (v278 <= 2 * v219 || v278 < 0x41)
  {
    if (!v278)
    {
LABEL_277:
      v276 = v221;
      goto LABEL_278;
    }

    v233 = v277;
    v220 = (v277 + 16 * v278);
    v234 = 16 * v278 - 16;
    if (v234 > 0xF)
    {
LABEL_272:
      v236 = (v234 >> 4) + 1;
      v235 = &v233[2 * (v236 & 0x1FFFFFFFFFFFFFFELL)];
      v237 = v233 + 2;
      v238 = v236 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v237 - 2) = -4096;
        *v237 = -4096;
        v237 += 4;
        v238 -= 2;
      }

      while (v238);
      if (v236 == (v236 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_276;
      }

      goto LABEL_275;
    }

LABEL_267:
    v235 = v233;
    do
    {
LABEL_275:
      *v235 = -4096;
      v235 += 2;
    }

    while (v235 != v220);
LABEL_276:
    LODWORD(v221) = v276 & 1;
    goto LABEL_277;
  }

  v222 = v9;
  v223 = __clz((v219 >> 1) - 1);
  if (v223 - 28 >= 3)
  {
    v224 = 1 << (33 - v223);
  }

  else
  {
    v224 = 64;
  }

  if (v219 >= 2)
  {
    v225 = v224;
  }

  else
  {
    v225 = 0;
  }

  if (v225 != v278)
  {
    MEMORY[0x29C2945E0](v277, 8);
    if (v225 < 5)
    {
      v9 = v222;
      v276 = 1;
      v249 = v281 - &v277;
      v250 = &v277;
      if ((v281 - &v277) >= 0x10)
      {
        goto LABEL_291;
      }
    }

    else
    {
      LODWORD(v276) = v276 & 0xFFFFFFFE;
      v247 = operator new(16 * v225, 8uLL);
      v277 = v247;
      v278 = v225;
      if ((v276 & 1) == 0)
      {
        v220 = &v247[2 * v225];
      }

      v248 = &v277;
      if ((v276 & 1) == 0)
      {
        v248 = v247;
      }

      v9 = v222;
      v276 &= 1u;
      v249 = v220 - v248 - 16;
      v250 = v248;
      if (v249 >= 0x10)
      {
LABEL_291:
        v251 = (v249 >> 4) + 1;
        v252 = &v250[2 * (v251 & 0x1FFFFFFFFFFFFFFELL)];
        v253 = v250 + 2;
        v254 = v251 & 0x1FFFFFFFFFFFFFFELL;
        do
        {
          *(v253 - 2) = -4096;
          *v253 = -4096;
          v253 += 4;
          v254 -= 2;
        }

        while (v254);
        if (v251 == (v251 & 0x1FFFFFFFFFFFFFFELL))
        {
          goto LABEL_278;
        }

        do
        {
LABEL_297:
          *v252 = -4096;
          v252 += 2;
        }

        while (v252 != v220);
        goto LABEL_278;
      }
    }

    v252 = v250;
    goto LABEL_297;
  }

  v276 = 0;
  v226 = v277;
  v227 = (v278 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (!v227)
  {
    v230 = v277;
    v9 = v222;
    goto LABEL_300;
  }

  v228 = v227 + 1;
  v229 = (v227 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v230 = (v277 + 16 * v229);
  v231 = (v277 + 16);
  v232 = v229;
  v9 = v222;
  do
  {
    *(v231 - 2) = -4096;
    *v231 = -4096;
    v231 += 4;
    v232 -= 2;
  }

  while (v232);
  if (v228 != v229)
  {
LABEL_300:
    v255 = (v226 + 16 * v221);
    do
    {
      *v230 = -4096;
      v230 += 2;
    }

    while (v230 != v255);
  }

LABEL_278:
  v239 = *(v9 + 28);
  if (v239)
  {
    v240 = *(v239 + 8);
    if (v240)
    {
      v241 = *v239;
      v242 = 8 * v240;
      do
      {
        v243 = *v241++;
        v244 = a5[1];
        v273 = *a5;
        v274 = v244;
        v275 = *(a5 + 4);
        sub_298BB7A44(v243, v8, v7, a4, &v273);
        v242 -= 8;
      }

      while (v242);
    }
  }

  if ((v276 & 1) == 0)
  {
    MEMORY[0x29C2945E0](v277, 8);
  }

  result = sub_298B07DB0(&v272);
  v246 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BB8C00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 8);
  v5 = *result;
  if (v4)
  {
    if ((*(*result + 8) & 1) == 0)
    {
      *(v5 + 8) = 1;
    }

    *v5 = v4;
    return result;
  }

  if (!*(*result + 8))
  {
    return result;
  }

  v6 = *(a4 + 8);
  v7 = *v5;
  if ((*v5 & 0xFFFF00) == 0x10100)
  {
    v8 = (v7 >> 30) & 1 | v4;
    v9 = **(result + 8);
    if (v9)
    {
      if (*(v9 + 192) == v8)
      {
LABEL_12:
        v7 = *v5;
        goto LABEL_13;
      }

      *(v9 + 184) = v6;
    }

    if (v6 < *(*(result + 16) + 184))
    {
      operator new();
    }

    goto LABEL_12;
  }

LABEL_13:
  if ((v7 & 0xFFFF00) == 0x20100 && **(result + 8))
  {
    v10 = *(a2 + 8) | (v7 >> 30) & 1;
    v11 = *(*(result + 32) + 104);
    if (!v11)
    {
LABEL_21:
      operator new();
    }

    v12 = **(result + 40);
    while (1)
    {
      while (1)
      {
        v13 = v11;
        v14 = v11[4];
        if (v12 >= v14)
        {
          break;
        }

        v11 = *v13;
        if (!*v13)
        {
          goto LABEL_21;
        }
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = v13[1];
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v15 = v13[6];
    if (!v15)
    {
LABEL_28:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v16 = v15;
        v17 = v15[4];
        if (v10 >= v17)
        {
          break;
        }

        v15 = *v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      if (v17 >= v10)
      {
        break;
      }

      v15 = v16[1];
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    result = *(**(result + 8) + 200);
    if (!result)
    {
      operator new();
    }

    v18 = *(result + 8);
    if (v18 >= *(result + 12))
    {
      v20 = result;
      sub_298B90A44(result, (result + 16), v18 + 1, 16);
      result = v20;
      LODWORD(v18) = *(v20 + 8);
    }

    v19 = (*result + 16 * v18);
    *v19 = v6;
    v19[1] = v10;
    ++*(result + 8);
  }

  return result;
}

uint64_t sub_298BB96B8(uint64_t result)
{
  v1 = *(result + 200);
  *(result + 200) = 0;
  if (v1)
  {
    v2 = result;
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x29C2945F0](v1, 0x1080C40ABB4582ELL);
    return v2;
  }

  return result;
}

void sub_298BB9714(uint64_t a1)
{
  v1 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v1)
  {
    if (*v1 != v1 + 2)
    {
      free(*v1);
    }

    MEMORY[0x29C2945F0](v1, 0x1080C40ABB4582ELL);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BB9798(void *a1, void *a2)
{
  v4 = a2[4];
  if ((a2[3] - v4) > 4)
  {
    *(v4 + 4) = 99;
    *v4 = 1853453121;
    a2[4] += 5;
  }

  else
  {
    sub_298B9BCEC(a2, "Async", 5uLL);
  }

  sub_298BB2C98(a1, a2);
  v5 = a2[4];
  if ((a2[3] - v5) > 8)
  {
    *(v5 + 8) = 61;
    *v5 = *" [taskId=";
    a2[4] += 9;
    v7 = a1[24];
    v6 = a2;
    if (HIDWORD(v7))
    {
LABEL_6:
      sub_298B8FEA0(v6, v7, 0, 0, 0);
      v8 = a2[4];
      if (a2[3] - v8 > 1uLL)
      {
        goto LABEL_7;
      }

LABEL_11:
      sub_298B9BCEC(a2, ", ", 2uLL);
      v9 = a1[25];
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = sub_298B9BCEC(a2, " [taskId=", 9uLL);
    v7 = a1[24];
    if (HIDWORD(v7))
    {
      goto LABEL_6;
    }
  }

  sub_298B8FC48(v6, v7, 0, 0, 0);
  v8 = a2[4];
  if (a2[3] - v8 <= 1uLL)
  {
    goto LABEL_11;
  }

LABEL_7:
  *v8 = 8236;
  a2[4] += 2;
  v9 = a1[25];
  if (v9)
  {
LABEL_8:
    v10 = *(v9 + 8);
    goto LABEL_13;
  }

LABEL_12:
  v10 = 0;
LABEL_13:
  sub_298B8FC48(a2, v10, 0, 0, 0);
  v11 = a2[4];
  if ((a2[3] - v11) <= 0x12)
  {
    v12 = sub_298B9BCEC(a2, " awaits, numRanges=", 0x13uLL);
    v13 = a1[23] - a1[22];
    if (HIDWORD(v13))
    {
      goto LABEL_15;
    }

LABEL_20:
    result = sub_298B8FC48(v12, v13, 0, 0, 0);
    v15 = a2[4];
    if (a2[3] == v15)
    {
      goto LABEL_16;
    }

LABEL_21:
    *v15 = 93;
    ++a2[4];
    return result;
  }

  *(v11 + 15) = 1030972775;
  *v11 = *" awaits, numRanges=";
  a2[4] += 19;
  v13 = a1[23] - a1[22];
  v12 = a2;
  if (!HIDWORD(v13))
  {
    goto LABEL_20;
  }

LABEL_15:
  result = sub_298B8FEA0(v12, v13, 0, 0, 0);
  v15 = a2[4];
  if (a2[3] != v15)
  {
    goto LABEL_21;
  }

LABEL_16:

  return sub_298B9BCEC(a2, "]", 1uLL);
}

uint64_t sub_298BB99F4(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v19 = a2 - 1;
      result = sub_298BB9CCC(a2 - 1, result);
      if (result)
      {
        v20 = *v6;
        *v6 = *v19;
        *v19 = v20;
      }
    }

    else
    {
      v7 = a3;
      if (a3 <= 0)
      {

        return sub_298BB9DCC(result, a2);
      }

      else
      {
        v8 = a4;
        v9 = a3 >> 1;
        v10 = (result + 8 * (a3 >> 1));
        v11 = a3 - (a3 >> 1);
        v12 = a3 >> 1;
        if (v7 > a5)
        {
          sub_298BB99F4(result, v10, v12, a4, a5);
          sub_298BB99F4(v10, a2, v11, v8, a5);

          return sub_298BBA650(v6, v10, a2, v9, v11, v8, a5);
        }

        else
        {
          sub_298BBA088(result, v10, v12, a4);
          v13 = &v8[v9];
          result = sub_298BBA088(&v6[v7 >> 1], a2, v7 - (v7 >> 1), v13);
          v14 = &v8[v7];
          v15 = v13;
          v16 = v8;
          while (v15 != v14)
          {
            if (sub_298BB9CCC(v15, v16))
            {
              v23 = *v15;
              *v15 = 0;
              result = *v6;
              *v6 = v23;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              ++v15;
            }

            else
            {
              v17 = *v16;
              *v16 = 0;
              result = *v6;
              *v6 = v17;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              ++v16;
            }

            ++v6;
            if (v16 == v13)
            {
              while (v15 != v14)
              {
                v21 = *v15;
                *v15 = 0;
                result = *v6;
                *v6 = v21;
                if (result)
                {
                  result = (*(*result + 8))(result);
                }

                ++v15;
                ++v6;
              }

              goto LABEL_27;
            }
          }

          while (v16 != v13)
          {
            v18 = *v16;
            *v16 = 0;
            result = *v6;
            *v6 = v18;
            if (result)
            {
              result = (*(*result + 8))(result);
            }

            ++v16;
            ++v6;
          }

LABEL_27:
          if (v8)
          {
            do
            {
              result = *v8;
              *v8 = 0;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              ++v8;
              --v7;
            }

            while (v7);
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_298BB9CCC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v3[9];
  v5 = *(*a2 + 72);
  if (v4 == -1)
  {
    if (v5 != -1)
    {
      return 1;
    }

    v8 = v3[8];
    if (v8 == -1 || ((v9 = *(*a2 + 64), v9 != -1) ? (v10 = *(*a2 + 64)) : (v10 = 0), v9 != -1 ? (v11 = v8 == v10) : (v11 = 1), v11))
    {
      v12 = a1;
      v14 = (*(*v3 + 24))(v3);
      v15 = (*(**a2 + 24))();
      v6 = v14 >= v15;
      if (v14 == v15)
      {
        v6 = (*v12)[19] >= *(*a2 + 152);
      }
    }

    else
    {
      v6 = v8 >= v9;
    }
  }

  else
  {
    v6 = v5 == -1 || v4 >= v5;
  }

  return !v6;
}

unint64_t sub_298BB9DCC(unint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 8;
    if (result + 8 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = *v4;
        v9 = *(*v4 + 72);
        v10 = *(*v7 + 72);
        if (v9 == -1)
        {
          if (v10 != -1)
          {
            goto LABEL_14;
          }

          v28 = v8[8];
          if (v28 == -1 || ((v29 = *(*v7 + 64), v29 != -1) ? (v30 = *(*v7 + 64)) : (v30 = 0), v29 != -1 ? (v31 = v28 == v30) : (v31 = 1), v31))
          {
            v32 = (*(*v8 + 24))(v8);
            result = (*(**v7 + 24))();
            if (v32 == result)
            {
              v8 = *v6;
              if (*(*v6 + 152) >= *(*v7 + 152))
              {
                goto LABEL_6;
              }
            }

            else
            {
              if (v32 >= result)
              {
                goto LABEL_6;
              }

              v8 = *v6;
            }

LABEL_14:
            v12 = 0;
            *v6 = 0;
            for (i = v5; ; i -= 8)
            {
              v15 = (v3 + i);
              v16 = *(v3 + i);
              *v15 = 0;
              v15[1] = v16;
              if (v12)
              {
                (*(*v12 + 8))(v12);
              }

              if (!i)
              {
                break;
              }

              v17 = v3 + i;
              v18 = v8[9];
              v19 = *(v3 + i - 8);
              v20 = *(v19 + 72);
              if (v18 == -1)
              {
                if (v20 == -1)
                {
                  v21 = v8[8];
                  if (v21 == -1 || ((v22 = *(v19 + 64), v22 != -1) ? (v23 = v22) : (v23 = 0), v22 != -1 ? (v24 = v21 == v23) : (v24 = 1), v24))
                  {
                    v25 = (*(*v8 + 24))(v8);
                    v26 = (*(**(v17 - 1) + 24))(*(v17 - 1));
                    v27 = v25 >= v26;
                    if (v25 == v26)
                    {
                      v27 = v8[19] >= *(*(v17 - 1) + 152);
                    }

                    if (v27)
                    {
                      goto LABEL_40;
                    }
                  }

                  else if (v21 >= v22)
                  {
                    goto LABEL_40;
                  }
                }
              }

              else if (v20 == -1 || v18 >= v20)
              {
LABEL_40:
                result = *(v3 + i);
                *(v3 + i) = v8;
                if (!result)
                {
                  goto LABEL_6;
                }

LABEL_5:
                result = (*(*result + 8))(result);
                goto LABEL_6;
              }

              v12 = *v15;
            }

            result = *v3;
            *v3 = v8;
            if (!result)
            {
              goto LABEL_6;
            }

            goto LABEL_5;
          }

          if (v28 < v29)
          {
            goto LABEL_14;
          }
        }

        else if (v10 != -1 && v9 < v10)
        {
          goto LABEL_14;
        }

LABEL_6:
        v4 = v6 + 8;
        v5 += 8;
      }

      while (v6 + 8 != a2);
    }
  }

  return result;
}

uint64_t *sub_298BBA088(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v6 = result;
  switch(a3)
  {
    case 2:
      v73 = &v74;
      v74 = 0;
      v26 = a2 - 1;
      v25 = *(a2 - 1);
      v27 = v25[9];
      v28 = *v6;
      v29 = *(*v6 + 72);
      if (v27 != -1)
      {
        if (v29 != -1 && v27 < v29)
        {
          goto LABEL_44;
        }

LABEL_42:
        v25 = v28;
LABEL_46:
        *v6 = 0;
        *v4 = v25;
        ++v74;
        v32 = *v26;
        *v26 = 0;
        v4[1] = v32;
        goto LABEL_47;
      }

      if (v29 == -1)
      {
        v33 = v25[8];
        if (v33 == -1 || ((v34 = v28[8], v34 != -1) ? (v35 = v28[8]) : (v35 = 0), v34 != -1 ? (v36 = v33 == v35) : (v36 = 1), v36))
        {
          v37 = (*(*v25 + 24))(v25);
          v38 = (*(**v6 + 24))();
          if (v37 != v38)
          {
            if (v37 < v38)
            {
              v31 = v6;
              v25 = *v26;
              goto LABEL_45;
            }

            v28 = *v6;
            goto LABEL_42;
          }

          v25 = *v26;
          v33 = *(*v26 + 152);
          v28 = *v6;
          v34 = *(*v6 + 152);
        }

        if (v33 >= v34)
        {
          goto LABEL_42;
        }
      }

LABEL_44:
      v31 = v6;
LABEL_45:
      v6 = v26;
      v26 = v31;
      goto LABEL_46;
    case 0:
      return result;
    case 1:
      v69 = *result;
      *result = 0;
      *a4 = v69;
      return result;
  }

  if (a3 <= 8)
  {
    if (result == a2)
    {
      return result;
    }

    v73 = &v74;
    v21 = *result;
    *result = 0;
    v22 = result + 1;
    *a4 = v21;
    v74 = 1;
    if (result + 1 != a2)
    {
      v23 = 0;
      v24 = a4;
      do
      {
        v40 = v24;
        v42 = *v24++;
        v41 = v42;
        v39 = *v22;
        v43 = *(*v22 + 72);
        v44 = v42[9];
        if (v43 == -1)
        {
          if (v44 != -1)
          {
            goto LABEL_69;
          }

          v61 = v39[8];
          if (v61 != -1)
          {
            v62 = v41[8];
            v63 = v62 == -1 ? 0 : v41[8];
            if (v62 != -1 && v61 != v63)
            {
              goto LABEL_107;
            }
          }

          v65 = (*(*v39 + 24))(v39);
          v66 = (*(**v40 + 24))();
          if (v65 == v66)
          {
            v39 = *v22;
            v61 = *(*v22 + 152);
            v41 = *v40;
            v62 = (*v40)[19];
LABEL_107:
            if (v61 >= v62)
            {
              goto LABEL_62;
            }

            goto LABEL_69;
          }

          if (v65 >= v66)
          {
            v39 = *v22;
LABEL_62:
            *v22 = 0;
            *v24 = v39;
            ++v74;
            goto LABEL_63;
          }

          v41 = *v40;
        }

        else if (v44 == -1 || v43 >= v44)
        {
          goto LABEL_62;
        }

LABEL_69:
        *v40 = 0;
        v40[1] = v41;
        ++v74;
        v46 = v4;
        if (v40 != v4)
        {
          v47 = v23;
          while (1)
          {
            v48 = (v4 + v47);
            v49 = *v22;
            v50 = *(*v22 + 72);
            v51 = *(v4 + v47 - 8);
            v52 = v51[9];
            if (v50 == -1)
            {
              if (v52 == -1)
              {
                v55 = v49[8];
                if (v55 == -1 || ((v56 = v51[8], v56 != -1) ? (v57 = v51[8]) : (v57 = 0), v56 != -1 ? (v58 = v55 == v57) : (v58 = 1), v58))
                {
                  v59 = (*(*v49 + 24))(v49);
                  v60 = (*(**(v48 - 1) + 24))(*(v48 - 1));
                  if (v59 != v60)
                  {
                    if (v59 >= v60)
                    {
LABEL_113:
                      v46 = v40;
                      break;
                    }

                    v51 = *(v48 - 1);
                    goto LABEL_77;
                  }

                  v55 = *(*v22 + 152);
                  v51 = *(v48 - 1);
                  v56 = v51[19];
                }

                if (v55 >= v56)
                {
                  goto LABEL_113;
                }
              }
            }

            else if (v52 == -1 || v50 >= v52)
            {
              v46 = (v4 + v47);
              break;
            }

LABEL_77:
            v54 = *v48;
            *(v48 - 1) = 0;
            *v48 = v51;
            if (v54)
            {
              (*(*v54 + 8))(v54);
            }

            --v40;
            v47 -= 8;
            if (!v47)
            {
              v46 = v4;
              break;
            }
          }
        }

        v67 = *v22;
        *v22 = 0;
        v68 = *v46;
        *v46 = v67;
        if (v68)
        {
          (*(*v68 + 8))(v68);
        }

LABEL_63:
        ++v22;
        v23 += 8;
      }

      while (v22 != a2);
    }

LABEL_47:
    v72 = 0;
    return sub_298BBB13C(&v72);
  }

  v7 = a3 >> 1;
  v8 = a3 >> 1;
  v9 = &result[v8];
  sub_298BB99F4(result, &result[v8], v7, a4, v7);
  result = sub_298BB99F4(&v6[v8], a2, a3 - v7, &v4[v8], a3 - v7);
  v11 = &v6[v8];
  while (v11 != a2)
  {
    result = *v11;
    v12 = (*v11)[9];
    v13 = *v6;
    v14 = *(*v6 + 72);
    if (v12 == -1)
    {
      if (v14 != -1)
      {
        goto LABEL_7;
      }

      v16 = result[8];
      if (v16 != -1)
      {
        v17 = v13[8];
        v18 = v17 == -1 ? 0 : v13[8];
        if (v17 != -1 && v16 != v18)
        {
          goto LABEL_28;
        }
      }

      v20 = (*(*result + 24))(result);
      result = (*(**v6 + 24))();
      if (v20 == result)
      {
        result = *v11;
        v16 = (*v11)[19];
        v13 = *v6;
        v17 = *(*v6 + 152);
LABEL_28:
        if (v16 >= v17)
        {
          goto LABEL_16;
        }

        goto LABEL_7;
      }

      if (v20 >= result)
      {
        v13 = *v6;
LABEL_16:
        *v6++ = 0;
        *v4 = v13;
        goto LABEL_8;
      }

      result = *v11;
    }

    else if (v14 == -1 || v12 >= v14)
    {
      goto LABEL_16;
    }

LABEL_7:
    *v11++ = 0;
    *v4 = result;
LABEL_8:
    ++v4;
    if (v6 == v9)
    {
      while (v11 != a2)
      {
        v70 = *v11;
        *v11++ = 0;
        *v4++ = v70;
      }

      return result;
    }
  }

  while (v6 != v9)
  {
    v71 = *v6;
    *v6++ = 0;
    *v4++ = v71;
  }

  return result;
}

uint64_t *sub_298BBA650(uint64_t *result, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v147 = a5;
  if (!a5)
  {
    return result;
  }

  v8 = a6;
  v12 = result;
  while (2)
  {
    while (2)
    {
      if (a4 <= a7 || v147 <= a7)
      {
        v148[0] = v8;
        v148[1] = &v149;
        v149 = 0;
        if (a4 > v147)
        {
          if (a2 != a3)
          {
            v73 = a3 - a2 - 8;
            if (v73 > 0x47 && (v8 + (v73 & 0xFFFFFFFFFFFFFFF8) + 8 <= a2 || a2 + (v73 & 0xFFFFFFFFFFFFFFF8) + 8 <= v8))
            {
              v120 = (v73 >> 3) + 1;
              v121 = 8 * (v120 & 0x3FFFFFFFFFFFFFFCLL);
              v75 = (v8 + v121);
              v76 = (a2 + v121);
              v122 = (a2 + 16);
              v123 = (v8 + 16);
              v124 = vdupq_n_s64(1uLL);
              v125 = v120 & 0x3FFFFFFFFFFFFFFCLL;
              v126 = 0uLL;
              v127 = 0uLL;
              do
              {
                v128 = *(v122 - 1);
                v129 = *v122;
                *(v122 - 1) = 0uLL;
                *v122 = 0uLL;
                *(v123 - 1) = v128;
                *v123 = v129;
                v127 = vaddq_s64(v127, v124);
                v126 = vaddq_s64(v126, v124);
                v122 += 2;
                v123 += 2;
                v125 -= 4;
              }

              while (v125);
              v74 = vaddvq_s64(vpaddq_s64(v126, v127));
              if (v120 == (v120 & 0x3FFFFFFFFFFFFFFCLL))
              {
                goto LABEL_121;
              }
            }

            else
            {
              v74 = 0;
              v75 = v8;
              v76 = a2;
            }

            do
            {
              v77 = *v76;
              *v76++ = 0;
              *v75++ = v77;
              ++v74;
            }

            while (v76 != a3);
LABEL_121:
            v149 = v74;
            do
            {
              if (a2 == v12)
              {
                if (v75 != v8)
                {
                  v114 = 0x1FFFFFFFFFFFFFFFLL;
                  do
                  {
                    v115 = *--v75;
                    *v75 = 0;
                    v116 = a3[v114];
                    a3[v114] = v115;
                    if (v116)
                    {
                      (*(*v116 + 8))(v116);
                    }

                    --v114;
                  }

                  while (v75 != v8);
                }

                return sub_298BBB13C(v148);
              }

              v80 = a2 - 8;
              v79 = *(a2 - 8);
              v82 = v75 - 1;
              v81 = *(v75 - 1);
              v83 = v81[9];
              v84 = *(v79 + 72);
              if (v83 == -1)
              {
                if (v84 != -1)
                {
                  goto LABEL_123;
                }

                v87 = v81[8];
                if (v87 != -1)
                {
                  v88 = *(v79 + 64);
                  v89 = v88 == -1 ? 0 : *(v79 + 64);
                  if (v88 != -1 && v87 != v89)
                  {
                    goto LABEL_146;
                  }
                }

                v91 = (*(*v81 + 24))(v81);
                v92 = (*(**v80 + 24))();
                if (v91 == v92)
                {
                  v81 = *v82;
                  v87 = *(*v82 + 152);
                  v79 = *v80;
                  v88 = *(*v80 + 152);
LABEL_146:
                  if (v87 >= v88)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_123;
                }

                if (v91 >= v92)
                {
                  v81 = *v82;
LABEL_133:
                  *v82 = 0;
                  v86 = *(a3 - 1);
                  *(a3 - 1) = v81;
                  v78 = v86;
                  v80 = a2;
                  --v75;
                  if (!v86)
                  {
                    goto LABEL_125;
                  }

LABEL_124:
                  (*(*v78 + 8))(v78);
                  goto LABEL_125;
                }

                v79 = *v80;
              }

              else if (v84 == -1 || v83 >= v84)
              {
                goto LABEL_133;
              }

LABEL_123:
              *v80 = 0;
              v78 = *(a3 - 1);
              *(a3 - 1) = v79;
              if (v78)
              {
                goto LABEL_124;
              }

LABEL_125:
              --a3;
              a2 = v80;
            }

            while (v75 != v8);
          }

          return sub_298BBB13C(v148);
        }

        if (a2 == v12)
        {
          return sub_298BBB13C(v148);
        }

        v94 = a2 - v12 - 8;
        if (v94 > 0x47 && (v12 >= v8 + (v94 & 0xFFFFFFFFFFFFFFF8) + 8 || v12 + (v94 & 0xFFFFFFFFFFFFFFF8) + 8 <= v8))
        {
          v130 = (v94 >> 3) + 1;
          v131 = v130 & 0x3FFFFFFFFFFFFFFCLL;
          v132 = v130 & 0x3FFFFFFFFFFFFFFCLL;
          v96 = (v8 + v132 * 8);
          v97 = &v12[v132];
          v133 = (v12 + 2);
          v134 = (v8 + 16);
          v135 = vdupq_n_s64(1uLL);
          v136 = v130 & 0x3FFFFFFFFFFFFFFCLL;
          v137 = 0uLL;
          v138 = 0uLL;
          do
          {
            v139 = *(v133 - 1);
            v140 = *v133;
            *(v133 - 1) = 0uLL;
            *v133 = 0uLL;
            *(v134 - 1) = v139;
            *v134 = v140;
            v138 = vaddq_s64(v138, v135);
            v137 = vaddq_s64(v137, v135);
            v133 += 2;
            v134 += 2;
            v136 -= 4;
          }

          while (v136);
          v95 = vaddvq_s64(vpaddq_s64(v137, v138));
          if (v130 == v131)
          {
            v99 = v8 + 8 * v131 - 8;
LABEL_161:
            v149 = v95;
            while (1)
            {
              while (1)
              {
                if (a2 == a3)
                {
                  v117 = v8 - 8;
                  do
                  {
                    v118 = *(v117 + 8);
                    *(v117 + 8) = 0;
                    v119 = *v12;
                    *v12 = v118;
                    if (v119)
                    {
                      (*(*v119 + 8))(v119);
                    }

                    ++v12;
                    v117 += 8;
                  }

                  while (v117 != v99);
                  return sub_298BBB13C(v148);
                }

                v100 = *a2;
                v101 = *(*a2 + 72);
                v102 = *v8;
                v103 = *(*v8 + 72);
                if (v101 == -1)
                {
                  break;
                }

                if (v103 != -1 && v101 < v103)
                {
                  goto LABEL_175;
                }

LABEL_170:
                *v8 = 0;
                v105 = *v12;
                *v12 = v102;
                if (v105)
                {
                  goto LABEL_171;
                }

LABEL_172:
                v8 += 8;
                ++v12;
                if (v8 == v96)
                {
                  return sub_298BBB13C(v148);
                }
              }

              if (v103 == -1)
              {
                v107 = v100[8];
                if (v107 == -1 || ((v108 = *(v102 + 64), v108 != -1) ? (v109 = *(v102 + 64)) : (v109 = 0), v108 != -1 ? (v110 = v107 == v109) : (v110 = 1), v110))
                {
                  v111 = (*(*v100 + 24))(v100);
                  v112 = (*(**v8 + 24))();
                  if (v111 != v112)
                  {
                    if (v111 >= v112)
                    {
                      v113 = *v8;
                      *v8 = 0;
                      v105 = *v12;
                      *v12 = v113;
                      if (!v105)
                      {
                        goto LABEL_172;
                      }

LABEL_171:
                      (*(*v105 + 8))(v105);
                      goto LABEL_172;
                    }

                    v100 = *a2;
                    goto LABEL_175;
                  }

                  v100 = *a2;
                  v107 = *(*a2 + 152);
                  v102 = *v8;
                  v108 = *(*v8 + 152);
                }

                if (v107 >= v108)
                {
                  goto LABEL_170;
                }
              }

LABEL_175:
              *a2 = 0;
              v106 = *v12;
              *v12 = v100;
              if (v106)
              {
                (*(*v106 + 8))(v106);
              }

              a2 += 8;
              ++v12;
              if (v8 == v96)
              {
                return sub_298BBB13C(v148);
              }
            }
          }
        }

        else
        {
          v95 = 0;
          v96 = v8;
          v97 = v12;
        }

        do
        {
          v98 = *v97;
          *v97++ = 0;
          *v96++ = v98;
          ++v95;
        }

        while (v97 != a2);
        v99 = (v96 - 1);
        goto LABEL_161;
      }

      if (!a4)
      {
        return result;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        result = *a2;
        v16 = *(*a2 + 72);
        v17 = v12[v13 / 8];
        v18 = *(v17 + 72);
        if (v16 == -1)
        {
          break;
        }

        v15 = v18 == -1 || v16 >= v18;
        if (!v15)
        {
          goto LABEL_29;
        }

LABEL_12:
        v13 += 8;
        v15 = __CFADD__(v14++, 1);
        if (v15)
        {
          return result;
        }
      }

      if (v18 != -1)
      {
        goto LABEL_29;
      }

      v19 = result[8];
      if (v19 != -1)
      {
        v20 = *(v17 + 64);
        v21 = v20 == -1 ? 0 : v20;
        if (v20 != -1 && v19 != v21)
        {
          if (v19 < v20)
          {
            goto LABEL_29;
          }

          goto LABEL_12;
        }
      }

      v23 = (*(*result + 24))(result);
      result = (*(*v12[v13 / 8] + 24))(v12[v13 / 8]);
      v24 = v23 >= result;
      if (v23 == result)
      {
        v24 = *(*a2 + 152) >= *(v12[v13 / 8] + 152);
      }

      if (v24)
      {
        goto LABEL_12;
      }

LABEL_29:
      v25 = -v14;
      v144 = &v12[v13 / 8];
      v146 = a3;
      if (-v14 >= v147)
      {
        if (v14 == -1)
        {
          v93 = v12[v13 / 8];
          v12[v13 / 8] = *a2;
          *a2 = v93;
          return result;
        }

        v43 = v25 / 2;
        v28 = &v12[v25 / 2 + v13 / 8];
        if (a2 == a3)
        {
          v27 = 0;
          v26 = 0;
          v44 = a2;
          a3 = a2;
          if (a2 == v28)
          {
            goto LABEL_109;
          }

LABEL_92:
          a3 = v28;
          if (a2 != v44)
          {
            v59 = *v28;
            *v28 = *a2;
            a3 = v28 + 1;
            *a2 = v59;
            v60 = v43;
            v61 = v27 - 8;
            if (v27 != 8)
            {
              v62 = (a2 + 8);
              do
              {
                if (a3 == a2)
                {
                  a2 = v62;
                }

                v63 = *a3;
                *a3++ = *v62;
                *v62++ = v63;
                v61 -= 8;
              }

              while (v61);
            }

            if (a3 != a2)
            {
              v64 = a3;
              v65 = a2;
              while (1)
              {
                v66 = *v64;
                *v64++ = *v65;
                *v65++ = v66;
                v67 = v64 == a2;
                if (v65 == v44)
                {
                  if (v64 == a2)
                  {
                    break;
                  }

                  v65 = (a2 + 8);
                  v68 = v64;
                  while (1)
                  {
                    v69 = *v64;
                    *v68++ = *a2;
                    *a2 = v69;
                    v67 = v68 == a2;
                    if (v65 != v44)
                    {
                      break;
                    }

                    v64 = v68;
                    if (v68 == a2)
                    {
                      goto LABEL_108;
                    }
                  }

                  ++v64;
                }

                if (v67)
                {
                  a2 = v65;
                }
              }
            }

LABEL_108:
            v43 = v60;
          }

          goto LABEL_109;
        }

        v142 = a7;
        v143 = v25 / 2;
        v27 = 0;
        v45 = (a3 - a2) >> 3;
        while (1)
        {
          v46 = v45 >> 1;
          v47 = v27 + 8 * (v45 >> 1);
          v48 = *(a2 + v47);
          v49 = v48[9];
          v50 = *(*v28 + 72);
          if (v49 == -1)
          {
            if (v50 == -1)
            {
              v52 = v48[8];
              if (v52 == -1 || ((v53 = *(*v28 + 64), v53 != -1) ? (v54 = *(*v28 + 64)) : (v54 = 0), v53 != -1 ? (v55 = v52 == v54) : (v55 = 1), v55))
              {
                v56 = (*(*v48 + 24))(v48);
                v57 = (*(**v28 + 24))();
                v58 = v56 >= v57;
                if (v56 == v57)
                {
                  v58 = *(*(a2 + v47) + 152) >= *(*v28 + 152);
                }

                if (v58)
                {
                  goto LABEL_67;
                }
              }

              else if (v52 >= v53)
              {
                goto LABEL_67;
              }
            }
          }

          else if (v50 == -1 || v49 >= v50)
          {
            goto LABEL_67;
          }

          v27 = v47 + 8;
          v46 = v45 + ~v46;
LABEL_67:
          v45 = v46;
          if (!v46)
          {
            a7 = v142;
            v43 = v143;
            v26 = v27 >> 3;
            v44 = (a2 + v27);
            a3 = (a2 + v27);
            if (a2 == v28)
            {
              goto LABEL_109;
            }

            goto LABEL_92;
          }
        }
      }

      v26 = v147 / 2;
      v27 = 8 * (v147 / 2);
      v28 = a2;
      if (a2 - v12 == v13)
      {
        goto LABEL_62;
      }

      v141 = a7;
      v29 = (a2 - v12 - v13) >> 3;
      v28 = &v12[v13 / 8];
      while (2)
      {
        v30 = v29 >> 1;
        v31 = &v28[v29 >> 1];
        v32 = *(a2 + v27);
        v33 = v32[9];
        v34 = *(*v31 + 72);
        if (v33 != -1)
        {
          if (v34 != -1 && v33 < v34)
          {
            goto LABEL_33;
          }

LABEL_40:
          v28 = v31 + 1;
          v30 = v29 + ~v30;
          goto LABEL_33;
        }

        if (v34 != -1)
        {
          goto LABEL_33;
        }

        v36 = v32[8];
        if (v36 != -1)
        {
          v37 = *(*v31 + 64);
          v38 = v37 == -1 ? 0 : *(*v31 + 64);
          if (v37 != -1 && v36 != v38)
          {
            if (v36 < v37)
            {
              goto LABEL_33;
            }

            goto LABEL_40;
          }
        }

        v40 = (*(*v32 + 24))(v32);
        v41 = (*(**v31 + 24))();
        v42 = v40 >= v41;
        if (v40 == v41)
        {
          v42 = *(*(a2 + v27) + 152) >= *(*v31 + 152);
        }

        v26 = v147 / 2;
        if (v42)
        {
          goto LABEL_40;
        }

LABEL_33:
        v29 = v30;
        if (v30)
        {
          continue;
        }

        break;
      }

      a7 = v141;
LABEL_62:
      v43 = (v28 - v12 - v13) >> 3;
      v44 = (a2 + v27);
      a3 = (a2 + v27);
      if (a2 != v28)
      {
        goto LABEL_92;
      }

LABEL_109:
      a4 = -v14 - v43;
      v70 = v147 - v26;
      if (v43 + v26 < v147 - (v43 + v26) - v14)
      {
        v71 = v28;
        v8 = a6;
        result = sub_298BBA650(&v12[v13 / 8], v71, a3, v43, v26, a6, a7);
        v12 = a3;
        a2 = v44;
        a3 = v146;
        v147 = v70;
        if (!v70)
        {
          return result;
        }

        continue;
      }

      break;
    }

    v72 = v26;
    a4 = v43;
    result = sub_298BBA650(a3, v44, v146, -v14 - v43, v147 - v26, a6, a7);
    a2 = v28;
    v8 = a6;
    v12 = v144;
    v147 = v72;
    if (v72)
    {
      continue;
    }

    return result;
  }
}