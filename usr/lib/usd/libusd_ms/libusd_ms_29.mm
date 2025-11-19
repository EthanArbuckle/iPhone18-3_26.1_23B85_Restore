void sub_29A15CB60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, char *a25, int a26, __int16 a27, char a28, char a29, void *__p, void *a31, char a32, int a33, __int16 a34, char a35, uint64_t a36)
{
  if (SHIBYTE(a33) < 0)
  {
    operator delete(__p);
  }

  sub_29A15D468(&a24, a25);
  sub_29A15FAC8(&a15, a16);
  _Unwind_Resume(a1);
}

unint64_t sub_29A15CDA4(pxrInternal__aapl__pxrReserved__::JsValue *a1)
{
  if (*(a1 + 16) != 1 || !pxrInternal__aapl__pxrReserved__::JsValue::IsObject(a1))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(a1);
}

unint64_t sub_29A15CDFC(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::JsFindValue(a1, a2, &v4, v7);
  v2 = sub_29A15CEB8(v7);
  if (v9 == 1 && v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6 == 1 && v5)
  {
    sub_29A014BEC(v5);
  }

  return v2;
}

void sub_29A15CE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1 && a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_29A15CEB8(pxrInternal__aapl__pxrReserved__::JsValue *a1)
{
  if (*(a1 + 16) != 1 || !pxrInternal__aapl__pxrReserved__::JsValue::IsArray(a1))
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(a1);
}

unint64_t sub_29A15CF10(uint64_t a1, uint64_t a2)
{
  LOBYTE(v4) = 0;
  v6 = 0;
  pxrInternal__aapl__pxrReserved__::JsFindValue(a1, a2, &v4, v7);
  v2 = sub_29A15CDA4(v7);
  if (v9 == 1 && v8)
  {
    sub_29A014BEC(v8);
  }

  if (v6 == 1 && v5)
  {
    sub_29A014BEC(v5);
  }

  return v2;
}

void sub_29A15CF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14)
{
  if (a14 == 1 && a13)
  {
    sub_29A014BEC(a13);
  }

  if (a11 == 1)
  {
    if (a10)
    {
      sub_29A014BEC(a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A15CFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 24);
  v6 = bswap64(0x9E3779B97F4A7C55 * (v5 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = v6;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[5] ^ v5) < 8)
            {
              return result;
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

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A15D214(a1, v6, a3, &v22);
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
      if (v6 >= v7)
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
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v3) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A15D1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB54(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A15D214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x30uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  *(result + 1) = *a3;
  v9 = *(a3 + 24);
  result[4] = *(a3 + 16);
  result[5] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[5] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a4 + 16) = 1;
  return result;
}

void *sub_29A15D298(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1 + 3);
  v2 = a1[3] & 0xFFFFFFFFFFFFFFF8;
  if (v2)
  {
    v3 = (v2 + 16);
    if (*(v2 + 39) < 0)
    {
      v3 = *v3;
    }
  }

  else
  {
    v3 = "";
  }

  a1[2] = v3;
  return a1;
}

void sub_29A15D2F8(uint64_t a1, void *a2)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A2040EC0;
  *(a1 + 24) = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
}

void sub_29A15D378(_Unwind_Exception *a1, const void *a2)
{
  sub_29A0F6078(v3, a2);
  pxrInternal__aapl__pxrReserved__::TfRefBase::~TfRefBase(v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_29A15D394(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = v5[4];
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v10 = operator new(0x40uLL);
    *(v10 + 4) = *a3;
    *(v10 + 40) = *(a3 + 8);
    *(v10 + 7) = *(a3 + 24);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    sub_29A00B204(a1, v8, v6, v10);
    return v10;
  }

  return v8;
}

void sub_29A15D468(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_29A15D468(a1, *a2);
    sub_29A15D468(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_29A15D4CC(pxrInternal__aapl__pxrReserved__::TraceEvent *a1, char *a2, uint64_t a3, char a4)
{
  v139 = *MEMORY[0x29EDCA608];
  while (2)
  {
    v8 = (a2 - 32);
    v132 = (a2 - 96);
    v133 = (a2 - 64);
    v9 = a1;
    v134 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v9;
          v10 = (a2 - v9) >> 5;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                sub_29A15DD90(v9, (v9 + 32), v8);
                return;
              case 4:
                sub_29A15DD90(v9, (v9 + 32), (v9 + 64));
                TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v8);
                if (TimeStamp < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v9 + 64)))
                {
                  v58 = *(v9 + 5);
                  v137 = *(v9 + 4);
                  v57 = v137;
                  v138 = v58;
                  v59 = *(v8 + 1);
                  *(v9 + 4) = *v8;
                  *(v9 + 5) = v59;
                  *v8 = v57;
                  *(v8 + 1) = v58;
                  v60 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v9 + 64));
                  if (v60 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v9 + 32)))
                  {
                    v62 = *(v9 + 2);
                    v61 = *(v9 + 3);
                    v63 = *(v9 + 5);
                    *(v9 + 2) = *(v9 + 4);
                    *(v9 + 3) = v63;
                    *(v9 + 4) = v62;
                    *(v9 + 5) = v61;
                    v64 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v9 + 32));
                    if (v64 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v9))
                    {
                      v65 = *(v9 + 1);
                      v137 = *v9;
                      v138 = v65;
                      v66 = *(v9 + 3);
                      *v9 = *(v9 + 2);
                      *(v9 + 1) = v66;
                      v67 = v138;
                      *(v9 + 2) = v137;
                      *(v9 + 3) = v67;
                    }
                  }
                }

                return;
              case 5:
                sub_29A15DECC(v9, (v9 + 32), (v9 + 64), (v9 + 96), v8);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v52 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v8);
              if (v52 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v9))
              {
                v53 = *(v9 + 1);
                v137 = *v9;
                v138 = v53;
                v54 = *(v8 + 1);
                *v9 = *v8;
                *(v9 + 1) = v54;
                v55 = v138;
                *v8 = v137;
                *(v8 + 1) = v55;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v68 = (v9 + 32);
            v69 = v9 == a2 || v68 == a2;
            v70 = v69;
            if (a4)
            {
              if ((v70 & 1) == 0)
              {
                v71 = 0;
                v72 = v9;
                do
                {
                  v73 = v72;
                  v72 = v68;
                  v74 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v68);
                  if (v74 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v73))
                  {
                    v75 = *(v72 + 1);
                    v137 = *v72;
                    v138 = v75;
                    v76 = v71;
                    while (1)
                    {
                      v77 = v9 + v76;
                      v78 = *(v9 + v76 + 16);
                      *(v77 + 2) = *(v9 + v76);
                      *(v77 + 3) = v78;
                      if (!v76)
                      {
                        break;
                      }

                      v76 -= 32;
                      v79 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v137);
                      if (v79 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v9 + v76)))
                      {
                        v80 = (v9 + v76 + 32);
                        goto LABEL_82;
                      }
                    }

                    v80 = v9;
LABEL_82:
                    v81 = v138;
                    *v80 = v137;
                    *(v80 + 1) = v81;
                    a2 = v134;
                  }

                  v68 = (v72 + 32);
                  v71 += 32;
                }

                while (v72 + 32 != a2);
              }
            }

            else if ((v70 & 1) == 0)
            {
              v123 = (v9 - 32);
              do
              {
                v124 = a1;
                a1 = v68;
                v125 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v68);
                if (v125 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v124))
                {
                  v126 = *(a1 + 1);
                  v137 = *a1;
                  v138 = v126;
                  v127 = v123;
                  do
                  {
                    v128 = *(v127 + 3);
                    *(v127 + 4) = *(v127 + 2);
                    *(v127 + 5) = v128;
                    v129 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v137);
                    v130 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v127);
                    v127 = (v127 - 32);
                  }

                  while (v129 < v130);
                  v131 = v138;
                  *(v127 + 4) = v137;
                  *(v127 + 5) = v131;
                }

                v68 = (a1 + 32);
                v123 = (v123 + 32);
              }

              while (a1 + 32 != a2);
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v82 = v11 >> 1;
              v83 = v11 >> 1;
              do
              {
                v84 = v83;
                if (v82 >= v83)
                {
                  v85 = (2 * v83) | 1;
                  v86 = (a1 + 32 * v85);
                  if (2 * v83 + 2 < v10)
                  {
                    v87 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 32 * v85));
                    if (v87 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v86 + 2)))
                    {
                      v86 += 2;
                      v85 = 2 * v84 + 2;
                    }
                  }

                  v88 = (a1 + 32 * v84);
                  v89 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v86);
                  if (v89 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v88))
                  {
                    v90 = *(v88 + 1);
                    v137 = *v88;
                    v138 = v90;
                    do
                    {
                      v91 = v86;
                      v92 = v86[1];
                      *v88 = *v86;
                      *(v88 + 1) = v92;
                      if (v82 < v85)
                      {
                        break;
                      }

                      v93 = (2 * v85) | 1;
                      v86 = (a1 + 32 * v93);
                      v94 = 2 * v85 + 2;
                      if (v94 < v10)
                      {
                        v95 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 32 * v93));
                        if (v95 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v86 + 2)))
                        {
                          v86 += 2;
                          v93 = v94;
                        }
                      }

                      v96 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v86);
                      v88 = v91;
                      v85 = v93;
                    }

                    while (v96 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v137));
                    v97 = v138;
                    *v91 = v137;
                    *(v91 + 1) = v97;
                  }
                }

                v83 = v84 - 1;
              }

              while (v84);
              v98 = v134;
              do
              {
                v99 = 0;
                v100 = *(a1 + 1);
                v135 = *a1;
                v136 = v100;
                v101 = a1;
                do
                {
                  v102 = (v101 + 32 * v99);
                  v103 = (v102 + 2);
                  v104 = (2 * v99) | 1;
                  v105 = 2 * v99 + 2;
                  if (v105 < v10)
                  {
                    v106 = (v102 + 4);
                    v107 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v102 + 2));
                    if (v107 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v106))
                    {
                      v103 = v106;
                      v104 = v105;
                    }
                  }

                  v108 = *(v103 + 1);
                  *v101 = *v103;
                  *(v101 + 1) = v108;
                  v101 = v103;
                  v99 = v104;
                }

                while (v104 <= ((v10 - 2) >> 1));
                v98 -= 32;
                if (v103 == v98)
                {
                  v122 = v136;
                  *v103 = v135;
                  *(v103 + 1) = v122;
                }

                else
                {
                  v109 = *(v98 + 1);
                  *v103 = *v98;
                  *(v103 + 1) = v109;
                  v110 = v136;
                  *v98 = v135;
                  *(v98 + 1) = v110;
                  v111 = (v103 - a1 + 32) >> 5;
                  v112 = v111 < 2;
                  v113 = v111 - 2;
                  if (!v112)
                  {
                    v114 = v113 >> 1;
                    v115 = (a1 + 32 * (v113 >> 1));
                    v116 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v115);
                    if (v116 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v103))
                    {
                      v117 = *(v103 + 1);
                      v137 = *v103;
                      v138 = v117;
                      do
                      {
                        v118 = v115;
                        v119 = *(v115 + 1);
                        *v103 = *v115;
                        *(v103 + 1) = v119;
                        if (!v114)
                        {
                          break;
                        }

                        v114 = (v114 - 1) >> 1;
                        v115 = (a1 + 32 * v114);
                        v120 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v115);
                        v103 = v118;
                      }

                      while (v120 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v137));
                      v121 = v138;
                      *v118 = v137;
                      *(v118 + 1) = v121;
                    }
                  }
                }

                v112 = v10-- <= 2;
              }

              while (!v112);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = (v9 + 32 * (v10 >> 1));
          if (v10 < 0x81)
          {
            sub_29A15DD90((a1 + 32 * (v10 >> 1)), a1, v8);
          }

          else
          {
            sub_29A15DD90(a1, (a1 + 32 * (v10 >> 1)), v8);
            sub_29A15DD90((a1 + 32), (v13 - 2), v133);
            sub_29A15DD90((a1 + 64), (a1 + 32 * v12 + 32), v132);
            sub_29A15DD90((v13 - 2), (a1 + 32 * (v10 >> 1)), (a1 + 32 * v12 + 32));
            v14 = *(a1 + 1);
            v137 = *a1;
            v138 = v14;
            v15 = v13[1];
            *a1 = *v13;
            *(a1 + 1) = v15;
            v16 = v138;
            *v13 = v137;
            v13[1] = v16;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v17 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 - 32));
          if (v17 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1))
          {
            break;
          }

          v36 = *(a1 + 1);
          v135 = *a1;
          v136 = v36;
          v37 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
          if (v37 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v8))
          {
            v39 = a1 + 32;
            a2 = v134;
            do
            {
              v9 = v39;
              if (v39 >= v134)
              {
                break;
              }

              v40 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
              v41 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v9);
              v39 = v9 + 32;
            }

            while (v40 >= v41);
          }

          else
          {
            v9 = a1;
            a2 = v134;
            do
            {
              v9 = (v9 + 32);
              v38 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
            }

            while (v38 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v9));
          }

          v42 = a2;
          if (v9 < a2)
          {
            v42 = a2;
            do
            {
              v42 = (v42 - 32);
              v43 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
            }

            while (v43 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v42));
          }

          while (v9 < v42)
          {
            v44 = *(v9 + 1);
            v137 = *v9;
            v138 = v44;
            v45 = *(v42 + 1);
            *v9 = *v42;
            *(v9 + 1) = v45;
            v46 = v138;
            *v42 = v137;
            *(v42 + 1) = v46;
            do
            {
              v9 = (v9 + 32);
              v47 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
            }

            while (v47 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v9));
            do
            {
              v42 = (v42 - 32);
              v48 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135);
            }

            while (v48 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v42));
          }

          v49 = (v9 - 32);
          if ((v9 - 32) != a1)
          {
            v50 = *(v9 - 1);
            *a1 = *v49;
            *(a1 + 1) = v50;
          }

          a4 = 0;
          v51 = v136;
          *v49 = v135;
          *(v9 - 1) = v51;
        }

        v18 = 0;
        v19 = *(a1 + 1);
        v135 = *a1;
        v136 = v19;
        do
        {
          v18 += 32;
          v20 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + v18));
        }

        while (v20 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135));
        v21 = (a1 + v18);
        v22 = v134;
        v69 = v18 == 32;
        a2 = v134;
        if (v69)
        {
          v22 = v134;
          do
          {
            if (v21 >= v22)
            {
              break;
            }

            v22 = (v22 - 32);
            v24 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v22);
          }

          while (v24 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135));
        }

        else
        {
          do
          {
            v22 = (v22 - 32);
            v23 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v22);
          }

          while (v23 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135));
        }

        if (v21 >= v22)
        {
          v32 = (v21 - 32);
        }

        else
        {
          v25 = v21;
          v26 = v22;
          do
          {
            v27 = *(v25 + 1);
            v137 = *v25;
            v138 = v27;
            v28 = *(v26 + 1);
            *v25 = *v26;
            *(v25 + 1) = v28;
            v29 = v138;
            *v26 = v137;
            *(v26 + 1) = v29;
            do
            {
              v25 = (v25 + 32);
              v30 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v25);
            }

            while (v30 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135));
            do
            {
              v26 = (v26 - 32);
              v31 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v26);
            }

            while (v31 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v135));
          }

          while (v25 < v26);
          v32 = (v25 - 32);
        }

        if (v32 != a1)
        {
          v33 = *(v32 + 1);
          *a1 = *v32;
          *(a1 + 1) = v33;
        }

        v34 = v136;
        *v32 = v135;
        *(v32 + 1) = v34;
        if (v21 >= v22)
        {
          break;
        }

LABEL_38:
        sub_29A15D4CC(a1, v32, a3, a4 & 1);
        a4 = 0;
        v9 = (v32 + 32);
      }

      v35 = sub_29A15E080(a1, v32);
      v9 = (v32 + 32);
      if (sub_29A15E080(v32 + 32, v134))
      {
        break;
      }

      if (!v35)
      {
        goto LABEL_38;
      }
    }

    a2 = v32;
    if (!v35)
    {
      continue;
    }

    break;
  }
}

unint64_t sub_29A15DD90(pxrInternal__aapl__pxrReserved__::TraceEvent *a1, pxrInternal__aapl__pxrReserved__::TraceEvent *this, pxrInternal__aapl__pxrReserved__::TraceEvent *a3)
{
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
  v7 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1);
  v8 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3);
  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
  if (TimeStamp >= v7)
  {
    if (v8 < result)
    {
      v14 = *this;
      v13 = *(this + 1);
      v15 = *(a3 + 1);
      *this = *a3;
      *(this + 1) = v15;
      *a3 = v14;
      *(a3 + 1) = v13;
      v16 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
      result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1);
      if (v16 < result)
      {
        v18 = *a1;
        v17 = *(a1 + 1);
        v19 = *(this + 1);
        *a1 = *this;
        *(a1 + 1) = v19;
        *this = v18;
        *(this + 1) = v17;
      }
    }
  }

  else
  {
    if (v8 >= result)
    {
      v21 = *a1;
      v20 = *(a1 + 1);
      v22 = *(this + 1);
      *a1 = *this;
      *(a1 + 1) = v22;
      *this = v21;
      *(this + 1) = v20;
      v23 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3);
      result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
      if (v23 >= result)
      {
        return result;
      }

      v11 = *this;
      v10 = *(this + 1);
      v24 = *(a3 + 1);
      *this = *a3;
      *(this + 1) = v24;
    }

    else
    {
      v11 = *a1;
      v10 = *(a1 + 1);
      v12 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v12;
    }

    *a3 = v11;
    *(a3 + 1) = v10;
  }

  return result;
}

__n128 sub_29A15DECC(pxrInternal__aapl__pxrReserved__::TraceEvent *a1, pxrInternal__aapl__pxrReserved__::TraceEvent *a2, pxrInternal__aapl__pxrReserved__::TraceEvent *a3, pxrInternal__aapl__pxrReserved__::TraceEvent *a4, pxrInternal__aapl__pxrReserved__::TraceEvent *a5)
{
  sub_29A15DD90(a1, a2, a3);
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
  if (TimeStamp < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3))
  {
    v12 = *a3;
    v11 = *(a3 + 1);
    v13 = *(a4 + 1);
    *a3 = *a4;
    *(a3 + 1) = v13;
    *a4 = v12;
    *(a4 + 1) = v11;
    v14 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3);
    if (v14 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a2))
    {
      v16 = *a2;
      v15 = *(a2 + 1);
      v17 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v17;
      *a3 = v16;
      *(a3 + 1) = v15;
      v18 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a2);
      if (v18 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1))
      {
        v20 = *a1;
        v19 = *(a1 + 1);
        v21 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v21;
        *a2 = v20;
        *(a2 + 1) = v19;
      }
    }
  }

  v22 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a5);
  if (v22 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4))
  {
    v25 = *a4;
    v24 = *(a4 + 1);
    v26 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v26;
    *a5 = v25;
    *(a5 + 1) = v24;
    v27 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a4);
    if (v27 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3))
    {
      v29 = *a3;
      v28 = *(a3 + 1);
      v30 = *(a4 + 1);
      *a3 = *a4;
      *(a3 + 1) = v30;
      *a4 = v29;
      *(a4 + 1) = v28;
      v31 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a3);
      if (v31 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a2))
      {
        v33 = *a2;
        v32 = *(a2 + 1);
        v34 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v34;
        *a3 = v33;
        *(a3 + 1) = v32;
        v35 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a2);
        if (v35 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1))
        {
          v36 = *a1;
          result = *(a1 + 1);
          v37 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v37;
          *a2 = v36;
          *(a2 + 1) = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_29A15E080(char *a1, char *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_29A15DD90(a1, (a1 + 32), (a2 - 32));
        break;
      case 4:
        v22 = (a2 - 32);
        sub_29A15DD90(a1, (a1 + 32), (a1 + 64));
        TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v22);
        if (TimeStamp < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 64)))
        {
          v25 = *(a1 + 4);
          v24 = *(a1 + 5);
          v26 = *(v22 + 1);
          *(a1 + 4) = *v22;
          *(a1 + 5) = v26;
          *v22 = v25;
          *(v22 + 1) = v24;
          v27 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 64));
          if (v27 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 32)))
          {
            v29 = *(a1 + 2);
            v28 = *(a1 + 3);
            v30 = *(a1 + 5);
            *(a1 + 2) = *(a1 + 4);
            *(a1 + 3) = v30;
            *(a1 + 4) = v29;
            *(a1 + 5) = v28;
            v31 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a1 + 32));
            if (v31 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1))
            {
              v33 = *a1;
              v32 = *(a1 + 1);
              v34 = *(a1 + 3);
              *a1 = *(a1 + 2);
              *(a1 + 1) = v34;
              *(a1 + 2) = v33;
              *(a1 + 3) = v32;
            }
          }
        }

        return 1;
      case 5:
        sub_29A15DECC(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 32;
    v6 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((a2 - 32));
    if (v6 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(a1))
    {
      v8 = *a1;
      v7 = *(a1 + 1);
      v9 = *(v5 + 1);
      *a1 = *v5;
      *(a1 + 1) = v9;
      *v5 = v8;
      *(v5 + 1) = v7;
    }

    return 1;
  }

LABEL_11:
  v10 = (a1 + 64);
  sub_29A15DD90(a1, (a1 + 32), (a1 + 64));
  v11 = (a1 + 96);
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v11);
    if (v14 < pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v10))
    {
      v15 = *(v11 + 1);
      v36 = *v11;
      v37 = v15;
      v16 = v12;
      while (1)
      {
        v17 = &a1[v16];
        v18 = *&a1[v16 + 80];
        *(v17 + 6) = *&a1[v16 + 64];
        *(v17 + 7) = v18;
        if (v16 == -64)
        {
          break;
        }

        v19 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(&v36);
        v16 -= 32;
        if (v19 >= pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp((v17 + 32)))
        {
          v20 = &a1[v16 + 96];
          goto LABEL_19;
        }
      }

      v20 = a1;
LABEL_19:
      v21 = v37;
      *v20 = v36;
      *(v20 + 1) = v21;
      if (++v13 == 8)
      {
        return v11 + 32 == a2;
      }
    }

    v10 = v11;
    v12 += 32;
    v11 = (v11 + 32);
    if (v11 == a2)
    {
      return 1;
    }
  }
}

_OWORD *sub_29A15E300(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, _OWORD *a2)
{
  v2 = *a1;
  *a1 += 32;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v2;
}

double sub_29A15E358(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::TraceEventContainer::TraceEventContainer(a1, a2);
  *(v3 + 4) = v3 + 32;
  *(v3 + 5) = v3 + 32;
  *(v3 + 6) = 0;
  v4 = *(a2 + 48);
  if (v4)
  {
    v6 = *(a2 + 32);
    v5 = *(a2 + 40);
    v7 = *(v6 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *(v3 + 4);
    *(v9 + 8) = v5;
    *v5 = v9;
    *(v3 + 4) = v6;
    *(v6 + 8) = v3 + 32;
    *(v3 + 6) = v4;
    *(a2 + 48) = 0;
  }

  *(v3 + 56) = *(a2 + 56);
  *(v3 + 9) = *(a2 + 72);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 11) = *(a2 + 88);
  v10 = *(a2 + 104);
  *(v3 + 12) = *(a2 + 96);
  result = 0.0;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(v3 + 13) = v10;
  v12 = *(a2 + 120);
  *(v3 + 14) = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(v3 + 15) = v12;
  return result;
}

void *sub_29A15E408(pxrInternal__aapl__pxrReserved__::TraceDataBuffer::Allocator *a1, char *__s)
{
  v4 = strlen(__s) + 1;
  v5 = *(a1 + 1);
  v6 = &v5[v4];
  if (&v5[v4] > *a1)
  {
    pxrInternal__aapl__pxrReserved__::TraceDataBuffer::Allocator::AllocateBlock(a1, 1uLL, v4);
    v5 = *(a1 + 1);
    v6 = &v5[v4];
  }

  *(a1 + 1) = v6;

  return memcpy(v5, __s, v4);
}

void *sub_29A15E490(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2040F78;
  result[1] = v3;
  return result;
}

uint64_t sub_29A15E4D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2040F78;
  a2[1] = v2;
  return result;
}

void sub_29A15E504(uint64_t a1, uint64_t **this)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "libTraceData");
  v4 = *(a1 + 8);
  v32[0] = 0;
  v32[1] = 0;
  v30 = &unk_2A2040FF8;
  v31 = v32;
  v5 = *v4;
  v6 = v4[1];
  while (v5 != v6)
  {
    if (*v5)
    {
      pxrInternal__aapl__pxrReserved__::TraceCollection::Iterate(*v5, &v30);
    }

    v5 += 2;
  }

  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "threadEvents");
  memset(v33, 0, sizeof(v33));
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginArray(this);
  v7 = v31;
  if (v31 != v32)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "thread");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v7 + 4);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "events");
      pxrInternal__aapl__pxrReserved__::JsWriter::BeginArray(this);
      v8 = v7[7];
      v9 = v7[8];
      while (v8 != v9)
      {
        v10 = v8[1];
        Type = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(v10);
        if (Type <= 3)
        {
          if ((Type - 1) < 2)
          {
            if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
LABEL_33:
              v37[0] = v10[2];
              v25 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(v10);
              v36 = sub_29A15F1A4(v25);
              TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v10);
              v35 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(TimeStamp) / 1000.0;
              sub_29A15F0F4(this, "key", EmptyString, "category", v37, "type", &v36, "ts", &v35);
              goto LABEL_34;
            }

LABEL_32:
            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Type);
            goto LABEL_33;
          }

          if (Type == 3)
          {
            if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v15 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v15 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Type);
            }

            v37[0] = v10[2];
            v18 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(v10);
            v36 = sub_29A15F1A4(v18);
            StartTimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetStartTimeStamp(v10);
            v35 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(StartTimeStamp) / 1000.0;
            EndTimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetEndTimeStamp(v10);
            CounterValue = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(EndTimeStamp) / 1000.0;
            sub_29A15F1C8(this, "key", v15, "category", v37, "type", &v36, "start", &v35, "end", &CounterValue);
          }
        }

        else if ((Type - 5) < 2)
        {
          if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v14 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v14 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Type);
          }

          v37[0] = v10[2];
          v16 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(v10);
          v36 = sub_29A15F1A4(v16);
          v17 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v10);
          v35 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v17) / 1000.0;
          CounterValue = pxrInternal__aapl__pxrReserved__::TraceEvent::GetCounterValue(v10);
          sub_29A15F1C8(this, "key", v14, "category", v37, "type", &v36, "ts", &v35, "value", &CounterValue);
        }

        else
        {
          if (Type == 4)
          {
            if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
              goto LABEL_33;
            }

            goto LABEL_32;
          }

          if (Type == 7)
          {
            if ((*v8 & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v12 = ((*v8 & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v12 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Type);
            }

            v21 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(v10);
            v22 = sub_29A15F1A4(v21);
            v23 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v10);
            v24 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(v23);
            pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "key");
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v12);
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "category");
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this);
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "type");
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v22);
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "ts");
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v24 / 1000.0);
            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "data");
            pxrInternal__aapl__pxrReserved__::TraceEvent::GetData(v10, v37);
            pxrInternal__aapl__pxrReserved__::TraceEventData::WriteJson(v37, this);
            sub_29A155A70(v37);
            pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
          }
        }

LABEL_34:
        v8 += 2;
      }

      pxrInternal__aapl__pxrReserved__::JsWriter::EndArray(this);
      pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
      v27 = v7[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v7[2];
          v29 = *v28 == v7;
          v7 = v28;
        }

        while (!v29);
      }

      v7 = v28;
    }

    while (v28 != v32);
  }

  pxrInternal__aapl__pxrReserved__::JsWriter::EndArray(this);
  v37[0] = v33;
  sub_29A0176E4(v37);
  pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
  v30 = &unk_2A2040FF8;
  sub_29A15F4DC(&v31, v32[0]);
  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor(&v30);
}

void sub_29A15EA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 - 112) = &a19;
  sub_29A0176E4((v19 - 112));
  sub_29A15EB14(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A15EAC8(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A2041050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_29A15EB14(pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a1)
{
  *a1 = &unk_2A2040FF8;
  sub_29A15F4DC(a1 + 8, *(a1 + 2));

  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor(a1);
}

void sub_29A15EB70(pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a1)
{
  *a1 = &unk_2A2040FF8;
  sub_29A15F4DC(a1 + 8, *(a1 + 2));
  pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor::~Visitor(a1);

  operator delete(v2);
}

void *sub_29A15EBE8(uint64_t a1, __int128 *a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(this);
  if ((result - 5) <= 2)
  {
    v13 = a2;
    v9 = sub_29A15ECB8((a1 + 8), a2, &unk_29B4D6118, &v13);
    v10 = v9;
    v13 = this;
    v11 = v9[8];
    if (v11 >= v9[9])
    {
      result = sub_29A15EEE0(v9 + 7, a3, &v13);
    }

    else
    {
      v12 = *a3;
      *v11 = *a3;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v11 &= 0xFFFFFFFFFFFFFFF8;
      }

      v11[1] = this;
      result = v11 + 2;
    }

    v10[8] = result;
  }

  return result;
}

uint64_t *sub_29A15ECB8(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A15ED50(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A15ED50@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29A15EDE8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A15EE44(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A15EE44(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_29A15EE8C(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_29A15EE8C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 2);
        v3 -= 16;
        v5 = v6;
        if ((v6 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29A15EEE0(void *a1, uint64_t *a2, void *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 3 > v4)
  {
    v4 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v4;
  }

  v15[4] = a1;
  if (v9)
  {
    v10 = sub_29A017BD4(a1, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v10[16 * v3];
  v15[0] = v10;
  v15[1] = v11;
  v15[3] = &v10[16 * v9];
  v12 = *a2;
  *v11 = *a2;
  if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v11 &= 0xFFFFFFFFFFFFFFF8;
  }

  *(v11 + 1) = *a3;
  v15[2] = v11 + 16;
  sub_29A15EFEC(a1, v15);
  v13 = a1[1];
  sub_29A15F090(v15);
  return v13;
}

void sub_29A15EFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A15F090(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A15EFEC(uint64_t result, void *a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v2);
    do
    {
      *v6 = *v5;
      *v5 = 0;
      v6[1] = v5[1];
      v5 += 2;
      v6 += 2;
    }

    while (v5 != v2);
    do
    {
      if ((*v3 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 2;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  *(result + 8) = v7;
  a2[1] = v7;
  v8 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v8;
  v9 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t sub_29A15F090(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v5 = *(v3 - 16);
    v3 -= 16;
    v4 = v5;
    *(a1 + 16) = v3;
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_29A15F0F4(pxrInternal__aapl__pxrReserved__::JsWriter *a1, const char *a2, uint64_t *a3, const char *a4, uint64_t a5, const char *a6, const char **a7, const char *a8, double *a9)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(a1);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a3);
  sub_29A15F28C(a1, a4, a5, a6, a7, a8, a9);

  return pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a1);
}

const char *sub_29A15F1A4(unsigned int a1)
{
  if (a1 > 7)
  {
    return "Unknown";
  }

  else
  {
    return off_29F295468[a1];
  }
}

uint64_t sub_29A15F1C8(pxrInternal__aapl__pxrReserved__::JsWriter *a1, const char *a2, uint64_t *a3, const char *a4, uint64_t a5, const char *a6, const char **a7, const char *a8, double *a9, const char *a10, double *a11)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(a1);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a3);
  sub_29A15F36C(a1, a4, a5, a6, a7, a8, a9, a10, a11);

  return pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a1);
}

uint64_t sub_29A15F28C(uint64_t **a1, const char *a2, uint64_t a3, const char *a4, const char **a5, const char *a6, double *a7)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1);

  return sub_29A15F304(a1, a4, a5, a6, a7);
}

uint64_t sub_29A15F304(uint64_t **a1, const char *a2, const char **a3, const char *a4, double *a5)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, *a3);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a4);
  v9 = *a5;

  return pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, v9);
}

uint64_t sub_29A15F36C(uint64_t **a1, const char *a2, uint64_t a3, const char *a4, const char **a5, const char *a6, double *a7, const char *a8, double *a9)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1);

  return sub_29A15F3FC(a1, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_29A15F3FC(uint64_t **a1, const char *a2, const char **a3, const char *a4, double *a5, const char *a6, double *a7)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, *a3);

  return sub_29A15F474(a1, a4, a5, a6, a7);
}

uint64_t sub_29A15F474(uint64_t **a1, const char *a2, double *a3, const char *a4, double *a5)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, *a3);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a4);
  v9 = *a5;

  return pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, v9);
}

void sub_29A15F4DC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A15F4DC(a1, *a2);
    sub_29A15F4DC(a1, a2[1]);
    sub_29A15EE44((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_29A15F538(uint64_t a1)
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

uint64_t *sub_29A15F5B8(char *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = sub_29A00B0D0(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A15F650(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

char *sub_29A15F650@<X0>(char *a1@<X0>, __int128 **a2@<X2>, char **a3@<X8>)
{
  v6 = operator new(0xD0uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29A15F6D0(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A15F6D0(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 0u;
  *(__dst + 21) = 0;
  *(__dst + 136) = 0u;
  *(__dst + 152) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  pxrInternal__aapl__pxrReserved__::TraceEventList::TraceEventList((__dst + 24));
  *(__dst + 19) = 0;
  *(__dst + 20) = 0;
  *(__dst + 21) = 0;
  return __dst;
}

void sub_29A15F74C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A15F768(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A15F7C4(v2 + 32);
    }

    operator delete(v2);
  }
}

void sub_29A15F7C4(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  sub_29A15F834((a1 + 96));
  sub_29A15F978((a1 + 56));
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::~TraceEventContainer((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_29A15F834(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;
        if (v9)
        {
          operator delete[](v9);
        }

        if (++v7 - *v6 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 256;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 512;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_29A0D6E48(a1);
}

void sub_29A15F978(uint64_t *a1)
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
        sub_29A15F9EC((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_29A15F9EC(uint64_t a1)
{
  sub_29A15FA28(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A15FA28(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_29A15FA78(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    sub_29A15F834(a2 + 9);
    sub_29A15F978(a2 + 4);
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::~TraceEventContainer(a2);

    operator delete(v3);
  }
}

void sub_29A15FAC8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A15FAC8(a1, *a2);
    sub_29A15FAC8(a1, a2[1]);
    sub_29A15F7C4((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A15FB24(void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    sub_29A15FB78(v2, v2[1]);

    free(v2);
  }
}

void sub_29A15FB78(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A15FB78(a1, *a2);
    sub_29A15FB78(a1, a2[1]);
    sub_29A15FBD4((a2 + 4));

    operator delete(a2);
  }
}

void sub_29A15FBD4(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = (a1 + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_29A15FA78(v2, v3);
  }

  if (*(a1 + 23) < 0)
  {
    v5 = *a1;

    operator delete(v5);
  }
}

void pxrInternal__aapl__pxrReserved__::TraceAggregateTree::TraceAggregateTree(pxrInternal__aapl__pxrReserved__::TraceAggregateTree *this)
{
  *(this + 2) = 1;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  *(this + 4) = this + 40;
  *this = &unk_2A2041070;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 1065353216;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 1065353216;
  pxrInternal__aapl__pxrReserved__::TraceAggregateTree::Clear(this);
}

void sub_29A15FCC8()
{
  sub_29A155EF4(v3);
  sub_29A155EF4(v2);
  sub_29A1602D4(v1, *(v0 + 40));
  sub_29A153628();
}

void pxrInternal__aapl__pxrReserved__::TraceAggregateTree::Clear(pxrInternal__aapl__pxrReserved__::TraceAggregateTree *this)
{
  sub_29A15FD98(&v2);
  *(this + 3) = v2;
  v2 = 0;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_RemoveRef();
}

void sub_29A15FD98(void *a1@<X8>)
{
  v3 = 0;
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v2, "root");
  sub_29A160090(&v3, &v2, 0, 0, 1, a1);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateTree::GetCounterIndex(pxrInternal__aapl__pxrReserved__::TraceAggregateTree *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v2 = sub_29A16039C(this + 12, a2);
  if (v2)
  {
    return *(v2 + 6);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateTree::AddCounter(pxrInternal__aapl__pxrReserved__::TraceAggregateTree *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, int a3, double a4)
{
  if ((a3 & 0x80000000) == 0 || (sub_29B28FC84(v13)) && (!sub_29A160470(this + 7, a2) || (sub_29B28FCD0(v12)))
  {
    v8 = *(this + 14);
    if (!v8)
    {
LABEL_9:
      v10[0] = a2;
      *(sub_29A160544(this + 56, a2, &unk_29B4D6118, v10) + 3) = a4;
      v10[0] = a2;
      *(sub_29A160810(this + 96, a2, &unk_29B4D6118, v10) + 6) = a3;
      return 1;
    }

    while (1)
    {
      if (*(v8 + 6) == a3)
      {
        v10[0] = "trace/aggregateTree.cpp";
        v10[1] = "AddCounter";
        v10[2] = 57;
        v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::TraceAggregateTree::AddCounter(const TfToken &, int, double)";
        v11 = 0;
        if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v10, "it.second != index", 0) & 1) == 0)
        {
          break;
        }
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void sub_29A15FF9C(uint64_t a1)
{
  *a1 = &unk_2A2041070;
  sub_29A155EF4(a1 + 96);
  sub_29A155EF4(a1 + 56);
  sub_29A1602D4(a1 + 32, *(a1 + 40));
  sub_29A153628();
}

void sub_29A160014(uint64_t a1)
{
  *a1 = &unk_2A2041070;
  sub_29A155EF4(a1 + 96);
  sub_29A155EF4(a1 + 56);
  sub_29A1602D4(a1 + 32, *(a1 + 40));
  sub_29A153628();
}

void sub_29A160090(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, void *a6@<X8>)
{
  v12 = operator new(0xC0uLL);
  sub_29A160118(v12, a1, a2, a3, a4, a5);
  *a6 = v12;
}

double sub_29A160118(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, int a5, int a6)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *a1 = &unk_2A20410C8;
  *(a1 + 24) = *a2;
  v6 = *a3;
  *(a1 + 32) = *a3;
  if ((v6 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 32) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 60) = a6;
  *(a1 + 64) = a5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a4;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) &= 0xF0u;
  return result;
}

void sub_29A1601B0(uint64_t a1)
{
  sub_29B28FB94(a1);

  operator delete(v1);
}

void sub_29A1601D8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A155EF4(v3);

    operator delete(v4);
  }
}

void sub_29A160214(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    v4 = sub_29A0EB570(v3);

    operator delete(v4);
  }
}

void sub_29A160250(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = **a1;
    if (v1[1] != v2)
    {
      sub_29A153628();
    }

    v1[1] = v2;

    operator delete(v3);
  }
}

void sub_29A1602D4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29A1602D4(a1, *a2);
    sub_29A1602D4(a1, a2[1]);
    v4 = a2[4];
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    operator delete(a2);
  }
}

void sub_29A160340(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_29A155F30(a1, *(a1 + 16));
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

void *sub_29A16039C(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if ((result[2] ^ *a2) < 8)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29A160470(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = v3 & (*&v2 - 1);
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if ((result[2] ^ *a2) < 8)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

void *sub_29A160544(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
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

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A16078C(a1, v6, a4, &v22);
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
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A16076C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A16078C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x20uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = **a3;
  result[2] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[3] = 0;
  *(a4 + 16) = 1;
  return result;
}

void *sub_29A160810(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
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

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A160A58(a1, v6, a4, &v16);
  if (!v7 || (*(a1 + 32) * v7) < (*(a1 + 24) + 1))
  {
    std::__hash_table<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__unordered_map_hasher<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::__unordered_map_equal<pxrInternal__aapl__pxrReserved__::TfToken,std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::equal_to<pxrInternal__aapl__pxrReserved__::TfToken>,pxrInternal__aapl__pxrReserved__::TfToken::HashFunctor,true>,std::allocator<std::__hash_value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__rehash<true>();
  }

  v12 = *a1;
  v13 = *(*a1 + 8 * v4);
  if (v13)
  {
    result = v16;
    *v16 = *v13;
    *v13 = result;
  }

  else
  {
    v14 = v16;
    *v16 = *(a1 + 16);
    *(a1 + 16) = v14;
    *(v12 + 8 * v4) = a1 + 16;
    result = v16;
    if (*v16)
    {
      v15 = *(*v16 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v15 >= v7)
        {
          v15 %= v7;
        }
      }

      else
      {
        v15 &= v7 - 1;
      }

      *(*a1 + 8 * v15) = v16;
      result = v16;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A160A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A160A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X3>, void *a4@<X8>)
{
  result = operator new(0x20uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = **a3;
  result[2] = v9;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 6) = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateNode::Append@<X0>(pxrInternal__aapl__pxrReserved__::TfToken *a1@<X2>, pxrInternal__aapl__pxrReserved__::TraceAggregateNode *a2@<X0>, char a3@<W1>, unint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v26 = a3;
  pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetChild(a2, a1, a7);
  if (!*a7)
  {
    sub_29A160090(&v26, a1, a4, a5, a6, &v25);
    *a7 = v25;
    v25 = 0;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_RemoveRef();
  }

  *(sub_29A160CEC(a7) + 24) = a3;
  v14 = sub_29A160CEC(a7);
  *(v14 + 40) += a4;
  v15 = sub_29A160CEC(a7);
  *(v15 + 56) += a5;
  v16 = sub_29A160CEC(a7);
  *(v16 + 64) += a5;
  v17 = sub_29A160CEC(a7);
  *(v17 + 60) += a6;
  v18 = sub_29A160CEC(a7);
  *(v18 + 48) += a4;
  result = sub_29A160CEC(a7);
  *(result + 88) += a4;
  v20 = *(a2 + 6);
  v21 = v20 >= a4;
  v22 = v20 - a4;
  if (!v21)
  {
    v22 = 0;
  }

  *(a2 + 6) = v22;
  v23 = *(a2 + 11);
  v21 = v23 >= a4;
  v24 = v23 - a4;
  if (!v21)
  {
    v24 = 0;
  }

  *(a2 + 11) = v24;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetChild@<X0>(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A161380(this + 15, a2);
  if (*(this + 16) != result)
  {
    *a3 = *(*(this + 12) + 8 * result[1]);

    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
  }

  *a3 = 0;
  return result;
}

uint64_t sub_29A160CEC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    v6 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/refPtr.h", v6, 0x2F);
  }

  return result;
}

void sub_29A160D6C(void *a1, void *a2)
{
  v2 = a1[1];
  if (v2 < a1[2])
  {
    *v2 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
  }

  sub_29A162284(a1, a2);
}

void *sub_29A160DC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v6[0] = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v6[0] = v3;
    }
  }

  v6[1] = 0;
  v4 = sub_29A162490(a1, v6);
  if ((v6[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v6[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return v4 + 1;
}

void pxrInternal__aapl__pxrReserved__::TraceAggregateNode::Append(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *a1, uint64_t *a2)
{
  v4 = *(sub_29A160CEC(a2) + 32);
  v31[0] = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v31[0] = v5;
    }
  }

  pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetChild(a1, v31, &v30);
  if ((v31[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v31[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v30)
  {
    v6 = sub_29A160CEC(a2);
    *(sub_29A160CEC(&v30) + 24) = *(v6 + 24);
    v7 = *(sub_29A160CEC(a2) + 40);
    v8 = sub_29A160CEC(&v30);
    *(v8 + 40) += v7;
    LODWORD(v7) = *(sub_29A160CEC(a2) + 56);
    v9 = sub_29A160CEC(&v30);
    *(v9 + 56) += v7;
    LODWORD(v7) = *(sub_29A160CEC(a2) + 56);
    v10 = sub_29A160CEC(&v30);
    *(v10 + 64) += v7;
    LODWORD(v7) = *(sub_29A160CEC(a2) + 60);
    v11 = sub_29A160CEC(&v30);
    *(v11 + 60) += v7;
    v12 = *(sub_29A160CEC(a2) + 40);
    v13 = sub_29A160CEC(&v30);
    *(v13 + 48) += v12;
    v14 = *(sub_29A160CEC(a2) + 40);
    v15 = sub_29A160CEC(&v30);
    *(v15 + 88) += v14;
    v16 = sub_29A160CEC(a2);
    v17 = *(v16 + 152);
    for (i = *(v16 + 160); v17 != i; v17 += 24)
    {
      v19 = sub_29A160CEC(&v30);
      v31[1] = 0;
      v31[2] = 0;
      LODWORD(v31[0]) = *v17;
      v20 = sub_29A162C1C(v19 + 152, v31);
      *(v20 + 2) = vaddq_f64(*(v17 + 8), *(v20 + 2));
    }

    v21 = sub_29A160CEC(a2);
    v22 = *(v21 + 96);
    if (v22 != *(v21 + 104))
    {
      sub_29A160CEC(&v30);
      v29 = *v22;
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
    }

    v23 = *(a1 + 6);
    if (v23 >= *(sub_29A160CEC(a2) + 40))
    {
      v25 = *(a1 + 6);
      v24 = v25 - *(sub_29A160CEC(a2) + 40);
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 6) = v24;
    v26 = *(a1 + 11);
    if (v26 >= *(sub_29A160CEC(a2) + 40))
    {
      v28 = *(a1 + 11);
      v27 = v28 - *(sub_29A160CEC(a2) + 40);
    }

    else
    {
      v27 = 0;
    }

    *(a1 + 11) = v27;
    sub_29A153628();
  }

  sub_29A160D6C(a1 + 12, a2);
}

void sub_29A161148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A153628();
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetExclusiveTime(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this, int a2)
{
  v2 = 48;
  if (a2)
  {
    v2 = 88;
  }

  return *(this + v2);
}

double pxrInternal__aapl__pxrReserved__::TraceAggregateNode::AppendInclusiveCounterValue(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this, int a2, double a3)
{
  v7 = 0;
  v8 = 0;
  v6 = a2;
  v4 = sub_29A162C1C(this + 152, &v6);
  result = v4[1] + a3;
  v4[1] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetInclusiveCounterValue(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this, int a2)
{
  v5 = a2;
  v3 = sub_29A161270(this + 19, &v5);
  if (*(this + 20) == v3)
  {
    return 0.0;
  }

  else
  {
    return v3[1];
  }
}

_DWORD *sub_29A161270(void *a1, int *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A16315C(v3, a2);
    if (v4)
    {
      return (*a1 + 24 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while (*result != *a2)
      {
        result += 6;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::TraceAggregateNode::AppendExclusiveCounterValue(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this, int a2, double a3)
{
  v7 = 0;
  v8 = 0;
  v6 = a2;
  v4 = sub_29A162C1C(this + 152, &v6);
  result = v4[2] + a3;
  v4[2] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::TraceAggregateNode::GetExclusiveCounterValue(pxrInternal__aapl__pxrReserved__::TraceAggregateNode *this, int a2)
{
  v5 = a2;
  v3 = sub_29A161270(this + 19, &v5);
  if (*(this + 20) == v3)
  {
    return 0.0;
  }

  else
  {
    return v3[2];
  }
}

void *sub_29A161380(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = sub_29A160470(v3, a2);
    if (v4)
    {
      return (*a1 + 16 * v4[3]);
    }

    else
    {
      return a1[1];
    }
  }

  else
  {
    result = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      while ((*result ^ *a2) >= 8)
      {
        result += 2;
        if (result == v6)
        {
          return a1[1];
        }
      }
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::TraceAggregateNode::AdjustForOverheadAndNoise(void *this, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v7 = this;
  v8 = this[12];
  v9 = this[13];
  v10 = v9 - v8;
  v21 = v10;
  if (v9 != v8)
  {
    do
    {
      v11 = sub_29A160CEC(v8);
      this = pxrInternal__aapl__pxrReserved__::TraceAggregateNode::AdjustForOverheadAndNoise(v11, a2, a3, &v21);
      ++v8;
    }

    while (v8 != v9);
    v10 = v21;
    v8 = v7[12];
    v9 = v7[13];
  }

  v12 = v10 * a2;
  v13 = v7[5];
  v14 = v13 >= v12;
  v15 = v13 - v12;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v7[5] = v16;
  if (v8 != v9)
  {
    v17 = 20 * a3;
    do
    {
      v18 = *(sub_29A160CEC(v8) + 40);
      v19 = v17 * *(sub_29A160CEC(v8) + 56);
      this = sub_29A160CEC(v8);
      if (v19 >= v18)
      {
        this[6] = 0;
        this = sub_29A160CEC(v8);
        this[5] = 0;
      }

      else
      {
        v20 = v16;
        if (v16 > this[5])
        {
          this = sub_29A160CEC(v8);
          v20 = this[5];
        }

        v16 -= v20;
      }

      ++v8;
    }

    while (v8 != v9);
  }

  v7[6] = v16;
  if (a4)
  {
    *a4 += v21;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateNode::MarkRecursiveChildren(uint64_t this)
{
  if ((*(this + 184) & 4) == 0)
  {
    memset(&v2[2], 0, 24);
    sub_29A1632BC(v2, this);
    sub_29A162214(&v1, v2, -1);
  }

  return this;
}

void sub_29A1619E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21)
{
  v23 = a21;
  if (a21 && atomic_fetch_add_explicit((a21 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(v21 - 120);
  if (v24)
  {
    if (atomic_fetch_add_explicit(v24 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v24 + 8))(v24);
    }
  }

  a20 = (v21 - 112);
  sub_29A163228(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_29A161BCC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_29A163330(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceAggregateNode::_MergeRecursive(uint64_t a1, uint64_t *a2)
{
  if ((*(a1 + 184) & 2) != 0)
  {
    v4 = sub_29B28F7F8(a1 + 72);
    if (v5 & 1 | v4)
    {
      sub_29A152A08(a1 + 72);
    }

    v8[0] = "trace/aggregateNode.cpp";
    v8[1] = "_MergeRecursive";
    v8[2] = 296;
    v8[3] = "void pxrInternal__aapl__pxrReserved__::TraceAggregateNode::_MergeRecursive(const TraceAggregateNodeRefPtr &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Marker has no or expired parent.");
  }

  else
  {
    *(a1 + 64) += *(sub_29A160CEC(a2) + 64);
    *(a1 + 88) += *(sub_29A160CEC(a2) + 88);
    *(a1 + 184) |= 4u;
    v6 = sub_29A160CEC(a2);
    if (*(v6 + 104) != *(v6 + 96))
    {
      v7 = **(sub_29A160CEC(a2) + 96);
      pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
    }
  }
}

void sub_29A161FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, atomic_uint *a11)
{
  if (a11)
  {
    if (atomic_fetch_add_explicit(a11 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a11 + 8))(a11);
    }
  }

  sub_29A153628();
}

void pxrInternal__aapl__pxrReserved__::TraceAggregateNode::_SetAsRecursionMarker(uint64_t a1, uint64_t a2)
{
  *(a1 + 184) |= 2u;
  *(a1 + 72) = *a2;
  sub_29B28FD1C((a1 + 80), (a2 + 8));
  v3 = sub_29B28F7F8(a2);
  if (!(v4 & 1 | v3))
  {
    v5[0] = "trace/aggregateNode.cpp";
    v5[1] = "_SetAsRecursionMarker";
    v5[2] = 400;
    v5[3] = "void pxrInternal__aapl__pxrReserved__::TraceAggregateNode::_SetAsRecursionMarker(TraceAggregateNodePtr)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Marker has no or expired parent.");
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceAggregateNode::CalculateInclusiveCounterValues(uint64_t this)
{
  v1 = this;
  v2 = *(this + 96);
  v3 = *(this + 104);
  while (v2 != v3)
  {
    v4 = sub_29A160CEC(v2);
    this = pxrInternal__aapl__pxrReserved__::TraceAggregateNode::CalculateInclusiveCounterValues(v4);
    ++v2;
  }

  v5 = v1[19];
  v6 = v1[20];
  v7 = (v1 + 19);
  while (v5 != v6)
  {
    *(v5 + 8) = *(v5 + 16);
    v5 += 24;
  }

  v8 = v1[12];
  for (i = v1[13]; v8 != i; ++v8)
  {
    this = sub_29A160CEC(v8);
    v10 = *(this + 152);
    v11 = *(this + 160);
    while (v10 != v11)
    {
      if (v10[1] != 0.0)
      {
        v13 = 0;
        v14 = 0;
        v12 = *v10;
        this = sub_29A162C1C(v7, &v12);
        *(this + 8) = v10[1] + *(this + 8);
      }

      v10 += 3;
    }
  }

  return this;
}

void sub_29A162214(uint64_t a1, void *a2, int a3)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
  sub_29A152A08(a2);
}

void sub_29A16226C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FF4C(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A162284(void *a1, void *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 61))
  {
    v5 = a1[2] - *a1;
    if (v5 >> 2 > v3)
    {
      v3 = v5 >> 2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v6 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v3;
    }

    v11 = a1;
    if (v6)
    {
      v7 = sub_29A00C9BC(a1, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = &v7[8 * v2];
    v10 = &v7[8 * v6];
    *v9 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
  }

  sub_29A00C9A4();
}

void sub_29A162384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A162440(va);
  _Unwind_Resume(a1);
}

void sub_29A162398(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    *a4 = *a2;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceAggregateNode>::_AddRef();
  }
}

void sub_29A16241C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A153628();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A162440(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = v2 - 8;
    sub_29A153628();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_29A162490(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = (a1[1] - *a1) >> 4;
    v6 = *a2;
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v6 &= 0xFFFFFFFFFFFFFFF8;
    }

    v14 = v6;
    v15 = v5;
    v7 = sub_29A162678(v4, &v14, &v14);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    if ((v8 & 1) == 0)
    {
      return (*a1 + 16 * v7[3]);
    }

    goto LABEL_14;
  }

  result = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    while ((*result ^ *a2) >= 8)
    {
      result += 2;
      if (result == v10)
      {
        goto LABEL_14;
      }
    }
  }

  if (result == v10)
  {
LABEL_14:
    v11 = *a2;
    v14 = v11;
    if ((v11 & 7) != 0)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed) & 1) == 0)
      {
        v14 = v12;
      }
    }

    v15 = a2[1];
    sub_29A162604(a1, &v14);
    if ((v14 & 7) != 0)
    {
      atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v13 = a1[1];
    if ((v13 - *a1) >= 0x7F1)
    {
      sub_29A162AF8(a1);
      v13 = a1[1];
    }

    return (v13 - 16);
  }

  return result;
}

void sub_29A1625E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((a9 & 7) != 0)
  {
    atomic_fetch_add_explicit((a9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A162604(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_29A162944(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *v3 &= 0xFFFFFFFFFFFFFFF8;
    }

    v3[1] = a2[1];
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

void *sub_29A162678(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A1628C0(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A1628A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A1628C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x20uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = *a3;
  result[2] = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  result[3] = a3[1];
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_29A162944(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[2 * v2];
  v17 = v8;
  v18 = v9;
  *(&v19 + 1) = &v8[2 * v7];
  v10 = *a2;
  *v9 = *a2;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v9 &= 0xFFFFFFFFFFFFFFF8;
  }

  v9[1] = a2[1];
  *&v19 = v9 + 2;
  v11 = *(a1 + 8);
  v12 = (v9 + *a1 - v11);
  sub_29A162A78(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_29A15F090(&v17);
  return v16;
}

void sub_29A162A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A15F090(va);
  _Unwind_Resume(a1);
}

void sub_29A162A78(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      *a4 = *v4;
      if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *a4 &= 0xFFFFFFFFFFFFFFF8;
      }

      a4[1] = v4[1];
      v4 += 2;
      a4 += 2;
    }

    while (v4 != a3);
    for (; a2 != a3; a2 += 2)
    {
      if ((*a2 & 7) != 0)
      {
        atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }
}

void sub_29A162AF8(uint64_t *a1)
{
  v1 = a1 + 3;
  if (!a1[3])
  {
    v3 = operator new(0x28uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *(v3 + 8) = 1065353216;
    sub_29A019AA0(v3, 0x80uLL);
    sub_29A1601D8(v1, v3);
    v4 = *a1;
    if (a1[1] != *a1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *v1;
        v8 = *(v4 + v5);
        if ((v8 & 7) != 0 && (atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v8 &= 0xFFFFFFFFFFFFFFF8;
        }

        v9[0] = v8;
        v9[1] = v6;
        sub_29A162678(v7, v9, v9);
        if ((v9[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v9[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        ++v6;
        v4 = *a1;
        v5 += 16;
      }

      while (v6 < (a1[1] - *a1) >> 4);
    }
  }
}

void sub_29A162BE4(_Unwind_Exception *a1)
{
  v3 = sub_29A155EF4(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

_DWORD *sub_29A162C1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
    v10 = *a2;
    *&v11 = v5;
    v6 = sub_29A162F28(v4, &v10, &v10);
    if ((v7 & 1) == 0)
    {
      return (*a1 + 24 * v6[3]);
    }

    goto LABEL_9;
  }

  result = *a1;
  v9 = *(a1 + 8);
  if (*a1 != v9)
  {
    while (*result != *a2)
    {
      result += 6;
      if (result == v9)
      {
        goto LABEL_9;
      }
    }
  }

  if (result == v9)
  {
LABEL_9:
    v10 = *a2;
    v11 = *(a2 + 8);
    sub_29A162D08(a1, &v10);
    sub_29A162E2C(a1);
    return (*(a1 + 8) - 24);
  }

  return result;
}

void sub_29A162D08(char **a1, __int128 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      v12 = sub_29A012C48(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[24 * v8];
    v14 = &v12[24 * v11];
    v15 = *a2;
    *(v13 + 2) = *(a2 + 2);
    *v13 = v15;
    v7 = v13 + 24;
    v16 = *a1;
    v17 = a1[1];
    v18 = &v13[*a1 - v17];
    if (*a1 != v17)
    {
      v19 = v18;
      do
      {
        v20 = *v16;
        *(v19 + 2) = *(v16 + 2);
        *v19 = v20;
        v19 += 24;
        v16 += 24;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    *a1 = v18;
    a1[1] = v7;
    a1[2] = v14;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = (v5 + 24);
  }

  a1[1] = v7;
}

void sub_29A162E2C(uint64_t *a1)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) >= 0x80)
  {
    v2 = a1 + 3;
    if (!a1[3])
    {
      v3 = operator new(0x28uLL);
      *v3 = 0u;
      v3[1] = 0u;
      *(v3 + 8) = 1065353216;
      sub_29A019AA0(v3, 0x80uLL);
      sub_29A160214(v2, v3);
      v4 = *a1;
      if (a1[1] != *a1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = a1[3];
          LODWORD(v8) = *(v4 + v5);
          *(&v8 + 1) = v6;
          sub_29A162F28(v7, &v8, &v8);
          ++v6;
          v4 = *a1;
          v5 += 24;
        }

        while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
      }
    }
  }
}

void sub_29A162F10(_Unwind_Exception *a1)
{
  v3 = sub_29A0EB570(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_29A162F28(uint64_t a1, int *a2, _OWORD *a3)
{
  v6 = *a2;
  v7 = bswap64(0x9E3779B97F4A7C55 * v6);
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }
    }

    else
    {
      v3 = v7 & (v8 - 1);
    }

    v10 = *(*a1 + 8 * v3);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v12 == v7)
          {
            if (*(v11 + 4) == v6)
            {
              return v11;
            }
          }

          else
          {
            if (v9.u32[0] > 1uLL)
            {
              if (v12 >= v8)
              {
                v12 %= v8;
              }
            }

            else
            {
              v12 &= v8 - 1;
            }

            if (v12 != v3)
            {
              break;
            }
          }

          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  v11 = operator new(0x20uLL);
  *v11 = 0;
  v11[1] = v7;
  *(v11 + 1) = *a3;
  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v8 || (v14 * v8) < v13)
  {
    v15 = 1;
    if (v8 >= 3)
    {
      v15 = (v8 & (v8 - 1)) != 0;
    }

    v16 = v15 | (2 * v8);
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
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v7 >= v8)
      {
        v3 = v7 % v8;
      }

      else
      {
        v3 = v7;
      }
    }

    else
    {
      v3 = (v8 - 1) & v7;
    }
  }

  v19 = *a1;
  v20 = *(*a1 + 8 * v3);
  if (v20)
  {
    *v11 = *v20;
LABEL_38:
    *v20 = v11;
    goto LABEL_39;
  }

  *v11 = *(a1 + 16);
  *(a1 + 16) = v11;
  *(v19 + 8 * v3) = a1 + 16;
  if (*v11)
  {
    v21 = *(*v11 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v21 >= v8)
      {
        v21 %= v8;
      }
    }

    else
    {
      v21 &= v8 - 1;
    }

    v20 = (*a1 + 8 * v21);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 24);
  return v11;
}

uint64_t *sub_29A16315C(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = bswap64(0x9E3779B97F4A7C55 * v3);
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = *result)
  {
    v9 = result[1];
    if (v9 == v4)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v5.u32[0] > 1uLL)
      {
        if (v9 >= *&v2)
        {
          v9 %= *&v2;
        }
      }

      else
      {
        v9 &= *&v2 - 1;
      }

      if (v9 != v6)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_29A163228(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29A16327C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_29A16327C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result != a2)
  {
    result = sub_29B28FF8C();
  }

  *(a1 + 8) = a2;
  return result;
}

void *sub_29A1632BC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  if (a2)
  {
    sub_29A0ECFD4((a2 + 16), &v5);
    v3 = a1[1];
    a1[1] = v5;
    v5 = 0;
    if (v3)
    {
      sub_29B28D0B0(v3, &v5);
    }
  }

  return a1;
}

void sub_29A163318(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29B28FFF4(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A163330(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v15 = v7;
  v16 = v8;
  *(&v17 + 1) = &v7[24 * v6];
  *v8 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v8 + 2) = *(a2 + 16);
  *&v17 = v8 + 24;
  v9 = a1[1];
  v10 = &v8[*a1 - v9];
  sub_29A163464(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A163564(&v15);
  return v14;
}

void sub_29A163450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A163564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A163464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a4;
  v9 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 == a3)
  {
    v7 = 1;
  }

  else
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(a4 + 16) = *(v4 + 16);
      v4 += 24;
      a4 += 24;
    }

    while (v4 != a3);
    v9 = a4;
    v7 = 1;
    if (a2 != a3)
    {
      sub_29B290040();
    }
  }

  return sub_29A1634F8(v6);
}

uint64_t sub_29A1634F8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A163530(a1);
  }

  return a1;
}

uint64_t sub_29A163530(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  result = *v1;
  if (*v1 != *v2)
  {
    return sub_29B28FF8C();
  }

  return result;
}

uint64_t sub_29A163564(uint64_t a1)
{
  sub_29A16359C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_29A16359C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 16);
  result = *(a1 + 16);
  if (result != a2)
  {
    return sub_29B2900A8(result, v4, a2);
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B47EF55 & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TraceCategory*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      v6 = operator new(0x18uLL);
      pxrInternal__aapl__pxrReserved__::TraceCategory::TraceCategory(v6);
      v8 = atomic_load(a1);
      if (v8)
      {
        if (v6 != v8)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TraceCategory]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "race detected setting singleton instance", v7);
        }
      }

      else if (atomic_exchange(a1, v6))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TraceCategory]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v7, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TraceCategory*> &)::isInitializing);
  }

  v9 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v9;
}

void sub_29A1637B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::SetInstanceConstructed(unint64_t result)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_instance, result))
  {
    v6 = v2;
    v7 = v1;
    v8 = v3;
    v9 = v4;
    v5 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/tf/instantiateSingleton.h", v5, 0x2F);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_instance, &v1, 0);
    if (v1 == i)
    {
      sub_29A15D468(i, i[1]);

      operator delete(i);
      return;
    }

    sched_yield();
  }
}

pxrInternal__aapl__pxrReserved__::TraceCategory *pxrInternal__aapl__pxrReserved__::TraceCategory::TraceCategory(pxrInternal__aapl__pxrReserved__::TraceCategory *this)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  sub_29A008E78(__p, "Default");
  pxrInternal__aapl__pxrReserved__::TraceCategory::RegisterCategory(this, 0, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_29A1639BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_29A15D468(v15, *(v15 + 8));
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TraceCategory::RegisterCategory(uint64_t **a1, int a2, uint64_t a3)
{
  v4 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v6 = *(a3 + 16);
  }

  sub_29A163B50(a1, &v4);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A163A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t pxrInternal__aapl__pxrReserved__::TraceCategory::GetInstance(pxrInternal__aapl__pxrReserved__::TraceCategory *this)
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCategory>::_CreateInstance();
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TraceCategory::GetCategories@<X0>(pxrInternal__aapl__pxrReserved__::TraceCategory *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v6[0] = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_29A163BF8(this, v6);
  if (result != v5)
  {
    sub_29A070BA0(a3);
  }

  return result;
}

void sub_29A163B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A012C90(va);
  _Unwind_Resume(a1);
}

char *sub_29A163B50(uint64_t **a1, int *a2)
{
  v4 = operator new(0x40uLL);
  v5 = *a2;
  *(v4 + 8) = *a2;
  *(v4 + 40) = *(a2 + 2);
  *(v4 + 7) = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= *(v7 + 8))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

uint64_t *sub_29A163BF8(uint64_t a1, unsigned int *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 8);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 8);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::TraceCollection::AddToCollection(uint64_t **a1, void *a2, uint64_t *a3)
{
  v6 = sub_29A158A20(a1, a2);
  if (a1 + 1 == v6)
  {

    return sub_29A1642D4(a1, a2, a2, a3);
  }

  else
  {
    v7 = *(v6 + 56);
    v8 = *a3;

    return pxrInternal__aapl__pxrReserved__::TraceEventList::Append(v7, v8);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollection::_Iterate(pxrInternal__aapl__pxrReserved__::TraceCollection **this, pxrInternal__aapl__pxrReserved__::TraceCollection::Visitor *a2, int a3)
{
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  (*(*a2 + 16))(a2);
  v6 = *this;
  if (*this != (this + 1))
  {
    do
    {
      (*(*a2 + 32))(a2, v6 + 32);
      if (a3)
      {
        v7 = *(v6 + 7);
        v8 = *(v7 + 16);
        if (v8)
        {
          v9 = *v8;
        }

        else
        {
          v9 = 0;
        }

        v22[0] = *(v7 + 16);
        v22[1] = v9;
        v22[2] = v8;
        v22[3] = v9;
        v15 = *(v7 + 8);
        v16 = v15 + 32;
        if (!v15)
        {
          v16 = 0;
        }

        v21[0] = v15;
        v21[1] = v16;
        v21[2] = v15;
        v21[3] = v16;
        sub_29A163F04(this, a2, v23, v6 + 32, v22, v21);
      }

      else
      {
        v10 = *(v6 + 7);
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        if (v11)
        {
          v13 = (v11 + 4);
        }

        else
        {
          v13 = 0;
        }

        if (v12)
        {
          v14 = *v12;
        }

        else
        {
          v14 = 0;
        }

        sub_29A1640EC(this, a2, v23, v6 + 32, v11, v13, v12, v14);
      }

      (*(*a2 + 40))(a2, v6 + 32);
      v17 = *(v6 + 1);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v6 + 2);
          v19 = *v18 == v6;
          v6 = v18;
        }

        while (!v19);
      }

      v6 = v18;
    }

    while (v18 != (this + 1));
  }

  (*(*a2 + 24))(a2);
  return sub_29A16445C(v23);
}

void sub_29A163EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A16445C(va);
  _Unwind_Resume(a1);
}

void sub_29A163F04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 24);
  if (*(a6 + 24) != v6)
  {
    v11 = *(a5 + 16);
    do
    {
      v12 = v6;
      if (v6 == (v11 + 4))
      {
        v12 = *v11[2];
      }

      if ((*(*a2 + 48))(a2, *(v12 - 6)))
      {
        v13 = (v12 - 4);
        v14 = sub_29A1644E8(a3, v13);
        if (!v14)
        {
          pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::GetString(*v13, &__p);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v17);
          v18 = *v13;
          v19 = v17;
          v17 = 0;
          v14 = sub_29A1645F0(a3, &v18, &v18);
          if ((v19 & 7) != 0)
          {
            atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v17 & 7) != 0)
          {
            atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v16 < 0)
          {
            operator delete(__p);
          }
        }

        (*(*a2 + 56))(a2, a4, v14 + 3, v13);
      }

      if (v6 == (v11 + 4))
      {
        v11 = v11[2];
        v6 = *v11;
      }

      v6 -= 4;
    }

    while (*(a6 + 24) != v6);
  }
}

void sub_29A164098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1640EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6 != a8)
  {
    v9 = a6;
    do
    {
      if ((*(*a2 + 48))(a2, *(v9 + 8)))
      {
        v14 = sub_29A1644E8(a3, v9);
        if (!v14)
        {
          pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::GetString(*v9, &__p);
          pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v18);
          v19 = *v9;
          v20 = v18;
          v18 = 0;
          v14 = sub_29A1645F0(a3, &v19, &v19);
          if ((v20 & 7) != 0)
          {
            atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if ((v18 & 7) != 0)
          {
            atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (v17 < 0)
          {
            operator delete(__p);
          }
        }

        (*(*a2 + 56))(a2, a4, v14 + 3, v9);
      }

      v9 += 32;
      if (v9 == *a5)
      {
        v15 = a5[3];
        if (v15)
        {
          a5 = a5[3];
          v9 = v15 + 32;
        }
      }
    }

    while (v9 != a8);
  }
}

void sub_29A164264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a15 & 7) != 0)
  {
    atomic_fetch_add_explicit((a15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A1642D4(uint64_t **a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_29A15831C(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29A16435C(a1, a3, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

_BYTE *sub_29A16435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x40uLL);
  v9 = result;
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(result + 2) = *a2;
    *(result + 6) = *(a2 + 16);
  }

  v10 = *a3;
  *a3 = 0;
  *(v9 + 7) = v10;
  *(a4 + 16) = 1;
  return result;
}

void sub_29A164400(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29A15FBD4(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t sub_29A16445C(uint64_t a1)
{
  sub_29A164498(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29A164498(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if ((v4 & 7) != 0)
      {
        atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_29A1644E8(void *a1, const char ***a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v4 = *a2 / 0x18;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  v6 = v5.u32[0];
  if (v5.u32[0] > 1uLL)
  {
    v7 = *a2 / 0x18;
    if (v4 >= *&v2)
    {
      v7 = v4 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  if (*v8)
  {
    do
    {
      v10 = v9[1];
      if (v10 == v4)
      {
        v11 = v9[2];
        if (v11 == *a2 || pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::operator==(v11, *a2))
        {
          return v9;
        }
      }

      else
      {
        if (v6 > 1)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

  return v9;
}

void *sub_29A1645F0(uint64_t a1, const char ***a2, uint64_t a3)
{
  v6 = *a2 / 0x18;
  v7 = *(a1 + 8);
  if (v7)
  {
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v3 = *a2 / 0x18;
      if (v6 >= v7)
      {
        v3 = v6 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }

    v11 = *(*a1 + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v6)
        {
          v14 = i[2];
          if (v14 == *a2 || pxrInternal__aapl__pxrReserved__::TraceStaticKeyData::operator==(v14, *a2))
          {
            return i;
          }
        }

        else
        {
          if (v10 > 1)
          {
            if (v13 >= v7)
            {
              v13 %= v7;
            }
          }

          else
          {
            v13 &= v7 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = operator new(0x20uLL);
  *i = 0;
  i[1] = v6;
  *(i + 1) = *a3;
  *(a3 + 8) = 0;
  v15 = (*(a1 + 24) + 1);
  v16 = *(a1 + 32);
  if (!v7 || (v16 * v7) < v15)
  {
    v17 = 1;
    if (v7 >= 3)
    {
      v17 = (v7 & (v7 - 1)) != 0;
    }

    v18 = v17 | (2 * v7);
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
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v6 >= v7)
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

  v21 = *a1;
  v22 = *(*a1 + 8 * v3);
  if (v22)
  {
    *i = *v22;
LABEL_39:
    *v22 = i;
    goto LABEL_40;
  }

  *i = *(a1 + 16);
  *(a1 + 16) = i;
  *(v21 + 8 * v3) = a1 + 16;
  if (*i)
  {
    v23 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v23 >= v7)
      {
        v23 %= v7;
      }
    }

    else
    {
      v23 &= v7 - 1;
    }

    v22 = (*a1 + 8 * v23);
    goto LABEL_39;
  }

LABEL_40:
  ++*(a1 + 24);
  return i;
}

void sub_29A16482C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A164858()
{
  v1 = nullsub_49;
}

void pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable::~TraceCollectionAvailable(pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable *this)
{
  *this = &unk_2A2041180;
  v2 = *(this + 2);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::~TfNotice(this);
}

{
  pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable::~TraceCollectionAvailable(this);

  operator delete(v1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance(unint64_t *a1)
{
  pxrInternal__aapl__pxrReserved__::ArchGetDemangled((0x800000029B47F04ALL & 0x7FFFFFFFFFFFFFFFLL), &v11);
  v2 = std::string::insert(&v11, 0, "Create Singleton ");
  v3 = *&v2->__r_.__value_.__l.__data_;
  v15 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  sub_29A0EC164(&v12, "Tf", "TfSingleton::_CreateInstance", __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::Tf_SingletonPyGILDropper(&v11);
  if (atomic_exchange(pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TraceCollector*> &)::isInitializing, 1u))
  {
    while (!atomic_load(a1))
    {
      sched_yield();
    }
  }

  else
  {
    if (!atomic_load(a1))
    {
      sub_29A0ECEEC(__p, "Trace", "TraceCollector");
      v8 = malloc(0x50uLL);
      if (__p[0])
      {
        pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(LODWORD(__p[1]), __p[0]);
      }

      pxrInternal__aapl__pxrReserved__::TraceCollector::TraceCollector(v8);
      v10 = atomic_load(a1);
      if (v10)
      {
        if (v8 != v10)
        {
          __p[0] = "tf/instantiateSingleton.h";
          __p[1] = "_CreateInstance";
          v15 = 86;
          v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TraceCollector]";
          v17 = 0;
          v18 = 4;
          pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "race detected setting singleton instance", v9);
        }
      }

      else if (atomic_exchange(a1, v8))
      {
        __p[0] = "tf/instantiateSingleton.h";
        __p[1] = "_CreateInstance";
        v15 = 90;
        v16 = "static T *pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance(std::atomic<T *> &) [T = pxrInternal__aapl__pxrReserved__::TraceCollector]";
        v17 = 0;
        v18 = 4;
        pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueFatalError(__p, "Failed axiom: ' %s '", v9, "instance.exchange(newInst) == nullptr");
      }
    }

    atomic_store(0, pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance(std::atomic<pxrInternal__aapl__pxrReserved__::TraceCollector*> &)::isInitializing);
  }

  v6 = atomic_load(a1);
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&v11);
  if (v12)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  return v6;
}

void sub_29A164B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pxrInternal__aapl__pxrReserved__::Tf_SingletonPyGILDropper::~Tf_SingletonPyGILDropper(&a10);
  sub_29A0E9CEC(&a16);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::SetInstanceConstructed(unint64_t result, uint64_t a2, char *a3)
{
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance, result))
  {
    v3[0] = "tf/instantiateSingleton.h";
    v3[1] = "SetInstanceConstructed";
    v3[2] = 54;
    v3[3] = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::TraceCollector]";
    v4 = 0;
    v5 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(v3, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::DeleteInstance()
{
  for (i = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance); i; i = v1)
  {
    v1 = i;
    atomic_compare_exchange_strong(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance, &v1, 0);
    if (v1 == i)
    {
      pxrInternal__aapl__pxrReserved__::TraceCollector::~TraceCollector(i);

      free(v2);
      return;
    }

    sched_yield();
  }
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(pxrInternal__aapl__pxrReserved__::TraceCollector *this)
{
  v5 = off_2A1B71A78();
  if (!*v5)
  {
    sub_29A164D14((v4 + 8), v1, v2, v3);
    *v5 = v6;
  }
}

void sub_29A164D14(atomic_ullong *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = tbb::internal::NFS_Allocate(1uLL, 256, 0, a4);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 11) = 0u;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 14) = 0u;
  *(v5 + 15) = 0u;
  for (i = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::_PerThreadData(v5); ; *(i + 8) = v8)
  {
    v7 = *a1;
    *(i + 8) = *a1;
    v8 = v7;
    atomic_compare_exchange_strong(a1, &v8, i);
    if (v8 == v7)
    {
      break;
    }
  }
}

pxrInternal__aapl__pxrReserved__::TraceCollector *pxrInternal__aapl__pxrReserved__::TraceCollector::TraceCollector(pxrInternal__aapl__pxrReserved__::TraceCollector *this)
{
  *this = 0;
  *(this + 1) = 0;
  sub_29A008E78(this + 3, "TraceRegistry global collector");
  *(this + 6) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (atomic_exchange(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance, this))
  {
    __p[0] = "tf/instantiateSingleton.h";
    __p[1] = "SetInstanceConstructed";
    v7 = 54;
    v8 = "static void pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::SetInstanceConstructed(T &) [T = pxrInternal__aapl__pxrReserved__::TraceCollector]";
    v9 = 0;
    v10 = 4;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(__p, "this function may not be called after GetInstance() or another SetInstanceConstructed() has completed", v2);
  }

  sub_29A008E78(__p, "PXR_ENABLE_GLOBAL_TRACE");
  v3 = pxrInternal__aapl__pxrReserved__::TfGetenvBool(__p, 0);
  v4 = v3;
  if ((SHIBYTE(v7) & 0x80000000) == 0)
  {
    if (!v3)
    {
      return this;
    }

    goto LABEL_7;
  }

  operator delete(__p[0]);
  if (v4)
  {
LABEL_7:
    atexit(sub_29A164EE0);
    atomic_store(1u, &pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled);
  }

  return this;
}

void sub_29A164E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v16 = *(v14 + 72);
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  sub_29A166054((v14 + 8));
  sub_29A0F6078(v14, v17);
  _Unwind_Resume(a1);
}

void sub_29A164F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_29B290120(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::~TraceCollector(pxrInternal__aapl__pxrReserved__::TraceCollector *this)
{
  atomic_store(0, &pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled);
  v2 = *(this + 9);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  sub_29A166054(this + 1);

  sub_29A0F6078(this, v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::Scope(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a2;
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_instance);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TraceCollector>::_CreateInstance();
  }

  pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(v4);
  v6 = v5;
  v8 = 0;
  atomic_store(1u, v5);
  result = sub_29A166098(atomic_load_explicit((v5 + 8), memory_order_acquire), &v8 + 4, a1, &v10, &v9, &v8);
  atomic_store(0, v6);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_BeginEvent(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v9, "Trace", "TraceCollector::BeginEvent");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    v7 = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::BeginEvent(v6, a2, a3);
  }

  else
  {
    v7 = 0;
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::BeginEvent(uint64_t a1, uint64_t a2, int a3)
{
  v13 = a3;
  sub_29A0ECEEC(&v11, "Trace", "TraceCollector::_PerThreadData::BeginEvent");
  atomic_store(1u, a1);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  v6 = sub_29A16627C(explicit, &v10, &v9, &v13);
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v6);
  atomic_store(0, a1);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return TimeStamp;
}

void sub_29A1651AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  atomic_store(0, v4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_EndEvent(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v9, "Trace", "TraceCollector::EndEvent (key)");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    v7 = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::EndEvent(v6, a2, a3);
  }

  else
  {
    v7 = 0;
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::EndEvent(uint64_t a1, uint64_t a2, int a3)
{
  v13 = a3;
  sub_29A0ECEEC(&v11, "Trace", "TraceCollector::_PerThreadData::EndEvent");
  atomic_store(1u, a1);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  v6 = sub_29A1662F0(explicit, &v10, &v9, &v13);
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v6);
  atomic_store(0, a1);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return TimeStamp;
}

void sub_29A165330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  atomic_store(0, v4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_MarkerEvent(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3)
{
  sub_29A0ECEEC(&v9, "Trace", "TraceCollector::MarkerEvent");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    v7 = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::MarkerEvent(v6, a2, a3);
  }

  else
  {
    v7 = 0;
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::MarkerEvent(uint64_t a1, uint64_t a2, int a3)
{
  v13 = a3;
  sub_29A0ECEEC(&v11, "Trace", "TraceCollector::_PerThreadData::MarkerEvent");
  atomic_store(1u, a1);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  v6 = sub_29A166368(explicit, &v10, &v9, &v13);
  TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(v6);
  atomic_store(0, a1);
  if (v11)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v12, v11);
  }

  return TimeStamp;
}

void sub_29A1654B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  atomic_store(0, v4);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_EndEventAtTime(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3, double a4)
{
  result = sub_29A0ECEEC(&v10, "Trace", "TraceCollector::EndEventAtTime (key, double)");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    result = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::EndEventAtTime(v9, a2, a3, a4);
  }

  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::EndEventAtTime(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v14 = a3;
  atomic_store(1u, a1);
  sub_29A0ECEEC(&v12, "Trace", "TraceCollector::_PerThreadData::EndEventAtTime");
  v11 = (a4 * 1000.0 / pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(0xF4240));
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  result = sub_29A16644C(explicit, &v10, &v9, &v11, &v14);
  if (v12)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  atomic_store(0, a1);
  return result;
}

void sub_29A165660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  atomic_store(0, v4);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_BeginEventAtTime(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3, double a4)
{
  result = sub_29A0ECEEC(&v10, "Trace", "TraceCollector::BeginEventAtTime (key, double)");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    result = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::BeginEventAtTime(v9, a2, a3, a4);
  }

  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::BeginEventAtTime(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v14 = a3;
  atomic_store(1u, a1);
  sub_29A0ECEEC(&v12, "Trace", "TraceCollector::_PerThreadData::BeginEventAtTime");
  v11 = (a4 * 1000.0 / pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(0xF4240));
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  result = sub_29A1663E0(explicit, &v10, &v9, &v11, &v14);
  if (v12)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  atomic_store(0, a1);
  return result;
}

void sub_29A165814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  atomic_store(0, v4);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_MarkerEventAtTime(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, uint64_t a2, int a3, double a4)
{
  result = sub_29A0ECEEC(&v10, "Trace", "TraceCollector::MarkerEventAtTime (key, double)");
  if (atomic_load_explicit(pxrInternal__aapl__pxrReserved__::TraceCollector::_isEnabled, memory_order_acquire) == 1)
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);
    result = pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::MarkerEventAtTime(v9, a2, a3, a4);
  }

  if (v10)
  {
    return pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::MarkerEventAtTime(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v14 = a3;
  atomic_store(1u, a1);
  sub_29A0ECEEC(&v12, "Trace", "TraceCollector::_PerThreadData::MarkerEventAtTime");
  v11 = (a4 * 1000.0 / pxrInternal__aapl__pxrReserved__::ArchTicksToSeconds(0xF4240));
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v10 = 0;
  v9 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  result = sub_29A1664BC(explicit, &v10, &v9, &v11, &v14);
  if (v12)
  {
    result = pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v13, v12);
  }

  atomic_store(0, a1);
  return result;
}

void sub_29A1659C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A0E9CEC(va);
  atomic_store(0, v4);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::Clear(atomic_ullong *this)
{
  for (i = atomic_load_explicit(this + 1, memory_order_acquire); i; i = i[8])
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::Clear(i);
  }
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::Clear(atomic_ullong *this)
{
  pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::GetCollectionData(this, &v2);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_29A15FA78(&v2, v1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_EndScope(pxrInternal__aapl__pxrReserved__::TraceCollector *a1, void *a2, int a3)
{
  pxrInternal__aapl__pxrReserved__::TraceCollector::_GetThreadData(a1);

  return sub_29A165AA4(v5, a2, a3);
}

uint64_t sub_29A165AA4(uint64_t a1, void *a2, int a3)
{
  atomic_store(1u, a1);
  v5 = 0;
  v6 = a3;
  result = sub_29A1662F0(atomic_load_explicit((a1 + 8), memory_order_acquire), &v5, a2, &v6);
  atomic_store(0, a1);
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_MeasureScopeOverhead(pxrInternal__aapl__pxrReserved__::TraceCollector *this, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t (*a5)(const void *, int))
{
  v7 = &pxrInternal__aapl__pxrReserved__::externallyVisibleValue;
  *v8 = &v7;
  result = pxrInternal__aapl__pxrReserved__::Arch_MeasureExecutionTime(0x989680, 0, v8, sub_29A16610C, a5);
  *(this + 6) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::CreateCollection(atomic_ullong *this)
{
  sub_29A0ECEEC(&v10, "Trace", "TraceCollection");
  v2 = malloc(0x18uLL);
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }

  v2[2] = 0;
  v2[1] = 0;
  *v2 = (v2 + 1);
  v13 = v2;
  for (i = atomic_load_explicit(this + 1, memory_order_acquire); i; i = i[8])
  {
    pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::GetCollectionData(i, &v10);
    v4 = v10;
    v5 = v10[2];
    if (v5)
    {
      v5 = *v5;
    }

    v6 = v10[1];
    if (v6)
    {
      v7 = (v6 + 32);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == v5)
    {
      v10 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::TraceCollection::AddToCollection(v13, i + 2, &v10);
      v4 = v10;
      v10 = 0;
      if (!v4)
      {
        continue;
      }
    }

    sub_29A15FA78(&v10, v4);
  }

  v8 = v13;
  if (v13)
  {
    v9 = operator new(0x20uLL);
    v9->__vftable = &unk_2A20411B8;
    v9->__shared_owners_ = 0;
    v9->__shared_weak_owners_ = 0;
    v9[1].__vftable = v8;
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  v13 = 0;
  v10 = &unk_2A2041180;
  v11 = v8;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_29A014BEC(v9);
  }

  pxrInternal__aapl__pxrReserved__::TfNotice::Send(&v10);
  pxrInternal__aapl__pxrReserved__::TraceCollectionAvailable::~TraceCollectionAvailable(&v10);
  sub_29A15FB24(&v13, 0);
}

void sub_29A165CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A15FB24(va, 0);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::GetCollectionData@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x80uLL);
  result = pxrInternal__aapl__pxrReserved__::TraceEventList::TraceEventList(v4);
  *a2 = atomic_exchange(this + 1, v4);
    ;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData *pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::_PerThreadData(pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData *this)
{
  *this = 0;
  v2 = this + 16;
  pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId((this + 16));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(&v5);
  if (*(this + 39) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v5;
  *(v2 + 2) = v6;
  v3 = operator new(0x80uLL);
  pxrInternal__aapl__pxrReserved__::TraceEventList::TraceEventList(v3);
  atomic_store(v3, this + 1);
  return this;
}

void sub_29A165E10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = v12;
  operator delete(v13);
  sub_29A166224(&a10);
  if (*(v10 + 39) < 0)
  {
    operator delete(*v11);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::~_PerThreadData(pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData *this)
{
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit)
  {
    sub_29A15F834(explicit + 9);
    sub_29A15F978(explicit + 4);
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::~TraceEventContainer(explicit);
    operator delete(v3);
  }

  v4 = (this + 40);
  sub_29A166224(&v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::_EndScope(uint64_t a1, void *a2, int a3)
{
  v6 = a3;
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v5 = 0;
  return sub_29A1662F0(explicit, &v5, a2, &v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::CounterDelta(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v10 = a4;
  v8 = 0;
  v9 = a3;
  atomic_store(1u, a1);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v7 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  result = sub_29A16652C(explicit, &v8, &v7, &v10, &v9);
  atomic_store(0, a1);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::CounterValue(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v10 = a4;
  v8 = 0;
  v9 = a3;
  atomic_store(1u, a1);
  explicit = atomic_load_explicit((a1 + 8), memory_order_acquire);
  v7 = sub_29A15CFCC(*(explicit + 5) + 16, a2, a2) + 2;
  result = sub_29A1665B4(explicit, &v8, &v7, &v10, &v9);
  atomic_store(0, a1);
  return result;
}

void sub_29A166004(uint64_t a1)
{
  if (*(a1 + 8))
  {
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator->();
  }

  sub_29B2901C8();
}

atomic_ullong *sub_29A166054(atomic_ullong *a1)
{
  for (i = atomic_load_explicit(a1, memory_order_acquire); i; i = v3)
  {
    v3 = *(i + 8);
    pxrInternal__aapl__pxrReserved__::TraceCollector::_PerThreadData::~_PerThreadData(i);
    tbb::internal::NFS_Free(v4, v5);
  }

  return a1;
}

uint64_t sub_29A166098(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, int *a6)
{
  v6 = *a1;
  *a1 += 32;
  v7 = *a4;
  v8 = *a5;
  v9 = *a6;
  *v6 = *a3;
  *(v6 + 8) = v9;
  *(v6 + 13) = 2;
  *(v6 + 16) = v8;
  *(v6 + 24) = v7;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v6;
}

uint64_t sub_29A16610C(void ***a1, int a2)
{
  for (i = mach_absolute_time(); a2; --a2)
  {
    ++***a1;
  }

  return mach_absolute_time() - i;
}

void sub_29A166168(uint64_t a1, void **a2)
{
  if (a2)
  {
    sub_29A15FB78(a2, a2[1]);

    free(a2);
  }
}

void sub_29A1661B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29A1661E4(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20411F8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29A166224(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if ((v5 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29A16627C(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, int *a4)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  *v5 = *a3;
  *(v5 + 8) = v6;
  *(v5 + 13) = 0;
  *(v5 + 16) = mach_absolute_time();
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A1662F0(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, int *a4)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  *v5 = *a3;
  *(v5 + 8) = v6;
  *(v5 + 13) = 1;
  *(v5 + 16) = mach_absolute_time();
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A166368(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, int *a4)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  *v5 = *a3;
  *(v5 + 8) = v6;
  *(v5 + 13) = 3;
  *(v5 + 16) = mach_absolute_time();
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A1663E0(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, int *a5)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  v7 = *a5;
  *v5 = *a3;
  *(v5 + 8) = v7;
  *(v5 + 13) = 0;
  *(v5 + 16) = v6;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A16644C(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, int *a5)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  v7 = *a5;
  *v5 = *a3;
  *(v5 + 8) = v7;
  *(v5 + 13) = 1;
  *(v5 + 16) = v6;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A1664BC(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, int *a5)
{
  v5 = *a1;
  *a1 += 32;
  v6 = *a4;
  v7 = *a5;
  *v5 = *a3;
  *(v5 + 8) = v7;
  *(v5 + 13) = 3;
  *(v5 + 16) = v6;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v5;
}

uint64_t sub_29A16652C(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, int *a5)
{
  v6 = *a1;
  *a1 += 32;
  v7 = *a4;
  v8 = *a5;
  *v6 = *a3;
  *(v6 + 8) = v8;
  *(v6 + 13) = 4;
  *(v6 + 16) = mach_absolute_time();
  *(v6 + 24) = v7;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v6;
}

uint64_t sub_29A1665B4(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, uint64_t a2, void *a3, uint64_t *a4, int *a5)
{
  v6 = *a1;
  *a1 += 32;
  v7 = *a4;
  v8 = *a5;
  *v6 = *a3;
  *(v6 + 8) = v8;
  *(v6 + 13) = 5;
  *(v6 + 16) = mach_absolute_time();
  *(v6 + 24) = v7;
  **(a1 + 2) += 32;
  if (**(a1 + 2) == *(*(a1 + 2) + 8))
  {
    pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  }

  return v6;
}

void pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator::OnEndCollection(pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator *this)
{
  v2 = *(this + 1);
  v29 = this + 8;
  v30 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      v31 = (v2 + 32);
      v3 = *(sub_29A160544(this + 72, v2 + 4, &unk_29B4D6118, &v31) + 3);
      v4 = *(v2 + 5);
      if (v4 != (v2 + 48))
      {
        do
        {
          if (*(v4 + 48))
          {
            v3 = v3 + v4[5];
          }

          else
          {
            v3 = v4[5];
          }

          v31 = (v2 + 32);
          v5 = sub_29A1669DC(this + 32, v2 + 4, &unk_29B4D6118, &v31);
          v6 = v5;
          v8 = v5[4];
          v7 = v5[5];
          if (v8 >= v7)
          {
            v10 = v5[3];
            v11 = v8 - v10;
            v12 = (v8 - v10) >> 4;
            v13 = v12 + 1;
            if ((v12 + 1) >> 60)
            {
              sub_29A00C9A4();
            }

            v14 = v7 - v10;
            if (v14 >> 3 > v13)
            {
              v13 = v14 >> 3;
            }

            v15 = v14 >= 0x7FFFFFFFFFFFFFF0;
            v16 = 0xFFFFFFFFFFFFFFFLL;
            if (!v15)
            {
              v16 = v13;
            }

            if (v16)
            {
              v17 = sub_29A017BD4((v5 + 3), v16);
              v16 = v18;
              v10 = v6[3];
              v11 = v6[4] - v10;
              v19 = v11 >> 4;
            }

            else
            {
              v17 = 0;
              v19 = v12;
            }

            v20 = &v17[16 * v12];
            v21 = &v17[16 * v16];
            *v20 = v4[4];
            v20[1] = v3;
            v9 = (v20 + 2);
            v22 = &v20[-2 * v19];
            memcpy(v22, v10, v11);
            v23 = v6[3];
            v6[3] = v22;
            v6[4] = v9;
            v6[5] = v21;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v8 = v4[4];
            *(v8 + 8) = v3;
            v9 = (v8 + 16);
          }

          v6[4] = v9;
          v24 = *(v4 + 1);
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = *(v4 + 2);
              v26 = *v25 == v4;
              v4 = v25;
            }

            while (!v26);
          }

          v4 = v25;
        }

        while (v25 != (v2 + 48));
      }

      v31 = (v2 + 32);
      *(sub_29A160544(this + 72, v2 + 4, &unk_29B4D6118, &v31) + 3) = v3;
      v27 = *(v2 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v2 + 2);
          v26 = *v28 == v2;
          v2 = v28;
        }

        while (!v26);
      }

      v2 = v28;
    }

    while (v28 != v30);
  }

  sub_29A155F80(v29, *(this + 2));
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = v30;
}

char *pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator::OnEvent(uint64_t a1, int a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  result = pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(this);
  if (result == 6)
  {
    v13 = a3;
    v8 = sub_29A166C1C((a1 + 8), a3, &unk_29B4D6118, &v13);
    TimeStamp = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
    CounterValue = pxrInternal__aapl__pxrReserved__::TraceEvent::GetCounterValue(this);
    v13 = TimeStamp;
    v14 = CounterValue;
    v15 = 0;
  }

  else
  {
    if (result != 5)
    {
      return result;
    }

    v13 = a3;
    v8 = sub_29A166C1C((a1 + 8), a3, &unk_29B4D6118, &v13);
    v9 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetTimeStamp(this);
    v10 = pxrInternal__aapl__pxrReserved__::TraceEvent::GetCounterValue(this);
    v13 = v9;
    v14 = v10;
    v15 = 1;
  }

  return sub_29A166D34(v8 + 5, &v13);
}

void pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator::SetCurrentValues(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 72);
  if (v3 != a2)
  {
    *(a1 + 104) = *(a2 + 32);
    sub_29A166DCC(v3, *(a2 + 16), 0);
  }
}

void *sub_29A1669DC(uint64_t a1, void *a2, uint64_t a3, uint64_t **a4)
{
  v6 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v4 = v6;
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }
    }

    else
    {
      v4 = v6 & (v7 - 1);
    }

    v9 = *(*a1 + 8 * v4);
    if (v9)
    {
      result = *v9;
      if (*v9)
      {
        do
        {
          v11 = result[1];
          if (v11 == v6)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
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

            if (v11 != v4)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A159274(a1, v6, a4, &v22);
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
      if (v6 >= v7)
      {
        v4 = v6 % v7;
      }

      else
      {
        v4 = v6;
      }
    }

    else
    {
      v4 = (v7 - 1) & v6;
    }
  }

  v18 = *a1;
  v19 = *(*a1 + 8 * v4);
  if (v19)
  {
    result = v22;
    *v22 = *v19;
    *v19 = result;
  }

  else
  {
    v20 = v22;
    *v22 = *(a1 + 16);
    *(a1 + 16) = v20;
    *(v18 + 8 * v4) = a1 + 16;
    result = v22;
    if (*v22)
    {
      v21 = *(*v22 + 8);
      if ((v7 & (v7 - 1)) != 0)
      {
        if (v21 >= v7)
        {
          v21 %= v7;
        }
      }

      else
      {
        v21 &= v7 - 1;
      }

      *(*a1 + 8 * v21) = v22;
      result = v22;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A166C04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A15A260(va, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_29A166C1C(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_29A153CF4(a1, &v9, a2);
  result = *v6;
  if (!*v6)
  {
    sub_29A166CB4(a1, a4, &v8);
    sub_29A00B204(a1, v9, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29A166CB4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  v6[4] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v6[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  v6[6] = 0;
  v6[7] = 0;
  result = v6 + 6;
  *(result - 1) = result;
  *(a3 + 16) = 1;
  return result;
}

char *sub_29A166D34(uint64_t **a1, uint64_t *a2)
{
  v4 = operator new(0x38uLL);
  v5 = *a2;
  *(v4 + 4) = *a2;
  *(v4 + 40) = *(a2 + 1);
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (v5 >= v7[4])
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v4;
}

void sub_29A166DCC(double *a1, double *a2, double *a3)
{
  v4 = a2;
  v6 = *(a1 + 1);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = *(a1 + 2);
    a1[2] = 0.0;
    a1[3] = 0.0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        sub_29A166F2C(v8 + 2, v4 + 2);
        v8[3] = *(v4 + 3);
        v10 = *v8;
        sub_29A166EC8(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_29A155F30(a1, v10);
  }

  while (v4 != a3)
  {
    sub_29A167344(a1, v4 + 2);
    v4 = *v4;
  }
}

void sub_29A166EA0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29B290244(v1);
  __cxa_rethrow();
}

void *sub_29A166EC8(void *a1, void *a2)
{
  v4 = a2 + 2;
  v5 = bswap64(0x9E3779B97F4A7C55 * (a2[2] & 0xFFFFFFFFFFFFFFF8));
  a2[1] = v5;
  v6 = sub_29A166F80(a1, v5, v4);
  sub_29A0FF16C(a1, a2, v6);
  return a2;
}

void *sub_29A166F2C(void *result, void *a2)
{
  if (a2 != result)
  {
    if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((*a2 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      *a2 &= 0xFFFFFFFFFFFFFFF8;
    }

    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *result = *a2;
  }

  return result;
}

void *sub_29A166F80(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_29A1670E4(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && (*a3 ^ v16[2]) < 8uLL;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_29A1670E4(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_29A1671D4(a1, prime);
    }
  }
}

void sub_29A1671D4(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (a2 >> 61)
    {
      sub_29A00C8B8();
    }

    v4 = operator new(8 * a2);
    v5 = *a1;
    *a1 = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = 0;
    *(a1 + 8) = a2;
    do
    {
      *(*a1 + 8 * v6++) = 0;
    }

    while (a2 != v6);
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = v7[1];
      v9 = vcnt_s8(a2);
      v9.i16[0] = vaddlv_u8(v9);
      if (v9.u32[0] > 1uLL)
      {
        if (v8 >= a2)
        {
          v8 %= a2;
        }
      }

      else
      {
        v8 &= a2 - 1;
      }

      *(*a1 + 8 * v8) = a1 + 16;
      for (i = *v7; *v7; i = *v7)
      {
        v12 = i[1];
        if (v9.u32[0] > 1uLL)
        {
          if (v12 >= a2)
          {
            v12 %= a2;
          }
        }

        else
        {
          v12 &= a2 - 1;
        }

        if (v12 == v8)
        {
          v7 = i;
        }

        else
        {
          v13 = *a1;
          v14 = i;
          if (*(*a1 + 8 * v12))
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14 && (v14[2] ^ i[2]) < 8);
            *v7 = v14;
            *v15 = *v13[v12];
            *v13[v12] = i;
          }

          else
          {
            v13[v12] = v7;
            v7 = i;
            v8 = v12;
          }
        }
      }
    }
  }

  else
  {
    v10 = *a1;
    *a1 = 0;
    if (v10)
    {
      operator delete(v10);
    }

    *(a1 + 8) = 0;
  }
}

void sub_29A167380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A1673A0@<D0>(double *a1@<X0>, double *a2@<X1>, double **a3@<X8>)
{
  v6 = operator new(0x20uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *v6 = 0.0;
  v6[1] = 0.0;
  v7 = *a2;
  v6[2] = *a2;
  if ((LOBYTE(v7) & 7) != 0)
  {
    add_explicit = atomic_fetch_add_explicit((*&v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed);
    v7 = v6[2];
    if ((add_explicit & 1) == 0)
    {
      *&v7 &= 0xFFFFFFFFFFFFFFF8;
      v6[2] = v7;
    }
  }

  result = a2[1];
  v6[3] = result;
  *(a3 + 16) = 1;
  *(v6 + 1) = bswap64(0x9E3779B97F4A7C55 * (*&v7 & 0xFFFFFFFFFFFFFFF8));
  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceDataBuffer::Allocator::AllocateBlock(pxrInternal__aapl__pxrReserved__::TraceDataBuffer::Allocator *this, unint64_t a2, uint64_t a3)
{
  if (a2 <= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + a3;
  if (v5 <= *(this + 8))
  {
    v6 = *(this + 8);
  }

  else
  {
    v6 = v5;
  }

  v7 = operator new[](v6);
  __p = v7;
  *this = &v7[v6];
  *(this + 1) = v7;
  sub_29A1674CC(this + 16, &__p);
  v8 = __p;
  __p = 0;
  if (v8)
  {
    operator delete[](v8);
  }
}

void sub_29A1674B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete[](__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A1674CC(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = *(a1 + 40);
  v8 = v7 + *(a1 + 32);
  if (v6 == v8)
  {
    sub_29A167558(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32) + v7;
  }

  v9 = *(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8));
  v10 = *a2;
  *a2 = 0;
  *(v9 + 8 * (v8 & 0x1FF)) = v10;
  *(a1 + 40) = v7 + 1;
}

void sub_29A167558(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29A1676C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::TraceEvent::GetCounterValue(pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  result = 0.0;
  if ((*(this + 13) & 0xFE) == 4)
  {
    return *(this + 3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceEvent::GetData(pxrInternal__aapl__pxrReserved__::TraceEvent *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 13);
  if ((v3 & 0xFE) != 6)
  {
    goto LABEL_11;
  }

  v4 = this + 24;
  if (v3 != 6)
  {
    v4 = *v4;
  }

  v5 = *(this + 12);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      *a2 = *v4;
      v6 = 4;
      goto LABEL_17;
    }

    if (v5 == 4)
    {
      *a2 = *v4;
      v6 = 5;
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (*(this + 12))
  {
    if (v5 == 1)
    {
      *a2 = *v4;
      v6 = 2;
      goto LABEL_17;
    }

    if (v5 == 2)
    {
      *a2 = *v4;
      v6 = 3;
LABEL_17:
      *(a2 + 24) = v6;
      return;
    }

LABEL_11:
    *(a2 + 24) = 0;
    return;
  }

  sub_29A008E78(__p, v4);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
    *a2 = *__p;
    *(a2 + 16) = v9;
    v6 = 1;
    goto LABEL_17;
  }

  sub_29A008D14(a2, __p[0], __p[1]);
  v7 = SHIBYTE(v9);
  *(a2 + 24) = 1;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A167844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEvent::GetStartTimeStamp(pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  if (*(this + 13) == 2)
  {
    return *(this + 3);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEvent::GetEndTimeStamp(pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  if (*(this + 13) == 2)
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEvent::GetType(pxrInternal__aapl__pxrReserved__::TraceEvent *this)
{
  v1 = *(this + 13);
  if (v1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x707060504030201uLL >> (8 * v1);
  }

  return v2 & 7;
}

pxrInternal__aapl__pxrReserved__::TraceEventContainer *pxrInternal__aapl__pxrReserved__::TraceEventContainer::TraceEventContainer(pxrInternal__aapl__pxrReserved__::TraceEventContainer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 512;
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(this);
  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 512;
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(this);
  return this;
}

void *pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(pxrInternal__aapl__pxrReserved__::TraceEventContainer *this)
{
  v2 = *(this + 3);
  v3 = (v2 - 32) & 0xFFFFFFFFFFFFFFE0;
  result = malloc(v3 + 32);
  *result = result + 4;
  result[1] = result + v3 + 32;
  result[2] = 0;
  result[3] = 0;
  if (*(this + 1))
  {
    v5 = *(this + 2);
    *(v5 + 24) = result;
    result[2] = v5;
    v2 = *(this + 3);
  }

  else
  {
    *(this + 1) = result;
  }

  *this = result + 4;
  *(this + 2) = result;
  *(this + 3) = 2 * v2;
  return result;
}

void pxrInternal__aapl__pxrReserved__::TraceEventContainer::~TraceEventContainer(pxrInternal__aapl__pxrReserved__::TraceEventContainer *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    do
    {
      v2 = v1[3];
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    do
    {
      v2 = v1[3];
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void *pxrInternal__aapl__pxrReserved__::TraceEventContainer::_Node::DestroyList(void *result)
{
  if (result)
  {
    do
    {
      v1 = result[3];
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::TraceEventContainer *pxrInternal__aapl__pxrReserved__::TraceEventContainer::TraceEventContainer(pxrInternal__aapl__pxrReserved__::TraceEventContainer *a1, void *a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 512;
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 2);
  v6 = a2[3];
  *(a1 + 2) = a2[2];
  a2[2] = v5;
  v7 = *(a1 + 1);
  *(a1 + 1) = a2[1];
  a2[1] = v7;
  *(a1 + 3) = v6;
  return a1;
}

{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 512;
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(a1);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 2);
  v6 = a2[3];
  *(a1 + 2) = a2[2];
  a2[2] = v5;
  v7 = *(a1 + 1);
  *(a1 + 1) = a2[1];
  a2[1] = v7;
  *(a1 + 3) = v6;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEventContainer::operator=(uint64_t a1, void *a2)
{
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::TraceEventContainer(v8, a2);
  v3 = *v8;
  *v8 = *a1;
  v4 = *(a1 + 8);
  *(a1 + 16) = *&v8[16];
  *a1 = v3;
  *&v8[8] = v4;
  v5 = v4;
  if (v4)
  {
    do
    {
      v6 = v5[3];
      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::TraceEventContainer::Append(void *result, pxrInternal__aapl__pxrReserved__::TraceEventContainer *this)
{
  v3 = result;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v5)
  {
    v5 = *v5;
  }

  v6 = (v4 + 32);
  if (!v4)
  {
    v6 = 0;
  }

  if (v6 != v5)
  {
    v8 = result[1];
    v7 = result[2];
    if (v7)
    {
      v9 = *v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = (v8 + 32);
    }

    else
    {
      v10 = 0;
    }

    if (v10 == v9)
    {

      return pxrInternal__aapl__pxrReserved__::TraceEventContainer::operator=(v3, this);
    }

    else
    {
      if (v7 + 4 == *v7)
      {
        v11 = v7 + 2;
        v12 = v7[2];
        v3[2] = v12;
        v13 = v7[3];
        if (v12)
        {
          *(v12 + 24) = v13;
        }

        if (v13)
        {
          *(v13 + 16) = *v11;
        }

        *v11 = 0;
        v7[3] = 0;
        do
        {
          v14 = v7[3];
          free(v7);
          v7 = v14;
        }

        while (v14);
        v7 = v3[2];
        v4 = *(this + 1);
      }

      v7[3] = v4;
      *(v4 + 16) = v7;
      v3[2] = *(this + 2);
      *v3 = *this;
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;

      return pxrInternal__aapl__pxrReserved__::TraceEventContainer::Allocate(this);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEventContainer::_Node::Join(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  *(a2 + 16) = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::TraceEventContainer::_Node::New(pxrInternal__aapl__pxrReserved__::TraceEventContainer::_Node *this)
{
  result = malloc(32 * this + 32);
  *result = result + 4;
  result[1] = &result[4 * this + 4];
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::TraceEventContainer::_Node::_Node(void *this, pxrInternal__aapl__pxrReserved__::TraceEvent *a2, uint64_t a3)
{
  *this = a2;
  this[1] = a2 + 32 * a3;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = a2;
  this[1] = a2 + 32 * a3;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = *(this + 6);
  if (v1 == -1)
  {
    sub_29A151D68();
  }

  v4 = &v3;
  return (off_2A2041288[v1])(&v4, this);
}

pxrInternal__aapl__pxrReserved__::TraceEventData *pxrInternal__aapl__pxrReserved__::TraceEventData::GetInt(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(this) != 2)
  {
    return 0;
  }

  if (*(v1 + 6) != 3)
  {
    sub_29A151D68();
  }

  return v1;
}

pxrInternal__aapl__pxrReserved__::TraceEventData *pxrInternal__aapl__pxrReserved__::TraceEventData::GetUInt(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(this) != 3)
  {
    return 0;
  }

  if (*(v1 + 6) != 4)
  {
    sub_29A151D68();
  }

  return v1;
}

pxrInternal__aapl__pxrReserved__::TraceEventData *pxrInternal__aapl__pxrReserved__::TraceEventData::GetFloat(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(this) != 4)
  {
    return 0;
  }

  if (*(v1 + 6) != 5)
  {
    sub_29A151D68();
  }

  return v1;
}

pxrInternal__aapl__pxrReserved__::TraceEventData *pxrInternal__aapl__pxrReserved__::TraceEventData::GetBool(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(this) != 1)
  {
    return 0;
  }

  if (*(v1 + 6) != 2)
  {
    sub_29A151D68();
  }

  return v1;
}

pxrInternal__aapl__pxrReserved__::TraceEventData *pxrInternal__aapl__pxrReserved__::TraceEventData::GetString(pxrInternal__aapl__pxrReserved__::TraceEventData *this)
{
  v1 = this;
  if (pxrInternal__aapl__pxrReserved__::TraceEventData::GetType(this))
  {
    return 0;
  }

  if (*(v1 + 6) != 1)
  {
    sub_29A151D68();
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEventData::WriteJson(pxrInternal__aapl__pxrReserved__::TraceEventData *this, pxrInternal__aapl__pxrReserved__::JsWriter *a2)
{
  v4 = a2;
  v2 = *(this + 6);
  if (v2 == -1)
  {
    sub_29A151D68();
  }

  v5 = &v4;
  return (off_2A20412B8[v2])(&v5, this);
}

pxrInternal__aapl__pxrReserved__::TraceEventList *pxrInternal__aapl__pxrReserved__::TraceEventList::TraceEventList(pxrInternal__aapl__pxrReserved__::TraceEventList *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::TraceEventContainer::TraceEventContainer(this);
  v3 = v2 + 32;
  *(v2 + 4) = v2 + 32;
  *(v2 + 5) = v2 + 32;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 14) = 0;
  *(v2 + 15) = 1024;
  v4 = operator new(0x38uLL);
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 12) = 1065353216;
  *v4 = v3;
  *(v4 + 1) = v3;
  *(this + 4) = v4;
  *(this + 5) = v4;
  *(this + 6) = 1;
  return this;
}

void sub_29A168028(_Unwind_Exception *a1)
{
  sub_29A15F834(v1 + 9);
  sub_29A15F978(v2);
  pxrInternal__aapl__pxrReserved__::TraceEventContainer::~TraceEventContainer(v1);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::TraceEventList::Append(void *result, pxrInternal__aapl__pxrReserved__::TraceEventContainer *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v4 = *(this + 4);
    v3 = *(this + 5);
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[4];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[4] = v4;
    *(v4 + 8) = result + 4;
    result[6] += v2;
    *(this + 6) = 0;
  }

  return pxrInternal__aapl__pxrReserved__::TraceEventContainer::Append(result, this);
}

void pxrInternal__aapl__pxrReserved__::TraceEventNode::Append(pxrInternal__aapl__pxrReserved__::TraceEventNode *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X8>)
{
  v9 = 0uLL;
  v10 = 0;
  sub_29A155480(a2, a3, a4, a5, &v9, a6, a7);
  v11 = &v9;
  sub_29A155930(&v11);
  sub_29A1548B0(this + 6, a7);
}

void *pxrInternal__aapl__pxrReserved__::TraceEventNode::SetBeginAndEndTimesFromChildren(void *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  if (v2 == v3)
  {
    this[4] = 0;
    this[5] = 0;
  }

  else
  {
    *(this + 2) = xmmword_29B47F190;
    do
    {
      v4 = *(sub_29A152AD8(v2) + 32);
      if (v4 >= v1[4])
      {
        v4 = v1[4];
      }

      v1[4] = v4;
      this = sub_29A152AD8(v2);
      v5 = this[5];
      if (v1[5] > v5)
      {
        v5 = v1[5];
      }

      v1[5] = v5;
      ++v2;
    }

    while (v2 != v3);
  }

  return this;
}

uint64_t *sub_29A1681D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_29A16824C(a1, a2, a3, &v7);
  v4 = sub_29A1682D8(a1, &v6, v7 + 4);
  sub_29A00B204(a1, v6, v4, v7);
  return v7;
}

void sub_29A168228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11)
{
  if (a10)
  {
    sub_29A1684E8(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29A16824C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v8 = operator new(0x48uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  result = sub_29A168354(v8 + 4, a2, a3);
  *(a4 + 16) = 1;
  return result;
}

void sub_29A1682BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A1684E8(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29A1682D8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_29A153D90(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t *sub_29A168354(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a1 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  sub_29A1683CC((a1 + 1), a3);
  return a1;
}

uint64_t sub_29A1683CC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_29A168414(a1, a2);
  return a1;
}

uint64_t sub_29A168414(uint64_t a1, uint64_t a2)
{
  result = sub_29A155A70(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_2A20412E8[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

void *sub_29A16847C(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_29A008D14(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

double sub_29A1684D8(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void sub_29A1684E8(uint64_t a1, void *a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_29A155A70((a2 + 5));
    v3 = a2[4];
    if ((v3 & 7) != 0)
    {
      atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void pxrInternal__aapl__pxrReserved__::TraceEventTree::New(pxrInternal__aapl__pxrReserved__::TraceCollection **a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::Trace_EventTreeBuilder(v4);
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::TraceCounterAccumulator::SetCurrentValues(&v5, a2);
  }

  pxrInternal__aapl__pxrReserved__::Trace_EventTreeBuilder::CreateTree(v4, a1);
}

void *pxrInternal__aapl__pxrReserved__::TraceEventTree::GetFinalCounterValues@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = this[6]; i; i = *i)
  {
    v4 = i[4];
    if (i[3] != v4)
    {
      v5 = *(v4 - 8);
      v6 = i + 2;
      this = sub_29A160544(a2, i + 2, &unk_29B4D6118, &v6);
      this[3] = v5;
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::TraceEventTree::Merge(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29A152A58(a2);
  v5 = sub_29A152AD8((v4 + 24));
  v6 = *(v5 + 48);
  if (v6 != *(v5 + 56))
  {
    v18 = *v6;
    pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::TraceEventNode>::_AddRef();
  }

  for (i = *(sub_29A152A58(a2) + 48); i; i = *i)
  {
    v8 = sub_29A160470((a1 + 32), i + 2);
    if (v8)
    {
      v9 = v8[4];
      v10 = v8 + 3;
      v11 = &v9[-v8[3]];
      sub_29A169B98(v8 + 3, v9, i[3], i[4], (i[4] - i[3]) >> 4);
      sub_29A169E28(*v10, &v11[*v10], v10[1], &v18, v12);
    }

    else
    {
      sub_29A159EB0(a1 + 32, i + 2, i + 2);
    }
  }

  for (j = *(sub_29A152A58(a2) + 88); j; j = *j)
  {
    v14 = sub_29A160470((a1 + 72), j + 2);
    if (v14)
    {
      v15 = v14[4];
      v16 = (v14 + 3);
      v17 = v15 - v14[3];
      sub_29A16A500(v14 + 3, v15, j[3], j[4], (j[4] - j[3]) >> 5);
      sub_29A16A954(*v16, (*v16 + v17), v16[1], &v18);
    }

    else
    {
      sub_29A15A334(a1 + 72, j + 2, j + 2);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::TraceEventTree::WriteChromeTraceObject(uint64_t a1, pxrInternal__aapl__pxrReserved__::JsWriter *this, uint64_t a3)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "traceEvents");
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginArray(this);
  v6 = sub_29A152AD8((a1 + 24));
  v7 = *(v6 + 6);
  for (i = *(v6 + 7); v7 != i; ++v7)
  {
    v9 = sub_29A152AD8(v7);
    v10 = *(v9 + 2);
    if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v10 &= 0xFFFFFFFFFFFFFFF8;
    }

    v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = (v11 + 4);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
    }

    pxrInternal__aapl__pxrReserved__::TraceThreadId::TraceThreadId(__p, EmptyString);
    if ((v10 & 7) != 0)
    {
      atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_release);
    }

    v6 = sub_29A152AD8(v7);
    v13 = *(v6 + 6);
    v14 = *(v6 + 7);
    while (v13 != v14)
    {
      sub_29A168ED0(v13++, 0, __p, this);
    }

    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v26 = a1;
  v27 = a3;
  for (j = *(a1 + 48); j; j = *j)
  {
    v17 = j[3];
    for (k = j[4]; v17 != k; v17 += 16)
    {
      if ((j[2] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v18 = ((j[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v18 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      v19 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(*v17) / 1000.0;
      pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "cat");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, "");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "tid");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "pid");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "name");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v18);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "ph");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, "C");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "ts");
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(this, v19);
      pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(this, "args");
      sub_29A1698C0(this, "value", (v17 + 8));
      v6 = pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
    }
  }

  v30 = 0;
  for (m = *(v26 + 88); m; m = *m)
  {
    v21 = m[3];
    for (n = m[4]; v21 != n; v21 += 32)
    {
      if ((m[2] & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v23 = ((m[2] & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v23 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
      }

      *__p = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(*v21) / 1000.0;
      pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(this);
      sub_29A169920(this, "cat", "", "tid", (v21 + 8), "pid", &v30, "name", v23, "ph", "I", "s", "t", "ts", __p);
      v6 = pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
    }
  }

  pxrInternal__aapl__pxrReserved__::JsWriter::EndArray(this);
  v24 = *(v27 + 24);
  if (v24)
  {
    (*(*v24 + 48))(v24, this);
  }

  return pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(this);
}

void sub_29A168E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A168ED0(uint64_t *a1, unsigned int a2, void **a3, void **a4)
{
  v51 = a2;
  v7 = sub_29A008E78(&v50, "");
  Instance = pxrInternal__aapl__pxrReserved__::TraceCategory::GetInstance(v7);
  v9 = sub_29A152AD8(a1);
  pxrInternal__aapl__pxrReserved__::TraceCategory::GetCategories(Instance, *(v9 + 24), &v48);
  v10 = v48;
  for (i = v49; v10 != i; v10 += 24)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v50, ",");
    }

    v13 = *(v10 + 23);
    if (v13 >= 0)
    {
      v14 = v10;
    }

    else
    {
      v14 = *v10;
    }

    if (v13 >= 0)
    {
      v15 = *(v10 + 23);
    }

    else
    {
      v15 = *(v10 + 8);
    }

    std::string::append(&v50, v14, v15);
  }

  v47[0] = a4;
  v47[1] = &v50;
  v47[2] = a1;
  v47[3] = &v51;
  v47[4] = a3;
  sub_29A1693B8(v47);
  v16 = sub_29A152AD8(a1);
  v17 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(*(v16 + 32));
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "ts");
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a4, v17 / 1000.0);
  if (*(sub_29A152AD8(a1) + 96))
  {
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "args");
    pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(a4);
    memset(v45, 0, sizeof(v45));
    v46 = 1065353216;
    v18 = sub_29A152AD8(a1);
    v19 = *(v18 + 80);
    v20 = (v18 + 88);
    if (v19 != (v18 + 88))
    {
      do
      {
        if (!sub_29A160470(v45, v19 + 4))
        {
          sub_29A169500(v45, v19 + 4, v19 + 4);
          v21 = sub_29A152AD8(a1);
          v22 = sub_29A1697C4(v21 + 80, v19 + 4);
          v24 = v22;
          v25 = v23;
          if (v22 == v23)
          {
            goto LABEL_25;
          }

          v26 = 0;
          v27 = v22;
          do
          {
            v28 = v26;
            v29 = v27[1];
            if (v29)
            {
              do
              {
                v30 = v29;
                v29 = *v29;
              }

              while (v29);
            }

            else
            {
              do
              {
                v30 = v27[2];
                v31 = *v30 == v27;
                v27 = v30;
              }

              while (!v31);
            }

            v26 = v28 + 1;
            v27 = v30;
          }

          while (v30 != v23);
          if (v28)
          {
LABEL_25:
            if ((v19[4] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              EmptyString = ((v19[4] & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
            }

            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, EmptyString);
            pxrInternal__aapl__pxrReserved__::JsWriter::BeginArray(a4);
            if (v24 != v25)
            {
              do
              {
                pxrInternal__aapl__pxrReserved__::TraceEventData::WriteJson((v24 + 5), a4);
                v33 = v24[1];
                if (v33)
                {
                  do
                  {
                    v34 = v33;
                    v33 = *v33;
                  }

                  while (v33);
                }

                else
                {
                  do
                  {
                    v34 = v24[2];
                    v31 = *v34 == v24;
                    v24 = v34;
                  }

                  while (!v31);
                }

                v24 = v34;
              }

              while (v34 != v25);
            }

            pxrInternal__aapl__pxrReserved__::JsWriter::EndArray(a4);
          }

          else
          {
            if ((v22[4] & 0xFFFFFFFFFFFFFFF8) != 0)
            {
              v37 = ((v22[4] & 0xFFFFFFFFFFFFFFF8) + 16);
            }

            else
            {
              v37 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v22);
            }

            pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, v37);
            pxrInternal__aapl__pxrReserved__::TraceEventData::WriteJson((v24 + 5), a4);
          }
        }

        v35 = v19[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v19[2];
            v31 = *v36 == v19;
            v19 = v36;
          }

          while (!v31);
        }

        v19 = v36;
      }

      while (v36 != v20);
    }

    pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a4);
    sub_29A155EF4(v45);
  }

  if (*(sub_29A152AD8(a1) + 72))
  {
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "ph");
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a4, "B");
    pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a4);
    sub_29A1693B8(v47);
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "ph");
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a4, "E");
    v38 = sub_29A152AD8(a1);
    v39 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds(*(v38 + 40));
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "ts");
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "ph");
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a4, "X");
    v40 = *(sub_29A152AD8(a1) + 40);
    v41 = sub_29A152AD8(a1);
    v39 = pxrInternal__aapl__pxrReserved__::ArchTicksToNanoseconds((v40 - *(v41 + 32)));
    pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a4, "dur");
  }

  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a4, v39 / 1000.0);
  pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a4);
  v42 = sub_29A152AD8(a1);
  v43 = *(v42 + 48);
  v44 = *(v42 + 56);
  while (v43 != v44)
  {
    sub_29A168ED0(v43, v51, a3, a4);
    v43 += 8;
  }

  v47[0] = &v48;
  sub_29A012C90(v47);
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }
}

void sub_29A169344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_29A155EF4(&a9);
  a15 = &a20;
  sub_29A012C90(&a15);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29A1693B8(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(*a1);
  v2 = *a1;
  v3 = *(a1 + 8);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(*a1, "cat");
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(v2, v3);
  v4 = *a1;
  sub_29A152AD8(*(a1 + 16));
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(v4, "libTraceCatId");
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(v4);
  v5 = *a1;
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(*a1, "pid");
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(v5);
  v6 = *a1;
  v7 = *(a1 + 32);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(*a1, "tid");
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(v6, v7);
  v8 = *a1;
  v9 = sub_29A152AD8(*(a1 + 16));
  v10 = *(v9 + 2);
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v10 &= 0xFFFFFFFFFFFFFFF8;
  }

  v11 = (v10 & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = (v11 + 4);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v9);
  }

  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(v8, "name");
  result = pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(v8, EmptyString);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void *sub_29A169500(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = bswap64(0x9E3779B97F4A7C55 * (*a2 & 0xFFFFFFFFFFFFFFF8));
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v3 = v5;
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }
    }

    else
    {
      v3 = v5 & (v6 - 1);
    }

    v8 = *(*a1 + 8 * v3);
    if (v8)
    {
      result = *v8;
      if (*v8)
      {
        do
        {
          v10 = result[1];
          if (v10 == v5)
          {
            if ((result[2] ^ *a2) < 8)
            {
              return result;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v10 >= v6)
              {
                v10 %= v6;
              }
            }

            else
            {
              v10 &= v6 - 1;
            }

            if (v10 != v3)
            {
              break;
            }
          }

          result = *result;
        }

        while (result);
      }
    }
  }

  sub_29A169748(a1, v5, a3, &v21);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  if (!v6 || (v12 * v6) < v11)
  {
    v13 = 1;
    if (v6 >= 3)
    {
      v13 = (v6 & (v6 - 1)) != 0;
    }

    v14 = v13 | (2 * v6);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    sub_29A019AA0(a1, v16);
    v6 = *(a1 + 8);
    if ((v6 & (v6 - 1)) != 0)
    {
      if (v5 >= v6)
      {
        v3 = v5 % v6;
      }

      else
      {
        v3 = v5;
      }
    }

    else
    {
      v3 = (v6 - 1) & v5;
    }
  }

  v17 = *a1;
  v18 = *(*a1 + 8 * v3);
  if (v18)
  {
    result = v21;
    *v21 = *v18;
    *v18 = result;
  }

  else
  {
    v19 = v21;
    *v21 = *(a1 + 16);
    *(a1 + 16) = v19;
    *(v17 + 8 * v3) = a1 + 16;
    result = v21;
    if (*v21)
    {
      v20 = *(*v21 + 8);
      if ((v6 & (v6 - 1)) != 0)
      {
        if (v20 >= v6)
        {
          v20 %= v6;
        }
      }

      else
      {
        v20 &= v6 - 1;
      }

      *(*a1 + 8 * v20) = v21;
      result = v21;
    }
  }

  ++*(a1 + 24);
  return result;
}

void sub_29A169728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  v11 = __p;
  __p = 0;
  if (v11)
  {
    sub_29B28FB14(&__p, v11);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29A169748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = operator new(0x18uLL);
  *a4 = result;
  a4[1] = a1;
  a4[2] = 0;
  *result = 0;
  result[1] = a2;
  v9 = *a3;
  result[2] = *a3;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[2] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a4 + 16) = 1;
  return result;
}

void *sub_29A1697C4(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  while ((sub_29A153D90(a1, a2, v3 + 4) & 1) != 0)
  {
    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (sub_29A153D90(a1, v3 + 4, a2))
  {
    ++v3;
    goto LABEL_6;
  }

  v8 = *v3;
  v6 = v3;
  if (*v3)
  {
    v6 = v3;
    do
    {
      v9 = sub_29A153D90(a1, v8 + 4, a2);
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if (!v9)
      {
        v6 = v8;
      }

      v8 = v8[v10];
    }

    while (v8);
  }

  for (i = v3[1]; i; i = *(i + v13))
  {
    if (sub_29A153D90(a1, a2, (i + 32)))
    {
      v13 = 0;
    }

    else
    {
      v13 = 8;
    }
  }

  return v6;
}

uint64_t sub_29A1698C0(pxrInternal__aapl__pxrReserved__::JsWriter *a1, const char *a2, double *a3)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::BeginObject(a1);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, *a3);

  return pxrInternal__aapl__pxrReserved__::JsWriter::EndObject(a1);
}

uint64_t sub_29A169920(uint64_t **a1, const char *a2, const char *a3, const char *a4, uint64_t *a5, const char *a6, uint64_t a7, const char *a8, uint64_t *a9, const char *a10, const char *a11, const char *a12, const char *a13, const char *a14, double *a15)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a3);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a4);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a5);

  return sub_29A1699EC(a1, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_29A1699EC(uint64_t **a1, const char *a2, uint64_t a3, const char *a4, uint64_t *a5, const char *a6, const char *a7, const char *a8, const char *a9, const char *a10, double *a11)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1);

  return sub_29A169A90(a1, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_29A169A90(uint64_t **a1, const char *a2, uint64_t *a3, const char *a4, const char *a5, const char *a6, const char *a7, const char *a8, double *a9)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a3);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a4);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a5);

  return sub_29A169B30(a1, a6, a7, a8, a9);
}

uint64_t sub_29A169B30(uint64_t **a1, const char *a2, const char *a3, const char *a4, double *a5)
{
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a2);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, a3);
  pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(a1, a4);
  v9 = *a5;

  return pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(a1, v9);
}

char *sub_29A169B98(void *a1, char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return a2;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 4)
  {
    v18 = (v9 - a2) >> 4;
    if (v18 >= a5)
    {
      v22 = &a2[16 * a5];
      v23 = &v9[-16 * a5];
      if (v23 >= v9)
      {
        v25 = a1[1];
      }

      else
      {
        v24 = &v9[-16 * a5];
        v25 = a1[1];
        do
        {
          v26 = *v24;
          v24 += 16;
          *v25++ = v26;
        }

        while (v24 < v9);
      }

      a1[1] = v25;
      if (v9 != v22)
      {
        v47 = 0;
        v48 = v22 - v9;
        do
        {
          v49 = &v9[v47];
          *(v49 - 2) = *&v23[v47 - 16];
          *(v49 - 1) = *&v23[v47 - 8];
          v47 -= 16;
        }

        while (v48 != v47);
      }

      v50 = a2;
      do
      {
        *v50 = *v7;
        *(v50 + 1) = *(v7++ + 1);
        v50 += 16;
      }

      while (v7 != &a3[a5]);
    }

    else
    {
      v19 = (a3 + v9 - a2);
      v20 = a1[1];
      if (v19 == a4)
      {
        v21 = a1[1];
      }

      else
      {
        v37 = (a3 + v9 - a2);
        v21 = a1[1];
        do
        {
          v38 = *v37++;
          *v21 = v38;
          v21 += 16;
          v20 += 16;
        }

        while (v37 != a4);
      }

      a1[1] = v20;
      if (v18 >= 1)
      {
        v39 = &a2[16 * a5];
        v40 = &v20[-16 * a5];
        v41 = v20;
        while (v40 < v9)
        {
          v42 = *v40++;
          *v41 = v42;
          v41 += 16;
        }

        a1[1] = v41;
        if (v21 != v39)
        {
          v43 = 0;
          v44 = -16 * a5;
          do
          {
            v45 = &v20[v43];
            *(v45 - 2) = *&v20[v44 - 16];
            *(v45 - 1) = *&v20[v44 - 8];
            v43 -= 16;
            v44 -= 16;
            v39 += 16;
          }

          while (v20 != v39);
        }

        if (v9 != a2)
        {
          v46 = a2;
          do
          {
            *v46 = *v7;
            *(v46 + 1) = *(v7++ + 1);
            v46 += 16;
          }

          while (v7 != v19);
        }
      }
    }

    return a2;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 4);
  if (v12 >> 60)
  {
    sub_29A00C9A4();
  }

  v13 = a2 - v11;
  v14 = v10 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  v16 = v13 >> 4;
  if (v15)
  {
    v17 = sub_29A017BD4(a1, v15);
  }

  else
  {
    v17 = 0;
  }

  v27 = &v17[16 * v16];
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29 = v30;
    v29 += 16;
    v28 -= 16;
  }

  while (v28);
  v31 = &v17[16 * v15];
  memcpy(&v27[16 * a5], a2, a1[1] - a2);
  v32 = *a1;
  v33 = &v27[16 * a5 + a1[1] - a2];
  a1[1] = a2;
  v34 = a2 - v32;
  v35 = &v27[-(a2 - v32)];
  memcpy(v35, v32, v34);
  v36 = *a1;
  *a1 = v35;
  a1[1] = v33;
  a1[2] = v31;
  if (v36)
  {
    operator delete(v36);
  }

  return v27;
}

void sub_29A169E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v9 = (a2 - a1) >> 4;
  v10 = (a3 - a2) >> 4;
  if (v10 >= v9)
  {
    v11 = (a2 - a1) >> 4;
  }

  else
  {
    v11 = (a3 - a2) >> 4;
  }

  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    v12 = MEMORY[0x29EDC9418];
    while (1)
    {
      v13 = operator new(16 * v11, v12);
      if (v13)
      {
        break;
      }

      v14 = v11 >> 1;
      v15 = v11 > 1;
      v11 >>= 1;
      if (!v15)
      {
        v16 = 0;
        v11 = v14;
        goto LABEL_11;
      }
    }

    v16 = v13;
  }

LABEL_11:
  sub_29A169F44(a1, a2, a3, a4, v9, v10, v16, v11, a5);
  if (v16)
  {

    operator delete(v16);
  }
}

void sub_29A169F2C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_29A169F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double result)
{
  if (a6)
  {
    v9 = a8;
    v10 = a6;
    do
    {
      if (v10 <= v9 || a5 <= v9)
      {
        return sub_29A16A1E0(a1, a2, a3, result, a4, a5, v10, a7);
      }

      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = *a2;
      v16 = -a5;
      while (1)
      {
        v17 = *(a1 + v14);
        if (v15 < v17)
        {
          break;
        }

        if (v17 >= v15)
        {
          result = *(a2 + 8);
          if (result < *(a1 + v14 + 8))
          {
            break;
          }
        }

        v14 += 16;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v19 = -v16;
      v39 = a3;
      v37 = a1 + v14;
      if (-v16 >= v10)
      {
        if (v16 == -1)
        {
          v36 = (a1 + v14);
          *v36 = v15;
          *a2 = v17;
          result = *(a1 + v14 + 8);
          v36[1] = *(a2 + 8);
          *(a2 + 8) = result;
          return result;
        }

        v23 = v19 / 2;
        v24 = a1 + 16 * (v19 / 2);
        v21 = a2;
        if (a2 != a3)
        {
          v25 = (a3 - a2) >> 4;
          v26 = *(v24 + v14);
          v21 = a2;
          do
          {
            v27 = v25 >> 1;
            v28 = &v21[2 * (v25 >> 1)];
            if (*v28 < v26 || v26 >= *v28 && *(v28 + 1) < *(v24 + v14 + 8))
            {
              v21 = v28 + 2;
              v27 = v25 + ~v27;
            }

            v25 = v27;
          }

          while (v27);
        }

        v20 = (v21 - a2) >> 4;
        v22 = (v24 + v14);
      }

      else
      {
        v20 = v10 / 2;
        v21 = (a2 + 16 * (v10 / 2));
        v22 = sub_29A16A2B4(a1 + v14, a2, v21);
        v23 = (v22 - a1 - v14) >> 4;
      }

      v29 = v21;
      if (v22 != a2)
      {
        v29 = v22;
        if (a2 != v21)
        {
          v30 = v23;
          v31 = sub_29A16A43C(v22, a2, v21);
          v23 = v30;
          v29 = v31;
        }
      }

      a5 = -v16 - v23;
      v32 = v20;
      v33 = v10 - v20;
      if (v23 + v32 >= v10 - (v23 + v32) - v16)
      {
        v35 = v23;
        sub_29A169F44(v29, v21, v39, a4, -v16 - v23, v33, a7, a8);
        a1 = v37;
        v21 = v22;
        v9 = a8;
        v33 = v32;
        a5 = v35;
        a3 = v29;
      }

      else
      {
        v34 = v22;
        v9 = a8;
        sub_29A169F44(a1 + v14, v34, v29, a4, v23, v32, a7, a8);
        a1 = v29;
        a3 = v39;
      }

      v10 = v33;
      a2 = v21;
    }

    while (v33);
  }

  return result;
}