uint64_t PlyConverter::PlyConverter(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100003EAC((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 168) = PlyConverter::parsePly(a1, a2);
  return a1;
}

void sub_10000078C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000042B8(va);
  _Unwind_Resume(a1);
}

BOOL PlyConverter::parsePly(uint64_t a1, void *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v81 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v4 = std::locale::use_facet(&v88, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v88);
  v6 = sub_10000401C(a2, __p, v5);
  if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
  {
    goto LABEL_2;
  }

  v9 = __p[0];
  v10 = __p;
  if (v81 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = *v11;
  if (v12 != 112)
  {
    if (112 == v12)
    {
      goto LABEL_20;
    }

LABEL_2:
    v7 = 0;
    goto LABEL_3;
  }

  if (v81 < 0)
  {
    v10 = __p[0];
  }

  v13 = *(v10 + 1);
  if (v13 != 108)
  {
    if (108 == v13)
    {
      goto LABEL_20;
    }

    goto LABEL_2;
  }

  if (v81 >= 0)
  {
    v9 = __p;
  }

  if (121 != *(v9 + 2))
  {
    goto LABEL_2;
  }

LABEL_20:
  v77 = 0;
  v78 = 0;
  v79 = 0;
  PlyConverter::parsePlyHeader(a1, &v77, a2);
  v87[3].__locale_ = 0;
  v86[3] = 0;
  v85[3] = 0;
  if ((v79 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v79) != 5)
    {
      if (HIBYTE(v79) != 17)
      {
        if (HIBYTE(v79) != 20)
        {
          goto LABEL_62;
        }

        v14 = v77 == 0x6C5F7972616E6962 && v78 == 0x6E655F656C747469;
        if (!v14 || v79 != 1851877732)
        {
          goto LABEL_62;
        }

        goto LABEL_66;
      }

      v19 = &v77;
      goto LABEL_49;
    }

    if (v77 != 1768125281 || BYTE4(v77) != 105)
    {
      goto LABEL_62;
    }

LABEL_65:
    v88.__locale_ = &off_100014420;
    v89 = sub_1000027FC;
    v90 = &v88;
    sub_100004BA8(&v88, v87);
    v29 = sub_1000049E0(&v88);
    v88.__locale_ = &off_1000144D0;
    v89 = sub_1000028CC;
    v90 = &v88;
    sub_100004BA8(v29, v86);
    v26 = sub_1000049E0(&v88);
    v88.__locale_ = &off_1000144D0;
    v27 = sub_1000029A0;
    goto LABEL_67;
  }

  if (v78 == 5 && *v77 == 1768125281 && *(v77 + 4) == 105)
  {
    goto LABEL_65;
  }

  if (v78 == 20)
  {
    v17 = *v77 == 0x6C5F7972616E6962 && *(v77 + 1) == 0x6E655F656C747469;
    if (v17 && *(v77 + 4) == 1851877732)
    {
LABEL_66:
      v88.__locale_ = &off_100014420;
      v89 = sub_1000029E0;
      v90 = &v88;
      sub_100004BA8(&v88, v87);
      v30 = sub_1000049E0(&v88);
      v88.__locale_ = &off_1000144D0;
      v89 = sub_100002B04;
      v90 = &v88;
      sub_100004BA8(v30, v86);
      v26 = sub_1000049E0(&v88);
      v88.__locale_ = &off_1000144D0;
      v27 = sub_100002C44;
      goto LABEL_67;
    }
  }

  if (v78 != 17)
  {
LABEL_62:
    v7 = 0;
    goto LABEL_63;
  }

  v19 = v77;
LABEL_49:
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  if (v20 != 0x625F7972616E6962 || v21 != 0x6169646E655F6769 || v22 != 110)
  {
    goto LABEL_62;
  }

  v88.__locale_ = &off_100014420;
  v89 = sub_100002C84;
  v90 = &v88;
  sub_100004BA8(&v88, v87);
  v25 = sub_1000049E0(&v88);
  v88.__locale_ = &off_1000144D0;
  v89 = sub_100002DA8;
  v90 = &v88;
  sub_100004BA8(v25, v86);
  v26 = sub_1000049E0(&v88);
  v88.__locale_ = &off_1000144D0;
  v27 = sub_100002EE4;
LABEL_67:
  v89 = v27;
  v90 = &v88;
  sub_100004BA8(v26, v85);
  sub_1000049E0(&v88);
  v31 = *a1;
  v32 = *(a1 + 8);
  if (*a1 != v32)
  {
    while (1)
    {
      v33 = *(v31 + 48);
      v7 = v33 >> 28 == 0;
      if (v33 >> 28)
      {
        goto LABEL_63;
      }

      v34 = v31 + 24;
      if ((*(v31 + 47) & 0x80000000) == 0)
      {
        v35 = *(v31 + 47);
        if (v35 == 4)
        {
          goto LABEL_85;
        }

        if (v35 == 6 && *v34 == 1953654134 && *(v31 + 28) == 30821)
        {
          break;
        }

        goto LABEL_86;
      }

      if (*(v31 + 32) == 6 && **v34 == 1953654134 && *(*v34 + 4) == 30821)
      {
        break;
      }

      if (*(v31 + 32) == 4)
      {
        v34 = *v34;
LABEL_85:
        if (*v34 == 1701011814)
        {
          sub_10000309C(a1 + 120, 3 * v33);
          sub_10000309C(a1 + 144, *(v31 + 48));
          v48 = *(v31 + 48);
          if (v48)
          {
            for (i = 0; i < v48; ++i)
            {
              v50 = *v31;
              v51 = *(v31 + 8);
              if (*v31 != v51)
              {
                do
                {
                  if (*v50 == 9)
                  {
                    sub_1000027A8(v87, a2, v50[2]);
                    LODWORD(v88.__locale_) = v52;
                    if (v52 > 0x400)
                    {
                      goto LABEL_62;
                    }

                    if (v52)
                    {
                      v53 = 0;
                      do
                      {
                        sub_1000027A8(v87, a2, v50[1]);
                        LODWORD(v75) = v54;
                        sub_10000313C((a1 + 120), &v75);
                        ++v53;
                      }

                      while (v53 < SLODWORD(v88.__locale_));
                    }

                    sub_10000313C((a1 + 144), &v88);
                  }

                  else
                  {
                    v55 = sub_100004F64(v83, v87);
                    v56 = PlyConverter::skipUnknownProperty(v55, v50, a2, v83);
                    sub_1000049E0(v83);
                    if ((v56 & 1) == 0)
                    {
                      goto LABEL_62;
                    }
                  }

                  v50 += 3;
                }

                while (v50 != v51);
                v48 = *(v31 + 48);
              }
            }
          }

          goto LABEL_150;
        }
      }

LABEL_86:
      if (v33)
      {
        v38 = 0;
        while (1)
        {
          v39 = *v31;
          v40 = *(v31 + 8);
          if (*v31 != v40)
          {
            break;
          }

LABEL_92:
          if (++v38 >= v33)
          {
            goto LABEL_150;
          }
        }

        while (1)
        {
          v41 = sub_100004F64(v82, v87);
          v42 = PlyConverter::skipUnknownProperty(v41, v39, a2, v82);
          sub_1000049E0(v82);
          if ((v42 & 1) == 0)
          {
            goto LABEL_62;
          }

          v39 += 12;
          if (v39 == v40)
          {
            v33 = *(v31 + 48);
            goto LABEL_92;
          }
        }
      }

LABEL_150:
      v31 += 56;
      if (v31 == v32)
      {
        goto LABEL_63;
      }
    }

    v43 = *v31;
    v44 = *(v31 + 8);
    if (*v31 == v44)
    {
      v46 = 0;
      v45 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = *v43;
        v43 += 3;
        v45 |= v47 == 3;
        v46 |= v47 == 6;
      }

      while (v43 != v44);
    }

    v72 = v32;
    sub_100002F24((a1 + 48), v33);
    if (v45)
    {
      sub_100002F24((a1 + 72), *(v31 + 48));
    }

    if (v46)
    {
      sub_100002F24((a1 + 96), *(v31 + 48));
    }

    v88.__locale_ = 0;
    LODWORD(v89) = 0;
    v75 = 0x3F80000000000000;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    if (!*(v31 + 48))
    {
LABEL_149:
      v32 = v72;
      goto LABEL_150;
    }

    v57 = 0;
LABEL_119:
    v58 = *v31;
    v59 = *(v31 + 8);
    while (1)
    {
      if (v58 == v59)
      {
        sub_10000304C((a1 + 48), &v88);
        if (v45)
        {
          sub_10000304C((a1 + 72), &v75);
        }

        if (v46)
        {
          sub_10000304C((a1 + 96), &v73);
        }

        if (++v57 >= *(v31 + 48))
        {
          goto LABEL_149;
        }

        goto LABEL_119;
      }

      v60 = *v58;
      if (*v58 <= 3)
      {
        if (v60 > 1)
        {
          if (v60 == 2)
          {
            sub_1000027A8(v86, a2, v58[1]);
            LODWORD(v89) = v66;
            goto LABEL_143;
          }

          if (v60 == 3)
          {
            sub_1000027A8(v86, a2, v58[1]);
            LODWORD(v75) = v63;
            goto LABEL_143;
          }
        }

        else
        {
          if (!v60)
          {
            sub_1000027A8(v86, a2, v58[1]);
            LODWORD(v88.__locale_) = v65;
            goto LABEL_143;
          }

          if (v60 == 1)
          {
            sub_1000027A8(v86, a2, v58[1]);
            HIDWORD(v88.__locale_) = v62;
            goto LABEL_143;
          }
        }
      }

      else if (v60 <= 5)
      {
        if (v60 == 4)
        {
          sub_1000027A8(v86, a2, v58[1]);
          HIDWORD(v75) = v68;
          goto LABEL_143;
        }

        if (v60 == 5)
        {
          sub_1000027A8(v86, a2, v58[1]);
          v76 = v64;
          goto LABEL_143;
        }
      }

      else
      {
        switch(v60)
        {
          case 6:
            sub_1000027A8(v85, a2, v58[1]);
            LODWORD(v73) = v67;
            goto LABEL_143;
          case 7:
            sub_1000027A8(v85, a2, v58[1]);
            HIDWORD(v73) = v69;
            goto LABEL_143;
          case 8:
            sub_1000027A8(v85, a2, v58[1]);
            v74 = v61;
            goto LABEL_143;
        }
      }

      v70 = sub_100004F64(v84, v87);
      v71 = PlyConverter::skipUnknownProperty(v70, v58, a2, v84);
      sub_1000049E0(v84);
      if ((v71 & 1) == 0)
      {
        goto LABEL_62;
      }

LABEL_143:
      v58 += 3;
    }
  }

  v7 = 1;
LABEL_63:
  sub_1000049E0(v85);
  sub_1000049E0(v86);
  sub_1000049E0(v87);
  if (SHIBYTE(v79) < 0)
  {
    operator delete(v77);
  }

LABEL_3:
  if (SHIBYTE(v81) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_100001210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_1000049E0(&a39);
  sub_1000049E0(v39 - 208);
  sub_1000049E0(v39 - 176);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void PlyConverter::parsePlyHeader(uint64_t *a1, uint64_t a2, void *a3)
{
  memset(&__str, 0, sizeof(__str));
  if (!sub_100001D00(a3, &__str))
  {
    goto LABEL_16;
  }

  sub_100001F10(v74);
  std::string::operator=(v77, &__str);
  sub_100004454(&v75);
  __p = 0;
  v72 = 0;
  v73 = 0;
  sub_100002080(v74, &__p);
  if (SHIBYTE(v73) < 0)
  {
    if (v72 != 6)
    {
      goto LABEL_12;
    }

    p_p = __p;
  }

  else
  {
    if (SHIBYTE(v73) != 6)
    {
      goto LABEL_13;
    }

    p_p = &__p;
  }

  v7 = *p_p;
  v8 = p_p[2];
  if (v7 != 1836216166 || v8 != 29793)
  {
    if (v73 < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  sub_100002080(v74, a2);
  v10 = 0x79747265706F7270;
  while (sub_100001D00(a3, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((v74 + *(v74[0] - 3)), 0);
      std::string::operator=(v77, &__str);
      sub_100004454(&v75);
      v68 = 0;
      v69 = 0;
      v70 = 0;
      sub_100002080(v74, &v68);
      v12 = HIBYTE(v70);
      if (SHIBYTE(v70) < 0)
      {
        if (v69 == 7)
        {
          if (*v68 == 1835363429 && *(v68 + 3) == 1953391981)
          {
            goto LABEL_55;
          }

LABEL_37:
          if (v69 != 10)
          {
            goto LABEL_166;
          }

          v13 = v68;
LABEL_39:
          v15 = *v13;
          v16 = v13[4];
          if (v15 != 0x646165685F646E65 || v16 != 29285)
          {
            goto LABEL_166;
          }

          v18 = 1;
          goto LABEL_167;
        }

        if (v69 != 8 || *v68 != v10)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (HIBYTE(v70) == 7)
        {
          if (v68 == 1835363429 && *(&v68 + 3) == 1953391981)
          {
LABEL_55:
            v66 = 0uLL;
            v67 = 0;
            sub_100002080(v74, &v66);
            v65 = 0;
            std::istream::operator>>();
            sub_100003C1C(v60, &v66, v65);
            v21 = a1[1];
            if (v21 >= a1[2])
            {
              v23 = sub_1000045BC(a1, v60);
              v24 = SHIBYTE(v63);
              a1[1] = v23;
              if (v24 < 0)
              {
                operator delete(v62);
              }
            }

            else
            {
              *v21 = 0;
              *(v21 + 8) = 0;
              *(v21 + 16) = 0;
              *v21 = *v60;
              *(v21 + 16) = v61;
              v60[0] = 0;
              v60[1] = 0;
              v61 = 0;
              v22 = v63;
              *(v21 + 24) = v62;
              *(v21 + 40) = v22;
              v63 = 0;
              v62 = 0uLL;
              *(v21 + 48) = v64;
              a1[1] = v21 + 56;
            }

            if (v60[0])
            {
              v60[1] = v60[0];
              operator delete(v60[0]);
            }

            if (SHIBYTE(v67) < 0)
            {
              v25 = v66;
              goto LABEL_165;
            }
          }

LABEL_166:
          v18 = 0;
          v12 = HIBYTE(v70);
          goto LABEL_167;
        }

        if (HIBYTE(v70) != 8)
        {
          if (HIBYTE(v70) != 10)
          {
            goto LABEL_166;
          }

          v13 = &v68;
          goto LABEL_39;
        }

        if (v68 != v10)
        {
          goto LABEL_166;
        }
      }

      if (a1[1] != *a1)
      {
        v60[0] = 0;
        v60[1] = 0;
        v61 = 0;
        sub_100002080(v74, v60);
        if ((SHIBYTE(v61) & 0x80000000) == 0)
        {
          if (SHIBYTE(v61) == 4)
          {
            v19 = v60;
            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (v60[1] != 4)
        {
          goto LABEL_67;
        }

        v19 = v60[0];
LABEL_66:
        if (*v19 == 1953720684)
        {
          sub_100002080(v74, v60);
          v26 = sub_1000023F8(v60);
          sub_100002080(v74, v60);
        }

        else
        {
LABEL_67:
          v26 = 8;
        }

        v59 = v26;
        v66 = 0uLL;
        v67 = 0;
        sub_100002080(v74, &v66);
        v27 = a1[1];
        if ((SHIBYTE(v67) & 0x80000000) == 0)
        {
          v28 = 10;
          if (HIBYTE(v67) > 3u)
          {
            if (HIBYTE(v67) <= 0xBu)
            {
              if (HIBYTE(v67) != 4)
              {
                if (HIBYTE(v67) != 5)
                {
                  goto LABEL_147;
                }

                if (v66 != 1701147239 || BYTE4(v66) != 110)
                {
                  goto LABEL_147;
                }

LABEL_136:
                v28 = 7;
                goto LABEL_147;
              }

              if (v66 != 1702194274)
              {
                goto LABEL_147;
              }

LABEL_124:
              v28 = 8;
              goto LABEL_147;
            }

            if (HIBYTE(v67) != 12)
            {
              if (HIBYTE(v67) != 14)
              {
                goto LABEL_147;
              }

              v32 = (v66 ^ 0x695F786574726576 | *(&v66 + 6) ^ 0x73656369646E695FLL) == 0;
              goto LABEL_144;
            }

            v37 = &v66;
LABEL_126:
            v38 = bswap64(*v37);
            if (v38 == 0x7665727465785F69)
            {
              v38 = bswap32(*(v37 + 8));
              if (v38 == 1852073336)
              {
                v39 = 0;
LABEL_143:
                v32 = v39 == 0;
LABEL_144:
                if (v32)
                {
                  v28 = 9;
                }

                else
                {
                  v28 = 10;
                }

                goto LABEL_147;
              }

              v40 = 1852073336;
            }

            else
            {
              v40 = 0x7665727465785F69;
            }

            if (v38 < v40)
            {
              v39 = -1;
            }

            else
            {
              v39 = 1;
            }

            goto LABEL_143;
          }

          if (HIBYTE(v67) != 1)
          {
            if (HIBYTE(v67) != 2)
            {
              if (HIBYTE(v67) != 3 || (v66 == 25970 ? (v31 = BYTE2(v66) == 100) : (v31 = 0), !v31))
              {
LABEL_147:
                v41 = sub_1000023F8(v60);
                v42 = v41;
                v44 = *(v27 - 48);
                v43 = *(v27 - 40);
                if (v44 >= v43)
                {
                  v46 = v10;
                  v47 = *(v27 - 56);
                  v48 = v44 - v47;
                  v49 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v47) >> 2);
                  v50 = v49 + 1;
                  if (v49 + 1 > 0x1555555555555555)
                  {
                    sub_10000455C();
                  }

                  v51 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v47) >> 2);
                  if (2 * v51 > v50)
                  {
                    v50 = 2 * v51;
                  }

                  if (v51 >= 0xAAAAAAAAAAAAAAALL)
                  {
                    v52 = 0x1555555555555555;
                  }

                  else
                  {
                    v52 = v50;
                  }

                  if (v52)
                  {
                    v53 = sub_100004574(v27 - 56, v52);
                    v52 = v54;
                    v47 = *(v27 - 56);
                    v48 = *(v27 - 48) - v47;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v55 = &v53[12 * v49];
                  v56 = &v53[12 * v52];
                  *v55 = v28;
                  v55[1] = v42;
                  v55[2] = v59;
                  v45 = v55 + 3;
                  v57 = v55 - v48;
                  memcpy(v55 - v48, v47, v48);
                  v58 = *(v27 - 56);
                  *(v27 - 56) = v57;
                  *(v27 - 48) = v45;
                  *(v27 - 40) = v56;
                  if (v58)
                  {
                    operator delete(v58);
                  }

                  v10 = v46;
                }

                else
                {
                  *v44 = v28;
                  v44[1] = v41;
                  v45 = v44 + 3;
                  v44[2] = v59;
                }

                *(v27 - 48) = v45;
                if (SHIBYTE(v67) < 0)
                {
                  operator delete(v66);
                }

                if (SHIBYTE(v61) < 0)
                {
                  v25 = v60[0];
LABEL_165:
                  operator delete(v25);
                }

                goto LABEL_166;
              }

LABEL_134:
              v28 = 6;
              goto LABEL_147;
            }

            if (v66 != 30830)
            {
              if (v66 != 31086)
              {
                if (v66 != 31342)
                {
                  goto LABEL_147;
                }

                goto LABEL_132;
              }

LABEL_138:
              v28 = 4;
              goto LABEL_147;
            }

LABEL_133:
            v28 = 3;
            goto LABEL_147;
          }

          v33 = v66 - 120;
          if (v33 >= 3)
          {
            goto LABEL_147;
          }

LABEL_122:
          v28 = v33;
          goto LABEL_147;
        }

        v30 = *(&v66 + 1);
        if (*(&v66 + 1) == 1)
        {
          v33 = *v66 - 120;
          if (v33 < 3)
          {
            goto LABEL_122;
          }

LABEL_99:
          v30 = *(&v66 + 1);
        }

        else if (*(&v66 + 1) == 2)
        {
          switch(*v66)
          {
            case 0x786E:
              goto LABEL_133;
            case 0x796E:
              goto LABEL_138;
            case 0x7A6E:
LABEL_132:
              v28 = 5;
              goto LABEL_147;
          }

          goto LABEL_99;
        }

        if (v30 == 3)
        {
          if (*v66 == 25970 && *(v66 + 2) == 100)
          {
            goto LABEL_134;
          }

          v30 = *(&v66 + 1);
        }

        if (v30 == 5 && *v66 == 1701147239 && *(v66 + 4) == 110)
        {
          goto LABEL_136;
        }

        if (*(&v66 + 1) == 14)
        {
          if (*v66 == 0x695F786574726576 && *(v66 + 6) == 0x73656369646E695FLL)
          {
            v28 = 9;
            goto LABEL_147;
          }
        }

        else if (*(&v66 + 1) == 4 && *v66 == 1702194274)
        {
          goto LABEL_124;
        }

        if (*(&v66 + 1) != 12)
        {
          v28 = 10;
          goto LABEL_147;
        }

        v37 = v66;
        goto LABEL_126;
      }

      v18 = 0;
LABEL_167:
      if (v12 < 0)
      {
        operator delete(v68);
        if (v18)
        {
          break;
        }
      }

      else if (v18)
      {
        break;
      }
    }
  }

  if (v73 < 0)
  {
LABEL_12:
    operator delete(__p);
  }

LABEL_13:
  if (SHIBYTE(v77[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77[0].__r_.__value_.__l.__data_);
  }

  std::locale::~locale(&v76);
  std::istream::~istream();
  std::ios::~ios();
LABEL_16:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100001C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::ios::~ios();
  if (*(v41 - 89) < 0)
  {
    operator delete(*(v41 - 112));
  }

  _Unwind_Resume(a1);
}

BOOL sub_100001D00(void *a1, uint64_t a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v28, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v28);
  v6 = sub_10000401C(a1, a2, v5);
  v7 = *(v6 + *(*v6 - 24) + 32) & 5;
  if (!v7)
  {
    v8 = *(a2 + 23);
    v9 = v8;
    v10 = a2 + v8;
    if (v9 >= 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = *a2 + *(a2 + 8);
    }

    if (v9 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    while (v11 != v12)
    {
      v14 = *--v11;
      v13 = v14;
      if (v14 < 0)
      {
        if (!__maskrune(v13, 0x4000uLL))
        {
LABEL_13:
          v12 = v11 + 1;
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v13] & 0x4000) == 0)
      {
        goto LABEL_13;
      }
    }

    v15 = *(a2 + 23);
    v16 = v15;
    v17 = a2 + v15;
    if (v16 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v17 = *a2 + *(a2 + 8);
      v18 = *a2;
    }

    std::string::erase(a2, v12 - v18, v17 - v12);
    v19 = *(a2 + 23);
    v20 = *a2;
    if (v19 >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    if (v19 >= 0)
    {
      v22 = *(a2 + 23);
    }

    else
    {
      v22 = *(a2 + 8);
    }

    if (v22)
    {
      v23 = (v21 + v22);
      v24 = v21;
      do
      {
        v25 = *v24;
        if (v25 < 0)
        {
          if (!__maskrune(v25, 0x4000uLL))
          {
            goto LABEL_31;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v25] & 0x4000) == 0)
        {
          goto LABEL_31;
        }

        ++v24;
        --v22;
      }

      while (v22);
      v24 = v23;
LABEL_31:
      LOBYTE(v19) = *(a2 + 23);
      v20 = *a2;
    }

    else
    {
      v24 = v21;
    }

    if ((v19 & 0x80u) == 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = v20;
    }

    std::string::erase(a2, v21 - v26, &v24[-v21]);
  }

  return v7 == 0;
}

void (__cdecl ***sub_100001F10(void (__cdecl ***a1)(std::istringstream *__hidden this)))(std::istringstream *__hidden this)
{
  a1[21] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100004398((a1 + 2), 8);
  return a1;
}

void sub_100002058(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_100002080(uint64_t *a1, uint64_t a2)
{
  std::istream::sentry::sentry();
  if (v20 != 1)
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

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, &std::ctype<char>::id);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v17 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v16 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_16:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v16 = 0;
      goto LABEL_26;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v16 = 0;
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_16;
  }

  v16 = 2;
LABEL_26:
  v17 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (!v9)
  {
    v16 |= 4u;
  }

LABEL_28:
  std::ios_base::clear((a1 + *(v17 - 24)), *(a1 + *(v17 - 24) + 32) | v16);
  return a1;
}

void sub_1000022C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    v12 = *v9;
    JUMPOUT(0x100002284);
  }

  __cxa_rethrow();
}

BOOL sub_100002374(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_100004210();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_1000023F8(void *a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23) <= 4u)
    {
      if (v2 != 3)
      {
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        v3 = a1;
        if (*a1 == 1918986339)
        {
          return 0;
        }

LABEL_46:
        if (*v3 == 1953393013)
        {
          return 5;
        }

        goto LABEL_58;
      }

      goto LABEL_48;
    }

    if (v2 != 5)
    {
      if (v2 == 6 && *a1 == 1869116277 && *(a1 + 2) == 29810)
      {
        return 3;
      }

      goto LABEL_58;
    }

    if (*a1 != 1634231157 || *(a1 + 4) != 114)
    {
      if (*a1 != 1919903859 || *(a1 + 4) != 116)
      {
        goto LABEL_44;
      }

      return 2;
    }

    return 1;
  }

  if (a1[1] == 4 && **a1 == 1918986339)
  {
    return 0;
  }

  if (a1[1] == 5 && **a1 == 1634231157 && *(*a1 + 4) == 114)
  {
    return 1;
  }

  if (a1[1] == 5 && **a1 == 1919903859 && *(*a1 + 4) == 116)
  {
    return 2;
  }

  if (a1[1] == 6)
  {
    if (**a1 == 1869116277 && *(*a1 + 4) == 29810)
    {
      return 3;
    }

    if ((v2 & 0x80) == 0)
    {
LABEL_44:
      if (v2 != 3)
      {
        v3 = a1;
        if (v2 != 4)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }

LABEL_48:
      if (*a1 == 28265 && *(a1 + 2) == 116)
      {
        return 4;
      }

      goto LABEL_58;
    }
  }

  v7 = a1[1];
  if (v7 != 3)
  {
    if (v7 != 4)
    {
      goto LABEL_58;
    }

    v3 = *a1;
    goto LABEL_46;
  }

  if (**a1 == 28265 && *(*a1 + 2) == 116)
  {
    return 4;
  }

LABEL_58:
  if (sub_100002374(a1, "float"))
  {
    return 6;
  }

  if (sub_100002374(a1, "double"))
  {
    return 7;
  }

  if (sub_100002374(a1, "int8"))
  {
    return 0;
  }

  if (sub_100002374(a1, "uint8"))
  {
    return 1;
  }

  if (sub_100002374(a1, "int16"))
  {
    return 2;
  }

  if (sub_100002374(a1, "uint16"))
  {
    return 3;
  }

  if (sub_100002374(a1, "int32"))
  {
    return 4;
  }

  if (sub_100002374(a1, "uint32"))
  {
    return 5;
  }

  if (sub_100002374(a1, "float32"))
  {
    return 6;
  }

  if (sub_100002374(a1, "float64"))
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

uint64_t PlyConverter::skipUnknownProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 8);
  if (v7 == 8)
  {
    sub_1000027A8(a4, a3, *(a2 + 4));
    return 1;
  }

  sub_1000027A8(a4, a3, v7);
  v9 = v8;
  if (v8 <= 0x400)
  {
    for (; v9; --v9)
    {
      sub_1000027A8(a4, a3, *(a2 + 4));
    }

    return 1;
  }

  return 0;
}

uint64_t sub_1000027A8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100004968();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1000027FC(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return v2;
        }

        goto LABEL_10;
      }

LABEL_11:
      std::istream::operator>>();
      return 0;
    }

    if (a2 == 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    std::istream::operator>>();
    return 0;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a2 == 6)
  {
    std::istream::operator>>();
    return 0.0;
  }

  else if (a2 == 7)
  {
    std::istream::operator>>();
    return 0.0;
  }

  return v2;
}

float sub_1000028CC(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        goto LABEL_10;
      }
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

LABEL_10:
      std::istream::operator>>();
      return 0;
    }

LABEL_11:
    std::istream::operator>>();
    return 0;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a2 == 7)
  {
    std::istream::operator>>();
    return 0.0;
  }

  else if (a2 == 6)
  {
    std::istream::operator>>();
    return 0.0;
  }

  return result;
}

float sub_1000029A0(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_1000027FC(a1, a2) / 255.0;
  }

  return sub_1000028CC(a1, a2);
}

uint64_t sub_1000029E0(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
LABEL_5:
      std::istream::read();
      return 0;
    }

    if (a2 == 6)
    {
      std::istream::read();
      return 0.0;
    }

    else if (a2 == 7)
    {
      std::istream::read();
      return 0.0;
    }
  }

  else if (a2 >= 0)
  {
    goto LABEL_5;
  }

  return v2;
}

float sub_100002B04(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return result;
        }

        std::istream::read();
        LOBYTE(v3) = 0;
        return v3;
      }

      goto LABEL_15;
    }

    if (a2 != 2)
    {
      std::istream::read();
      LOWORD(v3) = 0;
      return v3;
    }

    goto LABEL_15;
  }

  if (a2 <= 5)
  {
    if (a2 != 4)
    {
      std::istream::read();
      return 0;
    }

LABEL_15:
    std::istream::read();
    return 0;
  }

  if (a2 == 7)
  {
    std::istream::read();
    return 0.0;
  }

  else if (a2 == 6)
  {
    std::istream::read();
    return 0.0;
  }

  return result;
}

float sub_100002C44(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_1000029E0(a1, a2) / 255.0;
  }

  return sub_100002B04(a1, a2);
}

uint64_t sub_100002C84(uint64_t a1, int a2)
{
  v2 = 0;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        std::istream::read();
        return COERCE_FLOAT(bswap32(v4));
      }

      else if (a2 == 7)
      {
        return sub_100003DF8();
      }
    }

    else
    {
      std::istream::read();
      return bswap32(v4);
    }
  }

  else if (a2 > 1)
  {
    if (a2 == 2)
    {
      std::istream::read();
      return (v4 << 8) | BYTE1(v4);
    }

    else
    {
      std::istream::read();
      return __rev16(v4);
    }
  }

  else if (a2 <= 1)
  {
    std::istream::read();
    return 0;
  }

  return v2;
}

float sub_100002DA8(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          std::istream::read();
          LOBYTE(v3) = 0;
          return v3;
        }

        return result;
      }

      std::istream::read();
      return 0;
    }

    if (a2 == 2)
    {
      std::istream::read();
      return (bswap32(v6) >> 16);
    }

    std::istream::read();
    return (bswap32(v6) >> 16);
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      std::istream::read();
      return bswap32(v6);
    }

    std::istream::read();
    return bswap32(v6);
  }

  if (a2 == 7)
  {
    return sub_100003DF8();
  }

  if (a2 == 6)
  {
    std::istream::read();
    return COERCE_FLOAT(bswap32(v6));
  }

  return result;
}

float sub_100002EE4(uint64_t a1, unsigned int a2)
{
  if (a2 <= 5)
  {
    return sub_100002C84(a1, a2) / 255.0;
  }

  return sub_100002DA8(a1, a2);
}

void sub_100002F24(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) < a2)
  {
    if (a2 >= 0x1555555555555556)
    {
      sub_10000455C();
    }

    v3 = a1[1] - *a1;
    v9 = a1;
    __p = sub_100004574(a1, a2);
    v6 = __p + v3;
    v7 = __p + v3;
    v8 = __p + 12 * v4;
    sub_100004EE8(a1, &__p);
    if (v7 != v6)
    {
      v7 = &v6[(v7 - v6 - 12) % 0xCuLL];
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_100002FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000304C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100004FFC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

void sub_10000309C(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 2)
  {
    if (a2 >> 62)
    {
      sub_10000455C();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_100005174(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[4 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void sub_10000313C(const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      sub_10000455C();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = sub_100005174(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = &v14[4 * v9];
    v17 = &v14[4 * v13];
    v18 = *a2;
    v19 = &v16[-4 * (v8 >> 2)];
    *v16 = v18;
    v6 = v16 + 4;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void PlyConverter::createPointCloud(uint64_t a1, const void **a2, const void **a3, serialize::Prim *a4)
{
  v8 = operator new(0x88uLL);
  sub_1000035A4(a2, 47, &v24);
  fileFormatUtils::makeValidIdentifier((a1 + 24), &__p);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v24, p_p, size);
  v13 = v11->__r_.__value_.__r.__words[0];
  v12 = v11->__r_.__value_.__l.__size_;
  v25[0] = v11->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v11->__r_.__value_.__r.__words[2] + 3);
  v14 = SHIBYTE(v11->__r_.__value_.__r.__words[2]);
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  *v8 = off_1000145D0;
  *(v8 + 2) = 3;
  if (v14 < 0)
  {
    sub_100003EAC(v8 + 16, v13, v12);
  }

  else
  {
    *(v8 + 2) = v13;
    *(v8 + 3) = v12;
    *(v8 + 8) = v25[0];
    *(v8 + 35) = *(v25 + 3);
    v8[39] = v14;
  }

  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0;
  *v8 = off_100014658;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 16) = 0;
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v8 + 64 != (a1 + 48))
  {
    sub_100005228(v8 + 8, *(a1 + 48), *(a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 2));
  }

  v15 = *(a1 + 96);
  v16 = *(a1 + 104);
  v17 = (a1 + 96);
  if (v16 == v15)
  {
    v18 = operator new(0x40uLL);
    if (*(a3 + 23) >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    v20 = &v24;
    sub_1000051AC(&v24, v19 + 8);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v24.__r_.__value_.__r.__words[0];
    }

    if (v19)
    {
      if (*(a3 + 23) >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      memmove(v20, v21, v19);
    }

    strcpy(v20 + v19, "/default");
    *v18 = off_1000145D0;
    *(v18 + 2) = 6;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003EAC(v18 + 16, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
      v22 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      *(v18 + 6) = 0;
      *(v18 + 7) = 0;
      *(v18 + 5) = 0;
      *v18 = &off_100014730;
      if (v22 < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v18 + 16) = v24;
      *(v18 + 5) = 0;
      *(v18 + 6) = 0;
      *(v18 + 7) = 0;
      *v18 = &off_100014730;
    }

    serialize::Prim::addChild(a4, v18);
    std::string::operator=((v8 + 112), (v18 + 16));
  }

  else if (v8 + 88 != v17)
  {
    sub_100005228(v8 + 11, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 2));
  }

  serialize::Prim::addChild(a4, v8);
}

void sub_10000352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1000035A4@<X0>(const void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  result = sub_1000051AC(a3, v5 + 1);
  if (*(result + 23) >= 0)
  {
    v7 = result;
  }

  else
  {
    v7 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    result = memmove(v7, v8, v5);
  }

  v9 = &v7[v5];
  *v9 = a2;
  v9[1] = 0;
  return result;
}

void PlyConverter::createMesh(uint64_t a1, const void **a2, const void **a3, serialize::Prim *a4)
{
  v4 = (a1 + 144);
  if (*(a1 + 152) != *(a1 + 144))
  {
    v9 = operator new(0x128uLL);
    sub_1000035A4(a2, 47, &v27);
    fileFormatUtils::makeValidIdentifier((a1 + 24), &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v27, p_p, size);
    v14 = v12->__r_.__value_.__r.__words[0];
    v13 = v12->__r_.__value_.__l.__size_;
    v28[0] = v12->__r_.__value_.__r.__words[2];
    *(v28 + 3) = *(&v12->__r_.__value_.__r.__words[2] + 3);
    v15 = SHIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    *v9 = off_1000145D0;
    *(v9 + 2) = 4;
    if (v15 < 0)
    {
      sub_100003EAC(v9 + 16, v14, v13);
    }

    else
    {
      *(v9 + 2) = v14;
      *(v9 + 3) = v13;
      *(v9 + 8) = v28[0];
      *(v9 + 35) = *(v28 + 3);
      v9[39] = v15;
    }

    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
    *v9 = &off_1000146A0;
    *(v9 + 4) = 0u;
    *(v9 + 35) = 0;
    *(v9 + 36) = 0;
    *(v9 + 34) = 0;
    *(v9 + 5) = 0u;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 8) = 0u;
    *(v9 + 9) = 0u;
    *(v9 + 10) = 0u;
    *(v9 + 11) = 0u;
    *(v9 + 12) = 0u;
    *(v9 + 13) = 0u;
    *(v9 + 14) = 0u;
    *(v9 + 15) = 0u;
    *(v9 + 252) = 0u;
    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v9 + 64 != v4)
    {
      sub_100005404(v9 + 8, *(a1 + 144), *(a1 + 152), (*(a1 + 152) - *(a1 + 144)) >> 2);
    }

    if (v9 + 160 != (a1 + 48))
    {
      sub_100005228(v9 + 20, *(a1 + 48), *(a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 2));
    }

    if (v9 + 88 != (a1 + 120))
    {
      sub_100005404(v9 + 11, *(a1 + 120), *(a1 + 128), (*(a1 + 128) - *(a1 + 120)) >> 2);
    }

    v16 = *(a1 + 96);
    v17 = *(a1 + 104);
    if (v17 == v16)
    {
      v18 = operator new(0x40uLL);
      if (*(a3 + 23) >= 0)
      {
        v19 = *(a3 + 23);
      }

      else
      {
        v19 = a3[1];
      }

      v20 = &v27;
      sub_1000051AC(&v27, v19 + 8);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v27.__r_.__value_.__r.__words[0];
      }

      if (v19)
      {
        if (*(a3 + 23) >= 0)
        {
          v21 = a3;
        }

        else
        {
          v21 = *a3;
        }

        memmove(v20, v21, v19);
      }

      strcpy(v20 + v19, "/default");
      *v18 = off_1000145D0;
      *(v18 + 2) = 6;
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100003EAC(v18 + 16, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
        v22 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
        *(v18 + 6) = 0;
        *(v18 + 7) = 0;
        *(v18 + 5) = 0;
        *v18 = &off_100014730;
        if (v22 < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *(v18 + 16) = v27;
        *(v18 + 5) = 0;
        *(v18 + 6) = 0;
        *(v18 + 7) = 0;
        *v18 = &off_100014730;
      }

      serialize::Prim::addChild(a4, v18);
      std::string::operator=((v9 + 272), (v18 + 16));
    }

    else if (v9 + 208 != (a1 + 96))
    {
      sub_100005228(v9 + 26, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 2));
    }

    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    v25 = (a1 + 72);
    if (v24 != v23)
    {
      if (v9 + 184 != v25)
      {
        sub_100005228(v9 + 23, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 2));
      }

      *(v9 + 64) = 2;
    }

    serialize::Prim::addChild(a4, v9);
  }
}

void sub_1000039E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  operator delete(v21);
  _Unwind_Resume(a1);
}

serialize::Prim *PlyConverter::makeStage(PlyConverter *this)
{
  if (*(this + 168) != 1)
  {
    return 0;
  }

  if (*(this + 47) < 0)
  {
    sub_100003EAC(__p, *(this + 3), *(this + 4));
  }

  else
  {
    *__p = *(this + 24);
    v9 = *(this + 5);
  }

  fileFormatUtils::makeValidIdentifier(__p, &v11);
  *v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  inited = fileFormatUtils::Asset::initStage(v10);
  fileFormatUtils::Asset::getGeomPath(v10, v6);
  fileFormatUtils::Asset::getMaterialsPath(v10, v4);
  if (*(this + 19) != *(this + 18) || *(this + 7) == *(this + 6))
  {
    PlyConverter::createMesh(this, v6, v4, inited);
  }

  else
  {
    PlyConverter::createPointCloud(this, v6, v4, inited);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  if (SHIBYTE(v13[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return inited;
}

void sub_100003BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100003E58(&a25);
  _Unwind_Resume(a1);
}

void sub_100003BF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100003BE8);
}

uint64_t sub_100003C1C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = a3;
  return a1;
}

void sub_100003C7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100003C98(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100003CDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t sub_100003E58(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_100003EAC(_BYTE *__dst, void *__src, unint64_t a3)
{
  v5 = __dst;
  if (a3 > 0x16)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003F40();
    }

    if ((a3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (a3 | 7) + 1;
    }

    v7 = operator new(v6);
    v5[1] = a3;
    v5[2] = v6 | 0x8000000000000000;
    *v5 = v7;
    v5 = v7;
  }

  else
  {
    __dst[23] = a3;
  }

  return memmove(v5, __src, a3 + 1);
}

void sub_100003F58(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100003FB4(exception, a1);
}

std::logic_error *sub_100003FB4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100003FE8()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_10000401C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  std::istream::sentry::sentry();
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

void sub_100004180(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x100004140);
  }

  __cxa_rethrow();
}

void sub_100004228(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100004284(exception, a1);
}

std::logic_error *sub_100004284(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_1000042B8(void ***a1)
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
        v4 -= 56;
        sub_100004340(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_100004340(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t sub_100004398(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100004454(a1);
  return a1;
}

void sub_10000442C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100004454(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *sub_100004574(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_100003FE8();
  }

  return operator new(12 * a2);
}

uint64_t sub_1000045BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10000455C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v7 = sub_100004734(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[56 * v2];
  v16 = v7;
  v17 = v8;
  *(&v18 + 1) = &v7[56 * v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 24);
  *(v8 + 5) = *(a2 + 40);
  *(v8 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v8 + 6) = *(a2 + 48);
  *&v18 = v8 + 56;
  v10 = a1[1];
  v11 = &v8[*a1 - v10];
  sub_100004780(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000048EC(&v16);
  return v15;
}

void sub_100004720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000048EC(va);
  _Unwind_Resume(a1);
}

void *sub_100004734(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x492492492492493)
  {
    sub_100003FE8();
  }

  return operator new(56 * a2);
}

uint64_t sub_100004780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      v8 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v8;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      *(a4 + 48) = *(v7 + 48);
      v7 += 56;
      a4 += 56;
    }

    while (v7 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      sub_100004340(a1, v5);
      v5 += 56;
    }
  }

  return sub_100004860(v10);
}

uint64_t sub_100004860(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100004898(a1);
  }

  return a1;
}

void sub_100004898(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_100004340(v5, v3);
    }

    while (v3 != v4);
  }
}

void **sub_1000048EC(void **a1)
{
  sub_100004920(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100004920(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_100004340(v4, i - 56);
  }
}

void sub_100004968()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = &off_1000143F8;
}

void sub_1000049B8(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete(v1);
}

uint64_t sub_1000049E0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_100004A68(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &off_100014420;
  result[1] = v3;
  return result;
}

uint64_t sub_100004AB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_100014420;
  a2[1] = v2;
  return result;
}

uint64_t sub_100004B08(uint64_t a1, uint64_t a2)
{
  if (sub_100004B54(a2, &off_1000144A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_100004B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_100004BA8(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100004E00(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100003C08(a1);
}

void *sub_100004E14(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &off_1000144D0;
  result[1] = v3;
  return result;
}

uint64_t sub_100004E5C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_1000144D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100004E9C(uint64_t a1, uint64_t a2)
{
  if (sub_100004B54(a2, &off_100014540))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100004EE8(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100004F64(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100004FFC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_10000455C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = sub_100004574(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[12 * v2];
  __p = v7;
  v12 = v8;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 8);
  v13 = v8 + 12;
  v14 = &v7[12 * v6];
  sub_100004EE8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 12) % 0xCuLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_100005124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100005174(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_100003FE8();
  }

  return operator new(4 * a2);
}

uint64_t sub_1000051AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003F40();
  }

  if (a2 > 0x16)
  {
    if ((a2 | 7) == 0x17)
    {
      v4 = 25;
    }

    else
    {
      v4 = (a2 | 7) + 1;
    }

    v5 = operator new(v4);
    *(a1 + 8) = a2;
    *(a1 + 16) = v4 | 0x8000000000000000;
    *a1 = v5;
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    *(a1 + 23) = a2;
  }

  return a1;
}

char *sub_100005228(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - result) >> 2) < a4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 > 0x1555555555555555)
    {
      sub_10000455C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2);
    v11 = 2 * v10;
    if (2 * v10 <= a4)
    {
      v11 = a4;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v12 = 0x1555555555555555;
    }

    else
    {
      v12 = v11;
    }

    result = sub_1000053B8(a1, v12);
    v13 = a1[1];
    while (v6 != a3)
    {
      *v13 = *v6;
      *(v13 + 2) = *(v6 + 2);
      v6 = (v6 + 12);
      v13 += 12;
    }

LABEL_21:
    a1[1] = v13;
    return result;
  }

  v14 = a1[1];
  v15 = v14 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - result) >> 2) < a4)
  {
    v16 = a2 + v15;
    if (v14 != result)
    {
      do
      {
        v17 = *v6;
        *(result + 2) = *(v6 + 2);
        *result = v17;
        result += 12;
        v6 = (v6 + 12);
        v15 -= 12;
      }

      while (v15);
      v14 = a1[1];
    }

    v18 = v14;
    if (v16 != a3)
    {
      v18 = v14;
      v19 = v14;
      do
      {
        *v19 = *v16;
        *(v19 + 2) = *(v16 + 8);
        v16 += 12;
        v19 += 12;
        v18 += 12;
      }

      while (v16 != a3);
    }

    v13 = v18;
    goto LABEL_21;
  }

  while (v6 != a3)
  {
    v20 = *v6;
    *(result + 2) = *(v6 + 2);
    *result = v20;
    result += 12;
    v6 = (v6 + 12);
  }

  a1[1] = result;
  return result;
}

char *sub_1000053B8(void *a1, unint64_t a2)
{
  if (a2 >= 0x1555555555555556)
  {
    sub_10000455C();
  }

  result = sub_100004574(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[12 * v4];
  return result;
}

void *sub_100005404(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (a4 <= (v15 - v9) >> 2)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = *(v7 + 8);
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
    }

    if (a4 >> 62)
    {
      sub_10000455C();
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_100005530(v7, v11);
    v12 = *(v7 + 8);
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(*(v7 + 8), __src, v13);
    }

    v14 = (v12 + v13);
  }

  *(v7 + 8) = v14;
  return result;
}

char *sub_100005530(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    sub_10000455C();
  }

  result = sub_100005174(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * v4];
  return result;
}

void XpcSandbox::~XpcSandbox(XpcSandbox *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      sandbox_extension_release();
      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void XpcSandbox::consumeExtension(XpcSandbox *this, const char *a2)
{
  if (a2)
  {
    v3 = sandbox_extension_consume();
    if (v3 != -1)
    {
      v4 = v3;
      v6 = *(this + 2);
      v5 = *(this + 3);
      if (v6 >= v5)
      {
        v8 = *(this + 1);
        v9 = v6 - v8;
        v10 = (v6 - v8) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_10000455C();
        }

        v12 = v5 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
        v14 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v13)
        {
          v14 = v11;
        }

        if (v14)
        {
          v15 = sub_10000575C(this + 8, v14);
          v14 = v16;
          v8 = *(this + 1);
          v9 = *(this + 2) - v8;
          v17 = v9 >> 3;
        }

        else
        {
          v15 = 0;
          v17 = (v6 - v8) >> 3;
        }

        v18 = &v15[8 * v10];
        v19 = &v15[8 * v14];
        v20 = &v18[-v17];
        *v18 = v4;
        v7 = v18 + 1;
        memcpy(v20, v8, v9);
        v21 = *(this + 1);
        *(this + 1) = v20;
        *(this + 2) = v7;
        *(this + 3) = v19;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v6 = v3;
        v7 = v6 + 1;
      }

      *(this + 2) = v7;
    }
  }
}

void XpcSandbox::consume(xpc_connection_t *this, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v4, "consume", a2);
  v5 = xpc_connection_send_message_with_reply_sync(*this, v4);
  if (v5)
  {
    string = xpc_dictionary_get_string(v5, "consumeToken");

    XpcSandbox::consumeExtension(this, string);
  }
}

void *sub_10000575C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_100003FE8();
  }

  return operator new(8 * a2);
}

_BYTE *serialize::Serializer::Serializer(_BYTE *this)
{
  *this = 1;
  return this;
}

{
  *this = 1;
  return this;
}

char *serialize::Serializer::load(xpc_object_t *this)
{
  *this = 0;
  int64 = xpc_dictionary_get_int64(this[1], "type");
  v3 = 0;
  if (int64 > 4)
  {
    if (int64 > 6)
    {
      if (int64 == 7)
      {
        v3 = operator new(0x68uLL);
        sub_100006D50(v3, 1);
        goto LABEL_24;
      }

      if (int64 != 8)
      {
        return v3;
      }

      v3 = operator new(0xB0uLL);
      sub_100005C7C(__p, &unk_100013366);
      sub_100006E44(v3, 1, __p);
    }

    else
    {
      if (int64 != 5)
      {
        v3 = operator new(0x40uLL);
        sub_100005C7C(__p, &unk_100013366);
        *v3 = off_1000145D0;
        *(v3 + 2) = 6;
        if ((SHIBYTE(v10) & 0x80000000) == 0)
        {
          *(v3 + 1) = *__p;
          *(v3 + 4) = v10;
          *(v3 + 5) = 0;
          *(v3 + 6) = 0;
          *(v3 + 7) = 0;
          *v3 = &off_100014730;
          goto LABEL_24;
        }

        sub_100003EAC(v3 + 16, __p[0], __p[1]);
        v7 = SHIBYTE(v10);
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *(v3 + 5) = 0;
        *v3 = &off_100014730;
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_20:
        operator delete(__p[0]);
        goto LABEL_24;
      }

      v3 = operator new(0x88uLL);
      sub_100005C7C(__p, &unk_100013366);
      sub_100006B14(v3, __p);
    }

    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (int64 > 2)
  {
    if (int64 == 3)
    {
      v3 = operator new(0x88uLL);
      sub_100005C7C(__p, &unk_100013366);
      *v3 = off_1000145D0;
      *(v3 + 2) = 3;
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        *(v3 + 1) = *__p;
        *(v3 + 4) = v10;
        *(v3 + 5) = 0;
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *v3 = off_100014658;
        *(v3 + 4) = 0u;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        *(v3 + 7) = 0u;
        *(v3 + 16) = 0;
        goto LABEL_24;
      }

      sub_100003EAC(v3 + 16, __p[0], __p[1]);
      v6 = SHIBYTE(v10);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 5) = 0;
      *v3 = off_100014658;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 16) = 0;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v3 = operator new(0x128uLL);
      sub_100005C7C(__p, &unk_100013366);
      *v3 = off_1000145D0;
      *(v3 + 2) = 4;
      if ((SHIBYTE(v10) & 0x80000000) == 0)
      {
        *(v3 + 1) = *__p;
        *(v3 + 4) = v10;
        *(v3 + 5) = 0;
        *(v3 + 6) = 0;
        *(v3 + 7) = 0;
        *v3 = &off_1000146A0;
        *(v3 + 35) = 0;
        *(v3 + 36) = 0;
        *(v3 + 34) = 0;
        *(v3 + 4) = 0u;
        *(v3 + 5) = 0u;
        *(v3 + 6) = 0u;
        *(v3 + 7) = 0u;
        *(v3 + 8) = 0u;
        *(v3 + 9) = 0u;
        *(v3 + 10) = 0u;
        *(v3 + 11) = 0u;
        *(v3 + 12) = 0u;
        *(v3 + 13) = 0u;
        *(v3 + 14) = 0u;
        *(v3 + 15) = 0u;
        *(v3 + 252) = 0u;
        goto LABEL_24;
      }

      sub_100003EAC(v3 + 16, __p[0], __p[1]);
      v8 = SHIBYTE(v10);
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      *(v3 + 5) = 0;
      *v3 = &off_1000146A0;
      *(v3 + 35) = 0;
      *(v3 + 36) = 0;
      *(v3 + 34) = 0;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 8) = 0u;
      *(v3 + 9) = 0u;
      *(v3 + 10) = 0u;
      *(v3 + 11) = 0u;
      *(v3 + 12) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 14) = 0u;
      *(v3 + 15) = 0u;
      *(v3 + 252) = 0u;
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

  if (int64 == 1)
  {
    v3 = operator new(0x40uLL);
    sub_100005C7C(__p, &unk_100013366);
    *v3 = off_1000145D0;
    *(v3 + 2) = 1;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      *(v3 + 1) = *__p;
      *(v3 + 4) = v10;
      *(v3 + 5) = 0;
      *(v3 + 6) = 0;
      *(v3 + 7) = 0;
      goto LABEL_24;
    }

    sub_100003EAC(v3 + 16, __p[0], __p[1]);
    v5 = SHIBYTE(v10);
    *(v3 + 6) = 0;
    *(v3 + 7) = 0;
    *(v3 + 5) = 0;
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (int64 == 2)
  {
    v3 = operator new(0x68uLL);
    sub_100006C58(v3);
LABEL_24:
    (*(*v3 + 24))(v3, this);
  }

  return v3;
}

void sub_100005C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

void *sub_100005C7C(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100003F40();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t serialize::Serializer::save(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = xpc_dictionary_create(0, 0, 0);
  (*(*a2 + 24))(a2, a1);
  return *(a1 + 8);
}

void serialize::Serializer::sync(unsigned __int8 *a1, const char *a2, int *a3)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

{
  v3 = *a1;
  v4 = *(a1 + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_int64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_int64(v4, a2);
  }
}

void serialize::Serializer::sync(unsigned __int8 *a1, const char *a2, std::string *a3)
{
  v3 = a3;
  v4 = *a1;
  v5 = *(a1 + 1);
  if (v4 == 1)
  {
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      a3 = a3->__r_.__value_.__r.__words[0];
    }

    xpc_dictionary_set_string(v5, a2, a3);
  }

  else
  {
    string = xpc_dictionary_get_string(v5, a2);

    std::string::assign(v3, string);
  }
}

float serialize::Serializer::sync(serialize::Serializer *this, const char *a2, float *a3)
{
  v4 = *this;
  v5 = *(this + 1);
  if (v4 == 1)
  {
    v6 = *a3;

    xpc_dictionary_set_double(v5, a2, v6);
  }

  else
  {
    result = xpc_dictionary_get_double(v5, a2);
    *a3 = result;
  }

  return result;
}

void serialize::Serializer::sync(serialize::Serializer *this, const char *a2, unint64_t *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_uint64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_uint64(v4, a2);
  }
}

void serialize::Serializer::sync(serialize::Serializer *this, const char *a2, int *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (v3 == 1)
  {
    v5 = *a3;

    xpc_dictionary_set_uint64(v4, a2, v5);
  }

  else
  {
    *a3 = xpc_dictionary_get_uint64(v4, a2);
  }
}

void serialize::Serializer::sync(serialize::Serializer *a1, char *a2, float *a3)
{
  sub_100005C7C(&v15, a2);
  v6 = std::string::append(&v15, ":x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v17 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, a3);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_100005C7C(&v15, a2);
  v9 = std::string::append(&v15, ":y");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v17 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  serialize::Serializer::sync(a1, v11, a3 + 1);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  sub_100005C7C(&v15, a2);
  v12 = std::string::append(&v15, ":z");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v17 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  serialize::Serializer::sync(a1, v14, a3 + 2);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

{
  sub_100005C7C(&v18, a2);
  v6 = std::string::append(&v18, ":x");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v20 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, a3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_100005C7C(&v18, a2);
  v9 = std::string::append(&v18, ":y");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v20 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  serialize::Serializer::sync(a1, v11, a3 + 1);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_100005C7C(&v18, a2);
  v12 = std::string::append(&v18, ":z");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  serialize::Serializer::sync(a1, v14, a3 + 2);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_100005C7C(&v18, a2);
  v15 = std::string::append(&v18, ":w");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v20 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  serialize::Serializer::sync(a1, v17, a3 + 3);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1000060FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_100006344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void serialize::Serializer::sync(uint64_t a1, const char *a2, const void **a3)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_100005404(a3, data, &data[length & 0xFFFFFFFFFFFFFFFCLL], length >> 2);
  }
}

{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = a3[1] - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_100005404(a3, data, &data[length & 0xFFFFFFFFFFFFFFFCLL], length >> 2);
  }
}

void serialize::Serializer::sync(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = *(a3 + 8) - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_100005228(a3, data, (data + 12 * (length / 0xC)), length / 0xC);
  }
}

{
  if (*a1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    v6 = *(a3 + 8) - *a3;

    xpc_dictionary_set_data(v4, a2, v5, v6);
  }

  else
  {
    length = 0;
    data = xpc_dictionary_get_data(*(a1 + 8), a2, &length);
    sub_100006F08(a3, data, (data + (length & 0xFFFFFFFFFFFFFFF8)), length >> 3);
  }
}

void serialize::Serializer::sync(xpc_object_t *a1, char *a2, uint64_t a3)
{
  v47 = (*(a3 + 8) - *a3) >> 3;
  sub_100005C7C(&v44, a2);
  v6 = std::string::append(&v44, ":count");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v46 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v46) >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  serialize::Serializer::sync(a1, v8, &v47);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v9 = v47;
  if (v47)
  {
    if (*a1 == 1)
    {
      key = a2;
      __p[0] = 0;
      __p[1] = 0;
      v46 = 0;
      sub_1000069FC(__p, v47);
      v10 = *a3;
      v11 = *(a3 + 8);
      if (*a3 != v11)
      {
        do
        {
          v12 = *v10;
          v44.__r_.__value_.__s.__data_[0] = 1;
          v44.__r_.__value_.__l.__size_ = xpc_dictionary_create(0, 0, 0);
          (*(*v12 + 24))(v12, &v44);
          size = v44.__r_.__value_.__l.__size_;
          v14 = __p[1];
          if (__p[1] >= v46)
          {
            v16 = (__p[1] - __p[0]) >> 3;
            if ((v16 + 1) >> 61)
            {
              sub_10000455C();
            }

            v17 = (v46 - __p[0]) >> 2;
            if (v17 <= v16 + 1)
            {
              v17 = v16 + 1;
            }

            if ((v46 - __p[0]) >= 0x7FFFFFFFFFFFFFF8)
            {
              v18 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              v19 = sub_10000575C(__p, v18);
            }

            else
            {
              v19 = 0;
            }

            v21 = &v19[8 * v18];
            v20 = &v19[8 * v16];
            *v20 = size;
            v15 = v20 + 1;
            v22 = v20 - (__p[1] - __p[0]);
            memcpy(v22, __p[0], __p[1] - __p[0]);
            v23 = __p[0];
            __p[0] = v22;
            __p[1] = v15;
            v46 = v21;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *__p[1] = v44.__r_.__value_.__l.__size_;
            v15 = v14 + 8;
          }

          __p[1] = v15;
          ++v10;
        }

        while (v10 != v11);
      }

      v24 = xpc_array_create(__p[0], v9);
      xpc_dictionary_set_value(a1[1], key, v24);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      value = xpc_dictionary_get_value(a1[1], a2);
      sub_1000069FC(a3, v9);
      v26 = 0;
      do
      {
        v27 = xpc_array_get_value(value, v26);
        LOBYTE(__p[0]) = 1;
        __p[1] = v27;
        v28 = serialize::Serializer::load(__p);
        if (v28)
        {
          v29 = v28;
          v31 = *(a3 + 8);
          v30 = *(a3 + 16);
          if (v31 >= v30)
          {
            v33 = (v31 - *a3) >> 3;
            if ((v33 + 1) >> 61)
            {
              sub_10000455C();
            }

            v34 = v30 - *a3;
            v35 = v34 >> 2;
            if (v34 >> 2 <= (v33 + 1))
            {
              v35 = v33 + 1;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v36 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              v37 = sub_10000575C(a3, v36);
            }

            else
            {
              v37 = 0;
            }

            v39 = &v37[8 * v36];
            v38 = &v37[8 * v33];
            *v38 = v29;
            v32 = v38 + 1;
            v40 = *(a3 + 8) - *a3;
            v41 = v38 - v40;
            memcpy(v38 - v40, *a3, v40);
            v42 = *a3;
            *a3 = v41;
            *(a3 + 8) = v32;
            *(a3 + 16) = v39;
            if (v42)
            {
              operator delete(v42);
            }
          }

          else
          {
            *v31 = v28;
            v32 = v31 + 1;
          }

          *(a3 + 8) = v32;
        }

        ++v26;
      }

      while (v9 != v26);
    }
  }
}

void sub_1000069A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000069FC(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 3)
  {
    if (a2 >> 61)
    {
      sub_10000455C();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_10000575C(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[8 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

uint64_t sub_100006A9C(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = off_1000145D0;
  *(a1 + 8) = a3;
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v4;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_100006B14(uint64_t a1, __int128 *a2)
{
  sub_100005C7C(__p, &unk_100013366);
  *a1 = off_1000145D0;
  *(a1 + 8) = 5;
  if (SHIBYTE(v8) < 0)
  {
    sub_100003EAC((a1 + 16), __p[0], __p[1]);
    v4 = SHIBYTE(v8);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = off_1000146E8;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC((a1 + 88), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 104) = *(a2 + 2);
    *(a1 + 88) = v5;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  return a1;
}

void sub_100006C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = *v16;
  if (*v16)
  {
    *(v15 + 9) = v18;
    operator delete(v18);
  }

  serialize::Prim::~Prim(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100006C58(uint64_t a1)
{
  sub_100005C7C(__p, &unk_100013366);
  *a1 = off_1000145D0;
  *(a1 + 8) = 2;
  if (SHIBYTE(v5) < 0)
  {
    sub_100003EAC((a1 + 16), __p[0], __p[1]);
    v2 = SHIBYTE(v5);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = off_100014610;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 1008981770;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0;
  *(a1 + 100) = 24;
  return a1;
}

void sub_100006D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006D50(uint64_t a1, int a2)
{
  sub_100005C7C(__p, &unk_100013366);
  *a1 = off_1000145D0;
  *(a1 + 8) = 7;
  if (SHIBYTE(v7) < 0)
  {
    sub_100003EAC((a1 + 16), __p[0], __p[1]);
    v4 = SHIBYTE(v7);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = v7;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

  *a1 = off_100014778;
  *(a1 + 64) = a2;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0;
  return a1;
}

void sub_100006E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100006E44(uint64_t a1, int a2, __int128 *a3)
{
  v5 = sub_100006A9C(a1, a3, 8);
  *v5 = off_1000147C0;
  *(v5 + 64) = a2;
  __asm { FMOV            V0.4S, #1.0 }

  *(v5 + 68) = _Q0;
  *(v5 + 104) = 0u;
  *(v5 + 92) = 0;
  *(v5 + 84) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  sub_100005C7C((v5 + 152), "st");
  return a1;
}

void sub_100006ED4(_Unwind_Exception *a1)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v2);
  }

  serialize::Prim::~Prim(v1);
  _Unwind_Resume(a1);
}

char *sub_100006F08(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  result = *a1;
  if (a4 > (v8 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 >> 61)
    {
      sub_10000455C();
    }

    v10 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = sub_100007030(a1, v11);
    v12 = a1[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12 = v13;
      v12 += 8;
    }

LABEL_21:
    a1[1] = v12;
    return result;
  }

  v14 = a1[1];
  v15 = v14 - result;
  if (a4 > (v14 - result) >> 3)
  {
    v16 = (a2 + v15);
    if (v14 != result)
    {
      do
      {
        v17 = *v6++;
        *result = v17;
        result += 8;
        v15 -= 8;
      }

      while (v15);
      v14 = a1[1];
    }

    v18 = v14;
    if (v16 != a3)
    {
      v18 = v14;
      v19 = v14;
      do
      {
        v20 = *v16++;
        *v19 = v20;
        v19 += 8;
        v18 += 8;
      }

      while (v16 != a3);
    }

    v12 = v18;
    goto LABEL_21;
  }

  while (v6 != a3)
  {
    v21 = *v6++;
    *result = v21;
    result += 8;
  }

  a1[1] = result;
  return result;
}

char *sub_100007030(void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    sub_10000455C();
  }

  result = sub_10000575C(a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

uint64_t StlConverter::StlConverter(uint64_t a1, void *a2, __int128 *a3)
{
  *a1 = off_100014570;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_100003EAC((a1 + 40), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 56) = *(a3 + 2);
    *(a1 + 40) = v5;
  }

  StlConverter::parseStl(a1, a2);
  return a1;
}

void sub_1000070FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void StlConverter::parseStl(void *a1, void *a2)
{
  std::istream::seekg();
  std::istream::tellg();
  a1[8] = v4;
  std::istream::seekg();
  if (StlConverter::isBinary(a1))
  {
    StlConverter::parseStlBinary(a1);
  }

  else
  {
    StlConverter::parseStlAscii(a1, a2);
  }
}

void StlConverter::~StlConverter(StlConverter *this)
{
  *this = off_100014570;
  v2 = *(this + 1);
  v3 = *(this + 2);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = *(v4 + 72);
      if (v5)
      {
        *(v4 + 80) = v5;
        operator delete(v5);
      }

      v6 = *(v4 + 48);
      if (v6)
      {
        *(v4 + 56) = v6;
        operator delete(v6);
      }

      v7 = *(v4 + 24);
      if (v7)
      {
        *(v4 + 32) = v7;
        operator delete(v7);
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      operator delete(v4);
    }

    ++v2;
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

{
  StlConverter::~StlConverter(this);

  operator delete(v1);
}

uint64_t StlConverter::isBinary(uint64_t a1)
{
  if (*(a1 + 64) < 0x54uLL)
  {
    return 0;
  }

  *(&v7[0].__r_.__value_.__s + 23) = 5;
  strcpy(v7, "solid");
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = std::istream::seekg();
  __chkstk_darwin(v3);
  std::istream::read();
  v6[5] = 0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  std::istream::seekg();
  if (std::string::compare(v7, v6) || *(a1 + 64) < 0x81uLL)
  {
    goto LABEL_11;
  }

  std::istream::read();
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  std::istream::seekg();
  v4 = (v7[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v7[0].__r_.__value_.__r.__words[2]) : v7[0].__r_.__value_.__l.__size_;
  if (v4 <= 0x73)
  {
    while (strncmp("facet normal", &v7[1] + v4, 0xCuLL))
    {
      if (++v4 == 116)
      {
        goto LABEL_11;
      }
    }

    v1 = 0;
  }

  else
  {
LABEL_11:
    v1 = 1;
  }

  if (SHIBYTE(v7[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7[0].__r_.__value_.__l.__data_);
  }

  return v1;
}

void sub_1000074D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void StlConverter::addSolid(void *a1, uint64_t *a2)
{
  fileFormatUtils::makeValidIdentifier(a2, &__p);
  v4 = a1[1];
  v5 = a1[2];
  v3 = a1 + 1;
  if (v4 != v5)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v8 = *(*v4 + 23);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(*v4 + 8);
      }

      if (size == v8)
      {
        v10 = v9 >= 0 ? *v4 : **v4;
        if (!memcmp(p_p, v10, size))
        {
          break;
        }
      }

      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_36;
      }
    }

    v11 = &v35;
    sub_1000051AC(&v35, size + 7);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v35.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v11, v12, size);
    }

    strcpy(v11 + size, "_solid_");
    std::to_string(&v34, (a1[2] - a1[1]) >> 3);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v34;
    }

    else
    {
      v13 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v34.__r_.__value_.__l.__size_;
    }

    v15 = std::string::append(&v35, v13, v14);
    v16 = v15->__r_.__value_.__r.__words[0];
    v37[0] = v15->__r_.__value_.__l.__size_;
    *(v37 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
    v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v16;
    __p.__r_.__value_.__l.__size_ = v37[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
    *(&__p.__r_.__value_.__s + 23) = v17;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

LABEL_36:
  v18 = operator new(0x60uLL);
  v19 = v18;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003EAC(v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *v18 = __p;
  }

  v19[3].__r_.__value_.__r.__words[2] = 0;
  *&v19[3].__r_.__value_.__l.__data_ = 0u;
  *&v19[2].__r_.__value_.__r.__words[1] = 0u;
  *&v19[1].__r_.__value_.__r.__words[2] = 0u;
  *&v19[1].__r_.__value_.__l.__data_ = 0u;
  a1[4] = v19;
  v21 = a1[2];
  v20 = a1[3];
  if (v21 >= v20)
  {
    v23 = (v21 - *v3) >> 3;
    if ((v23 + 1) >> 61)
    {
      sub_10000455C();
    }

    v24 = v20 - *v3;
    v25 = v24 >> 2;
    if (v24 >> 2 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v26 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    if (v26)
    {
      v27 = sub_10000575C((a1 + 1), v26);
      v19 = a1[4];
    }

    else
    {
      v27 = 0;
    }

    v29 = &v27[8 * v26];
    v28 = &v27[8 * v23];
    *v28 = v19;
    v22 = v28 + 1;
    v30 = a1[1];
    v31 = a1[2] - v30;
    v32 = v28 - v31;
    memcpy(v28 - v31, v30, v31);
    v33 = a1[1];
    a1[1] = v32;
    a1[2] = v22;
    a1[3] = v29;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v21 = v19;
    v22 = v21 + 1;
  }

  a1[2] = v22;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000077F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void StlConverter::addNormal(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32))
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    sub_100002080(a2, &__p);
    v10 = 0x3F80000000000000;
    Float = 0.0;
    if (SHIBYTE(v14) < 0)
    {
      if (v13 == 6)
      {
        p_p = __p;
        goto LABEL_7;
      }
    }

    else if (SHIBYTE(v14) == 6)
    {
      p_p = &__p;
LABEL_7:
      v5 = *p_p;
      v6 = p_p[2];
      if (v5 == 1836216174 && v6 == 27745)
      {
        LODWORD(v10) = fileFormatUtils::getFloat(a2);
        HIDWORD(v10) = fileFormatUtils::getFloat(a2);
        Float = fileFormatUtils::getFloat(a2);
      }
    }

    sub_10000304C((*(a1 + 32) + 48), &v10);
    v8 = *(a1 + 32);
    v9 = 0;
    sub_10000313C((v8 + 72), &v9);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100007954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t StlConverter::addVertex(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v5 = v2 + 72;
    v3 = *(v2 + 72);
    v4 = *(v5 + 8);
    v6 = v4 - v3;
    if (v4 != v3)
    {
      v8 = result;
      v10[2] = 0;
      fileFormatUtils::getFloat(a2);
      v10[1] = fileFormatUtils::getFloat(a2);
      v10[0] = fileFormatUtils::getFloat(a2);
      result = sub_10000304C((*(v8 + 32) + 24), v10);
      v9 = *(*(v8 + 32) + 72) + v6;
      ++*(v9 - 4);
    }
  }

  return result;
}

void StlConverter::parseStlAscii(void *a1, void *a2)
{
  memset(&__str, 0, sizeof(__str));
  sub_100001F10(v32);
  v4 = 0;
  v5 = 0;
  while (sub_100001D00(a2, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((v32 + *(v32[0] - 3)), 0);
      std::string::operator=(&v35, &__str);
      sub_100004454(&v33);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      sub_100002080(v32, &v29);
      if ((v5 & 1) == 0)
      {
        goto LABEL_16;
      }

      if (v31 < 0)
      {
        if (v30 != 6)
        {
          goto LABEL_16;
        }

        v7 = v29;
      }

      else
      {
        if (HIBYTE(v31) != 6)
        {
          goto LABEL_16;
        }

        v7 = &v29;
      }

      v8 = *v7;
      v9 = v7[2];
      if (v8 == 1953654134 && v9 == 30821)
      {
        StlConverter::addVertex(a1, v32);
LABEL_44:
        v5 = 1;
        goto LABEL_81;
      }

LABEL_16:
      if (v4)
      {
        if (v31 < 0)
        {
          v12 = v30;
          if (v30 != 5)
          {
            goto LABEL_46;
          }

          v11 = v29;
        }

        else
        {
          v11 = &v29;
          if (HIBYTE(v31) != 5)
          {
            goto LABEL_28;
          }
        }

        v13 = *v11;
        v14 = *(v11 + 4);
        if (v13 == 1702131055 && v14 == 114)
        {
          v4 = 1;
          goto LABEL_44;
        }
      }

      if (v31 < 0)
      {
        v12 = v30;
        if (v30 != 5)
        {
          goto LABEL_46;
        }

        v11 = v29;
      }

      else
      {
        v11 = &v29;
        if (HIBYTE(v31) != 5)
        {
LABEL_28:
          v16 = 0;
LABEL_29:
          if (HIBYTE(v31) == 7)
          {
            goto LABEL_52;
          }

          if (HIBYTE(v31) != 8)
          {
            goto LABEL_81;
          }

          goto LABEL_48;
        }
      }

      v17 = *v11;
      v18 = *(v11 + 4);
      if (v17 == 1701011814 && v18 == 116)
      {
        StlConverter::addNormal(a1, v32);
        v4 = 1;
        goto LABEL_81;
      }

      if ((v31 & 0x8000000000000000) == 0)
      {
        v16 = 0;
        v11 = &v29;
        if (HIBYTE(v31) == 5)
        {
          goto LABEL_68;
        }

        goto LABEL_29;
      }

      v12 = v30;
LABEL_46:
      if (v12 != 8)
      {
        goto LABEL_50;
      }

      v16 = 1;
      v11 = v29;
LABEL_48:
      if (*v11 == 0x7465636166646E65)
      {
        v4 = 0;
LABEL_61:
        v5 = 0;
        goto LABEL_81;
      }

      if (!v16)
      {
        v11 = &v29;
        if (HIBYTE(v31) == 5)
        {
          goto LABEL_68;
        }

        if (HIBYTE(v31) != 7)
        {
LABEL_66:
          if (HIBYTE(v31) != 8)
          {
            goto LABEL_81;
          }

          goto LABEL_79;
        }

        goto LABEL_52;
      }

LABEL_50:
      v20 = v30;
      if (v30 != 7)
      {
        goto LABEL_58;
      }

      v16 = 1;
      v11 = v29;
LABEL_52:
      v21 = *v11;
      v22 = *(v11 + 3);
      if (v21 == 1818521189 && v22 == 1886351212)
      {
        goto LABEL_61;
      }

      if (v16)
      {
        v20 = v30;
LABEL_58:
        if (v20 != 5)
        {
          goto LABEL_73;
        }

        v16 = 1;
        v11 = v29;
        goto LABEL_68;
      }

      v11 = &v29;
      if (HIBYTE(v31) != 5)
      {
        goto LABEL_66;
      }

      v16 = 0;
LABEL_68:
      v24 = *v11;
      v25 = *(v11 + 4);
      if (v24 != 1768714099 || v25 != 100)
      {
        if (v16)
        {
LABEL_73:
          if (v30 != 8)
          {
            goto LABEL_81;
          }

          v11 = v29;
        }

        else
        {
          if (HIBYTE(v31) != 8)
          {
            goto LABEL_81;
          }

          v11 = &v29;
        }

LABEL_79:
        if (*v11 == 0x64696C6F73646E65)
        {
          a1[4] = 0;
        }

        goto LABEL_81;
      }

      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      sub_100002080(v32, __p);
      StlConverter::addSolid(a1, __p);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

LABEL_81:
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v29);
      }
    }
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  std::locale::~locale(&v34);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100007E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

void StlConverter::parseStlBinary(void *a1)
{
  StlConverter::addSolid(a1, a1 + 5);
  std::istream::read();
  v2 = 0;
  std::istream::read();
  sub_100002F24((a1[4] + 48), 0);
  sub_100002F24((a1[4] + 24), 0);
}

uint64_t sub_1000080A0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1000088CC(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    result = v3 + 12;
  }

  a1[1] = result;
  return result;
}

void StlConverter::createMesh(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 + 72);
  if (*(a3 + 80) != *(a3 + 72))
  {
    v10 = operator new(0x128uLL);
    sub_1000035A4(a2, 47, &__p);
    v11 = *(a3 + 23);
    if (v11 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v11 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = *(a3 + 8);
    }

    v14 = std::string::append(&__p, v12, v13);
    v16 = v14->__r_.__value_.__r.__words[0];
    size = v14->__r_.__value_.__l.__size_;
    v35[0] = v14->__r_.__value_.__r.__words[2];
    *(v35 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
    v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    *v10 = off_1000145D0;
    *(v10 + 2) = 4;
    if (v17 < 0)
    {
      sub_100003EAC(v10 + 16, v16, size);
    }

    else
    {
      *(v10 + 2) = v16;
      *(v10 + 3) = size;
      *(v10 + 8) = v35[0];
      *(v10 + 35) = *(v35 + 3);
      v10[39] = v17;
    }

    *(v10 + 5) = 0;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    *v10 = &off_1000146A0;
    *(v10 + 4) = 0u;
    *(v10 + 35) = 0;
    *(v10 + 36) = 0;
    *(v10 + 34) = 0;
    *(v10 + 5) = 0u;
    *(v10 + 6) = 0u;
    *(v10 + 7) = 0u;
    *(v10 + 8) = 0u;
    *(v10 + 9) = 0u;
    *(v10 + 10) = 0u;
    *(v10 + 11) = 0u;
    *(v10 + 12) = 0u;
    *(v10 + 13) = 0u;
    *(v10 + 14) = 0u;
    *(v10 + 15) = 0u;
    *(v10 + 252) = 0u;
    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v10;
    sub_100008440(a5 + 40, &__p);
    if (v10 + 64 != v5)
    {
      sub_100005404(v10 + 8, *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 2);
    }

    if (v10 + 160 != (a3 + 24))
    {
      sub_100005228(v10 + 20, *(a3 + 24), *(a3 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 32) - *(a3 + 24)) >> 2));
    }

    sub_10000309C((v10 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 32) - *(a3 + 24)) >> 2));
    if (*(a3 + 32) != *(a3 + 24))
    {
      v18 = 0;
      v19 = *(v10 + 12);
      do
      {
        v20 = *(v10 + 13);
        if (v19 >= v20)
        {
          v21 = *(v10 + 11);
          v22 = v19 - v21;
          v23 = (v19 - v21) >> 2;
          v24 = v23 + 1;
          if ((v23 + 1) >> 62)
          {
            sub_10000455C();
          }

          v25 = v20 - v21;
          if (v25 >> 1 > v24)
          {
            v24 = v25 >> 1;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            v27 = sub_100005174((v10 + 88), v26);
            v26 = v28;
            v21 = *(v10 + 11);
            v22 = *(v10 + 12) - v21;
            v29 = v22 >> 2;
          }

          else
          {
            v27 = 0;
            v29 = (v19 - v21) >> 2;
          }

          v30 = &v27[4 * v23];
          v31 = &v27[4 * v26];
          v32 = &v30[-4 * v29];
          *v30 = v18;
          v19 = v30 + 4;
          memcpy(v32, v21, v22);
          v33 = *(v10 + 11);
          *(v10 + 11) = v32;
          *(v10 + 12) = v19;
          *(v10 + 13) = v31;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v19 = v18;
          v19 += 4;
        }

        *(v10 + 12) = v19;
        ++v18;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 32) - *(a3 + 24)) >> 2) > v18);
    }

    if (v10 + 184 != (a3 + 48))
    {
      sub_100005228(v10 + 23, *(a3 + 48), *(a3 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 56) - *(a3 + 48)) >> 2));
    }

    *(v10 + 64) = 1;
    std::string::operator=((v10 + 272), (a4 + 16));
  }
}

void sub_100008404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

void sub_100008440(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_10000455C();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_10000575C(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[8 * v10];
    v12 = &v11[8 * v7];
    *v12 = *a2;
    v6 = v12 + 8;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = v13;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t StlConverter::makeStage(StlConverter *this)
{
  if (*(this + 63) < 0)
  {
    sub_100003EAC(__p, *(this + 5), *(this + 6));
  }

  else
  {
    *__p = *(this + 40);
    v17 = *(this + 7);
  }

  fileFormatUtils::makeValidIdentifier(__p, &v19);
  v22 = 0u;
  *v21 = 0u;
  *v20 = 0u;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  inited = fileFormatUtils::Asset::initStage(v18);
  *(inited + 88) = 981668463;
  fileFormatUtils::Asset::getMaterialsPath(v18, v14);
  v3 = operator new(0x40uLL);
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v14[1];
  }

  v5 = v12;
  sub_1000051AC(v12, v4 + 8);
  if (v13 < 0)
  {
    v5 = v12[0];
  }

  if (v4)
  {
    if ((v15 & 0x80u) == 0)
    {
      v6 = v14;
    }

    else
    {
      v6 = v14[0];
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, "/default");
  *v3 = off_1000145D0;
  v3[2] = 6;
  if (SHIBYTE(v13) < 0)
  {
    sub_100003EAC(v3 + 16, v12[0], v12[1]);
    v7 = SHIBYTE(v13);
    *(v3 + 6) = 0;
    *(v3 + 7) = 0;
    *(v3 + 5) = 0;
    *v3 = &off_100014730;
    if (v7 < 0)
    {
      operator delete(v12[0]);
    }
  }

  else
  {
    *(v3 + 1) = *v12;
    *(v3 + 4) = v13;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 7) = 0;
    *v3 = &off_100014730;
  }

  v12[0] = v3;
  sub_100008440(inited + 40, v12);
  fileFormatUtils::Asset::getGeomPath(v18, v12);
  v10 = *(this + 1);
  v9 = *(this + 2);
  while (v10 != v9)
  {
    StlConverter::createMesh(v8, v12, *v10++, v3, inited);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return inited;
}

void sub_100008784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  operator delete(v27);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100003E58(&a27);
  _Unwind_Resume(a1);
}

void *sub_100008810(void *a1, uint64_t a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v7, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v7);
  return sub_10000401C(a1, a2, v5);
}

uint64_t sub_1000088CC(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1555555555555555)
  {
    sub_10000455C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 2);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 2) >= 0xAAAAAAAAAAAAAAALL)
  {
    v6 = 0x1555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    v7 = sub_100004574(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[12 * v2];
  __p = v7;
  v12 = v8;
  *v8 = *a2;
  *(v8 + 2) = *(a2 + 8);
  v13 = v8 + 12;
  v14 = &v7[12 * v6];
  sub_100004EE8(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = &v12[(v13 - v12 - 12) % 0xCuLL];
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_1000089F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ObjConverter::Group::removeLastSubMaterialIfEmpty(ObjConverter::Group *this)
{
  v1 = *(this + 1);
  if (v1 != *this)
  {
    v3 = *(v1 - 8);
    v4 = *v3;
    v5 = v3[1];
    if (v5 == *v3)
    {
      if (v5)
      {
        v3[1] = v4;
        operator delete(v4);
      }

      operator delete(v3);
      *(this + 1) -= 8;
    }
  }
}

void ObjConverter::Group::setMaterial(ObjConverter::Group *this, int a2)
{
  *(this + 3) = 0;
  for (i = *this; i != *(this + 1); i += 8)
  {
    if (*(*i + 24) == a2)
    {
      *(this + 3) = *i;
      return;
    }
  }

  ObjConverter::Group::removeLastSubMaterialIfEmpty(this);
  v5 = operator new(0x20uLL);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  *(v5 + 6) = a2;
  *(this + 3) = v5;
  v7 = *(this + 1);
  v6 = *(this + 2);
  if (v7 >= v6)
  {
    v9 = (v7 - *this) >> 3;
    if ((v9 + 1) >> 61)
    {
      sub_10000455C();
    }

    v10 = v6 - *this;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = sub_10000575C(this, v12);
      v5 = *(this + 3);
    }

    else
    {
      v13 = 0;
    }

    v14 = &v13[8 * v12];
    v15 = &v13[8 * v9];
    *v15 = v5;
    v8 = v15 + 8;
    v16 = *(this + 1) - *this;
    v17 = &v13[8 * v9 - v16];
    memcpy(v17, *this, v16);
    v18 = *this;
    *this = v17;
    *(this + 1) = v8;
    *(this + 2) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 1;
  }

  *(this + 1) = v8;
}

void ObjConverter::Group::appendIndices(const void **this, int a2, int a3, int a4)
{
  v6 = a3;
  v7 = a2;
  v5 = a4;
  sub_10000313C(this + 4, &v7);
  sub_10000313C(this + 7, &v6);
  sub_10000313C(this + 11, &v5);
}

uint64_t ObjConverter::ObjConverter(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(a1 + 8) = 0u;
  *(a1 + 112) = 0;
  *a1 = off_1000145A0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = -1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  if (*(a3 + 23) < 0)
  {
    sub_100003EAC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v14 = *(a3 + 16);
  }

  fileFormatUtils::makeValidIdentifier(__p, (a1 + 256));
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100003EAC((a1 + 328), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 344) = *(a4 + 2);
    *(a1 + 328) = v9;
  }

  *(a1 + 352) = a5;
  sub_100005C7C(v11, &unk_100013366);
  ObjConverter::setGroup(a1, v11);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  ObjConverter::parseObj(a1, a2);
  return a1;
}

void sub_100008DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100003E58((v19 + 4));
  v21 = *v19;
  if (*v19)
  {
    *(v15 + 224) = v21;
    operator delete(v21);
  }

  sub_10000D670(v17, *(v15 + 192));
  sub_10000D778(&__p);
  __p = v19 - 10;
  sub_10000D6D4(&__p);
  sub_10000D670(v16, *(v15 + 112));
  v22 = *(v15 + 80);
  if (v22)
  {
    *(v15 + 88) = v22;
    operator delete(v22);
  }

  v23 = *(v15 + 56);
  if (v23)
  {
    *(v15 + 64) = v23;
    operator delete(v23);
  }

  v24 = *(v15 + 32);
  if (v24)
  {
    *(v15 + 40) = v24;
    operator delete(v24);
  }

  v25 = *v18;
  if (*v18)
  {
    *(v15 + 16) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void sub_100008E8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100008E00);
}

void ObjConverter::setGroup(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      sub_100003EAC(&__p, *a2, v3);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    __p = *a2;
    goto LABEL_7;
  }

  sub_100005C7C(&__p, "default");
LABEL_7:
  fileFormatUtils::makeValidIdentifier(&__p, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v7;
  v4 = sub_10000D848(a1 + 104, &__p.__r_.__value_.__l.__data_);
  if (a1 + 112 == v4)
  {
    v6 = operator new(0x90uLL);
    sub_10000C92C(v6, *(a1 + 208));
    *(a1 + 128) = v6;
    v7.__r_.__value_.__r.__words[0] = &__p;
    sub_10000E134((a1 + 104), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v7)[7] = v6;
  }

  else
  {
    v5 = *(v4 + 56);
    *(a1 + 128) = v5;
    ObjConverter::Group::setMaterial(v5, *(a1 + 208));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100008FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  operator delete(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ObjConverter::parseObj(ObjConverter *a1, void *a2)
{
  memset(&__str, 0, sizeof(__str));
  sub_100001F10(v19);
  while (sub_10000B2B8(a2, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((v19 + *(v19[0] - 3)), 0);
      std::string::operator=(&v22, &__str);
      sub_100004454(&v20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      sub_100002080(v19, &v16);
      if ((SHIBYTE(v18) & 0x80000000) == 0)
      {
        if (HIBYTE(v18) == 1)
        {
          switch(v16)
          {
            case 'v':
              goto LABEL_37;
            case 'g':
              goto LABEL_50;
            case 'f':
              goto LABEL_42;
          }

LABEL_33:
          v11 = v16;
          goto LABEL_34;
        }

        if (HIBYTE(v18) == 2)
        {
          if (v16 == 29814)
          {
            goto LABEL_38;
          }

          if (v16 == 28278)
          {
LABEL_43:
            ObjConverter::addNormal(a1, v19);
            goto LABEL_68;
          }
        }

LABEL_9:
        if (HIBYTE(v18) != 6)
        {
          goto LABEL_68;
        }

LABEL_10:
        if (v16 == 1835365237 && WORD2(v16) == 27764)
        {
          goto LABEL_65;
        }

        goto LABEL_14;
      }

      if (v17 == 1 && *v16 == 118)
      {
LABEL_37:
        ObjConverter::addVertex(a1, v19);
        goto LABEL_68;
      }

      if (v17 == 2 && *v16 == 29814)
      {
LABEL_38:
        ObjConverter::addUV(a1, v19);
        goto LABEL_68;
      }

      v10 = v17;
      if (v17 == 2)
      {
        if (*v16 == 28278)
        {
          goto LABEL_43;
        }

        v10 = v17;
      }

      if (v10 == 1)
      {
        if (*v16 == 102)
        {
LABEL_42:
          ObjConverter::addFace(a1, v19);
          goto LABEL_68;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v18) == 1)
          {
            v11 = v16;
            if (v16 == 103)
            {
LABEL_50:
              sub_10000B68C(v19, &__p);
              ObjConverter::setGroup(a1, &__p);
              goto LABEL_66;
            }

LABEL_34:
            if (v11 != 111)
            {
              goto LABEL_68;
            }

            goto LABEL_50;
          }

          goto LABEL_9;
        }
      }

      v12 = v17;
      if (v17 == 1)
      {
        v13 = *v16;
        if (v13 == 103)
        {
          goto LABEL_50;
        }

        if ((v18 & 0x8000000000000000) == 0)
        {
          if (HIBYTE(v18) != 6)
          {
            if (HIBYTE(v18) != 1)
            {
              goto LABEL_68;
            }

            goto LABEL_33;
          }

          goto LABEL_10;
        }

        if (v13 == 111)
        {
          goto LABEL_50;
        }

        v12 = v17;
      }

      if (v12 != 6)
      {
        goto LABEL_68;
      }

      v6 = v16;
      if (*v16 == 1835365237 && *(v16 + 2) == 27764)
      {
LABEL_65:
        sub_10000B68C(v19, &__p);
        ObjConverter::setMaterial(a1, &__p);
LABEL_66:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_68;
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
        if (HIBYTE(v18) != 6)
        {
          goto LABEL_68;
        }

LABEL_14:
        v6 = &v16;
        goto LABEL_15;
      }

      if (v17 != 6)
      {
        goto LABEL_68;
      }

LABEL_15:
      v7 = *v6;
      v8 = v6[2];
      if (v7 == 1819047021 && v8 == 25193)
      {
        sub_10000B68C(v19, &__p);
        ObjConverter::loadMaterialFile(a1, &__p);
        goto LABEL_66;
      }

LABEL_68:
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }
    }
  }

  ObjConverter::checkLastSubMaterials(a1);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::locale::~locale(&v21);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100009458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10000B804(&a21);
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

void ObjConverter::~ObjConverter(ObjConverter *this)
{
  *this = off_1000145A0;
  v2 = this + 104;
  v3 = *(this + 13);
  v4 = this + 112;
  if (v3 != this + 112)
  {
    do
    {
      v5 = *(v3 + 7);
      if (v5)
      {
        v6 = sub_10000C770(v5);
        operator delete(v6);
      }

      v7 = *(v3 + 1);
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
        do
        {
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  v10 = *(this + 27);
  if (v10)
  {
    *(this + 28) = v10;
    operator delete(v10);
  }

  sub_10000D670(this + 184, *(this + 24));
  v15 = (this + 160);
  sub_10000D778(&v15);
  v15 = (this + 136);
  sub_10000D6D4(&v15);
  sub_10000D670(v2, *(this + 14));
  v11 = *(this + 10);
  if (v11)
  {
    *(this + 11) = v11;
    operator delete(v11);
  }

  v12 = *(this + 7);
  if (v12)
  {
    *(this + 8) = v12;
    operator delete(v12);
  }

  v13 = *(this + 4);
  if (v13)
  {
    *(this + 5) = v13;
    operator delete(v13);
  }

  v14 = *(this + 1);
  if (v14)
  {
    *(this + 2) = v14;
    operator delete(v14);
  }
}

{
  ObjConverter::~ObjConverter(this);

  operator delete(v1);
}

void ObjConverter::setMaterial(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      sub_100003EAC(&__p, *a2, v3);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    __p = *a2;
    goto LABEL_7;
  }

  sub_100005C7C(&__p, "white");
LABEL_7:
  fileFormatUtils::makeValidIdentifier(&__p, &v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v7;
  v4 = sub_10000D848(a1 + 184, &__p.__r_.__value_.__l.__data_);
  if (a1 + 192 == v4)
  {
    sub_100009800((a1 + 136), &__p);
    sub_10000C820(&v7, &__p);
    sub_100009840((a1 + 160), &v7);
    if (v9 < 0)
    {
      operator delete(v8);
    }

    sub_10000C898(&v7, v7.__r_.__value_.__l.__size_);
    v5 = -1431655765 * ((*(a1 + 144) - *(a1 + 136)) >> 3) - 1;
    *(a1 + 208) = v5;
    v7.__r_.__value_.__r.__words[0] = &__p;
    *(sub_10000DD00((a1 + 184), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v7) + 14) = v5;
  }

  else
  {
    *(a1 + 208) = *(v4 + 56);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    ObjConverter::Group::setMaterial(v6, *(a1 + 208));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000097CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000098D0(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_100009800(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10000D530(a1, a2);
  }

  else
  {
    sub_10000D4D0(a1, a2);
    result = (v3 + 24);
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100009840(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10000D944(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = (a2 + 8);
    v5 = *(a2 + 8);
    *(v3 + 8) = v5;
    v6 = v3 + 8;
    v7 = *(a2 + 16);
    *(v3 + 16) = v7;
    if (v7)
    {
      *(v5 + 16) = v6;
      *a2 = v4;
      *v4 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *v3 = v6;
    }

    v9 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v9;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1000098D0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  sub_10000C898(a1, *(a1 + 8));
  return a1;
}

void ObjConverter::updateMaterial(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      sub_100003EAC(&__p, *a2, v3);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    __p = *a2;
    goto LABEL_7;
  }

  sub_100005C7C(&__p, "white");
LABEL_7:
  fileFormatUtils::makeValidIdentifier(&__p, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v6;
  v4 = sub_10000D848(a1 + 184, &__p.__r_.__value_.__l.__data_);
  if (a1 + 192 == v4)
  {
    sub_100009800((a1 + 136), &__p);
    sub_10000C820(&v6, &__p);
    sub_100009840((a1 + 160), &v6);
    if (v8 < 0)
    {
      operator delete(v7);
    }

    sub_10000C898(&v6, v6.__r_.__value_.__l.__size_);
    v5 = -1431655765 * ((*(a1 + 144) - *(a1 + 136)) >> 3) - 1;
    *(a1 + 212) = v5;
    v6.__r_.__value_.__r.__words[0] = &__p;
    *(sub_10000DD00((a1 + 184), &__p.__r_.__value_.__l.__data_, &std::piecewise_construct, &v6) + 14) = v5;
  }

  else
  {
    *(a1 + 212) = *(v4 + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100009A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000098D0(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ObjConverter::addVertex(uint64_t a1, uint64_t *a2)
{
  v8[0] = fileFormatUtils::getFloat(a2);
  v8[1] = fileFormatUtils::getFloat(a2);
  v8[2] = fileFormatUtils::getFloat(a2);
  sub_10000304C((a1 + 8), v8);
  v4 = a2[5];
  v5 = a2[6];
  if (v4 >= v5)
  {
    result = (*(a2[2] + 56))();
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = v5 - v4;
  if (v5 != v4)
  {
LABEL_5:
    v7[0] = fileFormatUtils::getFloat(a2);
    v7[1] = fileFormatUtils::getFloat(a2);
    v7[2] = fileFormatUtils::getFloat(a2);
    return sub_10000304C((a1 + 32), v7);
  }

  return result;
}

uint64_t ObjConverter::addUV(uint64_t a1, uint64_t *a2)
{
  Float = fileFormatUtils::getFloat(a2);
  v5 = fileFormatUtils::getFloat(a2);
  v8 = __PAIR64__(LODWORD(v5), LODWORD(Float));
  v6 = *(a1 + 64);
  if (v6 >= *(a1 + 72))
  {
    result = sub_10000E274(a1 + 56, &v8);
  }

  else
  {
    *v6 = LODWORD(Float);
    v6[1] = LODWORD(v5);
    result = (v6 + 2);
  }

  *(a1 + 64) = result;
  return result;
}

uint64_t ObjConverter::addNormal(uint64_t a1, uint64_t *a2)
{
  v5[0] = fileFormatUtils::getFloat(a2);
  v5[1] = fileFormatUtils::getFloat(a2);
  v5[2] = fileFormatUtils::getFloat(a2);
  return sub_10000304C((a1 + 80), v5);
}

void ObjConverter::addFace(void *a1, uint64_t *a2)
{
  v4 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = a2 + 2;
  do
  {
    v6 = a2[5];
    v7 = a2[6];
    if (v6 >= v7)
    {
      v8 = (*(*v5 + 56))(v5);
    }

    else
    {
      v8 = v7 - v6;
    }

    if (!v8)
    {
      break;
    }

    memset(&v20, 0, sizeof(v20));
    sub_100002080(a2, &v20);
    sub_10000C9C4(&v21, 0);
    sub_10000CA64(v27, &v20, 24);
    __p = 0uLL;
    v26 = 0;
    while (1)
    {
      v9 = sub_10000401C(v27, &__p, 0x2Fu);
      if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
      {
        break;
      }

      sub_100009800(&v21, &__p);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p);
    }

    v27[0] = v19;
    *(v27 + *(v19 - 3)) = v18;
    v27[2] = v17;
    if (v30 < 0)
    {
      operator delete(v29[7].__locale_);
    }

    std::locale::~locale(v29);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v10 = sub_10000A0A0(v21, -1431655765 * ((a1[2] - a1[1]) >> 2));
    if (v10 != -1)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3) < 2)
      {
        v12 = -1;
      }

      else
      {
        v11 = sub_10000A0A0(v21 + 3, (a1[8] - a1[7]) >> 3);
        v12 = v10;
        if (v11 != v10)
        {
          *(a1[16] + 80) = 1;
          v12 = v11;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3) <= 2)
      {
        v14 = a1[16];
        v13 = -1;
      }

      else
      {
        v13 = sub_10000A0A0(v21 + 6, -1431655765 * ((a1[11] - a1[10]) >> 2));
        v14 = a1[16];
        if (v13 == v10)
        {
          v13 = v10;
        }

        else
        {
          *(v14 + 112) = 1;
        }
      }

      ObjConverter::Group::appendIndices(v14, v10, v12, v13);
      v24 = ++v4;
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  while (v10 != -1);
  if (v4 >= 1)
  {
    v15 = a1[16];
    v16 = v15[3];
    LODWORD(v27[0]) = (v15[16] - v15[15]) >> 2;
    sub_10000313C(v16, v27);
    sub_10000313C((a1[16] + 120), &v24);
  }

  v27[0] = &v21;
  sub_10000D6D4(v27);
}

void sub_10000A030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  a23 = &a19;
  sub_10000D6D4(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10000A0A0(uint64_t *a1, int a2)
{
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      return 0xFFFFFFFFLL;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = strtol(a1, 0, 10);
  if (v3 >= 0)
  {
    v4 = -1;
  }

  else
  {
    v4 = a2;
  }

  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v6 < 0 != v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void ObjConverter::checkLastSubMaterials(ObjConverter *this)
{
  v1 = *(this + 13);
  v2 = this + 112;
  if (v1 != this + 112)
  {
    do
    {
      v3 = *(v1 + 7);
      if (*(v3 + 1) - *v3 >= 9uLL)
      {
        ObjConverter::Group::removeLastSubMaterialIfEmpty(v3);
      }

      v4 = *(v1 + 1);
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
          v5 = *(v1 + 2);
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void ObjConverter::loadMaterialFile(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    *&__p[16] = *(a2 + 16);
  }

  v3 = (a1 + 328);
  v4 = *(a1 + 351);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(a1 + 336);
    if (!v4)
    {
      goto LABEL_35;
    }

    v5 = v3->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(a1 + 351))
    {
      goto LABEL_35;
    }

    v5 = a1 + 328;
  }

  v6 = v5 - 1;
  while (v4)
  {
    v7 = *(v6 + v4--);
    if (v7 == 47)
    {
      if (v4 != -1)
      {
        std::string::basic_string(&v19, v3, 0, v4, &v17);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        v9 = &v17;
        sub_1000051AC(&v17, size + 1);
        if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v17.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &v19;
          }

          else
          {
            v10 = v19.__r_.__value_.__r.__words[0];
          }

          memmove(v9, v10, size);
        }

        *(&v9->__r_.__value_.__l.__data_ + size) = 47;
        if (__p[23] >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = *__p;
        }

        if (__p[23] >= 0)
        {
          v12 = __p[23];
        }

        else
        {
          v12 = *&__p[8];
        }

        v13 = std::string::append(&v17, v11, v12);
        v14 = v13->__r_.__value_.__r.__words[0];
        v21[0] = v13->__r_.__value_.__l.__size_;
        *(v21 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        *__p = v14;
        *&__p[8] = v21[0];
        *&__p[15] = *(v21 + 7);
        __p[23] = v15;
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      break;
    }
  }

LABEL_35:
  if (__p[23] >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = *__p;
  }

  XpcSandbox::consume(*(a1 + 352), v16);
  sub_10000A4E4(&v19);
  if (v20)
  {
    ObjConverter::parseMtl(a1, &v19);
  }

  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_10000A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_10000A4E4(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_10000A670(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void ObjConverter::parseMtl(uint64_t a1, void *a2)
{
  memset(&__str, 0, sizeof(__str));
  sub_100001F10(v19);
  while (sub_10000B2B8(a2, &__str))
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::ios_base::clear((v19 + *(v19[0] - 3)), 0);
      std::string::operator=(&v22, &__str);
      sub_100004454(&v20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      sub_100002080(v19, &v16);
      if (SHIBYTE(v18) < 0)
      {
        if (v17 == 4)
        {
          if (*v16 == 1886221666)
          {
            goto LABEL_54;
          }
        }

        else if (v17 == 6 && *v16 == 1836541294 && *(v16 + 2) == 27764)
        {
LABEL_86:
          sub_10000B68C(v19, &__p);
          ObjConverter::updateMaterial(a1, &__p);
          goto LABEL_96;
        }

        if (v17 == 2)
        {
          if (*v16 == 25675)
          {
            goto LABEL_87;
          }
        }

        else if (v17 == 8 && *v16 == 0x706D75625F70616DLL)
        {
LABEL_54:
          sub_10000B68C(v19, &__p);
          ObjConverter::addMapToMaterial(a1, 0, &__p);
          goto LABEL_96;
        }

        if (v17 == 1)
        {
          if (*v16 == 100)
          {
            goto LABEL_56;
          }
        }

        else if (v17 == 6 && *v16 == 1601200493 && *(v16 + 2) == 25675)
        {
          goto LABEL_90;
        }

        if (v17 == 2)
        {
          if (*v16 == 28513)
          {
            goto LABEL_91;
          }
        }

        else if (v17 == 5 && *v16 == 1601200493 && *(v16 + 4) == 100)
        {
LABEL_62:
          sub_10000B68C(v19, &__p);
          ObjConverter::addMapToMaterial(a1, 2, &__p);
          goto LABEL_96;
        }

        if (v17 == 2)
        {
          v9 = v16;
LABEL_66:
          if (*v9 == 25931)
          {
            v10 = 3;
            goto LABEL_92;
          }

          goto LABEL_80;
        }

        if (v17 == 6 && *v16 == 1601200493 && *(v16 + 2) == 28513)
        {
          goto LABEL_93;
        }
      }

      else
      {
        if (HIBYTE(v18) <= 4u)
        {
          if (HIBYTE(v18) == 1)
          {
            if (v16 == 100)
            {
LABEL_56:
              v10 = 2;
LABEL_92:
              ObjConverter::addInputToMaterial(a1, v10);
              goto LABEL_98;
            }

            goto LABEL_80;
          }

          if (HIBYTE(v18) != 2)
          {
            if (HIBYTE(v18) == 4 && v16 == 1886221666)
            {
              goto LABEL_54;
            }

            goto LABEL_80;
          }

          if (v16 == 25675)
          {
LABEL_87:
            v10 = 1;
            goto LABEL_92;
          }

          if (v16 == 28513)
          {
LABEL_91:
            v10 = 4;
            goto LABEL_92;
          }

          v9 = &v16;
          goto LABEL_66;
        }

        if (HIBYTE(v18) == 5)
        {
          if (v16 == 1601200493 && BYTE4(v16) == 100)
          {
            goto LABEL_62;
          }
        }

        else if (HIBYTE(v18) == 6)
        {
          if (v16 == 1836541294 && WORD2(v16) == 27764)
          {
            goto LABEL_86;
          }

          if (v16 == 1601200493 && WORD2(v16) == 25675)
          {
LABEL_90:
            sub_10000B68C(v19, &__p);
            ObjConverter::addMapToMaterial(a1, 1, &__p);
            goto LABEL_96;
          }

          if (v16 == 1601200493 && WORD2(v16) == 28513)
          {
LABEL_93:
            sub_10000B68C(v19, &__p);
            ObjConverter::addMapToMaterial(a1, 4, &__p);
            goto LABEL_96;
          }
        }

        else if (HIBYTE(v18) == 8 && v16 == 0x706D75625F70616DLL)
        {
          goto LABEL_54;
        }
      }

LABEL_80:
      if (sub_100002374(&v16, "map_Ke"))
      {
        sub_10000B68C(v19, &__p);
        ObjConverter::addMapToMaterial(a1, 3, &__p);
      }

      else
      {
        if (sub_100002374(&v16, "metallic"))
        {
          v10 = 5;
          goto LABEL_92;
        }

        if (sub_100002374(&v16, "map_metallic"))
        {
          sub_10000B68C(v19, &__p);
          ObjConverter::addMapToMaterial(a1, 5, &__p);
        }

        else
        {
          if (sub_100002374(&v16, "roughness"))
          {
            v10 = 6;
            goto LABEL_92;
          }

          if (!sub_100002374(&v16, "map_roughness"))
          {
            goto LABEL_98;
          }

          sub_10000B68C(v19, &__p);
          ObjConverter::addMapToMaterial(a1, 6, &__p);
        }
      }

LABEL_96:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_98:
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16);
      }
    }
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  std::locale::~locale(&v21);
  std::istream::~istream();
  std::ios::~ios();
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10000ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10000B804(&a21);
  if (*(v21 - 89) < 0)
  {
    operator delete(*(v21 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t ObjConverter::addInputToMaterial(uint64_t result, int a2)
{
  v33 = a2;
  v2 = *(result + 212);
  if (v2 != -1)
  {
    v3 = (*(result + 160) + 48 * v2);
    if (!fileFormatUtils::Material::hasInput(v3, a2))
    {
      sub_100005C7C(v21, &unk_100013366);
      sub_100005C7C(v19, &unk_100013366);
      sub_100005C7C(v17, "st");
      sub_10000D250(__dst, v21, v19, v17);
      v34 = &v33;
      v4 = sub_10000E3FC(v3, &v33, &std::piecewise_construct, &v34);
      v5 = v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
      }

      v5[7] = v24;
      *(v5 + 5) = *__dst;
      HIBYTE(v24) = 0;
      LOBYTE(__dst[0]) = 0;
      if (*(v5 + 87) < 0)
      {
        operator delete(v5[8]);
      }

      v5[10] = v26;
      *(v5 + 4) = v25;
      HIBYTE(v26) = 0;
      LOBYTE(v25) = 0;
      if (*(v5 + 111) < 0)
      {
        operator delete(v5[11]);
      }

      v5[13] = v28;
      *(v5 + 11) = __p;
      HIBYTE(v28) = 0;
      LOBYTE(__p) = 0;
      if (*(v5 + 135) < 0)
      {
        operator delete(v5[14]);
        v8 = SHIBYTE(v28);
        *(v5 + 7) = v29;
        v9 = v30;
        v10 = v31;
        HIBYTE(v30) = 0;
        LOBYTE(v29) = 0;
        v5[16] = v9;
        v5[17] = v10;
        *(v5 + 36) = v32;
        if (v8 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *(v5 + 7) = v29;
        v6 = v30;
        v7 = v31;
        HIBYTE(v30) = 0;
        LOBYTE(v29) = 0;
        v5[16] = v6;
        v5[17] = v7;
        *(v5 + 36) = v32;
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    __dst[0] = &v33;
    v11 = sub_10000E3FC(v3, &v33, &std::piecewise_construct, __dst);
    __asm { FMOV            V0.2S, #1.0 }

    v11[17] = _D0;
    *(v11 + 36) = 1065353216;
    std::istream::operator>>();
    std::istream::operator>>();
    return std::istream::operator>>();
  }

  return result;
}

void sub_10000AFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  sub_10000B010(&a28);
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

  _Unwind_Resume(a1);
}

uint64_t sub_10000B010(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

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

void ObjConverter::addMapToMaterial(uint64_t a1, int a2, std::string *a3)
{
  v28 = a2;
  v3 = *(a1 + 212);
  if (v3 != -1)
  {
    v5 = (*(a1 + 160) + 48 * v3);
    if (fileFormatUtils::Material::hasInput(v5, a2))
    {
      __dst[0] = &v28;
      v6 = sub_10000E3FC(v5, &v28, &std::piecewise_construct, __dst);
      std::string::operator=((v6 + 8), a3);
    }

    else
    {
      sub_100005C7C(v16, &unk_100013366);
      sub_100005C7C(v14, "st");
      sub_10000D250(__dst, v16, a3, v14);
      v29 = &v28;
      v7 = sub_10000E3FC(v5, &v28, &std::piecewise_construct, &v29);
      v8 = v7;
      if (*(v7 + 63) < 0)
      {
        operator delete(v7[5]);
      }

      v8[7] = v19;
      *(v8 + 5) = *__dst;
      HIBYTE(v19) = 0;
      LOBYTE(__dst[0]) = 0;
      if (*(v8 + 87) < 0)
      {
        operator delete(v8[8]);
      }

      v8[10] = v21;
      *(v8 + 4) = v20;
      HIBYTE(v21) = 0;
      LOBYTE(v20) = 0;
      if (*(v8 + 111) < 0)
      {
        operator delete(v8[11]);
      }

      v8[13] = v23;
      *(v8 + 11) = __p;
      HIBYTE(v23) = 0;
      LOBYTE(__p) = 0;
      if (*(v8 + 135) < 0)
      {
        operator delete(v8[14]);
        v11 = SHIBYTE(v23);
        *(v8 + 7) = v24;
        v12 = v25;
        v13 = v26;
        HIBYTE(v25) = 0;
        LOBYTE(v24) = 0;
        v8[16] = v12;
        v8[17] = v13;
        *(v8 + 36) = v27;
        if (v11 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *(v8 + 7) = v24;
        v9 = v25;
        v10 = v26;
        HIBYTE(v25) = 0;
        LOBYTE(v24) = 0;
        v8[16] = v9;
        v8[17] = v10;
        *(v8 + 36) = v27;
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }

      if (v17 < 0)
      {
        operator delete(v16[0]);
      }
    }
  }
}

void sub_10000B274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10000B010(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10000B2B8(void *a1, uint64_t a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&__p, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&__p);
  v6 = sub_10000401C(a1, a2, v5);
  v7 = *(v6 + *(*v6 - 24) + 32) & 5;
  if (!v7)
  {
    v9 = *(a2 + 23);
    v10 = v9;
    v11 = a2 + v9;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *a2 + *(a2 + 8);
    }

    if (v10 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    while (v12 != v13)
    {
      v15 = *--v12;
      v14 = v15;
      if (v15 < 0)
      {
        if (!__maskrune(v14, 0x4000uLL))
        {
LABEL_14:
          v13 = v12 + 1;
          break;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v14] & 0x4000) == 0)
      {
        goto LABEL_14;
      }
    }

    v16 = *(a2 + 23);
    v17 = v16;
    v18 = a2 + v16;
    if (v17 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v18 = *a2 + *(a2 + 8);
      v19 = *a2;
    }

    std::string::erase(a2, v13 - v19, v18 - v13);
    do
    {
      while (1)
      {
        v20 = *(a2 + 23);
        if (v20 < 0)
        {
          v21 = *(a2 + 8);
          if (!v21)
          {
            return v7 == 0;
          }
        }

        else
        {
          if (!*(a2 + 23))
          {
            return v7 == 0;
          }

          v21 = *(a2 + 23);
        }

        v22 = v21 - 1;
        if ((v20 & 0x80000000) != 0)
        {
          v23 = *a2;
          if (*(*a2 + v22) != 92)
          {
            return v7 == 0;
          }

          v20 = *(a2 + 8);
        }

        else
        {
          if (*(a2 + v22) != 92)
          {
            return v7 == 0;
          }

          v23 = a2;
        }

        *(v20 + v23 - 1) = 32;
        __p = 0;
        v49 = 0;
        v50 = 0;
        std::ios_base::getloc((a1 + *(*a1 - 24)));
        v24 = std::locale::use_facet(&v51, &std::ctype<char>::id);
        v25 = (v24->__vftable[2].~facet_0)(v24, 10);
        std::locale::~locale(&v51);
        v26 = sub_10000401C(a1, &__p, v25);
        v27 = *(v26 + *(*v26 - 24) + 32) & 5;
        if (v27)
        {
          v28 = *(a2 + 23);
          v29 = v28;
          v30 = a2 + v28;
          v31 = v29 >= 0 ? v30 : *a2 + *(a2 + 8);
          v32 = v29 >= 0 ? a2 : *a2;
          while (v31 != v32)
          {
            v34 = *--v31;
            v33 = v34;
            if (v34 < 0)
            {
              v35 = __maskrune(v33, 0x4000uLL);
            }

            else
            {
              v35 = _DefaultRuneLocale.__runetype[v33] & 0x4000;
            }

            if (!v35)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v36 = v50 >= 0 ? &__p : __p;
          v37 = v50 >= 0 ? HIBYTE(v50) : v49;
          std::string::append(a2, v36, v37);
          v38 = *(a2 + 23);
          v39 = v38;
          v40 = a2 + v38;
          v31 = v39 >= 0 ? v40 : *a2 + *(a2 + 8);
          v32 = v39 >= 0 ? a2 : *a2;
          while (v31 != v32)
          {
            v42 = *--v31;
            v41 = v42;
            if (v42 < 0)
            {
              v43 = __maskrune(v41, 0x4000uLL);
            }

            else
            {
              v43 = _DefaultRuneLocale.__runetype[v41] & 0x4000;
            }

            if (!v43)
            {
LABEL_58:
              v32 = v31 + 1;
              break;
            }
          }
        }

        v44 = *(a2 + 23);
        v45 = v44;
        v46 = a2 + v44;
        if (v45 >= 0)
        {
          v47 = a2;
        }

        else
        {
          v46 = *a2 + *(a2 + 8);
          v47 = *a2;
        }

        std::string::erase(a2, v32 - v47, v46 - v32);
        if (SHIBYTE(v50) < 0)
        {
          break;
        }

        if (v27)
        {
          return v7 == 0;
        }
      }

      operator delete(__p);
    }

    while (!v27);
  }

  return v7 == 0;
}

void sub_10000B68C(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_100002080(a1, a2);
  while (1)
  {
    v4 = a1[5];
    v5 = a1[6];
    if (!(v4 >= v5 ? (*(a1[2] + 56))(a1 + 2) : v5 - v4))
    {
      break;
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_100002080(a1, &__p);
    if (SHIBYTE(v13) < 0)
    {
      if (v12)
      {
        p_p = __p;
        goto LABEL_11;
      }

      v8 = 0;
LABEL_26:
      operator delete(__p);
      if (v8)
      {
        return;
      }
    }

    else
    {
      if (!HIBYTE(v13))
      {
        v8 = 0;
        goto LABEL_23;
      }

      p_p = &__p;
LABEL_11:
      if (*p_p == 35)
      {
        v8 = 3;
        if (v13 < 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        std::string::append(a2, " ");
        if (v13 >= 0)
        {
          v9 = &__p;
        }

        else
        {
          v9 = __p;
        }

        if (v13 >= 0)
        {
          v10 = HIBYTE(v13);
        }

        else
        {
          v10 = v12;
        }

        std::string::append(a2, v9, v10);
        v8 = 0;
        if (v13 < 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      if (v8)
      {
        return;
      }
    }
  }
}

void sub_10000B7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000B804(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

void *ObjConverter::getSerializeMaterial(ObjConverter *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v3 = *(this + 27);
    if (a2 < ((*(this + 28) - v3) >> 3))
    {
      return (v3 + 8 * a2);
    }
  }

  v4 = (this + 240);
  if (!*(this + 30))
  {
    fileFormatUtils::Asset::getMaterialsPath((this + 248), v14);
    v5 = operator new(0x40uLL);
    if ((v15 & 0x80u) == 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = v14[1];
    }

    v7 = __p;
    sub_1000051AC(__p, v6 + 8);
    if (v13 < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if ((v15 & 0x80u) == 0)
      {
        v8 = v14;
      }

      else
      {
        v8 = v14[0];
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "/default");
    *v5 = off_1000145D0;
    v5[2] = 6;
    if (SHIBYTE(v13) < 0)
    {
      sub_100003EAC(v5 + 16, __p[0], __p[1]);
      v9 = SHIBYTE(v13);
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *(v5 + 5) = 0;
      *v5 = &off_100014730;
      *v4 = v5;
      if (v9 < 0)
      {
        operator delete(__p[0]);
        v5 = *v4;
      }
    }

    else
    {
      *(v5 + 1) = *__p;
      *(v5 + 4) = v13;
      *(v5 + 5) = 0;
      *(v5 + 6) = 0;
      *(v5 + 7) = 0;
      *v5 = &off_100014730;
      *v4 = v5;
    }

    v10 = *(this + 31);
    __p[0] = v5;
    sub_100008440(v10 + 40, __p);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }
  }

  return v4;
}

void sub_10000BAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void ObjConverter::createMesh(ObjConverter *a1, const void **a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v5 = (a3 + 15);
  if (a3[16] != a3[15])
  {
    v11 = operator new(0x128uLL);
    sub_1000035A4(a2, 47, &v85);
    fileFormatUtils::makeValidIdentifier(a4, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v85, p_p, size);
    v16 = v14->__r_.__value_.__r.__words[0];
    v15 = v14->__r_.__value_.__l.__size_;
    LODWORD(v82) = v14->__r_.__value_.__r.__words[2];
    *(&v82 + 3) = *(&v14->__r_.__value_.__r.__words[2] + 3);
    v17 = SHIBYTE(v14->__r_.__value_.__r.__words[2]);
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    *v11 = off_1000145D0;
    *(v11 + 2) = 4;
    if (v17 < 0)
    {
      sub_100003EAC(v11 + 16, v16, v15);
    }

    else
    {
      *(v11 + 2) = v16;
      *(v11 + 3) = v15;
      *(v11 + 8) = v82;
      *(v11 + 35) = *(&v82 + 3);
      v11[39] = v17;
    }

    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
    *v11 = &off_1000146A0;
    *(v11 + 4) = 0u;
    *(v11 + 35) = 0;
    *(v11 + 36) = 0;
    *(v11 + 34) = 0;
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 7) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 252) = 0u;
    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v85.__r_.__value_.__r.__words[0] = v11;
    sub_100008440(a5 + 40, &v85);
    if (v11 + 64 != v5)
    {
      sub_100005404(v11 + 8, a3[15], a3[16], (a3[16] - a3[15]) >> 2);
    }

    v18 = a3[4];
    v19 = a3[5];
    v20 = v18 + 1;
    v21 = *v18;
    if (v18 != v19 && v20 != v19)
    {
      v22 = *v18;
      v23 = v18 + 1;
      v24 = a3[4];
      v25 = v18 + 1;
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (v27 < v22)
        {
          v22 = v26;
          v24 = v23;
        }

        v23 = v25;
      }

      while (v25 != v19);
      v28 = *v24;
      v29 = v18 + 1;
      do
      {
        v31 = *v29++;
        v30 = v31;
        v32 = v21 < v31;
        if (v21 <= v31)
        {
          v21 = v30;
        }

        if (v32)
        {
          v18 = v20;
        }

        v20 = v29;
      }

      while (v29 != v19);
      v21 = v28;
    }

    v33 = *v18;
    memset(&v85, 0, sizeof(v85));
    sub_10000C414(&v85, a1 + 1, v21, v33 + 1);
    sub_100005228(v11 + 20, v85.__r_.__value_.__l.__data_, v85.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v85.__r_.__value_.__l.__size_ - v85.__r_.__value_.__r.__words[0]) >> 2));
    if (v21)
    {
      memset(&__p, 0, sizeof(__p));
      sub_10000C4AC(&__p.__r_.__value_.__l.__data_, a3 + 4, -v21);
      sub_100005404(v11 + 11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2);
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else if (v11 + 88 != (a3 + 4))
    {
      sub_100005404(v11 + 11, a3[4], a3[5], (a3[5] - a3[4]) >> 2);
    }

    if (*(a1 + 5) - *(a1 + 4) == *(a1 + 2) - *(a1 + 1))
    {
      memset(&__p, 0, sizeof(__p));
      sub_10000C414(&__p, a1 + 4, v21, v33 + 1);
      *(v11 + 65) = 2;
      sub_100005228(v11 + 26, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2));
      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v34 = a3[7];
    v35 = a3[8];
    v36 = v34 + 1;
    v37 = *v34;
    if (v34 != v35 && v36 != v35)
    {
      v38 = *v34;
      v39 = v34 + 1;
      v40 = a3[7];
      v41 = v34 + 1;
      do
      {
        v43 = *v41++;
        v42 = v43;
        if (v43 < v38)
        {
          v38 = v42;
          v40 = v39;
        }

        v39 = v41;
      }

      while (v41 != v35);
      v44 = *v40;
      v45 = v34 + 1;
      do
      {
        v47 = *v45++;
        v46 = v47;
        v48 = v37 < v47;
        if (v37 <= v47)
        {
          v37 = v46;
        }

        if (v48)
        {
          v34 = v36;
        }

        v36 = v45;
      }

      while (v45 != v35);
      v37 = v44;
    }

    if ((v37 & 0x80000000) == 0)
    {
      v49 = *v34;
      memset(&__p, 0, sizeof(__p));
      sub_10000E6F4(&__p, 0);
      if ((*(a1 + 8) - *(a1 + 7)) >> 3 >= (v49 + 1))
      {
        v50 = v49 + 1;
      }

      else
      {
        v50 = (*(a1 + 8) - *(a1 + 7)) >> 3;
      }

      sub_10000E724(&__p, v50 - v37);
      if (v50 <= v37)
      {
        v51 = __p.__r_.__value_.__l.__size_;
      }

      else
      {
        v51 = __p.__r_.__value_.__l.__size_;
        v52 = 8 * v37;
        v53 = v37;
        do
        {
          v54 = *(a1 + 7);
          if (v51 >= __p.__r_.__value_.__r.__words[2])
          {
            v51 = sub_10000E274(&__p, (v52 + v54));
          }

          else
          {
            *v51++ = *(v52 + v54);
          }

          __p.__r_.__value_.__l.__size_ = v51;
          v52 += 8;
          ++v53;
        }

        while (v50 > v53);
      }

      sub_100006F08(v11 + 29, __p.__r_.__value_.__l.__data_, v51, (v51 - __p.__r_.__value_.__r.__words[0]) >> 3);
      if (*(a3 + 80) == 1)
      {
        *(v11 + 66) = 3;
        if (v37)
        {
          v82 = 0uLL;
          v83 = 0;
          sub_10000C4AC(&v82, a3 + 7, -v37);
          sub_100005404(v11 + 14, v82, *(&v82 + 1), (*(&v82 + 1) - v82) >> 2);
          if (v82)
          {
            *(&v82 + 1) = v82;
            operator delete(v82);
          }
        }

        else if (v11 + 112 != (a3 + 7))
        {
          sub_100005404(v11 + 14, a3[7], a3[8], (a3[8] - a3[7]) >> 2);
        }
      }

      else
      {
        *(v11 + 66) = 2;
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v55 = a3[11];
    v56 = a3[12];
    v57 = v55 + 1;
    v58 = *v55;
    if (v55 != v56 && v57 != v56)
    {
      v60 = *v55;
      v61 = v55 + 1;
      v62 = a3[11];
      v63 = v55 + 1;
      do
      {
        v65 = *v63++;
        v64 = v65;
        if (v65 < v60)
        {
          v60 = v64;
          v62 = v61;
        }

        v61 = v63;
      }

      while (v63 != v56);
      v66 = *v62;
      v67 = v55 + 1;
      do
      {
        v69 = *v67++;
        v68 = v69;
        v70 = v58 < v69;
        if (v58 <= v69)
        {
          v58 = v68;
        }

        if (v70)
        {
          v55 = v57;
        }

        v57 = v67;
      }

      while (v67 != v56);
      v58 = v66;
    }

    if ((v58 & 0x80000000) == 0)
    {
      v71 = *v55;
      memset(&__p, 0, sizeof(__p));
      sub_10000C414(&__p, a1 + 10, v58, v71 + 1);
      sub_100005228(v11 + 23, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 2));
      if (*(a3 + 112) == 1)
      {
        *(v11 + 64) = 3;
        if (v58)
        {
          v82 = 0uLL;
          v83 = 0;
          sub_10000C4AC(&v82, a3 + 11, -v58);
          sub_100005404(v11 + 17, v82, *(&v82 + 1), (*(&v82 + 1) - v82) >> 2);
          if (v82)
          {
            *(&v82 + 1) = v82;
            operator delete(v82);
          }
        }

        else if (v11 + 136 != (a3 + 11))
        {
          sub_100005404(v11 + 17, a3[11], a3[12], (a3[12] - a3[11]) >> 2);
        }
      }

      else
      {
        *(v11 + 64) = 2;
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v72 = *a3;
    v73 = a3[1];
    if (v73 - *a3 == 8)
    {
      v74 = *ObjConverter::getSerializeMaterial(a1, *(*v72 + 24));
      if (v74)
      {
        std::string::operator=((v11 + 272), (v74 + 16));
      }
    }

    else
    {
      for (; v72 != v73; ++v72)
      {
        v75 = *v72;
        if (*(*v72 + 8) != **v72)
        {
          v76 = *(v75 + 24);
          if ((v76 & 0x80000000) != 0 || v76 >= (*(a1 + 28) - *(a1 + 27)) >> 3)
          {
            sub_100005C7C(&__p, "defaultMaterial");
          }

          else
          {
            fileFormatUtils::makeValidIdentifier((*(a1 + 17) + 24 * v76), &__p);
          }

          v77 = operator new(0x88uLL);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v78 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v78 = __p.__r_.__value_.__l.__size_;
          }

          sub_1000051AC(&v82, v78 + 6);
          if (v83 >= 0)
          {
            v79 = &v82;
          }

          else
          {
            v79 = v82;
          }

          if (v78)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v80 = &__p;
            }

            else
            {
              v80 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v79, v80, v78);
          }

          strcpy(v79 + v78, "Subset");
          sub_100006B14(v77, &v82);
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82);
          }

          if (v77 + 64 != v75)
          {
            sub_100005404(v77 + 8, *v75, *(v75 + 8), (*(v75 + 8) - *v75) >> 2);
          }

          SerializeMaterial = ObjConverter::getSerializeMaterial(a1, v76);
          std::string::operator=((v77 + 112), (*SerializeMaterial + 16));
          serialize::Prim::addChild(v11, v77);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    if (v85.__r_.__value_.__r.__words[0])
    {
      v85.__r_.__value_.__l.__size_ = v85.__r_.__value_.__r.__words[0];
      operator delete(v85.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10000C320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  operator delete(v27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  operator delete(v26);
  _Unwind_Resume(a1);
}

void sub_10000C414(uint64_t *a1, void *a2, int a3, int a4)
{
  sub_10000E4DC(a1, 0);
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) < a4)
  {
    a4 = -1431655765 * ((a2[1] - *a2) >> 2);
  }

  sub_100002F24(a1, a4 - a3);
  v8 = __OFSUB__(a4, a3);
  v9 = a4 - a3;
  if (!((v9 < 0) ^ v8 | (v9 == 0)))
  {
    v10 = 12 * a3;
    do
    {
      sub_10000304C(a1, v10 + *a2);
      v10 += 12;
      --v9;
    }

    while (v9);
  }
}

void sub_10000C4AC(const void **a1, int **a2, int a3)
{
  sub_10000D370(a1, 0);
  sub_10000309C(a1, a2[1] - *a2);
  v7 = *a2;
  v6 = a2[1];
  while (v7 != v6)
  {
    v8 = *v7++;
    v9 = v8 + a3;
    sub_10000313C(a1, &v9);
  }
}

uint64_t ObjConverter::makeStage(ObjConverter *this)
{
  inited = fileFormatUtils::Asset::initStage((this + 248));
  fileFormatUtils::Asset::getMaterialsPath((this + 248), &v31);
  v3 = *(this + 20);
  for (i = *(this + 21); v3 != i; v3 = (v3 + 48))
  {
    SerializeMaterial = fileFormatUtils::Material::makeSerializeMaterial(v3, (this + 248));
    v6 = SerializeMaterial;
    v8 = *(this + 28);
    v7 = *(this + 29);
    if (v8 >= v7)
    {
      v10 = *(this + 27);
      v11 = (v8 - v10) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_10000455C();
      }

      v12 = v7 - v10;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = sub_10000575C(this + 216, v14);
      }

      else
      {
        v15 = 0;
      }

      v17 = &v15[8 * v14];
      v16 = &v15[8 * v11];
      *v16 = v6;
      v9 = v16 + 1;
      v18 = *(this + 27);
      v19 = *(this + 28) - v18;
      v20 = v16 - v19;
      memcpy(v16 - v19, v18, v19);
      v21 = *(this + 27);
      *(this + 27) = v20;
      *(this + 28) = v9;
      *(this + 29) = v17;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v8 = SerializeMaterial;
      v9 = v8 + 1;
    }

    *(this + 28) = v9;
  }

  fileFormatUtils::Asset::getGeomPath((this + 248), v29);
  v22 = *(this + 13);
  if (v22 != (this + 112))
  {
    do
    {
      if (*(v22 + 55) < 0)
      {
        sub_100003EAC(__p, *(v22 + 4), *(v22 + 5));
      }

      else
      {
        *__p = *(v22 + 2);
        v28 = *(v22 + 6);
      }

      ObjConverter::createMesh(this, v29, *(v22 + 7), __p, inited);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      v23 = *(v22 + 1);
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = *(v22 + 2);
          v25 = *v24 == v22;
          v22 = v24;
        }

        while (!v25);
      }

      v22 = v24;
    }

    while (v24 != (this + 112));
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  return inited;
}

void sub_10000C71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C770(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  while (v2 != v3)
  {
    v4 = *v2;
    if (*v2)
    {
      v5 = *v4;
      if (*v4)
      {
        v4[1] = v5;
        operator delete(v5);
      }

      operator delete(v4);
    }

    ++v2;
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    *(a1 + 96) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    *(a1 + 64) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    *(a1 + 40) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_10000C820(uint64_t a1, __int128 *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_100003EAC((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v3;
  }

  return a1;
}

void sub_10000C898(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10000C898(a1, *a2);
    sub_10000C898(a1, *(a2 + 1));
    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t sub_10000C92C(uint64_t a1, int a2)
{
  *(a1 + 32) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  ObjConverter::Group::setMaterial(a1, a2);
  return a1;
}

void sub_10000C990(_Unwind_Exception *a1)
{
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 128) = v7;
    operator delete(v7);
  }

  sub_1000117E8(v3, (v1 + 56), v2, v1);
  _Unwind_Resume(a1);
}

void sub_10000C9C4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10000CD1C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 1);
      v3 -= 3;
      if (v8 < 0)
      {
        operator delete(*v3);
      }
    }

    a1[1] = v7;
  }
}

void (__cdecl ***sub_10000CA64(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this), const std::string *a2, int a3))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v6 = a1 + 2;
  *a1 = v8;
  *(*(v8 - 3) + a1) = v7;
  a1[1] = 0;
  v9 = (*(*a1 - 3) + a1);
  std::ios_base::init(v9, a1 + 3);
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  a1[2] = v11;
  *(*(v11 - 3) + v6) = v10;
  *a1 = v12;
  sub_10000CF64((a1 + 3), a2, a3);
  return a1;
}