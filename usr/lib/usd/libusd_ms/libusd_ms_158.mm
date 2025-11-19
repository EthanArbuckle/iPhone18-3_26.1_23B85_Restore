void sub_29AE11964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, unint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, char *a38)
{
  __cxa_guard_abort(&qword_2A174EEF8);
  sub_29ABF3348(&a37, a38);
  sub_29A5B0668(a15, a35);
  if ((a33 & 7) != 0)
  {
    atomic_fetch_add_explicit((a33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    *(v38 - 152) = v40;
    operator delete(v40);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((v38 - 132));
  sub_29A1DE3A4((v38 - 136));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_ApplyMaterialXFilter@<X0>(pxrInternal__aapl__pxrReserved__::SdrRegistry *a1@<X0>, _DWORD *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X3>, pxrInternal__aapl__pxrReserved__::HdStResourceRegistry *a5@<X5>, uint64_t *a6@<X8>)
{
  v173[2] = *MEMORY[0x29EDCA608];
  Instance = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(a1);
  v10 = Instance;
  v11 = atomic_load(&qword_2A174EEC0);
  if (!v11)
  {
    v120 = Instance;
    v121 = sub_29AE175EC();
    v10 = v120;
    v11 = v121;
  }

  v125 = a3;
  result = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v10, a3, v11);
  if (result)
  {
    memset(v142, 0, sizeof(v142));
    v143 = 1065353216;
    v137 = v138;
    v138[0] = 0;
    v139[0] = 0;
    v139[1] = 0;
    v138[1] = 0;
    v138[2] = v139;
    v140 = 0u;
    v141 = 0u;
    v13 = pxrInternal__aapl__pxrReserved__::_BuildEquivalentMaterialNetwork(a1, &v137, v142);
    v151 = a4;
    v14 = sub_29A55CB38(v142, a4, &unk_29B4D6118, &v151);
    sub_29A1E21F4(&v135, v14 + 6);
    v15 = sub_29A1E2240(&v136, v14 + 7);
    *a6 = 0;
    a6[1] = 0;
    v16 = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetInstance(v15);
    v17 = atomic_load(&qword_2A174EEC0);
    if (!v17)
    {
      v17 = sub_29AE175EC();
    }

    ShaderNodeByIdentifierAndType = pxrInternal__aapl__pxrReserved__::SdrRegistry::GetShaderNodeByIdentifierAndType(v16, a3, v17);
    v19 = atomic_load(&qword_2A174EEC0);
    if (!v19)
    {
      v19 = sub_29AE175EC();
    }

    v20 = *(v19 + 56) ^ ShaderNodeByIdentifierAndType[8];
    v21 = atomic_load(&qword_2A174EEC0);
    if (v20 <= 7)
    {
      if (!v21)
      {
        v21 = sub_29AE175EC();
      }

      LODWORD(v151) = 0;
      if (sub_29AE16540(a3, (v21 + 72), &v151))
      {
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v22)
        {
          v22 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v23 = *(v22 + 1);
        goto LABEL_60;
      }

      v36 = atomic_load(&qword_2A174EEC0);
      if (!v36)
      {
        v36 = sub_29AE175EC();
      }

      LODWORD(v151) = 1065353216;
      v37 = sub_29AE16540(a3, (v36 + 64), &v151);
      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (v37)
      {
        if (!v22)
        {
LABEL_42:
          v22 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

LABEL_43:
        v23 = *(v22 + 4);
        goto LABEL_60;
      }

      if (!v22)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (!v21)
    {
      v21 = sub_29AE175EC();
    }

    v24 = *(v21 + 80) ^ ShaderNodeByIdentifierAndType[8];
    v25 = atomic_load(&qword_2A174EEC0);
    if (v24 <= 7)
    {
      if (!v25)
      {
        v25 = sub_29AE175EC();
      }

      LODWORD(v146[0]) = 0;
      if (sub_29AE16540(a3, (v25 + 88), v146))
      {
        goto LABEL_25;
      }

      v26 = atomic_load(&qword_2A174EEC0);
      if (!v26)
      {
        v26 = sub_29AE175EC();
      }

      __asm { FMOV            V0.2S, #1.0 }

      v151 = _D0;
      v152 = 1065353216;
      if (sub_29AE16614(a3, (v26 + 64), &v151))
      {
LABEL_25:
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v22)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v22)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    if (!v25)
    {
      v25 = sub_29AE175EC();
    }

    v32 = *(v25 + 96) ^ ShaderNodeByIdentifierAndType[8];
    v33 = atomic_load(&qword_2A174EEC0);
    if (v32 <= 7)
    {
      if (!v33)
      {
        v33 = sub_29AE175EC();
      }

      LODWORD(v146[0]) = 0;
      if (sub_29AE16540(a3, v33 + 13, v146))
      {
        goto LABEL_36;
      }

      v34 = atomic_load(&qword_2A174EEC0);
      if (!v34)
      {
        v34 = sub_29AE175EC();
      }

      __asm { FMOV            V0.2S, #1.0 }

      v151 = _D0;
      v152 = 1065353216;
      if (sub_29AE16614(a3, (v34 + 112), &v151))
      {
LABEL_36:
        v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v22)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v22)
      {
LABEL_58:
        v22 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }

LABEL_59:
      v23 = *v22;
LABEL_60:
      if ((v23 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
      }

      goto LABEL_62;
    }

    if (!v33)
    {
      v33 = sub_29AE175EC();
    }

    if ((v33[15] ^ ShaderNodeByIdentifierAndType[8]) <= 7)
    {
      v38 = atomic_load(&qword_2A174EEC0);
      if (!v38)
      {
        v38 = sub_29AE175EC();
      }

      if ((a3 + 40) == sub_29A31B8F0(a3 + 32, (v38 + 128)))
      {
        v95 = atomic_load(&qword_2A174EEC0);
        if (!v95)
        {
          v95 = sub_29AE175EC();
        }

        v96 = sub_29A31B8F0(a3 + 8, (v95 + 128));
        v97 = v96;
        if ((a3 + 16) == v96 || (v98 = (v96 + 40), !sub_29A293A9C((v96 + 40))))
        {
          v39 = 0;
        }

        else
        {
          v99 = *(v97 + 48);
          if ((v99 & 4) != 0)
          {
            v98 = (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(v97 + 40);
          }

          if (*v98 >= 3)
          {
            v39 = 0;
          }

          else
          {
            v39 = *v98;
          }
        }
      }

      else
      {
        v39 = 2;
      }

      v100 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v100)
      {
        v100 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }

      v101 = *v100;
      v151 = v101;
      if ((v101 & 7) != 0 && (atomic_fetch_add_explicit((v101 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v151 = (v151 & 0xFFFFFFFFFFFFFFF8);
      }

      if (v39 == 2)
      {
        v106 = atomic_load(&qword_2A174EEC0);
        if (!v106)
        {
          v106 = sub_29AE175EC();
        }

        LODWORD(v146[0]) = 1065353216;
        if (!sub_29AE16540(a3, (v106 + 144), v146))
        {
          goto LABEL_185;
        }

        v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v107)
        {
          v107 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v105 = (v107 + 32);
      }

      else
      {
        if (v39 != 1)
        {
          goto LABEL_185;
        }

        v102 = atomic_load(&qword_2A174EEC0);
        if (!v102)
        {
          v102 = sub_29AE175EC();
        }

        LODWORD(v146[0]) = 1065353216;
        if (!sub_29AE16540(a3, (v102 + 136), v146))
        {
          goto LABEL_185;
        }

        v103 = atomic_load(&qword_2A174EEC0);
        if (!v103)
        {
          v103 = sub_29AE175EC();
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 1065353216;
        if (!sub_29AE16540(a3, (v103 + 144), &__str))
        {
          goto LABEL_185;
        }

        v104 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v104)
        {
          v104 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v105 = (v104 + 8);
      }

      sub_29A166F2C(&v151, v105);
LABEL_185:
      v108 = atomic_load(&qword_2A174EEC0);
      if (!v108)
      {
        v108 = sub_29AE175EC();
      }

      LODWORD(v146[0]) = 0;
      v109 = sub_29AE16540(a3, (v108 + 88), v146);
      if (v109)
      {
        v109 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v109)
        {
          v109 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v110 = *(v109 + 4);
      }

      else
      {
        v110 = v151;
      }

      if ((v110 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v109);
      }

      if ((v151 & 7) != 0)
      {
        atomic_fetch_add_explicit((v151 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_62;
    }

    v40 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v33);
    v41 = *v40;
    if ((ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((ShaderNodeByIdentifierAndType[2] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v40);
    }

    sub_29AAC0094(v41, EmptyString, &__str);
    sub_29B1EAB28(__str.__r_.__value_.__l.__data_, v146);
    if ((v146[1] - v146[0]) != 16)
    {
      goto LABEL_200;
    }

    v92 = (*(**(v146[1] - 2) + 64))(*(v146[1] - 2));
    v93 = strlen(off_2A14FDEF0[0]);
    v94 = *(v92 + 23);
    if (v94 < 0)
    {
      if (v93 != v92[1])
      {
        goto LABEL_200;
      }

      if (v93 == -1)
      {
        sub_29A0F26CC();
      }

      v92 = *v92;
    }

    else if (v93 != v94)
    {
LABEL_200:
      v111 = (*(**(v146[1] - 2) + 64))(*(v146[1] - 2));
      sub_29AE1605C(v111, &v151);
      if (v155 == 4 && v154 - 1 <= 1)
      {
        v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v112)
        {
          v112 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v113 = *(v112 + 4);
      }

      else
      {
        v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v112)
        {
          v112 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

        v113 = *v112;
      }

      if ((v113 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v112);
      }

      sub_29A0EB570(&v157);
      if (v153 < 0)
      {
        operator delete(v151);
      }

LABEL_212:
      v151 = v146;
      sub_29A0176E4(&v151);
      if (__str.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__str.__r_.__value_.__l.__size_);
      }

LABEL_62:
      pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v134);
      Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a5);
      v124 = *((*(*Hgi + 200))(Hgi) + 48);
      v44 = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(a5);
      v45 = *(*(*v44 + 192))(v44);
      v133 = v45;
      if ((v45 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v133 = v45 & 0xFFFFFFFFFFFFFFF8;
      }

      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterMaterialXShader(a5, bswap64(0x9E3779B97F4A7C55 * ((v134 & 0xFFFFFFFFFFFFFFF8) + (((v134 & 0xFFFFFFFFFFFFFFF8) + v13 + ((v134 & 0xFFFFFFFFFFFFFFF8) + v13) * ((v134 & 0xFFFFFFFFFFFFFFF8) + v13)) >> 1))), v130);
      if (v132 == 1)
      {
        v123 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v46);
        v122 = pxrInternal__aapl__pxrReserved__::HdMtlxSearchPaths(v123);
        sub_29AE17204(&v151);
        v146[0] = &v146[1];
        v146[1] = 0;
        v148[0] = 0;
        v148[1] = 0;
        v147[0] = 0;
        v147[1] = v148;
        v150[0] = 0;
        v150[1] = 0;
        v149 = v150;
        pxrInternal__aapl__pxrReserved__::HdMtlxCreateMtlxDocumentFromHdNetwork(&v137, &v135, a2, v123, v146, &v144);
        v47 = v147[1];
        if (v147[1] != v148)
        {
          do
          {
            Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v47 + 28));
            v49 = sub_29A01BCCC(v146, Name);
            if (&v146[1] != v49)
            {
              v50 = *(v49 + 56);
              v51 = (v49 + 64);
              if (v50 != (v49 + 64))
              {
                do
                {
                  v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((v47 + 28));
                  v53 = v52;
                  if (*(v52 + 23) >= 0)
                  {
                    v54 = *(v52 + 23);
                  }

                  else
                  {
                    v54 = v52[1];
                  }

                  sub_29A022DE0(&v166, v54 + 1);
                  if ((v166.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v55 = &v166;
                  }

                  else
                  {
                    v55 = v166.__r_.__value_.__r.__words[0];
                  }

                  if (v54)
                  {
                    if (v53[23] >= 0)
                    {
                      v56 = v53;
                    }

                    else
                    {
                      v56 = *v53;
                    }

                    memmove(v55, v56, v54);
                  }

                  *(&v55->__r_.__value_.__l.__data_ + v54) = 95;
                  v57 = *(v50 + 55);
                  if (v57 >= 0)
                  {
                    v58 = (v50 + 4);
                  }

                  else
                  {
                    v58 = v50[4];
                  }

                  if (v57 >= 0)
                  {
                    v59 = *(v50 + 55);
                  }

                  else
                  {
                    v59 = v50[5];
                  }

                  v60 = std::string::append(&v166, v58, v59);
                  v61 = *&v60->__r_.__value_.__l.__data_;
                  v167.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
                  *&v167.__r_.__value_.__l.__data_ = v61;
                  v60->__r_.__value_.__l.__size_ = 0;
                  v60->__r_.__value_.__r.__words[2] = 0;
                  v60->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v166.__r_.__value_.__l.__data_);
                  }

                  sub_29AE17310(&v151, &v167.__r_.__value_.__l.__data_, &v167, &v167);
                  if (SHIBYTE(v167.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v167.__r_.__value_.__l.__data_);
                  }

                  v62 = v50[1];
                  if (v62)
                  {
                    do
                    {
                      v63 = v62;
                      v62 = *v62;
                    }

                    while (v62);
                  }

                  else
                  {
                    do
                    {
                      v63 = v50[2];
                      _ZF = *v63 == v50;
                      v50 = v63;
                    }

                    while (!_ZF);
                  }

                  v50 = v63;
                }

                while (v63 != v51);
              }
            }

            v64 = v47[1];
            if (v64)
            {
              do
              {
                v65 = v64;
                v64 = *v64;
              }

              while (v64);
            }

            else
            {
              do
              {
                v65 = v47[2];
                _ZF = *v65 == v47;
                v47 = v65;
              }

              while (!_ZF);
            }

            v47 = v65;
          }

          while (v65 != v148);
        }

        v66 = atomic_load(&qword_2A174EEC0);
        if (!v66)
        {
          v66 = sub_29AE175EC();
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::ReplaceName(&v135, (v66 + 176), &v163);
        v67 = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v163);
        v167.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::SdfPath::GetName(&v163);
        v68 = sub_29B1E4F5C(&v151, v167.__r_.__value_.__l.__data_, &unk_29B4D6118, &v167);
        v69 = std::string::operator=((v68 + 5), v67);
        v70 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v69);
        v71 = *v70;
        if ((*v125 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v72 = ((*v125 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v72 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v70);
        }

        sub_29AAC0094(v71, v72, &__str);
        if (__str.__r_.__value_.__r.__words[0])
        {
          sub_29B1EA6E8(__str.__r_.__value_.__l.__data_, &v167);
          size = v167.__r_.__value_.__l.__size_;
          for (i = v167.__r_.__value_.__r.__words[0]; i != size; i += 16)
          {
            v78 = (*(**i + 64))();
            v79 = atomic_load(&qword_2A174EEC0);
            if (!v79)
            {
              v79 = sub_29AE175EC();
            }

            if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v79 + 48), v78))
            {
              v80 = (*i + 48);
              v165 = v80;
              v81 = sub_29B1E4F5C(&v151, v80, &unk_29B4D6118, &v165);
              std::string::operator=((v81 + 5), v80);
            }
          }

          v166.__r_.__value_.__r.__words[0] = &v167;
          sub_29A0176E4(&v166);
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          sub_29A014BEC(__str.__r_.__value_.__l.__size_);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v164);
        v82 = sub_29A1DE3A4(&v163);
        if (v149 != v150)
        {
          sub_29AE15704();
        }

        if ((v134 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v83 = ((v134 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v83 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v82);
        }

        std::string::operator=(&__p, v83);
        v162 = (v124 & 0x80) != 0;
        pxrInternal__aapl__pxrReserved__::HdSt_GenMaterialXShader(&v144, v123, v122, &v151, &v133, &v129);
        if (v145)
        {
          sub_29A014BEC(v145);
        }

        sub_29A1E2AEC(&v149, v150[0]);
        sub_29A1E2AEC(&v147[1], v148[0]);
        sub_29AAA3F44(v146, v146[1]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v160 < 0)
        {
          operator delete(v159);
        }

        sub_29A89AD9C(&v158);
        sub_29A89AD9C(&v156);
        sub_29A89AD9C(&v151);
        v84 = v129;
        v129 = 0uLL;
        v85 = a6[1];
        *a6 = v84;
        if (v85)
        {
          sub_29A014BEC(v85);
          if (*(&v129 + 1))
          {
            sub_29A014BEC(*(&v129 + 1));
          }
        }

        sub_29AE13704(v130, a6);
      }

      else
      {
        v74 = v130[1];
        v73 = v131;
        if (v131)
        {
          atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
        }

        v75 = a6[1];
        *a6 = v74;
        a6[1] = v73;
        if (v75)
        {
          sub_29A014BEC(v75);
        }
      }

      __str.__r_.__value_.__r.__words[2] = 0;
      v170 = 0;
      __str.__r_.__value_.__r.__words[0] = 0;
      __str.__r_.__value_.__l.__size_ = &__str.__r_.__value_.__r.__words[2];
      v172[0] = 0;
      v172[1] = 0;
      v171 = v172;
      v86 = atomic_load(&qword_2A174EEC0);
      if (!v86)
      {
        v86 = sub_29AE175EC();
      }

      sub_29A166F2C(&__str, (v86 + 184));
      pxrInternal__aapl__pxrReserved__::HdStPackageFallbackDomeLightTexture(&v129);
      if ((v129 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v88 = ((v129 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v88 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v87);
      }

      pxrInternal__aapl__pxrReserved__::HdStPackageFallbackDomeLightTexture(&v168);
      if ((v168 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v90 = ((v168 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v90 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v89);
      }

      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(v146, v88, v90);
      v173[1] = &off_2A2047B38;
      sub_29A215A28(v173, v146);
      v91 = atomic_load(&qword_2A174EEC0);
      if (!v91)
      {
        v91 = sub_29AE175EC();
      }

      v144 = v91 + 192;
      sub_29A94BD04();
    }

    if (memcmp(v92, off_2A14FDEF0[0], v93))
    {
      goto LABEL_200;
    }

    v114 = atomic_load(&qword_2A174EEC0);
    if (!v114)
    {
      v114 = sub_29AE175EC();
    }

    if ((*(v114 + 152) ^ ShaderNodeByIdentifierAndType[8]) > 7)
    {
      v118 = sub_29AE163B0(a1, a3);
      v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (v118)
      {
        if (!v117)
        {
LABEL_227:
          v117 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        }

LABEL_228:
        v119 = *(v117 + 4);
        goto LABEL_234;
      }

      if (!v117)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v115 = atomic_load(&qword_2A174EEC0);
      if (!v115)
      {
        v115 = sub_29AE175EC();
      }

      if ((*(v115 + 160) ^ *a3) < 8)
      {
        goto LABEL_223;
      }

      v116 = atomic_load(&qword_2A174EEC0);
      if (!v116)
      {
        v116 = sub_29AE175EC();
      }

      if ((*(v116 + 168) ^ *a3) <= 7)
      {
LABEL_223:
        v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
        if (!v117)
        {
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      if (!v117)
      {
LABEL_232:
        v117 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
      }
    }

    v119 = *v117;
LABEL_234:
    if ((v119 & 0xFFFFFFFFFFFFFFF8) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v117);
    }

    goto LABEL_212;
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

void sub_29AE13330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (*(v44 - 153) < 0)
  {
    operator delete(*(v44 - 176));
  }

  sub_29ADCA62C(&a23);
  if ((a30 & 7) != 0)
  {
    atomic_fetch_add_explicit((a30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a31 & 7) != 0)
  {
    atomic_fetch_add_explicit((a31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v46 = *(a19 + 8);
  if (v46)
  {
    sub_29A014BEC(v46);
  }

  sub_29A1DCEA8(&a32);
  sub_29AC43430(&a34);
  sub_29A55B678(&a44);
  _Unwind_Resume(a1);
}

void sub_29AE135E4()
{
  *(v0 - 232) = v0 - 208;
  sub_29A0176E4((v0 - 232));
  JUMPOUT(0x29AE135FCLL);
}

void sub_29AE13634(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char *a51, const char *a52, uint64_t a53, const char *a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (*(v61 - 209) < 0)
  {
    JUMPOUT(0x29AE13648);
  }

  if (a50)
  {
    sub_29A014BEC();
  }

  sub_29AE17158(&a51);
  sub_29AE171A0(&a61);
  if (a2 == 2)
  {
    v64 = __cxa_begin_catch(a1);
    a51 = "hdSt/materialXFilter.cpp";
    a52 = "HdSt_ApplyMaterialXFilter";
    a53 = 1484;
    a54 = "mx::ShaderPtr pxrInternal__aapl__pxrReserved__::HdSt_ApplyMaterialXFilter(HdMaterialNetwork2 *, const SdfPath &, const HdMaterialNode2 &, const SdfPath &, HdSt_MaterialParamVector *, HdStResourceRegistry *)";
    a55 = 0;
    (*(*v64 + 16))(v64);
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&a51, 1, "Unable to create the Glslfx Shader.\nMxException: %s");
    __cxa_end_catch();
    JUMPOUT(0x29AE12734);
  }

  JUMPOUT(0x29AE1351CLL);
}

void sub_29AE13704(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[5];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      v4 = a1[5];
    }

    v7 = sub_29AE18B3C(v4, a1);
    v8 = *(v7 + 8);
    *v7 = v6;
    *(v7 + 8) = v5;
    if (v8)
    {
      sub_29A014BEC(v8);
    }

    *(v7 + 16) = 0;
  }

  v10 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11)
  {

    sub_29A014BEC(v11);
  }
}

void sub_29AE137BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE137D4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x3E8uLL);
  result = sub_29AE13830(v2);
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void *sub_29AE13830(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20953C8;
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::HdStMaterialXShaderGenMsl(a1 + 3);
  return a1;
}

void sub_29AE138AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20953C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE13918(uint64_t a1)
{
  v1 = sub_29AE1454C(a1);

  operator delete(v1);
}

void sub_29AE13940(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[1];
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_29AE13B08((a1 + 2), (a2 + 2));
}

void sub_29AE13A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A0176E4(va);
  v4 = *(v2 + 360);
  if (v4)
  {
    *(v2 + 368) = v4;
    operator delete(v4);
  }

  sub_29AE14178(v2 + 320);
  sub_29AE14178(v2 + 280);
  sub_29AE14060(v2 + 240);
  sub_29AD97000(v2 + 200);
  sub_29A019EE8(v2 + 176, *(v2 + 184));
  sub_29AAC9380(va);
  sub_29AE144D4(v2 + 16);
  v5 = *(v2 + 8);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  _Unwind_Resume(a1);
}

void sub_29AE13B08(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A20C9058;
  v4 = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 8) = v4;
  if (*(a2 + 39) < 0)
  {
    sub_29A008D14((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_29A008D14((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  v7 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
}

void sub_29AE13BF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE13C28(uint64_t a1)
{
  v1 = sub_29AE144D4(a1);

  operator delete(v1);
}

void *sub_29AE13C50(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A15A71C(result, a4);
    result = sub_29AE13CD8(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE13CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29AAC9380(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE13CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  v7 = 0;
  if (a2 != a3)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  v7 = 1;
  sub_29AD96618(v6);
  return a4;
}

uint64_t sub_29AE13DA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24C6C0(a1, i + 2, i + 1);
  }

  return a1;
}

uint64_t sub_29AE13E18(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24C984(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_29AE13E90(void *__dst, __int128 *a2)
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

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_29AE13F18(__dst + 3, *(a2 + 3), *(a2 + 4), (*(a2 + 4) - *(a2 + 3)) >> 4);
  return __dst;
}

void sub_29AE13EFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE13F18(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE13FA0(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE13F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE13FA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE14028(v7);
  return v4;
}

uint64_t sub_29AE14028(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29AE14060(uint64_t a1)
{
  sub_29A1E686C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_29AE1409C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24CC48(a1, i + 2, (i + 2));
  }

  return a1;
}

void sub_29AE14114(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29AE14178(uint64_t a1)
{
  sub_29AE141B4(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE141B4(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_29AE14200(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B24CF5C(a1, i + 2, (i + 2));
  }

  return a1;
}

void *sub_29AE14278(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29AE142D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AE142F4(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29AE1437C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AE1435C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29AE1437C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29AE14404(v7);
  return v4;
}

uint64_t sub_29AE14404(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

uint64_t sub_29AE1443C(uint64_t a1, uint64_t a2)
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

uint64_t sub_29AE144D4(uint64_t a1)
{
  *a1 = &unk_2A20C9058;
  v3 = (a1 + 72);
  sub_29A012C90(&v3);
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

uint64_t sub_29AE1454C(uint64_t a1)
{
  *a1 = &unk_2A2095418;
  sub_29A0EB4E8(a1 + 184);
  v7 = (a1 + 160);
  sub_29A0176E4(&v7);
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  return a1;
}

uint64_t sub_29AE145D8(uint64_t a1)
{
  sub_29AE1467C(a1 + 408);
  v5 = (a1 + 384);
  sub_29A0176E4(&v5);
  v2 = *(a1 + 360);
  if (v2)
  {
    *(a1 + 368) = v2;
    operator delete(v2);
  }

  sub_29AE14178(a1 + 320);
  sub_29AE14178(a1 + 280);
  sub_29AE14060(a1 + 240);
  sub_29AD97000(a1 + 200);
  sub_29A019EE8(a1 + 176, *(a1 + 184));
  v5 = (a1 + 152);
  sub_29AAC9380(&v5);
  sub_29AE144D4(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29AE1467C(uint64_t a1)
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

uint64_t sub_29AE146FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_29AC4A310(a1);
    if (a4 >> 60)
    {
      sub_29A00C9A4();
    }

    v9 = *(a1 + 16) - *a1;
    v10 = v9 >> 3;
    if (v9 >> 3 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    sub_29A0D0518(a1, v11);
    result = sub_29AE1483C(a1, a2, a3, *(a1 + 8));
    goto LABEL_11;
  }

  v13 = *(a1 + 8) - v8;
  if (a4 > v13 >> 4)
  {
    sub_29AC4A37C(&v17, a2, a2 + v13, v8);
    result = sub_29AE1483C(a1, a2 + v13, a3, *(a1 + 8));
LABEL_11:
    *(a1 + 8) = result;
    return result;
  }

  result = sub_29AC4A37C(&v18, a2, a3, v8);
  v15 = v14;
  v16 = *(a1 + 8);
  if (v16 != v14)
  {
    do
    {
      v16 -= 16;
      result = sub_29ABF31FC(a1, v16);
    }

    while (v16 != v15);
  }

  *(a1 + 8) = v15;
  return result;
}

uint64_t sub_29AE1483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_29AE148D0(a1, v4, v6);
      v6 += 16;
      v4 = v12 + 16;
      v12 += 16;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_29ABF3170(v9);
  return v4;
}

_DWORD *sub_29AE148D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E21F4(a2, a3);
  result = sub_29A1E2240((a2 + 4), (a3 + 4));
  v6 = *(a3 + 8);
  *(a2 + 8) = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  return result;
}

void sub_29AE14938()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!v0)
  {
    v0 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  v1 = *(v0 + 6);
  v4 = v1;
  v5 = &off_2A2044E88 + 1;
  if ((v1 & 7) != 0 && (atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v4 &= 0xFFFFFFFFFFFFFFF8;
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!v2)
  {
    v2 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  __p[0] = v2;
  sub_29A94BD04();
}

void sub_29AE14D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  __p = &a20;
  sub_29A0176E4(&__p);
  if (a19)
  {
    sub_29A014BEC(a19);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29AE14DB0(const void **a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&qword_2A174EEC8);
  if (!v4)
  {
    v4 = sub_29AE152FC();
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==(v4, a1))
  {
    v5 = *(a2 + 23);
    if (v5 < 0)
    {
      if (*(a2 + 8) != 7)
      {
        goto LABEL_25;
      }

      a2 = *a2;
    }

    else if (v5 != 7)
    {
      goto LABEL_25;
    }

    if (*a2 == 1936682083 && *(a2 + 3) == 1953719667)
    {
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      if (!v16)
      {
        v16 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      }

      v13 = *(v16 + 15);
LABEL_28:
      v17[0] = v13;
      v17[1] = (&off_2A2044E88 + 1);
      if ((v13 & 7) != 0)
      {
        v14 = (v13 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed) & 1) == 0)
        {
          v17[0] = v14;
        }
      }

      if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens))
      {
        sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
      }

      sub_29A94BD04();
    }

LABEL_25:
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!v12)
    {
      v12 = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v13 = *(v12 + 12);
    goto LABEL_28;
  }

  v6 = atomic_load(&qword_2A174EEC8);
  if (!v6)
  {
    v6 = sub_29AE152FC();
  }

  if (pxrInternal__aapl__pxrReserved__::TfToken::operator==((v6 + 8), a1))
  {
    sub_29AE15514(a2, v17);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens))
    {
      sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    sub_29A94BD04();
  }

  v8 = atomic_load(&qword_2A174EEC8);
  if (!v8)
  {
    v8 = sub_29AE152FC();
  }

  result = pxrInternal__aapl__pxrReserved__::TfToken::operator==((v8 + 16), a1);
  if (result)
  {
    sub_29AE15514(a2, v17);
    if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens))
    {
      sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    sub_29A94BD04();
  }

  return result;
}

void sub_29AE150BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

BOOL sub_29AE150E4(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC80[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AE15148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_29AE15164(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC80[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v2)
  {
    v3 = (v2 + 5);
  }

  else
  {
    v3 = sub_29B1F31FC();
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_29AE151D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AE151F0(uint64_t a1)
{
  sub_29A008E78(__p, off_2A14FDC78[0]);
  v2 = sub_29A8877BC((a1 + 160), __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return v2 != 0;
}

void sub_29AE15254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE15270(atomic_ullong *a1)
{
  result = sub_29AE152B8();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::~HdStTextureTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE152B8()
{
  v0 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType::HdStTextureTokens_StaticTokenType(v0);
  return v0;
}

unint64_t sub_29AE152FC()
{
  v16 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "filtertype", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "uaddressmode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "vaddressmode", 0);
  v1 = v0 + 3;
  v2 = *v0;
  v13 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v3;
    }
  }

  v4 = v0[1];
  v14 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v5;
    }
  }

  v6 = v0[2];
  v15 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v7;
    }
  }

  *v1 = 0;
  v0[4] = 0;
  v0[5] = 0;
  sub_29A12EF7C(v1, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v9 = *(&v13 + i);
    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v10 = 0;
  atomic_compare_exchange_strong(&qword_2A174EEC8, &v10, v0);
  if (v10)
  {
    v11 = sub_29A764EAC(v0);
    operator delete(v11);
    return atomic_load(&qword_2A174EEC8);
  }

  return v0;
}

void sub_29AE15478(_Unwind_Exception *a1)
{
  v4 = 16;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[2];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[1];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdStTextureTokens_StaticTokenType *sub_29AE15514@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v3 = *(a1 + 23);
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        if (v3 != 8 || *a1 != 0x746E6174736E6F63)
        {
LABEL_33:
          result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
          if (!result)
          {
            result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
          }

          v8 = *(result + 6);
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      goto LABEL_29;
    }

    if (*a1 != 1835101283 || *(a1 + 4) != 112)
    {
      goto LABEL_33;
    }

LABEL_22:
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!result)
    {
      result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v8 = *(result + 4);
    goto LABEL_36;
  }

  if (a1[1] == 8 && **a1 == 0x746E6174736E6F63)
  {
LABEL_25:
    result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    if (!result)
    {
      result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
    }

    v8 = *(result + 3);
    goto LABEL_36;
  }

  v4 = a1[1];
  if (v4 != 6)
  {
    if (v4 != 5)
    {
      goto LABEL_33;
    }

    if (**a1 != 1835101283 || *(*a1 + 4) != 112)
    {
      goto LABEL_33;
    }

    goto LABEL_22;
  }

  a1 = *a1;
LABEL_29:
  if (*a1 != 1920100717 || *(a1 + 2) != 29295)
  {
    goto LABEL_33;
  }

  result = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  if (!result)
  {
    result = sub_29AE15270(&pxrInternal__aapl__pxrReserved__::HdStTextureTokens);
  }

  v8 = *(result + 5);
LABEL_36:
  *a2 = v8;
  a2[1] = (&off_2A2044E88 + 1);
  if ((v8 & 7) != 0)
  {
    v10 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 = v10;
    }
  }

  return result;
}

_DWORD *sub_29AE15744(uint64_t a1)
{
  sub_29ABF3348(a1 + 40, *(a1 + 48));
  sub_29A5B0668(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));

  return sub_29A1DE3A4(a1);
}

uint64_t sub_29AE158CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v4 + 1, (a2 + 4));
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = (a2 + 24);
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  v7 = a1 + 24;
  v8 = *(a2 + 32);
  *(a1 + 32) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 16) = v5;
    *v5 = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a1 + 16) = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  v9 = (a2 + 48);
  v10 = *(a2 + 48);
  *(a1 + 48) = v10;
  v11 = a1 + 48;
  v12 = *(a2 + 56);
  *(a1 + 56) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 40) = v9;
    *v9 = 0;
    *(a2 + 56) = 0;
  }

  else
  {
    *(a1 + 40) = v11;
  }

  return a1;
}

void sub_29AE15980(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  v7 = *a3;
  *(a1 + 8) = *a3;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29ABECFB8((a1 + 16));
}

void sub_29AE15A08(_Unwind_Exception *a1)
{
  sub_29A5B0668(v1 + 16, *(v1 + 24));
  v3 = *(v1 + 8);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A1DCEA8(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_29AE15A48()
{
  v31 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "ND_dot_filename", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "position", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "normal", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "tangent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "bitangent", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "texcoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "geomcolor", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "geompropvalue", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "swizzle", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "convert", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "constant", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "atan2", 0);
  v1 = v0 + 12;
  v2 = *v0;
  v19 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v19 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v20 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v20 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v21 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v21 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v22 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v22 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v23 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v23 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v24 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v24 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v25 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v25 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v26 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v26 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v27 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v27 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v28 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v28 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v29 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v29 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v30 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v30 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[13] = 0;
  v0[14] = 0;
  sub_29A12EF7C(v1, &v19, &v31, 0xCuLL);
  for (i = 88; i != -8; i -= 8)
  {
    v15 = *(&v19 + i);
    if ((v15 & 7) != 0)
    {
      atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v16 = 0;
  atomic_compare_exchange_strong(&qword_2A174EF00, &v16, v0);
  if (v16)
  {
    v17 = sub_29AB67BC8(v0);
    operator delete(v17);
    return atomic_load(&qword_2A174EF00);
  }

  return v0;
}

void sub_29AE15E1C(_Unwind_Exception *a1)
{
  v4 = 88;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[11];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[10];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[9];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[8];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[7];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[6];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[5];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[4];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[3];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[2];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[1];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AE15FD8(uint64_t a1, uint64_t *a2, uint64_t *a3, size_t __n)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  sub_29A019AA0(a1, __n);
  while (a2 != a3)
  {
    sub_29A169500(a1, a2, a2);
    ++a2;
  }

  return a1;
}

uint64_t sub_29AE1605C@<X0>(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v28[4] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A174EF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174EF20))
  {
    v13 = sub_29B246C60();
    sub_29A008E78(v22, "float");
    v22[3] = v13;
    v14 = sub_29B247ADC();
    sub_29A008E78(v23, "color3");
    v23[3] = v14;
    v15 = sub_29B247C28();
    v16 = sub_29A008E78(v24, "color4");
    v24[3] = v15;
    Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v16);
    sub_29A008E78(v25, "vector2");
    v25[3] = Vector2Name;
    v18 = sub_29B2470A0();
    sub_29A008E78(v26, "vector3");
    v26[3] = v18;
    v19 = sub_29B2471EC();
    sub_29A008E78(v27, "vector4");
    v27[3] = v19;
    v20 = sub_29B24844C();
    sub_29A008E78(v28, "surfaceshader");
    v28[3] = v20;
    sub_29AE1673C(&unk_2A174EF08, v22, 7);
    for (i = 0; i != -28; i -= 4)
    {
      if (SHIBYTE(v28[i + 2]) < 0)
      {
        operator delete(v28[i]);
      }
    }

    __cxa_atexit(sub_29AE16710, &unk_2A174EF08, &dword_299FE7000);
    __cxa_guard_release(&qword_2A174EF20);
  }

  v4 = sub_29A01BCCC(&unk_2A174EF08, a1);
  if (v4 == &unk_2A174EF10)
  {
    v5 = sub_29B246774();
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      sub_29A008D14(a2, *v5, *(v5 + 8));
    }

    else
    {
      v7 = *v5;
      *(a2 + 16) = *(v5 + 16);
      *a2 = v7;
    }

    v12 = *(v6 + 24);
    *(a2 + 40) = *(v6 + 40);
    *(a2 + 24) = v12;
    return sub_29AE168E8(a2 + 48, v6 + 48);
  }

  else
  {
    v8 = *(v4 + 56);
    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(a2, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      *(a2 + 16) = *(v8 + 2);
      *a2 = v9;
    }

    v10 = *(v8 + 24);
    *(a2 + 40) = *(v8 + 40);
    *(a2 + 24) = v10;
    return sub_29AE168E8(a2 + 48, (v8 + 3));
  }
}

void sub_29AE16308(_Unwind_Exception *a1)
{
  v3 = (v1 + 215);
  v4 = -224;
  v5 = (v1 + 215);
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_2A174EF20);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_29AE163B0(uint64_t a1, void *a2)
{
  v3 = sub_29B1C6D8C(&v19, a1);
  v4 = v19;
  v5 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(v3);
  v6 = v5[1];
  __p = *v5;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29B1C7188(v4, &__p);
  if (v14)
  {
    sub_29A014BEC(v14);
  }

  v7 = v20;
  v16[0] = v19;
  v16[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29A008E78(&__p, "MxTerminalNode");
  sub_29AE16960(v16, &__p, a2, &v17);
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v7)
  {
    sub_29A014BEC(v7);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_29B1F31FC();
  v9 = sub_29B249938(&v11, v8);
  if (v12)
  {
    sub_29A014BEC(v12);
  }

  if (v18)
  {
    sub_29A014BEC(v18);
  }

  if (v20)
  {
    sub_29A014BEC(v20);
  }

  return v9;
}

void sub_29AE164D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_29A014BEC(v21);
  }

  v24 = *(v22 - 40);
  if (v24)
  {
    sub_29A014BEC(v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29AE16540(uint64_t a1, uint64_t *a2, float *a3)
{
  result = 1;
  if (a1 + 40 == sub_29A31B8F0(a1 + 32, a2))
  {
    v7 = sub_29A31B8F0(a1 + 8, a2);
    if (a1 + 16 == v7 || sub_29AE165B8((v7 + 40), a3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AE165B8(pxrInternal__aapl__pxrReserved__::VtValue *a1, float *a2)
{
  v3 = a1;
  result = sub_29A3F9DF4(a1);
  if (result)
  {
    v5 = *(v3 + 8);
    if ((v5 & 4) != 0)
    {
      v3 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
    }

    return *v3 == *a2;
  }

  return result;
}

BOOL sub_29AE16614(uint64_t a1, uint64_t *a2, float *a3)
{
  result = 1;
  if (a1 + 40 == sub_29A31B8F0(a1 + 32, a2))
  {
    v7 = sub_29A31B8F0(a1 + 8, a2);
    if (a1 + 16 == v7 || sub_29AE1668C((v7 + 40), a3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29AE1668C(pxrInternal__aapl__pxrReserved__::VtValue *a1, float *a2)
{
  result = sub_29A3FDE60(a1);
  if (result)
  {
    v5 = *(a1 + 1);
    if ((v5 & 4) != 0)
    {
      v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
    }

    else
    {
      v6 = *a1;
    }

    return *v6 == *a2 && v6[1] == a2[1] && v6[2] == a2[2];
  }

  return result;
}

uint64_t sub_29AE1673C(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AE167BC(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AE167BC(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AE16840(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29AE16840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
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

void sub_29AE168CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE168E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B248938(a1, i + 16, i + 2);
  }

  return a1;
}

void sub_29AE16960(pxrInternal__aapl__pxrReserved__ *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = pxrInternal__aapl__pxrReserved__::HdMtlxStdLibraries(a1);
  v9 = *v8;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v8);
  }

  sub_29AAC0094(v9, EmptyString, &v61);
  v11 = *a1;
  v59 = v61;
  v60 = v62;
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_29AE170A8(v11, &v59, a2, a4);
  v33 = a4;
  v12 = v60;
  if (v60)
  {
    sub_29A014BEC(v60);
  }

  v13 = a3[4];
  if (v13 != a3 + 5)
  {
    while (1)
    {
      v14 = v61;
      v15 = (v13[4] & 0xFFFFFFFFFFFFFFF8) != 0 ? ((v13[4] & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      sub_29B1EA508(v14, v15, &v57);
      if (v57)
      {
        break;
      }

LABEL_38:
      v12 = v58;
      if (v58)
      {
        sub_29A014BEC(v58);
      }

      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      v13 = v21;
      if (v21 == a3 + 5)
      {
        goto LABEL_46;
      }
    }

    v16 = (*(*v57 + 8))(v57);
    sub_29AE1605C(v16, &v52);
    if (SHIBYTE(v53) < 0)
    {
      sub_29A008D14(__p, v52, *(&v52 + 1));
    }

    else
    {
      *__p = v52;
      v48 = v53;
    }

    v49 = v54;
    v50 = v55;
    sub_29AE168E8(v51, v56);
    IsNone = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(__p);
    sub_29A0EB570(v51);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
      if (IsNone)
      {
        goto LABEL_36;
      }
    }

    else if (IsNone)
    {
LABEL_36:
      sub_29A0EB570(v56);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(v52);
      }

      goto LABEL_38;
    }

    if (SHIBYTE(v53) < 0)
    {
      sub_29A008D14(__dst, v52, *(&v52 + 1));
    }

    else
    {
      *__dst = v52;
      v43 = v53;
    }

    v44 = v54;
    v45 = v55;
    sub_29AE168E8(v46, v56);
    IsSurfaceShader = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsSurfaceShader(__dst);
    sub_29A0EB570(v46);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__dst[0]);
      if (IsSurfaceShader)
      {
LABEL_25:
        sub_29AE15704();
      }
    }

    else if (IsSurfaceShader)
    {
      goto LABEL_25;
    }

    if (v54 == 4 && BYTE1(v54) != 3)
    {
      sub_29A008E78(&v39, "0.5");
      if (*(&v54 + 1) >= 2uLL)
      {
        v19 = 1;
        do
        {
          std::string::append(&v39, ", 0.5");
          ++v19;
        }

        while (v19 < *(&v54 + 1));
      }

      sub_29B1EE794(*a4, v57 + 6, &v40);
      sub_29AD99E08(v40, &v39);
      if (v41)
      {
        sub_29A014BEC(v41);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_36;
  }

LABEL_46:
  v23 = a3[1];
  v24 = a3 + 2;
  if (v23 != a3 + 2)
  {
    do
    {
      v25 = v61;
      if ((v23[4] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v26 = ((v23[4] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
      }

      sub_29B1EA508(v25, v26, &v57);
      if (v57)
      {
        v27 = (*(*v57 + 8))(v57);
        sub_29AE1605C(v27, &v52);
        if (SHIBYTE(v53) < 0)
        {
          sub_29A008D14(v34, v52, *(&v52 + 1));
        }

        else
        {
          *v34 = v52;
          v35 = v53;
        }

        v36 = v54;
        v37 = v55;
        sub_29AE168E8(v38, v56);
        v28 = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(v34);
        sub_29A0EB570(v38);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34[0]);
        }

        v29 = v54 != 4 || v28;
        if ((v29 & 1) == 0 && BYTE1(v54) != 3)
        {
          sub_29B1EE794(*v33, v57 + 6, &v40);
          v30 = v40;
          pxrInternal__aapl__pxrReserved__::HdMtlxConvertToString((v23 + 5), &v39);
          sub_29AD99E08(v30, &v39);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }

          if (v41)
          {
            sub_29A014BEC(v41);
          }
        }

        sub_29A0EB570(v56);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(v52);
        }
      }

      v12 = v58;
      if (v58)
      {
        sub_29A014BEC(v58);
      }

      v31 = v23[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v23[2];
          v22 = *v32 == v23;
          v23 = v32;
        }

        while (!v22);
      }

      v23 = v32;
    }

    while (v32 != v24);
  }

  if (v62)
  {
    sub_29A014BEC(v62);
  }
}

void sub_29AE16F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  v61 = *(v59 - 120);
  if (v61)
  {
    sub_29A014BEC(v61);
  }

  v62 = *(v59 - 104);
  if (v62)
  {
    sub_29A014BEC(v62);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE170A8(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_29AABE2F0(*a2);
  v9 = (*(**a2 + 64))();
  sub_29AD9617C(a1, v8, a3, v9, a4);
  sub_29AD985E8(*a4, (*a2 + 48));
}

void sub_29AE17140(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29AE17158(void **a1)
{
  sub_29A1E2AEC((a1 + 6), a1[7]);
  sub_29A1E2AEC((a1 + 3), a1[4]);
  sub_29AAA3F44(a1, a1[1]);
  return a1;
}

uint64_t sub_29AE171A0(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_29A89AD9C(a1 + 80);
  sub_29A89AD9C(a1 + 40);

  return sub_29A89AD9C(a1);
}

uint64_t sub_29AE17204(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  sub_29A008E78((a1 + 120), "st");
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v2)
  {
    v2 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

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
    sub_29A008D14((a1 + 144), *EmptyString, EmptyString[1]);
  }

  else
  {
    v4 = *EmptyString;
    *(a1 + 160) = EmptyString[2];
    *(a1 + 144) = v4;
  }

  *(a1 + 168) = 0;
  return a1;
}

void sub_29AE172D4(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  sub_29A89AD9C(v3);
  sub_29A89AD9C(v2);
  sub_29A89AD9C(v1);
  _Unwind_Resume(a1);
}

const void **sub_29AE17310(uint64_t a1, const void **a2, __int128 *a3, __int128 *a4)
{
  v9 = sub_29A12A708(a1, a2);
  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v9;
      if (v9 >= v11)
      {
        v4 = v9 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v9;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, a2))
          {
            return i;
          }
        }

        else
        {
          if (v13 > 1)
          {
            if (v16 >= v11)
            {
              v16 %= v11;
            }
          }

          else
          {
            v16 &= v11 - 1;
          }

          if (v16 != v4)
          {
            break;
          }
        }
      }
    }
  }

  sub_29AE1756C(a1, v10, a3, a4, v28);
  v17 = (*(a1 + 24) + 1);
  v18 = *(a1 + 32);
  if (!v11 || (v18 * v11) < v17)
  {
    v19 = 1;
    if (v11 >= 3)
    {
      v19 = (v11 & (v11 - 1)) != 0;
    }

    v20 = v19 | (2 * v11);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    sub_29A019AA0(a1, v22);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }
  }

  v23 = *a1;
  v24 = *(*a1 + 8 * v4);
  if (v24)
  {
    i = v28[0];
    *v28[0] = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28[0];
    *v28[0] = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28[0];
    if (*v28[0])
    {
      v26 = *(*v28[0] + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v26 >= v11)
        {
          v26 %= v11;
        }
      }

      else
      {
        v26 &= v11 - 1;
      }

      *(*a1 + 8 * v26) = v28[0];
      i = v28[0];
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29AE17554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A12AF10(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29AE1756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  v10 = operator new(0x40uLL);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = 0;
  *v10 = 0;
  *(v10 + 1) = a2;
  result = sub_29A0F2E38(v10 + 16, a3, a4);
  *(a5 + 16) = 1;
  return result;
}

unint64_t sub_29AE175EC()
{
  v63 = *MEMORY[0x29EDCA608];
  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "mtlx", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "st", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 2, "texcoord", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 3, "geomprop", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 4, "index", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 5, "default", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 6, "filename", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 7, "UsdPreviewSurface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 8, "opacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 9, "opacityThreshold", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 10, "standard_surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 11, "transmission", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 12, "open_pbr_surface", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 13, "transmission_weight", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 14, "geometry_opacity", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 15, "gltf_pbr", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 16, "alpha_mode", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 17, "alpha_cutoff", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 18, "alpha", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 19, "convert", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 20, "ND_convert_color4_surfaceshader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 21, "ND_convert_vector4_surfaceshader", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 22, "domeLightFallback", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 23, "ND_image_color3", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 24, "file", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 25, "sourceColorSpace", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 26, "NG_Anonymized", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 27, "geompropvalue", 0);
  v1 = v0 + 28;
  v2 = *v0;
  v35 = v2;
  if ((v2 & 7) != 0 && (atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v35 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3 = v0[1];
  v36 = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v36 &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = v0[2];
  v37 = v4;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v37 &= 0xFFFFFFFFFFFFFFF8;
  }

  v5 = v0[3];
  v38 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v38 &= 0xFFFFFFFFFFFFFFF8;
  }

  v6 = v0[4];
  v39 = v6;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v39 &= 0xFFFFFFFFFFFFFFF8;
  }

  v7 = v0[5];
  v40 = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v40 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8 = v0[6];
  v41 = v8;
  if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v41 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9 = v0[7];
  v42 = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v42 &= 0xFFFFFFFFFFFFFFF8;
  }

  v10 = v0[8];
  v43 = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v43 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = v0[9];
  v44 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v44 &= 0xFFFFFFFFFFFFFFF8;
  }

  v12 = v0[10];
  v45 = v12;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v45 &= 0xFFFFFFFFFFFFFFF8;
  }

  v13 = v0[11];
  v46 = v13;
  if ((v13 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v46 &= 0xFFFFFFFFFFFFFFF8;
  }

  v14 = v0[12];
  v47 = v14;
  if ((v14 & 7) != 0 && (atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v47 &= 0xFFFFFFFFFFFFFFF8;
  }

  v15 = v0[13];
  v48 = v15;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v48 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v0[14];
  v49 = v16;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v49 &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = v0[15];
  v50 = v17;
  if ((v17 & 7) != 0 && (atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v50 &= 0xFFFFFFFFFFFFFFF8;
  }

  v18 = v0[16];
  v51 = v18;
  if ((v18 & 7) != 0 && (atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v51 &= 0xFFFFFFFFFFFFFFF8;
  }

  v19 = v0[17];
  v52 = v19;
  if ((v19 & 7) != 0 && (atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v52 &= 0xFFFFFFFFFFFFFFF8;
  }

  v20 = v0[18];
  v53 = v20;
  if ((v20 & 7) != 0 && (atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v53 &= 0xFFFFFFFFFFFFFFF8;
  }

  v21 = v0[19];
  v54 = v21;
  if ((v21 & 7) != 0 && (atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v54 &= 0xFFFFFFFFFFFFFFF8;
  }

  v22 = v0[20];
  v55 = v22;
  if ((v22 & 7) != 0 && (atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v55 &= 0xFFFFFFFFFFFFFFF8;
  }

  v23 = v0[21];
  v56 = v23;
  if ((v23 & 7) != 0 && (atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v56 &= 0xFFFFFFFFFFFFFFF8;
  }

  v24 = v0[22];
  v57 = v24;
  if ((v24 & 7) != 0 && (atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v57 &= 0xFFFFFFFFFFFFFFF8;
  }

  v25 = v0[23];
  v58 = v25;
  if ((v25 & 7) != 0 && (atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v58 &= 0xFFFFFFFFFFFFFFF8;
  }

  v26 = v0[24];
  v59 = v26;
  if ((v26 & 7) != 0 && (atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v59 &= 0xFFFFFFFFFFFFFFF8;
  }

  v27 = v0[25];
  v60 = v27;
  if ((v27 & 7) != 0 && (atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v60 &= 0xFFFFFFFFFFFFFFF8;
  }

  v28 = v0[26];
  v61 = v28;
  if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v61 &= 0xFFFFFFFFFFFFFFF8;
  }

  v29 = v0[27];
  v62 = v29;
  if ((v29 & 7) != 0 && (atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v62 &= 0xFFFFFFFFFFFFFFF8;
  }

  *v1 = 0;
  v0[29] = 0;
  v0[30] = 0;
  sub_29A12EF7C(v1, &v35, &v63, 0x1CuLL);
  for (i = 216; i != -8; i -= 8)
  {
    v31 = *(&v35 + i);
    if ((v31 & 7) != 0)
    {
      atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v32 = 0;
  atomic_compare_exchange_strong(&qword_2A174EEC0, &v32, v0);
  if (v32)
  {
    v33 = sub_29A880A54(v0);
    operator delete(v33);
    return atomic_load(&qword_2A174EEC0);
  }

  return v0;
}

void sub_29AE17DC0(_Unwind_Exception *a1)
{
  v4 = 216;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[27];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[26];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[25];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[24];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[23];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v11 = v1[22];
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12 = v1[21];
      if ((v12 & 7) != 0)
      {
        atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v13 = v1[20];
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = v1[19];
      if ((v14 & 7) != 0)
      {
        atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = v1[18];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v16 = v1[17];
      if ((v16 & 7) != 0)
      {
        atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v17 = v1[16];
      if ((v17 & 7) != 0)
      {
        atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v18 = v1[15];
      if ((v18 & 7) != 0)
      {
        atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v19 = v1[14];
      if ((v19 & 7) != 0)
      {
        atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v20 = v1[13];
      if ((v20 & 7) != 0)
      {
        atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v21 = v1[12];
      if ((v21 & 7) != 0)
      {
        atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v22 = v1[11];
      if ((v22 & 7) != 0)
      {
        atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v23 = v1[10];
      if ((v23 & 7) != 0)
      {
        atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v24 = v1[9];
      if ((v24 & 7) != 0)
      {
        atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v25 = v1[8];
      if ((v25 & 7) != 0)
      {
        atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v26 = v1[7];
      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v27 = v1[6];
      if ((v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v28 = v1[5];
      if ((v28 & 7) != 0)
      {
        atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v29 = v1[4];
      if ((v29 & 7) != 0)
      {
        atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v30 = v1[3];
      if ((v30 & 7) != 0)
      {
        atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v31 = v1[2];
      if ((v31 & 7) != 0)
      {
        atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v32 = v1[1];
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t *sub_29AE1817C(uint64_t **a1, const void **a2, __int128 *a3, void *a4)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AE18204(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

uint64_t sub_29AE18204@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AE18278(v8 + 32, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29AE18278(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_29A186EF4((a1 + 24), a3);
  return a1;
}

void sub_29AE182BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE182D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AE182D8(a1, *a2);
    sub_29AE182D8(a1, a2[1]);
    sub_29A90D9D0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29AE18334(uint64_t **a1, const void **a2, __int128 *a3, _DWORD *a4)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AE183BC(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AE183BC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _DWORD *a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29A8FBAC4(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AE18430(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A90D9D0(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29AE1848C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_29A00C9A4();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v6 = 0x276276276276276;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A09B7D4(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[104 * v2];
  *(&v16 + 1) = &v7[104 * v6];
  sub_29AE0D0AC(a1, v15, a2);
  *&v16 = v15 + 104;
  v8 = a1[1];
  v9 = &v15[*a1 - v8];
  sub_29AE0CFF8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AE0D138(&v14);
  return v13;
}

void sub_29AE185C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AE185D4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A55B6B4(a1, *(a1 + 16));
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

uint64_t sub_29AE186C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1DDD84((a1 + 8), a3);
  sub_29A1DDDC0((a1 + 12), (a3 + 4));
  *(a1 + 16) = *(a3 + 8);
  *(a3 + 8) = 0;
  return a1;
}

uint64_t *sub_29AE18848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = operator new(0x38uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29AE188D4(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29AE188B8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A94BD9C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_29AE188D4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A186EF4(a1 + 1, a3);
  return a1;
}

uint64_t sub_29AE18A7C(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_29A1E21F4(a1, a2);
  sub_29A1E2240(v6 + 1, a2 + 1);
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a1 + 16) = a3[1];
  v7 = a3 + 2;
  v8 = a3[2];
  *(a1 + 24) = v8;
  v9 = a1 + 24;
  v10 = a3[3];
  *(a1 + 32) = v10;
  if (v10)
  {
    *(v8 + 16) = v9;
    a3[1] = v7;
    *v7 = 0;
    a3[3] = 0;
  }

  else
  {
    *(a1 + 16) = v9;
  }

  *(a1 + 40) = a3[4];
  v11 = a3 + 5;
  v12 = a3[5];
  *(a1 + 48) = v12;
  v13 = a1 + 48;
  v14 = a3[6];
  *(a1 + 56) = v14;
  if (v14)
  {
    *(v12 + 16) = v13;
    a3[4] = v11;
    *v11 = 0;
    a3[6] = 0;
  }

  else
  {
    *(a1 + 40) = v13;
  }

  return a1;
}

uint64_t sub_29AE18B3C(uint64_t a1, uint64_t *a2)
{
  sub_29ADCC11C(a1, a2, &v12);
  v4 = v12;
  if (v12)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v12 + 1) == a1 + 16;
  }

  if (v5)
  {
    v6 = *a2;
    v8[1] = 0;
    v9 = 0;
    v8[0] = v6;
    v10 = 0;
    sub_29ADCC48C(a1, v8, 0, &v11);
    v12 = v11;
    if (v9)
    {
      sub_29A014BEC(v9);
      v4 = v12;
    }

    else
    {
      v4 = v11;
    }
  }

  return v4 + 16;
}

void sub_29AE18BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_29A014BEC(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_29AE18BE4(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_29A028760(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v16[0] = (v8 + 4);
          v16[1] = (v8 + 5);
          sub_29AE18D74(v16, v9 + 4);
          v10 = sub_29A1682D8(v5, v16, v15 + 4);
          sub_29A00B204(v5, v16[0], v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_29A028760(v14);
          }

          v11 = v9[1];
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
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
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

    result = sub_29AE18DC4(&v13);
  }

  if (a2 != a3)
  {
    sub_29AE18E1C();
  }

  return result;
}

void sub_29AE18D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29AE18DC4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE18D74(uint64_t a1, void *a2)
{
  sub_29A166F2C(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 1)
  {
    sub_29AC4A1D0(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 4);
  }

  return a1;
}

uint64_t sub_29AE18DC4(uint64_t a1)
{
  sub_29ABF3348(*a1, *(a1 + 16));
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

    sub_29ABF3348(*a1, v2);
  }

  return a1;
}

void sub_29AE18E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_29ABF32DC(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::HdStMaterialXShaderGen(uint64_t a1, uint64_t a2)
{
  v4 = sub_29B24F1A8(a1);
  *v4 = &unk_2A2095458;
  sub_29AE1D980((v4 + 100), a2);
  sub_29AE1D980(a1 + 840, a2 + 40);
  sub_29AE1D980(a1 + 880, a2 + 80);
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  if (*(a2 + 167) < 0)
  {
    sub_29A008D14((a1 + 944), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v5 = *(a2 + 144);
    *(a1 + 960) = *(a2 + 160);
    *(a1 + 944) = v5;
  }

  *(a1 + 968) = *(a2 + 168);
  v6 = sub_29B1F31FC();
  v7 = (a2 + 120);
  v8 = *(a2 + 143);
  v9 = v8;
  v10 = *(a2 + 128);
  if ((v8 & 0x80u) == 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v6 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v6 + 1);
  }

  if (v11 != v12)
  {
    goto LABEL_16;
  }

  v14 = *v7;
  if (v9 >= 0)
  {
    v14 = v7;
  }

  v15 = v13 >= 0 ? v6 : *v6;
  if (!memcmp(v14, v15, v11))
  {
    sub_29A008E78(&__p, "st");
  }

  else
  {
LABEL_16:
    if (v9 < 0)
    {
      sub_29A008D14(&__p, *v7, v10);
    }

    else
    {
      __p = *v7;
    }
  }

  std::string::operator=((a1 + 920), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AE19018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 943) < 0)
  {
    operator delete(*v15);
  }

  sub_29A89AD9C(v14 + 880);
  sub_29A89AD9C(v14 + 840);
  sub_29A89AD9C(v14 + 800);
  sub_29AE1909C(v14);
  _Unwind_Resume(a1);
}

void *sub_29AE1909C(uint64_t a1)
{
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::HdStMaterialXShaderGenMsl(uint64_t a1, uint64_t a2)
{
  *pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::HdStMaterialXShaderGen(a1, a2) = &unk_2A2095600;
  sub_29B24F0A8();
  std::operator+<char>();
  sub_29B231A7C(a1, &__p, sub_29AE191B4);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_29AE19188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29AE19258(v15);
  _Unwind_Resume(a1);
}

void *sub_29AE191B4@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x240uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_2A20957D8;
  bzero(v2 + 3, 0x228uLL);
  result = sub_29B267F7C(v2 + 3);
  v2[3] = &unk_2A2095828;
  *a1 = v2 + 3;
  a1[1] = v2;
  return result;
}

void sub_29AE19240(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29AE19258(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::generate(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = a3[1];
  v14 = *a3;
  v15 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 272))(a1, a2, &v14, a4);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  sub_29B1FB384(&v13, 1, -1);
  v9 = *a5;
  sub_29A008E78(__p, off_2A14FE6F8);
  v10 = sub_29B22FF64(v9, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalShader(a1, *(*a5 + 32), a4, v10);
}

void sub_29AE19578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, uint64_t a16, uint64_t a17)
{
  sub_29B1FB3A8(&a15);
  v19 = *(v17 + 8);
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalShader(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalHeader(a1, a3, a4);
  (*(*a1 + 368))(&v18, a1, a3);
  v7 = v18;
  if (!v18)
  {
    sub_29A008E78(__p, off_2A14FE548[0]);
    v20 = 0;
    v19 = 0;
    sub_29AE1D758(&v20, &v19, v13);
    v15 = *v13;
    v13[0] = 0;
    v13[1] = 0;
    sub_29AE19BF4(a3, __p, &v15);
    if (*(&v15 + 1))
    {
      sub_29A014BEC(*(&v15 + 1));
    }

    if (v13[1])
    {
      sub_29A014BEC(v13[1]);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, off_2A14FE548[0]);
    sub_29AE19D1C(a3, __p, v13);
    v8 = *v13;
    v13[0] = 0;
    v13[1] = 0;
    v9 = *(&v18 + 1);
    v18 = v8;
    if (v9)
    {
      sub_29A014BEC(v9);
      if (v13[1])
      {
        sub_29A014BEC(v13[1]);
      }
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v18;
  }

  (*(*v7 + 24))(v7, a3, a4);
  sub_29A008E78(__p, off_2A14FE500[0]);
  v10 = sub_29B246C60();
  sub_29A008E78(v13, "shadowOcclusion");
  v11 = sub_29B2408C8(a4, __p);
  v20 = 0;
  v21 = 0;
  sub_29B240028(v11, v10, v13, &v20, 0);
  if (v21)
  {
    sub_29A014BEC(v21);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*a1 + 176))(a1, a3, a4);
  v12 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_29B255E1C(a1, a3, &v12, a4);
  if (*(&v12 + 1))
  {
    sub_29A014BEC(*(&v12 + 1));
  }

  (*(*a1 + 320))(a1, a3, a4);
  (*(*a1 + 336))(a1, a3, a4);
  (*(*a1 + 344))(a1, a3, a4);
  pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitMxFunctions();
}

void sub_29AE1996C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a28)
  {
    sub_29A014BEC(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGenMsl::_EmitGlslfxMetalHeader(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29AE1B494(a1, a3);
  (*(*a1 + 64))(a1, a3);
  (*(*a1 + 64))(a1, a3);
  (*(*a1 + 280))(a1);
  std::operator+<char>();
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define __METAL__ 1");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*a1 + 304))(a1, a2, a3);
}

void sub_29AE19BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE19BF4(uint64_t a1, const void **a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v6 = sub_29A5DAB7C((a1 + 240), a2);
  if (v6)
  {
    v7 = (v6 + 5);

    sub_29A017F80(v7, a3);
  }

  else
  {
    v8 = *(a3 + 8);
    v11 = *a3;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = a2;
    v9 = sub_29B213848(a1 + 240, a2, &unk_29B4D6118, &v10);
    sub_29B213B5C((v9 + 5), &v11, &v13, 1uLL);
    if (v12)
    {
      sub_29A014BEC(v12);
    }
  }
}

void sub_29AE19D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE19D1C(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v4 = sub_29A5DAB7C((a1 + 240), a2);
  if (!v4 || (v5 = v4[6], v4[5] == v5))
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 - 2);

    sub_29AE1D9F8(v6, a3);
  }
}

void sub_29AE1A2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29AE1A368(uint64_t *a1, uint64_t a2, _BYTE *a3, std::string *a4)
{
  sub_29A008E78(&__str, "surfaceShader");
  std::string::operator=(a4 + 1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "vec4 surfaceShader(vec4 Peye, vec3 Neye, vec4 color, vec4 patchCoord)");
  (*(*a1 + 80))(a1, &__str, a4, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230974(a1, a4, 1);
  sub_29A008E78(&__str, "Initialize MaterialX Variables");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a4);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "mxInit(Peye, Neye)");
  (*(*a1 + 80))(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v8 = **(a2 + 88);
  if ((*(a2 + 40) & 6) == 2)
  {
    if (*(v8 + 127) >= 0)
    {
      v9 = *(v8 + 127);
    }

    else
    {
      v9 = *(v8 + 112);
    }

    p_str = &__str;
    sub_29A022DE0(&__str, v9 + 27);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      v13 = *(v8 + 104);
      v12 = (v8 + 104);
      v11 = v13;
      if (v12[23] >= 0)
      {
        v14 = v12;
      }

      else
      {
        v14 = v11;
      }

      memmove(p_str, v14, v9);
    }

    strcpy(p_str + v9, " = vec4(0.0, 0.0, 0.0, 1.0)");
    (*(*a1 + 80))(a1, &__str, a4, 1);
LABEL_45:
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v27 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_47;
  }

  if (a3[136] == 1)
  {
    if (*(v8 + 127) >= 0)
    {
      v15 = *(v8 + 127);
    }

    else
    {
      v15 = *(v8 + 112);
    }

    v16 = &__str;
    sub_29A022DE0(&__str, v15 + 45);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __str.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      v19 = *(v8 + 104);
      v18 = (v8 + 104);
      v17 = v19;
      if (v18[23] >= 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = v17;
      }

      memmove(v16, v20, v15);
    }

    strcpy(v16 + v15, " = vec4(mx_compute_depth_moments(), 0.0, 1.0)");
    (*(*a1 + 80))(a1, &__str, a4, 1);
    goto LABEL_45;
  }

  if (a3[145] == 1)
  {
    if (*(v8 + 127) >= 0)
    {
      v21 = *(v8 + 127);
    }

    else
    {
      v21 = *(v8 + 112);
    }

    v22 = &__str;
    sub_29A022DE0(&__str, v21 + 61);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = __str.__r_.__value_.__r.__words[0];
    }

    if (v21)
    {
      v25 = *(v8 + 104);
      v24 = (v8 + 104);
      v23 = v25;
      if (v24[23] >= 0)
      {
        v26 = v24;
      }

      else
      {
        v26 = v23;
      }

      memmove(v22, v26, v21);
    }

    strcpy(v22 + v21, " = vec4(mx_ggx_directional_albedo_generate_table(), 0.0, 1.0)");
    (*(*a1 + 80))(a1, &__str, a4, 1);
    goto LABEL_45;
  }

  if ((~*(a2 + 40) & 0x4004) != 0)
  {
    sub_29B230C5C(a1, a2, a3, a4, 0);
  }

  else
  {
    sub_29B230C5C(a1, a2, a3, a4, 1);
    v29 = *(a2 + 88);
    v30 = *(a2 + 96);
    while (v29 != v30)
    {
      v31 = *(*v29 + 240);
      if (v31)
      {
        v32 = *(v31 + 16);
        if (*(v32 + 8) == a2 && (*(v32 + 40) & 6) != 0)
        {
          sub_29B211F98(a1, v32, a3, a4);
        }
      }

      v29 += 8;
    }
  }

  sub_29A008E78(&v100, "vec4 mxOut = ");
  v33 = *(v8 + 240);
  if (v33)
  {
    if (*(v33 + 127) < 0)
    {
      sub_29A008D14(&__dst, *(v33 + 104), *(v33 + 112));
    }

    else
    {
      __dst = *(v33 + 104);
    }

    v38 = *(v8 + 271);
    if (v38 < 0)
    {
      v38 = *(v8 + 256);
    }

    if (v38)
    {
      (*(*a1[1] + 40))(&__str);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = __str;
    }

    if ((*(a2 + 41) & 0x40) != 0)
    {
      if (a3[120] == 1)
      {
        std::operator+<char>();
        v46 = std::string::append(&v98, ".transparency, vec3(0.3333)), 0.0, 1.0)");
        v47 = *&v46->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if ((v102 & 0x80u) == 0)
        {
          v48 = v102;
        }

        else
        {
          v48 = v101;
        }

        v49 = &v97;
        sub_29A022DE0(&v97, v48 + 5);
        if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = v97.__r_.__value_.__r.__words[0];
        }

        if (v48)
        {
          if ((v102 & 0x80u) == 0)
          {
            v50 = &v100;
          }

          else
          {
            v50 = v100;
          }

          memmove(v49, v50, v48);
        }

        strcpy(v49 + v48, "vec4(");
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

        v53 = std::string::append(&v97, p_dst, size);
        v54 = *&v53->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&v98, ".color, outAlpha)");
        v56 = *&v55->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v97, off_2A14FE290[0]);
        v57 = std::string::insert(&v97, 0, "if (outAlpha < ");
        v58 = *&v57->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v58;
        v57->__r_.__value_.__l.__size_ = 0;
        v57->__r_.__value_.__r.__words[2] = 0;
        v57->__r_.__value_.__r.__words[0] = 0;
        v59 = std::string::append(&v98, ")");
        v60 = *&v59->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__str, a4, 0);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        sub_29B230974(a1, a4, 1);
        sub_29A008E78(&__str, "discard");
        (*(*a1 + 80))(a1, &__str, a4, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_29B230980(a1, a4, 0, 1);
        goto LABEL_222;
      }

      if ((v102 & 0x80u) == 0)
      {
        v61 = v102;
      }

      else
      {
        v61 = v101;
      }

      v62 = &v97;
      sub_29A022DE0(&v97, v61 + 5);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v62 = v97.__r_.__value_.__r.__words[0];
      }

      if (v61)
      {
        if ((v102 & 0x80u) == 0)
        {
          v63 = &v100;
        }

        else
        {
          v63 = v100;
        }

        memmove(v62, v63, v61);
      }

      strcpy(v62 + v61, "vec4(");
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__dst;
      }

      else
      {
        v44 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __dst.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v8, &__str);
      v40 = v95 == 4 && v94 - 1 < 2;
      sub_29A0EB570(v96);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (!v40)
      {
        sub_29B25A3B4(*(v8 + 24), &__dst);
      }

      if ((v102 & 0x80u) == 0)
      {
        v41 = v102;
      }

      else
      {
        v41 = v101;
      }

      v42 = &v97;
      sub_29A022DE0(&v97, v41 + 5);
      if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v97.__r_.__value_.__r.__words[0];
      }

      if (v41)
      {
        if ((v102 & 0x80u) == 0)
        {
          v43 = &v100;
        }

        else
        {
          v43 = v100;
        }

        memmove(v42, v43, v41);
      }

      strcpy(v42 + v41, "vec4(");
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &__dst;
      }

      else
      {
        v44 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = __dst.__r_.__value_.__l.__size_;
      }
    }

    v64 = std::string::append(&v97, v44, v45);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v98.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v98.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v98, ".color, 1.0)");
    v67 = *&v66->__r_.__value_.__l.__data_;
    __str.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&__str.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &__str, a4, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v98.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = v97.__r_.__value_.__r.__words[0];
LABEL_221:
      operator delete(v68);
    }
  }

  else
  {
    v34 = *(v8 + 128);
    v35 = *(v8 + 136);
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = a1[1];
    if (v34)
    {
      v37 = *(v8 + 136);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v36 + 24))(&__dst);
      if (v37)
      {
        sub_29A014BEC(v37);
      }
    }

    else
    {
      v69 = sub_29B243874(v36, *(v8 + 24), 0);
      if (*(v69 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v69, *(v69 + 8));
      }

      else
      {
        v70 = *v69;
        __dst.__r_.__value_.__r.__words[2] = *(v69 + 16);
        *&__dst.__r_.__value_.__l.__data_ = v70;
      }
    }

    if (v35)
    {
      sub_29A014BEC(v35);
    }

    pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v8, &__str);
    v72 = v95 == 4 && v94 - 1 < 2;
    sub_29A0EB570(v96);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v72)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v100, &__dst.__r_.__value_.__l.__data_, &__str);
      (*(*a1 + 80))(a1, &__str, a4, 1);
    }

    else
    {
      if (*(v8 + 127) >= 0)
      {
        v73 = *(v8 + 127);
      }

      else
      {
        v73 = *(v8 + 112);
      }

      v74 = &__str;
      sub_29A022DE0(&__str, v73 + 4);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v74 = __str.__r_.__value_.__r.__words[0];
      }

      if (v73)
      {
        if (*(v8 + 127) >= 0)
        {
          v75 = (v8 + 104);
        }

        else
        {
          v75 = *(v8 + 104);
        }

        memmove(v74, v75, v73);
      }

      strcpy(v74 + v73, "_tmp");
      v76 = sub_29B2438AC(a1[1], *(v8 + 24));
      v77 = v76;
      if (*(v76 + 23) >= 0)
      {
        v78 = *(v76 + 23);
      }

      else
      {
        v78 = *(v76 + 8);
      }

      v79 = &v91;
      sub_29A022DE0(&v91, v78 + 1);
      if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v79 = v91.__r_.__value_.__r.__words[0];
      }

      if (v78)
      {
        if (v77[23] >= 0)
        {
          v80 = v77;
        }

        else
        {
          v80 = *v77;
        }

        memmove(v79, v80, v78);
      }

      *(&v79->__r_.__value_.__l.__data_ + v78) = 32;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &__str;
      }

      else
      {
        v81 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = __str.__r_.__value_.__l.__size_;
      }

      v83 = std::string::append(&v91, v81, v82);
      v84 = *&v83->__r_.__value_.__l.__data_;
      v92.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
      *&v92.__r_.__value_.__l.__data_ = v84;
      v83->__r_.__value_.__l.__size_ = 0;
      v83->__r_.__value_.__r.__words[2] = 0;
      v83->__r_.__value_.__r.__words[0] = 0;
      v85 = std::string::append(&v92, " = ");
      v86 = *&v85->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v86;
      v85->__r_.__value_.__l.__size_ = 0;
      v85->__r_.__value_.__r.__words[2] = 0;
      v85->__r_.__value_.__r.__words[0] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v87 = &__dst;
      }

      else
      {
        v87 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v88 = __dst.__r_.__value_.__l.__size_;
      }

      v89 = std::string::append(&v97, v87, v88);
      v90 = *&v89->__r_.__value_.__l.__data_;
      v98.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
      *&v98.__r_.__value_.__l.__data_ = v90;
      v89->__r_.__value_.__l.__size_ = 0;
      v89->__r_.__value_.__r.__words[2] = 0;
      v89->__r_.__value_.__r.__words[0] = 0;
      (*(*a1 + 80))(a1, &v98, a4, 1);
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      sub_29B25A3B4(*(v8 + 24), &__str);
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v100, &__str.__r_.__value_.__l.__data_, &v98);
      (*(*a1 + 80))(a1, &v98, a4, 1);
      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      v68 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_221;
    }
  }

LABEL_222:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "mxOut = ApplyColorOverrides(mxOut)");
  (*(*a1 + 80))(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v102 < 0)
  {
    v27 = v100;
LABEL_47:
    operator delete(v27);
  }

LABEL_48:
  sub_29A008E78(&__str, "return mxOut");
  (*(*a1 + 80))(a1, &__str, a4, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230980(a1, a4, 0, 1);
  return sub_29B2309A4(a1, a4);
}

void sub_29AE1B294(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 105) < 0)
  {
    operator delete(*(v43 - 128));
  }

  if (*(v43 - 73) < 0)
  {
    operator delete(*(v43 - 96));
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_29AE1B494(void *a1, uint64_t a2)
{
  sub_29A008E78(&__p, "-- glslfx version 0.1");
  v32 = a2;
  (*(*a1 + 80))(a1, &__p, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "File Generated with HdStMaterialXShaderGen.");
  sub_29B2309C0(a1, &__p.__r_.__value_.__l.__data_, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "#import $TOOLS/hdSt/shaders/surfaceHelpers.glslfx\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a2);
  sub_29A008E78(&__p, "-- configuration\n{\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "    metadata: {\n");
  sub_29B2309AC(a1, &__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "");
  std::operator+<char>();
  v4 = std::string::append(&v39, "\n");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v40;
  }

  else
  {
    v6 = v40.__r_.__value_.__r.__words[0];
  }

  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v40.__r_.__value_.__l.__size_;
  }

  std::string::append(&__p, v6, size);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  sub_29B2309AC(a1, &__p, a2);
  sub_29A008E78(&v40, "    }, \n");
  sub_29B2309AC(a1, &v40, a2);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a1[108])
  {
    sub_29A008E78(&__p, "    attributes: {\n");
    sub_29B2309AC(a1, &__p, a2);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&v40, "");
    v8 = a1[107];
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = a1[2];
        v37 = a1[1];
        v38 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v11 = v8 + 5;
        pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxGetTypeString(&v37, v8 + 5, &v39);
        if (v38)
        {
          sub_29A014BEC(v38);
        }

        v13 = HIBYTE(v39.__r_.__value_.__r.__words[2]);
        if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v13 = v39.__r_.__value_.__l.__size_;
        }

        if (!v13)
        {
          __p.__r_.__value_.__r.__words[0] = "hdSt/materialXShaderGen.cpp";
          __p.__r_.__value_.__l.__size_ = "_EmitGlslfxHeader";
          __p.__r_.__value_.__r.__words[2] = 173;
          v35 = "void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::_EmitGlslfxHeader(mx::ShaderStage &) const [Base = MaterialX__aapl::MslShaderGenerator]";
          v36 = 0;
          v14 = (v8 + 2);
          if (*(v8 + 39) < 0)
          {
            v14 = v8[2];
          }

          if (*(v8 + 63) < 0)
          {
            v11 = *v11;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "MaterialX geomprop '%s' has unknown type '%s'", v12, v14, v11);
        }

        std::operator+<char>();
        v15 = std::string::append(&v33, ": {\n");
        v16 = *&v15->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v16;
        v15->__r_.__value_.__l.__size_ = 0;
        v15->__r_.__value_.__r.__words[2] = 0;
        v15->__r_.__value_.__r.__words[0] = 0;
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
          v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v40, p_p, v18);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v19 = std::string::append(&v33, "\n");
        v20 = *&v19->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(&v40, v21, v22);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        std::string::append(&v40, "        }");
        if (a1[108] - 1 <= v9)
        {
          v23 = "\n";
        }

        else
        {
          v23 = ",\n";
        }

        std::string::append(&v40, v23);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        v8 = *v8;
        ++v9;
      }

      while (v8);
    }

    sub_29B2309AC(a1, &v40, v32);
    sub_29A008E78(&__p, "    }, \n");
    sub_29B2309AC(a1, &__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }

  if (a1[103])
  {
    sub_29A008E78(&__p, "    textures: {\n");
    sub_29B2309AC(a1, &__p, v32);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__p, "");
    v24 = a1[102];
    if (v24)
    {
      v25 = 0;
      do
      {
        std::operator+<char>();
        v26 = std::string::append(&v39, ": {\n        }");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v40.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v40.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v40;
        }

        else
        {
          v28 = v40.__r_.__value_.__r.__words[0];
        }

        if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v40.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v28, v29);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v40.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        if (a1[103] - 1 <= v25)
        {
          v30 = "\n";
        }

        else
        {
          v30 = ",\n";
        }

        std::string::append(&__p, v30);
        ++v25;
        v24 = *v24;
      }

      while (v24);
    }

    sub_29B2309AC(a1, &__p, v32);
    sub_29A008E78(&v40, "    }, \n");
    sub_29B2309AC(a1, &v40, v32);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__p, "    techniques: {\n        default: {\n            surfaceShader: { \n                source: [ SurfaceHelpers.TangentSpace,\n                            MaterialX.Surface ]\n            }\n        }\n    }\n}\n\n");
  sub_29B2309AC(a1, &__p, v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__p, "-- glsl MaterialX.Surface");
  (*(*a1 + 80))(a1, &__p, v32, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, v32);
  return sub_29B2309A4(a1, v32);
}

void sub_29AE1BBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AE1BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29A008E78(__p, "#if NUM_LIGHTS > 0");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define MAX_LIGHT_SOURCES NUM_LIGHTS");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#else");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#define MAX_LIGHT_SOURCES 1");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "#endif");
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(&v21, *(a2 + 128));
  v8 = std::string::insert(&v21, 0, "#define DIRECTIONAL_ALBEDO_METHOD ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v23 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  (*(*a1 + 80))(a1, __p, a3, 0);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a3);
  result = sub_29B240E54(a3);
  if (*(result + 88) != *(result + 96))
  {
    v11 = result;
    v12 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v11, a4, v12, a2, a3, 1);
    result = sub_29B2309A4(a1, a3);
  }

  for (i = *(a3 + 296); i; i = *i)
  {
    v14 = i[5];
    if (*(v14 + 88) != *(v14 + 96))
    {
      v15 = strlen(off_2A14FE500[0]);
      v16 = v15;
      v17 = *(v14 + 23);
      if (v17 < 0)
      {
        if (v15 != *(v14 + 8))
        {
          goto LABEL_26;
        }

        if (v15 == -1)
        {
          sub_29A0F26CC();
        }

        v18 = *v14;
      }

      else
      {
        v18 = i[5];
        if (v16 != v17)
        {
          goto LABEL_26;
        }
      }

      result = memcmp(v18, off_2A14FE500[0], v16);
      if (result)
      {
LABEL_26:
        std::operator+<char>();
        sub_29B2309C0(a1, __p, a3);
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        v19 = sub_29B1F31FC();
        v20 = sub_29B242ED8();
        (*(*a1 + 200))(a1, v14, v19, v20, a2, a3, 1);
        result = sub_29B2309A4(a1, a3);
      }
    }
  }

  return result;
}

void sub_29AE1C0F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_29AE1C154(void *a1, uint64_t a2, uint64_t a3, std::string *a4, uint64_t a5)
{
  v9 = *(a2 + 40);
  v10 = (~v9 & 0x4004) == 0;
  v11 = (v9 >> 7) & 1;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 1)
  {
    v13 = *(a3 + 137);
    v14 = *(a3 + 136);
    sub_29A008E78(__p, off_2A14FE500[0]);
    v15 = sub_29B2408C8(a4, __p);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    (*(*a1 + 80))(a1, __p, a4, 0);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    sub_29B230974(a1, a4, 1);
    v16 = sub_29B1F31FC();
    v17 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v15, v16, v17, a3, a4, 0);
    sub_29B230980(a1, a4, 1, 1);
    sub_29B2309A4(a1, a4);
    if (v15[23] >= 0)
    {
      v18 = v15[23];
    }

    else
    {
      v18 = *(v15 + 1);
    }

    v19 = &v64;
    sub_29A022DE0(&v64, v18 + 1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v64.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (v15[23] >= 0)
      {
        v20 = v15;
      }

      else
      {
        v20 = *v15;
      }

      memmove(v19, v20, v18);
    }

    *(&v19->__r_.__value_.__l.__data_ + v18) = 32;
    v23 = *(v15 + 3);
    v22 = v15 + 24;
    v21 = v23;
    v24 = v22[23];
    if (v24 >= 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v21;
    }

    if (v24 >= 0)
    {
      v26 = v22[23];
    }

    else
    {
      v26 = *(v22 + 1);
    }

    v27 = std::string::append(&v64, v25, v26);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v65, "[MAX_LIGHT_SOURCES]");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v63 = v29->__r_.__value_.__r.__words[2];
    *__p = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, __p, a4, 1);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    v31 = v13 | v14;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    sub_29B2309A4(a1, a4);
    sub_29B2309A4(a1, a4);
  }

  else
  {
    v31 = *(a3 + 136);
  }

  sub_29A008E78(__p, off_2A14FE4E8[0]);
  v32 = sub_29B240AA4(a4, __p);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(v32 + 11) != *(v32 + 12))
  {
    sub_29A008E78(__p, "MaterialX's VertexData");
    sub_29B2309C0(a1, __p, a4);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }

    std::operator+<char>();
    std::operator+<char>();
    (*(*a1 + 80))(a1, &v65, a4, 0);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    sub_29B230974(a1, a4, 1);
    v33 = sub_29B1F31FC();
    v34 = sub_29B242ED8();
    (*(*a1 + 200))(a1, v32, v33, v34, a3, a4, 0);
    sub_29B230980(a1, a4, 0, 0);
    v35 = sub_29B242ED8();
    sub_29B2309AC(a1, v35, a4);
    sub_29B2309A4(a1, a4);
    if (v63 >= 0)
    {
      v36 = HIBYTE(v63);
    }

    else
    {
      v36 = __p[1];
    }

    sub_29A022DE0(&v64, v36 + 1);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v64;
    }

    else
    {
      v37 = v64.__r_.__value_.__r.__words[0];
    }

    if (v36)
    {
      if (v63 >= 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      memmove(v37, v38, v36);
    }

    *(&v37->__r_.__value_.__l.__data_ + v36) = 32;
    v39 = v32[47];
    if (v39 >= 0)
    {
      v40 = v32 + 24;
    }

    else
    {
      v40 = *(v32 + 3);
    }

    if (v39 >= 0)
    {
      v41 = v32[47];
    }

    else
    {
      v41 = *(v32 + 4);
    }

    v42 = std::string::append(&v64, v40, v41);
    v43 = *&v42->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    (*(*a1 + 80))(a1, &v65, a4, 1);
    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v65.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    sub_29B2309A4(a1, a4);
    sub_29B2309A4(a1, a4);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_29AE1DAA8(a1, v32, a4);
  if (v12)
  {
    sub_29B25603C(a1, a3, a4);
    sub_29B256300(a1, a3, a4);
  }

  if (v31)
  {
    sub_29AE1D8C4(__p, "pbrlib/genglsl/lib/mx_shadow.glsl");
    sub_29B2309D0();
  }

  if (*(a3 + 128) == 1 || *(a3 + 145) == 1)
  {
    sub_29AE1D8C4(__p, "pbrlib/genglsl/lib/mx_table.glsl");
    sub_29B2309D0();
  }

  if (*(a3 + 28) == 1)
  {
    sub_29A008E78(__p, off_2A14FE688[0]);
    v65.__r_.__value_.__r.__words[0] = __p;
    v44 = a5;
    v45 = sub_29B1D6E60(a5, __p, &unk_29B4D6118, &v65);
    MEMORY[0x29C2C1A60](v45 + 40, "mx_transform_uv_vflip.glsl");
  }

  else
  {
    sub_29A008E78(__p, off_2A14FE688[0]);
    v65.__r_.__value_.__r.__words[0] = __p;
    v44 = a5;
    v46 = sub_29B1D6E60(a5, __p, &unk_29B4D6118, &v65);
    MEMORY[0x29C2C1A60](v46 + 40, "mx_transform_uv.glsl");
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 138) == 1)
  {
    sub_29B24F0A8();
    std::operator+<char>();
    v47 = std::string::append(&v61, "/lib/");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    sub_29A008E78(v60, off_2A14FE688[0]);
    v66 = v60;
    v49 = sub_29B1D6E60(v44, v60, &unk_29B4D6118, &v66);
    v52 = v49[5];
    v50 = (v49 + 5);
    v51 = v52;
    v53 = v50[23];
    if (v53 >= 0)
    {
      v54 = v50;
    }

    else
    {
      v54 = v51;
    }

    if (v53 >= 0)
    {
      v55 = v50[23];
    }

    else
    {
      v55 = *(v50 + 1);
    }

    v56 = std::string::append(&v64, v54, v55);
    v57 = *&v56->__r_.__value_.__l.__data_;
    v65.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v65.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    sub_29AAC9330(__p, &v65);
    sub_29B2309D0();
  }

  sub_29B25A7D4(a1, a2, a3, &a4->__r_.__value_.__l.__data_);
  return sub_29B230B4C(a1, a2, a3, a4);
}

void sub_29AE1C974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  *(v43 - 96) = v42;
  sub_29A012C90((v43 - 96));
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsNone(void *a1)
{
  v2 = sub_29B246774();

  return sub_29A1B00DC(a1, v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeIsSurfaceShader(void *a1)
{
  v2 = sub_29B24844C();

  return sub_29A1B00DC(a1, v2);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxTypeDescIsFilename(void *a1)
{
  v2 = sub_29B24805C();

  return sub_29A1B00DC(a1, v2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = sub_29B246774();
  }

  if (*(v3 + 23) < 0)
  {
    sub_29A008D14(a2, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    *(a2 + 16) = *(v3 + 16);
    *a2 = v4;
  }

  v5 = *(v3 + 24);
  *(a2 + 40) = *(v3 + 40);
  *(a2 + 24) = v5;
  return sub_29AE168E8(a2 + 48, v3 + 48);
}

void sub_29AE1CBE8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void **pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::MxGetTypeString@<X0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_29B246738(a2);
  if (v5)
  {
    result = sub_29B2438AC(*a1, v5);
  }

  else
  {
    result = sub_29B246774();
  }

  if (*(result + 23) < 0)
  {
    v8 = *result;
    v9 = result[1];

    return sub_29A008D14(a3, v8, v9);
  }

  else
  {
    v7 = *result;
    *(a3 + 16) = result[2];
    *a3 = v7;
  }

  return result;
}

void *sub_29AE1CC88(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  return sub_29AE1D3D0(a1);
}

void sub_29AE1CD38(uint64_t a1)
{
  *a1 = &unk_2A2095458;
  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  sub_29A89AD9C(a1 + 880);
  sub_29A89AD9C(a1 + 840);
  sub_29A89AD9C(a1 + 800);
  *a1 = &unk_2A20CB458;
  v3 = (a1 + 776);
  sub_29A0176E4(&v3);
  v2 = sub_29AE1D3D0(a1);
  operator delete(v2);
}

void sub_29AE1CDF0(_BYTE *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_29B2309B4(a1, a2, a3, a4);
  if (a1[969] == 1)
  {
    v7 = *(a2 + 23);
    v8 = *(a2 + 8);
    if (v7 < 0 && v8 == 30)
    {
      v9 = *(*a2 + 16);
      v10 = *(*a2 + 22);
      v11 = **a2 == 0x3D204C2033636576 && *(*a2 + 8) == 0x6853746867696C20;
      v12 = 0x7269642E72656461;
    }

    else
    {
      if ((v7 & 0x80000000) == 0 || v8 != 32)
      {
        return;
      }

      v9 = *(*a2 + 16);
      v10 = *(*a2 + 24);
      v11 = **a2 == 0x4C203374616F6C66 && *(*a2 + 8) == 0x746867696C203D20;
      v12 = 0x642E726564616853;
    }

    if (v11 && v9 == v12 && v10 == 0x6E6F697463657269)
    {
      sub_29A008E78(__p, "occlusion = u_lightData[activeLightIndex].shadowOcclusion");
      (*(*a1 + 80))(a1, __p, a3, 1);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_29AE1CF58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1CF74(uint64_t a1, const void **a2, __int128 *a3, const std::string::value_type *a4, uint64_t a5, std::string *a6, int a7)
{
  v39[3] = *MEMORY[0x29EDCA608];
  {
    sub_29A008E78(v32, off_2A14FE268[0]);
    sub_29A008E78(&v34, off_2A14FE2C0[0]);
    sub_29A008E78(v36, off_2A14FE2A8[0]);
    sub_29A008E78(v37, off_2A14FE2B0[0]);
    sub_29A008E78(v38, off_2A14FE2B8[0]);
    sub_29A008E78(v39, off_2A14FE2E0[0]);
    sub_29A9FDE68(&pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, v32, 6);
    for (i = 0; i != -18; i -= 3)
    {
      if (SHIBYTE(v39[i + 2]) < 0)
      {
        operator delete(v39[i]);
      }
    }

    __cxa_atexit(sub_29AA7B2BC, &pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, &dword_299FE7000);
  }

  v11 = strlen(off_2A14FE4F8[0]);
  v12 = v11;
  v13 = *(a2 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = a2;
    if (v12 != v13)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = memcmp(v14, off_2A14FE4F8[0], v12) == 0;
    goto LABEL_10;
  }

  if (v11 == a2[1])
  {
    if (v11 == -1)
    {
      sub_29A0F26CC();
    }

    v14 = *a2;
    goto LABEL_8;
  }

LABEL_9:
  v15 = 0;
LABEL_10:
  if (a2[12] != a2[11])
  {
    v16 = 0;
    while (1)
    {
      sub_29B230990(a1, a6);
      v17 = *(a2[11] + v16);
      pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v17, v32);
      if (*(a1 + 968))
      {
        break;
      }

      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(__p, v32[0], v32[1]);
      }

      else
      {
        *__p = *v32;
        v28 = v33;
      }

      v29 = v34;
      v30 = v35;
      sub_29AE168E8(v31, v36);
      v18 = sub_29B24805C();
      v19 = sub_29A1B00DC(__p, v18);
      sub_29A0EB570(v31);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
        if (!v19)
        {
          break;
        }
      }

      else if (!v19)
      {
        break;
      }

LABEL_27:
      sub_29A0EB570(v36);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }

      if (++v16 >= ((a2[12] - a2[11]) >> 3))
      {
        return;
      }
    }

    if (v15 && v34 <= 4u && ((1 << v34) & 0x16) != 0 && (*(&v34 + 1) - 5) > 0xFFFFFFFFFFFFFFFBLL || (v20 = sub_29A00AF58(&pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::emitVariableDeclarations(MaterialX__aapl::VariableBlock const&,std::string const&,std::string const&,MaterialX__aapl::GenContext &,MaterialX__aapl::ShaderStage &,BOOL)const::MxHdVariables, (v17 + 32)), v21 = a3, v22 = a7, v20))
    {
      v21 = sub_29B1F31FC();
      v22 = 0;
    }

    sub_29B25A9D8(a1, v17, v21, a5, a6, v22);
    sub_29B2309AC(a1, a4, a6);
    sub_29B230998(a1, a6, 0);
    goto LABEL_27;
  }
}

void sub_29AE1D30C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v30 = (v28 + 143);
  v31 = -144;
  v32 = (v28 + 143);
  while (1)
  {
    v33 = *v32;
    v32 -= 24;
    if (v33 < 0)
    {
      operator delete(*(v30 - 23));
    }

    v30 = v32;
    v31 += 24;
    if (!v31)
    {
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AE1D3D0(void *a1)
{
  *a1 = &unk_2A20C9078;
  v2 = (a1 + 18);
  sub_29A0EB570((a1 + 92));
  sub_29AE14178((a1 + 87));
  sub_29AE1D50C((a1 + 82));
  sub_29A0EB570((a1 + 76));
  sub_29AE14178((a1 + 71));
  sub_29AE1D50C((a1 + 66));
  sub_29A0EB570((a1 + 60));
  sub_29AE14178((a1 + 55));
  sub_29AE1D50C((a1 + 50));
  sub_29A0EB570((a1 + 44));
  sub_29AE14178((a1 + 39));
  sub_29AE1D50C((a1 + 34));
  sub_29A0EB570((a1 + 28));
  sub_29AE14178((a1 + 23));
  sub_29AE1D50C(v2);

  return sub_29AE1D49C(a1);
}

void *sub_29AE1D49C(void *a1)
{
  *a1 = &unk_2A20CAC10;
  sub_29A89AD9C((a1 + 12));
  v2 = a1[11];
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  sub_29A0EB4E8((a1 + 3));
  v4 = a1[2];
  if (v4)
  {
    sub_29A014BEC(v4);
  }

  return a1;
}

uint64_t sub_29AE1D50C(uint64_t a1)
{
  sub_29AE1D548(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AE1D548(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      sub_29A156170(&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29AE1D5BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20957D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AE1D62C(uint64_t a1)
{
  v1 = sub_29AE1D68C(a1);

  operator delete(v1);
}

void sub_29AE1D654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  *(*a3 + 969) = 1;
  sub_29B268888(a1, a2, a3, a4);
  *(v4 + 969) = 0;
}

uint64_t sub_29AE1D68C(uint64_t a1)
{
  *a1 = &unk_2A20CC3E8;
  sub_29A0EB570(a1 + 512);
  sub_29AE14178(a1 + 472);
  sub_29AE1D50C(a1 + 432);
  sub_29A0EB570(a1 + 384);
  sub_29AE14178(a1 + 344);
  sub_29AE1D50C(a1 + 304);
  sub_29A0EB570(a1 + 256);
  sub_29AE14178(a1 + 216);
  sub_29AE1D50C(a1 + 176);
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

void sub_29AE1D758(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  sub_29AE1D7D4(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;

  sub_29A017894(a3, v6 + 4, (v6 + 3));
}

void *sub_29AE1D7D4(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20CB680;
  sub_29B24D270((a1 + 3), *a2, *a3);
  return a1;
}

void sub_29AE1D858(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20CB680;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AE1D8C4(void *a1, char *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A008E78(&__p, a2);
  }

  else
  {
    v3 = sub_29B1F31FC();
    if (*(v3 + 23) < 0)
    {
      sub_29A008D14(&__p, *v3, *(v3 + 1));
    }

    else
    {
      v4 = *v3;
      __p.__r_.__value_.__r.__words[2] = *(v3 + 2);
      *&__p.__r_.__value_.__l.__data_ = v4;
    }
  }

  sub_29B20661C(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_29AE1D950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A012C90(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_29AE1D980(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_29A019AA0(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_29B1D70D0(a1, i + 2, i + 1);
  }

  return a1;
}

void sub_29AE1D9F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_29A014C58(&lpsrc, (a1 + 8));
  if (lpsrc && (v3 = __dynamic_cast(lpsrc, &unk_2A20958E0, &unk_2A2095908, 0)) != 0)
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    sub_29A014BEC(v6);
  }
}

void sub_29AE1DAA8(uint64_t a1, uint64_t a2, std::string *a3)
{
  sub_29A008E78(&__str, "mxInit");
  std::string::operator=(a3 + 1, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "void mxInit(vec4 Peye, vec3 Neye)");
  (*(*a1 + 80))(a1, &__str, a3, 0);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230974(a1, a3, 1);
  sub_29A008E78(&__str, "Convert HdData to MxData");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, off_2A14FE4F0[0]);
  v6 = sub_29B2408C8(a3, &__str.__r_.__value_.__l.__data_);
  sub_29A008E78(&__dst, off_2A14FE268[0]);
  v9 = sub_29B23EB84(v6, &__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_13:
    sub_29A008E78(&__str, "u_viewPosition = vec3(HdGet_worldToViewInverseMatrix() * vec4(0.0, 0.0, 0.0, 1.0))");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_15;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  v10 = (a1 + 920);
  if (*(a1 + 943) < 0)
  {
    sub_29A008D14(&__str, *(a1 + 920), *(a1 + 928));
  }

  else
  {
    *&__str.__r_.__value_.__l.__data_ = *v10;
    __str.__r_.__value_.__r.__words[2] = *(a1 + 936);
  }

  v11 = *(a2 + 88);
  v57 = a3;
  if (*(a2 + 96) == v11)
  {
LABEL_53:
    v62 = __str;
    goto LABEL_56;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v11 + 8 * v12);
    if (*(v13 + 127) < 0)
    {
      sub_29A008D14(&__dst, *(v13 + 104), *(v13 + 112));
    }

    else
    {
      __dst = *(v13 + 104);
    }

    sub_29A008E78(&v64, off_2A14FE200[0]);
    v14 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v64.__r_.__value_.__r.__words[2]) : v64.__r_.__value_.__l.__size_;
    v15 = std::string::compare(&__dst, 0, v14, off_2A14FE200[0]);
    v16 = v15;
    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
      if (!v16)
      {
LABEL_36:
        if (*(a1 + 943) < 0)
        {
          sub_29A008D14(&v62, *(a1 + 920), *(a1 + 928));
        }

        else
        {
          *&v62.__r_.__value_.__l.__data_ = *v10;
          v62.__r_.__value_.__r.__words[2] = *(a1 + 936);
        }

        goto LABEL_49;
      }
    }

    else if (!v15)
    {
      goto LABEL_36;
    }

    sub_29A008E78(&v64, off_2A14FE1B0[0]);
    v17 = (v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v64.__r_.__value_.__r.__words[2]) : v64.__r_.__value_.__l.__size_;
    v18 = std::string::compare(&__dst, 0, v17, off_2A14FE1B0[0]);
    if (v18)
    {
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      a3 = v57;
    }

    else
    {
      v19 = *(v13 + 24);
      Vector2Name = pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetVector2Name(v18);
      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      v28 = v19 == Vector2Name;
      a3 = v57;
      if (v28)
      {
        sub_29A008E78(&__p, off_2A14FE1B0[0]);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        std::string::basic_string(&v64, &__dst, size + 1, 0xFFFFFFFFFFFFFFFFLL, v66);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v64;
        *(&v64.__r_.__value_.__s + 23) = 0;
        v64.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

LABEL_49:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (!v16)
    {
      break;
    }

    ++v12;
    v11 = *(a2 + 88);
    if (v12 >= (*(a2 + 96) - v11) >> 3)
    {
      goto LABEL_53;
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_56:
  v22 = &v62;
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v22 = v62.__r_.__value_.__r.__words[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    // Calculate the worldspace position and normal vectors\n    vec3 positionWorld = vec3(HdGet_worldToViewInverseMatrix() * Peye);\n    vec3 normalWorld = vec3(HdGet_worldToViewInverseMatrix() * vec4(Neye, 0.0));\n\n    // Calculate the worldspace tangent vector \n#ifdef HD_HAS_%s\n    mat3 TBN = ComputeTBNMatrix(positionWorld, normalWorld, HdGet_%s());\n    vec3 tangentWorld = TBN[0];\n    vec3 bitangentWorld = TBN[1];\n#else \n    vec3 bitangentWorld = vec3(0, 1, 0);\n    vec3 tangentWorld = cross(normalWorld, bitangentWorld);\n    if (length(tangentWorld) < M_FLOAT_EPS) {\n        bitangentWorld = vec3(1, 0, 0);\n        tangentWorld = cross(normalWorld, bitangentWorld);\n    }\n#endif\n\n", v7, v8, v22, v22);
  sub_29B2309AC(a1, &__str, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 88) != *(a2 + 96))
  {
    std::operator+<char>();
    v23 = sub_29B242F58();
    sub_29AE1E950(a1, a2, &__str, (a2 + 24), v23, a3);
    sub_29B2309A4(a1, a3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__str, "Initialize Material Parameters");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, off_2A14FE4F8[0]);
  v24 = sub_29B2408C8(a3, &__str.__r_.__value_.__l.__data_);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v25 = v24[11];
  if (v24[12] != v25)
  {
    v26 = 0;
    do
    {
      v27 = *(v25 + 8 * v26);
      pxrInternal__aapl__pxrReserved__::HdStMaterialXHelpers::GetMxTypeDesc(v27, &__str);
      v28 = v59 > 4u || ((1 << v59) & 0x16) == 0;
      if (!v28 && (v60 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
      {
        if (*(v27 + 127) >= 0)
        {
          v29 = *(v27 + 127);
        }

        else
        {
          v29 = *(v27 + 112);
        }

        sub_29A022DE0(&__p, v29 + 9);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v29)
        {
          if (*(v27 + 127) >= 0)
          {
            v31 = (v27 + 104);
          }

          else
          {
            v31 = *(v27 + 104);
          }

          memmove(p_p, v31, v29);
        }

        strcpy(p_p + v29, " = HdGet_");
        v32 = *(v27 + 127);
        if (v32 >= 0)
        {
          v33 = (v27 + 104);
        }

        else
        {
          v33 = *(v27 + 104);
        }

        if (v32 >= 0)
        {
          v34 = *(v27 + 127);
        }

        else
        {
          v34 = *(v27 + 112);
        }

        v35 = std::string::append(&__p, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v64, "()");
        a3 = v57;
        v38 = *&v37->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__dst, v57, 1);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_29A0EB570(&v61);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      ++v26;
      v25 = v24[11];
    }

    while (v26 < (v24[12] - v25) >> 3);
  }

  sub_29B2309A4(a1, a3);
  sub_29A008E78(&__str, "Initialize Indirect Light Textures and values");
  sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 968) == 1)
  {
    sub_29A008E78(&__str, "#ifdef HD_HAS_domeLightIrradiance");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envIrradiance = HdGetSampler_domeLightIrradiance()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envRadiance = HdGetSampler_domeLightPrefilter()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "#else");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envIrradiance = HdGetSampler_domeLightFallback()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "u_envRadiance = HdGetSampler_domeLightFallback()");
    (*(*a1 + 80))(a1, &__str, a3, 1);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_29A008E78(&__str, "#endif");
    (*(*a1 + 80))(a1, &__str, a3, 0);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  sub_29A008E78(&__str, "u_envRadianceMips = textureQueryLevels(u_envRadiance)");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B2309A4(a1, a3);
  if (*(a1 + 968) == 1 && *(a1 + 824))
  {
    sub_29A008E78(&__str, "Initialize Material Textures");
    sub_29B2309C0(a1, &__str.__r_.__value_.__l.__data_, a3);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    for (i = *(a1 + 816); i; i = *i)
    {
      v40 = *(i + 39);
      if (v40 < 0)
      {
        if (i[3] != 17)
        {
          goto LABEL_136;
        }

        v41 = i[2];
      }

      else
      {
        v41 = i + 2;
        if (v40 != 17)
        {
          goto LABEL_136;
        }
      }

      v42 = *v41;
      v43 = v41[1];
      v44 = *(v41 + 16);
      if (v42 != 0x6867694C656D6F64 || v43 != 0x6361626C6C614674 || v44 != 107)
      {
LABEL_136:
        if (v40 >= 0)
        {
          v47 = *(i + 39);
        }

        else
        {
          v47 = i[3];
        }

        sub_29A022DE0(&v64, v47 + 16);
        if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v48 = &v64;
        }

        else
        {
          v48 = v64.__r_.__value_.__r.__words[0];
        }

        if (v47)
        {
          if (*(i + 39) >= 0)
          {
            v49 = i + 2;
          }

          else
          {
            v49 = i[2];
          }

          memmove(v48, v49, v47);
        }

        strcpy(v48 + v47, " = HdGetSampler_");
        v50 = *(i + 63);
        if (v50 >= 0)
        {
          v51 = (i + 5);
        }

        else
        {
          v51 = i[5];
        }

        if (v50 >= 0)
        {
          v52 = *(i + 63);
        }

        else
        {
          v52 = i[6];
        }

        v53 = std::string::append(&v64, v51, v52);
        v54 = *&v53->__r_.__value_.__l.__data_;
        __dst.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
        *&__dst.__r_.__value_.__l.__data_ = v54;
        v53->__r_.__value_.__l.__size_ = 0;
        v53->__r_.__value_.__r.__words[2] = 0;
        v53->__r_.__value_.__r.__words[0] = 0;
        v55 = std::string::append(&__dst, "()");
        v56 = *&v55->__r_.__value_.__l.__data_;
        __str.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
        *&__str.__r_.__value_.__l.__data_ = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        (*(*a1 + 80))(a1, &__str, a3, 1);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }
      }
    }

    sub_29B2309A4(a1, a3);
  }

  sub_29A008E78(&__str, "mat4 hdTransformationMatrix = mat4(1.0)");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "#if NUM_LIGHTS > 0\n    for (int i = 0; i < NUM_LIGHTS; ++i) {\n        LightSource light = GetLightSource(i);\n\n        // Save the indirect light transformation\n        if (light.isIndirectLight) {\n            hdTransformationMatrix = light.worldToLightTransform;\n            // Note: in Storm, diffuse = lightColor * intensity;\n            u_envLightIntensity = max( max(light.diffuse.r, light.diffuse.g),\n                                   light.diffuse.b);\n        }\n        // Save the direct light data\n        else {\n            // Light Type and Position/Direction\n            // Distant lights have Hydra attenuation = vec3(0.0, 0.0, 0.0)\n            if (light.attenuation.x == 0.0 && light.attenuation.y == 0.0 && \n                light.attenuation.z == 0.0) {\n                $lightData[u_numActiveLightSources].type = 2; // directional\n\n                // Direction (Hydra position in ViewSpace)\n                $lightData[u_numActiveLightSources].direction = \n                    (HdGet_worldToViewInverseMatrix() * -light.position).xyz;\n            }\n            // Treat all other lights as Point lights\n            else {\n                $lightData[u_numActiveLightSources].type = 1; // point\n\n                // Position (Hydra position in ViewSpace)\n                $lightData[u_numActiveLightSources].position = \n                    (HdGet_worldToViewInverseMatrix() * light.position).xyz;\n            }\n\n            // Color and Intensity \n            // Note: in Storm, diffuse = lightColor * intensity;\n            float intensity = max( max(light.diffuse.r, light.diffuse.g), \n                                   light.diffuse.b);\n            vec3 lightColor = (intensity == 0.0)\n                ? light.diffuse.rgb : light.diffuse.rgb/intensity;\n            $lightData[u_numActiveLightSources].color = lightColor;\n            $lightData[u_numActiveLightSources].intensity = intensity;\n            \n            // Attenuation \n            // Hydra: vec3(const, linear, quadratic)\n            // MaterialX: const = 0.0, linear = 1.0, quadratic = 2.0\n            if (light.attenuation.z > 0) {\n                $lightData[u_numActiveLightSources].decay_rate = 2.0;\n            }\n            else if (light.attenuation.y > 0) {\n                $lightData[u_numActiveLightSources].decay_rate = 1.0;\n            }\n            else {\n                $lightData[u_numActiveLightSources].decay_rate = 0.0;\n            }\n\n            // ShadowOcclusion value\n            #if USE_SHADOWS\n                u_lightData[u_numActiveLightSources].shadowOcclusion = \n                    light.hasShadow ? shadowing(i, Peye) : 1.0;\n            #else \n                u_lightData[u_numActiveLightSources].shadowOcclusion = 1.0;\n            #endif\n\n            u_numActiveLightSources++;\n        }\n    }\n#endif\n");
  sub_29B2309AC(a1, &__str, a3);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29A008E78(&__str, "u_envMatrix = u_envMatrix * hdTransformationMatrix");
  (*(*a1 + 80))(a1, &__str, a3, 1);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  sub_29B230980(a1, a3, 0, 1);
  sub_29B2309A4(a1, a3);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1E770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1E950(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4, __int128 *a5, uint64_t a6)
{
  if (*(a4 + 23) >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = a4[1];
  }

  v13 = &v43;
  sub_29A022DE0(&v43, v12 + 3);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v43.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a4 + 23) >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    memmove(v13, v14, v12);
  }

  *(&v13->__r_.__value_.__l.__data_ + v12) = 2112800;
  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = *(a3 + 8);
  }

  v18 = std::string::append(&v43, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  v20 = sub_29B24F0A8();
  v21 = sub_29B24F0A8();
  v22 = *(v20 + 23);
  if (v22 >= 0)
  {
    v23 = *(v20 + 23);
  }

  else
  {
    v23 = v20[1];
  }

  v24 = *(v21 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = v21[1];
  }

  if (v23 != v24)
  {
    goto LABEL_31;
  }

  v26 = *v20;
  if (v22 >= 0)
  {
    v26 = v20;
  }

  v27 = v25 >= 0 ? v21 : *v21;
  if (!memcmp(v26, v27, v23))
  {
    std::string::append(&v46, "{");
  }

  else
  {
LABEL_31:
    v43.__r_.__value_.__r.__words[0] = "hdSt/materialXShaderGen.cpp";
    v43.__r_.__value_.__l.__size_ = "_EmitMxVertexDataDeclarations";
    v43.__r_.__value_.__r.__words[2] = 512;
    v44 = "void pxrInternal__aapl__pxrReserved__::HdStMaterialXShaderGen<MaterialX__aapl::MslShaderGenerator>::_EmitMxVertexDataDeclarations(const mx::VariableBlock &, const std::string &, const std::string &, const std::string &, mx::ShaderStage &) const [Base = MaterialX__aapl::MslShaderGenerator]";
    v45 = 0;
    v28 = *v20;
    if (v22 >= 0)
    {
      v28 = v20;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v43, 1, "MaterialX Shader Generator doesn't support %s", v28);
  }

  v29 = *(a2 + 88);
  v30 = *(a2 + 96) - v29;
  if (v30)
  {
    v31 = 0;
    v32 = v30 >> 3;
    do
    {
      v33 = a5;
      if (v31 == v32 - 1)
      {
        v33 = sub_29B1F31FC();
        v29 = *(a2 + 88);
      }

      sub_29AE1EC9C(a1, *(v29 + 8 * v31), v33, &v43);
      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v43;
      }

      else
      {
        v34 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      std::string::append(&v46, v34, size);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      ++v31;
      v29 = *(a2 + 88);
      v32 = (*(a2 + 96) - v29) >> 3;
    }

    while (v31 < v32);
  }

  v36 = sub_29B24F0A8();
  v37 = *(v20 + 23);
  if (v37 >= 0)
  {
    v38 = *(v20 + 23);
  }

  else
  {
    v38 = v20[1];
  }

  v39 = *(v36 + 23);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = v36[1];
  }

  if (v38 == v39)
  {
    v41 = v37 >= 0 ? v20 : *v20;
    v42 = v40 >= 0 ? v36 : *v36;
    if (!memcmp(v41, v42, v38))
    {
      std::string::append(&v46, "}");
    }
  }

  (*(*a1 + 80))(a1, &v46, a6, 1);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1EC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE1EC9C(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string::value_type *a3@<X2>, uint64_t a4@<X8>)
{
  v64 = *MEMORY[0x29EDCA608];
  memset(&v61, 0, sizeof(v61));
  if (*(a2 + 127) < 0)
  {
    sub_29A008D14(&__str, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    __str = *(a2 + 104);
  }

  if (!std::string::compare(&__str, off_2A14FE1C0[0]) || !std::string::compare(&__str, off_2A14FE1C8[0]) || !std::string::compare(&__str, off_2A14FE1D0[0]) || !std::string::compare(&__str, off_2A14FE1D8[0]))
  {
    std::string::basic_string(&v59, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v58);
    v14 = a3[23];
    if (v14 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (v14 >= 0)
    {
      v16 = a3[23];
    }

    else
    {
      v16 = *(a3 + 1);
    }

    v17 = std::string::append(&v59, v15, v16);
    v18 = v17->__r_.__value_.__r.__words[0];
    __dst.__r_.__value_.__r.__words[0] = v17->__r_.__value_.__l.__size_;
    *(__dst.__r_.__value_.__r.__words + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
    v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    *(&v61.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
    v61.__r_.__value_.__r.__words[0] = v18;
    v61.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
    *(&v61.__r_.__value_.__s + 23) = v19;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

  if (!std::string::compare(&__str, off_2A14FE1E0[0]) || !std::string::compare(&__str, off_2A14FE1E8[0]))
  {
    std::operator+<char>();
LABEL_41:
    v61 = v59;
    goto LABEL_42;
  }

  v8 = strlen(off_2A14FE200[0]);
  if (!std::string::compare(&__str, 0, v8, off_2A14FE200[0]))
  {
    v20 = (a1 + 920);
    if (*(a1 + 943) < 0)
    {
      v20 = *v20;
    }

    v21 = a3[23];
    v22 = *a3;
    v23 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
    if (v21 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = v22;
    }

    if (*(v23 + 23) >= 0)
    {
      v27 = v23;
    }

    else
    {
      v27 = *v23;
    }

    if (a3[23] >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    #ifdef HD_HAS_%s\n        HdGet_%s()%s\n    #else\n        %s(0.0)%s\n    #endif\n        ", v24, v25, v20, v20, v26, v27, v28);
    goto LABEL_41;
  }

  v9 = strlen(off_2A14FE1B0[0]);
  if (!std::string::compare(&__str, 0, v9, off_2A14FE1B0[0]))
  {
    v32 = strlen(off_2A14FE1B0[0]);
    std::string::basic_string(&v59, &__str, v32 + 1, 0xFFFFFFFFFFFFFFFFLL, &__dst);
    v33 = sub_29B243874(*(a1 + 8), *(a2 + 24), 0);
    if (*(v33 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v33, *(v33 + 8));
    }

    else
    {
      v34 = *v33;
      __dst.__r_.__value_.__r.__words[2] = *(v33 + 16);
      *&__dst.__r_.__value_.__l.__data_ = v34;
    }

    v37 = sub_29A8877BC((a1 + 880), &v59.__r_.__value_.__l.__data_);
    v40 = v37;
    if (v37)
    {
      v41 = *(v37 + 63);
      if ((v41 & 0x8000000000000000) != 0)
      {
        v41 = v37[6];
      }

      if (v41)
      {
        v42 = sub_29B2438AC(*(a1 + 8), *(a2 + 24));
        sub_29A911628("(", v42, &v57.__r_.__value_.__l.__data_);
        v43 = *(v40 + 63);
        if (v43 >= 0)
        {
          v44 = (v40 + 5);
        }

        else
        {
          v44 = v40[5];
        }

        if (v43 >= 0)
        {
          v45 = *(v40 + 63);
        }

        else
        {
          v45 = v40[6];
        }

        v46 = std::string::append(&v57, v44, v45);
        v47 = *&v46->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v47;
        v46->__r_.__value_.__l.__size_ = 0;
        v46->__r_.__value_.__r.__words[2] = 0;
        v46->__r_.__value_.__r.__words[0] = 0;
        v48 = std::string::append(&v58, ")");
        v49 = v48->__r_.__value_.__r.__words[0];
        v62[0] = v48->__r_.__value_.__l.__size_;
        *(v62 + 7) = *(&v48->__r_.__value_.__r.__words[1] + 7);
        v50 = HIBYTE(v48->__r_.__value_.__r.__words[2]);
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__r.__words[0] = v49;
        __dst.__r_.__value_.__l.__size_ = v62[0];
        *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v62 + 7);
        *(&__dst.__r_.__value_.__s + 23) = v50;
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }
      }
    }

    v51 = &v59;
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v59.__r_.__value_.__r.__words[0];
    }

    if (a3[23] >= 0)
    {
      v52 = a3;
    }

    else
    {
      v52 = *a3;
    }

    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("\n    #ifdef HD_HAS_%s\n        HdGet_%s()%s\n    #else\n        %s%s\n    #endif\n        ", v38, v39, v51, v51, v52, p_dst, v52);
    v61 = v58;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v10 = *(a2 + 128);
    v11 = *(a2 + 136);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 8);
    if (v10)
    {
      v13 = *(a2 + 136);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v12 + 24))(&v59);
      if (v13)
      {
        sub_29A014BEC(v13);
      }
    }

    else
    {
      v35 = sub_29B243874(v12, *(a2 + 24), 1);
      if (*(v35 + 23) < 0)
      {
        sub_29A008D14(&v59, *v35, *(v35 + 8));
      }

      else
      {
        v36 = *v35;
        v59.__r_.__value_.__r.__words[2] = *(v35 + 16);
        *&v59.__r_.__value_.__l.__data_ = v36;
      }
    }

    if (v11)
    {
      sub_29A014BEC(v11);
    }

    size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
    if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v59.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_CreateIdentifier(&v59.__r_.__value_.__l.__data_, a3, &__dst);
    }

    else
    {
      v55 = sub_29B1F31FC();
      if (*(v55 + 23) < 0)
      {
        sub_29A008D14(&__dst, *v55, *(v55 + 1));
      }

      else
      {
        v56 = *v55;
        __dst.__r_.__value_.__r.__words[2] = *(v55 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v56;
      }
    }

    std::string::operator=(&v61, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_95:
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_26:
    operator delete(v59.__r_.__value_.__l.__data_);
  }

LABEL_42:
  v29 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v61.__r_.__value_.__l.__size_;
  }

  if (v29)
  {
    v30 = &v61;
    if ((*(&v61.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_46:
      v31 = *v30;
      *(a4 + 16) = v30[2];
      *a4 = v31;
      goto LABEL_49;
    }
  }

  else
  {
    v30 = sub_29B1F31FC();
    if ((*(v30 + 23) & 0x80) == 0)
    {
      goto LABEL_46;
    }
  }

  sub_29A008D14(a4, *v30, v30[1]);
LABEL_49:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_29AE1F2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (*(v39 - 73) < 0)
  {
    operator delete(*(v39 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (*(v39 - 121) < 0)
  {
    operator delete(*(v39 - 144));
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::HdStBasisCurves::HdStBasisCurves(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurves::HdBasisCurves(this, a2);
  *v2 = &unk_2A2095930;
  *(v2 + 232) = 0;
  result = 0.0;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) &= 0xF8u;
  return result;
}

{
  v2 = pxrInternal__aapl__pxrReserved__::HdBasisCurves::HdBasisCurves(this, a2);
  *v2 = &unk_2A2095930;
  *(v2 + 232) = 0;
  result = 0.0;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 504) &= 0xF8u;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::~HdStBasisCurves(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdBasisCurves::~HdBasisCurves(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStBasisCurves::~HdStBasisCurves(this);

  free(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::Sync(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(this, a2, a4);
  v11 = *a4;
  v12 = *a4 & 0x80;
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(a2, a3, this, v10);
    v11 = *a4;
  }

  v13 = v11 & 0x800010 | v12;
  v14 = *(this + 504);
  pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(this, a2, a3, a5, a4);
  if (v13 || !pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL(this + 4) && ((*(this + 504) ^ v14) & 1) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateMaterialTagsForAllReprs(this, a2, a3);
  }

  if ((v11 & 0x800190) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateShadersForAllReprs(this, a2, a3, (v11 & 0x800080) != 0, 1);
  }

  *a4 &= 0xFF800000;
}

__guard *pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  sub_29A0ECEEC(&v20, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateRepr(HdSceneDelegate *, HdRenderParam *, const TfToken &, HdDirtyBits *)");
  result = pxrInternal__aapl__pxrReserved__::HdRprim::_GetRepr(this, a4);
  v11 = result;
  if (*result)
  {
    *a5 &= *(this + 124) | 0xFFFFFF;
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
      v15 = *a4 & 0xFFFFFFFFFFFFFFF8;
      if (v15)
      {
        v16 = (v15 + 16);
        if (*(v15 + 39) < 0)
        {
          v16 = *v16;
        }
      }

      else
      {
        v16 = "";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStBasisCurves::_UpdateRepr for %s : Repr = %s\n", v13, v14, Text, v16);
      pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(*a5);
    }

    result = pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(a4, &v18);
    v17 = *a5;
    if (v18 && (v17 & 0xFFFFFFFD) != 0)
    {
      result = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(this, a2, a3, ***v11, a5, &v18);
      v17 = *a5;
    }

    *a5 = v17 & 0xFF7FFFFF;
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  if (v20)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v21, v20);
  }

  return result;
}

void sub_29AE1F714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((a5 & 7) != 0)
  {
    atomic_fetch_add_explicit((a5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateMaterialTagsForAllReprs(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating material tags for draw items of all reprs.\n", v7, v8, Text);
  }

  v9 = *(this + 55);
  for (i = *(this + 56); v9 != i; v9 = (v9 + 24))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(v9, &v13);
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v13)
    {
      pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a2, a3, **v11, (this + 16), (*(this + 504) & 1), (*(this + 504) >> 1) & 1);
    }

    if (v12)
    {
      sub_29A014BEC(v12);
    }

    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AE1F854(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29B294B14((v2 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateShadersForAllReprs(pxrInternal__aapl__pxrReserved__::HdBasisCurves **this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, int a4, int a5)
{
  if (sub_29ABCF8C0(26))
  {
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 47));
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("(%s) - Updating geometric and material shaders for draw items of all reprs.\n", v11, v12, Text);
  }

  if (a4)
  {
    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(this, a2, v8, v9);
  }

  (*(*a2 + 112))(a2, this + 376);
  v15 = this[55];
  v14 = this[56];
  v29 = this;
  if (v15 != v14)
  {
    v16 = v13;
    v28 = a2;
    v17 = 0;
    v18 = v13 & 1;
    do
    {
      pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(v15, &v32);
      v20 = *(v15 + 1);
      v21 = *(v15 + 2);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v32)
      {
        v22 = *v20;
        v23 = *v22;
        v24 = *(*v22 + 72);
        *(*v22 + 72) = v18;
        v17 |= v16 ^ v24;
        if (a5)
        {
          pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItemGeometricShader(v29, v28, a3, v23, &v32);
        }
      }

      if (v21)
      {
        sub_29A014BEC(v21);
      }

      if ((v33 & 7) != 0)
      {
        atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v15 = (v15 + 24);
    }

    while (v15 != v14);
    if (v17)
    {
      pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a3, v19);
      if (sub_29ABCF8C0(26))
      {
        v25 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((v29 + 376));
        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Marking all batches dirty to trigger deep validation because the materialIsFinal was updated.\n", v26, v27, v25);
      }
    }
  }
}

void sub_29AE1FA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::Finalize(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, a2);
  v4 = *(this + 55);
  for (i = *(this + 56); v4 != i; v4 = (v4 + 24))
  {
    pxrInternal__aapl__pxrReserved__::HdBasisCurves::_GetReprDesc(v4, &v8);
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (**v6 + 32));
    }

    if (v7)
    {
      sub_29A014BEC(v7);
    }

    if ((v9 & 7) != 0)
    {
      atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, (this + 432));
}

void sub_29AE1FB7C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  sub_29B294B14((v2 + 8));
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(_BYTE *a1, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, _DWORD *a6)
{
  sub_29A0ECEEC(&v31, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)");
  v14 = *a5;
  if ((v14 & 0x800000) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v14, (a1 + 376), v12))
  {
    pxrInternal__aapl__pxrReserved__::HdStGetMaterialNetworkShader(a1, a2, v12, v13);
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(*a5, (a1 + 376), v12))
  {
    a1[504] &= ~1u;
  }

  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateInstancer(a1, a2, a5);
  pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(a2[1], a3, a1, a4, (a1 + 32), *a5);
  v17 = a1[504];
  if (v17)
  {
    IsInstancePrimvarExistentAndValid = 1;
  }

  else
  {
    v19 = a2[1];
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    IsInstancePrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsInstancePrimvarExistentAndValid(v19, a1, (v20 + 160), v16);
    v17 = a1[504];
  }

  a1[504] = v17 & 0xFE | IsInstancePrimvarExistentAndValid;
  if (pxrInternal__aapl__pxrReserved__::HdStShouldPopulateConstantPrimvars(a5, (a1 + 376), v15))
  {
    v29 = 0;
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(a1, a4, a2, 0, &v29, 0, 0, 0, v27);
    if (v30)
    {
      sub_29A014BEC(v30);
    }

    pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(a1, (a1 + 32), a2, a3, a4, a5, v27, 0);
    v22 = a1[504];
    if (v22)
    {
      IsPrimvarExistentAndValid = 1;
    }

    else
    {
      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v24)
      {
        v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      IsPrimvarExistentAndValid = pxrInternal__aapl__pxrReserved__::HdStIsPrimvarExistentAndValid(a1, a2, v27, v24 + 20);
      v22 = a1[504];
    }

    a1[504] = v22 & 0xFE | IsPrimvarExistentAndValid;
    v29 = v27;
    sub_29ABEE9FC(&v29);
  }

  v25 = *a5;
  if ((v25 & 0x7000110) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(a1, a2, a3, a4, a5, a6);
    v25 = *a5;
  }

  if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsAnyPrimvarDirty(v25, (a1 + 376), v21))
  {
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(a1, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(a1, a2, a3, a4, a5);
    pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(a1, a2, a3, a4, a5);
  }

  *a5 &= 0xFF800000;
  result = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 12));
  if (!*result)
  {
    v27[0] = "hdSt/basisCurves.cpp";
    v27[1] = "_UpdateDrawItem";
    v27[2] = 238;
    v27[3] = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
    v28 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v27, "drawItem->GetConstantPrimvarRange()", 0);
  }

  if (v31)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }

  return result;
}

void sub_29AE1FEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, unsigned int *a5, _DWORD *a6)
{
  sub_29A0ECEEC(&v71, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v56, a2[1]);
  v69 = v56;
  v70 = v57;
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v57)
    {
      sub_29A014BEC(v57);
    }
  }

  v13 = *a5;
  if ((v13 & 0x10) != 0)
  {
    v14 = (*(*a2 + 14))(a2, a1 + 376);
    *(a1 + 500) = v14;
    *(a1 + 504) = (v14 >> 54) & 4 | (v14 >> 47) & 2 | *(a1 + 504) & 0xF9;
    v13 = *a5;
  }

  IsTopologyDirty = pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsTopologyDirty(v13, (a1 + 376), v12);
  if ((IsTopologyDirty & 1) != 0 || pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsDisplayStyleDirty(*a5, (a1 + 376), v15))
  {
    (*(*a2 + 6))(&v56, a2, a1 + 376);
    if (IsTopologyDirty)
    {
      v53 = v65;
      v54 = v66;
      v17 = v68;
      v55 = v67;
      if (v67)
      {
        v18 = (v67 - 16);
        if (*(&v54 + 1))
        {
          v18 = *(&v54 + 1);
        }

        atomic_fetch_add_explicit(v18, 1uLL, memory_order_relaxed);
      }

      v19 = v60;
      v50 = v62;
      v51 = v63;
      v52 = v64;
      if (v64)
      {
        v20 = (v64 - 16);
        if (*(&v51 + 1))
        {
          v20 = *(&v51 + 1);
        }

        atomic_fetch_add_explicit(v20, 1uLL, memory_order_relaxed);
      }

      pxrInternal__aapl__pxrReserved__::HdStProcessTopologyVisibility(&v53, v19, &v50, v17, a1 + 32, a4);
      pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
    }

    v21 = (*(v56 + 2))(&v56);
    *(a1 + 488) = v21;
    LOBYTE(v37) = *(a1 + 500) > 0;
    v22 = pxrInternal__aapl__pxrReserved__::ArchHash64(&v37, 1, v21);
    *(a1 + 488) = v22;
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesTopology(v69, v22, &v44);
    if (v49 == 1)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::New(&v56, &v39);
      sub_29AE22678(&v44, &v39);
      if (v40)
      {
        sub_29A014BEC(v40);
      }
    }

    v23 = v45;
    v24 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v25 = *(a1 + 480);
    *(a1 + 472) = v23;
    *(a1 + 480) = v24;
    if (v25)
    {
      sub_29A014BEC(v25);
      v23 = *(a1 + 472);
    }

    if (!v23)
    {
      v39 = "hdSt/basisCurves.cpp";
      v40 = "_PopulateTopology";
      v41 = 667;
      v42 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
      v43 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v39, "_topology", 0);
    }

    if (sub_29ABCF8C0(27) && (pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::operator==(&v56, *(a1 + 472)) & 1) == 0)
    {
      v39 = "hdSt/basisCurves.cpp";
      v40 = "_PopulateTopology";
      v41 = 671;
      v42 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateTopology(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *, const HdBasisCurvesReprDesc &)";
      v43 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v39, "srcTopology == *_topology", 0);
    }

    if (v48 == 1)
    {
      std::mutex::unlock(v47);
    }

    if (v46)
    {
      sub_29A014BEC(v46);
    }

    pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(&v56);
  }

  v38 = 0;
  v26 = *(a4 + 8);
  v27 = *a5;
  if (v26 == 9)
  {
    if ((v27 & 0x4000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v27 & 0xFBFFFFFF;
    v30 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v30)
    {
      v30 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v29 = (v30 + 480);
  }

  else if (v26 == 8)
  {
    if ((v27 & 0x2000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v27 & 0xFDFFFFFF;
    v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v28)
    {
      v28 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v29 = (v28 + 304);
  }

  else
  {
    if ((v27 & 0x1000000) == 0)
    {
      goto LABEL_68;
    }

    *a5 = v27 & 0xFEFFFFFF;
    v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v31)
    {
      v31 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v29 = (v31 + 312);
  }

  sub_29A166F2C(&v38, v29);
  pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::RegisterBasisCurvesIndexRange(v69, &v38, *(a1 + 488), &v56);
  if (v61 == 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    if (*a6 == 3)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::GetPointsIndexBuilderComputation(*(a1 + 472), &v37);
    }

    v32 = *(a1 + 472);
    v33 = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(a1, *(a1 + 500));
    pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesTopology::GetIndexBuilderComputation(v32, !v33, &v37);
    sub_29A01729C(&v44, &v37);
    if (*(&v37 + 1))
    {
      sub_29A014BEC(*(&v37 + 1));
    }

    sub_29AE22748(&v44, &v39);
    if (*pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 8)))
    {
      v34 = 42;
    }

    else
    {
      v34 = 40;
    }

    v35 = v69;
    v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v36)
    {
      v36 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v35, v36 + 616, &v39, v34, &v37);
    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v69, &v37, &v44);
    sub_29AE227C0(&v56, &v37);
    if (*(&v37 + 1))
    {
      sub_29A014BEC(*(&v37 + 1));
    }

    *&v37 = &v39;
    sub_29ABC6FA0(&v37);
    v39 = &v44;
    sub_29A0176E4(&v39);
  }

  pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v57, *(a4 + 8), (a1 + 32), a3);
  if (v60 == 1)
  {
    std::mutex::unlock(v59);
  }

  if (v58)
  {
    sub_29A014BEC(v58);
  }

  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_68:
  if (v70)
  {
    sub_29A014BEC(v70);
  }

  if (v71)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v72, v71);
  }
}

void sub_29AE204F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_29ADCA62C(&a20);
  pxrInternal__aapl__pxrReserved__::HdBasisCurvesTopology::~HdBasisCurvesTopology(&a38);
  v40 = *(v38 - 120);
  if (v40)
  {
    sub_29A014BEC(v40);
  }

  sub_29A0E9CEC(v38 - 112);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v54 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v48, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&i, a2[1]);
  v10 = i;
  if (*(&i + 1))
  {
    atomic_fetch_add_explicit((*(&i + 1) + 8), 1uLL, memory_order_relaxed);
    if (*(&i + 1))
    {
      sub_29A014BEC(*(&i + 1));
    }
  }

  i = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 3, &i, 0, 0, 0, &v46);
  if (*(&i + 1))
  {
    sub_29A014BEC(*(&i + 1));
  }

  (*(*a2 + 46))(v45, a2, this + 376, 3);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  memset(v41, 0, sizeof(v41));
  v39 = 0uLL;
  v40 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  sub_29A039314(&v42, (v47 - v46) >> 5);
  pxrInternal__aapl__pxrReserved__::HdSt_GetExtComputationPrimvarsComputations(this + 376, a2, v45, *a5, &v42, v41, &v39, &v36);
  v13 = v46;
  v12 = v47;
  if (v46 != v47)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), v13, v11))
      {
        if (*(this + 59))
        {
          (*(*a2 + 15))(&i, a2, this + 376, v13);
          if (*(&i + 1))
          {
            v14 = *(this + 60);
            v35[0] = *(this + 59);
            v35[1] = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_29AE22890((this + 376), v13, 3, &i, v35, &v42);
            if (v14)
            {
              sub_29A014BEC(v14);
            }

            v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v15)
            {
              v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            if ((*(v15 + 20) ^ *v13) <= 7)
            {
              *(this + 504) |= 1u;
            }
          }

          sub_29A186B14(&i);
        }

        else
        {
          v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v16)
          {
            v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v16 + 59) ^ *v13) <= 7)
          {
            *&i = "hdSt/basisCurves.cpp";
            *(&i + 1) = "_PopulateVertexPrimvars";
            v51 = 880;
            v52 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)";
            v53 = 0;
            Name = pxrInternal__aapl__pxrReserved__::SdfPath::GetName((this + 376));
            if (*(Name + 23) >= 0)
            {
              v18 = Name;
            }

            else
            {
              v18 = *Name;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&i, 1, "No topology set for BasisCurve %s", v18);
            break;
          }
        }
      }

      v13 += 4;
    }

    while (v13 != v12);
  }

  v19 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v42, &v36, v19, *a5) & 1) == 0)
  {
    v20 = *a5;
    v33 = 0uLL;
    v34 = 0;
    if ((v20 & 0x40) != 0)
    {
      i = 0uLL;
      v51 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v19, &v46, v45, &i, (this + 376), &v31);
      sub_29AC1F70C(&v33);
      v33 = v31;
      v34 = v32;
      v32 = 0;
      v31 = 0uLL;
      v29 = &v31;
      sub_29ABC6FA0(&v29);
      *&v31 = &i;
      sub_29A124AB0(&v31);
    }

    v31 = 0uLL;
    v32 = 0;
    sub_29AE22748(&v42, &v31);
    sub_29AE22748(v41, &v31);
    pxrInternal__aapl__pxrReserved__::HdStGetBufferSpecsFromCompuations(&v36, &v31);
    v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v21)
    {
      v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v10, v21 + 520, v19, &v31, &v33, 0x10u, &v29);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v29, *(a4 + 13), (this + 32), a3);
    if (v42 == v43 && v36 == v37 || (v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13)), ((*(**v22 + 16))(*v22) & 1) != 0) || (*&i = "hdSt/basisCurves.cpp", *(&i + 1) = "_PopulateVertexPrimvars", v51 = 934, v52 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVertexPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v53 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&i, "drawItem->GetVertexPrimvarRange()->IsValid()", 0) & 1) != 0))
    {
      if (v42 != v43)
      {
        v23 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v10, v23, &v42);
      }

      v25 = v36;
      v24 = v37;
      while (v25 != v24)
      {
        v26 = *(v25 + 16);
        v27 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 13));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddComputation(v10, v27, v25, v26);
        v25 += 24;
      }

      if (v39 != *(&v39 + 1))
      {
        for (i = v39; i != *(&i + 1); sub_29AE23894(&i))
        {
          v28 = sub_29AE23864(&i);
          pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSource(v10, v28);
        }
      }
    }

    if (v30)
    {
      sub_29A014BEC(v30);
    }

    *&i = &v31;
    sub_29ABC6FA0(&i);
    *&i = &v33;
    sub_29ABC6FA0(&i);
  }

  *&i = &v36;
  sub_29A03CE34(&i);
  *&i = &v39;
  sub_29A0176E4(&i);
  *&i = v41;
  sub_29A0176E4(&i);
  *&i = &v42;
  sub_29A0176E4(&i);
  *&i = v45;
  sub_29ABF15A8(&i);
  *&i = &v46;
  sub_29ABEE9FC(&i);
  if (*(&v10 + 1))
  {
    sub_29A014BEC(*(&v10 + 1));
  }

  if (v48)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v49, v48);
  }
}

void sub_29AE20C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void ********a13, std::__shared_weak_count *a14, void *******a15, uint64_t a16, uint64_t a17, uint64_t a18, void ******a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *****a24, uint64_t a25, uint64_t a26, void ****a27, uint64_t a28, uint64_t a29, uint64_t a30, void ***a31, uint64_t a32, uint64_t a33, void **a34)
{
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  a13 = &a15;
  sub_29ABC6FA0(&a13);
  a15 = &a19;
  sub_29ABC6FA0(&a15);
  a19 = &a24;
  sub_29A03CE34(&a19);
  a24 = &a27;
  sub_29A0176E4(&a24);
  a27 = &a31;
  sub_29A0176E4(&a27);
  a31 = &a34;
  sub_29A0176E4(&a31);
  a34 = (v34 - 208);
  sub_29ABF15A8(&a34);
  *(v34 - 208) = v34 - 184;
  sub_29ABEE9FC((v34 - 208));
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  sub_29A0E9CEC(v34 - 160);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v43 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v36, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v38, a2[1]);
  v10 = v39;
  v23 = v38;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v39)
    {
      sub_29A014BEC(v39);
    }
  }

  v38 = 0;
  v39 = 0;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 2, &v38, 0, 0, 0, &v34);
  if (v39)
  {
    sub_29A014BEC(v39);
  }

  *(this + 232) = 257;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_29A039314(&v31, (v35 - v34) >> 5);
  v13 = v34;
  v12 = v35;
  if (v34 != v35)
  {
    do
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v14)
      {
        v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v14 + 84) ^ *v13) > 7)
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v15)
        {
          v15 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        if ((*(v15 + 54) ^ *v13) <= 7)
        {
          *(this + 465) = 0;
        }
      }

      else
      {
        *(this + 464) = 0;
      }

      if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), v13, v11))
      {
        (*(*a2 + 15))(&v38, a2, this + 376, v13);
        if (v39)
        {
          v16 = *(this + 60);
          v30[0] = *(this + 59);
          v30[1] = v16;
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_29AE22890((this + 376), v13, 2, &v38, v30, &v31);
          if (v16)
          {
            sub_29A014BEC(v16);
          }

          v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v17)
          {
            v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          if ((*(v17 + 20) ^ *v13) <= 7)
          {
            *(this + 504) |= 1u;
          }
        }

        sub_29A186B14(&v38);
      }

      v13 += 4;
    }

    while (v13 != v12);
  }

  v18 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v31, v18, *a5) & 1) == 0)
  {
    v19 = *a5;
    v28 = 0uLL;
    v29 = 0;
    if ((v19 & 0x40) != 0)
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v18, &v34, &v38, (this + 376), &v26);
      sub_29AC1F70C(&v28);
      v28 = v26;
      v29 = v27;
      v27 = 0;
      v26 = 0uLL;
      v24 = &v26;
      sub_29ABC6FA0(&v24);
      *&v26 = &v38;
      sub_29A124AB0(&v26);
    }

    v26 = 0uLL;
    v27 = 0;
    sub_29AE22748(&v31, &v26);
    v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v20)
    {
      v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v23, v20 + 520, v18, &v26, &v28, 8u, &v24);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v24, *(a4 + 18), (this + 32), a3);
    if (v31 != v32)
    {
      v21 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
      if ((*(**v21 + 16))(*v21) & 1) != 0 || (v38 = "hdSt/basisCurves.cpp", v39 = "_PopulateVaryingPrimvars", v40 = 1046, v41 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateVaryingPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v42 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v38, "drawItem->GetVaryingPrimvarRange()->IsValid()", 0)))
      {
        v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 18));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v23, v22, &v31);
      }
    }

    if (v25)
    {
      sub_29A014BEC(v25);
    }

    v38 = &v26;
    sub_29ABC6FA0(&v38);
    v38 = &v28;
    sub_29ABC6FA0(&v38);
  }

  v38 = &v31;
  sub_29A0176E4(&v38);
  v38 = &v34;
  sub_29ABEE9FC(&v38);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if (v36)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v37, v36);
  }
}

void sub_29AE21228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *****a11, std::__shared_weak_count *a12, void ****a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  a11 = &a13;
  sub_29ABC6FA0(&a11);
  a13 = &a17;
  sub_29ABC6FA0(&a13);
  a17 = &a22;
  sub_29A0176E4(&a17);
  a22 = &a25;
  sub_29ABEE9FC(&a22);
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A0E9CEC(&a28);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(pxrInternal__aapl__pxrReserved__::HdStBasisCurves *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer **a4, unsigned int *a5)
{
  v49 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v45, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v35, a2[1]);
  v10 = v35.n128_u64[1];
  v31 = v35.n128_u64[0];
  if (v35.n128_u64[1])
  {
    atomic_fetch_add_explicit((v35.n128_u64[1] + 8), 1uLL, memory_order_relaxed);
    if (v35.n128_u64[1])
    {
      sub_29A014BEC(v35.n128_u64[1]);
    }
  }

  v35 = 0uLL;
  v32 = v10;
  pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 1, &v35, 0, 0, 0, &v43);
  if (v35.n128_u64[1])
  {
    sub_29A014BEC(v35.n128_u64[1]);
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_29A039314(&v40, (v44 - v43) >> 5);
  v12 = *(this + 59);
  v30 = a3;
  if (v12)
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  v15 = v43;
  v14 = v44;
  if (v43 != v44)
  {
    do
    {
      if (pxrInternal__aapl__pxrReserved__::HdChangeTracker::IsPrimvarDirty(*a5, (this + 376), v15, v11))
      {
        (*(*a2 + 15))(&v47, a2, this + 376, v15);
        if (*(&v47 + 1))
        {
          sub_29ADE0EFC(v15, &v47, &v35);
          v39 = v35;
          if ((*(*v35.n128_u64[0] + 64))(v35.n128_u64[0], v35) == v13)
          {
            sub_29A017F80(&v40, &v39);
            v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
            if (!v16)
            {
              v16 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
            }

            if ((*(v16 + 20) ^ *v15) <= 7)
            {
              *(this + 504) |= 1u;
            }
          }

          else
          {
            v35.n128_u64[0] = "hdSt/basisCurves.cpp";
            v35.n128_u64[1] = "_PopulateElementPrimvars";
            v36 = 1092;
            v37 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)";
            v38 = 0;
            Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((this + 376));
            v18 = (*(*v39.n128_u64[0] + 64))(v39.n128_u64[0]);
            v21 = *v15 & 0xFFFFFFFFFFFFFFF8;
            if (v21)
            {
              v22 = (v21 + 16);
              if (*(v21 + 39) < 0)
              {
                v22 = *v22;
              }
            }

            else
            {
              v22 = "";
            }

            pxrInternal__aapl__pxrReserved__::TfStringPrintf("# of curves mismatch (%d != %d) for uniform primvar %s", v19, v20, v18, v13, v22, v30);
            v24 = __p;
            if (v34 < 0)
            {
              v24 = __p[0];
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v35, "Invalid Hydra prim '%s': %s", v23, Text, v24);
            if (SHIBYTE(v34) < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (v39.n128_u64[1])
          {
            sub_29A014BEC(v39.n128_u64[1]);
          }
        }

        sub_29A186B14(&v47);
      }

      v15 = (v15 + 32);
    }

    while (v15 != v14);
  }

  v25 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 14));
  if ((pxrInternal__aapl__pxrReserved__::HdStCanSkipBARAllocationOrUpdate(&v40, v25, *a5) & 1) == 0)
  {
    v26 = *a5;
    __p[0] = 0;
    __p[1] = 0;
    v34 = 0;
    if ((v26 & 0x40) != 0)
    {
      v35 = 0uLL;
      v36 = 0;
      pxrInternal__aapl__pxrReserved__::HdStGetRemovedPrimvarBufferSpecs(v25, &v43, &v35, (this + 376), &v47);
      sub_29AC1F70C(__p);
      *__p = v47;
      v34 = v48;
      v48 = 0;
      v47 = 0uLL;
      v39.n128_u64[0] = &v47;
      sub_29ABC6FA0(&v39);
      *&v47 = &v35;
      sub_29A124AB0(&v47);
    }

    v47 = 0uLL;
    v48 = 0;
    sub_29AE22748(&v40, &v47);
    v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v27)
    {
      v27 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::UpdateNonUniformBufferArrayRange(v31, v27 + 520, v25, &v47, __p, 8u, &v39);
    pxrInternal__aapl__pxrReserved__::HdStUpdateDrawItemBAR(&v39, *(a4 + 14), (this + 32), v30);
    if (v40 != v41)
    {
      v28 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 14));
      if ((*(**v28 + 16))(*v28) & 1) != 0 || (v35.n128_u64[0] = "hdSt/basisCurves.cpp", v35.n128_u64[1] = "_PopulateElementPrimvars", v36 = 1138, v37 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_PopulateElementPrimvars(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)", v38 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v35, "drawItem->GetElementPrimvarRange()->IsValid()", 0)))
      {
        v29 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(a4[3], *(a4 + 14));
        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v31, v29, &v40);
      }
    }

    if (v39.n128_u64[1])
    {
      sub_29A014BEC(v39.n128_u64[1]);
    }

    v35.n128_u64[0] = &v47;
    sub_29ABC6FA0(&v35);
    v35.n128_u64[0] = __p;
    sub_29ABC6FA0(&v35);
  }

  v35.n128_u64[0] = &v40;
  sub_29A0176E4(&v35);
  v35.n128_u64[0] = &v43;
  sub_29ABEE9FC(&v35);
  if (v32)
  {
    sub_29A014BEC(v32);
  }

  if (v45)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v46, v45);
  }
}

void sub_29AE21874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char **__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, char *a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a29)
  {
    sub_29A014BEC(a29);
  }

  a28 = v34 - 128;
  sub_29ABC6FA0(&a28);
  *(v34 - 128) = &__p;
  sub_29ABC6FA0((v34 - 128));
  __p = &a31;
  sub_29A0176E4(&__p);
  a31 = &a34;
  sub_29ABEE9FC(&a31);
  if (a14)
  {
    sub_29A014BEC(a14);
  }

  sub_29A0E9CEC(v34 - 152);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItemGeometricShader(uint64_t a1, pxrInternal__aapl__pxrReserved__::HdRenderIndex **a2, pxrInternal__aapl__pxrReserved__ *a3, uint64_t a4, int *a5)
{
  v84 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 472) && (sub_29B2C9D80(v73) & 1) == 0)
  {
    return;
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(&v79, a2[1]);
  v71 = v79;
  v72 = v80;
  if (v80)
  {
    atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v80)
    {
      sub_29A014BEC(v80);
    }
  }

  v10 = *(*(a1 + 472) + 8);
  v70 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v70 = v11;
    }
  }

  v12 = *(*(a1 + 472) + 16);
  v69 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v69 = v13;
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(a1, *(a1 + 500)))
  {
    if (sub_29ABCF8C0(26))
    {
      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStBasisCurves(%s) - Downcasting curve type to linear because refinement is disabled.\n", v15, v16, Text);
    }

    v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v17)
    {
      v17 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    sub_29A166F2C(&v70, v17 + 44);
    if ((v69 & 7) != 0)
    {
      atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v69 = 0;
  }

  v18 = *a5;
  if (*a5 == 3)
  {
    v23 = 0;
    v22 = 1;
  }

  else
  {
    if (v18 == 2)
    {
      v20 = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsRefinement(a1, *(a1 + 500));
      if (v20)
      {
        v21 = pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsUserWidths(v20, a4);
        if (v21)
        {
          if (pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_SupportsUserNormals(v21, a4))
          {
            v22 = 0;
          }

          else
          {
            v61 = *(a1 + 500);
            if (v61 > 2)
            {
              v23 = 3;
              v22 = 2;
              goto LABEL_29;
            }

            if (v61 == 2)
            {
              v22 = 2;
            }

            else
            {
              v22 = 1;
            }
          }

          v23 = 2;
          goto LABEL_29;
        }
      }
    }

    else if (v18 != 1)
    {
      v79 = "hdSt/basisCurves.cpp";
      v80 = "_UpdateDrawItemGeometricShader";
      v81 = 332;
      v82 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItemGeometricShader(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, const HdBasisCurvesReprDesc &)";
      v83 = 0;
      v19 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v79, 1, "Invalid geomstyle in basis curve %s repr desc.", v19);
    }

    v22 = 1;
    v23 = 1;
  }

LABEL_29:
  if (sub_29ABCF8C0(26))
  {
    v24 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
    v25 = v70 & 0xFFFFFFFFFFFFFFF8;
    if ((v70 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v26 = (v25 + 16);
      if (*(v25 + 39) < 0)
      {
        v26 = *v26;
      }
    }

    else
    {
      v26 = "";
    }

    v63 = a2;
    v64 = a4;
    v27 = v69 & 0xFFFFFFFFFFFFFFF8;
    v62 = a5;
    if ((v69 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v28 = (v27 + 16);
      v29 = v24;
      if (*(v27 + 39) < 0)
      {
        v28 = *v28;
      }
    }

    else
    {
      v29 = v24;
      v28 = "";
    }

    v30 = a3;
    v31 = v23;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2092A70, v23, &v79);
    v32 = SHIBYTE(v81);
    v33 = v79;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2092A80, v22, &__p);
    v36 = &v79;
    if (v32 < 0)
    {
      v36 = v33;
    }

    if (v76 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v38 = "linear widths";
    if (*(a1 + 464))
    {
      v38 = "basis widths";
    }

    if (*(a1 + 465))
    {
      v39 = "basis normals";
    }

    else
    {
      v39 = "linear normals";
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStBasisCurves(%s) - Building shader with keys: %s, %s, %s, %s, %s, %s\n", v34, v35, v29, v26, v28, v36, p_p, v38, v39);
    a3 = v30;
    v23 = v31;
    if (SHIBYTE(v76) < 0)
    {
      operator delete(__p);
    }

    a5 = v62;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v79);
    }

    a2 = v63;
    a4 = v64;
  }

  v40 = *pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 24), *(a4 + 17));
  v41 = *(a5 + 1);
  v68 = v41;
  if ((v41 & 7) != 0 && (atomic_fetch_add_explicit((v41 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v68 &= 0xFFFFFFFFFFFFFFF8;
  }

  v42 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  if (!v42)
  {
    v42 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
  }

  if ((*v42 ^ v68) <= 7)
  {
    (*(*a2 + 13))(&v79, a2, a1 + 376);
    v65 = 0;
    sub_29A4406A4(&v79, &v65, &__p);
    if ((v65 & 7) != 0)
    {
      atomic_fetch_add_explicit((v65 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    sub_29A186B14(&v79);
    v43 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    if (!v43)
    {
      v43 = sub_29ADC7B78(&pxrInternal__aapl__pxrReserved__::HdStTokens);
    }

    v44 = __p;
    if ((*v43 ^ __p) <= 7)
    {
      v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
      if (!v45)
      {
        v45 = sub_29ABC2BDC(&pxrInternal__aapl__pxrReserved__::HdBasisCurvesReprDescTokens);
      }

      sub_29A166F2C(&v68, v45 + 1);
      v44 = __p;
    }

    if ((v44 & 7) != 0)
    {
      atomic_fetch_add_explicit((v44 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(v71);
  v47 = *((*(*Hgi + 200))(Hgi) + 48);
  v48 = *(a1 + 464);
  v49 = *(a1 + 465);
  v67 = v68;
  if ((v68 & 7) != 0 && (atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v67 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesShaderKey::HdSt_BasisCurvesShaderKey(&v79, &v70, &v69, v23, v22, v48, v49, &v67, v40 != 0, (*(a1 + 504) & 4) != 0, (v47 & 0x4000) != 0);
  if ((v67 & 7) != 0)
  {
    atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (sub_29ABCF8C0(26))
  {
    v52 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
    if (v80 >= 4)
    {
      __p = "hdSt/basisCurves.cpp";
      v75 = "HdSt_PrimTypeToString";
      v76 = 254;
      v77 = "const char *pxrInternal__aapl__pxrReserved__::HdSt_PrimTypeToString(HdSt_GeometricShader::PrimitiveType)";
      v78 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__p, "Unknown type", v51);
      v53 = "unknown";
    }

    else
    {
      v53 = off_29F296BA0[v80];
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("HdStBasisCurves(%s) - Shader Key PrimType: %s\n ", v50, v51, v52, v53);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::Create(&v79, &v71, &v65);
  v55 = v65;
  if (!v65)
  {
    __p = "hdSt/basisCurves.cpp";
    v75 = "_UpdateDrawItemGeometricShader";
    v76 = 380;
    v77 = "void pxrInternal__aapl__pxrReserved__::HdStBasisCurves::_UpdateDrawItemGeometricShader(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, const HdBasisCurvesReprDesc &)";
    v78 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "geomShader", 0);
    v55 = v65;
  }

  if (v55 != *(a4 + 40))
  {
    v56 = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = *(a4 + 48);
    *(a4 + 40) = v55;
    *(a4 + 48) = v56;
    if (v57)
    {
      sub_29A014BEC(v57);
    }

    pxrInternal__aapl__pxrReserved__::HdStMarkDrawBatchesDirty(a3, v54);
    if (sub_29ABCF8C0(26))
    {
      v58 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((a1 + 376));
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("%s: Marking all batches dirty to trigger deep validation because the geometric shader was updated.\n", v59, v60, v58);
    }
  }

  if (v66)
  {
    sub_29A014BEC(v66);
  }

  pxrInternal__aapl__pxrReserved__::HdSt_BasisCurvesShaderKey::~HdSt_BasisCurvesShaderKey(&v79);
  if ((v68 & 7) != 0)
  {
    atomic_fetch_add_explicit((v68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v69 & 7) != 0)
  {
    atomic_fetch_add_explicit((v69 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v70 & 7) != 0)
  {
    atomic_fetch_add_explicit((v70 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v72)
  {
    sub_29A014BEC(v72);
  }
}