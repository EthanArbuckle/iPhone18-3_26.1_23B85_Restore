void sub_29AA978D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A184A10(v22, 0);
  _Unwind_Resume(a1);
}

void sub_29AA979BC(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::VtDictionary *a2@<X8>)
{
  v7 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  sub_29A008E78(&__p, "TextureCompressionQuality");
  v6 = &unk_2A2044C63;
  LODWORD(v5) = 1061997773;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "TextureCompressionCodec");
  v6 = &unk_2A2044533;
  LOBYTE(v5) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "RecompressTextures");
  v6 = &unk_2A20443C3;
  LOBYTE(v5) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "PreserveTexturesExtensions");
  v6 = &unk_2A20443C3;
  LOBYTE(v5) = *(a1 + 397);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "AllowTextureAlteration");
  v6 = &unk_2A20443C3;
  LOBYTE(v5) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "ForceTextureOutputFormat");
  v6 = &unk_2A20443C3;
  LOBYTE(v5) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a2, &__p, &v5, ":");
  sub_29A186B14(&v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29AA97C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_29A186B14(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A184A10(v15, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA97C78(int a1, uint64_t **a2, const void ****this)
{
  pxrInternal__aapl__pxrReserved__::VtDictionaryOver(this, a2, 0, &v6);
  v4 = v6;
  v6 = 0;
  sub_29A184A10(a2, v4);
  sub_29A184A10(&v6, 0);
  return 0;
}

uint64_t sub_29AA97CD0(uint64_t a1)
{
  sub_29AA9F92C((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29AA97D10(uint64_t a1)
{
  v40[2] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  sub_29AA9DACC(v30, *(a1 + 40) + 56);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__dst, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = v35;
  }

  v3 = *(*(a1 + 48) + 24);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v4 = sub_29AA89610(v3, &__p.__r_.__value_.__l.__data_);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v5)
    {
      goto LABEL_77;
    }
  }

  else if (!v4)
  {
    goto LABEL_77;
  }

  v6 = sub_29A8CCEB8(&v38, &__dst);
  sub_29AA81918(v6, &v27);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v26, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v27;
  }

  v7 = sub_29AAA202C(&v26);
  v8 = v7;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
    if (v8)
    {
LABEL_18:
      if (*(a1 + 79) < 0)
      {
        sub_29A008D14(&v24, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        v24 = *(a1 + 56);
        v25 = *(a1 + 72);
      }

      if (SHIBYTE(v25) < 0)
      {
        v9 = *(&v24 + 1) == 23 && *v24 == 0x623A737475706E69 && *(v24 + 8) == 0x726F6C6F43657361 && *(v24 + 15) == 0x6572757478655472;
        operator delete(v24);
      }

      else
      {
        v9 = 0;
      }

      if (*(a1 + 103) < 0)
      {
        sub_29A008D14(v22, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        *v22 = *(a1 + 80);
        v23 = *(a1 + 96);
      }

      sub_29AA98358(v2, &v35, v22, v9);
    }
  }

  else if (v7)
  {
    goto LABEL_18;
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v21, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v35;
  }

  v12 = *(a1 + 103);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 103))
    {
      goto LABEL_68;
    }

LABEL_48:
    if (v12 >= 0)
    {
      v13 = *(a1 + 103);
    }

    else
    {
      v13 = *(a1 + 88);
    }

    v14 = &v38;
    sub_29A022DE0(&v38, v13 + 1);
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v38.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(a1 + 103) >= 0)
      {
        v15 = (a1 + 80);
      }

      else
      {
        v15 = *(a1 + 80);
      }

      memmove(v14, v15, v13);
    }

    *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v21;
    }

    else
    {
      v16 = v21.__r_.__value_.__r.__words[0];
    }

    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v38, v16, size);
    v19 = v18->__r_.__value_.__r.__words[0];
    v40[0] = v18->__r_.__value_.__l.__size_;
    *(v40 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
    v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21.__r_.__value_.__r.__words[0] = v19;
    v21.__r_.__value_.__l.__size_ = v40[0];
    *(&v21.__r_.__value_.__r.__words[1] + 7) = *(v40 + 7);
    *(&v21.__r_.__value_.__s + 23) = v20;
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    goto LABEL_68;
  }

  if (*(a1 + 88))
  {
    goto LABEL_48;
  }

LABEL_68:
  std::mutex::lock((v2 + 1216));
  sub_29A095658((v2 + 1016), &v21.__r_.__value_.__l.__data_, &v21);
  if (*(a1 + 127) < 0)
  {
    sub_29A008D14(&v38, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    v38 = *(a1 + 104);
  }

  v39 = 0;
  sub_29AA9FE7C((v2 + 1136), &v38);
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock((v2 + 1216));
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_77:
  dispatch_semaphore_signal(qword_2A1747A50);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v30);
}

void sub_29AA98238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50)
{
  sub_29A186B14(v51 - 144);
  std::mutex::unlock(v50 + 19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  sub_29AA881D0(&a50);
  _Unwind_Resume(a1);
}

void sub_29AA9833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    JUMPOUT(0x29AA98318);
  }

  JUMPOUT(0x29AA9831CLL);
}

void sub_29AA98358(uint64_t a1, uint64_t a2, uint64_t *a3, BOOL a4)
{
  v101 = *MEMORY[0x29EDCA608];
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 8));
  }

  else
  {
    __dst = *a2;
    v88 = *(a2 + 16);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v89, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v89 = *(a2 + 24);
    v90 = *(a2 + 40);
  }

  sub_29AA9AC4C(a1, &__dst, &v91);
  if (SHIBYTE(v90) < 0)
  {
    operator delete(v89);
  }

  if (SHIBYTE(v88) < 0)
  {
    operator delete(__dst);
  }

  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    v10 = *a3;
    v11 = a3[1];
    if (*(*a3 + v11 - 1) == 47)
    {
      v9 = v11 - 1;
      a3[1] = v9;
      goto LABEL_16;
    }
  }

  else if (*(a3 + v8 - 1) == 47)
  {
    v9 = v8 - 1;
    *(a3 + 23) = (v8 - 1) & 0x7F;
    v10 = a3;
LABEL_16:
    *(v10 + v9) = 0;
  }

  sub_29AA9DC64(v83, v95);
  if (v96 >= 0.0 || v96 <= 1.0)
  {
    *(v86 + 48) = v96;
  }

  v12 = v92;
  v83[4] = v92;
  v83[10] = v94;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  std::string::operator=(v85, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v97 != 2)
  {
    a4 = v97 != 1;
  }

  v83[9] = a4;
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  if (*(a1 + 394) != 1 || *(a1 + 100) != 2 && *(a1 + 896) != 2)
  {
    if (*(a2 + 47) < 0)
    {
      sub_29A008D14(&pn, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      pn = *(a2 + 24);
    }

    if (*(a1 + 760) == 1)
    {
      sub_29A8CCEB8(&__p, a2);
      sub_29AA33A10(&__p, a1 + 216, &v79);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v79.__pn_;
      if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v79, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v79.__pn_ = __p;
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      pn = v79.__pn_;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(pn.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = pn.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_108;
    }

    sub_29A8CCEB8(&v76.__pn_, &pn);
    sub_29AA9B108(v83, &v76);
    if (SHIBYTE(v76.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v76.__pn_.__r_.__value_.__l.__data_);
    }

    v35 = sub_29AAA1344(v83);
    v36 = sub_29AAA1130(v83);
    if ((v12 & 1) == 0 && v36)
    {
      goto LABEL_108;
    }

    if ((v93 & 1) == 0 && v35 == 1)
    {
      goto LABEL_108;
    }

    v37 = sub_29AAA1814(v83, v80);
    v38 = v37;
    if (!v37)
    {
      goto LABEL_215;
    }

    if (v37 == 803)
    {
      goto LABEL_108;
    }

    std::operator+<char>();
    v39 = sub_29AABB028();
    sub_29AA69D84(v39, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (!v38)
    {
LABEL_215:
      v25 = 1;
    }

    else
    {
LABEL_108:
      v25 = 0;
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
      if (!size)
      {
        goto LABEL_214;
      }
    }

    else if (!size)
    {
      goto LABEL_214;
    }

LABEL_113:
    if (*(a2 + 23) < 0)
    {
      sub_29A008D14(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
    }

    if (*(a2 + 47) < 0)
    {
      sub_29A008D14(&v75, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v75 = *(a2 + 24);
    }

    if (v91)
    {
      goto LABEL_134;
    }

    sub_29A8CCEB8(&v79.__pn_, a2);
    sub_29A8CCEB8(&v78, (v86 + 24));
    std::__fs::filesystem::path::replace_extension(&v79, &v78);
    if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v79;
    }

    else
    {
      v40 = v79.__pn_.__r_.__value_.__r.__words[0];
    }

    sub_29A008E78(v99, v40);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&pn);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = pn;
    *(&pn.__r_.__value_.__s + 23) = 0;
    pn.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
      v75 = v73;
      *(&v73.__r_.__value_.__s + 23) = 0;
      v73.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v75 = v73;
      *(&v73.__r_.__value_.__s + 23) = 0;
      v73.__r_.__value_.__s.__data_[0] = 0;
    }

    if (v100 < 0)
    {
      operator delete(*v99);
    }

    if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v78.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__pn_.__r_.__value_.__l.__data_);
      if (v25)
      {
LABEL_135:
        if (*(a2 + 23) < 0)
        {
          sub_29A008D14(&v79, *a2, *(a2 + 8));
        }

        else
        {
          v79 = *a2;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&v78, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v78 = __p;
        }

        if ((*(a3 + 23) & 0x8000000000000000) != 0)
        {
          if (!a3[1])
          {
            goto LABEL_181;
          }
        }

        else if (!*(a3 + 23))
        {
          goto LABEL_181;
        }

        v41 = sub_29A008E78(v99, "/");
        v42 = *(a3 + 23);
        if (v42 >= 0)
        {
          v43 = a3;
        }

        else
        {
          v43 = *a3;
        }

        if (v42 >= 0)
        {
          v44 = *(a3 + 23);
        }

        else
        {
          v44 = a3[1];
        }

        v45 = std::string::insert(v41, 0, v43, v44);
        v46 = *&v45->__r_.__value_.__l.__data_;
        pn.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
        *&pn.__r_.__value_.__l.__data_ = v46;
        v45->__r_.__value_.__l.__size_ = 0;
        v45->__r_.__value_.__r.__words[2] = 0;
        v45->__r_.__value_.__r.__words[0] = 0;
        if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &v79;
        }

        else
        {
          v47 = v79.__pn_.__r_.__value_.__r.__words[0];
        }

        if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = HIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v48 = v79.__pn_.__r_.__value_.__l.__size_;
        }

        v49 = std::string::append(&pn, v47, v48);
        v50 = v49->__r_.__value_.__r.__words[0];
        v98[0] = v49->__r_.__value_.__l.__size_;
        *(v98 + 7) = *(&v49->__r_.__value_.__r.__words[1] + 7);
        v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v79.__pn_.__r_.__value_.__l.__data_);
        }

        v79.__pn_.__r_.__value_.__r.__words[0] = v50;
        v79.__pn_.__r_.__value_.__l.__size_ = v98[0];
        *(&v79.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v98 + 7);
        *(&v79.__pn_.__r_.__value_.__s + 23) = v51;
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (v100 < 0)
        {
          operator delete(*v99);
        }

        v52 = sub_29A008E78(v99, "/");
        v53 = *(a3 + 23);
        if (v53 >= 0)
        {
          v54 = a3;
        }

        else
        {
          v54 = *a3;
        }

        if (v53 >= 0)
        {
          v55 = *(a3 + 23);
        }

        else
        {
          v55 = a3[1];
        }

        v56 = std::string::insert(v52, 0, v54, v55);
        v57 = *&v56->__r_.__value_.__l.__data_;
        pn.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
        *&pn.__r_.__value_.__l.__data_ = v57;
        v56->__r_.__value_.__l.__size_ = 0;
        v56->__r_.__value_.__r.__words[2] = 0;
        v56->__r_.__value_.__r.__words[0] = 0;
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v78;
        }

        else
        {
          v58 = v78.__r_.__value_.__r.__words[0];
        }

        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v59 = v78.__r_.__value_.__l.__size_;
        }

        v60 = std::string::append(&pn, v58, v59);
        v61 = v60->__r_.__value_.__r.__words[0];
        v98[0] = v60->__r_.__value_.__l.__size_;
        *(v98 + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
        v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
        v60->__r_.__value_.__l.__size_ = 0;
        v60->__r_.__value_.__r.__words[2] = 0;
        v60->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        v78.__r_.__value_.__r.__words[0] = v61;
        v78.__r_.__value_.__l.__size_ = v98[0];
        *(&v78.__r_.__value_.__r.__words[1] + 7) = *(v98 + 7);
        *(&v78.__r_.__value_.__s + 23) = v62;
        if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pn.__r_.__value_.__l.__data_);
        }

        if (v100 < 0)
        {
          operator delete(*v99);
        }

LABEL_181:
        sub_29AA9DF28(&pn, &v78, v80);
        sub_29AAA0438(a1 + 1176, &pn.__r_.__value_.__l.__data_, &pn);
        v63 = *(a2 + 23);
        if (v63 >= 0)
        {
          v64 = *(a2 + 23);
        }

        else
        {
          v64 = *(a2 + 8);
        }

        v65 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v65 = __p.__r_.__value_.__l.__size_;
        }

        if (v64 != v65 || (v63 >= 0 ? (v66 = a2) : (v66 = *a2), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v66, p_p, v64)))
        {
          sub_29A095658((a1 + 1088), a2, a2);
          if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = HIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v68 = v79.__pn_.__r_.__value_.__l.__size_;
          }

          v69 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
          if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v69 = v78.__r_.__value_.__l.__size_;
          }

          if (v68 != v69 || ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v70 = &v79) : (v70 = v79.__pn_.__r_.__value_.__r.__words[0]), (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v71 = &v78) : (v71 = v78.__r_.__value_.__r.__words[0]), memcmp(v70, v71, v68)))
          {
            sub_29A095658((a1 + 1088), &v79.__pn_.__r_.__value_.__l.__data_, &v79);
          }
        }

        std::string::operator=(a2, &__p);
        std::string::operator=((a2 + 24), &v75);
        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
      }
    }

    else
    {
LABEL_134:
      if (v25)
      {
        goto LABEL_135;
      }
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_214:
    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&v79, *a2, *(a2 + 8));
  }

  else
  {
    v79 = *a2;
  }

  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (!a3[1])
    {
      goto LABEL_63;
    }
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_63;
  }

  sub_29A008E78(&v78, "/");
  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = a3[1];
  }

  v16 = std::string::insert(&v78, 0, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  pn.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&pn.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v79;
  }

  else
  {
    v18 = v79.__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v79.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v79.__pn_.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&pn, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  *v99 = v20->__r_.__value_.__l.__size_;
  *&v99[7] = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__pn_.__r_.__value_.__l.__data_);
  }

  v79.__pn_.__r_.__value_.__r.__words[0] = v21;
  v79.__pn_.__r_.__value_.__l.__size_ = *v99;
  *(&v79.__pn_.__r_.__value_.__r.__words[1] + 7) = *&v99[7];
  *(&v79.__pn_.__r_.__value_.__s + 23) = v22;
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

LABEL_63:
  if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&v77, v79.__pn_.__r_.__value_.__l.__data_, v79.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v77 = v79;
  }

  v23 = sub_29AA8F9E4(a1, &v77.__pn_.__r_.__value_.__l.__data_, &__p.__r_.__value_.__l.__data_);
  v24 = v23;
  if (SHIBYTE(v77.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__pn_.__r_.__value_.__l.__data_);
    if (v24)
    {
      goto LABEL_68;
    }
  }

  else if (v23)
  {
LABEL_68:
    v25 = 0;
    if (SHIBYTE(v79.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v79.__pn_.__r_.__value_.__l.__data_);
    }

    if (__p.__r_.__value_.__r.__words[0])
    {
      __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v24)
    {
      goto LABEL_214;
    }

    goto LABEL_113;
  }

  sub_29A0104F4(&v78, __p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]);
  v27 = __p.__r_.__value_.__l.__size_;
  v26 = __p.__r_.__value_.__r.__words[0];
  v28 = v78.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
  {
    do
    {
      v29 = *v26++;
      *v28++ = v29;
    }

    while (v26 != v27);
    v28 = v78.__r_.__value_.__r.__words[0];
  }

  sub_29AA969C0(&pn, v28, v78.__r_.__value_.__l.__size_);
  sub_29AAA1710(v83, &pn);
  v84 = 1;
  v30 = sub_29AAA1344(v83);
  v31 = sub_29AAA1130(v83);
  if (((v12 & 1) != 0 || !v31) && ((v93 & 1) != 0 || v30 != 1))
  {
    v32 = sub_29AAA1814(v83, v80);
    if (v32)
    {
      if (v32 != 803)
      {
        std::operator+<char>();
        v33 = sub_29AABB028();
        sub_29AA69D84(v33, v99);
        if (v100 < 0)
        {
          operator delete(*v99);
        }
      }
    }
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA98ED0()
{
  if (*(v0 - 89) < 0)
  {
    operator delete(*(v0 - 112));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

char *sub_29AA99138(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 79) < 0)
  {
    result = sub_29A008D14(result + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(result + 9) = *(a2 + 72);
    *(result + 56) = v4;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_29A008D14(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v5 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v5;
  }

  if (*(a2 + 127) < 0)
  {
    return sub_29A008D14(v3 + 104, *(a2 + 104), *(a2 + 112));
  }

  v6 = *(a2 + 104);
  *(v3 + 15) = *(a2 + 120);
  *(v3 + 104) = v6;
  return result;
}

void sub_29AA991D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA99208(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    v2 = *(a1 + 56);

    operator delete(v2);
  }
}

uint64_t sub_29AA99270(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v17 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v18, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v18 = *(a2 + 24);
    v19 = *(a2 + 5);
  }

  sub_29AA9AC4C(a1, &__dst, v20);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }

  sub_29AA9DC64(v14, v20[4]);
  if (v21 >= 0.0 || v21 <= 1.0)
  {
    *(v15 + 48) = v21;
  }

  v14[4] = v20[1];
  v14[10] = v20[3];
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(&v13, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v13 = *(a2 + 1);
  }

  if ((v20[0] & 1) == 0)
  {
    sub_29A8CCEB8(&v11.__pn_, a2);
    sub_29A8CCEB8(&__replacement.__pn_, (v15 + 24));
    std::__fs::filesystem::path::replace_extension(&v11, &__replacement);
    if ((v11.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &v11;
    }

    else
    {
      v4 = v11.__pn_.__r_.__value_.__r.__words[0];
    }

    sub_29A008E78(&v6, v4);
    pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v8;
    *(&v8.__r_.__value_.__s + 23) = 0;
    v8.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
      v13 = v9;
      *(&v9.__r_.__value_.__s + 23) = 0;
      v9.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = v9;
      *(&v9.__r_.__value_.__s + 23) = 0;
      v9.__r_.__value_.__s.__data_[0] = 0;
    }

    if (v7 < 0)
    {
      operator delete(v6);
    }

    if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__pn_.__r_.__value_.__l.__data_);
    }
  }

  std::string::operator=(a2, &__p);
  std::string::operator=(a2 + 1, &v13);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29AA9DFAC(v14);
  return 0;
}

void sub_29AA99508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  sub_29AA9DFAC(&a43);
  _Unwind_Resume(a1);
}

void sub_29AA995BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = sub_29A580660(&v4, (a3 + 8), (a3 + 16));
  pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(v3);
}

void sub_29AA9A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void **a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v77 - 121) < 0)
  {
    operator delete(*(v77 - 144));
  }

  if (*(v77 - 89) < 0)
  {
    operator delete(*(v77 - 112));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  sub_29A184A10(&a40, 0);
  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a73 < 0)
  {
    operator delete(a68);
  }

  if (a75 < 0)
  {
    operator delete(a74);
  }

  if (a77 < 0)
  {
    operator delete(a76);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

uint64_t sub_29AA9AC4C(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_29AA979BC(a1, &v19);
  if (sub_29AA84E9C((a1 + 472), "*"))
  {
    v6 = sub_29AA84F14((a1 + 472), "*");
    pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v18, v6);
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::size(&v18) && sub_29AA84E9C(&v18, "Textures"))
    {
      v7 = sub_29AA84F14(&v18, "Textures");
      v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v17, v7);
      sub_29AA97C78(v8, &v19, &v17);
      sub_29A184A10(&v17, 0);
    }

    sub_29A184A10(&v18, 0);
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (sub_29AA84E9C((a1 + 472), a2))
  {
    v9 = sub_29AA84F14((a1 + 472), a2);
    pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v18, v9);
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::size(&v18) && sub_29AA84E9C(&v18, "Textures"))
    {
      v16 = 0;
      v10 = sub_29AA84F14(&v18, "Textures");
      pxrInternal__aapl__pxrReserved__::VtDictionary::operator=(&v16, v10);
      v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v15, &v16);
      sub_29AA97C78(v11, &v19, &v15);
      sub_29A184A10(&v15, 0);
      sub_29A184A10(&v16, 0);
    }

    sub_29A184A10(&v18, 0);
  }

  *(a3 + 4) = -1;
  if (sub_29AA8BF08(&v19, "TextureCompressionCodec"))
  {
    *(a3 + 4) = *sub_29AA8BF80(&v19, "TextureCompressionCodec");
  }

  *(a3 + 8) = 1061997773;
  if (sub_29AA9AFE8(&v19, "TextureCompressionQuality"))
  {
    *(a3 + 8) = *sub_29AA9B060(&v19, "TextureCompressionQuality");
  }

  if (sub_29AA84D7C(&v19, "PreserveTexturesExtensions"))
  {
    v12 = sub_29AA84DF4(&v19, "PreserveTexturesExtensions");
    v13 = *v12;
    *(a1 + 397) = *v12;
  }

  else
  {
    v13 = *(a1 + 397);
  }

  *a3 = v13;
  *(a3 + 1) = 0;
  if (sub_29AA84D7C(&v19, "RecompressTextures"))
  {
    *(a3 + 1) = *sub_29AA84DF4(&v19, "RecompressTextures");
  }

  *(a3 + 2) = 0;
  if (sub_29AA84D7C(&v19, "AllowTextureAlteration"))
  {
    *(a3 + 2) = *sub_29AA84DF4(&v19, "AllowTextureAlteration");
  }

  *(a3 + 3) = 0;
  if (sub_29AA84D7C(&v19, "ForceTextureOutputFormat"))
  {
    *(a3 + 3) = *sub_29AA84DF4(&v19, "ForceTextureOutputFormat");
  }

  *(a3 + 12) = *(a1 + 112);
  if (sub_29AA84D7C(&v19, "SubsampleChroma"))
  {
    *(a3 + 12) = *sub_29AA84DF4(&v19, "SubsampleChroma") ^ 1;
  }

  sub_29A184A10(&v19, 0);
  return 1;
}

void sub_29AA9AF6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void **);
  va_copy(va2, va1);
  v5 = va_arg(va2, void **);
  v7 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, void **);
  sub_29A184A10(va, 0);
  sub_29A184A10(va1, 0);
  sub_29A184A10(va2, 0);
  sub_29A184A10(va3, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA9AFE8(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29A3F9DF4((v3 + 56));
}

void **sub_29AA9B060(pxrInternal__aapl__pxrReserved__::VtDictionary *a1, const char *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v6 = v5;
  v7 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v6 == v9 && (!v6 || v4 == v7))
  {
    v11[0] = "vt/dictionary.h";
    v11[1] = "VtDictionaryGet";
    v11[2] = 458;
    v11[3] = "const T &pxrInternal__aapl__pxrReserved__::VtDictionaryGet(const VtDictionary &, const char *) [T = float]";
    v12 = 0;
    v13 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v11, "Attempted to get value for key '%s', which is not in the dictionary.", v8, a2);
  }

  return sub_29A8D5794((v4 + 56));
}

void sub_29AA9B108(uint64_t a1, std::__fs::filesystem::path *a2)
{
  std::__fs::filesystem::__status(a2, 0);
  if (v5 && v5 != 255)
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__p, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = *a2;
    }

    sub_29AAA15FC(a1, &__p);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }
  }

  *(a1 + 12) = 0;
}

void sub_29AA9B19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA9B1F8(uint64_t a1, uint64_t a2, const void **a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_29A008E78(&v17, "pmc");
  if (sub_29AA91F34((a1 + 480), a3))
  {
    v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::find((a1 + 480), a3);
    pxrInternal__aapl__pxrReserved__::VtDictionary::end((a1 + 480));
    v7 = sub_29A187B1C((v6 + 56));
    v8 = pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v20, v7);
    if (sub_29AA91FAC(v8, "MeshesInsertsData"))
    {
      v9 = sub_29AA92024(&v20, "MeshesInsertsData");
      sub_29A4AB3CC(v18, v9);
      if (sub_29AA84B3C(&v20, "SelectCodec"))
      {
        v10 = sub_29AA84BB4(&v20, "SelectCodec");
        std::string::operator=(&v17, v10);
      }

      sub_29A184A10(&v20, 0);
LABEL_8:
      sub_29A580660(&__p, (a2 + 8), (a2 + 16));
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__p);
    }

    v14 = sub_29AABB028();
    sub_29A008E78(&__p, "Invalid Inserts Meshes bitstream data");
    sub_29AA5B750(v14, &__p);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    sub_29A184A10(&v20, 0);
  }

  else
  {
    if (sub_29AA9D970((a1 + 480), a3))
    {
      v11 = pxrInternal__aapl__pxrReserved__::VtDictionary::find((a1 + 480), a3);
      pxrInternal__aapl__pxrReserved__::VtDictionary::end((a1 + 480));
      v12 = sub_29A19EA70((v11 + 56));
      sub_29A4AB3CC(v18, v12);
      goto LABEL_8;
    }

    v13 = sub_29AABB028();
    sub_29A008E78(&__p, "Invalid Inserts Meshes type");
    sub_29AA5B750(v13, &__p);
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA9BC50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void **a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  sub_29A184A10(&a20, 0);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_29A57F434(&a40);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29AA9BF2C(uint64_t a1, uint64_t a2, std::string *this)
{
  v3 = this;
  std::string::operator=(this, (a2 + 24));
  v6 = std::string::rfind(v3, 91, 0xFFFFFFFFFFFFFFFFLL);
  if (v6 != -1)
  {
    if ((v3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3->__r_.__value_.__r.__words[0];
    }

    v7->__r_.__value_.__s.__data_[v6] = 47;
  }

  v8 = std::string::rfind(v3, 93, 0xFFFFFFFFFFFFFFFFLL);
  if (v8 != -1)
  {
    std::string::erase(v3, v8, 1uLL);
  }

  if (*(a1 + 239) < 0)
  {
    sub_29A008D14(__p, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    *__p = *(a1 + 216);
    v42 = *(a1 + 232);
  }

  if ((*(a1 + 100) | 4) == 6)
  {
    if (*(a1 + 143) < 0)
    {
      sub_29A008D14(v39, *(a1 + 120), *(a1 + 128));
    }

    else
    {
      *v39 = *(a1 + 120);
      v40 = *(a1 + 136);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v39;
    v42 = v40;
  }

  size = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  v10 = size;
  v11 = v3->__r_.__value_.__r.__words[0];
  if ((size & 0x80u) == 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = v3->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = v3->__r_.__value_.__l.__size_;
  }

  if (v42 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v42 >= 0)
  {
    v14 = HIBYTE(v42);
  }

  else
  {
    v14 = __p[1];
  }

  if (v14)
  {
    if (size >= v14)
    {
      v15 = v12 + size;
      v16 = *v13;
      v17 = v12;
      do
      {
        v18 = size - v14;
        if (v18 == -1)
        {
          break;
        }

        v19 = memchr(v17, v16, v18 + 1);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        if (!memcmp(v19, v13, v14))
        {
          if (v20 != v15)
          {
            v21 = v20 - v12;
            if (v20 - v12 != -1)
            {
              goto LABEL_38;
            }
          }

          break;
        }

        v17 = (v20 + 1);
        size = v15 - (v20 + 1);
      }

      while (size >= v14);
    }
  }

  else
  {
    v21 = 0;
LABEL_38:
    std::string::erase(v3, v21, v14);
    v10 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
    v11 = v3->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    v22 = v3;
  }

  else
  {
    v22 = v11;
  }

  if (v22->__r_.__value_.__s.__data_[0] == 47)
  {
    std::string::erase(v3, 0, 1uLL);
  }

  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v39, *a2, *(a2 + 8));
  }

  else
  {
    *v39 = *a2;
    v40 = *(a2 + 16);
  }

  v23 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v3;
  }

  else
  {
    v24 = v3->__r_.__value_.__r.__words[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v25 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v3->__r_.__value_.__l.__size_;
  }

  if (v40 >= 0)
  {
    v26 = v39;
  }

  else
  {
    v26 = v39[0];
  }

  if (v40 >= 0)
  {
    v27 = HIBYTE(v40);
  }

  else
  {
    v27 = v39[1];
  }

  if (v27)
  {
    if (v25 >= v27)
    {
      v28 = v24 + v25;
      v29 = *v26;
      v30 = v24;
      do
      {
        v31 = v25 - v27;
        if (v31 == -1)
        {
          break;
        }

        v32 = memchr(v30, v29, v31 + 1);
        if (!v32)
        {
          break;
        }

        v33 = v32;
        if (!memcmp(v32, v26, v27))
        {
          if (v33 != v28)
          {
            v34 = v33 - v24;
            if (v33 - v24 != -1)
            {
              goto LABEL_68;
            }
          }

          break;
        }

        v30 = (v33 + 1);
        v25 = v28 - (v33 + 1);
      }

      while (v25 >= v27);
    }
  }

  else
  {
    v34 = 0;
LABEL_68:
    std::string::erase(v3, v34, v27);
    v23 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  }

  if ((v23 & 0x80) != 0)
  {
    v36 = v3->__r_.__value_.__l.__size_;
    if (v36)
    {
      v37 = v3->__r_.__value_.__r.__words[0];
      if (*(v3->__r_.__value_.__r.__words[0] + v36 - 1) == 47)
      {
        v35 = v36 - 1;
        v3->__r_.__value_.__l.__size_ = v35;
        v3 = v37;
        goto LABEL_76;
      }
    }
  }

  else if (v23 && v3->__r_.__value_.__s.__data_[v23 - 1] == 47)
  {
    v35 = v23 - 1;
    *(&v3->__r_.__value_.__s + 23) = v35;
LABEL_76:
    v3->__r_.__value_.__s.__data_[v35] = 0;
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_29AA9C29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA9C2D8(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, BOOL a5)
{
  v69[2] = *MEMORY[0x29EDCA608];
  if (sub_29AA9D9E8((a1 + 488), a3))
  {
    v10 = pxrInternal__aapl__pxrReserved__::VtDictionary::find((a1 + 488), a3);
    pxrInternal__aapl__pxrReserved__::VtDictionary::end((a1 + 488));
    v11 = *sub_29AAA0B2C((v10 + 56));
    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
        v63 = *(a2 + 16);
      }

      if (*(a2 + 47) < 0)
      {
        sub_29A008D14(&v64, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v64 = *(a2 + 24);
        v65 = *(a2 + 40);
      }

      sub_29AA9AC4C(a1, &__dst, v66);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(__dst);
      }

      sub_29AA9E0F0(&__p, v66[4], v11);
      if (v67 >= 0.0 || v67 <= 1.0)
      {
        *(v61 + 48) = v67;
      }

      BYTE4(__p) = 1;
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&__str, *a2, *(a2 + 8));
      }

      else
      {
        __str = *a2;
      }

      std::string::operator=(&v60, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v59 = 1;
      v57 = 0;
      if (v68 != 2)
      {
        a5 = v68 != 1;
      }

      v58 = a5;
      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&v53, *a2, *(a2 + 8));
      }

      else
      {
        v53 = *a2;
      }

      if (*(a2 + 47) < 0)
      {
        sub_29A008D14(&v54, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v54 = *(a2 + 24);
      }

      if ((v66[0] & 1) == 0)
      {
        sub_29A8CCEB8(v49, a2);
        sub_29A8CCEB8(&__replacement.__pn_, (v61 + 24));
        std::__fs::filesystem::path::replace_extension(v49, &__replacement);
        if (v49[23] >= 0)
        {
          v13 = v49;
        }

        else
        {
          v13 = *v49;
        }

        sub_29A008E78(&v51, v13);
        pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v46);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v53.__r_.__value_.__l.__data_);
        }

        v53 = v46;
        *(&v46.__r_.__value_.__s + 23) = 0;
        v46.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v54.__r_.__value_.__l.__data_);
          v54 = v47;
          *(&v47.__r_.__value_.__s + 23) = 0;
          v47.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v54 = v47;
          *(&v47.__r_.__value_.__s + 23) = 0;
          v47.__r_.__value_.__s.__data_[0] = 0;
        }

        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v51.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v49[23] & 0x80000000) != 0)
        {
          operator delete(*v49);
        }
      }

      v50 = 0;
      memset(v49, 0, sizeof(v49));
      v14 = sub_29AAA1814(&__p, v49);
      if (v14 && v14 != 803)
      {
        std::operator+<char>();
        v15 = sub_29AABB028();
        sub_29AA69D84(v15, &v46);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
      }

      if (*(a2 + 23) < 0)
      {
        sub_29A008D14(&__replacement, *a2, *(a2 + 8));
      }

      else
      {
        __replacement = *a2;
      }

      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v51, v53.__r_.__value_.__l.__data_, v53.__r_.__value_.__l.__size_);
      }

      else
      {
        v51 = v53;
      }

      if ((*(a4 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(a4 + 8))
        {
          goto LABEL_98;
        }
      }

      else if (!*(a4 + 23))
      {
        goto LABEL_98;
      }

      sub_29A008E78(&v48, "/");
      v16 = *(a4 + 23);
      if (v16 >= 0)
      {
        v17 = a4;
      }

      else
      {
        v17 = *a4;
      }

      if (v16 >= 0)
      {
        v18 = *(a4 + 23);
      }

      else
      {
        v18 = *(a4 + 8);
      }

      v19 = std::string::insert(&v48, 0, v17, v18);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_replacement = &__replacement;
      }

      else
      {
        p_replacement = __replacement.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __replacement.__pn_.__r_.__value_.__l.__size_;
      }

      v23 = std::string::append(&v46, p_replacement, size);
      v24 = v23->__r_.__value_.__r.__words[0];
      v69[0] = v23->__r_.__value_.__l.__size_;
      *(v69 + 7) = *(&v23->__r_.__value_.__r.__words[1] + 7);
      v25 = HIBYTE(v23->__r_.__value_.__r.__words[2]);
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__replacement.__pn_.__r_.__value_.__l.__data_);
      }

      __replacement.__pn_.__r_.__value_.__r.__words[0] = v24;
      __replacement.__pn_.__r_.__value_.__l.__size_ = v69[0];
      *(&__replacement.__pn_.__r_.__value_.__r.__words[1] + 7) = *(v69 + 7);
      *(&__replacement.__pn_.__r_.__value_.__s + 23) = v25;
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      sub_29A008E78(&v48, "/");
      v26 = *(a4 + 23);
      if (v26 >= 0)
      {
        v27 = a4;
      }

      else
      {
        v27 = *a4;
      }

      if (v26 >= 0)
      {
        v28 = *(a4 + 23);
      }

      else
      {
        v28 = *(a4 + 8);
      }

      v29 = std::string::insert(&v48, 0, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v51;
      }

      else
      {
        v31 = v51.__r_.__value_.__r.__words[0];
      }

      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v51.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v46, v31, v32);
      v34 = v33->__r_.__value_.__r.__words[0];
      v69[0] = v33->__r_.__value_.__l.__size_;
      *(v69 + 7) = *(&v33->__r_.__value_.__r.__words[1] + 7);
      v35 = HIBYTE(v33->__r_.__value_.__r.__words[2]);
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v51.__r_.__value_.__r.__words[0] = v34;
      v51.__r_.__value_.__l.__size_ = v69[0];
      *(&v51.__r_.__value_.__r.__words[1] + 7) = *(v69 + 7);
      *(&v51.__r_.__value_.__s + 23) = v35;
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

LABEL_98:
      sub_29AA9DF28(&v46, &v51, v49);
      sub_29AAA0438(a1 + 1176, &v46.__r_.__value_.__l.__data_, &v46);
      v36 = *(a2 + 23);
      if (v36 >= 0)
      {
        v37 = *(a2 + 23);
      }

      else
      {
        v37 = *(a2 + 8);
      }

      v38 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v53.__r_.__value_.__l.__size_;
      }

      if (v37 != v38 || (v36 >= 0 ? (v39 = a2) : (v39 = *a2), (v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v40 = &v53) : (v40 = v53.__r_.__value_.__r.__words[0]), memcmp(v39, v40, v37)))
      {
        sub_29A095658((a1 + 1088), a2, a2);
        if ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = HIBYTE(__replacement.__pn_.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v41 = __replacement.__pn_.__r_.__value_.__l.__size_;
        }

        v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v42 = v51.__r_.__value_.__l.__size_;
        }

        if (v41 != v42 || ((__replacement.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v43 = &__replacement) : (v43 = __replacement.__pn_.__r_.__value_.__r.__words[0]), (v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v44 = &v51) : (v44 = v51.__r_.__value_.__r.__words[0]), memcmp(v43, v44, v41)))
        {
          sub_29A095658((a1 + 1088), &__replacement.__pn_.__r_.__value_.__l.__data_, &__replacement);
        }
      }

      std::string::operator=(a2, &v53);
      std::string::operator=((a2 + 24), &v54);
      pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
    }
  }

  v12 = sub_29AABB028();
  sub_29A008E78(&__p, "Invalid Inserts Texture bitstream data");
  sub_29AA5B750(v12, &__p);
  if (v60.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_29AA9CA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

uint64_t sub_29AA9CC0C(uint64_t a1)
{
  v2 = sub_29A3479FC(v22, (a1 + 1088));
  sub_29AA90120(v2, a1 + 944, v22);
  sub_29A019EE8(v22, v22[1]);
  if (*(a1 + 984) && sub_29AA916D0(a1))
  {
    v3 = sub_29AABB028();
    sub_29A008E78(v20, "Error when adding files to usdz: compressedGCLFiles");
    sub_29AA5B750(v3, v20);
    if (v21 < 0)
    {
      operator delete(v20[0]);
    }

    v4 = 501;
  }

  else
  {
    v4 = 0;
  }

  sub_29A3479FC(v19, (a1 + 968));
  sub_29AA8FE38(a1, v19);
  sub_29A019EE8(v19, v19[1]);
  v5 = sub_29A3479FC(v18, (a1 + 968));
  sub_29AA90120(v5, a1 + 1016, v18);
  sub_29A019EE8(v18, v18[1]);
  sub_29A008E78(__p, "");
  sub_29AA90974(a1, (a1 + 1016), __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A3479FC(v15, (a1 + 1016));
  sub_29AA8FE38(a1, v15);
  sub_29A019EE8(v15, v15[1]);
  if (*(a1 + 1008))
  {
    sub_29A008E78(v13, "");
    sub_29AA90974(a1, (a1 + 992), v13);
    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  sub_29A3479FC(v12, (a1 + 992));
  sub_29AA8FE38(a1, v12);
  sub_29A019EE8(v12, v12[1]);
  if (*(a1 + 1056))
  {
    sub_29A008E78(v10, "");
    sub_29AA90974(a1, (a1 + 1040), v10);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }

  sub_29A3479FC(v9, (a1 + 1040));
  sub_29AA8FE38(a1, v9);
  sub_29A019EE8(v9, v9[1]);
  if (*(a1 + 960))
  {
    sub_29A008E78(v7, "");
    sub_29AA90974(a1, (a1 + 944), v7);
    if (v8 < 0)
    {
      operator delete(v7[0]);
    }
  }

  return v4;
}

void sub_29AA9CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA9CF00(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if ((*(*a2 + 87) & 0x80000000) == 0)
  {
    __dst = *(v3 + 64);
LABEL_4:
    v36 = *(v3 + 64);
    goto LABEL_5;
  }

  sub_29A008D14(&__dst, *(v3 + 64), *(v3 + 72));
  if ((*(v3 + 87) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  sub_29A008D14(&v36, *(v3 + 64), *(v3 + 72));
LABEL_5:
  if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v36.__pn_.__r_.__value_.__l.__size_;
    operator delete(v36.__pn_.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_19;
    }
  }

  else if (*(&v36.__pn_.__r_.__value_.__s + 23))
  {
    goto LABEL_19;
  }

  MEMORY[0x29C2C1A60](&__dst, "root.usdc");
  if (*v3 == 1)
  {
    v5 = (a1 + 440);
    if (*(a1 + 463) < 0)
    {
      v6 = *(a1 + 448);
      if (!v6)
      {
        goto LABEL_19;
      }

      sub_29A008D14(&v36, *v5, v6);
    }

    else
    {
      if (!*(a1 + 463))
      {
        goto LABEL_19;
      }

      *&v36.__pn_.__r_.__value_.__l.__data_ = *v5;
      v36.__pn_.__r_.__value_.__r.__words[2] = *(a1 + 456);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    __dst = v36.__pn_;
  }

LABEL_19:
  v7 = sub_29A8CCEB8(&v36.__pn_, &__dst);
  if ((*(a1 + 396) & 1) == 0)
  {
    sub_29AA81918(v7, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = sub_29A008D14(&pn, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      pn = __p;
    }

    v9 = HIBYTE(pn.__r_.__value_.__r.__words[2]);
    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = (&pn + HIBYTE(pn.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v10 = (pn.__r_.__value_.__r.__words[0] + pn.__r_.__value_.__l.__size_);
    }

    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &pn;
    }

    else
    {
      v11 = pn.__r_.__value_.__r.__words[0];
    }

    if (v11 != v10)
    {
      do
      {
        v8 = __tolower(v11->__r_.__value_.__s.__data_[0]);
        v11->__r_.__value_.__s.__data_[0] = v8;
        v11 = (v11 + 1);
      }

      while (v11 != v10);
      v9 = HIBYTE(pn.__r_.__value_.__r.__words[2]);
    }

    if (v9 < 0)
    {
      v8 = sub_29A008D14(&v33, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = pn;
    }

    v12 = sub_29AA8CBF0(v8, &v33);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (v12 != 9)
    {
      if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&__p, v36.__pn_.__r_.__value_.__l.__data_, v36.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v36.__pn_;
      }

      sub_29AA9E938((a1 + 1088), &__p.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_29A65B7E0(&__p, ".usdc");
      std::__fs::filesystem::path::replace_extension(&v36, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_29A008D14(&pn, v36.__pn_.__r_.__value_.__l.__data_, v36.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = v36.__pn_;
  }

  v13 = sub_29A01BCCC(a1 + 1112, &pn.__r_.__value_.__l.__data_);
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (a1 + 1120 != v13)
  {
    v14 = 0;
    v15 = 0;
LABEL_55:
    v16 = 0;
    goto LABEL_56;
  }

  sub_29AA81918(&v36, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v18 = sub_29A008D14(&pn, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    pn = __p;
  }

  v19 = HIBYTE(pn.__r_.__value_.__r.__words[2]);
  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = (&pn + HIBYTE(pn.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v20 = (pn.__r_.__value_.__r.__words[0] + pn.__r_.__value_.__l.__size_);
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_pn = &pn;
  }

  else
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  if (p_pn != v20)
  {
    do
    {
      v18 = __tolower(p_pn->__r_.__value_.__s.__data_[0]);
      p_pn->__r_.__value_.__s.__data_[0] = v18;
      p_pn = (p_pn + 1);
    }

    while (p_pn != v20);
    v19 = HIBYTE(pn.__r_.__value_.__r.__words[2]);
  }

  if (v19 < 0)
  {
    v18 = sub_29A008D14(&v32, pn.__r_.__value_.__l.__data_, pn.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = pn;
  }

  v22 = sub_29AA8CBF0(v18, &v32);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if ((v22 & 0xB) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v26 = sub_29A3302A8((v3 + 8));
    pxrInternal__aapl__pxrReserved__::SdfLayer::ExportToString(v26, &__p, v27);
  }

  memset(&__p, 0, sizeof(__p));
  v23 = sub_29A3302A8((v3 + 8));
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  *&v29.__pn_.__r_.__value_.__r.__words[1] = 0uLL;
  v29.__pn_.__r_.__value_.__r.__words[0] = &v29.__pn_.__r_.__value_.__l.__size_;
  v24 = pxrInternal__aapl__pxrReserved__::SdfLayer::Export(v23, &__p, v30, &v29);
  sub_29A01752C(&v29, v29.__pn_.__r_.__value_.__l.__size_);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
    if (v24)
    {
LABEL_84:
      v25 = *&__p.__r_.__value_.__l.__data_;
      if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(&v29, v36.__pn_.__r_.__value_.__l.__data_, v36.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        v29 = v36;
      }

      pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::AddBufferAsFile((a1 + 528), v25, *(&v25 + 1) - v25, &v29, *(a1 + 408), *(a1 + 408), v30);
      v15 = v30[0];
      v14 = HIBYTE(v31);
      HIBYTE(v31) = 0;
      LOBYTE(v30[0]) = 0;
      if (SHIBYTE(v29.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__pn_.__r_.__value_.__l.__data_);
      }

      goto LABEL_94;
    }
  }

  else if (v24)
  {
    goto LABEL_84;
  }

  v28 = sub_29AABB028();
  sub_29A008E78(v30, "Failed to export layer layer !");
  sub_29AA5B750(v28, v30);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  v14 = 0;
  v15 = 0;
LABEL_94:
  if (__p.__r_.__value_.__r.__words[0])
  {
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v24 & 1) == 0)
    {
      goto LABEL_105;
    }

LABEL_97:
    if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__p, v36.__pn_.__r_.__value_.__l.__data_, v36.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v36.__pn_;
    }

    sub_29AA9E938((a1 + 1112), &__p.__r_.__value_.__l.__data_, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    goto LABEL_55;
  }

  if (v24)
  {
    goto LABEL_97;
  }

LABEL_105:
  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v16 = 91;
LABEL_56:
  if (SHIBYTE(v36.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v14 & 0x80) == 0)
    {
      return v16;
    }

LABEL_64:
    operator delete(v15);
    return v16;
  }

  if (v14 < 0)
  {
    goto LABEL_64;
  }

  return v16;
}

void sub_29AA9D580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  if (*(v41 - 57) < 0)
  {
    operator delete(*(v41 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA9D728(uint64_t a1, char **a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v16 = 0;
  sub_29A0104F4(v15, a2[1] - *a2);
  v4 = *a2;
  v5 = a2[1];
  v6 = v15[0];
  if (*a2 != v5)
  {
    do
    {
      v7 = *v4++;
      *v6++ = v7;
    }

    while (v4 != v5);
    v6 = v15[0];
  }

  sub_29AA969C0(v13, v6, v15[1]);
  sub_29A008E78(&__p, "CompressedStageBitstream");
  v18 = &off_2A2043DD0;
  v8 = operator new(0x30uLL);
  v9 = v13[1];
  *v8 = v13[0];
  *(v8 + 1) = v9;
  v10 = v14;
  *(v8 + 4) = v14;
  if (v10)
  {
    v11 = (v10 - 16);
    if (*(v8 + 3))
    {
      v11 = *(v8 + 3);
    }

    atomic_fetch_add_explicit(v11, 1uLL, memory_order_relaxed);
  }

  atomic_store(0, v8 + 10);
  v17 = v8;
  atomic_fetch_add_explicit(v8 + 10, 1u, memory_order_relaxed);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(&v16, &__p, &v17, ":");
  sub_29A186B14(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "CompressedData");
  v18 = &off_2A2042030;
  sub_29A187864(&v17, &v16);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a1 + 496), &__p, &v17, ":");
  sub_29A186B14(&v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA9D8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

uint64_t sub_29AA9D970(uint64_t *a1, const void **a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29A19E5FC((v3 + 56));
}

uint64_t sub_29AA9D9E8(uint64_t *a1, const void **a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 == v7 && (!v5 || v3 == v6))
  {
    return 0;
  }

  return sub_29AAA0AA8((v3 + 56));
}

uint64_t sub_29AA9DACC(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  if (*(a2 + 31) < 0)
  {
    sub_29A008D14((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v5;
  }

  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 48);
  *(a1 + 48) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 48) &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v8;
  if (*(a2 + 95) < 0)
  {
    sub_29A008D14((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v9 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v9;
  }

  if (*(a2 + 119) < 0)
  {
    sub_29A008D14((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v10 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v10;
  }

  return a1;
}

void sub_29AA9DBF0(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 48);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(v1 + 32);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA9DC64(uint64_t a1, __int16 a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 168) = 1065353216;
  sub_29AA9DCF4(a1, a2);
  return a1;
}

void sub_29AA9DCC0(_Unwind_Exception *a1)
{
  sub_29AA9DEA8(v3);
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  sub_29B2BD0A4(v1, (v1 + 40), v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_29AA9DCF4(uint64_t a1, __int16 a2)
{
  *a1 = a2;
  *(a1 + 2) = 1;
  *(a1 + 3) = 0;
  *(a1 + 7) = 0;
  *(a1 + 8) = 257;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  MEMORY[0x29C2C1A60](a1 + 16, "");
  MEMORY[0x29C2C1A60](a1 + 40, "");
  sub_29AAA0C14(a1);
  result = sub_29AA9DD80(a1, *a1);
  *(a1 + 128) = result;
  return result;
}

uint64_t **sub_29AA9DD80(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  if (sub_29AA9DDF0((a1 + 136), &v8))
  {
    v3 = (a1 + 136);
    v4 = &v8;
  }

  else
  {
    *a1 = 0;
    v7 = 0;
    v3 = (a1 + 136);
    v4 = &v7;
  }

  v5 = sub_29AA9DDF0(v3, v4);
  if (!v5)
  {
    sub_29A0F26E4("unordered_map::at: key not found");
  }

  return v5 + 3;
}

uint64_t **sub_29AA9DDF0(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29AA9DEA8(uint64_t a1)
{
  sub_29AA9DEE4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AA9DEE4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29A348890((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

char *sub_29AA9DF28(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 40) = a3[1];
  *(__dst + 24) = v6;
  v7 = *(a3 + 4);
  *(__dst + 7) = v7;
  if (v7)
  {
    v8 = (v7 - 16);
    if (*(__dst + 6))
    {
      v8 = *(__dst + 6);
    }

    atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
  }

  return __dst;
}

uint64_t sub_29AA9DFAC(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    CGImageRelease(*(a1 + 96));
    v2 = *(a1 + 88);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 87) < 0)
    {
      **(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 87) = 0;
    }
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    CFRelease(v3);
  }

  sub_29AA9DEA8(a1 + 136);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

char *sub_29AA9E058(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_29AA9E0D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA9E0F0(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 168) = 1065353216;
  sub_29AA9DCF4(a1, a2);
  if (a3)
  {
    *(a1 + 96) = a3;
  }

  *(a1 + 12) = 2;
  return a1;
}

void sub_29AA9E160(_Unwind_Exception *a1)
{
  sub_29AA9DEA8(v3);
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  sub_29B2BD0A4(v1, (v1 + 40), v2);
  _Unwind_Resume(a1);
}

void sub_29AA9E194(uint64_t a1, uint64_t *a2)
{
  sub_29AA9E238(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_29AA9E238(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A4E0838(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_29AA9E294(uint64_t a1, uint64_t *a2)
{
  sub_29AA9E338(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_29AA9E338(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29AA36590(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

std::string *sub_29AA9E394(std::string *this, std::string *a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_29A11D6EC(this, a2, (a2 + v3));
  return this;
}

uint64_t sub_29AA9E3FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("N32pxrInternal__aapl__pxrReserved__15aaplUsdGclCodec22GclCodecUSDFormatTypesE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20709F0);
}

void **sub_29AA9E480(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AA9E3FC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AA9E514, &stru_2A20709F0);
  }
}

_DWORD *sub_29AA9E514@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29AA9E55C;
  a1[2] = &stru_2A20709F0;
  return result;
}

void sub_29AA9E55C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void **sub_29AA9E568(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1F9040(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v4 = MEMORY[0x29EDC94C8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AA9E5FC, v4);
  }
}

_BYTE *sub_29AA9E5FC@<X0>(void *a1@<X8>)
{
  result = operator new(1uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94C8];
  a1[1] = sub_29AA9E644;
  a1[2] = v3;
  return result;
}

void sub_29AA9E644(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

const void **sub_29AA9E650(uint64_t *a1, uint64_t a2)
{
  sub_29AA9E6E8(a1, a2, &__p);
  v3 = sub_29AA9E788(a1, __p);
  if ((v4 & 1) == 0)
  {
    v5 = __p;
    __p = 0;
    if (v5)
    {
      if (v8 == 1)
      {
        sub_29A00B454(v5 + 16);
      }

      operator delete(v5);
    }
  }

  return v3;
}

void sub_29AA9E6D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

unint64_t sub_29AA9E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  *(v6 + 1) = 0;
  sub_29A008E78(v6 + 2, *a2);
  *(v6 + 40) = *(a2 + 8);
  *(v6 + 7) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v6[64] = *(a2 + 32);
  *(a3 + 16) = 1;
  result = sub_29A12A708(a1, (v6 + 16));
  *(v6 + 1) = result;
  return result;
}

const void **sub_29AA9E788(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_29A12A708(a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = sub_29AA9E7EC(a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  sub_29A456F28(a1, v2);
  return v2;
}

const void **sub_29AA9E7EC(uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (sub_29A0EC4B8(a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_29A019AA0(a1, v18);
  }

  return 0;
}

_OWORD *sub_29AA9E938(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A00B0D0(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x38uLL);
    v6[2] = *a3;
    *(v6 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

uint64_t sub_29AA9E9CC(uint64_t a1, const void **a2)
{
  v3 = sub_29A09ADD4(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
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
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t *sub_29AA9EA38(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AA9EA58(uint64_t *a1, uint64_t *a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A1B0070(a1);
}

void *sub_29AA9EABC(_BYTE ***a1, void *a2)
{
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = **a1;
  }

  if (v3 >= 0)
  {
    v5 = *(*a1 + 23);
  }

  else
  {
    v5 = (*a1)[1];
  }

  sub_29AA9ED80(a2, v4, &v5[v4], 0x22u, 0x5Cu);
  return a2;
}

unsigned int *sub_29AA9EBB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A2070A00;
  return sub_29AA9EE84(a2, v2);
}

unint64_t sub_29AA9EBCC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  if (v8 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if (v8 >= 0)
  {
    v3 = HIBYTE(v8);
  }

  else
  {
    v3 = __p[1];
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v5, v2, v3);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return bswap64(0x9E3779B97F4A7C55 * v5);
}

void sub_29AA9EC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA9EC90(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29AA9ECF8(*a1, &v4);
    sub_29A1B0070(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A1B0070(&v4);
  }

  return *a1;
}

unsigned int *sub_29AA9ECF8@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  result = operator new(0x20uLL);
  v5 = result;
  if (*(a1 + 23) < 0)
  {
    result = sub_29A008D14(result, *a1, *(a1 + 8));
  }

  else
  {
    *result = *a1;
    *(result + 2) = *(a1 + 16);
  }

  atomic_store(0, v5 + 6);
  *a2 = v5;
  atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AA9ED80(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = sub_29A00911C(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_29AA9EE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_29AA9EE84(unsigned int **a1, uint64_t a2)
{
  result = operator new(0x20uLL);
  v5 = result;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result, *a2, *(a2 + 8));
  }

  else
  {
    *result = *a2;
    *(result + 2) = *(a2 + 16);
  }

  atomic_store(0, v5 + 6);
  *a1 = v5;
  atomic_fetch_add_explicit(v5 + 6, 1u, memory_order_relaxed);
  return result;
}

unint64_t *sub_29AA9EF0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  sub_29A19E29C(a1);
  v7[0] = &v9;
  v7[1] = &v8;
  return sub_29AA9EF68(a1, a3 - a2, v7);
}

unint64_t *sub_29AA9EF68(unint64_t *result, unint64_t a2, char ***a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (!v7)
    {
      result = sub_29A19E470(result, a2);
      v14 = result;
      v15 = **a3;
      v16 = *a3[1];
      if (v15 != v16)
      {
        v17 = result;
        do
        {
          v18 = *v15++;
          *v17 = v18;
          v17 = (v17 + 1);
        }

        while (v15 != v16);
      }

      goto LABEL_33;
    }

    if (!result[3])
    {
      v8 = atomic_load(v7 - 2);
      if (v8 == 1)
      {
        if (v3 < a2)
        {
          v9 = result[4];
          if (*(v9 - 8) < a2)
          {
            result = sub_29A19E470(result, a2);
            v7 = result;
            if (v3)
            {
              for (i = 0; i != v3; ++i)
              {
                *(result + i) = *(v9 + i);
              }
            }
          }

          v11 = **a3;
          v12 = *a3[1];
          while (v11 != v12)
          {
            v13 = *v11++;
            *(v7 + v3++) = v13;
          }
        }

        v14 = v7;
LABEL_33:
        if (v14 != v5[4])
        {
          pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
        }

        *v5 = a2;
        return result;
      }

      v7 = result[4];
    }

    if (v3 >= a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = *result;
    }

    result = sub_29A19E470(result, a2);
    v14 = result;
    if (v3)
    {
      v20 = result;
      do
      {
        v21 = *v7;
        v7 = (v7 + 1);
        *v20 = v21;
        v20 = (v20 + 1);
        --v19;
      }

      while (v19);
    }

    if (v3 < a2)
    {
      v22 = **a3;
      v23 = *a3[1];
      while (v22 != v23)
      {
        v24 = *v22++;
        *(result + v3++) = v24;
      }
    }

    goto LABEL_33;
  }

  return sub_29A19E29C(result);
}

void *sub_29AA9F28C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2070AC8 + 1;
  return result;
}

void sub_29AA9F750(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a14);
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  if (*(v35 + 223) < 0)
  {
    operator delete(*(v40 + 40));
  }

  v42 = *(v35 + 192);
  if (v42)
  {
    sub_29A014BEC(v42);
  }

  *(v41 - 112) = v40;
  sub_29A012C90((v41 - 112));
  *(v41 - 112) = v40 - 24;
  sub_29A012C90((v41 - 112));
  *(v41 - 112) = v39;
  sub_29A012C90((v41 - 112));
  sub_29A42FCE0(a9, *(v35 + 96));
  if (*(v35 + 87) < 0)
  {
    operator delete(*v38);
  }

  if (*(v35 + 63) < 0)
  {
    operator delete(*v37);
  }

  if (*(v35 + 39) < 0)
  {
    operator delete(*v36);
  }

  sub_29A321930();
}

std::string *sub_29AA9F8D4(std::string *this, std::string *a2)
{
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  sub_29A11D6EC(this, a2, v3);
  return this;
}

uint64_t sub_29AA9F92C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29AA9F968(result);
  }

  return result;
}

void sub_29AA9F968(uint64_t a1)
{
  v2 = a1 + 96;
  v3 = a1 + 88;
  sub_29A42FCE0(a1 + 88, *(a1 + 96));
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = (a1 + 160);
  sub_29A012C90(&v5);
  v5 = (a1 + 136);
  sub_29A012C90(&v5);
  v5 = (a1 + 112);
  sub_29A012C90(&v5);
  sub_29A42FCE0(v3, *(a1 + 96));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  sub_29A321930();
}

const void **sub_29AA9FA48(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AA9FC9C(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29AA9FC84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AA9FD68(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29AA9FC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  result = sub_29AA9FD0C(v8 + 2, a3);
  *(a4 + 16) = 1;
  return result;
}

void *sub_29AA9FD0C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 3);
  *(a2 + 3) = 0;
  __dst[3] = v5;
  return __dst;
}

void sub_29AA9FD68(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA9FDC4(v2 + 16);
    }

    operator delete(v2);
  }
}

void sub_29AA9FDC4(uint64_t a1)
{
  sub_29AA9F92C((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

char *sub_29AA9FE18@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29A21598C(v4, a1);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 12, 1u, memory_order_relaxed);
  return result;
}

const void **sub_29AA9FE7C(uint64_t *a1, uint64_t a2)
{
  sub_29AA9FF08(a1, a2, &__p);
  v3 = sub_29AA9E788(a1, __p);
  if ((v4 & 1) == 0)
  {
    v5 = __p;
    __p = 0;
    if (v5)
    {
      sub_29A0EC874(&v8, v5);
    }
  }

  return v3;
}

void sub_29AA9FEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A0EC874(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AA9FF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0;
  v6[1] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(v6 + 16, *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 1) = *a2;
    v6[4] = *(a2 + 16);
  }

  *(v7 + 40) = *(a2 + 24);
  *(a3 + 16) = 1;
  result = sub_29A12A708(a1, (v7 + 2));
  v7[1] = result;
  return result;
}

void sub_29AA9FFA8(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_29A0EC874(v3, v1);
  _Unwind_Resume(a1);
}

uint64_t **sub_29AA9FFC4(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v16 = result;
    v17 = v8;
    v18 = v8;
    if (v8)
    {
      v17 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = *(v9 + 14);
          *(v8 + 30) = *(v9 + 30);
          *(v8 + 14) = v10;
          v11 = sub_29A0286E4(v5, &v19, v18 + 4);
          sub_29A00B204(v5, v19, v11, v18);
          v18 = v17;
          if (v17)
          {
            v17 = sub_29A028760(v17);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          v8 = v18;
          if (v18)
          {
            v13 = a2 == a3;
          }

          else
          {
            v13 = 1;
          }

          v9 = a2;
        }

        while (!v13);
      }
    }

    result = sub_29AAA0158(&v16);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AAA01B0(v5, (a2 + 4));
      v14 = a2[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = a2[2];
          v13 = *v15 == a2;
          a2 = v15;
        }

        while (!v13);
      }

      a2 = v15;
    }

    while (v15 != a3);
  }

  return result;
}

uint64_t sub_29AAA0158(uint64_t a1)
{
  sub_29A019EE8(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29A019EE8(*a1, v2);
  }

  return a1;
}

const void **sub_29AAA01B0(uint64_t **a1, uint64_t a2)
{
  sub_29AAA022C(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29AAA0208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_29A01BC68(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29AAA022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(result + 2) = *a2;
    *(result + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
  return result;
}

void sub_29AAA02B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AAA02D4(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29AAA032C(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29AAA032C(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29AAA03B4(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29AAA03B4(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AAA022C(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

const void **sub_29AAA0438(uint64_t a1, const void **a2, __int128 *a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AAA068C(a1, v8, a3, v26);
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    i = v26[0];
    *v26[0] = *v22;
    *v22 = i;
  }

  else
  {
    v23 = v26[0];
    *v26[0] = *(a1 + 16);
    *(a1 + 16) = v23;
    *(v21 + 8 * v3) = a1 + 16;
    i = v26[0];
    if (*v26[0])
    {
      v24 = *(*v26[0] + 8);
      if ((v9 & (v9 - 1)) != 0)
      {
        if (v24 >= v9)
        {
          v24 %= v9;
        }
      }

      else
      {
        v24 &= v9 - 1;
      }

      *(*a1 + 8 * v24) = v26[0];
      i = v26[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29AAA0674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAA0780(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29AAA068C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x50uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  result = sub_29AAA06FC(v8 + 16, a3);
  *(a4 + 16) = 1;
  return result;
}

char *sub_29AAA06FC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 24);
  *(__dst + 40) = *(a2 + 40);
  *(__dst + 24) = v5;
  v6 = *(a2 + 7);
  *(__dst + 7) = v6;
  if (v6)
  {
    v7 = (v6 - 16);
    if (*(__dst + 6))
    {
      v7 = *(__dst + 6);
    }

    atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_29AAA0780(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AAA07DC();
    }

    operator delete(v2);
  }
}

char *sub_29AAA0830(uint64_t a1, const void **a2, uint64_t a3)
{
  v7 = sub_29A12A708(a1, a2);
  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = *(v13 + 1);
          if (v14 == v8)
          {
            if (sub_29A0EC4B8(a1, v13 + 2, a2))
            {
              return v13;
            }
          }

          else
          {
            if (v11 > 1)
            {
              if (v14 >= v9)
              {
                v14 %= v9;
              }
            }

            else
            {
              v14 &= v9 - 1;
            }

            if (v14 != v3)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v13 = operator new(0x40uLL);
  *v13 = 0;
  *(v13 + 1) = v8;
  *(v13 + 1) = *a3;
  *(v13 + 4) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(v13 + 40) = *(a3 + 24);
  *(v13 + 7) = *(a3 + 40);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v9 || (v16 * v9) < v15)
  {
    v17 = 1;
    if (v9 >= 3)
    {
      v17 = (v9 & (v9 - 1)) != 0;
    }

    v18 = v17 | (2 * v9);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_29A019AA0(a1, v20);
    v9 = *(a1 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *v13 = *v22;
LABEL_38:
    *v22 = v13;
    goto LABEL_39;
  }

  *v13 = *(a1 + 16);
  *(a1 + 16) = v13;
  *(v21 + 8 * v3) = a1 + 16;
  if (*v13)
  {
    v23 = *(*v13 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v23 >= v9)
      {
        v23 %= v9;
      }
    }

    else
    {
      v23 &= v9 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v13;
}

void sub_29AAA0A90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAA0AA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), ("P7CGImage" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &unk_2A2070B90);
}

void **sub_29AAA0B2C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AAA0AA8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AAA0BC0, &unk_2A2070B90);
  }
}

void *sub_29AAA0BC0@<X0>(void *a1@<X8>)
{
  result = operator new(8uLL);
  *result = 0;
  *a1 = result;
  a1[1] = sub_29AAA0C08;
  a1[2] = &unk_2A2070B90;
  return result;
}

void sub_29AAA0C08(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_29AAA0C14(uint64_t a1)
{
  sub_29A008E78(&v23, "public.avif");
  sub_29A008E78(&v25, "avif");
  v27 = 1061997773;
  LODWORD(v13[0]) = 0;
  sub_29AAA26EC(v18, v13, &v23);
  sub_29AAA279C((a1 + 136), v18);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  sub_29A008E78(v13, "public.heic");
  sub_29A008E78(&v15, "heic");
  v17 = 1061997773;
  LODWORD(v8[0]) = 1;
  sub_29AAA26EC(v18, v8, v13);
  sub_29AAA279C((a1 + 136), v18);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  sub_29A008E78(v8, "public.jpeg");
  sub_29A008E78(&v10, "jpg");
  v12 = 1061997773;
  LODWORD(v3[0]) = 2;
  sub_29AAA26EC(v18, v3, v8);
  sub_29AAA279C((a1 + 136), v18);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  sub_29A008E78(v3, "public.png");
  sub_29A008E78(&__p, "png");
  v7 = 1061997773;
  v2 = 3;
  sub_29AAA26EC(v18, &v2, v3);
  sub_29AAA279C((a1 + 136), v18);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }
}

void sub_29AAA0E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_29A33EBB8(v31 - 152);
  sub_29A0D2850(&__p);
  sub_29A0D2850(&a21);
  sub_29A0D2850(&a31);
  sub_29A0D2850(v31 - 88);
  _Unwind_Resume(a1);
}

void sub_29AAA0F38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29AAA0F28);
}

void sub_29AAA0F6C()
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v0 + 120));
  }

  JUMPOUT(0x29AAA0F30);
}

BOOL sub_29AAA0F84(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  Type = CGImageSourceGetType(v2);
  v4 = Type;
  if (!Type)
  {
    return v4;
  }

  Length = CFStringGetLength(Type);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding == -1)
  {
    return 0;
  }

  v7 = MaximumSizeForEncoding + 1;
  sub_29A02891C(&__p, MaximumSizeForEncoding + 1);
  v8 = __p;
  v9 = v13 - __p;
  if (v13 - __p != v7)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  CString = CFStringGetCString(v4, __p, v7, 0x8000100u);
  v4 = CString != 0;
  if (CString)
  {
    MEMORY[0x29C2C1A60](a1 + 40, __p);
  }

  v8 = __p;
  if (__p)
  {
LABEL_10:
    v13 = v8;
    operator delete(v8);
  }

LABEL_11:
  if (v9 != v7)
  {
    return 0;
  }

  return v4;
}

void sub_29AAA1060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAA107C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 48))
    {
      goto LABEL_8;
    }
  }

  else if (*(a1 + 63))
  {
    goto LABEL_8;
  }

  if (!sub_29AAA0F84(a1))
  {
    v4 = sub_29AABB028();
    sub_29A008E78(__p, "Failed to get input image type");
    sub_29AA5B750(v4, __p);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_8:
  if (*(a1 + 63) < 0)
  {
    sub_29A008D14(a2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *a2 = *(a1 + 40);
    *(a2 + 16) = *(a1 + 56);
  }
}

BOOL sub_29AAA1130(uint64_t a1)
{
  sub_29AAA107C(a1, __p);
  v2 = *(a1 + 128);
  v3 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v4 = v12;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 == v5)
  {
    if ((v12 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if (v6 >= 0)
    {
      v8 = *(a1 + 128);
    }

    else
    {
      v8 = *v2;
    }

    v9 = memcmp(v7, v8, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = 0;
    if (v12 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v9;
}

BOOL sub_29AAA11E0(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_29AAA107C(a1, &v9);
  if (v11 < 0)
  {
    if (*v10 == 21)
    {
      v6 = 0x636F6D2E696C6D2ELL;
      v7 = bswap64(*v9);
      if (v7 == 0x636F6D2E696C6D2ELL && (v6 = 0x6F70656E6578722DLL, v7 = bswap64(v9[1]), v7 == 0x6F70656E6578722DLL) && (v6 = 0x78722D696D616765, v7 = bswap64(*(v9 + 13)), v7 == 0x78722D696D616765))
      {
        v8 = 0;
      }

      else if (v7 < v6)
      {
        v8 = -1;
      }

      else
      {
        v8 = 1;
      }

      operator delete(v9);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      operator delete(v9);
    }

    return 1;
  }

  if (v11 != 21)
  {
    return 1;
  }

  v2 = 0x636F6D2E696C6D2ELL;
  v3 = bswap64(v9);
  if (v3 == 0x636F6D2E696C6D2ELL && (v2 = 0x6F70656E6578722DLL, v3 = bswap64(*v10), v3 == 0x6F70656E6578722DLL) && (v2 = 0x78722D696D616765, v3 = bswap64(*&v10[5]), v3 == 0x78722D696D616765))
  {
    v4 = 0;
  }

  else
  {
    v4 = v3 < v2 ? -1 : 1;
  }

  return v4 != 0;
}

uint64_t sub_29AAA1344(uint64_t a1)
{
  if (sub_29AAA1450(a1))
  {
    v2 = *(a1 + 96);
    if (!v2)
    {
      goto LABEL_7;
    }

    AlphaInfo = CGImageGetAlphaInfo(v2);
    if (AlphaInfo <= kCGImageAlphaNoneSkipFirst && ((1 << AlphaInfo) & 0x61) != 0)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 128);
    v9 = *(v8 + 23);
    if (v9 < 0)
    {
      if (v8[1] == 11)
      {
        v8 = *v8;
LABEL_17:
        v10 = *v8;
        v11 = *(v8 + 3);
        v5 = v10 == 0x6A2E63696C627570 && v11 == 0x6765706A2E63696CLL;
        return v5 | !sub_29AAA11E0(a1, *(a1 + 96));
      }
    }

    else if (v9 == 11)
    {
      goto LABEL_17;
    }

LABEL_7:
    v5 = 0;
    return v5 | !sub_29AAA11E0(a1, *(a1 + 96));
  }

  v7 = sub_29AABB028();
  sub_29A008E78(__p, "Failed to create the input image");
  sub_29AA5B750(v7, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

uint64_t sub_29AAA1450(uint64_t a1)
{
  if (*(a1 + 12) == 2)
  {
    return 1;
  }

  v2 = *(a1 + 88);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 96);
  if (v3 || (result = CGImageSourceCreateImageAtIndex(v2, 0, 0), v3 = result, (*(a1 + 96) = result) != 0))
  {
    v5 = CFGetTypeID(v3);
    return v5 == CGImageGetTypeID();
  }

  return result;
}

BOOL sub_29AAA14C8(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    return 0;
  }

  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable != 0;
  if (Mutable)
  {
    v5 = Mutable;
    v6 = CFNumberCreate(v2, kCFNumberFloatType, (*(a1 + 128) + 48));
    CFDictionaryAddValue(v5, *MEMORY[0x29EDBB1C8], v6);
    if (*(a1 + 9))
    {
      v7 = 875704422;
    }

    else
    {
      v7 = 875836518;
    }

    valuePtr = v7;
    v8 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    CFDictionaryAddValue(v5, *MEMORY[0x29EDBB1D0], v8);
    CGImageDestinationAddImage(*(a1 + 104), *(a1 + 96), v5);
    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    CFRelease(v5);
    if (!CGImageDestinationFinalize(*(a1 + 104)))
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_29AAA15FC(uint64_t a1, const std::__fs::filesystem::path *a2)
{
  v2 = a2;
  v4 = *MEMORY[0x29EDB8ED8];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  v5 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], a2, 0x8000100u);
  v6 = CFURLCreateWithFileSystemPath(v4, v5, kCFURLPOSIXPathStyle, 0);
  *(a1 + 88) = CGImageSourceCreateWithURL(v6, 0);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (*(a1 + 88))
  {
    if (sub_29AAA0F84(a1))
    {
      *(a1 + 112) = std::__fs::filesystem::__file_size(v2, 0);
      return 1;
    }

    v8 = sub_29AABB028();
    v9 = "Failed to get image type from source path";
  }

  else
  {
    v8 = sub_29AABB028();
    v9 = "Failed to get image from source path";
  }

  sub_29A008E78(__p, v9);
  sub_29AA5B750(v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t sub_29AAA1710(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    return 0;
  }

  v4 = *MEMORY[0x29EDB8ED8];
  sub_29A19E500(a2);
  v5 = CFDataCreateWithBytesNoCopy(v4, *(a2 + 32), *a2, *MEMORY[0x29EDB8EE8]);
  v6 = CGImageSourceCreateWithData(v5, 0);
  *(a1 + 88) = v6;
  if (v5)
  {
    CFRelease(v5);
    v6 = *(a1 + 88);
  }

  if (v6)
  {
    if (sub_29AAA0F84(a1))
    {
      *(a1 + 112) = *a2;
      return 1;
    }

    v8 = sub_29AABB028();
    v9 = "Failed to get image type from source buffer";
  }

  else
  {
    v8 = sub_29AABB028();
    v9 = "Failed to get image froum source buffer";
  }

  sub_29A008E78(__p, v9);
  sub_29AA5B750(v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t sub_29AAA1814(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != 2)
  {
    sub_29AAA1450(a1);
  }

  if (*(a1 + 96))
  {
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
    if (Mutable)
    {
      v6 = Mutable;
      v7 = *(a1 + 128);
      if (v7[23] < 0)
      {
        v7 = *v7;
      }

      v8 = CFStringCreateWithCString(v4, v7, 0x8000100u);
      v9 = CGImageDestinationCreateWithData(v6, v8, 1uLL, 0);
      *(a1 + 104) = v9;
      if (v9)
      {
        if (sub_29AAA14C8(a1))
        {
          Length = CFDataGetLength(v6);
          LOBYTE(v59[0]) = 0;
          __p[0] = v59;
          sub_29A19E2EC(a2, Length, __p);
          v11 = *a2;
          *(a1 + 120) = *a2;
          if (*(a1 + 10) & 1) != 0 || v11 < *(a1 + 112) || (*(a1 + 4))
          {
            v12 = CFDataGetLength(v6);
            sub_29A19E500(a2);
            v67.location = 0;
            v67.length = v12;
            CFDataGetBytes(v6, v67, *(a2 + 32));
            v13 = 0;
            if (!v8)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_29A008864(__p);
            v19 = v62;
            *(&v62 + *(v62 - 24) + 8) = *(&v62 + *(v62 - 24) + 8) & 0xFFFFFEFB | 4;
            *(&v64[0].__locale_ + *(v19 - 24)) = 2;
            std::ostream::operator<<();
            std::operator+<char>();
            v20 = std::string::append(&v50, ": ");
            v21 = *&v20->__r_.__value_.__l.__data_;
            v51.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&v51.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            v22 = std::string::append(&v51, "with the requested texture quality (");
            v23 = *&v22->__r_.__value_.__l.__data_;
            v52.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
            *&v52.__r_.__value_.__l.__data_ = v23;
            v22->__r_.__value_.__l.__size_ = 0;
            v22->__r_.__value_.__r.__words[2] = 0;
            v22->__r_.__value_.__r.__words[0] = 0;
            std::stringbuf::str();
            if ((v49 & 0x80u) == 0)
            {
              v24 = v48;
            }

            else
            {
              v24 = v48[0];
            }

            if ((v49 & 0x80u) == 0)
            {
              v25 = v49;
            }

            else
            {
              v25 = v48[1];
            }

            v26 = std::string::append(&v52, v24, v25);
            v27 = *&v26->__r_.__value_.__l.__data_;
            v53.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
            *&v53.__r_.__value_.__l.__data_ = v27;
            v26->__r_.__value_.__l.__size_ = 0;
            v26->__r_.__value_.__r.__words[2] = 0;
            v26->__r_.__value_.__r.__words[0] = 0;
            v28 = std::string::append(&v53, ") the size (");
            v29 = *&v28->__r_.__value_.__l.__data_;
            v54.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&v54.__r_.__value_.__l.__data_ = v29;
            v28->__r_.__value_.__l.__size_ = 0;
            v28->__r_.__value_.__r.__words[2] = 0;
            v28->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v47, *(a1 + 120) >> 10);
            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v47;
            }

            else
            {
              v30 = v47.__r_.__value_.__r.__words[0];
            }

            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v47.__r_.__value_.__l.__size_;
            }

            v32 = std::string::append(&v54, v30, size);
            v33 = *&v32->__r_.__value_.__l.__data_;
            v55.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
            *&v55.__r_.__value_.__l.__data_ = v33;
            v32->__r_.__value_.__l.__size_ = 0;
            v32->__r_.__value_.__r.__words[2] = 0;
            v32->__r_.__value_.__r.__words[0] = 0;
            v34 = std::string::append(&v55, "KB) ");
            v35 = *&v34->__r_.__value_.__l.__data_;
            v56.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
            *&v56.__r_.__value_.__l.__data_ = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            v36 = std::string::append(&v56, "would be larger than the original (");
            v37 = *&v36->__r_.__value_.__l.__data_;
            v57.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
            *&v57.__r_.__value_.__l.__data_ = v37;
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v46, *(a1 + 112) >> 10);
            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &v46;
            }

            else
            {
              v38 = v46.__r_.__value_.__r.__words[0];
            }

            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v39 = v46.__r_.__value_.__l.__size_;
            }

            v40 = std::string::append(&v57, v38, v39);
            v41 = *&v40->__r_.__value_.__l.__data_;
            v58.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
            *&v58.__r_.__value_.__l.__data_ = v41;
            v40->__r_.__value_.__l.__size_ = 0;
            v40->__r_.__value_.__r.__words[2] = 0;
            v40->__r_.__value_.__r.__words[0] = 0;
            v42 = std::string::append(&v58, "KB)");
            v43 = *&v42->__r_.__value_.__l.__data_;
            v60 = v42->__r_.__value_.__r.__words[2];
            *v59 = v43;
            v42->__r_.__value_.__l.__size_ = 0;
            v42->__r_.__value_.__r.__words[2] = 0;
            v42->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v55.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v54.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v53.__r_.__value_.__l.__data_);
            }

            if (v49 < 0)
            {
              operator delete(v48[0]);
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

            v44 = sub_29AABB028();
            sub_29AA69D84(v44, v59);
            if (SHIBYTE(v60) < 0)
            {
              operator delete(v59[0]);
            }

            __p[0] = *MEMORY[0x29EDC9528];
            v45 = *(MEMORY[0x29EDC9528] + 72);
            *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
            v62 = v45;
            v63 = MEMORY[0x29EDC9570] + 16;
            if (v65 < 0)
            {
              operator delete(v64[7].__locale_);
            }

            v63 = MEMORY[0x29EDC9568] + 16;
            std::locale::~locale(v64);
            std::iostream::~basic_iostream();
            MEMORY[0x29C2C4390](&v66);
            v13 = 803;
            if (!v8)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_26;
        }
      }

      else
      {
        v16 = sub_29AABB028();
        sub_29A008E78(__p, "Unable to create destination image");
        sub_29AA5B750(v16, __p);
        if (SHIBYTE(v62) < 0)
        {
          operator delete(__p[0]);
        }

        if (sub_29AAA14C8(a1))
        {
LABEL_25:
          v13 = 802;
          if (!v8)
          {
LABEL_27:
            CFRelease(v6);
            return v13;
          }

LABEL_26:
          CFRelease(v8);
          goto LABEL_27;
        }
      }

      v17 = sub_29AABB028();
      sub_29A008E78(__p, "Unable to compress image");
      sub_29AA5B750(v17, __p);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_25;
    }

    v15 = sub_29AABB028();
    sub_29A008E78(__p, "Unable to create output buffer");
    sub_29AA5B750(v15, __p);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    return 802;
  }

  else
  {
    v14 = sub_29AABB028();
    sub_29A008E78(__p, "Failed to open image");
    sub_29AA5B750(v14, __p);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    return 801;
  }
}

void sub_29AAA1EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59)
{
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_29A008B0C(&a59);
  _Unwind_Resume(a1);
}

BOOL sub_29AAA202C(std::string *this)
{
  v70[3] = *MEMORY[0x29EDCA608];
  v2 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v2 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size)
    {
      v4 = this->__r_.__value_.__r.__words[0];
      v3 = (this->__r_.__value_.__r.__words[0] + size);
      goto LABEL_6;
    }

    return 0;
  }

  if (!*(&this->__r_.__value_.__s + 23))
  {
    return 0;
  }

  v3 = (this + v2);
  v4 = this;
LABEL_6:
  if (v4 != v3)
  {
    do
    {
      v4->__r_.__value_.__s.__data_[0] = __tolower(v4->__r_.__value_.__s.__data_[0]);
      v4 = (v4 + 1);
    }

    while (v4 != v3);
    LOBYTE(v2) = *(&this->__r_.__value_.__s + 23);
  }

  v6 = this;
  if ((v2 & 0x80) != 0)
  {
    v6 = this->__r_.__value_.__r.__words[0];
  }

  if (v6->__r_.__value_.__s.__data_[0] == 46)
  {
    std::string::erase(this, 0, 1uLL);
  }

  sub_29A008E78(v12, "psd");
  sub_29A008E78(v13, "dng");
  sub_29A008E78(v14, "cr2");
  sub_29A008E78(v15, "cr3");
  sub_29A008E78(v16, "crw");
  sub_29A008E78(v17, "tif");
  sub_29A008E78(v18, "gif");
  sub_29A008E78(v19, "dxo");
  sub_29A008E78(v20, "erf");
  sub_29A008E78(v21, "srw");
  sub_29A008E78(v22, "raf");
  sub_29A008E78(v23, "3fr");
  sub_29A008E78(v24, "fff");
  sub_29A008E78(v25, "exr");
  sub_29A008E78(v26, "dcr");
  sub_29A008E78(v27, "mrw");
  sub_29A008E78(v28, "mos");
  sub_29A008E78(v29, "raw");
  sub_29A008E78(v30, "rwl");
  sub_29A008E78(v31, "bmp");
  sub_29A008E78(v32, "dds");
  sub_29A008E78(v33, "ico");
  sub_29A008E78(v34, "nrw");
  sub_29A008E78(v35, "nef");
  sub_29A008E78(v36, "orf");
  sub_29A008E78(v37, "orf");
  sub_29A008E78(v38, "orf");
  sub_29A008E78(v39, "raw");
  sub_29A008E78(v40, "rw2");
  sub_29A008E78(v41, "pef");
  sub_29A008E78(v42, "iiq");
  sub_29A008E78(v43, "sgi");
  sub_29A008E78(v44, "arw");
  sub_29A008E78(v45, "axr");
  sub_29A008E78(v46, "srf");
  sub_29A008E78(v47, "sr2");
  sub_29A008E78(v48, "tga");
  sub_29A008E78(v49, "ktx");
  sub_29A008E78(v50, "jp2");
  sub_29A008E78(v51, "jxl");
  sub_29A008E78(v52, "mpo");
  sub_29A008E78(v53, "pbm");
  sub_29A008E78(v54, "jpg");
  sub_29A008E78(v55, "png");
  sub_29A008E78(v56, "avif");
  sub_29A008E78(v57, "heic");
  sub_29A008E78(v58, "heics");
  sub_29A008E78(v59, "heif");
  sub_29A008E78(v60, "jpeg");
  sub_29A008E78(v61, "pvr");
  sub_29A008E78(v62, "pic");
  sub_29A008E78(v63, "svg");
  sub_29A008E78(v64, "tiff");
  sub_29A008E78(v65, "pict");
  sub_29A008E78(v66, "icns");
  sub_29A008E78(v67, "nefx");
  sub_29A008E78(v68, "astc");
  sub_29A008E78(v69, "webp");
  sub_29A008E78(v70, "avci");
  sub_29A9FDE68(v10, v12, 59);
  v7 = 177;
  do
  {
    if (SHIBYTE(v12[v7 - 1]) < 0)
    {
      operator delete(*&v10[v7 * 8]);
    }

    v7 -= 3;
  }

  while (v7 * 8);
  v8 = &v11 != sub_29A01BCCC(v10, &this->__r_.__value_.__l.__data_);
  sub_29A019EE8(v10, v11);
  return v8;
}

uint64_t sub_29AAA26EC(uint64_t a1, _DWORD *a2, __int128 *a3)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  if (*(a3 + 47) < 0)
  {
    sub_29A008D14((a1 + 32), *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v6 = *(a3 + 24);
    *(a1 + 48) = *(a3 + 5);
    *(a1 + 32) = v6;
  }

  *(a1 + 56) = *(a3 + 6);
  return a1;
}

void sub_29AAA2780(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_29AAA279C(uint64_t *a1, uint64_t a2)
{
  v4 = operator new(0x50uLL);
  v5 = *a2;
  *(v4 + 24) = *(a2 + 8);
  *(v4 + 5) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v4 + 8) = v5;
  *(v4 + 3) = v6;
  *(v4 + 8) = v7;
  *(v4 + 9) = v8;
  *v4 = 0;
  *(v4 + 1) = v5;
  v9 = sub_29AAA2870(a1, v4);
  if ((v10 & 1) == 0)
  {
    sub_29A348890((v4 + 16));
    operator delete(v4);
  }

  return v9;
}

void sub_29AAA2858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A892918(va, 0);
  _Unwind_Resume(a1);
}

uint64_t **sub_29AAA2870(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v5 = (a2 + 16);
  v4 = *(a2 + 16);
  *(v5 - 1) = v4;
  v6 = sub_29AAA28C8(a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  sub_29A456F28(a1, v2);
  return v2;
}

uint64_t **sub_29AAA28C8(uint64_t a1, unint64_t a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 8) == *a3)
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_29A019AA0(a1, v15);
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compressStage(char *a1)
{
  v1[3] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::UsdStage::Open(a1, 0, v1);
}

{
  pxrInternal__aapl__pxrReserved__::UsdStage::Open(a1, 0, v1);
}

void sub_29AAA2B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_29A184A10(&a9, 0);
    sub_29A5AD4D8();
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compressStage(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = sub_29AABB028();
  v7 = *v6;
  if (*v6)
  {
    v8 = os_signpost_id_generate(*v6);
    if (v8 + 1 >= 2 && os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "compressStage", &unk_29B9D452D, buf, 2u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    if (*a1)
    {
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
    }

    v11 = sub_29AABB028();
    sub_29A008E78(buf, "USDGclPlugin: Unsupported compress stage type");
    sub_29AA5B750(v11, buf);
    if (v14 < 0)
    {
      operator delete(*buf);
    }

    v10 = 83;
    if (v7 && v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v9 = sub_29AABB028();
    sub_29A008E78(buf, "USDGclPlugin: Unsupported compression type");
    sub_29AA5B750(v9, buf);
    if (v14 < 0)
    {
      operator delete(*buf);
    }

    v10 = 1;
    if (v7 && v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      *buf = 0;
LABEL_21:
      _os_signpost_emit_with_name_impl(&dword_299FE7000, v7, OS_SIGNPOST_INTERVAL_END, v8, "compressStage", &unk_29B9D452D, buf, 2u);
    }
  }

  return v10;
}

void sub_29AAA31BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    sub_29A184A10(&a9, 0);
    sub_29AAA42E0(&__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compressStage(uint64_t *a1, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2, uint64_t a3)
{
  v8[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(v7, a2);
  sub_29A008E78(&__p, "OutputUSDPath");
  v8[1] = &off_2A2044DD0;
  sub_29A1B01B8(v8, a3);
  pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(v7, &__p, v8, ":");
  sub_29A186B14(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *a1;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_AddRef();
}

void sub_29AAA353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_29A184A10(&a10, 0);
    sub_29A5AD4D8();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAA3630(uint64_t a1, uint64_t a2, int a3, const pxrInternal__aapl__pxrReserved__::VtDictionary *a4, const void ***a5, const void ****a6, __int16 a7)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  pxrInternal__aapl__pxrReserved__::UsdZipFile::UsdZipFile((a1 + 512));
  pxrInternal__aapl__pxrReserved__::UsdZipFileWriter::UsdZipFileWriter((a1 + 528));
  *(a1 + 536) = 0;
  sub_29A008E78((a1 + 544), "");
  *(a1 + 568) = 1;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 1065353216;
  *(a1 + 752) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 872) = a1 + 880;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 1065353216;
  *(a1 + 952) = 0u;
  *(a1 + 944) = a1 + 952;
  *(a1 + 976) = 0u;
  *(a1 + 968) = a1 + 976;
  *(a1 + 1000) = 0u;
  *(a1 + 992) = a1 + 1000;
  *(a1 + 1024) = 0u;
  *(a1 + 1016) = a1 + 1024;
  *(a1 + 1048) = 0u;
  *(a1 + 1040) = a1 + 1048;
  *(a1 + 1072) = 0u;
  *(a1 + 1064) = a1 + 1072;
  *(a1 + 1096) = 0u;
  *(a1 + 1088) = a1 + 1096;
  *(a1 + 1120) = 0u;
  *(a1 + 1112) = a1 + 1120;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1168) = 1065353216;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 0u;
  *(a1 + 1208) = 1065353216;
  *(a1 + 1216) = 850045863;
  *(a1 + 1224) = 0u;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 0;
  pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v14, a4);
  sub_29AAA45C8(&v13, a5);
  sub_29AAA3B9C(a1, a3, &v14, &v13, a6, a7);
}

void sub_29AAA38F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20)
{
  sub_29AAA3F44(&a19, a20);
  sub_29A184A10((v23 - 88), 0);
  std::mutex::~mutex((v20 + 1216));
  sub_29AAA41A4(v21);
  sub_29A0EB4E8(v20 + 1136);
  sub_29A019EE8(v20 + 1112, *(v20 + 1120));
  sub_29A019EE8(v20 + 1088, *(v20 + 1096));
  sub_29A019EE8(v20 + 1064, *(v20 + 1072));
  sub_29A019EE8(v20 + 1040, *(v20 + 1048));
  sub_29A019EE8(v20 + 1016, *(v20 + 1024));
  sub_29A019EE8(v20 + 992, *(v20 + 1000));
  sub_29A019EE8(v20 + 968, *(v20 + 976));
  sub_29A019EE8(v20 + 944, *(v20 + 952));
  sub_29AAA4224(v22);
  sub_29A019EE8(v20 + 872, *(v20 + 880));
  if (*(v20 + 871) < 0)
  {
    operator delete(*(v20 + 848));
  }

  if (*(v20 + 847) < 0)
  {
    operator delete(*(v20 + 824));
  }

  if (*(v20 + 823) < 0)
  {
    operator delete(*(v20 + 800));
  }

  if (*(v20 + 799) < 0)
  {
    operator delete(*(v20 + 776));
  }

  sub_29A321930();
}

void sub_29AAA3B9C(uint64_t a1, int a2, const void ****a3, uint64_t a4, const void ****a5, __int16 a6)
{
  v10 = (a1 + 394);
  *a1 = a6;
  *(a1 + 392) = a6 & 1;
  *(a1 + 393) = (a6 & 2) != 0;
  if ((a6 & 1) == 0)
  {
    a2 = 3;
  }

  *(a1 + 96) = a2;
  sub_29AA9F8D4((a1 + 120), "");
  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 496), a5);
  *v10 = 1;
  *(a1 + 403) = 0;
  *(a1 + 398) = 1;
  *(a1 + 408) = 0;
  *(v10 + 5) = 0;
  *(a1 + 410) = 1;
  *(a1 + 412) = 1;
  *(a1 + 112) = 2;
  *(a1 + 409) = os_variant_has_internal_content();
  if (a1 + 32 != a4)
  {
    sub_29AAA3D10((a1 + 32), *a4, (a4 + 8));
  }

  pxrInternal__aapl__pxrReserved__::VtDictionary::operator=((a1 + 472), a3);
  *(a1 + 464) = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::UsdStage>::_RemoveRef();
}

uint64_t **sub_29AAA3D10(uint64_t **result, __int128 *a2, __int128 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v18[0] = (v8 + 4);
          v18[1] = (v8 + 7);
          sub_29AAA3EA0(v18, (v9 + 2));
          v10 = sub_29A0286E4(v5, v18, v17 + 4);
          sub_29A00B204(v5, v18[0], v10, v17);
          v17 = v16;
          if (v16)
          {
            v16 = sub_29A028760(v16);
          }

          v11 = *(v9 + 1);
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v17;
          if (v17)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_29AAA3EEC(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29AAA3FF4(v5, a2 + 2);
      v13 = *(a2 + 1);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = *(a2 + 2);
          v12 = *v14 == a2;
          a2 = v14;
        }

        while (!v12);
      }

      a2 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

void sub_29AAA3E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAA3EEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AAA3EA0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != (a2 + 24))
  {
    sub_29AA9FFC4(v4, *(a2 + 24), (a2 + 32));
  }

  return a1;
}

uint64_t sub_29AAA3EEC(uint64_t a1)
{
  sub_29AAA3F44(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_29AAA3F44(*a1, v2);
  }

  return a1;
}

void sub_29AAA3F44(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AAA3F44(a1, *a2);
    sub_29AAA3F44(a1, a2[1]);
    sub_29AAA3FA0((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AAA3FA0(uint64_t a1)
{
  sub_29A019EE8(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

const void **sub_29AAA3FF4(uint64_t **a1, __int128 *a2)
{
  sub_29AAA4064(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29AAA404C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AAA4148(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29AAA4064@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x50uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29AAA40D0(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

void *sub_29AAA40D0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_29AAA02D4(__dst + 3, a2 + 3);
  return __dst;
}

void sub_29AAA412C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AAA4148(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AAA3FA0(v2 + 32);
    }

    operator delete(v2);
  }
}

void **sub_29AAA41A4(void **a1)
{
  sub_29AAA41E0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAA41E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29AAA07DC();
  }
}

uint64_t sub_29AAA4224(uint64_t a1)
{
  sub_29AAA4260(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAA4260(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AA9FDC4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AAA42A4(uint64_t a1)
{
  sub_29A4E0838(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AAA42E0(uint64_t a1)
{
  for (i = (a1 + 1192); ; sub_29A19E29C(i + 5))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  if (*(a1 + 410))
  {
    sub_29AA9DAA4(a1);
  }

  sub_29AA90800(a1);
  std::mutex::~mutex((a1 + 1216));
  sub_29AAA41A4((a1 + 1176));
  sub_29A0EB4E8(a1 + 1136);
  sub_29A019EE8(a1 + 1112, *(a1 + 1120));
  sub_29A019EE8(a1 + 1088, *(a1 + 1096));
  sub_29A019EE8(a1 + 1064, *(a1 + 1072));
  sub_29A019EE8(a1 + 1040, *(a1 + 1048));
  sub_29A019EE8(a1 + 1016, *(a1 + 1024));
  sub_29A019EE8(a1 + 992, *(a1 + 1000));
  sub_29A019EE8(a1 + 968, *(a1 + 976));
  sub_29A019EE8(a1 + 944, *(a1 + 952));
  sub_29AAA4224(a1 + 904);
  sub_29A019EE8(a1 + 872, *(a1 + 880));
  if (*(a1 + 871) < 0)
  {
    operator delete(*(a1 + 848));
  }

  if (*(a1 + 847) < 0)
  {
    operator delete(*(a1 + 824));
  }

  if (*(a1 + 823) < 0)
  {
    operator delete(*(a1 + 800));
  }

  if (*(a1 + 799) < 0)
  {
    operator delete(*(a1 + 776));
  }

  sub_29A321930();
}

uint64_t *sub_29AAA45C8(uint64_t *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_29AAA4620(a1, *a2, a2 + 1);
  return a1;
}

uint64_t *sub_29AAA4620(uint64_t *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_29AAA46A8(v5, (v5 + 1), v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *sub_29AAA46A8(uint64_t **a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AAA4064(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void sub_29AAA472C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BB0, 0, "AAPL_GCL_CODEC_MESH", 0);
  v0 = sub_29AAA47C0();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "AAPL_GCL_CODEC_MESH", "converting mesh");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BB0, 1, "AAPL_GCL_CODEC_MESH_ENCODER", 0);
  v1 = sub_29AAA47C0() + 4;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1, "AAPL_GCL_CODEC_MESH_ENCODER", "encoding mesh");
}

uint64_t sub_29AAA47C0()
{
  if ((atomic_load_explicit(&qword_2A14F8F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8F90))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8F88 = v1;
    __cxa_guard_release(&qword_2A14F8F90);
  }

  return qword_2A14F8F88;
}

void sub_29AAA483C()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 0, "GclCodecErrorCode::OK", "No issue found!");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 1, "GclCodecErrorCode::INVALID_COMPRESSION_TYPE", "Invalid compression type parameter");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 2, "GclCodecErrorCode::INVALID_MESH_COMPRESSION_TYPE", "Invalid mesh compression type parameter");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 3, "GclCodecErrorCode::INVALID_TEXTURE_COMPRESSION_TYPE", "Invalid texture compression type parameter");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 4, "GclCodecErrorCode::INVALID_PARAMETER", "Invalid parameter");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 5, "GclCodecErrorCode::WRONG_OUTPUT_FILE_EXTENSION", "Output file needs to be a .gcl");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 6, "GclCodecErrorCode::FILENAME_OR_REFPATH_TOO_LONG", "filename and refPath parameters should be limited to 255 characters");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 10, "GclCodecErrorCode::PARAMETER_ERROR_UNIFY_AND_ORDER", "Parameters unify indices and preserve vertex order cannot be both set to true");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 11, "GclCodecErrorCode::CANNOT_PRESERVE_VERTEX_ORDER_UNIFICATION_REQUIRED", "Cannot preserve order, index unification is required");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 12, "GclCodecErrorCode::CANNOT_REORDER_DATA", "Cannot reorder data");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 13, "GclCodecErrorCode::INDEX_UNIFICATION_REQUIRED", "Input requires index unification : either provide unified indices (all attributes are vertex interpolated without indices specified), or set parameter unifyIndices to true (only if preserveVertexOrder is false).");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 14, "GclCodecErrorCode::MISSING_ATTRIBUTE_DESCRIPTION", "Missing description for an attribute");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 15, "GclCodecErrorCode::UNSUPPORTED_INTERPOLATION", "Interpolation is not supported by the compression plugin");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 16, "GclCodecErrorCode::UNSUPPORTED_USD_DATATYPE", "Data type is not supported by the compression plugin");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 17, "GclCodecErrorCode::UNSUPPORTED_ATTRIBUTE_NOT_PRIMVAR", "Non-primvar attribute not supported for compression");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 18, "GclCodecErrorCode::UNSUPPORTED_ATTRIBUTE_NO_VALUE", "Attribute with no value");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 25, "GclCodecErrorCode::UNSUPPORTED_SUBSET_ELEMENT_TYPE", "Subset element type not supported");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 50, "GclCodecErrorCode::FILE_NOT_FOUND", "File was not found");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 51, "GclCodecErrorCode::ASSET_SIZE_ERROR", "Asset as a size of zero or negative");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 52, "GclCodecErrorCode::ASSET_DATA_ACCESS_ERROR", "Data from asset cannot be accessed");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 100, "GclCodecErrorCode::INCOMPATIBLE_BITSTREAM", "Incompatible bitstream");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 101, "GclCodecErrorCode::INVALID_VERSION", "Invalid bitstream version");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 110, "GclCodecErrorCode::CANNOT_COMPRESS_MESH", "Cannot compress mesh");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 111, "GclCodecErrorCode::UNABLE_TO_GENERATE_HEADER", "Unable to generate header");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 112, "GclCodecErrorCode::QUANTIZATION_ERROR", "Quantization");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 113, "GclCodecErrorCode::INCOMPATIBLE_QUANTIZATION", "Incompatible quantization for given data type");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 150, "GclCodecErrorCode::CANNOT_DECOMPRESS_MESH", "Cannot decompress mesh");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 151, "GclCodecErrorCode::UNABLE_TO_READ_HEADER", "Invalid bitstream header");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 199, "GclCodecErrorCode::EMPTY_GEOMETRY", "Empty geometry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 200, "GclCodecErrorCode::UNSUPPORTED_MESH", "Unsupported mesh");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 201, "GclCodecErrorCode::INVALID_MESH", "Invalid mesh");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 202, "GclCodecErrorCode::INDEX_UNIFICATION_ERROR", "Error during index unification");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 210, "GclCodecErrorCode::ATTRIBUTE_INVALID_VALUE_COUNT", "Number of attribute elements not compatible with geometry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 211, "GclCodecErrorCode::ATTRIBUTE_INVALID_INDEX_COUNT", "Number of attribute indices not compatible with geometry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 212, "GclCodecErrorCode::ATTRIBUTE_INVALID_INDEX_VALUE", "Attribute index out of bound");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 213, "GclCodecErrorCode::ATTRIBUTE_UNABLE_TO_READ", "Unable to read attribute data or indices (if any) from USD");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 216, "GclCodecErrorCode::ATTRIBUTE_INVALID_VALUE", "Attribute value is invalid");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 255, "GclCodecErrorCode::UPDATE_REFERENCE_ISSUE", "Unable to update reference list");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 256, "GclCodecErrorCode::UNABLE_TO_REPORT_COMPRESSION_RESULT", "Unable to report result info from compression");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 300, "GclCodecErrorCode::JSON_NOT_VALID", "Not a (valid) JSON file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 301, "GclCodecErrorCode::JSON_INCOMPATIBLE", "Not a GCL-USD compatible Json file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 302, "GclCodecErrorCode::JSON_VERSION_ISSUE", "JSON version issue");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 303, "GclCodecErrorCode::JSON_HEADER", "Error reading JSON header");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 310, "GclCodecErrorCode::JSON_MESH_UNKNOWN", "Mesh not present in JSON");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 400, "GclCodecErrorCode::CANNOT_OPEN_FILE", "Error when opening file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 401, "GclCodecErrorCode::CANNOT_CLOSE_FILE", "Error when closing file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 402, "GclCodecErrorCode::CANNOT_READ_FROM_FILE", "Error when reading from file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 403, "GclCodecErrorCode::CANNOT_WRITE_TO_FILE", "Error when writing to file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 500, "GclCodecErrorCode::USDZ_UNABLE_TO_EXTRACT_FILES", "Error when extracting files from USDZ");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 81, "GclCodecErrorCode::UNABLE_TO_COMPRESS_STAGE", "Error when compressing a stage");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 80, "GclCodecErrorCode::STAGE_PARSE_ERROR", "Error when parsing the stage");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 82, "GclCodecErrorCode::UNABLE_TO_SAVE_STAGE", "Error when saving the stage");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 501, "GclCodecErrorCode::USDZ_UNABLE_TO_ADD_FILES", "Error when adding files to usdz");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 502, "GclCodecErrorCode::USDZ_PARSE_ERROR", "Error when parsing the usdz file");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 404, "GclCodecErrorCode::CANNOT_REMOVE_TEMP", "Error when removing the temporary folder");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 405, "GclCodecErrorCode::CANNOT_COPY_FILE", "Error when copying files");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 406, "GclCodecErrorCode::CANNOT_CREATE_DIRECTORY", "Error when creating directory");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 503, "GclCodecErrorCode::USDZ_EXPORT_ERROR", "Error when exporting USDZ");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 504, "GclCodecErrorCode::USDZ_BUFFER_EXPORT_ERROR", "Error when exporting USDZ buffer");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 83, "GclCodecErrorCode::UNSUPPORTED_STAGE_COMPRESSION_TYPE", "Unsupported compress stage type");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 214, "GclCodecErrorCode::FAILED_TO_MERGE_DICTS", "Failed to merge dictionaries");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 7, "GclCodecErrorCode::WRONG_OUTPUT_PATH", "Output path has to be writable or if the path exists, the overwrite has to be enabled");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 215, "GclCodecErrorCode::MESH_INCONSISTENT_FACES_INDICES", "Inconsistent indices on faces");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 84, "GclCodecErrorCode::INVALID_INPUT_STAGE", "Invalid input stage object");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 600, "GclCodecErrorCode::INVALID_RESULTS", "Invalid results object");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 777, "GclCodecErrorCode::UNSUPPORTED_FEATURE", "Feature not supported");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 800, "GclCodecErrorCode::UNSUPPORTED_IMAGE_COMPRESSION", "Unsupported image compression type");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 801, "GclCodecErrorCode::UNABLE_TO_OPEN_IMAGE", "Unable to open image");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 802, "GclCodecErrorCode::UNABLE_TO_COMPRESS_IMAGE", "Unable to compress image");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 803, "GclCodecErrorCode::LESS_EFFICIENT_TO_COMRPESS_IMAGE", "It is less efficient to compress the image");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 85, "GclCodecErrorCode::CANNOT_CLONE_STAGE", "Cannot clone stage");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 86, "GclCodecErrorCode::UNABLE_TO_BUILD_SCENE_GRAPH", "Unable to build scene graph");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 90, "GclCodecErrorCode::UNABLE_TO_SAVE_LAYERS", "Unable to save layers");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 91, "GclCodecErrorCode::UNABLE_TO_EXPORT_LAYER", "Unable to export layer");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 8, "GclCodecErrorCode::UNSUPPORTED_INPUT_FORMAT", "Unsupported input format");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 9, "GclCodecErrorCode::UNSUPPORTED_OUTPUT_FORMAT", "Unsupported output format");

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2070BC0, 407, "GclCodecErrorCode::CANNOT_CREATE_TEMP_DIRECTORY", "Unable to create temporary folder");
}

uint64_t sub_29AAA50D8(uint64_t ***a1, uint64_t a2)
{
  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    if (v4[1] == 6 && **v4 == 1852403568 && *(*v4 + 2) == 29556)
    {
      return 1;
    }

    if (v4[1] != 16)
    {
      goto LABEL_16;
    }

    v4 = *v4;
    goto LABEL_12;
  }

  v5 = *(*a1 + 23);
  if (v5 != 6)
  {
    if (v5 != 16)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = *v4;
    v7 = v4[1];
    if (v8 != 0x6E69726564726F5FLL || v7 != 0x73656369646E4967)
    {
      goto LABEL_16;
    }

    return 1;
  }

  v13 = *v4;
  v14 = *(v4 + 2);
  if (v13 == 1852403568 && v14 == 29556)
  {
    return 1;
  }

LABEL_16:
  v37 = sub_29AA685E0(*a1 + 56);
  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&v37))
  {
    return 0;
  }

  *&v32 = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&v37);
  CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName(&v32);
  if (*(CPPTypeName + 23) < 0)
  {
    sub_29A008D14(&v35, *CPPTypeName, *(CPPTypeName + 8));
  }

  else
  {
    v12 = *CPPTypeName;
    v36 = *(CPPTypeName + 16);
    v35 = v12;
  }

  if (*(*a1 + 148) == 1)
  {
    sub_29A580660(&v31, (a2 + 8), (a2 + 16));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase(&v28, &v31);
    v29 = 0;
    v28.__r_.__value_.__r.__words[0] = &unk_2A2060598;
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v30);
    v27.__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvarsAPI::CreatePrimvar(&v28, &v30, &v37, &v32);
  }

  if ((*a1)[6] == (*a1)[7])
  {
    sub_29A580660(&v32, (a2 + 8), (a2 + 16));
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v31);
    pxrInternal__aapl__pxrReserved__::UsdPrim::CreateAttribute(&v32, &v31, &v37, 0, &v28);
    if ((v31.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v31.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v34 & 7) != 0)
    {
      atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v33 + 1);
    sub_29A1DE3A4(&v33);
    if (*(&v32 + 1))
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v32 + 1), v25);
    }

    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(&v32, &v28);
    sub_29AA600AC(*(*a1 + 136), &v31);
    pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::SetInterpolation(&v32, &v31);
  }

  v16 = sub_29AABB028();
  std::operator+<char>();
  v17 = std::string::append(&v30, "! ");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v31.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v31.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v31, "Indices size ");
  v20 = *&v19->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v27, ((*a1)[7] - (*a1)[6]) >> 2);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(&v28, v21, size);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v33 = v23->__r_.__value_.__r.__words[2];
  v32 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v16, &v32);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v10 = 0;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35);
  }

  return v10;
}

void sub_29AAA5F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_29A7A079C(v35 - 96);
  sub_29A5888DC(&a16);
  if (*(v35 - 25) < 0)
  {
    operator delete(*(v35 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_29AAA6184(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAE820((*a2 + 24), v5, (*a2 + 72), (*a2 + 140), 0))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_29AAA6264(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAF21C((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void sub_29AAA6344(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAFD34((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AAA6424(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB06A8((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29AAA6504(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB1038((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AAA65E4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB19A4((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AAA66C4(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAFD34((*a2 + 24), v8, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A19DBEC(v8);
          v5 = 0;
          *v4 = *(v9 + 4 * (v2 | v3));
          v4 = (&v7 + 4);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA26404(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA6800(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAFD34((*a2 + 24), v6, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          sub_29A19DBEC(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29A7AE8D8(v8, &v5);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA6928(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAFD34((*a2 + 24), v7, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A19DBEC(v7);
          *(&v7[-1] + v4) = *(v8 + v5);
          v5 += 4;
          v4 += 4;
        }

        while (v4 != 16);
        sub_29AA7ECDC(v9, &v6);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA6A5C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAE820((*a2 + 24), v8, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A18E624(v8);
          v5 = 0;
          *v4 = *(v9 + 4 * (v2 | v3));
          v4 = (&v7 + 4);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA27424(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA6B98(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAE820((*a2 + 24), v6, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          sub_29A18E624(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29A8F3D60(v8, &v5);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA6CC0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAE820((*a2 + 24), v7, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v7);
          *(&v7[-1] + v4) = *(v8 + v5);
          v5 += 4;
          v4 += 4;
        }

        while (v4 != 16);
        sub_29AA7EA28(v9, &v6);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA6DF4(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAF21C((*a2 + 24), v8, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A190088(v8);
          v5 = 0;
          *v4 = *(v9 + 8 * (v2 | v3));
          v4 = (&v7 + 8);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29A8B06A0(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA6F30(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAF21C((*a2 + 24), v6, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 24; i += 8)
        {
          sub_29A190088(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29AA7EAD0(v8, &v5);
        v3 += 3;
        v2 += 24;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA7058(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAF21C((*a2 + 24), v7, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A190088(v7);
          *(v6 + v4) = *(v8 + v5);
          v5 += 8;
          v4 += 8;
        }

        while (v4 != 32);
        sub_29AA7EB88(v9, v6);
        v3 += 4;
        v2 += 32;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA718C(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (!sub_29AAAE820((*a2 + 24), v10, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v10[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v9;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A18E624(v10);
          v7 = *(v11 + 4 * (v2 | v3));
          if (v7 == 0.0)
          {
            v8 = HIWORD(LODWORD(v7));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
          {
            v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
          }

          v5 = 0;
          *v4 = v8;
          v4 = (&v9 + 2);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA7E8D8(v12, &v9);
        v2 += 2;
      }

      while (v2 < *&v10[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA730C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!sub_29AAAE820((*a2 + 24), v9, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v9[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v9);
          v6 = *(v10 + v5);
          if (v6 == 0.0)
          {
            v7 = HIWORD(LODWORD(v6));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
          {
            v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
          }

          *(&v8 + v4) = v7;
          v4 += 2;
          v5 += 4;
        }

        while (v4 != 6);
        sub_29A8F3EC0(v11, &v8);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v9[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA7484(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!sub_29AAAE820((*a2 + 24), v9, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v9[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v9);
          v6 = *(v10 + v5);
          if (v6 == 0.0)
          {
            v7 = HIWORD(LODWORD(v6));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
          {
            v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
          }

          *(&v8 + v4) = v7;
          v5 += 4;
          v4 += 2;
        }

        while (v4 != 8);
        sub_29AA7E980(v11, &v8);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v9[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA75FC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAE820((*a2 + 24), v5, (*a2 + 72), (*a2 + 140), 0))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_29AAA76DC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAF21C((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void sub_29AAA77BC(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAAFD34((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AAA789C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB06A8((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29AAA797C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB1038((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AAA7A5C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  if (sub_29AAB19A4((*a2 + 24), v5, (*a2 + 72), (*a2 + 140)))
  {
    v2 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v2, &__p);
    if (v4 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
  }

  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AAA7B3C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAFD34((*a2 + 24), v8, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A19DBEC(v8);
          v5 = 0;
          *v4 = *(v9 + 4 * (v2 | v3));
          v4 = (&v7 + 4);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA26404(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA7C78(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAFD34((*a2 + 24), v6, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          sub_29A19DBEC(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29A7AE8D8(v8, &v5);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA7DA0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAFD34((*a2 + 24), v7, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A19DBEC(v7);
          *(&v7[-1] + v4) = *(v8 + v5);
          v5 += 4;
          v4 += 4;
        }

        while (v4 != 16);
        sub_29AA7ECDC(v9, &v6);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AAA7ED4(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAE820((*a2 + 24), v8, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A18E624(v8);
          v5 = 0;
          *v4 = *(v9 + 4 * (v2 | v3));
          v4 = (&v7 + 4);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA27424(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA8010(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAE820((*a2 + 24), v6, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 12; i += 4)
        {
          sub_29A18E624(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29A8F3D60(v8, &v5);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA8138(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAE820((*a2 + 24), v7, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v7);
          *(&v7[-1] + v4) = *(v8 + v5);
          v5 += 4;
          v4 += 4;
        }

        while (v4 != 16);
        sub_29AA7EA28(v9, &v6);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA826C(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_29AAAF21C((*a2 + 24), v8, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v8[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v7;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A190088(v8);
          v5 = 0;
          *v4 = *(v9 + 8 * (v2 | v3));
          v4 = (&v7 + 8);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29A8B06A0(v10, &v7);
        v2 += 2;
      }

      while (v2 < *&v8[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA83A8(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (!sub_29AAAF21C((*a2 + 24), v6, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v6[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        for (i = 0; i != 24; i += 8)
        {
          sub_29A190088(v6);
          *(&v5 + i) = *(v7 + v2 + i);
        }

        sub_29AA7EAD0(v8, &v5);
        v3 += 3;
        v2 += 24;
      }

      while (v3 < *&v6[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA84D0(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (!sub_29AAAF21C((*a2 + 24), v7, (*a2 + 72), (*a2 + 140)))
  {
    if (*&v7[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A190088(v7);
          *(v6 + v4) = *(v8 + v5);
          v5 += 8;
          v4 += 8;
        }

        while (v4 != 32);
        sub_29AA7EB88(v9, v6);
        v3 += 4;
        v2 += 32;
      }

      while (v3 < *&v7[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AAA8604(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if (!sub_29AAAE820((*a2 + 24), v10, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v10[0])
    {
      v2 = 0;
      do
      {
        v3 = 0;
        v4 = &v9;
        v5 = 1;
        do
        {
          v6 = v5;
          sub_29A18E624(v10);
          v7 = *(v11 + 4 * (v2 | v3));
          if (v7 == 0.0)
          {
            v8 = HIWORD(LODWORD(v7));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
          {
            v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
          }

          v5 = 0;
          *v4 = v8;
          v4 = (&v9 + 2);
          v3 = 1;
        }

        while ((v6 & 1) != 0);
        sub_29AA7E8D8(v12, &v9);
        v2 += 2;
      }

      while (v2 < *&v10[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA8784(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!sub_29AAAE820((*a2 + 24), v9, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v9[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v9);
          v6 = *(v10 + v5);
          if (v6 == 0.0)
          {
            v7 = HIWORD(LODWORD(v6));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
          {
            v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
          }

          *(&v8 + v4) = v7;
          v4 += 2;
          v5 += 4;
        }

        while (v4 != 6);
        sub_29A8F3EC0(v11, &v8);
        v3 += 3;
        v2 += 12;
      }

      while (v3 < *&v9[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AAA88FC(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (!sub_29AAAE820((*a2 + 24), v9, (*a2 + 72), (*a2 + 140), 0))
  {
    if (*&v9[0])
    {
      v2 = 0;
      v3 = 0;
      do
      {
        v4 = 0;
        v5 = v2;
        do
        {
          sub_29A18E624(v9);
          v6 = *(v10 + v5);
          if (v6 == 0.0)
          {
            v7 = HIWORD(LODWORD(v6));
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
          {
            v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v7) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
          }

          *(&v8 + v4) = v7;
          v5 += 4;
          v4 += 2;
        }

        while (v4 != 8);
        sub_29AA7E980(v11, &v8);
        v3 += 4;
        v2 += 16;
      }

      while (v3 < *&v9[0]);
    }

    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

uint64_t sub_29AAA8A74(uint64_t a1, int **a2)
{
  if (*(a2 + 23) < 0)
  {
    if (a2[1] == 6 && **a2 == 1852403568 && *(*a2 + 2) == 29556)
    {
      return 1;
    }

    if (a2[1] != 7)
    {
      goto LABEL_16;
    }

    v2 = *a2;
    goto LABEL_12;
  }

  if (*(a2 + 23) != 6)
  {
    v2 = a2;
    if (*(a2 + 23) != 7)
    {
      goto LABEL_16;
    }

LABEL_12:
    v4 = *v2;
    v5 = *(v2 + 3);
    if (v4 != 1836216174 || v5 != 1936482669)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (*a2 != 1852403568 || *(a2 + 2) != 29556)
  {
LABEL_16:
    sub_29A580660(&v11, (a1 + 8), (a1 + 16));
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v10);
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetAttribute(&v11, &v10, v13);
    if ((v10.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((v10.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v12 & 7) != 0)
    {
      atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v11.__r_.__value_.__r.__words[2] + 1);
    sub_29A1DE3A4(&v11.__r_.__value_.__r.__words[2]);
    if (v11.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v11.__r_.__value_.__l.__size_, v7);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v13);
  }

  return 1;
}

void sub_29AAA9920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  sub_29A5888DC(v53 - 160);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  v55 = *(v53 - 88);
  if (v55)
  {
    sub_29A014BEC(v55);
  }

  sub_29A5888DC(v53 - 80);
  _Unwind_Resume(a1);
}

void sub_29AAA9BA4()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_29AAA9C88()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
}

void sub_29AAA9D6C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AAA9E50()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
}

void sub_29AAA9F34()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AAAA018()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AAAA0FC()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
}

void sub_29AAAA1E0()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
}

void sub_29AAAA38C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void sub_29AAAA540()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
}

void sub_29AAAA6F4()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
}

void sub_29AAAA8A8()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
}

void sub_29AAAAA64()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
}

void sub_29AAAAC14()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
}

void sub_29AAAADD0()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
}

void sub_29AAAAF8C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
}

void sub_29AAAB154()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
}

void sub_29AAAB31C()
{
  v2 = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
}

void sub_29AAAB4E4(uint64_t a1, const pxrInternal__aapl__pxrReserved__::Usd_PrimData *a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3, a2);
  }

  *(a1 + 8) = *(a2 + 1);
  *(a2 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AAAB570()
{
  __src = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
}

void sub_29AAAB688()
{
  __src = 0;
  *__n = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AAAB79C()
{
  __src = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AAAB8B4()
{
  __src = 0;
  v0 = 0u;
  v1 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned long long>>();
}

void sub_29AAAB9CC(const pxrInternal__aapl__pxrReserved__::UsdAttribute *a1)
{
  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::UsdGeomPrimvar(v8, a1);
  v2 = sub_29A5A6058(a1);
  if ((*v2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v2);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v5 = *EmptyString;
    v7 = EmptyString[2];
    __dst = v5;
  }

  pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsPrimvar(v8, v3);
}

BOOL sub_29AAABFB8(const void **a1)
{
  v43[3] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14F8FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8FB0))
  {
    sub_29A008E78(v4, "BOOL");
    sub_29A008E78(v5, "uchar");
    sub_29A008E78(v6, "int");
    sub_29A008E78(v7, "uint");
    sub_29A008E78(v8, "half");
    sub_29A008E78(v9, "float");
    sub_29A008E78(v10, "double");
    sub_29A008E78(v11, "int2");
    sub_29A008E78(v12, "int3");
    sub_29A008E78(v13, "int4");
    sub_29A008E78(v14, "half2");
    sub_29A008E78(v15, "half3");
    sub_29A008E78(v16, "half4");
    sub_29A008E78(v17, "float2");
    sub_29A008E78(v18, "float3");
    sub_29A008E78(v19, "float4");
    sub_29A008E78(v20, "double2");
    sub_29A008E78(v21, "double3");
    sub_29A008E78(v22, "double4");
    sub_29A008E78(v23, "point3f");
    sub_29A008E78(v24, "point3d");
    sub_29A008E78(v25, "point3h");
    sub_29A008E78(v26, "normal3f");
    sub_29A008E78(v27, "normal3d");
    sub_29A008E78(v28, "normal3h");
    sub_29A008E78(v29, "vector3f");
    sub_29A008E78(v30, "vector3d");
    sub_29A008E78(v31, "vector3h");
    sub_29A008E78(v32, "color3f");
    sub_29A008E78(v33, "color3d");
    sub_29A008E78(v34, "color3h");
    sub_29A008E78(v35, "color4f");
    sub_29A008E78(v36, "color4d");
    sub_29A008E78(v37, "color4h");
    sub_29A008E78(v38, "texCoord2f");
    sub_29A008E78(v39, "texCoord2d");
    sub_29A008E78(v40, "texCoord2h");
    sub_29A008E78(v41, "texCoord3f");
    sub_29A008E78(v42, "texCoord3d");
    sub_29A008E78(v43, "texCoord3h");
    sub_29A9FDE68(&unk_2A14F8F98, v4, 40);
    v3 = 120;
    do
    {
      if (SHIBYTE(v4[v3 - 1]) < 0)
      {
        operator delete(v4[v3 - 3]);
      }

      v3 -= 3;
    }

    while (v3 * 8);
    __cxa_atexit(sub_29AA7B2BC, &unk_2A14F8F98, &dword_299FE7000);
    __cxa_guard_release(&qword_2A14F8FB0);
  }

  return sub_29A01BCCC(&unk_2A14F8F98, a1) != &unk_2A14F8FA0;
}

void sub_29AAAC430(_Unwind_Exception *a1)
{
  v3 = (v1 + 959);
  v4 = -960;
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
      __cxa_guard_abort(&qword_2A14F8FB0);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAAC4A8(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v35.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v35, __p);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    v39 = EmptyString[2];
    __dst = v6;
  }

  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v39 < 0)
  {
    if (*(&__dst + 1) == 10 && *__dst == 0x66336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) == 10 && *__dst == 0x64336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) == 10 && *__dst == 0x68336C616D726F6ELL && *(__dst + 8) == 23899)
    {
      goto LABEL_53;
    }

    if (*(&__dst + 1) != 9 || (*__dst == 0x5B6633726F6C6F63 ? (v13 = *(__dst + 8) == 93) : (v13 = 0), !v13))
    {
      if (*(&__dst + 1) != 9 || (*__dst == 0x5B6433726F6C6F63 ? (v14 = *(__dst + 8) == 93) : (v14 = 0), !v14))
      {
        if (*(&__dst + 1) != 9)
        {
          goto LABEL_69;
        }

        p_dst = __dst;
LABEL_65:
        v20 = *p_dst;
        v21 = *(p_dst + 8);
        if (v20 != 0x5B6833726F6C6F63 || v21 != 93)
        {
LABEL_69:
          v34.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(a1);
          v35.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetScalarType(&v34);
          CPPTypeName = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetCPPTypeName(&v35);
          if (*(CPPTypeName + 23) < 0)
          {
            sub_29A008D14(__p, *CPPTypeName, *(CPPTypeName + 8));
          }

          else
          {
            v24 = *CPPTypeName;
            v37 = *(CPPTypeName + 16);
            *__p = v24;
          }

          if (sub_29A0F2648(__p, "float") || sub_29A0F2648(__p, "GfVec2f") || sub_29A0F2648(__p, "GfVec3f") || sub_29A0F2648(__p, "GfVec4f") || sub_29A0F2648(__p, "double") || sub_29A0F2648(__p, "GfVec2d") || sub_29A0F2648(__p, "GfVec3d") || sub_29A0F2648(__p, "GfVec4d") || sub_29A0F2648(__p, "half") || sub_29A0F2648(__p, "GfVec2h") || sub_29A0F2648(__p, "GfVec3h") || sub_29A0F2648(__p, "GfVec4h"))
          {
            v25 = 0;
            v26 = *(a2 + 5);
            if (v26 != 1 && v26 != 4)
            {
              v27 = sub_29AABB028();
              v28 = sub_29A5A6058(a1);
              if ((*v28 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                goto LABEL_94;
              }

              goto LABEL_93;
            }
          }

          else
          {
            if (*(a2 + 5))
            {
              v27 = sub_29AABB028();
              v28 = sub_29A5A6058(a1);
              if ((*v28 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                goto LABEL_94;
              }

LABEL_93:
              pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v28);
LABEL_94:
              std::operator+<char>();
              v29 = std::string::append(&v34, ")");
              v30 = *&v29->__r_.__value_.__l.__data_;
              v35.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
              *&v35.__r_.__value_.__l.__data_ = v30;
              v29->__r_.__value_.__l.__size_ = 0;
              v29->__r_.__value_.__r.__words[2] = 0;
              v29->__r_.__value_.__r.__words[0] = 0;
              sub_29AA5B750(v27, &v35);
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v35.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v34.__r_.__value_.__l.__data_);
              }

              v25 = 113;
              goto LABEL_99;
            }

            v25 = 0;
          }

LABEL_99:
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_107;
        }
      }
    }
  }

  else
  {
    if (HIBYTE(v39) != 9)
    {
      if (HIBYTE(v39) != 10)
      {
        goto LABEL_69;
      }

      if ((__dst != 0x66336C616D726F6ELL || WORD4(__dst) != 23899) && (__dst != 0x64336C616D726F6ELL || WORD4(__dst) != 23899) && (__dst != 0x68336C616D726F6ELL || WORD4(__dst) != 23899))
      {
        goto LABEL_69;
      }

LABEL_53:
      if (*(a2 + 5) - 1 >= 2)
      {
        v16 = sub_29AABB028();
        v17 = sub_29A5A6058(a1);
        if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          goto LABEL_102;
        }

        goto LABEL_101;
      }

LABEL_72:
      v25 = 0;
      goto LABEL_107;
    }

    if ((__dst != 0x5B6633726F6C6F63 || BYTE8(__dst) != 93) && (__dst != 0x5B6433726F6C6F63 || BYTE8(__dst) != 93))
    {
      p_dst = &__dst;
      goto LABEL_65;
    }
  }

  if ((*(a2 + 5) | 2) == 3)
  {
    goto LABEL_72;
  }

  v16 = sub_29AABB028();
  v17 = sub_29A5A6058(a1);
  if ((*v17 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    goto LABEL_102;
  }

LABEL_101:
  pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v17);
LABEL_102:
  std::operator+<char>();
  v31 = std::string::append(&v35, ")");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v37 = v31->__r_.__value_.__r.__words[2];
  *__p = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v16, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  v25 = 113;
LABEL_107:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst);
  }

  return v25;
}

void sub_29AAACB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29AAACBA8(pxrInternal__aapl__pxrReserved__::UsdAttribute *this)
{
  v56[5] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1747A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1747A78))
  {
    sub_29A008E78(__p, "BOOL[]");
    v17 = 0;
    sub_29A008E78(v18, "uchar[]");
    v18[3] = 0;
    sub_29A008E78(v19, "int[]");
    v19[3] = 0;
    sub_29A008E78(v20, "uint[]");
    v20[3] = 0;
    sub_29A008E78(v21, "half[]");
    v21[3] = 0x1000000000ELL;
    sub_29A008E78(v22, "float[]");
    v22[3] = 0x1000000000ELL;
    sub_29A008E78(v23, "double[]");
    v23[3] = 0x1000000000ELL;
    sub_29A008E78(v24, "int2[]");
    v24[3] = 0x200000000;
    sub_29A008E78(v25, "int3[]");
    v25[3] = 0x300000000;
    sub_29A008E78(v26, "int4[]");
    v26[3] = 0x400000000;
    sub_29A008E78(v27, "half2[]");
    v27[3] = 0x1020000000ELL;
    sub_29A008E78(v28, "half3[]");
    v28[3] = 0x1030000000ELL;
    sub_29A008E78(v29, "half4[]");
    v29[3] = 0x1040000000ELL;
    sub_29A008E78(v30, "float2[]");
    v30[3] = 0x1020000000ELL;
    sub_29A008E78(v31, "float3[]");
    v31[3] = 0x1030000000ELL;
    sub_29A008E78(v32, "float4[]");
    v32[3] = 0x1040000000ELL;
    sub_29A008E78(v33, "double2[]");
    v33[3] = 0x1020000000ELL;
    sub_29A008E78(v34, "double3[]");
    v34[3] = 0x1030000000ELL;
    sub_29A008E78(v35, "double4[]");
    v35[3] = 0x1040000000ELL;
    sub_29A008E78(v36, "point3f[]");
    v36[3] = 0x1030000000ELL;
    sub_29A008E78(v37, "point3d[]");
    v37[3] = 0x1030000000ELL;
    sub_29A008E78(v38, "point3h[]");
    v38[3] = 0x1030000000ELL;
    sub_29A008E78(v39, "normal3f[]");
    v39[3] = 0x2030000000ALL;
    sub_29A008E78(v40, "normal3d[]");
    v40[3] = 0x2030000000ALL;
    sub_29A008E78(v41, "normal3h[]");
    v41[3] = 0x2030000000ALL;
    sub_29A008E78(v42, "vector3f[]");
    v42[3] = 0x1030000000ELL;
    sub_29A008E78(v43, "vector3d[]");
    v43[3] = 0x1030000000ELL;
    sub_29A008E78(v44, "vector3h[]");
    v44[3] = 0x1030000000ELL;
    sub_29A008E78(v45, "color3f[]");
    v45[3] = 0x30300000008;
    sub_29A008E78(v46, "color3d[]");
    v46[3] = 0x30300000008;
    sub_29A008E78(v47, "color3h[]");
    v47[3] = 0x30300000008;
    sub_29A008E78(v48, "color4f[]");
    v48[3] = 0x1040000000ELL;
    sub_29A008E78(v49, "color4d[]");
    v49[3] = 0x1040000000ELL;
    sub_29A008E78(v50, "color4h[]");
    v50[3] = 0x1040000000ELL;
    sub_29A008E78(v51, "texCoord2f[]");
    v51[3] = 0x1020000000CLL;
    sub_29A008E78(v52, "texCoord2d[]");
    v52[3] = 0x1020000000CLL;
    sub_29A008E78(v53, "texCoord2h[]");
    v53[3] = 0x1020000000CLL;
    sub_29A008E78(v54, "texCoord3f[]");
    v54[3] = 0x1030000000CLL;
    sub_29A008E78(v55, "texCoord3d[]");
    v55[3] = 0x1030000000CLL;
    sub_29A008E78(v56, "texCoord3h[]");
    v56[3] = 0x1030000000CLL;
    sub_29AAB70F0(&unk_2A1747A60, __p, 40);
    v12 = 160;
    do
    {
      if (*(&TypeName + v12 * 8 + 7) < 0)
      {
        operator delete(__p[v12 - 4]);
      }

      v12 -= 4;
    }

    while (v12 * 8);
    __cxa_atexit(sub_29AAAD320, &unk_2A1747A60, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1747A78);
  }

  TypeName = pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTypeName(this);
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&TypeName, &v14);
  if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v14 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v4 = *EmptyString;
    v16 = EmptyString[2];
    *__p = v4;
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = sub_29A01BCCC(&unk_2A1747A60, __p);
  if (v5 == &unk_2A1747A68)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0x10000000000;
    v9 = 14;
  }

  else
  {
    v10 = *(v5 + 56);
    v7 = v10 & 0xFFFF000000000000;
    v8 = v10 & 0xFF0000000000;
    v6 = v10 & 0xFF00000000;
    v9 = v10;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 | v9 | v8 | v7;
}

void sub_29AAAD1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = (v16 + 1271);
  v19 = -1280;
  v20 = v18;
  while (1)
  {
    v21 = *v20;
    v20 -= 32;
    if (v21 < 0)
    {
      operator delete(*(v18 - 23));
    }

    v18 = v20;
    v19 += 32;
    if (!v19)
    {
      __cxa_guard_abort(&qword_2A1747A78);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AAAD34C(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  pxrInternal__aapl__pxrReserved__::JsParseString(a1, 0, a3, &v78);
  if (!pxrInternal__aapl__pxrReserved__::JsValue::IsNull(&v78))
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(&v78);
    sub_29A1519B8(&v76, JsObject);
    sub_29A008E78(__p, "v");
    v7 = sub_29A01BCCC(&v76, __p);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p[0]);
    }

    if (v77 == v7)
    {
      v12 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse JSON");
      sub_29AA5B750(v12, __p);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_62;
    }

    sub_29A008E78(__p, "v");
    __dst.__r_.__value_.__r.__words[0] = __p;
    v8 = sub_29AA7ED84(&v76, __p, &unk_29B4D6118, &__dst);
    v9 = v8[8];
    v74 = v8[7];
    v75 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p[0]);
    }

    if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v74))
    {
      v13 = sub_29AABB028();
      sub_29A008E78(__p, "Cannot parse JSON");
      sub_29AA5B750(v13, __p);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      v5 = 213;
      goto LABEL_60;
    }

    String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v74);
    if (*(String + 23) < 0)
    {
      sub_29A008D14(&__dst, *String, *(String + 8));
    }

    else
    {
      v11 = *String;
      __dst.__r_.__value_.__r.__words[2] = *(String + 16);
      *&__dst.__r_.__value_.__l.__data_ = v11;
    }

    v70 = 0;
    v71 = 0;
    v72 = 0;
    sub_29A9EE25C(__p, &__dst, 24);
    v62[0] = 0;
    v62[1] = 0;
    v63 = 0;
    v14 = sub_29A0DE07C(__p, v62, 0x2Eu);
    if ((*(v14 + *(*v14 - 24) + 32) & 5) == 0)
    {
      sub_29A070BA0(&v70);
    }

    if (v71 - v70 == 72)
    {
      v15 = std::stoi(v70, 0, 10);
      v16 = std::stoi(v70 + 1, 0, 10);
      *a2 = (v16 << 8) | (std::stoi(v70 + 2, 0, 10) << 16) | v15;
      sub_29A008E78(v60, "hole");
      v17 = sub_29A01BCCC(&v76, v60);
      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (v77 != v17)
      {
        sub_29A008E78(v60, "hole");
        v49[0] = v60;
        v18 = sub_29AA7ED84(&v76, v60, &unk_29B4D6118, v49);
        v19 = v18[8];
        v55 = v18[7];
        v56 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsBool(&v55))
        {
          *(a2 + 132) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(&v55);
          if (v56)
          {
            sub_29A014BEC(v56);
          }

          v5 = 0;
LABEL_54:
          if (SHIBYTE(v63) < 0)
          {
            operator delete(v62[0]);
          }

          __p[0] = *MEMORY[0x29EDC9528];
          v25 = *(MEMORY[0x29EDC9528] + 72);
          *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
          v65 = v25;
          v66 = MEMORY[0x29EDC9570] + 16;
          if (v68 < 0)
          {
            operator delete(v67[7].__locale_);
          }

          v66 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v67);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](&v69);
          __p[0] = &v70;
          sub_29A012C90(__p);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

LABEL_60:
          if (v75)
          {
            sub_29A014BEC(v75);
          }

LABEL_62:
          sub_29A09932C(&v76, v77[0]);
          goto LABEL_63;
        }

        if (v56)
        {
          sub_29A014BEC(v56);
        }
      }

      sub_29A008E78(v60, "tp");
      v21 = sub_29A01BCCC(&v76, v60);
      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (v77 != v21)
      {
        sub_29A008E78(v60, "tp");
        v55 = v60;
        v22 = sub_29AA7ED84(&v76, v60, &unk_29B4D6118, &v55);
        v23 = v22[8];
        v58 = v22[7];
        v59 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v61 < 0)
        {
          operator delete(v60[0]);
        }

        if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v58))
        {
          v24 = pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v58);
          sub_29AA6926C(v24, v60);
          if (!sub_29AAABFB8(v60))
          {
            goto LABEL_69;
          }

          *(a2 + 96) = sub_29AA685E0(v60);
          pxrInternal__aapl__pxrReserved__::SdfValueTypeName::SdfValueTypeName(&v55);
          if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::operator==((a2 + 96), &v55))
          {
            goto LABEL_69;
          }

          sub_29A008E78(&v55, "int");
          v29 = sub_29A01BCCC(&v76, &v55);
          if (v57 < 0)
          {
            operator delete(v55);
          }

          if (v77 == v29)
          {
LABEL_69:
            v28 = sub_29AABB028();
            sub_29A008E78(&v55, "Cannot parse JSON");
            sub_29AA5B750(v28, &v55);
            if (v57 < 0)
            {
              operator delete(v55);
            }

            v5 = 213;
          }

          else
          {
            sub_29A008E78(&v55, "int");
            v49[0] = &v55;
            v30 = sub_29AA7ED84(&v76, &v55, &unk_29B4D6118, v49);
            v31 = v30[8];
            v53 = v30[7];
            v54 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v57 < 0)
            {
              operator delete(v55);
            }

            if (!pxrInternal__aapl__pxrReserved__::JsValue::IsString(&v53))
            {
              goto LABEL_113;
            }

            pxrInternal__aapl__pxrReserved__::JsValue::GetString(&v53);
            v32 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v49);
            v33 = (v49[0] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v49[0] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v32);
            if (*(v33 + 23) < 0)
            {
              sub_29A008D14(v51, *v33, v33[1]);
            }

            else
            {
              v34 = *v33;
              v52 = v33[2];
              *v51 = v34;
            }

            sub_29AAAE0F8(v51, &v55);
            v36 = (a2 + 104);
            if (&v55 == (a2 + 104))
            {
              if ((v55 & 7) != 0)
              {
                atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }

            else
            {
              if ((*v36 & 7) != 0)
              {
                atomic_fetch_add_explicit((*v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              *v36 = v55;
              v55 = 0;
            }

            if (SHIBYTE(v52) < 0)
            {
              operator delete(v51[0]);
            }

            if ((v49[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((v49[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            if (!v37)
            {
              v37 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
            }

            if ((*(v37 + 85) ^ *v36) >= 8 && pxrInternal__aapl__pxrReserved__::UsdGeomPrimvar::IsValidInterpolation((a2 + 104), v35))
            {
              v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v38)
              {
                v38 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v38 + 154) ^ *v36) < 8)
              {
                goto LABEL_112;
              }

              v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              if (!v39)
              {
                v39 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
              }

              if ((*(v39 + 152) ^ *v36) >= 8)
              {
                v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
                if (!v42)
                {
                  v42 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
                }

                v40 = (*(v42 + 17) ^ *v36) > 7uLL;
              }

              else
              {
LABEL_112:
                v40 = 0;
              }

              *(a2 + 112) = v40;
              sub_29A008E78(&v55, "es");
              if (v77 == sub_29A01BCCC(&v76, &v55))
              {
                IsUInt64 = 0;
              }

              else
              {
                sub_29A008E78(v49, "es");
                v80 = v49;
                v43 = sub_29AA7ED84(&v76, v49, &unk_29B4D6118, &v80);
                IsUInt64 = pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64((v43 + 7));
                if (v50 < 0)
                {
                  operator delete(v49[0]);
                }
              }

              if (v57 < 0)
              {
                operator delete(v55);
              }

              if (IsUInt64)
              {
                sub_29A008E78(&v55, "es");
                v49[0] = &v55;
                v45 = sub_29AA7ED84(&v76, &v55, &unk_29B4D6118, v49);
                *(a2 + 116) = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(v45 + 7);
                if (v57 < 0)
                {
                  operator delete(v55);
                }
              }

              sub_29A008E78(&v55, "hi");
              if (v77 == sub_29A01BCCC(&v76, &v55))
              {
                IsBool = 0;
              }

              else
              {
                sub_29A008E78(v49, "hi");
                v80 = v49;
                v46 = sub_29AA7ED84(&v76, v49, &unk_29B4D6118, &v80);
                IsBool = pxrInternal__aapl__pxrReserved__::JsValue::IsBool((v46 + 7));
                if (v50 < 0)
                {
                  operator delete(v49[0]);
                }
              }

              if (v57 < 0)
              {
                operator delete(v55);
              }

              if (IsBool)
              {
                sub_29A008E78(&v55, "hi");
                v49[0] = &v55;
                v48 = sub_29AA7ED84(&v76, &v55, &unk_29B4D6118, v49);
                *(a2 + 112) = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(v48 + 7);
                if (v57 < 0)
                {
                  operator delete(v55);
                }
              }

              v5 = 0;
            }

            else
            {
LABEL_113:
              v41 = sub_29AABB028();
              sub_29A008E78(&v55, "Cannot parse JSON");
              sub_29AA5B750(v41, &v55);
              if (v57 < 0)
              {
                operator delete(v55);
              }

              v5 = 213;
            }

            if (v54)
            {
              sub_29A014BEC(v54);
            }
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }
        }

        else
        {
          v27 = sub_29AABB028();
          sub_29A008E78(v60, "Cannot parse JSON");
          sub_29AA5B750(v27, v60);
          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          v5 = 213;
        }

        if (v59)
        {
          sub_29A014BEC(v59);
        }

        goto LABEL_54;
      }

      v20 = sub_29AABB028();
      sub_29A008E78(v60, "Cannot parse JSON");
    }

    else
    {
      v20 = sub_29AABB028();
      sub_29A008E78(v60, "Cannot parse JSON");
    }

    sub_29AA5B750(v20, v60);
    if (v61 < 0)
    {
      operator delete(v60[0]);
    }

    v5 = 213;
    goto LABEL_54;
  }

  v4 = sub_29AABB028();
  sub_29A008E78(__p, "Cannot parse JSON");
  sub_29AA5B750(v4, __p);
  if (SHIBYTE(v65) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = 213;
LABEL_63:
  if (v79)
  {
    sub_29A014BEC(v79);
  }

  return v5;
}