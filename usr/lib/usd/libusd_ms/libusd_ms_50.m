uint64_t sub_29A293AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A2D1734(a1, a2, a3);
  return a1;
}

double pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext::EvalContext(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext *this, const pxrInternal__aapl__pxrReserved__::VtDictionary *a2)
{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

{
  *this = a2;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

uint64_t sub_29A293B8C(uint64_t *a1, const void **a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::VtDictionary::find(a1, a2);
  v5 = v4;
  v6 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(a1);
  if (v5 != v7)
  {
    return v3 + 56;
  }

  v8 = v6;
  result = 0;
  if (v5)
  {
    if (v3 != v8)
    {
      return v3 + 56;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext::GetVariable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 80);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = (v7 + 8 * (v6 / 0xAA));
  if (v8 == v7)
  {
    v10 = 0;
    v13 = 0;
    v12 = (v7 + 8 * ((*(a1 + 88) + v6) / 0xAA));
  }

  else
  {
    v10 = *(v7 + 8 * (v6 / 0xAA)) + 24 * (v6 % 0xAA);
    v11 = *(a1 + 88) + v6;
    v12 = (v7 + 8 * (v11 / 0xAA));
    v13 = *v12 + 24 * (v11 % 0xAA);
  }

  sub_29A2D1980(v9, v10, v12, v13, a2);
  v15 = *(a1 + 56);
  if (*(a1 + 64) == v15)
  {
    if (v14)
    {
      v21 = 0uLL;
      memset(v54, 0, sizeof(v54));
LABEL_17:
      sub_29A11CF98(", ", v21, *(&v21 + 1), (&v58 + 8));
      if (v60 >= 0)
      {
        v30 = &v58 + 8;
      }

      else
      {
        v30 = *(&v58 + 1);
      }

      if (*(a2 + 23) >= 0)
      {
        v31 = a2;
      }

      else
      {
        v31 = *a2;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Encountered circular variable substitutions: [%s, '%s']", v28, v29, v30, v31, *v54, *&v54[16]);
      memset(&v57, 0, sizeof(v57));
      sub_29A280C48(&v57, &__p, v63, 1uLL);
      *&v63[8] = 0;
      *&v63[16] = v57;
      memset(&v57, 0, sizeof(v57));
      sub_29A186A3C(a3, v63);
      *(a3 + 16) = *&v63[16];
      *(a3 + 32) = *&v63[32];
      memset(&v63[16], 0, 24);
      *(a3 + 40) = 1;
      v56 = &v63[16];
      sub_29A012C90(&v56);
      sub_29A186B14(v63);
      v56 = &v57;
      sub_29A012C90(&v56);
      if (v62 < 0)
      {
        operator delete(__p.__vftable);
      }

      if (v60 < 0)
      {
        operator delete(*(&v58 + 1));
      }

      *v63 = v54;
      sub_29A012C90(v63);
      return;
    }
  }

  else
  {
    v16 = *(a1 + 80);
    v17 = v16 + *(a1 + 88);
    v18 = v17 / 0xAA;
    v19 = *(v15 + 8 * (v17 / 0xAA));
    v20 = v17 % 0xAA;
    if (v19 + 24 * v20 != v14)
    {
      v21 = 0uLL;
      memset(v54, 0, sizeof(v54));
      v22 = (v15 + 8 * (v16 / 0xAA));
      v23 = *v22 + 24 * (v16 % 0xAA);
      v24 = *(v15 + 8 * v18) + 24 * v20;
      if (v23 != v24)
      {
        do
        {
          std::operator+<char>();
          v25 = std::string::append(&v57, "'");
          v26 = *&v25->__r_.__value_.__l.__data_;
          *&v63[16] = *(&v25->__r_.__value_.__l + 2);
          *v63 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          sub_29A091654(v54, v63);
          if ((v63[23] & 0x80000000) != 0)
          {
            operator delete(*v63);
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }

          v23 += 24;
          if (v23 - *v22 == 4080)
          {
            v27 = v22[1];
            ++v22;
            v23 = v27;
          }
        }

        while (v23 != v24);
        v21 = *v54;
      }

      goto LABEL_17;
    }
  }

  sub_29A2D1AC8(a1 + 8, a2, a2);
  v32 = sub_29A293B8C(*a1, a2);
  v33 = v32;
  if (v32)
  {
    v34 = (&v58 + 8);
    pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::CoerceIfUnsupportedValueType(v32, &v58 + 1);
    v35 = v59;
    if (!v59)
    {
      v34 = v33;
    }

    if (sub_29A293714(v34))
    {
      if (!sub_29A1EFC10(v34))
      {
        goto LABEL_41;
      }

      v36 = (&v58 + 8);
      if (!v35)
      {
        v36 = v33;
      }

      v37 = *(v36 + 1);
      v38 = (v37 & 4) != 0 ? (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(v34) : *v34;
      if (pxrInternal__aapl__pxrReserved__::Sdf_IsVariableExpression(v38))
      {
        pxrInternal__aapl__pxrReserved__::Sdf_ParseVariableExpression(v38, v54);
        if (*v54)
        {
          sub_29A294480(a1 + 48, a2);
          *v63 = &unk_2A204A358;
          *&v63[8] = a1;
          *&v63[24] = v63;
          sub_29A117068(&v57, v63);
          sub_29A0FC854(v63);
          (*(**v54 + 16))(v63);
          sub_29A186A3C(a3, v63);
          *(a3 + 16) = *&v63[16];
          *(a3 + 32) = *&v63[32];
          memset(&v63[16], 0, 24);
          *(a3 + 40) = 1;
          __p.__vftable = &v63[16];
          sub_29A012C90(&__p);
          sub_29A186B14(v63);
          sub_29A1847D4(&v57);
        }

        else
        {
          v48 = *&v54[8];
          v49 = *&v54[16];
          if (*&v54[8] == *&v54[16])
          {
            memset(&v63[8], 0, 32);
          }

          else
          {
            do
            {
              if (*(a2 + 23) >= 0)
              {
                v50 = a2;
              }

              else
              {
                v50 = *a2;
              }

              pxrInternal__aapl__pxrReserved__::TfStringPrintf(" (in variable '%s')", v39, v40, v50);
              if (v63[23] >= 0)
              {
                v51 = v63;
              }

              else
              {
                v51 = *v63;
              }

              if (v63[23] >= 0)
              {
                v52 = v63[23];
              }

              else
              {
                v52 = *&v63[8];
              }

              std::string::append(v48, v51, v52);
              if ((v63[23] & 0x80000000) != 0)
              {
                operator delete(*v63);
              }

              ++v48;
            }

            while (v48 != v49);
            *&v63[8] = 0;
            *&v63[16] = *&v54[8];
            *&v63[32] = v55;
            *&v54[16] = 0;
            v55 = 0;
            *&v54[8] = 0;
          }

          sub_29A186A3C(a3, v63);
          *(a3 + 16) = *&v63[16];
          *(a3 + 32) = *&v63[32];
          memset(&v63[16], 0, 24);
          *(a3 + 40) = 1;
          sub_29A2884E8(v63);
        }

        *v63 = &v54[8];
        sub_29A012C90(v63);
        v53 = *v54;
        *v54 = 0;
        if (v53)
        {
          (*(*v53 + 8))(v53);
        }
      }

      else
      {
LABEL_41:
        sub_29A186EF4(v63, v34);
        memset(&v63[16], 0, 24);
        sub_29A186A3C(a3, v63);
        *(a3 + 16) = *&v63[16];
        *(a3 + 32) = *&v63[32];
        memset(&v63[16], 0, 24);
        *(a3 + 40) = 1;
        *v54 = &v63[16];
        sub_29A012C90(v54);
        sub_29A186B14(v63);
      }
    }

    else
    {
      v42 = *(a2 + 23);
      v43 = *a2;
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v34, &__p);
      if (v42 >= 0)
      {
        v46 = a2;
      }

      else
      {
        v46 = v43;
      }

      if (v62 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Variable '%s' has unsupported type %s", v44, v45, v46, p_p);
      memset(v54, 0, sizeof(v54));
      sub_29A280C48(v54, &v57, &v58, 1uLL);
      *&v63[8] = 0;
      *&v63[16] = *v54;
      *&v63[32] = *&v54[16];
      memset(v54, 0, sizeof(v54));
      sub_29A186A3C(a3, v63);
      *(a3 + 16) = *&v63[16];
      *(a3 + 32) = *&v63[32];
      memset(&v63[16], 0, 24);
      *(a3 + 40) = 1;
      v56 = &v63[16];
      sub_29A012C90(&v56);
      sub_29A186B14(v63);
      v56 = v54;
      sub_29A012C90(&v56);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (v62 < 0)
      {
        operator delete(__p.__vftable);
      }
    }

    v41 = &v58 + 8;
  }

  else
  {
    memset(&v63[8], 0, 32);
    sub_29A186A3C(a3, v63);
    *(a3 + 16) = *&v63[16];
    *(a3 + 32) = *&v63[32];
    memset(&v63[16], 0, 24);
    *(a3 + 40) = 0;
    *v54 = &v63[16];
    sub_29A012C90(v54);
    v41 = v63;
  }

  sub_29A186B14(v41);
}

void sub_29A294360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_29A1847D4(&__p);
  sub_29A29454C(&a11);
  sub_29A186B14(&a24);
  _Unwind_Resume(a1);
}

void *sub_29A294480(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == *(a1 + 40) + *(a1 + 32))
  {
    sub_29A2D1D28(a1);
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
  }

  if (v5 == v4)
  {
    result = 0;
  }

  else
  {
    v7 = *(a1 + 40) + *(a1 + 32);
    result = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    result[2] = *(a2 + 2);
    *result = v9;
  }

  ++*(a1 + 40);
  return result;
}

uint64_t *sub_29A29454C(uint64_t *a1)
{
  v4 = (a1 + 1);
  sub_29A012C90(&v4);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::StringNode::StringNode(void *a1, uint64_t a2)
{
  *a1 = &unk_2A2049E98;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *(a1 + 1) = *a2;
  a1[3] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = a1[1];
  v4 = a1[2];
  while (v3 != v4)
  {
    if ((*(v3 + 24) & 1) == 0)
    {
      pxrInternal__aapl__pxrReserved__::TfEscapeString(v3, &v7);
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      v5 = v7;
      *(v3 + 16) = v8;
      *v3 = v5;
    }

    v3 += 32;
  }

  return a1;
}

void sub_29A294684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A10C99C(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::StringNode::Evaluate(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::StringNode *this@<X0>, pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v23, 0, sizeof(v23));
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
LABEL_28:
    *(a3 + 8) = &off_2A2044DD0;
    sub_29A1B01B8(a3, &v23);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    if (*(v4 + 24) != 1)
    {
      v11 = *(v4 + 23);
      if (v11 >= 0)
      {
        v12 = v4;
      }

      else
      {
        v12 = *v4;
      }

      if (v11 >= 0)
      {
        v13 = *(v4 + 23);
      }

      else
      {
        v13 = *(v4 + 8);
      }

      std::string::append(&v23, v12, v13);
      goto LABEL_23;
    }

    v31 = 0u;
    v30 = 0u;
    v22 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext::GetVariable(a2, v4, &v27);
    __p[0] = &v29;
    __p[1] = &v22;
    sub_29A2949BC(__p, &v27);
    __p[0] = &v28;
    sub_29A012C90(__p);
    sub_29A186B14(&v27);
    v7 = v4;
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v30)
    {
      v15 = *(&v30 + 1);
      v14 = v31;
      if (*(&v30 + 1) != v31)
      {
        *(a3 + 8) = 0;
        *(a3 + 16) = v15;
        v19 = *(&v31 + 1);
        *(a3 + 24) = v14;
        *(a3 + 32) = v19;
        v31 = 0uLL;
        *(&v30 + 1) = 0;
        goto LABEL_41;
      }

      goto LABEL_15;
    }

    if (!sub_29A1EFC10(&v29))
    {
      break;
    }

    if ((v30 & 4) != 0)
    {
      v7 = (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(&v29);
    }

    else
    {
      v7 = v29;
    }

LABEL_8:
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = *v7;
    }

    if (v8 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    std::string::append(&v23, v9, v10);
LABEL_15:
    *&v27 = &v30 + 8;
    sub_29A012C90(&v27);
    sub_29A186B14(&v29);
LABEL_23:
    v4 += 32;
    if (v4 == v5)
    {
      goto LABEL_28;
    }
  }

  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v29, &v20);
  if (v21 >= 0)
  {
    v18 = &v20;
  }

  else
  {
    v18 = v20.__vftable;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("String value required for substituting variable '%s', got %s.", v16, v17, v4, v18);
  v27 = 0uLL;
  v28 = 0;
  sub_29A280C48(&v27, __p, &v27, 1uLL);
  *(a3 + 8) = 0;
  *(a3 + 16) = v27;
  *(a3 + 32) = v28;
  v27 = 0uLL;
  v28 = 0;
  v24 = &v27;
  sub_29A012C90(&v24);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20.__vftable);
  }

LABEL_41:
  *&v27 = &v30 + 8;
  sub_29A012C90(&v27);
  sub_29A186B14(&v29);
LABEL_29:
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_29A294954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_29A2884E8(v31 - 128);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_29A2949BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_29A18606C(*a1, a2);
  sub_29A095FDC((v4 + 2));
  *(v4 + 1) = *(a2 + 16);
  v4[4] = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *a1[1] = *(a2 + 40);
  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::VariableNode::VariableNode(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2A2049EC0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A2049EC0;
  result = *a2;
  *(a1 + 24) = a2[1].n128_u64[0];
  *(a1 + 8) = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::VariableNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::VariableNode *this@<X0>, pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext *a2@<X1>, void *a3@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  v5 = (this + 8);
  pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::EvalContext::GetVariable(a2, this + 8, &v14);
  if (v16)
  {
    sub_29A186EF4(a3, &v14);
    a3[2] = 0;
    a3[3] = 0;
    a3[4] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  if (*(this + 31) < 0)
  {
    v5 = *v5;
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("No value for variable '%s'", v6, v7, v5);
  v9 = 0uLL;
  v10 = 0;
  sub_29A280C48(&v9, &__p, &v14, 1uLL);
  a3[1] = 0;
  *(a3 + 1) = v9;
  a3[4] = v10;
  v9 = 0uLL;
  v10 = 0;
  v11 = &v9;
  sub_29A012C90(&v11);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  *&v9 = &v15;
  sub_29A012C90(&v9);
  return sub_29A186B14(&v14);
}

void sub_29A294BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29A2884E8(&a21);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::NoneNode::NoneNode(void *this)
{
  *this = &unk_2A2049EE8;
  return this;
}

{
  *this = &unk_2A2049EE8;
  return this;
}

double pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::NoneNode::Evaluate@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ListNode::ListNode(void *a1, __n128 *a2)
{
  *a1 = &unk_2A2049F10;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A2049F10;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ListNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ListNode *this@<X0>, void *a2@<X8>)
{
  v27 = *MEMORY[0x29EDCA608];
  v26 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v4 = *(this + 1);
  if (*(this + 2) == v4)
  {
    goto LABEL_16;
  }

  v6 = 0;
  do
  {
    (*(**(v4 + 8 * v6) + 16))(v22);
    if (v23 == v24)
    {
      if ((sub_29A294F54(v22, &v25) & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(v22, &v15);
        if (v16 >= 0)
        {
          v9 = &v15;
        }

        else
        {
          v9 = v15.__vftable;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unexpected value of type %s in list at element %zu", v7, v8, v9, v6);
        sub_29A091654(&v19, __p);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 < 0)
        {
          operator delete(v15.__vftable);
        }
      }
    }

    else
    {
      sub_29A2C9540(&v19, v20, v23, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
    }

    __p[0] = &v23;
    sub_29A012C90(__p);
    sub_29A186B14(v22);
    ++v6;
    v4 = *(this + 1);
  }

  while (v6 < (*(this + 2) - v4) >> 3);
  v11 = v19;
  v10 = v20;
  if (v19 == v20)
  {
LABEL_16:
    if (v26)
    {
      sub_29A186A3C(a2, &v25);
    }

    else
    {
      a2[1] = &off_2A204A3C8 + 3;
    }

    v13 = (a2 + 2);
  }

  else
  {
    a2[1] = 0;
    a2[2] = v11;
    v12 = v21;
    a2[3] = v10;
    a2[4] = v12;
    v13 = &v19;
  }

  *v13 = 0;
  v13[1] = 0;
  v13[2] = 0;
  v22[0] = &v19;
  sub_29A012C90(v22);
  return sub_29A186B14(&v25);
}

void sub_29A294EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, char *a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_29A2884E8(&a27);
  a27 = &a24;
  sub_29A012C90(&a27);
  sub_29A186B14(v27 - 88);
  _Unwind_Resume(a1);
}

uint64_t sub_29A294F54(uint64_t a1, pxrInternal__aapl__pxrReserved__::VtValue *a2)
{
  v3 = a1;
  v10[2] = *MEMORY[0x29EDCA608];
  switch(sub_29A29C774(a1))
  {
    case 0u:
      v6 = v3[1];
      if ((v6 & 4) != 0)
      {
        v3 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      v7 = *v3;

      return sub_29A2CAF40(a2, v7);
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
      v4 = v3[1];
      if ((v4 & 4) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      return 0;
    case 7u:
      v8 = v3[1];
      if ((v8 & 4) != 0)
      {
        v3 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(v3);
      }

      v9 = *v3;

      return sub_29A2CB2E8(a2, v9);
    case 0xCu:

      return sub_29A2C9840(v3, a2);
    case 0xDu:

      return sub_29A2C98EC(v3);
    case 0xEu:

      sub_29A2C9950(v3);
    case 0xFu:

      sub_29A2C99C4(v3);
    case 0x10u:

      sub_29A2C9A38(v3);
    case 0x11u:

      sub_29A2C9AAC(v3);
    case 0x12u:

      sub_29A2C9B20(v3);
    case 0x13u:

      sub_29A2C9B94(v3);
    case 0x14u:

      sub_29A2C9C08(v3);
    case 0x15u:

      sub_29A2C9C7C(v3);
    case 0x16u:

      sub_29A2C9CF0(v3);
    case 0x17u:

      sub_29A2C9D64(v3);
    case 0x18u:

      sub_29A2C9DD8(v3);
    case 0x19u:

      sub_29A2C9E4C(v3);
    case 0x1Au:

      sub_29A2C9EC0(v3);
    case 0x1Bu:

      sub_29A2C9F34(v3);
    case 0x1Cu:

      sub_29A2C9FA8(v3);
    case 0x1Du:

      sub_29A2CA01C(v3);
    case 0x1Eu:

      sub_29A2CA090(v3);
    case 0x1Fu:

      sub_29A2CA104(v3);
    case 0x20u:

      sub_29A2CA178(v3);
    case 0x21u:

      sub_29A2CA1EC(v3);
    case 0x22u:

      sub_29A2CA260(v3);
    case 0x23u:

      sub_29A2CA2D4(v3);
    case 0x24u:

      sub_29A2CA348(v3);
    case 0x25u:

      sub_29A2CA3BC(v3);
    case 0x26u:

      sub_29A2CA430(v3);
    case 0x27u:

      sub_29A2CA4A4(v3);
    case 0x28u:

      sub_29A2CA518(v3);
    case 0x29u:

      sub_29A2CA58C(v3);
    case 0x2Au:

      sub_29A2CA600(v3);
    case 0x2Bu:

      sub_29A2CA674(v3);
    case 0x2Cu:

      sub_29A2CA6E8(v3);
    case 0x2Du:

      sub_29A2CA75C(v3);
    case 0x2Eu:

      sub_29A2CA7D0(v3);
    case 0x2Fu:

      sub_29A2CA844(v3);
    case 0x30u:

      sub_29A2CA8B8(v3);
    case 0x31u:

      sub_29A2CA92C(v3);
    case 0x32u:

      sub_29A2CA9A0(v3);
    case 0x33u:

      sub_29A2CAA14(v3);
    case 0x34u:

      sub_29A2CAA88(v3);
    case 0x35u:

      sub_29A2CAAFC(v3);
    case 0x36u:

      sub_29A2CAB70(v3);
    case 0x37u:

      sub_29A2CABE4(v3);
    case 0x38u:

      sub_29A2CAC58(v3);
    case 0x39u:

      sub_29A2CACCC(v3);
    case 0x3Au:

      sub_29A2CAD40(v3);
    case 0x3Bu:

      sub_29A2CADB4(v3);
    case 0x3Cu:

      sub_29A2CAE28(v3);
    case 0x5Eu:

      return sub_29A2CAE9C(v3);
    case 0x5Fu:

      sub_29A2CAEEC(v3);
    default:
      sub_29A186EF4(v10, v3);
      sub_29A186B14(v10);
      return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::IfNode::_Evaluate@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  (*(**a1 + 16))(&v35);
  v8 = v37;
  v7 = v38;
  if (v37 != v38)
  {
    a4[1] = 0;
    a4[2] = v8;
    v9 = v39;
    a4[3] = v7;
    a4[4] = v9;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    goto LABEL_31;
  }

  if (sub_29A1EFCDC(&v35))
  {
    (*(**a2 + 16))(&v33);
    if (*a3)
    {
      (*(**a3 + 16))(&v30);
      if (*a3)
      {
        Type = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v33, v10);
        v13 = pxrInternal__aapl__pxrReserved__::VtValue::GetType(&v30, v12);
        if (*(&v33 + 1))
        {
          if (Type != v13 && v31)
          {
            sub_29A008E78(v23, "if-value and else-value must evaluate to the same type or None.");
            if (v24 >= 0)
            {
              v16 = v23;
            }

            else
            {
              v16 = v23[0];
            }

            pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v14, v15, "if", v16);
            v25[0] = 0;
            v25[1] = 0;
            v26 = 0;
            sub_29A280C48(v25, __p, &v30, 1uLL);
            a4[1] = 0;
            *(a4 + 1) = *v25;
            a4[4] = v26;
            v25[0] = 0;
            v25[1] = 0;
            v26 = 0;
            v27 = v25;
            sub_29A012C90(&v27);
            if (v29 < 0)
            {
              operator delete(__p[0]);
            }

            if (v24 < 0)
            {
              operator delete(v23[0]);
            }

            v25[0] = &v31 + 8;
            sub_29A012C90(v25);
            sub_29A186B14(&v30);
            v30 = &v34;
            sub_29A012C90(&v30);
            sub_29A186B14(&v33);
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    if ((v36 & 4) != 0)
    {
      v20 = (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(&v35);
    }

    else
    {
      v20 = &v35;
    }

    if (*v20)
    {
      v21 = &v33;
    }

    else
    {
      v21 = &v30;
    }

    sub_29A186EF4(a4, v21);
    a4[2] = 0;
    a4[3] = 0;
    a4[4] = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>();
  }

  sub_29A008E78(v25, "Condition must be a BOOLean value");
  if (v26 >= 0)
  {
    v19 = v25;
  }

  else
  {
    v19 = v25[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v17, v18, "if", v19);
  v33 = 0uLL;
  v34 = 0;
  sub_29A280C48(&v33, &v30, &v32, 1uLL);
  a4[1] = 0;
  *(a4 + 1) = v33;
  a4[4] = v34;
  v33 = 0uLL;
  v34 = 0;
  __p[0] = &v33;
  sub_29A012C90(__p);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

LABEL_31:
  *&v33 = &v37;
  sub_29A012C90(&v33);
  return sub_29A186B14(&v35);
}

void sub_29A29637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_29A2884E8(&a31);
  sub_29A2884E8(&a39);
  sub_29A2884E8(v39 - 96);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::If2Node::If2Node(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F38;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F38;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::If3Node::If3Node(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F60;
  result[1] = v4;
  v5 = *a3;
  *a3 = 0;
  result[2] = v5;
  v6 = *a4;
  *a4 = 0;
  result[3] = v6;
  return result;
}

{
  v4 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F60;
  result[1] = v4;
  v5 = *a3;
  *a3 = 0;
  result[2] = v5;
  v6 = *a4;
  *a4 = 0;
  result[3] = v6;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_Compare<std::equal_to>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = &unk_2A20443C3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::_Compare<std::not_equal_to>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = &unk_2A20443C3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNotNode::LogicalNotNode(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F88;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A2049F88;
  result[1] = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNotNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LogicalNotNode *this@<X0>, uint64_t a2@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 16))(&v24);
  v5 = v25;
  v4 = v26;
  if (v25 == v26)
  {
    if (sub_29A1EFCDC(&v24))
    {
      if ((BYTE8(v24) & 4) != 0)
      {
        v7 = (*((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v24);
      }

      else
      {
        v7 = &v24;
      }

      *a2 = *v7 ^ 1;
      *(a2 + 8) = &unk_2A20443C3;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v24, &v15);
      if (v16 >= 0)
      {
        v10 = &v15;
      }

      else
      {
        v10 = v15.__vftable;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type %s for argument", v8, v9, v10);
      if (v18 >= 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17;
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v11, v12, "not", v13);
      v19 = 0uLL;
      v20 = 0;
      sub_29A280C48(&v19, &__p, &v24, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v19;
      *(a2 + 32) = v20;
      v19 = 0uLL;
      v20 = 0;
      v21 = &v19;
      sub_29A012C90(&v21);
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15.__vftable);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    v6 = v27;
    *(a2 + 24) = v4;
    *(a2 + 32) = v6;
    v26 = 0;
    v27 = 0;
    v25 = 0;
  }

  *&v19 = &v25;
  sub_29A012C90(&v19);
  return sub_29A186B14(&v24);
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ContainsNode::ContainsNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049FB0;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049FB0;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ContainsNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::ContainsNode *this@<X0>, uint64_t a2@<X8>)
{
  v16[3] = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 16))(v15);
  (*(**(this + 2) + 16))(v13);
  sub_29A28658C(v15, v13, &v9);
  v6 = v9;
  v5 = v10;
  if (v9 == v10)
  {
    if (sub_29A296B08(v15))
    {
      *a2 = 0;
      *(a2 + 8) = &unk_2A20443C3;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
    }

    else
    {
      v12 = v13;
      sub_29A296B94(v15, &v12, a2);
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v11;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v10 = 0;
    v11 = 0;
    v9 = 0;
  }

  v12 = &v9;
  sub_29A012C90(&v12);
  v9 = &v14;
  sub_29A012C90(&v9);
  sub_29A186B14(v13);
  v13[0] = v16;
  sub_29A012C90(v13);
  return sub_29A186B14(v15);
}

void sub_29A296AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  va_copy(v7, va);
  sub_29A012C90(va1);
  sub_29A2884E8(va2);
  sub_29A2884E8(va3);
  _Unwind_Resume(a1);
}

uint64_t sub_29A296B08(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B486954 & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A204A338);
}

void sub_29A296B94(char ***a1@<X0>, pxrInternal__aapl__pxrReserved__::VtValue **a2@<X1>, uint64_t a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:
      v6 = a1[1];
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBA34(a3);
      break;
    case 1u:
      v56 = a1[1];
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBBA8(a3);
      break;
    case 2u:
      v51 = a1[1];
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBC18(a3);
      break;
    case 3u:
      v54 = a1[1];
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBC88(a3);
      break;
    case 4u:
      v42 = a1[1];
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBCF8(a3);
      break;
    case 5u:
      v65 = a1[1];
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBD68(a3);
      break;
    case 6u:
      v70 = a1[1];
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBDD8(a3);
      break;
    case 7u:
      v55 = a1[1];
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBE48(a3);
      break;
    case 8u:
      v73 = a1[1];
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBEB8(a3);
      break;
    case 9u:
      v48 = a1[1];
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBF28(a3);
      break;
    case 0xAu:
      v72 = a1[1];
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CBF98(a3);
      break;
    case 0xBu:
      v39 = a1[1];
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC008(a3);
      break;
    case 0xCu:
      v46 = a1[1];
      if ((v46 & 4) != 0)
      {
        v47 = (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v47 = *a1;
      }

      sub_29A2CC078(a2, v47, a3);
      break;
    case 0xDu:
      v69 = a1[1];
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC158(a3);
      break;
    case 0xEu:
      v34 = a1[1];
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC1C8(a3);
      break;
    case 0xFu:
      v52 = a1[1];
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC238(a3);
      break;
    case 0x10u:
      v31 = a1[1];
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC2A8(a3);
      break;
    case 0x11u:
      v59 = a1[1];
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC318(a3);
      break;
    case 0x12u:
      v71 = a1[1];
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC388(a3);
      break;
    case 0x13u:
      v81 = a1[1];
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC3F8(a3);
      break;
    case 0x14u:
      v63 = a1[1];
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC468(a3);
      break;
    case 0x15u:
      v68 = a1[1];
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC4D8(a3);
      break;
    case 0x16u:
      v78 = a1[1];
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC548(a3);
      break;
    case 0x17u:
      v86 = a1[1];
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC5B8(a3);
      break;
    case 0x18u:
      v50 = a1[1];
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC628(a3);
      break;
    case 0x19u:
      v49 = a1[1];
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC698(a3);
      break;
    case 0x1Au:
      v90 = a1[1];
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC708(a3);
      break;
    case 0x1Bu:
      v29 = a1[1];
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC778(a3);
      break;
    case 0x1Cu:
      v87 = a1[1];
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC7E8(a3);
      break;
    case 0x1Du:
      v88 = a1[1];
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC858(a3);
      break;
    case 0x1Eu:
      v74 = a1[1];
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC8C8(a3);
      break;
    case 0x1Fu:
      v58 = a1[1];
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC938(a3);
      break;
    case 0x20u:
      v75 = a1[1];
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CC9A8(a3);
      break;
    case 0x21u:
      v35 = a1[1];
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCA18(a3);
      break;
    case 0x22u:
      v30 = a1[1];
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCA88(a3);
      break;
    case 0x23u:
      v26 = a1[1];
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCAF8(a3);
      break;
    case 0x24u:
      v27 = a1[1];
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCB68(a3);
      break;
    case 0x25u:
      v20 = a1[1];
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCBD8(a3);
      break;
    case 0x26u:
      v89 = a1[1];
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCC48(a3);
      break;
    case 0x27u:
      v80 = a1[1];
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCCB8(a3);
      break;
    case 0x28u:
      v43 = a1[1];
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCD28(a3);
      break;
    case 0x29u:
      v61 = a1[1];
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCD98(a3);
      break;
    case 0x2Au:
      v83 = a1[1];
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCE08(a3);
      break;
    case 0x2Bu:
      v16 = a1[1];
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCE78(a3);
      break;
    case 0x2Cu:
      v33 = a1[1];
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCEE8(a3);
      break;
    case 0x2Du:
      v76 = a1[1];
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCF58(a3);
      break;
    case 0x2Eu:
      v96 = a1[1];
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CCFC8(a3);
      break;
    case 0x2Fu:
      v22 = a1[1];
      if ((v22 & 4) != 0)
      {
        v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v23 = *a1;
      }

      sub_29A2CD038(a2, v23, a3);
      break;
    case 0x30u:
      v36 = a1[1];
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD144(a3);
      break;
    case 0x31u:
      v41 = a1[1];
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD1B4(a3);
      break;
    case 0x32u:
      v14 = a1[1];
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD224(a3);
      break;
    case 0x33u:
      v100 = a1[1];
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD294(a3);
      break;
    case 0x34u:
      v95 = a1[1];
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD304(a3);
      break;
    case 0x35u:
      v21 = a1[1];
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD374(a3);
      break;
    case 0x36u:
      v91 = a1[1];
      if ((v91 & 4) != 0)
      {
        v92 = (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v92 = *a1;
      }

      sub_29A2CD3E4(a2, v92, a3);
      break;
    case 0x37u:
      v94 = a1[1];
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD4FC(a3);
      break;
    case 0x38u:
      v24 = a1[1];
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD56C(a3);
      break;
    case 0x39u:
      v82 = a1[1];
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD5DC(a3);
      break;
    case 0x3Au:
      v37 = a1[1];
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD64C(a3);
      break;
    case 0x3Bu:
      v84 = a1[1];
      if ((v84 & 4) != 0)
      {
        v85 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v85 = *a1;
      }

      sub_29A2CD6BC(a2, v85, a3);
      break;
    case 0x3Cu:
      v44 = a1[1];
      if ((v44 & 4) != 0)
      {
        (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD7C8(a3);
      break;
    case 0x3Du:
      v64 = a1[1];
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD838(a3);
      break;
    case 0x3Eu:
      v67 = a1[1];
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD8A8(a3);
      break;
    case 0x3Fu:
      v53 = a1[1];
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD918(a3);
      break;
    case 0x40u:
      v45 = a1[1];
      if ((v45 & 4) != 0)
      {
        (*((v45 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD988(a3);
      break;
    case 0x41u:
      v66 = a1[1];
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CD9F8(a3);
      break;
    case 0x42u:
      v17 = a1[1];
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDA68(a3);
      break;
    case 0x43u:
      v32 = a1[1];
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDAD8(a3);
      break;
    case 0x44u:
      v102 = a1[1];
      if ((v102 & 4) != 0)
      {
        (*((v102 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDB48(a3);
      break;
    case 0x45u:
      v28 = a1[1];
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDBB8(a3);
      break;
    case 0x46u:
      v11 = a1[1];
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDC28(a3);
      break;
    case 0x47u:
      v19 = a1[1];
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDC98(a3);
      break;
    case 0x48u:
      v93 = a1[1];
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDD08(a3);
      break;
    case 0x49u:
      v97 = a1[1];
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDD78(a3);
      break;
    case 0x4Au:
      v99 = a1[1];
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDDE8(a3);
      break;
    case 0x4Bu:
      v25 = a1[1];
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDE58(a3);
      break;
    case 0x4Cu:
      v62 = a1[1];
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDEC8(a3);
      break;
    case 0x4Du:
      v12 = a1[1];
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDF38(a3);
      break;
    case 0x4Eu:
      v101 = a1[1];
      if ((v101 & 4) != 0)
      {
        (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CDFA8(a3);
      break;
    case 0x4Fu:
      v10 = a1[1];
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE018(a3);
      break;
    case 0x50u:
      v18 = a1[1];
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE088(a3);
      break;
    case 0x51u:
      v40 = a1[1];
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE0F8(a3);
      break;
    case 0x52u:
      v38 = a1[1];
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE168(a3);
      break;
    case 0x53u:
      v8 = a1[1];
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE1D8(a3);
      break;
    case 0x54u:
      v7 = a1[1];
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE248(a3);
      break;
    case 0x55u:
      v77 = a1[1];
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE2B8(a3);
      break;
    case 0x56u:
      v79 = a1[1];
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE328(a3);
      break;
    case 0x57u:
      v98 = a1[1];
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE398(a3);
      break;
    case 0x58u:
      v15 = a1[1];
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE408(a3);
      break;
    case 0x59u:
      v105 = a1[1];
      if ((v105 & 4) != 0)
      {
        (*((v105 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE478(a3);
      break;
    case 0x5Au:
      v104 = a1[1];
      if ((v104 & 4) != 0)
      {
        (*((v104 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE4E8(a3);
      break;
    case 0x5Bu:
      v9 = a1[1];
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE558(a3);
      break;
    case 0x5Cu:
      v57 = a1[1];
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE5C8(a3);
      break;
    case 0x5Du:
      v13 = a1[1];
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE638(a3);
      break;
    case 0x5Eu:
      v60 = a1[1];
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE6A8(a3);
      break;
    case 0x5Fu:
      v103 = a1[1];
      if ((v103 & 4) != 0)
      {
        (*((v103 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE718(a3);
      break;
    default:

      sub_29A2CE788(a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::AtNode::AtNode(void *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049FD8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

{
  v3 = *a2;
  *a2 = 0;
  *result = &unk_2A2049FD8;
  result[1] = v3;
  v4 = *a3;
  *a3 = 0;
  result[2] = v4;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::AtNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::AtNode *this@<X0>, uint64_t a2@<X8>)
{
  v27[3] = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 16))(v26);
  (*(**(this + 2) + 16))(&v24);
  sub_29A28658C(v26, &v24, &v18);
  v6 = v18;
  v5 = v19;
  if (v18 == v19)
  {
    if (sub_29A298D2C(&v24))
    {
      if ((BYTE8(v24) & 4) != 0)
      {
        v8 = (*((*(&v24 + 1) & 0xFFFFFFFFFFFFFFF8) + 168))(&v24);
      }

      else
      {
        v8 = &v24;
      }

      *&v16 = *v8;
      sub_29A298D64(v26, &v16, a2);
    }

    else
    {
      sub_29A008E78(v14, "Index must be an integer");
      if (v15 >= 0)
      {
        v11 = v14;
      }

      else
      {
        v11 = v14[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v9, v10, "at", v11);
      v16 = 0uLL;
      v17 = 0;
      sub_29A280C48(&v16, &__p, &v24, 1uLL);
      *(a2 + 8) = 0;
      *(a2 + 16) = v16;
      *(a2 + 32) = v17;
      v16 = 0uLL;
      v17 = 0;
      v21 = &v16;
      sub_29A012C90(&v21);
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = v6;
    v7 = v20;
    *(a2 + 24) = v5;
    *(a2 + 32) = v7;
    v19 = 0;
    v20 = 0;
    v18 = 0;
  }

  *&v16 = &v18;
  sub_29A012C90(&v16);
  v18 = &v25;
  sub_29A012C90(&v18);
  v12 = sub_29A186B14(&v24);
  *&v24 = v27;
  sub_29A012C90(v12);
  return sub_29A186B14(v26);
}

void sub_29A298CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  a18 = &a22;
  sub_29A012C90(&a18);
  sub_29A2884E8(v31 - 120);
  sub_29A2884E8(v31 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_29A298D2C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 7)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, MEMORY[0x29EDC9508]);
  }

  else
  {
    return 0;
  }
}

void sub_29A298D64(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:
      v6 = a1[1];
      if ((v6 & 4) != 0)
      {
        (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE7F8(a3);
      break;
    case 1u:
      v56 = a1[1];
      if ((v56 & 4) != 0)
      {
        (*((v56 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE96C(a3);
      break;
    case 2u:
      v51 = a1[1];
      if ((v51 & 4) != 0)
      {
        (*((v51 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CE9DC(a3);
      break;
    case 3u:
      v54 = a1[1];
      if ((v54 & 4) != 0)
      {
        (*((v54 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEA4C(a3);
      break;
    case 4u:
      v42 = a1[1];
      if ((v42 & 4) != 0)
      {
        (*((v42 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEABC(a3);
      break;
    case 5u:
      v65 = a1[1];
      if ((v65 & 4) != 0)
      {
        (*((v65 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEB2C(a3);
      break;
    case 6u:
      v70 = a1[1];
      if ((v70 & 4) != 0)
      {
        (*((v70 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEB9C(a3);
      break;
    case 7u:
      v55 = a1[1];
      if ((v55 & 4) != 0)
      {
        (*((v55 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEC0C(a3);
      break;
    case 8u:
      v73 = a1[1];
      if ((v73 & 4) != 0)
      {
        (*((v73 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEC7C(a3);
      break;
    case 9u:
      v48 = a1[1];
      if ((v48 & 4) != 0)
      {
        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CECEC(a3);
      break;
    case 0xAu:
      v72 = a1[1];
      if ((v72 & 4) != 0)
      {
        (*((v72 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CED5C(a3);
      break;
    case 0xBu:
      v39 = a1[1];
      if ((v39 & 4) != 0)
      {
        (*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEDCC(a3);
      break;
    case 0xCu:
      v46 = a1[1];
      if ((v46 & 4) != 0)
      {
        v47 = (*((v46 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v47 = *a1;
      }

      sub_29A2CEE3C(a2, v47, a3);
      break;
    case 0xDu:
      v69 = a1[1];
      if ((v69 & 4) != 0)
      {
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEF10(a3);
      break;
    case 0xEu:
      v34 = a1[1];
      if ((v34 & 4) != 0)
      {
        (*((v34 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEF80(a3);
      break;
    case 0xFu:
      v52 = a1[1];
      if ((v52 & 4) != 0)
      {
        (*((v52 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CEFF0(a3);
      break;
    case 0x10u:
      v31 = a1[1];
      if ((v31 & 4) != 0)
      {
        (*((v31 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF060(a3);
      break;
    case 0x11u:
      v59 = a1[1];
      if ((v59 & 4) != 0)
      {
        (*((v59 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF0D0(a3);
      break;
    case 0x12u:
      v71 = a1[1];
      if ((v71 & 4) != 0)
      {
        (*((v71 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF140(a3);
      break;
    case 0x13u:
      v81 = a1[1];
      if ((v81 & 4) != 0)
      {
        (*((v81 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF1B0(a3);
      break;
    case 0x14u:
      v63 = a1[1];
      if ((v63 & 4) != 0)
      {
        (*((v63 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF220(a3);
      break;
    case 0x15u:
      v68 = a1[1];
      if ((v68 & 4) != 0)
      {
        (*((v68 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF290(a3);
      break;
    case 0x16u:
      v78 = a1[1];
      if ((v78 & 4) != 0)
      {
        (*((v78 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF300(a3);
      break;
    case 0x17u:
      v86 = a1[1];
      if ((v86 & 4) != 0)
      {
        (*((v86 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF370(a3);
      break;
    case 0x18u:
      v50 = a1[1];
      if ((v50 & 4) != 0)
      {
        (*((v50 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF3E0(a3);
      break;
    case 0x19u:
      v49 = a1[1];
      if ((v49 & 4) != 0)
      {
        (*((v49 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF450(a3);
      break;
    case 0x1Au:
      v90 = a1[1];
      if ((v90 & 4) != 0)
      {
        (*((v90 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF4C0(a3);
      break;
    case 0x1Bu:
      v29 = a1[1];
      if ((v29 & 4) != 0)
      {
        (*((v29 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF530(a3);
      break;
    case 0x1Cu:
      v87 = a1[1];
      if ((v87 & 4) != 0)
      {
        (*((v87 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF5A0(a3);
      break;
    case 0x1Du:
      v88 = a1[1];
      if ((v88 & 4) != 0)
      {
        (*((v88 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF610(a3);
      break;
    case 0x1Eu:
      v74 = a1[1];
      if ((v74 & 4) != 0)
      {
        (*((v74 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF680(a3);
      break;
    case 0x1Fu:
      v58 = a1[1];
      if ((v58 & 4) != 0)
      {
        (*((v58 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF6F0(a3);
      break;
    case 0x20u:
      v75 = a1[1];
      if ((v75 & 4) != 0)
      {
        (*((v75 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF760(a3);
      break;
    case 0x21u:
      v35 = a1[1];
      if ((v35 & 4) != 0)
      {
        (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF7D0(a3);
      break;
    case 0x22u:
      v30 = a1[1];
      if ((v30 & 4) != 0)
      {
        (*((v30 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF840(a3);
      break;
    case 0x23u:
      v26 = a1[1];
      if ((v26 & 4) != 0)
      {
        (*((v26 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF8B0(a3);
      break;
    case 0x24u:
      v27 = a1[1];
      if ((v27 & 4) != 0)
      {
        (*((v27 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF920(a3);
      break;
    case 0x25u:
      v20 = a1[1];
      if ((v20 & 4) != 0)
      {
        (*((v20 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CF990(a3);
      break;
    case 0x26u:
      v89 = a1[1];
      if ((v89 & 4) != 0)
      {
        (*((v89 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFA00(a3);
      break;
    case 0x27u:
      v80 = a1[1];
      if ((v80 & 4) != 0)
      {
        (*((v80 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFA70(a3);
      break;
    case 0x28u:
      v43 = a1[1];
      if ((v43 & 4) != 0)
      {
        (*((v43 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFAE0(a3);
      break;
    case 0x29u:
      v61 = a1[1];
      if ((v61 & 4) != 0)
      {
        (*((v61 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFB50(a3);
      break;
    case 0x2Au:
      v83 = a1[1];
      if ((v83 & 4) != 0)
      {
        (*((v83 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFBC0(a3);
      break;
    case 0x2Bu:
      v16 = a1[1];
      if ((v16 & 4) != 0)
      {
        (*((v16 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFC30(a3);
      break;
    case 0x2Cu:
      v33 = a1[1];
      if ((v33 & 4) != 0)
      {
        (*((v33 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFCA0(a3);
      break;
    case 0x2Du:
      v76 = a1[1];
      if ((v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFD10(a3);
      break;
    case 0x2Eu:
      v96 = a1[1];
      if ((v96 & 4) != 0)
      {
        (*((v96 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFD80(a3);
      break;
    case 0x2Fu:
      v22 = a1[1];
      if ((v22 & 4) != 0)
      {
        v23 = (*((v22 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v23 = *a1;
      }

      sub_29A2CFDF0(a2, v23, a3);
      break;
    case 0x30u:
      v36 = a1[1];
      if ((v36 & 4) != 0)
      {
        (*((v36 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFEA0(a3);
      break;
    case 0x31u:
      v41 = a1[1];
      if ((v41 & 4) != 0)
      {
        (*((v41 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFF10(a3);
      break;
    case 0x32u:
      v14 = a1[1];
      if ((v14 & 4) != 0)
      {
        (*((v14 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFF80(a3);
      break;
    case 0x33u:
      v100 = a1[1];
      if ((v100 & 4) != 0)
      {
        (*((v100 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2CFFF0(a3);
      break;
    case 0x34u:
      v95 = a1[1];
      if ((v95 & 4) != 0)
      {
        (*((v95 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0060(a3);
      break;
    case 0x35u:
      v21 = a1[1];
      if ((v21 & 4) != 0)
      {
        (*((v21 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D00D0(a3);
      break;
    case 0x36u:
      v91 = a1[1];
      if ((v91 & 4) != 0)
      {
        v92 = (*((v91 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v92 = *a1;
      }

      sub_29A2D0140(a2, v92, a3);
      break;
    case 0x37u:
      v94 = a1[1];
      if ((v94 & 4) != 0)
      {
        (*((v94 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D01F0(a3);
      break;
    case 0x38u:
      v24 = a1[1];
      if ((v24 & 4) != 0)
      {
        (*((v24 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0260(a3);
      break;
    case 0x39u:
      v82 = a1[1];
      if ((v82 & 4) != 0)
      {
        (*((v82 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D02D0(a3);
      break;
    case 0x3Au:
      v37 = a1[1];
      if ((v37 & 4) != 0)
      {
        (*((v37 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0340(a3);
      break;
    case 0x3Bu:
      v84 = a1[1];
      if ((v84 & 4) != 0)
      {
        v85 = (*((v84 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v85 = *a1;
      }

      sub_29A2D03B0(a2, v85, a3);
      break;
    case 0x3Cu:
      v44 = a1[1];
      if ((v44 & 4) != 0)
      {
        (*((v44 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0468(a3);
      break;
    case 0x3Du:
      v64 = a1[1];
      if ((v64 & 4) != 0)
      {
        (*((v64 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D04D8(a3);
      break;
    case 0x3Eu:
      v67 = a1[1];
      if ((v67 & 4) != 0)
      {
        (*((v67 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0548(a3);
      break;
    case 0x3Fu:
      v53 = a1[1];
      if ((v53 & 4) != 0)
      {
        (*((v53 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D05B8(a3);
      break;
    case 0x40u:
      v45 = a1[1];
      if ((v45 & 4) != 0)
      {
        (*((v45 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0628(a3);
      break;
    case 0x41u:
      v66 = a1[1];
      if ((v66 & 4) != 0)
      {
        (*((v66 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0698(a3);
      break;
    case 0x42u:
      v17 = a1[1];
      if ((v17 & 4) != 0)
      {
        (*((v17 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0708(a3);
      break;
    case 0x43u:
      v32 = a1[1];
      if ((v32 & 4) != 0)
      {
        (*((v32 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0778(a3);
      break;
    case 0x44u:
      v102 = a1[1];
      if ((v102 & 4) != 0)
      {
        (*((v102 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D07E8(a3);
      break;
    case 0x45u:
      v28 = a1[1];
      if ((v28 & 4) != 0)
      {
        (*((v28 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0858(a3);
      break;
    case 0x46u:
      v11 = a1[1];
      if ((v11 & 4) != 0)
      {
        (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D08C8(a3);
      break;
    case 0x47u:
      v19 = a1[1];
      if ((v19 & 4) != 0)
      {
        (*((v19 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0938(a3);
      break;
    case 0x48u:
      v93 = a1[1];
      if ((v93 & 4) != 0)
      {
        (*((v93 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D09A8(a3);
      break;
    case 0x49u:
      v97 = a1[1];
      if ((v97 & 4) != 0)
      {
        (*((v97 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0A18(a3);
      break;
    case 0x4Au:
      v99 = a1[1];
      if ((v99 & 4) != 0)
      {
        (*((v99 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0A88(a3);
      break;
    case 0x4Bu:
      v25 = a1[1];
      if ((v25 & 4) != 0)
      {
        (*((v25 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0AF8(a3);
      break;
    case 0x4Cu:
      v62 = a1[1];
      if ((v62 & 4) != 0)
      {
        (*((v62 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0B68(a3);
      break;
    case 0x4Du:
      v12 = a1[1];
      if ((v12 & 4) != 0)
      {
        (*((v12 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0BD8(a3);
      break;
    case 0x4Eu:
      v101 = a1[1];
      if ((v101 & 4) != 0)
      {
        (*((v101 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0C48(a3);
      break;
    case 0x4Fu:
      v10 = a1[1];
      if ((v10 & 4) != 0)
      {
        (*((v10 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0CB8(a3);
      break;
    case 0x50u:
      v18 = a1[1];
      if ((v18 & 4) != 0)
      {
        (*((v18 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0D28(a3);
      break;
    case 0x51u:
      v40 = a1[1];
      if ((v40 & 4) != 0)
      {
        (*((v40 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0D98(a3);
      break;
    case 0x52u:
      v38 = a1[1];
      if ((v38 & 4) != 0)
      {
        (*((v38 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0E08(a3);
      break;
    case 0x53u:
      v8 = a1[1];
      if ((v8 & 4) != 0)
      {
        (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0E78(a3);
      break;
    case 0x54u:
      v7 = a1[1];
      if ((v7 & 4) != 0)
      {
        (*((v7 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0EE8(a3);
      break;
    case 0x55u:
      v77 = a1[1];
      if ((v77 & 4) != 0)
      {
        (*((v77 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0F58(a3);
      break;
    case 0x56u:
      v79 = a1[1];
      if ((v79 & 4) != 0)
      {
        (*((v79 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D0FC8(a3);
      break;
    case 0x57u:
      v98 = a1[1];
      if ((v98 & 4) != 0)
      {
        (*((v98 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D1038(a3);
      break;
    case 0x58u:
      v15 = a1[1];
      if ((v15 & 4) != 0)
      {
        (*((v15 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D10A8(a3);
      break;
    case 0x59u:
      v105 = a1[1];
      if ((v105 & 4) != 0)
      {
        (*((v105 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D1118(a3);
      break;
    case 0x5Au:
      v104 = a1[1];
      if ((v104 & 4) != 0)
      {
        (*((v104 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D1188(a3);
      break;
    case 0x5Bu:
      v9 = a1[1];
      if ((v9 & 4) != 0)
      {
        (*((v9 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D11F8(a3);
      break;
    case 0x5Cu:
      v57 = a1[1];
      if ((v57 & 4) != 0)
      {
        (*((v57 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D1268(a3);
      break;
    case 0x5Du:
      v13 = a1[1];
      if ((v13 & 4) != 0)
      {
        (*((v13 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D12D8(a3);
      break;
    case 0x5Eu:
      v60 = a1[1];
      if ((v60 & 4) != 0)
      {
        (*((v60 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D1348(a3);
      break;
    case 0x5Fu:
      v103 = a1[1];
      if ((v103 & 4) != 0)
      {
        (*((v103 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D13B8(a3);
      break;
    default:

      sub_29A2D1428(a1, a3);
      break;
  }
}

void *pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LenNode::LenNode(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A204A000;
  result[1] = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = &unk_2A204A000;
  result[1] = v2;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LenNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::LenNode *this@<X0>, void *a2@<X8>)
{
  v13 = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 16))(v9);
  v5 = v10;
  v4 = v11;
  if (v10 == v11)
  {
    sub_29A29AD28(v9, a2);
  }

  else
  {
    a2[1] = 0;
    a2[2] = v5;
    v6 = v12;
    a2[3] = v4;
    a2[4] = v6;
    v11 = 0;
    v12 = 0;
    v10 = 0;
  }

  v8 = &v10;
  sub_29A012C90(&v8);
  return sub_29A186B14(v9);
}

void sub_29A29AD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A2884E8(va);
  _Unwind_Resume(a1);
}

void sub_29A29AD28(uint64_t *a1@<X0>, void *a2@<X8>)
{
  switch(sub_29A29C774(a1))
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x30u:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
    case 0x3Fu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x43u:
    case 0x44u:
    case 0x45u:
    case 0x46u:
    case 0x47u:
    case 0x48u:
    case 0x49u:
    case 0x4Au:
    case 0x4Bu:
    case 0x4Cu:
    case 0x4Du:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x54u:
    case 0x55u:
    case 0x56u:
    case 0x57u:
    case 0x58u:
    case 0x59u:
    case 0x5Au:
    case 0x5Bu:
    case 0x5Cu:
    case 0x5Du:
    case 0x5Eu:
    case 0x5Fu:
      v4 = a1[1];
      if ((v4 & 4) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      sub_29A2D14C8(a2);
      break;
    case 0xCu:
      v8 = a1[1];
      if ((v8 & 4) != 0)
      {
        v9 = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v9 = *a1;
      }

      v7 = *(v9 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v9 + 8);
      }

      goto LABEL_14;
    case 0x2Fu:
    case 0x36u:
    case 0x3Bu:
      v5 = a1[1];
      if ((v5 & 4) != 0)
      {
        v6 = (*((v5 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
      }

      else
      {
        v6 = *a1;
      }

      v7 = *v6;
LABEL_14:
      *a2 = v7;
      a2[1] = &unk_2A2044A3B;
      a2[3] = 0;
      a2[4] = 0;
      a2[2] = 0;
      break;
    default:

      sub_29A2D1608(a1, a2);
      break;
  }
}

__n128 pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::DefinedNode::DefinedNode(void *a1, __n128 *a2)
{
  *a1 = &unk_2A204A028;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = &unk_2A204A028;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  result = *a2;
  *(a1 + 1) = *a2;
  a1[3] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::DefinedNode::Evaluate@<X0>(pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::DefinedNode *this@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v4 = *(this + 1);
  if (*(this + 2) == v4)
  {
    goto LABEL_33;
  }

  v7 = 0;
  do
  {
    (*(**(v4 + 8 * v7) + 16))(&v34);
    if (v36 == v37)
    {
      if (sub_29A1EFC10(&v34))
      {
        if ((v35 & 4) != 0)
        {
          v8 = (*((v35 & 0xFFFFFFFFFFFFFFF8) + 168))(&v34);
        }

        else
        {
          v8 = v34;
        }

        v9 = sub_29A293B8C(*a2, v8);
        v10 = sub_29A1EFCDC(&v38);
        v11 = v39;
        if (v10)
        {
          if ((v39 & 4) != 0)
          {
            v12 = *(*((v39 & 0xFFFFFFFFFFFFFFF8) + 168))(&v38);
            v11 = v39;
          }

          else
          {
            v12 = v38;
          }
        }

        else
        {
          v12 = 1;
        }

        v19 = v9 != 0;
        if (v11 && (v11 & 3) != 3)
        {
          (*((v11 & 0xFFFFFFFFFFFFFFF8) + 32))(&v38);
        }

        v39 = &unk_2A20443C3;
        LOBYTE(v38) = v12 & v19;
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::Sdf_VariableExpressionImpl::GetValueTypeName(&v34, &v25);
        v15 = &v25;
        if (v26 < 0)
        {
          v15 = v25.__vftable;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Invalid type %s for argument %zu", v13, v14, v15, v7);
        if (v28 >= 0)
        {
          v18 = &v27;
        }

        else
        {
          v18 = v27;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v16, v17, "defined", v18);
        sub_29A091654(&v31, __p);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25.__vftable);
        }
      }
    }

    else
    {
      sub_29A2C9540(&v31, v32, v36, v37, 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3));
    }

    __p[0] = &v36;
    sub_29A012C90(__p);
    sub_29A186B14(&v34);
    ++v7;
    v4 = *(this + 1);
  }

  while (v7 < (*(this + 2) - v4) >> 3);
  v21 = v31;
  v20 = v32;
  if (v31 == v32)
  {
LABEL_33:
    sub_29A186EF4(a3, &v38);
    v23 = (a3 + 2);
  }

  else
  {
    a3[1] = 0;
    a3[2] = v21;
    v22 = v33;
    a3[3] = v20;
    a3[4] = v22;
    v23 = &v31;
  }

  *v23 = 0;
  v23[1] = 0;
  v23[2] = 0;
  v34 = &v31;
  sub_29A012C90(&v34);
  return sub_29A186B14(&v38);
}

void sub_29A29B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, char *a33)
{
  a33 = &a30;
  sub_29A012C90(&a33);
  sub_29A186B14(v33 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_29A29B3D8(uint64_t a1)
{
  *a1 = &unk_2A2049E98;
  v3 = (a1 + 8);
  sub_29A10C99C(&v3);
  return a1;
}

void sub_29A29B430(char *a1)
{
  *a1 = &unk_2A2049E98;
  v2 = (a1 + 8);
  sub_29A10C99C(&v2);
  operator delete(a1);
}

uint64_t sub_29A29B48C(uint64_t a1)
{
  *a1 = &unk_2A2049EC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_29A29B4DC(void **__p)
{
  *__p = &unk_2A2049EC0;
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_29A29B554(uint64_t a1)
{
  *a1 = &unk_2A2049F10;
  v3 = (a1 + 8);
  sub_29A2D1674(&v3);
  return a1;
}

void sub_29A29B5AC(char *a1)
{
  *a1 = &unk_2A2049F10;
  v2 = (a1 + 8);
  sub_29A2D1674(&v2);
  operator delete(a1);
}

void *sub_29A29B608(void *a1)
{
  *a1 = &unk_2A2049F38;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29B6A8(void *__p)
{
  *__p = &unk_2A2049F38;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29B758(void *a1)
{
  *a1 = &unk_2A2049F60;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

void sub_29A29B828(void *__p)
{
  *__p = &unk_2A2049F60;
  v2 = __p[3];
  __p[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[2];
  __p[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = __p[1];
  __p[1] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  operator delete(__p);
}

void *sub_29A29B908(void *a1)
{
  *a1 = &unk_2A2049D58;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29B9A8(void *__p)
{
  *__p = &unk_2A2049D58;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29BA58(void *a1)
{
  *a1 = &unk_2A2049D80;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29BAF8(void *__p)
{
  *__p = &unk_2A2049D80;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29BBA8(void *a1)
{
  *a1 = &unk_2A2049DA8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29BC48(void *__p)
{
  *__p = &unk_2A2049DA8;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29BCF8(void *a1)
{
  *a1 = &unk_2A2049DD0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29BD98(void *__p)
{
  *__p = &unk_2A2049DD0;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29BE48(void *a1)
{
  *a1 = &unk_2A2049DF8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29BEE8(void *__p)
{
  *__p = &unk_2A2049DF8;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29BF98(void *a1)
{
  *a1 = &unk_2A2049E20;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29C038(void *__p)
{
  *__p = &unk_2A2049E20;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

uint64_t sub_29A29C0E8(uint64_t a1)
{
  *a1 = &unk_2A2049E48;
  v3 = (a1 + 8);
  sub_29A2D1674(&v3);
  return a1;
}

void sub_29A29C140(char *a1)
{
  *a1 = &unk_2A2049E48;
  v2 = (a1 + 8);
  sub_29A2D1674(&v2);
  operator delete(a1);
}

uint64_t sub_29A29C19C(uint64_t a1)
{
  *a1 = &unk_2A2049E70;
  v3 = (a1 + 8);
  sub_29A2D1674(&v3);
  return a1;
}

void sub_29A29C1F4(char *a1)
{
  *a1 = &unk_2A2049E70;
  v2 = (a1 + 8);
  sub_29A2D1674(&v2);
  operator delete(a1);
}

void *sub_29A29C250(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A2049F88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A29C2BC(void *__p)
{
  v2 = __p[1];
  *__p = &unk_2A2049F88;
  __p[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

void *sub_29A29C338(void *a1)
{
  *a1 = &unk_2A2049FB0;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29C3D8(void *__p)
{
  *__p = &unk_2A2049FB0;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29C488(void *a1)
{
  *a1 = &unk_2A2049FD8;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_29A29C528(void *__p)
{
  *__p = &unk_2A2049FD8;
  v2 = __p[2];
  __p[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = __p[1];
  __p[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete(__p);
}

void *sub_29A29C5D8(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_2A204A000;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29A29C644(void *__p)
{
  v2 = __p[1];
  *__p = &unk_2A204A000;
  __p[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  operator delete(__p);
}

uint64_t sub_29A29C6C0(uint64_t a1)
{
  *a1 = &unk_2A204A028;
  v3 = (a1 + 8);
  sub_29A2D1674(&v3);
  return a1;
}

void sub_29A29C718(char *a1)
{
  *a1 = &unk_2A204A028;
  v2 = (a1 + 8);
  sub_29A2D1674(&v2);
  operator delete(a1);
}

uint64_t sub_29A29C774(uint64_t a1)
{
  v4[2] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  if ((v1 & 4) != 0)
  {
    (*((v1 & 0xFFFFFFFFFFFFFFF8) + 176))(v4);
    v2 = sub_29A29C774(v4);
    sub_29A186B14(v4);
  }

  else if (v1)
  {
    return *((v1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return v2;
}

void sub_29A29C80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29A29C828@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a1 + 1);
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 1);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 == *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A29C8BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = a1[1];
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 == *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A29C950(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29CA54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29CA90(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29CB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29CBD0(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29CCD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29CD10(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29CE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29CE50(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29CF54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29CF90(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D0D0(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D210(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D350(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D490(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29A29D5D0@<W0>(uint64_t *a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(v5 + 8);
  if ((v6 & 4) != 0)
  {
    v7 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  else
  {
    v7 = *v5;
  }

  result = sub_29A0EC4B8(&v9, a2, v7);
  *a3 = result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A29D644(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D784(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29D8C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29D9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29DA04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29DB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29DB44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29DC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29DC84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29DD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29DDC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29DEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29DF04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E044(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E184(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E2C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E404(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E544(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E684(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E7C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29E8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29E904(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29EA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29EA44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29EB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29EB84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29EC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29ECC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29EDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29EE04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29EF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29EF44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F084(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F1C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F304(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F444(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F548(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F584(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F6C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F7C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F804(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29F908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29F944(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29FA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29FA84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29FBC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29FCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29FD04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29FE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29FE44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A29FF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A29FF84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A00C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A01C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0204(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0344(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0484(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A05C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A06C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0704(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0844(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0984(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0AC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0C04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0D44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0E84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A0F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A0FC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A10C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1104(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1244(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1384(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A14C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A15C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1604(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1744(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1884(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A19C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1B04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1C44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1D84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A1EC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A1FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2004(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2144(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2284(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A23C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A24C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2504(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2644(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2784(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A28C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A29C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2A04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2B44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2C84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2DC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A2EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A2F04(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3044(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3184(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A32C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A33C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3404(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3544(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3684(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A37C4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A38C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3904(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3A44(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3B84(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A3CC4(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "eq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A3DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A2A3E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8) || *(*result + 8))
  {
    result = sub_29B295308(v4);
  }

  *a3 = 1;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

unsigned __int8 *sub_29A2A3E68@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = *(a1 + 1);
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 1);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 != *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void *sub_29A2A3EFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = a1[1];
  if ((v6 & 4) != 0)
  {
    v4 = (*((v6 & 0xFFFFFFFFFFFFFFF8) + 168))(a1);
  }

  result = *a2;
  v8 = *(*a2 + 8);
  if ((v8 & 4) != 0)
  {
    result = (*((v8 & 0xFFFFFFFFFFFFFFF8) + 168))();
  }

  *a3 = *v4 != *result;
  *(a3 + 8) = &unk_2A20443C3;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

void sub_29A2A3F90(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A40D0(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A41D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4210(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4350(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4490(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A45D0(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A46D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4710(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A2A4850(uint64_t a1@<X8>)
{
  *&v12 = *MEMORY[0x29EDCA608];
  sub_29A008E78(__p, "Unsupported type for comparison");
  if (v6 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  pxrInternal__aapl__pxrReserved__::TfStringPrintf("%s: %s", v2, v3, "neq", v4);
  v7 = 0uLL;
  v8 = 0;
  sub_29A280C48(&v7, &v10, &v12, 1uLL);
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  v7 = 0uLL;
  v8 = 0;
  v9 = &v7;
  sub_29A012C90(&v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29A2A4954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 - 41) < 0)
  {
    operator delete(*(v17 - 64));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}