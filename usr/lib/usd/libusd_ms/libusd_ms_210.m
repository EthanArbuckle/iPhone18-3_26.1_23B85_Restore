void sub_29B254938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_29B22698C(v56 - 256);
  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_29B254E60(uint64_t *a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  (*(*a1 + 368))(&v53);
  (*(*a1 + 312))(a1, a3, a4);
  if (v53)
  {
    (*(*v53 + 24))(v53, a3, a4);
  }

  (*(*a1 + 64))(a1, a4);
  v8 = v54;
  v52[0] = v53;
  v52[1] = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B255E1C(a1, a3, v52, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  (*(*a1 + 336))(a1, a3, a4);
  (*(*a1 + 344))(a1, a3, a4);
  sub_29A008E78(&__p, "struct GlobalContext");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "GlobalContext(");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 3u, 1, 0);
  sub_29A008E78(&__p, ") : ");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 4u, 1, 0);
  sub_29A008E78(&__p, "{}");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 2u, 1, 0);
  (*(*a1 + 120))(a1, a2, a3, a4);
  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  v9 = sub_29B240C7C(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v9[23] & 0x80u) == 0)
  {
    v10 = v9[23];
  }

  else
  {
    v10 = *(v9 + 1);
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v10 + 13);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v10)
  {
    if ((v9[23] & 0x80u) == 0)
    {
      v12 = v9;
    }

    else
    {
      v12 = *v9;
    }

    memmove(p_p, v12, v10);
  }

  strcpy(p_p + v10, " VertexMain()");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  if ((v9[23] & 0x80u) == 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = &v50;
  sub_29A022DE0(&v50, v13 + 1);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v50.__r_.__value_.__r.__words[0];
  }

  if (v13)
  {
    if ((v9[23] & 0x80u) == 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    memmove(v14, v15, v13);
  }

  *(&v14->__r_.__value_.__l.__data_ + v13) = 32;
  v16 = v9[47];
  if (v16 >= 0)
  {
    v17 = (v9 + 24);
  }

  else
  {
    v17 = *(v9 + 3);
  }

  if (v16 >= 0)
  {
    v18 = v9[47];
  }

  else
  {
    v18 = *(v9 + 4);
  }

  v19 = std::string::append(&v50, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  sub_29B20E488();
  std::operator+<char>();
  v21 = std::string::append(&v48, " * float4(");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(v46, off_2A14FE188[0]);
  if ((v47 & 0x80u) == 0)
  {
    v23 = v46;
  }

  else
  {
    v23 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v24 = v47;
  }

  else
  {
    v24 = v46[1];
  }

  v25 = std::string::append(&v49, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v50, ", 1.0)");
  v28 = *&v27->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if ((v9[47] & 0x80u) == 0)
  {
    v29 = v9[47];
  }

  else
  {
    v29 = *(v9 + 4);
  }

  v30 = &v48;
  sub_29A022DE0(&v48, v29 + 4);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v48.__r_.__value_.__r.__words[0];
  }

  if (v29)
  {
    if ((v9[47] & 0x80u) == 0)
    {
      v31 = v9 + 24;
    }

    else
    {
      v31 = *(v9 + 3);
    }

    memmove(v30, v31, v29);
  }

  strcpy(v30 + v29, ".pos");
  v32 = std::string::append(&v48, " = ");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  v34 = std::string::append(&v49, off_2A14FE258[0]);
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v50, " * hPositionWorld");
  v37 = *&v36->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 144))(a1, a2, a3, a4, 0);
  (*(*a1 + 64))(a1, a4);
  std::operator+<char>();
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v38 = *(a2 + 264);
  v39 = *(a2 + 272);
  while (v38 != v39)
  {
    (*(*a1 + 128))(a1, *v38++, a3, a4);
  }

  (*(*a1 + 168))(a1, a2, a3, a4);
  (*(*a1 + 40))(a1, a4, 1, 1);
  sub_29A008E78(&__p, "VertexMain");
  std::string::operator=(a4 + 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  v40 = sub_29B240C7C(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v41 = std::string::append(&v50, " VertexMain(");
  v42 = *&v41->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 0, 1, 0);
  sub_29A008E78(&__p, ")");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "\tGlobalContext ctx {");
  (*(*a1 + 72))(a1, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 1u, 1, 0);
  sub_29A008E78(&__p, "}");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v40 + 23) >= 0)
  {
    v43 = *(v40 + 23);
  }

  else
  {
    v43 = v40[1];
  }

  v44 = &__p;
  sub_29A022DE0(&__p, v43 + 23);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v44 = __p.__r_.__value_.__r.__words[0];
  }

  if (v43)
  {
    if (*(v40 + 23) >= 0)
    {
      v45 = v40;
    }

    else
    {
      v45 = *v40;
    }

    memmove(v44, v45, v43);
  }

  strcpy(v44 + v43, " out = ctx.VertexMain()");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "out.pos.y = -out.pos.y");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "return out");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 40))(a1, a4, 0, 1);
  (*(*a1 + 64))(a1, a4);
  if (v54)
  {
    sub_29A014BEC(v54);
  }
}

void sub_29B255C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 88);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B255E1C(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a4 + 296);
  if (v4)
  {
    v8 = result;
    do
    {
      v9 = v4[5];
      if (*(v9 + 88) != *(v9 + 96))
      {
        v10 = strlen(off_2A14FE500[0]);
        v11 = v10;
        v12 = *(v9 + 23);
        if (v12 < 0)
        {
          if (v10 != *(v9 + 8))
          {
            goto LABEL_11;
          }

          if (v10 == -1)
          {
            sub_29A0F26CC();
          }

          v13 = *v9;
        }

        else
        {
          v13 = v4[5];
          if (v11 != v12)
          {
            goto LABEL_11;
          }
        }

        result = memcmp(v13, off_2A14FE500[0], v11);
        if (result)
        {
LABEL_11:
          std::operator+<char>();
          ((*v8)[11])(v8, &__p, a4);
          if (v17 < 0)
          {
            operator delete(__p);
          }

          if (*a3)
          {
            result = (*(**a3 + 32))(*a3, a2, v9, a4);
          }

          else
          {
            v14 = (*(*v8[1] + 80))(v8[1]);
            v15 = sub_29B242ED8();
            ((*v8)[25])(v8, v9, v14, v15, a2, a4, 1);
            result = ((*v8)[8])(v8, a4);
          }
        }
      }

      v4 = *v4;
    }

    while (v4);
  }

  return result;
}

void sub_29B256020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B25603C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 124);
  if (v6)
  {
    if (v6 == 2)
    {
      sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_prefilter.glsl");
      (*(*a1 + 104))(a1, &v16, a2, a3);
    }

    else
    {
      if (v6 != 1)
      {
        v8 = *(a2 + 124);
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v14, v8);
        v10 = std::string::insert(&v14, 0, "Invalid hardware specular environment method specified: '");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
        *&v15.__r_.__value_.__l.__data_ = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        v12 = std::string::append(&v15, "'");
        v13 = *&v12->__r_.__value_.__l.__data_;
        v17 = v12->__r_.__value_.__r.__words[2];
        v16 = v13;
        v12->__r_.__value_.__l.__size_ = 0;
        v12->__r_.__value_.__r.__words[2] = 0;
        v12->__r_.__value_.__r.__words[0] = 0;
        sub_29AAD6B14(exception, &v16);
        *exception = &unk_2A20C8F68;
        __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
      }

      sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_fis.glsl");
      (*(*a1 + 104))(a1, &v16, a2, a3);
    }
  }

  else
  {
    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_environment_none.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  v15.__r_.__value_.__r.__words[0] = &v16;
  sub_29A012C90(&v15);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B256268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t sub_29B256300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 132);
  if (v6 == 1)
  {
    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_transmission_opacity.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  else
  {
    if (v6)
    {
      v8 = *(a2 + 132);
      exception = __cxa_allocate_exception(0x20uLL);
      std::to_string(&v14, v8);
      v10 = std::string::insert(&v14, 0, "Invalid transmission render specified: '");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v15.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v15.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v15, "'");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v17 = v12->__r_.__value_.__r.__words[2];
      v16 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v16);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    sub_29AE1D8C4(&v16, "pbrlib/genglsl/lib/mx_transmission_refract.glsl");
    (*(*a1 + 104))(a1, &v16, a2, a3);
  }

  v15.__r_.__value_.__r.__words[0] = &v16;
  sub_29A012C90(&v15);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B2564D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

uint64_t sub_29B25656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 280))(a1);
  std::operator+<char>();
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define __METAL__ ");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#include <metal_stdlib>");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#include <simd/simd.h>");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "using namespace metal;");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec2 float2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec3 float3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define vec4 float4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec2 int2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec3 int3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define ivec4 int4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec2 uint2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec3 uint3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define uvec4 uint4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec2 BOOL2");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec3 BOOL3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define bvec4 BOOL4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define mat3 float3x3");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define mat4 float4x4");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 64))(a1, a3);
}

void sub_29B256C30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B256C94(void **a1, uint64_t a2, uint64_t a3)
{
  result = sub_29B240E54(a3);
  if (*(result + 88) != *(result + 96))
  {
    v7 = result;
    v8 = (*(*a1[1] + 80))(a1[1]);
    v9 = sub_29B242ED8();
    ((*a1)[25])(a1, v7, v8, v9, a2, a3, 1);
    v10 = (*a1)[8];

    return v10(a1, a3);
  }

  return result;
}

void sub_29B256DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AE1D8C4(v6, "stdlib/genmsl/lib/mx_texture.metal");
  (*(*a1 + 104))(a1, v6, a2, a3);
  v7 = v6;
  sub_29A012C90(&v7);
}

void sub_29B256E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29B256E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A008E78(&v30, off_2A14FE500[0]);
  v6 = sub_29B2408C8(a3, &v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  sub_29A008E78(&v28, off_2A14FE4D8[0]);
  v7 = std::string::insert(&v28, 0, "[");
  v8 = *&v7->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&__dst, "]");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v31 = v9->__r_.__value_.__r.__words[2];
  v30 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v6[47] < 0)
  {
    sub_29A008D14(&__dst, *(v6 + 3), *(v6 + 4));
  }

  else
  {
    __dst = *(v6 + 1);
  }

  (*(*a1 + 368))(&v26, a1, a2);
  if (v26)
  {
    (*(*v26 + 40))(v26, a2, v6, a3, &__dst, &v30);
  }

  else
  {
    std::operator+<char>();
    (*(*a1 + 80))(a1, &v28, a3, 0);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    (*(*a1 + 32))(a1, a3, 1);
    v11 = sub_29B1F31FC();
    v12 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v6, v11, v12, a2, a3, 0);
    (*(*a1 + 40))(a1, a3, 1, 1);
    (*(*a1 + 64))(a1, a3);
    std::operator+<char>();
    v13 = std::string::append(&v23, " ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v17 = std::string::append(&v24, p_dst, size);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v19 = &v30;
    }

    else
    {
      v19 = v30;
    }

    if (v31 >= 0)
    {
      v20 = HIBYTE(v31);
    }

    else
    {
      v20 = *(&v30 + 1);
    }

    v21 = std::string::append(&v25, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v28, a3, 1);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  (*(*a1 + 64))(a1, a3);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_29B25729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a31)
  {
    sub_29A014BEC(a31);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::operator+<char>();
  (*(*a1 + 88))(a1, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  (*(*a1 + 80))(a1, &__p, a3, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a3, 1);
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a3 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a3 + 8))
    {
      goto LABEL_14;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a3;
  }

  else
  {
    v11 = a3;
    if (v9 != v10)
    {
      goto LABEL_14;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    sub_29A008E78(&__p, "float4 pos [[position]]");
    (*(*a1 + 80))(a1, &__p, a3, 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_14:
  if (*(a4 + 96) != *(a4 + 88))
  {
    for (i = 0; i < (*(a4 + 96) - *(a4 + 88)) >> 3; ++i)
    {
      sub_29A008E78(&__p, "");
      v13 = sub_29B2438AC(*(*a2 + 8), *(*(*(a4 + 88) + 8 * i) + 24));
      v14 = *(v13 + 23);
      if (v14 >= 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = *v13;
      }

      if (v14 >= 0)
      {
        v16 = *(v13 + 23);
      }

      else
      {
        v16 = *(v13 + 8);
      }

      std::string::append(&__p, v15, v16);
      std::operator+<char>();
      v17 = std::string::append(&v28, " ");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v29;
      }

      else
      {
        v19 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v29.__r_.__value_.__l.__size_;
      }

      std::string::append(&__p, v19, size);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      v21 = strlen(off_2A14FE550[0]);
      v22 = v21;
      v23 = *(a3 + 23);
      if (v23 < 0)
      {
        if (v21 == *(a3 + 8))
        {
          if (v21 == -1)
          {
            sub_29A0F26CC();
          }

          v24 = *a3;
LABEL_38:
          if (!memcmp(v24, off_2A14FE550[0], v22))
          {
            std::string::append(&__p, "[[attribute(");
            std::to_string(&v29, i);
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v29;
            }

            else
            {
              v25 = v29.__r_.__value_.__r.__words[0];
            }

            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = v29.__r_.__value_.__l.__size_;
            }

            std::string::append(&__p, v25, v26);
            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            std::string::append(&__p, ")]]");
          }
        }
      }

      else
      {
        v24 = a3;
        if (v22 == v23)
        {
          goto LABEL_38;
        }
      }

      (*(*a1 + 80))(a1, &__p, a3, 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  (*(*a1 + 40))(a1, a3, 1, 0);
  return (*(*a1 + 64))(a1, a3);
}

void sub_29B2577C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = strlen(off_2A14FE550[0]);
  v7 = v6;
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    if (v6 != *(a3 + 8))
    {
      goto LABEL_11;
    }

    if (v6 == -1)
    {
      sub_29A0F26CC();
    }

    v9 = *a3;
  }

  else
  {
    v9 = a3;
    if (v7 != v8)
    {
      goto LABEL_11;
    }
  }

  if (!memcmp(v9, off_2A14FE550[0], v7))
  {
    sub_29A008E78(__p, off_2A14FE4E0[0]);
    v10 = sub_29B240AA4(a3, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B257390(a1, a2, a3, v10);
    LOBYTE(v8) = *(a3 + 23);
  }

LABEL_11:
  result = strlen(off_2A14FE6F8);
  v12 = result;
  if ((v8 & 0x80) != 0)
  {
    if (result != *(a3 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a3;
  }

  else
  {
    result = a3;
    if (v12 != v8)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v12);
  if (!result)
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v13 = sub_29B240AA4(a3, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29B257390(a1, a2, a3, v13);
  }

  return result;
}

void sub_29B2579C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B2579F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15[0] = a1;
  v15[1] = a3;
  v15[2] = a2;
  v5 = strlen(off_2A14FE550[0]);
  v6 = v5;
  v7 = *(a3 + 23);
  if (v7 < 0)
  {
    if (v5 != *(a3 + 8))
    {
      goto LABEL_11;
    }

    if (v5 == -1)
    {
      sub_29A0F26CC();
    }

    v8 = *a3;
  }

  else
  {
    v8 = a3;
    if (v6 != v7)
    {
      goto LABEL_11;
    }
  }

  if (!memcmp(v8, off_2A14FE550[0], v6))
  {
    sub_29A008E78(__p, off_2A14FE4E8[0]);
    v9 = sub_29B240C7C(a3, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B257BE0(v15, v9);
    LOBYTE(v7) = *(a3 + 23);
  }

LABEL_11:
  result = strlen(off_2A14FE6F8);
  v11 = result;
  if ((v7 & 0x80) != 0)
  {
    if (result != *(a3 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a3;
  }

  else
  {
    result = a3;
    if (v11 != v7)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v11);
  if (!result)
  {
    sub_29A008E78(__p, "Pixel shader outputs");
    (*(*a1 + 88))(a1, __p, a3);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE508[0]);
    v12 = sub_29B240C7C(a3, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return sub_29B257BE0(v15, v12);
  }

  return result;
}

void sub_29B257BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257BE0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a2 + 88) != *(a2 + 96))
  {
    std::operator+<char>();
    (*(*v3 + 80))(v3, __p, a1[1], 0);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v3 + 32))(v3, a1[1], 1);
    v5 = a1[1];
    v6 = strlen(off_2A14FE550[0]);
    v7 = *(v5 + 23);
    if (v7 < 0)
    {
      if (v6 != v5[1])
      {
LABEL_17:
        v8 = sub_29B1F31FC();
        v9 = sub_29B242ED8();
        (*(*v3 + 200))(v3, a2, v8, v9, a1[2], a1[1], 0);
        goto LABEL_18;
      }

      if (v6 == -1)
      {
        sub_29A0F26CC();
      }

      v5 = *v5;
    }

    else if (v6 != v7)
    {
      goto LABEL_17;
    }

    if (!memcmp(v5, off_2A14FE550[0], v6))
    {
      sub_29A008E78(__p, "float4 pos [[position]]");
      (*(*v3 + 80))(v3, __p, a1[1], 1);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_17;
  }

  sub_29A008E78(__p, "struct VertexData");
  (*(*v3 + 80))(v3, __p, a1[1], 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v3 + 32))(v3, a1[1], 1);
  sub_29A008E78(__p, "float4 pos [[position]]");
  (*(*v3 + 80))(v3, __p, a1[1], 1);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_18:
  (*(*v3 + 40))(v3, a1[1], 1, 0);
  (*(*v3 + 64))(v3, a1[1]);
  return (*(*v3 + 64))(v3, a1[1]);
}

void sub_29B257F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B257F34(uint64_t a1@<X1>, void *a2@<X8>)
{
  sub_29A008E78(__p, off_2A14FE548[0]);
  sub_29AE19D1C(a1, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29B257F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B257FB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 47) >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  result = sub_29A022DE0(a2, v3 + 1);
  if (*(result + 23) >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    v8 = *(a1 + 24);
    v7 = (a1 + 24);
    v6 = v8;
    if (v7[23] >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    result = memmove(v5, v9, v3);
  }

  *&v5[v3] = 46;
  return result;
}

uint64_t sub_29B25803C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if ((v2 & 0x24004) == 0x4004)
  {
    return 1;
  }

  else
  {
    return (v2 >> 7) & 1;
  }
}

void sub_29B258060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29AE1D8C4(v6, "stdlib/genmsl/lib/mx_matscalaroperators.metal");
  (*(*a1 + 104))(a1, v6, a2, a3);
  v7 = v6;
  sub_29A012C90(&v7);
}

void sub_29B2580EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29B258104(uint64_t *a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  (*(*a1 + 368))(&v109);
  (*(*a1 + 312))(a1, a3, a4);
  if (v109)
  {
    (*(*v109 + 24))(v109, a3, a4);
  }

  (*(*a1 + 64))(a1, a4);
  (*(*a1 + 304))(a1, a3, a4);
  (*(*a1 + 176))(a1, a3, a4);
  v8 = v110;
  v108[0] = v109;
  v108[1] = v110;
  if (v110)
  {
    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B255E1C(a1, a3, v108, a4);
  if (v8)
  {
    sub_29A014BEC(v8);
  }

  (*(*a1 + 320))(a1, a3, a4);
  (*(*a1 + 336))(a1, a3, a4);
  (*(*a1 + 344))(a1, a3, a4);
  v9 = (*(*a1 + 376))(a1, a2);
  if ((v9 & 1) == 0 && *(a3 + 145) != 1)
  {
    goto LABEL_33;
  }

  std::to_string(&v107, *(a3 + 128));
  v10 = std::string::insert(&v107, 0, "#define DIRECTIONAL_ALBEDO_METHOD ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 64))(a1, a4);
  if (!v9)
  {
    goto LABEL_33;
  }

  v12 = *(a3 + 140);
  if (!v12)
  {
    goto LABEL_34;
  }

  sub_29A008E78(&v105, off_2A14FE4D8[0]);
  v13 = std::string::insert(&v105, 0, "#define ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v106, " ");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v104, v12);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v104;
  }

  else
  {
    v17 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v104.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v107, v17, size);
  v20 = *&v19->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 140))
  {
    (*(*a1 + 328))(a1, a3, a4);
    LOBYTE(v12) = *(a3 + 140) != 0;
  }

  else
  {
LABEL_33:
    LOBYTE(v12) = 0;
  }

LABEL_34:
  (*(*a1 + 352))(a1, a3, a4);
  sub_29A008E78(&__p, "struct GlobalContext");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "GlobalContext(");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 3u, 0, v12);
  sub_29A008E78(&__p, ") : ");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 4u, 0, v12);
  sub_29A008E78(&__p, "{}");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "#define __DECL_GL_MATH_FUNCTIONS__");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29AE1D8C4(&__p, "stdlib/genmsl/lib/mx_math.metal");
  (*(*a1 + 104))(a1, &__p, a3, a4);
  v107.__r_.__value_.__r.__words[0] = &__p;
  sub_29A012C90(&v107);
  (*(*a1 + 64))(a1, a4);
  if (v9)
  {
    (*(*a1 + 384))(a1, a3, a4);
    (*(*a1 + 392))(a1, a3, a4);
  }

  sub_29B252208(a1, a3, a4, 2u, 0, v12);
  if (v9 && (*(a3 + 137) & 1) != 0 || *(a3 + 136) == 1)
  {
    sub_29AE1D8C4(&__p, "pbrlib/genglsl/lib/mx_shadow.glsl");
    (*(*a1 + 104))(a1, &__p, a3, a4);
    v107.__r_.__value_.__r.__words[0] = &__p;
    sub_29A012C90(&v107);
  }

  if (*(a3 + 145) == 1)
  {
    sub_29AE1D8C4(&__p, "pbrlib/genglsl/lib/mx_generate_albedo_table.glsl");
    (*(*a1 + 104))(a1, &__p, a3, a4);
    v107.__r_.__value_.__r.__words[0] = &__p;
    sub_29A012C90(&v107);
    (*(*a1 + 64))(a1, a4);
  }

  if (*(a3 + 146) == 1)
  {
    sub_29AE1D8C4(&__p, "pbrlib/genglsl/lib/mx_generate_prefilter_env.glsl");
    (*(*a1 + 104))(a1, &__p, a3, a4);
    v107.__r_.__value_.__r.__words[0] = &__p;
    sub_29A012C90(&v107);
    (*(*a1 + 64))(a1, a4);
  }

  if (*(a3 + 28) == 1)
  {
    sub_29A008E78(&__p, off_2A14FE688[0]);
    v107.__r_.__value_.__r.__words[0] = &__p;
    v21 = sub_29B1D6E60((a1 + 12), &__p.__r_.__value_.__l.__data_, &unk_29B769A0C, &v107);
    MEMORY[0x29C2C1A60](v21 + 40, "mx_transform_uv_vflip.glsl");
  }

  else
  {
    sub_29A008E78(&__p, off_2A14FE688[0]);
    v107.__r_.__value_.__r.__words[0] = &__p;
    v22 = sub_29B1D6E60((a1 + 12), &__p.__r_.__value_.__l.__data_, &unk_29B769A0C, &v107);
    MEMORY[0x29C2C1A60](v22 + 40, "mx_transform_uv.glsl");
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a3 + 138) == 1)
  {
    sub_29A008E78(&v106, off_2A14FE688[0]);
    v105.__r_.__value_.__r.__words[0] = &v106;
    sub_29B1D6E60((a1 + 12), &v106.__r_.__value_.__l.__data_, &unk_29B769A0C, &v105);
    std::operator+<char>();
    sub_29AAC9330(&__p, &v107);
    (*(*a1 + 104))(a1, &__p, a3, a4);
    v105.__r_.__value_.__r.__words[0] = &__p;
    sub_29A012C90(&v105);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }
  }

  (*(*a1 + 400))(a1, a2, a3, a4);
  (*(*a1 + 120))(a1, a2, a3, a4);
  v23 = **(a2 + 88);
  sub_29A008E78(&__p, off_2A14FE508[0]);
  v24 = sub_29B240C7C(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(v24 + 23) >= 0)
  {
    v25 = *(v24 + 23);
  }

  else
  {
    v25 = v24[1];
  }

  p_p = &__p;
  sub_29A022DE0(&__p, v25 + 15);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v25)
  {
    if (*(v24 + 23) >= 0)
    {
      v27 = v24;
    }

    else
    {
      v27 = *v24;
    }

    memmove(p_p, v27, v25);
  }

  strcpy(p_p + v25, " FragmentMain()");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 160))(a1, a2, a3, a4, 1);
  if ((*(a2 + 40) & 6) == 2)
  {
    if (*(v23 + 127) >= 0)
    {
      v28 = *(v23 + 127);
    }

    else
    {
      v28 = *(v23 + 112);
    }

    v29 = &__p;
    sub_29A022DE0(&__p, v28 + 29);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    if (v28)
    {
      if (*(v23 + 127) >= 0)
      {
        v30 = (v23 + 104);
      }

      else
      {
        v30 = *(v23 + 104);
      }

      memmove(v29, v30, v28);
    }

    strcpy(v29 + v28, " = float4(0.0, 0.0, 0.0, 1.0)");
    (*(*a1 + 80))(a1, &__p, a4, 1);
    goto LABEL_126;
  }

  if (*(a3 + 136) == 1)
  {
    if (*(v23 + 127) >= 0)
    {
      v31 = *(v23 + 127);
    }

    else
    {
      v31 = *(v23 + 112);
    }

    v32 = &__p;
    sub_29A022DE0(&__p, v31 + 47);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = __p.__r_.__value_.__r.__words[0];
    }

    if (v31)
    {
      if (*(v23 + 127) >= 0)
      {
        v33 = (v23 + 104);
      }

      else
      {
        v33 = *(v23 + 104);
      }

      memmove(v32, v33, v31);
    }

    strcpy(v32 + v31, " = float4(mx_compute_depth_moments(), 0.0, 1.0)");
    (*(*a1 + 80))(a1, &__p, a4, 1);
    goto LABEL_126;
  }

  if (*(a3 + 145) == 1)
  {
    if (*(v23 + 127) >= 0)
    {
      v34 = *(v23 + 127);
    }

    else
    {
      v34 = *(v23 + 112);
    }

    v35 = &__p;
    sub_29A022DE0(&__p, v34 + 46);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    if (v34)
    {
      if (*(v23 + 127) >= 0)
      {
        v36 = (v23 + 104);
      }

      else
      {
        v36 = *(v23 + 104);
      }

      memmove(v35, v36, v34);
    }

    strcpy(v35 + v34, " = float4(mx_generate_dir_albedo_table(), 1.0)");
    (*(*a1 + 80))(a1, &__p, a4, 1);
    goto LABEL_126;
  }

  if (*(a3 + 146) == 1)
  {
    if (*(v23 + 127) >= 0)
    {
      v37 = *(v23 + 127);
    }

    else
    {
      v37 = *(v23 + 112);
    }

    v38 = &__p;
    sub_29A022DE0(&__p, v37 + 43);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = __p.__r_.__value_.__r.__words[0];
    }

    if (v37)
    {
      if (*(v23 + 127) >= 0)
      {
        v39 = (v23 + 104);
      }

      else
      {
        v39 = *(v23 + 104);
      }

      memmove(v38, v39, v37);
    }

    strcpy(v38 + v37, " = float4(mx_generate_prefilter_env(), 1.0)");
    (*(*a1 + 80))(a1, &__p, a4, 1);
LABEL_126:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  v46 = *(*a1 + 144);
  if ((~*(a2 + 40) & 0x4004) != 0)
  {
    v46(a1, a2, a3, a4, 0);
  }

  else
  {
    v46(a1, a2, a3, a4, 1);
    v47 = *(a2 + 88);
    v48 = *(a2 + 96);
    while (v47 != v48)
    {
      v49 = *(*v47 + 240);
      if (v49)
      {
        v50 = *(v49 + 16);
        if (*(v50 + 8) == a2 && (*(v50 + 40) & 6) != 0)
        {
          (*(*a1 + 128))(a1);
        }
      }

      v47 += 8;
    }
  }

  v51 = *(v23 + 240);
  if (!v51)
  {
    v52 = *(v23 + 128);
    v53 = *(v23 + 136);
    if (v53)
    {
      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v54 = a1[1];
    if (v52)
    {
      v55 = *(v23 + 136);
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v54 + 24))(&__p);
      if (v55)
      {
        sub_29A014BEC(v55);
      }
    }

    else
    {
      v82 = sub_29B243874(v54, *(v23 + 24), 0);
      if (*(v82 + 23) < 0)
      {
        sub_29A008D14(&__p, *v82, *(v82 + 8));
      }

      else
      {
        v83 = *v82;
        __p.__r_.__value_.__r.__words[2] = *(v82 + 16);
        *&__p.__r_.__value_.__l.__data_ = v83;
      }
    }

    if (v53)
    {
      sub_29A014BEC(v53);
    }

    v84 = *(v23 + 24);
    if (*(v84 + 32) != 4 || *(v84 + 25) - 1 >= 2)
    {
      sub_29A911628("_tmp", (v23 + 104), &v107.__r_.__value_.__l.__data_);
      v87 = sub_29B2438AC(a1[1], *(v23 + 24));
      sub_29A911628(" ", v87, &v102.__r_.__value_.__l.__data_);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v107;
      }

      else
      {
        v88 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v89 = v107.__r_.__value_.__l.__size_;
      }

      v90 = std::string::append(&v102, v88, v89);
      v91 = *&v90->__r_.__value_.__l.__data_;
      v104.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
      *&v104.__r_.__value_.__l.__data_ = v91;
      v90->__r_.__value_.__l.__size_ = 0;
      v90->__r_.__value_.__r.__words[2] = 0;
      v90->__r_.__value_.__r.__words[0] = 0;
      v92 = std::string::append(&v104, " = ");
      v93 = *&v92->__r_.__value_.__l.__data_;
      v105.__r_.__value_.__r.__words[2] = v92->__r_.__value_.__r.__words[2];
      *&v105.__r_.__value_.__l.__data_ = v93;
      v92->__r_.__value_.__l.__size_ = 0;
      v92->__r_.__value_.__r.__words[2] = 0;
      v92->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v94 = &__p;
      }

      else
      {
        v94 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v95 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v95 = __p.__r_.__value_.__l.__size_;
      }

      v96 = std::string::append(&v105, v94, v95);
      v97 = *&v96->__r_.__value_.__l.__data_;
      v106.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
      *&v106.__r_.__value_.__l.__data_ = v97;
      v96->__r_.__value_.__l.__size_ = 0;
      v96->__r_.__value_.__r.__words[2] = 0;
      v96->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &v106, a4, 1);
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v102.__r_.__value_.__l.__data_);
      }

      sub_29B25A3B4(*(v23 + 24), &v107);
      sub_29A911628(" = ", (v23 + 104), &v105.__r_.__value_.__l.__data_);
      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = &v107;
      }

      else
      {
        v98 = v107.__r_.__value_.__r.__words[0];
      }

      if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v99 = HIBYTE(v107.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v99 = v107.__r_.__value_.__l.__size_;
      }

      v100 = std::string::append(&v105, v98, v99);
      v101 = *&v100->__r_.__value_.__l.__data_;
      v106.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
      *&v106.__r_.__value_.__l.__data_ = v101;
      v100->__r_.__value_.__l.__size_ = 0;
      v100->__r_.__value_.__r.__words[2] = 0;
      v100->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &v106, a4, 1);
      if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v106.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        v81 = v107.__r_.__value_.__r.__words[0];
        goto LABEL_292;
      }

      goto LABEL_293;
    }

    sub_29A911628(" = ", (v23 + 104), &v106.__r_.__value_.__l.__data_);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &__p;
    }

    else
    {
      v61 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = __p.__r_.__value_.__l.__size_;
    }

    goto LABEL_256;
  }

  if (*(v51 + 127) < 0)
  {
    sub_29A008D14(&__p, *(v51 + 104), *(v51 + 112));
  }

  else
  {
    __p = *(v51 + 104);
  }

  v56 = *(v23 + 271);
  if (v56 < 0)
  {
    v56 = *(v23 + 256);
  }

  if (v56)
  {
    (*(*a1[1] + 40))(&v107);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v107;
  }

  if ((*(a2 + 41) & 0x40) == 0)
  {
    v57 = *(v23 + 24);
    if (*(v57 + 32) != 4 || *(v57 + 25) - 1 >= 2)
    {
      sub_29B25A3B4(v57, &__p);
    }

    if (*(v23 + 127) >= 0)
    {
      v58 = *(v23 + 127);
    }

    else
    {
      v58 = *(v23 + 112);
    }

    v59 = &v106;
    sub_29A022DE0(&v106, v58 + 3);
    if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v59 = v106.__r_.__value_.__r.__words[0];
    }

    if (v58)
    {
      if (*(v23 + 127) >= 0)
      {
        v60 = (v23 + 104);
      }

      else
      {
        v60 = *(v23 + 104);
      }

      memmove(v59, v60, v58);
    }

    *(&v59->__r_.__value_.__l.__data_ + v58) = 2112800;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &__p;
    }

    else
    {
      v61 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = __p.__r_.__value_.__l.__size_;
    }

LABEL_256:
    v85 = std::string::append(&v106, v61, v62);
    v86 = *&v85->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v86;
    v85->__r_.__value_.__l.__size_ = 0;
    v85->__r_.__value_.__r.__words[2] = 0;
    v85->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v107, a4, 1);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      v81 = v106.__r_.__value_.__r.__words[0];
      goto LABEL_292;
    }

    goto LABEL_293;
  }

  if (*(a3 + 120) == 1)
  {
    std::operator+<char>();
    v63 = std::string::append(&v106, ".transparency, float3(0.3333)), 0.0, 1.0)");
    v64 = *&v63->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v63->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v64;
    v63->__r_.__value_.__l.__size_ = 0;
    v63->__r_.__value_.__r.__words[2] = 0;
    v63->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v107, a4, 1);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    sub_29A911628(" = float4(", (v23 + 104), &v105.__r_.__value_.__l.__data_);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = &__p;
    }

    else
    {
      v65 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v66 = __p.__r_.__value_.__l.__size_;
    }

    v67 = std::string::append(&v105, v65, v66);
    v68 = *&v67->__r_.__value_.__l.__data_;
    v106.__r_.__value_.__r.__words[2] = v67->__r_.__value_.__r.__words[2];
    *&v106.__r_.__value_.__l.__data_ = v68;
    v67->__r_.__value_.__l.__size_ = 0;
    v67->__r_.__value_.__r.__words[2] = 0;
    v67->__r_.__value_.__r.__words[0] = 0;
    v69 = std::string::append(&v106, ".color, outAlpha)");
    v70 = *&v69->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v69->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v107, a4, 1);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v105, off_2A14FE290[0]);
    v71 = std::string::insert(&v105, 0, "if (outAlpha < ");
    v72 = *&v71->__r_.__value_.__l.__data_;
    v106.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
    *&v106.__r_.__value_.__l.__data_ = v72;
    v71->__r_.__value_.__l.__size_ = 0;
    v71->__r_.__value_.__r.__words[2] = 0;
    v71->__r_.__value_.__r.__words[0] = 0;
    v73 = std::string::append(&v106, ")");
    v74 = *&v73->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v74;
    v73->__r_.__value_.__l.__size_ = 0;
    v73->__r_.__value_.__r.__words[2] = 0;
    v73->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v107, a4, 0);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    (*(*a1 + 32))(a1, a4, 1);
    sub_29A008E78(&v107, "discard_fragment()");
    (*(*a1 + 80))(a1, &v107, a4, 1);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    (*(*a1 + 40))(a1, a4, 0, 1);
  }

  else
  {
    sub_29A911628(" = float4(", (v23 + 104), &v105.__r_.__value_.__l.__data_);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = &__p;
    }

    else
    {
      v75 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v76 = __p.__r_.__value_.__l.__size_;
    }

    v77 = std::string::append(&v105, v75, v76);
    v78 = *&v77->__r_.__value_.__l.__data_;
    v106.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
    *&v106.__r_.__value_.__l.__data_ = v78;
    v77->__r_.__value_.__l.__size_ = 0;
    v77->__r_.__value_.__r.__words[2] = 0;
    v77->__r_.__value_.__r.__words[0] = 0;
    v79 = std::string::append(&v106, ".color, 1.0)");
    v80 = *&v79->__r_.__value_.__l.__data_;
    v107.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
    *&v107.__r_.__value_.__l.__data_ = v80;
    v79->__r_.__value_.__l.__size_ = 0;
    v79->__r_.__value_.__r.__words[2] = 0;
    v79->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v107, a4, 1);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v106.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      v81 = v105.__r_.__value_.__r.__words[0];
LABEL_292:
      operator delete(v81);
    }
  }

LABEL_293:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_127:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_128:
  sub_29A008E78(&__p, "");
  std::operator+<char>();
  v40 = std::string::append(&v106, "{");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v107.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v107.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 72))(a1, &v107, a4);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  v42 = v24[11];
  for (i = v24[12]; v42 != i; v42 += 8)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&__p.__r_.__value_.__l.__data_, (*v42 + 104), &v107);
    (*(*a1 + 72))(a1, &v107, a4);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }

    MEMORY[0x29C2C1A60](&__p, ", ");
  }

  sub_29A008E78(&v107, "}");
  (*(*a1 + 80))(a1, &v107, a4, 1);
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 168))(a1, a2, a3, a4);
  (*(*a1 + 40))(a1, a4, 1, 1);
  sub_29A008E78(&__p, "FragmentMain");
  std::string::operator=(a4 + 1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE508[0]);
  sub_29B240C7C(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::operator+<char>();
  v44 = std::string::append(&v107, " FragmentMain(");
  v45 = *&v44->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v45;
  v44->__r_.__value_.__l.__size_ = 0;
  v44->__r_.__value_.__r.__words[2] = 0;
  v44->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 0, 0, v12);
  sub_29A008E78(&__p, ")");
  (*(*a1 + 80))(a1, &__p, a4, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 32))(a1, a4, 1);
  sub_29A008E78(&__p, "\tGlobalContext ctx {");
  (*(*a1 + 72))(a1, &__p, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B252208(a1, a3, a4, 1u, 0, v12);
  sub_29A008E78(&__p, "}");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "return ctx.FragmentMain()");
  (*(*a1 + 80))(a1, &__p, a4, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 40))(a1, a4, 0, 1);
  (*(*a1 + 64))(a1, a4);
  if (v110)
  {
    sub_29A014BEC(v110);
  }
}

void sub_29B259FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v51 = *(v49 - 104);
  if (v51)
  {
    sub_29A014BEC(v51);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25A3B4(uint64_t a1, uint64_t a2)
{
  v36[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  if (v4 == 2)
  {
    if (*(a1 + 25) - 1 <= 1)
    {
      std::operator+<char>();
      v5 = std::string::append(&v34, ", 0.0, 1.0)");
      goto LABEL_36;
    }
  }

  else if (v4 == 3 && *(a1 + 25) - 1 <= 1)
  {
LABEL_35:
    std::operator+<char>();
    v5 = std::string::append(&v34, ", 1.0)");
LABEL_36:
    v28 = v5->__r_.__value_.__r.__words[0];
    v35.__r_.__value_.__r.__words[0] = v5->__r_.__value_.__l.__size_;
    *(v35.__r_.__value_.__r.__words + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
    v29 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    v30 = v35.__r_.__value_.__r.__words[0];
    *a2 = v28;
    *(a2 + 8) = v30;
    *(a2 + 15) = *(v35.__r_.__value_.__r.__words + 7);
    *(a2 + 23) = v29;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      v25 = v34.__r_.__value_.__r.__words[0];
      goto LABEL_40;
    }

    return;
  }

  v6 = sub_29B246C60();
  if (!sub_29A1B00DC(a1, v6))
  {
    v7 = sub_29B246A68();
    if (!sub_29A1B00DC(a1, v7))
    {
      v26 = sub_29B248158();
      if (!sub_29A1B00DC(a1, v26))
      {
        v27 = sub_29B248254();
        if (!sub_29A1B00DC(a1, v27))
        {

          JUMPOUT(0x29C2C1A60);
        }
      }

      goto LABEL_35;
    }
  }

  std::operator+<char>();
  v8 = std::string::append(&v31, ", ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v32.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v32.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&v32, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v33, ", ");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = *(a2 + 23);
  if (v17 >= 0)
  {
    v18 = a2;
  }

  else
  {
    v18 = *a2;
  }

  if (v17 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = *(a2 + 8);
  }

  v20 = std::string::append(&v35, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v34, ", 1.0)");
  v23 = v22->__r_.__value_.__r.__words[0];
  v36[0] = v22->__r_.__value_.__l.__size_;
  *(v36 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v23;
  *(a2 + 8) = v36[0];
  *(a2 + 15) = *(v36 + 7);
  *(a2 + 23) = v24;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    v25 = v31.__r_.__value_.__r.__words[0];
LABEL_40:
    operator delete(v25);
  }
}

void sub_29B25A734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25A7D4(void *a1, uint64_t a2, uint64_t a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = !(*(*a1 + 376))(a1, a2) || *(a3 + 140) == 0;
    if (!v12 && (~*(a2 + 40) & 0x4004) == 0)
    {
      sub_29A008E78(__p, off_2A14FE540[0]);
      sub_29B211E68(a3, __p, &v18);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18)
      {
        for (i = (v18 + 40); ; (*(*a1 + 112))(a1, i[3], a3, a4))
        {
          i = *i;
          if (!i)
          {
            break;
          }
        }
      }

      v14 = a1[97];
      v15 = a1[98];
      while (v14 != v15)
      {
        (*(*a1 + 112))(a1, *v14, a3, a4);
        v14 += 2;
      }

      if (v19)
      {
        sub_29A014BEC(v19);
      }
    }
  }
}

void sub_29B25A9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25A9D8(uint64_t *a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *(a2 + 24);
  v12 = sub_29B24805C();
  if (sub_29A1B00DC(v11, v12))
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = a3[1];
    }

    if (v13)
    {
      p_dst = &__dst;
      sub_29A022DE0(&__dst, v13 + 1);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if (*(a3 + 23) >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      memmove(p_dst, v15, v13);
      *(&p_dst->__r_.__value_.__l.__data_ + v13) = 32;
    }

    else
    {
      v19 = sub_29B1F31FC();
      if (*(v19 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v19, *(v19 + 1));
      }

      else
      {
        v20 = *v19;
        __dst.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v20;
      }
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v24 = &v87;
    sub_29A022DE0(&v87, size + 13);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v87.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__dst;
      }

      else
      {
        v25 = __dst.__r_.__value_.__r.__words[0];
      }

      memmove(v24, v25, size);
    }

    strcpy(v24 + size, "MetalTexture ");
    v28 = *(a2 + 104);
    v27 = a2 + 104;
    v26 = v28;
    v29 = *(v27 + 23);
    if (v29 >= 0)
    {
      v30 = v27;
    }

    else
    {
      v30 = v26;
    }

    if (v29 >= 0)
    {
      v31 = *(v27 + 23);
    }

    else
    {
      v31 = *(v27 + 8);
    }

    v32 = std::string::append(&v87, v30, v31);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v89 = v32->__r_.__value_.__r.__words[2];
    *__p = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 72))(a1, __p, a5);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    goto LABEL_177;
  }

  if (*(a3 + 23) >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v16)
  {
    v17 = &__dst;
    sub_29A022DE0(&__dst, v16 + 1);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __dst.__r_.__value_.__r.__words[0];
    }

    if (*(a3 + 23) >= 0)
    {
      v18 = a3;
    }

    else
    {
      v18 = *a3;
    }

    memmove(v17, v18, v16);
    *(&v17->__r_.__value_.__l.__data_ + v16) = 32;
  }

  else
  {
    v21 = sub_29B1F31FC();
    if (*(v21 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v21, *(v21 + 1));
    }

    else
    {
      v22 = *v21;
      __dst.__r_.__value_.__r.__words[2] = *(v21 + 2);
      *&__dst.__r_.__value_.__l.__data_ = v22;
    }
  }

  v34 = sub_29B2438AC(a1[1], *(a2 + 24));
  v35 = v34;
  if (*(v34 + 23) >= 0)
  {
    v36 = *(v34 + 23);
  }

  else
  {
    v36 = *(v34 + 8);
  }

  v37 = &v87;
  sub_29A022DE0(&v87, v36 + 1);
  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v37 = v87.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if (v35[23] >= 0)
    {
      v38 = v35;
    }

    else
    {
      v38 = *v35;
    }

    memmove(v37, v38, v36);
  }

  *(&v37->__r_.__value_.__l.__data_ + v36) = 32;
  v39 = *(a2 + 127);
  if (v39 >= 0)
  {
    v40 = (a2 + 104);
  }

  else
  {
    v40 = *(a2 + 104);
  }

  if (v39 >= 0)
  {
    v41 = *(a2 + 127);
  }

  else
  {
    v41 = *(a2 + 112);
  }

  v42 = std::string::append(&v87, v40, v41);
  v43 = *&v42->__r_.__value_.__l.__data_;
  v89 = v42->__r_.__value_.__r.__words[2];
  *__p = v43;
  v42->__r_.__value_.__l.__size_ = 0;
  v42->__r_.__value_.__r.__words[2] = 0;
  v42->__r_.__value_.__r.__words[0] = 0;
  if (v89 >= 0)
  {
    v44 = __p;
  }

  else
  {
    v44 = __p[0];
  }

  if (v89 >= 0)
  {
    v45 = HIBYTE(v89);
  }

  else
  {
    v45 = __p[1];
  }

  std::string::append(&__dst, v44, v45);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  if (!*(*(a2 + 24) + 32))
  {
    v47 = *(a2 + 128);
    v46 = *(a2 + 136);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v46);
      if (!v47)
      {
        goto LABEL_75;
      }

      v48 = *(a2 + 136);
      v49 = a1[1];
      if (v48)
      {
        v50 = 0;
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_111:
        (*(*v49 + 160))(__p);
        if (v89 >= 0)
        {
          v64 = __p;
        }

        else
        {
          v64 = __p[0];
        }

        if (v89 >= 0)
        {
          v65 = HIBYTE(v89);
        }

        else
        {
          v65 = __p[1];
        }

        std::string::append(&__dst, v64, v65);
        if (SHIBYTE(v89) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v50 & 1) == 0)
        {
          sub_29A014BEC(v48);
        }

        goto LABEL_75;
      }
    }

    else
    {
      if (!v47)
      {
        goto LABEL_75;
      }

      v48 = 0;
      v49 = a1[1];
    }

    v50 = 1;
    goto LABEL_111;
  }

LABEL_75:
  if ((*(a2 + 103) & 0x8000000000000000) == 0)
  {
    if (!*(a2 + 103))
    {
      goto LABEL_91;
    }

LABEL_83:
    std::operator+<char>();
    if (v89 >= 0)
    {
      v51 = __p;
    }

    else
    {
      v51 = __p[0];
    }

    if (v89 >= 0)
    {
      v52 = HIBYTE(v89);
    }

    else
    {
      v52 = __p[1];
    }

    std::string::append(&__dst, v51, v52);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_91;
  }

  if (*(a2 + 88))
  {
    goto LABEL_83;
  }

LABEL_91:
  v53 = *(a3 + 23);
  if (v53 < 0)
  {
    v53 = a3[1];
  }

  if (!v53)
  {
    v58 = *(a2 + 24);
    v59 = sub_29B246A68();
    if (sub_29A1B00DC(v58, v59) && (a6 & 1) == 0)
    {
      v60 = *(a2 + 55);
      if ((v60 & 0x8000000000000000) != 0)
      {
        v61 = *(a2 + 32);
        v60 = *(a2 + 40);
      }

      else
      {
        v61 = (a2 + 32);
      }

      v66 = strlen(off_2A14FE1B0[0]);
      if (v60 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v60;
      }

      v68 = &v61[v67];
      if (v67)
      {
        v69 = v61;
        v70 = &v61[v67];
        do
        {
          v71 = v69 + 1;
          while (*v69 != *off_2A14FE1B0[0])
          {
            ++v69;
            ++v71;
            if (v69 == v68)
            {
              goto LABEL_140;
            }
          }

          v72 = v66 - 1;
          v73 = off_2A14FE1B0[0] + 1;
          while (v72)
          {
            if (v71 == v68)
            {
              goto LABEL_140;
            }

            v75 = *v71++;
            v74 = v75;
            v76 = *v73++;
            --v72;
            if (v74 != v76)
            {
              goto LABEL_137;
            }
          }

          v70 = v69;
LABEL_137:
          ++v69;
        }

        while (v69 != v68);
      }

      else
      {
        v70 = v61;
      }

LABEL_140:
      v77 = v70 != v68 || v66 == 0;
      if (v77 && v70 == v61)
      {
        sub_29B25BC58();
        std::operator+<char>();
        v78 = std::string::append(&v87, " ]]");
        v79 = *&v78->__r_.__value_.__l.__data_;
        v89 = v78->__r_.__value_.__r.__words[2];
        *__p = v79;
        v78->__r_.__value_.__l.__size_ = 0;
        v78->__r_.__value_.__r.__words[2] = 0;
        v78->__r_.__value_.__r.__words[0] = 0;
        if (v89 >= 0)
        {
          v80 = __p;
        }

        else
        {
          v80 = __p[0];
        }

        if (v89 >= 0)
        {
          v81 = HIBYTE(v89);
        }

        else
        {
          v81 = __p[1];
        }

        std::string::append(&__dst, v80, v81);
        if (SHIBYTE(v89) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if (a6)
  {
    v54 = *(a2 + 128);
    v55 = *(a2 + 136);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = a1[1];
    if (v54)
    {
      v57 = *(a2 + 136);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v56 + 24))(__p);
      if (v57)
      {
        sub_29A014BEC(v57);
      }
    }

    else
    {
      v62 = sub_29B243874(v56, *(a2 + 24), 1);
      if (*(v62 + 23) < 0)
      {
        sub_29A008D14(__p, *v62, *(v62 + 8));
      }

      else
      {
        v63 = *v62;
        v89 = *(v62 + 16);
        *__p = v63;
      }
    }

    if (v55)
    {
      sub_29A014BEC(v55);
    }

    v82 = HIBYTE(v89);
    if (v89 < 0)
    {
      v82 = __p[1];
    }

    if (v82)
    {
      std::operator+<char>();
    }

    else
    {
      v83 = sub_29B1F31FC();
      if (*(v83 + 23) < 0)
      {
        sub_29A008D14(&v87, *v83, *(v83 + 1));
      }

      else
      {
        v84 = *v83;
        v87.__r_.__value_.__r.__words[2] = *(v83 + 2);
        *&v87.__r_.__value_.__l.__data_ = v84;
      }
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v87;
    }

    else
    {
      v85 = v87.__r_.__value_.__r.__words[0];
    }

    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = HIBYTE(v87.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v86 = v87.__r_.__value_.__l.__size_;
    }

    std::string::append(&__dst, v85, v86);
    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89) < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(*a1 + 72))(a1, &__dst, a5);
LABEL_177:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_29B25B1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25B290(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = (*(*a1 + 16))(a1);
  sub_29B1C5CA8(a2, v8, &v33);
  v9 = v33;
  if (!v33)
  {
    *a4 = 0;
    *(a4 + 1) = 0;
    goto LABEL_36;
  }

  sub_29B20D090(a3, (v33 + 48), &v32);
  if (v32)
  {
    v10 = *(&v32 + 1);
    *a4 = v32;
    *(a4 + 1) = v10;
    goto LABEL_36;
  }

  sub_29B1EAB28(a2, v31);
  if (v31[0] == v31[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v25 = std::string::append(&v28, "' has no outputs defined");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v30 = v25->__r_.__value_.__r.__words[2];
    v29 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v29);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v11 = (*(**v31[0] + 64))();
  v12 = sub_29B246738(v11);
  v13 = v33;
  v14 = sub_29B1F31FC();
  if (sub_29AAC05D4(v13, v14))
  {
    v15 = sub_29B248740();
    if (sub_29A1B00DC(v12, v15))
    {
      sub_29B264B84(&v29);
    }

    else if (*(v12 + 25) - 5 > 2)
    {
      sub_29B21D784(&v29);
    }

    else
    {
      sub_29B216EF4(&v29);
    }
  }

  else
  {
    v16 = v33;
    v17 = sub_29B1F31FC();
    if (!sub_29B22CFC0(v16, v17))
    {
      goto LABEL_28;
    }

    v18 = sub_29A8877BC(a1 + 3, (v9 + 48));
    if (v18)
    {
      (v18[5])(&v29);
      v19 = v29;
    }

    else
    {
      v19 = 0uLL;
    }

    v29 = 0uLL;
    v20 = *(&v32 + 1);
    v32 = v19;
    if (v20)
    {
      sub_29A014BEC(v20);
      if (*(&v29 + 1))
      {
        sub_29A014BEC(*(&v29 + 1));
      }

      v21 = v32;
      if (v32)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = v19;
      if (v19)
      {
LABEL_29:
        (*(*v21 + 24))(v21, v33, a3);
        v27 = v32;
        if (*(&v32 + 1))
        {
          atomic_fetch_add_explicit((*(&v32 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        sub_29B20D024(a3, (v9 + 48), &v27);
        if (*(&v27 + 1))
        {
          sub_29A014BEC(*(&v27 + 1));
        }

        *a4 = v32;
        a4 = &v32;
        goto LABEL_34;
      }
    }

    if (*(v12 + 25) - 5 > 2)
    {
      sub_29B22C640(&v29);
    }

    else
    {
      sub_29B21B7BC(&v29);
    }
  }

  v22 = v29;
  v29 = 0uLL;
  v23 = *(&v32 + 1);
  v32 = v22;
  if (v23)
  {
    sub_29A014BEC(v23);
    if (*(&v29 + 1))
    {
      sub_29A014BEC(*(&v29 + 1));
    }
  }

LABEL_28:
  v21 = v32;
  if (v32)
  {
    goto LABEL_29;
  }

LABEL_34:
  *a4 = 0;
  *(a4 + 1) = 0;
  *&v29 = v31;
  sub_29A0176E4(&v29);
  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

LABEL_36:
  if (v34)
  {
    sub_29A014BEC(v34);
  }
}

void sub_29B25B5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  __p = &a24;
  sub_29A0176E4(&__p);
  v26 = *(v24 - 72);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  v27 = *(v24 - 56);
  if (v27)
  {
    sub_29A014BEC(v27);
  }

  _Unwind_Resume(a1);
}

void *sub_29B25B6C8(uint64_t a1)
{
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

void sub_29B25B724(uint64_t a1)
{
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  v2 = sub_29AE1D3D0(a1);
  operator delete(v2);
}

void *sub_29B25B784@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  result = sub_29B25B7D0(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B25B7D0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB630;
  sub_29B25DF0C(a1 + 3);
  return a1;
}

void sub_29B25B84C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25B8B8(uint64_t a1, std::string *__str, __int128 *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_29A095FDC(a1);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(a1, v10);
    v11 = sub_29A280CD0(a1, v6, a3, *(a1 + 8));
LABEL_15:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *(a1 + 8);
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < a4)
  {
    if (v12 != v8)
    {
      v14 = v12 - v8;
      v15 = __str;
      do
      {
        std::string::operator=(v8++, v15++);
        v14 -= 24;
      }

      while (v14);
      v12 = *(a1 + 8);
    }

    v11 = sub_29A280CD0(a1, (v6 + v13), a3, v12);
    goto LABEL_15;
  }

  if (__str != a3)
  {
    do
    {
      std::string::operator=(v8, v6);
      v6 = (v6 + 24);
      ++v8;
    }

    while (v6 != a3);
    v12 = *(a1 + 8);
  }

  while (v12 != v8)
  {
    v16 = *(v12 - 1);
    v12 -= 24;
    if (v16 < 0)
    {
      operator delete(*v12);
    }
  }

  *(a1 + 8) = v8;
}

void *sub_29B25BA58()
{
  if ((atomic_load_explicit(&qword_2A17876E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17876E0))
  {
    sub_29A008E78(qword_2A17876C8, "in");
    __cxa_guard_release(&qword_2A17876E0);
  }

  return qword_2A17876C8;
}

void *sub_29B25BAD8()
{
  if ((atomic_load_explicit(&qword_2A1787700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787700))
  {
    sub_29A008E78(qword_2A17876E8, "out");
    __cxa_guard_release(&qword_2A1787700);
  }

  return qword_2A17876E8;
}

void *sub_29B25BB58()
{
  if ((atomic_load_explicit(&qword_2A1787720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787720))
  {
    sub_29A008E78(qword_2A1787708, "constant");
    __cxa_guard_release(&qword_2A1787720);
  }

  return qword_2A1787708;
}

void *sub_29B25BBD8()
{
  if ((atomic_load_explicit(&qword_2A1787740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787740))
  {
    sub_29A008E78(qword_2A1787728, "const");
    __cxa_guard_release(&qword_2A1787740);
  }

  return qword_2A1787728;
}

void *sub_29B25BC58()
{
  if ((atomic_load_explicit(&qword_2A1787760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787760))
  {
    sub_29A008E78(qword_2A1787748, "flat");
    __cxa_guard_release(&qword_2A1787760);
  }

  return qword_2A1787748;
}

void *sub_29B25BCD8()
{
  if ((atomic_load_explicit(&qword_2A1787780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1787780))
  {
    sub_29A008E78(qword_2A1787768, ".metal");
    __cxa_guard_release(&qword_2A1787780);
  }

  return qword_2A1787768;
}

uint64_t *sub_29B25BD58()
{
  *&v4 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17877A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17877A0))
  {
    sub_29A008E78(&v2, ".x");
    sub_29A008E78(v3, ".y");
    qword_2A1787788 = 0;
    unk_2A1787790 = 0;
    qword_2A1787798 = 0;
    sub_29A280C48(&qword_2A1787788, &v2, &v4, 2uLL);
    for (i = 0; i != -6; i -= 3)
    {
      if (SHIBYTE(v3[i + 2]) < 0)
      {
        operator delete(v3[i]);
      }
    }

    __cxa_guard_release(&qword_2A17877A0);
  }

  return &qword_2A1787788;
}

void sub_29B25BE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = (v15 + 47);
  v18 = -48;
  v19 = v17;
  while (1)
  {
    v20 = *v19;
    v19 -= 24;
    if (v20 < 0)
    {
      operator delete(*(v17 - 23));
    }

    v17 = v19;
    v18 += 24;
    if (!v18)
    {
      __cxa_guard_abort(&qword_2A17877A0);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29B25BEB4()
{
  *&v5 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17877C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17877C0))
  {
    sub_29A008E78(&v2, ".x");
    sub_29A008E78(v3, ".y");
    sub_29A008E78(v4, ".z");
    qword_2A17877A8 = 0;
    unk_2A17877B0 = 0;
    qword_2A17877B8 = 0;
    sub_29A280C48(&qword_2A17877A8, &v2, &v5, 3uLL);
    for (i = 0; i != -9; i -= 3)
    {
      if (SHIBYTE(v4[i + 2]) < 0)
      {
        operator delete(v4[i]);
      }
    }

    __cxa_guard_release(&qword_2A17877C0);
  }

  return &qword_2A17877A8;
}

void sub_29B25BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v21 = &a20;
  v22 = -72;
  v23 = &a20;
  while (1)
  {
    v24 = *v23;
    v23 -= 24;
    if (v24 < 0)
    {
      operator delete(*(v21 - 23));
    }

    v21 = v23;
    v22 += 24;
    if (!v22)
    {
      __cxa_guard_abort(&qword_2A17877C0);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29B25C040()
{
  *&v6 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17877E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17877E0))
  {
    sub_29A008E78(&v2, ".x");
    sub_29A008E78(v3, ".y");
    sub_29A008E78(v4, ".z");
    sub_29A008E78(v5, ".w");
    qword_2A17877C8 = 0;
    unk_2A17877D0 = 0;
    qword_2A17877D8 = 0;
    sub_29A280C48(&qword_2A17877C8, &v2, &v6, 4uLL);
    for (i = 0; i != -12; i -= 3)
    {
      if (SHIBYTE(v5[i + 2]) < 0)
      {
        operator delete(v5[i]);
      }
    }

    __cxa_guard_release(&qword_2A17877E0);
  }

  return &qword_2A17877C8;
}

void sub_29B25C16C(_Unwind_Exception *a1)
{
  v3 = (v1 + 95);
  v4 = -96;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A17877E0);
      _Unwind_Resume(a1);
    }
  }
}

void sub_29B25C1DC(const void **a1)
{
  v113[4] = *MEMORY[0x29EDCA608];
  sub_29B2433B4(a1);
  *v2 = &unk_2A20CB6B8;
  sub_29A008E78(&v11, "centroid");
  sub_29A008E78(&v12 + 1, "flat");
  sub_29A008E78(v14, "smooth");
  sub_29A008E78(v15, "noperspective");
  sub_29A008E78(v16, "patch");
  sub_29A008E78(v17, "sample");
  sub_29A008E78(v18, "break");
  sub_29A008E78(v19, "continue");
  sub_29A008E78(v20, "do");
  sub_29A008E78(v21, "for");
  sub_29A008E78(v22, "while");
  sub_29A008E78(v23, "switch");
  sub_29A008E78(v24, "case");
  sub_29A008E78(v25, "default");
  sub_29A008E78(v26, "if");
  sub_29A008E78(v27, "else,");
  sub_29A008E78(v28, "subroutine");
  sub_29A008E78(v29, "in");
  sub_29A008E78(v30, "out");
  sub_29A008E78(v31, "inout");
  sub_29A008E78(v32, "float");
  sub_29A008E78(v33, "double");
  sub_29A008E78(v34, "int");
  sub_29A008E78(v35, "void");
  sub_29A008E78(v36, "BOOL");
  sub_29A008E78(v37, "true");
  sub_29A008E78(v38, "false");
  sub_29A008E78(v39, "invariant");
  sub_29A008E78(v40, "discard_fragment");
  sub_29A008E78(v41, "return");
  sub_29A008E78(v42, "float2x2");
  sub_29A008E78(v43, "float2x3");
  sub_29A008E78(v44, "float2x4");
  sub_29A008E78(v45, "float3x2");
  sub_29A008E78(v46, "float3x3");
  sub_29A008E78(v47, "float3x4");
  sub_29A008E78(v48, "float4x2");
  sub_29A008E78(v49, "float4x3");
  sub_29A008E78(v50, "float4x4");
  sub_29A008E78(v51, "float2");
  sub_29A008E78(v52, "float3");
  sub_29A008E78(v53, "float4");
  sub_29A008E78(v54, "int2");
  sub_29A008E78(v55, "int3");
  sub_29A008E78(v56, "int4");
  sub_29A008E78(v57, "BOOL2");
  sub_29A008E78(v58, "BOOL3");
  sub_29A008E78(v59, "BOOL4");
  sub_29A008E78(v60, "uint");
  sub_29A008E78(v61, "uint2");
  sub_29A008E78(v62, "uint3");
  sub_29A008E78(v63, "uint4");
  sub_29A008E78(v64, "lowp");
  sub_29A008E78(v65, "mediump");
  sub_29A008E78(v66, "highp");
  sub_29A008E78(v67, "precision");
  sub_29A008E78(v68, "sampler");
  sub_29A008E78(v69, "common");
  sub_29A008E78(v70, "partition");
  sub_29A008E78(v71, "active");
  sub_29A008E78(v72, "asm");
  sub_29A008E78(v73, "struct");
  sub_29A008E78(v74, "class");
  sub_29A008E78(v75, "union");
  sub_29A008E78(v76, "enum");
  sub_29A008E78(v77, "typedef");
  sub_29A008E78(v78, "template");
  sub_29A008E78(v79, "this");
  sub_29A008E78(v80, "packed");
  sub_29A008E78(v81, "inline");
  sub_29A008E78(v82, "noinline");
  sub_29A008E78(v83, "volatile");
  sub_29A008E78(v84, "public");
  sub_29A008E78(v85, "static");
  sub_29A008E78(v86, "extern");
  sub_29A008E78(v87, "external");
  sub_29A008E78(v88, "interface");
  sub_29A008E78(v89, "long");
  sub_29A008E78(v90, "short");
  sub_29A008E78(v91, "half");
  sub_29A008E78(v92, "fixed");
  sub_29A008E78(v93, "unsigned");
  sub_29A008E78(v94, "superp");
  sub_29A008E78(v95, "input");
  sub_29A008E78(v96, "output");
  sub_29A008E78(v97, "half2");
  sub_29A008E78(v98, "half3");
  sub_29A008E78(v99, "half4");
  sub_29A008E78(v100, "sampler3DRect");
  sub_29A008E78(v101, "filter");
  sub_29A008E78(v102, "texture1d");
  sub_29A008E78(v103, "texture2d");
  sub_29A008E78(v104, "texture3d");
  sub_29A008E78(v105, "textureCube");
  sub_29A008E78(v106, "buffer");
  sub_29A008E78(v107, "sizeof");
  sub_29A008E78(v108, "cast");
  sub_29A008E78(v109, "namespace");
  sub_29A008E78(v110, "using");
  sub_29A008E78(v111, "row_major");
  sub_29A008E78(v112, "mix");
  sub_29A008E78(v113, "sampler");
  sub_29A9FDE68(__p, &v11, 102);
  sub_29B24359C(a1, __p);
  sub_29A019EE8(__p, __p[1]);
  v3 = 306;
  while (1)
  {
    if (*(&v11 + v3 * 8 - 1) < 0)
    {
      operator delete(__p[v3 + 1]);
    }

    v3 -= 3;
    if (!(v3 * 8))
    {
      v11 = 0u;
      v12 = 0u;
      v13 = 1065353216;
      sub_29A008E78(__p, "__");
      v8[0] = __p;
      v4 = sub_29B1D6E60(&v11, __p, &unk_29B769A2B, v8);
      MEMORY[0x29C2C1A60](v4 + 40, "_");
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "gl_");
      v8[0] = __p;
      v5 = sub_29B1D6E60(&v11, __p, &unk_29B769A2B, v8);
      MEMORY[0x29C2C1A60](v5 + 40, "gll");
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "webgl_");
      v8[0] = __p;
      v6 = sub_29B1D6E60(&v11, __p, &unk_29B769A2B, v8);
      MEMORY[0x29C2C1A60](v6 + 40, "webgll");
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "_webgl");
      v8[0] = __p;
      v7 = sub_29B1D6E60(&v11, __p, &unk_29B769A2B, v8);
      MEMORY[0x29C2C1A60](v7 + 40, "wwebgl");
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      sub_29B2435AC(a1, &v11);
      sub_29B246D5C();
      sub_29B25E3FC(v8, "half", "0.0", "0.0");
    }
  }
}

void sub_29B25DB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  if (STACK[0x208])
  {
    sub_29A014BEC(STACK[0x208]);
  }

  sub_29A89AD9C(&STACK[0x220]);
  sub_29B25DE9C(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29B25DE9C(uint64_t a1)
{
  *a1 = &unk_2A20CB1D8;
  sub_29A89AD9C(a1 + 96);
  sub_29A019EE8(a1 + 72, *(a1 + 80));
  sub_29A0EB570(a1 + 32);
  v3 = (a1 + 8);
  sub_29A0176E4(&v3);
  return a1;
}

void sub_29B25DF10(uint64_t a1@<X0>, __int128 *a2@<X1>, std::string *a3@<X8>)
{
  sub_29B2435EC(a1, a2);
  std::operator+<char>();
  v4 = std::string::append(&v5, "&");
  *a3 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_29B25DF8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B25DFD4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a4 + 8);
  }

  if (!v5)
  {
    return 0;
  }

  if ((*(*a1 + 168))(a1, a3))
  {
    return 0;
  }

  v10 = sub_29B24805C();
  if (sub_29A1B00DC(a3, v10) || a3 && !a3[4])
  {
    return 0;
  }

  v12 = sub_29B246A68();
  v13 = a5[2];
  *a5 = v12;
  a5[1] = 0;
  a5[2] = 0;
  if (v13)
  {
    sub_29A014BEC(v13);
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  if (v14)
  {
    sub_29A008E78(&__p, ",");
    sub_29B1F3590(a4, &__p, &v31);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v15 = v31;
    v16 = v32;
    if (v32 != v31)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        sub_29B1F3AB0((v15 + v17), &__p);
        v19 = v31 + v17;
        if (*(v31 + v17 + 23) < 0)
        {
          operator delete(*v19);
        }

        v20 = *&__p.__r_.__value_.__l.__data_;
        *(v19 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v19 = v20;
        ++v18;
        v15 = v31;
        v16 = v32;
        v17 += 24;
      }

      while (v18 < 0xAAAAAAAAAAAAAAABLL * ((v32 - v31) >> 3));
    }

    v21 = sub_29A22B430(v15, v16, a2);
    if (v21 == v32)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v27 = std::string::append(&v29, "' is not a valid enum value for input.");
      v28 = *&v27->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &__p);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v22 = v21;
    v23 = v31;
    v24 = operator new(0x28uLL);
    v24[1] = 0;
    v24[2] = 0;
    *v24 = &unk_2A20C8018;
    v24[3] = &unk_2A20C8068;
    *(v24 + 8) = -1431655765 * ((v22 - v23) >> 3);
    v25 = a5[2];
    a5[1] = (v24 + 3);
    a5[2] = v24;
    if (v25)
    {
      sub_29A014BEC(v25);
    }

    __p.__r_.__value_.__r.__words[0] = &v31;
    sub_29A012C90(&__p);
  }

  return 1;
}

void sub_29B25E29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      __p = &a22;
      sub_29A012C90(&__p);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void sub_29B25E334(uint64_t a1)
{
  v1 = sub_29B25DE9C(a1);

  operator delete(v1);
}

void sub_29B25E470(void *a1, char *__s, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB7B0;
  sub_29B25E574(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25E508(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB7B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25E574(int a1, uint64_t a2, char *__s, char *a4, char *a5)
{
  sub_29A008E78(&v12, __s);
  sub_29A008E78(&v11, a4);
  sub_29A008E78(&__p, a5);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B245220(a2, &v12, &v11, &__p, v8, v9);
}

void sub_29B25E628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25E6E8(void *a1, char *__s, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB7B0;
  sub_29B25E760(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25E760(int a1, uint64_t a2, char *__s, char *a4, char *a5)
{
  sub_29A008E78(&v12, __s);
  sub_29A008E78(&v11, a4);
  sub_29A008E78(&__p, a5);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B245220(a2, &v12, &v11, &__p, v8, v9);
}

void sub_29B25E814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25E880(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB800;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25E8EC(uint64_t a1, __int128 *a2)
{
  v4 = sub_29B1F31FC();
  v5 = sub_29B1F31FC();
  v6 = sub_29B1F31FC();
  v7 = sub_29B1F31FC();
  sub_29B245220(a1, a2, v4, v5, v6, v7);
}

void sub_29B25E978(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

void sub_29B25E9A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*a1 + 40))(a1))
  {
    (*(*a2 + 32))(&v13, a2);
    v5 = std::string::insert(&v13, 0, "{");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v14, "}");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&v7->__r_.__value_.__l + 2);
    *a3 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = sub_29B1F31FC();
    if (*(v9 + 23) < 0)
    {
      v11 = *v9;
      v12 = *(v9 + 1);

      sub_29A008D14(a3, v11, v12);
    }

    else
    {
      v10 = *v9;
      *(a3 + 16) = *(v9 + 2);
      *a3 = v10;
    }
  }
}

void sub_29B25EADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29B25EB10@<X0>(void *a1@<X1>, std::string *a2@<X8>)
{
  if (*a1 == a1[1])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(__p, "No values given to construct an array value");
    sub_29AAD6B14(exception, __p);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  std::operator+<char>();
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= 2)
  {
    v4 = 1;
    v5 = 24;
    do
    {
      std::operator+<char>();
      v6 = std::string::append(&v12, "f");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v14 = v6->__r_.__value_.__r.__words[2];
      *__p = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (v14 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if (v14 >= 0)
      {
        v9 = HIBYTE(v14);
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a2, v8, v9);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      ++v4;
      v5 += 24;
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  return std::string::append(a2, "}");
}

void sub_29B25ECC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t sub_29B25ED48(uint64_t a1, const void *a2)
{
  v2 = sub_29B1F9B00(a2);
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_29A0BE484(&v6, *v2, *(v2 + 1), (*(v2 + 1) - *v2) >> 2);
  v3 = v6;
  v4 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return (v4 - v3) >> 2;
}

void sub_29B25EE28(void *a1, char *__s, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB7B0;
  sub_29B25EEA0(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25EEA0(int a1, uint64_t a2, char *__s, char *a4, char *a5)
{
  sub_29A008E78(&v12, __s);
  sub_29A008E78(&v11, a4);
  sub_29A008E78(&__p, a5);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B245220(a2, &v12, &v11, &__p, v8, v9);
}

void sub_29B25EF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25EFC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25F030(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

uint64_t sub_29B25F058(uint64_t a1, const void *a2)
{
  v2 = sub_29B1F9378(a2);
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_29A0BE2C8(&v6, *v2, *(v2 + 1), (*(v2 + 1) - *v2) >> 2);
  v3 = v6;
  v4 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  return (v4 - v3) >> 2;
}

void sub_29B25F130(void *a1, char *__s, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB7B0;
  sub_29B25F1A8(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25F1A8(int a1, uint64_t a2, char *__s, char *a4, char *a5)
{
  sub_29A008E78(&v12, __s);
  sub_29A008E78(&v11, a4);
  sub_29A008E78(&__p, a5);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B245220(a2, &v12, &v11, &__p, v8, v9);
}

void sub_29B25F25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25F33C(void *a1, char *__s, char *a3, char *a4, __int128 *a5, __int128 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B25F44C(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B25F3E0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB9A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25F44C(int a1, uint64_t a2, char *__s, char *a4, char *a5, __int128 *a6, __int128 *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a5);
  sub_29B2456BC(a2, &v14, &v13, &__p, a6, a7);
}

void sub_29B25F50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25F5EC(void *a1, char *__s, char *a3, char *a4, __int128 *a5, __int128 *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B25F670(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B25F670(int a1, uint64_t a2, char *__s, char *a4, char *a5, __int128 *a6, __int128 *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a5);
  sub_29B2456BC(a2, &v14, &v13, &__p, a6, a7);
}

void sub_29B25F730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25F7F0(void *a1, char *__s, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B25F868(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25F868(int a1, uint64_t a2, char *__s, char *a4, char *a5)
{
  sub_29A008E78(&v12, __s);
  sub_29A008E78(&v11, a4);
  sub_29A008E78(&__p, a5);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B244EB4();
  sub_29B2456BC(a2, &v12, &v11, &__p, v8, v9);
}

void sub_29B25F928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25F994(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB9F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29B25FA04(uint64_t a1)
{
  v1 = sub_29B245DEC(a1);

  operator delete(v1);
}

void sub_29B25FAB0(void *a1, char *__s, __int128 *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB7B0;
  sub_29B25FB28(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B25FB28(int a1, uint64_t a2, char *__s, __int128 *a4, __int128 *a5)
{
  sub_29A008E78(&__p, __s);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B245220(a2, &__p, a4, a5, v8, v9);
}

void sub_29B25FBA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25FC4C(void *a1, char *__s, char *a3, __int128 *a4, __int128 *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B25FCCC(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B25FCCC(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, __int128 *a6, char *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v14, &v13, a5, a6, &__p);
}

void sub_29B25FD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B25FE64(void *a1, char *__s, char *a3, char *a4, char *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B25FEE4(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B25FEE4(int a1, uint64_t a2, char *__s, char *a4, char *a5, char *a6, char *a7)
{
  sub_29A008E78(&v16, __s);
  sub_29A008E78(&v15, a4);
  sub_29A008E78(&v14, a5);
  sub_29A008E78(&v13, a6);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v16, &v15, &v14, &v13, &__p);
}

void sub_29B25FFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 49) < 0)
  {
    operator delete(*(v33 - 72));
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2600CC(void *a1, char *__s, char *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260144(&v4, (a1 + 3), __s, a3, a4);
}

void sub_29B260144(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5)
{
  sub_29A008E78(&v11, __s);
  sub_29A008E78(&__p, a4);
  v8 = sub_29B1F31FC();
  v9 = sub_29B1F31FC();
  sub_29B244EB4();
  sub_29B2456BC(a2, &v11, &__p, a5, v8, v9);
}

void sub_29B2601E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2602A8(void *a1, char *__s, char *a3, __int128 *a4, __int128 *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260328(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B260328(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, __int128 *a6, char *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v14, &v13, a5, a6, &__p);
}

void sub_29B2603E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2604C0(void *a1, char *__s, char *a3, __int128 *a4, __int128 *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260540(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B260540(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, __int128 *a6, char *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v14, &v13, a5, a6, &__p);
}

void sub_29B260600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2606D8(void *a1, char *__s, char *a3, __int128 *a4, __int128 *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260758(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B260758(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, __int128 *a6, char *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v14, &v13, a5, a6, &__p);
}

void sub_29B260818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2608F0(void *a1, char *__s, char *a3, __int128 *a4, __int128 *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260970(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B260970(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, __int128 *a6, char *a7)
{
  sub_29A008E78(&v14, __s);
  sub_29A008E78(&v13, a4);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v14, &v13, a5, a6, &__p);
}

void sub_29B260A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B260B08(void *a1, char *__s, char *a3, __int128 *a4, char *a5, char *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB9A8;
  sub_29B260B88(&v6, (a1 + 3), __s, a3, a4, a5, a6);
}

void sub_29B260B88(int a1, uint64_t a2, char *__s, char *a4, __int128 *a5, char *a6, char *a7)
{
  sub_29A008E78(&v15, __s);
  sub_29A008E78(&v14, a4);
  sub_29A008E78(&v13, a6);
  sub_29A008E78(&__p, a7);
  sub_29B244EB4();
  sub_29B2456BC(a2, &v15, &v14, a5, &v13, &__p);
}

void sub_29B260C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

double sub_29B260CC8@<D0>(_OWORD *a1@<X8>)
{
  sub_29B260E84(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B260D04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  sub_29AE1D8C4(v8, "stdlib/genmsl/lib/mx_sampling.metal");
  (*(*v6 + 104))(v6, v8, a3, a4);
  v9 = v8;
  sub_29A012C90(&v9);
  return (*(*v6 + 64))(v6, a4);
}

void sub_29B260DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29B260DD4(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B260E24(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B260E84@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B260ED0(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B260ED0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CBB58;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B2143C8((a1 + 24));
  *(a1 + 24) = &unk_2A20CBA98;
  return a1;
}

void sub_29B260F78(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBB58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B260FE4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B261D44(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B261020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(&v33, off_2A14FE178[0]);
  v6 = sub_29B23EC38(a2, &v33);
  v7 = v6;
  if (v35 < 0)
  {
    operator delete(v33);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_29A008E78(&v33, "0");
    goto LABEL_9;
  }

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = v7[16];
  v9 = v7[17];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 32))(&v33);
  if (v9)
  {
    sub_29A014BEC(v9);
  }

LABEL_9:
  sub_29A008E78(__p, off_2A14FE550[0]);
  v10 = sub_29B22FF64(a4, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v11 = sub_29B22FF64(a4, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E0[0]);
  v12 = sub_29B247C28();
  sub_29A008E78(&v27, off_2A14FE1B8[0]);
  v13 = std::string::append(&v27, "_");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((v35 & 0x80u) == 0)
  {
    v15 = &v33;
  }

  else
  {
    v15 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v16 = v35;
  }

  else
  {
    v16 = v34;
  }

  v17 = std::string::append(&v28, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v30 = v17->__r_.__value_.__r.__words[2];
  *v29 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = sub_29B240AA4(v10, __p);
  v36 = 0;
  v37 = 0;
  sub_29B240028(v19, v12, v29, &v36, 0);
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v20 = sub_29B247C28();
  sub_29A008E78(&v27, off_2A14FE208[0]);
  v21 = std::string::append(&v27, "_");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if ((v35 & 0x80u) == 0)
  {
    v23 = &v33;
  }

  else
  {
    v23 = v33;
  }

  if ((v35 & 0x80u) == 0)
  {
    v24 = v35;
  }

  else
  {
    v24 = v34;
  }

  v25 = std::string::append(&v28, v23, v24);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v30 = v25->__r_.__value_.__r.__words[2];
  *v29 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  sub_29B211DA4(__p, v20, v29, v10, v11, 0);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v33);
  }
}

void sub_29B261434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v8 = **(a2 + 152);
  sub_29A008E78(&v66, off_2A14FE178[0]);
  v9 = sub_29B23EC38(a2, &v66);
  v10 = v9;
  if (v68 < 0)
  {
    operator delete(v66);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_29A008E78(&v66, "0");
    goto LABEL_9;
  }

  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11 = v10[16];
  v12 = v10[17];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 32))(&v66);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

LABEL_9:
  sub_29A008E78(&v62, off_2A14FE208[0]);
  v13 = std::string::append(&v62, "_");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((v68 & 0x80u) == 0)
  {
    v15 = &v66;
  }

  else
  {
    v15 = v66;
  }

  if ((v68 & 0x80u) == 0)
  {
    v16 = v68;
  }

  else
  {
    v16 = v67;
  }

  v17 = std::string::append(&v63, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v65 = v17->__r_.__value_.__r.__words[2];
  v64 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  v19 = strlen(off_2A14FE550[0]);
  v20 = v19;
  v21 = *(a4 + 23);
  if (v21 < 0)
  {
    if (v19 != *(a4 + 8))
    {
      goto LABEL_48;
    }

    if (v19 == -1)
    {
      sub_29A0F26CC();
    }

    v22 = *a4;
  }

  else
  {
    v22 = a4;
    if (v20 != v21)
    {
      goto LABEL_48;
    }
  }

  if (!memcmp(v22, off_2A14FE550[0], v20))
  {
    sub_29A008E78(&v63, off_2A14FE4E8[0]);
    v23 = sub_29B240C7C(a4, &v63.__r_.__value_.__l.__data_);
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 264))(&v63, v7, v23);
    v24 = sub_29B23FE4C(v23, &v64);
    v25 = *(v24 + 58);
    if ((v25 & 2) == 0)
    {
      *(v24 + 58) = v25 | 2;
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v63.__r_.__value_.__l.__data_, v24 + 13, &v58);
      v26 = std::string::append(&v58, " = ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v59.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v59.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      v28 = std::string::append(&v59, off_2A14FE1B8[0]);
      v29 = *&v28->__r_.__value_.__l.__data_;
      v60.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
      *&v60.__r_.__value_.__l.__data_ = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v60, "_");
      v31 = *&v30->__r_.__value_.__l.__data_;
      v61.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
      *&v61.__r_.__value_.__l.__data_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if ((v68 & 0x80u) == 0)
      {
        v32 = &v66;
      }

      else
      {
        v32 = v66;
      }

      if ((v68 & 0x80u) == 0)
      {
        v33 = v68;
      }

      else
      {
        v33 = v67;
      }

      v34 = std::string::append(&v61, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v62.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v62.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &v62, a4, 1);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    LOBYTE(v21) = *(a4 + 23);
  }

LABEL_48:
  v36 = strlen(off_2A14FE6F8);
  v37 = v36;
  if ((v21 & 0x80) != 0)
  {
    if (v36 != *(a4 + 8))
    {
      goto LABEL_84;
    }

    if (v36 == -1)
    {
      sub_29A0F26CC();
    }

    v38 = *a4;
  }

  else
  {
    v38 = a4;
    if (v37 != v21)
    {
      goto LABEL_84;
    }
  }

  if (memcmp(v38, off_2A14FE6F8, v37))
  {
    goto LABEL_84;
  }

  sub_29A008E78(&v63, "");
  v39 = *(v8 + 24);
  v40 = sub_29B246C60();
  if (sub_29A1B00DC(v39, v40))
  {
    v41 = ".r";
LABEL_59:
    MEMORY[0x29C2C1A60](&v63, v41);
    goto LABEL_60;
  }

  v42 = *(v8 + 24);
  v43 = sub_29B247ADC();
  if (sub_29A1B00DC(v42, v43))
  {
    v41 = ".rgb";
    goto LABEL_59;
  }

LABEL_60:
  sub_29A008E78(&v62, off_2A14FE4E8[0]);
  v44 = sub_29B240AA4(a4, &v62.__r_.__value_.__l.__data_);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  (*(*v7 + 264))(&v62, v7, v44);
  v45 = sub_29B23FE4C(v44, &v64);
  (*(*v7 + 48))(v7, a4);
  (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
  std::operator+<char>();
  v48 = v45[13];
  v47 = (v45 + 13);
  v46 = v48;
  v49 = v47[23];
  if (v49 >= 0)
  {
    v50 = v47;
  }

  else
  {
    v50 = v46;
  }

  if (v49 >= 0)
  {
    v51 = v47[23];
  }

  else
  {
    v51 = *(v47 + 1);
  }

  v52 = std::string::append(&v59, v50, v51);
  v53 = *&v52->__r_.__value_.__l.__data_;
  v60.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
  *&v60.__r_.__value_.__l.__data_ = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v54 = &v63;
  }

  else
  {
    v54 = v63.__r_.__value_.__r.__words[0];
  }

  if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v63.__r_.__value_.__l.__size_;
  }

  v56 = std::string::append(&v60, v54, size);
  v57 = *&v56->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  (*(*v7 + 72))(v7, &v61, a4);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  (*(*v7 + 56))(v7, a4, 1);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

LABEL_84:
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (v68 < 0)
  {
    operator delete(v66);
  }
}

void sub_29B261AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B261C94(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B261CE4(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B261D44@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B261D90(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B261D90(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CBC40;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CBBA8;
  return a1;
}

void sub_29B261E38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBC40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B261EA4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B263648(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B261EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(&v37, off_2A14FE180[0]);
  v6 = sub_29B23EC38(a2, &v37);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (!v6)
  {
    goto LABEL_50;
  }

  v8 = v6[16];
  v7 = v6[17];
  if (!v7)
  {
    if (v8)
    {
      v9 = 0;
      goto LABEL_10;
    }

LABEL_50:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v30 = std::string::append(&__p, "'. Don't know what property to bind");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v38 = v30->__r_.__value_.__r.__words[2];
    v37 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v37);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v7);
  if (!v8)
  {
    goto LABEL_50;
  }

  v8 = v6[16];
  v9 = v6[17];
  if (v9)
  {
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_11;
  }

LABEL_10:
  v10 = 1;
LABEL_11:
  (*(*v8 + 32))(&v37, v8);
  if ((v10 & 1) == 0)
  {
    sub_29A014BEC(v9);
  }

  v11 = **(a2 + 152);
  sub_29A008E78(&__p, off_2A14FE550[0]);
  v12 = sub_29B22FF64(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE6F8);
  v13 = sub_29B22FF64(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE4E0[0]);
  v14 = *(v11 + 24);
  sub_29A008E78(&v32, off_2A14FE1B0[0]);
  v15 = std::string::append(&v32, "_");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v38 >= 0)
  {
    v17 = &v37;
  }

  else
  {
    v17 = v37;
  }

  if (v38 >= 0)
  {
    v18 = HIBYTE(v38);
  }

  else
  {
    v18 = *(&v37 + 1);
  }

  v19 = std::string::append(&v33, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v35 = v19->__r_.__value_.__r.__words[2];
  *v34 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = sub_29B240AA4(v12, &__p.__r_.__value_.__l.__data_);
  v39 = 0;
  v40 = 0;
  sub_29B240028(v21, v14, v34, &v39, 0);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE4E8[0]);
  v22 = *(v11 + 24);
  sub_29A008E78(&v32, off_2A14FE1B0[0]);
  v23 = std::string::append(&v32, "_");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (v38 >= 0)
  {
    v25 = &v37;
  }

  else
  {
    v25 = v37;
  }

  if (v38 >= 0)
  {
    v26 = HIBYTE(v38);
  }

  else
  {
    v26 = *(&v37 + 1);
  }

  v27 = std::string::append(&v33, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v35 = v27->__r_.__value_.__r.__words[2];
  *v34 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  sub_29B211DA4(&__p.__r_.__value_.__l.__data_, v22, v34, v12, v13, 0);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_29B2622D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (a34 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v35)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v34);
LABEL_8:
  _Unwind_Resume(a1);
}

void sub_29B2623F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  sub_29A008E78(&v56, off_2A14FE180[0]);
  v8 = sub_29B23EC38(a2, &v56);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (!v8)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v47 = std::string::append(&v55, "'. Don't know what property to bind");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v57 = v47->__r_.__value_.__r.__words[2];
    v56 = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v56);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v9 = v8[16];
  v10 = v8[17];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v9 + 32))(&v56);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A008E78(&v53, off_2A14FE1B0[0]);
  v11 = std::string::append(&v53, "_");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v57 >= 0)
  {
    v13 = &v56;
  }

  else
  {
    v13 = v56;
  }

  if (v57 >= 0)
  {
    v14 = HIBYTE(v57);
  }

  else
  {
    v14 = *(&v56 + 1);
  }

  v15 = std::string::append(&v54, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  v17 = strlen(off_2A14FE550[0]);
  v18 = v17;
  v19 = *(a4 + 23);
  if (v19 < 0)
  {
    if (v17 != *(a4 + 8))
    {
      goto LABEL_48;
    }

    if (v17 == -1)
    {
      sub_29A0F26CC();
    }

    v20 = *a4;
  }

  else
  {
    v20 = a4;
    if (v18 != v19)
    {
      goto LABEL_48;
    }
  }

  if (!memcmp(v20, off_2A14FE550[0], v18))
  {
    sub_29A008E78(&v54, off_2A14FE4E8[0]);
    v21 = sub_29B240C7C(a4, &v54.__r_.__value_.__l.__data_);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 264))(&v54, v7, v21);
    v22 = sub_29B23FE4C(v21, &v55.__r_.__value_.__l.__data_);
    if ((v22[29] & 2) == 0)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v54.__r_.__value_.__l.__data_, v22 + 13, &v49);
      v23 = std::string::append(&v49, " = ");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      v25 = std::string::append(&v50, off_2A14FE1B0[0]);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      v27 = std::string::append(&v51, "_");
      v28 = *&v27->__r_.__value_.__l.__data_;
      v52.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v52.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      if (v57 >= 0)
      {
        v29 = &v56;
      }

      else
      {
        v29 = v56;
      }

      if (v57 >= 0)
      {
        v30 = HIBYTE(v57);
      }

      else
      {
        v30 = *(&v56 + 1);
      }

      v31 = std::string::append(&v52, v29, v30);
      v32 = *&v31->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      (*(*v7 + 80))(v7, &v53, a4, 1);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      *(v22 + 58) |= 2u;
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    LOBYTE(v19) = *(a4 + 23);
  }

LABEL_48:
  v33 = strlen(off_2A14FE6F8);
  v34 = v33;
  if ((v19 & 0x80) != 0)
  {
    if (v33 != *(a4 + 8))
    {
      goto LABEL_69;
    }

    if (v33 == -1)
    {
      sub_29A0F26CC();
    }

    v35 = *a4;
  }

  else
  {
    v35 = a4;
    if (v34 != v19)
    {
      goto LABEL_69;
    }
  }

  if (!memcmp(v35, off_2A14FE6F8, v34))
  {
    sub_29A008E78(&v54, off_2A14FE4E8[0]);
    v36 = sub_29B240AA4(a4, &v54.__r_.__value_.__l.__data_);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 264))(&v54, v7, v36);
    v37 = sub_29B23FE4C(v36, &v55.__r_.__value_.__l.__data_);
    (*(*v7 + 48))(v7, a4);
    (*(*v7 + 192))(v7, **(a2 + 152), 1, 0, a3, a4);
    std::operator+<char>();
    v40 = v37[13];
    v39 = (v37 + 13);
    v38 = v40;
    v41 = v39[23];
    if (v41 >= 0)
    {
      v42 = v39;
    }

    else
    {
      v42 = v38;
    }

    if (v41 >= 0)
    {
      v43 = v39[23];
    }

    else
    {
      v43 = *(v39 + 1);
    }

    v44 = std::string::append(&v52, v42, v43);
    v45 = *&v44->__r_.__value_.__l.__data_;
    v53.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v53.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    (*(*v7 + 72))(v7, &v53, a4);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    (*(*v7 + 56))(v7, a4, 1);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }
  }

LABEL_69:
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }
}

void sub_29B262A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 73) < 0)
  {
    operator delete(*(v49 - 96));
  }

  _Unwind_Resume(exception_object);
}

double sub_29B262C38@<D0>(_OWORD *a1@<X8>)
{
  sub_29B2637A8(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B262C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(&v29, off_2A14FE180[0]);
  v6 = sub_29B23EC38(a2, &v29);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (!v6)
  {
    goto LABEL_34;
  }

  v8 = v6[16];
  v7 = v6[17];
  if (!v7)
  {
    if (v8)
    {
      v9 = 0;
      goto LABEL_10;
    }

LABEL_34:
    exception = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v22 = std::string::append(&__p, "'. Don't know what property to bind");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v30 = v22->__r_.__value_.__r.__words[2];
    v29 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(exception, &v29);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_29A014BEC(v7);
  if (!v8)
  {
    goto LABEL_34;
  }

  v8 = v6[16];
  v9 = v6[17];
  if (v9)
  {
    v10 = 0;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_11;
  }

LABEL_10:
  v10 = 1;
LABEL_11:
  (*(*v8 + 32))(&v29, v8);
  if ((v10 & 1) == 0)
  {
    sub_29A014BEC(v9);
  }

  sub_29A008E78(&__p, off_2A14FE6F8);
  v11 = sub_29B22FF64(a4, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, off_2A14FE4F0[0]);
  v12 = *(**(a2 + 152) + 24);
  sub_29A008E78(&v24, off_2A14FE288[0]);
  v13 = std::string::append(&v24, "_");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v30 >= 0)
  {
    v15 = &v29;
  }

  else
  {
    v15 = v29;
  }

  if (v30 >= 0)
  {
    v16 = HIBYTE(v30);
  }

  else
  {
    v16 = *(&v29 + 1);
  }

  v17 = std::string::append(&v25, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v27 = v17->__r_.__value_.__r.__words[2];
  *v26 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = sub_29B2408C8(v11, &__p.__r_.__value_.__l.__data_);
  v31 = 0;
  v32 = 0;
  v20 = sub_29B240028(v19, v12, v26, &v31, 0);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::operator=((v20 + 7), (v6 + 7));
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_29B262F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  if (a34 < 0)
  {
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v35);
  goto LABEL_8;
}

void sub_29B26306C(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    sub_29A008E78(&v30, off_2A14FE180[0]);
    v12 = sub_29B23EC38(a2, &v30);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (!v12)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v24 = std::string::append(&__p, "'. Don't know what property to bind");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v31 = v24->__r_.__value_.__r.__words[2];
      v30 = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v30);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v13 = v12[16];
    v14 = v12[17];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v13 + 32))(&v30);
    if (v14)
    {
      sub_29A014BEC(v14);
    }

    (*(*v11 + 48))(v11, a4);
    (*(*v11 + 192))(v11, **(a2 + 152), 1, 0, a3, a4);
    sub_29A008E78(&v26, off_2A14FE288[0]);
    v15 = std::string::insert(&v26, 0, " = ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v27, "_");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (v31 >= 0)
    {
      v19 = &v30;
    }

    else
    {
      v19 = v30;
    }

    if (v31 >= 0)
    {
      v20 = HIBYTE(v31);
    }

    else
    {
      v20 = *(&v30 + 1);
    }

    v21 = std::string::append(&v28, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    (*(*v11 + 72))(v11, &__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    (*(*v11 + 56))(v11, a4, 1);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }
  }
}

void sub_29B2633E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  if (a35 < 0)
  {
    operator delete(__p);
    if ((v36 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v35);
  goto LABEL_8;
}

uint64_t sub_29B2634E0(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B263530(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B263598(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B2635E8(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B263648@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B263694(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B263694(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CBDC0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CBC90;
  return a1;
}

void sub_29B26373C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBDC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B2637A8@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B2637F4(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B2637F4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CBE10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B23F978((a1 + 24));
  *(a1 + 24) = &unk_2A20CBD28;
  return a1;
}

void sub_29B26389C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBE10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double sub_29B263908@<D0>(_OWORD *a1@<X8>)
{
  sub_29B2648DC(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B263948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v7 = -1;
  do
  {
    v31 = v7;
    v8 = v7;
    for (i = -1; i != 2; ++i)
    {
      std::operator+<char>();
      v10 = std::string::append(&v34, " * ");
      v11 = *&v10->__r_.__value_.__l.__data_;
      v35.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v35.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = *(a3 + 23);
      if (v12 >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      if (v12 >= 0)
      {
        v14 = *(a3 + 23);
      }

      else
      {
        v14 = *(a3 + 8);
      }

      v15 = std::string::append(&v35, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v36.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v36.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v36, "(");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v33, i);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v33;
      }

      else
      {
        v19 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v21 = std::string::append(&v37, v19, size);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v38.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(&v38, ",");
      v24 = *&v23->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v32, v8);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &v32;
      }

      else
      {
        v25 = v32.__r_.__value_.__r.__words[0];
      }

      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v32.__r_.__value_.__l.__size_;
      }

      v27 = std::string::append(&v39, v25, v26);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      v29 = std::string::append(&v40, ")");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v42 = v29->__r_.__value_.__r.__words[2];
      v41 = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      sub_29A091654(a5, &v41);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v7 = v31 + 1;
  }

  while (v31 != 1);
}

void sub_29B263C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29B263CF8(uint64_t a1, void *a2)
{
  v3 = sub_29B246C60();
  result = sub_29A1B00DC(a2, v3);
  if (result)
  {
    return a2[4] == 1;
  }

  return result;
}

uint64_t sub_29B263D38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = strlen(off_2A14FE6F8);
  v7 = result;
  v8 = *(a4 + 23);
  if (v8 < 0)
  {
    if (result != *(a4 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a4;
  }

  else
  {
    result = a4;
    if (v7 != v8)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v7);
  if (!result)
  {
    v9 = *a3;
    sub_29AE1D8C4(v10, "stdlib/genglsl/lib/mx_sampling.glsl");
    (*(*v9 + 104))(v9, v10, a3, a4);
    v11 = v10;
    sub_29A012C90(&v11);
    return (*(*v9 + 64))(v9, a4);
  }

  return result;
}

void sub_29B263E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

void sub_29B263E68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a4 + 8))
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    sub_29A008E78(&v59, "in");
    v13 = sub_29B23EC38(a2, &v59);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    sub_29A008E78(&v59, "scale");
    v14 = sub_29B23EC38(a2, &v59);
    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    if (!v13 || !v14)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::operator+<char>();
      v49 = std::string::append(&v58, "' is not a valid heighttonormal node");
      v50 = *&v49->__r_.__value_.__l.__data_;
      v60 = v49->__r_.__value_.__r.__words[2];
      v59 = v50;
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      sub_29AAD6B14(exception, &v59);
      *exception = &unk_2A20C8F68;
      __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
    }

    v59 = 0uLL;
    v60 = 0;
    sub_29A008E78(&v58, "mx_compute_sample_size_uv");
    sub_29B2218C0(a1, a2, 9u, 3u, &v58, a3, a4, &v59, 1.0, 0.0);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v15 = **(a2 + 152);
    if (*(v15 + 127) >= 0)
    {
      v16 = *(v15 + 127);
    }

    else
    {
      v16 = *(v15 + 112);
    }

    sub_29A022DE0(&v58, v16 + 8);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v58;
    }

    else
    {
      v17 = v58.__r_.__value_.__r.__words[0];
    }

    if (v16)
    {
      if (*(v15 + 127) >= 0)
      {
        v18 = (v15 + 104);
      }

      else
      {
        v18 = *(v15 + 104);
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, "_samples");
    std::operator+<char>();
    v19 = std::string::append(&v53, "[");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v54.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v54.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v52, 9u);
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v52;
    }

    else
    {
      v21 = v52.__r_.__value_.__r.__words[0];
    }

    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v52.__r_.__value_.__l.__size_;
    }

    v23 = std::string::append(&v54, v21, size);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v55.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
    *&v55.__r_.__value_.__l.__data_ = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v25 = std::string::append(&v55, "]");
    v26 = *&v25->__r_.__value_.__l.__data_;
    v57 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    (*(*v12 + 80))(v12, __p, a4, 1);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    v51 = v14;
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    v27 = 0;
    for (i = 0; i != 9; ++i)
    {
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = v58.__r_.__value_.__l.__size_;
      }

      sub_29A022DE0(&v53, v29 + 1);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v53;
      }

      else
      {
        v30 = v53.__r_.__value_.__r.__words[0];
      }

      if (v29)
      {
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v58;
        }

        else
        {
          v31 = v58.__r_.__value_.__r.__words[0];
        }

        memmove(v30, v31, v29);
      }

      *(&v30->__r_.__value_.__l.__data_ + v29) = 91;
      std::to_string(&v52, i);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v52;
      }

      else
      {
        v32 = v52.__r_.__value_.__r.__words[0];
      }

      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = v52.__r_.__value_.__l.__size_;
      }

      v34 = std::string::append(&v53, v32, v33);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v54.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
      *&v54.__r_.__value_.__l.__data_ = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      v36 = std::string::append(&v54, "] = ");
      v37 = *&v36->__r_.__value_.__l.__data_;
      v55.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
      *&v55.__r_.__value_.__l.__data_ = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      v38 = v59 + v27;
      v39 = *(v59 + v27 + 23);
      if (v39 >= 0)
      {
        v40 = (v59 + v27);
      }

      else
      {
        v40 = *v38;
      }

      if (v39 >= 0)
      {
        v41 = *(v38 + 23);
      }

      else
      {
        v41 = *(v38 + 8);
      }

      v42 = std::string::append(&v55, v40, v41);
      v43 = *&v42->__r_.__value_.__l.__data_;
      v57 = v42->__r_.__value_.__r.__words[2];
      *__p = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, __p, a4, 1);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      v27 += 24;
    }

    (*(*v12 + 48))(v12, a4);
    (*(*v12 + 192))(v12, v15, 1, 0, a3, a4);
    sub_29A008E78(&v55, "mx_normal_from_samples_sobel");
    v44 = std::string::insert(&v55, 0, " = ");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v57 = v44->__r_.__value_.__r.__words[2];
    *__p = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    (*(*v12 + 72))(v12, __p, a4);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    std::operator+<char>();
    v46 = std::string::append(&v55, ", ");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v57 = v46->__r_.__value_.__r.__words[2];
    *__p = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    (*(*v12 + 72))(v12, __p, a4);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    (*(*v12 + 184))(v12, v51, a3, a4);
    sub_29A008E78(__p, ")");
    (*(*v12 + 72))(v12, __p, a4);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v12 + 56))(v12, a4, 1);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    v58.__r_.__value_.__r.__words[0] = &v59;
    sub_29A012C90(&v58);
  }
}

void sub_29B26463C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  if (*(v46 - 113) < 0)
  {
    operator delete(*(v46 - 136));
    if ((v45 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v45)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v44);
  goto LABEL_8;
}

uint64_t sub_29B26482C(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B26487C(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29B2648DC@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B264928(v2);
  *a1 = v2 + 24;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B264928(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20CBF10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  sub_29B22141C((a1 + 24));
  *(a1 + 24) = &unk_2A20CBE60;
  return a1;
}

void sub_29B2649D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBF10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B264A3C(uint64_t a1)
{
  v2 = sub_29B23F978(a1);
  v2[9] = 0;
  *(v2 + 7) = 0u;
  *(v2 + 5) = 0u;
  *v2 = &unk_2A20CBF60;
  sub_29A008E78(__p, off_2A14FE500[0]);
  v3 = sub_29B1F31FC();
  sub_29B242094((a1 + 80), __p, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t sub_29B264AFC(uint64_t a1)
{
  *a1 = &unk_2A20C99C0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_29B264B84@<D0>(_OWORD *a1@<X8>)
{
  sub_29B265640(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B264BC4(uint64_t a1, std::string *a2, _DWORD *a3)
{
  sub_29B21D7C0(a1, a2, a3);
  sub_29B1EE8F4(a2, &v15);
  sub_29B1EA6E8(v15, &v13);
  v5 = v13;
  for (i = v14; v5 != i; v5 += 16)
  {
    v8 = *v5;
    v7 = *(v5 + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v8 + 8))(v8);
    v10 = sub_29B246738(v9);
    v11 = 0;
    v12 = 0;
    sub_29B240028(a1 + 80, v10, v8 + 6, &v11, 0);
    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }
  }

  v17 = &v13;
  sub_29A0176E4(&v17);
  if (v16)
  {
    sub_29A014BEC(v16);
  }
}

void sub_29B264CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16)
{
  if (a15)
  {
    sub_29A014BEC(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B264D14(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1[5];
  v8 = *(v7 + 264);
  v9 = *(v7 + 272);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(**(v10 + 176) + 56))(*(v10 + 176), v10, a3, a4);
  }

  sub_29A008E78(__p, off_2A14FE6F8);
  v11 = sub_29B22FF64(a4, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE500[0]);
  v12 = sub_29B2408C8(v11, __p);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = a1[21];
  if (a1[22] != v13)
  {
    v14 = 0;
    do
    {
      sub_29A014C58(&v16, *(v13 + 8 * v14));
      sub_29B240398(v12, &v16);
      if (v17)
      {
        sub_29A014BEC(v17);
      }

      ++v14;
      v13 = a1[21];
    }

    while (v14 < (a1[22] - v13) >> 3);
  }

  return (*(**a3 + 256))(*a3, a3, v11);
}

void sub_29B264E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B264EB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != *(a4 + 8))
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    (*(**a3 + 120))(*a3, *(a1 + 40), a3, a4);
    __p = 0;
    v16 = 0;
    v17 = 0;
    (*(*v12 + 216))(v12, a2, &__p);
    v13 = __p;
    v14 = v16;
    if (__p == v16)
    {
      sub_29B265040(a1, 0, a3, a4);
    }

    else
    {
      do
      {
        sub_29B265040(a1, *v13++, a3, a4);
      }

      while (v13 != v14);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }
}

void sub_29B265020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B265040(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  if (a2)
  {
    v9 = *(**(*(a1 + 40) + 88) + 24);
    std::operator+<char>();
    v10 = sub_29B217B64(a2, v9);
    v11 = *(v10 + 23);
    if (v11 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    if (v11 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 1);
    }

    v14 = std::string::append(&v23, v12, v13);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v24, "(LightData light, float3 position, out lightshader result)");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v26 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    (*(*v8 + 80))(v8, __p, a4, 0);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = v23.__r_.__value_.__r.__words[0];
LABEL_18:
      operator delete(v18);
    }
  }

  else
  {
    std::operator+<char>();
    v19 = std::string::append(&v24, "(LightData light, float3 position, out lightshader result)");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v26 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    (*(*v8 + 80))(v8, __p, a4, 0);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      v18 = v24.__r_.__value_.__r.__words[0];
      goto LABEL_18;
    }
  }

  (*(*v8 + 160))(v8, *(a1 + 40), a3, a4, 1);
  (*(*v8 + 144))(v8, *(a1 + 40), a3, a4, 1);
  if (a2)
  {
    __p[0] = a2;
    sub_29A0A71C8((a3 + 45), __p);
    (*(*v8 + 144))(v8, *(a1 + 40), a3, a4, 65540);
    v21 = a3[46];
    if (v21 != a3[45])
    {
      a3[46] = v21 - 8;
    }
  }

  else
  {
    (*(*v8 + 144))(v8, *(a1 + 40), a3, a4, 65540);
  }

  return (*(*v8 + 168))(v8, *(a1 + 40), a3, a4);
}

void sub_29B265344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2653BC(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    if (*(a1 + 79) >= 0)
    {
      v12 = *(a1 + 79);
    }

    else
    {
      v12 = *(a1 + 64);
    }

    v13 = __p;
    sub_29A022DE0(__p, v12 + 25);
    if (v19 < 0)
    {
      v13 = __p[0];
    }

    if (v12)
    {
      v16 = *(a1 + 56);
      v15 = (a1 + 56);
      v14 = v16;
      if (v15[23] >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      memmove(v13, v17, v12);
    }

    strcpy(v13 + v12, "(light, position, result)");
    (*(*v11 + 80))(v11, __p, a4, 1);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B265518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B26553C(uint64_t a1)
{
  v1 = sub_29B265564(a1);

  operator delete(v1);
}

uint64_t sub_29B265564(uint64_t a1)
{
  *a1 = &unk_2A20CBF60;
  v2 = *(a1 + 168);
  if (v2)
  {
    *(a1 + 176) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 128);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *a1 = &unk_2A20C99C0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29B265640@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xD8uLL);
  result = sub_29B26568C(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B26568C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CBFF8;
  sub_29B264A3C((a1 + 3));
  return a1;
}

void sub_29B265708(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CBFF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B265774(void *a1)
{
  v2 = sub_29B23F978(a1);
  *(v2 + 10) = 4;
  v3 = (v2 + 5);
  *v2 = &unk_2A20CC048;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 20) = 1065353216;
  *(v2 + 11) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 30) = 1065353216;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 40) = 1065353216;
  v4 = sub_29B248254();
  v7 = sub_29B2470A0();
  sub_29A008E78(__p, "light.direction");
  sub_29B20FFF8(v3, v4, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_29B248254();
  v7 = sub_29B2470A0();
  sub_29A008E78(__p, "-L");
  sub_29B20FFF8(v3, v5, &v7);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B265880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29B210054(v16);
  *v15 = &unk_2A20CAFC0;
  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(a1);
}

double sub_29B2658E4@<D0>(_OWORD *a1@<X8>)
{
  sub_29B266430(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

uint64_t sub_29B265920(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE6F8);
  v6 = sub_29B22FF64(a4, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE500[0]);
  v7 = sub_29B2408C8(v6, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_29B246C60();
  sub_29A008E78(__p, "intensity");
  v9 = operator new(0x28uLL);
  v9->__shared_owners_ = 0;
  v9->__shared_weak_owners_ = 0;
  v9->__vftable = &unk_2A20C8128;
  v9[1].__vftable = &unk_2A20C8178;
  LODWORD(v9[1].__shared_owners_) = 1065353216;
  v19 = v9 + 1;
  v20 = v9;
  sub_29B240028(v7, v8, __p, &v19, 0);
  if (v20)
  {
    sub_29A014BEC(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = sub_29B246C60();
  sub_29A008E78(__p, "exposure");
  v11 = operator new(0x28uLL);
  v11->__shared_owners_ = 0;
  v11->__shared_weak_owners_ = 0;
  v11->__vftable = &unk_2A20C8128;
  v11[1].__vftable = &unk_2A20C8178;
  LODWORD(v11[1].__shared_owners_) = 0;
  v17 = v11 + 1;
  v18 = v11;
  sub_29B240028(v7, v10, __p, &v17, 0);
  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v12 = sub_29B2470A0();
  sub_29A008E78(__p, "direction");
  v13 = operator new(0x30uLL);
  v13->__shared_owners_ = 0;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A20C83D0;
  v13[1].__vftable = &unk_2A20C8420;
  v13[1].__shared_owners_ = 0x3F80000000000000;
  LODWORD(v13[1].__shared_weak_owners_) = 0;
  v15 = v13 + 1;
  v16 = v13;
  sub_29B240028(v7, v12, __p, &v15, 0);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(**a3 + 256))(*a3, a3, v6);
}

void sub_29B265BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B265C38(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v8 = strlen(off_2A14FE6F8);
  v9 = v8;
  v10 = *(a4 + 23);
  if (v10 < 0)
  {
    if (v8 != a4[1])
    {
      return;
    }

    if (v8 == -1)
    {
      sub_29A0F26CC();
    }

    v11 = *a4;
  }

  else
  {
    v11 = a4;
    if (v9 != v10)
    {
      return;
    }
  }

  if (!memcmp(v11, off_2A14FE6F8, v9))
  {
    v12 = *a3;
    sub_29A008E78(&__p, "float3 L = light.position - position;\nfloat distance = length(L);\nL /= distance;\nresult.direction = L;\n");
    v25[0] = 0;
    v25[1] = 0;
    v27 = 0;
    v26 = 0;
    (*(*v12 + 96))(v12, &__p, v25, a3, a4);
    v29 = v25;
    sub_29A012C90(&v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(*v12 + 64))(v12, a4);
    sub_29A008E78(v25, "edf");
    v13 = sub_29B23EC38(a2, v25);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    v14 = sub_29B23C5B0(v13);
    if (v14)
    {
      v15 = v14;
      v25[0] = (a1 + 40);
      sub_29A0A71C8((a3 + 45), v25);
      (*(*v12 + 128))(v12, v15, a3, a4);
      v16 = a3[46];
      if (v16 != a3[45])
      {
        a3[46] = v16 - 8;
      }

      (*(*v12 + 64))(v12, a4);
      sub_29A008E78(v25, "Apply quadratic falloff and adjust intensity");
      (*(*v12 + 88))(v12, v25, a4);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      std::operator+<char>();
      v17 = std::string::append(&__p, " / (distance * distance)");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v26 = v17->__r_.__value_.__r.__words[2];
      *v25 = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      (*(*v12 + 80))(v12, v25, a4, 1);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29A008E78(v25, "intensity");
      v19 = sub_29B23EC38(a2, v25);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      sub_29A008E78(v25, "exposure");
      v20 = sub_29B23EC38(a2, v25);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      (*(*v12 + 48))(v12, a4);
      sub_29A008E78(v25, "result.intensity *= ");
      (*(*v12 + 72))(v12, v25, a4);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }

      (*(*v12 + 184))(v12, v19, a3, a4);
      (*(*v12 + 56))(v12, a4, 1);
      if (v20[30])
      {
        goto LABEL_28;
      }

      v21 = v20[16];
      v22 = v20[17];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v21)
        {
          sub_29A014BEC(v22);
          return;
        }

        v21 = v20[16];
        v23 = v20[17];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        if (!v21)
        {
          return;
        }

        v23 = 0;
      }

      v24 = *sub_29B1F487C(v21);
      if (v23)
      {
        sub_29A014BEC(v23);
      }

      if (v22)
      {
        sub_29A014BEC(v22);
      }

      if (v24 != 0.0)
      {
LABEL_28:
        (*(*v12 + 48))(v12, a4);
        sub_29A008E78(v25, "result.intensity *= pow(2, ");
        (*(*v12 + 72))(v12, v25, a4);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        (*(*v12 + 184))(v12, v20, a3, a4);
        sub_29A008E78(v25, ")");
        (*(*v12 + 72))(v12, v25, a4);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[0]);
        }

        (*(*v12 + 56))(v12, a4, 1);
      }
    }

    else
    {
      sub_29A008E78(v25, "result.intensity = float3(0.0)");
      (*(*v12 + 80))(v12, v25, a4, 1);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }
  }
}

void sub_29B266284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if ((v24 & 1) == 0)
  {
    sub_29A014BEC(v23);
  }

  if (v22)
  {
    sub_29A014BEC(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B266320(uint64_t a1)
{
  *a1 = &unk_2A20CC048;
  sub_29A0EB570(a1 + 128);
  sub_29AE14178(a1 + 88);
  sub_29AE1D50C(a1 + 48);
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B2663A0(void **a1)
{
  *a1 = &unk_2A20CC048;
  sub_29A0EB570((a1 + 16));
  sub_29AE14178((a1 + 11));
  sub_29AE1D50C((a1 + 6));
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }

  operator delete(a1);
}

void *sub_29B266430@<X0>(void *a1@<X8>)
{
  v2 = operator new(0xC0uLL);
  result = sub_29B26647C(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B26647C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CC0E0;
  sub_29B265774(a1 + 3);
  return a1;
}

void sub_29B2664F8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CC0E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B266564(void *a1)
{
  *sub_29B23F978(a1) = &unk_2A20CC130;
  sub_29A008E78(__p, "void sampleLightSource(LightData light, float3 position, out lightshader result)");
  a1[4] = sub_29A12A708(&v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B2665E0(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A20CAFC0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_29B266618@<D0>(_OWORD *a1@<X8>)
{
  sub_29B266C70(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B266654(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    sub_29A008E78(v29, "void sampleLightSource(LightData light, float3 position, out lightshader result)");
    (*(*v11 + 80))(v11, v29, a4, 0);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    (*(*v11 + 160))(v11, a2, a3, a4, 1);
    sub_29A008E78(v29, "result.intensity = float3(0.0)");
    (*(*v11 + 80))(v11, v29, a4, 1);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    sub_29A008E78(v29, "result.direction = float3(0.0)");
    (*(*v11 + 80))(v11, v29, a4, 1);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    sub_29A008E78(v29, off_2A14FE540[0]);
    sub_29B211E68(a3, v29, &v27);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    if (v27)
    {
      sub_29A008E78(v29, "if ");
      v12 = (v27 + 40);
      while (1)
      {
        v12 = *v12;
        if (!v12)
        {
          break;
        }

        if ((v30 & 0x80u) == 0)
        {
          v13 = v30;
        }

        else
        {
          v13 = v29[1];
        }

        sub_29A022DE0(&v23, v13 + 15);
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v23;
        }

        else
        {
          v14 = v23.__r_.__value_.__r.__words[0];
        }

        if (v13)
        {
          if ((v30 & 0x80u) == 0)
          {
            v15 = v29;
          }

          else
          {
            v15 = v29[0];
          }

          memmove(v14, v15, v13);
        }

        strcpy(v14 + v13, "(light.type == ");
        std::to_string(&v22, *(v12 + 4));
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &v22;
        }

        else
        {
          v16 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22.__r_.__value_.__l.__size_;
        }

        v18 = std::string::append(&v23, v16, size);
        v19 = *&v18->__r_.__value_.__l.__data_;
        v24.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
        *&v24.__r_.__value_.__l.__data_ = v19;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v20 = std::string::append(&v24, ")");
        v21 = *&v20->__r_.__value_.__l.__data_;
        v26 = v20->__r_.__value_.__r.__words[2];
        *__p = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        (*(*v11 + 80))(v11, __p, a4, 0);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        (*(*v11 + 32))(v11, a4, 1);
        (*(*v11 + 128))(v11, v12[3], a3, a4);
        (*(*v11 + 40))(v11, a4, 0, 1);
        MEMORY[0x29C2C1A60](v29, "else if ");
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }
    }

    (*(*v11 + 168))(v11, a2, a3, a4);
    if (v28)
    {
      sub_29A014BEC(v28);
    }
  }
}

void sub_29B266B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    sub_29A014BEC(a38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B266BC0(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B266C10(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void *sub_29B266C70@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x40uLL);
  result = sub_29B266CBC(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B266CBC(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CC1C8;
  sub_29B266564(a1 + 3);
  return a1;
}

void sub_29B266D38(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CC1C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29B266DA4(uint64_t a1)
{
  v2 = sub_29B23F978(a1);
  *(v2 + 108) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *v2 = &unk_2A20CC218;
  sub_29A008E78(__p, off_2A14FE500[0]);
  v3 = sub_29B1F31FC();
  sub_29B242094((a1 + 128), __p, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

uint64_t sub_29B266E64(uint64_t a1)
{
  *a1 = &unk_2A20CA8D0;
  v3 = (a1 + 96);
  sub_29A012C90(&v3);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

double sub_29B266F08@<D0>(_OWORD *a1@<X8>)
{
  sub_29B267650(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B266F48(uint64_t a1, const std::string *a2, uint64_t a3)
{
  sub_29B22C67C(a1, a2, a3);
  if (*(a1 + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_29A008E78(&v19, "Light shaders doesn't support inlined implementations'");
    sub_29AAD6B14(exception, &v19);
    *exception = &unk_2A20C8F68;
    __cxa_throw(exception, &unk_2A20C8EF8, sub_29B20BED4);
  }

  v5 = sub_29B1F31FC();
  if ((sub_29B22CFC0(a2, v5) & 1) == 0)
  {
    v13 = __cxa_allocate_exception(0x20uLL);
    std::operator+<char>();
    v14 = std::string::append(&v18, "' is not an Implementation element");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v20 = v14->__r_.__value_.__r.__words[2];
    v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_29AAD6B14(v13, &v19);
    *v13 = &unk_2A20C8F68;
    __cxa_throw(v13, &unk_2A20C8EF8, sub_29B20BED4);
  }

  sub_29B1C63C4(a2, &v18);
  sub_29B1EA6E8(v18.__r_.__value_.__l.__data_, &v19);
  v7 = *(&v19 + 1);
  for (i = v19; i != v7; i += 16)
  {
    v9 = *i;
    v8 = *(i + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (*(*v9 + 8))(v9);
    v11 = sub_29B246738(v10);
    sub_29B1C8518(v9, &v16);
    sub_29B240028(a1 + 128, v11, v9 + 6, &v16, 0);
    if (v17)
    {
      sub_29A014BEC(v17);
    }

    if (v8)
    {
      sub_29A014BEC(v8);
    }
  }

  v21 = &v19;
  sub_29A0176E4(&v21);
  if (v18.__r_.__value_.__l.__size_)
  {
    sub_29A014BEC(v18.__r_.__value_.__l.__size_);
  }
}

void sub_29B267188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v25 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v24);
  goto LABEL_8;
}

uint64_t sub_29B26724C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE6F8);
  v7 = sub_29B22FF64(a4, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE500[0]);
  v8 = sub_29B2408C8(v7, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *(a1 + 216);
  if (*(a1 + 224) != v9)
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + 8 * v10);
      v12 = *(v11 + 24);
      v14 = 0;
      v15 = 0;
      sub_29B240028(v8, v12, (v11 + 32), &v14, 0);
      if (v15)
      {
        sub_29A014BEC(v15);
      }

      ++v10;
      v9 = *(a1 + 216);
    }

    while (v10 < (*(a1 + 224) - v9) >> 3);
  }

  return (*(**a3 + 256))(*a3, a3, v7);
}

void sub_29B26737C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B2673B0(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4)
{
  v7 = strlen(off_2A14FE6F8);
  v8 = v7;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (v7 != a4[1])
    {
      return;
    }

    if (v7 == -1)
    {
      sub_29A0F26CC();
    }

    v10 = *a4;
  }

  else
  {
    v10 = a4;
    if (v8 != v9)
    {
      return;
    }
  }

  if (!memcmp(v10, off_2A14FE6F8, v8))
  {
    v11 = *a3;
    if (*(a1 + 71) >= 0)
    {
      v12 = *(a1 + 71);
    }

    else
    {
      v12 = *(a1 + 56);
    }

    v13 = __p;
    sub_29A022DE0(__p, v12 + 25);
    if (v19 < 0)
    {
      v13 = __p[0];
    }

    if (v12)
    {
      v16 = *(a1 + 48);
      v15 = (a1 + 48);
      v14 = v16;
      if (v15[23] >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      memmove(v13, v17, v12);
    }

    strcpy(v13 + v12, "(light, position, result)");
    (*(*v11 + 80))(v11, __p, a4, 1);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29B26750C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B267530(uint64_t a1)
{
  v1 = sub_29B267558(a1);

  operator delete(v1);
}

uint64_t sub_29B267558(uint64_t a1)
{
  *a1 = &unk_2A20CC218;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  sub_29AD97000(a1 + 176);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *a1 = &unk_2A20CA8D0;
  v4 = (a1 + 96);
  sub_29A012C90(&v4);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_29B267650@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x108uLL);
  result = sub_29B26769C(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29B26769C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CC2B0;
  sub_29B266DA4((a1 + 3));
  return a1;
}

void sub_29B267718(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CC2B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29B267784(void *a1)
{
  *sub_29B23F978(a1) = &unk_2A20CC300;
  sub_29A008E78(__p, "int numActiveLightSources()");
  a1[4] = sub_29A12A708(&v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29B267800(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A20CAFC0;
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

double sub_29B267838@<D0>(_OWORD *a1@<X8>)
{
  sub_29B267E48(v3);
  result = v3[0];
  *a1 = *v3;
  return result;
}

void sub_29B267874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, off_2A14FE6F8);
  v5 = sub_29B22FF64(a4, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, off_2A14FE4F0[0]);
  v6 = sub_29B246A68();
  sub_29A008E78(v11, off_2A14FE298[0]);
  v7 = sub_29B2408C8(v5, __p);
  v15 = 0;
  v16 = 0;
  v8 = sub_29B240028(v7, v6, v11, &v15, 0);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = operator new(0x28uLL);
  v9->__shared_owners_ = 0;
  v9->__vftable = &unk_2A20C8018;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = &unk_2A20C8068;
  LODWORD(v9[1].__shared_owners_) = 0;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = v8[17];
  v8[16] = v9 + 1;
  v8[17] = v9;
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  sub_29A014BEC(v9);
}

void sub_29B2679C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  v22 = *(v20 - 24);
  if (v22)
  {
    sub_29A014BEC(v22);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29B267A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = strlen(off_2A14FE6F8);
  v8 = result;
  v9 = *(a4 + 23);
  if (v9 < 0)
  {
    if (result != *(a4 + 8))
    {
      return result;
    }

    if (result == -1)
    {
      sub_29A0F26CC();
    }

    result = *a4;
  }

  else
  {
    result = a4;
    if (v8 != v9)
    {
      return result;
    }
  }

  result = memcmp(result, off_2A14FE6F8, v8);
  if (!result)
  {
    v10 = *a3;
    sub_29A008E78(&v27, "int numActiveLightSources()");
    (*(*v10 + 80))(v10, &v27, a4, 0);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    (*(*v10 + 160))(v10, a2, a3, a4, 1);
    sub_29A008E78(&v23, off_2A14FE298[0]);
    v11 = std::string::insert(&v23, 0, "return min(");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v24, ", ");
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(__p, off_2A14FE4D8[0]);
    if ((v22 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v16 = v22;
    }

    else
    {
      v16 = __p[1];
    }

    v17 = std::string::append(&v25, v15, v16);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v26, ") ");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v28 = v19->__r_.__value_.__r.__words[2];
    v27 = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    (*(*v10 + 80))(v10, &v27, a4, 1);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    return (*(*v10 + 168))(v10, a2, a3, a4);
  }

  return result;
}

void sub_29B267CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29B267D80()
{
  if (*(v0 - 57) < 0)
  {
    JUMPOUT(0x29B267D74);
  }

  JUMPOUT(0x29B267D78);
}

uint64_t sub_29B267D98(uint64_t a1)
{
  *a1 = &unk_2A20CAFC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29B267DE8(void **__p)
{
  *__p = &unk_2A20CAFC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}