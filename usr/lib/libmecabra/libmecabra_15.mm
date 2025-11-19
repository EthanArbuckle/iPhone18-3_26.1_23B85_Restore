void sub_29926BFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  sub_29922D72C(&a29);
  if (v45)
  {
    (*(*v45 + 16))(v45);
  }

  if (v44)
  {
    (*(*v44 + 16))(v44);
  }

  sub_299273884(&a33);
  sub_29921D794(&a19);
  sub_29926C200(&a14);
  _Unwind_Resume(a1);
}

void ***sub_29926C200(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    free(*v2);
    MEMORY[0x29C29BFB0](v2, 0x1010C40B1660244);
  }

  return a1;
}

uint64_t sub_29926C250(uint64_t a1)
{
  v34[19] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1168);
  if (v2)
  {
    sub_299273F58((v2 + 128));
    sub_299273FFC(v2 + 152);
  }

  v3 = *(a1 + 1176);
  if (v3)
  {
    sub_299273F58((v3 + 128));
    sub_299273FFC(v3 + 152);
  }

  v4 = *(a1 + 1048);
  if (v4)
  {
    sub_2992740A4((v4 + 8));
    if (*(v4 + 56))
    {
      sub_299274058(v4 + 32, *(v4 + 48));
      *(v4 + 48) = 0;
      v5 = *(v4 + 40);
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          *(*(v4 + 32) + 8 * i) = 0;
        }
      }

      *(v4 + 56) = 0;
    }
  }

  (*(**(a1 + 1072) + 24))(*(a1 + 1072));
  sub_2991C70DC(v32);
  memset(&v31, 0, sizeof(v31));
  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v18 = *MEMORY[0x29EDC9530];
  v19 = *(MEMORY[0x29EDC9530] + 8);
  v8 = *(MEMORY[0x29EDC9530] + 16);
  v7 = *(MEMORY[0x29EDC9530] + 24);
  v9 = sub_2991EAC8C(v32, &v31, 0xAu);
  if ((*(v9 + *(*v9 - 24) + 32) & 5) == 0)
  {
    v24 = 0;
    v10 = MEMORY[0x29EDC95A0] + 64;
    v23 = MEMORY[0x29EDC95A0] + 64;
    v21[0] = v19;
    *(v21 + *(v19 - 24)) = v8;
    v21[1] = 0;
    v11 = (v21 + *(v21[0] - 24));
    std::ios_base::init(v11, v22);
    v12 = MEMORY[0x29EDC95A0] + 24;
    v11[1].__vftable = 0;
    v11[1].__fmtflags_ = -1;
    v21[0] = v12;
    v23 = v10;
    sub_2992751F0(v22, &v31, 8);
    sub_2991EAC8C(v21, v27, 9u);
    sub_2991EAC8C(v21, v25, 9u);
    sub_2991EAC8C(v21, v29, 9u);
    if (v30 >= 0)
    {
      v13 = v29;
    }

    else
    {
      v13 = v29[0];
    }

    sub_2991C6CA8(&__str, v13);
    std::stoi(&__str, 0, 16);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_2991EAC8C(v21, v29, 9u);
    if (v30 >= 0)
    {
      v14 = v29;
    }

    else
    {
      v14 = v29[0];
    }

    sub_2991C6CA8(&__str, v14);
    std::stoi(&__str, 0, 16);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v28 >= 0)
    {
      v15 = v27;
    }

    else
    {
      v15 = v27[0];
    }

    sub_2992769B0(v15);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v32[0] = *MEMORY[0x29EDC9518];
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v33);
  std::istream::~istream();
  result = MEMORY[0x29C29BF00](v34);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29926CA48(uint64_t a1, void *a2)
{
  v106 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 864);
  __p = 0;
  v100 = 0;
  v101 = 0;
  v3 = a2[6];
  v82 = a2 + 6;
  v97 = v2;
  v98 = a2[7];
  if (v3 == v98)
  {
    goto LABEL_111;
  }

  v79 = a1 + 1208;
  v91 = v2 + 64;
  do
  {
    if ((*(**v3 + 408))(*v3))
    {
      goto LABEL_42;
    }

    v4 = *v3;
    v5 = *(v97 + 87);
    v6 = v5 >= 0 ? v91 : *(v97 + 64);
    v7 = v5 >= 0 ? *(v97 + 87) : *(v97 + 72);
    v8 = (*(*v97 + 552))();
    v10 = v9;
    __s2 = (*(*v97 + 544))(v97);
    if (!v4)
    {
      goto LABEL_42;
    }

    v12 = v11;
    v13 = !v7 || v11 == 0;
    if (v13 || v10 == 0)
    {
      goto LABEL_42;
    }

    v15 = *(v4 + 87);
    v16 = v4 + 16;
    if (v15 < 0)
    {
      v16 = *(v4 + 8);
    }

    __s1 = v16;
    v17 = v15 >= 0 ? *(v4 + 87) : *(v4 + 9);
    v92 = (*(*v4 + 552))(v4);
    v19 = v18;
    v86 = (*(*v4 + 544))(v4);
    v85 = v17 - v7;
    if (v17 < v7 || __s1 == 0)
    {
      goto LABEL_42;
    }

    v22 = v20;
    v23 = !memcmp(__s1, v6, 2 * v7) && v19 >= v10;
    if (!v23 || v92 == 0)
    {
      goto LABEL_42;
    }

    v25 = !memcmp(v92, v8, 2 * v10) && v22 >= v12;
    v26 = !v25 || v86 == 0;
    if (v26 || memcmp(v86, __s2, 2 * v12))
    {
      goto LABEL_42;
    }

    v80 = (*(*v4 + 304))(v4);
    v27 = (*(*v4 + 48))(v4);
    *buf = v79;
    memset(&buf[8], 0, 64);
    v105 = 0u;
    if (!v27)
    {
LABEL_78:
      v102[0] = __s1 + 2 * v7;
      v102[1] = v85;
      (*(*v4 + 112))(v4);
      v52 = v4[55];
      (*(*v4 + 376))(v4);
      (*(*v4 + 96))(v4);
      (*(*v4 + 408))(v4);
      v53 = sub_299273A90(buf);
      goto LABEL_79;
    }

    v90 = 0;
    v28 = 0;
    v29 = 0;
    v94 = 0;
    v95 = 0;
    v84 = v27;
    while (1)
    {
      v89 = (*(*v4 + 312))(v4, v28);
      v96 = (*(*v4 + 320))(v4, v28);
      v88 = (*(*v4 + 568))(v4, v28);
      if (v7 <= v29 || v12 <= v94 || v10 <= v95)
      {
        v39 = (*v80 + v90);
        sub_29925493C(v102, v86 + v94, v86 + v94 + *(v39 + 12), &buf[8]);
        sub_29925493C(v102, v92 + v95, v92 + v95 + v96, &buf[32]);
        v40 = *&buf[64];
        if (*&buf[64] >= v105)
        {
          v44 = 0xCCCCCCCCCCCCCCCDLL * ((*&buf[64] - *&buf[56]) >> 3);
          v45 = v44 + 1;
          if (v44 + 1 > 0x666666666666666)
          {
            sub_29921E9A8();
          }

          if (0x999999999999999ALL * ((v105 - *&buf[56]) >> 3) > v45)
          {
            v45 = 0x999999999999999ALL * ((v105 - *&buf[56]) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v105 - *&buf[56]) >> 3) >= 0x333333333333333)
          {
            v46 = 0x666666666666666;
          }

          else
          {
            v46 = v45;
          }

          if (v46)
          {
            sub_29921E9C0(&buf[56], v46);
          }

          v47 = 8 * ((*&buf[64] - *&buf[56]) >> 3);
          v48 = *v39;
          v49 = v39[1];
          *(v47 + 32) = *(v39 + 4);
          *v47 = v48;
          *(v47 + 16) = v49;
          v43 = 40 * v44 + 40;
          v50 = (v47 - (*&buf[64] - *&buf[56]));
          memcpy(v50, *&buf[56], *&buf[64] - *&buf[56]);
          v51 = *&buf[56];
          *&buf[56] = v50;
          *&buf[64] = v43;
          *&v105 = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          v41 = *v39;
          v42 = v39[1];
          *(*&buf[64] + 32) = *(v39 + 4);
          *v40 = v41;
          v40[1] = v42;
          v43 = v40 + 40;
        }

        *&buf[64] = v43;
        *(v43 - 12) = v96;
        goto LABEL_77;
      }

      v30 = v96;
      if (!v28 && v10 < v96)
      {
        v31 = (*(*v4 + 544))(v4);
        v32 = (*(*v4 + 568))(v4, 0);
        if (!v31)
        {
          v32 = 0;
        }

        v30 = v96;
        if (v32 == v12)
        {
          v33 = memcmp(v31, __s2, 2 * v12);
          v30 = v96;
          if (!v33)
          {
            break;
          }
        }
      }

      v34 = v94 + v88;
      v35 = v29 + v89 > v7 && v34 > v12;
      v36 = v30 + v95;
      if (v35 && v36 > v10)
      {
        v81 = (*(*v4 + 344))(v4, v28);
        v38 = (*(*v4 + 352))(v4, v28);
        sub_2992738F8(buf, v86 + v12, v34 - v12, v29 + v89 - v7, v92 + v10, v36 - v10, v81, v38);
      }

LABEL_77:
      v29 += v89;
      v95 += v96;
      v94 += v88;
      ++v28;
      v90 += 40;
      if (v84 == v28)
      {
        goto LABEL_78;
      }
    }

    v53 = 0;
LABEL_79:
    if (*(&v105 + 1))
    {
      CFRelease(*(&v105 + 1));
    }

    *(&v105 + 1) = 0;
    if (*&buf[56])
    {
      *&buf[64] = *&buf[56];
      operator delete(*&buf[56]);
    }

    if (*&buf[32])
    {
      *&buf[40] = *&buf[32];
      operator delete(*&buf[32]);
    }

    if (*&buf[8])
    {
      *&buf[16] = *&buf[8];
      operator delete(*&buf[8]);
    }

    if (v53)
    {
      (*(*v53 + 544))(v53);
      if (v54)
      {
        v55 = *(*(*v53 + 544))(v53);
        if (((v55 - 12353) < 0x56 || v55 == 12540 || v55 == 12316) && (v56 = *(*(*v53 + 544))(v53), v56 != *(*(*v53 + 552))(v53)))
        {
          v60 = sub_2993652F8(4u);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v61 = (*(*v53 + 24))(v53);
            v62 = (*(*v53 + 56))(v53);
            v63 = (*(*v53 + 232))(v53);
            *buf = 138412802;
            *&buf[4] = v61;
            *&buf[12] = 2112;
            *&buf[14] = v62;
            *&buf[22] = 2112;
            *&buf[24] = v63;
            _os_log_debug_impl(&dword_29918C000, v60, OS_LOG_TYPE_DEBUG, "[ME:removeTruncatedContextFromCandidates] Remove an invalid candidate %@ (%@/%@)", buf, 0x20u);
          }
        }

        else
        {
          v57 = sub_2993652F8(4u);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
          {
            v69 = (*(**v3 + 24))();
            v70 = (*(**v3 + 56))();
            v71 = (*(**v3 + 232))();
            v72 = (*(*v53 + 24))(v53);
            v73 = (*(*v53 + 56))(v53);
            v74 = (*(*v53 + 232))(v53);
            *buf = 138413570;
            *&buf[4] = v69;
            *&buf[12] = 2112;
            *&buf[14] = v70;
            *&buf[22] = 2112;
            *&buf[24] = v71;
            *&buf[32] = 2112;
            *&buf[34] = v72;
            *&buf[42] = 2112;
            *&buf[44] = v73;
            *&buf[52] = 2112;
            *&buf[54] = v74;
            _os_log_debug_impl(&dword_29918C000, v57, OS_LOG_TYPE_DEBUG, "[ME:removeTruncatedContextFromCandidates] Converting %@ (%@/%@) to %@ (%@/%@)", buf, 0x3Eu);
          }

          v58 = v100;
          if (v100 >= v101)
          {
            v64 = (v100 - __p) >> 3;
            if ((v64 + 1) >> 61)
            {
              sub_299212A8C();
            }

            v65 = (v101 - __p) >> 2;
            if (v65 <= v64 + 1)
            {
              v65 = v64 + 1;
            }

            if (v101 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v66 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v65;
            }

            if (v66)
            {
              sub_29920B86C(&__p, v66);
            }

            *(8 * v64) = v53;
            v59 = 8 * v64 + 8;
            v67 = (8 * v64 - (v100 - __p));
            memcpy(v67, __p, v100 - __p);
            v68 = __p;
            __p = v67;
            v100 = v59;
            v101 = 0;
            if (v68)
            {
              operator delete(v68);
            }
          }

          else
          {
            *v100 = v53;
            v59 = (v58 + 8);
          }

          v100 = v59;
        }
      }
    }

LABEL_42:
    ++v3;
  }

  while (v3 != v98);
LABEL_111:
  sub_299273BA0(a2 + 1);
  sub_29921ECBC(v82);
  v75 = __p;
  if (__p != v100)
  {
    do
    {
      v76 = *v75;
      v103[3] = v103;
      *buf = v76;
      v103[0] = &unk_2A1F65308;
      sub_2992AB710(a2, buf, 1, 0, v103);
      sub_29921F128(v103);
      v77 = *buf;
      *buf = 0;
      if (v77)
      {
        (*(*v77 + 16))(v77);
      }

      v75 += 8;
    }

    while (v75 != v100);
    v75 = __p;
  }

  if (v75)
  {
    v100 = v75;
    operator delete(v75);
  }

  v78 = *MEMORY[0x29EDCA608];
}

void sub_29926D768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29926D824(uint64_t a1)
{
  sub_299274D34(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *sub_29926D860(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  result = sub_29925A5D8((a1 + 64), &v5);
  if (result)
  {
    v4 = result[3];
    return *(a1 + 16);
  }

  return result;
}

void sub_29926D8B4(uint64_t a1)
{
  v35 = *MEMORY[0x29EDCA608];
  sub_299276BDC(*(a1 + 216), &v33);
  sub_2993E5110(*(a1 + 192), &v31);
  __p = 0;
  v29 = 0;
  v30 = 0;
  __src = 0;
  v26 = 0;
  v27 = 0;
  if (v32 == v31)
  {
    v2 = 1;
  }

  else
  {
    v2 = (v32 - v31) >> 6;
  }

  sub_299256F7C(&__src, v2);
  v3 = v31;
  v4 = v32;
  if (v31 == v32)
  {
    v11 = v26;
  }

  else
  {
    do
    {
      v5 = *(v3 + 23);
      if (v5 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = *v3;
      }

      if (v5 >= 0)
      {
        v7 = *(v3 + 23);
      }

      else
      {
        v7 = v3[1];
      }

      sub_29922C614(&__p, v6, v7);
      v8 = v26;
      if (v26 >= v27)
      {
        v12 = __src;
        v13 = v26 - __src;
        v14 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - __src) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0x666666666666666)
        {
          sub_29921E9A8();
        }

        if (0x999999999999999ALL * ((v27 - __src) >> 3) > v15)
        {
          v15 = 0x999999999999999ALL * ((v27 - __src) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v27 - __src) >> 3) >= 0x333333333333333)
        {
          v15 = 0x666666666666666;
        }

        if (v15)
        {
          sub_29921E9C0(&__src, v15);
        }

        v16 = 8 * ((v26 - __src) >> 3);
        v17 = *(v3 + 3);
        v18 = *(v3 + 5);
        *(v16 + 32) = v3[7];
        *v16 = v17;
        *(v16 + 16) = v18;
        v11 = (40 * v14 + 40);
        v19 = (40 * v14 - v13);
        memcpy((v16 - v13), v12, v13);
        v20 = __src;
        __src = v19;
        v26 = v11;
        v27 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        v9 = *(v3 + 3);
        v10 = *(v3 + 5);
        v26[4] = v3[7];
        *v8 = v9;
        v8[1] = v10;
        v11 = v8 + 5;
      }

      v26 = v11;
      v3 += 8;
    }

    while (v3 != v4);
  }

  if (__src == v11)
  {
    if (v11 >= v27)
    {
      v21 = 0x999999999999999ALL * ((v27 - v11) >> 3);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v27 - v11) >> 3) >= 0x333333333333333)
      {
        v22 = 0x666666666666666;
      }

      else
      {
        v22 = v21;
      }

      sub_29921E9C0(&__src, v22);
    }

    v11[4] = 0;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v26 = v11 + 5;
    *v11 = 0u;
    *(v11 + 1) = 0u;
    v11[4] = 0;
    v23 = (v34 - v33) >> 1;
    *(v11 + 12) = v23;
    *(v11 + 13) = v23;
    v24 = HIBYTE(v30);
    if (v30 < 0)
    {
      v24 = v29;
    }

    *(v11 + 14) = v24;
  }

  operator new();
}

void sub_29926DCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  a18 = &a24;
  sub_299273CA0(&a18);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void sub_29926DD98(uint64_t a1, uint64_t a2)
{
  v121 = *MEMORY[0x29EDCA608];
  v4 = sub_2993652F8(2u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v70 = (*(a1 + 184) >> 1) & 1;
    v71 = *(*(a1 + 176) + 104);
    *buf = 67109376;
    *&buf[4] = v70;
    *&buf[8] = 2048;
    *&buf[10] = v71;
    _os_log_debug_impl(&dword_29918C000, v4, OS_LOG_TYPE_DEBUG, "[MJ::predict] prediction:%d acceptedCandidate:%p", buf, 0x12u);
  }

  if ((*(a1 + 231) & 1) == 0)
  {
    sub_299273BA0((a2 + 8));
    sub_29921ECBC((a2 + 48));
    v7 = sub_2992896C0(*(*(a1 + 176) + 104), v5, v6);
    ptr = v7;
    if ((*(a1 + 230) & 1) != 0 || (*(a1 + 184) & 2) != 0 && v7 && (*(*v7 + 6))(v7) && (*(*ptr + 3))(ptr))
    {
      v8 = sub_2993652F8(0xDu);
      v9 = os_signpost_id_make_with_pointer(v8, &ptr);
      v10 = sub_2993652F8(0xDu);
      v105 = v9 - 1;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_29918C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, buf, 2u);
        }
      }

      sub_299383844(*(a1 + 176) + 248);
      v12 = sub_2992FE0BC();
      sub_29926B324(a1, a2, v12, 1, 0);
      v104 = v9;
      memset(v115, 0, sizeof(v115));
      v113 = 0u;
      v114 = 0u;
      memset(buf, 0, sizeof(buf));
      v116 = 1065353216;
      sub_299265CC4(a1, a2, buf);
      v13 = *(a1 + 1032);
      if (*v13 == 1)
      {
        sub_299266A18(a1, a2, ptr, v12, v12);
        v13 = *(a1 + 1032);
      }

      if (v13[264] == 1)
      {
        std::mutex::lock((a1 + 880));
        v14 = *(a1 + 944);
        std::mutex::unlock((a1 + 880));
        if (v14 != 2)
        {
          sub_2992C3E18(*(a1 + 3864), a2, v12, v12);
        }
      }

      if (*(a1 + 228) == 1)
      {
        v15 = *v12;
        v16 = v12[1];
        v17 = *(a1 + 176) + 248;
        (*(**(a1 + 3848) + 16))(__dst);
        v19 = *(&v119 + 1);
        for (i = v119; i != v19; ++i)
        {
          v111[0] = &unk_2A1F65308;
          v111[3] = v111;
          sub_2992AB710(a2, i, 1, 0, v111);
          sub_29921F128(v111);
        }

        *__dst = &unk_2A1F65118;
        p_isa = &v119;
        sub_29921EC68(&p_isa);
        sub_29921ED28(&__dst[8]);
      }

      sub_29924976C(*(a1 + 3888), a2, *v12, v12[1], (*(a1 + 176) + 248));
      if (*(a1 + 1184) || *(a1 + 1192))
      {
        sub_299317C40(a1, a2);
      }

      *__dst = &unk_2A1F65CF8;
      *&__dst[8] = sub_2992ACA88;
      *(&v118[0] + 1) = __dst;
      sub_2992AB9D4(a2, __dst);
      sub_29922D72C(__dst);
      if ((*(a1 + 230) & 1) == 0 && !sub_2992B23AC(a1 + 1216, a2, (*(a1 + 176) + 248)))
      {
        if ((atomic_load_explicit(&qword_2A14603D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603D0))
        {
          v118[1] = xmmword_29EF10018;
          v119 = *&off_29EF10028;
          v120[0] = xmmword_29EF10038;
          *__dst = xmmword_29EF0FFF8;
          v118[0] = unk_29EF10008;
          sub_299274E3C(&qword_2A1460468, __dst, 5);
          __cxa_atexit(sub_29926ECD0, &qword_2A1460468, &dword_29918C000);
          __cxa_guard_release(&qword_2A14603D0);
        }

        if ((atomic_load_explicit(&qword_2A14603D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603D8))
        {
          if (**(a1 + 1032))
          {
            v99 = 4;
          }

          else
          {
            v99 = 1;
          }

          dword_2A14603B0 = v99;
          __cxa_guard_release(&qword_2A14603D8);
        }

        v103 = *(a1 + 176);
        v20 = 0xCCCCCCCCCCCCCCCDLL * ((v103[33] - v103[32]) >> 3);
        v21 = 5;
        if (v20 > 5)
        {
          v21 = 0xCCCCCCCCCCCCCCCDLL * ((v103[33] - v103[32]) >> 3);
        }

        v106 = 0xCCCCCCCCCCCCCCCDLL * ((v103[33] - v103[32]) >> 3);
        v102 = v21 - 5;
        if (v20 > (v21 - 5))
        {
          v22 = 0;
          v23 = 0;
          do
          {
            --v106;
            v24 = *(v103[41] + 8 * v106);
            v25 = v103[35];
            v26 = v103[36] - v25;
            v27 = (v25 + 2 * v24);
            if (v24 >= v26 >> 1)
            {
              v27 = 0;
            }

            v28 = *v27;
            if (v28 != 9787)
            {
              if ((u_charType(v28) - 19) < 0xB)
              {
                if (v23)
                {
                  break;
                }

                v23 = 0;
                continue;
              }

              v24 = *(v103[41] + 8 * v106);
              v25 = v103[35];
              v26 = v103[36] - v25;
            }

            if (v24 >= v26 >> 1)
            {
              v29 = 0;
              v30 = 0;
            }

            else
            {
              v29 = (v25 + 2 * v24);
              if (v25)
              {
                v30 = *(v103[32] + 40 * v106 + 24);
              }

              else
              {
                v30 = 0;
              }
            }

            v31 = sub_29927512C(&qword_2A1460468, v29, v30);
            if (qword_2A1460470)
            {
              v32 = vcnt_s8(qword_2A1460470);
              v32.i16[0] = vaddlv_u8(v32);
              if (v32.u32[0] > 1uLL)
              {
                v33 = v31;
                if (v31 >= qword_2A1460470)
                {
                  v33 = v31 % qword_2A1460470;
                }
              }

              else
              {
                v33 = (qword_2A1460470 - 1) & v31;
              }

              v34 = *(qword_2A1460468 + 8 * v33);
              if (v34)
              {
                for (j = *v34; j; j = *j)
                {
                  v36 = j[1];
                  if (v36 == v31)
                  {
                    if (j[3] == v30)
                    {
                      if (!v30)
                      {
                        goto LABEL_71;
                      }

                      v37 = j[2];
                      v38 = v30;
                      v39 = v29;
                      while (*v39 == *v37)
                      {
                        ++v37;
                        v39 = (v39 + 2);
                        if (!--v38)
                        {
                          goto LABEL_71;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v32.u32[0] > 1uLL)
                    {
                      if (v36 >= qword_2A1460470)
                      {
                        v36 %= qword_2A1460470;
                      }
                    }

                    else
                    {
                      v36 &= qword_2A1460470 - 1;
                    }

                    if (v36 != v33)
                    {
                      break;
                    }
                  }
                }
              }
            }

            v40 = CFStringCreateWithCharacters(0, v29, v30);
            p_isa = &v40->isa;
            v41 = sub_2992F2800(1, 2, v40, 0);
            v108 = v41;
            if (v41)
            {
              for (k = 0; k < CFArrayGetCount(v41); ++k)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v41, k);
                sub_299276BDC(ValueAtIndex, __dst);
                v44 = sub_29931BC30(*(a1 + 3880), a2, *__dst, (*&__dst[8] - *__dst) >> 1, v29, v30, dword_2A14603B0 + v22);
                if (*__dst)
                {
                  *&__dst[8] = *__dst;
                  operator delete(*__dst);
                }

                v22 += v44;
              }

              CFRelease(v41);
            }

            if (v40)
            {
              CFRelease(v40);
            }

            v23 = 1;
          }

          while (v106 > v102);
        }
      }

LABEL_71:
      if (**(a1 + 1032) == 1)
      {
        if ((atomic_load_explicit(&qword_2A14603E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14603E0))
        {
          sub_299217DF0(__dst, L"、");
          sub_299217DF0(v118 + 8, L"。");
          sub_299217DF0(&v119, L"！");
          sub_299217DF0(v120 + 8, L"？");
          qword_2A14603F8 = 0;
          unk_2A1460400 = 0;
          qword_2A1460408 = 0;
          sub_299273D44(&qword_2A14603F8, __dst, &v121, 4uLL);
          for (m = 0; m != -96; m -= 24)
          {
            if (*(&v120[1] + m + 15) < 0)
            {
              operator delete(*(v120 + m + 8));
            }
          }

          __cxa_atexit(sub_29926ECD4, &qword_2A14603F8, &dword_29918C000);
          __cxa_guard_release(&qword_2A14603E0);
        }

        v45 = *(a1 + 176);
        if ((sub_2993232FC(v45 + 31, 0) & 1) == 0 && v45[33] != v45[32])
        {
          v46 = *(a1 + 1176);
          if (!v46 || !*(v46 + 8))
          {
            goto LABEL_116;
          }

          v47 = *(a1 + 176);
          v48 = v47[32];
          v49 = 0xCCCCCCCCCCCCCCCDLL * ((v47[33] - v48) >> 3);
          v50 = v49 - (*(v46 + 32) + *(*(a1 + 1032) + 328));
          v51 = v50 & ~(v50 >> 63);
          *&v118[0] = 0;
          memset(__dst, 0, sizeof(__dst));
          if (v51 < v49)
          {
            v52 = 0;
            v53 = 40 * v51 + 24;
            do
            {
              v54 = *(v47[41] + 8 * v51);
              v55 = v47[35];
              if (v54 >= (v47[36] - v55) >> 1 || ((v56 = *(v48 + v53), v55) ? (v57 = v56 == 0) : (v57 = 1), v57))
              {
                v58 = 0;
              }

              else
              {
                v58 = (*(**(a1 + 192) + 32))(*(a1 + 192), v55 + 2 * v54, 2 * v56);
                v52 = *&__dst[8];
              }

              if (v52 >= *&v118[0])
              {
                v59 = *__dst;
                v60 = v52 - *__dst;
                v61 = (v52 - *__dst) >> 2;
                v62 = v61 + 1;
                if ((v61 + 1) >> 62)
                {
                  sub_299212A8C();
                }

                v63 = *&v118[0] - *__dst;
                if ((*&v118[0] - *__dst) >> 1 > v62)
                {
                  v62 = v63 >> 1;
                }

                v64 = v63 >= 0x7FFFFFFFFFFFFFFCLL;
                v65 = 0x3FFFFFFFFFFFFFFFLL;
                if (!v64)
                {
                  v65 = v62;
                }

                if (v65)
                {
                  sub_2992F86B0(__dst, v65);
                }

                v66 = (v52 - *__dst) >> 2;
                v67 = (4 * v61);
                v68 = (4 * v61 - 4 * v66);
                *v67 = v58;
                v52 = v67 + 1;
                memcpy(v68, v59, v60);
                v69 = *__dst;
                *__dst = v68;
                *&__dst[8] = v52;
                *&v118[0] = 0;
                if (v69)
                {
                  operator delete(v69);
                }
              }

              else
              {
                *v52++ = v58;
              }

              *&__dst[8] = v52;
              ++v51;
              v48 = v47[32];
              v53 += 40;
            }

            while (v51 < 0xCCCCCCCCCCCCCCCDLL * ((v47[33] - v48) >> 3));
            v46 = *(a1 + 1176);
          }

          v72 = *(v46 + 8);
          LMLanguageModelCreatePredictionEnumerator();
          v73 = 0;
          while (1)
          {
            v74 = -7.0;
            if (v73 == 5 || (LMPredictionEnumeratorAdvance() & 1) == 0)
            {
              break;
            }

            v110 = 0;
            v108 = 0;
            p_isa = 0;
            LMPredictionEnumeratorGetPrediction();
            ++v73;
            if (v110 == 2)
            {
              v74 = *&p_isa;
              goto LABEL_110;
            }
          }

          v73 = -1;
LABEL_110:
          LMPredictionEnumeratorRelease();
          if (*__dst)
          {
            *&__dst[8] = *__dst;
            operator delete(*__dst);
          }

          v75 = v73 - 1;
          if (v73 >= 1)
          {
            v76 = 0;
            if (v75 <= 1)
            {
              v75 = 1;
            }

            v77 = v75 + (-1.0 - v74 + -1.0 - v74);
          }

          else
          {
LABEL_116:
            v77 = -1;
            v76 = 2;
          }

          v78 = qword_2A14603F8;
          v79 = unk_2A1460400;
          while (v78 != v79)
          {
            v80 = *(v78 + 23);
            if (v80 < 0)
            {
              v81 = *v78;
              if (*v78)
              {
                v80 = *(v78 + 8);
              }

              else
              {
                v80 = 0;
              }

              if (*(v78 + 8) != 1)
              {
                goto LABEL_128;
              }
            }

            else
            {
              v81 = v78;
              if (v80 != 1)
              {
                goto LABEL_128;
              }

              v80 = 1;
              v81 = v78;
            }

            if (*v81 == 12289)
            {
              v82 = 587;
              goto LABEL_129;
            }

LABEL_128:
            v82 = 582;
LABEL_129:
            v83 = word_29940982A[v82];
            v84 = *(a1 + 3880);
            v85 = sub_2992FE0BC();
            LOBYTE(v101) = 0;
            HIWORD(v100) = v83;
            LOWORD(v100) = v83;
            sub_29931A61C(v84, a2, *v85, v85[1], v81, v80, v81, v80, v100, 0, v77, v101, 67, 2, v76);
            v78 += 24;
          }
        }

        if (**(a1 + 1032))
        {
          sub_299232D70((a1 + 3928), a2, *(*(a1 + 176) + 280), (*(*(a1 + 176) + 288) - *(*(a1 + 176) + 280)) >> 1);
        }
      }

      sub_2992ABFE4(a2);
      sub_2992AC684(a2, 12, "## Final ##", 0, 1);
      v86 = *(a2 + 48);
      v87 = *(a2 + 56) - v86;
      if (v87)
      {
        v88 = v87 >> 3;
        if (v88 <= 1)
        {
          v88 = 1;
        }

        v89 = 1;
        do
        {
          v90 = *v86++;
          *(v90 + 8) = v89++;
          --v88;
        }

        while (v88);
        v91 = *MEMORY[0x29EDB8ED8];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        *__dst = Mutable;
        (*(**(a1 + 3944) + 16))(*(a1 + 3944), Mutable, 0, 0);
        if ((*(a1 + 184) & 0x20) != 0)
        {
          v93 = "ja-Romaji";
        }

        else
        {
          v93 = "ja-Kana";
        }

        v94 = CFStringCreateWithCString(v91, v93, 0x8000100u);
        p_isa = &v94->isa;
        sub_2992BBD18(*(a1 + 3936), @"ja", v94, Mutable);
        if (v94)
        {
          CFRelease(v94);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      v95 = sub_2993652F8(0xDu);
      if (v105 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v96 = v95;
        if (os_signpost_enabled(v95))
        {
          *__dst = 0;
          _os_signpost_emit_with_name_impl(&dword_29918C000, v96, OS_SIGNPOST_INTERVAL_END, v104, "MecabraPredictionAnalyzeWithContext", &unk_29945DB9F, __dst, 2u);
        }
      }

      sub_29921ED28(v115);
    }
  }

  v97 = *MEMORY[0x29EDCA608];
}

void sub_29926EB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __cxa_guard_abort(&qword_2A14603D0);
  sub_29921ED28(&a35);
  _Unwind_Resume(a1);
}

void **sub_29926ECD4(void **a1)
{
  v3 = a1;
  sub_299212B90(&v3);
  return a1;
}

void sub_29926ED0C(uint64_t a1, uint64_t *a2, int a3, _BYTE *a4)
{
  v4 = a2;
  v42[4] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(*a2 + 119);
  if (v8 < 0)
  {
    v9 = *(v7 + 12);
    LOWORD(v8) = *(v7 + 52);
  }

  else
  {
    v9 = (v7 + 24);
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = v11[1];
  v13 = 0.0;
  if (!v12)
  {
    goto LABEL_25;
  }

  v14 = 2 * v12;
  if (2 * v12 <= (2 * v10))
  {
    v15 = *v11;
    v16 = (*(v6 + 184) >> 6) & 8 | *(v6 + 184) & 0x20 | (*(v6 + 184) >> 4) & 0x10 | (*(v6 + 184) >> 7) & 6;
    if (v16)
    {
      if (v14)
      {
        v17 = 0;
        v18 = (v14 - 1);
        v38 = v10;
        v39 = v14 & 0x7FFFFFFE;
        while (1)
        {
          v19 = *&v9[v17];
          v20 = *&v15[v17];
          if (v19 != v20)
          {
            if (v17 == v39)
            {
              goto LABEL_29;
            }

            v21 = v15;
            v10 = v18;
            v22 = sub_2993C4A54(v20, v16);
            v18 = v10;
            v15 = v21;
            v4 = a2;
            LODWORD(v10) = v38;
            if (!v22)
            {
              goto LABEL_29;
            }

            v23 = *v22;
            v24 = v22[1] - *v22;
            if (!v24)
            {
              goto LABEL_29;
            }

            v25 = v24 >> 1;
            if (v25 <= 1)
            {
              v25 = 1;
            }

            while (1)
            {
              v26 = *v23++;
              if (v19 == v26)
              {
                break;
              }

              if (!--v25)
              {
                goto LABEL_29;
              }
            }

            v13 = v13 + -1.0;
          }

          v17 += 2;
          if (v18 <= v17)
          {
            goto LABEL_25;
          }
        }
      }

      goto LABEL_25;
    }

    if (!memcmp(*v11, v9, 2 * v12))
    {
LABEL_25:
      v27 = *(v6 + 1032);
      if (v10 - v12 <= 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = v27[240] + v27[240] * (v10 - v12);
      }

      v29 = -(v13 * v27[222]);
      v30 = v27[238];
      v31 = -v27[239];
      v32 = *(a1 + 56);
      v33 = log2f(a3 / 100.0);
      (*(*v7 + 480))(v7, (v28 - a3 + v30 + v32 + v29 + (v33 * v31)));
      v7[55] = (v28 + (v29 * *(*(v6 + 1032) + 448)));
      (*(**v4 + 528))();
      v34 = *(a1 + 48);
      v42[0] = &unk_2A1F65308;
      v42[3] = v42;
      sub_2992AB710(v34, v4, 1, 0, v42);
      sub_29921F128(v42);
    }
  }

LABEL_29:
  std::mutex::lock((v6 + 880));
  v35 = *(v6 + 944);
  std::mutex::unlock((v6 + 880));
  if (v35 == 2)
  {
    *a4 = 1;
  }

  v36 = *MEMORY[0x29EDCA608];
}

void sub_29926F03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29921F128(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29926F058(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v3)
    {
      MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
    }

    v4 = *(v2 + 56);
    *(v2 + 56) = 0;
    if (v4)
    {
      MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
    }

    sub_29918D980(v2 + 8);
    sub_29919C3B0(v2);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void **sub_29926F224(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2992751B4((v2 + 19));
    sub_299273F58(v2 + 16);
    v3 = v2[12];
    v2[12] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[11];
    v2[11] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    sub_299383FE4(v2);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_29926F2F0(CFURLRef url@<X0>, CFStringRef pathComponent@<X1>, CFURLRef *a3@<X8>)
{
  v4 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
  cf[0] = 0;
  cf[1] = v4;
  if (CFURLResourceIsReachable(v4, cf))
  {
    *a3 = v4;
  }

  else
  {
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    *a3 = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void sub_29926F368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_29926F380(const __CFURL *a1@<X0>, void *a2@<X8>)
{
  if (a1 && CFURLResourceIsReachable(a1, 0))
  {
    sub_29926F2F0(a1, off_2A145E3A0, &v7);
    sub_29926F2F0(a1, off_2A145E398, &v6);
    v5 = v6;
    v4 = v7;
    if (v7 && v6)
    {
      operator new();
    }

    *a2 = 0;
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_29926F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  (*(*v11 + 8))(v11);
  (*(*v10 + 8))(v10);
  sub_29920FE30(&a9, 0);
  sub_29920FE30(&a10, 0);
  _Unwind_Resume(a1);
}

void sub_29926F5E4(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  if (a2 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC5760]);
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID() && Value == *MEMORY[0x29EDB8F00])
    {
      v9 = *(a2 + 1168);
      if (v9)
      {
        sub_2993F5054(v9);
      }

      if (*(a2 + 1064))
      {

        sub_29926C250(a2);
      }
    }
  }
}

void sub_29926F688(uint64_t a1, const __CFString ***a2)
{
  v42 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 192);
  if (v3)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v29 = a1;
      do
      {
        sub_299278568(*v4, __p);
        v6 = v36;
        if (v36 >= v37)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          if (0x5555555555555556 * ((v37 - v35) >> 3) > v10)
          {
            v10 = 0x5555555555555556 * ((v37 - v35) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v37 - v35) >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          v41 = &v35;
          if (v11)
          {
            sub_299212AA4(&v35, v11);
          }

          v12 = 8 * ((v36 - v35) >> 3);
          v13 = *__p;
          *(v12 + 16) = v31;
          *v12 = v13;
          __p[1] = 0;
          v31 = 0;
          __p[0] = 0;
          v8 = 24 * v9 + 24;
          v14 = (24 * v9 - (v36 - v35));
          memcpy((v12 - (v36 - v35)), v35, v36 - v35);
          v15 = v35;
          v16 = v37;
          v35 = v14;
          v36 = v8;
          v37 = 0;
          *&buf = v15;
          v39 = v15;
          v40 = v16;
          *(&buf + 1) = v15;
          sub_299212AFC(&buf);
          v36 = v8;
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__p[0]);
            v8 = v36;
          }
        }

        else
        {
          v7 = *__p;
          *(v36 + 2) = v31;
          *v6 = v7;
          v8 = v6 + 24;
          v36 = v6 + 24;
        }

        v17 = (v8 - 24);
        if (*(v8 - 1) < 0)
        {
          v17 = *v17;
        }

        v18 = v33;
        if (v33 >= v34)
        {
          v20 = (v33 - v32) >> 3;
          if ((v20 + 1) >> 61)
          {
            sub_299212A8C();
          }

          v21 = (v34 - v32) >> 2;
          if (v21 <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          if (v34 - v32 >= 0x7FFFFFFFFFFFFFF8)
          {
            v22 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_2991C1E60(&v32, v22);
          }

          v23 = (8 * v20);
          *v23 = v17;
          v19 = 8 * v20 + 8;
          v24 = v23 - (v33 - v32);
          memcpy(v24, v32, v33 - v32);
          v25 = v32;
          v32 = v24;
          v33 = v19;
          v34 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v33 = v17;
          v19 = (v18 + 8);
        }

        v33 = v19;
        v26 = sub_2993652F8(9u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = v36 - 24;
          if (*(v36 - 1) < 0)
          {
            v27 = *v27;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v27;
          _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "[MJ] Setting additional dictionary %s", &buf, 0xCu);
        }

        ++v4;
      }

      while (v4 != v5);
      v3 = *(v29 + 192);
    }

    (*(*v3 + 160))(v3);
    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }

    *&buf = &v35;
    sub_299212B90(&buf);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_29926F9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char *__p, char *a21, uint64_t a22, char a23)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  __p = &a23;
  sub_299212B90(&__p);
  _Unwind_Resume(a1);
}

void sub_29926FBC4(uint64_t a1, uint64_t a2, CFStringRef theString, double a4)
{
  v4 = *(a1 + 1048);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = sub_29926FC44;
  v5[3] = &unk_29EF10068;
  v5[4] = a1;
  v5[5] = a2;
  *&v5[6] = a4;
  sub_2993274B0(v4, theString, v5);
}

void sub_29926FC44(void *a1, CFStringRef theString)
{
  if (theString)
  {
    v4 = a1[4];
    Length = CFStringGetLength(theString);
    if (Length < 1)
    {
LABEL_7:
      v9 = sub_2993277A4(*(v4 + 1048), theString);
      if (v9)
      {
        v10 = v9;
        v11 = a1[5];
        v12 = a1[6];
        sub_29933A2F4(*(v4 + 176), v11, v9, 0, &v12);
        CFRelease(v10);
      }
    }

    else
    {
      v6 = Length;
      v7 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
        if (!u_isgraph(CharacterAtIndex) || u_isdigit(CharacterAtIndex))
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

uint64_t sub_29926FD10(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((result + 720));
    operator new();
  }

  return result;
}

uint64_t sub_29926FE58(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((result + 720));
    operator new();
  }

  return result;
}

uint64_t sub_29926FFA0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    std::mutex::lock((result + 720));
    operator new();
  }

  return result;
}

uint64_t sub_2992700B8(uint64_t a1)
{
  v2 = *(a1 + 1168);
  if (v2)
  {
    v3 = *(v2 + 8);
    LMLanguageModelFlushDynamicData();
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = sub_29933AC80(v4);
  }

  else
  {
    v5 = 1;
  }

  if ((*(**(a1 + 192) + 120))(*(a1 + 192)))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299270134(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  v3 = *(*(a1 + 1168) + 8);
  LMLanguageModelResetDynamicData();
  sub_29931FE84(**(a1 + 3888));
  v4 = *(**(a1 + 192) + 72);

  return v4();
}

void sub_2992701D0(uint64_t a1)
{
  if (((*(**(a1 + 192) + 240))(*(a1 + 192)) & 1) == 0 && (*(a1 + 1200) & 1) == 0)
  {
    v2 = sub_29936D41C("ja");
    if (v2)
    {
      v3 = v2;
      sub_299270284(v2, v2);
      sub_299270308(v4, v3);
      *(a1 + 1200) = 1;
      CFRelease(v3);
    }
  }
}

void sub_29927026C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

void sub_299270284(int a1, CFURLRef url)
{
  v6 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    sub_2991C6CA8(&__p, buffer);
    if (v4 < 0)
    {
      operator delete(__p);
    }
  }

  v2 = *MEMORY[0x29EDCA608];
}

void sub_299270308(uint64_t a1, const __CFURL *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = CFURLCreateCopyAppendingPathComponent(0, a2, off_2A145E380, 1u);
  v3 = 0;
  url[1] = v2;
  v7[0] = off_2A145E390;
  v7[1] = off_2A145E3A0;
  do
  {
    sub_29926F2F0(v2, v7[v3], url);
    v4 = url[0];
    if (url[0])
    {
      CFURLGetFileSystemRepresentation(url[0], 1u, buffer, 1024);
      CFRelease(v4);
    }

    ++v3;
  }

  while (v3 != 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_2992703F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299270438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }
  }

  v5 = *(a1 + 3888);

  return sub_29924A45C(v5);
}

uint64_t sub_2992704A4(int a1, CFStringRef theString)
{
  v5 = *MEMORY[0x29EDCA608];
  if (theString && CFStringGetLength(theString))
  {
    sub_299276E1C(theString);
  }

  v3 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_299270BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, const void *a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_29921D794(v32 - 176);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  *(v32 - 176) = &a20;
  sub_299273CA0((v32 - 176));
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_29924A4BC(&a26, 0);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

CFMutableArrayRef sub_299270CB4(uint64_t a1, const __CFString *a2)
{
  sub_299276BDC(a2, v35);
  sub_2993E5110(*(a1 + 192), &v33);
  if (v33 == v34)
  {
    v27 = 0;
  }

  else
  {
    v31 = 0;
    theArray = CFArrayCreateMutable(0, (v34 - v33) >> 6, MEMORY[0x29EDB9000]);
    __p = 0;
    v30 = 0;
    v3 = v33;
    if (v34 != v33)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = (v34 - v33) >> 6;
      do
      {
        v9 = (v3 + v4);
        if (v7 == v8 - 1 || (*(v9 + 6) != -1 ? (v10 = *(v9 + 22) == -1) : (v10 = 1), v10))
        {
          v11 = 1;
        }

        else
        {
          v11 = sub_299255970(*(a1 + 1040), *(v9 + 28), *(v3 + v4 + 118));
        }

        v12 = *(v9 + 25);
        v13 = *(v9 + 23);
        if (v13 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = *v9;
        }

        if (v13 >= 0)
        {
          v15 = *(v9 + 23);
        }

        else
        {
          v15 = v9[1];
        }

        sub_29922C614(&__p, v14, v15);
        v16 = *(v9 + 23);
        if ((v16 & 0x8000000000000000) != 0)
        {
          v16 = v9[1];
        }

        v6 += v12;
        if (v16)
        {
          v17 = v5 == -1;
        }

        else
        {
          v17 = 1;
        }

        v19 = !v17 && v6 != 0;
        if (v19 & v11)
        {
          v20 = v31 >= 0 ? &__p : __p;
          v21 = v31 >= 0 ? SHIBYTE(v31) : v30;
          v22 = CFStringCreateWithCharacters(0, v20, v21);
          if (v22)
          {
            v23 = sub_299230C50(v22, v5, v6);
            if (v23)
            {
              CFArrayAppendValue(theArray, v23);
              CFRelease(v23);
            }

            if (SHIBYTE(v31) < 0)
            {
              *__p = 0;
              v30 = 0;
            }

            else
            {
              LOWORD(__p) = 0;
              HIBYTE(v31) = 0;
            }

            v5 += v6;
            v6 = 0;
          }
        }

        ++v7;
        v3 = v33;
        v8 = (v34 - v33) >> 6;
        v4 += 64;
      }

      while (v7 < v8);
      if (v6 > 0)
      {
        if (v31 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if (v31 >= 0)
        {
          v25 = SHIBYTE(v31);
        }

        else
        {
          v25 = v30;
        }

        v26 = CFStringCreateWithCharacters(0, p_p, v25);
        sub_299230C50(v26, v5, v6);
      }
    }

    v27 = theArray;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p);
    }
  }

  __p = &v33;
  sub_299273CA0(&__p);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  return v27;
}

void sub_299270F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  sub_299219AB4(&a10, 0);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_2992530BC(&a17, 0);
  __p = &a18;
  sub_299273CA0(&__p);
  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_299270F8C(uint64_t a1, uint64_t a2)
{
  __p[3] = *MEMORY[0x29EDCA608];
  sub_2992AC684(a2, 12, "## Before reranking ##", 0, 1);
  if (*(a1 + 228) == 1 && *(a1 + 1168))
  {
    (*(**(a1 + 3840) + 16))(*(a1 + 3840), a2, *(a1 + 176) + 248);
    v54 = &unk_2A1F65CF8;
    v55 = sub_2992ACF40;
    v57 = &v54;
    sub_2992AB9D4(a2, &v54);
  }

  else
  {
    v54 = &unk_2A1F65CF8;
    v55 = sub_2992ACA88;
    v57 = &v54;
    sub_2992AB9D4(a2, &v54);
  }

  sub_29922D72C(&v54);
  v4 = *(a1 + 1032);
  if (*v4 == 1 && *(a2 + 56) - *(a2 + 48) >= 9uLL)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    sub_2991C5AEC(&v54, *(v4 + 404) + *(v4 + 416));
    v6 = *(a2 + 48);
    v5 = *(a2 + 56);
    if (((v5 - v6) >> 3) >= 8)
    {
      v7 = 8;
    }

    else
    {
      v7 = (v5 - v6) >> 3;
    }

    __p[0] = 0;
    if (v5 != v6)
    {
      v8 = 0;
      do
      {
        v9 = *(*(a2 + 48) + 8 * v8);
        if ((*(*v9 + 96))(v9) == 76 || (*(*v9 + 96))(v9) == 74)
        {
          sub_299266D00(&v54, __p);
        }

        v8 = __p[0] + 1;
        __p[0] = v8;
      }

      while (v8 < v7);
    }

    v10 = v54;
    v11 = (v55 - v54) >> 3;
    if (v11 >= 2)
    {
      if (v54 != v55)
      {
        v12 = v55 - 8;
        if (v55 - 8 > v54)
        {
          v13 = v54 + 8;
          do
          {
            v14 = *(v13 - 1);
            *(v13 - 1) = *v12;
            *v12 = v14;
            v12 -= 8;
            v15 = v13 >= v12;
            v13 += 8;
          }

          while (!v15);
        }
      }

      memset(__p, 0, 24);
      sub_2991C5AEC(__p, v11);
      v17 = v54;
      v16 = v55;
      v53 = v55;
      while (v17 != v16)
      {
        *buf = *v17;
        v18 = *(*(a2 + 48) + 8 * *buf);
        v19 = (*(*v18 + 48))(v18);
        if ((*(*v18 + 96))(v18) != 74)
        {
          v21 = v54;
          v20 = v55;
          while (v21 != v20)
          {
            if (*v21 != *buf)
            {
              v22 = *(*(a2 + 48) + 8 * *v21);
              v23 = (*(*v22 + 48))(v22) - 1;
              if (v23 < v19)
              {
                v24 = (*(*v18 + 344))(v18, 0);
                if (v24 == (*(*v22 + 344))(v22, 0))
                {
                  v25 = (*(*v18 + 352))(v18, v23);
                  if (v25 == (*(*v22 + 352))(v22, v23))
                  {
                    (*(*v18 + 544))(v18);
                    v27 = v26;
                    (*(*v22 + 544))(v22);
                    if (v28 + v27 >= *(*(a1 + 1032) + 342))
                    {
                      v29 = (*(*v18 + 544))(v18);
                      v31 = v30;
                      v32 = (*(*v22 + 544))(v22);
                      if (v31 >= v33 && (v29 || !v33) && !memcmp(v29, v32, 2 * v33))
                      {
                        sub_299266D00(__p, buf);
                        break;
                      }
                    }
                  }
                }
              }
            }

            ++v21;
          }
        }

        ++v17;
        v16 = v53;
      }

      v34 = sub_2993652F8(0xBu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        v36 = __p[1];
        for (i = __p[0]; i != v36; ++i)
        {
          v37 = *i;
          v38 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = *(*(a2 + 48) + 8 * v37);
            v40 = (*(*v39 + 24))(v39);
            *buf = 138412290;
            *&buf[4] = v40;
            _os_log_debug_impl(&dword_29918C000, v38, OS_LOG_TYPE_DEBUG, "Pruning %@ (excessive learning candidates)", buf, 0xCu);
          }
        }
      }

      sub_2992AC390(a2, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v10 = v54;
    }

    if (v10)
    {
      v55 = v10;
      operator delete(v10);
    }
  }

  if (*(a1 + 832) != *(a1 + 824) && *(a1 + 848) == 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    __p[0] = 0;
    v41 = *(a2 + 48);
    if (*(a2 + 56) != v41)
    {
      v42 = 0;
      do
      {
        if ((*(**(v41 + 8 * v42) + 408))(*(v41 + 8 * v42)) == 1)
        {
          break;
        }

        v43 = __p[0];
        if (__p[0] >= *(*(a1 + 1032) + 310))
        {
          sub_299266D00(&v54, __p);
          v43 = __p[0];
        }

        v42 = v43 + 1;
        __p[0] = v42;
        v41 = *(a2 + 48);
      }

      while (v42 < (*(a2 + 56) - v41) >> 3);
    }

    v44 = sub_2993652F8(0xBu);
    v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG);
    v46 = v54;
    if (v45)
    {
      v47 = v55;
      if (v54 != v55)
      {
        do
        {
          v48 = *v46;
          v49 = sub_2993652F8(0xBu);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            v50 = *(*(a2 + 48) + 8 * v48);
            v51 = (*(*v50 + 24))(v50);
            LODWORD(__p[0]) = 138412290;
            *(__p + 4) = v51;
            _os_log_debug_impl(&dword_29918C000, v49, OS_LOG_TYPE_DEBUG, "Pruning %@ (QuickPath candidate)", __p, 0xCu);
          }

          ++v46;
        }

        while (v46 != v47);
        v46 = v54;
      }
    }

    if (v55 != v46)
    {
      sub_2992AC390(a2, &v54);
      v46 = v54;
    }

    if (v46)
    {
      v55 = v46;
      operator delete(v46);
    }
  }

  sub_2992AC684(a2, 12, "## After reranking ##", 0, 1);
  v52 = *MEMORY[0x29EDCA608];
}

void sub_2992717CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_299271854(uint64_t a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_29918C000, v2, OS_LOG_TYPE_DEBUG, "[MJ::assetDictionariesDidChange]", buf, 2u);
  }

  v3 = *(a1 + 1056);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = sub_2993652F8(9u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "assetDictionariesDidChange";
      v19 = 2112;
      v20 = v4;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[MJ::%s] swapping neural language model: %@", buf, 0x16u);
    }

    error = 0;
    if (CFURLResourceIsReachable(v4, &error))
    {
      if (*(a1 + 1184) && *(a1 + 3840) && *(a1 + 3848))
      {
        v6 = sub_2993652F8(0xDu);
        v7 = os_signpost_id_make_with_pointer(v6, a1);
        v8 = sub_2993652F8(0xDu);
        if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = v8;
          if (os_signpost_enabled(v8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_29918C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "MecabraJapaneseNeuralLanguageModelSwap", "Swap neural language model for MecabraJapanese", buf, 2u);
          }
        }

        sub_29926F2F0(v4, off_2A145E390, &v16);
        sub_29926F2F0(v4, off_2A145E3A0, &v15);
        if (v16)
        {
          if (v15)
          {
            operator new();
          }

          CFRelease(v16);
        }

        else if (v15)
        {
          CFRelease(v15);
        }
      }
    }

    else if (error)
    {
      CFRelease(error);
    }

    v3 = *(a1 + 1056);
  }

  sub_29923F12C(a1 + 1080, *(v3 + 48), 0);
  if (*(a1 + 3848))
  {
    v10 = *(*(a1 + 1056) + 56);
    if (v10)
    {
      v11 = *(a1 + 1160);
      sub_299278568(v10, buf);
      v12 = sub_299241F00(v11, buf);
      v13 = v12;
      if ((v21 & 0x80000000) == 0)
      {
        if (!v12)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      operator delete(*buf);
      if (v13)
      {
LABEL_28:
        (*(**(a1 + 3848) + 40))(*(a1 + 3848), *(*(a1 + 1160) + 344));
      }
    }
  }

LABEL_29:
  sub_29926F688(a1, *(a1 + 1056));
  v14 = *MEMORY[0x29EDCA608];
}

void sub_299271D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  sub_29920FE30(&a12, 0);
  sub_29920FE30(&a13, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_299271EC0(uint64_t a1)
{
  v17[19] = *MEMORY[0x29EDCA608];
  sub_2991C70DC(v15);
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  contentsDeallocator = *MEMORY[0x29EDB8EE8];
  v2 = sub_2991EAC8C(v15, __p, 0xAu);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) == 0)
  {
    if (v14 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = CFStringCreateWithCStringNoCopy(0, v3, 0x8000100u, contentsDeallocator);
    v12 = v4;
    v5 = sub_299327878(*(a1 + 1048), v4);
    v10 = 0;
    v11 = v5;
    v9 = 0;
    sub_299276A84(v4);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v15[0] = *MEMORY[0x29EDC9518];
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v16);
  std::istream::~istream();
  result = MEMORY[0x29C29BF00](v17);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992722F8(uint64_t a1, int a2)
{
  if (*(a1 + 230) != a2)
  {
    *(a1 + 230) = a2;
    (*(**(a1 + 192) + 112))(*(a1 + 192));
    v4 = *(a1 + 1184);
    if (v4)
    {
      if (!a2)
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 1056);
      if (*(v5 + 81) == 1)
      {
        sub_29926F380(*(v5 + 72), &v9);
        if (v9)
        {
          v6 = *(a1 + 1192);
          *(a1 + 1192) = v9;
          if (v6)
          {
            (*(*v6 + 8))(v6);
          }
        }

        v7 = *(a1 + 1056);
        if (*(v7 + 24) != *(v7 + 32))
        {
          sub_29926F688(a1, (v7 + 24));
          v7 = *(a1 + 1056);
        }

        *(v7 + 81) = 0;
      }

      v4 = *(a1 + 1192);
      if (v4)
      {
LABEL_12:
        *(*(a1 + 3816) + 8) = v4;
        v8 = *(**(a1 + 3848) + 32);

        v8();
      }
    }
  }
}

uint64_t sub_299272444(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 1168);
  if (result)
  {
    return sub_299384100(result, a2);
  }

  return result;
}

uint64_t sub_299272454(uint64_t a1, const __CFString *a2)
{
  result = *(a1 + 1168);
  if (result)
  {
    return sub_2993841C0(result, a2);
  }

  return result;
}

uint64_t sub_299272464(int a1, const __CFString *a2)
{
  result = sub_2992704A4(a1, a2);
  if (result)
  {

    return sub_29928A270(result);
  }

  return result;
}

uint64_t sub_2992724EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v4 = (v2 + 24);
    sub_29927255C(&v4);
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x29C29BFB0](v2, 0x1032C40CA71968DLL);
  }

  return a1;
}

void sub_29927255C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_29921ED28((v4 - 48));
        v6 = *(v4 - 11);
        if (v6)
        {
          *(v4 - 10) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 14);
        if (v7)
        {
          *(v4 - 13) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 17);
        if (v8)
        {
          *(v4 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v4 - 20);
        if (v9)
        {
          *(v4 - 19) = v9;
          operator delete(v9);
        }

        v10 = v4 - 184;
        v11 = *(v4 - 23);
        if (v11)
        {
          *(v4 - 22) = v11;
          operator delete(v11);
        }

        v4 -= 184;
      }

      while (v10 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_299272640(uint64_t a1)
{
  sub_299253084((a1 + 2592), 0);
  std::mutex::~mutex((a1 + 16));
  sub_299215B18((a1 + 8), 0);
  return a1;
}

uint64_t sub_299272684(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_29918D980(a1 + 8);

  return sub_29919C3B0(a1);
}

void sub_2992726D0(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        sub_29925A03C(&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

unint64_t *sub_299272744(unint64_t *result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v112 = *(a2 - 2);
        v113 = *v8;
        if (v112 <= *v8)
        {
          return result;
        }

        v114 = v8[1];
        v115 = *(a2 - 1);
        *v8 = v112;
        v8[1] = v115;
        goto LABEL_105;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v120 = v8[2];
      v121 = *v8;
      v122 = v8[4];
      if (v120 <= *v8)
      {
        if (v122 > v120)
        {
          v179 = v8[3];
          v180 = v8[5];
          v8[2] = v122;
          v8[3] = v180;
          v8[4] = v120;
          v8[5] = v179;
          if (v122 > v121)
          {
            v181 = v8[1];
            *v8 = v122;
            v8[1] = v180;
            v8[2] = v121;
            v8[3] = v181;
          }

          goto LABEL_193;
        }
      }

      else
      {
        if (v122 > v120)
        {
          v123 = v8[1];
          v124 = v8[5];
          *v8 = v122;
          v8[1] = v124;
          v8[4] = v121;
          v8[5] = v123;
          goto LABEL_191;
        }

        v193 = v8[1];
        v194 = v8[3];
        *v8 = v120;
        v8[1] = v194;
        v8[2] = v121;
        v8[3] = v193;
        if (v122 > v121)
        {
          v195 = v8[5];
          v8[2] = v122;
          v8[3] = v195;
          v8[4] = v121;
          v8[5] = v193;
LABEL_191:
          v120 = v121;
LABEL_193:
          v196 = *(a2 - 2);
          if (v196 > v120)
          {
            v8[4] = v196;
            *(a2 - 2) = v120;
            v197 = v8[4];
            v198 = v8[5];
            v8[5] = *(a2 - 1);
            *(a2 - 1) = v198;
            v199 = v8[2];
            if (v197 > v199)
            {
              v200 = v8[3];
              v201 = v8[5];
              v8[2] = v197;
              v8[3] = v201;
              v8[4] = v199;
              v8[5] = v200;
              v202 = *v8;
              if (v197 > *v8)
              {
                v203 = v8[1];
                *v8 = v197;
                v8[1] = v201;
                v8[2] = v202;
                v8[3] = v203;
              }
            }
          }

          return result;
        }
      }

      v120 = v122;
      goto LABEL_193;
    }

    if (v9 == 5)
    {

      return sub_299273174(v8, v8 + 2, v8 + 4, v8 + 6, a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v125 = v8 + 2;
      v127 = v8 == a2 || v125 == a2;
      if (a4)
      {
        if (!v127)
        {
          v128 = 0;
          v129 = v8;
          do
          {
            v130 = v125;
            v131 = v129[2];
            v132 = *v129;
            if (v131 > *v129)
            {
              v133 = v129[3];
              v134 = v128;
              while (1)
              {
                v135 = v8 + v134;
                v136 = *(v8 + v134 + 8);
                *(v135 + 2) = v132;
                *(v135 + 3) = v136;
                if (!v134)
                {
                  break;
                }

                v132 = *(v135 - 2);
                v134 -= 16;
                if (v131 <= v132)
                {
                  v137 = (v8 + v134 + 16);
                  goto LABEL_127;
                }
              }

              v137 = v8;
LABEL_127:
              *v137 = v131;
              v137[1] = v133;
            }

            v125 = v130 + 2;
            v128 += 16;
            v129 = v130;
          }

          while (v130 + 2 != a2);
        }
      }

      else if (!v127)
      {
        v182 = v8 + 3;
        do
        {
          v183 = v125;
          v184 = v7[2];
          v185 = *v7;
          if (v184 > *v7)
          {
            v186 = v7[3];
            v187 = v182;
            do
            {
              v188 = v187;
              v189 = *(v187 - 2);
              v187 -= 2;
              *(v188 - 1) = v185;
              *v188 = v189;
              v185 = *(v188 - 5);
            }

            while (v184 > v185);
            *(v187 - 1) = v184;
            *v187 = v186;
          }

          v125 = v183 + 2;
          v182 += 2;
          v7 = v183;
        }

        while (v183 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v138 = (v9 - 2) >> 1;
        v139 = v138;
        do
        {
          v140 = v139;
          if (v138 >= v139)
          {
            v141 = (2 * v139) | 1;
            v142 = &v8[2 * v141];
            if (2 * v140 + 2 >= v9)
            {
              v143 = *v142;
            }

            else
            {
              v143 = v142[2];
              v144 = *v142 > v143;
              if (*v142 < v143)
              {
                v143 = *v142;
              }

              if (v144)
              {
                v142 += 2;
                v141 = 2 * v140 + 2;
              }
            }

            v145 = &v8[2 * v140];
            v146 = *v145;
            if (v143 <= *v145)
            {
              v147 = v145[1];
              do
              {
                v148 = v145;
                v145 = v142;
                v149 = v142[1];
                *v148 = v143;
                v148[1] = v149;
                if (v138 < v141)
                {
                  break;
                }

                v150 = (2 * v141) | 1;
                v142 = &v8[2 * v150];
                v141 = 2 * v141 + 2;
                if (v141 >= v9)
                {
                  v143 = *v142;
                  v141 = v150;
                }

                else
                {
                  v143 = *v142;
                  result = v142 + 2;
                  v151 = v142[2];
                  if (*v142 >= v151)
                  {
                    v143 = v142[2];
                  }

                  if (*v142 <= v151)
                  {
                    v141 = v150;
                  }

                  else
                  {
                    v142 += 2;
                  }
                }
              }

              while (v143 <= v146);
              *v145 = v146;
              v145[1] = v147;
            }
          }

          v139 = v140 - 1;
        }

        while (v140);
        do
        {
          v152 = 0;
          v153 = *v8;
          v154 = v8[1];
          v155 = v8;
          do
          {
            v156 = &v155[2 * v152];
            v157 = v156 + 2;
            v158 = (2 * v152) | 1;
            v152 = 2 * v152 + 2;
            if (v152 >= v9)
            {
              v159 = *v157;
              v152 = v158;
            }

            else
            {
              v161 = v156[4];
              v160 = v156 + 4;
              v159 = v161;
              result = *(v160 - 2);
              v162 = result > v161;
              if (result < v161)
              {
                v159 = *(v160 - 2);
              }

              if (v162)
              {
                v157 = v160;
              }

              else
              {
                v152 = v158;
              }
            }

            v163 = v157[1];
            *v155 = v159;
            v155[1] = v163;
            v155 = v157;
          }

          while (v152 <= ((v9 - 2) >> 1));
          if (v157 == a2 - 2)
          {
            *v157 = v153;
            v157[1] = v154;
          }

          else
          {
            v164 = *(a2 - 1);
            *v157 = *(a2 - 2);
            v157[1] = v164;
            *(a2 - 2) = v153;
            *(a2 - 1) = v154;
            v165 = (v157 - v8 + 16) >> 4;
            v144 = v165 < 2;
            v166 = v165 - 2;
            if (!v144)
            {
              v167 = v166 >> 1;
              v168 = &v8[2 * v167];
              v169 = *v168;
              v170 = *v157;
              if (*v168 > *v157)
              {
                v171 = v157[1];
                do
                {
                  v172 = v157;
                  v157 = v168;
                  v173 = v168[1];
                  *v172 = v169;
                  v172[1] = v173;
                  if (!v167)
                  {
                    break;
                  }

                  v167 = (v167 - 1) >> 1;
                  v168 = &v8[2 * v167];
                  v169 = *v168;
                }

                while (*v168 > v170);
                *v157 = v170;
                v157[1] = v171;
              }
            }
          }

          a2 -= 2;
          v144 = v9-- <= 2;
        }

        while (!v144);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 < 0x81)
    {
      v17 = *v8;
      v18 = *v11;
      if (*v8 <= *v11)
      {
        if (v12 > v17)
        {
          *v8 = v12;
          *(a2 - 2) = v17;
          v26 = *v8;
          v27 = v8[1];
          v8[1] = *(a2 - 1);
          *(a2 - 1) = v27;
          v28 = *v11;
          if (v26 > *v11)
          {
            v29 = v11[1];
            v30 = v8[1];
            *v11 = v26;
            v11[1] = v30;
            *v8 = v28;
            v8[1] = v29;
          }
        }
      }

      else if (v12 <= v17)
      {
        v46 = v11[1];
        v47 = v8[1];
        *v11 = v17;
        v11[1] = v47;
        *v8 = v18;
        v8[1] = v46;
        v48 = *(a2 - 2);
        if (v48 > v18)
        {
          v49 = *(a2 - 1);
          *v8 = v48;
          v8[1] = v49;
          *(a2 - 2) = v18;
          *(a2 - 1) = v46;
        }
      }

      else
      {
        v19 = v11[1];
        v20 = *(a2 - 1);
        *v11 = v12;
        v11[1] = v20;
        *(a2 - 2) = v18;
        *(a2 - 1) = v19;
      }

      goto LABEL_56;
    }

    v13 = *v10;
    v14 = *v8;
    if (*v10 <= *v8)
    {
      if (v12 > v13)
      {
        *v10 = v12;
        *(a2 - 2) = v13;
        v21 = *v10;
        v22 = v10[1];
        v10[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v23 = *v8;
        if (v21 > *v8)
        {
          v24 = v8[1];
          v25 = v10[1];
          *v8 = v21;
          v8[1] = v25;
          *v10 = v23;
          v10[1] = v24;
        }
      }
    }

    else if (v12 <= v13)
    {
      v31 = v8[1];
      v32 = v10[1];
      *v8 = v13;
      v8[1] = v32;
      *v10 = v14;
      v10[1] = v31;
      v33 = *(a2 - 2);
      if (v33 > v14)
      {
        v34 = *(a2 - 1);
        *v10 = v33;
        v10[1] = v34;
        *(a2 - 2) = v14;
        *(a2 - 1) = v31;
      }
    }

    else
    {
      v15 = v8[1];
      v16 = *(a2 - 1);
      *v8 = v12;
      v8[1] = v16;
      *(a2 - 2) = v14;
      *(a2 - 1) = v15;
    }

    v35 = v10 - 2;
    v36 = *(v10 - 2);
    v37 = v8[2];
    v38 = *(a2 - 4);
    if (v36 <= v37)
    {
      if (v38 > v36)
      {
        *v35 = v38;
        *(a2 - 4) = v36;
        v41 = *v35;
        v42 = *(v10 - 1);
        *(v10 - 1) = *(a2 - 3);
        *(a2 - 3) = v42;
        v43 = v8[2];
        if (v41 > v43)
        {
          v44 = v8[3];
          v45 = *(v10 - 1);
          v8[2] = v41;
          v8[3] = v45;
          *v35 = v43;
          *(v10 - 1) = v44;
        }
      }
    }

    else if (v38 <= v36)
    {
      v50 = v8[3];
      v51 = *(v10 - 1);
      v8[2] = v36;
      v8[3] = v51;
      *v35 = v37;
      *(v10 - 1) = v50;
      v52 = *(a2 - 4);
      if (v52 > v37)
      {
        v53 = *(a2 - 3);
        *v35 = v52;
        *(v10 - 1) = v53;
        *(a2 - 4) = v37;
        *(a2 - 3) = v50;
      }
    }

    else
    {
      v39 = v8[3];
      v40 = *(a2 - 3);
      v8[2] = v38;
      v8[3] = v40;
      *(a2 - 4) = v37;
      *(a2 - 3) = v39;
    }

    v56 = v10[2];
    v54 = v10 + 2;
    v55 = v56;
    v57 = v8[4];
    v58 = *(a2 - 6);
    if (v56 <= v57)
    {
      if (v58 > v55)
      {
        *v54 = v58;
        *(a2 - 6) = v55;
        v61 = *v54;
        v62 = v54[1];
        v54[1] = *(a2 - 5);
        *(a2 - 5) = v62;
        v63 = v8[4];
        if (v61 > v63)
        {
          v64 = v8[5];
          v65 = v54[1];
          v8[4] = v61;
          v8[5] = v65;
          *v54 = v63;
          v54[1] = v64;
        }
      }
    }

    else if (v58 <= v55)
    {
      v66 = v8[5];
      v67 = v54[1];
      v8[4] = v55;
      v8[5] = v67;
      *v54 = v57;
      v54[1] = v66;
      v68 = *(a2 - 6);
      if (v68 > v57)
      {
        v69 = *(a2 - 5);
        *v54 = v68;
        v54[1] = v69;
        *(a2 - 6) = v57;
        *(a2 - 5) = v66;
      }
    }

    else
    {
      v59 = v8[5];
      v60 = *(a2 - 5);
      v8[4] = v58;
      v8[5] = v60;
      *(a2 - 6) = v57;
      *(a2 - 5) = v59;
    }

    v70 = *v11;
    v71 = *v35;
    v72 = *v54;
    if (*v11 <= *v35)
    {
      if (v72 <= v70)
      {
        goto LABEL_51;
      }

      v75 = v11[1];
      v76 = v54[1];
      *v11 = v72;
      v11[1] = v76;
      *v54 = v70;
      v54[1] = v75;
      if (v72 <= v71)
      {
        goto LABEL_54;
      }

      v77 = v35[1];
      *v35 = v72;
      v35[1] = v76;
      *v11 = v71;
      v11[1] = v77;
    }

    else
    {
      if (v72 > v70)
      {
        v73 = v35[1];
        v74 = v54[1];
        *v35 = v72;
        v35[1] = v74;
        *v54 = v71;
        v54[1] = v73;
LABEL_51:
        v71 = v70;
        goto LABEL_55;
      }

      v78 = v35[1];
      v79 = v11[1];
      *v35 = v70;
      v35[1] = v79;
      *v11 = v71;
      v11[1] = v78;
      if (v72 > v71)
      {
        v80 = v54[1];
        *v11 = v72;
        v11[1] = v80;
        *v54 = v71;
        v54[1] = v78;
LABEL_54:
        v71 = v72;
      }
    }

LABEL_55:
    v81 = *v8;
    v82 = v8[1];
    v83 = v11[1];
    *v8 = v71;
    v8[1] = v83;
    *v11 = v81;
    v11[1] = v82;
LABEL_56:
    --a3;
    v84 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 2) > v84)
    {
      v85 = 0;
      v86 = v8[1];
      do
      {
        v87 = v8[v85 + 2];
        v85 += 2;
      }

      while (v87 > v84);
      v88 = &v8[v85];
      v89 = a2;
      if (v85 == 2)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 2;
        }

        while (v91 <= v84);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 2;
        }

        while (v90 <= v84);
      }

      if (v88 >= v89)
      {
        v8 = (v8 + v85 * 8);
      }

      else
      {
        v92 = *v89;
        v8 = (v8 + v85 * 8);
        v93 = v89;
        do
        {
          v94 = v8[1];
          v95 = v93[1];
          *v8 = v92;
          v8[1] = v95;
          *v93 = v87;
          v93[1] = v94;
          do
          {
            v96 = v8[2];
            v8 += 2;
            v87 = v96;
          }

          while (v96 > v84);
          do
          {
            v97 = *(v93 - 2);
            v93 -= 2;
            v92 = v97;
          }

          while (v97 <= v84);
        }

        while (v8 < v93);
      }

      if (v8 - 2 != v7)
      {
        v98 = *(v8 - 1);
        *v7 = *(v8 - 2);
        v7[1] = v98;
      }

      *(v8 - 2) = v84;
      *(v8 - 1) = v86;
      if (v88 < v89)
      {
        goto LABEL_79;
      }

      v99 = sub_299273310(v7, v8 - 2);
      result = sub_299273310(v8, a2);
      if (result)
      {
        a2 = v8 - 2;
        if (!v99)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v99)
      {
LABEL_79:
        result = sub_299272744(v7, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      if (v84 <= *(a2 - 2))
      {
        v101 = v8 + 2;
        do
        {
          v8 = v101;
          if (v101 >= a2)
          {
            break;
          }

          v101 += 2;
        }

        while (v84 <= *v8);
      }

      else
      {
        do
        {
          v100 = v8[2];
          v8 += 2;
        }

        while (v84 <= v100);
      }

      v102 = a2;
      if (v8 < a2)
      {
        v102 = a2;
        do
        {
          v103 = *(v102 - 2);
          v102 -= 2;
        }

        while (v84 > v103);
      }

      v104 = v7[1];
      if (v8 < v102)
      {
        v105 = *v8;
        v106 = *v102;
        do
        {
          v107 = v8[1];
          v108 = v102[1];
          *v8 = v106;
          v8[1] = v108;
          *v102 = v105;
          v102[1] = v107;
          do
          {
            v109 = v8[2];
            v8 += 2;
            v105 = v109;
          }

          while (v84 <= v109);
          do
          {
            v110 = *(v102 - 2);
            v102 -= 2;
            v106 = v110;
          }

          while (v84 > v110);
        }

        while (v8 < v102);
      }

      if (v8 - 2 != v7)
      {
        v111 = *(v8 - 1);
        *v7 = *(v8 - 2);
        v7[1] = v111;
      }

      a4 = 0;
      *(v8 - 2) = v84;
      *(v8 - 1) = v104;
    }
  }

  v116 = v8[2];
  v113 = *v8;
  v117 = *(a2 - 2);
  if (v116 <= *v8)
  {
    if (v117 > v116)
    {
      v8[2] = v117;
      *(a2 - 2) = v116;
      v174 = v8[2];
      v175 = v8[3];
      v8[3] = *(a2 - 1);
      *(a2 - 1) = v175;
      v176 = *v8;
      if (v174 > *v8)
      {
        v177 = v8[1];
        v178 = v8[3];
        *v8 = v174;
        v8[1] = v178;
        v8[2] = v176;
        v8[3] = v177;
      }
    }
  }

  else if (v117 <= v116)
  {
    v114 = v8[1];
    v190 = v8[3];
    *v8 = v116;
    v8[1] = v190;
    v8[2] = v113;
    v8[3] = v114;
    v191 = *(a2 - 2);
    if (v191 > v113)
    {
      v192 = *(a2 - 1);
      v8[2] = v191;
      v8[3] = v192;
LABEL_105:
      *(a2 - 2) = v113;
      *(a2 - 1) = v114;
    }
  }

  else
  {
    v118 = v8[1];
    v119 = *(a2 - 1);
    *v8 = v117;
    v8[1] = v119;
    *(a2 - 2) = v113;
    *(a2 - 1) = v118;
  }

  return result;
}

unint64_t *sub_299273174(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 <= *result)
  {
    if (v7 <= v5)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v7;
      *a3 = v5;
      v10 = *a2;
      v11 = a2[1];
      a2[1] = a3[1];
      a3[1] = v11;
      v12 = *result;
      if (v10 > *result)
      {
        v13 = result[1];
        v14 = a2[1];
        *result = v10;
        result[1] = v14;
        *a2 = v12;
        a2[1] = v13;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v7 > v5)
    {
      v8 = result[1];
      v9 = a3[1];
      *result = v7;
      result[1] = v9;
      *a3 = v6;
      a3[1] = v8;
LABEL_9:
      v5 = v6;
      goto LABEL_11;
    }

    v15 = result[1];
    v16 = a2[1];
    *result = v5;
    result[1] = v16;
    *a2 = v6;
    a2[1] = v15;
    v5 = *a3;
    if (*a3 > v6)
    {
      v17 = a3[1];
      *a2 = v5;
      a2[1] = v17;
      *a3 = v6;
      a3[1] = v15;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*a4 > v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v18 = *a3;
    v19 = a3[1];
    a3[1] = a4[1];
    a4[1] = v19;
    v20 = *a2;
    if (v18 > *a2)
    {
      *a2 = v18;
      *a3 = v20;
      v21 = *a2;
      v22 = a2[1];
      a2[1] = a3[1];
      a3[1] = v22;
      v23 = *result;
      if (v21 > *result)
      {
        v24 = result[1];
        v25 = a2[1];
        *result = v21;
        result[1] = v25;
        *a2 = v23;
        a2[1] = v24;
      }
    }
  }

  v26 = *a4;
  if (*a5 > *a4)
  {
    *a4 = *a5;
    *a5 = v26;
    v27 = *a4;
    v28 = a4[1];
    a4[1] = a5[1];
    a5[1] = v28;
    v29 = *a3;
    if (v27 > *a3)
    {
      *a3 = v27;
      *a4 = v29;
      v30 = *a3;
      v31 = a3[1];
      a3[1] = a4[1];
      a4[1] = v31;
      v32 = *a2;
      if (v30 > *a2)
      {
        *a2 = v30;
        *a3 = v32;
        v33 = *a2;
        v34 = a2[1];
        a2[1] = a3[1];
        a3[1] = v34;
        v35 = *result;
        if (v33 > *result)
        {
          v36 = result[1];
          v37 = a2[1];
          *result = v33;
          result[1] = v37;
          *a2 = v35;
          a2[1] = v36;
        }
      }
    }
  }

  return result;
}

BOOL sub_299273310(unint64_t *a1, unint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = a1[2];
      v4 = *a1;
      v8 = *(a2 - 2);
      if (v7 <= *a1)
      {
        if (v8 > v7)
        {
          a1[2] = v8;
          *(a2 - 2) = v7;
          v22 = a1[2];
          v23 = a1[3];
          a1[3] = *(a2 - 1);
          *(a2 - 1) = v23;
          v24 = *a1;
          if (v22 > *a1)
          {
            v25 = a1[1];
            v26 = a1[3];
            *a1 = v22;
            a1[1] = v26;
            a1[2] = v24;
            a1[3] = v25;
          }
        }

        return 1;
      }

      if (v8 > v7)
      {
        v9 = a1[1];
        v10 = *(a2 - 1);
        *a1 = v8;
        a1[1] = v10;
        *(a2 - 2) = v4;
        *(a2 - 1) = v9;
        return 1;
      }

      v5 = a1[1];
      v33 = a1[3];
      *a1 = v7;
      a1[1] = v33;
      a1[2] = v4;
      a1[3] = v5;
      v34 = *(a2 - 2);
      if (v34 <= v4)
      {
        return 1;
      }

      v35 = *(a2 - 1);
      a1[2] = v34;
      a1[3] = v35;
      goto LABEL_6;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_299273174(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

      goto LABEL_14;
    }

    v17 = a1[2];
    v18 = *a1;
    v19 = a1[4];
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v30 = a1[3];
        v31 = a1[5];
        a1[2] = v19;
        a1[3] = v31;
        a1[4] = v17;
        a1[5] = v30;
        if (v19 > v18)
        {
          v32 = a1[1];
          *a1 = v19;
          a1[1] = v31;
          a1[2] = v18;
          a1[3] = v32;
        }

        goto LABEL_48;
      }
    }

    else
    {
      if (v19 > v17)
      {
        v20 = a1[1];
        v21 = a1[5];
        *a1 = v19;
        a1[1] = v21;
        a1[4] = v18;
        a1[5] = v20;
LABEL_46:
        v17 = v18;
LABEL_48:
        v52 = *(a2 - 2);
        if (v52 > v17)
        {
          a1[4] = v52;
          *(a2 - 2) = v17;
          v53 = a1[4];
          v54 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v54;
          v55 = a1[2];
          if (v53 > v55)
          {
            v56 = a1[3];
            v57 = a1[5];
            a1[2] = v53;
            a1[3] = v57;
            a1[4] = v55;
            a1[5] = v56;
            v58 = *a1;
            if (v53 > *a1)
            {
              v59 = a1[1];
              *a1 = v53;
              a1[1] = v57;
              a1[2] = v58;
              a1[3] = v59;
            }
          }
        }

        return 1;
      }

      v49 = a1[1];
      v50 = a1[3];
      *a1 = v17;
      a1[1] = v50;
      a1[2] = v18;
      a1[3] = v49;
      if (v19 > v18)
      {
        v51 = a1[5];
        a1[2] = v19;
        a1[3] = v51;
        a1[4] = v18;
        a1[5] = v49;
        goto LABEL_46;
      }
    }

    v17 = v19;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 > *a1)
    {
      v5 = a1[1];
      v6 = *(a2 - 1);
      *a1 = v3;
      a1[1] = v6;
LABEL_6:
      *(a2 - 2) = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_14:
  v11 = a1 + 4;
  v12 = a1[4];
  v13 = a1[2];
  v14 = *a1;
  if (v13 <= *a1)
  {
    if (v12 > v13)
    {
      v27 = a1[3];
      v28 = a1[5];
      a1[2] = v12;
      a1[3] = v28;
      a1[4] = v13;
      a1[5] = v27;
      if (v12 > v14)
      {
        v29 = a1[1];
        *a1 = v12;
        a1[1] = v28;
        a1[2] = v14;
        a1[3] = v29;
      }
    }
  }

  else if (v12 <= v13)
  {
    v36 = a1[1];
    v37 = a1[3];
    *a1 = v13;
    a1[1] = v37;
    a1[2] = v14;
    a1[3] = v36;
    if (v12 > v14)
    {
      v38 = a1[5];
      a1[2] = v12;
      a1[3] = v38;
      a1[4] = v14;
      a1[5] = v36;
    }
  }

  else
  {
    v15 = a1[1];
    v16 = a1[5];
    *a1 = v12;
    a1[1] = v16;
    a1[4] = v14;
    a1[5] = v15;
  }

  v39 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v40 = 0;
  v41 = 0;
  while (1)
  {
    v42 = *v39;
    v43 = *v11;
    if (*v39 > *v11)
    {
      v44 = v39[1];
      v45 = v40;
      while (1)
      {
        v46 = (a1 + v45);
        v47 = *(a1 + v45 + 40);
        v46[6] = v43;
        v46[7] = v47;
        if (v45 == -32)
        {
          break;
        }

        v43 = v46[2];
        v45 -= 16;
        if (v42 <= v43)
        {
          v48 = (a1 + v45 + 48);
          goto LABEL_41;
        }
      }

      v48 = a1;
LABEL_41:
      *v48 = v42;
      v48[1] = v44;
      if (++v41 == 8)
      {
        return v39 + 2 == a2;
      }
    }

    v11 = v39;
    v40 += 16;
    v39 += 2;
    if (v39 == a2)
    {
      return 1;
    }
  }
}

uint64_t **sub_29927363C(void *a1, void *a2)
{
  v4 = (*(**a2 + 144))();
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v5 <= v4)
    {
      v9 = v4 % v5;
    }
  }

  else
  {
    v9 = (v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if ((*(*i[2] + 152))(i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= v5)
        {
          v12 %= v5;
        }
      }

      else
      {
        v12 &= v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_299273778(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299215B18(a1, cf);
  }
}

uint64_t sub_2992737D8(uint64_t a1)
{
  sub_299273810(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_299273810(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_299273884(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[5] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    a1[2] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2992738F8(uint64_t a1, _WORD *a2, uint64_t a3, __int16 a4, _WORD *a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v13 = a3;
  sub_29925493C(&v28, a2, &a2[a3], (a1 + 8));
  sub_29925493C(&v29, a5, &a5[a6], (a1 + 32));
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  if (v15 >= v16)
  {
    v18 = *(a1 + 56);
    v19 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - v18) >> 3);
    v20 = v19 + 1;
    if (v19 + 1 > 0x666666666666666)
    {
      sub_29921E9A8();
    }

    v21 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v18) >> 3);
    if (2 * v21 > v20)
    {
      v20 = 2 * v21;
    }

    if (v21 >= 0x333333333333333)
    {
      v22 = 0x666666666666666;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      sub_29921E9C0(a1 + 56, v22);
    }

    v23 = 40 * v19;
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *(v23 + 24) = v13;
    *(v23 + 26) = a4;
    *(v23 + 28) = a6;
    *(v23 + 30) = a7;
    *(v23 + 32) = a8;
    *(v23 + 34) = 0;
    *(v23 + 36) = 0;
    *(v23 + 37) = 513;
    *(v23 + 39) = 0;
    v17 = 40 * v19 + 40;
    v24 = *(a1 + 56);
    v25 = *(a1 + 64) - v24;
    v26 = (40 * v19 - v25);
    memcpy(v26, v24, v25);
    v27 = *(a1 + 56);
    *(a1 + 56) = v26;
    *(a1 + 64) = v17;
    *(a1 + 72) = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 26) = a4;
    *(v15 + 28) = a6;
    *(v15 + 30) = a7;
    *(v15 + 32) = a8;
    *(v15 + 34) = 0;
    *(v15 + 36) = 0;
    *(v15 + 37) = 513;
    v17 = v15 + 40;
    *(v15 + 39) = 0;
  }

  *(a1 + 64) = v17;
}

uint64_t sub_299273A90(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 != a1[2])
  {
    v2 = a1[4];
    if (v2 != a1[5] && a1[7] != a1[8])
    {
      v3 = *a1;
      v7 = a1[1];
      v6 = a1[4];
      v5 = a1[10];
      sub_2992DC898();
    }
  }

  return 0;
}

uint64_t sub_299273B40(uint64_t a1)
{
  sub_299274AE8((a1 + 80), 0);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_299273BA0(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_299273C0C(void *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(*a1 + 40);
    v3 = (a1[1] + 40 * a2 + 30);
    do
    {
      v4 = *(v3 - 19);
      if (v2 > v4)
      {
        v5 = *(*a1 + 32);
        if (*(v5 + v4))
        {
          v6 = *v3;
          if (v2 > v6 && (*(v5 + v6) & 2) != 0)
          {
            break;
          }
        }
      }

      v3 -= 20;
      --a2;
    }

    while (a2);
  }

  return a2;
}

void sub_299273C64(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_29920B86C(a1, a2);
  }

  sub_299212A8C();
}

void sub_299273CA0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_299273CF4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_299273CF4(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 41);
    v3 -= 8;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_299273D44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_299273DCC(result, a4);
  }

  return result;
}

void sub_299273DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_299212B90(&a9);
  _Unwind_Resume(a1);
}

void sub_299273DCC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_299212AA4(a1, a2);
  }

  sub_299212A8C();
}

char *sub_299273E18(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_29922C89C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_299273ED8(v9);
  return v4;
}

uint64_t sub_299273ED8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_299273F10(a1);
  }

  return a1;
}

void sub_299273F10(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_299273F58(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      sub_299273FB8(a1, v2);
      v2 = v5;
    }
  }
}

void sub_299273FB8(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_299273FFC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_299274058(a1, *(a1 + 16));
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

void sub_299274058(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_2992740A4(uint64_t *a1)
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
        sub_2992327A4((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_299274118(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29927415C(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v6 = *a3;
  operator new();
}

void sub_299274298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int16 *sub_2992742B4(void *a1, unsigned __int16 *a2)
{
  v4 = sub_29923AF34(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_29927452C();
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_29923AF78(a1, v11 + 8, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_299274508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_2992745EC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992745D0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2992745EC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_2992745EC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_299274650(void *a1, unsigned __int16 *a2)
{
  result = sub_299274688(a1, a2);
  if (result)
  {
    sub_299274784(a1, result);
    return 1;
  }

  return result;
}

unsigned __int16 *sub_299274688(void *a1, unsigned __int16 *a2)
{
  v4 = sub_29923AF34(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v12 == v6)
    {
      if (sub_29923AF78(a1, i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t sub_299274784(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2992747D0(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_2992745EC(&v6, v3);
  }

  return v2;
}

void *sub_2992747D0@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

char *sub_299274A50(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_29922C89C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_299274ACC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_299274AE8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299274B8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_299274C10(v2, 0);
    MEMORY[0x29C29BFB0](v2, 0x1020C403A5D3213);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_299274C48(v3, 0);
    MEMORY[0x29C29BFB0](v3, 0x20C4093837F09);
  }

  return a1;
}

void sub_299274C10(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299274C48(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299274C80(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x50C40EE9192B6);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299274CE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2991A893C(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_299274D34(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_299274D78((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_299274D78(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_299274DF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_299274D78(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_299274E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      sub_299274EB4(a1, a2);
      a2 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

void *sub_299274EB4(void *a1, uint64_t a2)
{
  v4 = sub_29927512C(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v4;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  v10 = *(a2 + 8);
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  if (v9[3] != v10)
  {
    goto LABEL_22;
  }

  if (v10)
  {
    v12 = v9[2];
    v13 = *(a2 + 8);
    for (i = *a2; *i == *v12; i = (i + 2))
    {
      ++v12;
      if (!--v13)
      {
        return v9;
      }
    }

    goto LABEL_22;
  }

  return v9;
}

void sub_299275158(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    JUMPOUT(0x29C29BFB0);
  }
}

uint64_t sub_2992751B4(uint64_t a1)
{
  sub_299274058(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2992751F0(uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C29BE80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  sub_2991BF83C(a1);
  return a1;
}

void sub_29927529C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_2992752C4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    munmap(v2, *(a1 + 8));
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (*(a1 + 14))
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7)
        {
          free(v7);
          v6 = *(a1 + 16);
        }

        v8 = *(v6 + v4 + 8);
        if (v8)
        {
          free(v8);
        }

        ++v5;
        v4 += 32;
      }

      while (v5 < *(a1 + 14));
      v3 = *(a1 + 16);
    }

    free(v3);
  }
}

uint64_t sub_299275374(void **a1, CFURLRef anURL)
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (v3 && (v4 = v3, memset(&v23, 0, sizeof(v23)), CString = CFStringGetCString(v3, buffer, 1024, 0x8000100u), CFRelease(v4), CString))
  {
    v6 = open(buffer, 0, *&v23.st_dev, *&v23.st_uid, *&v23.st_atimespec, *&v23.st_mtimespec, *&v23.st_ctimespec, *&v23.st_birthtimespec);
    if (v6 == -1)
    {
      result = 4294967253;
    }

    else
    {
      v7 = v6;
      fstat(v6, &v23);
      *a1 = mmap(0, v23.st_size, 1, 2, v7, 0);
      close(v7);
      v8 = *a1;
      if (*a1 == -1 || (*(a1 + 2) = v23.st_size, *(a1 + 6) = bswap32(*(v8 + 38)) >> 16, v9 = bswap32(*(v8 + 39)), v10 = HIWORD(v9), *(a1 + 7) = HIWORD(v9), v11 = malloc_type_calloc(1uLL, 32 * v10, 0x10100402BD90E94uLL), (a1[2] = v11) == 0))
      {
        result = 4294967188;
      }

      else
      {
        if (*(a1 + 7))
        {
          v12 = 0;
          v13 = &v8[4 * v10 + 80];
          do
          {
            v14 = a1[2] + 32 * v12;
            v15 = bswap32(*v13);
            *(v14 + 24) = v15;
            v16 = 2 * v15 + 2;
            *(v14 + 28) = bswap32(v13[1]);
            v17 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
            *v14 = v17;
            if (v16 >= 1)
            {
              v18 = 0;
              do
              {
                v19 = *v13++;
                v17[v18++] = bswap32(v19);
              }

              while (v16 > v18);
            }

            v20 = malloc_type_malloc(*(v14 + 28), 0x100004077774924uLL);
            *(v14 + 8) = v20;
            memcpy(v20, v13, *(v14 + 28));
            v13 = (v13 + *(v14 + 28));
            *(v14 + 16) = 0;
            ++v12;
          }

          while (v12 < *(a1 + 7));
        }

        result = 0;
      }
    }
  }

  else
  {
    result = 4294967246;
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

CFStringRef sub_2992755BC(const __CFURL *a1)
{
  v1 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 10, MEMORY[0x29EDB9000]);
  CFArrayAppendValue(Mutable, v1);
  CFRelease(v1);
  CFArrayAppendValue(Mutable, @"ja");
  v4 = CFStringCreateByCombiningStrings(v2, Mutable, @"/");
  CFRelease(Mutable);
  return v4;
}

CFStringRef sub_299275654(const __CFURL *a1)
{
  if (a1)
  {
    result = sub_2992755BC(a1);
    if (result)
    {
      v2 = result;
      v3 = CFURLCreateWithFileSystemPath(0, result, kCFURLPOSIXPathStyle, 1u);
      CFRelease(v2);
      return v3;
    }
  }

  else
  {

    return sub_29936D41C("ja");
  }

  return result;
}

__CFArray *sub_2992756CC()
{
  v101 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460490))
  {
    sub_29927A128(values, "n", "l");
    sub_29927A17C(v18);
    sub_29927A1D8(v19, L"gw", "g");
    sub_29927A22C(v20);
    sub_29927A1D8(v21, L"ch", "c");
    sub_29927A128(v22, "y", "j");
    sub_29927A128(v23, "j", "z");
    sub_29927A288(v24);
    sub_29927A2E4(v25, L"ba", "b");
    sub_29927A338(v26, "c", "c");
    sub_29927A38C(v27, "c", "c");
    sub_29927A38C(v28, L"cheun", L"ceon");
    sub_29927A38C(v29, "c", "c");
    sub_29927A38C(v30, L"cheuk", L"coek");
    sub_29927A3E0(v31);
    sub_29927A2E4(v32, L"da", "d");
    sub_29927A43C(v33, "d", L"deoi");
    sub_29927A43C(v34, "d", L"deon");
    sub_29927A43C(v35, "d", L"deot");
    sub_29927A338(v36, "d", "d");
    sub_29927A43C(v37, "d", L"doek");
    sub_29927A490(v38, "d", "d");
    sub_29927A2E4(v39, "f", L"faa");
    sub_29927A2E4(v40, L"ga", "g");
    sub_29927A43C(v41, "g", L"geoi");
    sub_29927A338(v42, "g", "g");
    sub_29927A43C(v43, "g", L"goek");
    sub_29927A490(v44, "g", "g");
    sub_29927A4E4(v45, "g", "g");
    sub_29927A2E4(v46, L"ha", "h");
    sub_29927A43C(v47, "h", L"heoi");
    sub_29927A338(v48, "h", "h");
    sub_29927A490(v49, "h", "h");
    sub_29927A43C(v50, "j", L"zeoi");
    sub_29927A43C(v51, "j", L"zeon");
    sub_29927A43C(v52, "j", L"zeot");
    sub_29927A338(v53, "j", "z");
    sub_29927A43C(v54, "j", L"zoek");
    sub_29927A490(v55, "j", "z");
    sub_29927A2E4(v56, "k", L"kaa");
    sub_29927A43C(v57, L"keui", "k");
    sub_29927A338(v58, L"keu", L"koe");
    sub_29927A43C(v59, L"keuk", "k");
    sub_29927A490(v60, L"keung", L"koeng");
    sub_29927A4E4(v61, L"kwa", L"kwaa");
    sub_29927A2E4(v62, "l", L"laa");
    sub_29927A43C(v63, L"leui", "l");
    sub_29927A43C(v64, L"leun", "l");
    sub_29927A43C(v65, L"leut", "l");
    sub_29927A338(v66, L"leu", L"loe");
    sub_29927A43C(v67, L"leuk", "l");
    sub_29927A490(v68, L"leung", L"loeng");
    sub_29927A2E4(v69, L"ma", "m");
    sub_29927A2E4(v70, "n", L"naa");
    sub_29927A43C(v71, L"neui", "n");
    sub_29927A43C(v72, L"neut", "n");
    sub_29927A4E4(v73, L"nga", L"ngaa");
    sub_29927A490(v74, "n", "n");
    sub_29927A2E4(v75, "p", L"paa");
    sub_29927A2E4(v76, L"sa", "s");
    sub_29927A43C(v77, "s", L"seoi");
    sub_29927A43C(v78, "s", L"seon");
    sub_29927A43C(v79, "s", L"seot");
    sub_29927A338(v80, "s", "s");
    sub_29927A43C(v81, "s", L"soek");
    sub_29927A490(v82, "s", "s");
    sub_29927A2E4(v83, "t", L"taa");
    sub_29927A43C(v84, L"teui", "t");
    sub_29927A43C(v85, L"teun", "t");
    sub_29927A338(v86, L"teu", L"toe");
    sub_29927A2E4(v87, L"wa", "w");
    sub_29927A2E4(v88, "j", L"zaa");
    sub_29927A2E4(v89, L"ya", "j");
    sub_29927A43C(v90, "y", L"joek");
    sub_29927A490(v91, "y", "j");
    sub_29927A43C(v92, "y", L"jeoi");
    sub_29927A43C(v93, "y", L"jeon");
    sub_29927A2E4(v94, "y", L"jyu");
    sub_29927A4E4(v95, L"yun", L"jyun");
    sub_29927A4E4(v96, "y", "j");
    sub_29927A2E4(v97, "l", L"naa");
    sub_29927A43C(v98, L"leui", "n");
    sub_29927A43C(v99, L"leut", "n");
    sub_29927A490(v100, L"leung", "n");
    qword_2A14604E0 = 0;
    qword_2A14604E8 = 0;
    qword_2A14604F0 = 0;
    sub_29927A538();
  }

  v0 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0xAAAAAAAAAAAAAAABLL * ((qword_2A14604E8 - qword_2A14604E0) >> 4), MEMORY[0x29EDB9000]);
  v2 = qword_2A14604E0;
  v3 = qword_2A14604E8;
  if (qword_2A14604E0 != qword_2A14604E8)
  {
    v4 = MEMORY[0x29EDB9000];
    do
    {
      v5 = *(v2 + 23);
      if (v5 >= 0)
      {
        v6 = v2;
      }

      else
      {
        v6 = *v2;
      }

      if (v5 >= 0)
      {
        v7 = *(v2 + 23);
      }

      else
      {
        v7 = *(v2 + 8);
      }

      v8 = CFStringCreateWithCharacters(0, v6, v7);
      v9 = *(v2 + 47);
      if (v9 >= 0)
      {
        v10 = (v2 + 24);
      }

      else
      {
        v10 = *(v2 + 24);
      }

      v11 = *(v2 + 32);
      if (v9 >= 0)
      {
        v12 = *(v2 + 47);
      }

      else
      {
        v12 = *(v2 + 32);
      }

      v13 = CFStringCreateWithCharacters(0, v10, v12);
      values[0] = v8;
      values[1] = v13;
      v14 = CFArrayCreate(v0, values, 2, v4);
      CFArrayAppendValue(Mutable, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (v8)
      {
        CFRelease(v8);
      }

      v2 += 48;
    }

    while (v2 != v3);
  }

  v15 = *MEMORY[0x29EDCA608];
  return Mutable;
}

void sub_299276260(_Unwind_Exception *a1)
{
  v3 = -4032;
  do
  {
    sub_299274118(v1);
    v1 -= 48;
    v3 += 48;
  }

  while (v3);
  __cxa_guard_abort(&qword_2A1460490);
  _Unwind_Resume(a1);
}

void **sub_299276328(void **a1)
{
  v3 = a1;
  sub_29927A6BC(&v3);
  return a1;
}

__CFString *sub_299276360(const char *a1)
{
  Mutable = CFStringCreateMutable(0, 1024);
  v3 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], "/", 0x8000100u);
  CFStringAppend(Mutable, v3);
  if (a1)
  {
    CFStringAppendCString(Mutable, a1, 0x8000100u);
  }

  CFRelease(v3);
  return Mutable;
}

CFStringRef sub_2992763EC(CFURLRef url, CFStringRef pathComponent)
{
  if (pathComponent)
  {
    v2 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 0);
    v3 = CFURLCopyAbsoluteURL(v2);
    CFRelease(v2);
    if (v3)
    {
LABEL_3:
      v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
      CFRelease(v3);
      return v4;
    }
  }

  else
  {
    v3 = CFURLCopyAbsoluteURL(url);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

const __CFString *sub_29927646C@<X0>(const __CFURL *a1@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  result = sub_2992763EC(a1, a2);
  if (result)
  {
    Length = CFStringGetLength(result);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a3 = 0;
  return result;
}

BOOL sub_299276528(const __CFURL *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v1 = buffer;
  }

  else
  {
    v1 = &unk_29943AA03;
  }

  sub_2991C6CA8(__p, v1);
  if (v7 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = stat(v2, buffer);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  result = v3 == 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992765DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276600(const __CFURL *a1, const __CFString *a2, const __CFURL *a3, const __CFString *a4, unsigned int a5)
{
  v10 = *MEMORY[0x29EDB8ED8];
  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v12 = sub_2992763EC(a1, 0);
  if (v12)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v12);
    v24.length = CFStringGetLength(MutableCopy);
    v24.location = 0;
    CFStringFindAndReplace(MutableCopy, @" ", @"\\ ", v24, 0);
  }

  else
  {
    MutableCopy = 0;
  }

  v14 = CFStringCreateWithFormat(v10, 0, @"-p -d %@ -N 2", MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  CFStringAppend(Mutable, v14);
  CFRelease(v12);
  if (a2)
  {
    v15 = sub_2992763EC(a1, a2);
    if (v15)
    {
      v16 = CFStringCreateMutableCopy(0, 0, v15);
      v25.length = CFStringGetLength(v16);
      v25.location = 0;
      CFStringFindAndReplace(v16, @" ", @"\\ ", v25, 0);
    }

    else
    {
      v16 = 0;
    }

    v17 = CFStringCreateWithFormat(0, 0, @" -u %@", v16);
    if (v16)
    {
      CFRelease(v16);
    }

    CFStringAppend(Mutable, v17);
    CFRelease(v17);
    CFRelease(v15);
  }

  if (a4)
  {
    v18 = a3;
    if (!a3)
    {
      v19 = CFCopyHomeDirectoryURLForUser();
      v18 = CFURLCreateCopyAppendingPathComponent(0, v19, @"/Library/Dictionaries", 1u);
      CFRelease(v19);
    }

    v20 = sub_2992763EC(v18, a4);
    if (v20)
    {
      v21 = CFStringCreateMutableCopy(0, 0, v20);
      v26.length = CFStringGetLength(v21);
      v26.location = 0;
      CFStringFindAndReplace(v21, @" ", @"\\ ", v26, 0);
    }

    else
    {
      v21 = 0;
    }

    v22 = CFStringCreateWithFormat(0, 0, @" -g %@", v21);
    if (v21)
    {
      CFRelease(v21);
    }

    CFStringAppend(Mutable, v22);
    CFRelease(v22);
    CFRelease(v20);
    if (!a3 && v18)
    {
      CFRelease(v18);
    }
  }

  if (a5 <= 2)
  {
    CFStringAppend(Mutable, *(&off_29EF100B0 + a5));
  }

  Length = CFStringGetLength(Mutable);
  CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  operator new[]();
}

void sub_29927692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_299219AB4(va, 0);
  sub_299219AB4(va1, 0);
  _Unwind_Resume(a1);
}

void sub_2992769B0(char *cStr)
{
  v1 = CFStringCreateWithCStringNoCopy(*MEMORY[0x29EDB8ED8], cStr, 0x8000100u, *MEMORY[0x29EDB8EE8]);
  CFStringGetLength(v1);
  operator new[]();
}

void sub_299276A68(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C29BF70](v3, v1);
  _Unwind_Resume(a1);
}

void sub_299276A84(const __CFString *a1)
{
  if (a1)
  {
    CFStringGetLength(a1);
    operator new[]();
  }

  operator new[]();
}

void sub_299276B28(_Unwind_Exception *a1)
{
  *v1 = 0;
  MEMORY[0x29C29BF70](v3, v2);
  _Unwind_Resume(a1);
}

void sub_299276BC0(_Unwind_Exception *a1)
{
  *v2 = 0;
  MEMORY[0x29C29BF70](v3, v1);
  _Unwind_Resume(a1);
}

void sub_299276BDC(const __CFString *a1@<X0>, UniChar **a2@<X8>)
{
  if (a1)
  {
    Length = CFStringGetLength(a1);
    sub_29927A740(a2, Length);
    if (Length)
    {
      v5.location = 0;
      v5.length = Length;
      CFStringGetCharacters(a1, v5, *a2);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_299276C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299276CEC@<X0>(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  result = sub_29921822C(a3, a2, 0);
  if (a2)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    v8 = 2 * a2;
    do
    {
      result = MEMORY[0x29C29CDF0](*a1);
      *v7++ = result;
      ++a1;
      v8 -= 2;
    }

    while (v8);
  }

  return result;
}

void sub_299276D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276D80(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  sub_2992769B0(a1);
}

void sub_299276DF4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

void sub_299276E80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

const UniChar *sub_299276EA8(const __CFString *a1, CFIndex *a2, _BYTE *a3)
{
  CharactersPtr = CFStringGetCharactersPtr(a1);
  *a2 = CFStringGetLength(a1);
  if (!CharactersPtr)
  {
    operator new[]();
  }

  *a3 = 0;
  return CharactersPtr;
}

BOOL sub_299276F48(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  System = CFLocaleGetSystem();
  CFStringLowercase(MutableCopy, System);
  v4 = CFStringCompare(theString, MutableCopy, 0) == kCFCompareEqualTo;
  CFRelease(MutableCopy);
  return v4;
}

uint64_t sub_299276FB0(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 - 1;
    v10 = 0;
    do
    {
      if (v6 >= v7)
      {
        v9 = 1;
      }

      else
      {
        v8 = (v5 + 2 * v6);
        v9 = 1;
        if ((*v8 & 0xFC00) == 0xD800)
        {
          if ((v8[1] & 0xFC00) == 0xDC00)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }
        }
      }

      result = (*(a3 + 16))(a3, v6, v9, &v10);
      v6 += v9;
    }

    while (v6 < a2 && (v10 & 1) == 0);
  }

  return result;
}

const __CFString *sub_29927708C(const __CFString *result, int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    result = CFStringGetLength(result);
    if (result)
    {
      v6 = result;
      v7 = a2 ? &result[-1].length + 7 : 0;
      v13 = 0;
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v5, v7);
      location = RangeOfComposedCharactersAtIndex.location;
      length = RangeOfComposedCharactersAtIndex.length;
      result = (*(a3 + 16))(a3, RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length, &v13);
      if ((v13 & 1) == 0)
      {
        do
        {
          if (a2)
          {
            v11 = location - 1;
            if (location < 1)
            {
              return result;
            }
          }

          else
          {
            v11 = location + length;
            if (location + length >= v6)
            {
              return result;
            }
          }

          v12 = CFStringGetRangeOfComposedCharactersAtIndex(v5, v11);
          location = v12.location;
          length = v12.length;
          result = (*(a3 + 16))(a3, v12.location, v12.length, &v13);
        }

        while (v13 != 1);
      }
    }
  }

  return result;
}

CFURLRef sub_29927717C(const __CFURL *a1, const __CFString *a2)
{
  v2 = 0;
  v12 = *MEMORY[0x29EDCA608];
  if (a1 && a2)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = buffer;
    }

    else
    {
      v5 = &unk_29943AA03;
    }

    sub_2991C6CA8(v9, v5);
    if (v10 < 0)
    {
      if (!v9[1])
      {
        v2 = 0;
LABEL_18:
        operator delete(v9[0]);
        goto LABEL_19;
      }

      v6 = v9[0];
    }

    else
    {
      if (!v10)
      {
        v2 = 0;
        goto LABEL_19;
      }

      v6 = v9;
    }

    if (stat(v6, buffer) < 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = CFURLCreateCopyAppendingPathComponent(0, a1, a2, 1u);
    }

    if (v10 < 0)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v7 = *MEMORY[0x29EDCA608];
  return v2;
}

void sub_299277284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFURL *sub_2992772AC(CFURLRef url, CFStringRef pathComponent)
{
  v2 = CFURLCreateCopyAppendingPathComponent(0, url, pathComponent, 1u);
  v3 = v2;
  if (v2 && !sub_299276528(v2))
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t sub_299277300(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) >= 0x12 || ((0x3FFDBu >> v1) & 1) == 0)
  {
    abort();
  }

  return dword_29940BF44[v1];
}

CFComparisonResult sub_29927733C(const __CFLocale *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Value = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F70]);
  v3 = CFLocaleGetValue(a1, *MEMORY[0x29EDB8F78]);
  if (CFStringCompare(Value, @"zh", 0))
  {
    if (CFStringCompare(Value, @"yue", 0))
    {
      result = CFStringCompare(Value, @"ja", 0);
      if (result)
      {
        if (CFStringCompare(Value, @"ko", 0))
        {
          if (CFStringCompare(Value, @"th", 0))
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 6;
          }
        }

        else
        {
          return 4;
        }
      }
    }

    else if (v3 && CFStringCompare(v3, @"Hant", 0) == kCFCompareEqualTo)
    {
      return 5;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (!v3)
    {
      return 3;
    }

    if (CFStringCompare(v3, @"Hans", 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    if (CFStringCompare(v3, @"Hant", 0))
    {
      return 3;
    }

    return 2;
  }

  return result;
}

CFLocaleRef sub_299277498(unsigned int a1)
{
  v1 = sub_2992774EC(a1);
  v2 = CFStringCreateWithCString(0, v1, 0x8000100u);
  v3 = CFLocaleCreate(0, v2);
  CFRelease(v2);
  return v3;
}

char *sub_2992774EC(unsigned int a1)
{
  if (a1 >= 7)
  {
    abort();
  }

  return off_29EF100C8[a1];
}

const char *sub_299277514(int a1, __int16 a2)
{
  v2 = a1 - 1;
  result = "zh-Hans-Stroke";
  switch(v2)
  {
    case 0:
      v4 = "ja-Romaji";
      v5 = "ja-Kana";
      v6 = (a2 & 0x20) == 0;
      goto LABEL_15;
    case 1:
      v4 = "zh-Hans-Pinyin10";
      v5 = "zh-Hans-Pinyin";
      goto LABEL_14;
    case 3:
      v4 = "zh-Hant-Pinyin10";
      v5 = "zh-Hant-Pinyin";
      goto LABEL_14;
    case 4:
      return "zh-Hant-Zhuyin";
    case 6:
      return result;
    case 7:
      return "zh-Hant-Stroke";
    case 8:
      return "zh-Hant-Cangjie";
    case 9:
      return "zh-Hans-Wubixing";
    case 10:
      return "zh-Hans-HWR";
    case 11:
      return "zh-Hant-HWR";
    case 12:
      v4 = "yue-Hant-Pinyin10";
      v5 = "yue-Hant-Pinyin";
LABEL_14:
      v6 = (a2 & 0x4000) == 0;
LABEL_15:
      if (v6)
      {
        result = v5;
      }

      else
      {
        result = v4;
      }

      break;
    case 13:
      result = "yue-Hant-HWR";
      break;
    case 14:
      result = "yue-Hant-Stroke";
      break;
    case 15:
      result = "yue-Hant-Cangjie";
      break;
    case 16:
      result = "ko";
      break;
    default:
      result = "???";
      break;
  }

  return result;
}

uint64_t sub_299277628(char *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = sub_29927773C(a1);
  if (v2)
  {

    return sub_299277300(v2);
  }

  if (!strncmp("zh-Hans", a1, 7uLL))
  {
    return 1;
  }

  if (!strncmp("zh-Hant", a1, 7uLL))
  {
    return 2;
  }

  if (!strncmp("yue-Hant", a1, 8uLL))
  {
    return 5;
  }

  v4 = *a1;
  switch(v4)
  {
    case 'k':
      if (a1[1] == 111)
      {
        return 4;
      }

      return 0xFFFFFFFFLL;
    case 'j':
      if (a1[1] == 97)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    case 't':
      v4 = a1[1];
      v5 = 104;
      break;
    default:
      v5 = 116;
      break;
  }

  if (v5 == v4)
  {
    return 6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_29927773C(char *__s2)
{
  if (!__s2)
  {
    return 0;
  }

  if (!strncmp("zh-Hans-Pinyin", __s2, 0xEuLL))
  {
    return 2;
  }

  if (!strncmp("zh-Hans-Stroke", __s2, 0xFuLL))
  {
    return 7;
  }

  if (!strncmp("zh-Hant-Stroke", __s2, 0xFuLL))
  {
    return 8;
  }

  if (!strncmp("zh-Hant-Pinyin", __s2, 0xEuLL))
  {
    return 4;
  }

  if (!strncmp("yue-Hant-Pinyin", __s2, 0xFuLL))
  {
    return 13;
  }

  if (!strncmp("yue-Hant-HWR", __s2, 0xCuLL))
  {
    return 14;
  }

  v2 = 15;
  if (strncmp("yue-Hant-Stroke", __s2, 0xFuLL))
  {
    v2 = 16;
    if (strncmp("yue-Hant-Cangjie", __s2, 0x10uLL))
    {
      if (!strncmp("zh-Hant-Zhuyin", __s2, 0xEuLL))
      {
        return 5;
      }

      else if (!strncmp("zh-Hant-Cangjie", __s2, 0xEuLL))
      {
        return 9;
      }

      else
      {
        v3 = *__s2;
        if (v3 == 106)
        {
          return __s2[1] == 97;
        }

        else
        {
          if (v3 == 107)
          {
            v3 = __s2[1];
            v4 = 111;
          }

          else
          {
            v4 = 107;
          }

          if (v4 == v3)
          {
            return 17;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

DIR *sub_2992778EC(const char *a1, uint64_t a2)
{
  v6 = 0;
  result = opendir(a1);
  if (result)
  {
    v4 = result;
    do
    {
      v5 = readdir(v4);
      if (!v5)
      {
        break;
      }

      (*(a2 + 16))(a2, v5->d_name, &v6);
    }

    while (v6 != 1);
    return closedir(v4);
  }

  return result;
}

uint64_t sub_299277964(const __CFString *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = sub_299277A24;
  v3[3] = &unk_29EF10090;
  v3[4] = &v4;
  sub_29927708C(a1, 0, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_299277A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_299277A3C(const char *a1)
{
  v2 = getenv(a1);
  if (v2)
  {
    return *v2 == 49;
  }

  return sub_2992EEDCC(a1, v3, v4);
}

const __CFString *sub_299277A90@<X0>(const __CFString *result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    Length = CFStringGetLength(result);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  *a2 = 0;
  return result;
}

void sub_299277B20(_Unwind_Exception *a1)
{
  *v1 = 0;
  MEMORY[0x29C29BF70](v3, v2);
  _Unwind_Resume(a1);
}

void sub_299277B3C(void *__src@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460498))
  {
    sub_2992517A8();
  }

  sub_29925851C(__p, __src, a2);
  if ((v40 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v7 = v40;
  }

  else
  {
    v7 = __p[1];
  }

  qword_2A1460618 = 0;
  if (qword_2A1460590)
  {
    sub_29927AA84(a3, 2 * v7, 0);
    if (v7)
    {
      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = 22;
      }

      else
      {
        v8 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      std::string::resize(a3, v8, 0);
      v9 = (v6 + 2 * v7);
      v47 = xmmword_2A14605D8;
      v48 = unk_2A14605E8;
      v49 = xmmword_2A14605F8;
      v50 = unk_2A1460608;
      v43 = xmmword_2A1460598;
      v44 = unk_2A14605A8;
      v10 = xmmword_2A14605B8;
      v11 = unk_2A14605C8;
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) == 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = a3->__r_.__value_.__r.__words[0];
      }

      if ((size & 0x80u) != 0)
      {
        size = a3->__r_.__value_.__l.__size_;
      }

      v14 = &v13[size];
      v45 = xmmword_2A14605B8;
      v46 = unk_2A14605C8;
      while (1)
      {
        v15 = (*(*qword_2A1460590 + 24))(qword_2A1460590, &v43, v6, v9, &v42, v13, v14, &v41, v10, v11);
        qword_2A1460618 += (v42 - v6) >> 1;
        if (v42 == v6)
        {
          goto LABEL_67;
        }

        if (v15 != 1)
        {
          break;
        }

        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = a3;
        }

        else
        {
          v16 = a3->__r_.__value_.__r.__words[0];
        }

        v17 = v41 - v16;
        std::string::resize(a3, 2 * (v41 - v16), 0);
        v18 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        if ((v18 & 0x80u) == 0)
        {
          v19 = a3;
        }

        else
        {
          v19 = a3->__r_.__value_.__r.__words[0];
        }

        v13 = v19 + v17;
        if ((v18 & 0x80u) != 0)
        {
          v18 = a3->__r_.__value_.__l.__size_;
        }

        v14 = v19 + v18;
        v6 = v42;
        if (v42 >= v9)
        {
          goto LABEL_67;
        }
      }

      if (v15)
      {
        if (v15 != 3)
        {
          goto LABEL_67;
        }

        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = a3;
        }

        else
        {
          v20 = a3->__r_.__value_.__r.__words[0];
        }

        std::string::resize(a3, v13 - v20, 0);
        sub_2991D9210(a3, v6, v9);
      }

      else
      {
        if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = a3;
        }

        else
        {
          v21 = a3->__r_.__value_.__r.__words[0];
        }

        std::string::resize(a3, v41 - v21, 0);
      }
    }

    else
    {
      v47 = xmmword_2A14605D8;
      v48 = unk_2A14605E8;
      v49 = xmmword_2A14605F8;
      v50 = unk_2A1460608;
      v43 = xmmword_2A1460598;
      v44 = unk_2A14605A8;
      v45 = xmmword_2A14605B8;
      v46 = unk_2A14605C8;
    }

    v22 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v23 = a3->__r_.__value_.__l.__size_;
    if ((v22 & 0x80u) == 0)
    {
      v24 = 22;
    }

    else
    {
      v24 = (a3->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    std::string::resize(a3, v24, 0);
    if ((v22 & 0x80u) == 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    v27 = v26 < 0;
    if (v26 >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = a3->__r_.__value_.__r.__words[0];
    }

    v29 = (v28 + v25);
    if (v27)
    {
      v30 = a3->__r_.__value_.__l.__size_;
    }

    else
    {
      v30 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    for (i = v29 + v30; ; i = v36 + v35)
    {
      v32 = (*(*qword_2A1460590 + 40))(qword_2A1460590, &v43, v29, i, &v42);
      if (v32 != 1)
      {
        break;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = a3;
      }

      else
      {
        v33 = a3->__r_.__value_.__r.__words[0];
      }

      v34 = (v42 - v33);
      std::string::resize(a3, 2 * (v42 - v33), 0);
      v35 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
      if ((v35 & 0x80u) == 0)
      {
        v36 = a3;
      }

      else
      {
        v36 = a3->__r_.__value_.__r.__words[0];
      }

      v29 = &v34[v36];
      if ((v35 & 0x80u) != 0)
      {
        v35 = a3->__r_.__value_.__l.__size_;
      }
    }

    if (v32)
    {
      if (v32 != 3)
      {
LABEL_67:
        if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(a3->__r_.__value_.__l.__data_);
        }

        goto LABEL_69;
      }
    }

    else
    {
      v29 = v42;
    }

    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = a3->__r_.__value_.__r.__words[0];
    }

    std::string::resize(a3, v29 - v37, 0);
    goto LABEL_79;
  }

LABEL_69:
  if ((byte_2A1460577 & 0x80000000) == 0)
  {
    if (byte_2A1460577)
    {
      *&a3->__r_.__value_.__l.__data_ = xmmword_2A1460560;
      a3->__r_.__value_.__r.__words[2] = unk_2A1460570;
      goto LABEL_79;
    }

LABEL_84:
    sub_299251964("wstring_convert: to_bytes error");
  }

  if (!*(&xmmword_2A1460560 + 1))
  {
    goto LABEL_84;
  }

  sub_2991A110C(a3, xmmword_2A1460560, *(&xmmword_2A1460560 + 1));
LABEL_79:
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  v38 = *MEMORY[0x29EDCA608];
}

void sub_299277FF8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    sub_2991C6CA8(v15, &unk_2994377F6);
    __cxa_end_catch();
    JUMPOUT(0x299277F0CLL);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x299277FD8);
}

void sub_299278038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x299277FD8);
}

void sub_29927805C(void *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  JUMPOUT(0x299277FD8);
}

_BYTE *sub_29927806C@<X0>(_BYTE *__s@<X0>, int __c@<W2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v12 = __s;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = __s;
    v7 = 0;
    v8 = &__s[a3];
    do
    {
      v9 = memchr(v5, __c, v8 - v5);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10;
      if (v7 >= a4[2])
      {
        __s = sub_29927A8DC(a4, &v12, &v11);
        v7 = __s;
      }

      else
      {
        __s = sub_2991D9388(v7, v5, v10, v10 - v5);
        v7 += 24;
      }

      a4[1] = v7;
      v5 = v11 + 1;
      v12 = v11 + 1;
    }

    while ((v11 + 1) <= v8);
  }

  return __s;
}

void sub_299278130(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212B90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299278154(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    if (Length)
    {
      v3 = Length;
      theStringa = v1;
      v24 = 0;
      v25 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v1);
      CStringPtr = 0;
      v22 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
      }

      v26 = 0;
      v27 = 0;
      v23 = CStringPtr;
      if (v3 >= 1)
      {
        v6 = 0;
        v7 = 0;
        LOBYTE(v1) = 0;
        v8 = 0;
        v9 = 64;
        while (1)
        {
          if (v8 >= 4)
          {
            v10 = 4;
          }

          else
          {
            v10 = v8;
          }

          v11 = v25;
          if (v25 <= v8)
          {
            v13 = 0;
          }

          else
          {
            if (v22)
            {
              v12 = &v22[v24];
            }

            else
            {
              if (v23)
              {
                v13 = v23[v24 + v8];
                goto LABEL_15;
              }

              if (v27 <= v8 || v7 > v8)
              {
                v15 = v10 + v6;
                v16 = v9 - v10;
                v17 = v8 - v10;
                v18 = v17 + 64;
                if (v17 + 64 >= v25)
                {
                  v18 = v25;
                }

                v26 = v17;
                v27 = v18;
                if (v25 >= v16)
                {
                  v11 = v16;
                }

                v28.location = v17 + v24;
                v28.length = v11 + v15;
                CFStringGetCharacters(theStringa, v28, buffer);
                v7 = v26;
              }

              v12 = &buffer[-v7];
            }

            v13 = v12[v8];
          }

LABEL_15:
          if ((v13 - 48) < 0xAu || (v13 + 240) < 0xAu)
          {
            LOBYTE(v1) = ++v8 >= v3;
            --v6;
            ++v9;
            if (v3 != v8)
            {
              continue;
            }
          }

          return v1 & 1;
        }
      }

      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

BOOL sub_2992782F4(CFStringRef theString)
{
  v33 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604A0))
  {
    v24 = xmmword_29940BEE0;
    v25[0] = unk_29940BEF0;
    *(v25 + 14) = unk_29940BEFE;
    *buffer = *a0123456789_0;
    v23 = *&a0123456789_0[16];
    sub_29923BCCC(qword_2A1460510, buffer, 39);
    __cxa_atexit(sub_29923BCC8, qword_2A1460510, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604A0);
  }

  if (theString && (Length = CFStringGetLength(theString), (v3 = Length) != 0))
  {
    v26 = theString;
    v29 = 0;
    v30 = Length;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v28 = CStringPtr;
    v31 = 0;
    v32 = 0;
    if (v3 >= 1)
    {
      v8 = 0;
      v5 = 0;
      v9 = 0;
      v10 = 64;
      while (1)
      {
        if (v9 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v9;
        }

        v12 = v30;
        if (v30 <= v9)
        {
          v14 = 0;
        }

        else
        {
          if (CharactersPtr)
          {
            v13 = &CharactersPtr[v29];
LABEL_17:
            v14 = v13[v9];
            goto LABEL_19;
          }

          if (!v28)
          {
            v15 = v31;
            if (v32 <= v9 || v31 > v9)
            {
              v17 = v11 + v8;
              v18 = v10 - v11;
              v19 = v9 - v11;
              v20 = v19 + 64;
              if (v19 + 64 >= v30)
              {
                v20 = v30;
              }

              v31 = v19;
              v32 = v20;
              if (v30 >= v18)
              {
                v12 = v18;
              }

              v34.location = v19 + v29;
              v34.length = v12 + v17;
              CFStringGetCharacters(v26, v34, buffer);
              v15 = v31;
            }

            v13 = &buffer[-v15];
            goto LABEL_17;
          }

          v14 = v28[v29 + v9];
        }

LABEL_19:
        v21 = v14;
        if (sub_299223864(qword_2A1460510, &v21))
        {
          v5 = ++v9 >= v3;
          --v8;
          ++v10;
          if (v3 != v9)
          {
            continue;
          }
        }

        goto LABEL_7;
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_7:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

_BYTE *sub_299278568@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_299277A90(a1, &__s);
  if (__s)
  {
    sub_2991C6CA8(a2, __s);

    JUMPOUT(0x29C29BF70);
  }

  return sub_2991C6CA8(a2, &unk_2994377F6);
}

void sub_299278624(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  Length = CFStringGetLength(a1);
  buffer = 0;
  v8 = 0;
  v9 = 0;
  sub_299217A94(&buffer, Length);
  v10.location = 0;
  v10.length = Length;
  CFStringGetCharacters(a1, v10, buffer);
  v5 = 2 * Length;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v6 = buffer;
  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, v6, v5);
  }

  a2[v5] = 0;
  if (buffer)
  {
    v8 = buffer;
    operator delete(buffer);
  }
}

void sub_299278714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_299278730@<X0>(std::string *__str@<X0>, std::string *a2@<X8>)
{
  v2 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v3 = __str->__r_.__value_.__r.__words[0];
  size = __str->__r_.__value_.__l.__size_;
  if (v2 >= 0)
  {
    v5 = __str;
  }

  else
  {
    v5 = __str->__r_.__value_.__r.__words[0];
  }

  if (v2 >= 0)
  {
    v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v6 = __str->__r_.__value_.__l.__size_;
  }

  v7 = &v5[-1].__r_.__value_.__r.__words[2] + 7;
  v8 = -1;
  while (v6)
  {
    v9 = v7[v6--];
    ++v8;
    if (v9 == 47)
    {
      if (v6 != -1)
      {
        if (v8)
        {
          return std::string::basic_string(a2, __str, v6 + 1, 0xFFFFFFFFFFFFFFFFLL, &v10);
        }

        return sub_2991C6CA8(a2, &unk_2994377F6);
      }

      break;
    }
  }

  if ((v2 & 0x80000000) != 0)
  {

    return sub_2991A110C(a2, v3, size);
  }

  else
  {
    *a2 = *__str;
  }

  return __str;
}

void *sub_29927880C(unsigned int a1)
{
  v66[2] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604A8, memory_order_acquire) & 1) == 0)
  {
    v8 = a1;
    v9 = __cxa_guard_acquire(&qword_2A14604A8);
    a1 = v8;
    if (v9)
    {
      v43 = 6422625;
      v44 = 99;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      sub_2992220D8(&v45, &v43, &v45, 3);
      v50 = 10123;
      memset(v51, 0, sizeof(v51));
      sub_299215EC0(v51, v45, v46, (v46 - v45) >> 1);
      v38 = 6619236;
      v39 = 102;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      sub_2992220D8(&v40, &v38, &v40, 3);
      v52 = 10124;
      memset(v53, 0, sizeof(v53));
      sub_299215EC0(v53, v40, v41, (v41 - v40) >> 1);
      v33 = 6815847;
      v34 = 105;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      sub_2992220D8(&v35, &v33, &v35, 3);
      v54 = 10125;
      memset(v55, 0, sizeof(v55));
      sub_299215EC0(v55, v35, v36, (v36 - v35) >> 1);
      v28 = 7012458;
      v29 = 108;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      sub_2992220D8(&v30, &v28, &v30, 3);
      v56 = 10126;
      memset(v57, 0, sizeof(v57));
      sub_299215EC0(v57, v30, v31, (v31 - v30) >> 1);
      v23 = 7209069;
      v24 = 111;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      sub_2992220D8(&v25, &v23, &v25, 3);
      v58 = 10127;
      memset(v59, 0, sizeof(v59));
      sub_299215EC0(v59, v25, v26, (v26 - v25) >> 1);
      v49 = 0x73007200710070;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      sub_2992220D8(&v20, &v49, &v50, 4);
      v60 = 10128;
      memset(v61, 0, sizeof(v61));
      sub_299215EC0(v61, v20, v21, (v21 - v20) >> 1);
      v15 = 7667828;
      v16 = 118;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      sub_2992220D8(&v17, &v15, &v17, 3);
      v62 = 10129;
      memset(v63, 0, sizeof(v63));
      sub_299215EC0(v63, v17, v18, (v18 - v17) >> 1);
      v48 = 0x7A007900780077;
      v13 = 0;
      v14 = 0;
      __p = 0;
      sub_2992220D8(&__p, &v48, &v49, 4);
      v64 = 10130;
      v66[0] = 0;
      v66[1] = 0;
      v65 = 0;
      sub_299215EC0(&v65, __p, v13, (v13 - __p) >> 1);
      sub_29927AB34(&v50, 8);
      for (i = 0; i != -32; i -= 4)
      {
        v11 = v66[i - 1];
        if (v11)
        {
          v66[i] = v11;
          operator delete(v11);
        }
      }

      if (__p)
      {
        v13 = __p;
        operator delete(__p);
      }

      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      __cxa_atexit(sub_299278EC4, &xmmword_2A1460538, &dword_29918C000);
      __cxa_guard_release(&qword_2A14604A8);
      a1 = v8;
    }
  }

  if (!*(&xmmword_2A1460538 + 1))
  {
    goto LABEL_20;
  }

  v1 = vcnt_s8(*(&xmmword_2A1460538 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_2A1460538 + 1) <= a1)
    {
      v2 = a1 % WORD4(xmmword_2A1460538);
    }
  }

  else
  {
    v2 = (DWORD2(xmmword_2A1460538) - 1) & a1;
  }

  v3 = *(xmmword_2A1460538 + 8 * v2);
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = *v3;
  if (!v4)
  {
    goto LABEL_20;
  }

  do
  {
    v5 = v4[1];
    if (v5 == a1)
    {
      if (*(v4 + 8) == a1)
      {
        break;
      }
    }

    else
    {
      if (v1.u32[0] > 1uLL)
      {
        if (v5 >= *(&xmmword_2A1460538 + 1))
        {
          v5 %= *(&xmmword_2A1460538 + 1);
        }
      }

      else
      {
        v5 &= *(&xmmword_2A1460538 + 1) - 1;
      }

      if (v5 != v2)
      {
        goto LABEL_20;
      }
    }

    v4 = *v4;
  }

  while (v4);
  if (v4)
  {
    result = v4 + 3;
  }

  else
  {
LABEL_20:
    result = &unk_29940BF10;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299278D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v44 = (v42 + 240);
  v45 = -256;
  while (1)
  {
    v46 = *(v44 - 1);
    if (v46)
    {
      *v44 = v46;
      operator delete(v46);
    }

    v44 -= 4;
    v45 += 32;
    if (!v45)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a14)
      {
        operator delete(a14);
      }

      if (a17)
      {
        operator delete(a17);
      }

      if (a21)
      {
        operator delete(a21);
      }

      if (a25)
      {
        operator delete(a25);
      }

      if (a29)
      {
        operator delete(a29);
      }

      if (a33)
      {
        operator delete(a33);
      }

      if (a37)
      {
        operator delete(a37);
      }

      __cxa_guard_abort(&qword_2A14604A8);
      _Unwind_Resume(a1);
    }
  }
}

const __CFString *sub_299278EC8(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length >= 1)
    {
      v3 = Length;
      for (i = 0; i < v3; i += RangeOfComposedCharactersAtIndex.length)
      {
        RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v1, i);
        if (RangeOfComposedCharactersAtIndex.length == 2)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location);
          v8 = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location + 1);
          if ((CharacterAtIndex & 0xFC00) != 0xD800 || (v8 & 0xFC00) != 0xDC00)
          {
            continue;
          }

          v6 = v8 + (CharacterAtIndex << 10) - 56613888;
        }

        else
        {
          if (RangeOfComposedCharactersAtIndex.length != 1)
          {
            if (!RangeOfComposedCharactersAtIndex.length)
            {
              ++i;
            }

            continue;
          }

          v6 = CFStringGetCharacterAtIndex(v1, RangeOfComposedCharactersAtIndex.location);
        }

        if (u_hasBinaryProperty(v6, UCHAR_IDEOGRAPHIC))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_299278FD4(char *a1, unsigned int a2)
{
  v2 = 67173375;
  if (a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = *a1++;
      v3 = (1025 * (v3 + v5)) ^ ((1025 * (v3 + v5)) >> 6);
      --v4;
    }

    while (v4);
    v2 = 1025 * v3 + 67173375;
  }

  return 32769 * ((9 * (v2 ^ (v2 >> 6))) ^ ((9 * (v2 ^ (v2 >> 6))) >> 11));
}

CFPropertyListRef sub_29927901C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = sub_299279090(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_299279078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_299279090(CFStringRef filePath)
{
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x29EDB8ED8], filePath, kCFURLPOSIXPathStyle, 0);
  v2 = sub_29927910C(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

void sub_2992790F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

CFPropertyListRef sub_29927910C(CFURLRef fileURL)
{
  v1 = *MEMORY[0x29EDB8ED8];
  v2 = CFReadStreamCreateWithFile(*MEMORY[0x29EDB8ED8], fileURL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFReadStreamOpen(v2))
  {
    v4 = CFPropertyListCreateWithStream(v1, v3, 0, 0, 0, 0);
    CFReadStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void sub_2992791A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29927B09C(va, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2992791C0(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    v4 = 1;
    if (CFStringCompare(a1, @"true", 1uLL) == kCFCompareEqualTo)
    {
      return v4;
    }

    return CFStringCompare(a1, @"YES", 1uLL) == kCFCompareEqualTo;
  }

  else
  {
    if (v3 == CFNumberGetTypeID() && !CFNumberIsFloatType(a1))
    {
      valuePtr = 0;
      CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
      return valuePtr != 0;
    }

    if (v3 != CFBooleanGetTypeID())
    {
      return 0;
    }

    return *MEMORY[0x29EDB8F00] == a1;
  }
}

CFURLRef sub_2992792A8(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFStringGetTypeID())
  {

    return CFURLCreateWithFileSystemPath(0, a1, kCFURLPOSIXPathStyle, 1u);
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFURLGetTypeID())
  {
    return 0;
  }

  return CFURLCopyAbsoluteURL(a1);
}

CFURLRef sub_299279348(const __CFString *a1)
{
  if (!a1 || (result = sub_2992792A8(a1)) == 0)
  {
    v2 = sub_299279384();

    return CFRetain(v2);
  }

  return result;
}

uint64_t sub_299279384()
{
  if ((atomic_load_explicit(&qword_2A1461E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461E40))
  {
    qword_2A1461E38 = sub_29927AA08();
    __cxa_guard_release(&qword_2A1461E40);
  }

  return qword_2A1461E38;
}

uint64_t sub_2992793F8()
{
  if ((atomic_load_explicit(&qword_2A14604B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604B8))
  {
    qword_2A14604B0 = CFCharacterSetCreateWithCharactersInString(0, @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ");
    __cxa_guard_release(&qword_2A14604B8);
  }

  return qword_2A14604B0;
}

uint64_t sub_29927947C()
{
  if ((atomic_load_explicit(&qword_2A1461E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461E30))
  {
    qword_2A1461E28 = sub_2992794F0();
    __cxa_guard_release(&qword_2A1461E30);
  }

  return qword_2A1461E28;
}

__CFCharacterSet *sub_2992794F0()
{
  Mutable = CFCharacterSetCreateMutable(0);
  v3.location = 12288;
  v3.length = 64;
  CFCharacterSetAddCharactersInRange(Mutable, v3);
  CFCharacterSetAddCharactersInString(Mutable, @",，、。；;？?！!\\”“＂＂≪≫】【");
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  CFCharacterSetUnion(Mutable, Predefined);
  return Mutable;
}

uint64_t sub_29927954C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CEMStringContainsEmoji())
    {
      return 0;
    }

    else
    {
      v2 = CFStringGetLength(v1) - 1;
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
      v5.location = v2;
      v5.length = 1;
      if (CFStringFindCharacterFromSet(v1, Predefined, v5, 2uLL, 0))
      {
        return 501;
      }

      else
      {
        v4 = sub_2992793F8();
        v6.location = v2;
        v6.length = 1;
        if (CFStringFindCharacterFromSet(v1, v4, v6, 2uLL, 0))
        {
          return 502;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2992795EC(uint64_t *a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    result = 0;
    *a2 = 0;
    *a3 = 0;
    return result;
  }

  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_29;
  }

  v17 = a2;
  v8 = v6 != 3 || *v4 != *aIng_0 || *(v4 + 4) != aIng_0[2];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = MEMORY[0x29EDCA600];
  while (1)
  {
    v15 = *(v4 + 2 * v10);
    if (v15 == 32)
    {
      if ((v12 & 1) == 0)
      {
        v11 = v8 & v13;
      }

      v12 = 1;
      goto LABEL_20;
    }

    if (!sub_2993C3F88(*(v4 + 2 * v10)) && (v15 > 0xFF || (*(v14 + 4 * v15 + 60) & 0x400) == 0))
    {
      break;
    }

LABEL_20:
    v13 |= (v15 - 97) < 0x1Au;
    if (++v10 >= a1[1])
    {
      v16 = 1;
      goto LABEL_23;
    }
  }

  v16 = 0;
LABEL_23:
  LODWORD(v6) = v8 & v16 & v13;
  if (v12)
  {
    result = 0;
    *v17 = v11 & 1;
    *a3 = v6;
    return result;
  }

  if (*a3 == 1)
  {
    a2 = v17;
    if (v6)
    {
      *v17 = 0;
      result = 1;
      *a3 = 1;
      return result;
    }
  }

  else
  {
    a2 = v17;
  }

LABEL_29:
  result = 0;
  *a3 = v6;
  *a2 = v6;
  return result;
}

uint64_t sub_299279770(char *__s1, uint64_t a2, char *__s2, uint64_t a4, int a5, int a6)
{
  result = 0;
  if (a4 == a2)
  {
    a6 = 1;
  }

  if (a4 >= a2 && a6)
  {
    v11 = (2 * a2);
    if (a5)
    {
      if (v11 >= 2)
      {
        v12 = 0;
        while (1)
        {
          v13 = *&__s2[v12];
          v14 = *&__s1[v12];
          if (v13 != v14)
          {
            if (v12 == v11)
            {
              return 0;
            }

            result = sub_2993C4A54(v14, a5);
            if (!result)
            {
              return result;
            }

            v15 = *result;
            v16 = *(result + 8) - *result;
            if (!v16)
            {
              return 0;
            }

            v17 = v16 >> 1;
            if (v17 <= 1)
            {
              v17 = 1;
            }

            while (1)
            {
              v18 = *v15++;
              if (v13 == v18)
              {
                break;
              }

              if (!--v17)
              {
                return 0;
              }
            }
          }

          v12 += 2;
          result = 1;
          if (v11 - 1 <= v12)
          {
            return result;
          }
        }
      }

      return 1;
    }

    else
    {
      return memcmp(__s1, __s2, v11) == 0;
    }
  }

  return result;
}

CFStringRef sub_299279868(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x29EDB8ED8], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_2A1F7E6E8;
  }
}

const void *sub_29927989C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29920B5BC(a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

BOOL sub_299279944(_BOOL8 result)
{
  v15 = *MEMORY[0x29EDCA608];
  if (result)
  {
    v1 = result;
    result = sub_299276528(result);
    if (result)
    {
      if (CFURLSetResourcePropertyForKey(v1, *MEMORY[0x29EDB9038], *MEMORY[0x29EDB8F00], 0))
      {
        result = 1;
      }

      else
      {
        v2 = sub_29930AF10();
        if (CFURLGetFileSystemRepresentation(v1, 1u, buffer, 1024))
        {
          v3 = buffer;
        }

        else
        {
          v3 = &unk_29943AA03;
        }

        sub_2991C6CA8(__p, v3);
        if (v13 >= 0)
        {
          v10 = __p;
        }

        else
        {
          LOBYTE(v10) = __p[0];
        }

        sub_29930B600(v2, "failed to set backup exclusion for item at URL: %s", v4, v5, v6, v7, v8, v9, v10);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        result = 0;
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299279A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef sub_299279A74(const __CFString *a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_2A14604C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604C8))
  {
    qword_2A14604C0 = CFCharacterSetCreateWithCharactersInString(0, @"12345");
    __cxa_guard_release(&qword_2A14604C8);
  }

  if (a1)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    Length = CFStringGetLength(a1);
    v6 = 0;
    v7.length = Length;
    while (1)
    {
      v7.location = v6;
      if (!CFStringFindCharacterFromSet(a1, qword_2A14604C0, v7, 0, &v15) || v15.location == v6)
      {
        break;
      }

      v16.length = a2 - v6 + v15.location;
      v16.location = v6;
      v8 = CFStringCreateWithSubstring(0, a1, v16);
      if (!sub_299276F48(v8))
      {
        goto LABEL_13;
      }

      if (a2)
      {
        v11 = objc_msgSend_zhuyinSyllableFromPinyinSyllable(v8, v9, v10);
        if (!v11)
        {
LABEL_13:
          CFRelease(v8);
          break;
        }

        v12 = v11;
        v13 = Mutable;
      }

      else
      {
        v13 = Mutable;
        v12 = v8;
      }

      CFArrayAppendValue(v13, v12);
      CFRelease(v8);
      v6 = v15.length + v15.location;
      v7.length = Length - (v15.length + v15.location);
      if (Length <= v15.length + v15.location)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
  }

  return 0;
}

__CFArray *sub_299279BF8(__int16 **a1)
{
  Mutable = CFArrayCreateMutable(0, a1[1] - *a1, MEMORY[0x29EDB9000]);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *MEMORY[0x29EDB8ED8];
    do
    {
      v6 = *v3++;
      valuePtr = v6;
      v7 = CFNumberCreate(v5, kCFNumberShortType, &valuePtr);
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v7);
    }

    while (v3 != v4);
  }

  return Mutable;
}

void *sub_299279CA4@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  result = sub_2991A650C(a3, a2);
  if (v3)
  {
    v6 = *result;
    do
    {
      v8 = *a1++;
      v7 = v8;
      v9 = v8 + 96;
      if ((v8 - 12353) < 0x54)
      {
        v7 = v9;
      }

      *v6++ = v7;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_299279CFC@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v22 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A14604D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604D0))
  {
    __cxa_atexit(sub_29927B244, 0, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604D0);
  }

  if ((atomic_load_explicit(&qword_2A14604D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14604D8))
  {
    v21[0] = xmmword_29940BF28;
    *(v21 + 12) = *(&xmmword_29940BF28 + 12);
    sub_29927B0D4(v21, 7);
    __cxa_atexit(sub_299279F90, &qword_2A14604F8, &dword_29918C000);
    __cxa_guard_release(&qword_2A14604D8);
  }

  result = sub_299217DF0(a3, byte_29945C656);
  if (a2)
  {
    v7 = &a1[a2];
    do
    {
      v8 = *a1;
      if ((v8 - 12353) > 0x53u)
      {
        if ((v8 + 255) > 0x5Du)
        {
          v13 = qword_2A1460500;
          if (qword_2A1460500)
          {
            v14 = &qword_2A1460500;
            v15 = qword_2A1460500;
            do
            {
              v16 = *(v15 + 26);
              v17 = v16 >= v8;
              v18 = v16 < v8;
              if (v17)
              {
                v14 = v15;
              }

              v15 = *(v15 + 8 * v18);
            }

            while (v15);
            if (v14 != &qword_2A1460500 && v8 >= *(v14 + 13))
            {
              while (1)
              {
                while (1)
                {
                  v19 = *(v13 + 26);
                  if (v19 <= v8)
                  {
                    break;
                  }

                  v13 = *v13;
                  if (!v13)
                  {
                    goto LABEL_33;
                  }
                }

                if (v19 >= v8)
                {
                  break;
                }

                v13 = *(v13 + 8);
                if (!v13)
                {
LABEL_33:
                  sub_2991D6EC4("map::at:  key not found");
                }
              }

              LOWORD(v8) = *(v13 + 28);
            }
          }
        }

        else
        {
          LOWORD(v8) = v8 + 288;
        }

        result = sub_2992174C4(a3, v8);
      }

      else
      {
        v9 = (&unk_2A145E8A0 + 24 * v8 - 296472);
        v10 = *(v9 + 23);
        if (v10 >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        if (v10 >= 0)
        {
          v12 = *(v9 + 23);
        }

        else
        {
          v12 = v9[1];
        }

        result = sub_29922C614(a3, v11, v12);
      }

      ++a1;
    }

    while (a1 != v7);
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_299279FBC(const __CFString *a1)
{
  if (a1 && CFStringGetLength(a1))
  {
    sub_299276A84(a1);
  }

  return 0;
}

__CFString *sub_29927A080(void *a1)
{
  if (*a1 == a1[1])
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
  v3 = a1[1] - *a1;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 1;
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    do
    {
      chars = *(*a1 + 2 * v4) + 48;
      CFStringAppendCharacters(Mutable, &chars, 1);
      ++v4;
    }

    while (v6 != v4);
  }

  return Mutable;
}

_BYTE *sub_29927A128(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A17C(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "n");
  sub_299217DF0(v2 + 24, byte_29945C656);
  return a1;
}

void sub_29927A1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A1D8(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A210(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A22C(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, L"ang");
  sub_299217DF0(v2 + 24, L"an");
  return a1;
}

void sub_29927A26C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A288(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "a");
  sub_299217DF0(v2 + 24, "a");
  return a1;
}

void sub_29927A2C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A2E4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A31C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A338(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A38C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A3C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A3E0(_BYTE *a1)
{
  v2 = sub_299217DF0(a1, "c");
  sub_299217DF0(v2 + 24, L"coeng");
  return a1;
}

void sub_29927A420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A43C(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A474(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A490(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A4C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_29927A4E4(_BYTE *a1, char *a2, char *a3)
{
  v5 = sub_299217DF0(a1, a2);
  sub_299217DF0(v5 + 24, a3);
  return a1;
}

void sub_29927A51C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_29927A628(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29922C89C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29922C89C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_29927A6A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29927A6BC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_2992327A4(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_29927A740(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2991A6584(result, a2);
  }

  return result;
}

void sub_29927A8C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29927A8DC(uint64_t a1, _BYTE **a2, _BYTE **a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_299212AA4(a1, v7);
  }

  v13 = 0;
  v14 = 24 * v3;
  v15 = 24 * v3;
  v16 = 0;
  sub_2991D9388((24 * v3), *a2, *a3, *a3 - *a2);
  v8 = *(a1 + 8) - *a1;
  v9 = (24 * v3 - v8);
  memcpy(v9, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = 24 * v3 + 24;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_299212AFC(&v13);
  return 24 * v3 + 24;
}

void sub_29927A9F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299212AFC(va);
  _Unwind_Resume(a1);
}

CFURLRef sub_29927AA08()
{
  v0 = CFCopyHomeDirectoryURLForUser();
  v1 = CFURLCreateCopyAppendingPathComponent(0, v0, @"Library/Keyboard", 1u);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

void sub_29927AA6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29920FE30(va, 0);
  _Unwind_Resume(a1);
}

_BYTE *sub_29927AA84(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

unsigned __int16 *sub_29927AB34(unsigned __int16 *result, uint64_t a2)
{
  xmmword_2A1460538 = 0u;
  *&qword_2A1460548 = 0u;
  dword_2A1460558 = 1065353216;
  if (a2)
  {
    for (i = result; i != &result[16 * a2]; i += 16)
    {
      v3 = *i;
      if (!*(&xmmword_2A1460538 + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&xmmword_2A1460538 + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&xmmword_2A1460538 + 1) <= v3)
        {
          v5 = v3 % WORD4(xmmword_2A1460538);
        }
      }

      else
      {
        v5 = (DWORD2(xmmword_2A1460538) - 1) & v3;
      }

      v6 = *(xmmword_2A1460538 + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&xmmword_2A1460538 + 1))
          {
            v8 %= *(&xmmword_2A1460538 + 1);
          }
        }

        else
        {
          v8 &= *(&xmmword_2A1460538 + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 8) != v3)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_29927AF98(_Unwind_Exception *a1)
{
  sub_29927AFD8(1, v1);
  sub_29927B034(&xmmword_2A1460538);
  _Unwind_Resume(a1);
}

void sub_29927AFD8(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29927B034(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_29927B09C(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_29927B0D4(uint64_t a1, uint64_t a2)
{
  qword_2A1460508 = 0;
  qword_2A1460500 = 0;
  qword_2A14604F8 = &qword_2A1460500;
  if (a2)
  {
    operator new();
  }
}

void sub_29927B244()
{
  v0 = &byte_2A145F07F;
  v1 = -2016;
  v2 = &byte_2A145F07F;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

uint64_t *sub_29927B28C(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *(a2 + 2);
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  *a1 = utrans_openU();
  return a1;
}

void *sub_29927B320(void *a1)
{
  if (*a1)
  {
    utrans_close();
  }

  return a1;
}

BOOL sub_29927B354(uint64_t *a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    if (*(a2 + 23) >= 0)
    {
      LODWORD(v4) = *(a2 + 23);
    }

    else
    {
      v4 = *(a2 + 8);
    }

    MEMORY[0x2A1C7C4A8]();
    v6 = v13 - v5;
    sub_29927B494(v7, v13 - v5, v8, 0);
    v14 = v4;
    v15 = 0;
    v13[3] = v4;
    v9 = *a1;
    utrans_transUChars();
    v10 = v15 < 1;
    if (v15 <= 0)
    {
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

      sub_29922C614(a2, v6, v14);
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

unint64_t sub_29927B494(uint64_t **a1, void *__dst, unint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v9 = a1[1];
    v5 = v9 >= a4;
    v10 = v9 - a4;
    if (!v5)
    {
LABEL_17:
      sub_29925A4C0();
    }

    if (v10 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v10;
    }

    a1 = *a1;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v4 >= a4;
    v6 = v4 - a4;
    if (!v5)
    {
      goto LABEL_17;
    }

    if (v6 >= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v6;
    }

    if (v7)
    {
LABEL_8:
      memmove(__dst, a1 + 2 * a4, 2 * v7);
    }
  }

  return v7;
}

uint64_t *sub_29927B508(uint64_t *a1)
{
  *a1 = 0;
  *a1 = unum_open();
  return a1;
}

void *sub_29927B588(void *a1)
{
  if (*a1)
  {
    unum_close();
  }

  return a1;
}

uint64_t sub_29927B5BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *a1;
  if (result)
  {
    *a4 = unum_parseInt64();
    return 1;
  }

  return result;
}

uint64_t sub_29927B610(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*a1)
  {
    v6 = unum_formatInt64();
    v7 = 1;
    if ((a4 & 1) == 0)
    {
      if (*(a3 + 23) < 0)
      {
        **a3 = 0;
        *(a3 + 8) = 0;
      }

      else
      {
        *a3 = 0;
        *(a3 + 23) = 0;
      }
    }

    sub_29922C614(a3, __src, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return v7;
}