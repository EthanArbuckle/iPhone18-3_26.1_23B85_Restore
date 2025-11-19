BOOL adobe::usd::importTransmission(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_transmission");
  v4 = sub_29A01BCCC(a1, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "transmissionFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "transmissionTexture");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v8, (a2 + 1));
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F24D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importVolume(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_volume");
  v4 = sub_29A01BCCC(a1, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "thicknessFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "thicknessTexture");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v8, (a2 + 1));
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "attenuationDistance");
    v9 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v9 - 1) <= 1)
    {
      v10 = *(v9 + 1);
      if (*v9 != 2)
      {
        v10 = *(v9 + 1);
      }

      a2[26] = v10;
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "attenuationColor");
    v11 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v11, (a2 + 27), 3);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F2680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importAdobeClearcoatSpecular(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "ADOBE_materials_clearcoat_specular");
  v4 = sub_29A01BCCC(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "clearcoatIor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatSpecularFactor");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v8 - 1) <= 1)
    {
      v9 = *(v8 + 1);
      if (*v8 != 2)
      {
        v9 = *(v8 + 1);
      }

      a2[1] = v9;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatSpecularTexture");
    v10 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v10, (a2 + 2));
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F2800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importAdobeClearcoatTint(uint64_t a1, uint64_t a2)
{
  sub_29A008E78(__p, "ADOBE_materials_clearcoat_tint");
  v4 = sub_29A01BCCC(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "clearcoatTintFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v6, a2, 3);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "clearcoatTintTexture");
    v7 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v7, a2 + 24);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importDiffuseTransmission(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_diffuse_transmission");
  v4 = sub_29A01BCCC(a1, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (v5 != v4)
  {
    sub_29A008E78(__p, "diffuseTransmissionFactor");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "diffuseTransmissionTexture");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v8, (a2 + 1));
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "diffuseTransmissionColorTexture");
    v9 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readTextureInfo(v9, (a2 + 26));
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "diffuseTransmissionColorFactor");
    v10 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v10, (a2 + 51), 3);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v5 != v4;
}

void sub_29A9F2A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importSubsurface(uint64_t a1, double *a2)
{
  sub_29A008E78(__p, "KHR_materials_subsurface");
  v4 = sub_29A01BCCC(a1, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = a1 + 8;
  if (a1 + 8 == v4)
  {
    sub_29A008E78(__p, "KHR_materials_sss");
    v4 = sub_29A01BCCC(a1, __p);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != v5)
  {
    sub_29A008E78(__p, "scatterDistance");
    v6 = sub_29A9DD81C(v4 + 56, __p);
    if ((*v6 - 1) <= 1)
    {
      v7 = *(v6 + 1);
      if (*v6 != 2)
      {
        v7 = *(v6 + 1);
      }

      *a2 = v7;
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    sub_29A008E78(__p, "scatterColor");
    v8 = sub_29A9DD81C(v4 + 56, __p);
    adobe::usd::readDoubleArray(v8, (a2 + 1), 3);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v4 != v5;
}

void sub_29A9F2C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL adobe::usd::importUnlit(uint64_t a1)
{
  sub_29A008E78(__p, "KHR_materials_unlit");
  v2 = sub_29A01BCCC(a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1 + 8 != v2;
}

void sub_29A9F2C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::importMaterials(uint64_t a1)
{
  v1 = a1;
  v341 = *MEMORY[0x29EDCA608];
  memset(v249, 0, sizeof(v249));
  v250 = 1065353216;
  memset(v247, 0, sizeof(v247));
  v248 = 1065353216;
  sub_29A9F53C0((*(a1 + 16) + 304), 0x8F5C28F5C28F5C29 * ((*(*(a1 + 8) + 104) - *(*(a1 + 8) + 96)) >> 6));
  v2 = *(*(v1 + 8) + 96);
  if (*(*(v1 + 8) + 104) != v2)
  {
    v3 = 0;
    v165 = v1;
    do
    {
      __val = v3;
      v4 = v2 + 1600 * v3;
      v5 = *(*(v1 + 16) + 304);
      if (*(v4 + 23) < 0)
      {
        v8 = *(v4 + 8);
        if (v8)
        {
          sub_29A008D14(__str, *v4, v8);
          v6 = 0;
          goto LABEL_9;
        }
      }

      else if (*(v4 + 23))
      {
        v6 = 0;
        v7 = *v4;
        *&__str[16] = *(v4 + 16);
        *__str = v7;
        goto LABEL_9;
      }

      std::to_string(&v246, v3);
      v9 = std::string::insert(&v246, 0, "Material");
      v10 = *&v9->__r_.__value_.__l.__data_;
      *&__str[16] = *(&v9->__r_.__value_.__l + 2);
      *__str = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v6 = 1;
LABEL_9:
      v11 = v5 + 4616 * __val;
      v166 = (v11 + 24);
      std::string::operator=((v11 + 24), __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      else if (!v6)
      {
        goto LABEL_15;
      }

      if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v246.__r_.__value_.__l.__data_);
      }

LABEL_15:
      sub_29A008E78(__str, "KHR_materials_pbrSpecularGlossiness");
      v12 = sub_29A01BCCC(v4 + 1408, __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      if (v4 + 1416 != v12)
      {
        sub_29A008E78(__str, "diffuseFactor");
        v13 = sub_29A9DD81C(v12 + 56, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        sub_29A008E78(__str, "specularFactor");
        v14 = sub_29A9DD81C(v12 + 56, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        sub_29A008E78(__str, "glossinessFactor");
        v15 = sub_29A9DD81C(v12 + 56, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        sub_29A008E78(__str, "diffuseTexture");
        v16 = sub_29A9DD81C(v12 + 56, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        sub_29A008E78(__str, "specularGlossinessTexture");
        v17 = sub_29A9DD81C(v12 + 56, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v318 = xmmword_29B4DAD58;
        *v319 = unk_29B4DAD68;
        if (*v13 == 5)
        {
          adobe::usd::readDoubleArray(v13, &v318, 4);
        }

        *v328 = 0x3FF0000000000000;
        v327 = xmmword_29B4DAD78;
        if (*v14 == 5)
        {
          adobe::usd::readDoubleArray(v14, &v327, 3);
        }

        v18 = 1.0;
        if ((*v15 - 1) <= 1)
        {
          v19 = *(v15 + 1);
          if (*v15 != 2)
          {
            v19 = *(v15 + 1);
          }

          v18 = v19;
        }

        v292.f64[1] = 0.0;
        LODWORD(v293[0]) = -1;
        v293[8] = 0;
        v293[10] = 0;
        v293[12] = 0;
        v295 = 0;
        v297 = 0;
        memset(v293 + 4, 0, 52);
        v268[0] = 0;
        LODWORD(v268[1]) = -1;
        v268[9] = 0;
        v268[11] = 0;
        v269[0] = 0;
        v270 = 0;
        v272[0] = 0;
        memset(&v268[1] + 4, 0, 52);
        v254[0] = 0;
        LODWORD(v254[1]) = -1;
        v254[9] = 0;
        v254[11] = 0;
        v256 = 0;
        v258 = 0;
        v260[0] = 0;
        memset(&v254[1] + 4, 0, 52);
        *__str = vcvt_hight_f32_f64(vcvt_f32_f64(v318), *v319);
        sub_29A3FEAA8(&v292, __str);
        v20 = *v328;
        *__str = vcvt_f32_f64(v327);
        *&__str[8] = v20;
        *&__str[12] = v18;
        sub_29A3FEAA8(&v267, __str);
        *__str = -1;
        *&__str[104] = 0;
        v186 = 0;
        memset(&__str[4], 0, 92);
        *&__str[96] = &__str[104];
        LOBYTE(v187) = 0;
        v189 = 0;
        v190 = 0;
        v188 = &v189;
        memset(v191, 0, 48);
        if (adobe::usd::readTextureInfo(v16, __str))
        {
          v21 = *__str;
          if ((*__str & 0x80000000) == 0)
          {
            sub_29A008E78(__p, "diffuse");
            v22 = adobe::usd::importImage(v165, v21, v166, __p);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }

            v23 = *(v165 + 8);
            v24 = *__str;
            v25 = *&__str[4];
            v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v26)
            {
              v26 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            v27 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v27)
            {
              v27 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            adobe::usd::importTexture(v23, v22, v24, v25, &v292, v26 + 6, v27 + 26);
            adobe::usd::importTextureTransform(v4 + 1408, &v292);
            v28 = v4 + 48;
            if (*(v4 + 71) < 0)
            {
              if (*(v4 + 56) == 5 && **v28 == 1313164354 && *(*v28 + 4) == 68)
              {
                goto LABEL_277;
              }

              if (*(v4 + 56) == 4)
              {
                v28 = *v28;
                goto LABEL_276;
              }
            }

            else
            {
              v29 = *(v4 + 71);
              if (v29 != 4)
              {
                if (v29 != 5)
                {
                  goto LABEL_70;
                }

                if (*v28 != 1313164354 || *(v4 + 52) != 68)
                {
                  goto LABEL_70;
                }

LABEL_277:
                sub_29A1854E8(&v253, &v292);
                v254[1] = v293[0];
                sub_29A166F2C(&v254[2], &v293[1]);
                sub_29A166F2C(&v254[3], &v293[2]);
                sub_29A166F2C(&v254[4], &v293[3]);
                sub_29A166F2C(&v254[5], &v293[4]);
                sub_29A166F2C(&v254[6], &v293[5]);
                sub_29A166F2C(&v254[7], &v293[6]);
                sub_29A1854E8(&v254[8], &v293[7]);
                sub_29A1854E8(&v254[10], &v293[9]);
                sub_29A1854E8(&v255, &v293[11]);
                sub_29A1854E8(&v257, &v294);
                sub_29A1854E8(&v259, &v296);
                v153 = *(v165 + 8);
                v154 = *__str;
                v155 = *&__str[4];
                v156 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
                if (!v156)
                {
                  v156 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
                }

                v157 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
                if (!v157)
                {
                  v157 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
                }

                adobe::usd::importTexture(v153, v22, v154, v155, &v253, v156 + 5, v157 + 25);
                v158.i32[1] = HIDWORD(v319[1]);
                if (*&v319[1] != 1.0)
                {
                  *v158.i32 = *&v319[1];
                  *__p = vdupq_lane_s32(v158, 0);
                  sub_29A3FEAA8(&v254[8], __p);
                }

                goto LABEL_70;
              }

LABEL_276:
              if (*v28 == 1263747405)
              {
                goto LABEL_277;
              }
            }
          }
        }

        else
        {
          *__str = -1;
        }

LABEL_70:
        *__p = -1;
        v222 = 0;
        v223 = 0;
        memset(&__p[4], 0, 92);
        *&__p[96] = &v222;
        LOBYTE(v224) = 0;
        v226 = 0;
        v227 = 0;
        v225 = &v226;
        memset(v228, 0, 48);
        if (adobe::usd::readTextureInfo(v17, __p))
        {
          v42 = *__p;
          v43 = v165;
          if ((*__p & 0x80000000) == 0)
          {
            sub_29A008E78(&v170, "specGloss");
            v44 = adobe::usd::importImage(v165, v42, v166, &v170);
            if (SBYTE11(v172) < 0)
            {
              operator delete(v170);
            }

            v45 = *(v165 + 8);
            v46 = *__p;
            v47 = *&__p[4];
            v48 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v48)
            {
              v48 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            v49 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v49)
            {
              v49 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            adobe::usd::importTexture(v45, v44, v46, v47, &v267, v48 + 6, v49 + 26);
            adobe::usd::importTextureTransform(v4 + 1408, &v267);
          }
        }

        else
        {
          *__p = -1;
          v43 = v165;
        }

        adobe::usd::translateSpecularGlossinessToMetallicRoughness(v43, v249, &v292, &v267, &v253, (v4 + 48), v11 + 208, v11 + 2944, v11 + 1120, v11 + 1272);
        sub_29A9CBEC0(__p);
        sub_29A9CBEC0(__str);
        sub_29A8FAC0C(&v253);
        sub_29A8FAC0C(&v267);
        sub_29A8FAC0C(&v292);
        goto LABEL_216;
      }

      v31 = *(v4 + 136);
      v32 = *(v4 + 352);
      if ((v31 & 0x80000000) != 0)
      {
        v50 = *(v4 + 112);
        if (*(v4 + 120) != v50)
        {
          v51 = v50[1].f64[0];
          *__str = vcvt_f32_f64(*v50);
          *&__str[8] = v51;
          sub_29A3FDE98((v11 + 208), __str);
          v52 = *(*(v4 + 112) + 24);
          v53 = *(v11 + 2952);
          if (v53 && (*(v11 + 2952) & 3) != 3)
          {
            (*((v53 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 2944);
          }

          v54 = v52;
          *(v11 + 2952) = &unk_2A2044C63;
          *(v11 + 2944) = v54;
        }

        goto LABEL_101;
      }

      sub_29A008E78(__str, "diffuse");
      v33 = adobe::usd::importImage(v1, v31, v166, __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v34 = *(v1 + 8);
      v35 = *(v4 + 140);
      v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v36)
      {
        v36 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v37 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v37)
      {
        v37 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::importTexture(v34, v33, v31, v35, v11 + 208, v36 + 6, v37 + 26);
      adobe::usd::importScale3((v11 + 208), *(v4 + 112), v38, 1.0);
      adobe::usd::importTextureTransform(v4 + 264, v11 + 208);
      v39 = v4 + 48;
      if (*(v4 + 71) < 0)
      {
        if (*(v4 + 56) == 5 && **v39 == 1313164354 && *(*v39 + 4) == 68)
        {
LABEL_94:
          v56 = *(v1 + 8);
          v57 = *(v4 + 140);
          v58 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          if (!v58)
          {
            v58 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          }

          v59 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          if (!v59)
          {
            v59 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          }

          adobe::usd::importTexture(v56, v33, v31, v57, v11 + 2944, v58 + 5, v59 + 25);
          v60 = *(*(v4 + 112) + 24);
          if (v60 != 1.0)
          {
            *&v60 = v60;
            *__str = vdupq_lane_s32(*&v60, 0);
            sub_29A3FEAA8((v11 + 3016), __str);
          }

          sub_29A1854E8((v11 + 3048), (v11 + 312));
          sub_29A1854E8((v11 + 3064), (v11 + 328));
          sub_29A1854E8((v11 + 3080), (v11 + 344));
          goto LABEL_101;
        }

        if (*(v4 + 56) == 4)
        {
          v39 = *v39;
LABEL_93:
          if (*v39 == 1263747405)
          {
            goto LABEL_94;
          }
        }
      }

      else
      {
        v40 = *(v4 + 71);
        if (v40 == 4)
        {
          goto LABEL_93;
        }

        if (v40 == 5 && *v39 == 1313164354 && *(v4 + 52) == 68)
        {
          goto LABEL_94;
        }
      }

LABEL_101:
      if ((v32 & 0x80000000) != 0)
      {
        v72 = *(v4 + 336);
        v73 = *(v11 + 1128);
        if (v73 && (*(v11 + 1128) & 3) != 3)
        {
          (*((v73 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 1120);
        }

        v74 = v72;
        *(v11 + 1128) = &unk_2A2044C63;
        *(v11 + 1120) = v74;
        v75 = *(v4 + 344);
        v76 = *(v11 + 1280);
        if (v76 && (*(v11 + 1280) & 3) != 3)
        {
          (*((v76 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 1272);
        }

        v77 = v75;
        *(v11 + 1280) = &unk_2A2044C63;
        *(v11 + 1272) = v77;
      }

      else
      {
        sub_29A008E78(__str, "metallicRoughness");
        v61 = adobe::usd::importImage(v1, v32, v166, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v62 = *(v1 + 8);
        v63 = *(v4 + 356);
        v64 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v64)
        {
          v64 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v65 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v65)
        {
          v65 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importTexture(v62, v61, v32, v63, v11 + 1272, v64 + 3, v65 + 25);
        v66 = *(v1 + 8);
        v67 = *(v4 + 356);
        v68 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v68)
        {
          v68 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v69 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v69)
        {
          v69 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importTexture(v66, v61, v32, v67, v11 + 1120, v68 + 4, v69 + 25);
        v70 = *(v4 + 336);
        if (v70 != 1.0)
        {
          *&v70 = v70;
          *__str = vdupq_lane_s32(*&v70, 0);
          sub_29A3FEAA8((v11 + 1192), __str);
        }

        v71 = *(v4 + 344);
        if (v71 != 1.0)
        {
          *&v71 = v71;
          *__str = vdupq_lane_s32(*&v71, 0);
          sub_29A3FEAA8((v11 + 1344), __str);
        }

        adobe::usd::importTextureTransform(v4 + 480, v11 + 1272);
        sub_29A1854E8((v11 + 1224), (v11 + 1376));
        sub_29A1854E8((v11 + 1240), (v11 + 1392));
        sub_29A1854E8((v11 + 1256), (v11 + 1408));
      }

      *&v245 = 1.5;
      if (adobe::usd::importIor(v4 + 1408, &v245))
      {
        v78 = *&v245;
        v79 = *(v11 + 3560);
        if (v79 && (*(v11 + 3560) & 3) != 3)
        {
          (*((v79 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 3552);
        }

        v80 = v78;
        *(v11 + 3560) = &unk_2A2044C63;
        *(v11 + 3552) = v80;
      }

      *__p = 0x3FF0000000000000;
      *&__p[8] = -1;
      v223 = 0;
      v224 = 0;
      memset(&__p[12], 0, 92);
      v222 = &v223;
      LOBYTE(v225) = 0;
      v227 = 0;
      memset(v228, 0, sizeof(v228));
      v226 = &v227;
      v230 = 0x3FF0000000000000;
      v229 = xmmword_29B4DAD78;
      v231 = -1;
      v238[0] = 0;
      v238[1] = 0;
      v232 = 0u;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      memset(v236, 0, sizeof(v236));
      v237 = v238;
      v239 = 0;
      v241[0] = 0;
      v241[1] = 0;
      v240 = v241;
      v242 = 0u;
      v243 = 0u;
      v244 = 0u;
      if (adobe::usd::importSpecular(v4 + 1408, __p))
      {
        sub_29A008E78(__str, "specularLevel");
        v81 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v81)
        {
          v81 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, __str, v11 + 512, &__p[8], v81 + 5, __p, 1.0);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        sub_29A008E78(__str, "specularColor");
        adobe::usd::importColorInput(v165, v166, __str, (v11 + 664), &v231, &v229, 1.0);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }
      }

      sub_29A008E78(__str, "KHR_materials_anisotropy");
      v82 = sub_29A01BCCC(v4 + 1408, __str);
      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      if (v12 != v82)
      {
        *__str = 0uLL;
        *&__str[16] = -1;
        v187 = 0;
        v188 = 0;
        memset(&__str[20], 0, 92);
        v186 = &v187;
        LOBYTE(v189) = 0;
        memset(v191, 0, sizeof(v191));
        v190 = v191;
        adobe::usd::Image::Image(&v292);
        v83 = (v11 + 1272);
        v84 = 0.0;
        if (sub_29A3F9DF4((v11 + 1272)))
        {
          v85 = *(v11 + 1280);
          if ((v85 & 4) != 0)
          {
            v83 = (*((v85 & 0xFFFFFFFFFFFFFFF8) + 168))(v11 + 1272);
          }

          v84 = *v83;
        }

        if (adobe::usd::importAnisotropyData(v165, v4 + 1408, v82 + 56, v11, __str, &v292, v84))
        {
          adobe::usd::importAnisotropyTexture(v165, v4, v11, __str, &v292, v247, v84);
        }

        adobe::usd::Image::~Image(&v292);
        sub_29A9CBEC0(&__str[16]);
      }

      *__str = 0;
      *&__str[8] = -1;
      v186 = 0;
      v187 = 0;
      memset(&__str[12], 0, 92);
      *&__str[104] = &v186;
      LOBYTE(v188) = 0;
      v190 = 0;
      memset(v191, 0, sizeof(v191));
      v189 = &v190;
      v192 = -1;
      v199[0] = 0;
      v199[1] = 0;
      v193 = 0u;
      v194 = 0u;
      v195 = 0u;
      v196 = 0u;
      memset(v197, 0, sizeof(v197));
      v198 = v199;
      v200 = 0;
      v202[0] = 0;
      v202[1] = 0;
      v201 = v202;
      v203 = 0u;
      v204 = 0u;
      v205 = 0u;
      *&v206[0] = 0xFFFFFFFFLL;
      v214[0] = 0;
      v214[1] = 0;
      v207 = 0u;
      v208 = 0u;
      v209 = 0u;
      v210 = 0u;
      v211 = 0u;
      v212 = 0;
      v206[1] = 1.0;
      v213 = v214;
      v215 = 0;
      v217[0] = 0;
      v217[1] = 0;
      v216 = v217;
      v219 = 0u;
      v220 = 0u;
      v218 = 0u;
      if (adobe::usd::importClearcoat(v4 + 1408, __str))
      {
        sub_29A008E78(&v292, "clearcoat");
        v86 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v86)
        {
          v86 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v292, v11 + 1424, &__str[8], v86 + 2, __str, 0.0);
        if (SHIBYTE(v293[0]) < 0)
        {
          operator delete(*&v292.f64[0]);
        }

        sub_29A008E78(&v292, "clearcoatRoughness");
        v87 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v87)
        {
          v87 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v292, v11 + 1728, &v192, v87 + 3, &v191[7], 0.0);
        if (SHIBYTE(v293[0]) < 0)
        {
          operator delete(*&v292.f64[0]);
        }

        sub_29A008E78(&v292, "clearcoatNormal");
        adobe::usd::importNormalInput(v165, v166, &v292, v11 + 2184, v206);
        if (SHIBYTE(v293[0]) < 0)
        {
          operator delete(*&v292.f64[0]);
        }
      }

      v327 = xmmword_29B4DAD30;
      *v328 = -1;
      v334[0] = 0;
      v334[1] = 0;
      *&v328[4] = 0u;
      v329 = 0u;
      v330 = 0u;
      v331 = 0u;
      memset(v332, 0, sizeof(v332));
      v333 = v334;
      v335 = 0;
      v337[0] = 0;
      v337[1] = 0;
      v336 = v337;
      v338 = 0u;
      v339 = 0u;
      v340 = 0u;
      if (adobe::usd::importAdobeClearcoatSpecular(v4 + 1408, v327.f64))
      {
        v88 = v327.f64[0];
        v89 = *(v11 + 1888);
        if (v89 && (*(v11 + 1888) & 3) != 3)
        {
          (*((v89 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 1880);
        }

        v90 = v88;
        *(v11 + 1888) = &unk_2A2044C63;
        *(v11 + 1880) = v90;
        sub_29A008E78(&v292, "clearcoatSpecular");
        v91 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v91)
        {
          v91 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v292, v11 + 2032, v328, v91 + 4, &v327.f64[1], 1.0);
        if (SHIBYTE(v293[0]) < 0)
        {
          operator delete(*&v292.f64[0]);
        }
      }

      v319[0] = 0x3FF0000000000000;
      v318 = xmmword_29B4DAD78;
      LODWORD(v319[1]) = -1;
      v320[0] = 0;
      v320[1] = 0;
      memset(&v319[1] + 4, 0, 64);
      memset(&v319[9] + 4, 0, 28);
      v319[13] = v320;
      v321 = 0;
      v323[0] = 0;
      v323[1] = 0;
      v322 = v323;
      v325 = 0u;
      v326 = 0u;
      v324 = 0u;
      if (adobe::usd::importAdobeClearcoatTint(v4 + 1408, &v318))
      {
        sub_29A008E78(&v292, "clearcoatColor");
        adobe::usd::importColorInput(v165, v166, &v292, (v11 + 1576), &v319[1], &v318, 1.0);
        if (SHIBYTE(v293[0]) < 0)
        {
          operator delete(*&v292.f64[0]);
        }
      }

      v292 = 0uLL;
      v293[0] = 0;
      LODWORD(v293[1]) = -1;
      v295 = 0;
      v296 = 0;
      memset(&v293[1] + 4, 0, 48);
      memset(&v293[7] + 4, 0, 44);
      v294 = &v295;
      LOBYTE(v297) = 0;
      v299[0] = 0;
      v299[1] = 0;
      v298 = v299;
      v303 = 0.0;
      v301 = 0u;
      v302 = 0u;
      v300 = 0u;
      v304 = -1;
      v311[0] = 0;
      v311[1] = 0;
      v305 = 0u;
      v306 = 0u;
      v307 = 0u;
      v308 = 0u;
      memset(v309, 0, sizeof(v309));
      v310 = v311;
      v312 = 0;
      v314[0] = 0;
      v314[1] = 0;
      v313 = v314;
      v315 = 0u;
      v316 = 0u;
      v317 = 0u;
      if (adobe::usd::importSheen(v4 + 1408, &v292))
      {
        sub_29A008E78(&v267, "sheenColor");
        adobe::usd::importColorInput(v165, v166, &v267, (v11 + 2336), &v293[1], &v292, 0.0);
        if (SHIBYTE(v268[1]) < 0)
        {
          operator delete(v267);
        }

        sub_29A008E78(&v267, "sheenRoughness");
        v92 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v92)
        {
          v92 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v267, v11 + 2488, &v304, v92 + 5, &v303, 0.0);
        if (SHIBYTE(v268[1]) < 0)
        {
          operator delete(v267);
        }
      }

      v170 = 0;
      v171 = -1;
      v178[0] = 0;
      v178[1] = 0;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      memset(v176, 0, sizeof(v176));
      v177 = v178;
      v179 = 0;
      v181[0] = 0;
      v181[1] = 0;
      v180 = v181;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      v93 = adobe::usd::importTransmission(v4 + 1408, &v170);
      v94 = v93;
      if (v93)
      {
        sub_29A008E78(&v267, "transmission");
        v95 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v95)
        {
          v95 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v267, v11 + 3704, &v171, v95 + 2, &v170, 0.0);
        if (SHIBYTE(v268[1]) < 0)
        {
          operator delete(v267);
        }

        if ((*(v11 + 224) & 0x80000000) == 0 || *(v11 + 216))
        {
          if ((*(v11 + 1440) & 0x80000000) == 0 || *(v11 + 1432))
          {
            if (sub_29A9E3F04(0))
            {
              v161 = v11 + 24;
              if (*(v11 + 47) < 0)
              {
                v161 = *v166;
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Can't touch clearcoat lobe to enable transmission tinting on material %s\n", v159, v160, v161);
            }
          }

          else
          {
            sub_29A1854E8((v11 + 1424), (v11 + 3704));
            *(v11 + 1440) = *(v11 + 3720);
            sub_29A166F2C((v11 + 1448), (v11 + 3728));
            sub_29A166F2C((v11 + 1456), (v11 + 3736));
            sub_29A166F2C((v11 + 1464), (v11 + 3744));
            sub_29A166F2C((v11 + 1472), (v11 + 3752));
            sub_29A166F2C((v11 + 1480), (v11 + 3760));
            sub_29A166F2C((v11 + 1488), (v11 + 3768));
            sub_29A1854E8((v11 + 1496), (v11 + 3776));
            sub_29A1854E8((v11 + 1512), (v11 + 3792));
            sub_29A1854E8((v11 + 1528), (v11 + 3808));
            sub_29A1854E8((v11 + 1544), (v11 + 3824));
            sub_29A1854E8((v11 + 1560), (v11 + 3840));
            sub_29A1854E8((v11 + 1728), (v11 + 1272));
            *(v11 + 1744) = *(v11 + 1288);
            sub_29A166F2C((v11 + 1752), (v11 + 1296));
            sub_29A166F2C((v11 + 1760), (v11 + 1304));
            sub_29A166F2C((v11 + 1768), (v11 + 1312));
            sub_29A166F2C((v11 + 1776), (v11 + 1320));
            sub_29A166F2C((v11 + 1784), (v11 + 1328));
            sub_29A166F2C((v11 + 1792), (v11 + 1336));
            sub_29A1854E8((v11 + 1800), (v11 + 1344));
            sub_29A1854E8((v11 + 1816), (v11 + 1360));
            sub_29A1854E8((v11 + 1832), (v11 + 1376));
            sub_29A1854E8((v11 + 1848), (v11 + 1392));
            sub_29A1854E8((v11 + 1864), (v11 + 1408));
            sub_29A1854E8((v11 + 2184), (v11 + 816));
            *(v11 + 2200) = *(v11 + 832);
            sub_29A166F2C((v11 + 2208), (v11 + 840));
            sub_29A166F2C((v11 + 2216), (v11 + 848));
            sub_29A166F2C((v11 + 2224), (v11 + 856));
            sub_29A166F2C((v11 + 2232), (v11 + 864));
            sub_29A166F2C((v11 + 2240), (v11 + 872));
            sub_29A166F2C((v11 + 2248), (v11 + 880));
            sub_29A1854E8((v11 + 2256), (v11 + 888));
            sub_29A1854E8((v11 + 2272), (v11 + 904));
            sub_29A1854E8((v11 + 2288), (v11 + 920));
            sub_29A1854E8((v11 + 2304), (v11 + 936));
            sub_29A1854E8((v11 + 2320), (v11 + 952));
            sub_29A1854E8((v11 + 2032), (v11 + 512));
            *(v11 + 2048) = *(v11 + 528);
            sub_29A166F2C((v11 + 2056), (v11 + 536));
            sub_29A166F2C((v11 + 2064), (v11 + 544));
            sub_29A166F2C((v11 + 2072), (v11 + 552));
            sub_29A166F2C((v11 + 2080), (v11 + 560));
            sub_29A166F2C((v11 + 2088), (v11 + 568));
            sub_29A166F2C((v11 + 2096), (v11 + 576));
            sub_29A1854E8((v11 + 2104), (v11 + 584));
            sub_29A1854E8((v11 + 2120), (v11 + 600));
            sub_29A1854E8((v11 + 2136), (v11 + 616));
            sub_29A1854E8((v11 + 2152), (v11 + 632));
            sub_29A1854E8((v11 + 2168), (v11 + 648));
            sub_29A1854E8((v11 + 1880), (v11 + 3552));
            *(v11 + 1896) = *(v11 + 3568);
            sub_29A166F2C((v11 + 1904), (v11 + 3576));
            sub_29A166F2C((v11 + 1912), (v11 + 3584));
            sub_29A166F2C((v11 + 1920), (v11 + 3592));
            sub_29A166F2C((v11 + 1928), (v11 + 3600));
            sub_29A166F2C((v11 + 1936), (v11 + 3608));
            sub_29A166F2C((v11 + 1944), (v11 + 3616));
            sub_29A1854E8((v11 + 1952), (v11 + 3624));
            sub_29A1854E8((v11 + 1968), (v11 + 3640));
            sub_29A1854E8((v11 + 1984), (v11 + 3656));
            sub_29A1854E8((v11 + 2000), (v11 + 3672));
            sub_29A1854E8((v11 + 2016), (v11 + 3688));
            if ((*(v11 + 1592) & 0x80000000) == 0 || *(v11 + 1584))
            {
              v267 = "usdGltf/gltfImport.cpp";
              v268[0] = "importMaterials";
              v268[1] = 1191;
              v268[2] = "void adobe::usd::importMaterials(ImportGltfContext &)";
              LOBYTE(v268[3]) = 0;
              v162 = v11 + 24;
              if (*(v11 + 47) < 0)
              {
                v162 = *v166;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v267, "Can't map baseColor to clearcoatColor for transmission, since clearcoatColor is in use, for material %s", v98, v162);
            }

            else
            {
              sub_29A1854E8((v11 + 1576), (v11 + 208));
              *(v11 + 1592) = *(v11 + 224);
              sub_29A166F2C((v11 + 1600), (v11 + 232));
              sub_29A166F2C((v11 + 1608), (v11 + 240));
              sub_29A166F2C((v11 + 1616), (v11 + 248));
              sub_29A166F2C((v11 + 1624), (v11 + 256));
              sub_29A166F2C((v11 + 1632), (v11 + 264));
              sub_29A166F2C((v11 + 1640), (v11 + 272));
              sub_29A1854E8((v11 + 1648), (v11 + 280));
              sub_29A1854E8((v11 + 1664), (v11 + 296));
              sub_29A1854E8((v11 + 1680), (v11 + 312));
              sub_29A1854E8((v11 + 1696), (v11 + 328));
              sub_29A1854E8((v11 + 1712), (v11 + 344));
              *(v11 + 48) = 1;
            }
          }
        }
      }

      v267 = 0;
      LODWORD(v268[0]) = -1;
      v269[0] = 0;
      v269[1] = 0;
      memset(v268 + 4, 0, 64);
      memset(&v268[8] + 4, 0, 28);
      v268[12] = v269;
      LOBYTE(v270) = 0;
      v272[0] = 0;
      v272[1] = 0;
      v271 = v272;
      v273 = 0u;
      v274 = 0u;
      v275 = 0u;
      v276 = -1;
      v283[0] = 0;
      v283[1] = 0;
      v277 = 0u;
      v278 = 0u;
      v279 = 0u;
      v280 = 0u;
      memset(v281, 0, sizeof(v281));
      v282 = v283;
      v284 = 0;
      v286[0] = 0;
      v286[1] = 0;
      v285 = v286;
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v291 = 0x3FF0000000000000;
      v290 = xmmword_29B4DAD78;
      if (adobe::usd::importDiffuseTransmission(v4 + 1408, &v267))
      {
        if (v94)
        {
          *&v253 = COERCE_DOUBLE("usdGltf/gltfImport.cpp");
          v254[0] = "importMaterials";
          v254[1] = 1226;
          v254[2] = "void adobe::usd::importMaterials(ImportGltfContext &)";
          LOBYTE(v254[3]) = 0;
          v97 = v11 + 24;
          if (*(v11 + 47) < 0)
          {
            v97 = *v166;
          }

          pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v253, "Material %s has both KHR_materials_transmission and KHR_materials_diffuse_transmission. Ignoring the latter.", v96, v97);
        }

        else
        {
          sub_29A008E78(&v253, "transmission");
          v99 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          if (!v99)
          {
            v99 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
          }

          adobe::usd::importInput(v165, v166, &v253, v11 + 3704, v268, v99 + 5, &v267, 0.0);
          if (SHIBYTE(v254[1]) < 0)
          {
            operator delete(v253);
          }

          sub_29A008E78(&v253, "absorptionColor");
          adobe::usd::importColorInput(v165, v166, &v253, (v11 + 4160), &v276, &v290, 0.0);
          if (SHIBYTE(v254[1]) < 0)
          {
            operator delete(v253);
          }
        }
      }

      *&v253 = 0.0;
      LODWORD(v254[0]) = -1;
      v256 = 0;
      v257 = 0;
      memset(v254 + 4, 0, 64);
      memset(&v254[8] + 4, 0, 28);
      v255 = &v256;
      LOBYTE(v258) = 0;
      v260[0] = 0;
      v260[1] = 0;
      v259 = v260;
      v261 = 0u;
      v262 = 0u;
      v263 = 0u;
      v264 = 0.0;
      v266 = 1.0;
      v265 = xmmword_29B4DAD78;
      v100 = adobe::usd::importVolume(v4 + 1408, &v253);
      if (*&v253 > 0.0 && v100)
      {
        sub_29A008E78(&v167, "thickness");
        v102 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v102)
        {
          v102 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importInput(v165, v166, &v167, v11 + 3856, v254, v102 + 3, &v253, 0.0);
        if (SHIBYTE(v168.f64[1]) < 0)
        {
          operator delete(v167);
        }

        v103 = v264;
        v104 = *(v11 + 4016);
        if (v104 && (*(v11 + 4016) & 3) != 3)
        {
          (*((v104 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 4008);
        }

        v105 = v103;
        *(v11 + 4016) = &unk_2A2044C63;
        *(v11 + 4008) = v105;
        v106 = v266;
        v167 = vcvt_f32_f64(v265);
        *v168.f64 = v106;
        adobe::usd::applyInputMultiplier(v11 + 4160, &v167);
      }

      *&v167 = INFINITY;
      v169 = 1.0;
      v168 = xmmword_29B4DAD78;
      if (adobe::usd::importSubsurface(v4 + 1408, &v167))
      {
        v107 = v167;
        v108 = *(v11 + 4320);
        if (v108 && (*(v11 + 4320) & 3) != 3)
        {
          (*((v108 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 4312);
        }

        v109 = *&v107;
        *(v11 + 4320) = &unk_2A2044C63;
        *(v11 + 4312) = v109;
        v110 = v169;
        v251 = vcvt_f32_f64(v168);
        v252 = v110;
        sub_29A3FDE98((v11 + 4464), &v251);
      }

      sub_29A9CBEC0(v254);
      sub_29A9CBEC0(&v276);
      sub_29A9CBEC0(v268);
      sub_29A9CBEC0(&v171);
      sub_29A9CBEC0(&v304);
      sub_29A9CBEC0(&v293[1]);
      sub_29A9CBEC0(&v319[1]);
      sub_29A9CBEC0(v328);
      sub_29A9CBF18(v206);
      sub_29A9CBEC0(&v192);
      sub_29A9CBEC0(&__str[8]);
      sub_29A9CBEC0(&v231);
      sub_29A9CBEC0(&__p[8]);
LABEL_216:
      v111 = adobe::usd::importUnlit(v4 + 1408);
      *__p = 0x3FF0000000000000;
      adobe::usd::importEmissionStrength(v4 + 1408, __p);
      v1 = v165;
      v112 = *(v4 + 1160);
      if ((v112 & 0x80000000) != 0)
      {
        v122 = *(v4 + 24);
        if (*(v4 + 32) - v122 == 24 && ((v123 = *v122, v122->f64[0] > 0.0) || v123.f64[1] > 0.0 || v122[1].f64[0] > 0.0))
        {
          v124 = *__p * v122[1].f64[0];
          *__str = vcvt_f32_f64(vmulq_n_f64(v123, *__p));
          *&__str[8] = v124;
          sub_29A3FDE98((v11 + 360), __str);
        }

        else if (v111)
        {
          sub_29A1854E8((v11 + 360), (v11 + 208));
          *(v11 + 376) = *(v11 + 224);
          sub_29A166F2C((v11 + 384), (v11 + 232));
          sub_29A166F2C((v11 + 392), (v11 + 240));
          sub_29A166F2C((v11 + 400), (v11 + 248));
          sub_29A166F2C((v11 + 408), (v11 + 256));
          sub_29A166F2C((v11 + 416), (v11 + 264));
          sub_29A166F2C((v11 + 424), (v11 + 272));
          sub_29A1854E8((v11 + 432), (v11 + 280));
          sub_29A1854E8((v11 + 448), (v11 + 296));
          sub_29A1854E8((v11 + 464), (v11 + 312));
          sub_29A1854E8((v11 + 480), (v11 + 328));
          sub_29A1854E8((v11 + 496), (v11 + 344));
          *__str = 0;
          *&__str[8] = 0;
          sub_29A3FDE98((v11 + 208), __str);
          *(v11 + 49) = 1;
        }
      }

      else
      {
        sub_29A008E78(__str, "emissive");
        v113 = adobe::usd::importImage(v165, v112, v166, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v114 = *(v165 + 8);
        v115 = *(v4 + 1160);
        v116 = *(v4 + 1164);
        v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v117)
        {
          v117 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v118)
        {
          v118 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importTexture(v114, v113, v115, v116, v11 + 360, v117 + 6, v118 + 26);
        adobe::usd::importScale3((v11 + 360), *(v4 + 24), v119, *__p);
        adobe::usd::importTextureTransform(v4 + 1288, v11 + 360);
      }

      v120 = (v4 + 48);
      v121 = *(v4 + 71);
      if (v121 < 0)
      {
        if (*(v4 + 56) == 4)
        {
          v120 = *v120;
LABEL_234:
          if (*v120 == 1263747405)
          {
            v125 = *(v4 + 72);
            v126 = *(v11 + 3104);
            if (v126 && (*(v11 + 3104) & 3) != 3)
            {
              (*((v126 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 3096);
            }

            v127 = v125;
            *(v11 + 3104) = &unk_2A2044C63;
            *(v11 + 3096) = v127;
          }
        }
      }

      else if (v121 == 4)
      {
        goto LABEL_234;
      }

      v128 = *(v4 + 744);
      if ((v128 & 0x80000000) == 0)
      {
        sub_29A008E78(__str, "normal");
        v129 = adobe::usd::importImage(v165, v128, v166, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v130 = *(v165 + 8);
        v131 = *(v4 + 744);
        v132 = *(v4 + 748);
        v133 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v133)
        {
          v133 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v134 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v134)
        {
          v134 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importTexture(v130, v129, v131, v132, v11 + 816, v133 + 6, v134 + 25);
        adobe::usd::importTextureTransform(v4 + 880, v11 + 816);
        v135 = *(v4 + 752);
        v136 = v135 + v135;
        *__str = v136;
        *&__str[4] = v136;
        *&__str[8] = 0x3F80000040000000;
        sub_29A3FEAA8((v11 + 888), __str);
        v137 = v135;
        *__str = -v137;
        *&__str[4] = -v137;
        *&__str[8] = 3212836864;
        sub_29A3FEAA8((v11 + 904), __str);
        v138 = *(v4 + 752);
        v139 = *(v11 + 976);
        if (v139 && (*(v11 + 976) & 3) != 3)
        {
          (*((v139 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 968);
        }

        v140 = v138;
        *(v11 + 976) = &unk_2A2044C63;
        *(v11 + 968) = v140;
      }

      v141 = *(v4 + 952);
      if ((v141 & 0x80000000) != 0)
      {
        v149 = *(v4 + 960);
        if (v149 != 1.0)
        {
          v150 = *(v11 + 3408);
          if (v150 && (*(v11 + 3408) & 3) != 3)
          {
            (*((v150 & 0xFFFFFFFFFFFFFFF8) + 32))(v11 + 3400);
          }

          v151 = v149;
          *(v11 + 3408) = &unk_2A2044C63;
          *(v11 + 3400) = v151;
        }
      }

      else
      {
        sub_29A008E78(__str, "occlusion");
        v142 = adobe::usd::importImage(v165, v141, v166, __str);
        if ((__str[23] & 0x80000000) != 0)
        {
          operator delete(*__str);
        }

        v143 = *(v165 + 8);
        v144 = *(v4 + 952);
        v145 = *(v4 + 956);
        v146 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v146)
        {
          v146 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        v147 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        if (!v147)
        {
          v147 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
        }

        adobe::usd::importTexture(v143, v142, v144, v145, v11 + 3400, v146 + 2, v147 + 25);
        v148 = *(v4 + 960);
        if (v148 != 1.0)
        {
          *&v148 = v148;
          *__str = vdupq_lane_s32(*&v148, 0);
          sub_29A3FEAA8((v11 + 3472), __str);
        }

        adobe::usd::importTextureTransform(v4 + 1088, v11 + 3400);
      }

      v3 = __val + 1;
      v2 = *(*(v165 + 8) + 96);
    }

    while (__val + 1 < 0x8F5C28F5C28F5C29 * ((*(*(v165 + 8) + 104) - v2) >> 6));
  }

  sub_29A0EB4E8(v247);
  return sub_29A0EB4E8(v249);
}

void sub_29A9F5058(_Unwind_Exception *a1)
{
  sub_29A9CBEC0(v3 + 8);
  sub_29A9CBEC0(&STACK[0xAC8]);
  sub_29A9CBEC0(&STACK[0x9F8]);
  sub_29A9CBEC0(v2 + 24);
  sub_29A9CBEC0(v1 + 16);
  sub_29A9F5468(&STACK[0x290]);
  sub_29A9CBEC0(&STACK[0x5E8]);
  sub_29A9CBEC0(&STACK[0x508]);
  sub_29A0EB4E8(&STACK[0x6D0]);
  sub_29A0EB4E8(&STACK[0x700]);
  _Unwind_Resume(a1);
}

void sub_29A9F53C0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0x7194A17F55A10DC1 * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A9FBA38(a1, v6);
  }

  else if (!v5)
  {
      ;
    }

    a1[1] = i;
  }
}

uint64_t sub_29A9F5468(uint64_t a1)
{
  sub_29A9CBF18(a1 + 416);
  sub_29A9CBEC0(a1 + 216);
  sub_29A9CBEC0(a1 + 8);
  return a1;
}

void adobe::usd::importMeshJointWeights(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1746770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746770))
  {
    sub_29A008E78(&v22, "JOINTS_0");
    sub_29A008E78(&v24, "JOINTS_1");
    sub_29A008E78(v26, "JOINTS_2");
    sub_29A008E78(v27, "JOINTS_3");
    sub_29A008E78(v28, "JOINTS_4");
    sub_29A008E78(v29, "JOINTS_5");
    sub_29A008E78(v30, "JOINTS_6");
    sub_29A008E78(v31, "JOINTS_7");
    qword_2A1746758 = 0;
    unk_2A1746760 = 0;
    qword_2A1746768 = 0;
    sub_29A280C48(&qword_2A1746758, &v22, v32, 8uLL);
    for (i = 0; i != -24; i -= 3)
    {
      if (SHIBYTE(v31[i + 2]) < 0)
      {
        operator delete(v31[i]);
      }
    }

    __cxa_atexit(sub_29A1C9440, &qword_2A1746758, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746770);
  }

  if ((atomic_load_explicit(&qword_2A1746790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1746790))
  {
    sub_29A008E78(&v22, "WEIGHTS_0");
    sub_29A008E78(&v24, "WEIGHTS_1");
    sub_29A008E78(v26, "WEIGHTS_2");
    sub_29A008E78(v27, "WEIGHTS_3");
    sub_29A008E78(v28, "WEIGHTS_4");
    sub_29A008E78(v29, "WEIGHTS_5");
    sub_29A008E78(v30, "WEIGHTS_6");
    sub_29A008E78(v31, "WEIGHTS_7");
    qword_2A1746778 = 0;
    unk_2A1746780 = 0;
    qword_2A1746788 = 0;
    sub_29A280C48(&qword_2A1746778, &v22, v32, 8uLL);
    for (j = 0; j != -24; j -= 3)
    {
      if (SHIBYTE(v31[j + 2]) < 0)
      {
        operator delete(v31[j]);
      }
    }

    __cxa_atexit(sub_29A1C9440, &qword_2A1746778, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1746790);
  }

  PrimitiveAttribute = adobe::usd::getPrimitiveAttribute(a2, qword_2A1746758);
  v35[0] = PrimitiveAttribute;
  v6 = adobe::usd::getPrimitiveAttribute(a2, qword_2A1746778);
  v34[0] = v6;
  if (PrimitiveAttribute != -1 || v6 != -1)
  {
    v8 = 1;
    v9 = 24;
    while (1)
    {
      v10 = adobe::usd::getPrimitiveAttribute(a2, (qword_2A1746758 + v9));
      v35[v8] = v10;
      v34[v8] = adobe::usd::getPrimitiveAttribute(a2, (qword_2A1746778 + v9));
      if (v10 == -1)
      {
        break;
      }

      ++v8;
      v9 += 24;
      if (v8 == 8)
      {
        v11 = 8;
        goto LABEL_12;
      }
    }

    v11 = v8;
LABEL_12:
    v12 = 0;
    v13 = 4 * v11;
    v14 = v11;
    do
    {
      v33[v12 / 4] = adobe::usd::getAccessorElementCount(a1, v35[v12 / 4]);
      *(&v32[8] + v12 + 8) = adobe::usd::getAccessorElementCount(a1, v34[v12 / 4]);
      v12 += 4;
    }

    while (v13 != v12);
    if (v33[0])
    {
      v16 = 0;
      while (1)
      {
        v17 = v33[v16];
        if (v17 != *(&v32[8] + v16 * 4 + 8) || v16 * 4 && v17 != v33[0])
        {
          break;
        }

        if (v14 == ++v16)
        {
          sub_29A19D6E4(&v22, 4 * v14 * v33[0]);
          if ((a3 + 752) != &v22)
          {
            pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
          }

          pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
        }
      }

      *&v22 = "usdGltf/gltfImport.cpp";
      *(&v22 + 1) = "importMeshJointWeights";
      v23 = 1383;
      v24 = "void adobe::usd::importMeshJointWeights(const tinygltf::Model &, const tinygltf::Primitive &, Mesh &)";
      v25 = 0;
      v18 = *(a3 + 24);
      if (*(a3 + 47) >= 0)
      {
        v18 = a3 + 24;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v22, "Mismatch number of joint indices and weights for mesh '%s'", v15, v18);
    }
  }
}

void sub_29A9F5C08(_Unwind_Exception *a1)
{
  v3 = (v1 + 191);
  v4 = -192;
  v5 = (v1 + 191);
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
      __cxa_guard_abort(&qword_2A1746790);
      _Unwind_Resume(a1);
    }
  }
}

void adobe::usd::getIndices(void *a1, unsigned int a2, int a3, void *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    v17 = 0;
    v18 = &v17;
    sub_29A19D7EC(a4, a3, &v18);
    sub_29A19DBEC(a4);
    v8 = a4[4];
    sub_29A19DBEC(a4);
    v9 = a4[4] + 4 * *a4;
    if (v8 != v9)
    {
      v10 = 0;
      v11 = (v9 - v8 - 4) >> 2;
      v12 = vdupq_n_s64(v11);
      v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v14 = (v8 + 8);
      do
      {
        v15 = vdupq_n_s64(v10);
        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_29B430070)));
        if (vuzp1_s16(v16, *v12.i8).u8[0])
        {
          *(v14 - 2) = v10;
        }

        if (vuzp1_s16(v16, *&v12).i8[2])
        {
          *(v14 - 1) = v10 + 1;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_29B433E10)))).i32[1])
        {
          *v14 = v10 + 2;
          v14[1] = v10 + 3;
        }

        v10 += 4;
        v14 += 4;
      }

      while (v13 != v10);
    }
  }

  else
  {
    AccessorElementCount = adobe::usd::getAccessorElementCount(a1, a2);
    v17 = 0;
    v18 = &v17;
    sub_29A19D7EC(a4, AccessorElementCount, &v18);
    adobe::usd::readAccessorInts(a1, a2, a4);
  }
}

void adobe::usd::importMeshes(uint64_t a1)
{
  v27[2] = *MEMORY[0x29EDCA608];
  v2 = (a1 + 8);
  sub_29A0C13F4((a1 + 120), 0xF83E0F83E0F83E1 * ((*(*(a1 + 8) + 128) - *(*(a1 + 8) + 120)) >> 3));
  v3 = 0xF83E0F83E0F83E1 * ((*(*v2 + 128) - *(*v2 + 120)) >> 3);
  LODWORD(v26.__r_.__value_.__l.__data_) = 0;
  sub_29A0A766C(v2 + 17, v3, &v26);
  v4 = *(*v2 + 120);
  if (*(*v2 + 128) != v4)
  {
    v5 = 0;
    do
    {
      v6 = (v4 + 264 * v5);
      v23 = v5;
      sub_29A0A171C((v2[14] + 24 * v5), (v6[1].__r_.__value_.__l.__size_ - v6[1].__r_.__value_.__r.__words[0]) >> 8);
      data = v6[1].__r_.__value_.__l.__data_;
      if (v6[1].__r_.__value_.__l.__size_ != data)
      {
        v24 = adobe::usd::UsdData::addMesh(*(a1 + 16), v7, v8);
        v11 = v10;
        **(*(a1 + 120) + 24 * v23) = v24;
        p_data = &v10[1].__r_.__value_.__l.__data_;
        std::string::operator=(v10 + 1, v6);
        if (v6[1].__r_.__value_.__l.__size_ - v6[1].__r_.__value_.__r.__words[0] >= 0x101)
        {
          if ((v11[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v11[1].__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v11[1].__r_.__value_.__l.__size_;
          }

          sub_29A022DE0(&v26, size + 10);
          if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v14 = &v26;
          }

          else
          {
            v14 = v26.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v11[1].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v15 = p_data;
            }

            else
            {
              v15 = v11[1].__r_.__value_.__l.__data_;
            }

            memmove(v14, v15, size);
          }

          strcpy(v14 + size, "_primitive");
          std::to_string(&v25, 0);
          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v25;
          }

          else
          {
            v16 = v25.__r_.__value_.__r.__words[0];
          }

          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = v25.__r_.__value_.__l.__size_;
          }

          v18 = std::string::append(&v26, v16, v17);
          v19 = v18->__r_.__value_.__r.__words[0];
          v27[0] = v18->__r_.__value_.__l.__size_;
          *(v27 + 7) = *(&v18->__r_.__value_.__r.__words[1] + 7);
          v20 = HIBYTE(v18->__r_.__value_.__r.__words[2]);
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(*p_data);
          }

          v11[1].__r_.__value_.__r.__words[0] = v19;
          v11[1].__r_.__value_.__l.__size_ = v27[0];
          *(&v11[1].__r_.__value_.__r.__words[1] + 7) = *(v27 + 7);
          *(&v11[1].__r_.__value_.__s + 23) = v20;
          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }
        }

        sub_29A008E78(&v26, "POSITION");
        PrimitiveAttribute = adobe::usd::getPrimitiveAttribute(data, &v26.__r_.__value_.__l.__data_);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v26, "NORMAL");
        adobe::usd::getPrimitiveAttribute(data, &v26.__r_.__value_.__l.__data_);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v26, "TANGENT");
        adobe::usd::getPrimitiveAttribute(data, &v26.__r_.__value_.__l.__data_);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&v26, "TEXCOORD_0");
        adobe::usd::getPrimitiveAttribute(data, &v26.__r_.__value_.__l.__data_);
        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        AccessorElementCount = adobe::usd::getAccessorElementCount(*(a1 + 8), PrimitiveAttribute);
        sub_29A193124(&v26, AccessorElementCount);
        if (&v11[5].__r_.__value_.__r.__words[2] != &v26)
        {
          pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
        }

        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }

      v5 = v23 + 1;
      v4 = *(*(a1 + 8) + 120);
    }

    while (v23 + 1 < (0xF83E0F83E0F83E1 * ((*(*(a1 + 8) + 128) - v4) >> 3)));
  }
}

uint64_t adobe::usd::importSkeletons(void *a1)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v2 = a1[1];
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);
  sub_29A008E78(__p, "");
  sub_29A9F7638((a1 + 12), 0xFAFAFAFAFAFAFAFBLL * ((v3 - v4) >> 3), __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v18[3] = 0;
  __p[0] = &unk_2A206DF98;
  __p[1] = a1;
  v16 = v18;
  v17 = __p;
  sub_29A9FC828(__p, v18);
  sub_29A9FC410(__p);
  v5 = a1[1];
  v6 = v5[36];
  v7 = v5[37];
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);
      while (v8 != v9)
      {
        sub_29A9F76D8(v18, -1, *v8++);
      }

      v6 += 264;
    }

    while (v6 != v7);
    v5 = a1[1];
  }

  v11 = v5 + 27;
  v10 = v5[27];
  if (v11[1] != v10)
  {
    v12 = v10;
    v13 = *(a1[2] + 328);
    std::string::operator=((v13 + 24), v10);
    sub_29A214860(__p, (v12[1].__r_.__value_.__r.__words[2] - v12[1].__r_.__value_.__l.__size_) >> 2);
    if ((v13 + 104) != __p)
    {
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef();
  }

  return sub_29A9FC410(v18);
}

void sub_29A9F7520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9F7638(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    sub_29A9FC1DC(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    while (v4 != v8)
    {
      v9 = *(v4 - 1);
      v4 -= 3;
      if (v9 < 0)
      {
        operator delete(*v4);
      }
    }

    *(a1 + 8) = v8;
  }
}

uint64_t sub_29A9F76D8(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void adobe::usd::importAnimationTracks(uint64_t a1)
{
  v2 = 1041204193 * ((*(*(a1 + 8) + 32) - *(*(a1 + 8) + 24)) >> 3);
  sub_29A9F77C8(*(a1 + 16) + 56, v2);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v2 & 0x7FFFFFFF;
    v5 = 24;
    do
    {
      std::string::operator=((*(*(a1 + 16) + 56) + v5), (*(*(a1 + 8) + 24) + v3));
      v3 += 264;
      v5 += 64;
      --v4;
    }

    while (v4);
  }
}

void sub_29A9F77C8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 6;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + (a2 << 6);
      while (v3 != v6)
      {
        v3 -= 64;
        sub_29A0D27F8(a1, v3);
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29A9FCA8C(a1, v5);
  }
}

void adobe::usd::importNodeAnimations(void *a1, uint64_t a2, char *a3)
{
  v3 = a1[2];
  v4 = *(v3 + 56);
  if (*(v3 + 64) != v4)
  {
    v6 = 0;
    while (1)
    {
      v36 = (*(a1[1] + 24) + 264 * v6);
      v7 = v36[3];
      if (v7 != v36[4])
      {
        break;
      }

      ++v6;
      v4 = *(v3 + 56);
      if (v6 >= (*(v3 + 64) - v4) >> 6)
      {
        return;
      }
    }

    v8 = v4 + (v6 << 6);
    v9 = v7 + 2;
    v34 = v6;
    v10 = *v7;
    if ((v10 & 0x80000000) != 0 || (v11 = v36[6], 0x6DB6DB6DB6DB6DB7 * ((v36[7] - v11) >> 5) <= v10))
    {
      *&v41 = "usdGltf/gltfImport.cpp";
      *(&v41 + 1) = "importNodeAnimations";
      *&v42 = 1762;
      *(&v42 + 1) = "void adobe::usd::importNodeAnimations(ImportGltfContext &)";
      LOBYTE(v43) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v41, "Invalid animation sampler index %d (max %zu)", a3, v10, 0x6DB6DB6DB6DB6DB7 * ((v36[7] - v36[6]) >> 5));
    }

    else
    {
      v12 = v7[1];
      if ((v12 & 0x80000000) == 0)
      {
        v13 = a1[6];
        if (v12 < (a1[7] - v13) >> 2)
        {
          v14 = a1[1];
          if (0xFAFAFAFAFAFAFAFBLL * ((v14[19] - v14[18]) >> 3) > v12)
          {
            v15 = *(v13 + 4 * v12);
            if ((v15 & 0x80000000) == 0)
            {
              v16 = *(a1[2] + 136);
              if (0xAF8AF8AF8AF8AF8BLL * ((*(a1[2] + 144) - v16) >> 4) > v15)
              {
                v17 = v16 + 560 * v15;
                v18 = *(v17 + 368);
                v19 = *(v17 + 376);
                if (v18 == v19)
                {
                  v35 = 0;
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  v47 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v20 = &v41;
                  v41 = 0u;
                  v42 = 0u;
                }

                else
                {
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v50 = 0u;
                  v51 = 0u;
                  v48 = 0u;
                  v49 = 0u;
                  v47 = 0u;
                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  if (0xEEEEEEEEEEEEEEEFLL * ((v19 - v18) >> 4) <= v6)
                  {
                    v35 = 0;
                    v20 = &v41;
                  }

                  else
                  {
                    v20 = (*(v17 + 368) + 240 * v6);
                    v35 = 1;
                  }
                }

                sub_29A008E78(__p, "translation");
                v21 = (v11 + 224 * v10);
                v22 = sub_29A9F7E14(v14, (v9 - 2), v21, __p, v20, (v8 + 48), (v8 + 52));
                if (SHIBYTE(v38) < 0)
                {
                  operator delete(__p[0]);
                }

                v23 = a1[1];
                sub_29A008E78(__p, "rotation");
                v24 = sub_29A9F7FC8(v23, (v9 - 2), v21, __p, (v20 + 5), (v8 + 48), (v8 + 52));
                if (SHIBYTE(v38) < 0)
                {
                  operator delete(__p[0]);
                }

                v25 = a1[1];
                sub_29A008E78(__p, "scale");
                v27 = sub_29A9F7E14(v25, (v9 - 2), v21, __p, (v20 + 10), (v8 + 48), (v8 + 52));
                if (SHIBYTE(v38) < 0)
                {
                  operator delete(__p[0]);
                }

                v28 = *(v9 + 23);
                if (v28 < 0)
                {
                  if (*(v9 + 1) != 7)
                  {
                    goto LABEL_33;
                  }

                  v29 = *v9;
                }

                else
                {
                  v29 = v9;
                  if (v28 != 7)
                  {
                    goto LABEL_33;
                  }
                }

                v30 = *v29;
                v31 = *(v29 + 3);
                if (v30 == 1734960503 && v31 == 1937008743)
                {
                  __p[0] = "usdGltf/gltfImport.cpp";
                  __p[1] = "importNodeAnimations";
                  v38 = 1808;
                  v39 = "void adobe::usd::importNodeAnimations(ImportGltfContext &)";
                  v40 = 0;
                  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Unsupported import of GLTF blend weight animation", v26);
                }

LABEL_33:
                if (v22 | v24 | v27)
                {
                  *(v8 + 60) = 1;
                  v33 = a1[2];
                  *(v33 + 48) = 1;
                  if ((v35 & 1) == 0)
                  {
                    sub_29A8EEA38((v17 + 368), (*(v33 + 64) - *(v33 + 56)) >> 6);
                    if ((*(v17 + 368) + 240 * v34) != &v41)
                    {
                      pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
                    }
                  }
                }

                sub_29A8EF818();
              }
            }
          }
        }
      }

      *&v41 = "usdGltf/gltfImport.cpp";
      *(&v41 + 1) = "importNodeAnimations";
      *&v42 = 1772;
      *(&v42 + 1) = "void adobe::usd::importNodeAnimations(ImportGltfContext &)";
      LOBYTE(v43) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v41, "Invalid animation target node %d", a3, v12);
    }
  }
}

uint64_t sub_29A9F7E14(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, float *a6, float *a7)
{
  v8 = *(a2 + 31);
  if (v8 >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v10 = *(a4 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v18 = *(a2 + 8);
  v16 = a2 + 8;
  v17 = v18;
  v19 = (v8 >= 0 ? v16 : v17);
  v20 = v11 >= 0 ? a4 : *a4;
  if (memcmp(v19, v20, v9))
  {
    return 0;
  }

  v23 = *a5;
  AccessorElementCount = adobe::usd::getAccessorElementCount(a1, *a3);
  v25 = adobe::usd::getAccessorElementCount(a1, a3[1]);
  LODWORD(v36) = 0;
  v34 = &v36;
  sub_29A18E224(a5, AccessorElementCount + v23, &v34, v26);
  v35 = 0;
  v34 = 0;
  v36 = &v34;
  sub_29A193304((a5 + 40), v25 + v23, &v36);
  v27 = *a3;
  sub_29A18E624(a5);
  v21 = 1;
  adobe::usd::readAccessorDataToFloat(a1, v27, *(a5 + 32), 1uLL, 4 * *a5);
  v28 = a3[1];
  sub_29A1935CC(a5 + 40);
  adobe::usd::readAccessorDataToFloat(a1, v28, *(a5 + 72), 3uLL, 12 * *(a5 + 40));
  sub_29A18E624(a5);
  v29 = *(a5 + 32);
  v30 = *v29;
  if (*v29 >= *a6)
  {
    v30 = *a6;
  }

  *a6 = v30;
  v31 = *a5;
  sub_29A18E624(a5);
  v32 = *(a5 + 32) + 4 * v31;
  v33 = *a7;
  if (*a7 < *(v32 - 4))
  {
    v33 = *(v32 - 4);
  }

  *a7 = v33;
  return v21;
}

uint64_t sub_29A9F7FC8(void *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, float *a6, float *a7)
{
  v8 = *(a2 + 31);
  if (v8 >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v10 = *(a4 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v18 = *(a2 + 8);
  v16 = a2 + 8;
  v17 = v18;
  v19 = (v8 >= 0 ? v16 : v17);
  v20 = v11 >= 0 ? a4 : *a4;
  if (memcmp(v19, v20, v9))
  {
    return 0;
  }

  v23 = *a5;
  AccessorElementCount = adobe::usd::getAccessorElementCount(a1, *a3);
  v25 = adobe::usd::getAccessorElementCount(a1, a3[1]);
  LODWORD(v35) = 0;
  v34[0] = &v35;
  sub_29A18E224(a5, AccessorElementCount + v23, v34, v26);
  v35 = v34;
  sub_29A199818((a5 + 40), v25 + v23, &v35);
  v27 = *a3;
  sub_29A18E624(a5);
  v21 = 1;
  adobe::usd::readAccessorDataToFloat(a1, v27, *(a5 + 32), 1uLL, 4 * *a5);
  v28 = a3[1];
  sub_29A199A70(a5 + 40);
  adobe::usd::readAccessorDataToFloat(a1, v28, *(a5 + 72), 4uLL, 16 * *(a5 + 40));
  sub_29A18E624(a5);
  v29 = *(a5 + 32);
  v30 = *v29;
  if (*v29 >= *a6)
  {
    v30 = *a6;
  }

  *a6 = v30;
  v31 = *a5;
  sub_29A18E624(a5);
  v32 = *(a5 + 32) + 4 * v31;
  v33 = *a7;
  if (*a7 < *(v32 - 4))
  {
    v33 = *(v32 - 4);
  }

  *a7 = v33;
  return v21;
}

uint64_t adobe::usd::importSkeletonAnimations(uint64_t result, uint64_t a2, char *a3)
{
  v77 = *MEMORY[0x29EDCA608];
  if (*(*(result + 8) + 224) != *(*(result + 8) + 216))
  {
    v70 = 0u;
    v71 = 0u;
    v72 = 1065353216;
    v3 = *(result + 16);
    if (*(v3 + 64) != *(v3 + 56))
    {
      v60 = result;
      v4 = 0;
      do
      {
        v5 = *(v60[1] + 24) + 264 * v4;
        v6 = *(v5 + 24);
        v7 = *(v5 + 32);
        if (v6 != v7)
        {
          v8 = v6 + 1;
          do
          {
            v9 = *v8;
            if ((v9 & 0x80000000) != 0 || (v10 = v60[6], v9 >= (v60[7] - v10) >> 2) || (v11 = v60[1], v12 = *(v11 + 144), 0xFAFAFAFAFAFAFAFBLL * ((*(v11 + 152) - v12) >> 3) <= v9) || (v13 = *(v10 + 4 * v9), (v13 & 0x80000000) != 0) || (v14 = *(v60[2] + 136), 0xAF8AF8AF8AF8AF8BLL * ((*(v60[2] + 144) - v14) >> 4) <= v13))
            {
              __p[0] = "usdGltf/gltfImport.cpp";
              __p[1] = "importSkeletonAnimations";
              v74 = 1844;
              v75 = "void adobe::usd::importSkeletonAnimations(ImportGltfContext &)";
              LOBYTE(v76) = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(__p, "Invalid skeleton animation target node %d", a3, v9);
            }

            else if (*(v14 + 560 * v13 + 552))
            {
              sub_29A9FCBF4(&v70, v8, v8);
            }

            else if (sub_29A9E3F04(0))
            {
              v17 = v12 + 408 * v9;
              v18 = (v17 + 8);
              if (*(v17 + 31) < 0)
              {
                v18 = *v18;
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Found non skeleton node %d %s\n", v16, a3, *v8, v18);
            }

            v15 = v8 + 103;
            v8 += 104;
          }

          while (v15 != v7);
          v3 = v60[2];
        }

        ++v4;
      }

      while (v4 < (*(v3 + 64) - *(v3 + 56)) >> 6);
      if (*(&v71 + 1))
      {
        v19 = *(v60[1] + 216);
        if (*(v60[1] + 224) != v19)
        {
          v20 = 0;
          __asm { FMOV            V8.2S, #1.0 }

          do
          {
            v26 = *(v60[2] + 328);
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v58 = v20;
            v27 = v19 + 248 * v20;
            v28 = *(v27 + 32);
            v29 = *(v27 + 40);
            v30 = (v27 + 32);
            if (v29 != v28)
            {
              v31 = 0;
              v32 = 0;
              v59 = (v26 + 408 * v58);
              do
              {
                if (sub_29A8FB5BC(&v70, (v28 + v31)))
                {
                  sub_29A00D250(&v67, (*v30 + v31));
                }

                ++v32;
                v28 = *v30;
                v31 += 4;
              }

              while (v32 < (v30[1] - *v30) >> 2);
              v33 = v67;
              if (v67 != v68)
              {
                sub_29A8E72F8(v59 + 43, (*(v60[2] + 64) - *(v60[2] + 56)) >> 6);
                sub_29A5109EC(v59 + 46, (v68 - v67) >> 2);
                v33 = v67;
                if (v68 != v67)
                {
                  v34 = 0;
                  v35 = 0;
                  do
                  {
                    v36 = v60[12] + 24 * v33[v35];
                    if (*(v36 + 23) < 0)
                    {
                      sub_29A008D14(__p, *v36, *(v36 + 8));
                    }

                    else
                    {
                      v37 = *v36;
                      v74 = *(v36 + 16);
                      *__p = v37;
                    }

                    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v64);
                    sub_29A215100((v59 + 46));
                    v38 = (v59[50] + v34);
                    if (v38 == &v64)
                    {
                      if ((v64 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v64 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }
                    }

                    else
                    {
                      if ((*v38 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((*v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      *v38 = v64;
                    }

                    if (SHIBYTE(v74) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    ++v35;
                    v33 = v67;
                    v34 += 8;
                  }

                  while (v35 < (v68 - v67) >> 2);
                }

                v39 = *(v60[2] + 56);
                if (*(v60[2] + 64) != v39)
                {
                  v40 = 0;
                  do
                  {
                    v61 = v40;
                    v41 = *(v60[1] + 24);
                    v64 = 0;
                    v65 = 0;
                    v66 = 0;
                    v42 = v67;
                    v43 = v68;
                    if (v67 != v68)
                    {
                      v44 = v39 + (v40 << 6);
                      do
                      {
                        v45 = *(*(v60[2] + 136) + 560 * *(v60[6] + 4 * *v42) + 368);
                        if (0xEEEEEEEEEEEEEEEFLL * ((*(*(v60[2] + 136) + 560 * *(v60[6] + 4 * *v42) + 376) - v45) >> 4) > v61)
                        {
                          v46 = (v45 + 240 * v61);
                          adobe::usd::addToTimeMap(&v64, v46 + 10);
                          adobe::usd::addToTimeMap(&v64, v46);
                          adobe::usd::addToTimeMap(&v64, v46 + 20);
                        }

                        ++v42;
                      }

                      while (v42 != v43);
                      v48 = v64;
                      v47 = v65;
                      v49 = v65 - v64;
                      if (v65 != v64)
                      {
                        *(v44 + 60) = 1;
                        *(v60[2] + 48) = 1;
                        v50 = *v48;
                        v51 = *(v44 + 52);
                        if (*v48 >= *(v44 + 48))
                        {
                          v50 = *(v44 + 48);
                        }

                        *(v44 + 48) = v50;
                        v52 = *(v47 - 1);
                        if (v51 >= v52)
                        {
                          v52 = v51;
                        }

                        *(v44 + 52) = v52;
                        v54 = v67;
                        v53 = v68;
                        v62 = 0uLL;
                        sub_29A9F8F24(__p, v49 >> 2, &v62);
                        sub_29A9FCE10(v63, (v53 - v54) >> 2, __p);
                        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfQuatf>::_DecRef();
                      }
                    }

                    if (sub_29A9E3F04(0))
                    {
                      v57 = (v41 + 264 * v61);
                      if (*(v57 + 23) < 0)
                      {
                        v57 = *v57;
                      }

                      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Animation %lu %s has no times\n", v55, v56, v61, v57);
                    }

                    if (v64)
                    {
                      v65 = v64;
                      operator delete(v64);
                    }

                    v39 = *(v60[2] + 56);
                    v40 = v61 + 1;
                  }

                  while (v61 + 1 < (*(v60[2] + 64) - v39) >> 6);
                  v33 = v67;
                }
              }

              if (v33)
              {
                v68 = v33;
                operator delete(v33);
              }
            }

            v20 = v58 + 1;
            v19 = *(v60[1] + 216);
          }

          while (v58 + 1 < 0xEF7BDEF7BDEF7BDFLL * ((*(v60[1] + 224) - v19) >> 3));
        }
      }
    }

    return sub_29A0EB570(&v70);
  }

  return result;
}

uint64_t sub_29A9F8F24(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A1997C8(a1);
  v7 = a3;
  sub_29A199818(a1, a2, &v7);
  return a1;
}

uint64_t sub_29A9F8F9C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A1932B4(a1);
  v7 = a3;
  sub_29A193304(a1, a2, &v7);
  return a1;
}

uint64_t *sub_29A9F9014(uint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = *result;
  v4 = result[1];
  if (v4 != *result)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v5 + 4 * v11);
      v14 = a2[4];
      v15 = *(v14 + 4 * v12);
      if (v13 > v15)
      {
        if (*a2 <= v12 + 1)
        {
          v16 = v12 + 1;
        }

        else
        {
          v16 = *a2;
        }

        v17 = v16 - 1 + v10 - v12;
        if (v10 == v17)
        {
LABEL_11:
          v10 = v17;
          v12 = v16 - 1;
        }

        else
        {
          ++v10;
          ++v12;
          while (1)
          {
            v15 = *(v14 + 4 * v12);
            if (v13 <= v15)
            {
              break;
            }

            ++v12;
            ++v10;
            if (v16 == v12)
            {
              goto LABEL_11;
            }
          }
        }
      }

      if (v10 < *a3 && v12 < *a3)
      {
        v19 = *(v14 + 4 * v10);
        if (v13 < v19)
        {
          v13 = *(v14 + 4 * v10);
        }

        if (v15 < v13)
        {
          v13 = v15;
        }

        v20 = a3[4];
        v21 = (v20 + 16 * v10);
        v22 = v21[1].f32[0];
        v23 = v21[1].f32[1];
        v24 = (v20 + 16 * v12);
        v25 = v13 - v19;
        v26 = v15 - v19;
        v27 = (v25 * (v24[1].f32[1] - v23)) / v26;
        v28 = 1.0 / v26;
        v29 = v28 * (v25 * (v24[1].f32[0] - v22));
        v30 = v23 + v27;
        v31 = v22 + v29;
        v32 = vadd_f32(*v21, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vmul_n_f32(vsub_f32(*v24, *v21), v25)), v28)));
        result = sub_29A199A70(a4);
        v33 = *(a4 + 32) + 16 * v11;
        *v33 = v32;
        *(v33 + 8) = v31;
        *(v33 + 12) = v30;
        v5 = *v9;
        v4 = v9[1];
      }

      ++v11;
    }

    while (v11 < (v4 - v5) >> 2);
  }

  return result;
}

uint64_t *sub_29A9F91A8(uint64_t *result, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = *result;
  v4 = result[1];
  if (v4 != *result)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      v13 = *(v5 + 4 * v10);
      v14 = a2[4];
      v15 = *(v14 + 4 * v12);
      if (v13 > v15)
      {
        if (*a2 <= v12 + 1)
        {
          v16 = v12 + 1;
        }

        else
        {
          v16 = *a2;
        }

        if (v12 == v16 - 1)
        {
LABEL_11:
          v12 = v16 - 1;
        }

        else
        {
          v17 = v11 + 1;
          ++v12;
          while (1)
          {
            v11 = v17;
            v15 = *(v14 + 4 * v12);
            if (v13 <= v15)
            {
              break;
            }

            ++v17;
            if (v16 == ++v12)
            {
              goto LABEL_11;
            }
          }
        }
      }

      if (v11 < *a3 && v12 < *a3)
      {
        v19 = *(v14 + 4 * v11);
        if (v13 < v19)
        {
          v13 = *(v14 + 4 * v11);
        }

        if (v15 < v13)
        {
          v13 = v15;
        }

        v20 = a3[4];
        v21 = (v20 + 12 * v11);
        v22 = v21[1].f32[0];
        v23 = (v20 + 12 * v12);
        v24 = v13 - v19;
        v25 = 1.0 / (v15 - v19);
        v26 = v25 * (v24 * (v23[1].f32[0] - v22));
        v27 = v22 + v26;
        v28 = vadd_f32(*v21, vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vmul_n_f32(vsub_f32(*v23, *v21), v24)), v25)));
        result = sub_29A1935CC(a4);
        v29 = *(a4 + 32) + 12 * v10;
        *v29 = v28;
        *(v29 + 8) = v27;
        v5 = *v9;
        v4 = v9[1];
      }

      ++v10;
    }

    while (v10 < (v4 - v5) >> 2);
  }

  return result;
}

uint64_t *sub_29A9F9328(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    return sub_29A9FCF78(result, v5, a3);
  }

  if (!v4)
  {
    return sub_29A8EF97C(result, *result + 40 * a2);
  }

  return result;
}

uint64_t *sub_29A9F9364(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    return sub_29A9FD130(result, v5, a3);
  }

  if (!v4)
  {
    return sub_29A792760(result, *result + 40 * a2);
  }

  return result;
}

uint64_t *sub_29A9F93A0(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    return sub_29A9FD2E8(result, v5, a3);
  }

  if (!v4)
  {
    return sub_29A8EF8D8(result, *result + 40 * a2);
  }

  return result;
}

adobe::usd::UsdData *adobe::usd::importLights(adobe::usd::UsdData *result)
{
  v1 = *(result + 1);
  v2 = *(v1 + 312);
  if (*(v1 + 320) != v2)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = *(result + 2);
    do
    {
      v7 = v2 + v5;
      adobe::usd::UsdData::addLight(result);
      v9 = v8;
      std::string::operator=(v8 + 1, (v2 + v5));
      v10 = *(v2 + v5 + 24);
      if (*(v2 + v5 + 32) - v10 >= 0x11uLL)
      {
        v9[7] = vcvt_f32_f64(*v10);
        v11 = v10[1].f64[0];
        v9[8].f32[0] = v11;
      }

      v12 = *(v7 + 48);
      v13 = (v7 + 56);
      if (*(v7 + 79) < 0)
      {
        v15 = v2 + v5;
        if (*(v2 + v5 + 64) == 11 && **v13 == 0x6F69746365726964 && *(*v13 + 3) == 0x6C616E6F69746365)
        {
          goto LABEL_36;
        }

        if (*(v15 + 64) == 5 && **v13 == 1852403568 && *(*v13 + 4) == 116)
        {
          goto LABEL_30;
        }

        if (*(v15 + 64) == 4)
        {
          v13 = *v13;
LABEL_22:
          if (*v13 == 1953460339)
          {
            v9[6].i32[1] = 0;
            v12 = v12 / 0.0314159275;
            v9[10].i32[0] = 1036831949;
            v18 = *(v2 + v5 + 96);
            v19 = v18 * 57.2957795;
            v20 = *(*(v3 + 2) + 280) + v4;
            *(v20 + 84) = v19;
            if (v18 <= 0.0)
            {
              *(v20 + 88) = 0;
            }

            else
            {
              v21 = 1.0 - *(v2 + v5 + 88) / v18;
              *(v20 + 88) = v21;
            }
          }
        }
      }

      else
      {
        v14 = *(v7 + 79);
        switch(v14)
        {
          case 11:
            if (*v13 != 0x6F69746365726964 || *(v7 + 59) != 0x6C616E6F69746365)
            {
              break;
            }

LABEL_36:
            v9[6].i32[1] = 4;
            v12 = v12 / 0.0000625;
            break;
          case 5:
            if (*v13 != 1852403568 || *(v7 + 60) != 116)
            {
              break;
            }

LABEL_30:
            v9[6].i32[1] = 2;
            v23 = v12 / 0.00125663701;
            v12 = v23 / 0.225;
            v9[10].i32[0] = 1008981770;
            break;
          case 4:
            goto LABEL_22;
        }
      }

      v25 = *(v3 + 1);
      result = *(v3 + 2);
      *(*(result + 35) + v4 + 76) = v12;
      ++v6;
      v2 = *(v25 + 312);
      v5 += 488;
      v4 += 184;
    }

    while (v6 < 0x4FBCDA3AC10C9715 * ((*(v25 + 320) - v2) >> 3));
  }

  return result;
}

double adobe::usd::importNgpExtension(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  sub_29A9F9CD0(&v48, "spatial_mlp_l0_weight", a2 + 48, 0x18uLL, 0x20uLL);
  sub_29A9F9CD0(&v48, "spatial_mlp_l0_bias", a2 + 8, 0, 0);
  sub_29A9F9CD0(&v48, "spatial_mlp_l1_weight", a2 + 128, 0x10uLL, 0x18uLL);
  sub_29A9F9CD0(&v48, "spatial_mlp_l1_bias", a2 + 88, 0, 0);
  sub_29A9F9CD0(&v48, "vdep_mlp_l0_weight", a2 + 208, 0x18uLL, 0x24uLL);
  sub_29A9F9CD0(&v48, "vdep_mlp_l0_bias", a2 + 168, 0, 0);
  sub_29A9F9CD0(&v48, "vdep_mlp_l1_weight", a2 + 288, 0x18uLL, 0x18uLL);
  sub_29A9F9CD0(&v48, "vdep_mlp_l1_bias", a2 + 248, 0, 0);
  sub_29A9F9CD0(&v48, "vdep_mlp_l2_weight", a2 + 368, 4uLL, 0x18uLL);
  sub_29A9F9CD0(&v48, "vdep_mlp_l2_bias", a2 + 328, 0, 0);
  sub_29A008E78(__p, "density");
  v4 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "density_max");
  v5 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (*v4 == 4 && *v5 == 1)
  {
    v6 = v5[1];
    __p[0] = 0;
    __p[1] = 0;
    *&v41 = 0;
    adobe::usd::unpackBase64String((v4 + 16), 1, __p);
    LODWORD(v36[0]) = 0;
    *&v37.f64[0] = v36;
    sub_29A18E224((a2 + 408), __p[1] - __p[0], &v37, v7);
    v8 = __p[0];
    if (__p[1] != __p[0])
    {
      v9 = 0;
      v10 = v6;
      do
      {
        v11 = v8[v9];
        sub_29A18E624(a2 + 408);
        *(*(a2 + 440) + 4 * v9++) = (v10 * v11) / 255.0;
        v8 = __p[0];
      }

      while (v9 < __p[1] - __p[0]);
    }

    if (v8)
    {
      __p[1] = v8;
      operator delete(v8);
    }
  }

  sub_29A008E78(__p, "distance_grid");
  v12 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A008E78(__p, "distance_max");
  v13 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (*v12 == 4 && *v13 == 1)
  {
    v14 = v13[1];
    __p[0] = 0;
    __p[1] = 0;
    *&v41 = 0;
    adobe::usd::unpackBase64String((v12 + 16), 1, __p);
    LODWORD(v36[0]) = 0;
    *&v37.f64[0] = v36;
    sub_29A18E224((a2 + 448), __p[1] - __p[0], &v37, v15);
    v16 = __p[0];
    if (__p[1] != __p[0])
    {
      v17 = 0;
      v18 = v14;
      do
      {
        v19 = v16[v17];
        sub_29A18E624(a2 + 448);
        *(*(a2 + 480) + 4 * v17++) = ((v19 / 255.0) * (v19 / 255.0)) * v18;
        v16 = __p[0];
      }

      while (v17 < __p[1] - __p[0]);
    }

    if (v16)
    {
      __p[1] = v16;
      operator delete(v16);
    }
  }

  sub_29A008E78(__p, "hash_grid");
  v20 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (*v20 == 4)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v41 = 0;
    adobe::usd::unpackBase64String((v20 + 16), 1, __p);
    LODWORD(v36[0]) = 0;
    *&v37.f64[0] = v36;
    sub_29A18E224((a2 + 488), (__p[1] - __p[0]) >> 1, &v37, v21);
    v22 = __p[0];
    sub_29A18E624(a2 + 488);
    adobe::usd::float16ToFloat32(v22, *(a2 + 520), *(a2 + 488));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  sub_29A008E78(__p, "sigma_threshold");
  v23 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (*v23 == 1)
  {
    v24 = v23[1];
    *a2 = v24;
  }

  sub_29A008E78(__p, "hash_grid_res");
  v25 = sub_29A9DD81C(a1, __p);
  if (SBYTE7(v41) < 0)
  {
    operator delete(__p[0]);
  }

  if (*v25 == 5)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v41 = 0;
    sub_29A9C98E4(__p, v25[8], v25[9], 0xEEEEEEEEEEEEEEEFLL * ((v25[9] - v25[8]) >> 3));
    v49 = 0;
    v36[0] = &v49;
    sub_29A19CAF8((a2 + 528), 0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3), v36);
    v26 = __p[0];
    if (__p[1] != __p[0])
    {
      v27 = 0;
      v28 = 4;
      do
      {
        v29 = *&v26[v28];
        sub_29A19CEF8(a2 + 528);
        *(*(a2 + 560) + 4 * v27++) = v29;
        v26 = __p[0];
        v28 += 120;
      }

      while (v27 < 0xEEEEEEEEEEEEEEEFLL * ((__p[1] - __p[0]) >> 3));
    }

    *&v37.f64[0] = __p;
    sub_29A9C9AA8(&v37);
  }

  *(a2 + 4) = 1;
  v37 = 0x3FF0000000000000uLL;
  v38 = 0;
  v39 = 0xC056800000000000;
  memset(v36, 0, sizeof(v36));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(__p, &v37, v36);
  v30 = v45;
  v31 = v46;
  *(a2 + 632) = v44;
  *(a2 + 648) = v30;
  v32 = v47;
  *(a2 + 664) = v31;
  *(a2 + 680) = v32;
  v33 = v41;
  *(a2 + 568) = *__p;
  *(a2 + 584) = v33;
  result = *&v42;
  v35 = v43;
  *(a2 + 600) = v42;
  *(a2 + 616) = v35;
  return result;
}

void sub_29A9F9C5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **p_p, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  p_p = &__p;
  sub_29A9C9AA8(&p_p);
  _Unwind_Resume(a1);
}

void sub_29A9F9CD0(uint64_t *a1, char *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = *a1;
  sub_29A008E78(&__p, a2);
  v9 = sub_29A9DD81C(v8, &__p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (*v9 == 4)
  {
    __p = 0;
    v13 = 0;
    v14 = 0;
    adobe::usd::unpackBase64String((v9 + 16), 0, &__p);
    v15 = 0;
    v16 = &v15;
    sub_29A18E224(a3, (v13 - __p) >> 2, &v16, v10);
    if (a4 && a5)
    {
      v11 = __p;
      sub_29A18E624(a3);
      adobe::usd::unpackMLPWeight(v11, *(a3 + 32), a4, a5);
    }

    else
    {
      sub_29A18E624(a3);
      memcpy(*(a3 + 32), __p, v13 - __p);
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }
}

void sub_29A9F9DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t adobe::usd::importNodes(void *a1)
{
  v31[4] = *MEMORY[0x29EDCA608];
  v29 = 0;
  v2 = (-84215045 * ((*(a1[1] + 152) - *(a1[1] + 144)) >> 3));
  sub_29A0A171C(a1 + 6, v2);
  sub_29A9FA0BC((a1[2] + 136), v2);
  sub_29A0A171C(a1 + 9, v2);
  __p = 0;
  v27 = 0;
  v28 = 0;
  v30[3] = 0;
  v3 = operator new(0x28uLL);
  *v3 = &unk_2A206E028;
  v3[1] = a1;
  v3[2] = &v29;
  v3[3] = &__p;
  v3[4] = v30;
  v31[3] = v3;
  sub_29A9FDC04(v31, v30);
  sub_29A9FD754(v31);
  v4 = a1[1];
  v5 = *(v4 + 288);
  for (i = *(v4 + 296); v5 != i; v5 += 264)
  {
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    while (v7 != v8)
    {
      v9 = *v7;
      if ((v9 & 0x80000000) == 0 && 0xFAFAFAFAFAFAFAFBLL * ((*(a1[1] + 152) - *(a1[1] + 144)) >> 3) > v9)
      {
        LODWORD(v31[0]) = sub_29A9FA150(v30, -1, v9);
        sub_29A00D250((a1[2] + 112), v31);
      }

      ++v7;
    }
  }

  v10 = __p;
  v11 = v27;
  if (__p != v27)
  {
    do
    {
      v12 = *v10;
      v13 = a1[1];
      v14 = *(v13 + 144) + 408 * *v10;
      v15 = *(v14 + 32);
      v16 = *(*(v13 + 216) + 248 * v15 + 28);
      if (v16 < 0)
      {
        v16 = *v10;
      }

      v17 = *(a1[9] + 4 * v16);
      if (v17 != -1)
      {
        v12 = v17;
      }

      v18 = *(a1[2] + 328) + 408 * v15;
      *(v18 + 48) = *(a1[6] + 4 * v12);
      v19 = (a1[15] + 24 * *(v14 + 36));
      v20 = *v19;
      v21 = v19[1];
      while (v20 != v21)
      {
        v22 = *v20;
        LODWORD(v31[0]) = *v20;
        v23 = *(v18 + 80);
        v24 = *(v18 + 88);
        if (v23 != v24)
        {
          while (*v23 != v22)
          {
            if (++v23 == v24)
            {
              goto LABEL_21;
            }
          }
        }

        if (v23 == v24)
        {
LABEL_21:
          sub_29A00D250((v18 + 80), v31);
        }

        ++v20;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  sub_29A9FD754(v30);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_29A9FA090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_29A9FD754(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A9FA0BC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAF8AF8AF8AF8AF8BLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_29A9FD4A0(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 560 * a2;
    while (v3 != v7)
    {
      v3 = sub_29A8EF518(v3 - 560);
    }

    a1[1] = v7;
  }
}

uint64_t sub_29A9FA150(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_29A0DDCB0();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void adobe::usd::checkMeshInstancing(void *a1, uint64_t a2, char *a3)
{
  v6 = a1[18];
  v5 = a1[19];
  if (v5 != v6)
  {
    v18 = v3;
    v19 = v4;
    v8 = 0;
    while (1)
    {
      v9 = *(v6 + 4 * v8);
      if (v9 < 2)
      {
        goto LABEL_7;
      }

      v10 = (a1[15] + 24 * v8);
      v11 = *v10;
      v12 = v10[1];
      if (v11 != v12)
      {
        break;
      }

LABEL_11:
      if (++v8 >= ((v5 - v6) >> 2))
      {
        return;
      }
    }

    v13 = *(a1[2] + 160);
    do
    {
      v14 = *v11++;
      *(v13 + 1112 * v14 + 865) = 1;
    }

    while (v11 != v12);
LABEL_7:
    if (!v9)
    {
      v15 = *(a1[1] + 120) + 264 * v8;
      v16[0] = "usdGltf/gltfImport.cpp";
      v16[1] = "checkMeshInstancing";
      v16[2] = 2300;
      v16[3] = "void adobe::usd::checkMeshInstancing(ImportGltfContext &)";
      v17 = 0;
      if (*(v15 + 23) < 0)
      {
        v15 = *v15;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v16, "Mesh %zu (%s) appears to be unused", a3, v8, v15);
      v6 = a1[18];
      v5 = a1[19];
    }

    goto LABEL_11;
  }
}

void adobe::usd::checkExtensions(uint64_t *a1, const void ***a2)
{
  v56[3] = *MEMORY[0x29EDCA608];
  sub_29A008E78(&v33, "KHR_draco_mesh_compression");
  sub_29A008E78(v36, "KHR_lights_punctual");
  sub_29A008E78(v37, "KHR_materials_anisotropy");
  sub_29A008E78(&v38, "KHR_materials_clearcoat");
  sub_29A008E78(&v40, "KHR_materials_emissive_strength");
  sub_29A008E78(v42, "KHR_materials_ior");
  sub_29A008E78(v43, "KHR_materials_sheen");
  sub_29A008E78(v44, "KHR_materials_specular");
  sub_29A008E78(v45, "KHR_materials_transmission");
  sub_29A008E78(v46, "KHR_materials_unlit");
  sub_29A008E78(v47, "KHR_materials_volume");
  sub_29A008E78(v48, "KHR_texture_transform");
  sub_29A008E78(v49, "EXT_texture_webp");
  sub_29A008E78(v50, "ADOBE_materials_clearcoat_specular");
  v4 = sub_29A008E78(v51, "ADOBE_materials_clearcoat_tint");
  NerfExtString = adobe::usd::getNerfExtString(v4);
  sub_29A008E78(v52, NerfExtString);
  sub_29A008E78(v53, "KHR_materials_pbrSpecularGlossiness");
  sub_29A008E78(v54, "KHR_materials_diffuse_transmission");
  sub_29A008E78(v55, "KHR_materials_subsurface");
  sub_29A008E78(v56, "KHR_materials_sss");
  sub_29A9FDE68(v31, &v33, 20);
  v6 = 60;
  do
  {
    if (SHIBYTE((&v33)[v6 - 1]) < 0)
    {
      operator delete(*&v31[v6 * 8]);
    }

    v6 -= 3;
  }

  while (v6 * 8);
  v29 = 0;
  v30 = 0;
  v28 = &v29;
  if (*a1 != a1[1] && sub_29A9E3F04(0))
  {
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("GTLF extensions used:\n", v7, v8);
  }

  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      if (sub_29A9E3F04(0))
      {
        v13 = v9;
        if (*(v9 + 23) < 0)
        {
          v13 = *v9;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("  %s\n", v11, v12, v13);
      }

      if (!sub_29A00AF58(v31, v9))
      {
        sub_29A095658(&v28, v9, v9);
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  v15 = *a2;
  v14 = a2[1];
  while (v15 != v14)
  {
    if (!sub_29A00AF58(v31, v15))
    {
      sub_29A095658(&v28, v15, v15);
    }

    v15 += 3;
  }

  if (v30)
  {
    sub_29A00B6DC(&v33);
    sub_29A00911C(&v33, "Asset uses unsupported glTF extensions:\n", 40);
    v16 = v28;
    if (v28 != &v29)
    {
      do
      {
        v17 = sub_29A00911C(&v33, "  ", 2);
        v18 = *(v16 + 55);
        if (v18 >= 0)
        {
          v19 = (v16 + 4);
        }

        else
        {
          v19 = v16[4];
        }

        if (v18 >= 0)
        {
          v20 = *(v16 + 55);
        }

        else
        {
          v20 = v16[5];
        }

        v21 = sub_29A00911C(v17, v19, v20);
        sub_29A00911C(v21, "\n", 1);
        v22 = v16[1];
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
          do
          {
            v23 = v16[2];
            v24 = *v23 == v16;
            v16 = v23;
          }

          while (!v24);
        }

        v16 = v23;
      }

      while (v23 != &v29);
    }

    std::stringbuf::str();
    v25[0] = "usdGltf/gltfImport.cpp";
    v25[1] = "checkExtensions";
    v25[2] = 2370;
    v25[3] = "void adobe::usd::checkExtensions(const std::vector<std::string> &, const std::vector<std::string> &)";
    v26 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v25, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = *MEMORY[0x29EDC9538];
    *(&v33 + *(v33 - 3)) = *(MEMORY[0x29EDC9538] + 24);
    v34 = MEMORY[0x29EDC9570] + 16;
    if (v39 < 0)
    {
      operator delete(v38);
    }

    v34 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(&v35);
    std::ostream::~ostream();
    MEMORY[0x29C2C4390](&v41);
  }

  sub_29A019EE8(&v28, v29);
  sub_29A019EE8(v31, v32);
}

void sub_29A9FA804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, char *a22, uint64_t a23, char a24, char *a25, uint64_t a26, char a27)
{
  sub_29A019EE8(&a21, a22);
  sub_29A019EE8(&a24, a25);
  _Unwind_Resume(a1);
}

void adobe::usd::importGltf(_BYTE *a1, uint64_t a2, void *a3, std::string *a4)
{
  v50[2] = *MEMORY[0x29EDCA608];
  adobe::usd::checkExtensions((a2 + 392), (a2 + 416));
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v41 = 0u;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = 1065353216;
  v49 = 1065353216;
  v45 = 0;
  v30 = a1;
  pxrInternal__aapl__pxrReserved__::TfGetBaseName(a4, &v29);
  sub_29A769530(&v41, &v29);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (v8 == v9)
  {
LABEL_19:
    *&v31 = a2;
    *(&v31 + 1) = a3;
    MEMORY[0x29C2C1A60](a3 + 2, "gltf2usd");
    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    if (!v14)
    {
      v14 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
    }

    sub_29A166F2C(a3, v14 + 169);
    a3[1] = 0x3FF0000000000000;
    a3[10] = 0x3FF0000000000000;
    if (adobe::usd::importMetadata(&v30))
    {
      adobe::usd::importCameras(&v30);
      if (a1[1] == 1)
      {
        adobe::usd::importMaterials(&v30);
      }

      if (*a1 == 1)
      {
        adobe::usd::importLights(&v30);
        adobe::usd::importMeshes(&v30);
        sub_29A9FAC74(*(&v31 + 1) + 328, 0xEF7BDEF7BDEF7BDFLL * ((*(v31 + 224) - *(v31 + 216)) >> 3));
        adobe::usd::importNodes(&v30);
        adobe::usd::importSkeletons(&v30);
        adobe::usd::importAnimationTracks(&v30);
        adobe::usd::importNodeAnimations(&v30, v15, v16);
        adobe::usd::importSkeletonAnimations(&v30, v17, v18);
        adobe::usd::checkMeshInstancing(&v30, v19, v20);
      }

      sub_29A008E78(__p, "filenames");
      v50[1] = off_2A20479C8;
      v21 = operator new(0x30uLL);
      v22 = v42;
      *v21 = v41;
      *(v21 + 1) = v22;
      v23 = v43;
      *(v21 + 4) = v43;
      if (v23)
      {
        v24 = (v23 - 16);
        if (*(v21 + 3))
        {
          v24 = *(v21 + 3);
        }

        atomic_fetch_add_explicit(v24, 1uLL, memory_order_relaxed);
      }

      atomic_store(0, v21 + 10);
      v50[0] = v21;
      atomic_fetch_add_explicit(v21 + 10, 1u, memory_order_relaxed);
      pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath((a3 + 5), __p, v50, ":");
      sub_29A186B14(v50);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    sub_29A9FB4B4(&v30);
  }

  while (1)
  {
    sub_29A9FB328(__p, v8);
    if (v28 < 0)
    {
      if (v27)
      {
        if (v27 >= 5)
        {
          v10 = 5;
        }

        else
        {
          v10 = v27;
        }

        p_s1 = __s1;
LABEL_13:
        v12 = memcmp(p_s1, "data:", v10);
        if (v10 < 5 || v12 != 0)
        {
          sub_29A769530(&v41, &__s1);
        }
      }
    }

    else if (v28)
    {
      if (v28 >= 5)
      {
        v10 = 5;
      }

      else
      {
        v10 = v28;
      }

      p_s1 = &__s1;
      goto LABEL_13;
    }

    sub_29A9CC158(__p);
    v8 = (v8 + 264);
    if (v8 == v9)
    {
      goto LABEL_19;
    }
  }
}

void sub_29A9FAC08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  sub_29A186B14(v51 - 112);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  sub_29A9FB4B4(&a51);
}

char **sub_29A9FAC74(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 8);
  v4 = 0xFAFAFAFAFAFAFAFBLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_29A9FDEEC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 408 * a2;
    if (result != v7)
    {
      sub_29A931C18();
    }

    *(a1 + 8) = v7;
  }

  return result;
}

uint64_t sub_29A9FAD08(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(result + 16) - *result) >> 3) < a4)
  {
    sub_29A9CCEAC(result);
    if (a4 > 0x222222222222222)
    {
      sub_29A00C9A4();
    }

    v9 = 0xDDDDDDDDDDDDDDDELL * ((v7[2] - *v7) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xEEEEEEEEEEEEEEEFLL * ((v7[2] - *v7) >> 3) >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v9;
    }

    sub_29A9C996C(v7, v10);
    result = sub_29A9C99B8(v7, v6, a3, v7[1]);
LABEL_15:
    v7[1] = result;
    return result;
  }

  v11 = *(result + 8);
  v12 = v11 - v8;
  if (0xEEEEEEEEEEEEEEEFLL * ((v11 - v8) >> 3) < a4)
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        sub_29A9F020C(v8, v14);
        v14 += 120;
        v8 += 120;
        v13 -= 120;
      }

      while (v13);
      v11 = v7[1];
    }

    result = sub_29A9C99B8(v7, v6 + v12, a3, v11);
    goto LABEL_15;
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A9F020C(v8, v6);
      v6 += 120;
      v8 += 120;
    }

    while (v6 != a3);
    v11 = v7[1];
  }

  while (v11 != v8)
  {
    v11 -= 120;
    result = sub_29A9C9A40(v11);
  }

  v7[1] = v8;
  return result;
}

uint64_t **sub_29A9FAEA0(uint64_t **result, __int128 *a2, __int128 *a3)
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
          std::string::operator=((v8 + 4), (v9 + 2));
          sub_29A9F020C(v8 + 7, v9 + 56);
          v10 = sub_29A0286E4(v5, &v18, v17 + 4);
          sub_29A00B204(v5, v18, v10, v17);
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

    result = sub_29A9FB030(&v15);
  }

  if (a2 != a3)
  {
    do
    {
      result = sub_29A9FB088(v5, a2 + 2);
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

uint64_t sub_29A9FB030(uint64_t a1)
{
  sub_29A9C9BD8(*a1, *(a1 + 16));
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

    sub_29A9C9BD8(*a1, v2);
  }

  return a1;
}

const void **sub_29A9FB088(uint64_t **a1, __int128 *a2)
{
  sub_29A9C96F4(a1, a2, &v6);
  v3 = sub_29A0286E4(a1, &v5, v6 + 4);
  sub_29A00B204(a1, v5, v3, v6);
  return v6;
}

void sub_29A9FB0E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9C9B2C(va, 0);
  _Unwind_Resume(a1);
}

char *sub_29A9FB0F8(char *__dst, __int128 *a2)
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

  *(__dst + 3) = *(a2 + 3);
  sub_29A9C97D8((__dst + 32), (a2 + 2));
  sub_29A9C9590(__dst + 19, a2 + 19);
  if (*(a2 + 199) < 0)
  {
    sub_29A008D14(__dst + 176, *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v5 = a2[11];
    *(__dst + 24) = *(a2 + 24);
    *(__dst + 11) = v5;
  }

  if (*(a2 + 223) < 0)
  {
    sub_29A008D14(__dst + 200, *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v6 = *(a2 + 200);
    *(__dst + 27) = *(a2 + 27);
    *(__dst + 200) = v6;
  }

  return __dst;
}

void sub_29A9FB1B8(_Unwind_Exception *a1)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  sub_29A9C9BD8(v1 + 152, *(v1 + 160));
  sub_29A9C9A40(v1 + 32);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_29A9FB210(char *__dst, __int128 *a2)
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

  *(__dst + 24) = *(a2 + 24);
  sub_29A9C97D8((__dst + 40), a2 + 40);
  sub_29A9C9590(__dst + 20, a2 + 20);
  if (*(a2 + 207) < 0)
  {
    sub_29A008D14(__dst + 184, *(a2 + 23), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 184);
    *(__dst + 25) = *(a2 + 25);
    *(__dst + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_29A008D14(__dst + 208, *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v6 = a2[13];
    *(__dst + 28) = *(a2 + 28);
    *(__dst + 13) = v6;
  }

  return __dst;
}

void sub_29A9FB2D0(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_29A9C9BD8(v1 + 160, *(v1 + 168));
  sub_29A9C9A40(v1 + 40);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_29A9FB328(char *__dst, __int128 *a2)
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

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  sub_29A8CDED0(__dst + 3, *(a2 + 3), *(a2 + 4), *(a2 + 4) - *(a2 + 3));
  if (*(a2 + 71) < 0)
  {
    sub_29A008D14(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v5 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v5;
  }

  sub_29A9C97D8((__dst + 72), a2 + 72);
  sub_29A9C9590(__dst + 24, a2 + 24);
  if (*(a2 + 239) < 0)
  {
    sub_29A008D14(__dst + 216, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v6 = *(a2 + 216);
    *(__dst + 29) = *(a2 + 29);
    *(__dst + 216) = v6;
  }

  if (*(a2 + 263) < 0)
  {
    sub_29A008D14(__dst + 240, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    v7 = a2[15];
    *(__dst + 32) = *(a2 + 32);
    *(__dst + 15) = v7;
  }

  return __dst;
}

void sub_29A9FB42C(_Unwind_Exception *a1)
{
  if (*(v1 + 239) < 0)
  {
    operator delete(*(v1 + 216));
  }

  sub_29A9C9BD8(v1 + 192, *(v1 + 200));
  sub_29A9C9A40(v1 + 72);
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_29A9FB4B4(uint64_t a1)
{
  sub_29A0EB4E8(a1 + 248);
  sub_29A0EB570(a1 + 208);
  pxrInternal__aapl__pxrReserved__::VtArray<std::string>::_DecRef();
}

void sub_29A9FB55C(uint64_t a1, char *a2)
{
  sub_29A008E78(__p, a2);
  *(a1 + 8) = &off_2A2044DD0;
  sub_29A1B01B8(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A9FB5B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9FB5D0(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (0x8E38E38E38E38E39 * ((v2 - v3) >> 5) < a2)
  {
    v4 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 5);
    if (v4 + a2 <= 0xE38E38E38E38E3)
    {
      v5 = 0x8E38E38E38E38E39 * ((v2 - *a1) >> 5);
      v6 = 2 * v5;
      if (2 * v5 <= v4 + a2)
      {
        v6 = v4 + a2;
      }

      if (v5 >= 0x71C71C71C71C71)
      {
        v7 = 0xE38E38E38E38E3;
      }

      else
      {
        v7 = v6;
      }

      if (v7)
      {
        v8 = sub_29A82C31C(a1, v7);
      }

      else
      {
        v8 = 0;
      }

      v10 = &v8[288 * v4];
      *(v10 + 16) = 0u;
      *(v10 + 17) = 0u;
      *(v10 + 14) = 0u;
      *(v10 + 15) = 0u;
      *(v10 + 12) = 0u;
      *(v10 + 13) = 0u;
      *(v10 + 10) = 0u;
      *(v10 + 11) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 9) = 0u;
      *(v10 + 6) = 0u;
      *(v10 + 7) = 0u;
      *(v10 + 4) = 0u;
      *(v10 + 5) = 0u;
      *(v10 + 2) = 0u;
      *(v10 + 3) = 0u;
      *v10 = 0u;
      *(v10 + 1) = 0u;
      sub_29A931B18(v10);
    }

    sub_29A00C9A4();
  }

  return sub_29A9FB790(a1, a2);
}

void sub_29A9FB770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A935AA0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9FB790(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (a2)
  {
    v2[16] = 0u;
    v2[17] = 0u;
    v2[14] = 0u;
    v2[15] = 0u;
    v2[12] = 0u;
    v2[13] = 0u;
    v2[10] = 0u;
    v2[11] = 0u;
    v2[8] = 0u;
    v2[9] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    sub_29A931B18(v2);
  }

  *(result + 8) = v2;
  return result;
}

void *sub_29A9FB81C(uint64_t a1, int *a2, void *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 4) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v6;
  v10[2] = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}

void sub_29A9FBA38(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x7194A17F55A10DC1 * ((v4 - v5) >> 3) >= a2)
  {

    sub_29A9FBBE8(a1, a2);
  }

  else
  {
    v6 = 0x7194A17F55A10DC1 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0xE32942FEAB421)
    {
      sub_29A00C9A4();
    }

    v7 = 0x7194A17F55A10DC1 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x7194A17F55A10)
    {
      v9 = 0xE32942FEAB421;
    }

    else
    {
      v9 = v8;
    }

    v21 = a1;
    if (v9)
    {
      v10 = sub_29A93552C(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = (v10 + 4616 * v6);
    v18 = v10;
    v19 = v11;
    *&v20 = v11;
    *(&v20 + 1) = v10 + 4616 * v9;
    v12 = 4616 * a2;
    v13 = v11 + 4616 * a2;
    do
    {
      bzero(v11, 0x1208uLL);
      sub_29A9FBC64(v11);
      v11 = (v11 + 4616);
      v12 -= 4616;
    }

    while (v12);
    *&v20 = v13;
    v14 = *(a1 + 8);
    v15 = v19 + *a1 - v14;
    sub_29A935578(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    *(a1 + 8) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    sub_29A9355F4(&v18);
  }
}

void sub_29A9FBBC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9355F4(va);
  _Unwind_Resume(a1);
}

void sub_29A9FBBE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = &v3[4616 * a2];
    v5 = 4616 * a2;
    do
    {
      bzero(v3, 0x1208uLL);
      sub_29A9FBC64(v3);
      v3 += 4616;
      v5 -= 4616;
    }

    while (v5);
    v3 = v4;
  }

  *(a1 + 8) = v3;
}

double sub_29A9FBC64(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 72) = -1;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = -1;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 352) = 0;
  *(a1 + 276) = 0;
  *(a1 + 244) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 376) = -1;
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  *(a1 + 428) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = -1;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  *(a1 + 580) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = -1;
  *(a1 + 744) = 0;
  *(a1 + 760) = 0;
  *(a1 + 776) = 0;
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 684) = 0u;
  *(a1 + 700) = 0u;
  *(a1 + 716) = 0u;
  *(a1 + 732) = 0;
  *(a1 + 824) = 0;
  *(a1 + 832) = -1;
  *(a1 + 896) = 0;
  *(a1 + 912) = 0;
  *(a1 + 928) = 0;
  *(a1 + 944) = 0;
  *(a1 + 960) = 0;
  *(a1 + 884) = 0;
  *(a1 + 852) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 976) = 0;
  *(a1 + 984) = -1;
  *(a1 + 1048) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = -1;
  *(a1 + 1200) = 0;
  *(a1 + 1216) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1188) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = -1;
  *(a1 + 1352) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1400) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1340) = 0;
  *(a1 + 1432) = 0;
  *(a1 + 1440) = -1;
  *(a1 + 1504) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1552) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1492) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1592) = -1;
  *(a1 + 1656) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1688) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1644) = 0;
  *(a1 + 1736) = 0;
  *(a1 + 1744) = -1;
  *(a1 + 1808) = 0;
  *(a1 + 1824) = 0;
  *(a1 + 1840) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1872) = 0;
  *(a1 + 1796) = 0;
  *(a1 + 1888) = 0;
  *(a1 + 1896) = -1;
  *(a1 + 1960) = 0;
  *(a1 + 1976) = 0;
  *(a1 + 1992) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 2024) = 0;
  *(a1 + 1948) = 0;
  *(a1 + 2040) = 0;
  *(a1 + 2048) = -1;
  *(a1 + 2112) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2160) = 0;
  *(a1 + 2176) = 0;
  *(a1 + 2100) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = -1;
  *(a1 + 2264) = 0;
  *(a1 + 2280) = 0;
  *(a1 + 2296) = 0;
  *(a1 + 2312) = 0;
  *(a1 + 2328) = 0;
  *(a1 + 2252) = 0;
  *(a1 + 2344) = 0;
  *(a1 + 2352) = -1;
  *(a1 + 2416) = 0;
  *(a1 + 2432) = 0;
  *(a1 + 2448) = 0;
  *(a1 + 2464) = 0;
  *(a1 + 2480) = 0;
  *(a1 + 2404) = 0;
  *(a1 + 2496) = 0;
  *(a1 + 2504) = -1;
  *(a1 + 2568) = 0;
  *(a1 + 2584) = 0;
  *(a1 + 2600) = 0;
  *(a1 + 2616) = 0;
  *(a1 + 2632) = 0;
  *(a1 + 2556) = 0;
  *(a1 + 2648) = 0;
  *(a1 + 2656) = -1;
  *(a1 + 2720) = 0;
  *(a1 + 2736) = 0;
  *(a1 + 2752) = 0;
  *(a1 + 2768) = 0;
  *(a1 + 2784) = 0;
  *(a1 + 2708) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2808) = -1;
  *(a1 + 2872) = 0;
  *(a1 + 2888) = 0;
  *(a1 + 2904) = 0;
  *(a1 + 2920) = 0;
  *(a1 + 2936) = 0;
  *(a1 + 2860) = 0;
  *(a1 + 2952) = 0;
  *(a1 + 2960) = -1;
  *(a1 + 3024) = 0;
  *(a1 + 3040) = 0;
  *(a1 + 3056) = 0;
  *(a1 + 3072) = 0;
  *(a1 + 3088) = 0;
  *(a1 + 3012) = 0;
  *(a1 + 3104) = 0;
  *(a1 + 3112) = -1;
  *(a1 + 3176) = 0;
  *(a1 + 3192) = 0;
  *(a1 + 3208) = 0;
  *(a1 + 3224) = 0;
  *(a1 + 3240) = 0;
  *(a1 + 3164) = 0;
  *(a1 + 3256) = 0;
  *(a1 + 3264) = -1;
  *(a1 + 3328) = 0;
  *(a1 + 3344) = 0;
  *(a1 + 3360) = 0;
  *(a1 + 3376) = 0;
  *(a1 + 3392) = 0;
  *(a1 + 3316) = 0;
  *(a1 + 3408) = 0;
  *(a1 + 3416) = -1;
  *(a1 + 3480) = 0;
  *(a1 + 3496) = 0;
  *(a1 + 3512) = 0;
  *(a1 + 3528) = 0;
  *(a1 + 3544) = 0;
  *(a1 + 3468) = 0;
  *(a1 + 3560) = 0;
  *(a1 + 3568) = -1;
  *(a1 + 3632) = 0;
  *(a1 + 3648) = 0;
  *(a1 + 3664) = 0;
  *(a1 + 3680) = 0;
  *(a1 + 3696) = 0;
  *(a1 + 3620) = 0;
  *(a1 + 3712) = 0;
  *(a1 + 3720) = -1;
  *(a1 + 3784) = 0;
  *(a1 + 3800) = 0;
  *(a1 + 3816) = 0;
  *(a1 + 3832) = 0;
  *(a1 + 3848) = 0;
  *(a1 + 3772) = 0;
  *(a1 + 3864) = 0;
  *(a1 + 3872) = -1;
  *(a1 + 3936) = 0;
  *(a1 + 3952) = 0;
  *(a1 + 3968) = 0;
  *(a1 + 3984) = 0;
  *(a1 + 4000) = 0;
  *(a1 + 3924) = 0;
  *(a1 + 4016) = 0;
  *(a1 + 4024) = -1;
  *(a1 + 4088) = 0;
  *(a1 + 4104) = 0;
  *(a1 + 4120) = 0;
  *(a1 + 4136) = 0;
  *(a1 + 4152) = 0;
  *(a1 + 4076) = 0;
  *(a1 + 4168) = 0;
  *(a1 + 4176) = -1;
  *(a1 + 4240) = 0;
  *(a1 + 4256) = 0;
  *(a1 + 4272) = 0;
  *(a1 + 4288) = 0;
  *(a1 + 4304) = 0;
  *(a1 + 4228) = 0;
  *(a1 + 4320) = 0;
  *(a1 + 4328) = -1;
  *(a1 + 4392) = 0;
  *(a1 + 4408) = 0;
  *(a1 + 4424) = 0;
  *(a1 + 4440) = 0;
  *(a1 + 4456) = 0;
  *(a1 + 4380) = 0;
  *(a1 + 4472) = 0;
  *(a1 + 4480) = -1;
  *(a1 + 4544) = 0;
  *(a1 + 4560) = 0;
  *(a1 + 4576) = 0;
  *(a1 + 4592) = 0;
  *(a1 + 4608) = 0;
  *(a1 + 4532) = 0;
  *(a1 + 228) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 380) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0u;
  *(a1 + 548) = 0u;
  *(a1 + 564) = 0u;
  *(a1 + 532) = 0u;
  *(a1 + 1004) = 0u;
  *(a1 + 1020) = 0u;
  *(a1 + 988) = 0u;
  *(a1 + 1156) = 0u;
  *(a1 + 1172) = 0u;
  *(a1 + 1140) = 0u;
  *(a1 + 1308) = 0u;
  *(a1 + 1324) = 0u;
  *(a1 + 1292) = 0u;
  *(a1 + 1460) = 0u;
  *(a1 + 1476) = 0u;
  *(a1 + 1444) = 0u;
  *(a1 + 1612) = 0u;
  *(a1 + 1628) = 0u;
  *(a1 + 1596) = 0u;
  *(a1 + 1764) = 0u;
  *(a1 + 1780) = 0u;
  *(a1 + 1748) = 0u;
  *(a1 + 1916) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1900) = 0u;
  *(a1 + 2068) = 0u;
  *(a1 + 2084) = 0u;
  *(a1 + 2052) = 0u;
  *(a1 + 2220) = 0u;
  *(a1 + 2236) = 0u;
  *(a1 + 2204) = 0u;
  *(a1 + 2372) = 0u;
  *(a1 + 2388) = 0u;
  *(a1 + 2356) = 0u;
  *(a1 + 2524) = 0u;
  *(a1 + 2540) = 0u;
  *(a1 + 2508) = 0u;
  *(a1 + 2676) = 0u;
  *(a1 + 2692) = 0u;
  *(a1 + 2660) = 0u;
  *(a1 + 2828) = 0u;
  *(a1 + 2844) = 0u;
  *(a1 + 2812) = 0u;
  *(a1 + 2980) = 0u;
  *(a1 + 2996) = 0u;
  *(a1 + 2964) = 0u;
  *(a1 + 3132) = 0u;
  *(a1 + 3148) = 0u;
  *(a1 + 3116) = 0u;
  *(a1 + 3284) = 0u;
  *(a1 + 3300) = 0u;
  *(a1 + 3268) = 0u;
  *(a1 + 3436) = 0u;
  *(a1 + 3452) = 0u;
  *(a1 + 3420) = 0u;
  *(a1 + 3588) = 0u;
  *(a1 + 3604) = 0u;
  *(a1 + 3572) = 0u;
  *(a1 + 3740) = 0u;
  *(a1 + 3756) = 0u;
  *(a1 + 3724) = 0u;
  *(a1 + 3892) = 0u;
  *(a1 + 3908) = 0u;
  *(a1 + 3876) = 0u;
  *(a1 + 4044) = 0u;
  *(a1 + 4060) = 0u;
  *(a1 + 4028) = 0u;
  *(a1 + 4196) = 0u;
  *(a1 + 4212) = 0u;
  *(a1 + 4180) = 0u;
  *(a1 + 4348) = 0u;
  *(a1 + 4364) = 0u;
  *(a1 + 4332) = 0u;
  *(a1 + 4500) = 0u;
  *(a1 + 4516) = 0u;
  *(a1 + 4484) = 0u;
  return result;
}

char **sub_29A9FC1DC(char **result, unint64_t a2, __int128 *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = &v7[24 * a2];
      v14 = 24 * a2;
      do
      {
        if (*(a3 + 23) < 0)
        {
          result = sub_29A008D14(v7, *a3, *(a3 + 1));
        }

        else
        {
          v15 = *a3;
          *(v7 + 2) = *(a3 + 2);
          *v7 = v15;
        }

        v7 += 24;
        v14 -= 24;
      }

      while (v14);
      v7 = v13;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v23 = result;
    if (v11)
    {
      v12 = sub_29A012C48(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v20 = v12;
    v21 = &v12[24 * v8];
    *&v22 = v21;
    *(&v22 + 1) = &v12[24 * v11];
    sub_29A9FC380(&v20, a2, a3);
    v16 = v5[1] - *v5;
    v17 = &v21[-v16];
    memcpy(&v21[-v16], *v5, v16);
    v18 = *v5;
    *v5 = v17;
    v19 = v5[2];
    *(v5 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_29A01FF14(&v20);
  }

  return result;
}

void sub_29A9FC360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

void *sub_29A9FC380(void *result, uint64_t a2, __int128 *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 24 * a2;
    v7 = 24 * a2;
    do
    {
      if (*(a3 + 23) < 0)
      {
        result = sub_29A008D14(v4, *a3, *(a3 + 1));
      }

      else
      {
        v8 = *a3;
        *(v4 + 16) = *(a3 + 2);
        *v4 = v8;
      }

      v4 += 24;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_29A9FC410(uint64_t a1)
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

__n128 sub_29A9FC498(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A206DF98;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 sub_29A9FC4E4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A206DF98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_29A9FC514(uint64_t a1, unsigned int *a2, int *a3)
{
  v3 = *a3;
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(*(a1 + 8) + 8);
    v6 = *(v5 + 144);
    if (0xFAFAFAFAFAFAFAFBLL * ((*(v5 + 152) - v6) >> 3) > v3)
    {
      v7 = *a2;
      std::to_string(&__dst, *a3);
      v8 = std::string::insert(&__dst, 0, "n");
      v9 = *&v8->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v10 = *(*(a1 + 8) + 96);
      v11 = 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 8) + 104) - v10) >> 3);
      if (v11 > v3)
      {
        if ((v7 & 0x80000000) != 0 || v11 <= v7)
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_29A008D14(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            v10 = *(*(a1 + 8) + 96);
          }

          else
          {
            __dst = __p;
          }

          v22 = v10 + 24 * v3;
          if (*(v22 + 23) < 0)
          {
            operator delete(*v22);
          }

          v23 = *&__dst.__r_.__value_.__l.__data_;
          *(v22 + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v22 = v23;
        }

        else
        {
          v12 = (v10 + 24 * v7);
          if (*(v12 + 23) >= 0)
          {
            v13 = *(v12 + 23);
          }

          else
          {
            v13 = v12[1];
          }

          v14 = &v29;
          sub_29A022DE0(&v29, v13 + 1);
          if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v14 = v29.__r_.__value_.__r.__words[0];
          }

          if (v13)
          {
            if (*(v12 + 23) >= 0)
            {
              v15 = v12;
            }

            else
            {
              v15 = *v12;
            }

            memmove(v14, v15, v13);
          }

          *(&v14->__r_.__value_.__l.__data_ + v13) = 47;
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

          v18 = std::string::append(&v29, p_p, size);
          v19 = *&v18->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v19;
          v18->__r_.__value_.__l.__size_ = 0;
          v18->__r_.__value_.__r.__words[2] = 0;
          v18->__r_.__value_.__r.__words[0] = 0;
          v20 = *(*(a1 + 8) + 96) + 24 * v3;
          if (*(v20 + 23) < 0)
          {
            operator delete(*v20);
          }

          v21 = *&__dst.__r_.__value_.__l.__data_;
          *(v20 + 16) = *(&__dst.__r_.__value_.__l + 2);
          *v20 = v21;
          if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v29.__r_.__value_.__l.__data_);
          }
        }

        v24 = v6 + 408 * v3;
        v25 = *(v24 + 72);
        v26 = *(v24 + 80);
        v27 = (v24 + 72);
        if (v26 != v25)
        {
          v28 = 0;
          do
          {
            sub_29A9F76D8(*(a1 + 16), v3, *(v25 + 4 * v28++));
            v25 = *v27;
          }

          while (v28 < (v27[1] - *v27) >> 2);
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_29A9FC78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A9FC7DC(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206E008))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9FC828(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
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

void sub_29A9FCA80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

void **sub_29A9FCA8C(void **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (a2 <= (v5 - v4) >> 6)
  {
    if (a2)
    {
      v12 = &v4[64 * a2];
      do
      {
        *(v4 + 2) = 0uLL;
        *(v4 + 3) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 1) = 0uLL;
        *(v4 + 12) = 1325400064;
        *(v4 + 52) = 0;
        v4[60] = 0;
        v4 += 64;
      }

      while (v4 != v12);
      v4 = v12;
    }

    result[1] = v4;
  }

  else
  {
    v6 = v4 - *result;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 6;
    v9 = v5 - *result;
    if (v9 >> 5 > v7)
    {
      v7 = v9 >> 5;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v10 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v22 = result;
    if (v10)
    {
      v11 = sub_29A0BE3C0(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v13 = &v11[64 * v8];
    v19 = v11;
    v20 = v13;
    *(&v21 + 1) = &v11[64 * v10];
    v14 = v13;
    do
    {
      *(v14 + 2) = 0uLL;
      *(v14 + 3) = 0uLL;
      *v14 = 0uLL;
      *(v14 + 1) = 0uLL;
      *(v14 + 12) = 1325400064;
      *(v14 + 52) = 0;
      v14[60] = 0;
      v14 += 64;
    }

    while (v14 != &v13[64 * a2]);
    *&v21 = &v13[64 * a2];
    v15 = v3[1];
    v16 = &v13[*v3 - v15];
    sub_29A8F4F54(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = v3[2];
    *(v3 + 1) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    return sub_29A8F50C0(&v19);
  }

  return result;
}

void sub_29A9FCBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A8F50C0(va);
  _Unwind_Resume(a1);
}

void *sub_29A9FCBF4(uint64_t a1, int *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = *a2;
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      v10 = *v9;
      if (*v9)
      {
        do
        {
          v11 = v10[1];
          if (v11 == v6)
          {
            if (*(v10 + 4) == v6)
            {
              return v10;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v11 >= v7)
              {
                v11 %= v7;
              }
            }

            else
            {
              v11 &= v7 - 1;
            }

            if (v11 != v3)
            {
              break;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  v10 = operator new(0x18uLL);
  *v10 = 0;
  v10[1] = v6;
  *(v10 + 4) = *a3;
  v12 = (*(a1 + 24) + 1);
  v13 = *(a1 + 32);
  if (!v7 || (v13 * v7) < v12)
  {
    v14 = 1;
    if (v7 >= 3)
    {
      v14 = (v7 & (v7 - 1)) != 0;
    }

    v15 = v14 | (2 * v7);
    v16 = vcvtps_u32_f32(v12 / v13);
    if (v15 <= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_29A019AA0(a1, v17);
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v3);
  if (v19)
  {
    *v10 = *v19;
LABEL_38:
    *v19 = v10;
    goto LABEL_39;
  }

  *v10 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(v18 + 8 * v3) = a1 + 16;
  if (*v10)
  {
    v20 = *(*v10 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v20 >= v7)
      {
        v20 %= v7;
      }
    }

    else
    {
      v20 &= v7 - 1;
    }

    v19 = (*a1 + 8 * v20);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v10;
}

void *sub_29A9FCE10(void *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v6 = a1[1];
    v7 = v6 + 40 * a2;
    do
    {
      v8 = *(a3 + 16);
      *v6 = *a3;
      *(v6 + 16) = v8;
      v9 = *(a3 + 32);
      *(v6 + 32) = v9;
      if (v9)
      {
        v10 = (v9 - 16);
        if (*(v6 + 24))
        {
          v10 = *(v6 + 24);
        }

        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      v6 += 40;
    }

    while (v6 != v7);
    a1[1] = v7;
  }

  return a1;
}

void *sub_29A9FCEC4(void *a1, unint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A10E7C8(a1, a2);
    v6 = a1[1];
    v7 = v6 + 40 * a2;
    do
    {
      v8 = *(a3 + 16);
      *v6 = *a3;
      *(v6 + 16) = v8;
      v9 = *(a3 + 32);
      *(v6 + 32) = v9;
      if (v9)
      {
        v10 = (v9 - 16);
        if (*(v6 + 24))
        {
          v10 = *(v6 + 24);
        }

        atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
      }

      v6 += 40;
    }

    while (v6 != v7);
    a1[1] = v7;
  }

  return a1;
}

uint64_t *sub_29A9FCF78(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = v6 + 40 * a2;
      do
      {
        v14 = *(a3 + 16);
        *v6 = *a3;
        *(v6 + 16) = v14;
        v15 = *(a3 + 32);
        *(v6 + 32) = v15;
        if (v15)
        {
          v16 = (v15 - 16);
          if (*(v6 + 24))
          {
            v16 = *(v6 + 24);
          }

          atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
        }

        v6 += 40;
      }

      while (v6 != v13);
      v6 = v13;
    }

    result[1] = v6;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v29 = result;
    if (v11)
    {
      v12 = sub_29A10E224(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = &v12[40 * v8];
    v26 = v12;
    v27 = v17;
    *(&v28 + 1) = &v12[40 * v11];
    v18 = v17;
    do
    {
      v19 = *(a3 + 16);
      *v18 = *a3;
      *(v18 + 1) = v19;
      v20 = *(a3 + 32);
      *(v18 + 4) = v20;
      if (v20)
      {
        v21 = (v20 - 16);
        if (*(v18 + 3))
        {
          v21 = *(v18 + 3);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      v18 += 40;
    }

    while (v18 != &v17[40 * a2]);
    *&v28 = &v17[40 * a2];
    v22 = v5[1];
    v23 = &v17[*v5 - v22];
    sub_29A8F37F4(v5, *v5, v22, v23);
    v24 = *v5;
    *v5 = v23;
    v25 = v5[2];
    *(v5 + 1) = v28;
    *&v28 = v24;
    *(&v28 + 1) = v25;
    v26 = v24;
    v27 = v24;
    return sub_29A8F3968(&v26);
  }

  return result;
}

void sub_29A9FD11C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A8F3968(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A9FD130(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = v6 + 40 * a2;
      do
      {
        v14 = *(a3 + 16);
        *v6 = *a3;
        *(v6 + 16) = v14;
        v15 = *(a3 + 32);
        *(v6 + 32) = v15;
        if (v15)
        {
          v16 = (v15 - 16);
          if (*(v6 + 24))
          {
            v16 = *(v6 + 24);
          }

          atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
        }

        v6 += 40;
      }

      while (v6 != v13);
      v6 = v13;
    }

    result[1] = v6;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v29 = result;
    if (v11)
    {
      v12 = sub_29A10E224(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = &v12[40 * v8];
    v26 = v12;
    v27 = v17;
    *(&v28 + 1) = &v12[40 * v11];
    v18 = v17;
    do
    {
      v19 = *(a3 + 16);
      *v18 = *a3;
      *(v18 + 1) = v19;
      v20 = *(a3 + 32);
      *(v18 + 4) = v20;
      if (v20)
      {
        v21 = (v20 - 16);
        if (*(v18 + 3))
        {
          v21 = *(v18 + 3);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      v18 += 40;
    }

    while (v18 != &v17[40 * a2]);
    *&v28 = &v17[40 * a2];
    v22 = v5[1];
    v23 = &v17[*v5 - v22];
    sub_29A79293C(v5, *v5, v22, v23);
    v24 = *v5;
    *v5 = v23;
    v25 = v5[2];
    *(v5 + 1) = v28;
    *&v28 = v24;
    *(&v28 + 1) = v25;
    v26 = v24;
    v27 = v24;
    return sub_29A792AB0(&v26);
  }

  return result;
}

void sub_29A9FD2D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A792AB0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A9FD2E8(uint64_t *result, unint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 3) >= a2)
  {
    if (a2)
    {
      v13 = v6 + 40 * a2;
      do
      {
        v14 = *(a3 + 16);
        *v6 = *a3;
        *(v6 + 16) = v14;
        v15 = *(a3 + 32);
        *(v6 + 32) = v15;
        if (v15)
        {
          v16 = (v15 - 16);
          if (*(v6 + 24))
          {
            v16 = *(v6 + 24);
          }

          atomic_fetch_add_explicit(v16, 1uLL, memory_order_relaxed);
        }

        v6 += 40;
      }

      while (v6 != v13);
      v6 = v13;
    }

    result[1] = v6;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      sub_29A00C9A4();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v29 = result;
    if (v11)
    {
      v12 = sub_29A10E224(result, v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = &v12[40 * v8];
    v26 = v12;
    v27 = v17;
    *(&v28 + 1) = &v12[40 * v11];
    v18 = v17;
    do
    {
      v19 = *(a3 + 16);
      *v18 = *a3;
      *(v18 + 1) = v19;
      v20 = *(a3 + 32);
      *(v18 + 4) = v20;
      if (v20)
      {
        v21 = (v20 - 16);
        if (*(v18 + 3))
        {
          v21 = *(v18 + 3);
        }

        atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
      }

      v18 += 40;
    }

    while (v18 != &v17[40 * a2]);
    *&v28 = &v17[40 * a2];
    v22 = v5[1];
    v23 = &v17[*v5 - v22];
    sub_29A8F3B70(v5, *v5, v22, v23);
    v24 = *v5;
    *v5 = v23;
    v25 = v5[2];
    *(v5 + 1) = v28;
    *&v28 = v24;
    *(&v28 + 1) = v25;
    v26 = v24;
    v27 = v24;
    return sub_29A8F3CE4(&v26);
  }

  return result;
}

void sub_29A9FD48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A8F3CE4(va);
  _Unwind_Resume(a1);
}

void sub_29A9FD4A0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAF8AF8AF8AF8AF8BLL * ((v4 - v5) >> 4) >= a2)
  {

    sub_29A9FD638(a1, a2);
  }

  else
  {
    v6 = 0xAF8AF8AF8AF8AF8BLL * ((v5 - *a1) >> 4);
    if (v6 + a2 > 0x75075075075075)
    {
      sub_29A00C9A4();
    }

    v7 = 0xAF8AF8AF8AF8AF8BLL * ((v4 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x3A83A83A83A83ALL)
    {
      v9 = 0x75075075075075;
    }

    else
    {
      v9 = v8;
    }

    *v21 = a1;
    if (v9)
    {
      v10 = sub_29A931F88(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v11 = &v10[35 * v6];
    v18 = v10;
    v19 = v11;
    *&v20 = v11;
    *(&v20 + 1) = &v10[35 * v9];
    v12 = 560 * a2;
    v13 = &v11[560 * a2];
    do
    {
      sub_29A9FD6A0(v21[0], v11);
      v11 += 560;
      v12 -= 560;
    }

    while (v12);
    *&v20 = v13;
    v14 = *(a1 + 8);
    v15 = v19 + *a1 - v14;
    sub_29A931FD4(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    v17 = *(a1 + 16);
    *(a1 + 8) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    sub_29A932058(&v18);
  }
}

void sub_29A9FD618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A932058(va);
  _Unwind_Resume(a1);
}

void sub_29A9FD638(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = &v3[560 * a2];
    v5 = 560 * a2;
    do
    {
      sub_29A9FD6A0(a1, v3);
      v3 += 560;
      v5 -= 560;
    }

    while (v5);
    v3 = v4;
  }

  *(a1 + 8) = v3;
}

double sub_29A9FD6A0(int a1, char *a2)
{
  bzero(a2, 0x230uLL);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal((a2 + 56), 1.0);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal((a2 + 184), 1.0);
  *(a2 + 43) = 0;
  result = 0.0;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  *(a2 + 44) = _D1;
  *(a2 + 90) = 1065353216;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  *(a2 + 49) = -1;
  *(a2 + 50) = -1;
  a2[552] = 0;
  *(a2 + 408) = 0u;
  *(a2 + 424) = 0u;
  *(a2 + 440) = 0u;
  *(a2 + 456) = 0u;
  *(a2 + 472) = 0u;
  *(a2 + 488) = 0u;
  *(a2 + 504) = 0u;
  *(a2 + 520) = 0u;
  *(a2 + 536) = 0u;
  return result;
}

void sub_29A9FD730(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_29B2948E4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_29A9FD754(uint64_t a1)
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

__n128 sub_29A9FD7DC(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A206E028;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 sub_29A9FD830(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A206E028;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29A9FD868(uint64_t a1, int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v43 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 8);
  v7 = *(v6[1] + 144);
  if (0xFAFAFAFAFAFAFAFBLL * ((*(v6[1] + 152) - v7) >> 3) <= v4)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7 + 408 * v4;
  v9 = *(a1 + 16);
  v10 = *v9;
  *v9 = v10 + 1;
  v11 = *(v6[2] + 136) + 560 * v10;
  *(v6[6] + 4 * v4) = v10;
  *(v6[9] + 4 * v4) = v3;
  std::string::operator=((v11 + 24), (v8 + 8));
  v12 = *(v8 + 144);
  v13 = 0uLL;
  if (v12 == *(v8 + 152))
  {
    v15 = 0;
    v14 = 0uLL;
  }

  else
  {
    v14 = *v12;
    v15 = *(v12 + 2);
  }

  *(v11 + 312) = v14;
  *(v11 + 328) = v15;
  v16 = *(v8 + 96);
  if (v16 != *(v8 + 104))
  {
    v13 = vcvt_hight_f32_f64(vcvt_f32_f64(*v16), v16[1]);
  }

  *(v11 + 336) = v13;
  v17 = *(v8 + 120);
  if (v17 == *(v8 + 128))
  {
    __asm { FMOV            V0.2S, #1.0 }

    v19 = 1.0;
  }

  else
  {
    _D0 = vcvt_f32_f64(*v17);
    v19 = v17[1].f64[0];
  }

  *(v11 + 352) = _D0;
  *(v11 + 360) = v19;
  v23 = (v8 + 168);
  if (*(v8 + 168) != *(v8 + 176))
  {
    *(v11 + 49) = 1;
    adobe::usd::copyMatrix(v23, (v11 + 56));
  }

  if ((*v8 & 0x80000000) == 0)
  {
    *(v11 + 396) = *v8;
  }

  v24 = *(v8 + 40);
  if ((v24 & 0x80000000) == 0)
  {
    *(v11 + 404) = v24;
  }

  if (v3 == -1)
  {
    v25 = -1;
  }

  else
  {
    v25 = *(*(*(a1 + 8) + 48) + 4 * v3);
  }

  *(v11 + 392) = v25;
  v26 = *(v8 + 36);
  if ((v26 & 0x80000000) == 0)
  {
    v27 = *(a1 + 8);
    v28 = v27[18];
    if (v26 < (v27[19] - v28) >> 2)
    {
      ++*(v28 + 4 * v26);
      if ((*(v8 + 32) & 0x80000000) != 0)
      {
        v29 = *(v8 + 36);
        if ((v29 & 0x80000000) == 0)
        {
          v31 = v27 + 15;
          v30 = v27[15];
          v32 = 0xAAAAAAAAAAAAAAABLL * ((v31[1] - v30) >> 3);
          v33 = (v30 + 24 * v29);
          v23 = (v11 + 432);
          if (v32 > v29 && v23 != v33)
          {
            v23 = sub_29A36CF34(v23, *v33, v33[1], (v33[1] - *v33) >> 2);
          }
        }
      }

      else
      {
        sub_29A00D250(*(a1 + 24), &v43);
      }
    }
  }

  NerfExtString = adobe::usd::getNerfExtString(v23);
  sub_29A008E78(__p, NerfExtString);
  v36 = sub_29A01BCCC(v8 + 216, __p);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 + 224 != v36)
  {
    v37 = *(*(a1 + 8) + 16);
    *(v11 + 400) = 1875962727 * ((*(v37 + 360) - *(v37 + 352)) >> 3);
    bzero(__p, 0x2B8uLL);
    sub_29A8EF658(__p);
    sub_29A8E8464(v37 + 352, __p);
    sub_29A8EF74C();
  }

  sub_29A0A171C((v11 + 504), (*(v8 + 80) - *(v8 + 72)) >> 2);
  v38 = *(v8 + 72);
  if (*(v8 + 80) != v38)
  {
    v39 = 0;
    do
    {
      *(*(v11 + 504) + 4 * v39) = sub_29A9FA150(*(a1 + 32), v43, *(v38 + 4 * v39));
      ++v39;
      v38 = *(v8 + 72);
    }

    while (v39 < (*(v8 + 80) - v38) >> 2);
  }

  return v10;
}

uint64_t sub_29A9FDBB8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A206E098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_29A9FDC04(void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
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

void sub_29A9FDE5C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_299FEDEEC(a1);
}

uint64_t sub_29A9FDE68(uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      sub_29A09ADD4(a1, v4, a2, a2);
      a2 += 3;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

char **sub_29A9FDEEC(char **result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xFAFAFAFAFAFAFAFBLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = &v4[408 * a2];
      do
      {
        *(v4 + 6) = 0;
        *(v4 + 1) = 0uLL;
        *(v4 + 2) = 0uLL;
        *v4 = 0uLL;
        *(v4 + 12) = -1;
        *(v4 + 72) = 0uLL;
        *(v4 + 88) = 0uLL;
        *(v4 + 104) = 0uLL;
        *(v4 + 120) = 0uLL;
        *(v4 + 136) = 0uLL;
        *(v4 + 152) = 0uLL;
        *(v4 + 168) = 0uLL;
        *(v4 + 184) = 0uLL;
        *(v4 + 200) = 0uLL;
        *(v4 + 216) = 0uLL;
        *(v4 + 232) = 0uLL;
        *(v4 + 248) = 0uLL;
        v12 = v4 + 408;
        *(v4 + 56) = 0uLL;
        v13 = v4 + 56;
        v13[13] = 0uLL;
        v13[14] = 0uLL;
        v13[15] = 0uLL;
        v13[16] = 0uLL;
        v13[17] = 0uLL;
        v13[18] = 0uLL;
        v13[19] = 0uLL;
        v13[20] = 0uLL;
        v13[21] = 0uLL;
        v4 = v12;
      }

      while (v12 != v11);
      v4 = v11;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xFAFAFAFAFAFAFAFBLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xA0A0A0A0A0A0A0)
    {
      sub_29A00C9A4();
    }

    v8 = 0xFAFAFAFAFAFAFAFBLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x50505050505050)
    {
      v9 = 0xA0A0A0A0A0A0A0;
    }

    else
    {
      v9 = v7;
    }

    v25 = result;
    if (v9)
    {
      v10 = sub_29A936374(result, v9);
    }

    else
    {
      v10 = 0;
    }

    v14 = (v10 + 408 * v6);
    v22 = v10;
    v23 = v14;
    *(&v24 + 1) = v10 + 408 * v9;
    v15 = v14;
    do
    {
      *(v15 + 6) = 0;
      v15[1] = 0uLL;
      v15[2] = 0uLL;
      *v15 = 0uLL;
      *(v15 + 12) = -1;
      *(v15 + 72) = 0uLL;
      *(v15 + 88) = 0uLL;
      *(v15 + 104) = 0uLL;
      *(v15 + 120) = 0uLL;
      *(v15 + 136) = 0uLL;
      *(v15 + 152) = 0uLL;
      *(v15 + 168) = 0uLL;
      *(v15 + 184) = 0uLL;
      *(v15 + 200) = 0uLL;
      *(v15 + 216) = 0uLL;
      *(v15 + 232) = 0uLL;
      *(v15 + 248) = 0uLL;
      v16 = v15 + 408;
      *(v15 + 56) = 0uLL;
      v17 = (v15 + 56);
      v17[13] = 0uLL;
      v17[14] = 0uLL;
      v17[15] = 0uLL;
      v17[16] = 0uLL;
      v17[17] = 0uLL;
      v17[18] = 0uLL;
      v17[19] = 0uLL;
      v17[20] = 0uLL;
      v17[21] = 0uLL;
      v15 = v16;
    }

    while (v16 != v14 + 408 * a2);
    *&v24 = v14 + 408 * a2;
    v18 = v3[1];
    v19 = v14 + *v3 - v18;
    sub_29A9363C0(v3, *v3, v18, v19);
    v20 = *v3;
    *v3 = v19;
    v21 = v3[2];
    *(v3 + 1) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return sub_29A9367DC(&v22);
  }

  return result;
}

void sub_29A9FE114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A9367DC(va);
  _Unwind_Resume(a1);
}

adobe::usd::GltfResolver *adobe::usd::GltfResolver::GltfResolver(adobe::usd::GltfResolver *this)
{
  sub_29A008E78(__p, "GltfResolver");
  adobe::usd::Resolver::Resolver(this, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2A206E0B8;
  return this;
}

void sub_29A9FE1A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void adobe::usd::GltfResolver::readCache(uint64_t a1, uint64_t a2)
{
  if (sub_29A9E3F04(0))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("readCache: %s\n", v3, v4, v5);
  }

  v46 = 0;
  v45 = 0;
  v43[1] = 0;
  v43[0] = 0;
  v44 = 0;
  v42 = 0;
  if (pxrInternal__aapl__pxrReserved__::UsdGltfFileFormat::OpenGltfAsset(a2, &v45, v43, &v42))
  {
    (*(*v45 + 24))(&v40);
    v6 = (*(*v45 + 16))(v45);
    if (sub_29A9E3F04(0))
    {
      v9 = "GLB";
      if (v42)
      {
        v9 = "GLTF";
      }

      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Type: %s, Size: %zu KB\n", v7, v8, v9, v6 >> 10);
    }

    sub_29A9CAE1C(v39);
    if (adobe::usd::readGltfFromMemory(v39, v43, v42, v40, v6))
    {
      v16 = 0;
      v17 = 0;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0;
      v18 = 0;
      v19 = 0x4038000000000000;
      v21[0] = 0;
      v21[1] = 0;
      v20 = v21;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      v10 = 256;
      v11 = 1;
      adobe::usd::importGltf(&v10, v39, &v12, a2);
    }

    *&v12 = "usdGltf/gltfResolver.cpp";
    *(&v12 + 1) = "readCache";
    *&v13 = 52;
    *(&v13 + 1) = "virtual void adobe::usd::GltfResolver::readCache(const std::string &, std::vector<ImageAsset> &)";
    LOBYTE(v14) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 3, "Error reading glTF file\n");
    sub_29A9CCF78(v39);
    if (v41)
    {
      sub_29A014BEC(v41);
    }
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (v46)
  {
    sub_29A014BEC(v46);
  }
}

void sub_29A9FE424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  sub_29A9CCF78(&a60);
  v63 = *(v60 + 1304);
  if (v63)
  {
    sub_29A014BEC(v63);
  }

  if (*(v61 - 65) < 0)
  {
    operator delete(*(v60 + 1320));
  }

  v64 = *(v60 + 1352);
  if (v64)
  {
    sub_29A014BEC(v64);
  }

  _Unwind_Resume(a1);
}

void sub_29A9FE494(void **a1)
{
  adobe::usd::Resolver::~Resolver(a1);

  operator delete(v1);
}

uint64_t sub_29A9FE4BC()
{
  v2 = nullsub_1465;
  return sub_29A9FE518(v0);
}

uint64_t sub_29A9FE518(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206E118;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29A9FE5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A9FE5C8(pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Ar_PackageResolverFactoryBase::~Ar_PackageResolverFactoryBase(a1);

  operator delete(v1);
}

adobe::usd::GltfResolver *sub_29A9FE5F0()
{
  v0 = operator new(0x20uLL);
  adobe::usd::GltfResolver::GltfResolver(v0);
  return v0;
}

void sub_29A9FE634(void **a1)
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
        v3 -= 88;
        sub_29A8CE0BC(a1, v3);
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

uint64_t adobe::usd::translateSpecularGlossinessToMetallicRoughness(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v156 = *MEMORY[0x29EDCA608];
  if (!*(a3 + 8) || (result = sub_29A3FEA70(a3), result))
  {
    if (!*(a4 + 8) || (result = sub_29A3FEA70(a4), result))
    {
      v149 = *sub_29A9FF92C(a3);
      v148 = *sub_29A9FF92C(a4);
      v19 = *(a4 + 16);
      if ((*(a3 + 16) & 0x80000000) != 0 && v19 < 0)
      {
        v144 = 0.0;
        sub_29A9FF9C0(&v149, &v148, &v152, &v144);
        *(a7 + 16) = -1;
        v20 = sub_29A3FDE98(a7, &v152);
        *(a8 + 16) = -1;
        v21 = HIDWORD(v149);
        v22 = *(a8 + 8);
        if (v22 && (*(a8 + 8) & 3) != 3)
        {
          v20 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 32))(a8);
        }

        *(a8 + 8) = &unk_2A2044C63;
        *a8 = v21;
        *(a9 + 16) = -1;
        v23 = adobe::usd::linearToSRGB(v20, v144);
        v24 = *(a9 + 8);
        if (v24 && (*(a9 + 8) & 3) != 3)
        {
          (*((v24 & 0xFFFFFFFFFFFFFFF8) + 32))(a9);
        }

        *(a9 + 8) = &unk_2A2044C63;
        *a9 = v23;
        *(a10 + 16) = -1;
        v25 = *(&v148 + 3);
        v26 = *(a10 + 8);
        if (v26)
        {
          if ((*(a10 + 8) & 3) != 3)
          {
            (*((v26 & 0xFFFFFFFFFFFFFFF8) + 32))(a10);
          }
        }

        *(a10 + 8) = &unk_2A2044C63;
        *a10 = 1.0 - v25;
        return 1;
      }

      if (v19 < 0)
      {
        v27 = vmul_f32(*(&v148 + 4), vmul_f32(*(&v148 + 4), 0x3DE978D53F1645A2));
        if (sqrtf(((*&v148 * (*&v148 * 0.299)) + v27.f32[0]) + v27.f32[1]) < 0.04)
        {
          sub_29A1854E8(a7, a3);
          *(a7 + 16) = *(a3 + 16);
          sub_29A166F2C((a7 + 24), (a3 + 24));
          sub_29A166F2C((a7 + 32), (a3 + 32));
          sub_29A166F2C((a7 + 40), (a3 + 40));
          sub_29A166F2C((a7 + 48), (a3 + 48));
          sub_29A166F2C((a7 + 56), (a3 + 56));
          sub_29A166F2C((a7 + 64), (a3 + 64));
          sub_29A1854E8((a7 + 72), (a3 + 72));
          sub_29A1854E8((a7 + 88), (a3 + 88));
          sub_29A1854E8((a7 + 104), (a3 + 104));
          sub_29A1854E8((a7 + 120), (a3 + 120));
          sub_29A1854E8((a7 + 136), (a3 + 136));
          sub_29A1854E8(a8, a5);
          *(a8 + 16) = a5[2];
          sub_29A166F2C((a8 + 24), a5 + 3);
          sub_29A166F2C((a8 + 32), a5 + 4);
          sub_29A166F2C((a8 + 40), a5 + 5);
          sub_29A166F2C((a8 + 48), a5 + 6);
          sub_29A166F2C((a8 + 56), a5 + 7);
          sub_29A166F2C((a8 + 64), a5 + 8);
          sub_29A1854E8((a8 + 72), a5 + 9);
          sub_29A1854E8((a8 + 88), a5 + 11);
          sub_29A1854E8((a8 + 104), a5 + 13);
          sub_29A1854E8((a8 + 120), a5 + 15);
          sub_29A1854E8((a8 + 136), a5 + 17);
          *(a9 + 16) = -1;
          v28 = *(a9 + 8);
          if (v28 && (*(a9 + 8) & 3) != 3)
          {
            (*((v28 & 0xFFFFFFFFFFFFFFF8) + 32))(a9);
          }

          *(a9 + 8) = &unk_2A2044C63;
          *a9 = 0;
          *(a10 + 16) = -1;
          v29 = 1.0 - *(&v148 + 3);
          v30 = *(a10 + 8);
          if (v30 && (*(a10 + 8) & 3) != 3)
          {
            (*((v30 & 0xFFFFFFFFFFFFFFF8) + 32))(a10);
          }

          *(a10 + 8) = &unk_2A2044C63;
          *a10 = v29;
          return 1;
        }
      }

      adobe::usd::Image::Image(&v144);
      v134 = a8;
      adobe::usd::Image::Image(&v140);
      v32 = *(a3 + 16);
      if ((v32 & 0x80000000) == 0)
      {
        v33 = *(*(a1 + 16) + 256) + 88 * v32;
        adobe::usd::Image::read(&v144, v33, 0xFFFFFFFFLL);
        if (v146 <= 2)
        {
          if (v146 == 2)
          {
            v34 = 4;
          }

          else
          {
            v34 = 3;
          }

          adobe::usd::Image::read(&v144, v33, v34);
        }
      }

      v124 = a6;
      v35 = *(a4 + 16);
      if ((v35 & 0x80000000) == 0)
      {
        adobe::usd::Image::read(&v140, *(*(a1 + 16) + 256) + 88 * v35, 4);
      }

      if (v144 != 0.0 && v145 && v146 && v140 && v141 && v142 && (LODWORD(v144) != v140 || v145 != v141))
      {
        *&v152 = "usdGltf/gltfSpecGloss.cpp";
        *(&v152 + 1) = "translateSpecularGlossinessToMetallicRoughness";
        v153 = 332;
        v154 = "BOOL adobe::usd::translateSpecularGlossinessToMetallicRoughness(ImportGltfContext &, std::unordered_map<std::string, int> &, const Input &, const Input &, const Input &, const std::string &, Input &, Input &, Input &, Input &)";
        v155 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v152, "Diffuse and specular images are of different sizes. Cannot convert from specular-gloss to metallic-roughness. Dropping specular", v31);
        sub_29A1854E8(a7, a3);
        *(a7 + 16) = *(a3 + 16);
        sub_29A166F2C((a7 + 24), (a3 + 24));
        sub_29A166F2C((a7 + 32), (a3 + 32));
        sub_29A166F2C((a7 + 40), (a3 + 40));
        sub_29A166F2C((a7 + 48), (a3 + 48));
        sub_29A166F2C((a7 + 56), (a3 + 56));
        sub_29A166F2C((a7 + 64), (a3 + 64));
        sub_29A1854E8((a7 + 72), (a3 + 72));
        sub_29A1854E8((a7 + 88), (a3 + 88));
        sub_29A1854E8((a7 + 104), (a3 + 104));
        sub_29A1854E8((a7 + 120), (a3 + 120));
        sub_29A1854E8((a7 + 136), (a3 + 136));
        sub_29A1854E8(a8, a5);
        *(a8 + 16) = a5[2];
        sub_29A166F2C((a8 + 24), a5 + 3);
        sub_29A166F2C((a8 + 32), a5 + 4);
        sub_29A166F2C((a8 + 40), a5 + 5);
        sub_29A166F2C((a8 + 48), a5 + 6);
        sub_29A166F2C((a8 + 56), a5 + 7);
        sub_29A166F2C((a8 + 64), a5 + 8);
        sub_29A1854E8((a8 + 72), a5 + 9);
        sub_29A1854E8((a8 + 88), a5 + 11);
        sub_29A1854E8((a8 + 104), a5 + 13);
        sub_29A1854E8((a8 + 120), a5 + 15);
        sub_29A1854E8((a8 + 136), a5 + 17);
        *(a9 + 16) = -1;
        v86 = *(a9 + 8);
        if (v86 && (*(a9 + 8) & 3) != 3)
        {
          (*((v86 & 0xFFFFFFFFFFFFFFF8) + 32))(a9);
        }

        *(a9 + 8) = &unk_2A2044C63;
        *a9 = 0;
        *(a10 + 16) = -1;
        v87 = *(&v148 + 3);
        v88 = *(a10 + 8);
        if (v88 && (*(a10 + 8) & 3) != 3)
        {
          (*((v88 & 0xFFFFFFFFFFFFFFF8) + 32))(a10);
        }

        *(a10 + 8) = &unk_2A2044C63;
        *a10 = 1.0 - v87;
        goto LABEL_186;
      }

      v36 = *(a3 + 16);
      if ((v36 & 0x80000000) != 0)
      {
        v37 = vshl_u32(vcvt_s32_f32(vmul_f32(*&v149, vdup_n_s32(0x437F0000u))), 0x800000010);
        v36 = vadd_s32(vdup_lane_s32(v37, 1), v37).u32[0] + (*(&v149 + 2) * 255.0);
      }

      v38 = *(a4 + 16);
      if ((v38 & 0x80000000) != 0)
      {
        v39 = vshl_u32(vcvt_s32_f32(vmul_f32(*&v148, vdup_n_s32(0x437F0000u))), 0x800000010);
        v38 = vadd_s32(vdup_lane_s32(v39, 1), v39).u32[0] + (*(&v148 + 2) * 255.0);
      }

      v40 = sub_29A008E78(&v152, "specgloss-diffuse");
      sub_29A9FFB68(v40, v36, v38, &__str);
      if (SHIBYTE(v153) < 0)
      {
        operator delete(v152);
      }

      v41 = sub_29A008E78(&v152, "specgloss-mr");
      sub_29A9FFB68(v41, v36, v38, &v138);
      if (SHIBYTE(v153) < 0)
      {
        operator delete(v152);
      }

      v42 = adobe::usd::lookupTexture(a2, &__str.__r_.__value_.__l.__data_);
      v43 = adobe::usd::lookupTexture(a2, &v138.__r_.__value_.__l.__data_);
      v125 = a4;
      if ((v42 & 0x80000000) == 0)
      {
        v44 = v43;
        if ((v43 & 0x80000000) == 0)
        {
          v45 = 0;
          v46 = v42;
          goto LABEL_145;
        }
      }

      adobe::usd::Image::Image(v136);
      adobe::usd::Image::Image(v135);
      v47 = 1;
      if (v144 != 0.0 && v145)
      {
        v47 = v146 == 0;
      }

      v48 = 1;
      if (v140 && v141)
      {
        v48 = v142 == 0;
      }

      v123 = a2;
      if (v47 && v48)
      {
        *&v152 = "usdGltf/gltfSpecGloss.cpp";
        *(&v152 + 1) = "_convertSpecularGlossToMetalicRough";
        v153 = 143;
        v154 = "void adobe::usd::(anonymous namespace)::_convertSpecularGlossToMetalicRough(Image &, GfVec4f &, Image &, GfVec4f &, Image &, Image &, BOOL &)";
        v155 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v152, 1, "Expecting one diffuse or specular images to be non empty");
      }

      else
      {
        if (v47 || v48 || LODWORD(v144) == v140 && v145 == v141)
        {
          if (v47)
          {
            v49 = v140;
          }

          else
          {
            v49 = LODWORD(v144);
          }

          if (v47)
          {
            v50 = v141;
          }

          else
          {
            v50 = v145;
          }

          v51 = v146;
          v52 = HIDWORD(v149);
          v53 = *(&v149 + 3) != 1.0 || v146 == 4;
          v54 = v53;
          if (v53)
          {
            v55 = 4;
          }

          else
          {
            v55 = 3;
          }

          v126 = v55;
          adobe::usd::Image::allocate(v136, v49, v50, v55);
          v56 = adobe::usd::Image::allocate(v135, v49, v50, 3);
          v122 = a1;
          v57 = v146;
          if (v47)
          {
            v57 = 0;
          }

          v151 = v52;
          v58 = v50 * v49;
          if (v50 * v49)
          {
            v59 = v48;
            v45 = 0;
            v132 = v59;
            v133 = v47;
            if (v47)
            {
              v60 = &v149;
            }

            else
            {
              v60 = v147;
            }

            v61 = (v147 + 3);
            if (v47)
            {
              v61 = &v149 | 0xC;
            }

            v53 = v51 == 4;
            v62 = v51 == 4;
            v63 = v135[2];
            if (v53)
            {
              v64 = v61;
            }

            else
            {
              v64 = &v151;
            }

            if (v59)
            {
              v65 = &v148;
            }

            else
            {
              v65 = v143;
            }

            v66 = 16;
            if (v59)
            {
              v67 = 0;
            }

            else
            {
              v67 = 16;
            }

            if (v54)
            {
              v68 = (v137 + 12);
            }

            else
            {
              v68 = &v151;
            }

            v130 = 16 * v62;
            v131 = v67;
            if (!v54)
            {
              v66 = 0;
            }

            v128 = 4 * v57;
            v129 = v66;
            v69 = (v137 + 4);
            v127 = 4 * v126;
            do
            {
              if (!v133)
              {
                v70 = adobe::usd::srgbToLinear(v56, *v60);
                *v60 = v70 * *&v149;
                v72 = adobe::usd::srgbToLinear(v71, v60[1]);
                v60[1] = v72 * *(&v149 + 1);
                v74 = adobe::usd::srgbToLinear(v73, v60[2]);
                v60[2] = v74 * *(&v149 + 2);
              }

              if (!v132)
              {
                v75 = adobe::usd::srgbToLinear(v56, *v65);
                *v65 = v75 * *&v148;
                v77 = adobe::usd::srgbToLinear(v76, v65[1]);
                v65[1] = v77 * *(&v148 + 1);
                v79 = adobe::usd::srgbToLinear(v78, v65[2]);
                v65[2] = v79 * *(&v148 + 2);
              }

              v150 = 0.0;
              sub_29A9FF9C0(v60, v65, &v152, &v150);
              *(v69 - 1) = adobe::usd::linearToSRGB(v80, *&v152);
              *v69 = adobe::usd::linearToSRGB(v81, *(&v152 + 1));
              v69[1] = adobe::usd::linearToSRGB(v82, *(&v152 + 2));
              v84 = adobe::usd::linearToSRGB(v83, v150);
              v45 |= *v64 < 1.0;
              *v68 = *v64;
              *v63 = 0.0;
              v85 = 1.0 - v65[3];
              v64 = (v64 + v130);
              v65 = (v65 + v131);
              v68 = (v68 + v129);
              v63[1] = v85;
              v63[2] = v84;
              v60 = (v60 + v128);
              v69 = (v69 + v127);
              v63 += 3;
              --v58;
            }

            while (v58);
          }

          else
          {
            v45 = 0;
          }

          a1 = v122;
          goto LABEL_118;
        }

        *&v152 = "usdGltf/gltfSpecGloss.cpp";
        *(&v152 + 1) = "_convertSpecularGlossToMetalicRough";
        v153 = 151;
        v154 = "void adobe::usd::(anonymous namespace)::_convertSpecularGlossToMetalicRough(Image &, GfVec4f &, Image &, GfVec4f &, Image &, Image &, BOOL &)";
        v155 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v152, 1, "Diffuse and specular textures are expected to be the same size");
      }

      v45 = 0;
LABEL_118:
      adobe::usd::UsdData::reserveImages(*(a1 + 16), 2);
      v46 = adobe::usd::UsdData::addImage(*(a1 + 16), v89, v90);
      v92 = v91;
      std::string::operator=(v91, &__str);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      sub_29A022DE0(&v152, size + 4);
      if (v153 >= 0)
      {
        v95 = &v152;
      }

      else
      {
        v95 = v152;
      }

      if (size)
      {
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        memmove(v95, p_str, size);
      }

      strcpy(v95 + size, ".png");
      if (*(v92 + 47) < 0)
      {
        operator delete(*(v92 + 24));
      }

      *(v92 + 24) = v152;
      *(v92 + 40) = v153;
      *(v92 + 80) = 1;
      *(v92 + 48) = 4;
      adobe::usd::Image::write(v136, v92, v94);
      *&v152 = &__str;
      *(sub_29B1F2ED4(v123, &__str.__r_.__value_.__l.__data_, &unk_29B4D6118, &v152) + 10) = v46;
      v44 = adobe::usd::UsdData::addImage(*(a1 + 16), v97, v98);
      v100 = v99;
      std::string::operator=(v99, &v138);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v138.__r_.__value_.__l.__size_;
      }

      sub_29A022DE0(&v152, v101 + 4);
      if (v153 >= 0)
      {
        v103 = &v152;
      }

      else
      {
        v103 = v152;
      }

      if (v101)
      {
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v104 = &v138;
        }

        else
        {
          v104 = v138.__r_.__value_.__r.__words[0];
        }

        memmove(v103, v104, v101);
      }

      strcpy(v103 + v101, ".png");
      if (*(v100 + 47) < 0)
      {
        operator delete(*(v100 + 24));
      }

      *(v100 + 24) = v152;
      *(v100 + 40) = v153;
      *(v100 + 80) = 1;
      *(v100 + 48) = 4;
      adobe::usd::Image::write(v135, v100, v102);
      a4 = v125;
      *&v152 = &v138;
      *(sub_29B1F2ED4(v123, &v138.__r_.__value_.__l.__data_, &unk_29B4D6118, &v152) + 10) = v44;
      adobe::usd::Image::~Image(v135);
      adobe::usd::Image::~Image(v136);
LABEL_145:
      if (*(a3 + 16) >= 0)
      {
        v105 = a3;
      }

      else
      {
        v105 = a4;
      }

      sub_29A1854E8(a7, v105);
      *(a7 + 16) = v105[2];
      sub_29A166F2C((a7 + 24), v105 + 3);
      sub_29A166F2C((a7 + 32), v105 + 4);
      sub_29A166F2C((a7 + 40), v105 + 5);
      sub_29A166F2C((a7 + 48), v105 + 6);
      sub_29A166F2C((a7 + 56), v105 + 7);
      sub_29A166F2C((a7 + 64), v105 + 8);
      sub_29A1854E8((a7 + 72), v105 + 9);
      sub_29A1854E8((a7 + 88), v105 + 11);
      sub_29A1854E8((a7 + 104), v105 + 13);
      sub_29A1854E8((a7 + 120), v105 + 15);
      sub_29A1854E8((a7 + 136), v105 + 17);
      v107 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v107)
      {
        v107 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v108 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v108)
      {
        v108 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::setInputImage(a7, v46, 0, v107 + 6, (v108 + 208), v106);
      if (v45)
      {
        v109 = *(v124 + 23);
        if (v109 < 0)
        {
          if (v124[1] != 6)
          {
LABEL_162:
            sub_29A1854E8(v134, a7);
            *(v134 + 2) = *(a7 + 16);
            sub_29A166F2C(v134 + 3, (a7 + 24));
            sub_29A166F2C(v134 + 4, (a7 + 32));
            sub_29A166F2C(v134 + 5, (a7 + 40));
            sub_29A166F2C(v134 + 6, (a7 + 48));
            sub_29A166F2C(v134 + 7, (a7 + 56));
            sub_29A166F2C(v134 + 8, (a7 + 64));
            sub_29A1854E8(v134 + 9, (a7 + 72));
            sub_29A1854E8(v134 + 11, (a7 + 88));
            sub_29A1854E8(v134 + 13, (a7 + 104));
            sub_29A1854E8(v134 + 15, (a7 + 120));
            sub_29A1854E8(v134 + 17, (a7 + 136));
            v112 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v112)
            {
              v112 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            v113 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            if (!v113)
            {
              v113 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
            }

            adobe::usd::setInputImage(v134, v46, 0, v112 + 5, (v113 + 200), v111);
            goto LABEL_168;
          }

          v124 = *v124;
        }

        else if (v109 != 6)
        {
          goto LABEL_162;
        }

        if (*v124 != 1363234895 || *(v124 + 2) != 17749)
        {
          goto LABEL_162;
        }
      }

      *(v134 + 4) = -1;
      *(&v152 + 1) = 0;
      sub_29A18606C(v134, &v152);
      sub_29A186B14(&v152);
LABEL_168:
      if (*(v125 + 16) >= 0)
      {
        v114 = v125;
      }

      else
      {
        v114 = a3;
      }

      sub_29A1854E8(a9, v114);
      *(a9 + 16) = v114[2];
      sub_29A166F2C((a9 + 24), v114 + 3);
      sub_29A166F2C((a9 + 32), v114 + 4);
      sub_29A166F2C((a9 + 40), v114 + 5);
      sub_29A166F2C((a9 + 48), v114 + 6);
      sub_29A166F2C((a9 + 56), v114 + 7);
      sub_29A166F2C((a9 + 64), v114 + 8);
      sub_29A1854E8((a9 + 72), v114 + 9);
      sub_29A1854E8((a9 + 88), v114 + 11);
      sub_29A1854E8((a9 + 104), v114 + 13);
      sub_29A1854E8((a9 + 120), v114 + 15);
      sub_29A1854E8((a9 + 136), v114 + 17);
      if (*(v125 + 16) >= 0)
      {
        v115 = v125;
      }

      else
      {
        v115 = a3;
      }

      sub_29A1854E8(a10, v115);
      *(a10 + 16) = v115[2];
      sub_29A166F2C((a10 + 24), v115 + 3);
      sub_29A166F2C((a10 + 32), v115 + 4);
      sub_29A166F2C((a10 + 40), v115 + 5);
      sub_29A166F2C((a10 + 48), v115 + 6);
      sub_29A166F2C((a10 + 56), v115 + 7);
      sub_29A166F2C((a10 + 64), v115 + 8);
      sub_29A1854E8((a10 + 72), v115 + 9);
      sub_29A1854E8((a10 + 88), v115 + 11);
      sub_29A1854E8((a10 + 104), v115 + 13);
      sub_29A1854E8((a10 + 120), v115 + 15);
      sub_29A1854E8((a10 + 136), v115 + 17);
      v117 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v117)
      {
        v117 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v118 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v118)
      {
        v118 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::setInputImage(a9, v44, 0, v117 + 4, (v118 + 200), v116);
      v120 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v120)
      {
        v120 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      v121 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      if (!v121)
      {
        v121 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
      }

      adobe::usd::setInputImage(a10, v44, 0, v120 + 3, (v121 + 200), v119);
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_186:
      adobe::usd::Image::~Image(&v140);
      adobe::usd::Image::~Image(&v144);
      return 1;
    }
  }

  return result;
}

void sub_29A9FF850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  adobe::usd::Image::~Image(&a45);
  adobe::usd::Image::~Image((v45 - 232));
  _Unwind_Resume(a1);
}

void **sub_29A9FF92C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FEA70(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfVec4f>::Invoke, &stru_2A20409D8);
  }
}

float sub_29A9FF9C0(uint64_t a1, uint64_t a2, float *a3, float *a4)
{
  v4 = *a2;
  v5 = *(a2 + 4);
  if (*a2 < v5.f32[0])
  {
    LODWORD(v4) = *(a2 + 4);
  }

  LODWORD(v6) = HIDWORD(*(a2 + 4));
  if (v4 >= v5.f32[1])
  {
    v6 = v4;
  }

  v7 = 1.0 - v6;
  v8 = vmul_f32(v5, vmul_f32(v5, 0x3DE978D53F1645A2));
  v9 = sqrtf(((*a2 * (*a2 * 0.299)) + v8.f32[0]) + v8.f32[1]);
  v10 = 0.0;
  if (v9 >= 0.04)
  {
    v11 = vmul_f32(*(a1 + 4), vmul_f32(*(a1 + 4), 0x3DE978D53F1645A2));
    v12 = (v9 + ((v7 * sqrtf(((*a1 * (*a1 * 0.299)) + v11.f32[0]) + v11.f32[1])) / 0.96)) + -0.08;
    v10 = fminf(fmaxf((sqrtf(fmaxf((v12 * v12) + ((0.04 - v9) * -0.16), 0.0)) - v12) / 0.08, 0.0), 1.0);
  }

  v13 = (v7 / 0.96) / fmaxf(1.0 - v10, 0.0001);
  v14 = (1.0 - v10) * 0.04;
  v15 = 1.0 / fmaxf(v10, 0.0001);
  *a4 = v10;
  *a3 = fminf(fmaxf((*a1 * v13) + ((v10 * v10) * ((v15 * (*a2 - v14)) - (*a1 * v13))), 0.0), 1.0);
  a3[1] = fminf(fmaxf((v13 * *(a1 + 4)) + ((v10 * v10) * ((v15 * (*(a2 + 4) - v14)) - (v13 * *(a1 + 4)))), 0.0), 1.0);
  result = fminf(fmaxf((v13 * *(a1 + 8)) + ((v10 * v10) * ((v15 * (*(a2 + 8) - v14)) - (v13 * *(a1 + 8)))), 0.0), 1.0);
  a3[2] = result;
  return result;
}

void sub_29A9FFB68(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = &v24;
  sub_29A022DE0(&v24, v8 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v24.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 45;
  sub_29A9FFD90(a2);
  if ((v23 & 0x80u) == 0)
  {
    v11 = v22;
  }

  else
  {
    v11 = v22[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v12 = v23;
  }

  else
  {
    v12 = v22[1];
  }

  v13 = std::string::append(&v24, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v25, "-");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  sub_29A9FFD90(a3);
  if ((v21 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v18 = v21;
  }

  else
  {
    v18 = __p[1];
  }

  v19 = std::string::append(&v26, v17, v18);
  *a4 = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_29A9FFD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
  }

  if (a33 < 0)
  {
    operator delete(a28);
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

uint64_t sub_29A9FFD90(uint64_t a1)
{
  sub_29A00B6DC(&v3);
  *(&v3 + *(v3 - 24) + 8) = *(&v3 + *(v3 - 24) + 8) & 0xFFFFFFB5 | 8;
  MEMORY[0x29C2C1EE0](&v3, a1);
  std::stringbuf::str();
  v3 = *MEMORY[0x29EDC9538];
  *(&v3 + *(v3 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v4 = MEMORY[0x29EDC9570] + 16;
  if (v6 < 0)
  {
    operator delete(v5[7].__locale_);
  }

  v4 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v5);
  std::ostream::~ostream();
  return MEMORY[0x29C2C4390](&v7);
}

void sub_29A9FFF0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A00B848(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::~UsdStlFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *this)
{
  v4 = (this + 24);
  sub_29A124AB0(&v4);
  v2 = *(this + 2);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 1);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::UsdStlFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *this)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "stl", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "1.0.8", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usd", 0);
  v3 = (this + 24);
  v4 = *this;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = *(this + 1);
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = *(this + 2);
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA000EC(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::UsdStlFileFormat(pxrInternal__aapl__pxrReserved__::UsdStlFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29AA00C50(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29AA00C50(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29AA00C50(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29AA00C50(&pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

BOOL sub_29AA002A8(int a1)
{
  v2 = sub_29AA00CDC();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AA00CDC();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295C98[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::~UsdStlFileFormat(pxrInternal__aapl__pxrReserved__::UsdStlFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(uint64_t a1, std::string **a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v29 = 0;
  v30 = 0x4038000000000000;
  v31 = v32;
  v32[0] = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32[1] = 0;
  v49 = 0;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29A166F2C(v25, v5 + 170);
  v6 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v6);
  *v6 = &unk_2A204AED0;
  v6[3] = 0u;
  v6[4] = 0u;
  *(v6 + 20) = 1065353216;
  v24 = v6;
  sub_29B293C98(&v24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  usdStl::StlModel::Read(&v21);
  sub_29A008E78(&__p, usdStl::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (!usdStl::StlModel::Populated(&v21))
  {
    __p = "usdStl/fileFormat.cpp";
    v16 = "Read";
    v17 = 68;
    v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, BOOL) const";
    LOBYTE(v19) = 0;
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed opening STL file: %s \n", v10);
    goto LABEL_15;
  }

  if ((usdStl::importStl(v25, &v21, v7) & 1) == 0)
  {
    __p = "usdStl/fileFormat.cpp";
    v16 = "Read";
    v17 = 69;
    v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, BOOL) const";
    LOBYTE(v19) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Error translating STL to USD\n");
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  LOWORD(__p) = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  sub_29A008E78(&v12, usdStl::DEBUG_TAG);
  v8 = adobe::usd::writeLayer(&__p, v25, a2, &v24, &v20, &v12, pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData);
  v9 = v8;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((v8 & 1) == 0)
  {
LABEL_22:
    v12.__r_.__value_.__r.__words[0] = "usdStl/fileFormat.cpp";
    v12.__r_.__value_.__l.__size_ = "Read";
    v12.__r_.__value_.__r.__words[2] = 72;
    v13 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, BOOL) const";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 3, "Error writing to the USD layer\n");
  }

LABEL_23:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

LABEL_16:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_29A32BD28(&v24);
  sub_29A9E5D10(v25);
  return v9;
}

{
  v27 = 0;
  v28 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v29 = 0;
  v30 = 0x4038000000000000;
  v31 = v32;
  v32[0] = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v32[1] = 0;
  v49 = 0;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v5)
  {
    v5 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29A166F2C(v25, v5 + 170);
  v6 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v6);
  *v6 = &unk_2A204AED0;
  v6[3] = 0u;
  v6[4] = 0u;
  *(v6 + 20) = 1065353216;
  v24 = v6;
  sub_29B293C98(&v24);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  usdStl::StlModel::Read(&v21);
  sub_29A008E78(&__p, usdStl::DEBUG_TAG);
  adobe::usd::getFileExtension(a3, &__p, &v20);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (!usdStl::StlModel::Populated(&v21))
  {
    __p = "usdStl/fileFormat.cpp";
    v16 = "Read";
    v17 = 95;
    v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, const std::vector<std::byte> &, BOOL) const";
    LOBYTE(v19) = 0;
    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Failed opening STL file: %s \n", v10);
    goto LABEL_15;
  }

  if ((usdStl::importStl(v25, &v21, v7) & 1) == 0)
  {
    __p = "usdStl/fileFormat.cpp";
    v16 = "Read";
    v17 = 96;
    v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, const std::vector<std::byte> &, BOOL) const";
    LOBYTE(v19) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 3, "Error translating STL to USD\n");
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  LOWORD(__p) = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  sub_29A008E78(&v12, usdStl::DEBUG_TAG);
  v8 = adobe::usd::writeLayer(&__p, v25, a2, &v24, &v20, &v12, pxrInternal__aapl__pxrReserved__::SdfFileFormat::_SetLayerData);
  v9 = v8;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((v8 & 1) == 0)
  {
LABEL_22:
    v12.__r_.__value_.__r.__words[0] = "usdStl/fileFormat.cpp";
    v12.__r_.__value_.__l.__size_ = "Read";
    v12.__r_.__value_.__r.__words[2] = 99;
    v13 = "virtual BOOL pxrInternal__aapl__pxrReserved__::UsdStlFileFormat::Read(SdfLayer *, const std::string &, const std::vector<std::byte> &, BOOL) const";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v12, 3, "Error writing to the USD layer\n");
  }

LABEL_23:
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

LABEL_16:
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_29A32BD28(&v24);
  sub_29A9E5D10(v25);
  return v9;
}

uint64_t sub_29AA00A90()
{
  v2 = nullsub_1466;
  return sub_29AA00AEC(v0);
}

uint64_t sub_29AA00AEC(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A206E230;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AA00B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA00B9C(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *sub_29AA00C50(atomic_ullong *a1)
{
  result = sub_29AA00C98();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::~UsdStlFileFormatTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType *sub_29AA00C98()
{
  v0 = operator new(0x30uLL);
  pxrInternal__aapl__pxrReserved__::UsdStlFileFormatTokens_StaticTokenType::UsdStlFileFormatTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29AA00CDC()
{
  if ((atomic_load_explicit(&qword_2A14F8DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F8DE0))
  {
    v1 = operator new(8uLL);
    *v1 = 0;
    qword_2A14F8DD8 = v1;
    __cxa_guard_release(&qword_2A14F8DE0);
  }

  return qword_2A14F8DD8;
}

__n128 usdStl::StlModel::GetFacet@<Q0>(usdStl::StlModel *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *this + 48 * a2;
  v4 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v4;
  result = *(v3 + 32);
  *(a3 + 32) = result;
  return result;
}

BOOL usdStl::isAsciiStl(uint64_t *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  std::istream::seekg();
  __p = 0;
  v10 = 0;
  v11 = 0;
  v2 = sub_29A728B94(a1, &__p);
  if ((*(v2 + *(*v2 - 24) + 32) & 5) != 0)
  {
    goto LABEL_2;
  }

  if (SHIBYTE(v11) < 0)
  {
    if (v10 != 5)
    {
      v3 = 0;
LABEL_17:
      operator delete(__p);
      return v3;
    }

    p_p = __p;
  }

  else
  {
    if (SHIBYTE(v11) != 5)
    {
      return 0;
    }

    p_p = &__p;
  }

  v5 = *p_p;
  v6 = p_p[4];
  if (v5 == 1768714099 && v6 == 100)
  {
LABEL_2:
    std::istream::seekg();
    std::istream::read();
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    v3 = v12 != 84;
    if (v11 < 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if (v11 < 0)
    {
      goto LABEL_17;
    }
  }

  return v3;
}

void sub_29AA00F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t usdStl::StlModel::Read(uint64_t a1)
{
  v45[19] = *MEMORY[0x29EDCA608];
  sub_29A8CC8D8(v43);
  if (usdStl::isAsciiStl(v43))
  {
    std::istream::seekg();
    v31 = 0;
    do
    {
      v2 = std::istream::read();
    }

    while ((*(v2 + *(*v2 - 24) + 32) & 5) == 0 && v31 != 10);
    __p = 0;
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v4 = sub_29A728B94(v43, &__p);
      if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
      {
        break;
      }

      if (SHIBYTE(v34) < 0)
      {
        if (v33 != 5)
        {
          goto LABEL_25;
        }

        p_p = __p;
      }

      else
      {
        if (SHIBYTE(v34) != 5)
        {
          goto LABEL_26;
        }

        p_p = &__p;
      }

      v6 = *p_p;
      v7 = p_p[4];
      if (v6 != 1701011814 || v7 != 116)
      {
        break;
      }

      v23 = 0;
      v24 = 0;
      v29 = 0;
      v30 = 0;
      v27 = 0;
      v28 = 0;
      v25 = 0;
      v26 = 0;
      sub_29A728B94(v43, &__p);
      v9 = MEMORY[0x29C2C1DB0](v43, &v23);
      v10 = MEMORY[0x29C2C1DB0](v9, &v23 + 4);
      MEMORY[0x29C2C1DB0](v10, &v24);
      v11 = sub_29A728B94(v43, &__p);
      sub_29A728B94(v11, &__p);
      v12 = sub_29A728B94(v43, &__p);
      v13 = MEMORY[0x29C2C1DB0](v12, &v29);
      v14 = MEMORY[0x29C2C1DB0](v13, &v29 + 4);
      MEMORY[0x29C2C1DB0](v14, &v30);
      v15 = sub_29A728B94(v43, &__p);
      v16 = MEMORY[0x29C2C1DB0](v15, &v27);
      v17 = MEMORY[0x29C2C1DB0](v16, &v27 + 4);
      MEMORY[0x29C2C1DB0](v17, &v28);
      v18 = sub_29A728B94(v43, &__p);
      v19 = MEMORY[0x29C2C1DB0](v18, &v25);
      v20 = MEMORY[0x29C2C1DB0](v19, &v25 + 4);
      MEMORY[0x29C2C1DB0](v20, &v26);
      v21 = sub_29A728B94(v43, &__p);
      sub_29A728B94(v21, &__p);
      v35 = v23;
      v36 = v24;
      v37 = v29;
      v38 = v30;
      v39 = v27;
      v40 = v28;
      v42 = v26;
      v41 = v25;
      usdStl::StlModel::AddFacet(a1, &v35);
    }

    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    operator delete(__p);
  }

  else
  {
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    std::istream::read();
    if (!*&v44[*(v43[0] - 24) + 16] && v43[1] == 80)
    {
      LODWORD(v29) = 0;
      std::istream::read();
    }
  }

LABEL_26:
  v43[0] = *MEMORY[0x29EDC9518];
  *(v43 + *(v43[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C2C1D20](v44);
  std::istream::~istream();
  return MEMORY[0x29C2C4390](v45);
}

uint64_t usdStl::importStl(usdStl *this, adobe::usd::UsdData *a2, const usdStl::StlModel *a3)
{
  adobe::usd::UsdData::addNode(this, 0xFFFFFFFF, a3);
  v6 = v5;
  v8 = adobe::usd::UsdData::addMesh(this, v5, v7);
  v10 = v9;
  v64[0] = v8;
  v64[1] = v9;
  sub_29A00D250((v6 + 432), v64);
  if ((*this & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*this & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v11);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(&__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v13 = *EmptyString;
    v63 = EmptyString[2];
    __dst = v13;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v61, 1.0);
  if (SHIBYTE(v63) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_14;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v63))
    {
      goto LABEL_14;
    }

    p_dst = &__dst;
  }

  if (__toupper(*p_dst) == 89)
  {
    v51 = 0x3FF0000000000000uLL;
    v52 = 0;
    v53 = 0xC056800000000000;
    memset(v50, 0, sizeof(v50));
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(v54, &v51, v50);
    v61[4] = v57;
    v61[5] = v58;
    v61[6] = v59;
    v61[7] = v60;
    v61[0] = *v54;
    v61[1] = *&v54[16];
    v61[2] = v55;
    v61[3] = v56;
  }

LABEL_14:
  v15 = *(v6 + 248);
  v16 = *(v6 + 200);
  *v54 = *(v6 + 184);
  *&v54[16] = v16;
  v17 = *(v6 + 232);
  v55 = *(v6 + 216);
  v56 = v17;
  v57 = v15;
  v18 = *(v6 + 280);
  v58 = *(v6 + 264);
  v59 = v18;
  v60 = *(v6 + 296);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v54, v61);
  v19 = v58;
  v20 = v59;
  *(v6 + 248) = v57;
  *(v6 + 264) = v19;
  v21 = v60;
  *(v6 + 280) = v20;
  *(v6 + 296) = v21;
  v22 = *&v54[16];
  *(v6 + 184) = *v54;
  *(v6 + 200) = v22;
  v23 = v56;
  *(v6 + 216) = v55;
  *(v6 + 232) = v23;
  v24 = usdStl::StlModel::FacetCount(a2);
  v25 = v24;
  LODWORD(v51.f64[0]) = 0;
  *v54 = &v51;
  sub_29A19D7EC(v10 + 7, v24, v54);
  LODWORD(v51.f64[0]) = 0;
  *v54 = &v51;
  sub_29A19D7EC(v10 + 12, 3 * v24, v54);
  *&v54[8] = 0;
  *v54 = 0;
  *&v51.f64[0] = v54;
  sub_29A193304(v10 + 17, 3 * v24, &v51);
  *&v54[8] = 0;
  *v54 = 0;
  *&v51.f64[0] = v54;
  sub_29A193304(v10 + 28, v24, &v51);
  v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  if (!v26)
  {
    v26 = sub_29A75A5F4(&pxrInternal__aapl__pxrReserved__::UsdGeomTokens);
  }

  sub_29A166F2C(v10 + 27, v26 + 146);
  if (v24)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      usdStl::StlModel::GetFacet(a2, v30, v54);
      v31 = *&v54[12];
      v32 = *&v54[20];
      v33 = *&v54[24];
      v34 = v55;
      v35 = *(&v55 + 4);
      v36 = HIDWORD(v55);
      sub_29A19DBEC((v10 + 7));
      *(v10[11] + 4 * v30) = 3;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28) = v28;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28 + 4) = v28 + 1;
      sub_29A19DBEC((v10 + 12));
      *(v10[16] + 4 * v28 + 8) = v28 + 2;
      sub_29A1935CC((v10 + 17));
      v37 = v10[21] + v29;
      *v37 = v31;
      *(v37 + 8) = v32;
      sub_29A1935CC((v10 + 17));
      v38 = v10[21] + v29;
      *(v38 + 12) = v33;
      *(v38 + 20) = v34;
      sub_29A1935CC((v10 + 17));
      v39 = v10[21] + v29;
      *(v39 + 24) = v35;
      *(v39 + 32) = v36;
      v40 = *v54;
      v41 = *&v54[8];
      sub_29A1935CC((v10 + 28));
      v42 = 1.0 / fmaxf(sqrtf(vaddv_f32(vmul_f32(v40, v40)) + (v41 * v41)), 1.0e-10);
      v43 = v42 * v41;
      v44 = v10[32];
      v45 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v40), v42));
      v46 = ((v43 * v43) + vaddv_f32(vmul_f32(v45, v45))) < 0.001;
      *(v44 + v27) = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v46), 0x1FuLL)), 0x3F80000000000000, v45);
      v47 = v44 + 4 * v28;
      ++v30;
      v48 = 0.0;
      if (!v46)
      {
        v48 = v43;
      }

      *(v47 + 8) = v48;
      v29 += 36;
      v28 += 3;
      v27 += 12;
    }

    while (v25 != v30);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_29AA0191C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467A0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A1746798, "plyPoints", 0);
    __cxa_guard_release(&qword_2A17467A0);
  }

  return &qword_2A1746798;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getWithUpAxisCorrectionToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467B0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467A8, "plyWithUpAxisCorrection", 0);
    __cxa_guard_release(&qword_2A17467B0);
  }

  return &qword_2A17467A8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsGsplatClippingBoxToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467C0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467B8, "plyGsplatsClippingBox", 0);
    __cxa_guard_release(&qword_2A17467C0);
  }

  return &qword_2A17467B8;
}

uint64_t *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointWidthToken(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  if ((atomic_load_explicit(&qword_2A17467D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17467D0))
  {
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&qword_2A17467C8, "plyPointWidth", 0);
    __cxa_guard_release(&qword_2A17467D0);
  }

  return &qword_2A17467C8;
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::~UsdPlyFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *this)
{
  v8 = (this + 56);
  sub_29A124AB0(&v8);
  v2 = *(this + 6);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(this + 5);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(this + 4);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(this + 3);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(this + 2);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(this + 1);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*this & 7) != 0)
  {
    atomic_fetch_add_explicit((*this & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType::UsdPlyFileFormatTokens_StaticTokenType(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens_StaticTokenType *this)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this, "ply", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 8, "1.0.8", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 16, "usd", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 24, "plyPoints", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 32, "plyPointWidth", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 40, "plyWithUpAxisCorrection", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(this + 48, "plyGsplatsClippingBox", 0);
  v3 = (this + 56);
  v4 = *this;
  v21 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v21 = v5;
    }
  }

  v6 = *(this + 1);
  v22 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v22 = v7;
    }
  }

  v8 = *(this + 2);
  v23 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v23 = v9;
    }
  }

  v10 = *(this + 3);
  v24 = v10;
  if ((v10 & 7) != 0)
  {
    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed) & 1) == 0)
    {
      v24 = v11;
    }
  }

  v12 = *(this + 4);
  v25 = v12;
  if ((v12 & 7) != 0)
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
    {
      v25 = v13;
    }
  }

  v14 = *(this + 5);
  v26 = v14;
  if ((v14 & 7) != 0)
  {
    v15 = (v14 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed) & 1) == 0)
    {
      v26 = v15;
    }
  }

  v16 = *(this + 6);
  v27 = v16;
  if ((v16 & 7) != 0)
  {
    v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed) & 1) == 0)
    {
      v27 = v17;
    }
  }

  *v3 = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  sub_29A12EF7C(v3, &v21, &v28, 7uLL);
  for (i = 48; i != -8; i -= 8)
  {
    v19 = *(&v21 + i);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return this;
}

void sub_29AA01E78(_Unwind_Exception *a1)
{
  v3 = 48;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[6];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[5];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v7 = v1[4];
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v8 = v1[3];
      if ((v8 & 7) != 0)
      {
        atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v9 = v1[2];
      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v10 = v1[1];
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v2)
  {
    v2 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v3 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v3)
  {
    v3 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  if (!v5)
  {
    v5 = sub_29AA12230(&pxrInternal__aapl__pxrReserved__::UsdPlyFileFormatTokens);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(this, v2, v3 + 1, v4 + 2, EmptyString);
}

void sub_29AA020AC(_Unwind_Exception *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(v2);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
  _Unwind_Resume(a1);
}

BOOL sub_29AA020CC(int a1)
{
  v2 = sub_29AA122BC();
  v3 = atomic_load((v2 + 4 * a1));
  if (!v3)
  {
    v5 = v2;
    v6 = sub_29AA122BC();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode((v6 + 4 * a1), off_29F295CA8[a1]);
    v3 = atomic_load((v5 + 4 * a1));
  }

  return v3 == 2;
}

void pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::~UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);
}

{
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface((this + 112));
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(this);

  operator delete(v2);
}

void non-virtual thunk topxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::~UsdPlyFileFormat(pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat *this)
{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);
}

{
  v1 = (this - 112);
  pxrInternal__aapl__pxrReserved__::PcpDynamicFileFormatInterface::~PcpDynamicFileFormatInterface(this);
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(v1);

  operator delete(v2);
}

pxrInternal__aapl__pxrReserved__::Tf_RefPtr_UniqueChangedCounter **pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::InitData@<X0>(__int128 **a1@<X1>, void *a2@<X8>)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x90uLL);
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  pxrInternal__aapl__pxrReserved__::SdfAbstractData::SdfAbstractData(v4);
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 20) = 1065353216;
  v4[88] = 0;
  *v4 = &unk_2A206E3F0;
  *(v4 + 89) = 256;
  *__dst = xmmword_29B4DB174;
  v38 = 0x4000000040000000;
  sub_29AA039F4((v4 + 96), __dst, 6);
  *(v4 + 34) = 1008981770;
  v36 = v4;
  sub_29B293C98(&v36);
  v5 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      sub_29A0196C4(__dst, v5 + 2);
      if (sub_29AA020CC(0))
      {
        if (v38 >= 0)
        {
          v8 = __dst;
        }

        else
        {
          v8 = __dst[0];
        }

        if (v40 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("FileFormatArg: %s = %s\n", v6, v7, v8, p_p);
      }

      if (v40 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__dst[0]);
      }

      v10 = *(v5 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v5 + 2);
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != a1 + 1);
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  if (!v13)
  {
    v13 = sub_29A8F49C4(&pxrInternal__aapl__pxrReserved__::AdobeTokens);
  }

  v14 = *(v13 + 99) & 0xFFFFFFFFFFFFFFF8;
  if (v14)
  {
    v15 = (v14 + 16);
    if (*(v14 + 39) < 0)
    {
      v15 = *v15;
    }
  }

  else
  {
    v15 = "";
  }

  sub_29A008E78(__dst, v15);
  v16 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v16 + 88), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsToken(v17);
  v18 = qword_2A1746798 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A1746798 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v19 = (v18 + 16);
    if (*(v18 + 39) < 0)
    {
      v19 = *v19;
    }
  }

  else
  {
    v19 = "";
  }

  sub_29A008E78(__dst, v19);
  v20 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v20 + 89), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointWidthToken(v21);
  v22 = qword_2A17467C8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467C8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (v22 + 16);
    if (*(v22 + 39) < 0)
    {
      v23 = *v23;
    }
  }

  else
  {
    v23 = "";
  }

  sub_29A008E78(__dst, v23);
  v24 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadFloat(a1, __dst, (v24 + 136), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getWithUpAxisCorrectionToken(v25);
  v26 = qword_2A17467A8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467A8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v27 = (v26 + 16);
    if (*(v26 + 39) < 0)
    {
      v27 = *v27;
    }
  }

  else
  {
    v27 = "";
  }

  sub_29A008E78(__dst, v27);
  v28 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadBool(a1, __dst, (v28 + 90), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  pxrInternal__aapl__pxrReserved__::UsdPlyFileFormat::getPointsGsplatClippingBoxToken(v29);
  v30 = qword_2A17467B8 & 0xFFFFFFFFFFFFFFF8;
  if ((qword_2A17467B8 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = (v30 + 16);
    if (*(v30 + 39) < 0)
    {
      v31 = *v31;
    }
  }

  else
  {
    v31 = "";
  }

  sub_29A008E78(__dst, v31);
  v32 = sub_29AA027BC(&v36);
  sub_29A008E78(v34, usdPly::DEBUG_TAG);
  adobe::usd::argReadFloatArray(a1, __dst, (v32 + 96), v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  *a2 = v36;
  v36 = 0;
  return sub_29AA12338(&v36);
}