void sub_29AB12EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AB12F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, const char *, ...))
{
  if (a2)
  {
    v13 = *(a2 + 8);
    v12 = *(a2 + 16);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v12);
      if (a4 && a3 && v13)
      {
        v13 = *(a2 + 8);
        v14 = *(a2 + 16);
        if (v14)
        {
          v15 = 0;
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_13;
        }

LABEL_12:
        v15 = 1;
LABEL_13:
        v16 = (*(*v13 + 32))(v13, a3, a4, a5);
        if ((v15 & 1) == 0)
        {
          sub_29A014BEC(v14);
        }

        return v16;
      }
    }

    else if (a4 && a3 && v13)
    {
      v14 = 0;
      goto LABEL_12;
    }
  }

  if (a6)
  {
    a6(a1, 3, "%s", "Invalid arguments to read callback");
  }

  return -1;
}

void sub_29AB1302C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AB13044(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a8 + a7) | (a6 + a5))
  {
    v8 = (a3 - (a6 + a5));
    if (v8 >= 1)
    {
      v9 = (a2 - (a8 + a7));
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = a4 * (a7 + a5 * a2);
        v12 = a4 * a2;
        v13 = result;
        do
        {
          v14 = 0;
          v15 = v11;
          v16 = v13;
          do
          {
            if (a4 >= 1)
            {
              v17 = &result[v15];
              v18 = a4;
              v19 = v16;
              do
              {
                v20 = *v17++;
                *v19++ = v20;
                --v18;
              }

              while (v18);
            }

            ++v14;
            v16 += a4;
            v15 += a4;
          }

          while (v14 != v9);
          ++v10;
          v13 += a4 * v9;
          v11 += v12;
        }

        while (v10 != v8);
      }
    }
  }

  return result;
}

uint64_t sub_29AB130F0(uint64_t result, int a2, unsigned int a3, int a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4 * a2;
    v7 = a4 * a2;
    do
    {
      v8 = v6 * v5;
      v9 = v5 + 1;
      if (v6 * v5 != v6 * (v5 + 1))
      {
        v10 = 4 * v7 - 4 * v4;
        v11 = (result + 4 * (v6 * (~v5 + a3)));
        v12 = (result + 4 * v8);
        do
        {
          v13 = *v12;
          *v12++ = *v11;
          *v11++ = v13;
          v10 -= 4;
        }

        while (v10);
      }

      v7 += v6;
      v4 += v6;
      v5 = v9;
    }

    while (v9 != a3 >> 1);
  }

  return result;
}

void sub_29AB1316C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_29AB15578(a1, a2 - v2);
  }
}

_WORD *sub_29AB1319C(_WORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a8 + a7) | (a6 + a5))
  {
    v8 = (a3 - (a6 + a5));
    if (v8 >= 1)
    {
      v9 = (a2 - (a8 + a7));
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = a4 * (a7 + a5 * a2);
        v12 = a4 * a2;
        v13 = result;
        do
        {
          v14 = 0;
          v15 = v11;
          v16 = v13;
          do
          {
            if (a4 >= 1)
            {
              v17 = &result[v15];
              v18 = a4;
              v19 = v16;
              do
              {
                v20 = *v17++;
                *v19++ = v20;
                --v18;
              }

              while (v18);
            }

            ++v14;
            v16 += a4;
            v15 += a4;
          }

          while (v14 != v9);
          ++v10;
          v13 += a4 * v9;
          v11 += v12;
        }

        while (v10 != v8);
      }
    }
  }

  return result;
}

uint64_t sub_29AB13248(uint64_t result, int a2, unsigned int a3, int a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4 * a2;
    v7 = a4 * a2;
    do
    {
      v8 = v6 * v5;
      v9 = v5 + 1;
      if (v6 * v5 != v6 * (v5 + 1))
      {
        v10 = 2 * v7 - 2 * v4;
        v11 = (result + 2 * (v6 * (~v5 + a3)));
        v12 = (result + 2 * v8);
        do
        {
          v13 = *v12;
          *v12++ = *v11;
          *v11++ = v13;
          v10 -= 2;
        }

        while (v10);
      }

      v7 += v6;
      v4 += v6;
      v5 = v9;
    }

    while (v9 != a3 >> 1);
  }

  return result;
}

_DWORD *sub_29AB132C4(_DWORD *result, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  if ((a8 + a7) | (a6 + a5))
  {
    v8 = (a3 - (a6 + a5));
    if (v8 >= 1)
    {
      v9 = (a2 - (a8 + a7));
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = a4 * (a7 + a5 * a2);
        v12 = a4 * a2;
        v13 = result;
        do
        {
          v14 = 0;
          v15 = v11;
          v16 = v13;
          do
          {
            if (a4 >= 1)
            {
              v17 = &result[v15];
              v18 = a4;
              v19 = v16;
              do
              {
                v20 = *v17++;
                *v19++ = v20;
                --v18;
              }

              while (v18);
            }

            ++v14;
            v16 += a4;
            v15 += a4;
          }

          while (v14 != v9);
          ++v10;
          v13 += a4 * v9;
          v11 += v12;
        }

        while (v10 != v8);
      }
    }
  }

  return result;
}

uint64_t sub_29AB13370(uint64_t result, int a2, unsigned int a3, int a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v5 = 0;
    v6 = a4 * a2;
    v7 = a4 * a2;
    do
    {
      v8 = v6 * v5;
      v9 = v5 + 1;
      if (v6 * v5 != v6 * (v5 + 1))
      {
        v10 = 4 * v7 - 4 * v4;
        v11 = (result + 4 * (v6 * (~v5 + a3)));
        v12 = (result + 4 * v8);
        do
        {
          v13 = *v12;
          *v12++ = *v11;
          *v11++ = v13;
          v10 -= 4;
        }

        while (v10);
      }

      v7 += v6;
      v4 += v6;
      v5 = v9;
    }

    while (v9 != a3 >> 1);
  }

  return result;
}

uint64_t sub_29AB133EC(uint64_t result, _WORD *a2, int a3, int a4, int a5)
{
  if (result)
  {
    v5 = a2;
    if (a2)
    {
      v6 = (a4 * a3 * a5);
      if (v6 >= 1)
      {
        v7 = result;
        do
        {
          v8 = *v7;
          if (*v7 == 0.0)
          {
            result = v8 >> 16;
          }

          else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23])
          {
            result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v8 >> 23] + (((v8 & 0x7FFFFF) + ((v8 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            result = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v8);
          }

          *v5++ = result;
          ++v7;
          --v6;
        }

        while (v6);
      }
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetMetadata(pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  if (!a3)
  {
    v40[0] = "hio/OpenEXRImage.cpp";
    v40[1] = "GetMetadata";
    v40[2] = 501;
    v40[3] = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetMetadata(const TfToken &, VtValue *) const";
    v41 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v40, 1, "Invalid value pointer");
    return 0;
  }

  v6 = *a2;
  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(this);
    v6 = *a2;
  }

  v9 = sub_29AB13780(EmptyString);
  v10 = v9;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v11 = ((v6 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v11 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  v12 = sub_29AB13920(v11);
  v13 = v12;
  if ((v10 | v12))
  {
    v14 = (*a2 & 0xFFFFFFFFFFFFFFF8) != 0 ? ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16) : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
    v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(this + 16, v14);
    v17 = v16;
    v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::end((this + 128));
    if (v17 != v18 || v17 && v15 != v12)
    {
      Typeid = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v15 + 56));
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(Typeid, &stru_2A2040818, v20))
      {
        pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid((v15 + 56), &stru_2A2040818, v40);
      }

      else
      {
        sub_29A186EF4(v40, (v15 + 56));
      }

LABEL_40:
      sub_29A18606C(a3, v40);
      sub_29A186B14(v40);
      return 1;
    }
  }

  if (v10)
  {
    v21 = pxrInternal__aapl__pxrReserved__::VtDictionary::find((this + 128), "worldToNDC");
    v23 = v22;
    v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::end((this + 128));
    if (v23 != v24 || v23 && v21 != v12)
    {
      v25 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v21 + 56));
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v25, &stru_2A2040818, v26))
      {
        pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid((v21 + 56), &stru_2A2040818, v40);
      }

      else
      {
        sub_29A186EF4(v40, (v21 + 56));
      }

      goto LABEL_40;
    }
  }

  if (v13)
  {
    v27 = pxrInternal__aapl__pxrReserved__::VtDictionary::find((this + 128), "worldToCamera");
    v29 = v28;
    v12 = pxrInternal__aapl__pxrReserved__::VtDictionary::end((this + 128));
    if (v29 != v30 || v29 && v27 != v12)
    {
      v31 = pxrInternal__aapl__pxrReserved__::VtValue::GetTypeid((v27 + 56));
      if (pxrInternal__aapl__pxrReserved__::VtValue::_CanCast(v31, &stru_2A2040818, v32))
      {
        pxrInternal__aapl__pxrReserved__::VtValue::CastToTypeid((v27 + 56), &stru_2A2040818, v40);
      }

      else
      {
        sub_29A186EF4(v40, (v27 + 56));
      }

      goto LABEL_40;
    }
  }

  if ((*a2 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v33 = ((*a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v33 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  }

  v34 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(this + 16, v33);
  v36 = v35;
  v37 = pxrInternal__aapl__pxrReserved__::VtDictionary::end((this + 128));
  if (v36 != v38 || (v39 = v37, result = 0, v36) && v34 != v39)
  {
    sub_29A1854E8(a3, (v34 + 56));
    return 1;
  }

  return result;
}

BOOL sub_29AB13780(unsigned __int16 *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) == 2 && **a1 == 20558)
    {
      return 1;
    }

    if (*(a1 + 1) == 13 && **a1 == 0x736F74646C726F77 && *(*a1 + 5) == 0x6E65657263736F74)
    {
      return 1;
    }

    if (*(a1 + 1) == 13 && **a1 == 0x536F54646C726F77 && *(*a1 + 5) == 0x6E65657263536F54)
    {
      return 1;
    }

    if (*(a1 + 1) != 10)
    {
      return 0;
    }

    a1 = *a1;
    return *a1 == 0x4E6F54646C726F77 && a1[4] == 17220;
  }

  v1 = *(a1 + 23);
  if (v1 != 2)
  {
    if (v1 != 10)
    {
      if (v1 != 13)
      {
        return 0;
      }

      return *a1 == 0x736F74646C726F77 && *(a1 + 5) == 0x6E65657263736F74 || *a1 == 0x536F54646C726F77 && *(a1 + 5) == 0x6E65657263536F54;
    }

    return *a1 == 0x4E6F54646C726F77 && a1[4] == 17220;
  }

  return *a1 == 20558;
}

BOOL sub_29AB13920(unsigned __int16 *a1)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) == 2 && **a1 == 27726)
    {
      return 1;
    }

    if (*(a1 + 1) == 13 && **a1 == 0x636F74646C726F77 && *(*a1 + 5) == 0x6172656D61636F74)
    {
      return 1;
    }

    if (*(a1 + 1) == 13)
    {
      a1 = *a1;
      return *a1 == 0x436F54646C726F77 && *(a1 + 5) == 0x6172656D61436F54;
    }

    return 0;
  }

  v1 = *(a1 + 23);
  if (v1 != 2)
  {
    if (v1 == 13)
    {
      if (*a1 != 0x636F74646C726F77 || *(a1 + 5) != 0x6172656D61636F74)
      {
        return *a1 == 0x436F54646C726F77 && *(a1 + 5) == 0x6172656D61436F54;
      }

      return 1;
    }

    return 0;
  }

  return *a1 == 27726;
}

BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::GetSamplerMetadata(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    v3 = *(a1 + 84);
    if (v3 <= 4)
    {
      *a3 = dword_29B4E16D4[v3];
    }
  }

  return a3 != 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeReadCallback(uint64_t a1, unsigned __int8 *a2)
{
  v85 = *MEMORY[0x29EDCA608];
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a1 + 128));
  if (result)
  {
    v5 = *(a1 + 116);
    attribute_count = nanoexr_get_attribute_count(a2, v5);
    if (attribute_count >= 1)
    {
      v7 = attribute_count;
      for (i = 0; i != v7; ++i)
      {
        v72 = 0;
        nanoexr_get_attribute_by_index(a2, v5, i, &v72);
        v9 = v72;
        if (v72)
        {
          switch(*(v72 + 20))
          {
            case 1:
              v10 = *(v72 + 24);
              v11 = *v10;
              v12 = v10[1];
              v13 = v10[2];
              *(&v81 + 1) = &off_2A2071910;
              v14 = operator new(0x14uLL);
              *v14 = COERCE_UNSIGNED_INT(v11) | (COERCE_UNSIGNED_INT(v12) << 32);
              *(v14 + 1) = COERCE_UNSIGNED_INT(v13) | (COERCE_UNSIGNED_INT(v13) << 32);
              atomic_store(0, v14 + 4);
              *&v81 = v14;
              atomic_fetch_add_explicit(v14 + 4, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 2:
              v30 = *(v72 + 24);
              v31 = *v30;
              v32 = v30[1];
              *(&v81 + 1) = &off_2A2071910;
              v33 = operator new(0x14uLL);
              *v33 = v31;
              *(v33 + 1) = v32;
              atomic_store(0, v33 + 4);
              *&v81 = v33;
              atomic_fetch_add_explicit(v33 + 4, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 6:
              *(&v81 + 1) = &unk_2A2044D1B;
              *&v81 = *(v72 + 24);
              sub_29A008E78(__p, *v72);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 8:
              *(&v81 + 1) = &unk_2A2044C63;
              LODWORD(v81) = *(v72 + 24);
              sub_29A008E78(__p, *v72);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 9:
              __p[0] = 0;
              __p[1] = 0;
              *&v74 = 0;
              sub_29A0A171C(__p, **(v72 + 24));
              memcpy(__p[0], *(*(v72 + 24) + 8), __p[1] - __p[0]);
              v84 = &off_2A20719C8;
              sub_29AB15C3C(&v83, __p);
              sub_29A008E78(&v81, *v72);
              v34 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), &v81);
              sub_29A18606C(v34, &v83);
              if (v82 < 0)
              {
                operator delete(v81);
              }

              sub_29A186B14(&v83);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              v9 = v72;
              goto LABEL_20;
            case 0xA:
LABEL_20:
              __p[1] = &unk_2A204475B;
              LODWORD(__p[0]) = *(v9 + 24);
              v35 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v81, *v9);
              if ((v81 & 0xFFFFFFFFFFFFFFF8) != 0)
              {
                EmptyString = ((v81 & 0xFFFFFFFFFFFFFFF8) + 16);
              }

              else
              {
                EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v35);
              }

              v70 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), EmptyString);
              sub_29A18606C(v70, __p);
              if ((v81 & 7) != 0)
              {
                atomic_fetch_add_explicit((v81 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              v60 = __p;
              goto LABEL_39;
            case 0xD:
              v37 = *(v72 + 24);
              *__p = *v37;
              v74 = *(v37 + 16);
              LODWORD(v75) = *(v37 + 32);
              v84 = (&off_2A2071A80 + 2);
              v38 = operator new(0x28uLL);
              v39 = v74;
              *v38 = *__p;
              *(v38 + 1) = v39;
              *(v38 + 8) = v75;
              atomic_store(0, v38 + 9);
              v83 = v38;
              atomic_fetch_add_explicit(v38 + 9, 1u, memory_order_relaxed);
              sub_29A008E78(&v81, *v9);
              v40 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), &v81);
              goto LABEL_31;
            case 0xE:
              v41 = *(v72 + 24);
              v74 = *(v41 + 16);
              v75 = *(v41 + 32);
              v76 = *(v41 + 48);
              *&v77 = *(v41 + 64);
              *__p = *v41;
              v84 = (&off_2A20484A8 + 2);
              v42 = operator new(0x50uLL);
              v43 = v76;
              *(v42 + 2) = v75;
              *(v42 + 3) = v43;
              *(v42 + 8) = v77;
              v44 = v74;
              *v42 = *__p;
              *(v42 + 1) = v44;
              atomic_store(0, v42 + 18);
              v83 = v42;
              atomic_fetch_add_explicit(v42 + 18, 1u, memory_order_relaxed);
              sub_29A008E78(&v81, *v9);
              v40 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), &v81);
              goto LABEL_31;
            case 0xF:
              v56 = *(v72 + 24);
              *__p = *v56;
              v74 = v56[1];
              v75 = v56[2];
              v76 = v56[3];
              v84 = (&off_2A2042C90 + 2);
              v57 = operator new(0x44uLL);
              v58 = v74;
              *v57 = *__p;
              *(v57 + 1) = v58;
              v59 = v76;
              *(v57 + 2) = v75;
              *(v57 + 3) = v59;
              atomic_store(0, v57 + 16);
              v83 = v57;
              atomic_fetch_add_explicit(v57 + 16, 1u, memory_order_relaxed);
              sub_29A008E78(&v81, *v9);
              v40 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), &v81);
              goto LABEL_31;
            case 0x10:
              v50 = *(v72 + 24);
              v77 = v50[4];
              v78 = v50[5];
              v79 = v50[6];
              v80 = v50[7];
              *__p = *v50;
              v74 = v50[1];
              v75 = v50[2];
              v76 = v50[3];
              v84 = (&off_2A2042BD8 + 2);
              v51 = operator new(0x88uLL);
              v52 = v78;
              *(v51 + 4) = v77;
              *(v51 + 5) = v52;
              v53 = v80;
              *(v51 + 6) = v79;
              *(v51 + 7) = v53;
              v54 = v74;
              *v51 = *__p;
              *(v51 + 1) = v54;
              v55 = v76;
              *(v51 + 2) = v75;
              *(v51 + 3) = v55;
              atomic_store(0, v51 + 32);
              v83 = v51;
              atomic_fetch_add_explicit(v51 + 32, 1u, memory_order_relaxed);
              sub_29A008E78(&v81, *v9);
              v40 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), &v81);
LABEL_31:
              sub_29A18606C(v40, &v83);
              if (v82 < 0)
              {
                operator delete(v81);
              }

              v60 = &v83;
              goto LABEL_39;
            case 0x12:
              v25 = **(v72 + 24) / *(*(v72 + 24) + 4);
              *(&v81 + 1) = &unk_2A2044C63;
              *&v81 = v25;
              sub_29A008E78(__p, *v72);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x13:
              *&v81 = *(v72 + 24);
              *(&v81 + 1) = &off_2A2071B38 + 3;
              sub_29A008E78(__p, *v72);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x14:
              __p[0] = 0;
              __p[1] = 0;
              *&v74 = 0;
              sub_29A01FBC8(__p, **(v72 + 24));
              v26 = __p[0];
              if (__p[1] != __p[0])
              {
                v27 = 0;
                v28 = 0;
                v29 = 8;
                do
                {
                  MEMORY[0x29C2C1A60](&v26[v27], *(*(*(v72 + 24) + 8) + v29));
                  ++v28;
                  v26 = __p[0];
                  v29 += 16;
                  v27 += 24;
                }

                while (v28 < 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3));
              }

              v84 = &off_2A2048B60;
              sub_29A22C0F0();
            case 0x17:
              v21 = *(v72 + 24);
              v22 = *v21;
              v23 = v21[1];
              *(&v81 + 1) = &off_2A20426D0 + 2;
              v24 = operator new(0x18uLL);
              *v24 = v22;
              *(v24 + 1) = v23;
              atomic_store(0, v24 + 4);
              *&v81 = v24;
              atomic_fetch_add_explicit(v24 + 4, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x18:
              v45 = **(v72 + 24);
              *(&v81 + 1) = &off_2A2042618 + 3;
              *&v81 = v45;
              sub_29A008E78(__p, *v72);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x19:
              v46 = *(v72 + 24);
              v47 = *v46;
              v48 = v46[1];
              *(&v81 + 1) = &off_2A20426D0 + 2;
              v49 = operator new(0x18uLL);
              *v49 = v47;
              *(v49 + 1) = v48;
              atomic_store(0, v49 + 4);
              *&v81 = v49;
              atomic_fetch_add_explicit(v49 + 4, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x1A:
              v65 = *(v72 + 24);
              v66 = *v65;
              v67 = v65[1];
              v68 = v65[2];
              *(&v81 + 1) = &off_2A20428F8 + 2;
              v69 = operator new(0x20uLL);
              *v69 = v66;
              *(v69 + 1) = v67;
              *(v69 + 2) = v68;
              atomic_store(0, v69 + 6);
              *&v81 = v69;
              atomic_fetch_add_explicit(v69 + 6, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x1B:
              v61 = *(v72 + 24);
              v62 = *(v61 + 2);
              v63 = *v61;
              *(&v81 + 1) = &off_2A2042840 + 2;
              v64 = operator new(0x10uLL);
              *v64 = v63;
              v64[2] = v62;
              atomic_store(0, v64 + 3);
              *&v81 = v64;
              atomic_fetch_add_explicit(v64 + 3, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
              goto LABEL_36;
            case 0x1C:
              v16 = *(v72 + 24);
              v17 = *v16;
              v18 = v16[1];
              v19 = v16[2];
              *(&v81 + 1) = &off_2A20428F8 + 2;
              v20 = operator new(0x20uLL);
              *v20 = v17;
              *(v20 + 1) = v18;
              *(v20 + 2) = v19;
              atomic_store(0, v20 + 6);
              *&v81 = v20;
              atomic_fetch_add_explicit(v20 + 6, 1u, memory_order_relaxed);
              sub_29A008E78(__p, *v9);
              v15 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
LABEL_36:
              sub_29A18606C(v15, &v81);
              if (SBYTE7(v74) < 0)
              {
                operator delete(__p[0]);
              }

              v60 = &v81;
LABEL_39:
              sub_29A186B14(v60);
              break;
            default:
              continue;
          }
        }
      }
    }

    result = pxrInternal__aapl__pxrReserved__::VtDictionary::empty((a1 + 128));
    if (result)
    {
      *(&v81 + 1) = &unk_2A20443C3;
      LOBYTE(v81) = 1;
      sub_29A008E78(__p, "placeholder");
      v71 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[]((a1 + 128), __p);
      sub_29A18606C(v71, &v81);
      if (SBYTE7(v74) < 0)
      {
        operator delete(__p[0]);
      }

      return sub_29A186B14(&v81);
    }
  }

  return result;
}

void sub_29AB14400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_29A186B14(v28 - 168);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_OpenForReading(uint64_t a1, uint64_t a2, int a3, signed int a4, int a5)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  v11 = v21;
  v21 = 0uLL;
  v12 = *(a1 + 16);
  *(a1 + 8) = v11;
  if (v12)
  {
    sub_29A014BEC(v12);
    if (*(&v21 + 1))
    {
      sub_29A014BEC(*(&v21 + 1));
    }
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 8))
  {
    v13 = (a1 + 24);
    std::string::operator=((a1 + 24), a2);
    *(a1 + 116) = a3;
    *(a1 + 120) = a4;
    *(a1 + 112) = a5;
    if (*(a1 + 47) < 0)
    {
      v13 = *v13;
    }

    nanoexr_set_defaults(v13, a1 + 48);
    header = nanoexr_read_header((a1 + 48), sub_29AB12F0C, pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeReadCallback, a1, *(a1 + 116));
    if (header)
    {
      __p[0] = "hio/OpenEXRImage.cpp";
      __p[1] = "_OpenForReading";
      v17 = 759;
      v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_OpenForReading(const std::string &, int, int, SourceColorSpace, BOOL)";
      v19 = 1;
      v20 = 6;
      nanoexr_get_error_code_as_string(header);
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(__p, "Cannot open image %s for reading, %s");
    }

    else
    {
      if (*(a1 + 88) > a4)
      {
        *(a1 + 72) = vshl_s32(*(a1 + 72), vneg_s32(vdup_n_s32(a4)));
        return 1;
      }

      __p[0] = "hio/OpenEXRImage.cpp";
      __p[1] = "_OpenForReading";
      v17 = 765;
      v18 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_OpenForReading(const std::string &, int, int, SourceColorSpace, BOOL)";
      v19 = 1;
      v20 = 6;
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueWarning(__p, "In image %s mip level %d does not exist");
    }
  }

  return 0;
}

void sub_29AB147FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeWriteCallback(uint64_t a1, uint64_t a2)
{
  v57[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 136);
  v5 = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v4);
  v7 = v6;
  v53 = v5;
  v54 = v6;
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v4);
  if (v9)
  {
    v10 = v5 == result;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v7 != v9 || (v11 & 1) == 0)
  {
    sub_29AB15498(__p, (v5 + 32));
    if (sub_29A1EFC10(v57))
    {
      v12 = *(a1 + 116);
      v13 = v56;
      v14 = __p[0];
      v15 = sub_29A1EFC48(v57);
      if (v13 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = v14;
      }

      if (*(v15 + 23) >= 0)
      {
        v17 = v15;
      }

      else
      {
        v17 = *v15;
      }

      nanoexr_attr_set_string(a2, v12, v16, v17);
      goto LABEL_36;
    }

    if (sub_29A1F8DE8(v57))
    {
      v18 = *(a1 + 116);
      v19 = v56;
      v20 = __p[0];
      v21 = sub_29AB14B80(v57);
      if (v19 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = v20;
      }

      v23 = *v21;
    }

    else if (sub_29A1F9040(v57))
    {
      v18 = *(a1 + 116);
      v24 = v56;
      v25 = __p[0];
      v26 = sub_29AA9E568(v57);
      if (v24 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = v25;
      }

      v23 = *v26;
    }

    else
    {
      if (sub_29A293A9C(v57))
      {
        v18 = *(a1 + 116);
        v27 = v56;
        v28 = __p[0];
        v29 = sub_29A346A20(v57);
      }

      else
      {
        if (!sub_29A3F94B8(v57))
        {
          if (sub_29A3F9DF4(v57))
          {
            v30 = *(a1 + 116);
            v31 = v56;
            v32 = __p[0];
            v33 = sub_29A8D5794(v57);
            if (v31 >= 0)
            {
              v34 = __p;
            }

            else
            {
              v34 = v32;
            }

            nanoexr_attr_set_float(a2, v30, v34, *v33);
          }

          else if (sub_29A346994(v57))
          {
            v35 = *(a1 + 116);
            v36 = v56;
            v37 = __p[0];
            v38 = sub_29A337248(v57);
            if (v36 >= 0)
            {
              v39 = __p;
            }

            else
            {
              v39 = v37;
            }

            nanoexr_attr_set_double(a2, v35, v39, *v38);
          }

          else if (sub_29A76D024(v57))
          {
            v40 = *(a1 + 116);
            v41 = v56;
            v42 = __p[0];
            v43 = sub_29AB14CA8(v57);
            if (v41 >= 0)
            {
              v44 = __p;
            }

            else
            {
              v44 = v42;
            }

            nanoexr_attr_set_m44f(a2, v40, v44, v43);
          }

          else if (sub_29A3FC38C(v57))
          {
            if (sub_29AB13780(__p) || sub_29AB13920(__p))
            {
              v45 = sub_29AB14D3C(v57);
              pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(v52, v45);
              if (v56 >= 0)
              {
                v46 = __p;
              }

              else
              {
                v46 = __p[0];
              }

              nanoexr_attr_set_m44f(a2, *(a1 + 116), v46, v52);
            }

            else
            {
              v47 = *(a1 + 116);
              v48 = v56;
              v49 = __p[0];
              v50 = sub_29AB14D3C(v57);
              if (v48 >= 0)
              {
                v51 = __p;
              }

              else
              {
                v51 = v49;
              }

              nanoexr_attr_set_m44d(a2, v47, v51, v50);
            }
          }

LABEL_36:
          sub_29A186B14(v57);
          if (v56 < 0)
          {
            operator delete(__p[0]);
          }

          pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
        }

        v18 = *(a1 + 116);
        v27 = v56;
        v28 = __p[0];
        v29 = sub_29AB14C14(v57);
      }

      if (v27 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = v28;
      }

      v23 = *v29;
    }

    nanoexr_attr_set_int(a2, v18, v22, v23);
    goto LABEL_36;
  }

  return result;
}

void sub_29AB14B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A1855F0(va);
  _Unwind_Resume(a1);
}

void **sub_29AB14B80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A1F8DE8(a1))
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
    v4 = MEMORY[0x29EDC94B0];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AB160C4, v4);
  }
}

void **sub_29AB14C14(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3F94B8(a1))
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
    v4 = MEMORY[0x29EDC94D8];

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AB16118, v4);
  }
}

void **sub_29AB14CA8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A76D024(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix4f>::Invoke, &stru_2A2040808);
  }
}

void **sub_29AB14D3C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29A3FC38C(a1))
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

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, pxrInternal__aapl__pxrReserved__::Vt_DefaultValueFactory<pxrInternal__aapl__pxrReserved__::GfMatrix4d>::Invoke, &stru_2A2040818);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::Write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 136) = a3;
  HioType = pxrInternal__aapl__pxrReserved__::HioGetHioType(*(a2 + 12));
  ComponentCount = pxrInternal__aapl__pxrReserved__::HioGetComponentCount(*(a2 + 12));
  if (HioType == 8)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = ComponentCount << v7;
  v9 = *a2;
  v10 = (*a2 << v7) * ComponentCount;
  if (HioType)
  {
    if ((HioType - 9) > 0xFFFFFFFD)
    {
      v26 = *(a2 + 24);
      if (ComponentCount <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(a2 + 24);
      }

      if (ComponentCount <= 1)
      {
        v28 = ComponentCount > 0;
      }

      else
      {
        v28 = 2;
      }

      if (ComponentCount <= 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = v26 + ((ComponentCount > 0) << v7);
      }

      v30 = v26 + (v28 << v7);
      if (ComponentCount <= 2)
      {
        v30 = 0;
      }

      else
      {
        ++v28;
      }

      v31 = v26 + (v28 << v7);
      if (ComponentCount <= 3)
      {
        v31 = 0;
      }

      v32 = (a1 + 24);
      v33 = *(a1 + 47);
      if (HioType == 8)
      {
        if (v33 < 0)
        {
          v32 = *v32;
        }

        v34 = nanoexr_write_exr(v32, pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeWriteCallback, a1, v9, *(a2 + 4), *(a2 + 16), 2u, v27, v8, v10, v29, v8, v10, v30, v8, v10, v31, v8, v10);
      }

      else
      {
        if (v33 < 0)
        {
          v32 = *v32;
        }

        v34 = nanoexr_write_exr(v32, pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeWriteCallback, a1, v9, *(a2 + 4), *(a2 + 16), 1u, v27, v8, v10, v29, v8, v10, v30, v8, v10, v31, v8, v10);
      }

      *(a1 + 136) = 0;
      return v34 == 0;
    }

    else
    {
      __p = "hio/OpenEXRImage.cpp";
      v39 = "Write";
      v40 = 887;
      v41 = "virtual BOOL pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::Write(const StorageSpec &, const VtDictionary &)";
      v42 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Unsupported pixel type %d", HioType);
      v11 = 0;
      *(a1 + 136) = 0;
    }
  }

  else
  {
    v12 = pxrInternal__aapl__pxrReserved__::HioGetComponentCount(*(a2 + 12));
    sub_29A50765C(&__p, *a2 * v12 * *(a2 + 4));
    v13 = *a2;
    v14 = *(a2 + 4);
    if (*a2 * v12 * v14 >= 1)
    {
      v15 = 0;
      v16 = __p;
      v17 = *(a2 + 24);
      do
      {
        v18 = COERCE_UNSIGNED_INT(*(v17 + v15));
        if (*(v17 + v15))
        {
          if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v18 >> 23])
          {
            v19 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v18 >> 23] + (((v18 & 0x7FFFFF) + ((v18 >> 13) & 1) + 4095) >> 13);
          }

          else
          {
            LOWORD(v19) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v18);
          }
        }

        else
        {
          v19 = v18 >> 16;
        }

        v20 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v19] / 255.0;
        if (v20 == 0.0)
        {
          v21 = HIWORD(LODWORD(v20));
        }

        else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v20) >> 23])
        {
          v21 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v20) >> 23] + (((LODWORD(v20) & 0x7FFFFF) + ((LODWORD(v20) >> 13) & 1) + 4095) >> 13);
        }

        else
        {
          LOWORD(v21) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v20));
        }

        v16[v15] = v21;
        v13 = *a2;
        v14 = *(a2 + 4);
        ++v15;
      }

      while (v15 < *a2 * v12 * v14);
    }

    if (v12 <= 0)
    {
      v24 = 0;
      v22 = 0;
      v23 = 0;
      v25 = 0;
    }

    else
    {
      v22 = __p;
      v23 = __p + (1 << v7);
      v24 = __p + (2 << v7);
      v25 = __p + (3 << v7);
      if (v12 == 3)
      {
        v25 = 0;
      }

      if (v12 < 3)
      {
        v24 = 0;
        v25 = 0;
      }

      if (v12 == 1)
      {
        v24 = 0;
        v23 = 0;
        v25 = 0;
      }
    }

    v35 = (a1 + 24);
    if (*(a1 + 47) < 0)
    {
      v35 = *v35;
    }

    v36 = nanoexr_write_exr(v35, pxrInternal__aapl__pxrReserved__::Hio_OpenEXRImage::_AttributeWriteCallback, a1, v13, v14, *(a2 + 16), 1u, v22, v8, v10, v23, v8, v10, v24, v8, v10, v25, v8, v10);
    *(a1 + 136) = 0;
    v11 = v36 == 0;
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }
  }

  return v11;
}

void sub_29AB15184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB151C8(uint64_t a1)
{
  sub_29AB15510(a1);

  operator delete(v1);
}

uint64_t sub_29AB15228(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2071850;
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

void sub_29AB152B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB152D8(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29AB15300@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x90uLL);
  *v2 = &unk_2A20717A8;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  v2[56] = 0;
  *(v2 + 60) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 92) = 0u;
  *(v2 + 108) = 0u;
  *(v2 + 16) = 0;
  *(v2 + 17) = 0;

  return sub_29AB15384(a1, v2);
}

void *sub_29AB15384(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A20718A8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AB153DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29AB15510(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB153FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AB15424(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_29AB15510(v1);

    operator delete(v2);
  }
}

uint64_t sub_29AB15458(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20718F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_29AB15498(void *__dst, __int128 *a2)
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

  sub_29A186EF4(__dst + 3, a2 + 3);
  return __dst;
}

void sub_29AB154F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AB15510(uint64_t a1)
{
  nanoexr_free_storage((a1 + 48));
  sub_29A184A10((a1 + 128), 0);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HioImage::~HioImage(a1);
}

void sub_29AB15578(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    if ((a2 + (v6 >> 1)) < 0)
    {
      sub_29A00C9A4();
    }

    v7 = v6 >> 1;
    v8 = v4 - *a1;
    if (v8 <= a2 + (v6 >> 1))
    {
      v9 = a2 + (v6 >> 1);
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      v11 = sub_29A010BBC(a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[2 * v7];
    v13 = &v11[2 * v10];
    bzero(v12, 2 * a2);
    v14 = &v12[2 * a2];
    v15 = *(a1 + 8) - *a1;
    v16 = &v12[-v15];
    memcpy(&v12[-v15], *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    *(a1 + 16) = v13;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t *sub_29AB15684(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AB156A0(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 4, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AB156C8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

unint64_t sub_29AB156E0(float **a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = 0;
  sub_29A1A1584(&v3, v1, v1 + 2);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

BOOL sub_29AB15738(float **a1, float **a2)
{
  v2 = *a1;
  v3 = *a2;
  return **a1 == **a2 && v2[1] == v3[1] && v2[2] == v3[2] && v2[3] == v3[3];
}

unsigned int *sub_29AB158A0@<X0>(_OWORD **a1@<X0>, unsigned int **a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2071910;
  result = operator new(0x14uLL);
  *result = *v3;
  atomic_store(0, result + 4);
  *a2 = result;
  atomic_fetch_add_explicit(result + 4, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29AB158F4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 24), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AB15914(atomic_uint **a1, atomic_uint **a2)
{
  *a2 = *a1;
  *a1 = 0;
  sub_29A22B614(a1);
}

BOOL sub_29AB15954(uint64_t **a1, float ***a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = **a2;
  if (v2 - v3 != (*a2)[1] - v4)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 4;
  do
  {
    v6 = *v4++;
    result = *(v5 - 4) == v6;
    v8 = *(v5 - 4) != v6 || v5 == v2;
    v5 += 4;
  }

  while (!v8);
  return result;
}

BOOL sub_29AB159B0(uint64_t **a1, uint64_t a2)
{
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *a2;
  if (v2 - v3 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return 1;
  }

  v5 = v3 + 4;
  do
  {
    v6 = *v4++;
    result = *(v5 - 4) == v6;
    v8 = *(v5 - 4) != v6 || v5 == v2;
    v5 += 4;
  }

  while (!v8);
  return result;
}

void *sub_29AB15AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_2A20719C8;
  return sub_29AB15C3C(a2, v2);
}

unint64_t sub_29AB15AE8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = v3 - *a2;
  if (v3 == *a2)
  {
    v10 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v4 >> 2;
    do
    {
      v8 = *v2++;
      v9 = v8;
      if (v8 == 0.0)
      {
        v9 = 0.0;
      }

      if (v6)
      {
        v5 = LODWORD(v9) + ((v5 + LODWORD(v9) + (v5 + LODWORD(v9)) * (v5 + LODWORD(v9))) >> 1);
      }

      else
      {
        v5 = LODWORD(v9);
      }

      v6 = 1;
      --v7;
    }

    while (v7);
    v10 = 0x9E3779B97F4A7C55 * v5;
  }

  return bswap64(v10);
}

uint64_t sub_29AB15B5C(uint64_t *a1)
{
  v2 = atomic_load((*a1 + 24));
  if (v2 != 1)
  {
    sub_29AB15BC4(*a1, &v4);
    sub_29A22B614(a1);
    *a1 = v4;
    v4 = 0;
    sub_29A22B614(&v4);
  }

  return *a1;
}

void *sub_29AB15BC4@<X0>(uint64_t a1@<X0>, unsigned int **a2@<X8>)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A0BE484(v4, *a1, *(a1 + 8), (*(a1 + 8) - *a1) >> 2);
  atomic_store(0, v4 + 6);
  *a2 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

void *sub_29AB15C3C(unsigned int **a1, uint64_t a2)
{
  v4 = operator new(0x20uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  result = sub_29A0BE484(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  atomic_store(0, v4 + 6);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 6, 1u, memory_order_relaxed);
  return result;
}

uint64_t *sub_29AB15CB4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 36), 1u, memory_order_relaxed);
  }

  return result;
}

void sub_29AB15CD0(atomic_uint **a1)
{
  v1 = *a1;
  if (v1)
  {
    if (atomic_fetch_add_explicit(v1 + 9, 0xFFFFFFFF, memory_order_release) == 1)
    {
      __dmb(9u);
      operator delete(v1);
    }
  }
}

void *sub_29AB15CF8(void *result, void *a2)
{
  *a2 = *result;
  *result = 0;
  return result;
}

void *sub_29AB15E10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  a2[1] = &off_2A2071A80 + 2;
  result = operator new(0x28uLL);
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *result = *v3;
  *(result + 1) = v6;
  *(result + 8) = v5;
  atomic_store(0, result + 9);
  *a2 = result;
  atomic_fetch_add_explicit(result + 9, 1u, memory_order_relaxed);
  return result;
}

unint64_t sub_29AB15E70(uint64_t a1, float *a2)
{
  v3 = 0;
  v4 = 0;
  sub_29A18D034(&v3, a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7, a2 + 8);
  return bswap64(0x9E3779B97F4A7C55 * bswap64(0x9E3779B97F4A7C55 * v3));
}

atomic_uint *sub_29AB15EE4(atomic_uint **a1)
{
  v1 = atomic_load(*a1 + 9);
  v2 = *a1;
  if (v1 == 1)
  {
    return *a1;
  }

  v3 = operator new(0x28uLL);
  v5 = v2[8];
  v6 = *(v2 + 1);
  *v3 = *v2;
  *(v3 + 1) = v6;
  *(v3 + 8) = v5;
  atomic_store(0, v3 + 9);
  atomic_fetch_add_explicit(v3 + 9, 1u, memory_order_relaxed);
  if (atomic_fetch_add_explicit(v2 + 9, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    operator delete(v2);
  }

  *a1 = v3;
  return v3;
}

void *sub_29AB160AC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = *result;
  a2[1] = &off_2A2071B38 + 3;
  return result;
}

_BYTE *sub_29AB160C4@<X0>(void *a1@<X8>)
{
  result = operator new(1uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94B0];
  a1[1] = sub_29AB1610C;
  a1[2] = v3;
  return result;
}

void sub_29AB1610C(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

_DWORD *sub_29AB16118@<X0>(void *a1@<X8>)
{
  result = operator new(4uLL);
  *result = 0;
  *a1 = result;
  v3 = MEMORY[0x29EDC94D8];
  a1[1] = sub_29AB16160;
  a1[2] = v3;
  return result;
}

void sub_29AB16160(void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t nanoexr_get_attribute_by_index(unsigned __int8 *a1, unsigned int a2, unsigned int a3, void *a4)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 49) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 9))(a1, 4, "Part index (%d) out of range", a2);
  }

  else
  {
    if (a4)
    {
      if ((a3 & 0x80000000) != 0)
      {
        v9 = *a1;
      }

      else
      {
        v8 = *(*(a1 + 59) + 8 * a2);
        v9 = *a1;
        if (*(v8 + 8) > a3)
        {
          *a4 = *(*(v8 + 24) + 8 * a3);
          if (v9 == 1)
          {
            pthread_mutex_unlock((a1 + 504));
          }

          return 0;
        }
      }

      if (v9 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v11 = *(a1 + 7);
      v12 = a1;
      v13 = 4;
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v11 = *(a1 + 7);
      v12 = a1;
      v13 = 3;
    }

    return v11(v12, v13);
  }
}

uint64_t nanoexr_get_attribute_count(unsigned __int8 *a1, unsigned int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0)
  {
    v4 = *a1;
    goto LABEL_9;
  }

  v4 = *a1;
  if (*(a1 + 49) <= a2)
  {
LABEL_9:
    if (v4 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    (*(a1 + 9))(a1, 4, "Part index (%d) out of range", a2);
    return 0;
  }

  v5 = *(*(*(a1 + 59) + 8 * a2) + 8);
  if (v4 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  return v5;
}

uint64_t nanoexr_attr_set_string(uint64_t result, unsigned int a2, char *a3, char *a4)
{
  v27 = 0;
  if (!result)
  {
    return result;
  }

  v7 = result;
  pthread_mutex_lock((result + 504));
  if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
  {
    goto LABEL_10;
  }

  v8 = *(*(v7 + 472) + 8 * a2);
  if (!a3)
  {
    goto LABEL_7;
  }

  if (strcmp(a3, "name"))
  {
    if (strcmp(a3, "type"))
    {
LABEL_7:
      if (*v7 != 3)
      {
        if (!*v7)
        {
LABEL_9:
          pthread_mutex_unlock((v7 + 504));
          v9 = *(v7 + 56);
          v10 = v7;
          v11 = 8;
LABEL_20:

          return v9(v10, v11);
        }

        v19 = sub_29AB1DA70(v7, (v8 + 8), a3, &v27);
        if (a4)
        {
          v20 = strlen(a4);
          if (v20 >> 31)
          {
            pthread_mutex_unlock((v7 + 504));
            v12 = *(v7 + 72);
            v13 = "String too large to store (%llu bytes) into '%s'";
LABEL_26:
            v14 = v7;
            v15 = 3;
            return v12(v14, v15, v13);
          }
        }

        else
        {
          v20 = 0;
        }

        if (v19)
        {
          if (v19 == 15 && *v7 == 1 && !sub_29AB1DBB8(v7, (v8 + 8), a3, 19, 0, 0, &v27))
          {
            sub_29AB1DD34(v7, v27[3], a4, v20);
          }

          return pthread_mutex_unlock((v7 + 504));
        }

        if (*(v27 + 5) != 19)
        {
          pthread_mutex_unlock((v7 + 504));
          return (*(v7 + 72))(v7, 16, "'%s' requested type 'string', but attribute is type '%s'");
        }

        v23 = v27[3];
        if (*v23 == v20 && *(v23 + 1) >= 1)
        {
          if (a4)
          {
            memcpy(*(v23 + 1), a4, v20);
          }

          return pthread_mutex_unlock((v7 + 504));
        }

        if (*v7 == 1)
        {
          sub_29AB1DDE8(v7, v23, a4, v20);
          return pthread_mutex_unlock((v7 + 504));
        }

        pthread_mutex_unlock((v7 + 504));
        v12 = *(v7 + 72);
        v13 = "Existing string '%s' has length %d, requested %d, unable to change";
LABEL_58:
        v14 = v7;
        v15 = 20;
        return v12(v14, v15, v13);
      }

LABEL_19:
      pthread_mutex_unlock((v7 + 504));
      v9 = *(v7 + 56);
      v10 = v7;
      v11 = 21;
      goto LABEL_20;
    }

    pthread_mutex_unlock((v7 + 504));
    v21 = *(v7 + 72);
    v22 = "Part type attribute must be implicitly only when adding a part";
    goto LABEL_28;
  }

  pthread_mutex_unlock((v7 + 504));
  pthread_mutex_lock((v7 + 504));
  if (*(v7 + 196) <= a2)
  {
LABEL_10:
    pthread_mutex_unlock((v7 + 504));
    v12 = *(v7 + 72);
    v13 = "Part index (%d) out of range";
    v14 = v7;
    v15 = 4;
    return v12(v14, v15, v13);
  }

  if (*v7 == 3)
  {
    goto LABEL_19;
  }

  if (!*v7)
  {
    goto LABEL_9;
  }

  v16 = *(*(v7 + 472) + 8 * a2);
  v17 = *(v16 + 104);
  if (v17)
  {
    if (*(v17 + 20) != 19)
    {
      pthread_mutex_unlock((v7 + 504));
      return (*(v7 + 72))(v7, 6, "Invalid required attribute type '%s' for '%s'");
    }

    v18 = 1;
  }

  else
  {
    v24 = sub_29AB1DBB8(v7, (v16 + 8), "name", 19, 0, 0, (v16 + 104));
    v17 = *(v16 + 104);
    v18 = v24 == 0;
  }

  if (!*a3)
  {
    pthread_mutex_unlock((v7 + 504));
    v21 = *(v7 + 64);
    v22 = "Invalid string passed trying to set 'name'";
LABEL_28:

    return v21(v7, 3, v22);
  }

  v25 = strlen(a3);
  if (v25 >= 0x7FFFFFFF)
  {
    pthread_mutex_unlock((v7 + 504));
    v12 = *(v7 + 72);
    v13 = "String too large to store (%llu bytes) into 'name'";
    goto LABEL_26;
  }

  if (v18)
  {
    v26 = *(v17 + 24);
    if (*v26 == v25 && *(v26 + 4) >= 1)
    {
      memcpy(*(v26 + 8), a3, v25);
    }

    else
    {
      if (*v7 != 1)
      {
        pthread_mutex_unlock((v7 + 504));
        v12 = *(v7 + 72);
        v13 = "Existing string 'name' has length %d, requested %d, unable to change";
        goto LABEL_58;
      }

      sub_29AB1DDE8(v7, v26, a3, v25);
    }
  }

  return pthread_mutex_unlock((v7 + 504));
}

uint64_t sub_29AB16800(uint64_t a1, unsigned int a2, char *__s1, int a4)
{
  if (!__s1)
  {
LABEL_4:
    v20 = 0;
    if (a1)
    {
      pthread_mutex_lock((a1 + 504));
      if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
      }

      if (*a1 == 3)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 56))(a1, 21);
      }

      if (!*a1)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 56))(a1, 8);
      }

      v14 = *(*(a1 + 472) + 8 * a2);
      v15 = sub_29AB1DA70(a1, (v14 + 8), __s1, &v20);
      if (v15)
      {
        v13 = v15;
        if (v15 != 15)
        {
          goto LABEL_47;
        }

        if (*a1 != 1)
        {
          pthread_mutex_unlock((a1 + 504));
          return 15;
        }

        v13 = sub_29AB1DBB8(a1, (v14 + 8), __s1, 10, 0, 0, &v20);
        if (v13)
        {
LABEL_47:
          pthread_mutex_unlock((a1 + 504));
          return v13;
        }

        v16 = v20;
      }

      else
      {
        v16 = v20;
        if (*(v20 + 5) != 10)
        {
          pthread_mutex_unlock((a1 + 504));
          return (*(a1 + 72))(a1, 16, "'%s' requested type 'i', but stored attributes is type '%s'");
        }
      }

      v13 = 0;
      *(v16 + 6) = a4;
      goto LABEL_47;
    }

    return 2;
  }

  if (!strcmp(__s1, "version"))
  {

    return sub_29AB1948C(a1, a2, a4);
  }

  else
  {
    if (strcmp(__s1, "chunkCount"))
    {
      goto LABEL_4;
    }

    if (!a1)
    {
      return 2;
    }

    pthread_mutex_lock((a1 + 504));
    if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
    {
      pthread_mutex_unlock((a1 + 504));
      return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
    }

    if (*a1 == 3)
    {
      pthread_mutex_unlock((a1 + 504));
      v10 = *(a1 + 56);
      v11 = a1;
      v12 = 21;
    }

    else
    {
      if (*a1)
      {
        v17 = *(*(a1 + 472) + 8 * a2);
        v19 = (v17 + 128);
        v18 = *(v17 + 128);
        if (v18)
        {
          if (*(v18 + 20) != 10)
          {
            pthread_mutex_unlock((a1 + 504));
            return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
          }
        }

        else
        {
          v13 = sub_29AB1DBB8(a1, (v17 + 8), "chunkCount", 10, 0, 0, v19);
          if (v13)
          {
            goto LABEL_47;
          }

          v18 = *v19;
        }

        v13 = 0;
        *(v18 + 24) = a4;
        *(v17 + 244) = a4;
        goto LABEL_47;
      }

      pthread_mutex_unlock((a1 + 504));
      v10 = *(a1 + 56);
      v11 = a1;
      v12 = 8;
    }

    return v10(v11, v12);
  }
}

uint64_t nanoexr_attr_set_float(uint64_t result, unsigned int a2, char *__s1, float a4)
{
  v7 = result;
  if (!__s1)
  {
LABEL_4:
    v14 = 0;
    if (!v7)
    {
      return result;
    }

    pthread_mutex_lock((v7 + 504));
    if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
    {
      pthread_mutex_unlock((v7 + 504));
      return (*(v7 + 72))(v7, 4, "Part index (%d) out of range");
    }

    if (*v7 == 3)
    {
      pthread_mutex_unlock((v7 + 504));
      v8 = *(v7 + 56);
      v9 = v7;
      v10 = 21;
      goto LABEL_19;
    }

    if (!*v7)
    {
      pthread_mutex_unlock((v7 + 504));
      v8 = *(v7 + 56);
      v9 = v7;
      v10 = 8;
LABEL_19:

      return v8(v9, v10);
    }

    v11 = *(*(v7 + 472) + 8 * a2);
    v12 = sub_29AB1DA70(v7, (v11 + 8), __s1, &v14);
    if (v12)
    {
      if (v12 != 15 || *v7 != 1 || sub_29AB1DBB8(v7, (v11 + 8), __s1, 8, 0, 0, &v14))
      {
        return pthread_mutex_unlock((v7 + 504));
      }

      v13 = v14;
    }

    else
    {
      v13 = v14;
      if (*(v14 + 5) != 8)
      {
        pthread_mutex_unlock((v7 + 504));
        return (*(v7 + 72))(v7, 16, "'%s' requested type 'f', but stored attributes is type '%s'");
      }
    }

    *(v13 + 6) = a4;
    return pthread_mutex_unlock((v7 + 504));
  }

  if (!strcmp(__s1, "pixelAspectRatio"))
  {

    return sub_29AB1EAB8(v7, a2, a4);
  }

  else
  {
    result = strcmp(__s1, "screenWindowWidth");
    if (result)
    {
      goto LABEL_4;
    }

    return sub_29AB1EC40(v7, a2, a4);
  }
}

uint64_t nanoexr_attr_set_double(uint64_t result, unsigned int a2, char *a3, double a4)
{
  v14 = 0;
  if (!result)
  {
    return result;
  }

  v7 = result;
  pthread_mutex_lock((result + 504));
  if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
  {
    pthread_mutex_unlock((v7 + 504));
    return (*(v7 + 72))(v7, 4, "Part index (%d) out of range");
  }

  if (*v7 == 3)
  {
    pthread_mutex_unlock((v7 + 504));
    v8 = *(v7 + 56);
    v9 = v7;
    v10 = 21;
    goto LABEL_10;
  }

  if (*v7)
  {
    v11 = *(*(v7 + 472) + 8 * a2);
    v12 = sub_29AB1DA70(v7, (v11 + 8), a3, &v14);
    if (v12)
    {
      if (v12 != 15 || *v7 != 1 || sub_29AB1DBB8(v7, (v11 + 8), a3, 6, 0, 0, &v14))
      {
        return pthread_mutex_unlock((v7 + 504));
      }

      v13 = v14;
    }

    else
    {
      v13 = v14;
      if (*(v14 + 5) != 6)
      {
        pthread_mutex_unlock((v7 + 504));
        return (*(v7 + 72))(v7, 16, "'%s' requested type 'd', but stored attributes is type '%s'");
      }
    }

    *(v13 + 3) = a4;
    return pthread_mutex_unlock((v7 + 504));
  }

  pthread_mutex_unlock((v7 + 504));
  v8 = *(v7 + 56);
  v9 = v7;
  v10 = 8;
LABEL_10:

  return v8(v9, v10);
}

uint64_t nanoexr_attr_set_m44f(uint64_t result, unsigned int a2, char *a3, __int128 *a4)
{
  v19 = 0;
  if (!result)
  {
    return result;
  }

  v7 = result;
  pthread_mutex_lock((result + 504));
  if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
  {
    pthread_mutex_unlock((v7 + 504));
    return (*(v7 + 72))(v7, 4, "Part index (%d) out of range");
  }

  if (*v7 == 3)
  {
    pthread_mutex_unlock((v7 + 504));
    v8 = *(v7 + 56);
    v9 = v7;
    v10 = 21;
    goto LABEL_10;
  }

  if (*v7)
  {
    v11 = *(*(v7 + 472) + 8 * a2);
    v12 = sub_29AB1DA70(v7, (v11 + 8), a3, &v19);
    if (v12)
    {
      if (v12 != 15 || *v7 != 1)
      {
        return pthread_mutex_unlock((v7 + 504));
      }

      v13 = sub_29AB1DBB8(v7, (v11 + 8), a3, 15, 0, 0, &v19);
      if (a4)
      {
        if (v13)
        {
          return pthread_mutex_unlock((v7 + 504));
        }

        v14 = v19;
LABEL_21:
        v15 = v14[3];
        v16 = *a4;
        v17 = a4[1];
        v18 = a4[3];
        *(v15 + 2) = a4[2];
        *(v15 + 3) = v18;
        *v15 = v16;
        *(v15 + 1) = v17;
        return pthread_mutex_unlock((v7 + 504));
      }
    }

    else
    {
      v14 = v19;
      if (*(v19 + 5) != 15)
      {
        pthread_mutex_unlock((v7 + 504));
        return (*(v7 + 72))(v7, 16, "'%s' requested type 'm44f', but stored attributes is type '%s'");
      }

      if (a4)
      {
        goto LABEL_21;
      }
    }

    pthread_mutex_unlock((v7 + 504));
    return (*(v7 + 72))(v7, 3, "No input value for setting '%s', type '%s'");
  }

  pthread_mutex_unlock((v7 + 504));
  v8 = *(v7 + 56);
  v9 = v7;
  v10 = 8;
LABEL_10:

  return v8(v9, v10);
}

uint64_t nanoexr_attr_set_m44d(uint64_t result, unsigned int a2, char *a3, __int128 *a4)
{
  v22 = 0;
  if (!result)
  {
    return result;
  }

  v7 = result;
  pthread_mutex_lock((result + 504));
  if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
  {
    pthread_mutex_unlock((v7 + 504));
    return (*(v7 + 72))(v7, 4, "Part index (%d) out of range");
  }

  if (*v7 == 3)
  {
    pthread_mutex_unlock((v7 + 504));
    v8 = *(v7 + 56);
    v9 = v7;
    v10 = 21;
    goto LABEL_10;
  }

  if (*v7)
  {
    v11 = *(*(v7 + 472) + 8 * a2);
    v12 = sub_29AB1DA70(v7, (v11 + 8), a3, &v22);
    if (v12)
    {
      if (v12 != 15 || *v7 != 1)
      {
        return pthread_mutex_unlock((v7 + 504));
      }

      v13 = sub_29AB1DBB8(v7, (v11 + 8), a3, 16, 0, 0, &v22);
      if (a4)
      {
        if (v13)
        {
          return pthread_mutex_unlock((v7 + 504));
        }

        v14 = v22;
LABEL_21:
        v15 = v14[3];
        v16 = *a4;
        v17 = a4[1];
        v18 = a4[3];
        *(v15 + 2) = a4[2];
        *(v15 + 3) = v18;
        *v15 = v16;
        *(v15 + 1) = v17;
        v19 = a4[4];
        v20 = a4[5];
        v21 = a4[7];
        *(v15 + 6) = a4[6];
        *(v15 + 7) = v21;
        *(v15 + 4) = v19;
        *(v15 + 5) = v20;
        return pthread_mutex_unlock((v7 + 504));
      }
    }

    else
    {
      v14 = v22;
      if (*(v22 + 5) != 16)
      {
        pthread_mutex_unlock((v7 + 504));
        return (*(v7 + 72))(v7, 16, "'%s' requested type 'm44d', but stored attributes is type '%s'");
      }

      if (a4)
      {
        goto LABEL_21;
      }
    }

    pthread_mutex_unlock((v7 + 504));
    return (*(v7 + 72))(v7, 3, "No input value for setting '%s', type '%s'");
  }

  pthread_mutex_unlock((v7 + 504));
  v8 = *(v7 + 56);
  v9 = v7;
  v10 = 8;
LABEL_10:

  return v8(v9, v10);
}

char *nanoexr_get_error_code_as_string(unsigned int a1)
{
  if (a1 >= 0x20)
  {
    v1 = 32;
  }

  else
  {
    v1 = a1;
  }

  return off_29F296148[v1];
}

uint64_t nanoexr_Gaussian_resample(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != 2 && *(a2 + 16) != 2)
  {
    return 0;
  }

  v4 = *(a1 + 20);
  if (v4 == *(a2 + 20))
  {
    v6 = *(a1 + 24);
    v5 = *(a1 + 28);
    v7 = *(a2 + 24);
    v8 = *(a2 + 28);
    if (v6 == v7 && v5 == v8)
    {
      memcpy(*a2, *a1, 4 * v6 * v4 * v5);
      return 1;
    }

    v10 = v7 / v6;
    LODWORD(v2) = vcvtps_s32_f32(sqrtf(((v10 * 0.5) * ((v10 * 0.5) * -2.0)) * -5.2983));
    if (v2)
    {
      v60 = *(a2 + 24);
      v11 = *a1;
      v12 = *a2;
      v59 = *(a2 + 28);
      v13 = v8 / v5;
      v14 = v13 * 0.5;
      v15 = (v2 + 1);
      v16 = malloc(8 * v15);
      v17 = v16;
      if ((v2 & 0x80000000) == 0)
      {
        v3 = 0;
        v18 = &v16[v2];
        v19 = 0.0;
        do
        {
          v20 = sub_29AB17734(v3, v10 * 0.5);
          v18[v3] = v20;
          if (v3)
          {
            v19 = v19 + (v20 * 2.0);
          }

          else
          {
            v19 = v20;
          }

          ++v3;
        }

        while (v15 != v3);
        do
        {
          *v18 = *v18 / v19;
          ++v18;
          --v15;
        }

        while (v15);
        v21 = &v17[v2 + 1];
        v22 = v2;
        do
        {
          v23 = *v21++;
          v17[--v22] = v23;
        }

        while (v22 * 4);
      }

      LODWORD(v3) = vcvtps_s32_f32(sqrtf((v14 * (v14 * -2.0)) * -5.2983));
      if (v3)
      {
        v24 = malloc(8 * (v3 + 1));
        v25 = v24;
        if ((v3 & 0x80000000) == 0)
        {
          v26 = 0;
          v27 = 0.0;
          v61 = &v24[v3];
          do
          {
            v28 = sub_29AB17734(v26, v14);
            v29 = v61;
            v61[v26] = v28;
            if (v26)
            {
              v27 = v27 + (v28 * 2.0);
            }

            else
            {
              v27 = v28;
            }

            ++v26;
          }

          while (v3 + 1 != v26);
          v30 = (v3 + 1);
          do
          {
            *v29 = *v29 / v27;
            ++v29;
            --v30;
          }

          while (v30);
          v31 = &v25[v3 + 1];
          v32 = v3;
          do
          {
            v33 = *v31++;
            v25[--v32] = v33;
          }

          while (v32 * 4);
        }

        v34 = malloc(4 * v60 * v4 * v5);
        if (v5 >= 1)
        {
          v35 = 0;
          v36 = -v2;
          do
          {
            if (v60 >= 1)
            {
              for (i = 0; i != v60; ++i)
              {
                if (v4 >= 1)
                {
                  v38 = 0;
                  v39 = ((i + 0.5) / v10) + -0.5;
                  v40 = v4 * (v36 + v39);
                  v41 = v39 - v2;
                  do
                  {
                    v42 = 0.0;
                    if ((v2 & 0x80000000) == 0)
                    {
                      v43 = ((2 * v2) & ~((2 * v2) >> 31)) + 1;
                      v44 = v41;
                      v45 = v40;
                      v46 = v17;
                      do
                      {
                        if ((v44 & 0x80000000) == 0 && v44 < v6)
                        {
                          v42 = v42 + (v11[v45] * *v46);
                        }

                        ++v46;
                        v45 += v4;
                        ++v44;
                        --v43;
                      }

                      while (v43);
                    }

                    v34[(v60 * v4 * v35) + i * v4 + v38++] = v42;
                    ++v40;
                  }

                  while (v38 != v4);
                }
              }
            }

            ++v35;
            v36 += v6;
          }

          while (v35 != v5);
        }

        if (v59 >= 1)
        {
          v47 = 0;
          v48 = v60 * v4;
          do
          {
            if (v60 >= 1)
            {
              v49 = 0;
              v50 = v48 * ((((v47 + 0.5) / v13) + -0.5) - v3);
              do
              {
                if (v4 >= 1)
                {
                  v51 = 0;
                  v52 = v50;
                  do
                  {
                    v53 = 0.0;
                    if ((v3 & 0x80000000) == 0)
                    {
                      v54 = ((2 * v3) & ~((2 * v3) >> 31)) + 1;
                      v55 = (((v47 + 0.5) / v13) + -0.5) - v3;
                      v56 = v52;
                      v57 = v25;
                      do
                      {
                        if ((v55 & 0x80000000) == 0 && v55 < v5)
                        {
                          v53 = v53 + (v34[v56] * *v57);
                        }

                        ++v57;
                        v56 += v48;
                        ++v55;
                        --v54;
                      }

                      while (v54);
                    }

                    v12[((v49 + v47 * v60) * v4 + v51++)] = v53;
                    ++v52;
                  }

                  while (v51 != v4);
                }

                ++v49;
                v50 += v4;
              }

              while (v49 != v60);
            }

            ++v47;
          }

          while (v47 != v59);
        }

        free(v25);
        free(v17);
        free(v34);
        return 1;
      }

      free(v17);
    }
  }

  return 0;
}

float sub_29AB17734(float a1, float a2)
{
  v4 = erf((((a1 + -0.5) / a2) * 0.70711));
  v5 = erf((((a1 + 0.5) / a2) * 0.70711));
  return (v5 - v4) * 0.5;
}

double nanoexr_set_defaults(const char *a1, uint64_t a2)
{
  *(a2 + 44) = 0x200000003;
  *(a2 + 52) = 0;
  *(a2 + 56) = "";
  *a2 = strdup(a1);
  *&result = 0x300000000;
  *(a2 + 12) = xmmword_29B4E1820;
  *(a2 + 8) = 0;
  *(a2 + 40) = 0;
  *(a2 + 32) = 0;
  *(a2 + 28) = 0;
  return result;
}

void nanoexr_free_storage(void **a1)
{
  if (a1)
  {
    free(*a1);
  }
}

uint64_t nanoexr_read_header(int32x2_t *a1, unint64_t a2, void (*a3)(uint64_t, unsigned __int8 *), uint64_t a4, unsigned int a5)
{
  if (!a1)
  {
    return 3;
  }

  v33 = 0;
  v27 = 0;
  v31 = 0u;
  v30 = 0u;
  v26 = 0u;
  v25 = 104;
  v32 = 0xBF800000FFFFFFFELL;
  v28 = a4;
  v29 = a2;
  v9 = sub_29AB17A54(&v33, *a1, &v25);
  if (v9)
  {
    goto LABEL_5;
  }

  v24 = 0uLL;
  v9 = sub_29AB17EA0(v33, a5, &v24);
  if (v9)
  {
    goto LABEL_5;
  }

  a1[1].i32[1] = a5;
  a1[3] = vadd_s32(vsub_s32(*(&v24 + 8), *&v24), 0x100000001);
  v23 = 0;
  v9 = sub_29AB18018(v33, a5, &v23);
  if (v9)
  {
    goto LABEL_5;
  }

  v14 = v23;
  a1[1].i8[0] = v23 == 0;
  v15 = 1;
  v21 = 1;
  v22 = 1;
  if (!v14)
  {
    v22 = 1;
    goto LABEL_14;
  }

  v9 = sub_29AB18110(v33, a5, &v22, &v21);
  if (!v9)
  {
    v15 = v21;
    if (v22 != v21)
    {
      v15 = 1;
      v21 = 1;
      v22 = 1;
    }

LABEL_14:
    a1[5].i32[0] = v15;
    v20 = 0;
    v12 = sub_29AB182B4(v33, a5, &v20);
    if (v12)
    {
      goto LABEL_6;
    }

    v16 = *v20;
    a1[2].i32[0] = *(*(v20 + 8) + 16);
    a1[2].i32[1] = v16;
    v19 = 0;
    if (!sub_29AB18428(v33, a5, &v19) && v19)
    {
      v17 = *(*(v19 + 24) + 8);
      if (!strncmp("black", v17, 5uLL))
      {
        v18 = 4;
      }

      else if (!strncmp("clamp", v17, 5uLL))
      {
        v18 = 0;
      }

      else if (!strncmp("periodic", v17, 8uLL))
      {
        v18 = 2;
      }

      else
      {
        if (strncmp("mirror", v17, 6uLL))
        {
          goto LABEL_26;
        }

        v18 = 3;
      }

      a1[4].i32[1] = v18;
    }

LABEL_26:
    if (a3)
    {
      a3(a4, v33);
    }

    goto LABEL_6;
  }

LABEL_5:
  v12 = v9;
LABEL_6:
  sub_29AB17CA8(&v33, v10, v11);
  return v12;
}

uint64_t sub_29AB17A54(uint64_t *a1, char *a2, uint64_t a3)
{
  v28 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v24 = 0u;
  v23 = 0u;
  v22 = 104;
  v27 = 0xBF800000FFFFFFFELL;
  if (a3)
  {
    v5 = *(a3 + 8);
    v6 = *(a3 + 16);
    v7 = *a3;
    *&v23 = v5;
    *(&v23 + 1) = v6;
    v8 = *(a3 + 24);
    v24 = v8;
    *(&v25[1] + 1) = *(a3 + 64);
    v9 = *(a3 + 40);
    *&v25[0] = v9;
    v10 = *(a3 + 48);
    *(v25 + 8) = v10;
    v26 = *(a3 + 72);
    if (v7 < 0x60 || (*&v27 = *(a3 + 88), v7 < 0x68))
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v11 = *(a3 + 96);
      DWORD2(v27) = v11;
    }

    v12 = v8;
    v13 = v10;
    if (v5)
    {
      if (v6)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
    v13 = 0;
    v9 = 0;
    v6 = 0;
    v12 = 0;
  }

  v5 = sub_29AB20F3C;
  *&v23 = sub_29AB20F3C;
  if (v6)
  {
LABEL_8:
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_19:
    *&v24 = sub_29AB21010;
    if (a1)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_18:
  *(&v23 + 1) = j__malloc;
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  if (a1)
  {
LABEL_10:
    if (!a2 || !*a2)
    {
      if ((v11 & 2) != 0)
      {
        v15 = 0;
        v16 = 3;
      }

      else
      {
        v16 = 3;
        (v5)(0, 3, "Invalid filename passed to start_read function");
        v15 = 0;
      }

      goto LABEL_34;
    }

    v14 = sub_29AB1EDC8(&v28, &v22, 0);
    v15 = v28;
    if (v14)
    {
      v16 = 1;
LABEL_34:
      *a1 = v15;
      return v16;
    }

    *(v28 + 40) = sub_29AB1EFB8;
    v17 = sub_29AB1F0B4(v15, v15 + 8, a2);
    if (v17)
    {
      goto LABEL_25;
    }

    if (v9)
    {
      if (!v13)
      {
        v20 = -1;
        goto LABEL_32;
      }
    }

    else
    {
      v17 = sub_29AB1F1C0(v15);
      if (v17)
      {
LABEL_25:
        v16 = v17;
        goto LABEL_33;
      }

      v13 = sub_29AB1F164;
    }

    v20 = v13(v15, *(v15 + 136));
LABEL_32:
    *(v15 + 152) = v20;
    v16 = sub_29AB1F258(v15);
    if (!v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_29AB17CA8(&v28, v18, v19);
    v15 = v28;
    goto LABEL_34;
  }

LABEL_20:
  v16 = 3;
  if ((v11 & 2) == 0)
  {
    (v5)(0, 3, "Invalid context handle passed to start_read function");
  }

  return v16;
}

uint64_t sub_29AB17CA8(uint64_t *a1, uint64_t a2, std::error_code *a3)
{
  if (a1)
  {
    v4 = *a1;
    if (!*a1)
    {
      v11 = 0;
LABEL_32:
      *a1 = 0;
      return v11;
    }

    v5 = *v4 - 1;
    v6 = (v5 & 0xFD) == 0;
    if (*v4)
    {
      if ((v5 & 0xFD) != 0)
      {
        v7 = *(v4 + 32);
        if (v7)
        {
          rename(v7, *(v4 + 16), a3);
          if (v8 < 0)
          {
            v9 = *(v4 + 72);
            v10 = strerror(0);
            v11 = v9(v4, 5, "Unable to rename temporary file: %s", v10);
LABEL_15:
            v13 = *(v4 + 144);
            if (v13)
            {
              v13(*a1, *(v4 + 136), v6);
            }

            v14 = *(v4 + 96);
            if (*(v4 + 16) && *(v4 + 12) >= 1)
            {
              v14();
            }

            *(v4 + 8) = 0;
            *(v4 + 16) = 0;
            if (*(v4 + 32) && *(v4 + 28) >= 1)
            {
              (*(v4 + 96))();
            }

            *(v4 + 24) = 0;
            *(v4 + 32) = 0;
            sub_29AB24380(v4, (v4 + 480));
            if (*(v4 + 196) >= 1)
            {
              v15 = 0;
              v16 = *(v4 + 96);
              do
              {
                v17 = *(*(v4 + 472) + 8 * v15);
                sub_29AB24400(v4, v17);
                if (v17 == v4 + 200)
                {
                  *(v17 + 256) = 0;
                  *(v17 + 224) = 0u;
                  *(v17 + 240) = 0u;
                  *(v17 + 192) = 0u;
                  *(v17 + 208) = 0u;
                  *(v17 + 160) = 0u;
                  *(v17 + 176) = 0u;
                  *(v17 + 128) = 0u;
                  *(v17 + 144) = 0u;
                  *(v17 + 96) = 0u;
                  *(v17 + 112) = 0u;
                  *(v17 + 64) = 0u;
                  *(v17 + 80) = 0u;
                  *(v17 + 32) = 0u;
                  *(v17 + 48) = 0u;
                  *v17 = 0u;
                  *(v17 + 16) = 0u;
                }

                else
                {
                  v16(v17);
                }

                ++v15;
                v18 = *(v4 + 196);
              }

              while (v15 < v18);
              if (v18 > 1)
              {
                v16(*(v4 + 472));
              }
            }

            *(v4 + 472) = 0;
            *(v4 + 196) = 0;
            pthread_mutex_destroy((v4 + 504));
            (v14)(v4);
            goto LABEL_32;
          }
        }
      }

      else if (*(v4 + 144) == sub_29AB2133C)
      {
        v12 = *(v4 + 32);
        if (!v12)
        {
          v12 = *(v4 + 16);
        }

        unlink(v12);
      }
    }

    v11 = 0;
    goto LABEL_15;
  }

  return 2;
}

uint64_t sub_29AB17EA0(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  else if (a3)
  {
    v6 = *(*(a1 + 472) + 8 * a2);
    v7 = *(v6 + 48);
    if (v7)
    {
      if (*(v7 + 20) == 1)
      {
        *a3 = **(v7 + 24);
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
          v7 = *(v6 + 48);
        }

        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'", *(v7 + 8), "dataWindow");
      }
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 15;
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 3, "NULL output for '%s'");
  }
}

uint64_t sub_29AB18018(unsigned __int8 *a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *a1;
    if (*(a1 + 49) > a2)
    {
      v7 = *(*(*(a1 + 59) + 8 * a2) + 4);
      if (v6 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      if (a3)
      {
        result = 0;
        *a3 = v7;
      }

      else
      {
        v9 = *(a1 + 7);

        return v9(a1, 3);
      }

      return result;
    }
  }

  if (v6 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  return (*(a1 + 9))(a1, 4, "Part index (%d) out of range", a2);
}

uint64_t sub_29AB18110(uint64_t a1, unsigned int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  else
  {
    v8 = *(*(a1 + 472) + 8 * a2);
    if ((*(v8 + 4) | 2) == 3)
    {
      if (*(v8 + 96) && (v9 = *(v8 + 192), v9 >= 1) && *(v8 + 196) >= 1 && *(v8 + 200) && *(v8 + 208))
      {
        if (a3)
        {
          *a3 = v9;
        }

        if (a4)
        {
          *a4 = *(v8 + 196);
        }

        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        v11 = *(a1 + 72);

        return v11(a1, 13, "Tile data missing or corrupt");
      }
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v12 = *(a1 + 56);

      return v12(a1, 19);
    }
  }
}

uint64_t sub_29AB182B4(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  else if (a3)
  {
    v6 = *(*(a1 + 472) + 8 * a2);
    v7 = *(v6 + 32);
    if (v7)
    {
      if (*(v7 + 20) == 3)
      {
        *a3 = *(v7 + 24);
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
          v7 = *(v6 + 32);
        }

        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'", *(v7 + 8), "channels");
      }
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 15;
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 3, "NULL output for '%s'");
  }
}

uint64_t sub_29AB18428(uint64_t a1, unsigned int a2, void *a3)
{
  v9 = 0;
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  else
  {
    if (a3)
    {
      v6 = sub_29AB1DA70(a1, (*(*(a1 + 472) + 8 * a2) + 8), "wrapmodes", &v9);
      if (!v6)
      {
        *a3 = v9;
      }

      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return v6;
    }

    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v8 = *(a1 + 56);

    return v8(a1, 3);
  }
}

uint64_t nanoexr_write_exr(char *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, int a4, int a5, int a6, unsigned int a7, uint64_t a8, int a9, int a10, uint64_t a11, int a12, int a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, int a19)
{
  v19 = a8 != 0;
  if (a11)
  {
    ++v19;
  }

  if (a14)
  {
    ++v19;
  }

  if (a17)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = v19;
  }

  if (!v20)
  {
    return 3;
  }

  v136[0] = 0;
  v135 = 0;
  *v97 = 0;
  *&v101 = 104;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  *&v106 = 0;
  *(&v106 + 1) = 0xBF800000FFFFFFFELL;
  *&v107 = 0;
  *(&v101 + 1) = sub_29AB20F3C;
  *&v102 = j__malloc;
  *(&v102 + 1) = sub_29AB21010;
  if (!a1 || !*a1)
  {
    v25 = 3;
    sub_29AB20F3C(0);
    return v25;
  }

  v25 = 1;
  if (!sub_29AB1EDC8(v97, &v101, 1))
  {
    v88 = a6;
    v26 = *v97;
    *(*v97 + 48) = sub_29AB2447C;
    v27 = sub_29AB1F0B4(v26, v26 + 8, a1);
    if (v27)
    {
LABEL_13:
      v25 = v27;
      sub_29AB17CA8(v97, v28, v29);
      return v25;
    }

    v31 = *(v26 + 136);
    v32 = *(v26 + 32);
    if (!v32)
    {
      v32 = *(v26 + 16);
    }

    *v31 = -1;
    *(v26 + 144) = sub_29AB2133C;
    *(v26 + 168) = sub_29AB24540;
    v33 = open(v32, 16778753, 438);
    v87 = v26;
    if (v33 < 0)
    {
      v37 = *(v26 + 72);
      v38 = __error();
      v39 = strerror(*v38);
      v27 = v37(v26, 5, "Unable to open file for write: %s", v39);
      if (v27)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *v31 = v33;
    }

    v34 = v26;
    v135 = v26;
    *&v101 = 0;
    pthread_mutex_lock((v26 + 504));
    if (*v26 != 1)
    {
      pthread_mutex_unlock((v26 + 504));
      v25 = (*(v26 + 56))(v26, 8);
      if (v25)
      {
        return v25;
      }

      goto LABEL_27;
    }

    v25 = sub_29AB211CC(v26, &v101, v136);
    if (v25)
    {
LABEL_25:
      pthread_mutex_unlock((v34 + 504));
      return v25;
    }

    v35 = v101;
    *(v101 + 4) = 0;
    v36 = sub_29AB22470(v26, (v35 + 8), "type", 19, 0, 0, (v35 + 112));
    if (v36)
    {
LABEL_24:
      v25 = v36;
      v34 = v26;
      sub_29AB2466C(v26, &v101, v136);
      goto LABEL_25;
    }

    v41 = *(*(v101 + 112) + 24);
    if (v41)
    {
      *v41 = 13;
      v41[1] = "scanlineimage";
    }

    else
    {
      v36 = (*(v26 + 64))(v26, 3, "Invalid reference to string object to initialize");
      if (v36)
      {
        goto LABEL_24;
      }
    }

    v42 = sub_29AB22470(v26, (v101 + 8), "name", 19, 0, 0, (v101 + 104));
    if (v42 || (v42 = sub_29AB1DD34(v26, *(*(v101 + 104) + 24), "beauty", 6), v42))
    {
      v25 = v42;
      v43 = v26;
      sub_29AB2466C(v26, &v101, v136);
    }

    else
    {
      v43 = v26;
      if (*(v26 + 196) >= 2)
      {
        *(v26 + 5) = 1;
      }

      v25 = 0;
      *(v26 + 3) = 0;
    }

    pthread_mutex_unlock((v43 + 504));
    if (!v25)
    {
LABEL_27:
      pthread_mutex_lock((v26 + 504));
      if (*v26 == 1)
      {
        *(v26 + 2) = -1;
        pthread_mutex_unlock((v26 + 504));
      }

      else
      {
        pthread_mutex_unlock((v26 + 504));
        (*(v26 + 56))(v26, 8);
      }

      pthread_mutex_lock((v26 + 504));
      if (*(v26 + 196) <= 0)
      {
        pthread_mutex_unlock((v26 + 504));
        v40 = (*(v26 + 72))(v26, 4, "Part index (%d) out of range", 0);
      }

      else
      {
        if (*v26 == 1)
        {
          *(**(v26 + 472) + 184) = 4;
          pthread_mutex_unlock((v26 + 504));
          goto LABEL_45;
        }

        pthread_mutex_unlock((v26 + 504));
        v40 = (*(v26 + 56))(v26, 8);
      }

      v25 = v40;
      if (v40)
      {
        return v25;
      }

LABEL_45:
      v134 = 0x3F0000003F000000;
      v44 = v136[0];
      pthread_mutex_lock((v26 + 504));
      if ((v44 & 0x80000000) != 0 || *(v26 + 196) <= v44)
      {
        pthread_mutex_unlock((v26 + 504));
        v45 = (*(v26 + 72))(v26, 4, "Part index (%d) out of range");
        goto LABEL_54;
      }

      if (*v26 == 3)
      {
        pthread_mutex_unlock((v26 + 504));
        v45 = (*(v26 + 56))(v26, 21);
        goto LABEL_54;
      }

      if (!*v26)
      {
        pthread_mutex_unlock((v26 + 504));
        v45 = (*(v26 + 56))(v26, 8);
        goto LABEL_54;
      }

      v47 = *(*(v26 + 472) + 8 * v44);
      v48 = *(v47 + 40);
      if (v48)
      {
        if (*(v48 + 20) != 5)
        {
          pthread_mutex_unlock((v26 + 504));
          v45 = (*(v26 + 72))(v26, 6, "Invalid required attribute type '%s' for '%s'");
LABEL_54:
          v25 = v45;
          if (v45)
          {
            return v25;
          }

LABEL_55:
          v84 = a5 - 1;
          v81 = a4 - 1;
          pthread_mutex_lock((v87 + 504));
          if ((v44 & 0x80000000) != 0 || *(v87 + 196) <= v44)
          {
            pthread_mutex_unlock((v87 + 504));
            v46 = (*(v87 + 72))(v87, 4, "Part index (%d) out of range");
            goto LABEL_68;
          }

          if (*v87 == 3)
          {
            pthread_mutex_unlock((v87 + 504));
            v46 = (*(v87 + 56))(v87, 21);
            goto LABEL_68;
          }

          if (!*v87)
          {
            pthread_mutex_unlock((v87 + 504));
            v46 = (*(v87 + 56))(v87, 8);
            goto LABEL_68;
          }

          v50 = *(*(v87 + 472) + 8 * v44);
          v51 = *(v50 + 48);
          if (v51)
          {
            if (*(v51 + 20) != 1)
            {
              pthread_mutex_unlock((v87 + 504));
              v46 = (*(v87 + 72))(v87, 6, "Invalid required attribute type '%s' for '%s'");
LABEL_68:
              v25 = v46;
              if (v46)
              {
                return v25;
              }

LABEL_69:
              pthread_mutex_lock((v87 + 504));
              if ((v44 & 0x80000000) != 0 || *(v87 + 196) <= v44)
              {
                pthread_mutex_unlock((v87 + 504));
                v49 = (*(v87 + 72))(v87, 4, "Part index (%d) out of range");
                goto LABEL_84;
              }

              if (*v87 == 3)
              {
                pthread_mutex_unlock((v87 + 504));
                v49 = (*(v87 + 56))(v87, 21);
                goto LABEL_84;
              }

              if (!*v87)
              {
                pthread_mutex_unlock((v87 + 504));
                v49 = (*(v87 + 56))(v87, 8);
                goto LABEL_84;
              }

              v54 = *(*(v87 + 472) + 8 * v44);
              v55 = *(v54 + 56);
              v78 = (v54 + 56);
              if (v55)
              {
                if (*(v55 + 20) != 1)
                {
                  pthread_mutex_unlock((v87 + 504));
                  v49 = (*(v87 + 72))(v87, 6, "Invalid required attribute type '%s' for '%s'");
LABEL_84:
                  v25 = v49;
                  if (v49)
                  {
                    return v25;
                  }

LABEL_85:
                  pthread_mutex_lock((v87 + 504));
                  if ((v44 & 0x80000000) != 0 || *(v87 + 196) <= v44)
                  {
                    pthread_mutex_unlock((v87 + 504));
                    v53 = (*(v87 + 72))(v87, 4, "Part index (%d) out of range");
                    goto LABEL_100;
                  }

                  if (*v87 == 3)
                  {
                    pthread_mutex_unlock((v87 + 504));
                    v53 = (*(v87 + 56))(v87, 21);
                    goto LABEL_100;
                  }

                  if (!*v87)
                  {
                    pthread_mutex_unlock((v87 + 504));
                    v53 = (*(v87 + 56))(v87, 8);
                    goto LABEL_100;
                  }

                  v58 = *(*(v87 + 472) + 8 * v44);
                  v59 = *(v58 + 64);
                  v82 = (v58 + 64);
                  if (v59)
                  {
                    if (*(v59 + 20) != 12)
                    {
                      pthread_mutex_unlock((v87 + 504));
                      v53 = (*(v87 + 72))(v87, 6, "Invalid required attribute type '%s' for '%s'");
LABEL_100:
                      v25 = v53;
                      if (v53)
                      {
                        return v25;
                      }

                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v25 = sub_29AB1DBB8(v87, (v58 + 8), "lineOrder", 12, 0, 0, v82);
                    if (v25)
                    {
                      goto LABEL_116;
                    }

                    v59 = *v82;
                  }

                  v25 = 0;
                  *(v59 + 24) = 0;
                  *(v58 + 180) = 0;
LABEL_116:
                  pthread_mutex_unlock((v87 + 504));
                  if (v25)
                  {
                    return v25;
                  }

LABEL_101:
                  v57 = sub_29AB1EAB8(v87, v44, 1.0);
                  if (!v57)
                  {
                    v57 = sub_29AB2474C(v87, v44, &v134);
                    if (!v57)
                    {
                      v57 = sub_29AB1EC40(v87, v44, 1.0);
                      if (!v57)
                      {
                        if (!a17 || (v57 = sub_29AB192F0(v87, v136[0], "A", a7), !v57))
                        {
                          if (!a14 || (v57 = sub_29AB192F0(v87, v136[0], "B", a7), !v57))
                          {
                            if (!a11 || (v57 = sub_29AB192F0(v87, v136[0], "G", a7), !v57))
                            {
                              if (!a8 || (v57 = sub_29AB192F0(v87, v136[0], "R", a7), !v57))
                              {
                                sub_29AB1948C(v87, v136[0], 1);
                                v133[0] = xmmword_29B6818F0;
                                v133[1] = unk_29B681900;
                                v57 = sub_29AB19618(v87, v136[0], v133);
                                if (!v57)
                                {
                                  if (a2)
                                  {
                                    a2(a3, v87);
                                  }

                                  v57 = sub_29AB1981C(v87);
                                  if (!v57)
                                  {
                                    v132 = 0;
                                    v130 = 0u;
                                    v131 = 0u;
                                    v128 = 0u;
                                    v129 = 0u;
                                    v126 = 0u;
                                    v127 = 0u;
                                    v124 = 0u;
                                    v125 = 0u;
                                    v122 = 0u;
                                    v123 = 0u;
                                    v120 = 0u;
                                    v121 = 0u;
                                    v118 = 0u;
                                    v119 = 0u;
                                    v116 = 0u;
                                    v117 = 0u;
                                    v114 = 0u;
                                    v115 = 0u;
                                    v112 = 0u;
                                    v113 = 0u;
                                    v110 = 0u;
                                    v111 = 0u;
                                    v108 = 0u;
                                    v109 = 0u;
                                    v106 = 0u;
                                    v107 = 0u;
                                    v105 = 0u;
                                    v103 = 0u;
                                    v104 = 0u;
                                    v101 = 0u;
                                    v102 = 0u;
                                    v99 = 0u;
                                    v100 = 0u;
                                    *v97 = 0u;
                                    v98 = 0u;
                                    v96 = 0;
                                    sub_29AB19CBC(v87, v136[0], &v96);
                                    v91 = a11;
                                    v93 = a8;
                                    v61 = a14;
                                    v62 = a17;
                                    if (v88)
                                    {
                                      v91 = a11 + v84 * a13;
                                      v93 = a8 + v84 * a10;
                                      v61 = a14 + v84 * a16;
                                      v62 = a17 + v84 * a19;
                                    }

                                    if (a5 < 1)
                                    {
LABEL_163:
                                      v57 = sub_29AB1AA10(v87, &v101);
                                      if (!v57)
                                      {
                                        return sub_29AB17CA8(&v135, v75, v76);
                                      }
                                    }

                                    else
                                    {
                                      v63 = 0;
                                      v64 = a10;
                                      v65 = v88 == 0;
                                      if (v88)
                                      {
                                        v64 = -a10;
                                      }

                                      v89 = v64;
                                      if (v65)
                                      {
                                        v66 = a13;
                                      }

                                      else
                                      {
                                        v66 = -a13;
                                      }

                                      v86 = v66;
                                      if (v65)
                                      {
                                        v67 = a16;
                                      }

                                      else
                                      {
                                        v67 = -a16;
                                      }

                                      v83 = v67;
                                      if (v65)
                                      {
                                        v68 = a19;
                                      }

                                      else
                                      {
                                        v68 = -a19;
                                      }

                                      v80 = v68;
                                      v69 = 1;
                                      while (1)
                                      {
                                        v57 = sub_29AB19DF4(v87, v136[0], v63, v97);
                                        if (v57)
                                        {
                                          break;
                                        }

                                        if (v69)
                                        {
                                          v57 = sub_29AB1A054(v87, v136[0], v97, &v101);
                                          if (v57)
                                          {
                                            return v57;
                                          }
                                        }

                                        else
                                        {
                                          sub_29AB1A22C(v87, v136[0], v97, &v101);
                                        }

                                        WORD4(v101) = v20;
                                        if (a17)
                                        {
                                          v70 = v101;
                                          *(v101 + 32) = a18;
                                          *(v70 + 36) = a19;
                                          *(v70 + 8) = v96;
                                          *(v70 + 12) = a4;
                                          *(v70 + 40) = v62;
                                          v71 = 1;
                                        }

                                        else
                                        {
                                          v71 = 0;
                                        }

                                        if (a14)
                                        {
                                          v72 = v101 + 48 * v71;
                                          *(v72 + 32) = a15;
                                          *(v72 + 36) = a16;
                                          *(v72 + 8) = v96;
                                          *(v72 + 12) = a4;
                                          *(v72 + 40) = v61;
                                          ++v71;
                                        }

                                        if (a11)
                                        {
                                          v73 = v101 + 48 * v71;
                                          *(v73 + 32) = a12;
                                          *(v73 + 36) = a13;
                                          *(v73 + 8) = v96;
                                          *(v73 + 12) = a4;
                                          *(v73 + 40) = v91;
                                          ++v71;
                                        }

                                        if (a8)
                                        {
                                          v74 = v101 + 48 * v71;
                                          *(v74 + 32) = a9;
                                          *(v74 + 36) = a10;
                                          *(v74 + 8) = v96;
                                          *(v74 + 12) = a4;
                                          *(v74 + 40) = v93;
                                        }

                                        if (v69)
                                        {
                                          v57 = sub_29AB1A3FC(v87, v136[0], &v101);
                                          if (v57)
                                          {
                                            break;
                                          }
                                        }

                                        v57 = sub_29AB1A5CC(v87, v136[0], &v101);
                                        if (v57)
                                        {
                                          break;
                                        }

                                        v69 = 0;
                                        v62 += v80;
                                        v61 += v83;
                                        v91 += v86;
                                        v93 += v89;
                                        v63 += v96;
                                        if (v63 >= a5)
                                        {
                                          goto LABEL_163;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  return v57;
                }
              }

              else
              {
                v25 = sub_29AB1DBB8(v87, (v54 + 8), "displayWindow", 1, 0, 0, v78);
                if (v25)
                {
                  goto LABEL_111;
                }

                v55 = *v78;
              }

              v25 = 0;
              v60 = *(v55 + 24);
              *v60 = 0;
              *(v60 + 8) = v81;
              *(v60 + 12) = v84;
              *(v54 + 160) = 0;
              *(v54 + 168) = v81;
              *(v54 + 172) = v84;
LABEL_111:
              pthread_mutex_unlock((v87 + 504));
              if (v25)
              {
                return v25;
              }

              goto LABEL_85;
            }
          }

          else
          {
            v77 = (v50 + 48);
            v79 = *(*(v87 + 472) + 8 * v44);
            v25 = sub_29AB1DBB8(v87, (v50 + 8), "dataWindow", 1, 0, 0, (v50 + 48));
            if (v25)
            {
              goto LABEL_97;
            }

            v50 = v79;
            v51 = *v77;
          }

          v56 = *(v51 + 24);
          *v56 = 0;
          *(v56 + 8) = v81;
          *(v56 + 12) = v84;
          *(v50 + 144) = 0;
          *(v50 + 152) = v81;
          *(v50 + 156) = v84;
          v25 = sub_29AB22600(v87, v50, 1);
LABEL_97:
          pthread_mutex_unlock((v87 + 504));
          if (v25)
          {
            return v25;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v85 = *(*(v26 + 472) + 8 * v44);
        v52 = (v47 + 40);
        v25 = sub_29AB1DBB8(v87, (v47 + 8), "compression", 5, 0, 0, (v47 + 40));
        if (v25)
        {
          goto LABEL_81;
        }

        v48 = *v52;
        v47 = v85;
      }

      v25 = 0;
      *(v48 + 24) = 2;
      *(v47 + 176) = 2;
LABEL_81:
      pthread_mutex_unlock((v87 + 504));
      if (v25)
      {
        return v25;
      }

      goto LABEL_55;
    }
  }

  return v25;
}

uint64_t sub_29AB192F0(uint64_t a1, unsigned int a2, char *a3, unsigned int a4)
{
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v8 = *(a1 + 56);
    v9 = a1;
    v10 = 21;
    goto LABEL_11;
  }

  if (*a1)
  {
    v13 = *(*(a1 + 472) + 8 * a2);
    v15 = (v13 + 32);
    v14 = *(v13 + 32);
    if (v14)
    {
      if (*(v14 + 20) != 3)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
      }
    }

    else
    {
      v12 = sub_29AB1DBB8(a1, (v13 + 8), "channels", 3, 0, 0, v15);
      if (v12)
      {
LABEL_20:
        pthread_mutex_unlock((a1 + 504));
        return v12;
      }

      v14 = *v15;
    }

    v12 = sub_29AB2492C(a1, *(v14 + 24), a3, a4);
    goto LABEL_20;
  }

  pthread_mutex_unlock((a1 + 504));
  v8 = *(a1 + 56);
  v9 = a1;
  v10 = 8;
LABEL_11:

  return v8(v9, v10);
}

uint64_t sub_29AB1948C(uint64_t a1, unsigned int a2, int a3)
{
  if (a3 != 1)
  {
    return 4;
  }

  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v5 = *(a1 + 56);
    v6 = a1;
    v7 = 21;
    goto LABEL_13;
  }

  if (*a1)
  {
    v10 = *(*(a1 + 472) + 8 * a2);
    v12 = (v10 + 120);
    v11 = *(v10 + 120);
    if (v11)
    {
      if (*(v11 + 20) != 10)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
      }
    }

    else
    {
      v8 = sub_29AB1DBB8(a1, (v10 + 8), "version", 10, 0, 0, v12);
      if (v8)
      {
LABEL_22:
        pthread_mutex_unlock((a1 + 504));
        return v8;
      }

      v11 = *v12;
    }

    v8 = 0;
    *(v11 + 24) = 1;
    goto LABEL_22;
  }

  pthread_mutex_unlock((a1 + 504));
  v5 = *(a1 + 56);
  v6 = a1;
  v7 = 8;
LABEL_13:

  return v5(v6, v7);
}

uint64_t sub_29AB19618(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  v18 = 0;
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v6 = *(a1 + 56);
    v7 = a1;
    v8 = 21;
    goto LABEL_12;
  }

  if (*a1)
  {
    v11 = *(*(a1 + 472) + 8 * a2);
    v12 = sub_29AB1DA70(a1, (v11 + 8), "chromaticities", &v18);
    if (v12)
    {
      v10 = v12;
      if (v12 != 15)
      {
        goto LABEL_24;
      }

      if (*a1 != 1)
      {
        pthread_mutex_unlock((a1 + 504));
        return 15;
      }

      v13 = sub_29AB1DBB8(a1, (v11 + 8), "chromaticities", 4, 0, 0, &v18);
      if (a3)
      {
        v10 = v13;
        if (!v13)
        {
          v14 = v18;
LABEL_23:
          v10 = 0;
          v15 = v14[3];
          v16 = a3[1];
          *v15 = *a3;
          *(v15 + 1) = v16;
        }

LABEL_24:
        pthread_mutex_unlock((a1 + 504));
        return v10;
      }
    }

    else
    {
      v14 = v18;
      if (*(v18 + 5) != 4)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 16, "'%s' requested type 'chromaticities', but stored attributes is type '%s'");
      }

      if (a3)
      {
        goto LABEL_23;
      }
    }

    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 3, "No input value for setting '%s', type '%s'");
  }

  pthread_mutex_unlock((a1 + 504));
  v6 = *(a1 + 56);
  v7 = a1;
  v8 = 8;
LABEL_12:

  return v6(v7, v8);
}

uint64_t sub_29AB1981C(uint64_t a1)
{
  v30 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    pthread_mutex_lock((a1 + 504));
    if (*a1 == 1)
    {
      if (*(a1 + 196))
      {
        v2 = 0;
        while (1)
        {
          if (v2 >= *(a1 + 196))
          {
            *(a1 + 176) = 0;
            v28 = 0;
            if (*(a1 + 5))
            {
              v14 = 4098;
            }

            else
            {
              v14 = 2;
            }

            if (*(a1 + 2) > 0x1Fu)
            {
              v14 |= 0x400u;
            }

            if (*(a1 + 4))
            {
              v14 |= 0x800u;
            }

            if (*(a1 + 3))
            {
              v15 = v14 | 0x200;
            }

            else
            {
              v15 = v14;
            }

            v29[0] = 20000630;
            v29[1] = v15;
            v16 = (*(a1 + 48))(a1, v29, 8, a1 + 176);
            if (v16)
            {
LABEL_39:
              v6 = v16;
            }

            else
            {
              v17 = 0;
              while (1)
              {
                v18 = *(a1 + 196);
                if (v17 >= v18)
                {
                  break;
                }

                v19 = *(*(a1 + 472) + 8 * v17);
                v20 = *(v19 + 8);
                if (*(a1 + 569))
                {
                  if (v20 >= 1)
                  {
                    for (i = 0; i < v20; ++i)
                    {
                      v22 = *(*(v19 + 24) + 8 * i);
                      if ((v15 & 0x1800) == 0 && *(a1 + 196) == 1)
                      {
                        v23 = *v22;
                        if (!strcmp(*v22, "type") || !strcmp(v23, "name"))
                        {
                          continue;
                        }
                      }

                      v16 = sub_29AB249A4(a1, v22);
                      if (v16)
                      {
                        goto LABEL_39;
                      }

                      v20 = *(v19 + 8);
                    }
                  }
                }

                else if (v20 >= 1)
                {
                  v24 = 0;
                  do
                  {
                    v16 = sub_29AB249A4(a1, *(*(v19 + 16) + 8 * v24));
                    if (v16)
                    {
                      goto LABEL_39;
                    }
                  }

                  while (++v24 < *(v19 + 8));
                }

                v28 = 0;
                v16 = (*(a1 + 48))(a1, &v28, 1, a1 + 176);
                ++v17;
                if (v16)
                {
                  goto LABEL_39;
                }
              }

              if (*(a1 + 5))
              {
                v28 = 0;
                v6 = (*(a1 + 48))(a1, &v28, 1, a1 + 176);
                if (v6)
                {
                  goto LABEL_19;
                }

                LODWORD(v18) = *(a1 + 196);
              }

              *a1 = 3;
              *(a1 + 184) = 0xFFFFFFFF00000000;
              *(a1 + 192) = 0;
              if (v18 < 1)
              {
                v6 = 0;
              }

              else
              {
                v25 = *(a1 + 472);
                v26 = *(a1 + 176);
                v18 = v18;
                do
                {
                  v27 = *v25++;
                  *(v27 + 248) = v26;
                  v26 += 8 * *(v27 + 244);
                  --v18;
                }

                while (v18);
                v6 = 0;
                *(a1 + 176) = v26;
              }
            }

            goto LABEL_19;
          }

          v3 = *(*(a1 + 472) + 8 * v2);
          if (!*(v3 + 32))
          {
            break;
          }

          v4 = sub_29AB22600(a1, *(*(a1 + 472) + 8 * v2), 0);
          if (v4)
          {
            goto LABEL_17;
          }

          v5 = sub_29AB24110(v3);
          *(v3 + 244) = v5;
          if (*(a1 + 4) || *(a1 + 5))
          {
            pthread_mutex_unlock((a1 + 504));
            v6 = sub_29AB16800(a1, v2, "chunkCount", v5);
            pthread_mutex_lock((a1 + 504));
            if (v6)
            {
              goto LABEL_18;
            }
          }

          v4 = sub_29AB219C4(a1, v3, 0);
          if (!v4)
          {
            v4 = sub_29AB21D38(a1, v3, v9, v10, v7, v8);
            if (!v4)
            {
              v4 = sub_29AB21F48(a1, v3, *(*(v3 + 32) + 24));
              if (!v4)
              {
                v4 = sub_29AB220F0(a1, v3);
                if (!v4)
                {
                  v4 = sub_29AB221DC(a1, v3);
                  if (!v4)
                  {
                    v4 = sub_29AB22390(a1, v3);
                    ++v2;
                    if (!v4)
                    {
                      continue;
                    }
                  }
                }
              }
            }
          }

LABEL_17:
          v6 = v4;
LABEL_18:
          *(a1 + 176) = 0;
LABEL_19:
          pthread_mutex_unlock((a1 + 504));
          return v6;
        }

        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 13, "Part %d is missing channel list", v2);
      }

      else
      {
        pthread_mutex_unlock((a1 + 504));
        v13 = *(a1 + 64);

        return v13(a1, 6, "No parts defined in file prior to writing data");
      }
    }

    else
    {
      pthread_mutex_unlock((a1 + 504));
      v12 = *(a1 + 56);

      return v12(a1, 8);
    }
  }

  else
  {
    return 2;
  }
}

uint64_t sub_29AB19CBC(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  else if (a3)
  {
    v6 = *(*(a1 + 472) + 8 * a2);
    if ((*(v6 + 4) | 2) == 2)
    {
      *a3 = *(v6 + 240);
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 0;
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v8 = *(a1 + 56);

      return v8(a1, 18);
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return 3;
  }
}

uint64_t sub_29AB19DF4(unsigned __int8 *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 49) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    v12 = *(a1 + 9);
    v13 = "Part index (%d) out of range";
    v14 = a1;
    v15 = 4;
    return v12(v14, v15, v13);
  }

  if (!a4)
  {
    pthread_mutex_unlock((a1 + 504));
    v9 = *(a1 + 7);
    v10 = a1;
    v11 = 3;
    goto LABEL_11;
  }

  v8 = *(*(a1 + 59) + 8 * a2);
  if ((*(v8 + 4) | 2) == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v9 = *(a1 + 7);
    v10 = a1;
    v11 = 18;
    goto LABEL_11;
  }

  v17 = *a1;
  if (v17 == 3)
  {
    v19 = *(v8 + 148);
    v20 = *(v8 + 156);
    v21 = a3 - v19;
    if (a3 < v19 || v20 < a3)
    {
      pthread_mutex_unlock((a1 + 504));
      v12 = *(a1 + 9);
      v13 = "Invalid request for scanline %d outside range of data window (%d - %d)";
    }

    else
    {
      v23 = *(v8 + 240);
      if (v23 >= 2)
      {
        v21 /= v23;
      }

      if ((v21 & 0x80000000) == 0 && v21 < *(v8 + 244))
      {
        v24 = *(v8 + 144);
        v25 = *(v8 + 152);
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *a4 = 0u;
        *(a4 + 16) = 0u;
        *(a4 + 22) = *(v8 + 4);
        *(a4 + 23) = *(v8 + 176);
        v26 = v21 * v23 + v19;
        *a4 = v21;
        *(a4 + 4) = v24;
        v27 = v25 - v24 + 1;
        *(a4 + 12) = v23;
        *(a4 + 16) = v27;
        *(a4 + 8) = v26;
        if (v21 * v23 < 0)
        {
          *(a4 + 8) = v19;
          v28 = v21 * v23 + v23;
        }

        else
        {
          v28 = v23;
          if (v26 + v23 <= v20)
          {
LABEL_35:
            *(a4 + 20) = 0;
            *(a4 + 24) = 0;
            *(a4 + 32) = 0;
            *(a4 + 48) = 0;
            *(a4 + 56) = 0;
            *(a4 + 40) = sub_29AB25D58(v19, v27, v28, v23, v8);
            pthread_mutex_unlock((a1 + 504));
            return 0;
          }

          v28 = v20 - v26 + 1;
        }

        *(a4 + 12) = v28;
        goto LABEL_35;
      }

      pthread_mutex_unlock((a1 + 504));
      v12 = *(a1 + 9);
      v13 = "Invalid request for scanline %d in chunk %d outside chunk count %d";
    }

    v14 = a1;
    v15 = 3;
    return v12(v14, v15, v13);
  }

  v18 = (a1 + 504);
  if (v17 == 1)
  {
    pthread_mutex_unlock(v18);
    v9 = *(a1 + 7);
    v10 = a1;
    v11 = 9;
  }

  else
  {
    pthread_mutex_unlock(v18);
    v9 = *(a1 + 7);
    v10 = a1;
    v11 = 8;
  }

LABEL_11:

  return v9(v10, v11);
}

uint64_t sub_29AB1A054(unsigned __int8 *a1, unsigned int a2, __int128 *a3, uint64_t a4)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) == 0 && *(a1 + 49) > a2)
  {
    v8 = *a1;
    if (!a3 || !a4)
    {
      if (v8 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v9 = *(a1 + 7);
      v10 = a1;
      v11 = 3;
      goto LABEL_24;
    }

    if (v8 != 3)
    {
      if (v8 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
        v9 = *(a1 + 7);
        v10 = a1;
        v11 = 9;
      }

      else
      {
        v9 = *(a1 + 7);
        v10 = a1;
        v11 = 8;
      }

LABEL_24:

      return v9(v10, v11);
    }

    v14 = *(*(a1 + 59) + 8 * a2);
    *(a4 + 496) = 0;
    *(a4 + 464) = 0u;
    *(a4 + 480) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    v13 = sub_29AB25E4C(a4, (a4 + 8), (a4 + 264), a3, a1, v14);
    if (!v13)
    {
      *(a4 + 12) = a2;
      *(a4 + 16) = a1;
      v15 = *a3;
      v16 = a3[1];
      v17 = a3[2];
      *(a4 + 72) = a3[3];
      *(a4 + 56) = v17;
      *(a4 + 40) = v16;
      *(a4 + 24) = v15;
    }

    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return v13;
  }

  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  return (*(a1 + 9))(a1, 4, "Part index (%d) out of range", a2);
}

uint64_t sub_29AB1A22C(uint64_t result, unsigned int a2, __int128 *a3, uint64_t a4)
{
  if (result)
  {
    v7 = result;
    if (*result == 1)
    {
      pthread_mutex_lock((result + 504));
    }

    if ((a2 & 0x80000000) != 0 || *(v7 + 196) <= a2)
    {
      if (*v7 == 1)
      {
        pthread_mutex_unlock((v7 + 504));
      }

      return (*(v7 + 72))(v7, 4, "Part index (%d) out of range", a2);
    }

    else if (a3 && a4)
    {
      if (*(a4 + 16) == v7 && *(a4 + 12) == a2)
      {
        v8 = *(*(v7 + 472) + 8 * a2);
        if (*(a4 + 96) == *(a4 + 160))
        {
          *(a4 + 160) = 0;
        }

        *(a4 + 104) = 0;
        *(a4 + 144) = 0;
        *(a4 + 168) = 0;
        result = sub_29AB26018(*a4, *(a4 + 8), a3, v7, v8);
        if (!result)
        {
          v9 = *a3;
          v10 = a3[1];
          v11 = a3[2];
          *(a4 + 72) = a3[3];
          *(a4 + 56) = v11;
          *(a4 + 40) = v10;
          *(a4 + 24) = v9;
        }

        if (*v7 == 1)
        {

          return pthread_mutex_unlock((v7 + 504));
        }
      }

      else
      {
        if (*v7 == 1)
        {
          pthread_mutex_unlock((v7 + 504));
        }

        v13 = *(v7 + 72);

        return v13(v7, 3, "Cross-wired request for default routines from different context / part");
      }
    }

    else
    {
      if (*v7 == 1)
      {
        pthread_mutex_unlock((v7 + 504));
      }

      v12 = *(v7 + 56);

      return v12(v7, 3);
    }
  }

  return result;
}

uint64_t sub_29AB1A3FC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  else if (a3)
  {
    if (*(a3 + 16) == a1 && *(a3 + 12) == a2)
    {
      v6 = *(*(a1 + 472) + 8 * a2);
      v7 = sub_29AB269E4;
      if ((*(v6 + 4) & 0xFFFFFFFE) == 2)
      {
        v7 = sub_29AB269DC;
      }

      *(a3 + 232) = v7;
      if (*(v6 + 176))
      {
        *(a3 + 240) = sub_29AB26164;
      }

      *(a3 + 248) = sub_29AB26500;
      *(a3 + 256) = sub_29AB266B8;
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 0;
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v9 = *(a1 + 72);

      return v9(a1, 3, "Cross-wired request for default routines from different context / part");
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v10 = *(a1 + 56);

    return v10(a1, 3);
  }
}

uint64_t sub_29AB1A5CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v19 = *(a1 + 72);
    v20 = "Part index (%d) out of range";
    v21 = a1;
    v22 = 4;
    return v19(v21, v22, v20);
  }

  if (!a3)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v26 = *(a1 + 56);

    return v26(a1, 3);
  }

  if (*(a3 + 16) != a1 || *(a3 + 12) != a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v24 = *(a1 + 64);
    v25 = "Invalid request for encoding update from different context / part";
    goto LABEL_39;
  }

  if ((*(*(*(a1 + 472) + 8 * a2) + 4) & 0xFFFFFFFE) == 2 && (!*(a3 + 120) || *(a3 + 128) != 4 * *(a3 + 40) * *(a3 + 36)))
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v24 = *(a1 + 64);
    v25 = "Invalid / missing sample count table for deep data";
    goto LABEL_39;
  }

  v6 = *(a3 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = *a3;
    v11 = 48 * v6;
    do
    {
      v12 = *(v10 + v7 + 8);
      if (v12)
      {
        v13 = *(v10 + v7 + 12);
        if (!v13)
        {
          if (*a1 == 1)
          {
            pthread_mutex_unlock((a1 + 504));
          }

          v24 = *(a1 + 72);
          v25 = "Unexpected 0-width chunk to encode";
          goto LABEL_39;
        }

        if (!*(v10 + v7 + 40))
        {
          if (*a1 == 1)
          {
            pthread_mutex_unlock((a1 + 504));
          }

          v24 = *(a1 + 72);
          v25 = "Missing channel data pointer - must encode all channels";
          goto LABEL_39;
        }

        v14 = *(v10 + v7 + 28);
        if (v14 != 2 && v14 != 4)
        {
          if (*a1 == 1)
          {
            pthread_mutex_unlock((a1 + 504));
          }

          v19 = *(a1 + 72);
          v20 = "Invalid / unsupported output bytes per element (%d) for channel %c (%s)";
LABEL_85:
          v21 = a1;
          v22 = 3;
          return v19(v21, v22, v20);
        }

        if (*(v10 + v7 + 30) >= 3u)
        {
          if (*a1 == 1)
          {
            pthread_mutex_unlock((a1 + 504));
          }

          v19 = *(a1 + 72);
          v20 = "Invalid / unsupported output data type (%d) for channel %c (%s)";
          goto LABEL_85;
        }

        v9 += v13 * v12 * *(v10 + v7 + 25);
      }

      ++v8;
      v7 += 48;
    }

    while (v11 != v7);
    *(a3 + 104) = 0;
    v16 = (a3 + 104);
    if (!*(a3 + 232))
    {
      goto LABEL_52;
    }

    if (v9)
    {
      v17 = sub_29AB26F38(a3, 0, (a3 + 96), (a3 + 112), v9);
      if (!v17)
      {
        v17 = (*(a3 + 232))(a3);
      }

      v18 = v17;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  *(a3 + 104) = 0;
  v16 = (a3 + 104);
  if (!*(a3 + 232))
  {
    v9 = 0;
LABEL_52:
    if (!*(a3 + 96) || v9 != *(a3 + 168))
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v24 = *(a1 + 64);
      v25 = "Encode pipeline has no packing function declared and packed buffer is null or appears to need packing";
LABEL_39:

      return v24(a1, 3, v25);
    }
  }

LABEL_54:
  v18 = 0;
LABEL_55:
  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  if (v18)
  {
    return v18;
  }

  v27 = *(a3 + 240);
  if (v27 && *v16)
  {
    v28 = v27(a3);
    if (v28)
    {
      return v28;
    }
  }

  else
  {
    sub_29AB27DC4(a3, 2, (a3 + 160), (a3 + 176));
    sub_29AB27DC4(a3, 5, (a3 + 136), (a3 + 152));
    v29 = *(a3 + 96);
    *(a3 + 168) = *(a3 + 104);
    *(a3 + 176) = 0;
    v30 = *(a3 + 120);
    *(a3 + 152) = 0;
    *(a3 + 160) = v29;
    v31 = 4 * *(a3 + 40) * *(a3 + 36);
    *(a3 + 136) = v30;
    *(a3 + 144) = v31;
  }

  v32 = *(a3 + 248);
  if (v32)
  {
    v28 = v32(a3);
    if (v28)
    {
      return v28;
    }
  }

  v33 = *(a3 + 256);
  if (!v33)
  {
    return 0;
  }

  return v33(a3);
}

uint64_t sub_29AB1AA10(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    if (*a2 != a2 + 264)
    {
      (*(a1 + 96))();
    }

    sub_29AB27DC4(a2, 0, (a2 + 96), (a2 + 112));
    sub_29AB27DC4(a2, 2, (a2 + 160), (a2 + 176));
    sub_29AB27DC4(a2, 3, (a2 + 184), (a2 + 192));
    sub_29AB27DC4(a2, 4, (a2 + 200), (a2 + 208));
    sub_29AB27DC4(a2, 5, (a2 + 136), (a2 + 152));
    *(a2 + 496) = 0;
    *(a2 + 464) = 0u;
    *(a2 + 480) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 448) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 416) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  return 0;
}

uint64_t nanoexr_getPixelTypeSize(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return dword_29B6C2B08[a1];
  }
}

void nanoexr_release_image_data(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }
}

uint64_t nanoexr_read_tiled_exr(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  *&v143[20] = *MEMORY[0x29EDCA608];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v12 = *(a2 + 16);
  if (v12 <= 2)
  {
    v13 = dword_29B6C2B08[v12];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v19 = 2;
    goto LABEL_157;
  }

  v13 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a4 & 0x80000000) != 0 || *(a1 + 196) <= a4)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v20 = (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a4);
  }

  else
  {
    v14 = *(*(a1 + 472) + 8 * a4);
    v15 = *(v14 + 96);
    if (!v15)
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      v19 = 15;
LABEL_157:
      if (v19 >= 0x20)
      {
        v79 = 32;
      }

      else
      {
        v79 = v19;
      }

      fprintf(*MEMORY[0x29EDCA610], "nanoexr error: %s\n", off_29F2962C0[v79]);
      goto LABEL_161;
    }

    if (*(v15 + 20) == 21)
    {
      v16 = *(v15 + 24);
      v18 = *v16;
      v17 = v16[1];
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      goto LABEL_18;
    }

    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
      v15 = *(v14 + 96);
    }

    v20 = (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for 'tiles'", *(v15 + 8));
  }

  v19 = v20;
  if (v20)
  {
    goto LABEL_157;
  }

  v17 = 0;
  v18 = 0;
LABEL_18:
  v104 = 0;
  v21 = sub_29AB18110(a1, a4, &v104 + 1, &v104);
  if (v21)
  {
    v19 = v21;
    goto LABEL_157;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a4 & 0x80000000) != 0 || *(a1 + 196) <= a4)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v78 = (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
    goto LABEL_155;
  }

  v22 = *(*(a1 + 472) + 8 * a4);
  if ((*(v22 + 4) | 2) != 3)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v81 = (*(a1 + 56))(a1, 19);
LABEL_165:
    v19 = v81;
    if (!v81)
    {
      goto LABEL_161;
    }

    goto LABEL_157;
  }

  if (!*(v22 + 96) || (v23 = *(v22 + 192), v23 < 1) || (v24 = *(v22 + 196), v24 < 1) || !*(v22 + 200) || !*(v22 + 208))
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v78 = (*(a1 + 72))(a1, 13, "Tile data missing or corrupt");
LABEL_155:
    v19 = v78;
    goto LABEL_156;
  }

  if (v23 <= a5 || v24 <= a5)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    v81 = (*(a1 + 56))(a1, 4);
    goto LABEL_165;
  }

  v96 = a3;
  v25 = *(*(v22 + 216) + 4 * a5);
  v26 = *(*(v22 + 224) + 4 * a5);
  if (*a1 == 1)
  {
    pthread_mutex_unlock((a1 + 504));
  }

  if (!v25 || !v26 || (v27 = *(a2 + 20), v28 = *(a2 + 24), v105 = 0u, v106 = 0u, v107 = 0u, v108 = 0u, v109 = 0u, v110 = 0u, v111 = 0u, v112 = 0u, v113 = 0u, v114 = 0u, v115 = 0u, v116 = 0u, v117 = 0u, v118 = 0u, v119 = 0u, v120 = 0u, v121 = 0u, v122 = 0u, v123 = 0u, v124 = 0u, v125 = 0u, v126 = 0u, v127 = 0u, v128 = 0u, v129 = 0u, v130 = 0u, v131 = 0u, v132 = 0u, v133 = 0u, v134 = 0u, v94 = (v17 + v26 - 1) / v17, v94 <= 0))
  {
    v19 = 0;
    goto LABEL_161;
  }

  v19 = 0;
  v29 = (v18 + v25 - 1) / v18;
  v30 = a5;
  v31 = v27 * v13;
  v32 = v28 * v27 * v13;
  v90 = v32 * v17;
  v33 = 0;
  v97 = v27 * v13 * v18;
  v98 = v29;
  v93 = v30;
  v84 = v30;
  v85 = v30;
  do
  {
    if (v98 <= 0)
    {
      v77 = v33 + 1;
      goto LABEL_141;
    }

    v34 = 0;
    v95 = v33 + 1;
    v35 = v90 * v33;
    v92 = v33;
    v89 = v33;
    while (1)
    {
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v99 = v34;
      if (*a1)
      {
        v36 = (*(a1 + 56))(a1, 7);
LABEL_46:
        v19 = v36;
        goto LABEL_47;
      }

      if (*(a1 + 196) <= a4)
      {
        v36 = (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
        goto LABEL_46;
      }

      v136 = 0;
      v137 = 0;
      v37 = *(*(a1 + 472) + 8 * a4);
      if ((*(v37 + 4) | 2) == 2)
      {
        v36 = (*(a1 + 56))(a1, 19);
        goto LABEL_46;
      }

      v88 = v35;
      v139 = 0;
      v44 = v37;
      v91 = v33;
      v38 = sub_29AB3050C(a1, v37, v34, v33, v93, v93, &v139);
      if (v38)
      {
        break;
      }

      v45 = *(v44[12] + 24);
      v46 = *v45;
      v47 = *(v44[27] + 4 * v93);
      v48 = v46 * v99 + v46;
      v49 = __OFSUB__(v48, v47);
      v50 = v48 - v47;
      v51 = v44;
      if (!((v50 < 0) ^ v49 | (v50 == 0)) && v50 < v46)
      {
        v46 -= v50;
      }

      v52 = v45[1];
      v53 = *(v44[28] + 4 * v93);
      v54 = v95 * v52;
      v49 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      v35 = v88;
      if (!((v55 < 0) ^ v49 | (v55 == 0)) && v55 < v52)
      {
        v52 -= v55;
      }

      BYTE6(v101) = *(v51 + 4);
      BYTE7(v101) = *(v51 + 176);
      *&v100 = __PAIR64__(v99, v139);
      *(&v100 + 1) = __PAIR64__(v52, v33);
      LODWORD(v101) = v46;
      if (v93 >= 0x100)
      {
        v36 = (*(a1 + 72))(a1, 17, "Unable to represent tile level %d, %d in chunk structure");
        goto LABEL_46;
      }

      BYTE4(v101) = v93;
      BYTE5(v101) = v93;
      v56 = *(*(v51 + 32) + 24);
      v57 = *v56;
      v87 = v139;
      v58 = 0;
      if (v57 >= 1)
      {
        v59 = v52 * v46;
        v60 = (*(v56 + 1) + 16);
        do
        {
          v61 = *v60;
          v60 += 8;
          if (v61 == 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = 2;
          }

          v58 += v59 << v62;
          --v57;
        }

        while (v57);
      }

      v86 = v58;
      v138 = 0;
      v135 = 0;
      v63 = v51;
      v38 = sub_29AB310C0(a1, v51, &v135, &v138);
      if (v38)
      {
        break;
      }

      v64 = 20;
      v65 = 16;
      if (*(a1 + 5))
      {
        v65 = 20;
        v64 = 24;
      }

      if (*(v63 + 4) == 3)
      {
        v66 = v65;
      }

      else
      {
        v66 = v64;
      }

      v67 = *(a1 + 152);
      v68 = v135;
      v69 = *(v135 + 8 * v87);
      v137 = v69;
      if (v69 < v138 || v67 >= 1 && v69 > v67)
      {
        v70 = (*(a1 + 72))(a1, 22, "Corrupt chunk offset table: tile (%d, %d), level (%d, %d), chunk index %d recorded at file offset %llu", v99, v92, v85, v85, v87, v69);
LABEL_89:
        v19 = v70;
        v33 = v91;
        goto LABEL_47;
      }

      v82 = v67;
      v83 = v63;
      v71 = v66;
      v72 = (*(a1 + 40))(a1, &v142, v66, &v137, &v136, 0);
      if (v72)
      {
        v70 = (*(a1 + 72))(a1, v72, "Unable to read information block for tile (%d, %d), level (%d, %d): request %llu bytes from offset %llu, got %llu bytes", v99, v89, v84, v84, v71, *(v68 + 8 * v87), v136);
        goto LABEL_89;
      }

      if (*(a1 + 5))
      {
        v73 = v143;
        if (v142 != a4)
        {
          v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): bad part number (%d, expect %d)");
LABEL_112:
          v19 = v74;
          goto LABEL_113;
        }
      }

      else
      {
        v73 = &v142;
      }

      if (v99 != *v73)
      {
        v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): bad tile x coordinate (%d, expect %d)");
        goto LABEL_112;
      }

      if (v91 != v73[1])
      {
        v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): bad tile Y coordinate (%d, expect %d)");
        goto LABEL_112;
      }

      if (v73[2] != v93)
      {
        v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): bad tile mip/rip level X (%d, expect %d)");
        goto LABEL_112;
      }

      if (v73[3] != v93)
      {
        v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): bad tile mip/rip level Y (%d, expect %d)");
        goto LABEL_112;
      }

      if (*(v83 + 4) != 3)
      {
        v75 = v73[4];
        if ((v75 & 0x80000000) != 0 || v86 < v75 || !v75 && v86)
        {
          v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): invalid packed size %d vs unpacked size %llu");
          goto LABEL_112;
        }

        if (v82 >= 1 && v137 + v75 > v82)
        {
          v74 = (*(a1 + 72))(a1, 22, "Corrupt tile (%d, %d), level (%d, %d) (chunk %d): access past end of file: packed size (%d) at offset %llu vs size of file %lld");
          goto LABEL_112;
        }

        *&v102 = v75;
        *(&v102 + 1) = v86;
        *(&v101 + 1) = v137;
        v103 = 0uLL;
LABEL_129:
        if (v75 || !v86)
        {
          v33 = v91;
          v35 = v88;
          goto LABEL_48;
        }

        v74 = (*(a1 + 64))(a1, 3, "Invalid packed size of 0");
        goto LABEL_112;
      }

      v19 = (*(a1 + 40))(a1, &v140, 24, &v137, 0, 0);
      if (!v19)
      {
        if ((v140 & 0x8000000000000000) == 0)
        {
          v75 = v141;
          if (v140)
          {
            if (v141 >> 31 || (v86 = *(&v141 + 1), !v141) && *(&v141 + 1))
            {
              v74 = (*(a1 + 72))(a1, 22, "Corrupt deep tile (%d, %d), level (%d, %d) (chunk %d): invalid packed data size %lld");
              goto LABEL_112;
            }

            if (*(&v141 + 1) >> 31 || v141 && !*(&v141 + 1))
            {
              v74 = (*(a1 + 72))(a1, 22, "Corrupt deep tile (%d, %d), level (%d, %d) (chunk %d): invalid unpacked size %lld");
              goto LABEL_112;
            }

LABEL_126:
            *&v103 = v137;
            *(&v103 + 1) = v140;
            *&v102 = v75;
            *(&v102 + 1) = v86;
            v76 = v137 + v140;
            *(&v101 + 1) = v137 + v140;
            if (v82 >= 1 && (v76 > v82 || v76 + v75 > v82))
            {
              v74 = (*(a1 + 72))(a1, 22, "Corrupt deep tile (%d, %d), level (%d, %d) (chunk %d): access past end of the file: sample table size %lld + data size %lld larger than file %lld");
              goto LABEL_112;
            }

            goto LABEL_129;
          }

          v75 = v141 | *(&v141 + 1);
          if (v141 == 0)
          {
            v86 = 0;
            goto LABEL_126;
          }
        }

        v74 = (*(a1 + 72))(a1, 22, "Corrupt deep tile (%d, %d), level (%d, %d) (chunk %d): invalid sample table size %lld");
        goto LABEL_112;
      }

LABEL_113:
      v33 = v91;
      v35 = v88;
LABEL_47:
      if (v19)
      {
        goto LABEL_140;
      }

LABEL_48:
      if (v105)
      {
        v38 = sub_29AB1BFBC(a1, a4, &v100, &v105);
        if (v38)
        {
          break;
        }
      }

      else
      {
        v38 = sub_29AB1B8C0(a1, a2, v96, a4, &v100, &v105, a6);
        if (v38)
        {
          break;
        }

        v38 = sub_29AB1BBDC(a1, a4, &v105);
        if (v38)
        {
          break;
        }
      }

      if (SWORD4(v105) >= 1)
      {
        v39 = 0;
        v40 = *a2 + v35 + v97 * v99;
        do
        {
          v41 = 0;
          v42 = 0;
          v43 = v105 + 48 * v39;
          *(v43 + 32) = v31;
          *(v43 + 36) = v32;
          *(v43 + 28) = v13;
          *(v43 + 40) = 0;
          while (v39 != a6[v41])
          {
            ++v41;
            v42 += v13;
            if (v41 == 4)
            {
              goto LABEL_60;
            }
          }

          *(v105 + 48 * v39 + 40) = v40 + v42;
LABEL_60:
          ++v39;
        }

        while (v39 < SWORD4(v105));
      }

      v38 = sub_29AB1C0F0(a1, a4, &v105);
      if (v38)
      {
        break;
      }

      v34 = v99 + 1;
      if (v99 + 1 >= v98)
      {
        v19 = 0;
        goto LABEL_140;
      }
    }

    v19 = v38;
LABEL_140:
    v77 = v95;
LABEL_141:
    v33 = v77;
  }

  while (v77 < v94);
LABEL_156:
  if (v19)
  {
    goto LABEL_157;
  }

LABEL_161:
  sub_29AB1C31C(a1, &v105);
  return v19;
}

uint64_t sub_29AB1B8C0(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, __int128 *a5, uint64_t a6, _DWORD *a7)
{
  if (a1)
  {
    if (*a1)
    {
      v12 = *(a1 + 56);
LABEL_4:
      v13 = v12();
      goto LABEL_13;
    }

    if ((a4 & 0x80000000) != 0 || *(a1 + 196) <= a4)
    {
      v13 = (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a4);
LABEL_13:
      v14 = v13;
      if (v13)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    if (!a5 || !a6)
    {
      v12 = *(a1 + 56);
      goto LABEL_4;
    }

    v17 = *(*(a1 + 472) + 8 * a4);
    *(a6 + 448) = 0u;
    *(a6 + 464) = 0u;
    *(a6 + 416) = 0u;
    *(a6 + 432) = 0u;
    *(a6 + 384) = 0u;
    *(a6 + 400) = 0u;
    *(a6 + 352) = 0u;
    *(a6 + 368) = 0u;
    *(a6 + 320) = 0u;
    *(a6 + 336) = 0u;
    *(a6 + 288) = 0u;
    *(a6 + 304) = 0u;
    *(a6 + 256) = 0u;
    *(a6 + 272) = 0u;
    *(a6 + 208) = 0u;
    *(a6 + 224) = 0u;
    *(a6 + 176) = 0u;
    *(a6 + 192) = 0u;
    *(a6 + 144) = 0u;
    *(a6 + 160) = 0u;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    *(a6 + 240) = 0u;
    v14 = sub_29AB25E4C(a6, (a6 + 8), (a6 + 240), a5, a1, v17);
    if (!v14)
    {
      *(a6 + 12) = a4;
      *(a6 + 16) = a1;
      v18 = *a5;
      v19 = a5[1];
      v20 = a5[2];
      *(a6 + 72) = a5[3];
      *(a6 + 56) = v20;
      *(a6 + 40) = v19;
      *(a6 + 24) = v18;
LABEL_18:
      v22 = *(a2 + 16);
      if (v22 > 2)
      {
        v23 = 0;
      }

      else
      {
        v23 = dword_29B6C2B08[v22];
      }

      if (*(a2 + 20) >= 1)
      {
        v24 = 0;
        do
        {
          a7[v24++] = -1;
        }

        while (v24 < *(a2 + 20));
      }

      if (*(a6 + 8) < 1)
      {
        return 0;
      }

      v25 = 0;
      v26 = 0;
      while (1)
      {
        *(*a6 + v25 + 40) = 0;
        if (sub_29AB31730(a3, *(*a6 + v25), "red") || *a7 == -1 && sub_29AB31730(a3, *(*a6 + v25), "y"))
        {
          v27 = 0;
          v28 = a7;
          goto LABEL_36;
        }

        if (sub_29AB31730(a3, *(*a6 + v25), "green"))
        {
          v27 = 1;
          v28 = a7 + 1;
          goto LABEL_36;
        }

        if (sub_29AB31730(a3, *(*a6 + v25), "blue"))
        {
          break;
        }

        if (sub_29AB31730(a3, *(*a6 + v25), "alpha"))
        {
          v27 = 3;
          v28 = a7 + 3;
LABEL_36:
          *v28 = v26;
          if (v27 < *(a2 + 20))
          {
            *(*a6 + v25 + 40) = v27 * v23;
          }
        }

        ++v26;
        v25 += 48;
        if (v26 >= *(a6 + 8))
        {
          return 0;
        }
      }

      v27 = 2;
      v28 = a7 + 2;
      goto LABEL_36;
    }
  }

  else
  {
    v14 = 2;
  }

LABEL_14:
  if (v14 >= 0x20)
  {
    v21 = 32;
  }

  else
  {
    v21 = v14;
  }

  fprintf(*MEMORY[0x29EDCA610], "exr_decoding_initialize failed: %s\n", off_29F2962C0[v21]);
  return v14;
}

uint64_t sub_29AB1BBDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1)
  {
    v3 = *(a1 + 56);
LABEL_4:

    return v3();
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    v51 = *(a1 + 72);
    v52 = "Part index (%d) out of range";
    v44 = 4;
    return v51(a1, v44, v52);
  }

  if (!a3)
  {
    v3 = *(a1 + 56);
    goto LABEL_4;
  }

  if (*(a3 + 16) != a1 || *(a3 + 12) != a2)
  {
    v45 = *(a1 + 72);

    return v45();
  }

  v6 = *(*(a1 + 472) + 8 * a2);
  v7 = *(v6 + 4) & 0xFFFFFFFE;
  v8 = *(a3 + 8);
  if (v8 < 1)
  {
    v21 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v24 = -2;
    v43 = 1;
    v23 = -2;
LABEL_90:
    if (v15 != v18 * v8)
    {
      v15 = -1;
    }

    if (v14 != v18 * v8)
    {
      v14 = -1;
    }

    v46 = *(v6 + 176);
    if (v7 != 2 && (v46 == 0 && v43 ? (v47 = v16 == 0) : (v47 = 0), v47 ? (v48 = v21 < 1) : (v48 = 1), !v48 ? (v49 = v21 == v8) : (v49 = 0), v49))
    {
      result = 0;
      *(a3 + 208) = sub_29AB317F0;
      *(a3 + 216) = 0;
      *(a3 + 232) = 0;
    }

    else
    {
      *(a3 + 208) = sub_29AB31990;
      if (v46)
      {
        *(a3 + 216) = sub_29AB31B34;
      }

      v50 = sub_29AB31C9C(a3, v7 == 2, v21, v24, v23, v19, v18, v17, v16, v12, v15, v14);
      result = 0;
      *(a3 + 232) = v50;
    }

    return result;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = *a3;
  v23 = -2;
  v24 = -2;
  while (1)
  {
    if (*(v22 + v9 + 8))
    {
      v25 = *(v22 + v9 + 40);
      if (v25)
      {
        break;
      }
    }

LABEL_81:
    ++v10;
    v9 += 48;
    if (48 * v8 == v9)
    {
      v43 = v20 == 0;
      v6 = *(*(a1 + 472) + 8 * a2);
      goto LABEL_90;
    }
  }

  v26 = *(v22 + v9 + 28);
  v27 = v26;
  if (v26 != 2 && v26 != 4)
  {
    v51 = *(a1 + 72);
    v52 = "Invalid / unsupported output bytes per element (%d) for channel %c (%s)";
    goto LABEL_110;
  }

  v29 = *(v22 + v9 + 30);
  if (v29 < 3)
  {
    v30 = v22 + v9;
    v31 = *(v22 + v9 + 26);
    if (v24 == v31)
    {
      v32 = v24;
    }

    else
    {
      v32 = -1;
    }

    if (v24 == -2)
    {
      v24 = *(v22 + v9 + 26);
    }

    else
    {
      v24 = v32;
    }

    if (v23 == v29)
    {
      v33 = v23;
    }

    else
    {
      v33 = -1;
    }

    if (v23 == -2)
    {
      v23 = *(v22 + v9 + 30);
    }

    else
    {
      v23 = v33;
    }

    v34 = *(v30 + 25);
    if (v19 == v34)
    {
      v35 = v19;
    }

    else
    {
      v35 = -1;
    }

    if (v19)
    {
      v19 = v35;
    }

    else
    {
      v19 = *(v30 + 25);
    }

    if (v18 == v27)
    {
      v36 = v18;
    }

    else
    {
      v36 = -1;
    }

    if (v18)
    {
      v18 = v36;
    }

    else
    {
      v18 = v27;
    }

    if (*(v30 + 16) != 1 || *(v30 + 20) != 1)
    {
      v17 = 1;
    }

    v37 = *(v22 + v9 + 32);
    if (v37 != v34)
    {
      ++v20;
    }

    if (v29 != v31)
    {
      ++v16;
    }

    if (v13 == *(v22 + v9 + 36))
    {
      v38 = v13;
    }

    else
    {
      v38 = -1;
    }

    if (v13)
    {
      v13 = v38;
    }

    else
    {
      v13 = *(v22 + v9 + 36);
    }

    if (v15)
    {
      v39 = v10 * v27;
      if (v25 == v11 + v10 * v27)
      {
        v40 = v15;
      }

      else
      {
        v40 = -1;
      }

      if (v15 > 0)
      {
        v15 = v40;
      }

      if (v25 == v11 - v39)
      {
        v41 = v14;
      }

      else
      {
        v41 = -1;
      }

      if (v14 > 0)
      {
        v14 = v41;
      }

      if ((v15 & v14) < 0)
      {
        v11 = 0;
      }
    }

    else
    {
      v15 = *(v22 + v9 + 32);
      v14 = v15;
      v11 = *(v22 + v9 + 40);
    }

    ++v21;
    if (v12 == v37)
    {
      v42 = v12;
    }

    else
    {
      v42 = -1;
    }

    if (v12)
    {
      v12 = v42;
    }

    else
    {
      v12 = *(v22 + v9 + 32);
    }

    goto LABEL_81;
  }

  v51 = *(a1 + 72);
  v52 = "Invalid / unsupported output data type (%d) for channel %c (%s)";
LABEL_110:
  v44 = 3;
  return v51(a1, v44, v52);
}

uint64_t sub_29AB1BFBC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1)
  {
    v5 = *(a1 + 56);
LABEL_4:

    return v5();
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  if (!a3 || !a4)
  {
    v5 = *(a1 + 56);
    goto LABEL_4;
  }

  if (*(a4 + 16) == a1 && *(a4 + 12) == a2)
  {
    result = sub_29AB26018(*a4, *(a4 + 8), a3, a1, *(*(a1 + 472) + 8 * a2));
    v8 = *(a3 + 32);
    v9 = *(a3 + 48);
    v10 = *(a3 + 16);
    *(a4 + 24) = *a3;
    *(a4 + 72) = v9;
    *(a4 + 56) = v8;
    *(a4 + 40) = v10;
  }

  else
  {
    v11 = *(a1 + 64);

    return v11();
  }

  return result;
}

uint64_t sub_29AB1C0F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1)
  {
    v4 = *(a1 + 56);
LABEL_4:

    return v4();
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range", a2);
  }

  if (!a3)
  {
    v4 = *(a1 + 56);
    goto LABEL_4;
  }

  if (*(a3 + 16) != a1 || *(a3 + 12) != a2)
  {
    v10 = *(a1 + 64);
    goto LABEL_19;
  }

  v8 = *(a3 + 208);
  if (!v8)
  {
    v10 = *(a1 + 64);
    goto LABEL_19;
  }

  v9 = *(*(a1 + 472) + 8 * a2);
  if (!v8(a3))
  {
    if (sub_29AB38E48(a3))
    {
      v10 = *(a1 + 64);
      goto LABEL_19;
    }

    v11 = *(a3 + 216);
    if (v11 && v11(a3))
    {
      v10 = *(a1 + 64);
      goto LABEL_19;
    }

    if ((*(v9 + 4) & 0xFFFFFFFE) == 2)
    {
      v12 = sub_29AB38F30(a1, a3);
      v6 = v12;
      if ((*(a3 + 10) & 4) != 0)
      {
        return v6;
      }

      if (v12)
      {
        v10 = *(a1 + 64);
        goto LABEL_19;
      }
    }

    v13 = *(a3 + 224);
    if (v13 && v13(a3, v6))
    {
      v10 = *(a1 + 64);
      goto LABEL_19;
    }

    v14 = *(a3 + 232);
    if (!v14)
    {
      return 0;
    }

    v6 = v14(a3, v6);
    if (v6)
    {
      v10 = *(a1 + 64);
      goto LABEL_19;
    }

    return v6;
  }

  v10 = *(a1 + 64);
LABEL_19:

  return v10();
}

double sub_29AB1C31C(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*a2 != a2 + 240)
    {
      (*(a1 + 96))(*a2);
    }

    if (*(a2 + 112) == *(a2 + 96) && !*(a2 + 120))
    {
      *(a2 + 112) = 0;
    }

    sub_29AB3248C(a2, 0, (a2 + 96), (a2 + 104));
    sub_29AB3248C(a2, 1, (a2 + 112), (a2 + 120));
    sub_29AB3248C(a2, 3, (a2 + 160), (a2 + 168));
    sub_29AB3248C(a2, 4, (a2 + 176), (a2 + 184));
    sub_29AB3248C(a2, 5, (a2 + 128), (a2 + 136));
    sub_29AB3248C(a2, 6, (a2 + 144), (a2 + 152));
    result = 0.0;
    *(a2 + 448) = 0u;
    *(a2 + 464) = 0u;
    *(a2 + 416) = 0u;
    *(a2 + 432) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 400) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 368) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t nanoexr_read_scanline_exr(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, _DWORD *a5)
{
  v61 = *MEMORY[0x29EDCA608];
  memset(v54, 0, sizeof(v54));
  v53 = 0;
  v10 = sub_29AB19CBC(a1, a4, &v53);
  if (v10)
  {
LABEL_2:
    v11 = v10;
    goto LABEL_3;
  }

  v13 = *(a2 + 16);
  if (v13 > 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = dword_29B6C2B08[v13];
  }

  v15 = *(a2 + 32);
  if (v15 >= *(a2 + 36))
  {
LABEL_98:
    v11 = 0;
    goto LABEL_99;
  }

  v16 = *(a2 + 20) * v14;
  while (1)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    if (!a1)
    {
      v11 = 2;
      goto LABEL_3;
    }

    if (*a1)
    {
      v17 = (*(a1 + 56))(a1, 7);
LABEL_20:
      v11 = v17;
      goto LABEL_21;
    }

    if ((a4 & 0x80000000) != 0 || *(a1 + 196) <= a4)
    {
      v17 = (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
      goto LABEL_20;
    }

    v48 = a3;
    v18 = *(*(a1 + 472) + 8 * a4);
    if ((*(v18 + 4) | 2) == 3)
    {
      v19 = (*(a1 + 56))(a1, 18);
      goto LABEL_63;
    }

    v27 = *(v18 + 148);
    v28 = *(v18 + 156);
    v29 = v15 - v27;
    if (v15 < v27 || v28 < v15)
    {
      v19 = (*(a1 + 72))(a1, 3, "Invalid request for scanline %d outside range of data window (%d - %d)");
      goto LABEL_63;
    }

    v31 = *(v18 + 240);
    if (v31 >= 2)
    {
      v29 /= v31;
    }

    if (v29 < 0 || v29 >= *(v18 + 244))
    {
      v19 = (*(a1 + 72))(a1, 3, "Invalid request for scanline %d in chunk %d outside chunk count %d");
      goto LABEL_63;
    }

    v32 = *(v18 + 144);
    v33 = *(v18 + 152);
    v34 = v29 * v31 + v27;
    BYTE6(v50) = *(v18 + 4);
    BYTE7(v50) = *(v18 + 176);
    v47 = v29;
    *&v49 = __PAIR64__(v32, v29);
    LODWORD(v50) = v33 - v32 + 1;
    *(&v49 + 1) = __PAIR64__(v31, v34);
    if (v29 * v31 < 0)
    {
      DWORD2(v49) = v27;
      v35 = v29 * v31 + v31;
    }

    else
    {
      if ((v34 + v31) <= v28)
      {
        goto LABEL_58;
      }

      v35 = v28 - v34 + 1;
    }

    HIDWORD(v49) = v35;
LABEL_58:
    v46 = v34;
    v45 = v31;
    v57 = 0;
    v55 = 0;
    WORD2(v50) = 0;
    v10 = sub_29AB310C0(a1, v18, &v55, &v57);
    if (v10)
    {
      goto LABEL_2;
    }

    v36 = *(a1 + 152);
    v37 = *(v55 + 8 * v47);
    v56 = v37;
    if (v37 >= v57 && (v36 < 1 || v37 <= v36))
    {
      v44 = v36;
      v38 = 1;
      if (*(a1 + 5))
      {
        v38 = 2;
      }

      if (*(v18 + 4) != 2)
      {
        ++v38;
      }

      v10 = (*(a1 + 40))(a1, v60, 4 * v38, &v56, 0, 0);
      if (v10)
      {
        goto LABEL_2;
      }

      if (*(a1 + 5))
      {
        if (v60[0] != a4)
        {
          v19 = (*(a1 + 72))(a1, 22, "Preparing read scanline %d (chunk %d), found corrupt leader: part says %d, expected %d");
          goto LABEL_63;
        }

        v39 = 1;
      }

      else
      {
        v39 = 0;
      }

      if (v46 == v60[v39])
      {
        if (*(v18 + 4) == 2)
        {
          v10 = (*(a1 + 40))(a1, &v58, 24, &v56, 0, 0);
          if (v10)
          {
            goto LABEL_2;
          }

          a3 = v48;
          if (v58 < 0)
          {
            v17 = (*(a1 + 72))(a1, 22, "Preparing to read scanline %d (chunk %d), found corrupt leader: invalid sample table size %lld");
            goto LABEL_20;
          }

          v40 = v59;
          if (v59 >> 31)
          {
            v17 = (*(a1 + 72))(a1, 22, "Preparing to read scanline %d (chunk %d), found corrupt leader: invalid packed data size %lld", v15, v47, v59);
            goto LABEL_20;
          }

          v41 = *(&v59 + 1);
          if (*(&v59 + 1) >> 31)
          {
            v17 = (*(a1 + 72))(a1, 22, "Preparing to scanline %d (chunk %d), found corrupt leader: unsupported unpacked data size %lld");
            goto LABEL_20;
          }

          *&v52 = v56;
          *(&v52 + 1) = v58;
          v42 = v56 + v58;
          *(&v50 + 1) = v56 + v58;
          v51 = v59;
          if (v44 < 1 || v42 <= v44 && v42 + v59 <= v44)
          {
LABEL_93:
            if (v40 || !v41)
            {
              a3 = v48;
              goto LABEL_22;
            }

            v19 = (*(a1 + 64))(a1, 3, "Invalid packed size of 0");
            goto LABEL_63;
          }

          v19 = (*(a1 + 72))(a1, 22, "Preparing to scanline %d (chunk %d), found corrupt leader: sample table and data result in access past end of the file: sample table size %lld + data size %lld larger than file %lld");
        }

        else
        {
          v41 = sub_29AB25D58(v15, v50, SHIDWORD(v49), v45, v18);
          v40 = v60[v39 + 1];
          if ((v40 & 0x80000000) != 0 || *(v18 + 232) < v40)
          {
            v19 = (*(a1 + 72))(a1, 22, "Preparing to read scanline %d (chunk %d), found corrupt leader: packed data size says %llu, must be between 0 and %llu");
          }

          else
          {
            *(&v50 + 1) = v56;
            *&v51 = v40;
            *(&v51 + 1) = v41;
            v52 = 0uLL;
            if (v44 < 1 || v56 + v40 <= v44)
            {
              goto LABEL_93;
            }

            v19 = (*(a1 + 72))(a1, 22, "Preparing to read scanline %d (chunk %d), found corrupt leader: packed size %llu, file offset %llu, size %lld");
          }
        }
      }

      else
      {
        v19 = (*(a1 + 72))(a1, 22, "Preparing to read scanline %d (chunk %d), found corrupt leader: scanline says %d, expected %d");
      }
    }

    else
    {
      v19 = (*(a1 + 72))(a1, 22, "Corrupt chunk offset table: scanline %d, chunk index %d recorded at file offset %llu");
    }

LABEL_63:
    v11 = v19;
    a3 = v48;
LABEL_21:
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (*&v54[0])
    {
      v10 = sub_29AB1BFBC(a1, a4, &v49, v54);
      if (v10)
      {
        goto LABEL_2;
      }

      goto LABEL_31;
    }

    v10 = sub_29AB1B8C0(a1, a2, a3, a4, &v49, v54, a5);
    if (v10)
    {
      goto LABEL_2;
    }

    if (!*&v54[0])
    {
      break;
    }

    v14 = *(*&v54[0] + 25);
    v16 = *(a2 + 20) * v14;
    v20 = SWORD4(v54[0]);
    if (SWORD4(v54[0]) >= 1)
    {
      v21 = *(a2 + 24) * v16;
      v22 = (*&v54[0] + 36);
      do
      {
        *(v22 - 1) = v16;
        *v22 = v21;
        *(v22 - 4) = v14;
        v22 += 12;
        --v20;
      }

      while (v20);
    }

    v10 = sub_29AB1BBDC(a1, a4, v54);
    if (v10)
    {
      goto LABEL_2;
    }

LABEL_31:
    if (SWORD4(v54[0]) >= 1)
    {
      v23 = 0;
      v24 = *a2 + *(a2 + 24) * v16 * (v15 - *(a2 + 32));
      do
      {
        v25 = 0;
        v26 = 0;
        *(*&v54[0] + 48 * v23 + 40) = 0;
        while (v23 != a5[v25])
        {
          ++v25;
          v26 += v14;
          if (v25 == 4)
          {
            goto LABEL_38;
          }
        }

        *(*&v54[0] + 48 * v23 + 40) = v24 + v26;
LABEL_38:
        ++v23;
      }

      while (v23 < SWORD4(v54[0]));
    }

    v10 = sub_29AB1C0F0(a1, a4, v54);
    if (v10)
    {
      goto LABEL_2;
    }

    v15 += v53;
    if (v15 >= *(a2 + 36))
    {
      goto LABEL_98;
    }
  }

  v11 = 25;
LABEL_3:
  if (v11 >= 0x20)
  {
    v12 = 32;
  }

  else
  {
    v12 = v11;
  }

  fprintf(*MEMORY[0x29EDCA610], "nanoexr error: %s\n", off_29F2962C0[v12]);
LABEL_99:
  sub_29AB1C31C(a1, v54);
  return v11;
}

uint64_t fill_channel_u16(uint64_t result, int a2, __int16 a3)
{
  v3 = *(result + 28);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 24);
    do
    {
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = *(result + 20);
        v8 = 2 * v7;
        v9 = *result + v4 * 2 * v5 * v7 + 2 * a2;
        v10 = v5;
        do
        {
          *(v9 + v6) = a3;
          v6 += v8;
          --v10;
        }

        while (v10);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *fill_channel_u32(uint64_t *result, int a2, int a3)
{
  v3 = *(result + 7);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 6);
    do
    {
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = 0;
        v8 = *result;
        do
        {
          *(v8 + 4 * v4 * v5 * *(result + 5) + v6 * *(result + 5) + 4 * a2) = a3;
          ++v7;
          v5 = *(result + 6);
          v6 += 4;
        }

        while (v7 < v5);
        v3 = *(result + 7);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t fill_channel_float(uint64_t result, int a2, float a3)
{
  v3 = *(result + 28);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 24);
    do
    {
      if (v5 >= 1)
      {
        v6 = 0;
        v7 = *(result + 20);
        v8 = 4 * v7;
        v9 = *result + v4 * 4 * v5 * v7 + 4 * a2;
        v10 = v5;
        do
        {
          *(v9 + v6) = a3;
          v6 += v8;
          --v10;
        }

        while (v10);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

_DWORD *copy_channel_u16(_DWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[7];
  if (v5 >= 1)
  {
    v6 = 0;
    v8 = result[5];
    v7 = result[6];
    v9 = 2 * v7 * v8;
    v10 = 2 * v8;
    do
    {
      if (v7 >= 1)
      {
        v11 = 0;
        result = v7;
        do
        {
          *(a2 + 2 * a4 + v9 * v6 + v11) = *(a3 + 2 * a5 + v9 * v6 + v11);
          v11 += v10;
          result = (result - 1);
        }

        while (result);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

_DWORD *copy_channel_u32(_DWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[7];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result[6];
    do
    {
      if (v7 >= 1)
      {
        v8 = 0;
        for (i = 0; i < v7; ++i)
        {
          *(a2 + 4 * v6 * v7 * result[5] + v8 * result[5] + 4 * a4) = *(a3 + 4 * v6 * v7 * result[5] + v8 * result[5] + 4 * a5);
          v7 = result[6];
          v8 += 4;
        }

        v5 = result[7];
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return result;
}

_DWORD *copy_channel_float(_DWORD *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = result[7];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = result[6];
    v8 = a2 + 4 * a4;
    do
    {
      if (v7 >= 1)
      {
        v9 = 0;
        v10 = result[5];
        v11 = 4 * v10;
        v12 = v6 * 4 * v7 * v10;
        v13 = a3 + 4 * a5 + v12;
        v14 = v8 + v12;
        v15 = v7;
        do
        {
          *(v14 + v9) = *(v13 + v9);
          v9 += v11;
          --v15;
        }

        while (v15);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t nanoexr_read_exr(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, signed int a7, uint64_t a8)
{
  v87 = *MEMORY[0x29EDCA608];
  if (!a6)
  {
    return 0;
  }

  v73 = 0;
  v74 = 0;
  v71 = 0;
  v70 = 0u;
  v69 = 0u;
  v66 = 0u;
  v72 = 0xBF800000FFFFFFFELL;
  v67 = a3;
  v68 = a2;
  v65[0] = 104;
  v65[1] = sub_29AB1D74C;
  v86.i64[0] = 0;
  v83 = 0xBF800000FFFFFFFELL;
  v84 = 0;
  *&v75 = 104;
  *(&v75 + 1) = sub_29AB1D74C;
  v78 = a3;
  v79 = a2;
  v80 = 0u;
  v81 = 0u;
  v82 = 0;
  v76 = j__malloc;
  v77 = sub_29AB21010;
  if (!a1 || !*a1)
  {
    v15 = 3;
    fprintf(*MEMORY[0x29EDCA610], "err_cb ERROR %d: %s\n", 3, "Invalid filename passed to test file header function");
    goto LABEL_7;
  }

  if (sub_29AB1EDC8(v86.i64, &v75, 0))
  {
    v15 = 1;
LABEL_7:
    fprintf(*MEMORY[0x29EDCA610], "nanoexr header error: %s\n");
    return v15;
  }

  v16 = v86.i64[0];
  *(v86.i64[0] + 40) = sub_29AB1EFB8;
  v17 = sub_29AB1F0B4(v16, v16 + 8, a1);
  if (v17)
  {
LABEL_9:
    v15 = v17;
    sub_29AB17CA8(v86.i64, v18, v19);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_11;
  }

  v17 = sub_29AB1F1C0(v16);
  if (v17)
  {
    goto LABEL_9;
  }

  v26 = **(v16 + 136);
  if (v26 < 0)
  {
LABEL_11:
    st_size = -1;
  }

  else
  {
    memset(&v85, 0, sizeof(v85));
    v27 = fstat(v26, &v85);
    st_size = v85.st_size;
    if (v27)
    {
      st_size = -1;
    }
  }

  *(v16 + 152) = st_size;
  v15 = sub_29AB21490(v16, &v62, &v85);
  sub_29AB17CA8(v86.i64, v21, v22);
  if (v15)
  {
    goto LABEL_7;
  }

  v23 = sub_29AB17A54(&v74, a1, v65);
  if (v23)
  {
    v15 = v23;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr start error: %s\n");
LABEL_33:
    sub_29AB17CA8(&v74, v24, v25);
    return v15;
  }

  v64 = 0;
  v28 = sub_29AB18018(v74, a7, &v64);
  if (v28)
  {
    v15 = v28;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr storage error: %s\n");
    goto LABEL_33;
  }

  v29 = v74;
  if (!v74)
  {
    v15 = 2;
LABEL_32:
    fprintf(*MEMORY[0x29EDCA610], "nanoexr error: part index %d out of range\n");
    goto LABEL_33;
  }

  if (*v74 == 1)
  {
    pthread_mutex_lock((v74 + 504));
    v30 = *(v29 + 49);
    if (*v29 == 1)
    {
      pthread_mutex_unlock((v29 + 504));
    }
  }

  else
  {
    v30 = *(v74 + 49);
  }

  if (v30 <= a7)
  {
    v15 = 0;
    goto LABEL_32;
  }

  v63 = 0;
  v31 = sub_29AB1D784(v74, a7, &v63);
  if (v31)
  {
    v15 = v31;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr compression error: %s\n");
    goto LABEL_33;
  }

  *&v85.st_dev = 0;
  v85.st_ino = 0;
  v75 = 0uLL;
  v32 = sub_29AB17EA0(v74, a7, &v85);
  if (v32)
  {
    v15 = v32;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr data window error: %s\n");
    goto LABEL_33;
  }

  v33 = sub_29AB1D8F8(v74, a7, &v75);
  if (v33)
  {
    v15 = v33;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr display window error: %s\n");
    goto LABEL_33;
  }

  v35 = *&v85.st_dev;
  st_ino = v85.st_ino;
  v62 = 0;
  v36 = sub_29AB182B4(v74, a7, &v62);
  if (v36)
  {
    v15 = v36;
    fprintf(*MEMORY[0x29EDCA610], "nanoexr channels error: %s\n");
    goto LABEL_33;
  }

  v37 = *(*(v62 + 8) + 16);
  if (v37 >= 3)
  {
    v46 = *MEMORY[0x29EDCA610];
    v47 = "nanoexr error: unsupported pixel type\n";
    v48 = 38;
LABEL_46:
    fwrite(v47, v48, 1uLL, v46);
    sub_29AB17CA8(&v74, v49, v50);
    return 0;
  }

  v38 = dword_29B6C2B08[v37];
  v39 = vshl_s32(vadd_s32(vsub_s32(st_ino, v35), 0x100000001), vneg_s32(vdup_n_s32(a8)));
  *(a4 + 24) = v39;
  v40 = v38 * (v39.i32[0] * a6 * v39.i32[1]);
  *(a4 + 8) = v40;
  *(a4 + 16) = v37;
  *(a4 + 20) = a6;
  v41 = (HIDWORD(v85.st_ino) + 1) >> a8;
  *(a4 + 32) = *&v85.st_mode >> a8;
  *(a4 + 36) = v41;
  v42 = malloc(v40);
  *a4 = v42;
  if (!v42)
  {
    v46 = *MEMORY[0x29EDCA610];
    v47 = "nanoexr error: could not allocate memory for image data\n";
    v48 = 56;
    goto LABEL_46;
  }

  v86.i64[0] = -1;
  v86.i64[1] = -1;
  if (v64 == 1)
  {
    v43 = nanoexr_read_tiled_exr(v74, a4, a5, a7, a8, &v86);
  }

  else
  {
    v43 = nanoexr_read_scanline_exr(v74, a4, a5, a7, &v86);
  }

  v15 = v43;
  if (v43)
  {
    fwrite("nanoexr: failed to read image\n", 0x1EuLL, 1uLL, *MEMORY[0x29EDCA610]);
    free(*a4);
    *a4 = 0;
    return v15;
  }

  v52 = vandq_s8(vcgezq_s32(v86), xmmword_29B4C59E0);
  v52.i32[0] = vaddvq_s32(v52) & 0xF;
  *v52.i8 = vcnt_s8(*v52.i8);
  v52.i16[0] = vaddlv_u8(*v52.i8);
  v53 = *(a4 + 20);
  if (v53 <= v52.i32[0])
  {
    goto LABEL_96;
  }

  if (v53 == 4 && v86.i32[3] == -1)
  {
    v54 = *(a4 + 16);
    if (v54)
    {
      if (v54 == 2)
      {
        fill_channel_float(a4, 3, 1.0);
      }

      else if (v54 == 1)
      {
        fill_channel_u16(a4, 3, 15360);
      }
    }

    else
    {
      fill_channel_u32(a4, 3, 0);
    }
  }

  v55 = v86.i32[1];
  if (*(a4 + 20) >= 3 && v86.i32[2] == -1)
  {
    v56 = v86.i32[0];
    if (v86.i32[1] >= 0)
    {
      v57 = 1;
    }

    else
    {
      v57 = v86.i32[0] >> 31;
    }

    v58 = *(a4 + 16);
    if (v57 < 0)
    {
      if (v58)
      {
        if (v58 == 2)
        {
          fill_channel_float(a4, 2, 0.0);
        }

        else if (v58 == 1)
        {
          fill_channel_u16(a4, 2, 0);
        }
      }

      else
      {
        fill_channel_u32(a4, 2, 0);
      }
    }

    else if (v58)
    {
      if (v58 == 2)
      {
        copy_channel_float(a4, *a4, *a4, 2, v57);
      }

      else if (v58 == 1)
      {
        copy_channel_u16(a4, *a4, *a4, 2, v57);
      }
    }

    else
    {
      copy_channel_u32(a4, *a4, *a4, 2, v57);
    }
  }

  else
  {
    v56 = v86.i32[0];
  }

  if (*(a4 + 20) < 2 || v55 != -1)
  {
    goto LABEL_95;
  }

  v59 = *(a4 + 16);
  if (v56 < 0)
  {
    if (v59)
    {
      if (v59 == 2)
      {
        fill_channel_float(a4, 1, 0.0);
      }

      else if (v59 == 1)
      {
        fill_channel_u16(a4, 1, 0);
      }
    }

    else
    {
      fill_channel_u32(a4, 1, 0);
    }

LABEL_95:
    if (v56 == -1)
    {
      v61 = *(a4 + 16);
      if (v61)
      {
        if (v61 == 2)
        {
          fill_channel_float(a4, 0, 0.0);
        }

        else if (v61 == 1)
        {
          fill_channel_u16(a4, 0, 0);
        }
      }

      else
      {
        fill_channel_u32(a4, 0, 0);
      }
    }

    goto LABEL_96;
  }

  v60 = v56 >> 31;
  if (v59)
  {
    if (v59 == 2)
    {
      copy_channel_float(a4, *a4, *a4, 1, v60);
    }

    else if (v59 == 1)
    {
      copy_channel_u16(a4, *a4, *a4, 1, v60);
    }
  }

  else
  {
    copy_channel_u32(a4, *a4, *a4, 1, v60);
  }

LABEL_96:
  v15 = sub_29AB17CA8(&v74, v44, v45);
  if (v15)
  {
    fprintf(*MEMORY[0x29EDCA610], "nanoexr finish error: %s\n");
  }

  return v15;
}

uint64_t sub_29AB1D784(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  else if (a3)
  {
    v6 = *(*(a1 + 472) + 8 * a2);
    v7 = *(v6 + 40);
    if (v7)
    {
      if (*(v7 + 20) == 5)
      {
        *a3 = *(v7 + 24);
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
          v7 = *(v6 + 40);
        }

        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'", *(v7 + 8), "compression");
      }
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 15;
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 3, "NULL output for '%s'");
  }
}

uint64_t sub_29AB1D8F8(uint64_t a1, unsigned int a2, _OWORD *a3)
{
  if (!a1)
  {
    return 2;
  }

  if (*a1 == 1)
  {
    pthread_mutex_lock((a1 + 504));
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  else if (a3)
  {
    v6 = *(*(a1 + 472) + 8 * a2);
    v7 = *(v6 + 56);
    if (v7)
    {
      if (*(v7 + 20) == 1)
      {
        *a3 = **(v7 + 24);
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
        }

        return 0;
      }

      else
      {
        if (*a1 == 1)
        {
          pthread_mutex_unlock((a1 + 504));
          v7 = *(v6 + 56);
        }

        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'", *(v7 + 8), "displayWindow");
      }
    }

    else
    {
      if (*a1 == 1)
      {
        pthread_mutex_unlock((a1 + 504));
      }

      return 15;
    }
  }

  else
  {
    if (*a1 == 1)
    {
      pthread_mutex_unlock((a1 + 504));
    }

    return (*(a1 + 72))(a1, 3, "NULL output for '%s'");
  }
}

uint64_t sub_29AB1DA70(uint64_t a1, int *a2, char *__s2, const char ***a4)
{
  if (!a4)
  {
    v13 = *(a1 + 64);
    goto LABEL_16;
  }

  if (!__s2 || !*__s2)
  {
    v13 = *(a1 + 64);
LABEL_16:

    return v13();
  }

  if (!a2)
  {
    v13 = *(a1 + 64);
    goto LABEL_16;
  }

  v5 = *(a2 + 2);
  if (!v5)
  {
    return 15;
  }

  v7 = *a2;
  if (v7 < 1)
  {
    v9 = *(a2 + 2);
LABEL_21:
    if (v9 < v5 + 8 * v7)
    {
      v14 = *v9;
      result = strcmp(**v9, __s2);
      if (!result)
      {
        *a4 = v14;
        return result;
      }
    }

    return 15;
  }

  v8 = *a2;
  v9 = *(a2 + 2);
  while (1)
  {
    v10 = &v9[v8 >> 1];
    v11 = *v10;
    result = strcmp(**v10, __s2);
    if (!result)
    {
      break;
    }

    if (result >= 0)
    {
      v8 >>= 1;
    }

    else
    {
      v9 = v10 + 1;
      v8 += ~(v8 >> 1);
    }

    if (v8 <= 0)
    {
      goto LABEL_21;
    }
  }

  *a4 = v11;
  return result;
}

uint64_t sub_29AB1DBB8(uint64_t a1, int *a2, char *a3, int a4, int a5, void *a6, uint64_t *a7)
{
  v19 = 0;
  if (!a1)
  {
    return 2;
  }

  result = sub_29AB1DEFC(a1, a2, a3, a5, a6, a7);
  if (result)
  {
    if ((result & 0x80000000) != 0)
    {
      if (*(*a7 + 20) == a4)
      {
        return 0;
      }

      *a7 = 0;
      return (*(a1 + 72))(a1, 3, "Entry '%s' already in list but with different type ('%s')");
    }
  }

  else
  {
    v15 = strlen(a3);
    if (v15 <= *(a1 + 2))
    {
      v16 = &(&off_29F295EA8)[3 * (a4 - 1)];
      result = sub_29AB1E050(a1, &v19, v16[2], a5, a6, a3, v15, 0, 0);
      if (!result)
      {
        v17 = v19;
        *(v19 + 8) = *v16;
        v18 = *(v16 + 3);
        *(v17 + 17) = *(v16 + 2);
        *(v17 + 20) = v18;
        result = sub_29AB1E208(a1, a2, v17);
        if (!result)
        {
          *a7 = v17;
          sub_29AB1E530(a1, v17);
          return 0;
        }
      }

      if (a6)
      {
        *a6 = 0;
      }
    }

    else
    {
      return (*(a1 + 72))(a1, 12, "Provided name '%s' too long for file (len %d, max %d)");
    }
  }

  return result;
}

uint64_t sub_29AB1DD34(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    result = sub_29AB1E9C0(a1, a2, a4);
    if (!result)
    {
      v8 = *(a2 + 8);
      if (a4 >= 1)
      {
        if (a3)
        {
          strncpy(v8, a3, a4);
        }

        else
        {
          bzero(v8, a4);
        }
      }

      result = 0;
      v8[a4] = 0;
    }
  }

  else
  {
    v9 = *(a1 + 64);

    return v9();
  }

  return result;
}

uint64_t sub_29AB1DDE8(uint64_t a1, uint64_t a2, char *__src, size_t __n)
{
  if (!a1)
  {
    return 2;
  }

  if (a2)
  {
    v6 = __n;
    v8 = *(a2 + 4);
    if (v8 <= __n)
    {
      if (v8 >= 1 && *(a2 + 8) != 0)
      {
        (*(a1 + 96))();
      }

      *a2 = 0;
      *(a2 + 8) = 0;

      return sub_29AB1DD34(a1, a2, __src, v6);
    }

    else
    {
      *a2 = __n;
      v9 = *(a2 + 8);
      if (__n <= 0)
      {
        v10 = __n;
      }

      else
      {
        v10 = __n;
        if (__src)
        {
          strncpy(v9, __src, __n);
        }

        else
        {
          bzero(v9, __n);
        }
      }

      result = 0;
      v9[v10] = 0;
    }
  }

  else
  {
    v12 = *(a1 + 64);

    return v12();
  }

  return result;
}

uint64_t sub_29AB1DEFC(uint64_t a1, int *a2, char *__s2, int a4, void *a5, void *a6)
{
  v12 = 0;
  if (a2)
  {
    if (a6)
    {
      *a6 = 0;
      if (a4 < 0)
      {
        return (*(a1 + 72))(a1, 3, "Extra data storage requested negative length (%d)");
      }

      if (a4 && !a5)
      {
        return (*(a1 + 72))(a1, 3, "Extra data storage output pointer must be provided when requesting extra data (%d)");
      }

      if (a5)
      {
        *a5 = 0;
      }

      if (__s2 && *__s2)
      {
        if (sub_29AB1DA70(a1, a2, __s2, &v12))
        {
          return 0;
        }

        if (a4 && a5)
        {
          return (*(a1 + 72))(a1, 3, "Attribute '%s' (type %s) already in list but requesting additional data");
        }

        *a6 = v12;
        return 0xFFFFFFFFLL;
      }

      v11 = *(a1 + 64);
    }

    else
    {
      v11 = *(a1 + 64);
    }
  }

  else
  {
    v11 = *(a1 + 64);
  }

  return v11();
}

uint64_t sub_29AB1E050(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5, const void *a6, int a7, const void *a8, int a9)
{
  LODWORD(v15) = a7 + 33;
  if (a7 <= 0)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  if (a9 <= 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = (a9 + 1);
  }

  v17 = v16 + v15;
  v18 = 8 - (v17 & 7);
  if ((v17 & 7) == 0)
  {
    v18 = 0;
  }

  if (a3)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (a3)
  {
    v17 += a3 + v18;
  }

  v20 = 8 - (v17 & 7);
  if ((v17 & 7) == 0)
  {
    v20 = 0;
  }

  v21 = v17 + a4 + v20;
  if (a4 < 1)
  {
    v20 = 0;
  }

  v29 = v20;
  if (a4 >= 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  v23 = (*(a1 + 88))(v22);
  if (v23)
  {
    v24 = v23;
    *v23 = 0u;
    v23[1] = 0u;
    *a2 = v23;
    v25 = (v23 + 2);
    if (a7 >= 1)
    {
      memcpy(v23 + 2, a6, (a7 + 1));
      *v24 = v25;
      *(v24 + 16) = a7;
      v25 += (a7 + 1);
    }

    if (a9 >= 1)
    {
      memcpy(v25, a8, (a9 + 1));
      *(v24 + 1) = v25;
      *(v24 + 17) = a9;
      v25 += (a9 + 1);
    }

    v26 = &v25[v19];
    if (a3)
    {
      *(v24 + 3) = v26;
      v26 += a3;
    }

    if (a5)
    {
      if (a4 < 1)
      {
        *a5 = 0;
      }

      else
      {
        *a5 = &v26[v29];
      }
    }

    return 0;
  }

  else
  {
    v27 = *(a1 + 56);

    return v27(a1, 1);
  }
}

uint64_t sub_29AB1E208(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = v6 + 1;
  if (v6 < v7)
  {
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
LABEL_13:
    *(v9 + 8 * v6) = a3;
    *(v10 + 8 * v6) = a3;
    if (v6 >= 1)
    {
      v15 = v6 + 1;
      v16 = v10 + 8 * v6 - 8;
      do
      {
        v17 = *v16;
        if ((strcmp(*a3, **v16) & 0x80000000) == 0)
        {
          break;
        }

        *v16 = a3;
        *(v16 + 8) = v17;
        v16 -= 8;
        --v15;
      }

      while (v15 > 1);
    }

    *a2 = v8;
    switch(*(a3 + 20))
    {
      case 1:
      case 2:
      case 3:
      case 9:
      case 0x13:
      case 0x14:
      case 0x19:
        v18 = 0;
        v19 = *(a3 + 24);
        *v19 = 0;
        v19[1] = 0;
        return v18;
      case 4:
        v18 = 0;
        v24 = *(a3 + 24);
        goto LABEL_32;
      case 5:
      case 7:
      case 0xC:
        v18 = 0;
        *(a3 + 24) = 0;
        return v18;
      case 6:
        v18 = 0;
        *(a3 + 24) = 0;
        return v18;
      case 8:
      case 0xA:
        v18 = 0;
        *(a3 + 24) = 0;
        return v18;
      case 0xB:
        v18 = 0;
        v23 = *(a3 + 24);
        *v23 = 0;
        *(v23 + 8) = 0;
        *(v23 + 24) = 0;
        goto LABEL_35;
      case 0xD:
        v18 = 0;
        v24 = *(a3 + 24);
        *(v24 + 32) = 0;
LABEL_32:
        v25 = 0uLL;
        goto LABEL_40;
      case 0xE:
        v18 = 0;
        v24 = *(a3 + 24);
        *(v24 + 64) = 0;
        goto LABEL_37;
      case 0xF:
      case 0x10:
        v18 = 0;
        v24 = *(a3 + 24);
LABEL_37:
        v25 = 0uLL;
        *(v24 + 48) = 0u;
        goto LABEL_39;
      case 0x11:
      case 0x1C:
        v18 = 0;
        v23 = *(a3 + 24);
        *v23 = 0;
        *(v23 + 8) = 0;
LABEL_35:
        *(v23 + 16) = 0;
        return v18;
      case 0x12:
      case 0x16:
      case 0x17:
      case 0x18:
        v18 = 0;
        v22 = *(a3 + 24);
        goto LABEL_29;
      case 0x15:
        v18 = 0;
        v22 = *(a3 + 24);
        *(v22 + 8) = 0;
        goto LABEL_29;
      case 0x1A:
      case 0x1B:
        v18 = 0;
        v22 = *(a3 + 24);
        *(v22 + 8) = 0;
LABEL_29:
        *v22 = 0;
        break;
      case 0x1D:
        v18 = 0;
        v24 = *(a3 + 24);
        *(v24 + 48) = 0;
        v25 = 0uLL;
LABEL_39:
        *(v24 + 32) = v25;
LABEL_40:
        *v24 = v25;
        *(v24 + 16) = v25;
        break;
      default:
        v18 = 3;
        (*(a1 + 72))(a1, 3, "Invalid / unimplemented type (%s) in attr_init", *(a3 + 8));
        sub_29AB1E5BC(a1, a2, a3);
        break;
    }

    return v18;
  }

  v11 = 2 * v7;
  if (v11 < v8)
  {
    v12 = v6 + 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = (*(a1 + 88))(16 * v12);
  if (v13)
  {
    v9 = v13;
    a2[1] = v12;
    v10 = v13 + 8 * v12;
    if (v6 >= 1)
    {
      v14 = 0;
      do
      {
        *(v13 + v14) = *(*(a2 + 1) + v14);
        *(v10 + v14) = *(*(a2 + 2) + v14);
        v14 += 8;
      }

      while (8 * v6 != v14);
    }

    if (*(a2 + 1))
    {
      (*(a1 + 96))();
    }

    *(a2 + 1) = v9;
    *(a2 + 2) = v10;
    goto LABEL_13;
  }

  (*(a1 + 96))(a3);
  v20 = *(a1 + 56);

  return v20(a1, 1);
}

uint64_t sub_29AB1E530(uint64_t result, uint64_t a2)
{
  if (*(a2 + 20) == 29)
  {
    v7[3] = v2;
    v7[4] = v3;
    v7[0] = 0;
    result = sub_29AB1DA70(result, (result + 480), *(a2 + 8), v7);
    v5 = v7[0];
    if (result)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7[0] == 0;
    }

    if (!v6)
    {
      *(*(a2 + 24) + 32) = *(v7[0][3] + 4);
      *(*(a2 + 24) + 40) = *(v5[3] + 5);
      *(*(a2 + 24) + 48) = *(v5[3] + 6);
    }
  }

  return result;
}

uint64_t sub_29AB1E5BC(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (!result)
  {
    return result;
  }

  if (!a3)
  {
    v6 = *(result + 64);
    return v6();
  }

  if (!a2)
  {
    v6 = *(result + 64);
    return v6();
  }

  v3 = *a2;
  if (v3 < 1)
  {
LABEL_8:
    v6 = *(result + 64);
    return v6();
  }

  v4 = 0;
  v5 = (*(a2 + 1) + 8);
  while (*(v5 - 1) != a3)
  {
    ++v4;
    ++v5;
    if (v3 == v4)
    {
      goto LABEL_8;
    }
  }

  *(v5 - 1) = 0;
  if (v3 - 1 > v4)
  {
    v7 = (v3 - 1) - v4;
    do
    {
      *(v5 - 1) = *v5;
      ++v5;
      --v7;
    }

    while (v7);
  }

  v8 = 0;
  *a2 = v3 - 1;
  v9 = *(a2 + 2);
  v10 = v9;
  do
  {
    if (*v10 != a3)
    {
      v9[v8++] = *v10;
    }

    ++v10;
    --v3;
  }

  while (v3);
  return sub_29AB1E698(result, a3);
}

uint64_t sub_29AB1E698(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 20);
  if (v5 > 18)
  {
    switch(v5)
    {
      case 19:
        goto LABEL_15;
      case 20:
        v7 = sub_29AB1E86C(a1, *(a2 + 24));
        break;
      case 29:
        v7 = sub_29AB1E934(a1, *(a2 + 24));
        break;
      default:
        goto LABEL_25;
    }

LABEL_24:
    v4 = v7;
    goto LABEL_25;
  }

  if (v5 == 3)
  {
    v7 = sub_29AB1E7BC(a1, *(a2 + 24));
    goto LABEL_24;
  }

  if (v5 != 9)
  {
    if (v5 != 17)
    {
      goto LABEL_25;
    }

    if (a1)
    {
      v6 = *(a2 + 24);
      if (v6)
      {
        if (v6[2] && v6[1])
        {
          (*(a1 + 96))();
        }

        v4 = 0;
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        goto LABEL_25;
      }

LABEL_26:
      v4 = 0;
      goto LABEL_25;
    }

LABEL_21:
    v4 = 2;
    goto LABEL_25;
  }

LABEL_15:
  if (!a1)
  {
    goto LABEL_21;
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    goto LABEL_26;
  }

  if (*(v8 + 8) && *(v8 + 4) >= 1)
  {
    (*(a1 + 96))();
  }

  v4 = 0;
  *v8 = 0;
  *(v8 + 8) = 0;
LABEL_25:
  (*(a1 + 96))(a2);
  return v4;
}

uint64_t sub_29AB1E7BC(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = a2[1];
  if (v4 >= 1)
  {
    v6 = (v5 + 8);
    do
    {
      if (v5)
      {
        if (*v6 && *(v6 - 1) >= 1)
        {
          (*(a1 + 96))();
        }

        *(v6 - 1) = 0;
        *v6 = 0;
      }

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  if (v5)
  {
    (*(a1 + 96))(v5);
  }

  result = 0;
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_29AB1E86C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 4) >= 1)
  {
    v4 = *(a2 + 8);
    v5 = *a2;
    if (*a2 >= 1)
    {
      v6 = 0;
      v7 = (v4 + 8);
      do
      {
        if (v4)
        {
          if (*v7 && *(v7 - 1) >= 1)
          {
            (*(a1 + 96))();
          }

          *(v7 - 1) = 0;
          *v7 = 0;
          v5 = *a2;
        }

        ++v6;
        v7 += 4;
      }

      while (v6 < v5);
    }

    if (v4)
    {
      (*(a1 + 96))(v4);
    }
  }

  result = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29AB1E934(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 2;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 16) && *(a2 + 8) >= 1)
  {
    (*(a1 + 96))();
  }

  if (*(a2 + 24))
  {
    v4 = *(a2 + 48);
    if (v4)
    {
      v4(a1);
    }
  }

  result = 0;
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_29AB1E9C0(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 2;
  }

  if (a3 < 0)
  {
    return (*(a1 + 72))(a1, 3, "Received request to allocate negative sized string (%d)", a3);
  }

  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v6 = a3 + 1;
    v7 = (*(a1 + 88))((a3 + 1));
    *(a2 + 8) = v7;
    if (v7)
    {
      result = 0;
      *a2 = a3;
      *(a2 + 4) = v6;
    }

    else
    {
      v10 = *(a1 + 56);

      return v10(a1, 1);
    }
  }

  else
  {
    v9 = *(a1 + 64);

    return v9();
  }

  return result;
}

uint64_t sub_29AB1EAB8(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v6 = *(a1 + 56);
    v7 = a1;
    v8 = 21;
    goto LABEL_11;
  }

  if (*a1)
  {
    v11 = *(*(a1 + 472) + 8 * a2);
    v13 = (v11 + 72);
    v12 = *(v11 + 72);
    if (v12)
    {
      if (*(v12 + 20) != 8)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
      }
    }

    else
    {
      v10 = sub_29AB1DBB8(a1, (v11 + 8), "pixelAspectRatio", 8, 0, 0, v13);
      if (v10)
      {
LABEL_20:
        pthread_mutex_unlock((a1 + 504));
        return v10;
      }

      v12 = *v13;
    }

    v10 = 0;
    *(v12 + 24) = a3;
    goto LABEL_20;
  }

  pthread_mutex_unlock((a1 + 504));
  v6 = *(a1 + 56);
  v7 = a1;
  v8 = 8;
LABEL_11:

  return v6(v7, v8);
}

uint64_t sub_29AB1EC40(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    return 2;
  }

  pthread_mutex_lock((a1 + 504));
  if ((a2 & 0x80000000) != 0 || *(a1 + 196) <= a2)
  {
    pthread_mutex_unlock((a1 + 504));
    return (*(a1 + 72))(a1, 4, "Part index (%d) out of range");
  }

  if (*a1 == 3)
  {
    pthread_mutex_unlock((a1 + 504));
    v6 = *(a1 + 56);
    v7 = a1;
    v8 = 21;
    goto LABEL_11;
  }

  if (*a1)
  {
    v11 = *(*(a1 + 472) + 8 * a2);
    v13 = (v11 + 88);
    v12 = *(v11 + 88);
    if (v12)
    {
      if (*(v12 + 20) != 8)
      {
        pthread_mutex_unlock((a1 + 504));
        return (*(a1 + 72))(a1, 6, "Invalid required attribute type '%s' for '%s'");
      }
    }

    else
    {
      v10 = sub_29AB1DBB8(a1, (v11 + 8), "screenWindowWidth", 8, 0, 0, v13);
      if (v10)
      {
LABEL_20:
        pthread_mutex_unlock((a1 + 504));
        return v10;
      }

      v12 = *v13;
    }

    v10 = 0;
    *(v12 + 24) = a3;
    goto LABEL_20;
  }

  pthread_mutex_unlock((a1 + 504));
  v6 = *(a1 + 56);
  v7 = a1;
  v8 = 8;
LABEL_11:

  return v6(v7, v8);
}

uint64_t sub_29AB1EDC8(uint64_t *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  if (*(a2 + 40))
  {
    v6 = 0;
    v7 = 576;
  }

  else
  {
    v6 = *(a2 + 56) == 0;
    if (*(a2 + 56))
    {
      v7 = 576;
    }

    else
    {
      v7 = 580;
    }
  }

  v8 = (*(a2 + 16))(v7);
  if (!v8)
  {
    v16 = 1;
    (*(a2 + 8))(0, 1, "Unable to allocate memory");
    return v16;
  }

  v9 = v8;
  bzero(v8, 0x240uLL);
  *v9 = a3;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  *(v9 + 128) = v11;
  if (v10 || *(a2 + 56))
  {
    goto LABEL_11;
  }

  if (v6)
  {
    v11 = v9 + 576;
LABEL_11:
    *(v9 + 136) = v11;
  }

  *(v9 + 56) = sub_29AB2101C;
  *(v9 + 64) = sub_29AB21074;
  *(v9 + 72) = sub_29AB210B4;
  *(v9 + 80) = *(a2 + 8);
  *(v9 + 96) = *(a2 + 24);
  *(v9 + 104) = vmaxq_s32(*(a2 + 72), 0);
  *(v9 + 120) = 0x42340000FFFFFFFFLL;
  v12 = *(a2 + 88);
  if ((v12 & 0x80000000) == 0)
  {
    *(v9 + 120) = v12;
  }

  v13 = *(a2 + 92);
  if (v13 >= 0.0)
  {
    *(v9 + 124) = v13;
  }

  v14 = *(a2 + 96);
  if (v14)
  {
    *(v9 + 6) = 1;
  }

  if ((v14 & 2) != 0)
  {
    *(v9 + 7) = 1;
  }

  *(v9 + 568) = v14 & 4;
  *(v9 + 569) = v14 & 8;
  *(v9 + 2) = 31;
  v15 = *(a2 + 56);
  *(v9 + 144) = *(a2 + 64);
  *(v9 + 152) = -1;
  *(v9 + 160) = v10;
  *(v9 + 168) = v15;
  if (pthread_mutex_init((v9 + 504), 0))
  {
    (*(a2 + 24))(v9);
    *a1 = 0;
    return 1;
  }

  else
  {
    *a1 = v9;
    if (a3 == 1)
    {
      return 0;
    }

    else
    {
      v18 = 0;
      v16 = sub_29AB211CC(v9, &v18, 0);
      if (v16)
      {
        (*(a2 + 24))(v9);
        *a1 = 0;
      }
    }
  }

  return v16;
}

uint64_t sub_29AB1EFB8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, int a6)
{
  if (a5)
  {
    *a5 = -1;
  }

  if (!a1)
  {
    return 2;
  }

  if (a4)
  {
    v10 = a1[20];
    if (v10)
    {
      v11 = v10(a1, a1[17], a2, a3, *a4, a1[9]);
      if (a5)
      {
        *a5 = v11;
      }

      if (v11 >= 1)
      {
        *a4 += v11;
      }

      if (v11 > -1 && a6 == 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = 10;
      }

      if (v11 == a3)
      {
        return 0;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      v16 = a1[7];

      return v16();
    }
  }

  else
  {
    v15 = a1[8];

    return v15();
  }
}