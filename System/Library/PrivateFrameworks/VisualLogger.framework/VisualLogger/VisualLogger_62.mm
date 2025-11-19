void sub_2715DC130(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 56);
  for (i = *(a1 + 64); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2715DC204(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715DC224(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = 11;
  strcpy(v30, "parse_error");
  sub_2715D429C(v30, a1, &v32);
  size = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v32.__r_.__value_.__l.__size_;
    v9 = (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v9 - v32.__r_.__value_.__l.__size_ < 0xB)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v32.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v32.__r_.__value_.__l.__size_ + 11 - v9)
      {
        sub_271120DA8();
      }

LABEL_6:
      operator new();
    }

    v10 = v32.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) - 12) < 0xB)
    {
      goto LABEL_6;
    }

    v10 = &v32;
  }

  v11 = v10 + size;
  *v11 = *"parse error";
  *(v11 + 7) = 1919906418;
  v12 = size + 11;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    v32.__r_.__value_.__l.__size_ = size + 11;
  }

  else
  {
    *(&v32.__r_.__value_.__s + 23) = v12 & 0x7F;
  }

  v10->__r_.__value_.__s.__data_[v12] = 0;
  v33 = v32;
  memset(&v32, 0, sizeof(v32));
  sub_2715E0698(a2, &v29);
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v29;
  }

  else
  {
    v13 = v29.__r_.__value_.__r.__words[0];
  }

  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v29.__r_.__value_.__l.__size_;
  }

  v15 = std::string::append(&v33, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v18 = __p.__r_.__value_.__l.__size_;
    v19 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v19 - __p.__r_.__value_.__l.__size_ < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 2 - v19)
      {
        sub_271120DA8();
      }

LABEL_23:
      operator new();
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    *(__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_) = 8250;
    v21 = v18 + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
      goto LABEL_23;
    }

    p_p = &__p;
    *(&__p.__r_.__value_.__l.__data_ + SHIBYTE(__p.__r_.__value_.__r.__words[2])) = 8250;
    v21 = v17 + 2;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      *(&__p.__r_.__value_.__s + 23) = v21 & 0x7F;
      goto LABEL_28;
    }
  }

  __p.__r_.__value_.__l.__size_ = v21;
LABEL_28:
  p_p->__r_.__value_.__s.__data_[v21] = 0;
  v35 = __p;
  memset(&__p, 0, sizeof(__p));
  v22 = *(a3 + 23);
  if (v22 >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  if (v22 >= 0)
  {
    v24 = *(a3 + 23);
  }

  else
  {
    v24 = *(a3 + 8);
  }

  v25 = std::string::append(&v35, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v37 = v25->__r_.__value_.__r.__words[2];
  v36 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v29.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_50:
    operator delete(v32.__r_.__value_.__l.__data_);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_51;
  }

LABEL_49:
  operator delete(v33.__r_.__value_.__l.__data_);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_51:
  operator delete(v30[0]);
LABEL_40:
  v27 = *a2;
  if (v37 >= 0)
  {
    v28 = &v36;
  }

  else
  {
    v28 = v36;
  }

  *a4 = &unk_288108F10;
  *(a4 + 8) = a1;
  std::runtime_error::runtime_error((a4 + 16), v28);
  *a4 = &unk_288108FE8;
  *(a4 + 32) = v27;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }
}

void sub_2715DC718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(a35);
    if (a15 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_3;
  }

  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if (a27 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if (a27 < 0)
  {
LABEL_5:
    operator delete(a22);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(a16);
    goto LABEL_12;
  }

LABEL_10:
  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_2715DC7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x2715DC7D4);
  }

  JUMPOUT(0x2715DC73CLL);
}

void sub_2715DC80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x2715DC7ECLL);
  }

  JUMPOUT(0x2715DC7F4);
}

void sub_2715DC81C(uint64_t a1@<X0>, unsigned int a2@<W1>, const void **a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 23) = 13;
  strcpy(a4, "syntax error ");
  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  if (v8)
  {
    if (v8 + 14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    if (v8 + 14 > 0x16)
    {
      operator new();
    }

    memset(&v51, 0, sizeof(v51));
    *(&v51.__r_.__value_.__s + 23) = v8 + 14;
    qmemcpy(&v51, "while parsing ", 14);
    if ((v7 & 0x80u) == 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    memmove(&v51.__r_.__value_.__r.__words[1] + 6, v9, v8);
    *(&v51.__r_.__value_.__r.__words[1] + v8 + 6) = 0;
    size = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v51.__r_.__value_.__l.__size_;
      v12 = (v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v12 == v51.__r_.__value_.__l.__size_)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

LABEL_16:
        operator new();
      }

      v11 = v51.__r_.__value_.__r.__words[0];
    }

    else
    {
      v11 = &v51;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_16;
      }
    }

    v11->__r_.__value_.__s.__data_[size] = 32;
    v13 = size + 1;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v51.__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&v51.__r_.__value_.__s + 23) = v13 & 0x7F;
    }

    v11->__r_.__value_.__s.__data_[v13] = 0;
    __p = v51;
    memset(&v51, 0, sizeof(v51));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_p, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_29:
  std::string::append(a4, "- ", 2uLL);
  v16 = *(a1 + 32);
  if (v16 == 14)
  {
    v17 = *(a1 + 144);
    v18 = strlen(v17);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v18;
    if (v18)
    {
      memmove(&__dst, v17, v18);
      __dst.__r_.__value_.__s.__data_[v19] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
LABEL_34:
        if (v20 - 9 < 0xE)
        {
          goto LABEL_47;
        }

        p_dst = &__dst;
        goto LABEL_66;
      }
    }

    v20 = __dst.__r_.__value_.__l.__size_;
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v24 - __dst.__r_.__value_.__l.__size_ < 0xE)
    {
      if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 14 - v24)
      {
        sub_271120DA8();
      }

LABEL_47:
      operator new();
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
LABEL_66:
    qmemcpy(p_dst + v20, "; last read: '", 14);
    v30 = v20 + 14;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      __dst.__r_.__value_.__l.__size_ = v20 + 14;
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v30 & 0x7F;
    }

    p_dst->__r_.__value_.__s.__data_[v30] = 0;
    v50 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    sub_2715DC130(a1 + 40, &v48);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v48;
    }

    else
    {
      v31 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v48.__r_.__value_.__l.__size_;
    }

    v33 = std::string::append(&v50, v31, v32);
    v34 = *&v33->__r_.__value_.__l.__data_;
    v51.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v51.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v35 = v51.__r_.__value_.__l.__size_;
      v37 = (v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v37 == v51.__r_.__value_.__l.__size_)
      {
        if ((v51.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          sub_271120DA8();
        }

LABEL_80:
        operator new();
      }

      v36 = v51.__r_.__value_.__r.__words[0];
    }

    else
    {
      v36 = &v51;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) == 22)
      {
        goto LABEL_80;
      }
    }

    v36->__r_.__value_.__s.__data_[v35] = 39;
    v38 = v35 + 1;
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      v51.__r_.__value_.__l.__size_ = v38;
    }

    else
    {
      *(&v51.__r_.__value_.__s + 23) = v38 & 0x7F;
    }

    v36->__r_.__value_.__s.__data_[v38] = 0;
    __p = v51;
    memset(&v51, 0, sizeof(v51));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v39, v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_119;
      }
    }

    else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v51.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_120;
    }

LABEL_119:
    operator delete(v48.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_121;
    }

LABEL_120:
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_96:
      if (!a2)
      {
        return;
      }

      goto LABEL_97;
    }

LABEL_121:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!a2)
    {
      return;
    }

    goto LABEL_97;
  }

  if (v16 > 0x10)
  {
    v21 = "unknown token";
  }

  else
  {
    v21 = off_279E2F9A0[v16];
  }

  v22 = strlen(v21);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  *(&v51.__r_.__value_.__s + 23) = v22;
  if (v22)
  {
    memcpy(&v51, v21, v22);
  }

  v51.__r_.__value_.__s.__data_[v23] = 0;
  v25 = std::string::insert(&v51, 0, "unexpected ", 0xBuLL);
  v26 = *&v25->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v27, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(v51.__r_.__value_.__l.__data_);
  if (!a2)
  {
    return;
  }

LABEL_97:
  if (a2 > 0x10)
  {
    v41 = "unknown token";
  }

  else
  {
    v41 = off_279E2FA28[a2 - 1];
  }

  v42 = strlen(v41);
  if (v42 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    operator new();
  }

  *(&v51.__r_.__value_.__s + 23) = v42;
  if (v42)
  {
    memcpy(&v51, v41, v42);
  }

  v51.__r_.__value_.__s.__data_[v43] = 0;
  v44 = std::string::insert(&v51, 0, "; expected ", 0xBuLL);
  v45 = *&v44->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v46, v47);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_116:
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }

  else if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_116;
  }
}

void sub_2715DD178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(a28);
    if (a14 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_3;
  }

  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
LABEL_10:
      if (*(v40 + 23) < 0)
      {
        operator delete(*v40);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a15);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2715DD2A8(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_2715DD2FC(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v4 = (a1 + 120);
  while (2)
  {
    while (1)
    {
      v5 = *(a1 + 32);
      if (v5 <= 5)
      {
        break;
      }

      if (v5 <= 7)
      {
        if (v5 == 6)
        {
          v36.__vftable = *(a1 + 152);
          sub_2715E1498(a2, &v36);
        }

        else
        {
          if ((*(a1 + 168) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v30 = *(a1 + 72);
            sub_2715DC130(a1 + 40, &v38);
            sub_2715DC130(a1 + 40, &v33);
            sub_2714D199C("number overflow parsing '", &v33, &__p);
            sub_2715D476C("'", &__p, &v35);
            sub_2715DECDC(406, &v35, &v36);
            v21 = sub_2715E0A98(a2, v30, &v38, &v36);
            sub_2715DEE7C(&v36);
            if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v35.__r_.__value_.__l.__data_);
            }

            goto LABEL_76;
          }

          v36.__vftable = *(a1 + 168);
          sub_2715E0DAC(a2, &v36);
        }

        goto LABEL_32;
      }

      switch(v5)
      {
        case 8:
          v38.__r_.__value_.__s.__data_[0] = 2;
          v36.__vftable = sub_2715E0AF4(a2, &v38);
          sub_2715DF0F0(a2 + 8, &v36);
          v11 = sub_2715D990C((a1 + 40));
          *(a1 + 32) = v11;
          if (v11 == 10)
          {
LABEL_28:
            *(a2 + 16) -= 8;
            v12 = v40;
            if (v40)
            {
              goto LABEL_33;
            }

            goto LABEL_57;
          }

          v18 = v40;
          if (v40 == v41 << 6)
          {
            if ((v40 + 1) < 0)
            {
              sub_2715D2F28();
            }

            v19 = v41 << 7;
            if (v41 << 7 <= (v40 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v19 = (v40 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            if (v40 <= 0x3FFFFFFFFFFFFFFELL)
            {
              v20 = v19;
            }

            else
            {
              v20 = 0x7FFFFFFFFFFFFFFFLL;
            }

            sub_2715DE0CC(&v39, v20);
            v18 = v40;
          }

          v40 = v18 + 1;
          *&v39[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
          break;
        case 9:
          v38.__r_.__value_.__s.__data_[0] = 1;
          v36.__vftable = sub_2715E0AF4(a2, &v38);
          sub_2715DF0F0(a2 + 8, &v36);
          v6 = sub_2715D990C((a1 + 40));
          *(a1 + 32) = v6;
          if (v6 == 11)
          {
            goto LABEL_28;
          }

          if (v6 != 4)
          {
LABEL_73:
            v28 = *(a1 + 72);
            sub_2715DC130(a1 + 40, &v38);
            v35 = *(a1 + 72);
            sub_27112B400(&v33, "object key");
            sub_2715DC81C(a1, 4u, &v33.__r_.__value_.__l.__data_, &__p);
            sub_2715DC224(101, &v35, &__p, &v36);
            v26 = sub_2715DDEB4(a2, v28, &v38, &v36);
            goto LABEL_75;
          }

          v7 = *(*(*(a2 + 16) - 8) + 8);
          v36.__vftable = v4;
          *(a2 + 32) = sub_2715D3F68(v7, &v4->~runtime_error) + 7;
          v8 = sub_2715D990C((a1 + 40));
          *(a1 + 32) = v8;
          if (v8 != 12)
          {
            goto LABEL_74;
          }

          v9 = v40;
          if (v40 == v41 << 6)
          {
            if ((v40 + 1) < 0)
            {
              sub_2715D2F28();
            }

            if (v40 > 0x3FFFFFFFFFFFFFFELL)
            {
              v10 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v41 << 7 <= (v40 & 0x3FFFFFFFFFFFFFC0) + 64)
            {
              v10 = (v40 & 0x3FFFFFFFFFFFFFC0) + 64;
            }

            else
            {
              v10 = v41 << 7;
            }

            sub_2715DE0CC(&v39, v10);
            v9 = v40;
          }

          v40 = v9 + 1;
          *&v39[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v9);
          *(a1 + 32) = sub_2715D990C((a1 + 40));
          break;
        case 14:
          sub_2715DC130(a1 + 40, &v38);
          v35 = *(a1 + 72);
          *(&v33.__r_.__value_.__s + 23) = 5;
          strcpy(&v33, "value");
          sub_2715DC81C(a1, 0, &v33.__r_.__value_.__l.__data_, &__p);
          sub_2715DC224(101, &v35, &__p, &v36);
          *(a2 + 40) = 1;
          if (*(a2 + 41) == 1)
          {
            exception = __cxa_allocate_exception(0x28uLL);
            v24 = sub_2715E05B4(exception, &v36);
            __cxa_throw(v24, &unk_28811C390, sub_2715DD2A8);
          }

LABEL_65:
          v36.__vftable = &unk_288108F10;
          std::runtime_error::~runtime_error(&v37);
          std::exception::~exception(&v36);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_70;
            }

LABEL_67:
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_71:
              operator delete(v38.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

LABEL_70:
            operator delete(v33.__r_.__value_.__l.__data_);
            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_71;
            }
          }

          v21 = 0;
          goto LABEL_58;
        default:
LABEL_64:
          sub_2715DC130(a1 + 40, &v38);
          v35 = *(a1 + 72);
          *(&v33.__r_.__value_.__s + 23) = 5;
          strcpy(&v33, "value");
          sub_2715DC81C(a1, 0x10u, &v33.__r_.__value_.__l.__data_, &__p);
          sub_2715DC224(101, &v35, &__p, &v36);
          *(a2 + 40) = 1;
          if (*(a2 + 41) == 1)
          {
            v31 = __cxa_allocate_exception(0x28uLL);
            v32 = sub_2715E05B4(v31, &v36);
            __cxa_throw(v32, &unk_28811C390, sub_2715DD2A8);
          }

          goto LABEL_65;
      }
    }

    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        LOBYTE(v36.__vftable) = 1;
        sub_2715E1008(a2, &v36);
      }

      else
      {
        if (v5 != 2)
        {
          goto LABEL_64;
        }

        LOBYTE(v36.__vftable) = 0;
        sub_2715E1008(a2, &v36);
      }
    }

    else if (v5 == 3)
    {
      v36.__vftable = 0;
      sub_2715E1264(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_2715E16F4(a2);
      }

      v36.__vftable = *(a1 + 160);
      sub_2715E1B04(a2, &v36);
    }

LABEL_32:
    v12 = v40;
    if (!v40)
    {
LABEL_57:
      v21 = 1;
      goto LABEL_58;
    }

    while (1)
    {
LABEL_33:
      if ((*&v39[((v12 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v12 - 1)))
      {
        v13 = sub_2715D990C((a1 + 40));
        *(a1 + 32) = v13;
        if (v13 == 13)
        {
          goto LABEL_44;
        }

        if (v13 != 10)
        {
          v25 = *(a1 + 72);
          sub_2715DC130(a1 + 40, &v38);
          v35 = *(a1 + 72);
          sub_27112B400(&v33, "array");
          sub_2715DC81C(a1, 0xAu, &v33.__r_.__value_.__l.__data_, &__p);
          sub_2715DC224(101, &v35, &__p, &v36);
          v26 = sub_2715DDEB4(a2, v25, &v38, &v36);
          goto LABEL_75;
        }

        goto LABEL_39;
      }

      v14 = sub_2715D990C((a1 + 40));
      *(a1 + 32) = v14;
      if (v14 == 13)
      {
        break;
      }

      if (v14 != 11)
      {
        v27 = *(a1 + 72);
        sub_2715DC130(a1 + 40, &v38);
        v35 = *(a1 + 72);
        sub_27112B400(&v33, "object");
        sub_2715DC81C(a1, 0xBu, &v33.__r_.__value_.__l.__data_, &__p);
        sub_2715DC224(101, &v35, &__p, &v36);
        v26 = sub_2715DDEB4(a2, v27, &v38, &v36);
        goto LABEL_75;
      }

LABEL_39:
      *(a2 + 16) -= 8;
      v12 = v40 - 1;
      v40 = v12;
      if (!v12)
      {
        goto LABEL_57;
      }
    }

    v15 = sub_2715D990C((a1 + 40));
    *(a1 + 32) = v15;
    if (v15 != 4)
    {
      goto LABEL_73;
    }

    v16 = *(*(*(a2 + 16) - 8) + 8);
    v36.__vftable = v4;
    *(a2 + 32) = sub_2715D3F68(v16, &v4->~runtime_error) + 7;
    v17 = sub_2715D990C((a1 + 40));
    *(a1 + 32) = v17;
    if (v17 == 12)
    {
LABEL_44:
      *(a1 + 32) = sub_2715D990C((a1 + 40));
      continue;
    }

    break;
  }

LABEL_74:
  v29 = *(a1 + 72);
  sub_2715DC130(a1 + 40, &v38);
  v35 = *(a1 + 72);
  sub_27112B400(&v33, "object separator");
  sub_2715DC81C(a1, 0xCu, &v33.__r_.__value_.__l.__data_, &__p);
  sub_2715DC224(101, &v35, &__p, &v36);
  v26 = sub_2715DDEB4(a2, v29, &v38, &v36);
LABEL_75:
  v21 = v26;
  sub_2715DD2A8(&v36);
LABEL_76:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_81;
    }

LABEL_78:
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_82:
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_81:
    operator delete(v33.__r_.__value_.__l.__data_);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_82;
    }
  }

LABEL_58:
  if (v39)
  {
    operator delete(v39);
  }

  return v21;
}

void sub_2715DDC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::runtime_error a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2715DD2A8(&a27);
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
LABEL_3:
    if (a36 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  operator delete(a9);
  if (a36 < 0)
  {
LABEL_4:
    operator delete(a31);
    v38 = *(v36 - 104);
    if (v38)
    {
LABEL_10:
      operator delete(v38);
      _Unwind_Resume(a1);
    }

LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  v38 = *(v36 - 104);
  if (v38)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

uint64_t sub_2715DDEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    v7 = sub_2715E05B4(exception, a4);
    __cxa_throw(v7, &unk_28811C390, sub_2715DD2A8);
  }

  return 0;
}

uint64_t sub_2715DDF10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  v6 = a1 + 96;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v7 = *(a3 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a3)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    *(a1 + 120) = v7;
    goto LABEL_6;
  }

  *(a1 + 120) = v6;
  (*(**(a3 + 24) + 24))(*(a3 + 24), v6);
LABEL_6:
  *(a1 + 144) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = 9;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v8 == v9 << 6)
  {
    if ((v8 + 1) < 0)
    {
      sub_2715D2F28();
    }

    v10 = v9 << 7;
    if (v10 <= (v8 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v10 = (v8 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_2715DE0CC(a1 + 32, v11);
    v8 = *(a1 + 40);
  }

  *(a1 + 40) = v8 + 1;
  *(*(a1 + 32) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
  return a1;
}

void sub_2715DE064(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    operator delete(v4);
    v5 = v1[4];
    if (!v5)
    {
LABEL_3:
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v5 = v1[4];
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  operator delete(v5);
  v6 = *v2;
  if (!*v2)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  v1[2] = v6;
  operator delete(v6);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2715DE0CC(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2715D2F28();
  }

  return result;
}

uint64_t sub_2715DE1F8(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v22.__r_.__value_.__l.__data_) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v21.__r_.__value_.__s.__data_[0] = 0;
  v4 = *(a1 + 120);
  if (!v4)
  {
    sub_27112AFFC();
  }

  v6 = (*(*v4 + 48))(v4, &v22, &v21, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_2715D2F28();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_2715DE0CC(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  v22.__r_.__value_.__s.__data_[0] = 1;
  v23 = sub_2715DEED0(a1, &v22, 1);
  v24 = v15;
  sub_2715DF0F0(v3, &v24);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_27189C968[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v21, a2);
        sub_2714D199C("excessive object size: ", &v21, &v22);
        sub_2715DECDC(408, &v22, exception);
        __cxa_throw(exception, &unk_28811C378, sub_2715DEE7C);
      }
    }
  }

  return 1;
}

void sub_2715DE3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_2715DE434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8))
  {
    LODWORD(v27) = ((v2 - *(a1 + 8)) >> 3) - 1;
    LOBYTE(v24) = 1;
    v3 = *(a1 + 120);
    if (!v3)
    {
      sub_27112AFFC();
    }

    if (((*(*v3 + 48))(v3, &v27, &v24) & 1) == 0)
    {
      sub_2715D7FA4(v30, (a1 + 136));
      v4 = *(*(a1 + 16) - 8);
      v5 = *v4;
      *v4 = v30[0];
      v30[0] = v5;
      v6 = *(v4 + 1);
      *(v4 + 1) = v31;
      v31 = v6;
      sub_2715CA870(&v31, v5);
    }
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = v7 - 8;
  *(a1 + 16) = v7 - 8;
  --*(a1 + 40);
  if (v8 != v7 - 8)
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v10;
      if ((v11 - 1) <= 1)
      {
        v27 = v10;
        v28 = 0uLL;
        v29 = 0x8000000000000000;
        v12 = **(v10 + 1);
        v13 = v11 == 1;
        v14 = 2;
        if (v13)
        {
          v14 = 1;
        }

        (&v27)[v14] = v12;
        while (1)
        {
          v15 = *(v9 - 8);
          v25 = 0uLL;
          v24 = v15;
          v26 = 0x8000000000000000;
          v16 = *v15;
          if (v16 == 2)
          {
            *(&v25 + 1) = *(*(v15 + 1) + 8);
            if (sub_2715DF6D8(&v27, &v24))
            {
              return 1;
            }
          }

          else if (v16 == 1)
          {
            *&v25 = *(v15 + 1) + 8;
            if (sub_2715DF6D8(&v27, &v24))
            {
              return 1;
            }
          }

          else
          {
            v26 = 1;
            if (sub_2715DF6D8(&v27, &v24))
            {
              return 1;
            }
          }

          if (*sub_2715DF208(&v27) == 9)
          {
            break;
          }

          v17 = *v27;
          if (v17 == 2)
          {
            *(&v28 + 1) += 16;
            v9 = *(a1 + 16);
          }

          else if (v17 == 1)
          {
            v18 = v28;
            v19 = *(v28 + 8);
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
                v20 = v18[2];
                v13 = *v20 == v18;
                v18 = v20;
              }

              while (!v13);
            }

            *&v28 = v20;
            v9 = *(a1 + 16);
          }

          else
          {
            ++v29;
            v9 = *(a1 + 16);
          }
        }

        v21 = *(*(a1 + 16) - 8);
        v24 = v27;
        v25 = v28;
        v26 = v29;
        sub_2715DF30C(v21, &v24, &v23);
      }
    }
  }

  return 1;
}

void sub_2715DE89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, unsigned __int8 a11)
{
  sub_2715CA870(&a10, a9);
  sub_2715CA870((v11 + 8), a11);
  _Unwind_Resume(a1);
}

uint64_t sub_2715DE8F0(uint64_t a1, unint64_t a2)
{
  v3 = a1 + 8;
  LODWORD(v22.__r_.__value_.__l.__data_) = (*(a1 + 16) - *(a1 + 8)) >> 3;
  v21.__r_.__value_.__s.__data_[0] = 2;
  v4 = *(a1 + 120);
  if (!v4)
  {
    sub_27112AFFC();
  }

  v6 = (*(*v4 + 48))(v4, &v22, &v21, a1 + 136);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v7 == v8 << 6)
  {
    if ((v7 + 1) < 0)
    {
      sub_2715D2F28();
    }

    v9 = v8 << 7;
    if (v9 <= (v7 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_2715DE0CC(a1 + 32, v10);
    v7 = *(a1 + 40);
  }

  *(a1 + 40) = v7 + 1;
  v11 = *(a1 + 32);
  v12 = v7 >> 6;
  v13 = 1 << v7;
  if (v6)
  {
    v14 = *(v11 + 8 * v12) | v13;
  }

  else
  {
    v14 = *(v11 + 8 * v12) & ~v13;
  }

  *(v11 + 8 * v12) = v14;
  v22.__r_.__value_.__s.__data_[0] = 2;
  v23 = sub_2715DEED0(a1, &v22, 1);
  v24 = v15;
  sub_2715DF0F0(v3, &v24);
  if (a2 != -1)
  {
    v16 = *(*(a1 + 16) - 8);
    if (v16)
    {
      v17 = *v16;
      if (v17 > 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = qword_27189C968[v17];
      }

      if (v18 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v21, a2);
        sub_2714D199C("excessive array size: ", &v21, &v22);
        sub_2715DECDC(408, &v22, exception);
        __cxa_throw(exception, &unk_28811C378, sub_2715DEE7C);
      }
    }
  }

  return 1;
}

void sub_2715DEAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t sub_2715DEB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_6;
  }

  v19 = ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1;
  v18 = 3;
  v5 = *(a1 + 120);
  if (!v5)
  {
    sub_27112AFFC();
  }

  if ((*(*v5 + 48))(v5, &v19, &v18))
  {
    *(a1 + 16) -= 8;
LABEL_6:
    --*(a1 + 40);
    return 1;
  }

  sub_2715D7FA4(v16, (a1 + 136));
  v7 = *(*(a1 + 16) - 8);
  v8 = *v7;
  *v7 = v16[0];
  v16[0] = v8;
  v9 = *(v7 + 1);
  *(v7 + 1) = v17;
  v17 = v9;
  sub_2715CA870(&v17, v8);
  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  *(a1 + 16) = v10 - 8;
  --*(a1 + 40);
  if (v11 == v10 - 8)
  {
    return 1;
  }

  v12 = *(v10 - 16);
  if (*v12 != 2)
  {
    return 1;
  }

  v13 = *(v12 + 8);
  v14 = *(v13 + 8);
  v15 = *(v14 - 16);
  v14 -= 16;
  sub_2715CA870((v14 + 8), v15);
  *(v13 + 8) = v14;
  return 1;
}

uint64_t sub_2715DEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2715DF7E4(exception, a4);
    __cxa_throw(v7, &unk_28811C378, sub_2715DEE7C);
  }

  return 0;
}

void sub_2715DECDC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 12;
  strcpy(__p, "out_of_range");
  sub_2715D429C(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_288108F10;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_288108FC0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_2715DEE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2715DEE7C(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_2715DEED0(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v5 = *a2;
    v32[0] = v5;
    sub_2715D4118(&v33, v5);
    if (a3)
    {
      goto LABEL_5;
    }

    v35 = (a1[2] - a1[1]) >> 3;
    v34 = 5;
    v6 = a1[15];
    if (!v6)
    {
      sub_27112AFFC();
    }

    if ((*(*v6 + 48))(v6, &v35, &v34, v32))
    {
LABEL_5:
      v7 = a1[2];
      if (a1[1] == v7)
      {
        v13 = v32[0];
        v14 = v33;
        v32[0] = 0;
        v33 = 0;
        v15 = *a1;
        v16 = **a1;
        *v15 = v13;
        v30 = v16;
        v17 = *(v15 + 8);
        *(v15 + 8) = v14;
        v31 = v17;
        sub_2715CA870(&v31, v16);
        v18 = *a1;
LABEL_17:
        v12 = 1;
        goto LABEL_18;
      }

      v8 = *(v7 - 1);
      if (v8)
      {
        if (*v8 == 2)
        {
          v9 = *(v8 + 8);
          v10 = v9[1];
          if (v10 >= v9[2])
          {
            v11 = sub_2715CB034(v9, v32);
          }

          else
          {
            *v10 = v32[0];
            *(v10 + 8) = v33;
            v32[0] = 0;
            v33 = 0;
            v11 = v10 + 16;
          }

          v9[1] = v11;
          v27 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v19 = (a1[8] - 1);
        v20 = *&a1[7][(v19 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v19;
        if ((v20 >> v19))
        {
          v21 = v32[0];
          v22 = v33;
          v32[0] = 0;
          v33 = 0;
          v23 = a1[10];
          v24 = *v23;
          *v23 = v21;
          v25 = *(v23 + 1);
          *(v23 + 1) = v22;
          v29 = v25;
          sub_2715CA870(&v29, v24);
          v26 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v12 = 0;
LABEL_18:
    sub_2715CA870(&v33, v32[0]);
    return v12;
  }

  return 0;
}

void sub_2715DF0F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_2715D2F28();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

unsigned __int8 *sub_2715DF208(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[3])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v5, "cannot get value");
    sub_2715D739C(214, v5, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  return result;
}

void sub_2715DF2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

void sub_2715DF30C(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, unsigned __int8 **a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(&v35, "iterator does not fit current value");
    sub_2715D739C(202, &v35, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  a3[1] = 0;
  v3 = a3 + 1;
  *a3 = a1;
  a3[2] = 0;
  a3[3] = 0x8000000000000000;
  v4 = *a1;
  if (v4 == 2)
  {
    v9 = *(a1 + 1);
    v10 = *(v9 + 8);
    a3[2] = v10;
    v12 = a2[2];
    if (v12 + 16 == v10)
    {
      v13 = a2[2];
      if (v10 == v12)
      {
LABEL_29:
        *(v9 + 8) = v13;
        a3[2] = v12;
        return;
      }
    }

    else
    {
      v13 = a2[2];
      do
      {
        v14 = v13;
        v15 = v13[16];
        v13 += 16;
        v16 = *(v14 + 3);
        *v13 = 0;
        *(v14 + 3) = 0;
        v17 = *v14;
        *v14 = v15;
        v35.__r_.__value_.__s.__data_[0] = v17;
        v18 = *(v14 + 1);
        *(v14 + 1) = v16;
        v35.__r_.__value_.__l.__size_ = v18;
        sub_2715CA870(&v35.__r_.__value_.__l.__size_, v17);
      }

      while (v14 + 32 != v10);
      v10 = *(v9 + 8);
      if (v10 == v13)
      {
        goto LABEL_29;
      }
    }

    v26 = (v10 - 8);
    do
    {
      v27 = v26 - 1;
      sub_2715CA870(v26, *(v26 - 8));
      v26 -= 2;
    }

    while (v27 != v13);
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    a3[3] = 1;
    if ((v4 - 3) > 5)
    {
      v31 = a1;
      v32 = __cxa_allocate_exception(0x20uLL);
      v33 = sub_2715D3EEC(v31);
      sub_27112B400(&v34, v33);
      sub_2714D199C("cannot use erase() with ", &v34, &v35);
      sub_2715D3D50(307, &v35, v32);
      __cxa_throw(v32, &unk_28811C3A8, sub_2715D3F14);
    }

    if (a2[3])
    {
      v30 = __cxa_allocate_exception(0x20uLL);
      sub_27112B400(&v35, "iterator out of range");
      sub_2715D739C(205, &v35, v30);
      __cxa_throw(v30, &unk_28811C360, sub_2715D7530);
    }

    if (v4 == 8)
    {
      v19 = a1;
      v21 = (a1 + 8);
      v20 = *(a1 + 1);
      v28 = *v20;
      if (*v20)
      {
        v20[1] = v28;
        v22 = v28;
        goto LABEL_32;
      }
    }

    else
    {
      if (v4 != 3)
      {
LABEL_34:
        *a1 = 0;
        return;
      }

      v19 = a1;
      v21 = (a1 + 8);
      v20 = *(a1 + 1);
      if (*(v20 + 23) < 0)
      {
        v22 = *v20;
LABEL_32:
        operator delete(v22);
        v20 = *v21;
      }
    }

    operator delete(v20);
    *v21 = 0;
    a1 = v19;
    goto LABEL_34;
  }

  v5 = *(a1 + 1);
  v6 = a2[1];
  v7 = *(v6 + 1);
  if (v7)
  {
    do
    {
      v8 = v7;
      v7 = *v7;
    }

    while (v7);
  }

  else
  {
    v23 = a2[1];
    do
    {
      v8 = *(v23 + 2);
      v24 = *v8 == v23;
      v23 = v8;
    }

    while (!v24);
  }

  if (*v5 == v6)
  {
    *v5 = v8;
  }

  v25 = v5[1];
  --v5[2];
  sub_271128F64(v25, v6);
  sub_2715CA870(v6 + 8, v6[56]);
  if (v6[55] < 0)
  {
    operator delete(*(v6 + 4));
  }

  operator delete(v6);
  *v3 = v8;
}

void sub_2715DF654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v21)
  {
    __cxa_free_exception(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2715DF6D8(unsigned __int8 **a1, unsigned __int8 **a2)
{
  if (*a1 != *a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_27112B400(v7, "cannot compare iterators of different containers");
    sub_2715D739C(212, v7, exception);
    __cxa_throw(exception, &unk_28811C360, sub_2715D7530);
  }

  v2 = **a1;
  if (v2 == 2)
  {
    v3 = a1[2];
    v4 = a2[2];
  }

  else if (v2 == 1)
  {
    v3 = a1[1];
    v4 = a2[1];
  }

  else
  {
    v3 = a1[3];
    v4 = a2[3];
  }

  return v3 == v4;
}

void sub_2715DF7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_6:
      __cxa_free_exception(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (v16)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715DF7E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288108F10;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = &unk_288108FC0;
  return a1;
}

void sub_2715DF854(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2715DF8BC(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 7;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_27112AFFC();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_2715CA870(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_2715CB034(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_2715CA870(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_2715CA870(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_2715DFAD8(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 4;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_27112AFFC();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_2715CA870(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_2715CB034(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_2715CA870(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_2715CA870(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_2715DFCF4(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v30[0] = 0;
    v31 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

    v33 = (a1[2] - a1[1]) >> 3;
    v32 = 5;
    v4 = a1[15];
    if (!v4)
    {
      sub_27112AFFC();
    }

    if ((*(*v4 + 48))(v4, &v33, &v32, v30))
    {
LABEL_5:
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v11 = v30[0];
        v12 = v31;
        v30[0] = 0;
        v31 = 0;
        v13 = *a1;
        v14 = **a1;
        *v13 = v11;
        v28 = v14;
        v15 = *(v13 + 8);
        *(v13 + 8) = v12;
        v29 = v15;
        sub_2715CA870(&v29, v14);
        v16 = *a1;
LABEL_17:
        v10 = 1;
        goto LABEL_18;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          v7 = *(v6 + 8);
          v8 = v7[1];
          if (v8 >= v7[2])
          {
            v9 = sub_2715CB034(v7, v30);
          }

          else
          {
            *v8 = v30[0];
            *(v8 + 8) = v31;
            v30[0] = 0;
            v31 = 0;
            v9 = v8 + 16;
          }

          v7[1] = v9;
          v25 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v17 = (a1[8] - 1);
        v18 = *&a1[7][(v17 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v17;
        if ((v18 >> v17))
        {
          v19 = v30[0];
          v20 = v31;
          v30[0] = 0;
          v31 = 0;
          v21 = a1[10];
          v22 = *v21;
          *v21 = v19;
          v23 = *(v21 + 1);
          *(v21 + 1) = v20;
          v27 = v23;
          sub_2715CA870(&v27, v22);
          v24 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v10 = 0;
LABEL_18:
    sub_2715CA870(&v31, v30[0]);
    return v10;
  }

  return 0;
}

uint64_t sub_2715DFF08(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 5;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_27112AFFC();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_2715CA870(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_2715CB034(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_2715CA870(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_2715CA870(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_2715E0120(uint64_t a1)
{
  if ((*(*(a1 + 32) + (((*(a1 + 40) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 40) - 1)))
  {
    operator new();
  }

  return 0;
}

uint64_t sub_2715E0398(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v31[0] = 6;
    v32 = v4;
    if (a3)
    {
      goto LABEL_5;
    }

    v34 = (a1[2] - a1[1]) >> 3;
    v33 = 5;
    v5 = a1[15];
    if (!v5)
    {
      sub_27112AFFC();
    }

    if ((*(*v5 + 48))(v5, &v34, &v33, v31))
    {
LABEL_5:
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v12 = v31[0];
        v13 = v32;
        v31[0] = 0;
        v32 = 0;
        v14 = *a1;
        v15 = **a1;
        *v14 = v12;
        v29 = v15;
        v16 = *(v14 + 8);
        *(v14 + 8) = v13;
        v30 = v16;
        sub_2715CA870(&v30, v15);
        v17 = *a1;
LABEL_17:
        v11 = 1;
        goto LABEL_18;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          v8 = *(v7 + 8);
          v9 = v8[1];
          if (v9 >= v8[2])
          {
            v10 = sub_2715CB034(v8, v31);
          }

          else
          {
            *v9 = v31[0];
            *(v9 + 8) = v32;
            v31[0] = 0;
            v32 = 0;
            v10 = v9 + 16;
          }

          v8[1] = v10;
          v26 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
          goto LABEL_17;
        }

        v18 = (a1[8] - 1);
        v19 = *&a1[7][(v18 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v18;
        if ((v19 >> v18))
        {
          v20 = v31[0];
          v21 = v32;
          v31[0] = 0;
          v32 = 0;
          v22 = a1[10];
          v23 = *v22;
          *v22 = v20;
          v24 = *(v22 + 1);
          *(v22 + 1) = v21;
          v28 = v24;
          sub_2715CA870(&v28, v23);
          v25 = a1[10];
          goto LABEL_17;
        }
      }
    }

    v11 = 0;
LABEL_18:
    sub_2715CA870(&v32, v31[0]);
    return v11;
  }

  return 0;
}

uint64_t sub_2715E05B4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288108F10;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = &unk_288108FE8;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_2715E0630(std::runtime_error *a1)
{
  a1->__vftable = &unk_288108F10;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E0698(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v15, *(a1 + 16) + 1);
  v4 = std::string::insert(&v15, 0, " at line ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v16.__r_.__value_.__l.__size_;
    v7 = (v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v7 - v16.__r_.__value_.__l.__size_ < 9)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v16.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v16.__r_.__value_.__l.__size_ + 9 - v7)
      {
        sub_271120DA8();
      }

LABEL_6:
      operator new();
    }

    v8 = v16.__r_.__value_.__r.__words[0];
  }

  else
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) - 14) < 9)
    {
      goto LABEL_6;
    }

    v8 = &v16;
  }

  v9 = v8 + size;
  *v9 = *", column ";
  v9[8] = 32;
  v10 = size + 9;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    v16.__r_.__value_.__l.__size_ = size + 9;
  }

  else
  {
    *(&v16.__r_.__value_.__s + 23) = v10 & 0x7F;
  }

  v8->__r_.__value_.__s.__data_[v10] = 0;
  v17 = v16;
  memset(&v16, 0, sizeof(v16));
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  v13 = std::string::append(&v17, p_p, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

LABEL_25:
  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_26;
  }
}

void sub_2715E093C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if (a20 < 0)
    {
LABEL_3:
      operator delete(__p);
      _Unwind_Resume(exception_object);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_3;
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E09C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    JUMPOUT(0x2715E098CLL);
  }

  JUMPOUT(0x2715E09C0);
}

uint64_t sub_2715E09D8(uint64_t a1)
{
  sub_2715CA870((a1 + 144), *(a1 + 136));
  v2 = *(a1 + 120);
  if (v2 == a1 + 96)
  {
    (*(*v2 + 32))(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
LABEL_5:
      operator delete(v3);
    }
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      goto LABEL_5;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_2715E0A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_2715DF7E4(exception, a4);
    __cxa_throw(v7, &unk_28811C378, sub_2715DEE7C);
  }

  return 0;
}

uint64_t sub_2715E0AF4(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    sub_2715D4118(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_2715CA870(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = v5[1];
      if (v6 >= v5[2])
      {
        v8 = sub_2715E0C44(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_2715D4118((v6 + 8), v7);
        v8 = v6 + 16;
        v5[1] = v6 + 16;
      }

      v5[1] = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      sub_2715D4118(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      sub_2715CA870(&v19, v16);
      return a1[4];
    }
  }
}

uint64_t sub_2715E0C44(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v17 = 16 * v2;
  v7 = *a2;
  *(16 * v2) = v7;
  sub_2715D4118((16 * v2 + 8), v7);
  v8 = 16 * v2 + 16;
  v9 = *a1;
  v10 = a1[1];
  v11 = 16 * v2 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 8) = v12[1];
      *v12 = 0;
      v12[1] = 0;
      v12 += 2;
      v13 += 16;
    }

    while (v12 != v10);
    v14 = v9;
    do
    {
      v15 = *v14;
      v14 += 2;
      sub_2715CA870(v9 + 1, v15);
      v9 = v14;
    }

    while (v14 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_2715E0D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715D3148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715E0DAC(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_2715CA870(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_2715E0EC4(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_2715CA870(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_2715E0EC4(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 7;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_2715CA870(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_2715E1008(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_2715CA870(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_2715E1120(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_2715CA870(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_2715E1120(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 4;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_2715CA870(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_2715E1264(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_2715CA870(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_2715E1360(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_2715CA870(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_2715E1360(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = (v3 - v2) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v6)
  {
    v6 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v9 = (v3 - v2) >> 4;
  v10 = 16 * v5;
  *v10 = 0;
  *(v10 + 8) = 0;
  v11 = 16 * v5 + 16;
  v12 = v10 - 16 * v9;
  if (v2 != v3)
  {
    v13 = v2;
    v14 = v10 - 16 * v9;
    do
    {
      *v14 = *v13;
      *(v14 + 8) = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v13 += 2;
      v14 += 16;
    }

    while (v13 != v3);
    v15 = v2;
    do
    {
      v16 = *v15;
      v15 += 2;
      sub_2715CA870(v2 + 1, v16);
      v2 = v15;
    }

    while (v15 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v11;
}

uint64_t sub_2715E1498(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_2715CA870(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_2715E15B0(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_2715CA870(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_2715E15B0(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 5;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_2715CA870(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

void sub_2715E16F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        operator new();
      }

      sub_2715E1940(v3);
    }

    operator new();
  }

  operator new();
}

void sub_2715E18F8(_Unwind_Exception *a1)
{
  operator delete(v2);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_2715E1940(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v5 = 16 * v1;
    *(v5 + 8) = 0;
    *v5 = 3;
    operator new();
  }

  sub_2715CB01C();
}

void sub_2715E1AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  operator delete(v10);
  sub_2715D3148(&a10);
  _Unwind_Resume(a1);
}

void sub_2715E1AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715D3148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715E1B04(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_2715CA870(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_2715E1C1C(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_2715CA870(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_2715E1C1C(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = (v4 - v3) >> 4;
  v7 = v6 + 1;
  if ((v6 + 1) >> 60)
  {
    sub_2715CB01C();
  }

  v8 = *(a1 + 16) - v3;
  if (v8 >> 3 > v7)
  {
    v7 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    sub_2711270EC();
  }

  v10 = (v4 - v3) >> 4;
  v11 = 16 * v6;
  v12 = *a2;
  *v11 = 6;
  *(v11 + 8) = v12;
  v13 = 16 * v6 - 16 * v10;
  if (v3 != v4)
  {
    v14 = v3;
    v15 = v11 - 16 * v10;
    do
    {
      *v15 = *v14;
      *(v15 + 8) = v14[1];
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
      v15 += 16;
    }

    while (v14 != v4);
    v16 = v3;
    do
    {
      v17 = *v16;
      v16 += 2;
      sub_2715CA870(v3 + 1, v17);
      v3 = v16;
    }

    while (v16 != v4);
    v3 = *a1;
  }

  *a1 = v13;
  *(a1 + 8) = 16 * v6 + 16;
  *(a1 + 16) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return 16 * v6 + 16;
}

uint64_t sub_2715E1D60(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

uint64_t sub_2715E1E0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 24);
  if (v8)
  {
    if (v8 == a1)
    {
      v38 = v37;
      (*(*v8 + 24))(v8, v37);
    }

    else
    {
      v38 = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    v38 = 0;
  }

  v9 = std::istream::peek();
  sub_2715E5F2C(a3, v9, &v26);
  if (v36)
  {
    callbacks = *byte_288103FF0;
    v10 = CGDataProviderCreateSequential(a2, &callbacks);
    sub_2715E3924(&v16, v10);
  }

  *&callbacks.version = v26;
  LOBYTE(callbacks.skipForward) = 0;
  v25 = 0;
  if (v35 != 1)
  {
    *a4 = v26;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    goto LABEL_18;
  }

  sub_27112F6CC(&callbacks.skipForward, &v27);
  v25 = 1;
  *a4 = *&callbacks.version;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  v11 = v18;
  if (v18 == 1)
  {
    *(a4 + 16) = *&callbacks.skipForward;
    *(a4 + 32) = callbacks.releaseInfo;
    memset(&callbacks.skipForward, 0, 24);
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v12 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v13 = v21;
    *(v12 + 16) = v20;
    *v12 = *v19;
    v19[0] = 0;
    v19[1] = 0;
    *(a4 + 72) = v13;
    *(a4 + 80) = *v22;
    *(a4 + 96) = v23;
    v20 = 0;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  *(a4 + 48) = 0;
  v12 = a4 + 48;
  *(a4 + 104) = 0;
  if (v24)
  {
    goto LABEL_15;
  }

LABEL_11:
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (SHIBYTE(callbacks.releaseInfo) < 0)
  {
    operator delete(callbacks.skipForward);
  }

LABEL_18:
  if ((v36 & 1) == 0 && v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v27);
    }
  }

  result = v38;
  if (v38 == v37)
  {
    result = (*(*v38 + 32))(v38);
  }

  else if (v38)
  {
    result = (*(*v38 + 40))();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715E2D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_27112D66C(v73 + 16);
  sub_271235250(&a25);
  sub_27112E024(&a47);
  if (a71 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(&a72);
  sub_27112F828(&a73);
  sub_27112E024(v74 - 256);
  sub_2713BF0D4(v74 - 120);
  _Unwind_Resume(a1);
}

void sub_2715E312C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112D66C(v17 + 16);
  sub_27113827C(va);
  _Unwind_Resume(a1);
}

void sub_2715E3148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_27112F828(&a9);
  sub_27113827C(&a25);
  _Unwind_Resume(a1);
}

void sub_2715E3164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27113827C(va);
  _Unwind_Resume(a1);
}

void sub_2715E337C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E33FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E3434(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E3458(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP13CGImageSourceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715E36BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E373C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E3774(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E3798(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP7CGImageEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715E37F8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_2715E3924(&v4, v3);
}

void sub_2715E3B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E3BA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E3BE0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E3C04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14CGDataProviderEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715E3C64(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_2715E3E50(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_2715E3E50(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result;
  v4 = a2;
  LOBYTE(v6[0]) = 0;
  v15 = 0;
  if (*(a3 + 96) != 1)
  {
    *result = a2;
    *(result + 8) = &off_288133B58;
    *(result + 16) = 0;
    *(result + 112) = 0;
    return result;
  }

  sub_27112F6CC(v6, a3);
  v15 = 1;
  *v3 = v4;
  *(v3 + 8) = &off_288133B58;
  *(v3 + 16) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = 0;
  if (v8 == 1)
  {
    *(v3 + 16) = *v6;
    *(v3 + 32) = v7;
    v6[1] = 0;
    v7 = 0;
    v6[0] = 0;
    *(v3 + 40) = 1;
  }

  *(v3 + 48) = 0;
  *(v3 + 104) = 0;
  if (v14)
  {
    v5 = v11;
    *(v3 + 64) = v10;
    *(v3 + 48) = *v9;
    v9[0] = 0;
    v9[1] = 0;
    *(v3 + 72) = v5;
    *(v3 + 80) = *__p;
    *(v3 + 96) = v13;
    __p[1] = 0;
    v13 = 0;
    v10 = 0;
    __p[0] = 0;
    *(v3 + 104) = 1;
    *(v3 + 112) = 1;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
LABEL_7:
        if (v8 != 1)
        {
          return v3;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v9[0]);
    if (v8 != 1)
    {
      return v3;
    }
  }

  else
  {
    *(v3 + 112) = 1;
    if (v8 != 1)
    {
      return v3;
    }
  }

LABEL_14:
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    return v3;
  }

  operator delete(v6[0]);
  return v3;
}

void sub_2715E3FE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2715E4210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E4254(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (v6)
    {
LABEL_4:
      v17 = *(a2 + 48);
      if (v17 <= 0x28 && ((1 << v17) & 0x1E3E3E0001ELL) != 0)
      {
        sub_2715E4BBC(a2, v38);
        *&v27 = &unk_28810E7B8;
        v9 = *(a2 + 8);
        v10 = *(a2 + 16);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v11 = *(a2 + 40);
          v12 = *(a2 + 48);
          v13 = *(a2 + 52);
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v11 = *(a2 + 40);
          v12 = *(a2 + 48);
          v13 = *(a2 + 52);
        }

        *(&v27 + 1) = v9;
        *&v28 = v10;
        *(&v28 + 1) = *(a2 + 24);
        LODWORD(v29) = *(a2 + 32);
        v30 = v11;
        LODWORD(v31) = v12;
        WORD2(v31) = v13;
        if (v10)
        {
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        sub_2716F2A8C(&v27, v8);
      }

      v39 = 0;
      v40[0] = v38;
      v40[1] = "Invalid image format. Format ";
      v40[2] = v38;
      v40[3] = "Invalid image format. Format ";
      v40[4] = "Invalid image format. Format ";
      v41 = v40;
      sub_2712390A4(&v41);
      sub_27120AACC();
    }
  }

  else if (v6)
  {
    goto LABEL_4;
  }

  sub_2711CC04C(v18, "Unsupported format");
  v26 = 1;
  sub_27184B70C(v18, &v27);
  *a1 = v27;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v37 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_26;
  }

  *(a1 + 40) = 0;
  v14 = v30;
  if (v30 == 1)
  {
    *(a1 + 16) = v28;
    *(a1 + 32) = v29;
    v29 = 0;
    v28 = 0uLL;
    *(a1 + 40) = 1;
    *(a1 + 48) = 0;
    v15 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v36 & 1) == 0)
    {
LABEL_14:
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    *(a1 + 48) = 0;
    v15 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v36 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 = v33;
  *(v15 + 16) = v32;
  *v15 = v31;
  v31 = 0uLL;
  *(a1 + 72) = v16;
  *(a1 + 80) = v34;
  *(a1 + 96) = v35;
  v32 = 0;
  v34 = 0uLL;
  v35 = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (!v14)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

LABEL_26:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(__p);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_2715E4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E4BBC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a1 = v4;
      a2 = v5;
    }

    v2 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = a1;
        v9 = a2;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a2 = v9;
        if (*(v8 + 53) == 1)
        {
          goto LABEL_8;
        }

LABEL_12:
        *a2 = 0;
        return;
      }
    }
  }

  if (*(a1 + 53) != 1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v7 = *(*v2 + 96);

  v7(v2, 0);
}

void sub_2715E4D08(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_2715E34B8(&v4, v3);
}

void sub_2715E4E34(int a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  if (cf)
  {
    v3 = cf;
    CFRetain(cf);
    cf = v3;
  }

  sub_2715E4F60(&v4, cf);
}

void sub_2715E5164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E51E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E521C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E5240(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP18CGImageDestinationEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715E5518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2743BF050](v2, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E555C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a10);
  _Unwind_Resume(a1);
}

void sub_2715E55A8(uint64_t a1, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  v6 = 0;
  v7[0] = v5;
  v7[1] = "Requested to load ";
  v7[2] = v5;
  v7[3] = "Requested to load ";
  v7[4] = "Requested to load ";
  v8 = v7;
  sub_2712D7688(&v8);
  sub_2715E3FF8();
}

void sub_2715E57F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E589C(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  sub_2715E59F4("Desired image format is ");
}

void sub_2715E59C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E59F4(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2711F46D0(&v4);
  sub_27120AACC();
}

void sub_2715E5B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5BE4(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  sub_2715E5D3C("Requested to load format ");
}

void sub_2715E5D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E5D3C(uint64_t a1)
{
  v2 = 0;
  v3[0] = v1;
  v3[1] = a1;
  v3[2] = v1;
  v3[3] = a1;
  v3[4] = a1;
  v4 = v3;
  sub_2711D6F00(&v4);
  sub_27120AACC();
}

void sub_2715E5EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E5F2C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50[19] = *MEMORY[0x277D85DE8];
  if (a2 == 255)
  {
    if ((a1 & 0xFFFFFFFB) != 0)
    {
      sub_2715E55A8(v38, a1, 4);
    }

    v5 = 4;
    goto LABEL_16;
  }

  if (a2 == 137)
  {
    if (a1 != 3 && a1)
    {
      sub_2715E55A8(v38, a1, 3);
    }

    v5 = 3;
LABEL_16:
    *a3 = v5;
    *(a3 + 120) = 1;
    goto LABEL_57;
  }

  if ((a2 & 0xFFFFFFFB) == 0x49)
  {
    if (a1 != 5 && a1)
    {
      sub_2715E55A8(v38, a1, 5);
    }

    v5 = 5;
    goto LABEL_16;
  }

  sub_2711218C8(v38);
  *(&v39 + *(v39 - 3) + 8) = *(&v39 + *(v39 - 3) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x2743BE7E0](&v39, a2);
  if ((v49 & 0x10) != 0)
  {
    v7 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v7 = v45;
    }

    v8 = v44;
    v6 = v7 - v44;
    if (v7 - v44 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v6 = 0;
      v17 = 0;
      goto LABEL_26;
    }

    v8 = v42;
    v6 = *(&v43 + 1) - v42;
    if ((*(&v43 + 1) - v42) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_59:
      sub_271120DA8();
    }
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v17 = v6;
  if (v6)
  {
    memmove(v16, v8, v6);
  }

LABEL_26:
  *(v16 + v6) = 0;
  v38[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v38 + *(v38[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v39 = v9;
  v40 = MEMORY[0x277D82878] + 16;
  if (v47 < 0)
  {
    operator delete(__p[1]);
  }

  v40 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v41);
  std::iostream::~basic_iostream();
  MEMORY[0x2743BEF20](v50);
  v38[0] = "Found file format of unsupported format signature byte '0x";
  v38[1] = 58;
  v10 = v17;
  v11 = v16;
  if ((v17 & 0x80u) != 0)
  {
    v11 = v16[0];
    v10 = v16[1];
  }

  v39 = v11;
  v40 = v10;
  v41.__locale_ = "'.";
  v42 = 2;
  sub_271131230(v38, &v43, 0, 0, &v18);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_271127178(&v19, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v18;
  }

  v20 = 1;
  LOBYTE(v21) = 0;
  v25 = 0;
  v26 = 1;
  sub_2715E3C64(1u, &v19, &v27);
  *a3 = v27;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v37 == 1)
  {
    *(a3 + 40) = 0;
    v12 = v30;
    if (v30 == 1)
    {
      *(a3 + 16) = v28;
      *(a3 + 32) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v13 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v36 & 1) == 0)
      {
LABEL_36:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        goto LABEL_43;
      }
    }

    v14 = v33;
    *(v13 + 16) = v32;
    *v13 = v31;
    v31 = 0uLL;
    *(a3 + 72) = v14;
    *(a3 + 80) = v34;
    *(a3 + 96) = v35;
    v32 = 0;
    v34 = 0uLL;
    v35 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v12)
    {
      goto LABEL_41;
    }
  }

  else
  {
    *(a3 + 120) = 0;
  }

LABEL_43:
  if (v26 == 1)
  {
    if (v25 == 1)
    {
      if (v24 < 0)
      {
        operator delete(v23);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v20 == 1 && SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

LABEL_57:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2715E6580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E65FC(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x2743BF050);
}

_BYTE *sub_2715E6644(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2715E6A44(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2715E6744(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288133B78[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2715E6838(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_288133B78[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_2715E69F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2715E6A44(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_2715E6BE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2715E6BF4(const void *a1, size_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  *(&v42.__r_.__value_.__s + 23) = 4;
  strcpy(&v42, ".pgm");
  v45 = 4;
  v43 = 1;
  strcpy(v44, ".ppm");
  v48 = 4;
  v46 = 2;
  strcpy(v47, ".jpg");
  v51 = 5;
  v49 = 4;
  strcpy(v50, ".jpeg");
  v54 = 4;
  v52 = 4;
  strcpy(v53, ".png");
  v57 = 5;
  v55 = 3;
  strcpy(v56, ".tiff");
  v60 = 4;
  v58 = 5;
  strcpy(__p, ".tif");
  v61 = 5;
  *v39 = 0u;
  *v40 = 0u;
  v41 = 1065353216;
  sub_2715E7254(v39, &v42);
  sub_2715E7254(v39, v44);
  sub_2715E7254(v39, v47);
  sub_2715E7254(v39, v50);
  sub_2715E7254(v39, v53);
  sub_2715E7254(v39, v56);
  sub_2715E7254(v39, __p);
  if (v60 < 0)
  {
    operator delete(__p[0]);
    if ((v57 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v54 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v57 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v56[0]);
  if ((v54 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v53[0]);
  if ((v51 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v50[0]);
  if ((v48 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v47[0]);
  if ((v45 & 0x80000000) == 0)
  {
LABEL_7:
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  operator delete(v44[0]);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_8:
    if (a2 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_9;
    }

LABEL_47:
    sub_271120DA8();
  }

LABEL_46:
  operator delete(v42.__r_.__value_.__l.__data_);
  if (a2 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_47;
  }

LABEL_9:
  if (a2 >= 0x17)
  {
    operator new();
  }

  v38 = a2;
  if (a2)
  {
    memmove(__dst, a1, a2);
  }

  *(__dst + a2) = 0;
  v4 = v38;
  if ((v38 & 0x80u) == 0)
  {
    v5 = __dst;
  }

  else
  {
    v5 = __dst[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v6 = v38;
  }

  else
  {
    v6 = __dst[1];
  }

  memset(&v42, 0, sizeof(v42));
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_271120DA8();
  }

  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 24;
    }

    else
    {
      v7 = v6 | 7;
    }

    sub_27113107C(&v42, v7);
    goto LABEL_27;
  }

  if (v6)
  {
    do
    {
LABEL_27:
      v8 = __tolower(*v5);
      std::string::push_back(&v42, v8);
      v5 = (v5 + 1);
      --v6;
    }

    while (v6);
    v4 = v38;
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v42;
  }

  else
  {
    v9 = v42.__r_.__value_.__r.__words[0];
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  v11 = sub_2711284DC(__dst, v9, size);
  v12 = v39[1];
  if (!v39[1])
  {
    goto LABEL_85;
  }

  v13 = v11;
  v14 = vcnt_s8(v39[1]);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v11;
    if (v11 >= v39[1])
    {
      v15 = v11 % v39[1];
    }
  }

  else
  {
    v15 = (v39[1] - 1) & v11;
  }

  v16 = *(v39[0] + v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_85:
    v31 = 0;
    v30 = 0;
    v29 = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v42.__r_.__value_.__l.__size_;
  }

  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v42;
  }

  else
  {
    v19 = v42.__r_.__value_.__r.__words[0];
  }

  if (v14.u32[0] < 2uLL)
  {
    v20 = v39[1] - 1;
    while (1)
    {
      v25 = v17[1];
      if (v13 == v25)
      {
        v26 = *(v17 + 39);
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = v17[3];
        }

        if (v26 == v18)
        {
          v28 = v27 >= 0 ? v17 + 2 : v17[2];
          if (!memcmp(v28, v19, v18))
          {
            goto LABEL_83;
          }
        }
      }

      else if ((v25 & v20) != v15)
      {
        goto LABEL_85;
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_85;
      }
    }
  }

  while (1)
  {
    v21 = v17[1];
    if (v13 == v21)
    {
      break;
    }

    if (v21 >= v12)
    {
      v21 %= v12;
    }

    if (v21 != v15)
    {
      goto LABEL_85;
    }

LABEL_61:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_85;
    }
  }

  v22 = *(v17 + 39);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v17[3];
  }

  if (v22 != v18)
  {
    goto LABEL_61;
  }

  v24 = v23 >= 0 ? v17 + 2 : v17[2];
  if (memcmp(v24, v19, v18))
  {
    goto LABEL_61;
  }

LABEL_83:
  v29 = v17[5] & 0xFFFFFF00;
  v30 = *(v17 + 10);
  v31 = 0x100000000;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_86:
    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_87:
  v32 = v40[0];
  if (v40[0])
  {
    do
    {
      v36 = *v32;
      if (*(v32 + 39) < 0)
      {
        operator delete(v32[2]);
      }

      operator delete(v32);
      v32 = v36;
    }

    while (v36);
  }

  v33 = v39[0];
  v39[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v31 | v29 | v30;
}

void sub_2715E714C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715E7254(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_2711284DC(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v12[1];
      if (v20 == v7)
      {
        v21 = *(v12 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v12[3];
        }

        if (v21 == v14)
        {
          v23 = v22 >= 0 ? (v12 + 2) : v12[2];
          result = memcmp(v23, v2, v14);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v20 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  result = memcmp(v18, v2, v14);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2715E77D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715E7800(va);
  _Unwind_Resume(a1);
}

void sub_2715E77E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2715E7800(va);
  _Unwind_Resume(a1);
}

void *sub_2715E7800(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t sub_2715E7868(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_2715E78D4(void *a1, int a2)
{
  v10 = a2;
  if (!*(a1 + *(*a1 - 24) + 32))
  {
LABEL_10:
    cbks = xmmword_288104018;
    v7 = CGDataConsumerCreate(a1, &cbks);
    sub_2716F0318(&v8, v7);
  }

  v2 = a1;
  sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/ImageDestinationRef.cpp", 73, "file.good()", 0xBuLL, "", 0, sub_271852CA8);
  if (byte_28087C430 == 1)
  {
    if (byte_28087C438 != 1 || (v3 = qword_28087C408, v4 = qword_28087C410, qword_28087C408 == qword_28087C410))
    {
LABEL_9:
      qword_28087C420(*algn_28087C428, "file.good()", 11, "", 0);
      a1 = v2;
      goto LABEL_10;
    }
  }

  else
  {
    v3 = qword_28087C408;
    v4 = qword_28087C410;
    if (qword_28087C408 == qword_28087C410)
    {
      goto LABEL_11;
    }
  }

  do
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    v3 += 16;
    v6(v5, "file.good()", 11, "", 0);
  }

  while (v3 != v4);
  if (byte_28087C430)
  {
    goto LABEL_9;
  }

LABEL_11:
  abort();
}

void sub_2715E7D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27157C440(v16 - 112);
  sub_27112F828(v16 - 88);
  _Unwind_Resume(a1);
}

_BYTE *sub_2715E7DEC(_BYTE *result, int a2)
{
  switch(a2)
  {
    case 5:
      sub_2715CB2C0(&v2, @"public.tiff");
    case 4:
      sub_2715CB2C0(&v2, @"public.jpeg");
    case 3:
      sub_2715CB2C0(&v2, @"public.png");
  }

  *result = 0;
  result[16] = 0;
  return result;
}

void sub_2715E7F1C()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "ImageDestinationRef does not (yet) support format ";
  v1[2] = v0;
  v1[3] = "ImageDestinationRef does not (yet) support format ";
  v1[4] = "ImageDestinationRef does not (yet) support format ";
  v2 = v1;
  sub_2711F7FCC(&v2);
  sub_2715E3FF8();
}

void sub_2715E8228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2715E82A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2715E82E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2715E8304(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK7__CFURLEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2715E8364@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a4 <= 3)
  {
    if ((a4 - 1) < 2)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        v8 = a5;
        if (v7 == a1)
        {
          v26 = v25;
          (*(*v7 + 24))(v7, v25);
        }

        else
        {
          v26 = (*(*v7 + 16))(*(a1 + 24));
        }

        a5 = v8;
      }

      else
      {
        v26 = 0;
      }

      sub_2715E9B10(v25, a3, a2, a5);
      result = v26;
      if (v26 == v25)
      {
        v16 = *v26;
LABEL_42:
        result = (*(v16 + 32))();
        v18 = *MEMORY[0x277D85DE8];
        return result;
      }

      goto LABEL_38;
    }

    if (a4 == 3)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = a5;
        if (v11 == a1)
        {
          v24 = v23;
          (*(*v11 + 24))(v11, v23);
        }

        else
        {
          v24 = (*(*v11 + 16))(*(a1 + 24));
        }

        a5 = v12;
      }

      else
      {
        v24 = 0;
      }

      sub_2715E99A0(v23, a3, a5);
      result = v24;
      if (v24 == v23)
      {
        v16 = *v24;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

LABEL_18:
    sub_2715E3FF8();
  }

  if (a4 != 4)
  {
    if (a4 == 5)
    {
      v9 = *(a1 + 24);
      if (v9)
      {
        v10 = a5;
        if (v9 == a1)
        {
          v20 = v19;
          (*(*v9 + 24))(v9, v19);
        }

        else
        {
          v20 = (*(*v9 + 16))(*(a1 + 24));
        }

        a5 = v10;
      }

      else
      {
        v20 = 0;
      }

      sub_2716EF844(v19, a3, a5);
      result = v20;
      if (v20 == v19)
      {
        v16 = *v20;
        goto LABEL_42;
      }

      goto LABEL_38;
    }

    goto LABEL_18;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    v14 = a5;
    if (v13 == a1)
    {
      v22 = v21;
      (*(*v13 + 24))(v13, v21);
    }

    else
    {
      v22 = (*(*v13 + 16))(*(a1 + 24));
    }

    a5 = v14;
  }

  else
  {
    v22 = 0;
  }

  sub_2715E92FC(v21, a3, a5);
  result = v22;
  if (v22 == v21)
  {
    v16 = *v22;
    goto LABEL_42;
  }

LABEL_38:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715E8B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  operator delete(v23);
  if (a21 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_2715E8C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = v6;
  v9 = a1;
  v10 = v6;
  v11 = a1;
  v12 = a1;
  v13 = &v8;
  sub_27123B448(&v13);
  sub_2714C49E0(&v5, v6, a2);
  v8 = v6;
  v9 = a3;
  v10 = v6;
  v11 = a3;
  v12 = a3;
  if (v7 != -1)
  {
    v13 = &v8;
    (*(&off_288133CD0 + v7))(&v13, v6);
    sub_2715E3FF8();
  }

  sub_2711308D4();
}

void sub_2715E8DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2715E8E40(_DWORD *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = 3;

        break;
      case 4:
        v4 = 4;

        break;
      case 5:
        v4 = 5;

        break;
      default:
        goto LABEL_20;
    }

    sub_2715E2E84(a1, a2, v4);
  }

  if ((a3 - 1) >= 2)
  {
    if (!a3)
    {
      v6 = 0;
      v7[0] = v5;
      v7[1] = "Format ";
      v7[2] = v5;
      v7[3] = "Format ";
      v7[4] = "Format ";
      v8 = v7;
      sub_2711316E8(&v8);
      sub_2715E3FF8();
    }

LABEL_20:
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/ImageIO.cpp", 222, "", 0, "should not be reached", 0x15uLL, sub_271852CA8);
    abort();
  }

  sub_2715ECC6C(a1, a2, 1, a3, a4);
}

void sub_2715E9268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715E92FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_2715E1E0C(v9, a2, 4, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715E9458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713BF0D4(va);
  _Unwind_Resume(a1);
}

void sub_2715E946C(_DWORD *a1)
{
  v1[10] = &unk_2881117B8;
  sub_2717BB090(a1, v1);
  operator new();
}

void sub_2715E9694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_2713050B8(&a9);
  _Unwind_Resume(a1);
}

void sub_2715E96DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715E96F4(_DWORD *a1)
{
  v1[14] = &unk_288111618;
  sub_2717BFFC8(a1, v1);
  operator new();
}

void sub_2715E9940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_27112F828(v10);
  sub_27112F828(&a10);
  sub_271308D7C(&a9);
  _Unwind_Resume(a1);
}

void sub_2715E9988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2715E99A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = a3;
    v6 = a2;
    if (v4 == a1)
    {
      v10 = v9;
      (*(*v4 + 24))(v4, v9);
    }

    else
    {
      v10 = (*(*v4 + 16))(v4);
    }

    a2 = v6;
    a3 = v5;
  }

  else
  {
    v10 = 0;
  }

  sub_2715E1E0C(v9, a2, 3, a3);
  result = v10;
  if (v10 == v9)
  {
    result = (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    result = (*(*v10 + 40))();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715E9AFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713BF0D4(va);
  _Unwind_Resume(a1);
}

void sub_2715E9B10(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v188 = *MEMORY[0x277D85DE8];
  v164 = a3;
  sub_2715EC47C(&v153, a2);
  if ((v163 & 1) == 0)
  {
    v177 = v153;
    LOBYTE(v178) = 0;
    v187 = 0;
    if (v162 != 1)
    {
      *a4 = v153;
      *(a4 + 16) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      goto LABEL_276;
    }

    sub_27112F6CC(&v178, &v154);
    v187 = 1;
    *a4 = v177;
    *(a4 + 16) = 0;
    *(a4 + 40) = 0;
    v8 = v180;
    if (v180 == 1)
    {
      *(a4 + 16) = v178;
      *(a4 + 32) = v179;
      v179 = 0;
      v178 = 0uLL;
      *(a4 + 40) = 1;
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v186 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a4 + 48) = 0;
      v9 = a4 + 48;
      *(a4 + 104) = 0;
      if ((v186 & 1) == 0)
      {
LABEL_9:
        *(a4 + 112) = 1;
        *(a4 + 120) = 0;
        if (!v8)
        {
          goto LABEL_276;
        }

LABEL_22:
        if ((SHIBYTE(v179) & 0x80000000) == 0)
        {
          goto LABEL_276;
        }

        v15 = v178;
LABEL_275:
        operator delete(v15);
        goto LABEL_276;
      }
    }

    v14 = v183;
    *(v9 + 16) = v182;
    *v9 = v181;
    v181 = 0uLL;
    *(a4 + 72) = v14;
    *(a4 + 80) = v184;
    *(a4 + 96) = v185;
    v182 = 0;
    v184 = 0uLL;
    v185 = 0;
    *(a4 + 104) = 1;
    *(a4 + 112) = 1;
    *(a4 + 120) = 0;
    if (!v8)
    {
      goto LABEL_276;
    }

    goto LABEL_22;
  }

  v152 = v153;
  if ((v4 - 1) < 2 || v4 == 21)
  {
    if (DWORD1(v152) != v4)
    {
      v176 = 0;
      sub_27120AACC();
    }
  }

  else
  {
    if (v4)
    {
      v176 = 0;
      sub_27120AACC();
    }

    v4 = DWORD1(v152);
  }

  LODWORD(v177) = v4;
  v10 = *(a1 + 24);
  if (!v10)
  {
    sub_27112AFFC();
  }

  (*(*v10 + 48))(v143);
  if (v150)
  {
    v140 = &unk_28810E778;
    *v141 = *&v143[8];
    *&v143[8] = 0;
    *&v143[16] = 0;
    *&v142[14] = *&v144[14];
    *v142 = *v144;
    v11 = *&v144[22] >> 16;
    if (v11 == DWORD1(v152))
    {
      goto LABEL_40;
    }

    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 275, "image_dynamic.RuntimeFormat() == color_format", 0x2DuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_39:
        qword_28087C420(*algn_28087C428, "image_dynamic.RuntimeFormat() == color_format", 45, "", 0);
        v11 = DWORD1(v152);
LABEL_40:
        if (v11 == 21)
        {
          v30 = v152;
          v165.__r_.__value_.__r.__words[0] = &unk_28810E078;
          sub_2715F1268(&v140, &v165.__r_.__value_.__l.__size_);
          if (v30)
          {
            if (((v172 * v170) & 0x8000000000000000) != 0)
            {
              exception = __cxa_allocate_exception(8uLL);
              *exception = &unk_288117780;
              __cxa_throw(exception, &unk_28812C000, std::exception::~exception);
            }

            size = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_103;
            }

            v32 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v32->__on_zero_shared)(v32);
                std::__shared_weak_count::__release_weak(v32);
              }

              v33 = v165.__r_.__value_.__r.__words[2];
              size = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v34 = size;
                  (v33->__on_zero_shared)(v33);
                  std::__shared_weak_count::__release_weak(v33);
                  size = v34;
                }
              }
            }

            if (v174 == 1)
            {
              (*(*size + 96))(&v177);
            }

            else
            {
LABEL_103:
              *&v177 = 0;
            }

            if (!v167)
            {
              goto LABEL_254;
            }

            if (!HIDWORD(v167))
            {
              goto LABEL_254;
            }

            v56 = v168;
            if (!v168)
            {
              goto LABEL_254;
            }

            v57 = v171;
            v58 = v166;
            if (v173 == 1 && v166)
            {
              v60 = v165.__r_.__value_.__r.__words[2];
              v59 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v61 = v59;
                  (v60->__on_zero_shared)(v60);
                  std::__shared_weak_count::__release_weak(v60);
                  v59 = v61;
                }
              }

              (*(*v59 + 88))(v59, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v58 = v166;
            }

            for (i = v56 - 1; i; --i)
            {
              std::istream::read();
              v58 = (v58 + v57);
            }

LABEL_115:
            std::istream::read();
            goto LABEL_254;
          }

          memset(&v175, 0, sizeof(v175));
          v74 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_162;
          }

          v75 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v75->__on_zero_shared)(v75);
              std::__shared_weak_count::__release_weak(v75);
            }

            v76 = v165.__r_.__value_.__r.__words[2];
            v74 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v77 = v74;
                (v76->__on_zero_shared)(v76);
                std::__shared_weak_count::__release_weak(v76);
                v74 = v77;
              }
            }
          }

          if (v174 == 1)
          {
            (*(*v74 + 96))(&v151);
          }

          else
          {
LABEL_162:
            v151 = 0;
          }

          v86 = v171;
          v87 = v172;
          v88 = v166;
          if (v173 == 1 && v166)
          {
            v90 = v165.__r_.__value_.__r.__words[2];
            v89 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v91 = v89;
                (v90->__on_zero_shared)(v90);
                std::__shared_weak_count::__release_weak(v90);
                v89 = v91;
              }
            }

            (*(*v89 + 88))(v89, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
            v88 = v166;
          }

          v92 = (v86 * HIDWORD(v87));
          if (v92)
          {
            v93 = (3 * v87);
            if (3 * v87)
            {
              v94 = (v88 + v92);
              v95 = a2 + 4;
              v96 = MEMORY[0x277D85DE0];
              do
              {
                v97 = v88;
                do
                {
                  v97->i8[0] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v98 = std::istream::peek();
                    if (v98 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v98 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v98, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97->i8[1] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v99 = std::istream::peek();
                    if (v99 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v99 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v99, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97->i8[2] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(v95 + *(*a2 - 24)) & 2) == 0)
                  {
                    v100 = std::istream::peek();
                    if (v100 <= 0x7F)
                    {
                      if ((*(v96 + 4 * v100 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v100, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v97 = (v97 + 3);
                }

                while (v97 != &v88->i8[v93]);
                v88 = (v88 + v86);
              }

              while (v88 != v94);
            }
          }

LABEL_217:
          v112 = v151;
          v151 = 0;
          if (v112)
          {
            (*(*v112 + 8))(v112);
          }

          if (v175.__r_.__value_.__r.__words[0])
          {
            operator delete(v175.__r_.__value_.__l.__data_);
          }

          goto LABEL_256;
        }

        if (v11 != 2)
        {
          if (v11 == 1)
          {
            v19 = v152;
            v165.__r_.__value_.__r.__words[0] = &unk_28810E1B8;
            sub_2715F0534(&v140, &v165.__r_.__value_.__l.__size_);
            if (v19)
            {
              if (((v167 * v168) & 0x8000000000000000) != 0)
              {
                v132 = __cxa_allocate_exception(8uLL);
                *v132 = &unk_288117780;
                __cxa_throw(v132, &unk_28812C000, std::exception::~exception);
              }

              v20 = v165.__r_.__value_.__l.__size_;
              if (!v165.__r_.__value_.__l.__size_)
              {
                goto LABEL_116;
              }

              v21 = v165.__r_.__value_.__r.__words[2];
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v21->__on_zero_shared)(v21);
                  std::__shared_weak_count::__release_weak(v21);
                }

                v22 = v165.__r_.__value_.__r.__words[2];
                v20 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v23 = v20;
                    (v22->__on_zero_shared)(v22);
                    std::__shared_weak_count::__release_weak(v22);
                    v20 = v23;
                  }
                }
              }

              if (BYTE1(v170) == 1)
              {
                (*(*v20 + 96))(&v177);
              }

              else
              {
LABEL_116:
                *&v177 = 0;
              }

              if (!v167)
              {
                goto LABEL_254;
              }

              v63 = HIDWORD(v167);
              if (!HIDWORD(v167))
              {
                goto LABEL_254;
              }

              v64 = v169;
              v65 = v166;
              if (v170 == 1 && v166)
              {
                v67 = v165.__r_.__value_.__r.__words[2];
                v66 = v165.__r_.__value_.__l.__size_;
                if (v165.__r_.__value_.__r.__words[2])
                {
                  atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                  if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    v68 = v66;
                    (v67->__on_zero_shared)(v67);
                    std::__shared_weak_count::__release_weak(v67);
                    v66 = v68;
                  }
                }

                (*(*v66 + 88))(v66, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
                v65 = v166;
              }

              for (j = v63 - 1; j; --j)
              {
                std::istream::read();
                v65 = (v65 + v64);
              }

              goto LABEL_115;
            }

            memset(&v175, 0, sizeof(v175));
            v78 = v165.__r_.__value_.__l.__size_;
            if (!v165.__r_.__value_.__l.__size_)
            {
              goto LABEL_197;
            }

            v79 = v165.__r_.__value_.__r.__words[2];
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v79->__on_zero_shared)(v79);
                std::__shared_weak_count::__release_weak(v79);
              }

              v80 = v165.__r_.__value_.__r.__words[2];
              v78 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v81 = v78;
                  (v80->__on_zero_shared)(v80);
                  std::__shared_weak_count::__release_weak(v80);
                  v78 = v81;
                }
              }
            }

            if (BYTE1(v170) == 1)
            {
              (*(*v78 + 96))(&v151);
            }

            else
            {
LABEL_197:
              v151 = 0;
            }

            v101 = v169;
            v102 = v167;
            v103 = v166;
            if (v170 == 1 && v166)
            {
              v105 = v165.__r_.__value_.__r.__words[2];
              v104 = v165.__r_.__value_.__l.__size_;
              if (v165.__r_.__value_.__r.__words[2])
              {
                atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v105->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v106 = v104;
                  (v105->__on_zero_shared)(v105);
                  std::__shared_weak_count::__release_weak(v105);
                  v104 = v106;
                }
              }

              (*(*v104 + 88))(v104, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
              v103 = v166;
            }

            v107 = (v101 * HIDWORD(v102));
            if (v107 && v102)
            {
              v108 = (v103 + v107);
              v109 = MEMORY[0x277D85DE0];
              do
              {
                v110 = v103;
                do
                {
                  v110->i8[0] = sub_2715F0ABC(&v175, a2);
                  std::istream::tellg();
                  while ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
                  {
                    v111 = std::istream::peek();
                    if (v111 <= 0x7F)
                    {
                      if ((*(v109 + 4 * v111 + 60) & 0x4000) == 0)
                      {
                        break;
                      }
                    }

                    else if (!__maskrune(v111, 0x4000uLL))
                    {
                      break;
                    }

                    std::istream::seekg();
                  }

                  std::istream::tellg();
                  v110 = (v110 + 1);
                }

                while (v110 != &v103->i8[v102]);
                v103 = (v103 + v101);
              }

              while (v103 != v108);
            }

            goto LABEL_217;
          }

          sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 284, "", 0, "Not implemented", 0xFuLL, sub_271852CA8);
LABEL_289:
          abort();
        }

        v24 = v152;
        v165.__r_.__value_.__r.__words[0] = &unk_28810DB38;
        sub_2715F0D64(&v140, &v165.__r_.__value_.__l.__size_);
        if (!v24)
        {
          v70 = v165.__r_.__value_.__l.__size_;
          if (!v165.__r_.__value_.__l.__size_)
          {
            goto LABEL_155;
          }

          v71 = v165.__r_.__value_.__r.__words[2];
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v71->__on_zero_shared)(v71);
              std::__shared_weak_count::__release_weak(v71);
            }

            v72 = v165.__r_.__value_.__r.__words[2];
            v70 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v73 = v70;
                (v72->__on_zero_shared)(v72);
                std::__shared_weak_count::__release_weak(v72);
                v70 = v73;
              }
            }
          }

          if (BYTE1(v170) == 1)
          {
            (*(*v70 + 96))(&v175);
          }

          else
          {
LABEL_155:
            v175.__r_.__value_.__r.__words[0] = 0;
          }

          v138 = v169;
          v82 = v167;
          if (v170 == 1 && v166)
          {
            v84 = v165.__r_.__value_.__r.__words[2];
            v83 = v165.__r_.__value_.__l.__size_;
            if (v165.__r_.__value_.__r.__words[2])
            {
              atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v84->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v85 = v83;
                (v84->__on_zero_shared)(v84);
                std::__shared_weak_count::__release_weak(v84);
                v83 = v85;
              }
            }

            (*(*v83 + 88))(v83, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          }

          if (v138 * HIDWORD(v82) && v82)
          {
            v113 = std::istream::peek();
            if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
            {
              v114 = 0;
              strcpy(&v177, "0123456789");
              BYTE7(v178) = 10;
              do
              {
                v115 = *(&v177 + v114);
              }

              while (v115 != v113 && v114++ != 9);
              if (v115 == v113)
              {
                operator new();
              }
            }

            operator new();
          }

          v117 = v175.__r_.__value_.__r.__words[0];
          v175.__r_.__value_.__r.__words[0] = 0;
          if (v117)
          {
            (*(*v117 + 8))(v117);
          }

          goto LABEL_256;
        }

        v25 = v167;
        if (((2 * v168 * v167) & 0x8000000000000000) != 0)
        {
          v133 = __cxa_allocate_exception(8uLL);
          *v133 = &unk_288117780;
          __cxa_throw(v133, &unk_28812C000, std::exception::~exception);
        }

        v26 = v165.__r_.__value_.__l.__size_;
        if (!v165.__r_.__value_.__l.__size_)
        {
          goto LABEL_76;
        }

        v27 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }

          v28 = v165.__r_.__value_.__r.__words[2];
          v26 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v29 = v26;
              (v28->__on_zero_shared)(v28);
              std::__shared_weak_count::__release_weak(v28);
              v26 = v29;
            }
          }
        }

        if (BYTE1(v170) == 1)
        {
          (*(*v26 + 96))(&v177);
        }

        else
        {
LABEL_76:
          *&v177 = 0;
        }

        if (!v167)
        {
          goto LABEL_254;
        }

        v35 = HIDWORD(v167);
        if (!HIDWORD(v167))
        {
          goto LABEL_254;
        }

        v135 = a4;
        v36 = v169;
        v37 = v166;
        if (v170 == 1 && v166)
        {
          v39 = v165.__r_.__value_.__r.__words[2];
          v38 = v165.__r_.__value_.__l.__size_;
          if (v165.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v165.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v40 = v38;
              (v39->__on_zero_shared)(v39);
              std::__shared_weak_count::__release_weak(v39);
              v38 = v40;
            }
          }

          (*(*v38 + 88))(v38, 1, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v37 = v166;
        }

        v41 = v35 - 1;
        if (v41)
        {
          if (v25)
          {
            v42 = 0;
            v43 = v25;
            v44 = (v25 - 1) & 0x7FFFFFFFFFFFFFFFLL;
            v45 = v44 + 1;
            v139 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
            v46 = (v44 + 1) & 0xFFFFFFFFFFFFFFFCLL;
            v137 = 2 * v46;
            v47 = v37 + 1;
            v48 = 2 * v36;
            v136 = -v46;
            while (1)
            {
              std::istream::read();
              v49 = v37;
              if (v44 >= 3)
              {
                if (v44 < 0xF)
                {
                  v50 = 0;
LABEL_96:
                  v49 = (v37 + v137);
                  v54 = 2 * v50;
                  v55 = v136 + v50;
                  do
                  {
                    *&v37->i8[v54] = vrev16_s8(*&v37->i8[v54]);
                    v54 += 8;
                    v55 += 4;
                  }

                  while (v55);
                  if (v45 == ((v44 + 1) & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_101;
                }

                v51 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
                v52 = v47;
                do
                {
                  v53 = vrev16q_s8(*v52);
                  v52[-1] = vrev16q_s8(v52[-1]);
                  *v52 = v53;
                  v52 += 2;
                  v51 -= 16;
                }

                while (v51);
                if (v45 == v139)
                {
                  goto LABEL_88;
                }

                v50 = (v44 + 1) & 0xFFFFFFFFFFFFFFF0;
                if (((v44 + 1) & 0xC) != 0)
                {
                  goto LABEL_96;
                }

                v49 = (v37 + 2 * v139);
              }

              do
              {
LABEL_101:
                v49->i16[0] = bswap32(v49->u16[0]) >> 16;
                v49 = (v49 + 2);
              }

              while (v49 != (v37 + 2 * v43));
LABEL_88:
              v37 = (v37 + v48);
              ++v42;
              v47 = (v47 + v48);
              if (v42 == v41)
              {
                goto LABEL_240;
              }
            }
          }

          v43 = v25;
          do
          {
            std::istream::read();
            v37 = (v37 + 2 * v36);
            --v41;
          }

          while (v41);
        }

        else
        {
          v43 = v25;
        }

LABEL_240:
        std::istream::read();
        a4 = v135;
        if (v43)
        {
          v118 = (v43 - 1) & 0x7FFFFFFFFFFFFFFFLL;
          v119 = v37;
          if (v118 < 3)
          {
            goto LABEL_253;
          }

          v120 = v118 + 1;
          if (v118 < 0xF)
          {
            v121 = 0;
            goto LABEL_248;
          }

          v121 = v120 & 0xFFFFFFFFFFFFFFF0;
          v122 = v37 + 1;
          v123 = v120 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v124 = vrev16q_s8(*v122);
            v122[-1] = vrev16q_s8(v122[-1]);
            *v122 = v124;
            v122 += 2;
            v123 -= 16;
          }

          while (v123);
          if (v120 != v121)
          {
            if ((v120 & 0xC) == 0)
            {
              v119 = (v37 + 2 * v121);
              goto LABEL_253;
            }

LABEL_248:
            v119 = (v37 + 2 * (v120 & 0xFFFFFFFFFFFFFFFCLL));
            v125 = (v37 + 2 * v121);
            v126 = v121 - (v120 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *v125 = vrev16_s8(*v125);
              ++v125;
              v126 += 4;
            }

            while (v126);
            if (v120 == (v120 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_254;
            }

            do
            {
LABEL_253:
              v119->i16[0] = bswap32(v119->u16[0]) >> 16;
              v119 = (v119 + 2);
            }

            while (v119 != (v37 + 2 * v43));
          }
        }

LABEL_254:
        v127 = v177;
        *&v177 = 0;
        if (v127)
        {
          (*(*v127 + 8))(v127);
        }

LABEL_256:
        v128 = v165.__r_.__value_.__r.__words[2];
        if (v165.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v165.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v128->__on_zero_shared)(v128);
          std::__shared_weak_count::__release_weak(v128);
        }

        *(a4 + 120) = 1;
        v129 = v141[1];
        if (v141[1] && !atomic_fetch_add(v141[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v129->__on_zero_shared)(v129);
          std::__shared_weak_count::__release_weak(v129);
        }

        goto LABEL_262;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_289;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "image_dynamic.RuntimeFormat() == color_format", 45, "", 0);
      v12 += 16;
    }

    while (v12 != v13);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_39;
  }

  v177 = *v143;
  LOBYTE(v178) = 0;
  v187 = 0;
  if (v149 != 1)
  {
    *a4 = *v143;
    *(a4 + 16) = 0;
    *(a4 + 112) = 0;
    *(a4 + 120) = 0;
    goto LABEL_262;
  }

  sub_27112F6CC(&v178, &v143[16]);
  v187 = 1;
  *a4 = v177;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  v16 = v180;
  if (v180 == 1)
  {
    *(a4 + 16) = v178;
    *(a4 + 32) = v179;
    v179 = 0;
    v178 = 0uLL;
    *(a4 + 40) = 1;
    *(a4 + 48) = 0;
    v17 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v186 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    *(a4 + 48) = 0;
    v17 = a4 + 48;
    *(a4 + 104) = 0;
    if ((v186 & 1) == 0)
    {
LABEL_28:
      *(a4 + 112) = 1;
      *(a4 + 120) = 0;
      if (!v16)
      {
        goto LABEL_262;
      }

      goto LABEL_34;
    }
  }

  v18 = v183;
  *(v17 + 16) = v182;
  *v17 = v181;
  v181 = 0uLL;
  *(a4 + 72) = v18;
  *(a4 + 80) = v184;
  *(a4 + 96) = v185;
  v182 = 0;
  v184 = 0uLL;
  v185 = 0;
  *(a4 + 104) = 1;
  *(a4 + 112) = 1;
  *(a4 + 120) = 0;
  if (!v16)
  {
    goto LABEL_262;
  }

LABEL_34:
  if (SHIBYTE(v179) < 0)
  {
    operator delete(v178);
  }

LABEL_262:
  if (v150 == 1)
  {
    v130 = *&v143[16];
    if (*&v143[16] && !atomic_fetch_add((*&v143[16] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v130->__on_zero_shared)(v130);
      std::__shared_weak_count::__release_weak(v130);
    }

    goto LABEL_276;
  }

  if (v149 == 1)
  {
    if (v148 == 1)
    {
      if (v147 < 0)
      {
        operator delete(v146);
      }

      if (v145 < 0)
      {
        operator delete(*&v144[24]);
      }
    }

    if (v144[16] == 1 && (v144[15] & 0x80000000) != 0)
    {
      v15 = *&v143[16];
      goto LABEL_275;
    }
  }

LABEL_276:
  if ((v163 & 1) == 0 && v162 == 1)
  {
    if (v161 == 1)
    {
      if (v160 < 0)
      {
        operator delete(v159);
      }

      if (v158 < 0)
      {
        operator delete(v157);
      }
    }

    if (v156 == 1 && v155 < 0)
    {
      operator delete(v154);
    }
  }

  v131 = *MEMORY[0x277D85DE8];
}

void sub_2715EC058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  v42 = a41;
  a41 = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  if (STACK[0x2E0])
  {
    operator delete(STACK[0x2E0]);
  }

  sub_2712C9E78(&STACK[0x290]);
  sub_2712C9A88(&a17);
  sub_271235250(&a25);
  sub_27112E024(&STACK[0x200]);
  _Unwind_Resume(a1);
}

void sub_2715EC47C(uint64_t a1, uint64_t *a2)
{
  v41 = a2;
  if (!sub_2715EEB68(&v41))
  {
    sub_2711CC04C(v42, "Invalid pnm file. Unexpected end of file in header.");
    v50 = 1;
    sub_2711CBCA8(5u, v42, __s);
    if (v50 == 1)
    {
      if (v49 == 1)
      {
        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(v45);
        }
      }

      if (v44 == 1 && v43 < 0)
      {
        operator delete(v42[0]);
      }
    }

    *a1 = *__s;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v40 != 1)
    {
      *(a1 + 120) = 0;
      return;
    }

    *(a1 + 40) = 0;
    v6 = v33;
    if (v33 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v32;
      v32 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v7 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
LABEL_18:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v6)
        {
          return;
        }

LABEL_33:
        if ((SHIBYTE(v32) & 0x80000000) == 0)
        {
          return;
        }

        v16 = __p;
        goto LABEL_56;
      }
    }

    v15 = v36;
    *(v7 + 16) = v35;
    *v7 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v15;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v6)
    {
      return;
    }

    goto LABEL_33;
  }

  __s[2] = 0;
  *__s = 0;
  std::istream::read();
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v29 = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
  }

  *(&__dst + v5) = 0;
  if (sub_2715EEB68(&v41))
  {
    sub_2715EED74(a2);
    v9 = v8;
    if (sub_2715EEB68(&v41))
    {
      sub_2715EED74(a2);
      v11 = v10;
      if (sub_2715EEB68(&v41))
      {
        sub_2715EED74(a2);
        v13 = v12;
        v26 = v12;
        if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
        {
          if (v29 < 0)
          {
            if (v28 == 2 && *__dst == 12880)
            {
              goto LABEL_66;
            }

            if (v28 != 2)
            {
              goto LABEL_63;
            }

            p_dst = __dst;
          }

          else
          {
            if (v29 != 2)
            {
              goto LABEL_63;
            }

            if (__dst == 12880)
            {
              goto LABEL_66;
            }

            p_dst = &__dst;
          }

          if (*p_dst != 13136)
          {
LABEL_63:
            if (!sub_2714DF710(&__dst, "P5") && !sub_2714DF710(&__dst, "P6"))
            {
              sub_2711CC04C(v25, "Invalid pnm file. Format magic number not recognized.");
              v25[96] = 1;
              sub_2715E3C64(5u, v25, __s);
              sub_271238E60(a1, __s);
              sub_27112D71C(__s);
              v22 = v25;
LABEL_85:
              sub_27112D66C(v22);
              goto LABEL_54;
            }

            v20 = 1;
LABEL_67:
            if (v29 < 0)
            {
              if (v28 == 2 && *__dst == 12880)
              {
                goto LABEL_81;
              }

              if (v28 == 2)
              {
                v21 = __dst;
LABEL_75:
                if (*v21 != 13648)
                {
                  goto LABEL_76;
                }

LABEL_81:
                if (v13 == 255)
                {
                  v23 = 1;
                }

                else
                {
                  if (v13 != 0xFFFF)
                  {
                    sub_2715EF010(__s, &v26);
                  }

                  v23 = 2;
                }

                goto LABEL_90;
              }
            }

            else if (v29 == 2)
            {
              if (__dst == 12880)
              {
                goto LABEL_81;
              }

              v21 = &__dst;
              goto LABEL_75;
            }

LABEL_76:
            if (sub_2714DF710(&__dst, "P3") || sub_2714DF710(&__dst, "P6"))
            {
              if (v13 != 255)
              {
                if (v13 != 0xFFFF)
                {
                  sub_2715EF010(__s, &v26);
                }

                sub_2711CC04C(v24, "Unsupported pnm format. Loader does not support Rgb16u (.pbm) loading yet.");
                v24[96] = 1;
                sub_2715E3C64(5u, v24, __s);
                sub_271238E60(a1, __s);
                sub_27112D71C(__s);
                v22 = v24;
                goto LABEL_85;
              }

              v23 = 21;
            }

            else
            {
              v23 = 0;
            }

LABEL_90:
            __s[0] = 0;
            std::istream::read();
            if (__s[0] == 13)
            {
              __s[0] = 0;
              std::istream::read();
            }

            *a1 = v20;
            *(a1 + 4) = v23;
            *(a1 + 8) = v9;
            *(a1 + 12) = v11;
            *(a1 + 120) = 1;
            goto LABEL_54;
          }

LABEL_66:
          v20 = 0;
          goto LABEL_67;
        }
      }
    }
  }

  sub_2711CC04C(v42, "Invalid pnm file. Unexpected end of file in header.");
  v50 = 1;
  sub_2711CBCA8(5u, v42, __s);
  if (v50 == 1)
  {
    if (v49 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }
    }

    if (v44 == 1 && v43 < 0)
    {
      operator delete(v42[0]);
    }
  }

  *a1 = *__s;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v40 == 1)
  {
    *(a1 + 40) = 0;
    v17 = v33;
    if (v33 == 1)
    {
      *(a1 + 16) = __p;
      *(a1 + 32) = v32;
      v32 = 0;
      __p = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v18 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v18 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v39 & 1) == 0)
      {
LABEL_47:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v17)
        {
          goto LABEL_54;
        }

LABEL_51:
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_54;
      }
    }

    v19 = v36;
    *(v18 + 16) = v35;
    *v18 = v34;
    v34 = 0uLL;
    *(a1 + 72) = v19;
    *(a1 + 80) = v37;
    *(a1 + 96) = v38;
    v35 = 0;
    v37 = 0uLL;
    v38 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (v17)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *(a1 + 120) = 0;
  }

LABEL_54:
  if ((v29 & 0x80000000) == 0)
  {
    return;
  }

  v16 = __dst;
LABEL_56:
  operator delete(v16);
}

void sub_2715ECBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715ECC6C(_DWORD *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = a1[12];
  v64 = v6;
  if (v6 > 0x15 || ((1 << v6) & 0x200006) == 0)
  {
    LODWORD(v68) = 0;
    sub_27120AACC();
  }

  if (a4 && (a4 == 1 && v6 - 3 < 0xFFFFFFFE || a4 == 2 && v6 != 21))
  {
    LODWORD(v68) = 0;
    sub_2715E3FF8();
  }

  v10 = a1[6];
  v9 = a1[7];
  v63 = a1[12];
  if (v6 - 1 > 1)
  {
    if (v6 != 21)
    {
      v78 = 0;
      sub_27120AACC();
    }

    v11 = a1;
    v12 = "P3\n";
    v13 = "P6\n";
  }

  else
  {
    v11 = a1;
    v12 = "P2\n";
    v13 = "P5\n";
  }

  if (a3 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  sub_271120E64(a2, v15, 3);
  if (v6 == 21 || v6 == 1)
  {
    v17 = 255;
  }

  else
  {
    v17 = 0xFFFF;
  }

  std::to_string(&v67, v10);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v67;
  }

  else
  {
    v18 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v67.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v18, size);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, " ", 1);
  std::to_string(&v67, v9);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v67;
  }

  else
  {
    v20 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v67.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v20, v21);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, "\n", 1);
  std::to_string(&v67, v17);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v67;
  }

  else
  {
    v22 = v67.__r_.__value_.__r.__words[0];
  }

  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v67.__r_.__value_.__l.__size_;
  }

  sub_271120E64(a2, v22, v23);
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  sub_271120E64(a2, "\n", 1);
  switch(v64)
  {
    case 0x15u:
      v67.__r_.__value_.__r.__words[0] = &unk_28810E0B8;
      sub_2715EFF9C(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 != 1)
      {
        v77.__r_.__value_.__r.__words[0] = 16;
        v77.__r_.__value_.__l.__size_ = 0x1000000008;
        v77.__r_.__value_.__r.__words[2] = 14;
        operator new();
      }

      v32 = v67.__r_.__value_.__l.__size_;
      if (!v67.__r_.__value_.__l.__size_)
      {
        goto LABEL_110;
      }

      v33 = v67.__r_.__value_.__r.__words[2];
      if (v67.__r_.__value_.__r.__words[2])
      {
        atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v33->__on_zero_shared)(v33);
          std::__shared_weak_count::__release_weak(v33);
        }

        v34 = v67.__r_.__value_.__r.__words[2];
        v32 = v67.__r_.__value_.__l.__size_;
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v35 = v32;
            (v34->__on_zero_shared)(v34);
            std::__shared_weak_count::__release_weak(v34);
            v32 = v35;
          }
        }
      }

      if (v76 == 1)
      {
        (*(*v32 + 96))(v65);
      }

      else
      {
LABEL_110:
        v65[0] = 0;
      }

      if (!v69)
      {
        goto LABEL_135;
      }

      if (!HIDWORD(v69))
      {
        goto LABEL_135;
      }

      v47 = v70;
      if (!v70)
      {
        goto LABEL_135;
      }

      v48 = v74;
      v49 = v68;
      if (v75 == 1 && v68)
      {
        v51 = v67.__r_.__value_.__r.__words[2];
        v50 = v67.__r_.__value_.__l.__size_;
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v52 = v50;
            (v51->__on_zero_shared)(v51);
            std::__shared_weak_count::__release_weak(v51);
            v50 = v52;
          }
        }

        (*(*v50 + 88))(v50, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
        v49 = v68;
      }

      for (i = v47 - 1; i; --i)
      {
        std::ostream::write();
        v49 += v48;
      }

      goto LABEL_134;
    case 2u:
      v67.__r_.__value_.__r.__words[0] = &unk_28810DB78;
      sub_2715EFA94(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 == 1)
      {
        v28 = v67.__r_.__value_.__l.__size_;
        if (!v67.__r_.__value_.__l.__size_)
        {
          goto LABEL_96;
        }

        v29 = v67.__r_.__value_.__r.__words[2];
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
          }

          v30 = v67.__r_.__value_.__r.__words[2];
          v28 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v31 = v28;
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
              v28 = v31;
            }
          }
        }

        if (v73 == 1)
        {
          (*(*v28 + 96))(v65);
        }

        else
        {
LABEL_96:
          v65[0] = 0;
        }

        v36 = v71;
        v37 = v69;
        v38 = v68;
        if (v72 == 1 && v68)
        {
          v40 = v67.__r_.__value_.__r.__words[2];
          v39 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v41 = v39;
              (v40->__on_zero_shared)(v40);
              std::__shared_weak_count::__release_weak(v40);
              v39 = v41;
            }
          }

          (*(*v39 + 88))(v39, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v38 = v68;
        }

        v42 = v36 * HIDWORD(v37);
        if (v36 * HIDWORD(v37) && v37)
        {
          v43 = 2 * v37;
          v44 = 2 * v36;
          v45 = v38 + 2 * v42;
          do
          {
            v46 = 0;
            do
            {
              LOWORD(v77.__r_.__value_.__l.__data_) = bswap32(*(v38 + v46)) >> 16;
              std::ostream::write();
              v46 += 2;
            }

            while (v43 != v46);
            v38 += v44;
          }

          while (v38 != v45);
        }

        goto LABEL_135;
      }

      v77.__r_.__value_.__r.__words[0] = 16;
      v77.__r_.__value_.__l.__size_ = 0x1000000008;
      v77.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v65[0]) = 0;
      v66 = 0;
      sub_2715F256C(&v77, a2, &v67, v65);
      if (v66 == 1 && v65[0])
      {
        v65[1] = v65[0];
        operator delete(v65[0]);
      }

      if (v69 && HIDWORD(v69))
      {
        goto LABEL_88;
      }

      break;
    case 1u:
      v67.__r_.__value_.__r.__words[0] = &unk_28810E1F8;
      sub_2715EF504(v11, &v67.__r_.__value_.__l.__size_);
      if (a3 == 1)
      {
        v24 = v67.__r_.__value_.__l.__size_;
        if (!v67.__r_.__value_.__l.__size_)
        {
          goto LABEL_123;
        }

        v25 = v67.__r_.__value_.__r.__words[2];
        if (v67.__r_.__value_.__r.__words[2])
        {
          atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          v26 = v67.__r_.__value_.__r.__words[2];
          v24 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v27 = v24;
              (v26->__on_zero_shared)(v26);
              std::__shared_weak_count::__release_weak(v26);
              v24 = v27;
            }
          }
        }

        if (v73 == 1)
        {
          (*(*v24 + 96))(v65);
        }

        else
        {
LABEL_123:
          v65[0] = 0;
        }

        if (!v69)
        {
          goto LABEL_135;
        }

        v54 = HIDWORD(v69);
        if (!HIDWORD(v69))
        {
          goto LABEL_135;
        }

        v55 = v71;
        v56 = v68;
        if (v72 == 1 && v68)
        {
          v58 = v67.__r_.__value_.__r.__words[2];
          v57 = v67.__r_.__value_.__l.__size_;
          if (v67.__r_.__value_.__r.__words[2])
          {
            atomic_fetch_add_explicit((v67.__r_.__value_.__r.__words[2] + 8), 1uLL, memory_order_relaxed);
            if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v59 = v57;
              (v58->__on_zero_shared)(v58);
              std::__shared_weak_count::__release_weak(v58);
              v57 = v59;
            }
          }

          (*(*v57 + 88))(v57, 0, "/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageView.h:1300");
          v56 = v68;
        }

        for (j = v54 - 1; j; --j)
        {
          std::ostream::write();
          v56 += v55;
        }

LABEL_134:
        std::ostream::write();
LABEL_135:
        v61 = v65[0];
        v65[0] = 0;
        if (v61)
        {
          (*(*v61 + 8))(v61);
        }

        break;
      }

      v77.__r_.__value_.__r.__words[0] = 16;
      v77.__r_.__value_.__l.__size_ = 0x1000000008;
      v77.__r_.__value_.__r.__words[2] = 14;
      LOBYTE(v65[0]) = 0;
      v66 = 0;
      sub_2715F1A84(&v77, a2, &v67, v65);
      if (v66 == 1 && v65[0])
      {
        v65[1] = v65[0];
        operator delete(v65[0]);
      }

      if (v69 && HIDWORD(v69))
      {
LABEL_88:
        sub_271120E64(a2, "\n", 1);
      }

      break;
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/ImageIO/src/Pnm.cpp", 459, "", 0, "not implemented", 0xFuLL, sub_271852CA8);
      abort();
  }

  v62 = v67.__r_.__value_.__r.__words[2];
  if (v67.__r_.__value_.__r.__words[2] && !atomic_fetch_add((v67.__r_.__value_.__r.__words[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  *(a5 + 120) = 1;
}

void sub_2715EE704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  v66 = a65;
  a65 = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  sub_2712C9E78(&STACK[0x228]);
  sub_27112E024(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_2715EEB68(uint64_t **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D85DE0];
  while (1)
  {
    v3 = *a1;
    std::istream::tellg();
    while ((*(v3 + *(*v3 - 24) + 32) & 2) == 0)
    {
      v4 = std::istream::peek();
      if (v4 <= 0x7F)
      {
        if ((*(v2 + 4 * v4 + 60) & 0x4000) == 0)
        {
          break;
        }
      }

      else if (!__maskrune(v4, 0x4000uLL))
      {
        break;
      }

      std::istream::seekg();
    }

    std::istream::tellg();
    if (v12 == v11)
    {
      v5 = *a1;
      std::istream::tellg();
      v7 = v5 + 4;
      for (i = *v5; (*(v7 + *(i - 24)) & 2) == 0 && std::istream::peek() == 35; i = v8)
      {
        v8 = *v5;
        if ((*(v7 + *(*v5 - 24)) & 2) == 0)
        {
          while (std::istream::peek() != 10)
          {
            std::istream::seekg();
            v8 = *v5;
            if ((*(v7 + *(*v5 - 24)) & 2) != 0)
            {
              goto LABEL_12;
            }
          }

          v8 = *v5;
        }

LABEL_12:
        ;
      }

      std::istream::tellg();
      if (v12 == v11)
      {
        break;
      }
    }
  }

  result = (*(*a1 + *(**a1 - 24) + 32) & 2) == 0;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2715EED74(void *a1)
{
  v2 = std::istream::peek();
  if ((*(a1 + *(*a1 - 24) + 32) & 2) != 0)
  {
LABEL_20:
    operator new();
  }

  v3 = v2;
  sub_2715EF3DC("0123456789", v10);
  v4 = v11;
  if ((v11 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = v10[0];
  }

  if ((v11 & 0x80u) != 0)
  {
    v4 = v10[1];
  }

  if (v4)
  {
    v6 = (v4 - 1);
    do
    {
      v7 = *v5;
      v5 = (v5 + 1);
      v8 = v7 == v3;
    }

    while (v7 != v3 && v6-- != 0);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_15:
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_19:
      operator new();
    }
  }

  else
  {
    v8 = 0;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  operator delete(v10[0]);
  if (!v8)
  {
    goto LABEL_20;
  }

  goto LABEL_19;
}

void sub_2715EEFF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EF010(uint64_t a1, _DWORD *a2)
{
  *a2;
  v2 = -1;
  operator new();
}

void sub_2715EF35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EF3DC(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = strlen(a1);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v8) = v4;
  if (v4)
  {
    memcpy(&__dst, a1, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_5:
      *a2 = __dst;
      *(a2 + 16) = v8;
      return;
    }
  }

  v6 = __dst;
  sub_271127178(a2, __dst, *(&__dst + 1));

  operator delete(v6);
}

void sub_2715EF504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 1)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715EF864(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = *(a1 + 32) << 32;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_2715EF814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}

void sub_2715EF864(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280878E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280878E50))
  {
    sub_2715EF97C();
  }

  if ((atomic_load_explicit(&qword_280878E70, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280878E70))
    {
      sub_2715EFA08();
    }
  }

  v2 = *(a1 + 48);
  sub_27120A854("Attempting to create an ", &unk_280878E38, " from an ", &unk_280878E58, " but the image is of incompatible format ");
}

void sub_2715EF9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EFA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715EFA94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 48) != 2)
  {
    __cxa_allocate_exception(0x10uLL);
    sub_2715EFDF8(a1);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      *&v15 = v4;
      *(&v15 + 1) = v5;
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = v6 == 0;
  if (!*(a1 + 28))
  {
    v7 = 1;
  }

  v8 = (*(a1 + 32) << 31) & 0x7FFFFFFF00000000;
  if (v7)
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a1 + 40);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (HIDWORD(v11) * HIDWORD(v8) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_26:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_27;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_35;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v12 += 16;
    }

    while (v12 != v13);
    if (byte_28087C430)
    {
      goto LABEL_26;
    }

LABEL_35:
    abort();
  }

LABEL_27:
  v14 = *(a1 + 52);
  if (*(&v15 + 1))
  {
    atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
    *a2 = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
    if (!atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v15 + 1) + 16))(*(&v15 + 1));

      std::__shared_weak_count::__release_weak(*(&v15 + 1));
    }
  }

  else
  {
    *a2 = v15;
    *(a2 + 8) = 0;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    *(a2 + 32) = v9;
    *(a2 + 40) = v14;
  }
}

void sub_2715EFDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  _Unwind_Resume(a1);
}