uint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::GetNormalized(__int128 *a1, unsigned __int16 a2)
{
  v3 = *a1;
  pxrInternal__aapl__pxrReserved__::GfDualQuath::Normalize(&v3, a2);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::Normalize(unsigned __int16 *a1, unsigned __int16 a2)
{
  Length = pxrInternal__aapl__pxrReserved__::GfDualQuath::GetLength(a1);
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[Length];
  if (v5 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2])
  {
    v6 = 1.0 / v5;
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

    sub_29A130000(a1, v7);
    sub_29A130000(a1 + 4, v7);
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a1, a1 + 4)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[7]]);
    if (v8 == 0.0)
    {
      v9 = HIWORD(LODWORD(v8));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
    {
      v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
    }

    v11 = *a1;
    v11 = *sub_29A130000(&v11, v9);
    sub_29A1300A0(a1 + 4, &v11);
  }

  else
  {
    *a1 = 0x3C00000000000000;
    *(a1 + 1) = 0;
  }

  return Length;
}

unsigned __int16 *sub_29A130000(unsigned __int16 *a1, unsigned __int16 a2)
{
  v3 = a2;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  a1[3] = v5;
  sub_29A130AC8(a1, pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3]);
  return a1;
}

unsigned __int16 *sub_29A1300A0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  a1[3] = v5;
  sub_29A130BFC(a1, a2);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::GetInverse(pxrInternal__aapl__pxrReserved__::GfDualQuath *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(this, this)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 3)] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 3)]);
  if (v2 == 0.0)
  {
    LOWORD(v3) = 0;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23])
  {
    v3 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23] + (((LODWORD(v2) & 0x7FFFFF) + ((LODWORD(v2) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v3) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v2));
  }

  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  if (v4 <= 0.0)
  {
    return 0x3C00000000000000;
  }

  v5 = 1.0 / v4;
  if (v5 == 0.0)
  {
    LOWORD(v6) = 0;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23])
  {
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v5) >> 23] + (((LODWORD(v5) & 0x7FFFFF) + ((LODWORD(v5) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v5));
  }

  *&v19 = pxrInternal__aapl__pxrReserved__::GfDualQuath::GetConjugate(this);
  *(&v19 + 1) = v8;
  v9 = v6;
  v7 = sub_29A1303F0(&v19, v6);
  v11 = v10;
  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9];
  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(this, this + 4)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 3)] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 7)]);
  if (v13 == 0.0)
  {
    v14 = HIWORD(LODWORD(v13));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v13) >> 23])
  {
    v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v13) >> 23] + (((LODWORD(v13) & 0x7FFFFF) + ((LODWORD(v13) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v14) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v13));
  }

  v15 = v12 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v14];
  if (v15 == 0.0)
  {
    v16 = HIWORD(LODWORD(v15));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v15) >> 23])
  {
    v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v15) >> 23] + (((LODWORD(v15) & 0x7FFFFF) + ((LODWORD(v15) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v16) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v15));
  }

  *&v19 = v7;
  v18 = *sub_29A130000(&v19, v16);
  *&v19 = v11;
  sub_29A1300A0(&v19, &v18);
  return v7;
}

uint64_t sub_29A1303F0(__int128 *a1, unsigned __int16 a2)
{
  v4 = *a1;
  sub_29A130000(&v4, a2);
  sub_29A130000(&v4 + 4, a2);
  return v4;
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfDualQuath::SetTranslation(uint64_t a1, int *a2)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  v3 = sub_29A130AC8(&v5, 0.5);
  v7 = *v3 | (v3[2] << 32);
  result = pxrInternal__aapl__pxrReserved__::GfQuath::operator*=(&v7, a1);
  *(a1 + 8) = *result;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::GetTranslation(pxrInternal__aapl__pxrReserved__::GfDualQuath *this)
{
  v2 = *(this + 7);
  v3 = *(this + 3);
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v2];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*this];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
  v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 4)];
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 5)];
  v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 2)];
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 6)];
  v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 1)];
  v12 = (((v4 * v5) - (v6 * v7)) + ((v8 * v9) - (v10 * v11))) * -2.0;
  if (v12 == 0.0)
  {
    v13 = HIWORD(LODWORD(v12));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23])
  {
    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v12) >> 23] + (((LODWORD(v12) & 0x7FFFFF) + ((LODWORD(v12) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v13) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v12));
    v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v2];
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 1)];
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 5)];
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 6)];
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*this];
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 4)];
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 2)];
  }

  v14 = (((v4 * v11) - (v6 * v8)) + ((v10 * v5) - (v7 * v9))) * -2.0;
  if (v14 == 0.0)
  {
    v15 = HIWORD(LODWORD(v14));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23])
  {
    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v14) >> 23] + (((LODWORD(v14) & 0x7FFFFF) + ((LODWORD(v14) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v15) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v14));
    v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v2];
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 2)];
    v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3];
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 6)];
    v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 4)];
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 1)];
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 5)];
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*this];
  }

  v16 = (((v4 * v9) - (v6 * v10)) + ((v7 * v11) - (v8 * v5))) * -2.0;
  if (v16 == 0.0)
  {
    v17 = HIWORD(LODWORD(v16));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v16) >> 23])
  {
    v17 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v16) >> 23] + (((LODWORD(v16) & 0x7FFFFF) + ((LODWORD(v16) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v17 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v16));
  }

  return (v15 << 16) | (v17 << 32) | v13;
}

uint64_t *pxrInternal__aapl__pxrReserved__::GfDualQuath::operator*=(uint64_t *a1, unsigned __int16 *a2)
{
  v9 = *a1;
  v4 = *pxrInternal__aapl__pxrReserved__::GfQuath::operator*=(&v9, a2);
  v9 = *a1;
  v5 = *pxrInternal__aapl__pxrReserved__::GfQuath::operator*=(&v9, a2 + 4);
  v9 = a1[1];
  v8 = *pxrInternal__aapl__pxrReserved__::GfQuath::operator*=(&v9, a2);
  v9 = v5;
  v6 = *sub_29A130D48(&v9, &v8);
  *a1 = v4;
  a1[1] = v6;
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfDualQuath::Transform(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::GfQuath::Transform(a1, a2);
  Translation = pxrInternal__aapl__pxrReserved__::GfDualQuath::GetTranslation(a1);
  v7 = Translation;
  v8 = WORD2(Translation);
  v10 = WORD2(v3);
  v9 = v3;
  v5 = sub_29A130DE0(&v9, &v7);
  return *v5 | (v5[2] << 32);
}

uint64_t sub_29A13085C(unsigned __int16 *a1)
{
  v1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a1, a1)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]]);
  if (v1 == 0.0)
  {
    return 0;
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23])
  {
    return pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23] + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  return pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
}

_WORD *sub_29A1308E8(_WORD *a1, int *a2, int *a3)
{
  v5 = COERCE_UNSIGNED_INT(*a2);
  if (*a2)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23])
    {
      v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v5 >> 23] + (((v5 & 0x7FFFFF) + ((v5 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v6) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v5);
    }
  }

  else
  {
    v6 = v5 >> 16;
  }

  *a1 = v6;
  v7 = COERCE_UNSIGNED_INT(*a3);
  if (*a3)
  {
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v7 >> 23])
    {
      v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v7 >> 23] + (((v7 & 0x7FFFFF) + ((v7 >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v7);
    }
  }

  else
  {
    v8 = v7 >> 16;
  }

  a1[1] = v8;
  return a1;
}

uint64_t sub_29A1309A8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = ((pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2]) + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]])) + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]]);
  if (v2 == 0.0)
  {
    return HIWORD(LODWORD(v2));
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23])
  {
    return pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v2) >> 23] + (((LODWORD(v2) & 0x7FFFFF) + ((LODWORD(v2) >> 13) & 1) + 4095) >> 13);
  }

  return pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v2));
}

_WORD *sub_29A130A50(_WORD *a1, _WORD *a2, float *a3)
{
  *a1 = *a2;
  v4 = *a3;
  if (*a3 == 0.0)
  {
    v5 = v4 >> 16;
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[v4 >> 23] + (((v4 & 0x7FFFFF) + ((v4 >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(v4);
  }

  a1[1] = v5;
  return a1;
}

unsigned __int16 *sub_29A130AC8(unsigned __int16 *a1, double a2)
{
  v3 = a2;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] * v3;
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * v3;
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

  a1[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] * v3;
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[2] = v9;
  return a1;
}

unsigned __int16 *sub_29A130BFC(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
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

  a1[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[2] = v9;
  return a1;
}

unsigned __int16 *sub_29A130D48(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  a1[3] = v5;
  sub_29A130DE0(a1, a2);
  return a1;
}

unsigned __int16 *sub_29A130DE0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  *a1 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
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

  a1[1] = v7;
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  a1[2] = v9;
  return a1;
}

void sub_29A130F50()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040758, 0, "GfFrustum::Orthographic", 0);

  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2040758, 1, "GfFrustum::Perspective", 0);
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  *this = 0;
  *(this + 1) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 56) = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 72) = _Q0;
  result = 1.0;
  *(this + 88) = xmmword_29B43C930;
  *(this + 13) = 0x4014000000000000;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 56) = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 72) = _Q0;
  result = 1.0;
  *(this + 88) = xmmword_29B43C930;
  *(this + 13) = 0x4014000000000000;
  *(this + 28) = 1;
  *(this + 15) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(uint64_t result, __int128 *a2, __int128 *a3, __int128 *a4, _OWORD *a5, int a6, double a7)
{
  v7 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v7;
  v8 = *a3;
  *(result + 40) = a3[1];
  *(result + 24) = v8;
  v9 = *a4;
  *(result + 72) = a4[1];
  *(result + 56) = v9;
  *(result + 88) = *a5;
  *(result + 104) = a7;
  *(result + 112) = a6;
  *(result + 120) = 0;
  return result;
}

{
  v7 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v7;
  v8 = *a3;
  *(result + 40) = a3[1];
  *(result + 24) = v8;
  v9 = *a4;
  *(result + 72) = a4[1];
  *(result + 56) = v9;
  *(result + 88) = *a5;
  *(result + 104) = a7;
  *(result + 112) = a6;
  *(result + 120) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(uint64_t a1, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, __int128 *a3, _OWORD *a4, int a5, double a6)
{
  v7 = *a3;
  *(a1 + 72) = a3[1];
  *(a1 + 56) = v7;
  *(a1 + 88) = *a4;
  *(a1 + 104) = a6;
  *(a1 + 112) = a5;
  *(a1 + 120) = 0;
  pxrInternal__aapl__pxrReserved__::GfFrustum::SetPositionAndRotationFromMatrix(a1, a2);
  return a1;
}

{
  v7 = *a3;
  *(a1 + 72) = a3[1];
  *(a1 + 56) = v7;
  *(a1 + 88) = *a4;
  *(a1 + 104) = a6;
  *(a1 + 112) = a5;
  *(a1 + 120) = 0;
  pxrInternal__aapl__pxrReserved__::GfFrustum::SetPositionAndRotationFromMatrix(a1, a2);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::SetPositionAndRotationFromMatrix(pxrInternal__aapl__pxrReserved__::GfFrustum *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v3 = *(a2 + 5);
  v29 = *(a2 + 4);
  v30 = v3;
  v4 = *(a2 + 7);
  v31 = *(a2 + 6);
  v32 = v4;
  v5 = *(a2 + 1);
  v25 = *a2;
  v26 = v5;
  v6 = *(a2 + 3);
  v27 = *(a2 + 2);
  v28 = v6;
  if (pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetHandedness(&v25) != 1.0)
  {
    if ((atomic_load_explicit(&qword_2A173F200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A173F200))
    {
      __asm { FMOV            V1.2D, #1.0 }

      v17 = xmmword_29B435410;
      v18 = _Q1;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&xmmword_2A173F180, &v17);
      __cxa_guard_release(&qword_2A173F200);
    }

    v21 = xmmword_2A173F1C0;
    v22 = unk_2A173F1D0;
    v23 = xmmword_2A173F1E0;
    v24 = unk_2A173F1F0;
    v17 = xmmword_2A173F180;
    v18 = *algn_2A173F190;
    v19 = xmmword_2A173F1A0;
    v20 = unk_2A173F1B0;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v17, &v25);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::Orthonormalize(&v25, 1);
  *(this + 3) = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(&v25);
  *(this + 4) = v7;
  *(this + 5) = v9;
  *(this + 6) = v10;
  __swp(v8, this + 30);
  if (v8)
  {
    operator delete(v8);
  }

  v11 = v32;
  *this = v31;
  *(this + 2) = v11;
  __swp(v8, this + 30);
  if (v8)
  {
    operator delete(v8);
  }
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  v1 = *(this + 15);
  if (v1)
  {
    operator delete(v1);
  }
}

{
  v1 = *(this + 15);
  if (v1)
  {
    operator delete(v1);
  }
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::SetPerspective(pxrInternal__aapl__pxrReserved__::GfFrustum *this, double a2, int a3, double a4, double a5, double a6)
{
  *(this + 28) = 1;
  if (a4 == 0.0)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = a4;
  }

  v12 = tan(a2 * 0.5 * 0.0174532925);
  v13 = v12 / v10;
  if (a3)
  {
    v13 = v12;
    v12 = v12 * v10;
  }

  *(this + 7) = -v12;
  *(this + 8) = -v13;
  *(this + 9) = v12;
  *(this + 10) = v13;
  *(this + 11) = a5;
  *(this + 12) = a6;
  __swp(v11, this + 30);
  if (v11)
  {

    operator delete(v11);
  }
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(void *this)
{
  __swp(this, this + 30);
  if (this)
  {
    operator delete(this);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::GetPerspective(pxrInternal__aapl__pxrReserved__::GfFrustum *this, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *(this + 28);
  if (v5 == 1)
  {
    v13 = vsubq_f64(*(this + 72), *(this + 56));
    v11 = atan(vmuld_lane_f64(0.5, v13, 1));
    *a2 = v11 * 57.2957795 + v11 * 57.2957795;
    *a3 = v13.f64[0] / v13.f64[1];
    *a4 = *(this + 11);
    *a5 = *(this + 12);
  }

  return v5 == 1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::GetPerspective(pxrInternal__aapl__pxrReserved__::GfFrustum *this, int a2, double *a3, double *a4, double *a5, double *a6)
{
  v6 = *(this + 28);
  if (v6 == 1)
  {
    v12 = vsubq_f64(*(this + 72), *(this + 56));
    v13 = v12;
    if (a2)
    {
      v12.f64[0] = v12.f64[1];
    }

    v14 = atan(v12.f64[0] * 0.5);
    *a3 = v14 * 57.2957795 + v14 * 57.2957795;
    *a4 = v13.f64[0] / v13.f64[1];
    *a5 = *(this + 11);
    *a6 = *(this + 12);
  }

  return v6 == 1;
}

long double pxrInternal__aapl__pxrReserved__::GfFrustum::GetFOV(pxrInternal__aapl__pxrReserved__::GfFrustum *this, int a2)
{
  result = 0.0;
  if (*(this + 28) == 1)
  {
    v3 = *(this + 9) - *(this + 7);
    if (a2)
    {
      v3 = *(this + 10) - *(this + 8);
    }

    v4 = atan(v3 * 0.5);
    return v4 * 57.2957795 + v4 * 57.2957795;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::SetOrthographic(void *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(this + 28) = 0;
  *(this + 7) = a2;
  *(this + 8) = a4;
  *(this + 9) = a3;
  *(this + 10) = a5;
  *(this + 11) = a6;
  *(this + 12) = a7;
  __swp(this, this + 30);
  if (this)
  {
    operator delete(this);
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::GetOrthographic(pxrInternal__aapl__pxrReserved__::GfFrustum *this, double *a2, double *a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = *(this + 28);
  if (!v7)
  {
    *a2 = *(this + 7);
    *a3 = *(this + 9);
    *a4 = *(this + 8);
    *a5 = *(this + 10);
    *a6 = *(this + 11);
    *a7 = *(this + 12);
  }

  return v7 == 0;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfFrustum::FitToSphere(uint64_t a1, float64x2_t *a2, double a3, double a4)
{
  if (*(a1 + 112))
  {
    v6 = *(a1 + 80) - *(a1 + 64);
    v7 = v6 != 0.0 && fabs((*(a1 + 72) - *(a1 + 56)) / v6) > 1.0;
    v10 = a1 + 8 * v7;
    v11 = *(v10 + 56);
    v12 = *(v10 + 72);
    if (v11 <= 0.0 && fmax(-v11, 0.0) > v12)
    {
      v12 = *(v10 + 56);
    }

    if (v12 >= 0.0)
    {
      if (v12 == 0.0)
      {
        v12 = 1.0;
      }
    }

    else
    {
      v12 = -v12;
    }

    v9 = 1.0 / v12 * a3 * sqrt(v12 * v12 + *(a1 + 88) * *(a1 + 88));
    *(a1 + 104) = v9;
    v8 = a3 + a4;
  }

  else
  {
    v8 = a3 + a4;
    *(a1 + 104) = v8;
    *(a1 + 56) = -a3;
    *(a1 + 64) = -a3;
    *(a1 + 72) = a3;
    *(a1 + 80) = a3;
    v9 = v8;
  }

  *(a1 + 88) = v9 - v8;
  *(a1 + 96) = v8 + v8 + v9 - v8;
  v18 = v9;
  v19 = vnegq_f64(0);
  v20 = 0xBFF0000000000000;
  v13.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((a1 + 24), v19.f64);
  v13.f64[1] = v15;
  v16 = a2[1].f64[0] - v18 * v14;
  result = vsubq_f64(*a2, vmulq_n_f64(v13, v18));
  *a1 = result;
  *(a1 + 16) = v16;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeAspectRatio(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  v1 = *(this + 10) - *(this + 8);
  if (v1 == 0.0)
  {
    return 0.0;
  }

  else
  {
    return fabs((*(this + 9) - *(this + 7)) / v1);
  }
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeViewDirection(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  v2 = vnegq_f64(0);
  v3 = 0xBFF0000000000000;
  return pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v2.f64);
}

pxrInternal__aapl__pxrReserved__::GfFrustum *pxrInternal__aapl__pxrReserved__::GfFrustum::Transform(pxrInternal__aapl__pxrReserved__::GfFrustum *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v93 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v99 = _Q0;
  __asm { FMOV            V0.2D, #1.0 }

  v100 = _Q0;
  v101 = xmmword_29B43C930;
  v94 = 0.0;
  Rotation = 1.0;
  v104 = 0;
  v102 = 5.0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v103 = *(this + 28);
  v10 = sub_29A12CECC(a2, this);
  v12 = v11;
  v70 = v10;
  v71 = v13;
  *&v93 = v10;
  *(&v93 + 1) = v13;
  v94 = v11;
  v90 = 0.0;
  v91 = 0;
  v92 = 0;
  v79 = vnegq_f64(0);
  v80 = -1.0;
  v90 = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v79.f64);
  v91 = v14;
  v92 = v15;
  v87 = 0.0;
  v88 = 0;
  v89 = 0;
  v79 = xmmword_29B432590;
  v80 = 0.0;
  v87 = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v79.f64);
  v88 = v16;
  v89 = v17;
  v18 = sub_29A131C60(a2, &v90);
  v20 = v19;
  v22 = v21;
  v23 = sub_29A131C60(a2, &v87);
  v25 = v24;
  v27 = v26;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v79, 1.0);
  v28 = sqrt(v22 * v22 + v18 * v18 + v20 * v20);
  v29 = 1.0 / fmax(sqrt(v27 * v27 + v23 * v23 + v25 * v25), 1.0e-10);
  v30 = v25 * v29;
  v31 = 1.0 / fmax(v28, 1.0e-10);
  v32 = v23 * v29;
  v33 = v18 * v31 * (v25 * v29) - v20 * v31 * (v23 * v29);
  v34 = v27 * v29;
  v35 = v20 * v31 * v34 - v22 * v31 * v30;
  v36 = v22 * v31 * v32 - v18 * v31 * v34;
  v37 = 1.0 / fmax(sqrt(v33 * v33 + v35 * v35 + v36 * v36), 1.0e-10);
  v79.f64[0] = v35 * v37;
  v79.f64[1] = v36 * v37;
  v80 = v33 * v37;
  v81 = v32;
  v82 = v30;
  v83 = v34;
  v84 = -(v18 * v31);
  v85 = -(v20 * v31);
  v86 = -(v22 * v31);
  Rotation = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(&v79);
  v96 = v38;
  v97 = v39;
  v98 = v40;
  v41 = v28 * *(this + (v28 > 0.0) + 11);
  *&v101 = v28 * *(this + (v28 <= 0.0) + 11);
  *(&v101 + 1) = v41;
  v102 = v28 * *(this + 13);
  v72 = *(this + 56);
  v73 = 0xBFF0000000000000;
  v42.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v72.f64);
  v44 = v43 + *(this + 2);
  v42.f64[1] = v45;
  v77 = vaddq_f64(v42, *this);
  v78 = v44;
  v72 = *(this + 72);
  v73 = 0xBFF0000000000000;
  v46.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v72.f64);
  v48 = v47 + *(this + 2);
  v46.f64[1] = v49;
  v75 = vaddq_f64(v46, *this);
  v76 = v48;
  v77.f64[0] = sub_29A12CECC(a2, v77.f64);
  v77.f64[1] = v50;
  v78 = v51;
  v52 = sub_29A12CECC(a2, v75.f64);
  v53.f64[0] = v70;
  v53.f64[1] = v71;
  v77 = vsubq_f64(v77, v53);
  v78 = v78 - v12;
  v75.f64[0] = v52 - v70;
  v75.f64[1] = v54 - v71;
  v76 = v55 - v12;
  v72.f64[0] = sub_29A131CC0(&Rotation);
  v72.f64[1] = v56;
  v73 = v57;
  v74 = v58;
  v77.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir(&v72, v77.f64);
  v77.f64[1] = v59;
  v78 = v60;
  v72.f64[0] = sub_29A131CC0(&Rotation);
  v72.f64[1] = v61;
  v73 = v62;
  v74 = v63;
  v67.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir(&v72, v75.f64);
  v75.f64[0] = v67.f64[0];
  v75.f64[1] = v65;
  v76 = v64;
  v66 = v77;
  v67.f64[1] = v65;
  if (*(this + 28) == 1)
  {
    v78 = 1.0 / v28 * v78;
    v66 = vmulq_n_f64(v77, 1.0 / v28);
    v77 = v66;
    v67 = vmulq_n_f64(v67, 1.0 / v28);
    v75 = v67;
    v76 = 1.0 / v28 * v64;
  }

  v68 = vcgtq_f64(v66, v67);
  v100 = vbslq_s8(v68, v66, v67);
  v99 = vbslq_s8(v68, v67, v66);
  sub_29A131D1C(this, &v93);
  if (v104)
  {
    operator delete(v104);
  }

  return this;
}

void sub_29A131BE0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeUpVector(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  v2 = xmmword_29B432590;
  v3 = 0;
  return pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), &v2);
}

double sub_29A131CC0(double *a1)
{
  result = *a1;
  v2 = result * result + a1[1] * a1[1] + a1[2] * a1[2];
  if (fabs(v2 + -1.0) >= 1.0e-10)
  {
    return result * (1.0 / fmax(sqrt(v2), 1.0e-10));
  }

  return result;
}

uint64_t sub_29A131D1C(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 112) = *(a2 + 28);
    v7 = *(a1 + 120);
    if (v7)
    {
      operator delete(v7);
    }

    v8 = *(a2 + 15);
    if (v8)
    {
      v9 = operator new(0xC0uLL);
      v10 = *v8;
      v11 = v8[1];
      v12 = v8[3];
      v9[2] = v8[2];
      v9[3] = v12;
      *v9 = v10;
      v9[1] = v11;
      v13 = v8[4];
      v14 = v8[5];
      v15 = v8[7];
      v9[6] = v8[6];
      v9[7] = v15;
      v9[4] = v13;
      v9[5] = v14;
      v16 = v8[8];
      v17 = v8[9];
      v18 = v8[11];
      v9[10] = v8[10];
      v9[11] = v18;
      v9[8] = v16;
      v9[9] = v17;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 120) = v9;
  }

  return a1;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeViewFrame(uint64_t a1, double *a2, double *a3, double *a4)
{
  v18 = xmmword_29B432590;
  v19 = 0;
  *a3 = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((a1 + 24), v18.f64);
  *(a3 + 1) = v8;
  *(a3 + 2) = v9;
  v18 = vnegq_f64(0);
  v19 = 0xBFF0000000000000;
  v10 = pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((a1 + 24), v18.f64);
  *a4 = v10;
  a4[1] = v11;
  a4[2] = v12;
  v14 = a3[1];
  v13 = a3[2];
  v15 = v11 * v13 - v12 * v14;
  v16 = v12 * *a3 - v10 * v13;
  result = v10 * v14 - v11 * *a3;
  *a2 = v15;
  a2[1] = v16;
  a2[2] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeLookAtPoint(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  v1 = *(this + 13);
  v3 = vnegq_f64(0);
  v4 = 0xBFF0000000000000;
  return *this + v1 * pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir((this + 24), v3.f64);
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeProjectionMatrix@<D0>(pxrInternal__aapl__pxrReserved__::GfFrustum *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  v4 = *(this + 11);
  v5 = *(this + 12);
  v6 = *(this + 56);
  v7 = *(this + 72);
  v8 = vsubq_f64(v7, v6);
  v9 = *(this + 28);
  *a2 = 2.0 / v8.f64[0];
  if (v9)
  {
    v10 = -(v4 + v5);
    *(a2 + 64) = vdivq_f64(vaddq_f64(v6, v7), v8);
    v11 = v4 * -2.0 * v5;
    *(a2 + 88) = 0xBFF0000000000000;
    *(a2 + 120) = 0;
  }

  else
  {
    *(a2 + 96) = vdivq_f64(vnegq_f64(vaddq_f64(v6, v7)), v8);
    v11 = -(v4 + v5);
    v10 = -2.0;
  }

  v12 = v5 - v4;
  *(a2 + 40) = 2.0 / v8.f64[1];
  *(a2 + 80) = v10 / v12;
  result = v11 / v12;
  *(a2 + 112) = result;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeCorners(pxrInternal__aapl__pxrReserved__::GfFrustum *this@<X0>, void *a2@<X8>)
{
  v16 = *(this + 11);
  v15 = *(this + 12);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_29A132378(a2, 8uLL);
  if (*(this + 28) == 1)
  {
    v18 = vmulq_n_f64(*(this + 56), v16);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v4 = vmulq_n_f64(*(this + 4), v16);
    v18 = vextq_s8(v4, v4, 8uLL);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v5 = v16 * *(this + 10);
    v18.f64[0] = v16 * *(this + 7);
    v18.f64[1] = v5;
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v18 = vmulq_n_f64(*(this + 72), v16);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v18 = vmulq_n_f64(*(this + 56), v15);
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v6 = vmulq_n_f64(*(this + 4), v15);
    v18 = vextq_s8(v6, v6, 8uLL);
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v7 = v15 * *(this + 10);
    v18.f64[0] = v15 * *(this + 7);
    v18.f64[1] = v7;
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v18 = vmulq_n_f64(*(this + 72), v15);
  }

  else
  {
    v18 = *(this + 56);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v18 = vextq_s8(*(this + 4), *(this + 4), 8uLL);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v8 = *(this + 10);
    v18.f64[0] = *(this + 7);
    v18.f64[1] = v8;
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v18 = *(this + 72);
    v19 = -v16;
    sub_29A132438(a2, &v18);
    v18 = *(this + 56);
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v18 = vextq_s8(*(this + 4), *(this + 4), 8uLL);
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v9 = *(this + 10);
    v18.f64[0] = *(this + 7);
    v18.f64[1] = v9;
    v19 = -v15;
    sub_29A132438(a2, &v18);
    v18 = *(this + 72);
  }

  v19 = -v15;
  sub_29A132438(a2, &v18);
  memset(v17, 0, sizeof(v17));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v18, this, this + 3);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v18.f64, 0, 0.0, v17);
  for (i = 0; i != 192; i += 24)
  {
    v11 = sub_29A12CECC(v17, (*a2 + i));
    v12 = *a2 + i;
    *v12 = v11;
    *(v12 + 8) = v13;
    *(v12 + 16) = v14;
  }
}

void sub_29A132314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_29A132378(uint64_t a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      sub_29A00C9A4();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = sub_29A012C48(a1, a2);
    v5 = &v4[v3];
    v7 = &v4[24 * v6];
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

void sub_29A132438(uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
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
    v16 = *(a1 + 8) - *a1;
    v17 = &v13[-v16];
    memcpy(&v13[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = (v5 + 24);
  }

  *(a1 + 8) = v7;
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeCornersAtDistance(pxrInternal__aapl__pxrReserved__::GfFrustum *this@<X0>, double a2@<D0>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_29A132378(a3, 4uLL);
  if (*(this + 28) == 1)
  {
    v15 = vmulq_n_f64(*(this + 56), a2);
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v5 = vmulq_n_f64(*(this + 4), a2);
    v15 = vextq_s8(v5, v5, 8uLL);
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v6 = *(this + 10) * a2;
    v15.f64[0] = *(this + 7) * a2;
    v15.f64[1] = v6;
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v15 = vmulq_n_f64(*(this + 72), a2);
  }

  else
  {
    v15 = *(this + 56);
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v15 = vextq_s8(*(this + 4), *(this + 4), 8uLL);
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v7 = *(this + 10);
    v15.f64[0] = *(this + 7);
    v15.f64[1] = v7;
    v16 = -a2;
    sub_29A132438(a3, &v15);
    v15 = *(this + 72);
  }

  v16 = -a2;
  sub_29A132438(a3, &v15);
  memset(v14, 0, sizeof(v14));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v15, this, this + 3);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v15.f64, 0, 0.0, v14);
  for (i = 0; i != 96; i += 24)
  {
    v9 = sub_29A12CECC(v14, (*a3 + i));
    v10 = *a3 + i;
    *v10 = v9;
    *(v10 + 8) = v11;
    *(v10 + 16) = v12;
  }
}

void sub_29A132708(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeNarrowedFrustum(uint64_t a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  __asm { FMOV            V1.2D, #1.0 }

  v9 = vaddq_f64(*a2, _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v11 = vaddq_f64(*(a1 + 56), vmulq_f64(vmulq_f64(v9, _Q1), vsubq_f64(*(a1 + 72), *(a1 + 56))));
  pxrInternal__aapl__pxrReserved__::GfFrustum::_ComputeNarrowedFrustumSub(a1, a3, a4, v11.f64[0], v11.f64[1]);
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::_ComputeNarrowedFrustumSub(__int128 *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>, float64_t a4@<D0>, float64_t a5@<D1>)
{
  v7 = sub_29A1340B0(a3, a1);
  v8 = *(a1 + 72);
  v9 = *(a1 + 56);
  __asm { FMOV            V3.2D, #0.5 }

  v15 = vmulq_f64(vmulq_f64(vsubq_f64(v8, v9), *a2), _Q3);
  v16.f64[0] = a4;
  v16.f64[1] = a5;
  v17 = vsubq_f64(v16, v15);
  *(v7 + 56) = vbslq_s8(vcgtq_f64(v9, v17), v9, v17);
  v18 = vaddq_f64(v16, v15);
  *(v7 + 72) = vbslq_s8(vcgtq_f64(v18, v8), v8, v18);
  __swp(v7, (v7 + 120));
  if (v7)
  {

    operator delete(v7);
  }
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeNarrowedFrustum(uint64_t a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v13, a1, (a1 + 24));
  v9 = sub_29A12CECC(&v13, a2);
  if (v11 >= 0.0)
  {
    *&v13 = "gf/frustum.cpp";
    *(&v13 + 1) = "ComputeNarrowedFrustum";
    v14 = 702;
    v15 = "GfFrustum pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeNarrowedFrustum(const GfVec3d &, const GfVec2d &) const";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v13, "Given worldPoint is behind or at the eye", v8, v9);
    sub_29A1340B0(a4, a1);
  }

  else
  {
    if (*(a1 + 112) == 1)
    {
      v12 = -1.0 / v11;
      v9 = v9 * v12;
      v10 = v10 * v12;
    }

    pxrInternal__aapl__pxrReserved__::GfFrustum::_ComputeNarrowedFrustumSub(a1, a3, a4, v9, v10);
  }
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeRay@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29A1329E8(*(a1 + 112), (a1 + 56), a2, v16, *(a1 + 88));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v20, a1, (a1 + 24));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v20, 0, 0.0, &v10);
  *&v20 = sub_29A12CECC(v10.f64, v16);
  *(&v20 + 1) = v5;
  v21 = v6;
  v8 = vaddq_f64(vaddq_f64(vmulq_n_f64(v10, v17), vmulq_n_f64(v12, v18)), vmulq_n_f64(v14, v19));
  v9 = v17 * v11 + v18 * v13 + v19 * v15;
  *&result = pxrInternal__aapl__pxrReserved__::GfRay::SetPointAndDirection(a3, &v20, &v8).n128_u64[0];
  return result;
}

double sub_29A1329E8@<D0>(int a1@<W0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  __asm { FMOV            V2.2D, #1.0 }

  v12 = vaddq_f64(*a3, _Q2);
  __asm { FMOV            V2.2D, #0.5 }

  v14 = vaddq_f64(*a2, vmulq_f64(vmulq_f64(v12, _Q2), vsubq_f64(a2[1], *a2)));
  if (a1 == 1)
  {
    v15 = 1.0 / fmax(sqrt(vaddvq_f64(vmulq_f64(v14, v14)) + 1.0), 1.0e-10);
    v16 = vmulq_n_f64(v14, v15);
    v17 = -v15;
    v14 = 0uLL;
    v18 = 0.0;
  }

  else
  {
    v16 = vnegq_f64(0);
    v18 = -a5;
    v17 = -1.0;
  }

  v24 = v5;
  v25 = v6;
  v22 = v14;
  v23 = v18;
  v20 = v16;
  v21 = v17;
  *&result = pxrInternal__aapl__pxrReserved__::GfRay::SetPointAndDirection(a4, &v22, &v20).n128_u64[0];
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::_ComputePickRayOffsetToNearPlane@<D0>(double *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1[11];
  v7 = v6 * a3[1].f64[0] + a2[1].f64[0];
  v20 = vaddq_f64(vmulq_n_f64(*a3, v6), *a2);
  v21 = v7;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v22, a1, a1 + 3);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(v22.f64, 0, 0.0, &v14);
  v20.f64[0] = sub_29A12CECC(v14.f64, v20.f64);
  v20.f64[1] = v8;
  v21 = v9;
  v10 = a3->f64[1];
  v11 = a3[1].f64[0];
  v12 = a3->f64[0] * v15 + v10 * v17 + v11 * v19;
  v22 = vaddq_f64(vaddq_f64(vmulq_n_f64(v14, a3->f64[0]), vmulq_n_f64(v16, v10)), vmulq_n_f64(v18, v11));
  v23 = v12;
  *&result = pxrInternal__aapl__pxrReserved__::GfRay::SetPointAndDirection(a4, &v20, &v22).n128_u64[0];
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeRay@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v25, a1, (a1 + 24));
  v6 = sub_29A12CECC(&v25, a2);
  if (*(a1 + 112) == 1)
  {
    v9 = 1.0 / fmax(sqrt(v8 * v8 + v6 * v6 + v7 * v7), 1.0e-10);
    v14 = v6 * v9;
    v13 = v7 * v9;
    v15 = v8 * v9;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v15 = -1.0;
    v14 = -0.0;
    v13 = -0.0;
  }

  v24[0] = v6;
  v24[1] = v7;
  v24[2] = 0.0;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v25, a1, (a1 + 24));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v25, 0, 0.0, &v18);
  *&v25 = sub_29A12CECC(v18.f64, v24);
  *(&v25 + 1) = v10;
  v26 = v11;
  v16 = vaddq_f64(vaddq_f64(vmulq_n_f64(v18, v14), vmulq_n_f64(v20, v13)), vmulq_n_f64(v22, v15));
  v17 = v14 * v19 + v13 * v21 + v15 * v23;
  *&result = pxrInternal__aapl__pxrReserved__::GfRay::SetPointAndDirection(a3, &v25, &v16).n128_u64[0];
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfFrustum::ComputePickRay@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v16, a1, (a1 + 24));
  v6 = sub_29A12CECC(v16.f64, a2);
  if (*(a1 + 112) == 1)
  {
    v9 = 1.0 / fmax(sqrt(v8 * v8 + v6 * v6 + v7 * v7), 1.0e-10);
    v10 = v6 * v9;
    v11 = v7 * v9;
    v12 = v8 * v9;
    v6 = 0.0;
    v7 = 0.0;
  }

  else
  {
    v12 = -1.0;
    v10 = -0.0;
    v11 = -0.0;
  }

  v16.f64[0] = v6;
  v16.f64[1] = v7;
  v17 = 0;
  v14.f64[0] = v10;
  v14.f64[1] = v11;
  v15 = v12;
  return pxrInternal__aapl__pxrReserved__::GfFrustum::_ComputePickRayOffsetToNearPlane(a1, &v16, &v14, a3);
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::Intersects(pxrInternal__aapl__pxrReserved__::GfFrustum *this, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2)
{
  if (*a2 > *(a2 + 3))
  {
    return 0;
  }

  v12 = v2;
  v13 = v3;
  if (*(a2 + 1) > *(a2 + 4) || *(a2 + 2) > *(a2 + 5))
  {
    return 0;
  }

  pxrInternal__aapl__pxrReserved__::GfFrustum::_CalculateFrustumPlanes(this);
  v7 = 0;
  v8 = atomic_load(this + 15);
  do
  {
    v9 = *(v8 + v7 + 16);
    v11[0] = *(v8 + v7);
    v11[1] = v9;
    pxrInternal__aapl__pxrReserved__::GfPlane::Transform(v11, (a2 + 176));
    result = pxrInternal__aapl__pxrReserved__::GfPlane::IntersectsPositiveHalfSpace(v11, a2);
    if (!result)
    {
      break;
    }

    v10 = v7 == 160;
    v7 += 32;
  }

  while (!v10);
  return result;
}

void pxrInternal__aapl__pxrReserved__::GfFrustum::_CalculateFrustumPlanes(pxrInternal__aapl__pxrReserved__::GfFrustum *this)
{
  if (!atomic_load(this + 15))
  {
    v3 = operator new(0xC0uLL);
    v4 = *(this + 12);
    v41 = *(this + 11);
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(&v60, this, this + 3);
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(&v60, 0, 0.0, &v52);
    if (*(this + 28) == 1)
    {
      v50 = 0uLL;
      v51 = 0.0;
      v48 = vmulq_n_f64(*(this + 56), v41);
      v49 = -v41;
      v46.f64[1] = v48.f64[1];
      v44.f64[0] = v48.f64[0];
      v45 = -v41;
      v5 = vmulq_n_f64(*(this + 72), v41);
      v47 = -v41;
      v44.f64[1] = v5.f64[1];
      v46.f64[0] = v5.f64[0];
      v42 = v5;
      v43 = -v41;
      v50.f64[0] = sub_29A12CECC(v52.f64, v50.f64);
      v50.f64[1] = v6;
      v51 = v7;
      v48.f64[0] = sub_29A12CECC(v52.f64, v48.f64);
      v48.f64[1] = v8;
      v49 = v9;
      v46.f64[0] = sub_29A12CECC(v52.f64, v46.f64);
      v46.f64[1] = v10;
      v47 = v11;
      v44.f64[0] = sub_29A12CECC(v52.f64, v44.f64);
      v44.f64[1] = v12;
      v45 = v13;
      v42.f64[0] = sub_29A12CECC(v52.f64, v42.f64);
      v42.f64[1] = v14;
      v43 = v15;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v50.f64, v48.f64, v44.f64);
      v16 = v61;
      *v3 = v60;
      *(v3 + 1) = v16;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v50.f64, v42.f64, v46.f64);
      v17 = v61;
      *(v3 + 2) = v60;
      *(v3 + 3) = v17;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v50.f64, v46.f64, v48.f64);
      v18 = v61;
      *(v3 + 4) = v60;
      *(v3 + 5) = v18;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v50.f64, v44.f64, v42.f64);
      v19 = v61;
      *(v3 + 6) = v60;
      *(v3 + 7) = v19;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v46.f64, v48.f64, v44.f64);
    }

    else
    {
      v20 = *(this + 8);
      v50.f64[0] = *(this + 7);
      v50.f64[1] = v20;
      v21 = *(this + 10);
      v48.f64[0] = *(this + 9);
      v48.f64[1] = v20;
      v51 = -v41;
      v49 = -v41;
      v46.f64[0] = v50.f64[0];
      v46.f64[1] = v21;
      v47 = -v41;
      v44.f64[0] = v48.f64[0];
      v44.f64[1] = v21;
      v45 = -v41;
      v50.f64[0] = sub_29A12CECC(v52.f64, v50.f64);
      v50.f64[1] = v22;
      v51 = v23;
      v48.f64[0] = sub_29A12CECC(v52.f64, v48.f64);
      v48.f64[1] = v24;
      v49 = v25;
      v46.f64[0] = sub_29A12CECC(v52.f64, v46.f64);
      v46.f64[1] = v26;
      v47 = v27;
      v44.f64[0] = sub_29A12CECC(v52.f64, v44.f64);
      v44.f64[1] = v28;
      v45 = v29;
      v30 = *&v53 * -0.0 + *&v55 * -0.0 - *&v57;
      v40 = vsubq_f64(vsubq_f64(vmulq_f64(v52, vnegq_f64(0)), vmulq_f64(v54, 0)), v56);
      v42 = vaddq_f64(v40, v46);
      v43 = v30 + v47;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v42.f64, v46.f64, v50.f64);
      v31 = v61;
      *v3 = v60;
      *(v3 + 1) = v31;
      v42 = vaddq_f64(v40, v48);
      v43 = v30 + v49;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v42.f64, v48.f64, v44.f64);
      v32 = v61;
      *(v3 + 2) = v60;
      *(v3 + 3) = v32;
      v42 = vaddq_f64(v40, v50);
      v43 = v30 + v51;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v42.f64, v50.f64, v48.f64);
      v33 = v61;
      *(v3 + 4) = v60;
      *(v3 + 5) = v33;
      v42 = vaddq_f64(v40, v44);
      v43 = v30 + v45;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v42.f64, v44.f64, v46.f64);
      v34 = v61;
      *(v3 + 6) = v60;
      *(v3 + 7) = v34;
      pxrInternal__aapl__pxrReserved__::GfPlane::Set(&v60, v48.f64, v50.f64, v46.f64);
    }

    v35 = v61;
    *(v3 + 8) = v60;
    *(v3 + 9) = v35;
    v36 = 0;
    v37 = *(v3 + 18);
    v38 = *(v3 + 8);
    *&v35 = -(v4 - v41 + *(v3 + 19));
    v39 = 1.0 / fmax(sqrt(vaddvq_f64(vmulq_f64(v38, v38)) + v37 * v37), 1.0e-10);
    *(v3 + 10) = vmulq_n_f64(vnegq_f64(v38), v39);
    *(v3 + 22) = -(v37 * v39);
    *(v3 + 23) = v35;
    atomic_compare_exchange_strong(this + 15, &v36, v3);
    if (v36)
    {
      operator delete(v3);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::Intersects(unint64_t *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::_CalculateFrustumPlanes(a1);
  v4 = atomic_load(a1 + 15);
  v5 = 160;
  do
  {
    v6 = vmulq_f64(*(v4 + 8), *(a2 + 8));
    v7 = *v4 * *a2 + v6.f64[0] + v6.f64[1] - *(v4 + 24);
    v8 = v7 < 0.0 || v5 == 0;
    v5 -= 32;
    v4 += 32;
  }

  while (!v8);
  return v7 >= 0.0;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFrustum::_SegmentIntersects(uint64_t a1, double *a2, int a3, double *a4, int a5)
{
  if ((a5 | a3) != 0x3F)
  {
    return 0;
  }

  v5 = 1;
  if (a3 != 63 && a5 != 63)
  {
    v6 = 0;
    v7 = *a4 - *a2;
    v11 = atomic_load((a1 + 120));
    v13 = (v11 + 16);
    v14 = 1.0;
    v15 = 0.0;
    while (1)
    {
      v16 = (1 << v6) & a3;
      if (v16 != ((1 << v6) & a5))
      {
        v8 = a4[1] - a2[1];
        v10 = a4[2] - a2[2];
        v12 = *a2;
        v9 = a2[1];
        v17 = -(*a2 * *(v13 - 2) + v9 * *(v13 - 1) + a2[2] * *v13 - v13[1]) / (v7 * *(v13 - 2) + v8 * *(v13 - 1) + v10 * *v13);
        if (v16)
        {
          if (v17 < v14)
          {
            v14 = -(v12 * *(v13 - 2) + v9 * *(v13 - 1) + a2[2] * *v13 - v13[1]) / (v7 * *(v13 - 2) + v8 * *(v13 - 1) + v10 * *v13);
          }
        }

        else if (v17 > v15)
        {
          v15 = -(v12 * *(v13 - 2) + v9 * *(v13 - 1) + a2[2] * *v13 - v13[1]) / (v7 * *(v13 - 2) + v8 * *(v13 - 1) + v10 * *v13);
        }

        if (v15 > v14)
        {
          break;
        }
      }

      ++v6;
      v13 += 4;
      if (v6 == 6)
      {
        return 1;
      }
    }

    return 0;
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFrustum::Intersects(unint64_t *a1, float64x2_t *a2, float64x2_t *a3)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::_CalculateFrustumPlanes(a1);
  v6 = atomic_load(a1 + 15);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = a2[1].f64[0];
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = (v6 + 32);
  v13 = (v6 + 40);
  v14 = (v6 + 48);
  v15 = (v6 + 56);
  v27.f64[0] = *(v6 + 64);
  v30.f64[0] = *(v6 + 72);
  v31.f64[0] = *(v6 + 80);
  v33.f64[0] = *(v6 + 88);
  v16 = (v6 + 96);
  v17 = (v6 + 104);
  v18 = (v6 + 112);
  v19 = (v6 + 120);
  v26.f64[0] = *(v6 + 128);
  v28.f64[0] = *(v6 + 136);
  v32.f64[0] = *(v6 + 144);
  v34.f64[0] = *(v6 + 152);
  v20 = *v6 * a2->f64[0] + vmuld_lane_f64(v8, *a2, 1) + v9 * v11 - v10;
  v21 = *(v6 + 160);
  v22 = *(v6 + 168);
  v23 = *(v6 + 176);
  v24 = *(v6 + 184);
  v25 = v21 * a2->f64[0] + vmuld_lane_f64(v22, *a2, 1) + v9 * v23 - v24 >= 0.0;
  v26.f64[1] = *v17;
  v27.f64[1] = *v13;
  v28.f64[1] = *v16;
  v29 = vextq_s8(*a2, *a2, 8uLL);
  v30.f64[1] = *v12;
  v31.f64[1] = *v14;
  v32.f64[1] = *v18;
  v33.f64[1] = *v15;
  v34.f64[1] = *v19;
  v35 = vorr_s8(vand_s8(vmovn_s64(vcgezq_f64(vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(*a2, v27), vmulq_f64(v29, v30)), vmulq_n_f64(v31, v9)), v33))), 0x200000004), vand_s8(vmovn_s64(vcgezq_f64(vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(*a2, v26), vmulq_f64(v29, v28)), vmulq_n_f64(v32, v9)), v34))), 0x800000010));
  if (v20 < 0.0)
  {
    v36 = v35.i32[0] | v35.i32[1] | (32 * v25);
  }

  else
  {
    v36 = (v35.i32[0] | v35.i32[1] | (32 * v25)) + 1;
  }

  v37 = a3[1].f64[0];
  v38 = *a3;
  v39 = v7 * a3->f64[0] + vmuld_lane_f64(v8, *a3, 1) + v11 * v37 - v10;
  v40 = vextq_s8(v38, v38, 8uLL);
  v41 = vorr_s8(vand_s8(vmovn_s64(vcgezq_f64(vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v27, v38), vmulq_f64(v30, v40)), vmulq_n_f64(v31, v37)), v33))), 0x200000004), vand_s8(vmovn_s64(vcgezq_f64(vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v26, v38), vmulq_f64(v28, v40)), vmulq_n_f64(v32, v37)), v34))), 0x800000010));
  v42 = v41.i32[0] | v41.i32[1] | (32 * (v21 * a3->f64[0] + vmuld_lane_f64(v22, *a3, 1) + v23 * v37 - v24 >= 0.0));
  if (v39 < 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = v42 + 1;
  }

  return pxrInternal__aapl__pxrReserved__::GfFrustum::_SegmentIntersects(a1, a2->f64, v36, a3->f64, v43);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFrustum::Intersects(unint64_t *a1, double *a2, double *a3, double *a4)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::_CalculateFrustumPlanes(a1);
  v8 = atomic_load(a1 + 15);
  v9 = a2[1];
  v10 = v8[1];
  v11 = a2[2];
  v12 = v8[2];
  v13 = v8[3];
  v14 = v8[4];
  v15 = v8[5];
  v16 = v8[6];
  v17 = v8[7];
  v18 = v8[8];
  v19 = v8[9];
  v20 = v8[10];
  v21 = v8[11];
  v22 = v8[12];
  v23 = v8[13];
  v24 = v8[14];
  v25 = v8[15];
  v26 = (*a2 * *v8 + v9 * v10 + v11 * v12 - v13 >= 0.0) | (2 * (*a2 * v14 + v9 * v15 + v11 * v16 - v17 >= 0.0)) | (4 * (*a2 * v18 + v9 * v19 + v11 * v20 - v21 >= 0.0)) | (8 * (*a2 * v22 + v9 * v23 + v11 * v24 - v25 >= 0.0));
  v27 = v8[16];
  v28 = v8[17];
  v29 = v8[18];
  v30 = v8[19];
  v31 = *a2 * v27 + v9 * v28 + v11 * v29 - v30;
  v32 = v8[20];
  v33 = v8[21];
  v34 = *a2 * v32 + v9 * v33;
  v35 = v8[22];
  v36 = v8[23];
  v37 = v34 + v11 * v35 - v36;
  v38 = v26 | (16 * (v31 >= 0.0)) | (32 * (v37 >= 0.0));
  v39 = a3[1];
  v40 = a3[2];
  v41 = v27 * *a3 + v28 * v39 + v29 * v40 - v30;
  v42 = v32 * *a3 + v33 * v39 + v35 * v40 - v36;
  v43 = (*v8 * *a3 + v10 * v39 + v12 * v40 - v13 >= 0.0) | (2 * (v14 * *a3 + v15 * v39 + v16 * v40 - v17 >= 0.0)) | (4 * (v18 * *a3 + v19 * v39 + v20 * v40 - v21 >= 0.0)) | (8 * (v22 * *a3 + v23 * v39 + v24 * v40 - v25 >= 0.0)) | (16 * (v41 >= 0.0)) | (32 * (v42 >= 0.0));
  v44 = a4[1];
  v45 = *v8 * *a4 + v10 * v44;
  v46 = a4[2];
  v47 = v27 * *a4 + v28 * v44 + v29 * v46 - v30;
  v48 = v32 * *a4 + v33 * v44 + v35 * v46 - v36;
  v49 = (v45 + v12 * v46 - v13 >= 0.0) | (2 * (v14 * *a4 + v15 * v44 + v16 * v46 - v17 >= 0.0)) | (4 * (v18 * *a4 + v19 * v44 + v20 * v46 - v21 >= 0.0)) | (8 * (v22 * *a4 + v23 * v44 + v24 * v46 - v25 >= 0.0)) | (16 * (v47 >= 0.0)) | (32 * (v48 >= 0.0));
  if ((v43 | v38 | v49) != 0x3F)
  {
    return 0;
  }

  result = 1;
  if (v38 != 63 && v43 != 63 && v49 != 63)
  {
    if (pxrInternal__aapl__pxrReserved__::GfFrustum::_SegmentIntersects(a1, a2, v38, a3, v43) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::GfFrustum::_SegmentIntersects(a1, a3, v43, a4, v49) & 1) != 0 || (pxrInternal__aapl__pxrReserved__::GfFrustum::_SegmentIntersects(a1, a4, v49, a2, v38))
    {
      return 1;
    }

    v51 = 0;
    v52 = v31 < 0.0;
    if (v41 < 0.0)
    {
      v52 = 1;
    }

    if (v47 < 0.0)
    {
      v52 = 1;
    }

    if (v37 < 0.0)
    {
      v52 = 1;
    }

    if (v42 < 0.0)
    {
      v52 = 1;
    }

    if (v48 < 0.0)
    {
      v52 = 1;
    }

    v53 = !v52;
    while (1)
    {
      v59 = 0uLL;
      if (v51 == 2)
      {
        v59.f64[0] = 1.0;
      }

      else
      {
        if (v51 != 1)
        {
          if (v51)
          {
            v59.f64[0] = 1.0;
          }

          else
          {
            v59.f64[0] = -1.0;
          }

          v54 = -1.0;
          goto LABEL_31;
        }

        v59.f64[0] = -1.0;
      }

      v54 = 1.0;
LABEL_31:
      v59.f64[1] = v54;
      pxrInternal__aapl__pxrReserved__::GfFrustum::ComputePickRay(a1, &v59, v58);
      v57 = 0;
      result = pxrInternal__aapl__pxrReserved__::GfRay::Intersect(v58, a2, a3, a4, &v57, 0, 0, INFINITY);
      if (!result)
      {
        v55 = v51++ > 2;
        v56 = v55 ? 1 : v53;
        if ((v56 & 1) == 0)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFrustum::IntersectsViewVolume(pxrInternal__aapl__pxrReserved__::GfFrustum *this, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3)
{
  v65 = *MEMORY[0x29EDCA608];
  v3 = *(this + 1);
  v34[0] = *this;
  v34[1] = v3;
  v4 = *(this + 3);
  v35 = *(this + 2);
  v36 = 0x3FF0000000000000;
  v37 = v34[0];
  v38 = v3;
  v5 = *(this + 4);
  v39 = *(this + 5);
  v40 = 0x3FF0000000000000;
  v41 = v34[0];
  v42 = v5;
  v43 = v35;
  v44 = 0x3FF0000000000000;
  v45 = v34[0];
  v46 = v5;
  v47 = v39;
  v48 = 0x3FF0000000000000;
  v49 = v4;
  v50 = v3;
  v51 = v35;
  v52 = 0x3FF0000000000000;
  v53 = v4;
  v54 = v3;
  v55 = v39;
  v56 = 0x3FF0000000000000;
  v57 = v4;
  v58 = v5;
  v59 = v35;
  v60 = 0x3FF0000000000000;
  v61 = v4;
  v62 = v5;
  v63 = v39;
  v64 = 0x3FF0000000000000;
  v6 = *(this + 8);
  v30 = *(this + 7);
  v31 = v6;
  v7 = *(this + 10);
  v32 = *(this + 9);
  *v33 = v7;
  v8 = *(this + 4);
  v26 = *(this + 3);
  v27 = v8;
  v9 = *(this + 6);
  v28 = *(this + 5);
  v29 = v9;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v26, a2);
  v10 = 0;
  v11 = 0uLL;
  do
  {
    v12 = &v34[v10];
    v10 += 16;
    v66 = vld4q_f64(v12);
    v12 += 8;
    v67 = vld4q_f64(v12);
    v13 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v66.val[0], *&v26), vmulq_n_f64(v66.val[1], *&v28)), vmulq_n_f64(v66.val[2], *&v30)), vmulq_n_f64(v66.val[3], *&v32));
    v14 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v67.val[0], *&v26), vmulq_n_f64(v67.val[1], *&v28)), vmulq_n_f64(v67.val[2], *&v30)), vmulq_n_f64(v67.val[3], *&v32));
    v15 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v66.val[0], *(&v26 + 1)), vmulq_n_f64(v66.val[1], *(&v28 + 1))), vmulq_n_f64(v66.val[2], *(&v30 + 1))), vmulq_n_f64(v66.val[3], *(&v32 + 1)));
    v16 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v67.val[0], *(&v26 + 1)), vmulq_n_f64(v67.val[1], *(&v28 + 1))), vmulq_n_f64(v67.val[2], *(&v30 + 1))), vmulq_n_f64(v67.val[3], *(&v32 + 1)));
    v17 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v66.val[0], *&v27), vmulq_n_f64(v66.val[1], *&v29)), vmulq_n_f64(v66.val[2], *&v31)), vmulq_n_f64(v66.val[3], v33[0]));
    v18 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v67.val[0], *&v27), vmulq_n_f64(v67.val[1], *&v29)), vmulq_n_f64(v67.val[2], *&v31)), vmulq_n_f64(v67.val[3], v33[0]));
    v19 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v67.val[0], *(&v27 + 1)), vmulq_n_f64(v67.val[1], *(&v29 + 1))), vmulq_n_f64(v67.val[2], *(&v31 + 1))), vmulq_n_f64(v67.val[3], v33[1]));
    v20 = vaddq_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v66.val[0], *(&v27 + 1)), vmulq_n_f64(v66.val[1], *(&v29 + 1))), vmulq_n_f64(v66.val[2], *(&v31 + 1))), vmulq_n_f64(v66.val[3], v33[1]));
    v21 = vnegq_f64(v19);
    v22 = vnegq_f64(v20);
    v23.i64[0] = 0x200000002;
    v23.i64[1] = 0x200000002;
    v11 = vorrq_s8(vsubq_s32(vorrq_s8(vshlq_n_s32(vsubq_s32(vorrq_s8(vshlq_n_s32(vsubq_s32(vandq_s8(vuzp1q_s32(vcgtq_f64(v20, v13), vcgtq_f64(v19, v14)), v23), vuzp1q_s32(vcgtq_f64(v13, v22), vcgtq_f64(v14, v21))), 2uLL), vandq_s8(vuzp1q_s32(vcgtq_f64(v20, v15), vcgtq_f64(v19, v16)), v23)), vuzp1q_s32(vcgtq_f64(v15, v22), vcgtq_f64(v16, v21))), 2uLL), vandq_s8(vuzp1q_s32(vcgtq_f64(v20, v17), vcgtq_f64(v19, v18)), v23)), vuzp1q_s32(vcgtq_f64(v17, v22), vcgtq_f64(v18, v21))), v11);
  }

  while (v10 != 32);
  v24 = vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  return (v24.i32[0] | v24.i32[1]) == 63;
}

void sub_29A134094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29A1340B0(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  v4 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v4;
  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 120) = 0;
  v6 = atomic_load(a2 + 15);
  if (v6)
  {
    v7 = operator new(0xC0uLL);
    v8 = v6[3];
    v10 = *v6;
    v9 = v6[1];
    v7[2] = v6[2];
    v7[3] = v8;
    *v7 = v10;
    v7[1] = v9;
    v11 = v6[7];
    v13 = v6[4];
    v12 = v6[5];
    v7[6] = v6[6];
    v7[7] = v11;
    v7[4] = v13;
    v7[5] = v12;
    v14 = v6[11];
    v16 = v6[8];
    v15 = v6[9];
    v7[10] = v6[10];
    v7[11] = v14;
    v7[8] = v16;
    v7[9] = v15;
    atomic_store(v7, (a1 + 120));
  }

  return a1;
}

float pxrInternal__aapl__pxrReserved__::GfApplyGamma(float *a1, long double a2)
{
  v4 = pow(*a1, a2);
  pow(a1[1], a2);
  pow(a1[2], a2);
  return v4;
}

{
  v4 = pow(*a1, a2);
  pow(a1[1], a2);
  pow(a1[2], a2);
  return v4;
}

double pxrInternal__aapl__pxrReserved__::GfApplyGamma(long double *a1, long double a2)
{
  v4 = pow(*a1, a2);
  pow(a1[1], a2);
  pow(a1[2], a2);
  return v4;
}

{
  v4 = pow(*a1, a2);
  pow(a1[1], a2);
  pow(a1[2], a2);
  return v4;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfApplyGamma(unsigned __int16 *a1, long double a2)
{
  v4 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1], a2);
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  v6 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]], a2);
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

  v8 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]], a2);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  return (v7 << 16) | (v9 << 32) | v5;
}

{
  v4 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1], a2);
  if (v4 == 0.0)
  {
    v5 = HIWORD(LODWORD(v4));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23])
  {
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v4) >> 23] + (((LODWORD(v4) & 0x7FFFFF) + ((LODWORD(v4) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v5) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v4));
  }

  v6 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]], a2);
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

  v8 = pow(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]], a2);
  if (v8 == 0.0)
  {
    v9 = HIWORD(LODWORD(v8));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23])
  {
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v8) >> 23] + (((LODWORD(v8) & 0x7FFFFF) + ((LODWORD(v8) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v9) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v8));
  }

  return (v9 << 32) | (a1[3] << 48) | (v7 << 16) | v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfApplyGamma(pxrInternal__aapl__pxrReserved__ *this, const unsigned __int8 *a2, long double a3)
{
  v3 = a3;
  LOBYTE(a3) = *this;
  return (pow(*&a3 / 255.0, v3) * 255.0);
}

float pxrInternal__aapl__pxrReserved__::GfConvertLinearToDisplay(float *a1)
{
  v2 = pow(*a1, 0.454545455);
  pow(a1[1], 0.454545455);
  pow(a1[2], 0.454545455);
  return v2;
}

{
  v2 = pow(*a1, 0.454545455);
  pow(a1[1], 0.454545455);
  pow(a1[2], 0.454545455);
  return v2;
}

double pxrInternal__aapl__pxrReserved__::GfConvertLinearToDisplay(long double *a1)
{
  v2 = pow(*a1, 0.454545455);
  pow(a1[1], 0.454545455);
  pow(a1[2], 0.454545455);
  return v2;
}

{
  v2 = pow(*a1, 0.454545455);
  pow(a1[1], 0.454545455);
  pow(a1[2], 0.454545455);
  return v2;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfConvertLinearToDisplay(unsigned __int16 *a1)
{
  return pxrInternal__aapl__pxrReserved__::GfApplyGamma(a1, 0.454545455);
}

{
  return pxrInternal__aapl__pxrReserved__::GfApplyGamma(a1, 0.454545455);
}

float pxrInternal__aapl__pxrReserved__::GfConvertDisplayToLinear(float *a1)
{
  v2 = pow(*a1, 2.2);
  pow(a1[1], 2.2);
  pow(a1[2], 2.2);
  return v2;
}

{
  v2 = pow(*a1, 2.2);
  pow(a1[1], 2.2);
  pow(a1[2], 2.2);
  return v2;
}

double pxrInternal__aapl__pxrReserved__::GfConvertDisplayToLinear(long double *a1)
{
  v2 = pow(*a1, 2.2);
  pow(a1[1], 2.2);
  pow(a1[2], 2.2);
  return v2;
}

{
  v2 = pow(*a1, 2.2);
  pow(a1[1], 2.2);
  pow(a1[2], 2.2);
  return v2;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfConvertDisplayToLinear(unsigned __int16 *a1)
{
  return pxrInternal__aapl__pxrReserved__::GfApplyGamma(a1, 2.2);
}

{
  return pxrInternal__aapl__pxrReserved__::GfApplyGamma(a1, 2.2);
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfGetHomogenized(float32x2_t *a1)
{
  v1 = a1[1].f32[1];
  if (v1 == 0.0)
  {
    v1 = 1.0;
  }

  return vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a1), 1.0 / v1));
}

float pxrInternal__aapl__pxrReserved__::GfHomogeneousCross(float32x2_t *a1, float32x2_t *a2)
{
  pxrInternal__aapl__pxrReserved__::GfGetHomogenized(a1);
  v4 = v3;
  v6 = v5;
  pxrInternal__aapl__pxrReserved__::GfGetHomogenized(a2);
  return (v4 * v7) - (v6 * v8);
}

double pxrInternal__aapl__pxrReserved__::GfGetHomogenized(double *a1)
{
  v1 = a1[3];
  if (v1 == 0.0)
  {
    v1 = 1.0;
  }

  return *a1 * (1.0 / v1);
}

double pxrInternal__aapl__pxrReserved__::GfHomogeneousCross(double *a1, double *a2)
{
  v2 = a1[3];
  v3 = 1.0;
  if (v2 == 0.0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 1.0 / v2;
  }

  v5 = a2[3];
  if (v5 != 0.0)
  {
    v3 = 1.0 / v5;
  }

  return a1[1] * v4 * (a2[2] * v3) - a1[2] * v4 * (a2[1] * v3);
}

float pxrInternal__aapl__pxrReserved__::pxr_half::half::overflow(pxrInternal__aapl__pxrReserved__::pxr_half::half *this)
{
  v3 = 1.0e10;
  v1 = 10;
  do
  {
    v3 = v3 * v3;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(pxrInternal__aapl__pxrReserved__::pxr_half::half *this)
{
  v1 = (this >> 16) & 0x8000;
  v2 = (this >> 23);
  v3 = this & 0x7FFFFF;
  v4 = v2 - 112;
  if (v2 > 0x70)
  {
    if (v2 == 255)
    {
      v6 = (v3 < 0x2000) | (v3 >> 13) | v1 | 0x7C00;
      LOWORD(v1) = v1 | 0x7C00;
      if (v3)
      {
        LOWORD(v1) = v6;
      }
    }

    else
    {
      v7 = v3 + ((this >> 13) & 1) + 4095;
      v8 = v2 - 111;
      if ((v7 & 0x800000) == 0)
      {
        v8 = v4;
      }

      if (v8 < 0x1F)
      {
        if ((v7 & 0x800000) != 0)
        {
          LOWORD(v10) = 0;
        }

        else
        {
          v10 = v7 >> 13;
        }

        LOWORD(v1) = v10 | (v8 << 10) | v1;
      }

      else
      {
        v12 = 1.0e10;
        v9 = 10;
        do
        {
          v12 = v12 * v12;
          --v9;
        }

        while (v9);
        LOWORD(v1) = v1 | 0x7C00;
      }
    }
  }

  else
  {
    v5 = (((v3 | 0x800000) + ~(-1 << (125 - v2)) + (((v3 | 0x800000) >> (126 - v2)) & 1)) >> (126 - v2)) | v1;
    if (v2 > 0x65)
    {
      LOWORD(v1) = v5;
    }
  }

  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_half::operator>>(uint64_t a1, _WORD *a2)
{
  v6 = 0.0;
  MEMORY[0x29C2C1DB0](a1, &v6);
  if (v6 == 0.0)
  {
    v4 = HIWORD(LODWORD(v6));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23])
  {
    v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v6) >> 23] + (((LODWORD(v6) & 0x7FFFFF) + ((LODWORD(v6) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v4) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v6));
  }

  *a2 = v4;
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::pxr_half::printBits(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  for (i = 15; i != -1; --i)
  {
    if ((v3 >> i))
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    v7 = v5;
    result = sub_29A00911C(a1, &v7, 1);
    if (i == 15 || i == 10)
    {
      v8 = 32;
      result = sub_29A00911C(a1, &v8, 1);
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::pxr_half::printBits(void *a1, float a2)
{
  for (i = 31; i != -1; --i)
  {
    if ((LODWORD(a2) >> i))
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    v7 = v5;
    result = sub_29A00911C(a1, &v7, 1);
    if ((i & 0x7FFFFFF7) == 0x17)
    {
      v8 = 32;
      result = sub_29A00911C(a1, &v8, 1);
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_half::printBits(uint64_t result, unsigned __int16 a2)
{
  LODWORD(v2) = 0;
  for (i = 15; i != -1; --i)
  {
    if ((a2 >> i))
    {
      v4 = 49;
    }

    else
    {
      v4 = 48;
    }

    *(result + v2) = v4;
    if (i == 15 || i == 10)
    {
      v2 = v2 + 1;
      *(result + v2) = 32;
    }

    LODWORD(v2) = v2 + 1;
  }

  *(result + 18) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_half::printBits(uint64_t this, char *a2, float a3)
{
  LODWORD(v3) = 0;
  for (i = 31; i != -1; --i)
  {
    if ((LODWORD(a3) >> i))
    {
      v5 = 49;
    }

    else
    {
      v5 = 48;
    }

    *(this + v3) = v5;
    if ((i & 0x7FFFFFF7) == 0x17)
    {
      v3 = v3 + 1;
      *(this + v3) = 32;
    }

    LODWORD(v3) = v3 + 1;
  }

  *(this + 34) = 0;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfLine::FindClosestPoint(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = (*a2 - *a1) * v4 + (a2[1] - a1[1]) * a1[4] + (a2[2] - a1[2]) * a1[5];
  if (a3)
  {
    *a3 = v5;
    v3 = *a1;
    v4 = a1[3];
  }

  return v5 * v4 + v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(uint64_t a1, uint64_t a2, float64x2_t *a3, float64x2_t *a4, double *a5, double *a6)
{
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = v6 * v10.f64[0] + vmuld_lane_f64(v7, v10, 1) + v8 * v9;
  v13 = vmulq_f64(v10, v10).f64[0] + vmuld_lane_f64(v11, v10, 1) + v8 * v8;
  v14 = v6 * v6 + v7 * v7 + v9 * v9;
  v15 = vabdd_f64(v12 * v12, v13 * v14);
  if (v15 >= 0.000001)
  {
    v16 = *(a1 + 16);
    v17 = v12 * v12 - v13 * v14;
    v18 = *(a2 + 8);
    v19 = *(a2 + 16);
    v20 = v6 * *a1 + vmuld_lane_f64(v7, *a1, 1) + v9 * v16 - (v6 * *a2 + v7 * v18 + v9 * v19);
    v21 = vmulq_f64(v10, *a1).f64[0] + vmuld_lane_f64(v11, *a1, 1) + v8 * v16 - (v10.f64[0] * *a2 + v11 * v18 + v8 * v19);
    v22 = (v14 * v21 - v12 * v20) / v17;
    v23 = v12 * v21 - v13 * v20;
    if (a3)
    {
      *a3 = vaddq_f64(*a1, vmulq_n_f64(v10, v22));
      a3[1].f64[0] = v16 + v22 * v8;
    }

    v24 = v23 / v17;
    if (a4)
    {
      v25 = v24 * *(a2 + 40) + *(a2 + 16);
      *a4 = vaddq_f64(vmulq_n_f64(*(a2 + 24), v24), *a2);
      a4[1].f64[0] = v25;
    }

    if (a5)
    {
      *a5 = v22;
    }

    if (a6)
    {
      *a6 = v24;
    }
  }

  return v15 >= 0.000001;
}

{
  v22 = 0.0;
  v23 = 0.0;
  result = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(a1, a2, &v25, &v24, &v23, &v22);
  if (result)
  {
    v13 = *(a1 + 48);
    v14 = 1.0;
    if (v23 / v13 <= 1.0)
    {
      v15 = v23 / v13;
    }

    else
    {
      v15 = 1.0;
    }

    if (v23 / v13 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = v22 / *(a2 + 48);
    if (v17 <= 1.0)
    {
      v14 = v22 / *(a2 + 48);
    }

    if (v17 < 0.0)
    {
      v14 = 0.0;
    }

    if (a3)
    {
      v18 = v13 * v16;
      v19 = v18 * *(a1 + 40) + *(a1 + 16);
      *a3 = vaddq_f64(vmulq_n_f64(*(a1 + 24), v18), *a1);
      a3[1].f64[0] = v19;
    }

    if (a4)
    {
      v20 = v14 * *(a2 + 48);
      v21 = v20 * *(a2 + 40) + *(a2 + 16);
      *a4 = vaddq_f64(vmulq_n_f64(*(a2 + 24), v20), *a2);
      a4[1].f64[0] = v21;
    }

    if (a5)
    {
      *a5 = v16;
    }

    if (a6)
    {
      *a6 = v14;
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfLine2d::FindClosestPoint(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = (*a2 - *a1) * v4 + (a2[1] - a1[1]) * a1[3];
  if (a3)
  {
    *a3 = v5;
    v4 = a1[2];
    v3 = *a1;
  }

  return v5 * v4 + v3;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, double *a5, double *a6)
{
  v6 = a2[1].f64[0];
  v7 = a2[1].f64[1];
  v8 = a1[1];
  v9 = a1[1].f64[1];
  v10 = v6 * v8.f64[0] + vmuld_lane_f64(v7, v8, 1);
  v11 = vmulq_f64(v8, v8).f64[0] + vmuld_lane_f64(v9, v8, 1);
  v12 = v6 * v6 + v7 * v7;
  v13 = vabdd_f64(v10 * v10, v11 * v12);
  if (v13 >= 0.000001)
  {
    v14 = v10 * v10 - v11 * v12;
    v15 = a2->f64[1];
    v16 = v6 * a1->f64[0] + vmuld_lane_f64(v7, *a1, 1) - (v6 * a2->f64[0] + v7 * v15);
    v17 = vmulq_f64(v8, *a1).f64[0] + vmuld_lane_f64(v9, *a1, 1) - (v8.f64[0] * a2->f64[0] + v9 * v15);
    v18 = (v12 * v17 - v10 * v16) / v14;
    v19 = v10 * v17 - v11 * v16;
    if (a3)
    {
      *a3 = vaddq_f64(*a1, vmulq_n_f64(v8, v18));
    }

    v20 = v19 / v14;
    if (a4)
    {
      *a4 = vaddq_f64(vmulq_n_f64(a2[1], v20), *a2);
    }

    if (a5)
    {
      *a5 = v18;
    }

    if (a6)
    {
      *a6 = v20;
    }
  }

  return v13 >= 0.000001;
}

{
  v18 = 0.0;
  v19 = 0.0;
  result = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(a1, a2, &v21, &v20, &v19, &v18);
  if (result)
  {
    v13 = a1[2].f64[0];
    v14 = 1.0;
    if (v19 / v13 <= 1.0)
    {
      v15 = v19 / v13;
    }

    else
    {
      v15 = 1.0;
    }

    if (v19 / v13 >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    v17 = v18 / a2[2].f64[0];
    if (v17 <= 1.0)
    {
      v14 = v18 / a2[2].f64[0];
    }

    if (v17 < 0.0)
    {
      v14 = 0.0;
    }

    if (a3)
    {
      *a3 = vaddq_f64(vmulq_n_f64(a1[1], v13 * v16), *a1);
    }

    if (a4)
    {
      *a4 = vaddq_f64(vmulq_n_f64(a2[1], v14 * a2[2].f64[0]), *a2);
    }

    if (a5)
    {
      *a5 = v16;
    }

    if (a6)
    {
      *a6 = v14;
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfLineSeg::FindClosestPoint(double *a1, double *a2, double *a3)
{
  v5 = a1[6];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v9 = 0.0;
    pxrInternal__aapl__pxrReserved__::GfLine::FindClosestPoint(a1, a2, &v9);
    v5 = a1[6];
    v7 = 1.0;
    if (v9 / v5 <= 1.0)
    {
      v7 = v9 / v5;
    }

    v6 = 0.0;
    if (v9 / v5 >= 0.0)
    {
      v6 = v7;
    }
  }

  if (a3)
  {
    *a3 = v6;
    v5 = a1[6];
  }

  return a1[3] * (v6 * v5) + *a1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(double *a1, uint64_t a2, uint64_t a3, float64x2_t *a4, void *a5, double *a6)
{
  v23 = 0.0;
  v24 = 0;
  ClosestPoints = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(a1, a2, &v27, &v25, &v24, &v23);
  if (ClosestPoints)
  {
    v14 = *(a2 + 40);
    v13 = *(a2 + 48);
    if (v23 / v13 <= 1.0)
    {
      v15 = v23 / v13;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = 0.0;
    if (v23 / v13 >= 0.0)
    {
      v16 = v15;
    }

    v23 = v16;
    v17 = v13 * v16;
    v18 = v14 * v17 + *(a2 + 16);
    v25 = vaddq_f64(*a2, vmulq_n_f64(*(a2 + 24), v17));
    v26 = v18;
    if (v16 <= 0.0 || v16 >= 1.0)
    {
      v27.f64[0] = pxrInternal__aapl__pxrReserved__::GfLine::FindClosestPoint(a1, v25.f64, &v24);
      v27.f64[1] = v20;
      v28 = v21;
    }

    if (a3)
    {
      *a3 = v27;
      *(a3 + 16) = v28;
    }

    if (a4)
    {
      *a4 = v25;
      a4[1].f64[0] = v26;
    }

    if (a5)
    {
      *a5 = v24;
    }

    if (a6)
    {
      *a6 = v23;
    }
  }

  return ClosestPoints;
}

double pxrInternal__aapl__pxrReserved__::GfLineSeg2d::FindClosestPoint(float64x2_t *a1, double *a2, double *a3)
{
  v5 = a1[2].f64[0];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v9 = 0.0;
    pxrInternal__aapl__pxrReserved__::GfLine2d::FindClosestPoint(a1->f64, a2, &v9);
    v5 = a1[2].f64[0];
    v7 = 1.0;
    if (v9 / v5 <= 1.0)
    {
      v7 = v9 / v5;
    }

    v6 = 0.0;
    if (v9 / v5 >= 0.0)
    {
      v6 = v7;
    }
  }

  if (a3)
  {
    *a3 = v6;
    v5 = a1[2].f64[0];
  }

  *&result = *&vaddq_f64(vmulq_n_f64(a1[1], v6 * v5), *a1);
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4, void *a5, double *a6)
{
  v21 = 0.0;
  v22 = 0;
  ClosestPoints = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(a1, a2, &v24, &v23, &v22, &v21);
  if (ClosestPoints)
  {
    v13 = a2[2].f64[0];
    if (v21 / v13 <= 1.0)
    {
      v14 = v21 / v13;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = 0.0;
    if (v21 / v13 >= 0.0)
    {
      v15 = v14;
    }

    v16 = *a2;
    v17 = vmulq_n_f64(a2[1], v13 * v15);
    v21 = v15;
    v23 = vaddq_f64(v16, v17);
    if (v15 <= 0.0 || v15 >= 1.0)
    {
      v24.f64[0] = pxrInternal__aapl__pxrReserved__::GfLine2d::FindClosestPoint(a1->f64, v23.f64, &v22);
      v24.f64[1] = v19;
    }

    if (a3)
    {
      *a3 = v24;
    }

    if (a4)
    {
      *a4 = v23;
    }

    if (a5)
    {
      *a5 = v22;
    }

    if (a6)
    {
      *a6 = v21;
    }
  }

  return ClosestPoints;
}

double pxrInternal__aapl__pxrReserved__::GfSmoothStep(pxrInternal__aapl__pxrReserved__ *this, double a2, double a3, double a4, double a5, double a6)
{
  result = 1.0;
  if (a4 < a3)
  {
    result = 0.0;
    if (a4 >= a2)
    {
      v8 = a3 - a2;
      v9 = (a4 - a2) / v8;
      v10 = v9 * v9;
      v11 = v9 * (v9 * v9);
      result = v9 * v9 * 3.0 - (v11 + v11);
      if (a5 != 0.0)
      {
        result = result + a5 / v8 * (v9 + v11 - (v10 + v10));
      }

      if (a6 != 0.0)
      {
        return a6 / v8 * (v11 - v10) + result;
      }
    }
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfSmoothRamp(pxrInternal__aapl__pxrReserved__ *this, double a2, double a3, double a4, double a5, double a6)
{
  result = 0.0;
  if (a4 > a2)
  {
    result = 1.0;
    if (a4 < a3)
    {
      v8 = (a4 - a2) / (a3 - a2);
      v9 = 2.0 - a5 - a6;
      if (v8 >= a5)
      {
        if (v8 > 1.0 - a6)
        {
          return 1.0 - (1.0 - v8) * (1.0 - v8) / (v9 * a6);
        }

        v10 = v8 + v8 - a5;
      }

      else
      {
        v10 = v8 * v8;
        v9 = v9 * a5;
      }

      return v10 / v9;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, double *a2)
{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, "), (", 4);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);

  return sub_29A00911C(v10, "))", 3);
}

{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, "), (", 4);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v11 = sub_29A00911C(v10, ", ", 2);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2[4]);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, a2[5]);
  v15 = sub_29A00911C(v14, "), (", 4);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, a2[6]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, a2[7]);
  v19 = sub_29A00911C(v18, ", ", 2);
  v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, a2[8]);

  return sub_29A00911C(v20, "))", 3);
}

{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v11 = sub_29A00911C(v10, "), (", 4);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2[4]);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, a2[5]);
  v15 = sub_29A00911C(v14, ", ", 2);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, a2[6]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, a2[7]);
  v19 = sub_29A00911C(v18, "), (", 4);
  v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, a2[8]);
  v21 = sub_29A00911C(v20, ", ", 2);
  v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, a2[9]);
  v23 = sub_29A00911C(v22, ", ", 2);
  v24 = pxrInternal__aapl__pxrReserved__::operator<<(v23, a2[10]);
  v25 = sub_29A00911C(v24, ", ", 2);
  v26 = pxrInternal__aapl__pxrReserved__::operator<<(v25, a2[11]);
  v27 = sub_29A00911C(v26, "), (", 4);
  v28 = pxrInternal__aapl__pxrReserved__::operator<<(v27, a2[12]);
  v29 = sub_29A00911C(v28, ", ", 2);
  v30 = pxrInternal__aapl__pxrReserved__::operator<<(v29, a2[13]);
  v31 = sub_29A00911C(v30, ", ", 2);
  v32 = pxrInternal__aapl__pxrReserved__::operator<<(v31, a2[14]);
  v33 = sub_29A00911C(v32, ", ", 2);
  v34 = pxrInternal__aapl__pxrReserved__::operator<<(v33, a2[15]);

  return sub_29A00911C(v34, "))", 3);
}

{
  v8 = 91;
  v3 = sub_29A00911C(a1, &v8, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, "...", 3);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v9 = 93;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v3 = a2[6];
  v4 = a2[13];
  v5 = sub_29A00911C(a1, "( ", 2);
  v6 = sub_29A00911C(v5, "(", 1);
  v7 = MEMORY[0x29C2C1EB0](v6, a2[7]);
  v8 = sub_29A00911C(v7, ", ", 2);
  v9 = MEMORY[0x29C2C1EB0](v8, a2[8]);
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = MEMORY[0x29C2C1EB0](v10, a2[9]);
  v12 = sub_29A00911C(v11, ", 0), ", 6);
  v13 = sub_29A00911C(v12, "(", 1);
  v14 = MEMORY[0x29C2C1EB0](v13, a2[10]);
  v15 = sub_29A00911C(v14, ", ", 2);
  v16 = MEMORY[0x29C2C1EB0](v15, a2[11]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = MEMORY[0x29C2C1EB0](v17, a2[12]);
  v19 = sub_29A00911C(v18, ", ", 2);
  v20 = MEMORY[0x29C2C1EB0](v19, v4);
  v21 = sub_29A00911C(v20, "), ", 3);
  v22 = sub_29A00911C(v21, "(", 1);
  v23 = MEMORY[0x29C2C1EB0](v22, a2[3]);
  v24 = sub_29A00911C(v23, ", ", 2);
  v25 = MEMORY[0x29C2C1EB0](v24, a2[4]);
  v26 = sub_29A00911C(v25, ", ", 2);
  v27 = MEMORY[0x29C2C1EB0](v26, a2[5]);
  v28 = sub_29A00911C(v27, ", ", 2);
  v29 = MEMORY[0x29C2C1EB0](v28, v3);
  v30 = sub_29A00911C(v29, "), ", 3);
  v31 = sub_29A00911C(v30, "(", 1);
  v32 = MEMORY[0x29C2C1EB0](v31, a2[14]);
  v33 = sub_29A00911C(v32, ", ", 2);
  v34 = MEMORY[0x29C2C1EB0](v33, a2[15]);
  v35 = sub_29A00911C(v34, ", ", 2);
  v36 = MEMORY[0x29C2C1EB0](v35, a2[16]);
  v37 = sub_29A00911C(v36, ", 0), ", 6);
  v38 = sub_29A00911C(v37, "(", 1);
  v39 = MEMORY[0x29C2C1EB0](v38, *a2);
  v40 = sub_29A00911C(v39, ", ", 2);
  v41 = MEMORY[0x29C2C1EB0](v40, a2[1]);
  v42 = sub_29A00911C(v41, ", ", 2);
  v43 = MEMORY[0x29C2C1EB0](v42, a2[2]);
  v44 = sub_29A00911C(v43, ", 0) ", 5);

  return sub_29A00911C(v44, ")", 1);
}

{
  v8 = 40;
  v3 = sub_29A00911C(a1, &v8, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v9 = 41;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v10 = 40;
  v3 = sub_29A00911C(a1, &v10, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v11 = 41;
  return sub_29A00911C(v8, &v11, 1);
}

{
  v12 = 40;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v13 = 41;
  return sub_29A00911C(v10, &v13, 1);
}

{
  v3 = sub_29A00911C(a1, "SdfLayerOffset(", 15);
  v4 = MEMORY[0x29C2C1EB0](v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = MEMORY[0x29C2C1EB0](v5, a2[1]);

  return sub_29A00911C(v6, ")", 1);
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix2d::GfMatrix2d(float64x2_t *a1, float32x2_t *a2)
{
  result = vcvtq_f64_f32(*a2);
  v3 = vcvtq_f64_f32(a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

{
  result = vcvtq_f64_f32(*a2);
  v3 = vcvtq_f64_f32(a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::GfMatrix2d(__int128 *a1, uint64_t *a2)
{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v15 = xmmword_29B47CEC0;
  v16 = unk_29B47CED0;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = 1;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = v5;
    v7 = 0;
    v8 = *(v3 + 24 * v2);
    v9 = (*(v3 + 24 * v2 + 8) - v8) >> 3;
    v10 = 1;
    v11 = &v15 + v2;
    do
    {
      if (v7 == v9)
      {
        break;
      }

      v12 = v10;
      v10 = 0;
      *(v11 + v7) = *(v8 + 8 * v7);
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    v5 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  result = *&v15;
  v14 = v16;
  *a1 = v15;
  a1[1] = v14;
  return result;
}

{
  v2 = 0;
  v17 = *MEMORY[0x29EDCA608];
  v15 = xmmword_29B47CEC0;
  v16 = unk_29B47CED0;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = 1;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = v5;
    v7 = 0;
    v8 = *(v3 + 24 * v2);
    v9 = (*(v3 + 24 * v2 + 8) - v8) >> 2;
    v10 = 1;
    v11 = (&v15 + v2);
    do
    {
      if (v7 == v9)
      {
        break;
      }

      v12 = v10;
      v10 = 0;
      v11[v7] = *(v8 + 4 * v7);
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    v5 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  result = *&v15;
  v14 = v16;
  *a1 = v15;
  a1[1] = v14;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix2d::SetDiagonal(uint64_t this, double a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 24) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix2d::Get(pxrInternal__aapl__pxrReserved__::GfMatrix2d *this, double (*a2)[2])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  return *a2;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetInverse(pxrInternal__aapl__pxrReserved__::GfMatrix2d *this, double *a2, double a3)
{
  v3 = *this * *(this + 3) - *(this + 1) * *(this + 2);
  if (a2)
  {
    *a2 = v3;
  }

  if (fabs(v3) <= a3)
  {
    return 3.40282347e38;
  }

  else
  {
    return 1.0 / v3 * *(this + 3);
  }
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetDeterminant(pxrInternal__aapl__pxrReserved__::GfMatrix2d *this)
{
  v1 = vmulq_f64(*this, vextq_s8(*(this + 1), *(this + 1), 8uLL));
  *&result = *&vsubq_f64(v1, vdupq_laneq_s64(v1, 1));
  return result;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(float64x2_t *a1, double a2)
{
  v2 = vmulq_n_f64(*a1, a2);
  result = vmulq_n_f64(a1[1], a2);
  *a1 = v2;
  a1[1] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator+=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  result = a2[3] + v3;
  a1[3] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator-=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  result = v3 - a2[3];
  a1[3] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2d::operator*=(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a1 = *a1 * *a2 + v3 * a2[2];
  a1[1] = v2 * a2[1] + v3 * a2[3];
  a1[2] = v4 * *a2 + v5 * a2[2];
  result = v4 * a2[1] + v5 * a2[3];
  a1[3] = result;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix2d *a3, double a4)
{
  v4 = 0;
  v5 = 1;
LABEL_2:
  v6 = 0;
  v7 = v5;
  v8 = 1;
  v9 = this + 8 * v4;
  v10 = a2 + 8 * v4;
  while (1)
  {
    v11 = vabdd_f64(*&v9[8 * v6], *&v10[8 * v6]);
    if (v11 >= a4)
    {
      return v11 < a4;
    }

    v12 = v8;
    v8 = 0;
    v6 = 1;
    if ((v12 & 1) == 0)
    {
      v5 = 0;
      v4 = 2;
      if (v7)
      {
        goto LABEL_2;
      }

      return v11 < a4;
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, float *a2)
{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, "), (", 4);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);

  return sub_29A00911C(v10, "))", 3);
}

{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, "), (", 4);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v11 = sub_29A00911C(v10, ", ", 2);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2[4]);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, a2[5]);
  v15 = sub_29A00911C(v14, "), (", 4);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, a2[6]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, a2[7]);
  v19 = sub_29A00911C(v18, ", ", 2);
  v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, a2[8]);

  return sub_29A00911C(v20, "))", 3);
}

{
  v3 = sub_29A00911C(a1, "( (", 3);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v11 = sub_29A00911C(v10, "), (", 4);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2[4]);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = pxrInternal__aapl__pxrReserved__::operator<<(v13, a2[5]);
  v15 = sub_29A00911C(v14, ", ", 2);
  v16 = pxrInternal__aapl__pxrReserved__::operator<<(v15, a2[6]);
  v17 = sub_29A00911C(v16, ", ", 2);
  v18 = pxrInternal__aapl__pxrReserved__::operator<<(v17, a2[7]);
  v19 = sub_29A00911C(v18, "), (", 4);
  v20 = pxrInternal__aapl__pxrReserved__::operator<<(v19, a2[8]);
  v21 = sub_29A00911C(v20, ", ", 2);
  v22 = pxrInternal__aapl__pxrReserved__::operator<<(v21, a2[9]);
  v23 = sub_29A00911C(v22, ", ", 2);
  v24 = pxrInternal__aapl__pxrReserved__::operator<<(v23, a2[10]);
  v25 = sub_29A00911C(v24, ", ", 2);
  v26 = pxrInternal__aapl__pxrReserved__::operator<<(v25, a2[11]);
  v27 = sub_29A00911C(v26, "), (", 4);
  v28 = pxrInternal__aapl__pxrReserved__::operator<<(v27, a2[12]);
  v29 = sub_29A00911C(v28, ", ", 2);
  v30 = pxrInternal__aapl__pxrReserved__::operator<<(v29, a2[13]);
  v31 = sub_29A00911C(v30, ", ", 2);
  v32 = pxrInternal__aapl__pxrReserved__::operator<<(v31, a2[14]);
  v33 = sub_29A00911C(v32, ", ", 2);
  v34 = pxrInternal__aapl__pxrReserved__::operator<<(v33, a2[15]);

  return sub_29A00911C(v34, "))", 3);
}

{
  v8 = 91;
  v3 = sub_29A00911C(a1, &v8, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, "...", 3);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v9 = 93;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v8 = 40;
  v3 = sub_29A00911C(a1, &v8, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v9 = 41;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v10 = 40;
  v3 = sub_29A00911C(a1, &v10, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v11 = 41;
  return sub_29A00911C(v8, &v11, 1);
}

{
  v12 = 40;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::operator<<(v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = pxrInternal__aapl__pxrReserved__::operator<<(v9, a2[3]);
  v13 = 41;
  return sub_29A00911C(v10, &v13, 1);
}

{
  v4 = sub_29A00911C(a1, "HgiAttachmentDesc: {", 20);
  v5 = sub_29A00911C(v4, "format: ", 8);
  v6 = MEMORY[0x29C2C1ED0](v5, *a2);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = sub_29A00911C(v7, "usage: ", 7);
  v9 = MEMORY[0x29C2C1EE0](v8, *(a2 + 1));
  v10 = sub_29A00911C(v9, ", ", 2);
  v11 = sub_29A00911C(v10, "clearValue: ", 12);
  v12 = pxrInternal__aapl__pxrReserved__::operator<<(v11, a2 + 4);
  v13 = sub_29A00911C(v12, ", ", 2);
  v14 = sub_29A00911C(v13, "colorMask: ", 11);
  v15 = MEMORY[0x29C2C1EE0](v14, *(a2 + 8));
  v16 = sub_29A00911C(v15, ", ", 2);
  v17 = sub_29A00911C(v16, "loadOp: ", 8);
  v18 = MEMORY[0x29C2C1ED0](v17, *(a2 + 2));
  v19 = sub_29A00911C(v18, ", ", 2);
  v20 = sub_29A00911C(v19, "storeOp: ", 9);
  v21 = MEMORY[0x29C2C1ED0](v20, *(a2 + 3));
  v22 = sub_29A00911C(v21, ", ", 2);
  v23 = sub_29A00911C(v22, "blendEnabled: ", 14);
  v24 = MEMORY[0x29C2C1EA0](v23, *(a2 + 36));
  v25 = sub_29A00911C(v24, ", ", 2);
  v26 = sub_29A00911C(v25, "srcColorBlendFactor: ", 21);
  v27 = MEMORY[0x29C2C1ED0](v26, *(a2 + 10));
  v28 = sub_29A00911C(v27, ", ", 2);
  v29 = sub_29A00911C(v28, "dstColorBlendFactor: ", 21);
  v30 = MEMORY[0x29C2C1ED0](v29, *(a2 + 11));
  v31 = sub_29A00911C(v30, ", ", 2);
  v32 = sub_29A00911C(v31, "colorBlendOp: ", 14);
  v33 = MEMORY[0x29C2C1ED0](v32, *(a2 + 12));
  v34 = sub_29A00911C(v33, ", ", 2);
  v35 = sub_29A00911C(v34, "srcAlphaBlendFactor: ", 21);
  v36 = MEMORY[0x29C2C1ED0](v35, *(a2 + 13));
  v37 = sub_29A00911C(v36, ", ", 2);
  v38 = sub_29A00911C(v37, "dstAlphaBlendFactor: ", 21);
  v39 = MEMORY[0x29C2C1ED0](v38, *(a2 + 14));
  v40 = sub_29A00911C(v39, ", ", 2);
  v41 = sub_29A00911C(v40, "alphaBlendOp: ", 14);
  v42 = MEMORY[0x29C2C1ED0](v41, *(a2 + 15));
  v43 = sub_29A00911C(v42, ", ", 2);
  v44 = sub_29A00911C(v43, "blendConstantColor: ", 20);
  v45 = pxrInternal__aapl__pxrReserved__::operator<<(v44, a2 + 16);
  sub_29A00911C(v45, "}", 1);
  return a1;
}

{
  v4 = sub_29A00911C(a1, "ColorizeSelectionTask Params: (...) ", 36);
  v5 = MEMORY[0x29C2C1EA0](v4, *a2);
  v6 = sub_29A00911C(v5, " ", 1);
  v7 = MEMORY[0x29C2C1EA0](v6, *(a2 + 1));
  v8 = sub_29A00911C(v7, " ", 1);
  v9 = pxrInternal__aapl__pxrReserved__::operator<<(v8, a2 + 1);
  v10 = sub_29A00911C(v9, " ", 1);
  v11 = pxrInternal__aapl__pxrReserved__::operator<<(v10, a2 + 5);
  v12 = sub_29A00911C(v11, " ", 1);
  v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, (a2 + 11));
  v14 = sub_29A00911C(v13, " ", 1);
  v15 = pxrInternal__aapl__pxrReserved__::operator<<(v14, (a2 + 13));
  v16 = sub_29A00911C(v15, " ", 1);
  pxrInternal__aapl__pxrReserved__::operator<<(v16, (a2 + 15));
  return a1;
}

{
  v4 = MEMORY[0x29C2C1EA0](a1, *a2);
  sub_29A00911C(v4, " ", 1);
  v5 = MEMORY[0x29C2C1EA0](a1, *(a2 + 1));
  sub_29A00911C(v5, " ", 1);
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 2);
  sub_29A00911C(v6, " ", 1);
  pxrInternal__aapl__pxrReserved__::operator<<(a1, a2 + 6);
  return a1;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix2f::GfMatrix2f(float32x4_t *this, __n128 *a2)
{
  result = a2[1];
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), result);
  return result;
}

{
  result = a2[1];
  *this = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), result);
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix2f::GfMatrix2f(__int128 *a1, uint64_t *a2)
{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v15 = xmmword_29B47CF20;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = 1;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = v5;
    v7 = 0;
    v8 = *(v3 + 24 * v2);
    v9 = (*(v3 + 24 * v2 + 8) - v8) >> 3;
    v10 = 1;
    v11 = &v15 + 8 * v2;
    do
    {
      if (v7 == v9)
      {
        break;
      }

      v12 = v10;
      v10 = 0;
      v13 = *(v8 + 8 * v7);
      *&v11[4 * v7] = v13;
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    v5 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  result = *&v15;
  *a1 = v15;
  return result;
}

{
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  v14 = xmmword_29B47CF20;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = 1;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = v5;
    v7 = 0;
    v8 = *(v3 + 24 * v2);
    v9 = (*(v3 + 24 * v2 + 8) - v8) >> 2;
    v10 = 1;
    v11 = &v14 + 8 * v2;
    do
    {
      if (v7 == v9)
      {
        break;
      }

      v12 = v10;
      v10 = 0;
      *&v11[4 * v7] = *(v8 + 4 * v7);
      v7 = 1;
    }

    while ((v12 & 1) != 0);
    v5 = 0;
    v2 = 1;
  }

  while ((v6 & 1) != 0);
  result = *&v14;
  *a1 = v14;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix2f::SetDiagonal(uint64_t this, float a2)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = a2;
  return this;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix2f::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  result = *(a2 + 4);
  *(a1 + 12) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix2f::Get(pxrInternal__aapl__pxrReserved__::GfMatrix2f *this, float (*a2)[2])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  return *a2;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix2f::GetInverse(pxrInternal__aapl__pxrReserved__::GfMatrix2f *this, double *a2, double a3)
{
  v3 = *(this + 3);
  v4 = ((*this * v3) - (*(this + 1) * *(this + 2)));
  if (a2)
  {
    *a2 = v4;
  }

  if (fabs(v4) <= a3)
  {
    return 3.4028e38;
  }

  else
  {
    return 1.0 / v4 * v3;
  }
}

float32x4_t pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator*=(float32x2_t *a1, double a2)
{
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a1), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1->f32), a2));
  *a1->f32 = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator+=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  result = a2[3] + v3;
  a1[3] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator-=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  result = v3 - a2[3];
  a1[3] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix2f::operator*=(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a1 = (*a1 * *a2) + (v3 * a2[2]);
  a1[1] = (v2 * a2[1]) + (v3 * a2[3]);
  a1[2] = (v4 * *a2) + (v5 * a2[2]);
  result = (v4 * a2[1]) + (v5 * a2[3]);
  a1[3] = result;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix2f *a3, double a4)
{
  v4 = 0;
  v5 = 1;
LABEL_2:
  v6 = 0;
  v7 = v5;
  v8 = 1;
  v9 = this + 4 * v4;
  v10 = a2 + 4 * v4;
  while (1)
  {
    v11 = vabdd_f64(*&v9[4 * v6], *&v10[4 * v6]);
    if (v11 >= a4)
    {
      return v11 < a4;
    }

    v12 = v8;
    v8 = 0;
    v6 = 1;
    if ((v12 & 1) == 0)
    {
      v5 = 0;
      v4 = 2;
      if (v7)
      {
        goto LABEL_2;
      }

      return v11 < a4;
    }
  }
}

float32_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::GfMatrix3f(float32x4_t *a1, float64x2_t *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[2]), a2[3]);
  result = a2[4].f64[0];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  a1[1] = v2;
  a1[2].f32[0] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::GfMatrix3f(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v14 = *MEMORY[0x29EDCA608];
  v12 = 0x3F800000uLL;
  *&v13[4] = 0;
  *&v13[12] = 0x3F80000000000000;
  *v13 = 1065353216;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = &v12;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 3;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      v9 = *(v7 + 8 * v6);
      *(v5 + v6++) = v9;
    }

    while (v6 != 3);
    ++v2;
    v5 = (v5 + 12);
  }

  while (v2 != 3);
  v10 = *v13;
  *a1 = v12;
  *(a1 + 16) = v10;
  result = *&v13[16];
  *(a1 + 32) = *&v13[16];
  return result;
}

{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  v11 = 0x3F800000uLL;
  *&v12[4] = 0;
  *&v12[12] = 0x3F80000000000000;
  *v12 = 1065353216;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = &v11;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 2;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *(v5 + v6) = *(v7 + 4 * v6);
      ++v6;
    }

    while (v6 != 3);
    ++v2;
    v5 = (v5 + 12);
  }

  while (v2 != 3);
  v9 = *v12;
  *a1 = v11;
  *(a1 + 16) = v9;
  result = *&v12[16];
  *(a1 + 32) = *&v12[16];
  return result;
}

pxrInternal__aapl__pxrReserved__::GfMatrix3f *pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this, float64x2_t *a2)
{
  Quat = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  *&v4 = v4;
  *&Quat = Quat;
  *&v5 = v5;
  v8[0] = *&Quat;
  v8[1] = *&v5;
  *&Quat = v6;
  v8[2] = *&Quat;
  pxrInternal__aapl__pxrReserved__::GfMatrix3f::_SetRotateFromQuat(this, v8, *&v4);
  return this;
}

pxrInternal__aapl__pxrReserved__::GfMatrix3f *pxrInternal__aapl__pxrReserved__::GfMatrix3f::GfMatrix3f(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this, const pxrInternal__aapl__pxrReserved__::GfQuatf *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix3f::_SetRotateFromQuat(this, a2, *(a2 + 3));
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfMatrix3f::_SetRotateFromQuat(this, a2, *(a2 + 3));
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(uint64_t this, float a2)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 16) = a2;
  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 32) = a2;
  return this;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 32) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::Get(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this, float (*a2)[3])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  (*a2)[4] = *(this + 4);
  (*a2)[5] = *(this + 5);
  (*a2)[6] = *(this + 6);
  (*a2)[7] = *(this + 7);
  (*a2)[8] = *(this + 8);
  return *a2;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::GetTranspose@<S0>(int32x4_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[1];
  v3 = vtrn2q_s32(vextq_s8(v2, *this, 4uLL), *this);
  v4 = vtrn2q_s32(vextq_s8(*this, v2, 4uLL), v2);
  *a2 = vextq_s8(v3, v3, 8uLL);
  *(a2 + 16) = vextq_s8(v4, v4, 8uLL);
  result = *this[2].i32;
  *(a2 + 32) = result;
  return result;
}

float *pxrInternal__aapl__pxrReserved__::GfMatrix3f::GetInverse@<X0>(float *this@<X0>, double *a2@<X1>, double a3@<D0>, float *a4@<X8>)
{
  v4 = *this;
  v5 = this[1];
  v6 = this[2];
  v7 = this[3];
  v8 = this[4];
  v9 = this[5];
  v10 = this[6];
  v11 = this[7];
  v12 = this[8];
  v13 = v6 * v7;
  v14 = v4 * v9;
  v15 = v5 * v7;
  v16 = v4 * v8;
  v17 = v4 * v8 * v12 + v5 * v9 * v10 - v6 * v8 * v10 + v6 * v7 * v11 - v4 * v9 * v11 - v5 * v7 * v12;
  if (a2)
  {
    *a2 = v17;
  }

  if (fabs(v17) <= a3)
  {
    v20 = 0.0;
    v19 = 3.4028e38;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 3.4028e38;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 3.4028e38;
  }

  else
  {
    v18 = 1.0 / v17;
    v19 = (v8 * v12 - v9 * v11) * (1.0 / v17);
    v20 = (v6 * v11 - v5 * v12) * (1.0 / v17);
    v21 = (v5 * v9 - v6 * v8) * v18;
    v22 = (v9 * v10 - v7 * v12) * v18;
    v23 = (v4 * v12 - v6 * v10) * v18;
    v24 = (v13 - v14) * v18;
    v25 = (v7 * v11 - v8 * v10) * v18;
    v26 = (v5 * v10 - v4 * v11) * v18;
    v27 = (v16 - v15) * v18;
  }

  *a4 = v19;
  a4[1] = v20;
  a4[2] = v21;
  a4[3] = v22;
  a4[4] = v23;
  a4[5] = v24;
  a4[6] = v25;
  a4[7] = v26;
  a4[8] = v27;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetScale(uint64_t this, float a2)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 16) = a2;
  *(this + 20) = 0;
  *(this + 28) = 0;
  *(this + 32) = a2;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3f::GetHandedness(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this)
{
  Determinant = pxrInternal__aapl__pxrReserved__::GfMatrix3f::GetDeterminant(this);
  v2 = Determinant < 0.0;
  v3 = Determinant <= 0.0;
  result = 0.0;
  if (!v3)
  {
    result = 1.0;
  }

  if (v2)
  {
    return -1.0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::Orthonormalize(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this, int a2)
{
  v4 = *(this + 2);
  v18 = vcvtq_f64_f32(*this);
  v19 = v4;
  v5 = *(this + 5);
  *v17 = vcvtq_f64_f32(*(this + 12));
  *&v17[16] = v5;
  v6 = *(this + 8);
  v15 = vcvtq_f64_f32(*(this + 24));
  v16 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::GfVec3d::OrthogonalizeBasis(&v18, v17, &v15, 1, 0.000001);
  v9.f64[0] = v19;
  v9.f64[1] = *v17;
  v10 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v9);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v17[8]), v15);
  *this = v10;
  *(this + 1) = v11;
  v11.f32[0] = v16;
  *(this + 8) = v11.i32[0];
  if ((v8 & 1) == 0 && a2)
  {
    v13[0] = "gf/matrix3f.cpp";
    v13[1] = "Orthonormalize";
    v13[2] = 265;
    v13[3] = "BOOL pxrInternal__aapl__pxrReserved__::GfMatrix3f::Orthonormalize(BOOL)";
    v14 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v13, "OrthogonalizeBasis did not converge, matrix may not be orthonormal.", v7);
  }

  return v8;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::GetOrthonormalized@<X0>(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(this + 8);
  return pxrInternal__aapl__pxrReserved__::GfMatrix3f::Orthonormalize(a3, a2);
}

float32_t pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=(float32x2_t *a1, double a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(a1[2]), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1[2].f32), a2));
  *a1->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a1), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1->f32), a2));
  *a1[2].f32 = v2;
  result = a1[4].f32[0] * a2;
  a1[4].f32[0] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator+=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  a1[3] = a2[3] + v3;
  v4 = a1[5];
  a1[4] = a2[4] + a1[4];
  a1[5] = a2[5] + v4;
  v5 = a1[7];
  a1[6] = a2[6] + a1[6];
  a1[7] = a2[7] + v5;
  result = a2[8] + a1[8];
  a1[8] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator-=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  a1[3] = v3 - a2[3];
  v4 = a1[5];
  a1[4] = a1[4] - a2[4];
  a1[5] = v4 - a2[5];
  v5 = a1[7];
  a1[6] = a1[6] - a2[6];
  a1[7] = v5 - a2[7];
  result = a1[8] - a2[8];
  a1[8] = result;
  return result;
}

float32_t pxrInternal__aapl__pxrReserved__::operator-@<S0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  result = -a1[2].f32[0];
  v3 = vnegq_f32(a1[1]);
  *a2 = vnegq_f32(*a1);
  a2[1] = v3;
  a2[2].f32[0] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::operator*=(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  *a1 = ((*a1 * *a2) + (v3 * a2[3])) + (v4 * a2[6]);
  a1[1] = ((v2 * a2[1]) + (v3 * a2[4])) + (v4 * a2[7]);
  a1[2] = ((v2 * a2[2]) + (v3 * a2[5])) + (v4 * a2[8]);
  a1[3] = ((v5 * *a2) + (v6 * a2[3])) + (v7 * a2[6]);
  a1[4] = ((v5 * a2[1]) + (v6 * a2[4])) + (v7 * a2[7]);
  a1[5] = ((v5 * a2[2]) + (v6 * a2[5])) + (v7 * a2[8]);
  a1[6] = ((v9 * *a2) + (v8 * a2[3])) + (v10 * a2[6]);
  a1[7] = ((v9 * a2[1]) + (v8 * a2[4])) + (v10 * a2[7]);
  result = ((v9 * a2[2]) + (v8 * a2[5])) + (v10 * a2[8]);
  a1[8] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::_SetRotateFromQuat(uint64_t a1, float *a2, float a3)
{
  v3 = ((a2[1] * a2[1]) + (a2[2] * a2[2]));
  v4 = 1.0 - (v3 + v3);
  *a1 = v4;
  v5 = (*a2 * a2[1]) + (a2[2] * a3);
  *(a1 + 4) = v5 + v5;
  v6 = (a2[2] * *a2) - (a2[1] * a3);
  *(a1 + 8) = v6 + v6;
  v7 = (*a2 * a2[1]) - (a2[2] * a3);
  *(a1 + 12) = v7 + v7;
  v8 = ((a2[2] * a2[2]) + (*a2 * *a2));
  *&v8 = 1.0 - (v8 + v8);
  *(a1 + 16) = LODWORD(v8);
  *&v8 = (a2[1] * a2[2]) + (*a2 * a3);
  *(a1 + 20) = *&v8 + *&v8;
  *&v8 = (a2[2] * *a2) + (a2[1] * a3);
  *(a1 + 24) = *&v8 + *&v8;
  v9 = (a2[1] * a2[2]) - (*a2 * a3);
  *(a1 + 28) = v9 + v9;
  v10 = ((a2[1] * a2[1]) + (*a2 * *a2));
  result = 1.0 - (v10 + v10);
  *(a1 + 32) = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::SetScale(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 20) = 0;
  *(a1 + 28) = 0;
  result = *(a2 + 8);
  *(a1 + 32) = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3f::ExtractRotationQuaternion(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this)
{
  v1 = *(this + 4);
  v2 = *(this + 8);
  if (*this > v1)
  {
    v3 = *this;
  }

  else
  {
    v3 = *(this + 4);
  }

  if (v3 <= v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *this <= v1;
  }

  v5 = (*this + v1) + v2;
  v6 = this + 4 * (3 * v4);
  v7 = *&v6[4 * v4];
  if (v5 <= v7)
  {
    if (v4 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4 + 1;
    }

    v10 = this + 12 * v9;
    v11 = v4 + 2 - 3 * ((1431655766 * (v4 + 2)) >> 32);
    v12 = this + 12 * v11;
    v13 = sqrtf(((v7 - *&v10[4 * v9]) - *&v12[4 * v11]) + 1.0) * 0.5;
    *(&v17 + v4) = v13;
    v14 = v13 * 4.0;
    *(&v17 + v9) = (*&v6[4 * v9] + *&v10[4 * v4]) / v14;
    *(&v17 + v11) = (*&v12[4 * v4] + *&v6[4 * v11]) / v14;
    v8 = (*&v10[4 * v11] - *&v12[4 * v9]) / v14;
  }

  else
  {
    v8 = sqrtf(v5 + 1.0) * 0.5;
  }

  v15 = 1.0;
  if (v8 <= 1.0)
  {
    v15 = v8;
  }

  if (v8 >= -1.0)
  {
    return v15;
  }

  else
  {
    return -1.0;
  }
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3f::ExtractRotation(pxrInternal__aapl__pxrReserved__::GfMatrix3f *this)
{
  RotationQuaternion = pxrInternal__aapl__pxrReserved__::GfMatrix3f::ExtractRotationQuaternion(this);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  *&v7[3] = RotationQuaternion;
  pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat(&v6, v7);
  return v6;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix3f::DecomposeRotation(pxrInternal__aapl__pxrReserved__::GfMatrix3f *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v17.f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix3f::ExtractRotation(a1);
  v17.f64[1] = v7;
  v18 = v8;
  v19 = v9;
  v15 = vcvtq_f64_f32(*a2);
  v16 = a2[1].f32[0];
  v13 = vcvtq_f64_f32(*a3);
  v14 = a3[1].f32[0];
  v11 = vcvtq_f64_f32(*a4);
  v12 = a4[1].f32[0];
  return pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(&v17, v15.f64, v13.f64, v11.f64);
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a3, double a4)
{
  v4 = 0;
  v5 = 0;
LABEL_2:
  v6 = 0;
  while (vabdd_f64(*(this + v6), *(a2 + v6)) < a4)
  {
    v6 += 4;
    if (v6 == 12)
    {
      v4 = v5 > 1;
      a2 = (a2 + 12);
      this = (this + 12);
      if (++v5 != 3)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }

  return v4;
}

float64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d(float64x2_t *this, float32x2_t *a2)
{
  result = a2[4].f32[0];
  v3 = vcvtq_f64_f32(a2[1]);
  *this = vcvtq_f64_f32(*a2);
  this[1] = v3;
  v4 = vcvtq_f64_f32(a2[3]);
  this[2] = vcvtq_f64_f32(a2[2]);
  this[3] = v4;
  this[4].f64[0] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d(uint64_t a1, uint64_t *a2)
{
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  memset(&v13[8], 0, 24);
  memset(&v12[8], 0, 24);
  *v12 = 0x3FF0000000000000;
  *v13 = 0x3FF0000000000000;
  v14 = 1.0;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v12;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 3;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *&v5[8 * v6] = *(v7 + 8 * v6);
      ++v6;
    }

    while (v6 != 3);
    ++v2;
    v5 += 24;
  }

  while (v2 != 3);
  v9 = *&v12[16];
  *a1 = *v12;
  *(a1 + 16) = v9;
  v10 = *&v13[16];
  *(a1 + 32) = *v13;
  *(a1 + 48) = v10;
  result = v14;
  *(a1 + 64) = v14;
  return result;
}

{
  v2 = 0;
  v15 = *MEMORY[0x29EDCA608];
  memset(&v13[8], 0, 24);
  memset(&v12[8], 0, 24);
  *v12 = 0x3FF0000000000000;
  *v13 = 0x3FF0000000000000;
  v14 = 1.0;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v12;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 2;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *&v5[8 * v6] = *(v7 + 4 * v6);
      ++v6;
    }

    while (v6 != 3);
    ++v2;
    v5 += 24;
  }

  while (v2 != 3);
  v9 = *&v12[16];
  *a1 = *v12;
  *(a1 + 16) = v9;
  v10 = *&v13[16];
  *(a1 + 32) = *v13;
  *(a1 + 48) = v10;
  result = v14;
  *(a1 + 64) = v14;
  return result;
}

pxrInternal__aapl__pxrReserved__::GfMatrix3d *pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this, float64x2_t *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  v7[1] = v3;
  v7[2] = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(this, v7, v5);
  return this;
}

{
  v7[0] = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  v7[1] = v3;
  v7[2] = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(this, v7, v5);
  return this;
}

pxrInternal__aapl__pxrReserved__::GfMatrix3d *pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this, float64x2_t *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  v7[1] = v3;
  v7[2] = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(this, v7, v5);
  return this;
}

pxrInternal__aapl__pxrReserved__::GfMatrix3d *pxrInternal__aapl__pxrReserved__::GfMatrix3d::GfMatrix3d(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(this, a2, *(a2 + 3));
  return this;
}

{
  pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(this, a2, *(a2 + 3));
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetDiagonal(uint64_t this, double a2)
{
  *this = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = a2;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *(this + 64) = a2;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::Get(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this, double (*a2)[3])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  (*a2)[4] = *(this + 4);
  (*a2)[5] = *(this + 5);
  (*a2)[6] = *(this + 6);
  (*a2)[7] = *(this + 7);
  (*a2)[8] = *(this + 8);
  return *a2;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetTranspose@<D0>(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 3);
  *a2 = *this;
  *(a2 + 8) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(a2 + 48) = v3;
  *(a2 + 56) = v6;
  v7 = *(this + 7);
  *(a2 + 16) = *(this + 6);
  *(a2 + 24) = v2;
  *(a2 + 32) = v5;
  *(a2 + 40) = v7;
  result = *(this + 8);
  *(a2 + 64) = result;
  return result;
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetInverse@<X0>(float64x2_t *this@<X0>, double *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v4 = this->f64[0];
  v5.f64[0] = this->f64[1];
  v7 = this[1].f64[0];
  v6 = this[1].f64[1];
  v8.f64[0] = this[2].f64[0];
  v9 = this[2].f64[1];
  v10 = this[3];
  v11 = this[4].f64[0];
  v12 = v7 * v6;
  v13 = this->f64[0] * v9;
  v14 = v5.f64[0] * v6;
  v15 = this->f64[0] * v8.f64[0];
  v16 = v15 * v11 + v5.f64[0] * v9 * v10.f64[0] - v7 * v8.f64[0] * v10.f64[0] + vmuld_lane_f64(v7 * v6, v10, 1) - vmuld_lane_f64(v13, v10, 1) - v5.f64[0] * v6 * v11;
  if (a2)
  {
    *a2 = v16;
  }

  if (fabs(v16) <= a3)
  {
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0;
    v18 = 3.40282347e38;
    v19 = 3.40282347e38;
    v21 = 3.40282347e38;
  }

  else
  {
    v17 = 1.0 / v16;
    v18 = (v8.f64[0] * v11 - v9 * v10.f64[1]) * v17;
    *(a4 + 8) = (v7 * v10.f64[1] - v5.f64[0] * v11) * v17;
    *(a4 + 16) = (v5.f64[0] * v9 - v7 * v8.f64[0]) * v17;
    *(a4 + 24) = (v9 * v10.f64[0] - v6 * v11) * v17;
    v19 = (v4 * v11 - v7 * v10.f64[0]) * v17;
    *(a4 + 40) = (v12 - v13) * v17;
    v5.f64[1] = v6;
    v20 = vmulq_f64(v5, v10);
    v8.f64[1] = v4;
    *(a4 + 48) = vmulq_n_f64(vsubq_f64(vextq_s8(v20, v20, 8uLL), vmulq_f64(v8, v10)), v17);
    v21 = (v15 - v14) * v17;
  }

  *a4 = v18;
  *(a4 + 32) = v19;
  *(a4 + 64) = v21;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetScale(uint64_t this, double a2)
{
  *this = a2;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 32) = a2;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 40) = 0;
  *(this + 64) = a2;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetHandedness(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this)
{
  Determinant = pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetDeterminant(this);
  v2 = Determinant < 0.0;
  v3 = Determinant <= 0.0;
  result = 0.0;
  if (!v3)
  {
    result = 1.0;
  }

  if (v2)
  {
    return -1.0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::Orthonormalize(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this, int a2)
{
  v4 = *(this + 2);
  v16 = *this;
  v17 = v4;
  v5 = *(this + 5);
  v14 = *(this + 24);
  v15 = v5;
  v6 = *(this + 8);
  v12 = *(this + 3);
  v13 = v6;
  v8 = pxrInternal__aapl__pxrReserved__::GfVec3d::OrthogonalizeBasis(&v16, &v14, &v12, 1, 0.000001);
  *this = v16;
  *(this + 2) = v17;
  *(this + 24) = v14;
  *(this + 5) = v15;
  *(this + 3) = v12;
  *(this + 8) = v13;
  if ((v8 & 1) == 0 && a2)
  {
    v10[0] = "gf/matrix3d.cpp";
    v10[1] = "Orthonormalize";
    v10[2] = 265;
    v10[3] = "BOOL pxrInternal__aapl__pxrReserved__::GfMatrix3d::Orthonormalize(BOOL)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, "OrthogonalizeBasis did not converge, matrix may not be orthonormal.", v7);
  }

  return v8;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetOrthonormalized@<X0>(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(this + 8);
  v4 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v4;
  return pxrInternal__aapl__pxrReserved__::GfMatrix3d::Orthonormalize(a3, a2);
}

float64_t pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(float64x2_t *a1, double a2)
{
  v2 = vmulq_n_f64(a1[1], a2);
  *a1 = vmulq_n_f64(*a1, a2);
  a1[1] = v2;
  v3 = vmulq_n_f64(a1[3], a2);
  a1[2] = vmulq_n_f64(a1[2], a2);
  a1[3] = v3;
  result = a1[4].f64[0] * a2;
  a1[4].f64[0] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator+=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  a1[3] = a2[3] + v3;
  v4 = a1[5];
  a1[4] = a2[4] + a1[4];
  a1[5] = a2[5] + v4;
  v5 = a1[7];
  a1[6] = a2[6] + a1[6];
  a1[7] = a2[7] + v5;
  result = a2[8] + a1[8];
  a1[8] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator-=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  a1[3] = v3 - a2[3];
  v4 = a1[5];
  a1[4] = a1[4] - a2[4];
  a1[5] = v4 - a2[5];
  v5 = a1[7];
  a1[6] = a1[6] - a2[6];
  a1[7] = v5 - a2[7];
  result = a1[8] - a2[8];
  a1[8] = result;
  return result;
}

float64_t pxrInternal__aapl__pxrReserved__::operator-@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = -a1[4].f64[0];
  v3 = vnegq_f64(a1[1]);
  *a2 = vnegq_f64(*a1);
  a2[1] = v3;
  v4 = vnegq_f64(a1[3]);
  a2[2] = vnegq_f64(a1[2]);
  a2[3] = v4;
  a2[4].f64[0] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::operator*=(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  *a1 = *a1 * *a2 + v3 * a2[3] + v4 * a2[6];
  a1[1] = v2 * a2[1] + v3 * a2[4] + v4 * a2[7];
  a1[2] = v2 * a2[2] + v3 * a2[5] + v4 * a2[8];
  a1[3] = v5 * *a2 + v6 * a2[3] + v7 * a2[6];
  a1[4] = v5 * a2[1] + v6 * a2[4] + v7 * a2[7];
  a1[5] = v5 * a2[2] + v6 * a2[5] + v7 * a2[8];
  a1[6] = v9 * *a2 + v8 * a2[3] + v10 * a2[6];
  a1[7] = v9 * a2[1] + v8 * a2[4] + v10 * a2[7];
  result = v9 * a2[2] + v8 * a2[5] + v10 * a2[8];
  a1[8] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::_SetRotateFromQuat(double *a1, double *a2, double a3)
{
  v3 = a2[1] * a2[1] + a2[2] * a2[2];
  *a1 = 1.0 - (v3 + v3);
  v4 = *a2 * a2[1] + a2[2] * a3;
  a1[1] = v4 + v4;
  v5 = a2[2] * *a2 - a2[1] * a3;
  a1[2] = v5 + v5;
  v6 = *a2 * a2[1] - a2[2] * a3;
  a1[3] = v6 + v6;
  v7 = a2[2] * a2[2] + *a2 * *a2;
  a1[4] = 1.0 - (v7 + v7);
  v8 = a2[1] * a2[2] + *a2 * a3;
  a1[5] = v8 + v8;
  v9 = a2[2] * *a2 + a2[1] * a3;
  a1[6] = v9 + v9;
  v10 = a2[1] * a2[2] - *a2 * a3;
  a1[7] = v10 + v10;
  v11 = a2[1] * a2[1] + *a2 * *a2;
  result = 1.0 - (v11 + v11);
  a1[8] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::SetScale(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 8);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  result = *(a2 + 16);
  *(a1 + 64) = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::ExtractRotationQuaternion(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this)
{
  v1 = *(this + 4);
  v2 = *(this + 8);
  if (*this > v1)
  {
    v3 = *this;
  }

  else
  {
    v3 = *(this + 4);
  }

  if (v3 <= v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *this <= v1;
  }

  v5 = *this + v1 + v2;
  v6 = this + 8 * (3 * v4);
  v7 = *&v6[8 * v4];
  if (v5 <= v7)
  {
    if (v4 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v4 + 1;
    }

    v10 = v4 + 2 - 3 * ((1431655766 * (v4 + 2)) >> 32);
    v11 = this + 24 * v9;
    v12 = this + 24 * v10;
    v13 = sqrt(v7 - *&v11[8 * v9] - *&v12[8 * v10] + 1.0) * 0.5;
    *(&v17 + v4) = v13;
    v14 = v13 * 4.0;
    *(&v17 + v9) = (*&v6[8 * v9] + *&v11[8 * v4]) / v14;
    *(&v17 + v10) = (*&v12[8 * v4] + *&v6[8 * v10]) / v14;
    v8 = (*&v11[8 * v10] - *&v12[8 * v9]) / v14;
  }

  else
  {
    v8 = sqrt(v5 + 1.0) * 0.5;
  }

  v15 = 1.0;
  if (v8 <= 1.0)
  {
    v15 = v8;
  }

  if (v8 >= -1.0)
  {
    return v15;
  }

  else
  {
    return -1.0;
  }
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::ExtractRotation(pxrInternal__aapl__pxrReserved__::GfMatrix3d *this)
{
  RotationQuaternion = pxrInternal__aapl__pxrReserved__::GfMatrix3d::ExtractRotationQuaternion(this);
  v7[0] = v2;
  v7[1] = v3;
  v7[2] = v4;
  *&v7[3] = RotationQuaternion;
  pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat(&v6, v7);
  return v6;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix3d::DecomposeRotation(pxrInternal__aapl__pxrReserved__::GfMatrix3d *a1, double *a2, double *a3, double *a4)
{
  v11.f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix3d::ExtractRotation(a1);
  v11.f64[1] = v7;
  v12 = v8;
  v13 = v9;
  return pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(&v11, a2, a3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix3d *a3, double a4)
{
  v4 = 0;
  v5 = 0;
LABEL_2:
  v6 = 0;
  while (vabdd_f64(*(this + v6), *(a2 + v6)) < a4)
  {
    v6 += 8;
    if (v6 == 24)
    {
      v4 = v5 > 1;
      a2 = (a2 + 24);
      this = (this + 24);
      if (++v5 != 3)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }

  return v4;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(float32x4_t *a1, float64x2_t *a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[2]), a2[3]);
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  a1[1] = v2;
  result = a2[7];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a2[6]), result);
  a1[2] = vcvt_hight_f32_f64(vcvt_f32_f64(a2[4]), a2[5]);
  a1[3] = v4;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(_OWORD *a1, uint64_t *a2)
{
  v2 = 0;
  v14 = *MEMORY[0x29EDCA608];
  memset(&v13[20], 0, 40);
  *&v13[4] = 0u;
  *v13 = 1065353216;
  *&v13[20] = 1065353216;
  *&v13[40] = 1065353216;
  *&v13[60] = 1065353216;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v13;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 3;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      v9 = *(v7 + 8 * v6);
      *&v5[4 * v6++] = v9;
    }

    while (v6 != 4);
    ++v2;
    v5 += 16;
  }

  while (v2 != 4);
  v10 = *&v13[16];
  *a1 = *v13;
  a1[1] = v10;
  result = *&v13[32];
  v12 = *&v13[48];
  a1[2] = *&v13[32];
  a1[3] = v12;
  return result;
}

{
  v2 = 0;
  v13 = *MEMORY[0x29EDCA608];
  memset(&v12[20], 0, 40);
  *&v12[4] = 0u;
  *v12 = 1065353216;
  *&v12[20] = 1065353216;
  *&v12[40] = 1065353216;
  *&v12[60] = 1065353216;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v12;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 2;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *&v5[4 * v6] = *(v7 + 4 * v6);
      ++v6;
    }

    while (v6 != 4);
    ++v2;
    v5 += 16;
  }

  while (v2 != 4);
  v9 = *&v12[16];
  *a1 = *v12;
  a1[1] = v9;
  result = *&v12[32];
  v11 = *&v12[48];
  a1[2] = *&v12[32];
  a1[3] = v11;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v28 = *MEMORY[0x29EDCA608];
  memset(&v27[20], 0, 40);
  *&v27[4] = 0u;
  *v27 = 1065353216;
  *&v27[20] = 1065353216;
  *&v27[40] = 1065353216;
  *&v27[60] = 1065353216;
  v6 = *a2;
  v7 = (a2[1] - *a2) >> 3;
  do
  {
    if (v7 == v5)
    {
      break;
    }

    v8 = *(v6 + 8 * v5);
    *&v27[4 * v5++] = v8;
  }

  while (v5 != 4);
  v9 = *a3;
  v10 = (*(a3 + 8) - *a3) >> 3;
  for (i = 16; i != 32; i += 4)
  {
    if (!v10)
    {
      break;
    }

    v12 = *v9++;
    v13 = v12;
    *&v27[i] = v13;
    --v10;
  }

  v14 = *a4;
  v15 = (*(a4 + 8) - *a4) >> 3;
  for (j = 32; j != 48; j += 4)
  {
    if (!v15)
    {
      break;
    }

    v17 = *v14++;
    v18 = v17;
    *&v27[j] = v18;
    --v15;
  }

  v19 = *a5;
  v20 = (*(a5 + 8) - *a5) >> 3;
  for (k = 48; k != 64; k += 4)
  {
    if (!v20)
    {
      break;
    }

    v22 = *v19++;
    v23 = v22;
    *&v27[k] = v23;
    --v20;
  }

  v24 = *&v27[16];
  *a1 = *v27;
  a1[1] = v24;
  result = *&v27[32];
  v26 = *&v27[48];
  a1[2] = *&v27[32];
  a1[3] = v26;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(_OWORD *a1, uint64_t *a2, int **a3, int **a4, int **a5)
{
  v5 = 0;
  v24 = *MEMORY[0x29EDCA608];
  memset(&v23[20], 0, 40);
  *&v23[4] = 0u;
  *v23 = 1065353216;
  *&v23[20] = 1065353216;
  *&v23[40] = 1065353216;
  *&v23[60] = 1065353216;
  v6 = *a2;
  v7 = (a2[1] - *a2) >> 2;
  do
  {
    if (v7 == v5)
    {
      break;
    }

    *&v23[4 * v5] = *(v6 + 4 * v5);
    ++v5;
  }

  while (v5 != 4);
  v8 = *a3;
  v9 = a3[1] - *a3;
  for (i = 4; i != 8; ++i)
  {
    if (!v9)
    {
      break;
    }

    v11 = *v8++;
    *&v23[4 * i] = v11;
    --v9;
  }

  v12 = *a4;
  v13 = a4[1] - *a4;
  for (j = 8; j != 12; ++j)
  {
    if (!v13)
    {
      break;
    }

    v15 = *v12++;
    *&v23[4 * j] = v15;
    --v13;
  }

  v16 = *a5;
  v17 = a5[1] - *a5;
  for (k = 12; k != 16; ++k)
  {
    if (!v17)
    {
      break;
    }

    v19 = *v16++;
    *&v23[4 * k] = v19;
    --v17;
  }

  v20 = *&v23[16];
  *a1 = *v23;
  a1[1] = v20;
  result = *&v23[32];
  v22 = *&v23[48];
  a1[2] = *&v23[32];
  a1[3] = v22;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::GfMatrix4f(pxrInternal__aapl__pxrReserved__::GfMatrix4f *a1, float64x2_t *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(a1, a2);
  *(v4 + 3) = 0;
  *(v4 + 7) = 0;
  *(v4 + 52) = 0;
  *(v4 + 44) = 0;
  *(v4 + 15) = 1065353216;
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 4);
  result = *(a3 + 8);
  *(v4 + 14) = result;
  *(v4 + 15) = 1065353216;
  return result;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(a1, a2);
  *(v4 + 3) = 0;
  *(v4 + 7) = 0;
  *(v4 + 52) = 0;
  *(v4 + 44) = 0;
  *(v4 + 15) = 1065353216;
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 4);
  result = *(a3 + 8);
  *(v4 + 14) = result;
  *(v4 + 15) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTransform(pxrInternal__aapl__pxrReserved__::GfMatrix4f *a1, float64x2_t *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(a1, a2);
  *(v4 + 3) = 0;
  *(v4 + 7) = 0;
  *(v4 + 52) = 0;
  *(v4 + 44) = 0;
  *(v4 + 15) = 1065353216;
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 4);
  result = *(a3 + 8);
  *(v4 + 14) = result;
  *(v4 + 15) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTransform(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 4) = a2[1];
  *(a1 + 8) = a2[2];
  *(a1 + 12) = 0;
  *(a1 + 16) = a2[3];
  *(a1 + 20) = a2[4];
  *(a1 + 24) = a2[5];
  *(a1 + 28) = 0;
  *(a1 + 32) = a2[6];
  *(a1 + 36) = a2[7];
  *(a1 + 40) = a2[8];
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  *(a1 + 48) = *a3;
  *(a1 + 52) = *(a3 + 4);
  result = *(a3 + 8);
  *(a1 + 56) = result;
  *(a1 + 60) = 1065353216;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(uint64_t this, float a2)
{
  *this = a2;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 20) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = a2;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = a2;
  return this;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = *(a2 + 4);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  result = *(a2 + 12);
  *(a1 + 60) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::Get(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, float (*a2)[4])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  (*a2)[4] = *(this + 4);
  (*a2)[5] = *(this + 5);
  (*a2)[6] = *(this + 6);
  (*a2)[7] = *(this + 7);
  (*a2)[8] = *(this + 8);
  (*a2)[9] = *(this + 9);
  (*a2)[10] = *(this + 10);
  (*a2)[11] = *(this + 11);
  (*a2)[12] = *(this + 12);
  (*a2)[13] = *(this + 13);
  (*a2)[14] = *(this + 14);
  (*a2)[15] = *(this + 15);
  return *a2;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetTranspose@<S0>(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(this + 4);
  v4 = *(this + 5);
  *a2 = *this;
  *(a2 + 4) = v3;
  v5 = *(this + 2);
  v6 = *(this + 3);
  *(a2 + 16) = v2;
  *(a2 + 20) = v4;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(a2 + 32) = v5;
  *(a2 + 36) = v7;
  *(a2 + 48) = v6;
  *(a2 + 52) = v8;
  v9 = *(this + 9);
  v10 = *(this + 12);
  v11 = *(this + 13);
  *(a2 + 8) = *(this + 8);
  *(a2 + 12) = v10;
  result = *(this + 10);
  v13 = *(this + 11);
  *(a2 + 24) = v9;
  *(a2 + 28) = v11;
  v14 = *(this + 14);
  v15 = *(this + 15);
  *(a2 + 40) = result;
  *(a2 + 44) = v14;
  *(a2 + 56) = v13;
  *(a2 + 60) = v15;
  return result;
}

pxrInternal__aapl__pxrReserved__::GfMatrix4f *pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, float64x2_t *a2)
{
  result = pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(this, a2);
  *(result + 3) = 0;
  *(result + 7) = 0;
  *(result + 52) = 0;
  *(result + 44) = 0;
  *(result + 15) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslateOnly(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *a2;
  *(a1 + 52) = *(a2 + 4);
  result = *(a2 + 8);
  *(a1 + 56) = result;
  *(a1 + 60) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = *(a2 + 3);
  *(this + 5) = *(a2 + 4);
  *(this + 6) = *(a2 + 5);
  *(this + 7) = 0;
  *(this + 8) = *(a2 + 6);
  *(this + 9) = *(a2 + 7);
  result = *(a2 + 8);
  *(this + 10) = result;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 15) = 1065353216;
  return result;
}

float *pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetInverse@<X0>(float *this@<X0>, double *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v5 = *this;
  v4 = this[1];
  v7 = this[4];
  v6 = this[5];
  v9 = this[8];
  v8 = this[9];
  v11 = this[12];
  v10 = this[13];
  v13 = this[2];
  v12 = this[3];
  v15 = this[6];
  v14 = this[7];
  v17 = this[10];
  v16 = this[11];
  v19 = this[14];
  v18 = this[15];
  v20 = ((v13 * v14) - (v12 * v15));
  v21 = ((v13 * v16) - (v12 * v17));
  v22 = ((v13 * v18) - (v12 * v19));
  v23 = ((v15 * v16) - (v14 * v17));
  v24 = ((v15 * v18) - (v14 * v19));
  v25 = ((v17 * v18) - (v16 * v19));
  v26 = v6 * v21 - v8 * v20 - v4 * v23;
  v27 = v10 * v20 + v4 * v24 - v6 * v22;
  v28 = v8 * v22 - v10 * v21 - v4 * v25;
  v29 = v10 * v23 + v6 * v25 - v8 * v24;
  v30 = ((*this * v29) + ((v7 * v28) + ((v11 * v26) + (v9 * v27))));
  if (a2)
  {
    *a2 = v30;
  }

  if (fabs(v30) <= a3)
  {
    *a4 = 2139095039;
    *(a4 + 12) = 0;
    *(a4 + 4) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 52) = 0;
    v94 = 1.0;
    v92 = 3.4028e38;
    v93 = 3.4028e38;
    *(a4 + 44) = 0;
  }

  else
  {
    v31 = (v5 * v6) - (v4 * v7);
    v32 = (v5 * v8) - (v4 * v9);
    v33 = (v5 * v10) - (v4 * v11);
    v34 = (v7 * v8) - (v6 * v9);
    v35 = (v7 * v10) - (v6 * v11);
    v36 = (v9 * v10) - (v8 * v11);
    v37 = v5;
    v38 = v7;
    v39 = v9;
    v95 = v26;
    v40 = v11;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    v47 = v13;
    v48 = v15;
    v49 = v17;
    v50 = v19;
    v51 = v14;
    v52 = v16;
    v53 = v37 * v23 - v38 * v21;
    v54 = v38 * v22 - v40 * v20;
    v55 = v39 * v20;
    v56 = v39 * v24;
    v57 = v40 * v23;
    v58 = v37 * v24;
    v59 = v37 * v25 - v39 * v22;
    v60 = v40 * v21;
    v61 = v56 - v57;
    v62 = v38 * v25;
    v63 = v34 * v47 - v42 * v48;
    v64 = v43 * v48 - v41 * v50;
    v65 = v47 * v46 - v43 * v49;
    v66 = v45 * v49 - v44 * v50;
    v67 = v42 * v51 - v41 * v52;
    v68 = v12;
    v69 = v47 * v45;
    v70 = v68 * v45;
    v71 = v45 * v52;
    v72 = v43 * v52;
    v73 = v70 - v43 * v51;
    v74 = v18;
    v75 = v42 * v50;
    v76 = v72 - v42 * v74;
    v77 = v46 * v51 - v71;
    v78 = v46 * v48;
    v79 = v68 * v46;
    v80 = v44 * v68;
    v81 = v41 * v74;
    v82 = v44 * v74;
    v83 = v60 + v59;
    v84.f64[0] = v77 + v82;
    v85 = 1.0 / v30;
    v86 = v85 * v29;
    v87 = v85 * v28;
    *a4 = v86;
    *(a4 + 4) = v87;
    *&v60 = v61 - v62;
    v88 = v85 * *&v60;
    *&v60 = v85 * v27;
    v89 = v85 * v95;
    *(a4 + 8) = LODWORD(v60);
    *(a4 + 12) = v89;
    *(a4 + 16) = v88;
    *&v60 = v55 + v53;
    v90 = v54 - v58;
    v91.f64[0] = v90;
    v91.f64[1] = *&v60;
    v84.f64[1] = v76 - v79;
    *(a4 + 24) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v91, v85)), vmulq_n_f64(v84, v85));
    *&v60 = (v66 - v78) * v85;
    *v91.f64 = (v67 - v80) * v85;
    *(a4 + 44) = LODWORD(v91.f64[0]);
    *(a4 + 48) = LODWORD(v60);
    *&v60 = (v65 + v75) * v85;
    *v91.f64 = (v64 - v69) * v85;
    *(a4 + 52) = LODWORD(v60);
    *(a4 + 56) = LODWORD(v91.f64[0]);
    *&v60 = v83;
    v92 = v85 * *&v60;
    v93 = (v73 + v81) * v85;
    v94 = (v63 + v41 * v49) * v85;
  }

  *(a4 + 20) = v92;
  *(a4 + 40) = v93;
  *(a4 + 60) = v94;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale(uint64_t this, float a2)
{
  *this = a2;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 20) = a2;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = a2;
  *(this + 52) = 0;
  *(this + 44) = 0;
  *(this + 60) = 1065353216;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetDeterminant(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10.i32[0] = *(this + 5);
  v9.i32[0] = *(this + 6);
  v11.i32[0] = *(this + 8);
  v12 = *(this + 2);
  v13 = __PAIR64__(v11.u32[0], v9.u32[0]);
  LODWORD(a9) = *(this + 4);
  v14 = *&a9 * v12;
  v15 = v10.f32[0] * v12;
  v16 = *(this + 36);
  v17 = *this;
  v18 = vzip1_s32(*&a9, v16);
  v19 = vzip1_s32(v16, *this);
  v20 = vzip2_s32(v16, *this);
  v21.i32[1] = v16.i32[1];
  v22 = vext_s8(v16, *this, 4uLL);
  v23 = vmul_n_f32(__PAIR64__(LODWORD(v12), v9.u32[0]), v16.f32[0]);
  v24 = v10.f32[0] * COERCE_FLOAT(*this);
  v25 = vmuls_lane_f32(v24, v16, 1);
  v26 = (*&a9 * v12) * v16.f32[0];
  v27 = __PAIR64__(v16.u32[1], v10.u32[0]);
  v10.i32[1] = v11.i32[0];
  v28 = vmuls_lane_f32(v9.f32[0], *this, 1);
  v9.i32[1] = LODWORD(a9);
  v29 = vmul_f32(v9, *this);
  v30 = vmul_f32(v16, v29);
  v17.i32[0] = v11.i32[0];
  v31 = v11.f32[0] * v28;
  v32 = v11.f32[0] * (v10.f32[0] * v12);
  v11.f32[1] = v12;
  v33.f32[0] = -*(this + 3);
  v34 = vmul_f32(v13, v11);
  v35 = vmul_f32(v18, v19);
  v18.i32[0] = *(this + 13);
  v13.i32[0] = *(this + 14);
  v33.i32[1] = *(this + 7);
  v21.i32[0] = LODWORD(a9);
  v36 = *(this + 12);
  return *(this + 15) * (((((v25 + v31) + v26) - v30.f32[0]) - v30.f32[1]) - v32) + vaddvq_f64(vmulq_f64(vcvtq_f64_f32(v33), vcvtq_f64_f32(vsub_f32(vsub_f32(vsub_f32(vadd_f32(vadd_f32(vmul_n_f32(v35, v13.f32[0]), vmul_n_f32(vmul_f32(v27, v20), v36)), vmul_n_f32(v34, v18.f32[0])), vmul_n_f32(vmul_f32(v21, v22), v18.f32[0])), vmul_n_f32(vmul_f32(v10, v17), v13.f32[0])), vmul_n_f32(v23, v36))))) - *(this + 11) * ((((((v13.f32[0] * v24) + (v36 * v28)) + (v18.f32[0] * v14)) - (v18.f32[0] * v29.f32[0])) - vmuls_lane_f32(v13.f32[0], v29, 1)) - (v36 * v15));
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::_GetDeterminant3(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = this + 16 * a2;
  v8 = this + 16 * a3;
  v9 = *&v8[4 * a6];
  v10 = this + 16 * a4;
  v11 = *&v10[4 * a5];
  return (((((((*&v7[4 * a5] * v9) * *&v10[4 * a7]) + ((*&v7[4 * a6] * *&v8[4 * a7]) * v11)) + ((*&v7[4 * a7] * *&v8[4 * a5]) * *&v10[4 * a6])) - ((*&v7[4 * a5] * *&v8[4 * a7]) * *&v10[4 * a6])) - (*&v10[4 * a7] * (*&v7[4 * a6] * *&v8[4 * a5]))) - (v11 * (v9 * *&v7[4 * a7])));
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetHandedness(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this)
{
  v1 = sub_29A139BF4(this);
  v2 = v1 < 0.0;
  v3 = v1 <= 0.0;
  result = 0.0;
  if (!v3)
  {
    result = 1.0;
  }

  if (v2)
  {
    return -1.0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(float32x2_t *this, int a2)
{
  v4 = this[1].f32[0];
  v20 = vcvtq_f64_f32(*this);
  v21 = v4;
  v5 = this[3].f32[0];
  v18 = vcvtq_f64_f32(this[2]);
  v19 = v5;
  v6 = this[5].f32[0];
  v16 = vcvtq_f64_f32(this[4]);
  v17 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::GfVec3d::OrthogonalizeBasis(&v20, &v18, &v16, 1, 0.000001);
  v9 = v7;
  *this = vcvt_f32_f64(v20);
  v10 = v21;
  this[1].f32[0] = v10;
  this[2] = vcvt_f32_f64(v18);
  v11 = v19;
  this[3].f32[0] = v11;
  this[4] = vcvt_f32_f64(v16);
  v12.i32[1] = HIDWORD(v17);
  *v12.i32 = v17;
  this[5].i32[0] = v12.i32[0];
  v12.i32[0] = this[7].i32[1];
  if (*v12.i32 != 1.0 && fabsf(*v12.i32) >= 1.0e-10)
  {
    this[6] = vdiv_f32(this[6], vdup_lane_s32(v12, 0));
    this[7].f32[0] = this[7].f32[0] / *v12.i32;
    this[7].i32[1] = 1065353216;
  }

  if (((v7 | a2 ^ 1) & 1) == 0)
  {
    v14[0] = "gf/matrix4f.cpp";
    v14[1] = "Orthonormalize";
    v14[2] = 478;
    v14[3] = "BOOL pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(BOOL)";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v14, "OrthogonalizeBasis did not converge, matrix may not be orthonormal.", v8);
  }

  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::GetOrthonormalized@<X0>(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v3;
  v4 = *(this + 3);
  *(a3 + 32) = *(this + 2);
  *(a3 + 48) = v4;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(a3, a2);
}

float32x4_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(float32x2_t *a1, double a2)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(a1[2]), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1[2].f32), a2));
  *a1->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a1), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1->f32), a2));
  *a1[2].f32 = v2;
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(a1[4]), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1[4].f32), a2));
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(a1[6]), a2)), vmulq_n_f64(vcvt_hight_f64_f32(*a1[6].f32), a2));
  *a1[4].f32 = v3;
  *a1[6].f32 = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator+=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  a1[3] = a2[3] + v3;
  v4 = a1[5];
  a1[4] = a2[4] + a1[4];
  a1[5] = a2[5] + v4;
  v5 = a1[7];
  a1[6] = a2[6] + a1[6];
  a1[7] = a2[7] + v5;
  v6 = a1[9];
  a1[8] = a2[8] + a1[8];
  a1[9] = a2[9] + v6;
  v7 = a1[11];
  a1[10] = a2[10] + a1[10];
  a1[11] = a2[11] + v7;
  v8 = a1[13];
  a1[12] = a2[12] + a1[12];
  a1[13] = a2[13] + v8;
  v9 = a1[15];
  a1[14] = a2[14] + a1[14];
  result = a2[15] + v9;
  a1[15] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator-=(float *a1, float *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  a1[3] = v3 - a2[3];
  v4 = a1[5];
  a1[4] = a1[4] - a2[4];
  a1[5] = v4 - a2[5];
  v5 = a1[7];
  a1[6] = a1[6] - a2[6];
  a1[7] = v5 - a2[7];
  v6 = a1[9];
  a1[8] = a1[8] - a2[8];
  a1[9] = v6 - a2[9];
  v7 = a1[11];
  a1[10] = a1[10] - a2[10];
  a1[11] = v7 - a2[11];
  v8 = a1[13];
  a1[12] = a1[12] - a2[12];
  a1[13] = v8 - a2[13];
  v9 = a1[15];
  a1[14] = a1[14] - a2[14];
  result = v9 - a2[15];
  a1[15] = result;
  return result;
}

float32x4_t pxrInternal__aapl__pxrReserved__::operator-@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2 = vnegq_f32(a1[1]);
  *a2 = vnegq_f32(*a1);
  a2[1] = v2;
  result = vnegq_f32(a1[2]);
  v4 = vnegq_f32(a1[3]);
  a2[2] = result;
  a2[3] = v4;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a1[8];
  v10 = a1[9];
  v13 = a1[10];
  v12 = a1[11];
  v15 = a1[12];
  v14 = a1[13];
  v17 = a1[14];
  v16 = a1[15];
  *a1 = (((*a1 * *a2) + (v3 * a2[4])) + (v4 * a2[8])) + (v5 * a2[12]);
  a1[1] = (((v2 * a2[1]) + (v3 * a2[5])) + (v4 * a2[9])) + (v5 * a2[13]);
  a1[2] = (((v2 * a2[2]) + (v3 * a2[6])) + (v4 * a2[10])) + (v5 * a2[14]);
  a1[3] = (((v2 * a2[3]) + (v3 * a2[7])) + (v4 * a2[11])) + (v5 * a2[15]);
  a1[4] = (((v7 * *a2) + (v6 * a2[4])) + (v9 * a2[8])) + (v8 * a2[12]);
  a1[5] = (((v7 * a2[1]) + (v6 * a2[5])) + (v9 * a2[9])) + (v8 * a2[13]);
  a1[6] = (((v7 * a2[2]) + (v6 * a2[6])) + (v9 * a2[10])) + (v8 * a2[14]);
  a1[7] = (((v7 * a2[3]) + (v6 * a2[7])) + (v9 * a2[11])) + (v8 * a2[15]);
  a1[8] = (((v11 * *a2) + (v10 * a2[4])) + (v13 * a2[8])) + (v12 * a2[12]);
  a1[9] = (((v11 * a2[1]) + (v10 * a2[5])) + (v13 * a2[9])) + (v12 * a2[13]);
  a1[10] = (((v11 * a2[2]) + (v10 * a2[6])) + (v13 * a2[10])) + (v12 * a2[14]);
  a1[11] = (((v11 * a2[3]) + (v10 * a2[7])) + (v13 * a2[11])) + (v12 * a2[15]);
  a1[12] = (((v15 * *a2) + (v14 * a2[4])) + (v17 * a2[8])) + (v16 * a2[12]);
  a1[13] = (((v15 * a2[1]) + (v14 * a2[5])) + (v17 * a2[9])) + (v16 * a2[13]);
  a1[14] = (((v15 * a2[2]) + (v14 * a2[6])) + (v17 * a2[10])) + (v16 * a2[14]);
  result = (((v15 * a2[3]) + (v14 * a2[7])) + (v17 * a2[11])) + (v16 * a2[15]);
  a1[15] = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::_SetRotateFromQuat(uint64_t a1, float *a2, float a3)
{
  v3 = ((a2[1] * a2[1]) + (a2[2] * a2[2]));
  v4 = 1.0 - (v3 + v3);
  *a1 = v4;
  v5 = (*a2 * a2[1]) + (a2[2] * a3);
  *(a1 + 4) = v5 + v5;
  v6 = (a2[2] * *a2) - (a2[1] * a3);
  *(a1 + 8) = v6 + v6;
  v7 = (*a2 * a2[1]) - (a2[2] * a3);
  *(a1 + 16) = v7 + v7;
  v8 = ((a2[2] * a2[2]) + (*a2 * *a2));
  *&v8 = 1.0 - (v8 + v8);
  *(a1 + 20) = LODWORD(v8);
  *&v8 = (a2[1] * a2[2]) + (*a2 * a3);
  *(a1 + 24) = *&v8 + *&v8;
  *&v8 = (a2[2] * *a2) + (a2[1] * a3);
  *(a1 + 32) = *&v8 + *&v8;
  v9 = (a2[1] * a2[2]) - (*a2 * a3);
  *(a1 + 36) = v9 + v9;
  v10 = ((a2[1] * a2[1]) + (*a2 * *a2));
  result = 1.0 - (v10 + v10);
  *(a1 + 40) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate(uint64_t a1, float *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::_SetRotateFromQuat(a1, a2, a2[3]);
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return a1;
}

pxrInternal__aapl__pxrReserved__::GfMatrix4f *pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, float64x2_t *a2)
{
  Quat = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  *&v4 = v4;
  *&Quat = Quat;
  *&v5 = v5;
  v8[0] = *&Quat;
  v8[1] = *&v5;
  *&Quat = v6;
  v8[2] = *&Quat;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::_SetRotateFromQuat(this, v8, *&v4);
  return this;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3f *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 4) = *(a2 + 3);
  *(this + 5) = *(a2 + 4);
  *(this + 6) = *(a2 + 5);
  *(this + 8) = *(a2 + 6);
  *(this + 9) = *(a2 + 7);
  result = *(a2 + 8);
  *(this + 10) = result;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = *(a2 + 4);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = *(a2 + 8);
  *(a1 + 40) = result;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslate(uint64_t a1, uint64_t a2)
{
  *a1 = 1065353216;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 20) = 1065353216;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a2;
  *(a1 + 52) = *(a2 + 4);
  result = *(a2 + 8);
  *(a1 + 56) = result;
  *(a1 + 60) = 1065353216;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetLookAt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a3 - *a2;
  v5 = vsub_f32(*(a3 + 4), *(a2 + 4));
  v6 = vmul_f32(v5, v5);
  v7 = 1.0 / fmaxf(sqrtf(((v4 * v4) + v6.f32[0]) + v6.f32[1]), 1.0e-10);
  v8 = v7 * v4;
  v9 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v5), v7));
  v10 = *(a4 + 4);
  LODWORD(v7) = vdup_lane_s32(v10, 1).u32[0];
  HIDWORD(v7) = *a4;
  v11.i32[0] = vdup_lane_s32(v9, 1).u32[0];
  v11.f32[1] = v8;
  v12 = vsub_f32(vmul_f32(*&v7, v9), vmul_f32(v10, v11));
  v13 = (v8 * v10.f32[0]) - (*a4 * v9.f32[0]);
  v14 = 1.0 / fmaxf(sqrtf((v13 * v13) + vaddv_f32(vmul_f32(v12, v12))), 1.0e-10);
  v6.f32[0] = v14 * v12.f32[0];
  v15 = v14 * v12.f32[1];
  v16 = v14 * v13;
  *&v14 = vmuls_lane_f32(v15, v9, 1) - (v16 * v9.f32[0]);
  v12.f32[0] = (v8 * v16) - vmuls_lane_f32(v6.f32[0], v9, 1);
  v11.f32[0] = (v6.f32[0] * v9.f32[0]) - (v8 * v15);
  *a1 = v6.i32[0];
  *(a1 + 16) = v15;
  *(a1 + 32) = v16;
  *(a1 + 48) = -((*(a2 + 8) * v16) + ((*a2 * v6.f32[0]) + (*(a2 + 4) * v15)));
  *(a1 + 4) = LODWORD(v14);
  *(a1 + 20) = v12.i32[0];
  *(a1 + 36) = v11.i32[0];
  *(a1 + 52) = -((*(a2 + 8) * v11.f32[0]) + ((*a2 * *&v14) + (*(a2 + 4) * v12.f32[0])));
  *(a1 + 8) = -v8;
  *(a1 + 24) = -v9.f32[0];
  *(a1 + 40) = -v9.f32[1];
  result = ((*a2 * v8) + (*(a2 + 4) * v9.f32[0])) + vmuls_lane_f32(*(a2 + 8), v9, 1);
  *(a1 + 56) = result;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

_OWORD *pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetLookAt(_OWORD *a1, float32x2_t *a2, double *a3)
{
  *&v4 = -a2[1].f32[0];
  v5 = vneg_f32(*a2);
  v12.f64[0] = sub_29A131CC0(a3);
  v12.f64[1] = v6;
  v13 = v7;
  v14 = v8;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotateOnly(v18, &v12);
  v18[3] = 0.0;
  v18[7] = 0.0;
  v20 = 0;
  v19 = 0;
  v21 = 1065353216;
  *v15 = 1065353216;
  *&v15[4] = 0uLL;
  *&v15[20] = 1065353216;
  *&v15[24] = 0;
  *&v16 = 0;
  *(&v16 + 1) = 1065353216;
  *&v17 = v5;
  *(&v17 + 1) = v4 | 0x3F80000000000000;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(v15, v18);
  v9 = *&v15[16];
  *a1 = *v15;
  a1[1] = v9;
  v10 = v17;
  a1[2] = v16;
  a1[3] = v10;
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfMatrix4f::Factor(uint64_t a1, float32x4_t *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, float a7)
{
  v11 = 0;
  v73 = *MEMORY[0x29EDCA608];
  *a6 = 1065353216;
  *(a6 + 12) = 0;
  *(a6 + 4) = 0;
  *(a6 + 20) = 1065353216;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1065353216;
  *(a6 + 52) = 0;
  *(a6 + 60) = 1065353216;
  v12 = &v63;
  *(a6 + 44) = 0;
  v13 = a1 + 48;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v12[i] = *(a1 + 4 * i);
    }

    *(&v64[2 * v11] + 1) = 0;
    *(&v65 + v11) = 0;
    *(a5 + 4 * v11) = *(v13 + 4 * v11);
    ++v11;
    v12 += 4;
    a1 += 16;
  }

  while (v11 != 3);
  *(&v66 + 1) = 0x3FF0000000000000;
  Determinant3 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::_GetDeterminant3(&v63, 0, 1, 2, 0, 1, 2);
  if (Determinant3 >= 0.0)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = a7;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose(&v63, &v56);
  v62[4] = v64[3];
  v62[5] = v64[4];
  v62[6] = v65;
  v62[7] = v66;
  v62[0] = v63;
  v62[1] = v64[0];
  v62[2] = v64[1];
  v62[3] = v64[2];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v62, v56.f64);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::_Jacobi3(v62, v55, &v67);
  v56 = v67;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  *v61 = v72;
  memset(&v61[8], 0, 32);
  *&v61[40] = 0x3FF0000000000000;
  v18 = v54;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(v54, 1.0);
  for (j = 0; j != 3; ++j)
  {
    v20 = v55[j];
    v21 = sqrt(v20);
    if (v20 >= v17)
    {
      v22 = v21;
    }

    else
    {
      v22 = v17;
    }

    v23 = v16 * v22;
    *(a3 + 4 * j) = v23;
    *v18 = 1.0 / v23;
    v18 += 5;
  }

  v34 = v60;
  v35 = *v61;
  v36 = *&v61[16];
  v37 = *&v61[32];
  v30 = v56;
  v31 = v57;
  v32 = v58;
  v33 = v59;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v30.f64, v54);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose(&v56, v29);
  v42 = v34;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v38.f64, v29);
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v46 = v38;
  v47 = v39;
  v48 = v40;
  v49 = v41;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v46.f64, &v63);
  v24 = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v49);
  *a4 = vcvt_hight_f32_f64(vcvt_f32_f64(v46), v47);
  a4[1] = v24;
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(v52), v53);
  a4[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v51);
  a4[3] = v25;
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v58), v59);
  *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(v56), v57);
  a2[1] = v26;
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v61[16]), *&v61[32]);
  a2[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v60), *v61);
  a2[3] = v27;
  return Determinant3 * v16 >= v17;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::_Jacobi3(float *a1, double *a2, void *a3)
{
  v3 = 0;
  v4 = a1[5];
  v5 = a1[10];
  *a2 = *a1;
  a2[1] = v4;
  a2[2] = v5;
  *a3 = 0x3FF0000000000000;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  a3[4] = 0x3FF0000000000000;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0x3FF0000000000000;
  v6 = *(a1 + 1);
  v71 = *a1;
  v72[0] = v6;
  v7 = *(a1 + 3);
  v72[1] = *(a1 + 2);
  v72[2] = v7;
  v69 = *a2;
  v70 = *(a2 + 2);
  memset(v68, 0, sizeof(v68));
  do
  {
    v8 = 0;
    v9 = 0.0;
    v10 = &v71;
    v11 = 1;
    do
    {
      result = v11;
      v13 = v10 + 4;
      v14 = v8;
      do
      {
        v9 = v9 + fabsf(*&v13[v14]);
        v14 += 4;
      }

      while (v14 != 8);
      v11 = 0;
      v8 += 4;
      v10 = v72;
    }

    while ((result & 1) != 0);
    if (v9 == 0.0)
    {
      break;
    }

    v15 = 0.0;
    if (v3 <= 2)
    {
      v15 = v9 * 0.2 / 9.0;
    }

    v16 = 0;
    v17 = a3;
    result = (a3 + 1);
    v18 = &v71 + 1;
    v19 = v72 + 1;
    v20 = 1;
    do
    {
      v21 = v16 + 1;
      if (v16 <= 1)
      {
        v22 = 0;
        v23 = result;
        v24 = v19;
        v25 = v20;
        v26 = &v72[v16 - 1];
        do
        {
          v27 = v26[v25];
          v28 = fabsf(v27);
          v29 = v28 * 100.0;
          if (v3 >= 4 && (v30 = fabs(a2[v16]), v29 + v30 == v30) && (v31 = fabs(a2[v25]), v29 + v31 == v31))
          {
            v26[v25] = 0.0;
          }

          else if (v15 < v28)
          {
            v32 = a2[v25];
            v33 = a2[v16];
            v34 = v32 - v33;
            v35 = vabdd_f64(v32, v33);
            v36 = v29 + v35;
            v37 = v27;
            v38 = v34 * 0.5 / v37;
            v39 = 1.0 / (fabs(v38) + sqrt(v38 * v38 + 1.0));
            if (v38 >= 0.0)
            {
              v40 = v39;
            }

            else
            {
              v40 = -v39;
            }

            v41 = v37 / v34;
            v42 = v36 == v35;
            v43 = v37;
            if (v42)
            {
              v44 = v41;
            }

            else
            {
              v44 = v40;
            }

            v45 = 1.0 / sqrt(v44 * v44 + 1.0);
            v46 = v44 * v45;
            v47 = v44 * v43;
            *&v68[v16] = *&v68[v16] - v47;
            *&v68[v25] = v47 + *&v68[v25];
            v48 = v46 / (v45 + 1.0);
            a2[v16] = v33 - v47;
            a2[v25] = v47 + a2[v25];
            v26[v25] = 0.0;
            if (v16 == 1)
            {
              v49 = *(&v71 + 1);
              v50 = *(&v72[-1] + v25);
              v51 = *(&v71 + 1) - v46 * (v48 * *(&v71 + 1) + v50);
              *(&v71 + 1) = v51;
              *&v50 = v46 * (v49 - v48 * v50) + v50;
              *(&v72[-1] + v25) = LODWORD(v50);
            }

            v52 = v22;
            v53 = v18;
            v54 = v24;
            if (v21 < v25)
            {
              do
              {
                v55 = *v53;
                v56 = *v54;
                v57 = v55 - v46 * (v48 * v55 + v56);
                *v53++ = v57;
                *&v55 = v46 * (v55 - v48 * v56) + v56;
                *v54 = *&v55;
                v54 += 4;
                --v52;
              }

              while (v52);
            }

            if (v25 < 2)
            {
              v58 = &v72[v25 - 1];
              v59 = 4 * v25 + 4;
              v60 = *(v26 + v59);
              v61 = *(v58 + v59);
              v62 = v60 - v46 * (v48 * v60 + v61);
              *(v26 + v59) = v62;
              *&v60 = v46 * (v60 - v48 * v61) + v61;
              *(v58 + v59) = LODWORD(v60);
            }

            for (i = 0; i != 9; i += 3)
            {
              v64 = *&v17[i];
              v65 = *(v23 + i * 8);
              *&v17[i] = v64 - v46 * (v65 + v48 * v64);
              *(v23 + i * 8) = v65 + v46 * (v64 - v48 * v65);
            }
          }

          ++v25;
          ++v24;
          ++v22;
          v23 += 8;
        }

        while (v25 != 3);
      }

      ++v20;
      v19 += 5;
      v18 += 5;
      result += 8;
      ++v17;
      ++v16;
    }

    while (v21 != 3);
    for (j = 0; j != 3; ++j)
    {
      v67 = *&v68[j] + *(&v69 + j * 8);
      *(&v69 + j * 8) = v67;
      a2[j] = v67;
      v68[j] = 0;
    }

    ++v3;
  }

  while (v3 != 50);
  return result;
}

float32x4_t pxrInternal__aapl__pxrReserved__::GfMatrix4f::RemoveScaleShear@<Q0>(float32x4_t *this@<X0>, float32x4_t *a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::GfMatrix4f::Factor(this, v24, v21, v23, &v19, v22, 0.00001))
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4f::Orthonormalize(v23, 1);
    v9 = 1065353216;
    v11 = 0;
    v10 = 0;
    v12 = 1065353216;
    v13 = 0;
    v14 = 0;
    v15 = 1065353216;
    v16 = v19;
    v17 = v20;
    v18 = 1065353216;
    v4 = v23[1];
    *a2 = v23[0];
    a2[1] = v4;
    v5 = v23[3];
    a2[2] = v23[2];
    a2[3] = v5;
    result.f32[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=(a2->f32, &v9);
  }

  else
  {
    v7 = this[1];
    *a2 = *this;
    a2[1] = v7;
    result = this[2];
    v8 = this[3];
    a2[2] = result;
    a2[3] = v8;
  }

  return result;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotationQuat(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this)
{
  v1 = *(this + 5);
  v2 = *(this + 10);
  if (*this > v1)
  {
    v3 = *this;
  }

  else
  {
    v3 = *(this + 5);
  }

  if (v3 <= v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *this <= v1;
  }

  v5 = (*this + v1) + v2;
  v6 = this + 4 * (4 * v4);
  v7 = *&v6[4 * v4];
  if (v5 > v7)
  {
    return (*(this + 6) - *(this + 9)) / ((sqrtf(v5 + *(this + 15)) * 0.5) * 4.0);
  }

  if (v4 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 + 1;
  }

  v10 = v4 + 2 - 3 * ((1431655766 * (v4 + 2)) >> 32);
  v11 = this + 16 * v9;
  v12 = this + 16 * v10;
  v13 = sqrtf(((v7 - *&v11[4 * v9]) - *&v12[4 * v10]) + *(this + 15)) * 0.5;
  *(&v15 + v4) = v13;
  v14 = v13 * 4.0;
  *(&v15 + v9) = (*&v6[4 * v9] + *&v11[4 * v4]) / v14;
  *(&v15 + v10) = (*&v12[4 * v4] + *&v6[4 * v10]) / v14;
  return v15;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotation(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this)
{
  v5.i32[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotationQuat(this);
  v5.i32[1] = v1;
  v6 = v2;
  v7 = v3;
  pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(v8, &v5);
  pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat(&v9, v8);
  return v9;
}

float pxrInternal__aapl__pxrReserved__::GfMatrix4f::DecomposeRotation(pxrInternal__aapl__pxrReserved__::GfMatrix4f *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4)
{
  v17.f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotation(a1);
  v17.f64[1] = v7;
  v18 = v8;
  v19 = v9;
  v15 = vcvtq_f64_f32(*a2);
  v16 = a2[1].f32[0];
  v13 = vcvtq_f64_f32(*a3);
  v14 = a3[1].f32[0];
  v11 = vcvtq_f64_f32(*a4);
  v12 = a4[1].f32[0];
  return pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(&v17, v15.f64, v13.f64, v11.f64);
}

__n128 pxrInternal__aapl__pxrReserved__::GfMatrix4f::ExtractRotationMatrix@<Q0>(pxrInternal__aapl__pxrReserved__::GfMatrix4f *this@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = *this;
  *&v2 = *(this + 20);
  result.n128_u32[2] = *(this + 2);
  result.n128_u32[3] = *(this + 4);
  v4 = *(this + 10);
  *(&v2 + 1) = *(this + 4);
  *a2 = result;
  *(a2 + 16) = v2;
  *(a2 + 32) = v4;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3, double a4)
{
  v4 = 0;
  v5 = 0;
LABEL_2:
  v6 = 0;
  while (vabdd_f64(*(this + v6), *(a2 + v6)) < a4)
  {
    v6 += 4;
    if (v6 == 16)
    {
      v4 = v5 > 2;
      a2 = (a2 + 16);
      this = (this + 16);
      if (++v5 != 4)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }

  return v4;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(float64x2_t *this, float32x2_t *a2)
{
  v2 = vcvtq_f64_f32(a2[1]);
  *this = vcvtq_f64_f32(*a2);
  this[1] = v2;
  v3 = vcvtq_f64_f32(a2[3]);
  this[2] = vcvtq_f64_f32(a2[2]);
  this[3] = v3;
  v4 = vcvtq_f64_f32(a2[5]);
  this[4] = vcvtq_f64_f32(a2[4]);
  this[5] = v4;
  result = vcvtq_f64_f32(a2[6]);
  v6 = vcvtq_f64_f32(a2[7]);
  this[6] = result;
  this[7] = v6;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(_OWORD *a1, uint64_t *a2)
{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  memset(&v15[8], 0, 32);
  memset(&v14[56], 0, 24);
  memset(&v14[8], 0, 32);
  *v14 = 0x3FF0000000000000;
  *&v14[40] = 0x3FF0000000000000uLL;
  *v15 = 0x3FF0000000000000;
  *&v15[40] = 0x3FF0000000000000;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v14;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 3;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *&v5[8 * v6] = *(v7 + 8 * v6);
      ++v6;
    }

    while (v6 != 4);
    ++v2;
    v5 += 32;
  }

  while (v2 != 4);
  v9 = *&v14[16];
  *a1 = *v14;
  a1[1] = v9;
  v10 = *&v14[48];
  a1[2] = *&v14[32];
  a1[3] = v10;
  v11 = *v15;
  a1[4] = *&v14[64];
  a1[5] = v11;
  result = *&v15[16];
  v13 = *&v15[32];
  a1[6] = *&v15[16];
  a1[7] = v13;
  return result;
}

{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  memset(&v15[8], 0, 32);
  memset(&v14[56], 0, 24);
  memset(&v14[8], 0, 32);
  *v14 = 0x3FF0000000000000;
  *&v14[40] = 0x3FF0000000000000uLL;
  *v15 = 0x3FF0000000000000;
  *&v15[40] = 0x3FF0000000000000;
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = v14;
  do
  {
    if (v2 == v4)
    {
      break;
    }

    v6 = 0;
    v7 = *(v3 + 24 * v2);
    v8 = (*(v3 + 24 * v2 + 8) - v7) >> 2;
    do
    {
      if (v8 == v6)
      {
        break;
      }

      *&v5[8 * v6] = *(v7 + 4 * v6);
      ++v6;
    }

    while (v6 != 4);
    ++v2;
    v5 += 32;
  }

  while (v2 != 4);
  v9 = *&v14[16];
  *a1 = *v14;
  a1[1] = v9;
  v10 = *&v14[48];
  a1[2] = *&v14[32];
  a1[3] = v10;
  v11 = *v15;
  a1[4] = *&v14[64];
  a1[5] = v11;
  result = *&v15[16];
  v13 = *&v15[32];
  a1[6] = *&v15[16];
  a1[7] = v13;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v27 = *MEMORY[0x29EDCA608];
  memset(&v26[8], 0, 32);
  memset(&v25[3] + 8, 0, 24);
  memset(v25 + 8, 0, 32);
  *&v25[0] = 0x3FF0000000000000;
  *(&v25[2] + 8) = 0x3FF0000000000000uLL;
  *v26 = 0x3FF0000000000000;
  *&v26[40] = 0x3FF0000000000000;
  v6 = *a2;
  v7 = (a2[1] - *a2) >> 3;
  do
  {
    if (v7 == v5)
    {
      break;
    }

    *(v25 + v5) = *(v6 + 8 * v5);
    ++v5;
  }

  while (v5 != 4);
  v8 = *a3;
  v9 = (*(a3 + 8) - *a3) >> 3;
  for (i = 4; i != 8; ++i)
  {
    if (!v9)
    {
      break;
    }

    v11 = *v8++;
    *(v25 + i) = v11;
    --v9;
  }

  v12 = *a4;
  v13 = (*(a4 + 8) - *a4) >> 3;
  for (j = 8; j != 12; ++j)
  {
    if (!v13)
    {
      break;
    }

    v15 = *v12++;
    *(v25 + j) = v15;
    --v13;
  }

  v16 = *a5;
  v17 = (*(a5 + 8) - *a5) >> 3;
  for (k = 12; k != 16; ++k)
  {
    if (!v17)
    {
      break;
    }

    v19 = *v16++;
    *(v25 + k) = v19;
    --v17;
  }

  v20 = v25[1];
  *a1 = v25[0];
  a1[1] = v20;
  v21 = v25[3];
  a1[2] = v25[2];
  a1[3] = v21;
  v22 = *v26;
  a1[4] = v25[4];
  a1[5] = v22;
  result = *&v26[16];
  v24 = *&v26[32];
  a1[6] = *&v26[16];
  a1[7] = v24;
  return result;
}

{
  v5 = 0;
  v27 = *MEMORY[0x29EDCA608];
  memset(&v26[8], 0, 32);
  memset(&v25[3] + 8, 0, 24);
  memset(v25 + 8, 0, 32);
  *&v25[0] = 0x3FF0000000000000;
  *(&v25[2] + 8) = 0x3FF0000000000000uLL;
  *v26 = 0x3FF0000000000000;
  *&v26[40] = 0x3FF0000000000000;
  v6 = *a2;
  v7 = (a2[1] - *a2) >> 2;
  do
  {
    if (v7 == v5)
    {
      break;
    }

    *(v25 + v5) = *(v6 + 4 * v5);
    ++v5;
  }

  while (v5 != 4);
  v8 = *a3;
  v9 = (*(a3 + 8) - *a3) >> 2;
  for (i = 32; i != 64; i += 8)
  {
    if (!v9)
    {
      break;
    }

    v11 = *v8++;
    *(v25 + i) = v11;
    --v9;
  }

  v12 = *a4;
  v13 = (*(a4 + 8) - *a4) >> 2;
  for (j = 64; j != 96; j += 8)
  {
    if (!v13)
    {
      break;
    }

    v15 = *v12++;
    *(v25 + j) = v15;
    --v13;
  }

  v16 = *a5;
  v17 = (*(a5 + 8) - *a5) >> 2;
  for (k = 96; k != 128; k += 8)
  {
    if (!v17)
    {
      break;
    }

    v19 = *v16++;
    *(v25 + k) = v19;
    --v17;
  }

  v20 = v25[1];
  *a1 = v25[0];
  a1[1] = v20;
  v21 = v25[3];
  a1[2] = v25[2];
  a1[3] = v21;
  v22 = *v26;
  a1[4] = v25[4];
  a1[5] = v22;
  result = *&v26[16];
  v24 = *&v26[32];
  a1[6] = *&v26[16];
  a1[7] = v24;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(pxrInternal__aapl__pxrReserved__::GfMatrix4d *a1, float64x2_t *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a1, a2);
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 8);
  result = *(a3 + 16);
  *(v4 + 14) = result;
  *(v4 + 15) = 0x3FF0000000000000;
  return result;
}

{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a1, a2);
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 8);
  result = *(a3 + 16);
  *(v4 + 14) = result;
  *(v4 + 15) = 0x3FF0000000000000;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTransform(pxrInternal__aapl__pxrReserved__::GfMatrix4d *a1, float64x2_t *a2, uint64_t a3)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a1, a2);
  *(v4 + 12) = *a3;
  *(v4 + 13) = *(a3 + 8);
  result = *(a3 + 16);
  *(v4 + 14) = result;
  *(v4 + 15) = 0x3FF0000000000000;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTransform(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = 0;
  *(a1 + 32) = a2[3];
  *(a1 + 40) = a2[4];
  *(a1 + 48) = a2[5];
  *(a1 + 56) = 0;
  *(a1 + 64) = a2[6];
  *(a1 + 72) = a2[7];
  *(a1 + 80) = a2[8];
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 96) = *a3;
  *(a1 + 104) = *(a3 + 8);
  result = *(a3 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(uint64_t this, double a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = a2;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = a2;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = a2;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 16);
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  result = *(a2 + 24);
  *(a1 + 120) = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::Get(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, double (*a2)[4])
{
  (*a2)[0] = *this;
  (*a2)[1] = *(this + 1);
  (*a2)[2] = *(this + 2);
  (*a2)[3] = *(this + 3);
  (*a2)[4] = *(this + 4);
  (*a2)[5] = *(this + 5);
  (*a2)[6] = *(this + 6);
  (*a2)[7] = *(this + 7);
  (*a2)[8] = *(this + 8);
  (*a2)[9] = *(this + 9);
  (*a2)[10] = *(this + 10);
  (*a2)[11] = *(this + 11);
  (*a2)[12] = *(this + 12);
  (*a2)[13] = *(this + 13);
  (*a2)[14] = *(this + 14);
  (*a2)[15] = *(this + 15);
  return *a2;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose@<D0>(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 1);
  v3 = *(this + 4);
  v4 = *(this + 5);
  *a2 = *this;
  *(a2 + 8) = v3;
  v5 = *(this + 2);
  v6 = *(this + 3);
  *(a2 + 32) = v2;
  *(a2 + 40) = v4;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(a2 + 64) = v5;
  *(a2 + 72) = v7;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  v9 = *(this + 9);
  v10 = *(this + 12);
  v11 = *(this + 13);
  *(a2 + 16) = *(this + 8);
  *(a2 + 24) = v10;
  result = *(this + 10);
  v13 = *(this + 11);
  *(a2 + 48) = v9;
  *(a2 + 56) = v11;
  v14 = *(this + 14);
  v15 = *(this + 15);
  *(a2 + 80) = result;
  *(a2 + 88) = v14;
  *(a2 + 112) = v13;
  *(a2 + 120) = v15;
  return result;
}

pxrInternal__aapl__pxrReserved__::GfMatrix4d *pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, float64x2_t *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  v7[1] = v3;
  v7[2] = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::_SetRotateFromQuat(this, v7, v5);
  *(this + 3) = 0;
  *(this + 7) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0x3FF0000000000000;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslateOnly(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *a2;
  *(a1 + 104) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3d *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = *(a2 + 3);
  *(this + 5) = *(a2 + 4);
  *(this + 6) = *(a2 + 5);
  *(this + 7) = 0;
  *(this + 8) = *(a2 + 6);
  *(this + 9) = *(a2 + 7);
  *(this + 10) = *(a2 + 8);
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0x3FF0000000000000;
  return result;
}

double *pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse@<X0>(double *this@<X0>, double *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v4 = *this;
  v5 = this[1];
  v6 = this[4];
  v7 = this[5];
  v8 = this[8];
  v9 = this[9];
  v10 = this[12];
  v11 = this[13];
  v13 = this[2];
  v12 = this[3];
  v14 = this[6];
  v15 = this[7];
  v16 = this[10];
  v17 = this[11];
  v19 = this[14];
  v18 = this[15];
  v20 = v13 * v15 - v12 * v14;
  v21 = v13 * v17 - v12 * v16;
  v22 = v13 * v18 - v12 * v19;
  v23 = v14 * v17 - v15 * v16;
  v24 = v14 * v18 - v15 * v19;
  v25 = v16 * v18 - v17 * v19;
  v26 = v7 * v21 - v9 * v20 - v5 * v23;
  v27 = v11 * v20 + v5 * v24 - v7 * v22;
  v28 = v9 * v22 - v11 * v21 - v5 * v25;
  v29 = v11 * v23 + v7 * v25 - v9 * v24;
  v30 = *this * v29 + v6 * v28 + v10 * v26 + v8 * v27;
  if (a2)
  {
    *a2 = v30;
  }

  if (fabs(v30) <= a3)
  {
    *a4 = 0x47EFFFFFE0000000;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0u;
    v39 = 1.0;
    v37 = 3.40282347e38;
    v38 = 3.40282347e38;
  }

  else
  {
    v31 = v4 * v7 - v5 * v6;
    v32 = v4 * v9 - v5 * v8;
    v33 = v4 * v11 - v5 * v10;
    v34 = v6 * v9 - v7 * v8;
    v35 = v6 * v11 - v7 * v10;
    v36 = v8 * v11 - v9 * v10;
    *a4 = v29 * (1.0 / v30);
    *(a4 + 8) = v28 * (1.0 / v30);
    *(a4 + 32) = (v8 * v24 - v10 * v23 - v6 * v25) * (1.0 / v30);
    *(a4 + 16) = v27 * (1.0 / v30);
    *(a4 + 24) = v26 * (1.0 / v30);
    *(a4 + 64) = (v36 * v15 - v35 * v17 + v34 * v18) * (1.0 / v30);
    *(a4 + 72) = (v33 * v17 - v32 * v18 - v12 * v36) * (1.0 / v30);
    *(a4 + 48) = (v6 * v22 - v10 * v20 - v4 * v24) * (1.0 / v30);
    *(a4 + 56) = (v8 * v20 + v4 * v23 - v6 * v21) * (1.0 / v30);
    *(a4 + 88) = (v32 * v15 - v31 * v17 - v34 * v12) * (1.0 / v30);
    *(a4 + 96) = (v35 * v16 - v34 * v19 - v36 * v14) * (1.0 / v30);
    *(a4 + 104) = (v13 * v36 - v33 * v16 + v32 * v19) * (1.0 / v30);
    *(a4 + 112) = (v33 * v14 - v31 * v19 - v13 * v35) * (1.0 / v30);
    v37 = (v10 * v21 + v4 * v25 - v8 * v22) * (1.0 / v30);
    v38 = (v12 * v35 - v33 * v15 + v31 * v18) * (1.0 / v30);
    v39 = (v34 * v13 - v32 * v14 + v31 * v16) * (1.0 / v30);
  }

  *(a4 + 40) = v37;
  *(a4 + 80) = v38;
  *(a4 + 120) = v39;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(uint64_t this, double a2)
{
  *this = a2;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = a2;
  *(this + 48) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = a2;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0x3FF0000000000000;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetDeterminant(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this)
{
  v2 = *(this + 4);
  v1 = *(this + 5);
  v3.f64[0] = *(this + 8);
  v4.f64[0] = *(this + 9);
  v5 = *(this + 12);
  v6 = *(this + 13);
  v8 = *(this + 6);
  v7.f64[0] = *(this + 7);
  v9.f64[0] = *(this + 1);
  v10.f64[0] = *(this + 2);
  v11.f64[0] = *this;
  v12 = v1 * *this;
  v13.f64[0] = *this;
  v13.f64[1] = v4.f64[0];
  v14.f64[0] = v10.f64[0];
  v14.f64[1] = v8;
  v4.f64[1] = v2;
  v15 = *(this + 14);
  v16.f64[0] = v9.f64[0];
  v17 = v8 * v9.f64[0];
  v18 = v2 * v9.f64[0];
  v19.f64[0] = *(this + 10);
  v9.f64[1] = v19.f64[0];
  v11.f64[1] = v19.f64[0];
  v20.f64[0] = v19.f64[0];
  v21 = v19.f64[0] * v12;
  v22 = v19.f64[0] * (v2 * v9.f64[0]);
  v19.f64[1] = v1;
  v23 = vaddq_f64(vmulq_n_f64(vmulq_f64(v4, v13), v15), vmulq_n_f64(vmulq_f64(v19, v9), v5));
  v13.f64[0] = v1 * v10.f64[0];
  v10.f64[1] = v3.f64[0];
  v16.f64[1] = v3.f64[0];
  v19.f64[0] = v3.f64[0];
  v24 = v3.f64[0] * (v1 * v10.f64[0]);
  v3.f64[1] = v8;
  v20.f64[1] = v2;
  v19.f64[1] = v1;
  v7.f64[1] = *(this + 3);
  v25 = vmulq_f64(v7, vsubq_f64(vsubq_f64(vsubq_f64(vaddq_f64(v23, vmulq_n_f64(vmulq_f64(v3, v10), v6)), vmulq_n_f64(vmulq_f64(v20, v11), v6)), vmulq_n_f64(vmulq_f64(v19, v16), v15)), vmulq_n_f64(vmulq_n_f64(v14, v4.f64[0]), v5)));
  return *(this + 15) * (v21 + v3.f64[0] * v17 + v4.f64[0] * (v2 * v10.f64[0]) - v4.f64[0] * (v8 * *this) - v22 - v24) + vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0] - *(this + 11) * (v15 * v12 + v5 * v17 + v6 * (v2 * v10.f64[0]) - v6 * (v8 * *this) - v15 * v18 - v5 * v13.f64[0]);
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::_GetDeterminant3(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = this + 32 * a2;
  v8 = this + 32 * a3;
  v9 = this + 32 * a4;
  v10 = *&v7[8 * a6];
  v11 = *&v8[8 * a5];
  return *&v7[8 * a5] * *&v8[8 * a6] * *&v9[8 * a7] + v10 * *&v8[8 * a7] * *&v9[8 * a5] + *&v7[8 * a7] * v11 * *&v9[8 * a6] - *&v7[8 * a5] * *&v8[8 * a7] * *&v9[8 * a6] - *&v9[8 * a7] * (v10 * v11) - *&v9[8 * a5] * (*&v8[8 * a6] * *&v7[8 * a7]);
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetHandedness(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this)
{
  v1 = sub_29A13C594(this);
  v2 = v1 < 0.0;
  v3 = v1 <= 0.0;
  result = 0.0;
  if (!v3)
  {
    result = 1.0;
  }

  if (v2)
  {
    return -1.0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::Orthonormalize(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, int a2)
{
  v4 = *(this + 2);
  v18 = *this;
  v19 = v4;
  v5 = *(this + 6);
  v16 = *(this + 2);
  v17 = v5;
  v6 = *(this + 10);
  v14 = *(this + 4);
  v15 = v6;
  v7 = pxrInternal__aapl__pxrReserved__::GfVec3d::OrthogonalizeBasis(&v18, &v16, &v14, 1, 0.000001);
  v9 = v7;
  *this = v18;
  *(this + 2) = v19;
  *(this + 2) = v16;
  *(this + 6) = v17;
  *(this + 4) = v14;
  v10 = *(this + 15);
  *(this + 10) = v15;
  if (*&v10 != 1.0 && fabs(*&v10) >= 1.0e-10)
  {
    *(this + 6) = vdivq_f64(*(this + 6), vdupq_lane_s64(v10, 0));
    *(this + 14) = *(this + 14) / *&v10;
    *(this + 15) = 0x3FF0000000000000;
  }

  if (((v7 | a2 ^ 1) & 1) == 0)
  {
    v12[0] = "gf/matrix4d.cpp";
    v12[1] = "Orthonormalize";
    v12[2] = 478;
    v12[3] = "BOOL pxrInternal__aapl__pxrReserved__::GfMatrix4d::Orthonormalize(BOOL)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v12, "OrthogonalizeBasis did not converge, matrix may not be orthonormal.", v8);
  }

  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetOrthonormalized@<X0>(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this@<X0>, int a2@<W1>, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3@<X8>)
{
  v3 = *(this + 5);
  *(a3 + 4) = *(this + 4);
  *(a3 + 5) = v3;
  v4 = *(this + 7);
  *(a3 + 6) = *(this + 6);
  *(a3 + 7) = v4;
  v5 = *(this + 1);
  *a3 = *this;
  *(a3 + 1) = v5;
  v6 = *(this + 3);
  *(a3 + 2) = *(this + 2);
  *(a3 + 3) = v6;
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::Orthonormalize(a3, a2);
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(float64x2_t *a1, double a2)
{
  v2 = vmulq_n_f64(a1[1], a2);
  *a1 = vmulq_n_f64(*a1, a2);
  a1[1] = v2;
  v3 = vmulq_n_f64(a1[3], a2);
  a1[2] = vmulq_n_f64(a1[2], a2);
  a1[3] = v3;
  v4 = vmulq_n_f64(a1[5], a2);
  a1[4] = vmulq_n_f64(a1[4], a2);
  a1[5] = v4;
  v5 = vmulq_n_f64(a1[6], a2);
  result = vmulq_n_f64(a1[7], a2);
  a1[6] = v5;
  a1[7] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator+=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a2 + *a1;
  a1[1] = a2[1] + v2;
  v3 = a1[3];
  a1[2] = a2[2] + a1[2];
  a1[3] = a2[3] + v3;
  v4 = a1[5];
  a1[4] = a2[4] + a1[4];
  a1[5] = a2[5] + v4;
  v5 = a1[7];
  a1[6] = a2[6] + a1[6];
  a1[7] = a2[7] + v5;
  v6 = a1[9];
  a1[8] = a2[8] + a1[8];
  a1[9] = a2[9] + v6;
  v7 = a1[11];
  a1[10] = a2[10] + a1[10];
  a1[11] = a2[11] + v7;
  v8 = a1[13];
  a1[12] = a2[12] + a1[12];
  a1[13] = a2[13] + v8;
  v9 = a1[15];
  a1[14] = a2[14] + a1[14];
  result = a2[15] + v9;
  a1[15] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator-=(double *a1, double *a2)
{
  v2 = a1[1];
  *a1 = *a1 - *a2;
  a1[1] = v2 - a2[1];
  v3 = a1[3];
  a1[2] = a1[2] - a2[2];
  a1[3] = v3 - a2[3];
  v4 = a1[5];
  a1[4] = a1[4] - a2[4];
  a1[5] = v4 - a2[5];
  v5 = a1[7];
  a1[6] = a1[6] - a2[6];
  a1[7] = v5 - a2[7];
  v6 = a1[9];
  a1[8] = a1[8] - a2[8];
  a1[9] = v6 - a2[9];
  v7 = a1[11];
  a1[10] = a1[10] - a2[10];
  a1[11] = v7 - a2[11];
  v8 = a1[13];
  a1[12] = a1[12] - a2[12];
  a1[13] = v8 - a2[13];
  v9 = a1[15];
  a1[14] = a1[14] - a2[14];
  result = v9 - a2[15];
  a1[15] = result;
  return result;
}

float64x2_t pxrInternal__aapl__pxrReserved__::operator-@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vnegq_f64(a1[1]);
  *a2 = vnegq_f64(*a1);
  a2[1] = v2;
  v3 = vnegq_f64(a1[3]);
  a2[2] = vnegq_f64(a1[2]);
  a2[3] = v3;
  v4 = vnegq_f64(a1[5]);
  a2[4] = vnegq_f64(a1[4]);
  a2[5] = v4;
  result = vnegq_f64(a1[6]);
  v6 = vnegq_f64(a1[7]);
  a2[6] = result;
  a2[7] = v6;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a1[8];
  v10 = a1[9];
  v13 = a1[10];
  v12 = a1[11];
  v15 = a1[12];
  v14 = a1[13];
  v17 = a1[14];
  v16 = a1[15];
  *a1 = *a1 * *a2 + v3 * a2[4] + v4 * a2[8] + v5 * a2[12];
  a1[1] = v2 * a2[1] + v3 * a2[5] + v4 * a2[9] + v5 * a2[13];
  a1[2] = v2 * a2[2] + v3 * a2[6] + v4 * a2[10] + v5 * a2[14];
  a1[3] = v2 * a2[3] + v3 * a2[7] + v4 * a2[11] + v5 * a2[15];
  a1[4] = v7 * *a2 + v6 * a2[4] + v9 * a2[8] + v8 * a2[12];
  a1[5] = v7 * a2[1] + v6 * a2[5] + v9 * a2[9] + v8 * a2[13];
  a1[6] = v7 * a2[2] + v6 * a2[6] + v9 * a2[10] + v8 * a2[14];
  a1[7] = v7 * a2[3] + v6 * a2[7] + v9 * a2[11] + v8 * a2[15];
  a1[8] = v11 * *a2 + v10 * a2[4] + v13 * a2[8] + v12 * a2[12];
  a1[9] = v11 * a2[1] + v10 * a2[5] + v13 * a2[9] + v12 * a2[13];
  a1[10] = v11 * a2[2] + v10 * a2[6] + v13 * a2[10] + v12 * a2[14];
  a1[11] = v11 * a2[3] + v10 * a2[7] + v13 * a2[11] + v12 * a2[15];
  a1[12] = v15 * *a2 + v14 * a2[4] + v17 * a2[8] + v16 * a2[12];
  a1[13] = v15 * a2[1] + v14 * a2[5] + v17 * a2[9] + v16 * a2[13];
  a1[14] = v15 * a2[2] + v14 * a2[6] + v17 * a2[10] + v16 * a2[14];
  result = v15 * a2[3] + v14 * a2[7] + v17 * a2[11] + v16 * a2[15];
  a1[15] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::_SetRotateFromQuat(double *a1, double *a2, double a3)
{
  v3 = a2[1] * a2[1] + a2[2] * a2[2];
  *a1 = 1.0 - (v3 + v3);
  v4 = *a2 * a2[1] + a2[2] * a3;
  a1[1] = v4 + v4;
  v5 = a2[2] * *a2 - a2[1] * a3;
  a1[2] = v5 + v5;
  v6 = *a2 * a2[1] - a2[2] * a3;
  a1[4] = v6 + v6;
  v7 = a2[2] * a2[2] + *a2 * *a2;
  a1[5] = 1.0 - (v7 + v7);
  v8 = a2[1] * a2[2] + *a2 * a3;
  a1[6] = v8 + v8;
  v9 = a2[2] * *a2 + a2[1] * a3;
  a1[8] = v9 + v9;
  v10 = a2[1] * a2[2] - *a2 * a3;
  a1[9] = v10 + v10;
  v11 = a2[1] * a2[1] + *a2 * *a2;
  result = 1.0 - (v11 + v11);
  a1[10] = result;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(uint64_t a1, double *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::_SetRotateFromQuat(a1, a2, a2[3]);
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  return a1;
}

pxrInternal__aapl__pxrReserved__::GfMatrix4d *pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotateOnly(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, float64x2_t *a2)
{
  v7[0] = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a2);
  v7[1] = v3;
  v7[2] = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::_SetRotateFromQuat(this, v7, v5);
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotateOnly(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this, const pxrInternal__aapl__pxrReserved__::GfMatrix3d *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  *(this + 4) = *(a2 + 3);
  *(this + 5) = *(a2 + 4);
  *(this + 6) = *(a2 + 5);
  *(this + 8) = *(a2 + 6);
  *(this + 9) = *(a2 + 7);
  result = *(a2 + 8);
  *(this + 10) = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(uint64_t a1, void *a2)
{
  *a1 = *a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a2[1];
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2[2];
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(uint64_t a1, uint64_t a2)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = xmmword_29B432B50;
  *(a1 + 96) = *a2;
  *(a1 + 104) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(uint64_t a1, float64x2_t *a2, float64x2_t *a3, double *a4)
{
  v4 = a3[1].f64[0] - a2[1].f64[0];
  v5 = vsubq_f64(*a3, *a2);
  v6 = 1.0 / fmax(sqrt(vaddvq_f64(vmulq_f64(v5, v5)) + v4 * v4), 1.0e-10);
  v7 = vmuld_lane_f64(v6, v5, 1);
  v9 = a4[1];
  v8 = a4[2];
  v10 = v8 * v7 - v9 * (v4 * v6);
  v11 = *a4 * (v4 * v6) - v8 * (v6 * v5.f64[0]);
  v12 = v9 * (v6 * v5.f64[0]) - *a4 * v7;
  v13 = 1.0 / fmax(sqrt(v12 * v12 + v10 * v10 + v11 * v11), 1.0e-10);
  v14 = v10 * v13;
  v15 = v11 * v13;
  v16 = v12 * v13;
  v17 = v4 * v6 * v15 - v7 * v16;
  v18 = v6 * v5.f64[0] * v16 - v4 * v6 * v14;
  v19 = v7 * v14 - v6 * v5.f64[0] * v15;
  *a1 = v14;
  *(a1 + 32) = v15;
  *(a1 + 64) = v16;
  *(a1 + 96) = -(a2[1].f64[0] * v16 + a2->f64[0] * v14 + a2->f64[1] * v15);
  *(a1 + 8) = v17;
  *(a1 + 40) = v18;
  *(a1 + 72) = v19;
  *(a1 + 104) = -(a2[1].f64[0] * v19 + a2->f64[0] * v17 + a2->f64[1] * v18);
  *(a1 + 16) = -(v5.f64[0] * v6);
  *(a1 + 48) = -(v5.f64[1] * v6);
  *(a1 + 80) = -(v4 * v6);
  result = v6 * v5.f64[0] * a2->f64[0] + v7 * a2->f64[1] + v4 * v6 * a2[1].f64[0];
  *(a1 + 112) = result;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  *(a1 + 88) = 0;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

_OWORD *pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetLookAt(_OWORD *a1, double *a2, double *a3)
{
  v4 = -*a2;
  v5 = -a2[1];
  v6 = -a2[2];
  v15.f64[0] = sub_29A131CC0(a3);
  v15.f64[1] = v7;
  v16 = v8;
  v17 = v9;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v24, &v15);
  *v18 = 0x3FF0000000000000;
  memset(&v18[8], 0, 32);
  *&v18[40] = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = xmmword_29B432B50;
  *&v22 = v4;
  *(&v22 + 1) = v5;
  *&v23 = v6;
  *(&v23 + 1) = 0x3FF0000000000000;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v18, v24);
  v10 = v21;
  a1[4] = v20;
  a1[5] = v10;
  v11 = v23;
  a1[6] = v22;
  a1[7] = v11;
  v12 = *&v18[16];
  *a1 = *v18;
  a1[1] = v12;
  v13 = v19;
  a1[2] = *&v18[32];
  a1[3] = v13;
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfMatrix4d::Factor(uint64_t a1, __int128 *a2, uint64_t a3, _OWORD *a4, void *a5, uint64_t a6, double a7)
{
  v11 = 0;
  v99 = *MEMORY[0x29EDCA608];
  *a6 = 0x3FF0000000000000;
  *(a6 + 8) = 0u;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0x3FF0000000000000;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0x3FF0000000000000;
  *(a6 + 88) = 0u;
  *(a6 + 120) = 0x3FF0000000000000;
  v12 = 12;
  *(a6 + 104) = 0u;
  do
  {
    v13 = &v85 + v11;
    *v13 = *(a1 + v11);
    *(v13 + 2) = *(a1 + v11 + 16);
    *(v13 + 3) = 0;
    *(&v85 + v12) = 0;
    *a5++ = *(a1 + 8 * v12++);
    v11 += 32;
  }

  while (v12 != 15);
  *(&v92 + 1) = 0x3FF0000000000000;
  v14 = *&v85 * *(&v87 + 1) * *&v90 + *(&v85 + 1) * *&v88 * *&v89 + *&v86 * *&v87 * *(&v89 + 1) - *&v85 * *&v88 * *(&v89 + 1) - *&v90 * (*(&v85 + 1) * *&v87) - *&v89 * (*(&v87 + 1) * *&v86);
  v74 = v85;
  *&v75 = v87;
  if (v14 >= 0.0)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = -1.0;
  }

  *(&v76 + 1) = *(&v85 + 1);
  v77 = *(&v87 + 1);
  *&v79 = v86;
  *(&v79 + 1) = v88;
  *(&v81 + 1) = *(&v86 + 1);
  *&v82 = *(&v88 + 1);
  *(&v82 + 1) = *(&v90 + 1);
  *(&v75 + 1) = v89;
  *&v76 = v91;
  *&v78 = *(&v89 + 1);
  *(&v78 + 1) = *(&v91 + 1);
  v80 = v90;
  *&v81 = v92;
  v83 = 0x3FF0000000000000;
  v84[2] = v87;
  v84[3] = v88;
  v84[0] = v85;
  v84[1] = v86;
  v84[6] = v91;
  v84[7] = v92;
  v84[4] = v89;
  v84[5] = v90;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v84, &v74);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::_Jacobi3(v84, v73, &v93);
  v16 = 0;
  v75 = 0u;
  v76 = 0u;
  v81 = 0u;
  v82 = 0u;
  v17 = v94;
  v18 = v96;
  *a2 = v93;
  v19 = v98;
  *(a2 + 2) = v17;
  *(a2 + 3) = 0;
  a2[2] = v95;
  *(a2 + 6) = v18;
  *(a2 + 7) = 0;
  a2[4] = v97;
  *(a2 + 10) = v19;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 15) = 0x3FF0000000000000;
  v74 = 0x3FF0000000000000;
  v77 = 0x3FF0000000000000;
  v80 = 0x3FF0000000000000;
  v83 = 0x3FF0000000000000;
  v20 = &v74;
  v78 = 0u;
  v79 = 0u;
  do
  {
    v21 = v73[v16];
    v22 = sqrt(v21);
    if (v21 >= a7)
    {
      v23 = v22;
    }

    else
    {
      v23 = a7;
    }

    v24 = v15 * v23;
    *(a3 + 8 * v16) = v24;
    *v20 = 1.0 / v24;
    v20 += 5;
    ++v16;
  }

  while (v16 != 3);
  v25 = a2[5];
  v53 = a2[4];
  v54 = v25;
  v26 = a2[7];
  v55 = a2[6];
  v56 = v26;
  v27 = a2[1];
  v49 = *a2;
  v50 = v27;
  v28 = a2[3];
  v51 = a2[2];
  v52 = v28;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v49, &v74);
  v29 = *(a2 + 1);
  v30 = *(a2 + 4);
  v31 = *(a2 + 5);
  v48[0] = *a2;
  v48[1] = v30;
  v32 = *(a2 + 2);
  v33 = *(a2 + 3);
  v48[4] = v29;
  v48[5] = v31;
  v34 = *(a2 + 6);
  v35 = *(a2 + 7);
  v48[8] = v32;
  v48[9] = v34;
  v48[12] = v33;
  v48[13] = v35;
  v36 = *(a2 + 9);
  v37 = *(a2 + 12);
  v38 = *(a2 + 13);
  v48[2] = *(a2 + 8);
  v48[3] = v37;
  v39 = *(a2 + 10);
  v40 = *(a2 + 11);
  v48[6] = v36;
  v48[7] = v38;
  v41 = *(a2 + 14);
  v42 = *(a2 + 15);
  v48[10] = v39;
  v48[11] = v41;
  v48[14] = v40;
  v48[15] = v42;
  v61 = v53;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v57, v48);
  v69 = v61;
  v70 = v62;
  v71 = v63;
  v72 = v64;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v68 = v60;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v65, &v85);
  v43 = v70;
  a4[4] = v69;
  a4[5] = v43;
  v44 = v72;
  a4[6] = v71;
  a4[7] = v44;
  v45 = v66;
  *a4 = v65;
  a4[1] = v45;
  v46 = v68;
  a4[2] = v67;
  a4[3] = v46;
  return v14 * v15 >= a7;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMatrix4d::_Jacobi3(uint64_t a1, void *a2, void *a3)
{
  v3 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 80);
  *a2 = *a1;
  a2[1] = v4;
  a2[2] = v5;
  *a3 = 0x3FF0000000000000;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  a3[4] = 0x3FF0000000000000;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  a3[8] = 0x3FF0000000000000;
  v6 = *(a1 + 64);
  v7 = *(a1 + 96);
  v8 = *(a1 + 112);
  v69[3] = *(a1 + 80);
  v69[4] = v7;
  v69[5] = v8;
  v9 = *(a1 + 16);
  v68[0] = *a1;
  v68[1] = v9;
  v10 = *(a1 + 48);
  v69[0] = *(a1 + 32);
  v69[1] = v10;
  v69[2] = v6;
  v66 = *a2;
  v67 = a2[2];
  memset(v65, 0, sizeof(v65));
  do
  {
    v11 = 0;
    v12 = 0.0;
    v13 = v68;
    v14 = 1;
    do
    {
      result = v14;
      v16 = v13 + 8;
      v17 = v11;
      do
      {
        v12 = v12 + fabs(*&v16[v17]);
        v17 += 8;
      }

      while (v17 != 16);
      v14 = 0;
      v11 += 8;
      v13 = v69;
    }

    while ((result & 1) != 0);
    if (v12 == 0.0)
    {
      break;
    }

    v18 = 0.0;
    if (v3 <= 2)
    {
      v18 = v12 * 0.2 / 9.0;
    }

    v19 = 0;
    v20 = a3;
    result = (a3 + 1);
    v21 = v68 + 1;
    v22 = v69 + 1;
    v23 = 1;
    do
    {
      v24 = v19 + 1;
      if (v19 <= 1)
      {
        v25 = 0;
        v26 = result;
        v27 = v22;
        v28 = v23;
        v29 = &v68[2 * v19];
        do
        {
          v30 = v29[v28];
          v31 = fabs(v30);
          v32 = v31 * 100.0;
          if (v3 >= 4 && (v33 = fabs(*&a2[v19]), v32 + v33 == v33) && (v34 = fabs(*&a2[v28]), v32 + v34 == v34))
          {
            v29[v28] = 0.0;
          }

          else if (v31 > v18)
          {
            v35 = *&a2[v28];
            v36 = *&a2[v19];
            v37 = v35 - v36;
            v38 = vabdd_f64(v35, v36);
            v39 = v32 + v38;
            v40 = v37 * 0.5 / v30;
            v41 = 1.0 / (fabs(v40) + sqrt(v40 * v40 + 1.0));
            if (v40 >= 0.0)
            {
              v42 = v41;
            }

            else
            {
              v42 = -v41;
            }

            v43 = v30 / v37;
            if (v39 == v38)
            {
              v44 = v43;
            }

            else
            {
              v44 = v42;
            }

            v45 = 1.0 / sqrt(v44 * v44 + 1.0);
            v46 = v44 * v45;
            v47 = v30 * v44;
            *&v65[v19] = *&v65[v19] - v47;
            *&v65[v28] = v47 + *&v65[v28];
            v48 = v46 / (v45 + 1.0);
            *&a2[v19] = v36 - v47;
            *&a2[v28] = v47 + *&a2[v28];
            v29[v28] = 0.0;
            if (v19 == 1)
            {
              v49 = *(v68 + v28);
              v50 = *(v68 + 1);
              *(v68 + 1) = *(v68 + 1) - v46 * (v49 + v48 * *(v68 + 1));
              *(v68 + v28) = v49 + v46 * (v50 - v48 * v49);
            }

            v51 = v25;
            v52 = v21;
            v53 = v27;
            if (v24 < v28)
            {
              do
              {
                v54 = *v52;
                v55 = *v53;
                *v52 = *v52 - v46 * (*v53 + v48 * *v52);
                ++v52;
                *v53 = v55 + v46 * (v54 - v48 * v55);
                v53 += 4;
                --v51;
              }

              while (v51);
            }

            if (v28 < 2)
            {
              v56 = &v68[2 * v28];
              v57 = 8 * v28 + 8;
              v58 = *(v29 + v57);
              v59 = *(v56 + v57);
              *(v29 + v57) = v58 - v46 * (v59 + v48 * v58);
              *(v56 + v57) = v59 + v46 * (v58 - v48 * v59);
            }

            for (i = 0; i != 9; i += 3)
            {
              v61 = *&v20[i];
              v62 = *(v26 + i * 8);
              *&v20[i] = v61 - v46 * (v62 + v48 * v61);
              *(v26 + i * 8) = v62 + v46 * (v61 - v48 * v62);
            }
          }

          ++v28;
          ++v27;
          ++v25;
          v26 += 8;
        }

        while (v28 != 3);
      }

      ++v23;
      v22 += 5;
      v21 += 5;
      result += 8;
      ++v20;
      ++v19;
    }

    while (v24 != 3);
    for (j = 0; j != 3; ++j)
    {
      v64 = *&v65[j] + *(&v66 + j * 8);
      *(&v66 + j * 8) = v64;
      *&a2[j] = v64;
      v65[j] = 0;
    }

    ++v3;
  }

  while (v3 != 50);
  return result;
}

__n128 pxrInternal__aapl__pxrReserved__::GfMatrix4d::RemoveScaleShear@<Q0>(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this@<X0>, uint64_t a2@<X8>)
{
  if (pxrInternal__aapl__pxrReserved__::GfMatrix4d::Factor(this, v28, v25, v27, &v23, v26, 1.0e-10))
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::Orthonormalize(v27, 1);
    v13 = 0x3FF0000000000000;
    v14 = 0u;
    v15 = 0u;
    v16 = 0x3FF0000000000000;
    v17 = 0u;
    v18 = 0u;
    v19 = xmmword_29B432B50;
    v20 = v23;
    v21 = v24;
    v22 = 0x3FF0000000000000;
    v4 = v27[5];
    *(a2 + 64) = v27[4];
    *(a2 + 80) = v4;
    v5 = v27[7];
    *(a2 + 96) = v27[6];
    *(a2 + 112) = v5;
    v6 = v27[1];
    *a2 = v27[0];
    *(a2 + 16) = v6;
    v7 = v27[3];
    *(a2 + 32) = v27[2];
    *(a2 + 48) = v7;
    result.n128_f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v13);
  }

  else
  {
    v9 = *(this + 5);
    *(a2 + 64) = *(this + 4);
    *(a2 + 80) = v9;
    v10 = *(this + 7);
    *(a2 + 96) = *(this + 6);
    *(a2 + 112) = v10;
    v11 = *(this + 1);
    *a2 = *this;
    *(a2 + 16) = v11;
    result = *(this + 2);
    v12 = *(this + 3);
    *(a2 + 32) = result;
    *(a2 + 48) = v12;
  }

  return result;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotationQuat(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this)
{
  v1 = *(this + 5);
  v2 = *(this + 10);
  if (*this > v1)
  {
    v3 = *this;
  }

  else
  {
    v3 = *(this + 5);
  }

  if (v3 <= v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *this <= v1;
  }

  v5 = *this + v1 + v2;
  v6 = this + 8 * (4 * v4);
  v7 = *&v6[8 * v4];
  if (v5 > v7)
  {
    return (*(this + 6) - *(this + 9)) / (sqrt(v5 + *(this + 15)) * 0.5 * 4.0);
  }

  if (v4 == 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = (v4 + 1);
  }

  v10 = v4 + 2 - 3 * ((1431655766 * (v4 + 2)) >> 32);
  v11 = this + 32 * v9;
  v12 = this + 32 * v10;
  v13 = sqrt(v7 - *&v11[8 * v9] - *&v12[8 * v10] + *(this + 15)) * 0.5;
  *(&v15 + v4) = v13;
  v14 = v13 * 4.0;
  *(&v15 + v9) = (*&v6[8 * v9] + *&v11[8 * v4]) / v14;
  *(&v15 + v10) = (*&v12[8 * v4] + *&v6[8 * v10]) / v14;
  return v15;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(pxrInternal__aapl__pxrReserved__::GfMatrix4d *this)
{
  v5[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotationQuat(this);
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat(&v6, v5);
  return v6;
}

double pxrInternal__aapl__pxrReserved__::GfMatrix4d::DecomposeRotation(pxrInternal__aapl__pxrReserved__::GfMatrix4d *a1, double *a2, double *a3, double *a4)
{
  v11.f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(a1);
  v11.f64[1] = v7;
  v12 = v8;
  v13 = v9;
  return pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(&v11, a2, a3, a4);
}

__n128 pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotationMatrix@<Q0>(__n128 *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[1].n128_u64[0];
  v3 = this[3].n128_u64[0];
  v4 = this[5].n128_u64[0];
  *a2 = *this;
  *(a2 + 16) = v2;
  *(a2 + 24) = this[2];
  *(a2 + 40) = v3;
  result = this[4];
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::GfIsClose(pxrInternal__aapl__pxrReserved__ *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, double a4)
{
  v4 = 0;
  v5 = 0;
LABEL_2:
  v6 = 0;
  while (vabdd_f64(*(this + v6), *(a2 + v6)) < a4)
  {
    v6 += 8;
    if (v6 == 32)
    {
      v4 = v5 > 2;
      a2 = (a2 + 32);
      this = (this + 32);
      if (++v5 != 4)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }

  return v4;
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::GfMultiInterval(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(a1, a2);
  return a1;
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(void *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*a2 <= v2)
  {
    v3 = result;
    if (*a2 != v2 || *(a2 + 8) == 1 && (*(a2 + 24) & 1) != 0)
    {
      v4 = *(a2 + 16);
      v9[0] = *a2;
      v9[1] = v4;
      if (result[1])
      {
        pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
      }

      v5 = result + 1;
      if (result + 1 != *result)
      {
        v6 = *v5;
        if (*v5)
        {
          do
          {
            v7 = v6;
            v6 = *(v6 + 8);
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (v8);
        }

        if ((sub_29A13E948(v9, v7 + 32) & 1) != 0 || *v9 == *(v7 + 48) && ((BYTE8(v9[0]) & 1) != 0 || *(v7 + 56) == 1))
        {
          sub_29A13E9AC(v9, v7 + 32);
          sub_29A03AFE8(v3, v7);
          operator delete(v7);
        }
      }

      sub_29A13F760();
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::GfMultiInterval(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  while (v6 != v7)
  {
    v4 = sub_29A13DFBC(&v6);
    pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(a1, v4);
    sub_29A13DFEC(&v6);
  }

  return a1;
}

uint64_t sub_29A13DFBC(uint64_t *a1)
{
  result = *a1;
  if (result == a1[1])
  {
    sub_29B28E7EC();
  }

  return result;
}

void *sub_29A13DFEC(void *a1)
{
  if (*a1 == a1[1])
  {
    v3[0] = "tf/iterator.h";
    v3[1] = "operator++";
    v3[2] = 233;
    v3[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::vector<pxrInternal__aapl__pxrReserved__::GfInterval>>::operator++() [T = const std::vector<pxrInternal__aapl__pxrReserved__::GfInterval>, Reverse = false]";
    v4 = 0;
    v5 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v3, "iterator exhausted");
  }

  else
  {
    *a1 += 32;
  }

  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::Hash(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this)
{
  v2 = 0;
  v3 = 0;
  sub_29A13F58C(&v2, *this, this + 1);
  return bswap64(0x9E3779B97F4A7C55 * v2);
}

uint64_t *pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetBounds@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  if (this[2])
  {
    v2 = *this;
    v4 = this[1];
    ++this;
    v3 = v4;
    if (v4)
    {
      do
      {
        v5 = v3;
        v3 = *(v3 + 8);
      }

      while (v3);
    }

    else
    {
      do
      {
        v5 = this[2];
        v6 = *v5 == this;
        this = v5;
      }

      while (v6);
    }

    v7 = *(v2 + 32);
    v8 = *(v5 + 48);
    v9 = *(v2 + 40);
    v10 = *(v5 + 56);
    *a2 = v7;
    *(a2 + 8) = (fabs(v7) != INFINITY) & v9;
    *(a2 + 16) = v8;
    *(a2 + 24) = (fabs(v8) != INFINITY) & v10;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::Contains(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::GfMultiInterval::lower_bound(this, a2);
  if ((this + 8) != v4)
  {
    v5 = *(v4 + 32);
    if (v5 < a2 || v5 == a2 && *(v4 + 40) == 1)
    {
      v6 = *(v4 + 48);
      if (v6 > a2 || v6 == a2 && (*(v4 + 56) & 1) != 0)
      {
        return 1;
      }
    }
  }

  if (*this == v4)
  {
    return 0;
  }

  v7 = *v4;
  if (*v4)
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 8);
    }

    while (v7);
  }

  else
  {
    do
    {
      v8 = *(v4 + 16);
      v9 = *v8 == v4;
      v4 = v8;
    }

    while (v9);
  }

  if ((v10 = *(v8 + 32), v10 < a2) || v10 == a2 && *(v8 + 40) == 1) && ((v11 = *(v8 + 48), v11 > a2) || v11 == a2 && (*(v8 + 56)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::lower_bound(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2)
{
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
  }

  return this + 8;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::Contains(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*a2 > v2)
  {
    return 0;
  }

  if (*a2 != v2 || (result = 0, *(a2 + 8) == 1) && (*(a2 + 24) & 1) != 0)
  {
    if (a1[1])
    {
      pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
    }

    v5 = a1 + 1;
    if (a1 + 1 != *a1)
    {
      v6 = *v5;
      if (*v5)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 8);
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (v8);
      }

      if (sub_29A13E3D0((v7 + 32), a2))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_29A13E3D0(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  sub_29A13F470(&v5, a2);
  return *&v5 == *a2 && BYTE8(v5) == *(a2 + 8) && *&v6 == *(a2 + 16) && BYTE8(v6) == *(a2 + 24);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::Contains(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, const pxrInternal__aapl__pxrReserved__::GfMultiInterval *a2)
{
  if (!*(a2 + 2))
  {
    return 0;
  }

  v6 = *a2;
  v7 = (a2 + 8);
  if (v6 == (a2 + 8))
  {
    return 1;
  }

  do
  {
    v3 = sub_29A13E4D4(&v6);
    v4 = pxrInternal__aapl__pxrReserved__::GfMultiInterval::Contains(this, v3);
    if (!v4)
    {
      break;
    }

    sub_29A13E500(&v6);
  }

  while (v6 != v7);
  return v4;
}

uint64_t sub_29A13E4D4(void *a1)
{
  if (*a1 == a1[1])
  {
    sub_29B28E844();
  }

  return *a1 + 32;
}

void *sub_29A13E500(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const pxrInternal__aapl__pxrReserved__::GfMultiInterval>::operator++() [T = const pxrInternal__aapl__pxrReserved__::GfMultiInterval, Reverse = false]";
    v8 = 0;
    v9 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v7, "iterator exhausted");
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

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::upper_bound(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2)
{
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
  }

  return this + 8;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetNextNonContainingInterval(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2)
{
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
  }

  return this + 8;
}

double *pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetPriorNonContainingInterval(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2, uint64_t a3, char *a4)
{
  v17 = a2;
  v18 = fabs(a2) != INFINITY;
  v19 = a2;
  v20 = v18;
  v5 = (this + 8);
  v6 = (this + 8);
  if (*(this + 1))
  {
    pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
  }

  if (v6 != *this)
  {
    v7 = *v6;
    if (*v6)
    {
      do
      {
        v8 = v7;
        v7 = *(v7 + 1);
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = *(v6 + 2);
        v9 = *v8 == v6;
        v6 = v8;
      }

      while (v9);
    }

    v10 = v8[4];
    if ((v10 < a2 || v10 == a2 && *(v8 + 40) == 1) && ((v11 = v8[6], v11 > a2) || v11 == a2 && *(v8 + 56) == 1))
    {
      if (v8 != *this)
      {
        v12 = *v8;
        if (*v8)
        {
          do
          {
            v5 = v12;
            v12 = *(v12 + 1);
          }

          while (v12);
        }

        else
        {
          do
          {
            v5 = *(v8 + 2);
            v9 = *v5 == v8;
            v8 = v5;
          }

          while (v9);
        }

        v13 = v5[4];
        if (v13 < a2 || v13 == a2 && *(v5 + 40) == 1)
        {
          v14 = v5[6];
          if (v14 > a2 || v14 == a2 && *(v5 + 56) == 1)
          {
            sub_29B28E89C(&v17, &v16, a4);
          }
        }
      }
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetContainingInterval(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, double a2)
{
  NextNonContainingInterval = pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetNextNonContainingInterval(this, a2);
  if (*this == NextNonContainingInterval)
  {
    return this + 8;
  }

  v5 = NextNonContainingInterval;
  v6 = *NextNonContainingInterval;
  if (*NextNonContainingInterval)
  {
    do
    {
      result = v6;
      v6 = *(v6 + 8);
    }

    while (v6);
  }

  else
  {
    do
    {
      result = *(v5 + 16);
      v8 = *result == v5;
      v5 = result;
    }

    while (v8);
  }

  v9 = *(result + 32);
  if (v9 >= a2 && (v9 != a2 || *(result + 40) != 1))
  {
    return this + 8;
  }

  v10 = *(result + 48);
  if (v10 <= a2 && (v10 != a2 || (*(result + 56) & 1) == 0))
  {
    return this + 8;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(void *this, const pxrInternal__aapl__pxrReserved__::GfMultiInterval **a2)
{
  v4 = *a2;
  v5 = (a2 + 1);
  if (v4 != (a2 + 1))
  {
    v2 = this;
    do
    {
      v3 = sub_29A13E4D4(&v4);
      pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(v2, v3);
      this = sub_29A13E500(&v4);
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t sub_29A13E948(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  sub_29A13F470(&v5, a2);
  if (*&v5 > *&v6)
  {
    goto LABEL_6;
  }

  if (*&v5 == *&v6)
  {
    if (BYTE8(v5) == 1)
    {
      v3 = BYTE8(v6);
      return v3 & 1;
    }

LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_29A13E9AC(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*result > v3 || *result == v3 && (*(result + 8) != 1 || (*(result + 24) & 1) == 0))
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    *(result + 16) = *(a2 + 16);
    goto LABEL_12;
  }

  v4 = *a2;
  v5 = *(a2 + 16);
  if (*a2 <= v5 && (*a2 != v5 || *(a2 + 8) == 1 && (*(a2 + 24) & 1) != 0))
  {
    if (v2 <= v4)
    {
      if (v2 == v4)
      {
        *(result + 8) |= *(a2 + 8);
      }
    }

    else
    {
      *result = v4;
      *(result + 8) = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v3 >= v5)
    {
      if (v3 != v5)
      {
        return result;
      }

      v6 = *(result + 24) | *(a2 + 24);
      goto LABEL_13;
    }

    *(result + 16) = v5;
LABEL_12:
    v6 = *(a2 + 24);
LABEL_13:
    *(result + 24) = v6;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::Remove(void *this, const pxrInternal__aapl__pxrReserved__::GfMultiInterval **a2)
{
  v4 = *a2;
  v5 = (a2 + 1);
  if (v4 != (a2 + 1))
  {
    v2 = this;
    do
    {
      v3 = sub_29A13E4D4(&v4);
      pxrInternal__aapl__pxrReserved__::GfMultiInterval::Remove(v2, v3);
      this = sub_29A13E500(&v4);
    }

    while (v4 != v5);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::GfMultiInterval::Remove(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*a2 <= v2 && (*a2 != v2 || *(a2 + 8) == 1 && (*(a2 + 24) & 1) != 0))
  {
    v4 = (a1 + 8);
    if (*(a1 + 8))
    {
      pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
    }

    if (v4 != *a1)
    {
      v5 = *v4;
      if (*v4)
      {
        do
        {
          v6 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (v7);
      }

      sub_29A13EC58(v6, a2, a1);
    }
  }
}

void sub_29A13EC58(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (sub_29A13E948((a1 + 32), a2))
  {
    v6 = *(a1 + 32);
    v7 = *a2;
    v8 = (fabs(v6) != INFINITY) & *(a1 + 40);
    v9 = (fabs(*a2) != INFINITY) & (*(a2 + 8) ^ 1);
    v10 = *(a2 + 16);
    v11 = *(a1 + 48);
    v12 = (fabs(v10) != INFINITY) & (*(a2 + 24) ^ 1);
    v13 = fabs(v11) != INFINITY;
    if (v6 <= v7)
    {
      v14 = v8 & v9;
      if (v6 != v7 || v14 != 0)
      {
        std::__tree<pxrInternal__aapl__pxrReserved__::GfInterval>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::GfInterval,pxrInternal__aapl__pxrReserved__::GfInterval const&>();
      }
    }

    if (v10 <= v11 && (v10 != v11 || (v12 & v13 & *(a1 + 56)) != 0))
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::GfInterval>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::GfInterval,pxrInternal__aapl__pxrReserved__::GfInterval const&>();
    }

    sub_29A03AFE8(a3, a1);
    operator delete(a1);
  }
}

void *pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetComplement@<X0>(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v11 = 0;
  v12 = INFINITY;
  v13 = 0;
  v3 = *this;
  result = (this + 8);
  v8 = v3;
  v9 = result;
  v10 = -INFINITY;
  while (v8 != v9)
  {
    v4 = *(*sub_29A13EF34(&v8) + 32);
    v5 = (fabs(v4) != INFINITY) & (*(*sub_29A13EF34(&v8) + 40) ^ 1);
    v12 = v4;
    v13 = v5;
    if (v10 <= v4 && (v10 != v4 || (v11 & v5 & 1) != 0))
    {
      std::__tree<pxrInternal__aapl__pxrReserved__::GfInterval>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::GfInterval,pxrInternal__aapl__pxrReserved__::GfInterval const&>();
    }

    v10 = -INFINITY;
    v11 = 0;
    v12 = INFINITY;
    v13 = 0;
    v6 = *(*sub_29A13EF34(&v8) + 48);
    v7 = *(*sub_29A13EF34(&v8) + 56) ^ 1;
    v10 = v6;
    v11 = (fabs(v6) != INFINITY) & v7;
    result = sub_29A13EF5C(&v8);
  }

  if (v10 <= v12 && (v10 != v12 || v11 == 1 && (v13 & 1) != 0))
  {
    std::__tree<pxrInternal__aapl__pxrReserved__::GfInterval>::__emplace_hint_unique_key_args<pxrInternal__aapl__pxrReserved__::GfInterval,pxrInternal__aapl__pxrReserved__::GfInterval const&>();
  }

  return result;
}

void *sub_29A13EF34(void *result)
{
  if (*result == result[1])
  {
    sub_29B28E900();
  }

  return result;
}

void *sub_29A13EF5C(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<const std::set<pxrInternal__aapl__pxrReserved__::GfInterval>>::operator++() [T = const std::set<pxrInternal__aapl__pxrReserved__::GfInterval>, Reverse = false]";
    v8 = 0;
    v9 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v7, "iterator exhausted");
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

void pxrInternal__aapl__pxrReserved__::GfMultiInterval::Intersect(pxrInternal__aapl__pxrReserved__::GfMultiInterval *this, const pxrInternal__aapl__pxrReserved__::GfMultiInterval *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMultiInterval::GetComplement(a2, v3);
  pxrInternal__aapl__pxrReserved__::GfMultiInterval::Remove(this, v3);
  sub_29A082B84(v3, v3[1]);
}

void pxrInternal__aapl__pxrReserved__::GfMultiInterval::Intersect(pxrInternal__aapl__pxrReserved__::GfMultiInterval *a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::GfMultiInterval::GfMultiInterval(v3, a2);
  pxrInternal__aapl__pxrReserved__::GfMultiInterval::Intersect(a1, v3);
  sub_29A082B84(v3, v3[1]);
}

double **pxrInternal__aapl__pxrReserved__::GfMultiInterval::_AssertInvariants(double **this, uint64_t a2, char *a3)
{
  v3 = *this;
  if (*this != (this + 1))
  {
    v4 = 0;
    do
    {
      v5 = v3 + 4;
      v6 = v3[4];
      v7 = v3[6];
      if (v6 > v7 || v6 == v7 && ((v3[5] & 1) == 0 || (v3[7] & 1) == 0))
      {
        sub_29B28EA08(v12, &v11, a3);
      }

      if (v4)
      {
        pxrInternal__aapl__pxrReserved__::GfInterval::operator<();
      }

      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v4 = v5;
      v3 = v9;
    }

    while (v9 != this + 1);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::GfMultiInterval::ArithmeticAdd(uint64_t *a1, uint64_t a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v11 = *a1;
  v12 = a1 + 1;
  while (v11 != v12)
  {
    v4 = sub_29A13F2BC(&v11);
    v5 = v4[1];
    v9 = *v4;
    v10 = v5;
    v6 = *(a2 + 16);
    if (*a2 > v6)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 8);
    if (*a2 != v6)
    {
      v8 = *(a2 + 24);
LABEL_8:
      *&v9 = *a2 + *&v9;
      *&v10 = v6 + *&v10;
      BYTE8(v9) &= v7;
      BYTE8(v10) &= v8;
      goto LABEL_9;
    }

    if (*(a2 + 8))
    {
      v8 = *(a2 + 24);
      if (v8)
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    pxrInternal__aapl__pxrReserved__::GfMultiInterval::Add(&v13, &v9);
    sub_29A13F2E8(&v11);
  }

  sub_29A13F534(a1, &v13);
  sub_29A082B84(&v13, v14[0]);
}

uint64_t sub_29A13F2BC(void *a1)
{
  if (*a1 == a1[1])
  {
    sub_29B28EA6C();
  }

  return *a1 + 32;
}

void *sub_29A13F2E8(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<pxrInternal__aapl__pxrReserved__::GfMultiInterval>::operator++() [T = pxrInternal__aapl__pxrReserved__::GfMultiInterval, Reverse = false]";
    v8 = 0;
    v9 = 1;
    pxrInternal__aapl__pxrReserved__::Tf_DiagnosticLiteHelper::IssueError(v7, "iterator exhausted");
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

uint64_t sub_29A13F470(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*result <= v3 && (*result != v3 || *(result + 8) == 1 && *(result + 24) == 1))
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    if (*a2 > v5 || *a2 == v5 && (*(a2 + 8) != 1 || (*(a2 + 24) & 1) == 0))
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    if (v2 >= v4)
    {
      if (v2 == v4)
      {
        *(result + 8) &= *(a2 + 8);
      }
    }

    else
    {
      *result = v4;
      *(result + 8) = *(a2 + 8);
      v5 = *(a2 + 16);
    }

    if (v3 <= v5)
    {
      if (v3 != v5)
      {
        return result;
      }

      v6 = *(result + 24) & *(a2 + 24);
    }

    else
    {
      *(result + 16) = v5;
      v6 = *(a2 + 24);
    }

    *(result + 24) = v6;
  }

  return result;
}

uint64_t *sub_29A13F534(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v5 = result[1];
  v4 = result[2];
  v3 = result + 1;
  *(result + 1) = *(a2 + 8);
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (result[2])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (*(a2 + 8) + 16);
  if (!v4)
  {
    v6 = a2;
  }

  *v6 = a2 + 8;
  return result;
}

uint64_t sub_29A13F58C(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = a2[1];
      v6 = a2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      result = sub_29A13F60C(v4, (a2 + 4));
      a2 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_29A13F60C(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  result = sub_29A13F68C(&v5, a2, a2 + 16);
  v4 = bswap64(0x9E3779B97F4A7C55 * v5);
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_29A13F68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == 0.0)
  {
    v3 = 0.0;
  }

  v4 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 8) + ((*&v3 + *(a2 + 8) + (*&v3 + *(a2 + 8)) * (*&v3 + *(a2 + 8))) >> 1)));
  if (*(a1 + 8))
  {
    v4 += (*a1 + v4 + (*a1 + v4) * (*a1 + v4)) >> 1;
  }

  else
  {
    *(a1 + 8) = 1;
  }

  *a1 = v4;
  return sub_29A13F6F8(a1, a3);
}

uint64_t sub_29A13F6F8(uint64_t result, uint64_t a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    v2 = 0.0;
  }

  v3 = bswap64(0x9E3779B97F4A7C55 * (*(a2 + 8) + ((*&v2 + *(a2 + 8) + (*&v2 + *(a2 + 8)) * (*&v2 + *(a2 + 8))) >> 1)));
  if (*(result + 8))
  {
    v3 += (*result + v3 + (*result + v3) * (*result + v3)) >> 1;
  }

  else
  {
    *(result + 8) = 1;
  }

  *result = v3;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfPlane::Set(double *a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = 1.0 / fmax(sqrt(*a2 * *a2 + v3 * v3 + v4 * v4), 1.0e-10);
  v6 = *a2 * v5;
  v7 = v3 * v5;
  v8 = v4 * v5;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  result = a3[2] * v8 + *a3 * v6 + a3[1] * v7;
  a1[3] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfPlane::Set(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a2[1];
  v5 = *a3 - *a2;
  v6 = a3[1] - v4;
  v7 = a2[2];
  v8 = a3[2] - v7;
  v9 = *a4 - *a2;
  v10 = a4[1] - v4;
  v11 = a4[2] - v7;
  v12 = v6 * v11 - v8 * v10;
  v13 = v8 * v9 - v5 * v11;
  v14 = v5 * v10 - v6 * v9;
  v15 = 1.0 / fmax(sqrt(v14 * v14 + v12 * v12 + v13 * v13), 1.0e-10);
  v16 = v13 * v15;
  v17 = v14 * v15;
  *a1 = v12 * v15;
  a1[1] = v16;
  a1[2] = v17;
  result = a2[2] * v17 + *a2 * (v12 * v15) + a2[1] * v16;
  a1[3] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfPlane::Set(float64x2_t *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    a1->f64[i] = *(a2 + i * 8);
  }

  result = -*(a2 + 24);
  v4 = a1[1].f64[0];
  v5 = sqrt(vaddvq_f64(vmulq_f64(*a1, *a1)) + v4 * v4);
  v6 = 1.0 / fmax(v5, 1.0e-10);
  *a1 = vmulq_n_f64(*a1, v6);
  a1[1].f64[0] = v4 * v6;
  a1[1].f64[1] = result;
  if (v5 != 0.0)
  {
    result = result / v5;
    a1[1].f64[1] = result;
  }

  return result;
}

pxrInternal__aapl__pxrReserved__::GfPlane *pxrInternal__aapl__pxrReserved__::GfPlane::Transform(float64x2_t *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetInverse(a2, 0, 0.0, v10);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose(v10, &v11);
  v3 = this;
  v4 = vld1q_dup_f64(v3++);
  v5 = this[1].f64[0];
  v6 = this[1].f64[1];
  v7 = vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v4, v11), vmulq_n_f64(v13, *v3)), vmulq_n_f64(v15, v5)), vmulq_n_f64(v17, v6));
  v8 = vsubq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v4, v12), vmulq_n_f64(v14, *v3)), vmulq_n_f64(v16, v5)), vmulq_n_f64(v18, v6));
  v10[0] = v7;
  v10[1] = v8;
  pxrInternal__aapl__pxrReserved__::GfPlane::Set(this, v10);
  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::GfPlane::IntersectsPositiveHalfSpace(uint64_t a1, double *a2)
{
  if (*a2 > a2[3] || a2[1] > a2[4] || a2[2] > a2[5])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    v5 = *(a1 + 8 * v3);
    v6 = a2 + 3;
    if (v5 < 0.0)
    {
      v6 = a2;
    }

    v4 = v4 + v5 * *v6;
    ++v3;
    ++a2;
  }

  while (v3 != 3);
  return v4 >= *(a1 + 24);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfFitPlaneToPoints(uint64_t *a1, float64x2_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3);
  if (v4 <= 2)
  {
    v51.i64[0] = "gf/plane.cpp";
    v51.i64[1] = "GfFitPlaneToPoints";
    v52.i64[0] = 106;
    v52.i64[1] = "BOOL pxrInternal__aapl__pxrReserved__::GfFitPlaneToPoints(const std::vector<GfVec3d> &, GfPlane *)";
    v53 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v51, 1, "Need three points to correctly fit a plane");
    return 0;
  }

  if (v3 == v2)
  {
    v16 = 0.0;
    v13 = 1.0 / v4 * 0.0;
    v14 = 0uLL;
    v45 = v13;
    v11 = v13;
LABEL_12:
    v15 = 0.0;
    v17 = 0uLL;
    goto LABEL_13;
  }

  v7 = 0uLL;
  v8 = 0.0;
  v9 = *a1;
  do
  {
    v8 = v8 + *v9;
    v7 = vaddq_f64(v7, *(v9 + 8));
    v9 += 24;
  }

  while (v9 != v2);
  v10 = 1.0 / v4;
  v11 = v10 * v8;
  v12 = vmulq_n_f64(v7, v10);
  v13 = v12.f64[1];
  v45 = v12.f64[0];
  v14 = 0uLL;
  if (v3 == v2)
  {
    v16 = 0.0;
    goto LABEL_12;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0uLL;
  do
  {
    v18 = *v3 - v11;
    v15 = v15 + v18 * v18;
    v19 = vsubq_f64(*(v3 + 8), v12);
    v16 = v16 + v18 * v19.f64[0];
    v20.i64[1] = *&v19.f64[1];
    *v20.i64 = v18;
    v21 = vmulq_f64(v19, v19);
    v17 = vaddq_f64(v17, vmulq_f64(vextq_s8(v20, v20, 8uLL), v19));
    v14 = vaddq_f64(v14, vextq_s8(v21, v21, 8uLL));
    v3 += 24;
  }

  while (v3 != v2);
LABEL_13:
  v51 = vextq_s8(v14, v17, 8uLL);
  v52 = vzip1q_s64(v17, v14);
  v48 = v15;
  v22 = v17.f64[1];
  v44 = v17.f64[0];
  v49 = vdupq_laneq_s64(v17, 1);
  v50 = v14.f64[0];
  *v47 = v15;
  *&v47[1] = v16;
  *&v47[2] = v16;
  v47[3] = *&v14.f64[1];
  Determinant = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetDeterminant(&v51);
  v24 = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetDeterminant(&v48);
  v25 = fabs(v24);
  v26 = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetDeterminant(v47);
  v27 = fabs(v26);
  if (Determinant == 0.0 || (v28 = fabs(Determinant), v28 <= v25) || v28 <= v27)
  {
    if (v24 == 0.0 || v25 <= v27)
    {
      result = 0;
      if (v26 == 0.0)
      {
        return result;
      }

      Inverse = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetInverse(v47, 0, 0.0);
      v35 = -(v44 * v41) - v22 * Inverse;
      v31 = -(v44 * v42) - v22 * v43;
      v34 = 1.0;
    }

    else
    {
      v36 = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetInverse(&v48, 0, 0.0);
      v35 = -(v44 * v37) - v16 * v36;
      v34 = -(v44 * v38) - v16 * v39;
      v31 = 1.0;
    }
  }

  else
  {
    v29 = pxrInternal__aapl__pxrReserved__::GfMatrix2d::GetInverse(&v51, 0, 0.0);
    v31 = -(v22 * v30) - v16 * v29;
    v34 = -(v22 * v32) - v16 * v33;
    v35 = 1.0;
  }

  *v46 = v35;
  *&v46[1] = v31;
  *&v46[2] = v34;
  *&v46[3] = -(v11 * v35 + v45 * v31 + v13 * v34);
  pxrInternal__aapl__pxrReserved__::GfPlane::Set(a2, v46);
  return 1;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(float64x2_t *a1, float32x2_t *a2)
{
  result = vcvtq_f64_f32(*a2);
  v3 = vcvtq_f64_f32(a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

{
  result = vcvtq_f64_f32(*a2);
  v3 = vcvtq_f64_f32(a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}