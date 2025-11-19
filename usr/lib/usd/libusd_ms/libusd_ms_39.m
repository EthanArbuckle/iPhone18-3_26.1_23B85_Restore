void sub_29A1E74DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E759C(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A1E74F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  v9[7] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1E759C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A1E68B0(v2 + 16);
    }

    operator delete(v2);
  }
}

const void **sub_29A1E75F8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int128 **a4)
{
  v6 = a2;
  v28 = 0;
  v29 = 0;
  v8 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v9 = a2[23];
  }

  else
  {
    a2 = *a2;
    v9 = v8;
  }

  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(&v28, a2, v9);
  v10 = bswap64(0x9E3779B97F4A7C55 * v28);
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = vcnt_s8(v11);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v4 = v10;
      if (v10 >= v11)
      {
        v4 = v10 % v11;
      }
    }

    else
    {
      v4 = (v11 - 1) & v10;
    }

    v14 = *(*a1 + 8 * v4);
    if (v14)
    {
      for (i = *v14; i; i = *i)
      {
        v16 = i[1];
        if (v16 == v10)
        {
          if (sub_29A0EC4B8(a1, i + 2, v6))
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

  sub_29A1E78A0(a1, v10, a4, &v28);
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
    i = v28;
    *v28 = *v24;
    *v24 = i;
  }

  else
  {
    v25 = v28;
    *v28 = *(a1 + 16);
    *(a1 + 16) = v25;
    *(v23 + 8 * v4) = a1 + 16;
    i = v28;
    if (*v28)
    {
      v26 = *(*v28 + 1);
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

      *(*a1 + 8 * v26) = v28;
      i = v28;
    }
  }

  ++*(a1 + 24);
  return i;
}

void sub_29A1E7888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1E7944(va, 0);
  _Unwind_Resume(a1);
}

void *sub_29A1E78A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x38uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v10 = *a3;
  if (*(*a3 + 23) < 0)
  {
    result = sub_29A008D14(result + 16, *v10, *(v10 + 1));
  }

  else
  {
    v11 = *v10;
    result[4] = *(v10 + 2);
    *(result + 1) = v11;
  }

  v9[5] = 0;
  v9[6] = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1E7944(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A099388(v2 + 16);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29A1E79A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = 0;
  if (v3)
  {
    sub_29A0ECFD4((v3 + 16), &v6);
    v4 = a1[1];
    a1[1] = v6;
    v6 = 0;
    if (v4)
    {
      sub_29B28D0B0(v4, &v6);
    }
  }

  return a1;
}

void sub_29A1E7A00(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_StreamWritableAsset::~Sdf_StreamWritableAsset(pxrInternal__aapl__pxrReserved__::Sdf_StreamWritableAsset *this)
{
  pxrInternal__aapl__pxrReserved__::ArWritableAsset::~ArWritableAsset(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_WriteToStream(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, uint64_t a2, uint64_t a3)
{
  sub_29A1E7C6C(v18, a2);
  SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(a1);
  if (SpecType <= 7)
  {
    if (SpecType == 1)
    {
      v11 = *a1;
      v16[0] = v11;
      if (v11)
      {
        atomic_fetch_add(v11, 1u);
      }

      sub_29A1E7FA8(v16);
    }

    if (SpecType != 6)
    {
      goto LABEL_23;
    }

    v7 = *a1;
    v16[0] = v7;
    if (v7)
    {
      atomic_fetch_add(v7, 1u);
    }

    v8 = sub_29A1E7CF8(v16, v18, a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v16);
  }

  else
  {
    if (SpecType != 8)
    {
      if (SpecType == 10)
      {
        v10 = *a1;
        v16[0] = v10;
        if (v10)
        {
          atomic_fetch_add(v10, 1u);
        }

        sub_29A1E9A30(v16);
      }

      if (SpecType == 11)
      {
        v6 = *a1;
        v16[0] = v6;
        if (v6)
        {
          atomic_fetch_add(v6, 1u);
        }

        sub_29A1E98E4(v16);
      }

LABEL_23:
      v16[0] = "sdf/fileIO.cpp";
      v16[1] = "Sdf_WriteToStream";
      v16[2] = 72;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WriteToStream(const SdfSpec &, std::ostream &, size_t)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::TfEnum::GetName(&unk_2A2047348, SpecType, __p);
      if (v15 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Cannot write spec of type %s to stream", v13);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = 0;
      goto LABEL_22;
    }

    v9 = *a1;
    v16[0] = v9;
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }

    sub_29A1E8D88(v16, v18, a3);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v16);
    v8 = 1;
  }

LABEL_22:
  sub_29A1F39B4(v18);
  return v8;
}

void sub_29A1E7C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A1F39B4((v17 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_29A1E7C6C(uint64_t a1, uint64_t a2)
{
  sub_29A1E9B98(a2, &v4);
  v5 = v4;
  v4 = 0uLL;
  sub_29A1E9CFC(a1, &v5);
  if (*(&v5 + 1))
  {
    sub_29A014BEC(*(&v5 + 1));
  }

  if (*(&v4 + 1))
  {
    sub_29A014BEC(*(&v4 + 1));
  }

  return a1;
}

void sub_29A1E7CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_29A014BEC(a12);
  }

  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1E7CF8(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  IsDormant = pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1);
  if ((IsDormant & 1) == 0)
  {
    Specifier = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSpecifier(a1);
    if (Specifier != 1)
    {
      goto LABEL_6;
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    if (!v8)
    {
      v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
    }

    if (pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v8 + 464)))
    {
LABEL_6:
      pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetTypeName(a1, &__p);
      v9 = __p.__r_.__value_.__r.__words[0];
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfTokens);
      if (!v10)
      {
        v10 = sub_29A1EB86C(&pxrInternal__aapl__pxrReserved__::SdfTokens);
      }

      if ((v9 ^ *v10) > 7)
      {
LABEL_12:
        v11 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Specifier);
        v12 = " ";
        v13 = "";
        if (v9)
        {
          v14 = v9 & 0xFFFFFFFFFFFFFFF8;
          if ((v9 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v13 = (v14 + 16);
            if (*(v14 + 39) < 0)
            {
              v13 = *v13;
            }
          }
        }

        else
        {
          v12 = "";
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3, "%s%s%s ", v11, v12, v13);
        Name = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetName(a1);
        if (*(Name + 23) >= 0)
        {
          v16 = Name;
        }

        else
        {
          v16 = *Name;
        }

        sub_29A008E78(&__p, v16);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((v9 & 7) != 0)
        {
          atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        sub_29A1E9D5C(a1, a2, a3);
        sub_29A008E78(&__p, "\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__p, "{\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A1EB220(a1, a2, a3);
      }

      if ((v9 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    v9 = 0;
    goto LABEL_12;
  }

  return IsDormant ^ 1u;
}

void sub_29A1E7FA8(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  v18 = *MEMORY[0x29EDCA608];
  Variability = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetVariability(a1);
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Variability);
  sub_29A008E78(&v12, v3);
  size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v12.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::push_back(&v12, 32);
  }

  if (!atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys))
  {
    sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v13);
  if (sub_29A1F1D6C(&v13))
  {
    if ((v14 & 4) != 0)
    {
      v6 = (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(&v13);
    }

    else
    {
      v6 = v13;
    }

    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v11, v6);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::TsSpline::TsSpline(&v11);
  }

  pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetComment(a1, &v16);
  if (v17 < 0)
  {
    operator delete(v16);
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v7)
  {
    v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v7 + 88));
  pxrInternal__aapl__pxrReserved__::SdfPropertySpec::IsCustom(a1);
  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v8)
  {
    v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v8 + 56));
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v9)
  {
    v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v9 + 448));
  pxrInternal__aapl__pxrReserved__::TsSpline::IsEmpty(&v11);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  if (!v10)
  {
    v10 = sub_29A1F1DF8(&pxrInternal__aapl__pxrReserved__::SdfValueTypeNames);
  }

  TypeName = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetTypeName(a1);
  pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::GetSerializationName(v10, &TypeName);
}

void sub_29A1E8BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::__shared_weak_count *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a28)
  {
    sub_29A014BEC(a28);
  }

  sub_29A186B14(v35 - 160);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_29A1E8D88(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, void *a2, uint64_t a3)
{
  v93 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetComment(a1, &v88);
  if (v90 < 0)
  {
    v6 = v89 == 0;
    operator delete(v88);
  }

  else
  {
    v6 = v90 == 0;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v7)
  {
    v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v8 = pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v7 + 440));
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v9)
  {
    v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  v81 = pxrInternal__aapl__pxrReserved__::SdfSpec::HasField(a1, (v9 + 88));
  IsCustom = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::IsCustom(a1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::ListFields(a1, &v88);
  v83 = a3;
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v12 = v11 + 632;
  if (!*(v11 + 696))
  {
    v12 = 0;
  }

  __p.__r_.__value_.__r.__words[0] = v12;
  v13 = sub_29A1F27FC(v88, v89, &__p);
  v14 = v13;
  if (v6)
  {
    v15 = v88 != v13;
    if (!v8)
    {
LABEL_14:
      v82 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v15 = 1;
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(a1, &v85);
  if (sub_29A1F222C(&v85) && !(*(*v85 + 16))(v85))
  {
    v8 = 0;
  }

  else if (sub_29A1F222C(&v85))
  {
    v8 = sub_29A1F28A0(v85);
  }

  else
  {
    v8 = 1;
  }

  if (sub_29A1F222C(&v85) && ((*(*v85 + 16))(v85) & 1) == 0)
  {
    if (sub_29A1F222C(&v85))
    {
      v82 = sub_29A1F28A0(v85);
    }

    else
    {
      v82 = 1;
    }
  }

  else
  {
    v82 = 0;
  }

  if (v86)
  {
    sub_29A014BEC(v86);
  }

LABEL_27:
  if (pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetVariability(a1))
  {
    v16 = "";
  }

  else
  {
    v16 = "varying ";
  }

  sub_29A008E78(&v85, v16);
  if ((v15 | v8) & 1) == 0 && ((v82 & 1) != 0 || (pxrInternal__aapl__pxrReserved__::SdfPropertySpec::IsCustom(a1)))
  {
    if (IsCustom)
    {
      v21 = v87;
      v22 = v85;
      Name = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v24 = &v85;
      if (v21 < 0)
      {
        v24 = v22;
      }

      if (*(Name + 23) >= 0)
      {
        v25 = Name;
      }

      else
      {
        v25 = *Name;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "custom %srel %s\n", v24, v25);
    }
  }

  else
  {
    v17 = v87;
    v18 = v85;
    v19 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
    if (IsCustom)
    {
      v20 = "custom %srel %s";
    }

    else
    {
      v20 = "%srel %s";
    }

    v26 = &v85;
    if (v17 < 0)
    {
      v26 = v18;
    }

    if (*(v19 + 23) >= 0)
    {
      v27 = v19;
    }

    else
    {
      v27 = *v19;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, v20, v26, v27);
    if (v8)
    {
      pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(a1, &v92);
      *&__p.__r_.__value_.__l.__data_ = v92;
      if (*(&v92 + 1))
      {
        atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(__p.__r_.__value_.__r.__words[2]) = 0;
      if (sub_29A1F22B0(&__p))
      {
        sub_29A1F2678(&__p, a2, v83, 3);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, " = None");
      }

      if (__p.__r_.__value_.__l.__size_)
      {
        sub_29A014BEC(__p.__r_.__value_.__l.__size_);
      }

      if (*(&v92 + 1))
      {
        sub_29A014BEC(*(&v92 + 1));
      }
    }

    if (v6)
    {
      v28 = 0;
    }

    else
    {
      v28 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, 0, v15);
      pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetComment(a1, &__p);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, v83 + 1, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
    }

    v29 = 126 - 2 * __clz(v14 - v88);
    if (v14 == v88)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    sub_29A1EC380(v88, v14, &__p, v30, 1);
    v31 = v88;
    if (v88 != v14)
    {
      v32 = v83 + 1;
      if (v15)
      {
        v33 = v83 + 1;
      }

      else
      {
        v33 = 0;
      }

      v34 = "";
      if (v15)
      {
        v34 = "\n";
      }

      v79 = v34;
      v80 = v33;
      do
      {
        v28 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, v28 & 1, v15);
        v35 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v35)
        {
          v35 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v35 + 17) ^ *v31) > 7)
        {
          v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v36)
          {
            v36 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v36 + 32) ^ *v31) > 7)
          {
            v38 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v38)
            {
              v38 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            if ((*(v38 + 54) ^ *v31) > 7)
            {
              sub_29A1EBC64(a2, v32, a1, v31);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetSymmetryFunction(a1, &__p);
              v39 = __p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
              if ((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v40 = (v39 + 16);
                if (*(v39 + 39) < 0)
                {
                  v40 = *v40;
                }
              }

              else
              {
                v40 = "";
              }

              pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v80, "symmetryFunction = %s%s", v40, v79);
              if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
              {
                atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }
            }
          }

          else
          {
            Permission = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetPermission(a1);
            pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Permission);
            if (v15)
            {
              pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v32, "permission = %s\n");
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "permission = %s");
            }
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v32, "doc = ");
          pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDocumentation(a1, &__p);
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, 0, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
        }

        ++v31;
      }

      while (v31 != v14);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::CloseParensIfNeeded(a2, v83, v28, v15);
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
  }

  if (v82)
  {
    pxrInternal__aapl__pxrReserved__::SdfRelationshipSpec::GetTargetPathList(a1, &v92);
    *&__p.__r_.__value_.__l.__data_ = v92;
    if (*(&v92 + 1))
    {
      atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(__p.__r_.__value_.__r.__words[2]) = 2;
    if (sub_29A1F22B0(&__p))
    {
      v41 = v87;
      v42 = v85;
      v43 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v44 = &v85;
      if (v41 < 0)
      {
        v44 = v42;
      }

      if (*(v43 + 23) >= 0)
      {
        v45 = v43;
      }

      else
      {
        v45 = *v43;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "delete %srel %s", v44, v45);
      sub_29A1F2678(&__p, a2, v83, 0);
    }

    v46 = v92;
    if (*(&v92 + 1))
    {
      atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    size = __p.__r_.__value_.__l.__size_;
    *&__p.__r_.__value_.__l.__data_ = v46;
    if (size)
    {
      sub_29A014BEC(size);
    }

    LODWORD(__p.__r_.__value_.__r.__words[2]) = 1;
    if (sub_29A1F22B0(&__p))
    {
      v48 = v87;
      v49 = v85;
      v50 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v51 = &v85;
      if (v48 < 0)
      {
        v51 = v49;
      }

      if (*(v50 + 23) >= 0)
      {
        v52 = v50;
      }

      else
      {
        v52 = *v50;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "add %srel %s", v51, v52);
      sub_29A1F2678(&__p, a2, v83, 1);
    }

    v53 = v92;
    if (*(&v92 + 1))
    {
      atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v54 = __p.__r_.__value_.__l.__size_;
    *&__p.__r_.__value_.__l.__data_ = v53;
    if (v54)
    {
      sub_29A014BEC(v54);
    }

    LODWORD(__p.__r_.__value_.__r.__words[2]) = 4;
    if (sub_29A1F22B0(&__p))
    {
      v55 = v87;
      v56 = v85;
      v57 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v58 = &v85;
      if (v55 < 0)
      {
        v58 = v56;
      }

      if (*(v57 + 23) >= 0)
      {
        v59 = v57;
      }

      else
      {
        v59 = *v57;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "prepend %srel %s", v58, v59);
      sub_29A1F2678(&__p, a2, v83, 1);
    }

    v60 = v92;
    if (*(&v92 + 1))
    {
      atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v61 = __p.__r_.__value_.__l.__size_;
    *&__p.__r_.__value_.__l.__data_ = v60;
    if (v61)
    {
      sub_29A014BEC(v61);
    }

    LODWORD(__p.__r_.__value_.__r.__words[2]) = 5;
    if (sub_29A1F22B0(&__p))
    {
      v62 = v87;
      v63 = v85;
      v64 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v65 = &v85;
      if (v62 < 0)
      {
        v65 = v63;
      }

      if (*(v64 + 23) >= 0)
      {
        v66 = v64;
      }

      else
      {
        v66 = *v64;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "append %srel %s", v65, v66);
      sub_29A1F2678(&__p, a2, v83, 1);
    }

    v67 = v92;
    if (*(&v92 + 1))
    {
      atomic_fetch_add_explicit((*(&v92 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v68 = __p.__r_.__value_.__l.__size_;
    *&__p.__r_.__value_.__l.__data_ = v67;
    if (v68)
    {
      sub_29A014BEC(v68);
    }

    LODWORD(__p.__r_.__value_.__r.__words[2]) = 3;
    if (sub_29A1F22B0(&__p))
    {
      v69 = v87;
      v70 = v85;
      v71 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v72 = &v85;
      if (v69 < 0)
      {
        v72 = v70;
      }

      if (*(v71 + 23) >= 0)
      {
        v73 = v71;
      }

      else
      {
        v73 = *v71;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "reorder %srel %s", v72, v73);
      sub_29A1F2678(&__p, a2, v83, 0);
    }

    if (__p.__r_.__value_.__l.__size_)
    {
      sub_29A014BEC(__p.__r_.__value_.__l.__size_);
    }

    if (*(&v92 + 1))
    {
      sub_29A014BEC(*(&v92 + 1));
    }
  }

  if (v81)
  {
    pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetDefaultValue(a1, &v92);
    if (*(&v92 + 1))
    {
      v74 = v87;
      v75 = v85;
      v76 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(a1);
      v77 = &v85;
      if (v74 < 0)
      {
        v77 = v75;
      }

      if (*(v76 + 23) >= 0)
      {
        v78 = v76;
      }

      else
      {
        v78 = *v76;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v83, "%srel %s.default = ", v77, v78);
      sub_29A186EF4(v91, &v92);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDefaultValue(a2, 0, v91);
      sub_29A186B14(v91);
      sub_29A008E78(&__p, "\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v83, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_29A186B14(&v92);
  }

  if (v87 < 0)
  {
    operator delete(v85);
  }

  v85 = &v88;
  sub_29A124AB0(&v85);
}

void sub_29A1E97CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(v31 - 112);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = &a28;
  sub_29A124AB0(&a22);
  _Unwind_Resume(a1);
}

void sub_29A1E99F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_29A1F19E8(&__p);
  _Unwind_Resume(a1);
}

void sub_29A1E9B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&a15);
  _Unwind_Resume(a1);
}

void *sub_29A1E9B98@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x28uLL);
  result = sub_29A1E9BF4(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29A1E9BF4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A2047268;
  pxrInternal__aapl__pxrReserved__::ArWritableAsset::ArWritableAsset(a1 + 3);
  a1[3] = &unk_2A2047220;
  a1[4] = a2;
  return a1;
}

void sub_29A1E9C90(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2047268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1E9CFC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = xmmword_29B484390;
  *(a1 + 32) = operator new[](0x1000uLL);
  *(a1 + 40) = 0;
  return a1;
}

void sub_29A1E9D44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1E9D5C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, void *a2, uint64_t a3)
{
  v67[2] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::ListFields(a1, v63);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::SdfSchema>::_CreateInstance();
  }

  v7 = (v6 + 488);
  if (!*(v6 + 552))
  {
    v7 = 0;
  }

  v64.__vftable = v7;
  v8 = sub_29A1EC0D0(v63[0], v63[1], &v64);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetComment(a1, &v62);
  size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
  if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v62.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, 0, 1);
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, a3 + 1, &v62);
    sub_29A008E78(&__p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = 1;
    v12 = v63[0];
  }

  else
  {
    v10 = 0;
    v12 = v63[0];
    v11 = v63[0] != v8;
  }

  v13 = 126 - 2 * __clz(v8 - v12);
  if (v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  sub_29A1EC380(v12, v8, &v64, v14, 1);
  v15 = v63[0];
  if (v63[0] != v8)
  {
    v51 = a3 + 1;
    if (v11)
    {
      v16 = a3 + 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = "";
    if (v11)
    {
      v17 = "\n";
    }

    v50 = v17;
    while (1)
    {
      v10 = pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::OpenParensIfNeeded(a2, v10 & 1, v11);
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v18)
      {
        v18 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v18 + 17) ^ *v15) <= 7)
      {
        sub_29A008E78(&__p, "doc = ");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetDocumentation(a1, &__p);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteQuotedString(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_29A008E78(&__p, "\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_130;
      }

      v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v19)
      {
        v19 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v19 + 32) ^ *v15) <= 7)
      {
        Permission = pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPermission(a1);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Stringify(Permission);
        if (v11)
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v51, "permission = %s\n");
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "permission = %s");
        }

        goto LABEL_130;
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v21)
      {
        v21 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v21 + 54) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSymmetryFunction(a1, &__p);
        v22 = __p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8;
        if ((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8) != 0)
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

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, v16, "symmetryFunction = %s%s", v23, v50);
        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        goto LABEL_130;
      }

      v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v24)
      {
        v24 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v24 + 31) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "payload");
        if (sub_29A1EF030(&v66))
        {
          if ((v67[0] & 4) != 0)
          {
            (*((v67[0] & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>();
        }

        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
        __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
        __p.__r_.__value_.__r.__words[2] = 384;
        v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
        LOBYTE(v55.__type_name) = 0;
        v26 = *v15 & 0xFFFFFFFFFFFFFFF8;
        if (v26)
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

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
        v35 = &v64;
        if (v65 < 0)
        {
          v35 = v64.__vftable;
        }

        goto LABEL_127;
      }

      v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v28)
      {
        v28 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v28 + 36) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "references");
        if (sub_29A1EF0BC(&v66))
        {
          if ((v67[0] & 4) != 0)
          {
            (*((v67[0] & 0xFFFFFFFFFFFFFFF8) + 168))(&v66);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfReference>();
        }

        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
        __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
        __p.__r_.__value_.__r.__words[2] = 393;
        v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
        LOBYTE(v55.__type_name) = 0;
        v30 = *v15 & 0xFFFFFFFFFFFFFFF8;
        if (v30)
        {
          v27 = (v30 + 16);
          if (*(v30 + 39) < 0)
          {
            v27 = *v27;
          }
        }

        else
        {
          v27 = "";
        }

        pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
        v35 = &v64;
        if (v65 < 0)
        {
          v35 = v64.__vftable;
        }

        goto LABEL_127;
      }

      v31 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v31)
      {
        v31 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v31 + 61) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSetNameList(a1);
      }

      v32 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v32)
      {
        v32 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v32 + 24) ^ *v15) <= 7)
      {
        break;
      }

      v36 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v36)
      {
        v36 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v36 + 39) ^ *v15) <= 7)
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
        pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "specializes");
        v37 = sub_29A1EB994(a2, v51, &__p, &v66);
        if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if ((v37 & 1) == 0)
        {
          __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
          __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
          __p.__r_.__value_.__r.__words[2] = 453;
          v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
          LOBYTE(v55.__type_name) = 0;
          v38 = *v15 & 0xFFFFFFFFFFFFFFF8;
          if (v38)
          {
            v27 = (v38 + 16);
            if (*(v38 + 39) < 0)
            {
              v27 = *v27;
            }
          }

          else
          {
            v27 = "";
          }

          pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
          v35 = &v64;
          if (v65 < 0)
          {
            v35 = v64.__vftable;
          }

LABEL_127:
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "'%s' field holding unexpected type '%s'", v27, v35);
          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64.__vftable);
          }
        }

LABEL_129:
        sub_29A186B14(&v66);
        goto LABEL_130;
      }

      v39 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      if (!v39)
      {
        v39 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
      }

      if ((*(v39 + 37) ^ *v15) > 7)
      {
        v44 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        if (!v44)
        {
          v44 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
        }

        if ((*(v44 + 34) ^ *v15) > 7)
        {
          v45 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          if (!v45)
          {
            v45 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
          }

          if ((*(v45 + 50) ^ *v15) > 7)
          {
            v46 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            if (!v46)
            {
              v46 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
            }

            if ((*(v46 + 59) ^ *v15) > 7)
            {
              sub_29A1EBC64(a2, v51, a1, v15);
            }

            else
            {
              pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetVariantSelections(a1, &v64);
              sub_29A1EBAFC(&v64, &__p);
              if (v64.__type_name)
              {
                sub_29A014BEC(v64.__type_name);
              }

              if (__p.__r_.__value_.__r.__words[2])
              {
                v59 = 0;
                v64.__vftable = __p.__r_.__value_.__r.__words[0];
                v64.__type_name = &__p.__r_.__value_.__l.__size_;
                while (v64.__vftable != v64.__type_name)
                {
                  v47 = *sub_29A1EBB84(&v64);
                  v67[0] = &off_2A2044DD0;
                  sub_29A1B01B8(&v66, v47 + 56);
                  v48 = sub_29A1EBB84(&v64);
                  v49 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](&v59, (*v48 + 32));
                  sub_29A18606C(v49, &v66);
                  sub_29A186B14(&v66);
                  sub_29A1EBBBC(&v64);
                }

                sub_29A008E78(&v64, "variants = ");
                pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &v64);
                if (SHIBYTE(v65) < 0)
                {
                  operator delete(v64.__vftable);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a2, v51, v11, &v59, 0);
                sub_29A184A10(&v59, 0);
              }

              sub_29A01752C(&__p, __p.__r_.__value_.__l.__size_);
            }

            goto LABEL_130;
          }

          pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetSuffixSubstitutions(a1, &v64);
          sub_29A008E78(&__p, "suffixSubstitutions = ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPrefixSubstitutions(a1, &v64);
          sub_29A008E78(&__p, "prefixSubstitutions = ");
          pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, v51, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a2, v51, v11, &v64, 1);
        sub_29A184A10(&v64, 0);
      }

      else
      {
        v67[0] = 0;
        v67[1] = 0;
        v66 = v67;
        pxrInternal__aapl__pxrReserved__::SdfSpec::GetPath(a1, &v61);
        v60[0] = 0;
        v60[1] = 0;
        v59 = v60;
        pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetRelocates(a1, &v57);
        sub_29A1EF2C8(&v57, &__p);
        v55 = 0;
        v56 = 0;
        sub_29A1EF438(&v57, &v64);
        v55 = v64;
        v56 = v65;
        if (!sub_29A1EF4E8(&__p, &v55))
        {
          v40 = sub_29A1EBA18(&__p);
          v41 = sub_29A1EF5C0(*v40, *(v40 + 8), *(v40 + 16));
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath((v41 + 8), &v61, &v53);
          v42 = sub_29A1EBA18(&__p);
          v43 = sub_29A1EF5C0(*v42, *(v42 + 8), *(v42 + 16));
          pxrInternal__aapl__pxrReserved__::SdfPath::MakeRelativePath(v43, &v61, &v52);
          v64.__vftable = &v52;
          sub_29A1EF770(&v59, &v52, &unk_29B4D6118, &v64);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
        }

        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteRelocates(a2, v51, v11, &v59);
        if (v58)
        {
          sub_29A014BEC(v58);
        }

        sub_29A1EF938(&v59, v60[0]);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v61 + 1);
        sub_29A1DE3A4(&v61);
        sub_29A1EF938(&v66, v67[0]);
      }

LABEL_130:
      if (++v15 == v8)
      {
        goto LABEL_146;
      }
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a1, &v66);
    pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&__p, "inherits");
    v33 = sub_29A1EB994(a2, v51, &__p, &v66);
    if ((__p.__r_.__value_.__s.__data_[0] & 7) != 0)
    {
      atomic_fetch_add_explicit((__p.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v33 & 1) == 0)
    {
      __p.__r_.__value_.__r.__words[0] = "sdf/fileIO_Common.h";
      __p.__r_.__value_.__l.__size_ = "Sdf_WritePrimMetadata";
      __p.__r_.__value_.__r.__words[2] = 444;
      v55.__vftable = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_WritePrimMetadata(const SdfPrimSpec &, Sdf_TextOutput &, size_t)";
      LOBYTE(v55.__type_name) = 0;
      v34 = *v15 & 0xFFFFFFFFFFFFFFF8;
      if (v34)
      {
        v27 = (v34 + 16);
        if (*(v34 + 39) < 0)
        {
          v27 = *v27;
        }
      }

      else
      {
        v27 = "";
      }

      pxrInternal__aapl__pxrReserved__::VtValue::GetTypeName(&v66, &v64);
      v35 = &v64;
      if (v65 < 0)
      {
        v35 = v64.__vftable;
      }

      goto LABEL_127;
    }

    goto LABEL_129;
  }

LABEL_146:
  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::CloseParensIfNeeded(a2, a3, v10, v11);
  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = v63;
  sub_29A124AB0(&__p);
}

void sub_29A1EAEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  sub_29A184A10(&a34, 0);
  sub_29A01752C(&a23, a24);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  a23 = (v43 - 176);
  sub_29A124AB0(&a23);
  _Unwind_Resume(a1);
}

void sub_29A1EB220(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  v12[14] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetPropertyOrder(a1, &__p);
  sub_29A1F0334(&__p, v12);
  if (v10)
  {
    sub_29A014BEC(v10);
  }

  if ((v12[1] - v12[0]) >= 9)
  {
    sub_29A008E78(&__p, "reorder properties = ");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3 + 1, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(a2, a3 + 1, v12);
    sub_29A008E78(&__p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &__p);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetNameChildrenOrder(a1, &p_p);
  sub_29A1F0334(&p_p, &__p);
  if (v7)
  {
    sub_29A014BEC(v7);
  }

  if ((v10 - __p) >= 9)
  {
    sub_29A008E78(&p_p, "reorder nameChildren = ");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, a3 + 1, &p_p);
    if (v8 < 0)
    {
      operator delete(p_p);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteNameVector(a2, a3 + 1, &__p);
    sub_29A008E78(&p_p, "\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a2, 0, &p_p);
    if (v8 < 0)
    {
      operator delete(p_p);
    }
  }

  p_p = &__p;
  sub_29A124AB0(&p_p);
  __p = v12;
  sub_29A124AB0(&__p);
  pxrInternal__aapl__pxrReserved__::SdfPrimSpec::GetProperties(a1);
}

void sub_29A1EB6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *sub_29A1EB86C(atomic_ullong *a1)
{
  result = sub_29A1EB8B4();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType::~SdfTokens_StaticTokenType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType *sub_29A1EB8B4()
{
  v0 = operator new(0x20uLL);
  pxrInternal__aapl__pxrReserved__::SdfTokens_StaticTokenType::SdfTokens_StaticTokenType(v0);
  return v0;
}

uint64_t sub_29A1EB8F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    (*(*result + 112))(result, *(a1 + 4));
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;

    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_29A1EB994(uint64_t a1, uint64_t a2, uint64_t a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v5 = sub_29A1E1F54(a4);
  if (v5)
  {
    v6 = *(a4 + 1);
    if ((v6 & 4) != 0)
    {
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a4);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfPath>();
  }

  return v5;
}

uint64_t sub_29A1EBA18(uint64_t a1)
{
  if (sub_29A1EF4E8(a1, a1 + 24))
  {
    sub_29B293E74();
  }

  return a1;
}

uint64_t sub_29A1EBA50(uint64_t a1)
{
  if (sub_29A1EF4E8(a1, a1 + 24))
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *(a1 + 16) = v4;
  }

  return a1;
}

uint64_t *sub_29A1EBAFC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_29A1EF994(a1);
  if (result)
  {
    v5 = (*(**a1 + 48))();

    return sub_29A019350(a2, v5);
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = (a2 + 1);
  }

  return result;
}

void *sub_29A1EBB84(void *result)
{
  if (*result == result[1])
  {
    sub_29B293EC4();
  }

  return result;
}

void *sub_29A1EBBBC(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<std::string, std::string>>::operator++() [T = std::map<std::string, std::string>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t sub_29A1EBC64(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a3, void *a4)
{
  v23 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::SdfSpec::GetField(a3, &v21);
  if (sub_29A1EFDA4(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<int>();
  }

  if (sub_29A1EFE30(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<long long>();
  }

  if (sub_29A1EFEBC(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned int>();
  }

  if (sub_29A1EFF48(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<unsigned long long>();
  }

  if (sub_29A1EFFD4(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<std::string>();
  }

  if (sub_29A1F0060(&v21))
  {
    if ((v22 & 4) != 0)
    {
      (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(&v21);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::TfToken>();
  }

  if (sub_29A1EFA64(&v21))
  {
    v8 = sub_29A1EFAF0(&v21);
    if (sub_29A1EFB84(v8))
    {
      v9 = v8[1];
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(v8);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue>();
    }

    v12 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v12)
    {
      v13 = (v12 + 16);
      if (*(v12 + 39) < 0)
      {
        v13 = *v13;
      }
    }

    else
    {
      v13 = "";
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s = ", v13);
    if (sub_29A185258(v8))
    {
      v17 = sub_29A187B1C(v8);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, a2, 1, v17, 0);
    }

    else if (sub_29A1EFC10(v8))
    {
      v18 = sub_29A1EFC48(v8);
      if (*(v18 + 23) >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = *v18;
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s\n", v19);
    }
  }

  else
  {
    v10 = *a4 & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s = ", v11);
    if (sub_29A185258(&v21))
    {
      v14 = sub_29A187B1C(&v21);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteDictionary(a1, a2, 1, v14, 0);
    }

    else
    {
      if (sub_29A1EFCDC(&v21))
      {
        v15 = sub_29A1EFD10(&v21);
        pxrInternal__aapl__pxrReserved__::TfStringify(*v15, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::StringFromVtValue(&v21, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }
      }

      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, 0, "%s\n", p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  return sub_29A186B14(&v21);
}

void sub_29A1EC088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(&a17);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A1EC0D0(uint64_t *a1, uint64_t *a2, void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      while (sub_29A1EC174(a3, v5))
      {
        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }
      }

      while (!sub_29A1EC174(a3, v3));
      v6 = *v5;
      *v5++ = *v3;
      *v3 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

BOOL sub_29A1EC174(void **a1, void *a2)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v4 + 58) ^ *a2) < 8)
  {
    return 0;
  }

  if (sub_29A1EC328(a1, a2))
  {
    return 1;
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v6)
  {
    v6 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v6 + 31) ^ *a2) < 8)
  {
    return 1;
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v7)
  {
    v7 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v7 + 36) ^ *a2) < 8)
  {
    return 1;
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v8)
  {
    v8 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v8 + 37) ^ *a2) < 8)
  {
    return 1;
  }

  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v9)
  {
    v9 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v9 + 24) ^ *a2) < 8)
  {
    return 1;
  }

  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v10)
  {
    v10 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v10 + 39) ^ *a2) < 8)
  {
    return 1;
  }

  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v11)
  {
    v11 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  if ((*(v11 + 61) ^ *a2) < 8)
  {
    return 1;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v12)
  {
    v12 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return (*(v12 + 59) ^ *a2) < 8uLL;
}

uint64_t sub_29A1EC328(void **a1, void *a2)
{
  if (!pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsValidField(*a1, a2))
  {
    return 1;
  }

  v4 = *a1;

  return pxrInternal__aapl__pxrReserved__::SdfSchemaBase::SpecDefinition::IsMetadataField(v4, a2);
}

uint64_t sub_29A1EC380(uint64_t result, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        return sub_29A1EC884(v9, v9 + 1, a2 - 1, a3);
      case 4uLL:

        return sub_29A1ECCB4(v9, v9 + 1, v9 + 2, a2 - 1, a3);
      case 5uLL:

        return sub_29A1ECF60(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_29A1ED2E4(v9, a2, a3);
      }

      else
      {

        return sub_29A1ED568(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_29A1EE5E0(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      EmptyString = sub_29A1EC884(&v9[v12 >> 1], v9, a2 - 1, a3);
      if (a5)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_29A1EC884(v9, &v9[v12 >> 1], a2 - 1, a3);
      sub_29A1EC884((v9 + 1), v14 - 1, a2 - 2, a3);
      sub_29A1EC884((v9 + 2), &v9[v13 + 1], a2 - 3, a3);
      EmptyString = sub_29A1EC884((v14 - 1), v14, &v9[v13 + 1], a3);
      v16 = *v9;
      *v9 = *v14;
      *v14 = v16;
      if (a5)
      {
        goto LABEL_37;
      }
    }

    if ((*(v9 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v17 = (*(v9 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v17 = EmptyString;
    }

    if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v18 = ((*v9 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    }

    if (*(v17 + 23) >= 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = *v17;
    }

    v20 = *v19;
    if (*(v18 + 23) >= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = *v18;
    }

    if (v20 < 0 || (v22 = *v21, v22 < 0) || ((v23 = v20, v24 = v22, v25 = (v22 ^ v23) & 0x5F, v23 >= 0x40) ? (v26 = v25 == 0) : (v26 = 1), v26 || v24 < 0x40))
    {
      if ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v17, v18) & 1) == 0)
      {
LABEL_42:
        result = sub_29A1ED7B0(v9, a2, a3);
        v9 = result;
LABEL_44:
        a5 = 0;
        a4 = -v11;
        goto LABEL_3;
      }
    }

    else if (((v23 + 5) & 0x1Fu) >= ((v24 + 5) & 0x1Fu))
    {
      goto LABEL_42;
    }

LABEL_37:
    v27 = sub_29A1EDD08(v9, a2, a3);
    if ((v28 & 1) == 0)
    {
      goto LABEL_43;
    }

    v29 = sub_29A1EE1B8(v9, v27, a3);
    v9 = v27 + 1;
    result = sub_29A1EE1B8(v27 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v27;
      if (v29)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v29)
    {
LABEL_43:
      result = sub_29A1EC380(v8, v27, a3, -v11, a5 & 1);
      v9 = v27 + 1;
      goto LABEL_44;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_11;
  }

  if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v30 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v30 = result;
  }

  if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v31 = (*v9 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v31 = result;
  }

  if (*(v30 + 23) >= 0)
  {
    v32 = v30;
  }

  else
  {
    v32 = *v30;
  }

  v33 = *v32;
  if (*(v31 + 23) >= 0)
  {
    v34 = v31;
  }

  else
  {
    v34 = *v31;
  }

  if (v33 < 0 || (v35 = *v34, v35 < 0) || ((v36 = v33, v37 = v35, v38 = (v35 ^ v36) & 0x5F, v36 >= 0x40) ? (v39 = v38 == 0) : (v39 = 1), v39 || v37 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v30, v31);
    if (!result)
    {
      return result;
    }

LABEL_87:
    v40 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v40;
  }

  else if (((v36 + 5) & 0x1Fu) < ((v37 + 5) & 0x1Fu))
  {
    goto LABEL_87;
  }

  return result;
}

uint64_t sub_29A1EC884(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v7 = result;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v8 = result;
  }

  if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = (*v7 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v9 = result;
  }

  if (*(v8 + 23) >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  v11 = *v10;
  if (*(v9 + 23) >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *v9;
  }

  if (v11 < 0 || (v13 = *v12, v13 < 0) || ((v14 = v11, v15 = v13, v16 = (v13 ^ v14) & 0x5F, v14 >= 0x40) ? (v17 = v16 == 0) : (v17 = 1), v17 || v15 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v8, v9);
    if (result)
    {
      goto LABEL_21;
    }
  }

  else if (((v14 + 5) & 0x1Fu) < ((v15 + 5) & 0x1Fu))
  {
LABEL_21:
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v18 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v18 = result;
    }

    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v19 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v19 = result;
    }

    if (*(v18 + 23) >= 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = *v18;
    }

    v21 = *v20;
    if (*(v19 + 23) >= 0)
    {
      v22 = v19;
    }

    else
    {
      v22 = *v19;
    }

    if (v21 < 0 || (v23 = *v22, v23 < 0) || ((v24 = v21, v25 = v23, v26 = (v23 ^ v24) & 0x5F, v24 >= 0x40) ? (v27 = v26 == 0) : (v27 = 1), v27 || v25 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v18, v19);
      if (result)
      {
        goto LABEL_41;
      }
    }

    else if (((v24 + 5) & 0x1Fu) < ((v25 + 5) & 0x1Fu))
    {
LABEL_41:
      v6 = a3;
      goto LABEL_106;
    }

    v51 = *v7;
    *v7 = *v6;
    *v6 = v51;
    if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v52 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v52 = result;
      v51 = *v6;
    }

    v53 = v51 & 0xFFFFFFFFFFFFFFF8;
    if (v53)
    {
      EmptyString = (v53 + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    if (*(v52 + 23) >= 0)
    {
      v55 = v52;
    }

    else
    {
      v55 = *v52;
    }

    v56 = *v55;
    if (*(EmptyString + 23) >= 0)
    {
      v57 = EmptyString;
    }

    else
    {
      v57 = *EmptyString;
    }

    if (v56 < 0 || (v58 = *v57, v58 < 0) || ((v59 = v56, v60 = v58, v61 = (v58 ^ v59) & 0x5F, v59 >= 0x40) ? (v62 = v61 == 0) : (v62 = 1), v62 || v60 < 0x40))
    {
      v64 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v52, EmptyString);
      v7 = v6;
      v6 = a3;
      if (!v64)
      {
        return 1;
      }

      goto LABEL_106;
    }

    v49 = (v59 + 5) & 0x1F;
    v50 = (v60 + 5) & 0x1F;
    v7 = v6;
    v6 = a3;
LABEL_105:
    if (v49 >= v50)
    {
      return 1;
    }

LABEL_106:
    v63 = *v7;
    *v7 = *v6;
    *v6 = v63;
    return 1;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v28 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v28 = result;
  }

  if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v29 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v29 = result;
  }

  if (*(v28 + 23) >= 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = *v28;
  }

  v31 = *v30;
  if (*(v29 + 23) >= 0)
  {
    v32 = v29;
  }

  else
  {
    v32 = *v29;
  }

  if ((v31 & 0x80000000) == 0)
  {
    v33 = *v32;
    if ((v33 & 0x80000000) == 0)
    {
      v34 = v31;
      v35 = v33;
      v36 = (v33 ^ v34) & 0x5F;
      v37 = v34 < 0x40 || v36 == 0;
      if (!v37 && v35 >= 0x40)
      {
        if (((v34 + 5) & 0x1Fu) >= ((v35 + 5) & 0x1Fu))
        {
          return 0;
        }

        goto LABEL_63;
      }
    }
  }

  result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v28, v29);
  if (result)
  {
LABEL_63:
    v38 = *v6;
    *v6 = *a3;
    *a3 = v38;
    if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v39 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v39 = result;
    }

    if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v40 = ((*v7 & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v40 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    }

    if (*(v39 + 23) >= 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = *v39;
    }

    v42 = *v41;
    if (*(v40 + 23) >= 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = *v40;
    }

    if (v42 < 0 || (v44 = *v43, v44 < 0) || ((v45 = v42, v46 = v44, v47 = (v44 ^ v45) & 0x5F, v45 >= 0x40) ? (v48 = v47 == 0) : (v48 = 1), v48 || v46 < 0x40))
    {
      if ((pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v39, v40) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_106;
    }

    v49 = (v45 + 5) & 0x1F;
    v50 = (v46 + 5) & 0x1F;
    goto LABEL_105;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29A1ECCB4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  result = sub_29A1EC884(a1, a2, a3, a5);
  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v11 = result;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v12 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v12 = result;
  }

  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  v14 = *v13;
  if (*(v12 + 23) >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = *v12;
  }

  if (v14 < 0 || (v16 = *v15, v16 < 0) || ((v17 = v14, v18 = v16, v19 = (v16 ^ v17) & 0x5F, v17 >= 0x40) ? (v20 = v19 == 0) : (v20 = 1), v20 || v18 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, v11, v12);
    if (!result)
    {
      return result;
    }
  }

  else if (((v17 + 5) & 0x1Fu) >= ((v18 + 5) & 0x1Fu))
  {
    return result;
  }

  v21 = *a3;
  *a3 = *a4;
  *a4 = v21;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v22 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v22 = result;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v23 = result;
  }

  if (*(v22 + 23) >= 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = *v22;
  }

  v25 = *v24;
  if (*(v23 + 23) >= 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = *v23;
  }

  if (v25 < 0 || (v27 = *v26, v27 < 0) || ((v28 = v25, v29 = v27, v30 = (v27 ^ v28) & 0x5F, v28 >= 0x40) ? (v31 = v30 == 0) : (v31 = 1), v31 || v29 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, v22, v23);
    if (!result)
    {
      return result;
    }
  }

  else if (((v28 + 5) & 0x1Fu) >= ((v29 + 5) & 0x1Fu))
  {
    return result;
  }

  v32 = *a2;
  *a2 = *a3;
  *a3 = v32;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v33 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v33 = result;
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v34 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v34 = result;
  }

  if (*(v33 + 23) >= 0)
  {
    v35 = v33;
  }

  else
  {
    v35 = *v33;
  }

  v36 = *v35;
  if (*(v34 + 23) >= 0)
  {
    v37 = v34;
  }

  else
  {
    v37 = *v34;
  }

  if (v36 < 0 || (v38 = *v37, v38 < 0) || v36 < 0x40u || ((v38 ^ v36) & 0x5F) == 0 || v38 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a5, v33, v34);
    if (!result)
    {
      return result;
    }
  }

  else if (((v36 + 5) & 0x1Fu) >= ((v38 + 5) & 0x1Fu))
  {
    return result;
  }

  v39 = *a1;
  *a1 = *a2;
  *a2 = v39;
  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29A1ECF60(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  result = sub_29A1ECCB4(a1, a2, a3, a4, a6);
  if ((*a5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v13 = result;
  }

  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v14 = result;
  }

  if (*(v13 + 23) >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  v16 = *v15;
  if (*(v14 + 23) >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = *v14;
  }

  if (v16 < 0 || (v18 = *v17, v18 < 0) || ((v19 = v16, v20 = v18, v21 = (v18 ^ v19) & 0x5F, v19 >= 0x40) ? (v22 = v21 == 0) : (v22 = 1), v22 || v20 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, v13, v14);
    if (!result)
    {
      return result;
    }
  }

  else if (((v19 + 5) & 0x1Fu) >= ((v20 + 5) & 0x1Fu))
  {
    return result;
  }

  v23 = *a4;
  *a4 = *a5;
  *a5 = v23;
  if ((*a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v24 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v24 = result;
  }

  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v25 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v25 = result;
  }

  if (*(v24 + 23) >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = *v24;
  }

  v27 = *v26;
  if (*(v25 + 23) >= 0)
  {
    v28 = v25;
  }

  else
  {
    v28 = *v25;
  }

  if (v27 < 0 || (v29 = *v28, v29 < 0) || ((v30 = v27, v31 = v29, v32 = (v29 ^ v30) & 0x5F, v30 >= 0x40) ? (v33 = v32 == 0) : (v33 = 1), v33 || v31 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, v24, v25);
    if (!result)
    {
      return result;
    }
  }

  else if (((v30 + 5) & 0x1Fu) >= ((v31 + 5) & 0x1Fu))
  {
    return result;
  }

  v34 = *a3;
  *a3 = *a4;
  *a4 = v34;
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v35 = (*a3 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v35 = result;
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v36 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v36 = result;
  }

  if (*(v35 + 23) >= 0)
  {
    v37 = v35;
  }

  else
  {
    v37 = *v35;
  }

  v38 = *v37;
  if (*(v36 + 23) >= 0)
  {
    v39 = v36;
  }

  else
  {
    v39 = *v36;
  }

  if (v38 < 0 || (v40 = *v39, v40 < 0) || v38 < 0x40u || ((v40 ^ v38) & 0x5F) == 0 || v40 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, v35, v36);
    if (!result)
    {
      return result;
    }
  }

  else if (((v38 + 5) & 0x1Fu) >= ((v40 + 5) & 0x1Fu))
  {
    return result;
  }

  v41 = *a2;
  *a2 = *a3;
  *a3 = v41;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v42 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v42 = result;
  }

  if ((*a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v43 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v43 = result;
  }

  if (*(v42 + 23) >= 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = *v42;
  }

  v45 = *v44;
  if (*(v43 + 23) >= 0)
  {
    v46 = v43;
  }

  else
  {
    v46 = *v43;
  }

  if (v45 < 0 || (v47 = *v46, v47 < 0) || v45 < 0x40u || ((v47 ^ v45) & 0x5F) == 0 || v47 < 0x40u)
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a6, v42, v43);
    if (!result)
    {
      return result;
    }
  }

  else if (((v45 + 5) & 0x1Fu) >= ((v47 + 5) & 0x1Fu))
  {
    return result;
  }

  v48 = *a1;
  *a1 = *a2;
  *a2 = v48;
  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29A1ED2E4(pxrInternal__aapl__pxrReserved__::TfToken *result, pxrInternal__aapl__pxrReserved__::TfToken *a2, uint64_t a3)
{
  if (result != a2)
  {
    v3 = a2;
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v6 = 0;
      v7 = result;
      do
      {
        v8 = v7;
        v7 = v5;
        if ((*(v8 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v9 = (*(v8 + 1) & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v9 = result;
        }

        if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v10 = (*v8 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
          v10 = result;
        }

        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        v12 = *v11;
        if (*(v10 + 23) >= 0)
        {
          v13 = v10;
        }

        else
        {
          v13 = *v10;
        }

        if (v12 < 0 || (v14 = *v13, v14 < 0) || ((v15 = v12, v16 = v14, v17 = (v14 ^ v15) & 0x5F, v15 >= 0x40) ? (v18 = v17 == 0) : (v18 = 1), v18 || v16 < 0x40))
        {
          result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v9, v10);
          if (result)
          {
LABEL_24:
            v19 = *v7;
            *v7 = 0;
            v38 = v19;
            v20 = v19 & 0xFFFFFFFFFFFFFFF8;
            v21 = (v19 & 0xFFFFFFFFFFFFFFF8) + 16;
            for (i = v6; ; i -= 8)
            {
              v23 = (v4 + i);
              v24 = *(v4 + i + 8);
              if ((v24 & 7) != 0)
              {
                atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v25 = *v23;
              *v23 = 0;
              v23[1] = v25;
              if (!i)
              {
                break;
              }

              v26 = v21;
              if (!v20)
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v26 = result;
              }

              if ((*(v4 + i - 8) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v27 = (*(v4 + i - 8) & 0xFFFFFFFFFFFFFFF8) + 16;
              }

              else
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v27 = result;
              }

              if (*(v26 + 23) >= 0)
              {
                v28 = v26;
              }

              else
              {
                v28 = *v26;
              }

              v29 = *v28;
              if (*(v27 + 23) >= 0)
              {
                v30 = v27;
              }

              else
              {
                v30 = *v27;
              }

              if (v29 < 0 || (v31 = *v30, v31 < 0) || ((v32 = v29, v33 = v31, v34 = (v31 ^ v32) & 0x5F, v32 >= 0x40) ? (v35 = v34 == 0) : (v35 = 1), v35 || v33 < 0x40))
              {
                result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v26, v27);
                if (!result)
                {
                  v8 = (v4 + i);
                  goto LABEL_51;
                }
              }

              else if (((v32 + 5) & 0x1Fu) >= ((v33 + 5) & 0x1Fu))
              {
                goto LABEL_51;
              }

              v8 = (v8 - 8);
            }

            v8 = v4;
LABEL_51:
            v3 = a2;
            if ((*v8 & 7) != 0)
            {
              atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            *v8 = v38;
          }
        }

        else if (((v15 + 5) & 0x1Fu) < ((v16 + 5) & 0x1Fu))
        {
          goto LABEL_24;
        }

        v5 = (v7 + 8);
        v6 += 8;
      }

      while ((v7 + 8) != v3);
    }
  }

  return result;
}

uint64_t sub_29A1ED568(uint64_t result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    while (v4 + 1 != a2)
    {
      v6 = v4;
      v4 = v5;
      if ((v6[1] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v7 = (v6[1] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v7 = result;
      }

      if ((*v6 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v8 = (*v6 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v8 = result;
      }

      if (*(v7 + 23) >= 0)
      {
        v9 = v7;
      }

      else
      {
        v9 = *v7;
      }

      v10 = *v9;
      if (*(v8 + 23) >= 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = *v8;
      }

      if (v10 < 0 || (v12 = *v11, v12 < 0) || ((v13 = v10, v14 = v12, v15 = (v12 ^ v13) & 0x5F, v13 >= 0x40) ? (v16 = v15 == 0) : (v16 = 1), v16 || v14 < 0x40))
      {
        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v7, v8);
        if (result)
        {
LABEL_23:
          v17 = *v4;
          *v4 = 0;
          do
          {
            while (1)
            {
              v18 = v6;
              v19 = v6[1];
              if ((v19 & 7) != 0)
              {
                atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v20 = *v6;
              *v6 = 0;
              v6[1] = v20;
              v21 = (v17 & 0xFFFFFFFFFFFFFFF8) + 16;
              if ((v17 & 0xFFFFFFFFFFFFFFF8) == 0)
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v21 = result;
              }

              --v6;
              if ((*(v18 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                v22 = (*(v18 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
              }

              else
              {
                result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
                v22 = result;
              }

              v23 = *(v21 + 23) >= 0 ? v21 : *v21;
              v24 = *v23;
              v25 = *(v22 + 23) >= 0 ? v22 : *v22;
              if (v24 < 0)
              {
                break;
              }

              v26 = *v25;
              if (v26 < 0)
              {
                break;
              }

              v27 = v24;
              v28 = v26;
              v29 = (v26 ^ v27) & 0x5F;
              v30 = v27 < 0x40 || v29 == 0;
              if (v30 || v28 < 0x40)
              {
                break;
              }

              if (((v27 + 5) & 0x1Fu) >= ((v28 + 5) & 0x1Fu))
              {
                goto LABEL_47;
              }
            }

            result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v21, v22);
          }

          while ((result & 1) != 0);
LABEL_47:
          if ((*v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v18 = v17;
        }
      }

      else if (((v13 + 5) & 0x1Fu) < ((v14 + 5) & 0x1Fu))
      {
        goto LABEL_23;
      }

      v5 = v4 + 1;
    }
  }

  return result;
}

uint64_t *sub_29A1ED7B0(uint64_t EmptyString, uint64_t *a2, uint64_t a3)
{
  v5 = EmptyString;
  v6 = *EmptyString;
  *EmptyString = 0;
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = v7 + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v8 = EmptyString;
  }

  if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v9 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
    v9 = EmptyString;
  }

  if (*(v8 + 23) >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  v11 = *v10;
  if (*(v9 + 23) >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = *v9;
  }

  if (v11 < 0 || (v13 = *v12, v13 < 0) || ((v14 = v11, v15 = v13, v16 = (v13 ^ v14) & 0x5F, v14 >= 0x40) ? (v17 = v16 == 0) : (v17 = 1), v17 || v15 < 0x40))
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v8, v9);
    if (EmptyString)
    {
      goto LABEL_21;
    }
  }

  else if (((v14 + 5) & 0x1Fu) < ((v15 + 5) & 0x1Fu))
  {
LABEL_21:
    for (i = v5 + 1; ; ++i)
    {
      v19 = v7 + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v19 = EmptyString;
      }

      if ((*i & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v20 = (*i & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v20 = EmptyString;
      }

      if (*(v19 + 23) >= 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = *v19;
      }

      v22 = *v21;
      if (*(v20 + 23) >= 0)
      {
        v23 = v20;
      }

      else
      {
        v23 = *v20;
      }

      if (v22 < 0 || (v24 = *v23, v24 < 0) || ((v25 = v22, v26 = v24, v27 = (v24 ^ v25) & 0x5F, v25 >= 0x40) ? (v28 = v27 == 0) : (v28 = 1), v28 || v26 < 0x40))
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v19, v20);
        if (EmptyString)
        {
          goto LABEL_68;
        }
      }

      else if (((v25 + 5) & 0x1Fu) < ((v26 + 5) & 0x1Fu))
      {
        goto LABEL_68;
      }
    }
  }

  for (i = v5 + 1; i < a2; ++i)
  {
    v29 = v7 + 16;
    if (!v7)
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v29 = EmptyString;
    }

    if ((*i & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v30 = (*i & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v30 = EmptyString;
    }

    if (*(v29 + 23) >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = *v29;
    }

    v32 = *v31;
    if (*(v30 + 23) >= 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = *v30;
    }

    if (v32 < 0 || (v34 = *v33, v34 < 0) || ((v35 = v32, v36 = v34, v37 = (v34 ^ v35) & 0x5F, v35 >= 0x40) ? (v38 = v37 == 0) : (v38 = 1), v38 || v36 < 0x40))
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v29, v30);
      if (EmptyString)
      {
        break;
      }
    }

    else if (((v35 + 5) & 0x1Fu) < ((v36 + 5) & 0x1Fu))
    {
      break;
    }
  }

LABEL_68:
  if (i < a2)
  {
    for (--a2; ; --a2)
    {
      v39 = v7 + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v39 = EmptyString;
      }

      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v40 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v40 = EmptyString;
      }

      if (*(v39 + 23) >= 0)
      {
        v41 = v39;
      }

      else
      {
        v41 = *v39;
      }

      v42 = *v41;
      if (*(v40 + 23) >= 0)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v40;
      }

      if (v42 < 0 || (v44 = *v43, v44 < 0) || ((v45 = v42, v46 = v44, v47 = (v44 ^ v45) & 0x5F, v45 >= 0x40) ? (v48 = v47 == 0) : (v48 = 1), v48 || v46 < 0x40))
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v39, v40);
        if (!EmptyString)
        {
          break;
        }
      }

      else if (((v45 + 5) & 0x1Fu) >= ((v46 + 5) & 0x1Fu))
      {
        break;
      }
    }
  }

  if (i >= a2)
  {
    goto LABEL_136;
  }

  do
  {
    v49 = *i;
    *i++ = *a2;
    *a2 = v49;
    while (1)
    {
      v50 = v7 + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v50 = EmptyString;
      }

      if ((*i & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v51 = (*i & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v51 = EmptyString;
      }

      v52 = *(v50 + 23) >= 0 ? v50 : *v50;
      v53 = *v52;
      v54 = *(v51 + 23) >= 0 ? v51 : *v51;
      if (v53 < 0)
      {
        break;
      }

      v55 = *v54;
      if (v55 < 0)
      {
        break;
      }

      v56 = v53;
      v57 = v55;
      v58 = (v55 ^ v56) & 0x5F;
      v59 = v56 < 0x40 || v58 == 0;
      if (v59 || v57 < 0x40)
      {
        break;
      }

      if (((v56 + 5) & 0x1Fu) < ((v57 + 5) & 0x1Fu))
      {
        goto LABEL_114;
      }

LABEL_112:
      ++i;
    }

    EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v50, v51);
    if ((EmptyString & 1) == 0)
    {
      goto LABEL_112;
    }

    do
    {
      while (1)
      {
LABEL_114:
        --a2;
        v60 = v7 + 16;
        if (!v7)
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v60 = EmptyString;
        }

        if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v61 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v61 = EmptyString;
        }

        v62 = *(v60 + 23) >= 0 ? v60 : *v60;
        v63 = *v62;
        v64 = *(v61 + 23) >= 0 ? v61 : *v61;
        if (v63 < 0)
        {
          break;
        }

        v65 = *v64;
        if (v65 < 0)
        {
          break;
        }

        v66 = v63;
        v67 = v65;
        v68 = (v65 ^ v66) & 0x5F;
        v69 = v66 < 0x40 || v68 == 0;
        if (v69 || v67 < 0x40)
        {
          break;
        }

        if (((v66 + 5) & 0x1Fu) >= ((v67 + 5) & 0x1Fu))
        {
          goto LABEL_135;
        }
      }

      EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v60, v61);
    }

    while (EmptyString);
LABEL_135:
    ;
  }

  while (i < a2);
LABEL_136:
  v70 = i - 1;
  if (i - 1 == v5)
  {
    v71 = *v70;
    if ((v71 & 7) != 0)
    {
      atomic_fetch_add_explicit((v71 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if ((*v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v5 = *v70;
    *v70 = 0;
  }

  *(i - 1) = v6;
  return i;
}

void sub_29A1EDCE0(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A1EDD08(uint64_t EmptyString, uint64_t *a2, uint64_t a3)
{
  v4 = EmptyString;
  v5 = 0;
  v6 = *EmptyString;
  *EmptyString = 0;
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v4[v5 + 1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = (v4[v5 + 1] & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v8 = EmptyString;
    }

    v9 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
    if (!v7)
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v9 = EmptyString;
    }

    v10 = *(v8 + 23) >= 0 ? v8 : *v8;
    v11 = *v10;
    v12 = *(v9 + 23) >= 0 ? v9 : *v9;
    if (v11 < 0)
    {
      break;
    }

    v13 = *v12;
    if (v13 < 0)
    {
      break;
    }

    v14 = v11;
    v15 = v13;
    v16 = (v13 ^ v14) & 0x5F;
    v17 = v14 < 0x40 || v16 == 0;
    if (v17 || v15 < 0x40)
    {
      break;
    }

    if (((v14 + 5) & 0x1Fu) >= ((v15 + 5) & 0x1Fu))
    {
      goto LABEL_23;
    }

LABEL_21:
    ++v5;
  }

  EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v8, v9);
  if (EmptyString)
  {
    goto LABEL_21;
  }

LABEL_23:
  v18 = &v4[v5];
  v19 = &v4[v5 + 1];
  if (v5 * 8)
  {
    for (--a2; ; --a2)
    {
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v20 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v20 = EmptyString;
      }

      v21 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v21 = EmptyString;
      }

      if (*(v20 + 23) >= 0)
      {
        v22 = v20;
      }

      else
      {
        v22 = *v20;
      }

      v23 = *v22;
      if (*(v21 + 23) >= 0)
      {
        v24 = v21;
      }

      else
      {
        v24 = *v21;
      }

      if (v23 < 0 || (v25 = *v24, v25 < 0) || ((v26 = v23, v27 = v25, v28 = (v25 ^ v26) & 0x5F, v26 >= 0x40) ? (v29 = v28 == 0) : (v29 = 1), v29 || v27 < 0x40))
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v20, v21);
        if (EmptyString)
        {
          goto LABEL_76;
        }
      }

      else if (((v26 + 5) & 0x1Fu) < ((v27 + 5) & 0x1Fu))
      {
        goto LABEL_76;
      }
    }
  }

  if (v19 < a2)
  {
    for (--a2; ; --a2)
    {
      if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v30 = (*a2 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v30 = EmptyString;
      }

      v31 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v31 = EmptyString;
      }

      if (*(v30 + 23) >= 0)
      {
        v32 = v30;
      }

      else
      {
        v32 = *v30;
      }

      v33 = *v32;
      if (*(v31 + 23) >= 0)
      {
        v34 = v31;
      }

      else
      {
        v34 = *v31;
      }

      if (v33 < 0 || (v35 = *v34, v35 < 0) || ((v36 = v33, v37 = v35, v38 = (v35 ^ v36) & 0x5F, v36 >= 0x40) ? (v39 = v38 == 0) : (v39 = 1), v39 || v37 < 0x40))
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v30, v31);
        if (v19 >= a2)
        {
          v41 = 1;
        }

        else
        {
          v41 = EmptyString;
        }

        if (v41)
        {
          break;
        }
      }

      else if (((v36 + 5) & 0x1Fu) < ((v37 + 5) & 0x1Fu) || v19 >= a2)
      {
        break;
      }
    }
  }

LABEL_76:
  if (v19 >= a2)
  {
    goto LABEL_123;
  }

  v42 = &v4[v5 + 1];
  v43 = a2;
  while (2)
  {
    v44 = *v42;
    *v42++ = *v43;
    *v43 = v44;
    while (2)
    {
      if ((*v42 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v45 = (*v42 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v45 = EmptyString;
      }

      v46 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
      if (!v7)
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v46 = EmptyString;
      }

      if (*(v45 + 23) >= 0)
      {
        v47 = v45;
      }

      else
      {
        v47 = *v45;
      }

      v48 = *v47;
      if (*(v46 + 23) >= 0)
      {
        v49 = v46;
      }

      else
      {
        v49 = *v46;
      }

      if ((v48 & 0x80000000) == 0)
      {
        v50 = *v49;
        if ((v50 & 0x80000000) == 0)
        {
          v51 = v48;
          v52 = v50;
          v53 = (v50 ^ v51) & 0x5F;
          v54 = v51 < 0x40 || v53 == 0;
          if (!v54 && v52 >= 0x40)
          {
            if (((v51 + 5) & 0x1Fu) >= ((v52 + 5) & 0x1Fu))
            {
              goto LABEL_100;
            }

            goto LABEL_98;
          }
        }
      }

      EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v45, v46);
      if (EmptyString)
      {
LABEL_98:
        ++v42;
        continue;
      }

      break;
    }

    do
    {
      while (1)
      {
LABEL_100:
        v55 = *--v43;
        v56 = v55 & 0xFFFFFFFFFFFFFFF8;
        if ((v55 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v57 = v56 + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v57 = EmptyString;
        }

        v58 = (v6 & 0xFFFFFFFFFFFFFFF8) + 16;
        if (!v7)
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v58 = EmptyString;
        }

        v59 = *(v57 + 23) >= 0 ? v57 : *v57;
        v60 = *v59;
        v61 = *(v58 + 23) >= 0 ? v58 : *v58;
        if (v60 < 0)
        {
          break;
        }

        v62 = *v61;
        if (v62 < 0)
        {
          break;
        }

        v63 = v60;
        v64 = v62;
        v65 = (v62 ^ v63) & 0x5F;
        v66 = v63 < 0x40 || v65 == 0;
        if (v66 || v64 < 0x40)
        {
          break;
        }

        if (((v63 + 5) & 0x1Fu) < ((v64 + 5) & 0x1Fu))
        {
          goto LABEL_121;
        }
      }

      EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v57, v58);
    }

    while ((EmptyString & 1) == 0);
LABEL_121:
    if (v42 < v43)
    {
      continue;
    }

    break;
  }

  v18 = v42 - 1;
LABEL_123:
  v67 = *v4;
  v68 = *v4 & 7;
  if (v18 == v4)
  {
    if (v68)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else
  {
    if (v68)
    {
      atomic_fetch_add_explicit((v67 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v4 = *v18;
    *v18 = 0;
  }

  *v18 = v6;
  return v18;
}

void sub_29A1EE194(_Unwind_Exception *a1)
{
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit(v2, 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

BOOL sub_29A1EE1B8(uint64_t *EmptyString, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v5 = EmptyString;
  v6 = a2 - EmptyString;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        sub_29A1EC884(EmptyString, EmptyString + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_29A1ECCB4(EmptyString, EmptyString + 1, EmptyString + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_29A1ECF60(EmptyString, EmptyString + 1, EmptyString + 2, EmptyString + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v7 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
        v7 = EmptyString;
      }

      if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v39 = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v39 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      }

      if (*(v7 + 23) >= 0)
      {
        v40 = v7;
      }

      else
      {
        v40 = *v7;
      }

      v41 = *v40;
      if (*(v39 + 23) >= 0)
      {
        v42 = v39;
      }

      else
      {
        v42 = *v39;
      }

      if (v41 < 0 || (v43 = *v42, v43 < 0) || ((v44 = v41, v45 = v43, v46 = (v43 ^ v44) & 0x5F, v44 >= 0x40) ? (v47 = v46 == 0) : (v47 = 1), v47 || v45 < 0x40))
      {
        if (!pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v7, v39))
        {
          return 1;
        }

        goto LABEL_88;
      }

      if (((v44 + 5) & 0x1Fu) < ((v45 + 5) & 0x1Fu))
      {
LABEL_88:
        v48 = *v5;
        *v5 = *(v4 - 1);
        *(v4 - 1) = v48;
      }

      return 1;
    }
  }

  v8 = EmptyString + 2;
  v9 = sub_29A1EC884(EmptyString, EmptyString + 1, EmptyString + 2, a3);
  v10 = v5 + 3;
  if (v5 + 3 == v4)
  {
    return 1;
  }

  v50 = a3;
  v51 = v4;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    if ((*v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = (*v10 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      v13 = v9;
    }

    if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = (*v8 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      v14 = v9;
    }

    v15 = *(v13 + 23) >= 0 ? v13 : *v13;
    v16 = *v15;
    v17 = *(v14 + 23) >= 0 ? v14 : *v14;
    if (v16 < 0)
    {
      break;
    }

    v18 = *v17;
    if (v18 < 0)
    {
      break;
    }

    v19 = v16;
    v20 = v18;
    v21 = (v18 ^ v19) & 0x5F;
    v22 = v19 < 0x40 || v21 == 0;
    if (v22 || v20 < 0x40)
    {
      break;
    }

    if (((v19 + 5) & 0x1Fu) < ((v20 + 5) & 0x1Fu))
    {
      goto LABEL_33;
    }

LABEL_65:
    v8 = v10;
    v11 += 8;
    if (++v10 == v4)
    {
      return 1;
    }
  }

  v9 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v50, v13, v14);
  if (!v9)
  {
    goto LABEL_65;
  }

LABEL_33:
  v23 = *v10;
  *v10 = 0;
  v52 = v23;
  v24 = v23 & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 & 0xFFFFFFFFFFFFFFF8) + 16;
  for (i = v11; ; i -= 8)
  {
    v27 = (v5 + i + 24);
    v28 = (v5 + i + 16);
    if (v28 != v27)
    {
      if ((*v27 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v27 = *v28;
      *v28 = 0;
    }

    if (i == -16)
    {
      break;
    }

    v29 = v25;
    if (!v24)
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      v29 = v9;
    }

    if ((*(v5 + i + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v30 = (*(v5 + i + 8) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
      v30 = v9;
    }

    if (*(v29 + 23) >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = *v29;
    }

    v32 = *v31;
    if (*(v30 + 23) >= 0)
    {
      v33 = v30;
    }

    else
    {
      v33 = *v30;
    }

    if (v32 < 0 || (v34 = *v33, v34 < 0) || ((v35 = v32, v36 = v34, v37 = (v34 ^ v35) & 0x5F, v35 >= 0x40) ? (v38 = v37 == 0) : (v38 = 1), v38 || v36 < 0x40))
    {
      v9 = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v50, v29, v30);
      if (!v9)
      {
        v8 = (v5 + i + 16);
        goto LABEL_62;
      }
    }

    else if (((v35 + 5) & 0x1Fu) >= ((v36 + 5) & 0x1Fu))
    {
      goto LABEL_62;
    }

    --v8;
  }

  v8 = v5;
LABEL_62:
  v4 = v51;
  if ((*v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v8 = v52;
  if (++v12 != 8)
  {
    goto LABEL_65;
  }

  return v10 + 1 == v51;
}

uint64_t *sub_29A1EE5E0(pxrInternal__aapl__pxrReserved__::TfToken *EmptyString, char *a2, uint64_t *a3, uint64_t a4)
{
  if (EmptyString != a2)
  {
    v7 = EmptyString;
    v8 = (a2 - EmptyString) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (EmptyString + 8 * v9);
      do
      {
        EmptyString = sub_29A1EE818(v7, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      while (1)
      {
        if ((*v12 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v13 = (*v12 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v13 = EmptyString;
        }

        if ((*v7 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v14 = (*v7 & 0xFFFFFFFFFFFFFFF8) + 16;
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
          v14 = EmptyString;
        }

        v15 = *(v13 + 23) >= 0 ? v13 : *v13;
        v16 = *v15;
        v17 = *(v14 + 23) >= 0 ? v14 : *v14;
        if (v16 < 0)
        {
          break;
        }

        v18 = *v17;
        if (v18 < 0)
        {
          break;
        }

        v19 = v16;
        v20 = v18;
        v21 = (v18 ^ v19) & 0x5F;
        v22 = v19 < 0x40 || v21 == 0;
        if (v22 || v20 < 0x40)
        {
          break;
        }

        if (((v19 + 5) & 0x1Fu) < ((v20 + 5) & 0x1Fu))
        {
          goto LABEL_27;
        }

LABEL_28:
        if (++v12 == a3)
        {
          goto LABEL_32;
        }
      }

      EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a4, v13, v14);
      if (!EmptyString)
      {
        goto LABEL_28;
      }

LABEL_27:
      v23 = *v12;
      *v12 = *v7;
      *v7 = v23;
      EmptyString = sub_29A1EE818(v7, a4, v8, v7);
      goto LABEL_28;
    }

LABEL_32:
    if (v8 >= 2)
    {
      v24 = (a2 - 8);
      do
      {
        v25 = *v7;
        *v7 = 0;
        v26 = sub_29A1EEC50(v7, a4, v8);
        v27 = *v26;
        v28 = *v26 & 7;
        if (v24 == v26)
        {
          if (v28)
          {
            atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v26 = v25;
        }

        else
        {
          if (v28)
          {
            atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v26 = *v24;
          *v24 = v25;
          sub_29A1EEDD8(v7, v26 + 8, a4, ((v26 + 8) - v7) >> 3);
        }

        --v24;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_29A1EE818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a4;
  v6 = result;
  v61 = v4 >> 1;
  if ((v4 >> 1) < (a4 - result) >> 3)
  {
    return result;
  }

  v9 = (a4 - result) >> 2;
  v10 = v9 + 1;
  v11 = (result + 8 * (v9 + 1));
  v12 = v9 + 2;
  if (v9 + 2 >= a3)
  {
    goto LABEL_25;
  }

  if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v13 = (*v11 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v13 = result;
  }

  if ((v11[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v14 = (v11[1] & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v14 = result;
  }

  if (*(v13 + 23) >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = *v13;
  }

  v16 = *v15;
  if (*(v14 + 23) >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = *v14;
  }

  if (v16 < 0 || (v18 = *v17, v18 < 0) || ((v19 = v16, v20 = v18, v21 = (v18 ^ v19) & 0x5F, v19 >= 0x40) ? (v22 = v21 == 0) : (v22 = 1), v22 || v20 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, v13, v14);
    if (!result)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (((v19 + 5) & 0x1Fu) < ((v20 + 5) & 0x1Fu))
  {
LABEL_24:
    ++v11;
    v10 = v12;
  }

LABEL_25:
  if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v23 = (*v11 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v23 = result;
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v24 = (*v5 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  else
  {
    result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
    v24 = result;
  }

  if (*(v23 + 23) >= 0)
  {
    v25 = v23;
  }

  else
  {
    v25 = *v23;
  }

  v26 = *v25;
  if (*(v24 + 23) >= 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = *v24;
  }

  if (v26 < 0 || (v28 = *v27, v28 < 0) || ((v29 = v26, v30 = v28, v31 = (v28 ^ v29) & 0x5F, v29 >= 0x40) ? (v32 = v31 == 0) : (v32 = 1), v32 || v30 < 0x40))
  {
    result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, v23, v24);
    if (result)
    {
      return result;
    }
  }

  else if (((v29 + 5) & 0x1Fu) < ((v30 + 5) & 0x1Fu))
  {
    return result;
  }

  v33 = *v5;
  *v5 = 0;
  v59 = a2;
  v60 = v33;
  v34 = v33 & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 & 0xFFFFFFFFFFFFFFF8) + 16;
  while (1)
  {
    v36 = v11;
    if (v11 != v5)
    {
      if ((*v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v5 = *v11;
      *v11 = 0;
    }

    if (v61 < v10)
    {
      break;
    }

    v37 = 2 * v10;
    v10 = (2 * v10) | 1;
    v11 = (v6 + 8 * v10);
    v38 = v37 + 2;
    if (v37 + 2 < a3)
    {
      if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v39 = (*v11 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v39 = result;
      }

      if ((v11[1] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v40 = (v11[1] & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v40 = result;
      }

      if (*(v39 + 23) >= 0)
      {
        v41 = v39;
      }

      else
      {
        v41 = *v39;
      }

      v42 = *v41;
      if (*(v40 + 23) >= 0)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v40;
      }

      if (v42 < 0 || (v44 = *v43, v44 < 0) || ((v45 = v42, v46 = v44, v47 = (v44 ^ v45) & 0x5F, v45 >= 0x40) ? (v48 = v47 == 0) : (v48 = 1), v48 || v46 < 0x40))
      {
        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v59, v39, v40);
        if (!result)
        {
          goto LABEL_73;
        }

LABEL_72:
        ++v11;
        v10 = v38;
        goto LABEL_73;
      }

      if (((v45 + 5) & 0x1Fu) < ((v46 + 5) & 0x1Fu))
      {
        goto LABEL_72;
      }
    }

LABEL_73:
    if ((*v11 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v49 = (*v11 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v49 = result;
    }

    v50 = v35;
    if (!v34)
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v50 = result;
    }

    if (*(v49 + 23) >= 0)
    {
      v51 = v49;
    }

    else
    {
      v51 = *v49;
    }

    v52 = *v51;
    if (*(v50 + 23) >= 0)
    {
      v53 = v50;
    }

    else
    {
      v53 = *v50;
    }

    if (v52 < 0 || (v54 = *v53, v54 < 0) || ((v55 = v52, v56 = v54, v57 = (v54 ^ v55) & 0x5F, v55 >= 0x40) ? (v58 = v57 == 0) : (v58 = 1), v58 || v56 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(v59, v49, v50);
      v5 = v36;
      if (result)
      {
        break;
      }
    }

    else
    {
      v5 = v36;
      if (((v55 + 5) & 0x1Fu) < ((v56 + 5) & 0x1Fu))
      {
        break;
      }
    }
  }

  if ((*v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((*v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *v36 = v60;
  return result;
}

pxrInternal__aapl__pxrReserved__::TfToken *sub_29A1EEC50(pxrInternal__aapl__pxrReserved__::TfToken *EmptyString, uint64_t a2, uint64_t a3)
{
  v4 = EmptyString;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = (v4 + 8 * v5);
    v8 = (v7 + 1);
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 >= a3)
    {
      goto LABEL_24;
    }

    if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v11 = (*v8 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v11 = EmptyString;
    }

    v13 = v7[2];
    v12 = (v7 + 2);
    v14 = v13 & 0xFFFFFFFFFFFFFFF8;
    if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = v14 + 16;
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(EmptyString);
      v15 = EmptyString;
    }

    if (*(v11 + 23) >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = *v11;
    }

    v17 = *v16;
    if (*(v15 + 23) >= 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = *v15;
    }

    if ((v17 & 0x80000000) == 0)
    {
      v19 = *v18;
      if ((v19 & 0x80000000) == 0)
      {
        v20 = v17;
        v21 = v19;
        v22 = (v19 ^ v20) & 0x5F;
        v23 = v20 < 0x40 || v22 == 0;
        if (!v23 && v21 >= 0x40)
        {
          if (((v20 + 5) & 0x1Fu) >= ((v21 + 5) & 0x1Fu))
          {
            goto LABEL_24;
          }

LABEL_23:
          v8 = v12;
          v5 = v10;
          goto LABEL_24;
        }
      }
    }

    EmptyString = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a2, v11, v15);
    if (EmptyString)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (v8 != v4)
    {
      if ((*v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *v4 = *v8;
      *v8 = 0;
    }

    v4 = v8;
  }

  while (v5 <= v6);
  return v8;
}

uint64_t sub_29A1EEDD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 8 * (v4 >> 1));
    if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v10 = (*v9 & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v10 = result;
    }

    v12 = *(a2 - 8);
    v11 = (a2 - 8);
    v13 = v12 & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v14 = v13 + 16;
    }

    else
    {
      result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
      v14 = result;
    }

    if (*(v10 + 23) >= 0)
    {
      v15 = v10;
    }

    else
    {
      v15 = *v10;
    }

    v16 = *v15;
    if (*(v14 + 23) >= 0)
    {
      v17 = v14;
    }

    else
    {
      v17 = *v14;
    }

    if (v16 < 0 || (v18 = *v17, v18 < 0) || ((v19 = v16, v20 = v18, v21 = (v18 ^ v19) & 0x5F, v19 >= 0x40) ? (v22 = v21 == 0) : (v22 = 1), v22 || v20 < 0x40))
    {
      result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v10, v14);
      if (!result)
      {
        return result;
      }
    }

    else if (((v19 + 5) & 0x1Fu) >= ((v20 + 5) & 0x1Fu))
    {
      return result;
    }

    v23 = *v11;
    *v11 = 0;
    while (1)
    {
      v24 = v9;
      if (v9 != v11)
      {
        if ((*v11 & 7) != 0)
        {
          atomic_fetch_add_explicit((*v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        *v11 = *v9;
        *v9 = 0;
      }

      if (!v8)
      {
        break;
      }

      v8 = (v8 - 1) >> 1;
      v9 = (v7 + 8 * v8);
      if ((*v9 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v25 = (*v9 & 0xFFFFFFFFFFFFFFF8) + 16;
      }

      else
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v25 = result;
      }

      v26 = (v23 & 0xFFFFFFFFFFFFFFF8) + 16;
      if ((v23 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        result = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(result);
        v26 = result;
      }

      if (*(v25 + 23) >= 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = *v25;
      }

      v28 = *v27;
      if (*(v26 + 23) >= 0)
      {
        v29 = v26;
      }

      else
      {
        v29 = *v26;
      }

      if (v28 < 0 || (v30 = *v29, v30 < 0) || ((v31 = v28, v32 = v30, v33 = (v30 ^ v31) & 0x5F, v31 >= 0x40) ? (v34 = v33 == 0) : (v34 = 1), v34 || v32 < 0x40))
      {
        result = pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(a3, v25, v26);
        v11 = v24;
        if ((result & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v11 = v24;
        if (((v31 + 5) & 0x1Fu) >= ((v32 + 5) & 0x1Fu))
        {
          break;
        }
      }
    }

    if ((*v24 & 7) != 0)
    {
      atomic_fetch_add_explicit((*v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *v24 = v23;
  }

  return result;
}

uint64_t sub_29A1EF030(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B485722 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472A8);
}

uint64_t sub_29A1EF0BC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48C5B0 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472B8);
}

uint64_t sub_29A1EF148(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 406;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

unint64_t sub_29A1EF1CC(uint64_t a1)
{
  if (!sub_29A1EF244(a1))
  {
    return 0;
  }

  result = *a1;
  if (*a1)
  {
    v3 = (*(*result + 112))(result, *(a1 + 16));
    return 0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3);
  }

  return result;
}

uint64_t sub_29A1EF244(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 691;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfNameKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t *sub_29A1EF2C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_29A1EF368(a1);
  if (result)
  {
    v5 = (*(**a1 + 48))();
    result = (*(**a1 + 48))();
    v6 = *result;
    *a2 = a1;
    a2[1] = v5;
    a2[2] = v6;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_29A1EF368(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 755;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::_Validate() const [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Accessing an invalid map proxy");
  return 0;
}

uint64_t sub_29A1EF438@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_29A1EF368(a1);
  if (result)
  {
    result = *a1;
    if (*a1)
    {
      v5 = (*(*result + 48))(result);
      result = *a1;
      if (*a1)
      {
        result = (*(*result + 48))(result);
      }
    }

    else
    {
      v5 = 0;
    }

    *a2 = a1;
    a2[1] = v5;
    a2[2] = (result + 8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

BOOL sub_29A1EF4E8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 == *a2 && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  if (v4)
  {
    v6 = *v4;
    if (*v4)
    {
      v6 = (*(*v6 + 48))(v6);
    }

    if (*(a1 + 16) != v6 + 8)
    {
      return 0;
    }

    v5 = *a2;
  }

  if (!v5)
  {
    return 1;
  }

  v8 = *v5;
  if (*v5)
  {
    v8 = (*(*v8 + 48))(v8);
  }

  return *(a2 + 16) == v8 + 8;
}

uint64_t sub_29A1EF5C0(uint64_t *a1, uint64_t a2, char *a3)
{
  v7 = a3;
  if (!a1)
  {
    v4[0] = "sdf/mapEditProxy.h";
    v4[1] = "Dereference";
    v4[2] = 208;
    v4[3] = "static const value_type &pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy>::Traits::Dereference(const This *, const Type *, const_inner_iterator) [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::SdfPath>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfRelocatesMapProxyValuePolicy]";
    v5 = 0;
    v6 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v4, "Dereferenced an invalid map proxy iterator", a3);
  }

  return sub_29A1EF644(a1, a2, &v7);
}

uint64_t sub_29A1EF644(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a1;
  if (v6)
  {
    v6 = (*(*v6 + 48))(v6);
  }

  if (v6 == a2)
  {
    v8 = *a3;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v7 = (*(*v7 + 48))(v7);
    }

    v8 = sub_29A1EF6EC(v7);
  }

  return v8 + 28;
}

uint64_t sub_29A1EF6EC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  return a1 + 8;
}

uint64_t *sub_29A1EF770(uint64_t **a1, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v6 = sub_29A1EF804(a1, &v10);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x30uLL);
    v11 = *a4;
    sub_29A1EF88C(v7 + 7, &v11);
    sub_29A00B204(a1, v10, v8, v7);
  }

  return v7;
}

uint64_t sub_29A1EF804(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::SdfPath::operator<();
  }

  *a2 = a1 + 8;
  return a1 + 8;
}

_DWORD *sub_29A1EF88C(_DWORD *a1, _DWORD **a2)
{
  v3 = *a2;
  v4 = sub_29A1DDD84(a1, *a2);
  sub_29A1DDDC0(v4 + 1, (v3 + 4));
  *(a1 + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a1 + 3);
  return a1;
}

_DWORD *sub_29A1EF8E4(_DWORD *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 3);
  sub_29A1DE3A4(a1 + 2);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

void sub_29A1EF938(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A1EF938(a1, *a2);
    sub_29A1EF938(a1, a2[1]);
    sub_29A1EF8E4(a2 + 7);

    operator delete(a2);
  }
}

uint64_t sub_29A1EF994(void *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 48))(v2) && (!*a1 || !(*(**a1 + 32))(*a1)))
  {
    return 1;
  }

  v4[0] = "sdf/mapEditProxy.h";
  v4[1] = "_Validate";
  v4[2] = 755;
  v4[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfMapEditProxy<std::map<std::string, std::string>>::_Validate() const [T = std::map<std::string, std::string>, _ValuePolicy = pxrInternal__aapl__pxrReserved__::SdfIdentityMapEditProxyValuePolicy<std::map<std::string, std::string>>]";
  v5 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v4, 1, "Accessing an invalid map proxy");
  return 0;
}

uint64_t sub_29A1EFA64(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484517 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047328);
}

void **sub_29A1EFAF0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1EFA64(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1F00EC, &stru_2A2047328);
  }
}

uint64_t sub_29A1EFB84(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484552 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047338);
}

uint64_t sub_29A1EFC10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A203B0F8);
  }

  else
  {
    return 0;
  }
}

void **sub_29A1EFC48(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1EFC10(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1F01C8, &stru_2A203B0F8);
  }
}

uint64_t sub_29A1EFCDC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC94A8]);
}

void **sub_29A1EFD10(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1EFCDC(a1))
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
    v4 = MEMORY[0x29EDC94A8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29A1F0260, v4);
  }
}

uint64_t sub_29A1EFDA4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48444FLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472C8);
}

uint64_t sub_29A1EFE30(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B484481 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472D8);
}

uint64_t sub_29A1EFEBC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4844B3 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472E8);
}

uint64_t sub_29A1EFF48(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B4844E5 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A20472F8);
}

uint64_t sub_29A1EFFD4(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48A38ALL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047308);
}

uint64_t sub_29A1F0060(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B48A348 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2047318);
}

uint64_t sub_29A1F00F0@<X0>(void *a1@<X8>)
{
  sub_29A1F0144(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  v4[0] = 0;
  a1[2] = &unk_2A2047328;
  return v2(0);
}

uint64_t sub_29A1F0144@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x10uLL);
  result = pxrInternal__aapl__pxrReserved__::SdfUnregisteredValue::SdfUnregisteredValue(v2);
  *a1 = v2;
  a1[1] = sub_29A1F0198;
  return result;
}

void sub_29A1F0198(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_29A186B14(a1);

    operator delete(v1);
  }
}

void *sub_29A1F01C8@<X0>(void *a1@<X8>)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  *a1 = result;
  a1[1] = sub_29A1F0214;
  a1[2] = &stru_2A203B0F8;
  return result;
}

void sub_29A1F0214(void **__p)
{
  if (__p)
  {
    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
    }

    operator delete(__p);
  }
}

_BYTE *sub_29A1F0260@<X0>(void *a1@<X8>)
{
  result = operator new(1uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94A8];
  a1[1] = sub_29A1F02A8;
  a1[2] = v3;
  return result;
}

void sub_29A1F02A8(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t sub_29A1F0334@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    (*(*result + 112))(result, *(a1 + 4));
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_29A1F03C4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Children<pxrInternal__aapl__pxrReserved__::Sdf_PropertyChildPolicy>::GetSize();
}

void sub_29A1F043C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29A1F19E8(va);
  _Unwind_Resume(a1);
}

void sub_29A1F0454(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  if (a2 != a3)
  {
    sub_29A1F0500();
  }

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a4;
  a6[3] = a5;
}

void sub_29A1F04EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_29A1F054C(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = ((v6 - *a1) >> 3) + 1;
    if (v9 >> 61)
    {
      sub_29A00C9A4();
    }

    v10 = a2 - v8;
    v11 = v7 - v8;
    v12 = v11 >> 2;
    if (v11 >> 2 <= v9)
    {
      v12 = ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v13 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 >> 3;
    v22 = a1;
    if (v13)
    {
      v15 = sub_29A00C9BC(a1, v13);
    }

    else
    {
      v15 = 0;
    }

    v18 = v15;
    v19 = &v15[8 * v14];
    v20 = v19;
    v21 = &v15[8 * v13];
    sub_29A1F0724(&v18, a3);
    v4 = sub_29A1F0890(a1, &v18, v4);
    sub_29A1F09B4(&v18);
  }

  else if (a2 == v6)
  {
    v16 = *a3;
    *v6 = *a3;
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }

    *(a1 + 8) = v6 + 1;
  }

  else
  {
    sub_29A1F0684(a1, a2, v6, (a2 + 8));
    pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v4, a3);
  }

  return v4;
}

void sub_29A1F0670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1F09B4(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_29A1F0684(atomic_uint **result, uint64_t a2, unint64_t a3, atomic_uint *a4)
{
  v4 = result[1];
  v5 = (a2 + v4 - a4);
  if (v5 >= a3)
  {
    v6 = result[1];
  }

  else
  {
    v6 = result[1];
    do
    {
      v7 = *v5;
      *v6 = *v5;
      if (v7)
      {
        atomic_fetch_add(v7, 1u);
      }

      ++v5;
      v6 += 2;
    }

    while (v5 < a3);
  }

  result[1] = v6;
  if (v4 != a4)
  {
    v8 = (v4 - 2);
    v9 = a4 - v4;
    v10 = (a2 + (v4 - 2) - a4);
    do
    {
      result = pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v8--, v10--);
      v9 += 8;
    }

    while (v9);
  }

  return result;
}

void *sub_29A1F0724(void *result, atomic_uint **a2)
{
  v3 = result;
  v4 = result[2];
  v5 = v4;
  if (v4 == result[3])
  {
    v6 = result[1];
    v7 = v6 - *result;
    if (v6 <= *result)
    {
      if (v4 == *result)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v4 - *result) >> 2;
      }

      v10 = result[4];
      v25 = v3[4];
      v11 = sub_29A00C9BC(v10, v9);
      v12 = &v11[8 * (v9 >> 2)];
      v22 = v11;
      *&v23 = v12;
      v14 = &v11[8 * v13];
      *(&v23 + 1) = v12;
      v24 = v14;
      v15 = *(v3 + 1);
      v16 = v15;
      v17 = *(&v15 + 1) - v15;
      if (*(&v15 + 1) == v15)
      {
        v18 = &v11[8 * (v9 >> 2)];
      }

      else
      {
        v18 = v12 + v17;
        do
        {
          v19 = *v16;
          *v12 = *v16;
          if (v19)
          {
            atomic_fetch_add(v19, 1u);
          }

          ++v12;
          ++v16;
          v17 -= 8;
        }

        while (v17);
        v11 = v22;
        v12 = v23;
        v15 = *(v3 + 1);
        v14 = v24;
      }

      v22 = *v3;
      *v3 = v11;
      v3[1] = v12;
      v23 = v15;
      v20 = v3[3];
      v3[2] = v18;
      v3[3] = v14;
      v24 = v20;
      result = sub_29A1F09B4(&v22);
      v5 = v3[2];
    }

    else
    {
      v8 = ((v7 >> 3) + 1) / -2;
      v5 = &v6[-(((v7 >> 3) + 1) / 2)];
      if (v6 != v4)
      {
        do
        {
          result = pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v5++, v6++);
        }

        while (v6 != v4);
        v6 = v3[1];
      }

      v3[1] = &v6[v8];
      v3[2] = v5;
    }
  }

  v21 = *a2;
  *v5 = *a2;
  if (v21)
  {
    atomic_fetch_add(v21, 1u);
    v5 = v3[2];
  }

  v3[2] = v5 + 1;
  return result;
}

uint64_t sub_29A1F0890(uint64_t a1, void *a2, atomic_uint **this)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != this)
  {
    v8 = a2[2];
    v9 = this;
    do
    {
      v10 = *v9;
      *v8 = *v9;
      if (v10)
      {
        atomic_fetch_add(v10, 1u);
      }

      ++v9;
      ++v8;
    }

    while (v9 != v7);
    v11 = this;
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v11);
      v11 = (v12 + 8);
    }

    while (v11 != v7);
  }

  v13 = *a1;
  v14 = a2[1];
  a2[2] += *(a1 + 8) - this;
  *(a1 + 8) = this;
  v15 = v14 + v13 - this;
  if (v13 != this)
  {
    v16 = v13;
    v17 = (v14 + v13 - this);
    do
    {
      v18 = *v16;
      *v17 = *v16;
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
      }

      v16 = (v16 + 8);
      ++v17;
    }

    while (v16 != this);
    do
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(v13);
      v13 = (v19 + 8);
    }

    while (v13 != this);
  }

  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  *(a1 + 8) = v20;
  a2[1] = v20;
  v21 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v21;
  v22 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_29A1F09B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A1F0A04(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v75 = a2;
  v76 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v75 = v6 - 1;
      if (sub_29A1F12C0(v6 - 1, v7))
      {
        v37 = &v76;
        v38 = &v75;
LABEL_64:
        sub_29A1F1420(v37, v38);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v39 = (v7 + 1);
      v41 = v7 == v6 || v39 == v6;
      if (a4)
      {
        if (!v41)
        {
          v42 = 0;
          v43 = v7;
          do
          {
            v44 = v43;
            v43 = v39;
            if (sub_29A1F12C0(v39, v44))
            {
              v45 = *v43;
              v80 = v45;
              if (v45)
              {
                atomic_fetch_add(v45, 1u);
              }

              v46 = v42;
              while (1)
              {
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=((v7 + v46 + 8), (v7 + v46));
                if (!v46)
                {
                  break;
                }

                v47 = sub_29A1F12C0(&v80, (v7 + v46 - 8));
                v46 -= 8;
                if ((v47 & 1) == 0)
                {
                  v48 = (v7 + v46 + 8);
                  goto LABEL_88;
                }
              }

              v48 = v7;
LABEL_88:
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v48, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }

            v39 = (v43 + 1);
            v42 += 8;
          }

          while (v43 + 1 != v6);
        }
      }

      else if (!v41)
      {
        do
        {
          v73 = v39;
          if (sub_29A1F12C0(v39, v7))
          {
            v74 = *v73;
            v80 = v74;
            if (v74)
            {
              atomic_fetch_add(v74, 1u);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
              --v7;
            }

            while ((sub_29A1F12C0(&v80, v7) & 1) != 0);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, &v80);
            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
          }

          v39 = (v73 + 1);
          v7 = v73;
        }

        while (v73 + 1 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v49 = v9 >> 1;
        v50 = v9 >> 1;
        do
        {
          v51 = v50;
          if (v49 >= v50)
          {
            v52 = (2 * v50) | 1;
            v53 = &v7[v52];
            if (2 * v50 + 2 < v8 && sub_29A1F12C0(&v7[v52], v53 + 1))
            {
              ++v53;
              v52 = 2 * v51 + 2;
            }

            v54 = &v7[v51];
            if ((sub_29A1F12C0(v53, v54) & 1) == 0)
            {
              v55 = *v54;
              v80 = v55;
              if (v55)
              {
                atomic_fetch_add(v55, 1u);
              }

              do
              {
                v56 = v53;
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v54, v53);
                if (v49 < v52)
                {
                  break;
                }

                v57 = (2 * v52) | 1;
                v53 = &v7[v57];
                v52 = 2 * v52 + 2;
                if (v52 >= v8)
                {
                  v52 = v57;
                }

                else if (sub_29A1F12C0(&v7[v57], v53 + 1))
                {
                  ++v53;
                }

                else
                {
                  v52 = v57;
                }

                v54 = v56;
              }

              while (!sub_29A1F12C0(v53, &v80));
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v56, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }
          }

          v50 = v51 - 1;
        }

        while (v51);
        do
        {
          v58 = *v7;
          v79 = v58;
          if (v58)
          {
            atomic_fetch_add(v58, 1u);
          }

          v59 = 0;
          v60 = v7;
          do
          {
            v61 = &v60[v59];
            v62 = v61 + 1;
            v63 = 2 * v59;
            v59 = (2 * v59) | 1;
            v64 = v63 + 2;
            if (v63 + 2 < v8)
            {
              v65 = v61 + 2;
              if (sub_29A1F12C0(v61 + 1, v61 + 2))
              {
                v62 = v65;
                v59 = v64;
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v60, v62);
            v60 = v62;
          }

          while (v59 <= ((v8 - 2) >> 1));
          if (v62 == --v6)
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, &v79);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v6);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v6, &v79);
            v66 = (v62 - v7 + 8) >> 3;
            v67 = v66 < 2;
            v68 = v66 - 2;
            if (!v67)
            {
              v69 = v68 >> 1;
              v70 = &v7[v68 >> 1];
              if (sub_29A1F12C0(v70, v62))
              {
                v71 = *v62;
                v80 = v71;
                if (v71)
                {
                  atomic_fetch_add(v71, 1u);
                }

                do
                {
                  v72 = v70;
                  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v70);
                  if (!v69)
                  {
                    break;
                  }

                  v69 = (v69 - 1) >> 1;
                  v70 = &v7[v69];
                  v62 = v72;
                }

                while ((sub_29A1F12C0(v70, &v80) & 1) != 0);
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v72, &v80);
                pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v79);
          v67 = v8-- <= 2;
        }

        while (!v67);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 - 1;
    if (v8 < 0x81)
    {
      sub_29A1F1490(&v7[v8 >> 1], v7, v11);
    }

    else
    {
      sub_29A1F1490(v7, &v7[v8 >> 1], v11);
      v12 = 8 * v10 - 8;
      sub_29A1F1490(v76 + 1, (v76 + v12), v75 - 2);
      v13 = 8 * v10 + 8;
      sub_29A1F1490(v76 + 2, (v76 + v13), v75 - 3);
      sub_29A1F1490((v76 + v12), &v76[v10], (v76 + v13));
      v80 = &v76[v10];
      sub_29A1F166C(&v76, &v80);
    }

    --a3;
    if (a4)
    {
      v14 = v75;
    }

    else
    {
      v15 = sub_29A1F12C0(v76 - 1, v76);
      v14 = v75;
      if ((v15 & 1) == 0)
      {
        v27 = v76;
        v79 = v75;
        v80 = v76;
        v28 = *v76;
        v78 = v28;
        if (v28)
        {
          atomic_fetch_add(v28, 1u);
          v14 = v79;
        }

        v29 = sub_29A1F12C0(&v78, v14 - 1);
        v30 = v80 + 1;
        if (v29)
        {
          do
          {
            v80 = v30;
            v31 = sub_29A1F12C0(&v78, v30++);
          }

          while ((v31 & 1) == 0);
        }

        else
        {
          do
          {
            v80 = v30;
            if (v30 >= v79)
            {
              break;
            }

            v32 = sub_29A1F12C0(&v78, v30++);
          }

          while (!v32);
        }

        v34 = v79;
        v33 = v80;
        if (v80 < v79)
        {
          do
          {
            v79 = --v34;
          }

          while ((sub_29A1F12C0(&v78, v34) & 1) != 0);
          v33 = v80;
        }

        if (v33 < v34)
        {
          do
          {
            sub_29A1F1420(&v80, &v79);
            do
            {
              ++v80;
            }

            while (!sub_29A1F12C0(&v78, v80));
            do
            {
              --v79;
            }

            while ((sub_29A1F12C0(&v78, v79) & 1) != 0);
            v33 = v80;
          }

          while (v80 < v79);
        }

        v35 = v33 - 1;
        if (v33 - 1 != v27)
        {
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v27, v33 - 1);
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v35, &v78);
        v7 = v80;
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
        goto LABEL_57;
      }
    }

    v16 = v76;
    v79 = v14;
    v80 = v76;
    v17 = *v76;
    v78 = v17;
    v18 = v76;
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      v18 = v80;
    }

    v19 = v18 + 1;
    do
    {
      v80 = v19;
      v20 = sub_29A1F12C0(v19++, &v78);
    }

    while ((v20 & 1) != 0);
    v21 = v79;
    v22 = v80;
    if (v80 - 1 == v16)
    {
      do
      {
        if (v22 >= v21)
        {
          break;
        }

        v79 = --v21;
      }

      while ((sub_29A1F12C0(v21, &v78) & 1) == 0);
    }

    else
    {
      v23 = v79 - 1;
      do
      {
        v79 = v23;
        v24 = sub_29A1F12C0(v23--, &v78);
      }

      while (!v24);
      v22 = v80;
    }

    v25 = v79;
    v7 = v22;
    if (v22 < v79)
    {
      do
      {
        sub_29A1F1420(&v80, &v79);
        do
        {
          ++v80;
        }

        while ((sub_29A1F12C0(v80, &v78) & 1) != 0);
        do
        {
          --v79;
        }

        while (!sub_29A1F12C0(v79, &v78));
        v7 = v80;
      }

      while (v80 < v79);
    }

    if (v7 - 1 != v16)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v16, v7 - 1);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 - 1, &v78);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
    if (v22 < v25)
    {
      goto LABEL_35;
    }

    v26 = sub_29A1F16DC(v76, v7 - 1);
    if (!sub_29A1F16DC(v7, v75))
    {
      if (v26)
      {
        goto LABEL_58;
      }

LABEL_35:
      sub_29A1F0A04(v76, v7 - 1, a3, a4 & 1);
LABEL_57:
      a4 = 0;
LABEL_58:
      v76 = v7;
      goto LABEL_59;
    }

    if (v26)
    {
      return;
    }

    v75 = v7 - 1;
    v7 = v76;
LABEL_59:
    v6 = v75;
  }

  if (v8 == 3)
  {
    v75 = v6 - 1;
    sub_29A1F1490(v7, v7 + 1, v6 - 1);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      v75 = v6 - 1;
      sub_29A1F1544(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1);
      return;
    }

    goto LABEL_9;
  }

  v75 = v6 - 1;
  v79 = v7 + 1;
  v80 = v7;
  v77 = v6 - 1;
  v78 = v7 + 2;
  sub_29A1F1490(v7, v7 + 1, v7 + 2);
  if (sub_29A1F12C0(v6 - 1, v7 + 2))
  {
    sub_29A1F1420(&v78, &v77);
    if (sub_29A1F12C0(v78, v7 + 1))
    {
      sub_29A1F1420(&v79, &v78);
      if (sub_29A1F12C0(v79, v7))
      {
        v37 = &v80;
        v38 = &v79;
        goto LABEL_64;
      }
    }
  }
}

void sub_29A1F1230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F12C0(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v4 = sub_29A1F190C(a1);
  Name = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(v4);
  v6 = sub_29A1F190C(a2);
  v7 = pxrInternal__aapl__pxrReserved__::SdfPropertySpec::GetName(v6);
  v8 = v7;
  v9 = *(Name + 23);
  if (v9 >= 0)
  {
    v10 = *(Name + 23);
  }

  else
  {
    v10 = Name[1];
  }

  v11 = *(v7 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v7[1];
  }

  if (v10 == v11)
  {
    v13 = v9 >= 0 ? Name : *Name;
    v14 = v12 >= 0 ? v8 : *v8;
    if (!memcmp(v13, v14, v10))
    {
      v15 = sub_29A1F190C(a1);
      SpecType = pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v15);
      v17 = sub_29A1F190C(a2);
      if (SpecType < pxrInternal__aapl__pxrReserved__::SdfSpec::GetSpecType(v17))
      {
        return 1;
      }

      LOBYTE(v9) = *(Name + 23);
      LOBYTE(v12) = *(v8 + 23);
    }
  }

  if ((v9 & 0x80u) == 0)
  {
    v19 = Name;
  }

  else
  {
    v19 = *Name;
  }

  v20 = *v19;
  if ((v12 & 0x80u) == 0)
  {
    v21 = v8;
  }

  else
  {
    v21 = *v8;
  }

  if (v20 < 0)
  {
    return pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(&v27, Name, v8);
  }

  v22 = *v21;
  if (v22 < 0)
  {
    return pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(&v27, Name, v8);
  }

  v23 = v20;
  v24 = v22;
  v25 = (v22 ^ v23) & 0x5F;
  v26 = v23 < 0x40 || v25 == 0;
  if (v26 || v24 < 0x40)
  {
    return pxrInternal__aapl__pxrReserved__::TfDictionaryLessThan::_LessImpl(&v27, Name, v8);
  }

  else
  {
    return ((v23 + 5) & 0x1Fu) < ((v24 + 5) & 0x1Fu);
  }
}

void sub_29A1F1420(atomic_uint ***a1, atomic_uint ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v3, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A1F147C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A1F1490(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_29A1F12C0(a2, a1);
  v6 = sub_29A1F12C0(a3, a2);
  if (v5)
  {
    if (v6)
    {
      v7 = &v11;
    }

    else
    {
      sub_29A1F1420(&v11, &v10);
      if (!sub_29A1F12C0(v9, v10))
      {
        return;
      }

      v7 = &v10;
    }

    v8 = &v9;
    goto LABEL_10;
  }

  if (v6)
  {
    sub_29A1F1420(&v10, &v9);
    if (sub_29A1F12C0(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29A1F1420(v7, v8);
    }
  }
}

void sub_29A1F1544(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v15 = a4;
  sub_29A1F1490(a1, a2, a3);
  if (sub_29A1F12C0(a4, a3))
  {
    sub_29A1F1420(&v16, &v15);
    if (sub_29A1F12C0(v16, a2))
    {
      sub_29A1F1420(&v17, &v16);
      if (sub_29A1F12C0(v17, a1))
      {
        sub_29A1F1420(&v18, &v17);
      }
    }
  }

  if (sub_29A1F12C0(a5, a4))
  {
    sub_29A1F1420(&v11, &v10);
    if (sub_29A1F12C0(v11, a3))
    {
      sub_29A1F1420(&v12, &v11);
      if (sub_29A1F12C0(v12, a2))
      {
        sub_29A1F1420(&v13, &v12);
        if (sub_29A1F12C0(v13, a1))
        {
          sub_29A1F1420(&v14, &v13);
        }
      }
    }
  }
}

void sub_29A1F166C(atomic_uint ***a1, atomic_uint ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v3, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A1F16C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F16DC(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A1F1490(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v19 = a1 + 1;
        v20 = a1;
        v13 = a2 - 1;
        v17 = (a2 - 1);
        v18 = a1 + 2;
        sub_29A1F1490(a1, a1 + 1, a1 + 2);
        if (!sub_29A1F12C0(v13, a1 + 2))
        {
          return 1;
        }

        sub_29A1F1420(&v18, &v17);
        if (!sub_29A1F12C0(v18, a1 + 1))
        {
          return 1;
        }

        sub_29A1F1420(&v19, &v18);
        if (!sub_29A1F12C0(v19, a1))
        {
          return 1;
        }

        v5 = &v20;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        sub_29A1F1544(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v15 = a2 - 1;
      if (sub_29A1F12C0(a2 - 1, a1))
      {
        v5 = &v16;
        v6 = &v15;
LABEL_6:
        sub_29A1F1420(v5, v6);
      }

      return 1;
    }
  }

  v7 = a1 + 2;
  sub_29A1F1490(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  v9 = 1;
  if (v8 != a2)
  {
    v10 = 0;
    while (1)
    {
      if (sub_29A1F12C0(v8, v7))
      {
        v11 = *v8;
        v20 = v11;
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
        }

        do
        {
          v12 = v7;
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
          if (v7 == v16)
          {
            break;
          }

          --v7;
        }

        while ((sub_29A1F12C0(&v20, v12 - 1) & 1) != 0);
        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v12, &v20);
        if (++v10 == 8)
        {
          v9 = v8 + 1 == v15;
          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
          return v9;
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
      }

      v7 = v8++;
      if (v8 == v15)
      {
        return 1;
      }
    }
  }

  return v9;
}

void sub_29A1F18F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A1F190C(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfPropertySpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48459DLL & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A1F19B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A1F192CLL);
}

void sub_29A1F19CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1F19E8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec((v4 - 8));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_29A1F1A6C(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B293F14(a1);
  return a1;
}

uint64_t sub_29A1F1AD4(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B293F14(a1);
  return a1;
}

uint64_t sub_29A1F1B88(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return sub_29A1F1D04(a1);
}

void sub_29A1F1CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F1D04(uint64_t a1)
{
  v4 = (a1 + 40);
  sub_29A124AB0(&v4);
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29B293F14(a1);
  return a1;
}

uint64_t sub_29A1F1D6C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B481625 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A2045250);
}

pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType *sub_29A1F1DF8(pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init *a1)
{
  result = pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init::New(a1);
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::~Sdf_ValueTypeNamesType(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

uint64_t *sub_29A1F1E40(uint64_t *a1, uint64_t *a2, void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      while (sub_29A1F1EE4(a3, v5))
      {
        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }
      }

      while (!sub_29A1F1EE4(a3, v3));
      v6 = *v5;
      *v5++ = *v3;
      *v3 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

BOOL sub_29A1F1EE4(void **a1, void *a2)
{
  if (sub_29A1EC328(a1, a2))
  {
    return 1;
  }

  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  if (!v4)
  {
    v4 = sub_29A1DF3A0(&pxrInternal__aapl__pxrReserved__::SdfFieldKeys);
  }

  return (*(v4 + 16) ^ *a2) < 8uLL;
}

void sub_29A1F1F48(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19[3] = *MEMORY[0x29EDCA608];
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (*(a5 + 23) >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (*(a6 + 23) >= 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = *a6;
  }

  if (*(a7 + 23) >= 0)
  {
    v13 = a7;
  }

  else
  {
    v13 = *a7;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a1, a2, "%s%s%s %s.connect = ", v10, v11, v12, v13);
  if (sub_29A1F22B0(a3))
  {
    if (sub_29A1F22B0(a3) == 1)
    {
      sub_29A1F2468(a3, 0, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a1, 0, __p);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(__p + 1);
      sub_29A1DE3A4(__p);
      sub_29A008E78(__p, "\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
    }

    else
    {
      sub_29A008E78(__p, "[\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      v19[1] = 0;
      v19[2] = 0;
      if (sub_29A1F23E4(a3))
      {
        v14 = a3;
      }

      else
      {
        v14 = 0;
      }

      __p[1] = v14;
      v18 = 0;
      sub_29A1F2570(a3, v19);
      while (!sub_29A1F25F4(__p, v19))
      {
        sub_29A1F231C(__p, v15);
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a1, a2 + 1, v15);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(v15 + 1);
        sub_29A1DE3A4(v15);
        sub_29A008E78(v15, ",\n");
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, v15);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        sub_29A1F2360(__p);
      }

      sub_29A008E78(__p, "]\n");
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, a2, __p);
    }
  }

  else
  {
    sub_29A008E78(__p, "None\n");
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Puts(a1, 0, __p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A1F21B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1F222C(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listEditorProxy.h";
  v2[1] = "_Validate";
  v2[2] = 406;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListEditorProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

uint64_t sub_29A1F22B0(uint64_t a1)
{
  if (!sub_29A1F23E4(a1))
  {
    return 0;
  }

  result = *a1;
  if (*a1)
  {
    v3 = (*(*result + 112))(result, *(a1 + 16));
    return (v3[1] - *v3) >> 3;
  }

  return result;
}

_DWORD *sub_29A1F231C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (sub_29A1F25F4(a1, a1 + 24))
  {
    sub_29B293F70();
  }

  return sub_29A1F2468(*(a1 + 8), *(a1 + 16), a2);
}

uint64_t sub_29A1F2360(uint64_t a1)
{
  if (sub_29A1F25F4(a1, a1 + 24))
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>>::operator++() [T = const pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>, Reverse = false]";
    v4 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "iterator exhausted");
  }

  else
  {
    ++*(a1 + 16);
  }

  return a1;
}

uint64_t sub_29A1F23E4(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant((*a1 + 8)))
  {
    return 1;
  }

  v2[0] = "sdf/listProxy.h";
  v2[1] = "_Validate";
  v2[2] = 691;
  v2[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Validate() const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy]";
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v2, 1, "Accessing expired list editor");
  return 0;
}

_DWORD *sub_29A1F2468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (sub_29A1F23E4(a1))
  {
    v6 = *a1;

    return sub_29A1F24FC(v6, a2, a3);
  }

  else
  {
    *a3 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);

    return pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  }
}

_DWORD *sub_29A1F24FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  v4 = (*(*(*a1 + 112))(a1) + 8 * a2);
  sub_29A1E21F4(a3, v4);

  return sub_29A1E2240(a3 + 1, v4 + 1);
}

void *sub_29A1F2570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29A1F23E4(a1);
  result = *a1;
  if (*a1)
  {
    result = (*(*result + 112))(result, *(a1 + 16));
    v6 = (result[1] - *result) >> 3;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 8) = v7;
  *(a2 + 16) = v6;
  return result;
}

BOOL sub_29A1F25F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) == *(a2 + 16);
  }

  v7 = v2;
  v8 = v3;
  v5[0] = "sdf/listProxy.h";
  v5[1] = "equal";
  v5[2] = 255;
  v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_Iterator<const pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy> *, pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_ConstGetHelper>::equal(const This &) const [_TypePolicy = pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy, Owner = const pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy> *, GetItem = pxrInternal__aapl__pxrReserved__::SdfListProxy<pxrInternal__aapl__pxrReserved__::SdfPathKeyPolicy>::_ConstGetHelper]";
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Comparing SdfListProxy iterators from different proxies!");
  return 0;
}

void sub_29A1F2678(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  if (sub_29A1F22B0(a1) < 2)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, " = ");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, " = [\n");
    ++a3;
  }

  if (sub_29A1F22B0(a1))
  {
    v8 = 0;
    do
    {
      if (sub_29A1F22B0(a1) >= 2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3, "");
      }

      sub_29A1F2468(a1, v8, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteSdfPath(a2, 0, &v9);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v10);
      sub_29A1DE3A4(&v9);
      if (sub_29A1F22B0(a1) >= 2)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, ",\n");
      }

      ++v8;
    }

    while (v8 < sub_29A1F22B0(a1));
  }

  if (sub_29A1F22B0(a1) > 1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, a3 - 1, "]");
  }

  if ((a4 & 2) == 0)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::Write(a2, 0, "\n");
  }
}

void sub_29A1F27E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A1DCEA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A1F27FC(uint64_t *a1, uint64_t *a2, void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = a1;
    v3 = a2;
    while (2)
    {
      while ((sub_29A1EC328(a3, v5) & 1) != 0)
      {
        if (++v5 == v3)
        {
          return v3;
        }
      }

      do
      {
        if (--v3 == v5)
        {
          return v5;
        }
      }

      while (!sub_29A1EC328(a3, v3));
      v6 = *v5;
      *v5++ = *v3;
      *v3 = v6;
      if (v3 != v5)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

uint64_t sub_29A1F28A0(uint64_t a1)
{
  if ((*(*a1 + 16))(a1))
  {
    return 1;
  }

  v3 = (*(*a1 + 24))(a1);
  v4 = *(*a1 + 112);
  if (v3)
  {
    v5 = v4(a1, 3);
    return *v5 != v5[1];
  }

  v2 = 1;
  v6 = v4(a1, 1);
  if (*v6 == v6[1])
  {
    v7 = (*(*a1 + 112))(a1, 4);
    if (*v7 == v7[1])
    {
      v8 = (*(*a1 + 112))(a1, 5);
      if (*v8 == v8[1])
      {
        v9 = (*(*a1 + 112))(a1, 2);
        if (*v9 == v9[1])
        {
          v5 = (*(*a1 + 112))(a1, 3);
          return *v5 != v5[1];
        }
      }
    }
  }

  return v2;
}

void sub_29A1F2A44(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1;
  v75 = a2;
  v76 = a1;
  while (1)
  {
    v8 = v6 - v7;
    v9 = v8 - 2;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      return;
    }

    if (v8 == 2)
    {
      v75 = v6 - 1;
      if (sub_29A1F3300(v6 - 1, v7))
      {
        v37 = &v76;
        v38 = &v75;
LABEL_64:
        sub_29A1F33EC(v37, v38);
        return;
      }

      return;
    }

LABEL_9:
    if (v8 <= 23)
    {
      v39 = (v7 + 1);
      v41 = v7 == v6 || v39 == v6;
      if (a4)
      {
        if (!v41)
        {
          v42 = 0;
          v43 = v7;
          do
          {
            v44 = v43;
            v43 = v39;
            if (sub_29A1F3300(v39, v44))
            {
              v45 = *v43;
              v80 = v45;
              if (v45)
              {
                atomic_fetch_add(v45, 1u);
              }

              v46 = v42;
              while (1)
              {
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=((v7 + v46 + 8), (v7 + v46));
                if (!v46)
                {
                  break;
                }

                v47 = sub_29A1F3300(&v80, (v7 + v46 - 8));
                v46 -= 8;
                if (!v47)
                {
                  v48 = (v7 + v46 + 8);
                  goto LABEL_88;
                }
              }

              v48 = v7;
LABEL_88:
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v48, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }

            v39 = (v43 + 1);
            v42 += 8;
          }

          while (v43 + 1 != v6);
        }
      }

      else if (!v41)
      {
        do
        {
          v73 = v39;
          if (sub_29A1F3300(v39, v7))
          {
            v74 = *v73;
            v80 = v74;
            if (v74)
            {
              atomic_fetch_add(v74, 1u);
            }

            do
            {
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
              --v7;
            }

            while (sub_29A1F3300(&v80, v7));
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, &v80);
            pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
          }

          v39 = (v73 + 1);
          v7 = v73;
        }

        while (v73 + 1 != v6);
      }

      return;
    }

    if (!a3)
    {
      if (v7 != v6)
      {
        v49 = v9 >> 1;
        v50 = v9 >> 1;
        do
        {
          v51 = v50;
          if (v49 >= v50)
          {
            v52 = (2 * v50) | 1;
            v53 = &v7[v52];
            if (2 * v50 + 2 < v8 && sub_29A1F3300(&v7[v52], v53 + 1))
            {
              ++v53;
              v52 = 2 * v51 + 2;
            }

            v54 = &v7[v51];
            if (!sub_29A1F3300(v53, v54))
            {
              v55 = *v54;
              v80 = v55;
              if (v55)
              {
                atomic_fetch_add(v55, 1u);
              }

              do
              {
                v56 = v53;
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v54, v53);
                if (v49 < v52)
                {
                  break;
                }

                v57 = (2 * v52) | 1;
                v53 = &v7[v57];
                v52 = 2 * v52 + 2;
                if (v52 >= v8)
                {
                  v52 = v57;
                }

                else if (sub_29A1F3300(&v7[v57], v53 + 1))
                {
                  ++v53;
                }

                else
                {
                  v52 = v57;
                }

                v54 = v56;
              }

              while (!sub_29A1F3300(v53, &v80));
              pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v56, &v80);
              pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
            }
          }

          v50 = v51 - 1;
        }

        while (v51);
        do
        {
          v58 = *v7;
          v79 = v58;
          if (v58)
          {
            atomic_fetch_add(v58, 1u);
          }

          v59 = 0;
          v60 = v7;
          do
          {
            v61 = &v60[v59];
            v62 = v61 + 1;
            v63 = 2 * v59;
            v59 = (2 * v59) | 1;
            v64 = v63 + 2;
            if (v63 + 2 < v8)
            {
              v65 = v61 + 2;
              if (sub_29A1F3300(v61 + 1, v61 + 2))
              {
                v62 = v65;
                v59 = v64;
              }
            }

            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v60, v62);
            v60 = v62;
          }

          while (v59 <= ((v8 - 2) >> 1));
          if (v62 == --v6)
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, &v79);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v6);
            pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v6, &v79);
            v66 = (v62 - v7 + 8) >> 3;
            v67 = v66 < 2;
            v68 = v66 - 2;
            if (!v67)
            {
              v69 = v68 >> 1;
              v70 = &v7[v68 >> 1];
              if (sub_29A1F3300(v70, v62))
              {
                v71 = *v62;
                v80 = v71;
                if (v71)
                {
                  atomic_fetch_add(v71, 1u);
                }

                do
                {
                  v72 = v70;
                  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v62, v70);
                  if (!v69)
                  {
                    break;
                  }

                  v69 = (v69 - 1) >> 1;
                  v70 = &v7[v69];
                  v62 = v72;
                }

                while (sub_29A1F3300(v70, &v80));
                pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v72, &v80);
                pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v80);
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v79);
          v67 = v8-- <= 2;
        }

        while (!v67);
      }

      return;
    }

    v10 = v8 >> 1;
    v11 = v6 - 1;
    if (v8 < 0x81)
    {
      sub_29A1F345C(&v7[v8 >> 1], v7, v11);
    }

    else
    {
      sub_29A1F345C(v7, &v7[v8 >> 1], v11);
      v12 = 8 * v10 - 8;
      sub_29A1F345C(v76 + 1, (v76 + v12), v75 - 2);
      v13 = 8 * v10 + 8;
      sub_29A1F345C(v76 + 2, (v76 + v13), v75 - 3);
      sub_29A1F345C((v76 + v12), &v76[v10], (v76 + v13));
      v80 = &v76[v10];
      sub_29A1F3638(&v76, &v80);
    }

    --a3;
    if (a4)
    {
      v14 = v75;
    }

    else
    {
      v15 = sub_29A1F3300(v76 - 1, v76);
      v14 = v75;
      if (!v15)
      {
        v27 = v76;
        v79 = v75;
        v80 = v76;
        v28 = *v76;
        v78 = v28;
        if (v28)
        {
          atomic_fetch_add(v28, 1u);
          v14 = v79;
        }

        v29 = sub_29A1F3300(&v78, v14 - 1);
        v30 = v80 + 1;
        if (v29)
        {
          do
          {
            v80 = v30;
          }

          while (!sub_29A1F3300(&v78, v30++));
        }

        else
        {
          do
          {
            v80 = v30;
            if (v30 >= v79)
            {
              break;
            }
          }

          while (!sub_29A1F3300(&v78, v30++));
        }

        v34 = v79;
        v33 = v80;
        if (v80 < v79)
        {
          do
          {
            v79 = --v34;
          }

          while (sub_29A1F3300(&v78, v34));
          v33 = v80;
        }

        if (v33 < v34)
        {
          do
          {
            sub_29A1F33EC(&v80, &v79);
            do
            {
              ++v80;
            }

            while (!sub_29A1F3300(&v78, v80));
            do
            {
              --v79;
            }

            while (sub_29A1F3300(&v78, v79));
            v33 = v80;
          }

          while (v80 < v79);
        }

        v35 = v33 - 1;
        if (v33 - 1 != v27)
        {
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v27, v33 - 1);
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v35, &v78);
        v7 = v80;
        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
        goto LABEL_57;
      }
    }

    v16 = v76;
    v79 = v14;
    v80 = v76;
    v17 = *v76;
    v78 = v17;
    v18 = v76;
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      v18 = v80;
    }

    v19 = v18 + 1;
    do
    {
      v80 = v19;
    }

    while (sub_29A1F3300(v19++, &v78));
    v21 = v79;
    v22 = v80;
    if (v80 - 1 == v16)
    {
      do
      {
        if (v22 >= v21)
        {
          break;
        }

        v79 = --v21;
      }

      while (!sub_29A1F3300(v21, &v78));
    }

    else
    {
      v23 = v79 - 1;
      do
      {
        v79 = v23;
      }

      while (!sub_29A1F3300(v23--, &v78));
      v22 = v80;
    }

    v25 = v79;
    v7 = v22;
    if (v22 < v79)
    {
      do
      {
        sub_29A1F33EC(&v80, &v79);
        do
        {
          ++v80;
        }

        while (sub_29A1F3300(v80, &v78));
        do
        {
          --v79;
        }

        while (!sub_29A1F3300(v79, &v78));
        v7 = v80;
      }

      while (v80 < v79);
    }

    if (v7 - 1 != v16)
    {
      pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v16, v7 - 1);
    }

    pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 - 1, &v78);
    pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v78);
    if (v22 < v25)
    {
      goto LABEL_35;
    }

    v26 = sub_29A1F36A8(v76, v7 - 1);
    if (!sub_29A1F36A8(v7, v75))
    {
      if (v26)
      {
        goto LABEL_58;
      }

LABEL_35:
      sub_29A1F2A44(v76, v7 - 1, a3, a4 & 1);
LABEL_57:
      a4 = 0;
LABEL_58:
      v76 = v7;
      goto LABEL_59;
    }

    if (v26)
    {
      return;
    }

    v75 = v7 - 1;
    v7 = v76;
LABEL_59:
    v6 = v75;
  }

  if (v8 == 3)
  {
    v75 = v6 - 1;
    sub_29A1F345C(v7, v7 + 1, v6 - 1);
    return;
  }

  if (v8 != 4)
  {
    if (v8 == 5)
    {
      v75 = v6 - 1;
      sub_29A1F3510(v7, v7 + 1, v7 + 2, v7 + 3, v6 - 1);
      return;
    }

    goto LABEL_9;
  }

  v75 = v6 - 1;
  v79 = v7 + 1;
  v80 = v7;
  v77 = v6 - 1;
  v78 = v7 + 2;
  sub_29A1F345C(v7, v7 + 1, v7 + 2);
  if (sub_29A1F3300(v6 - 1, v7 + 2))
  {
    sub_29A1F33EC(&v78, &v77);
    if (sub_29A1F3300(v78, v7 + 1))
    {
      sub_29A1F33EC(&v79, &v78);
      if (sub_29A1F3300(v79, v7))
      {
        v37 = &v80;
        v38 = &v79;
        goto LABEL_64;
      }
    }
  }
}

void sub_29A1F3270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va1);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

BOOL sub_29A1F3300(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v3 = sub_29A1F38D8(a1);
  pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetName(v3, __p);
  v4 = sub_29A1F38D8(a2);
  pxrInternal__aapl__pxrReserved__::SdfVariantSpec::GetName(v4, v15);
  v5 = v16;
  v6 = v15[0];
  v7 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v8 = v18;
  }

  else
  {
    v8 = __p[1];
  }

  if ((v18 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v16 >= 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = v15[1];
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v5 < 0)
  {
    operator delete(v6);
    if ((v18 & 0x80) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_18;
  }

  operator delete(__p[0]);
LABEL_18:
  if (v13)
  {
    return v13 < 0;
  }

  else
  {
    return v8 < v10;
  }
}

void sub_29A1F33D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1F33EC(atomic_uint ***a1, atomic_uint ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v3, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A1F3448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

void sub_29A1F345C(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_29A1F3300(a2, a1);
  v6 = sub_29A1F3300(a3, a2);
  if (v5)
  {
    if (v6)
    {
      v7 = &v11;
    }

    else
    {
      sub_29A1F33EC(&v11, &v10);
      if (!sub_29A1F3300(v9, v10))
      {
        return;
      }

      v7 = &v10;
    }

    v8 = &v9;
    goto LABEL_10;
  }

  if (v6)
  {
    sub_29A1F33EC(&v10, &v9);
    if (sub_29A1F3300(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_29A1F33EC(v7, v8);
    }
  }
}

void sub_29A1F3510(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  v13 = a2;
  v14 = a1;
  v11 = a4;
  v12 = a3;
  v10 = a5;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v15 = a4;
  sub_29A1F345C(a1, a2, a3);
  if (sub_29A1F3300(a4, a3))
  {
    sub_29A1F33EC(&v16, &v15);
    if (sub_29A1F3300(v16, a2))
    {
      sub_29A1F33EC(&v17, &v16);
      if (sub_29A1F3300(v17, a1))
      {
        sub_29A1F33EC(&v18, &v17);
      }
    }
  }

  if (sub_29A1F3300(a5, a4))
  {
    sub_29A1F33EC(&v11, &v10);
    if (sub_29A1F3300(v11, a3))
    {
      sub_29A1F33EC(&v12, &v11);
      if (sub_29A1F3300(v12, a2))
      {
        sub_29A1F33EC(&v13, &v12);
        if (sub_29A1F3300(v13, a1))
        {
          sub_29A1F33EC(&v14, &v13);
        }
      }
    }
  }
}

void sub_29A1F3638(atomic_uint ***a1, atomic_uint ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *v2;
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add(v4, 1u);
  }

  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v2, v3);
  pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v3, &v5);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v5);
}

void sub_29A1F3694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A1F36A8(atomic_uint **a1, pxrInternal__aapl__pxrReserved__::Sdf_Identity **a2)
{
  v15 = a2;
  v16 = a1;
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A1F345C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        v19 = a1 + 1;
        v20 = a1;
        v13 = a2 - 1;
        v17 = (a2 - 1);
        v18 = a1 + 2;
        sub_29A1F345C(a1, a1 + 1, a1 + 2);
        if (!sub_29A1F3300(v13, a1 + 2))
        {
          return 1;
        }

        sub_29A1F33EC(&v18, &v17);
        if (!sub_29A1F3300(v18, a1 + 1))
        {
          return 1;
        }

        sub_29A1F33EC(&v19, &v18);
        if (!sub_29A1F3300(v19, a1))
        {
          return 1;
        }

        v5 = &v20;
        v6 = &v19;
        goto LABEL_6;
      case 5:
        sub_29A1F3510(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v15 = a2 - 1;
      if (sub_29A1F3300(a2 - 1, a1))
      {
        v5 = &v16;
        v6 = &v15;
LABEL_6:
        sub_29A1F33EC(v5, v6);
      }

      return 1;
    }
  }

  v7 = a1 + 2;
  sub_29A1F345C(a1, a1 + 1, a1 + 2);
  v8 = (a1 + 3);
  v9 = 1;
  if (v8 != a2)
  {
    v10 = 0;
    while (1)
    {
      if (sub_29A1F3300(v8, v7))
      {
        v11 = *v8;
        v20 = v11;
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
        }

        do
        {
          v12 = v7;
          pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v7 + 1, v7);
          if (v7 == v16)
          {
            break;
          }

          --v7;
        }

        while (sub_29A1F3300(&v20, v12 - 1));
        pxrInternal__aapl__pxrReserved__::SdfSpec::operator=(v12, &v20);
        if (++v10 == 8)
        {
          v9 = v8 + 1 == v15;
          pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
          return v9;
        }

        pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v20);
      }

      v7 = v8++;
      if (v8 == v15)
      {
        return 1;
      }
    }
  }

  return v9;
}

void sub_29A1F38C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(va);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::Sdf_Identity **sub_29A1F38D8(pxrInternal__aapl__pxrReserved__::Sdf_Identity **a1)
{
  if (pxrInternal__aapl__pxrReserved__::SdfSpec::IsDormant(a1))
  {
    v7[0] = "sdf/declareHandles.h";
    v7[1] = "operator->";
    v7[2] = 80;
    v7[3] = "SpecType *pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfVariantSpec>::operator->() const [T = pxrInternal__aapl__pxrReserved__::SdfVariantSpec]";
    v8 = 0;
    v9 = 4;
    pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B48B38ELL & 0x7FFFFFFFFFFFFFFFLL), v5);
    if (v6 >= 0)
    {
      v4 = v5;
    }

    else
    {
      v4 = v5[0];
    }

    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v7, "Dereferenced an invalid %s", v3, v4);
  }

  return a1;
}

void sub_29A1F3980(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29A1F38F8);
}

void sub_29A1F3998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1F39B4(void *a1)
{
  if (*a1)
  {
    sub_29A1F3A08(a1);
  }

  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {
    operator delete[](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return a1;
}

uint64_t sub_29A1F3A08(void *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (sub_29A1F3A88(a1))
  {
    v2 = (*(**a1 + 16))();
  }

  else
  {
    v2 = 0;
  }

  v3 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  return v2;
}

uint64_t sub_29A1F3A88(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return 1;
  }

  v3 = (*(**a1 + 24))(*a1, a1[4], v1, a1[2]);
  if (v3 == a1[5])
  {
    a1[2] += v3;
    a1[5] = 0;
    return 1;
  }

  else
  {
    v5[0] = "sdf/fileIO.h";
    v5[1] = "_FlushBuffer";
    v5[2] = 146;
    v5[3] = "BOOL pxrInternal__aapl__pxrReserved__::Sdf_TextOutput::_FlushBuffer()";
    v6 = 0;
    v7 = 3;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v5, "Failed to write bytes");
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfPath>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FA898(a1, a2, EmptyString, a4 + 8, __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FA898(a1, a2, EmptyString, a4 + 104, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FA898(a1, a2, EmptyString, a4 + 32, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FA898(a1, a2, EmptyString, a4 + 56, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FA898(a1, a2, EmptyString, a4 + 80, __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = a4 + 128;
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FA898(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F3D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfPayload>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FAC78(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FAC78(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FAC78(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FAC78(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FAC78(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FAC78(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F3F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<pxrInternal__aapl__pxrReserved__::SdfReference>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FB0F0(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FB0F0(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FB0F0(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FB0F0(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FB0F0(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FB0F0(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F41A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<int>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FB680(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FB680(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FB680(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FB680(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FB680(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FB680(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F43C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Sdf_FileIOUtility::WriteListOp<long long>(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((*a3 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a3 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
  }

  if (*a4 == 1)
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    sub_29A1FBA14(a1, a2, EmptyString, (a4 + 8), __p);
    goto LABEL_20;
  }

  if (*(a4 + 104) != *(a4 + 112))
  {
    sub_29A008E78(__p, "delete");
    sub_29A1FBA14(a1, a2, EmptyString, (a4 + 104), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 32) != *(a4 + 40))
  {
    sub_29A008E78(__p, "add");
    sub_29A1FBA14(a1, a2, EmptyString, (a4 + 32), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 56) != *(a4 + 64))
  {
    sub_29A008E78(__p, "prepend");
    sub_29A1FBA14(a1, a2, EmptyString, (a4 + 56), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a4 + 80) != *(a4 + 88))
  {
    sub_29A008E78(__p, "append");
    sub_29A1FBA14(a1, a2, EmptyString, (a4 + 80), __p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v8 = *(a4 + 128);
  v9 = *(a4 + 136);
  v10 = (a4 + 128);
  if (v8 != v9)
  {
    sub_29A008E78(__p, "reorder");
    sub_29A1FBA14(a1, a2, EmptyString, v10, __p);
LABEL_20:
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_29A1F45E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}