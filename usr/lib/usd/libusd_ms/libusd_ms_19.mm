void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignDecimalString(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, uint64_t a2, int a3)
{
  v3 = a3;
  *this = 0;
  if (a3 < 19)
  {
    v6 = 0;
    v10 = a3;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v9 = *(v7 + v8++) + 10 * v9 - 48;
      }

      while (v8 != 19);
      v6 += 19;
      v10 = v3 - 19;
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByPowerOfTen(this, 19);
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AddUInt64(this, v9);
      v7 += 19;
      v11 = v3 <= 37;
      v3 -= 19;
    }

    while (!v11);
  }

  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v13 = v6;
    do
    {
      v12 = *(a2 + v13++) + 10 * v12 - 48;
    }

    while (v13 < v10 + v6);
  }

  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByPowerOfTen(this, v10);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AddUInt64(this, v12);
  v14 = *this;
  if (v14 < 1)
  {
    if (!*this)
    {
LABEL_19:
      *(this + 1) = 0;
    }
  }

  else
  {
    while (!*(this + v14))
    {
      v15 = v14;
      LOWORD(v14) = v14 - 1;
      *this = v14;
      if (v15 <= 1)
      {
        goto LABEL_19;
      }
    }
  }
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByPowerOfTen(__int16 *this, int a2)
{
  if (a2)
  {
    v2 = this;
    if (*this)
    {
      v4 = a2;
      if (a2 >= 27)
      {
        v5 = a2;
        do
        {
          pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt64(v2, 0x6765C793FA10079DuLL);
          v4 = v5 - 27;
          v6 = v5 > 0x35;
          v5 -= 27;
        }

        while (v6);
      }

      if (v4 < 13)
      {
        v7 = v4;
      }

      else
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v2, 0x48C27395u);
          v7 = v4 - 13;
          v6 = v4 > 0x19;
          v4 -= 13;
        }

        while (v6);
      }

      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (v9 < 0 == v8)
      {
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v2, dword_29B435D20[v9]);
      }

      return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v2, a2);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AddUInt64(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, unint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3[0] = 0;
    do
    {
      v3[v2 + 1] = a2 & 0xFFFFFFF;
      a2 >>= 28;
      ++v2;
    }

    while (a2);
    LOWORD(v3[0]) = v2;
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AddBignum(this, v3);
  }
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Clamp(__int16 *this)
{
  v1 = *this;
  if (v1 < 1)
  {
    if (!*this)
    {
LABEL_7:
      this[1] = 0;
    }
  }

  else
  {
    while (!*&this[2 * v1])
    {
      v2 = v1;
      LOWORD(v1) = v1 - 1;
      *this = v1;
      if (v2 <= 1)
      {
        goto LABEL_7;
      }
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignHexString(uint64_t result, uint64_t a2, int a3)
{
  *result = 0;
  if (a3 > 896)
  {
    abort();
  }

  if (!a3)
  {
LABEL_19:
    *(result + 2) = 0;
    return result;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2 - 1;
  v7 = result + 4;
  v8 = a3;
  do
  {
    v9 = *(v6 + v8);
    v10 = (v9 - 48);
    v11 = v9 - 97;
    v12 = (v9 - 87);
    if (v11 > 5)
    {
      v12 = *(v6 + v8) - 55;
    }

    if (v10 <= 9)
    {
      v12 = v10;
    }

    v5 |= v12 << v4;
    if (v4 < 24)
    {
      v4 += 4;
    }

    else
    {
      v13 = v3++;
      *result = v3;
      *(v7 + 4 * v13) = v5 & 0xFFFFFFF;
      v5 >>= 28;
      v4 -= 24;
    }

    --v8;
  }

  while (v8);
  if (v5)
  {
    v14 = v3++;
    *result = v3;
    *(v7 + 4 * v14) = v5 & 0xFFFFFFF;
  }

  if (v3 < 1)
  {
    if (v3)
    {
      return result;
    }

    goto LABEL_19;
  }

  while (!*(v7 + 4 * (v3 - 1)))
  {
    v15 = v3--;
    *result = v3;
    if (v15 <= 1)
    {
      goto LABEL_19;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AddBignum(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2)
{
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Align(this, a2);
  v4 = *this;
  v5 = *(this + 1);
  v6 = v5 + v4;
  v7 = *a2;
  v8 = *(a2 + 1);
  if (v5 + v4 <= v8 + v7)
  {
    v6 = v8 + v7;
  }

  if (v6 - v5 >= 128)
  {
    abort();
  }

  v9 = v8 - v5;
  if (v8 - v5 > v4)
  {
    bzero(this + 4 * *this + 4, 4 * (~v5 + v8 - *this) + 4);
  }

  if (v7 >= 1)
  {
    v10 = 0;
    v11 = this + 4;
    v12 = (a2 + 4);
    v13 = v9;
    do
    {
      if (v13 >= v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = *&v11[4 * v13];
      }

      v15 = *v12++;
      v16 = v14 + v10 + v15;
      *&v11[4 * v13] = v16 & 0xFFFFFFF;
      v10 = v16 >> 28;
      ++v13;
      --v7;
    }

    while (v7);
    for (; v10; ++v13)
    {
      if (v13 >= v4)
      {
        v17 = 0;
      }

      else
      {
        v17 = *&v11[4 * v13];
      }

      v18 = v17 + v10;
      *&v11[4 * v13] = v18 & 0xFFFFFFF;
      v10 = v18 >> 28;
    }

    v9 = v13;
  }

  if (v9 <= v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = v9;
  }

  *this = v19;
}

void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Align(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2)
{
  v2 = *(this + 1);
  v3 = *(a2 + 1);
  v4 = v2 - v3;
  if (v2 > v3)
  {
    v6 = *this;
    if (v4 + v6 > 128)
    {
      abort();
    }

    v7 = *this;
    if (v6 >= 1)
    {
      v8 = *this + 1;
      v9 = (this + 4 * v7);
      v10 = (this + 4 * v7 + 4 * *(this + 1) + -4 * *(a2 + 1));
      do
      {
        v11 = *v9--;
        *v10-- = v11;
        --v8;
      }

      while (v8 > 1);
    }

    if (v4 >= 1)
    {
      bzero(this + 4, 4 * (~v3 + v2) + 4);
    }

    *this = v7 + v4;
    *(this + 1) = v2 - v4;
  }
}

void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractBignum(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2)
{
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Align(this, a2);
  v4 = *a2;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a2 + 1);
    v7 = *(this + 1);
    v8 = (a2 + 4);
    v9 = (this + 4 * v6 + -4 * v7 + 4);
    v10 = *a2;
    do
    {
      v11 = *v8++;
      v12 = *v9 + v5 - v11;
      *v9++ = v12 & 0xFFFFFFF;
      v5 = v12 >> 31;
      --v10;
    }

    while (v10);
    if (v12 < 0)
    {
      v13 = (this + 4 * (v6 + v4 - v7) + 4);
      do
      {
        v14 = *v13 - 1 < 0;
        *v13 = (*v13 - 1) & 0xFFFFFFF;
        ++v13;
      }

      while (v14);
    }
  }

  v15 = *this;
  if (v15 < 1)
  {
    if (!*this)
    {
LABEL_12:
      *(this + 1) = 0;
    }
  }

  else
  {
    while (!*(this + v15))
    {
      v16 = v15;
      LOWORD(v15) = v15 - 1;
      *this = v15;
      if (v16 <= 1)
      {
        goto LABEL_12;
      }
    }
  }
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(__int16 *this, int a2)
{
  v3 = *this;
  if (*this)
  {
    this[1] += a2 / 28;
    if (v3 >= 128)
    {
      abort();
    }

    v4 = a2 % 28;

    return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::BigitsShiftLeft(this, v4);
  }

  return this;
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::BigitsShiftLeft(__int16 *this, char a2)
{
  v2 = *this;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 2;
    v5 = *this;
    do
    {
      v6 = *&this[v4];
      v7 = (v6 << a2) + v3;
      v3 = v6 >> (28 - a2);
      *&this[v4] = v7 & 0xFFFFFFF;
      v4 += 2;
      --v5;
    }

    while (v5);
    if (v3)
    {
      *&this[2 * v2 + 2] = v3;
      *this = v2 + 1;
    }
  }

  return this;
}

_WORD *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(_WORD *this, unsigned int a2)
{
  if (a2 != 1)
  {
    if (a2)
    {
      if (*this >= 1)
      {
        v2 = 0;
        v3 = *this;
        v4 = 2;
        v5 = v3;
        do
        {
          v6 = v2 + *&this[v4] * a2;
          *&this[v4] = v6 & 0xFFFFFFF;
          v2 = v6 >> 28;
          v4 += 2;
          --v5;
        }

        while (v5);
        for (; v2; v2 >>= 28)
        {
          if (v3 >= 128)
          {
            abort();
          }

          *&this[2 * v3++ + 2] = v2 & 0xFFFFFFF;
          *this = v3;
        }
      }
    }

    else
    {
      *this = 0;
    }
  }

  return this;
}

_WORD *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt64(_WORD *this, unint64_t a2)
{
  if (a2 != 1)
  {
    if (a2)
    {
      v2 = *this;
      if (*this)
      {
        v3 = v2 < 1;
      }

      else
      {
        v3 = 1;
      }

      if (!v3)
      {
        v4 = 0;
        v5 = 2;
        v6 = *this;
        do
        {
          v7 = *&this[v5];
          v8 = (v4 & 0xFFFFFFF) + a2 * v7;
          *&this[v5] = v8 & 0xFFFFFFF;
          v4 = ((a2 >> 28) & 0xFFFFFFFF0) * v7 + (v4 >> 28) + (v8 >> 28);
          v5 += 2;
          --v6;
        }

        while (v6);
        for (; v4; v4 >>= 28)
        {
          if (v2 >= 128)
          {
            abort();
          }

          *&this[2 * v2++ + 2] = v4 & 0xFFFFFFF;
          *this = v2;
        }
      }
    }

    else
    {
      *this = 0;
    }
  }

  return this;
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Square(__int16 *this)
{
  v1 = *this;
  if (v1 > 64)
  {
    abort();
  }

  v2 = 2 * *this;
  if (v1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 4 * *this;
    v5 = this + 2;
    do
    {
      v5[v4 / 4] = *v5;
      ++v5;
      v3 += 4;
    }

    while (v4 != v3);
    v6 = 0;
    v7 = 0;
    v8 = 4;
    do
    {
      v9 = v8;
      v10 = &this[2 * v1 + 2];
      do
      {
        v11 = *v10;
        v10 += 2;
        v7 += v11 * *(&this[2 * v1] + v9);
        v9 -= 4;
      }

      while (v9);
      *&this[2 * v6 + 2] = v7 & 0xFFFFFFF;
      v7 >>= 28;
      ++v6;
      v8 += 4;
    }

    while (v6 != v1);
  }

  if (v2 > v1)
  {
    v12 = v1;
    v13 = 2 * v1 - 1;
    v14 = &this[2 * v1 + 4];
    v15 = v1 - 1;
    v16 = &this[4 * v1];
    do
    {
      if (v12 < v13)
      {
        v17 = v15;
        v18 = v14;
        v19 = v16;
        do
        {
          v21 = *v19;
          v19 -= 2;
          v20 = v21;
          v22 = *v18++;
          v7 += v22 * v20;
          --v17;
        }

        while (v17);
      }

      *&this[2 * v12 + 2] = v7 & 0xFFFFFFF;
      v7 >>= 28;
      ++v12;
      v14 += 4;
      --v15;
    }

    while (v12 != v2);
  }

  *this = v2;
  this[1] *= 2;
  if (v2 < 1)
  {
    if (!v2)
    {
LABEL_22:
      this[1] = 0;
    }
  }

  else
  {
    while (!*&this[2 * v2])
    {
      v23 = v2;
      LOWORD(v2) = v2 - 1;
      *this = v2;
      if (v23 <= 1)
      {
        goto LABEL_22;
      }
    }
  }

  return this;
}

__int16 *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignPowerUInt16(__int16 *this, unsigned int a2, int a3)
{
  v3 = this;
  if (a3)
  {
    v5 = a2;
    *this = 0;
    v6 = 0;
    if ((a2 & 1) == 0)
    {
      do
      {
        v7 = v5 >> 1;
        v5 = v5 >> 1;
        ++v6;
      }

      while ((v7 & 1) == 0);
    }

    v8 = __clz(v5);
    if (((32 - v8) * a3) > 3555)
    {
      abort();
    }

    v9 = 1;
    do
    {
      v10 = v9;
      v9 *= 2;
    }

    while (v10 <= a3);
    v11 = v10 >> 2;
    if (v10 >= 4)
    {
      v12 = 0;
      v14 = v8 | 0x20;
      v13 = v5;
      v15 = v11;
      do
      {
        v13 *= v13;
        if ((v15 & a3) != 0)
        {
          v16 = v13 >> v14 != 0;
          if (v13 >> v14)
          {
            v17 = 1;
          }

          else
          {
            v17 = v5;
          }

          v13 *= v17;
          v12 |= v16;
        }

        v11 = v15 >> 1;
        if (v15 < 2)
        {
          break;
        }

        v15 >>= 1;
      }

      while (!HIDWORD(v13));
    }

    else
    {
      v12 = 0;
      v13 = v5;
    }

    if (v13)
    {
      v18 = 0;
      do
      {
        *&this[2 * v18 + 2] = v13 & 0xFFFFFFF;
        v13 >>= 28;
        ++v18;
      }

      while (v13);
      *this = v18;
    }

    if (v12)
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(this, v5);
    }

    if (v11)
    {
      do
      {
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Square(v3);
        if ((v11 & a3) != 0)
        {
          pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByUInt32(v3, v5);
        }

        v19 = v11 > 1;
        v11 >>= 1;
      }

      while (v19);
    }

    return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v3, v6 * a3);
  }

  else
  {
    *this = 0x100000001;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::DivideModuloIntBignum(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2)
{
  if (*(this + 1) + *this >= *(a2 + 1) + *a2)
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Align(this, a2);
    v6 = *this;
    v7 = *a2;
    if (*(this + 1) + v6 <= *(a2 + 1) + v7)
    {
      v2 = 0;
    }

    else
    {
      v2 = 0;
      do
      {
        v8 = *(this + v6);
        v2 += v8;
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractTimes(this, a2, v8);
        v6 = *this;
        v7 = *a2;
      }

      while (*(this + 1) + v6 > *(a2 + 1) + v7);
    }

    v9 = v6;
    v10 = v6 - 1;
    v11 = this + 4;
    v12 = *(this + v10 + 1);
    v13 = *(a2 + v7);
    if (v7 == 1)
    {
      *&v11[4 * v10] = v12 % v13;
      v2 += v12 / v13;
      if (v9 < 1)
      {
        if (!v9)
        {
LABEL_19:
          *(this + 1) = 0;
        }
      }

      else
      {
        while (!*&v11[4 * v9 - 4])
        {
          v14 = v9;
          LOWORD(v9) = v9 - 1;
          *this = v9;
          if (v14 <= 1)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v15 = v12 / (v13 + 1);
      LOWORD(v2) = v2 + v15;
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractTimes(this, a2, v15);
      if (v13 + v13 * v15 <= v12 && pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(a2, this, v16) <= 0)
      {
        do
        {
          pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractBignum(this, a2);
          LOWORD(v2) = v2 + 1;
        }

        while (pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(a2, this, v17) < 1);
      }
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractTimes(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2, int a3)
{
  v3 = a3;
  if (a3 > 2)
  {
    v6 = *(a2 + 1) - *(this + 1);
    v7 = *a2;
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = (a2 + 4);
      v10 = (this + 4 * *(a2 + 1) + -4 * *(this + 1) + 4);
      v11 = *a2;
      do
      {
        v12 = *v9++;
        v13 = v12 * a3 + v8;
        v14 = *v10 - (v13 & 0xFFFFFFF);
        *v10++ = v14 & 0xFFFFFFF;
        v8 = (v13 >> 28) + (v14 >> 31);
        --v11;
      }

      while (v11);
    }

    LODWORD(v15) = v6 + v7;
    v16 = *this;
    if (v15 >= v16)
    {
LABEL_14:
      if (v16 < 1)
      {
        if (!v16)
        {
LABEL_19:
          *(this + 1) = 0;
        }
      }

      else
      {
        while (!*(this + v16))
        {
          v19 = v16;
          LOWORD(v16) = v16 - 1;
          *this = v16;
          if (v19 <= 1)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      v17 = this + 4;
      v15 = v15;
      while (v8)
      {
        v18 = *&v17[4 * v15] - v8;
        *&v17[4 * v15] = v18 & 0xFFFFFFF;
        v8 = v18 >> 31;
        if (++v15 >= v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  else if (a3 >= 1)
  {
    do
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::SubtractBignum(this, a2);
      --v3;
    }

    while (v3);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ToHexString(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, char *a2, int a3)
{
  if (*this)
  {
    v3 = 7 * (*(this + 1) + *this) - 7;
    v4 = this + 4;
    v5 = *(this + *this);
    if (v5)
    {
      v6 = 0;
      do
      {
        ++v6;
        v7 = v5 > 0xF;
        v5 >>= 4;
      }

      while (v7);
    }

    else
    {
      v6 = 0;
    }

    v8 = v3 + v6;
    if (v3 + v6 < a3)
    {
      v9 = v8 - 1;
      a2[v8] = 0;
      if (*(this + 1) >= 1)
      {
        v10 = 0;
        v11 = &a2[v9 - 6];
        do
        {
          *(v11 + 3) = 808464432;
          *v11 = 808464432;
          v11 -= 7;
          ++v10;
          v9 -= 7;
        }

        while (v10 < *(this + 1));
      }

      v12 = *this;
      if (v12 < 2)
      {
        v18 = v12 - 1;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = 0;
          v15 = *&v4[4 * v13];
          v16 = &a2[v9];
          do
          {
            if ((v15 & 0xF) >= 0xA)
            {
              v17 = 55;
            }

            else
            {
              v17 = 48;
            }

            *v16-- = v17 + (v15 & 0xF);
            v15 >>= 4;
            ++v14;
          }

          while (v14 != 7);
          v9 -= 7;
          ++v13;
          v18 = *this - 1;
        }

        while (v13 < v18);
      }

      v20 = *&v4[4 * v18];
      if (v20)
      {
        v21 = &a2[v9];
        do
        {
          if ((v20 & 0xF) >= 0xA)
          {
            v22 = 55;
          }

          else
          {
            v22 = 48;
          }

          *v21-- = v22 + (v20 & 0xF);
          v7 = v20 > 0xF;
          v20 >>= 4;
        }

        while (v7);
      }

      return 1;
    }

    return 0;
  }

  if (a3 < 2)
  {
    return 0;
  }

  *a2 = 48;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::BigitOrZero(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, int a2)
{
  v2 = *(this + 1);
  if (a2 < v2 || v2 + *this <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + a2 - v2 + 1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  v5 = v4 + v3;
  v6 = *(a2 + 1);
  v7 = v6 + *a2;
  if (v4 + v3 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 + v3 > v7)
  {
    return 1;
  }

  if (v6 >= v4)
  {
    v9 = *(this + 1);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  v10 = v3 + v4;
  v11 = (this + 4 * v3);
  while (v10 > v9)
  {
    v12 = 0;
    if (v10 > v4 && v10 <= v5)
    {
      v12 = *v11;
    }

    v13 = 0;
    if (v10 > v6 && v10 <= v7)
    {
      v13 = *(a2 + v10 - v6);
    }

    if (v12 < v13)
    {
      return 0xFFFFFFFFLL;
    }

    --v11;
    --v10;
    if (v12 > v13)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::PlusCompare(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *this, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a2, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a3, const pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum *a4)
{
  v4 = *this;
  v5 = *(this + 1);
  do
  {
    v6 = a2;
    a2 = this;
    v7 = v5;
    v8 = v5 + v4;
    v4 = *v6;
    v9 = v6[1];
    v5 = v6[1];
    v10 = v9 + *v6;
    this = v6;
  }

  while (v8 < v10);
  v11 = *a3;
  v12 = *(a3 + 1);
  v13 = v12 + v11;
  if (v8 + 1 < v12 + v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 > v13)
  {
    return 1;
  }

  if (v10 <= v7 && v8 < v13)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = *(a2 + 1);
  if (v9 < v7)
  {
    v15 = v6[1];
  }

  if (v12 >= v15)
  {
    LODWORD(v16) = v15;
  }

  else
  {
    LODWORD(v16) = *(a3 + 1);
  }

  if (v13 > v16)
  {
    v17 = 0;
    v18 = v7;
    v19 = v11 + v12;
    v16 = v16;
    v20 = (a3 + 4 * v11);
    v21 = &v6[-2 * v6[1]];
    v22 = a2 - 4 * v7;
    while (1)
    {
      v23 = 0;
      if (v19 > v18 && v19 <= v8)
      {
        v23 = *&v22[4 * v19];
      }

      v24 = 0;
      if (v19 > v9 && v19 <= v10)
      {
        v24 = *&v21[2 * v19];
      }

      v25 = 0;
      if (v19 > v12 && v19 <= v13)
      {
        v25 = *v20;
      }

      v26 = v24 + v23;
      v27 = v25 + v17;
      v28 = v25 + v17 - v26;
      if (v27 < v26)
      {
        break;
      }

      if (v28 > 1)
      {
        return 0xFFFFFFFFLL;
      }

      --v19;
      v17 = v28 << 28;
      --v20;
      if (v19 <= v16)
      {
        if (v27 == v26)
        {
          return 0;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::PowersOfTenCache::GetCachedPowerForBinaryExponentRange(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = vcvtpd_s64_f64((result + 63) * 0.301029996);
  v6 = v4 + 347;
  v5 = v4 < -347;
  v7 = v4 + 354;
  if (!v5)
  {
    v7 = v6;
  }

  v8 = &unk_29B435D50 + 16 * (v7 >> 3);
  v9 = *(v8 + 2);
  v10 = *(v8 + 12);
  *a4 = *(v8 + 13);
  *a3 = v9;
  *(a3 + 8) = v10;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::PowersOfTenCache::GetCachedPowerForDecimalExponent(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v3 = result + 348;
  if (result < -348)
  {
    v3 = result + 355;
  }

  v4 = &unk_29B435D50 + 16 * (v3 >> 3);
  v5 = *v4;
  v6 = *(v4 + 4);
  LODWORD(v4) = *(v4 + 5);
  *a2 = v5;
  *(a2 + 8) = v6;
  *a3 = v4;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::EcmaScriptConverter(pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter *this)
{
  if ((atomic_load_explicit(&qword_2A153EEF0, memory_order_acquire) & 1) == 0)
  {
    sub_29B285134();
  }

  return &dword_2A153EEF8;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::HandleSpecialValues(uint64_t a1, uint64_t a2, double a3)
{
  if (fabs(a3) == INFINITY)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (a3 < 0.0)
      {
        v5 = *(a2 + 16);
        *(a2 + 16) = v5 + 1;
        *(*a2 + v5) = 45;
        v4 = *(a1 + 8);
      }

      goto LABEL_8;
    }

    return 0;
  }

  v6 = 0;
  if ((~*&a3 & 0x7FF0000000000000) == 0 && (*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
LABEL_8:
      v7 = strlen(v4);
      memmove((*a2 + *(a2 + 16)), v4, v7);
      *(a2 + 16) += v7;
      return 1;
    }

    return 0;
  }

  return v6;
}

void *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateExponentialRepresentation(uint64_t a1, char *a2, int a3, unsigned int a4, uint64_t a5)
{
  v8 = *a2;
  v9 = *(a5 + 16);
  *(a5 + 16) = v9 + 1;
  *(*a5 + v9) = v8;
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = *(a5 + 16);
    if ((*a1 & 0x20) != 0)
    {
      *(a5 + 16) = v11 + 1;
      *(*a5 + v11) = 46;
      v12 = *(a5 + 16);
      v11 = v12;
      if ((*a1 & 0x40) != 0)
      {
        *(a5 + 16) = v12 + 1;
        *(*a5 + v12) = 48;
        v11 = *(a5 + 16);
      }
    }
  }

  else
  {
    v13 = *(a5 + 16);
    *(a5 + 16) = v13 + 1;
    *(*a5 + v13) = 46;
    memmove((*a5 + *(a5 + 16)), a2 + 1, v10);
    v11 = *(a5 + 16) + v10;
  }

  v14 = *(a1 + 24);
  *(a5 + 16) = v11 + 1;
  *(*a5 + v11) = v14;
  if ((a4 & 0x80000000) != 0)
  {
    v17 = *(a5 + 16);
    *(a5 + 16) = v17 + 1;
    *(*a5 + v17) = 45;
    a4 = -a4;
    v27 = 0;
LABEL_12:
    v18 = &v26;
    v16 = 5;
    do
    {
      *v18-- = (a4 % 0xA) | 0x30;
      --v16;
      v19 = a4 > 9;
      a4 /= 0xAu;
    }

    while (v19);
    goto LABEL_14;
  }

  if (*a1)
  {
    v15 = *(a5 + 16);
    *(a5 + 16) = v15 + 1;
    *(*a5 + v15) = 43;
  }

  v27 = 0;
  if (a4)
  {
    goto LABEL_12;
  }

  v26 = 48;
  v16 = 4;
LABEL_14:
  if (*(a1 + 44) >= 5)
  {
    v20 = 5;
  }

  else
  {
    v20 = *(a1 + 44);
  }

  v21 = 5 - v16;
  if (5 - v16 < v20)
  {
    memset(&v25[v16 - 1 - (v16 + v20 - 6)], 48, (v16 + v20 - 6) + 1);
    v22 = 5 - v16;
    v23 = 6 - v16;
    if (v20 > v23)
    {
      LODWORD(v23) = v20;
    }

    v16 = 5 - v23;
    do
    {
      ++v22;
    }

    while (v22 < v20);
    v21 = v23;
  }

  result = memcpy((*a5 + *(a5 + 16)), &v25[v16], v21);
  *(a5 + 16) += v21;
  return result;
}

int *pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateDecimalRepresentation(int *result, char *__src, int a3, size_t __len, int a5, uint64_t *a6)
{
  v7 = a5;
  v8 = __len;
  v11 = result;
  if (__len <= 0)
  {
    v19 = *(a6 + 4);
    *(a6 + 4) = v19 + 1;
    *(*a6 + v19) = 48;
    if (a5 >= 1)
    {
      v20 = *(a6 + 4);
      *(a6 + 4) = v20 + 1;
      *(*a6 + v20) = 46;
      if (__len)
      {
        v21 = __len;
        do
        {
          v22 = *(a6 + 4);
          *(a6 + 4) = v22 + 1;
          *(*a6 + v22) = 48;
        }

        while (!__CFADD__(v21++, 1));
      }

      result = memmove((*a6 + *(a6 + 4)), __src, a3);
      *(a6 + 4) += a3;
      v24 = v8 - a3 + v7;
      if (v24 >= 1)
      {
        do
        {
          v25 = *(a6 + 4);
          *(a6 + 4) = v25 + 1;
          *(*a6 + v25) = 48;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    v12 = *(a6 + 4);
    v13 = *a6;
    v14 = __len - a3;
    if (__len >= a3)
    {
      result = memmove((v13 + v12), __src, a3);
      *(a6 + 4) += a3;
      if (v14 >= 1)
      {
        do
        {
          v26 = *(a6 + 4);
          *(a6 + 4) = v26 + 1;
          *(*a6 + v26) = 48;
          --v14;
        }

        while (v14);
      }

      if (v7 >= 1)
      {
        v27 = *(a6 + 4);
        *(a6 + 4) = v27 + 1;
        *(*a6 + v27) = 46;
        do
        {
          v28 = *(a6 + 4);
          *(a6 + 4) = v28 + 1;
          *(*a6 + v28) = 48;
          --v7;
        }

        while (v7);
        return result;
      }
    }

    else
    {
      memmove((v13 + v12), __src, __len);
      v15 = *(a6 + 4) + v8;
      *(a6 + 4) = v15 + 1;
      *(*a6 + v15) = 46;
      v16 = a3 - v8;
      result = memmove((*a6 + *(a6 + 4)), &__src[v8], v16);
      *(a6 + 4) += v16;
      v17 = v7 - v16;
      if (v7 - v16 >= 1)
      {
        do
        {
          v18 = *(a6 + 4);
          *(a6 + 4) = v18 + 1;
          *(*a6 + v18) = 48;
          --v17;
        }

        while (v17);
      }
    }
  }

  if (!v7)
  {
    v29 = *v11;
    if ((*v11 & 2) != 0)
    {
      v30 = *(a6 + 4);
      *(a6 + 4) = v30 + 1;
      *(*a6 + v30) = 46;
      v29 = *v11;
    }

    if ((v29 & 4) != 0)
    {
      v31 = *(a6 + 4);
      *(a6 + 4) = v31 + 1;
      *(*a6 + v31) = 48;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToShortestIeeeNumber(int *a1, uint64_t a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    __len = 0;
    v12 = 0;
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(a3, 0, __len_6, 0x12u, &v12, &v11, &__len, a4);
    v8 = a4 != 0.0;
    if ((*a1 & 8) == 0)
    {
      v8 = 1;
    }

    if (v12 && v8)
    {
      v10 = *(a2 + 16);
      *(a2 + 16) = v10 + 1;
      *(*a2 + v10) = 45;
    }

    if (a1[7] < __len && __len <= a1[8])
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateDecimalRepresentation(a1, __len_6, v11, __len, (v11 - __len) & ~((v11 - __len) >> 31), a2);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateExponentialRepresentation(a1, __len_6, v11, __len - 1, a2);
    }

    return 1;
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::HandleSpecialValues(a1, a2, a4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(uint64_t result, int a2, _BYTE *a3, unsigned int a4, BOOL *a5, int *a6, int *a7, double a8)
{
  v11 = a2;
  v12 = result;
  *a5 = a8 < 0.0;
  if (result == 3 && !a2)
  {
    *a3 = 0;
    *a6 = 0;
    return result;
  }

  if (a8 == 0.0)
  {
    *a3 = 48;
    *a6 = 1;
    *a7 = 1;
    return result;
  }

  v13 = a4;
  v14 = fabs(a8);
  if (result <= 1)
  {
    if (!result)
    {
      v15 = v14;
      v16 = 0;
      goto LABEL_14;
    }

    if (result == 1)
    {
      v15 = v14;
      v16 = 1;
LABEL_14:
      a2 = 0;
LABEL_15:
      result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::FastDtoa(v16, a2, a3, a4, a6, a7, v15);
      if (result)
      {
        return result;
      }

      goto LABEL_16;
    }

LABEL_20:
    abort();
  }

  if (result != 2)
  {
    if (result == 3)
    {
      v15 = v14;
      v16 = 2;
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::FastFixedDtoa(a2, a3, a4, a6, a7, v14);
  if ((result & 1) == 0)
  {
LABEL_16:
    result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::BignumDtoa(v12, v11, a3, v13, a6, a7, v14);
    a3[*a6] = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToFixed(int *a1, int a2, uint64_t a3, double a4)
{
  v15 = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    result = 0;
    if (a2 <= 100 && fabs(a4) < 1.0e60)
    {
      __len = 0;
      v12 = 0;
      v11 = 0;
      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(2, a2, __len_7, 0xA1u, &v12, &v11, &__len, a4);
      v9 = (*a1 & 8) == 0 || a4 != 0.0;
      if (v12 && v9)
      {
        v10 = *(a3 + 16);
        *(a3 + 16) = v10 + 1;
        *(*a3 + v10) = 45;
      }

      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateDecimalRepresentation(a1, __len_7, v11, __len, a2, a3);
      return 1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::HandleSpecialValues(a1, a3, a4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToExponential(_DWORD *a1, int a2, uint64_t a3, double a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if ((a2 - 121) >= 0xFFFFFF86)
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
      if (a2 == -1)
      {
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(0, 0, v15, 0x7Au, &v13, &v12, &v14, a4);
      }

      else
      {
        v9 = a2 + 1;
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(3, a2 + 1, v15, 0x7Au, &v13, &v12, &v14, a4);
        if (a2 >= v12)
        {
          memset(&v15[v12], 48, (a2 - v12) + 1);
        }

        v12 = v9;
      }

      v10 = (*a1 & 8) == 0 || a4 != 0.0;
      if (v13 && v10)
      {
        v11 = *(a3 + 16);
        *(a3 + 16) = v11 + 1;
        *(*a3 + v11) = 45;
      }

      pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateExponentialRepresentation(a1, v15, v12, v14 - 1, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::HandleSpecialValues(a1, a3, a4);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::ToPrecision(int *a1, int a2, uint64_t a3, double a4)
{
  v27 = *MEMORY[0x29EDCA608];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v8 = a2;
    if ((a2 - 121) < 0xFFFFFF88)
    {
      return 0;
    }

    __len = 0;
    v24 = 0;
    v23 = 0;
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::DoubleToAscii(3, a2, __len_7, 0x79u, &v24, &v23, &__len, a4);
    v9 = (*a1 & 8) == 0 || a4 != 0.0;
    if (v24 && v9)
    {
      v10 = *(a3 + 16);
      *(a3 + 16) = v10 + 1;
      *(*a3 + v10) = 45;
    }

    v11 = *a1;
    if ((1 - __len) <= a1[9])
    {
      v13 = __len - v8 + ((v11 >> 2) & 1);
      v14 = a1[10];
      v15 = v13 > v14;
      if ((v11 & 0x10) == 0)
      {
        v12 = v23;
        if (v13 > v14)
        {
          goto LABEL_36;
        }

LABEL_18:
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateDecimalRepresentation(a1, __len_7, v12, __len, (v8 - __len) & ~((v8 - __len) >> 31), a3);
        return 1;
      }

      if (__len <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = __len;
      }

      if (v13 > v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v17;
      }
    }

    else
    {
      if ((v11 & 0x10) == 0)
      {
        v12 = v23;
LABEL_36:
        v22 = __len - 1;
        if (v12 < v8)
        {
          memset(&__len_7[v12], 48, (v8 + ~v12) + 1);
        }

        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::CreateExponentialRepresentation(a1, __len_7, v8, v22, a3);
        return 1;
      }

      v15 = 1;
      v16 = 1;
    }

    v18 = v23;
    if (v23 > v16 && (v19 = v23 - 1, __len_7[v19] == 48))
    {
      v20 = &__len_7[v23 - 2];
      while (v19 > v16)
      {
        --v19;
        v21 = *v20--;
        --v18;
        if (v21 != 48)
        {
          v23 = v18;
          goto LABEL_32;
        }
      }

      v12 = v18 - 1;
      v23 = v18 - 1;
      v18 = v16;
    }

    else
    {
LABEL_32:
      v12 = v18;
    }

    if (v18 < v8)
    {
      v8 = v18;
    }

    if (v15)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::DoubleToStringConverter::HandleSpecialValues(a1, a3, a4);
}

BOOL pxrInternal__aapl__pxrReserved__::pxr_double_conversion::FastDtoa(unsigned int a1, int a2, uint64_t a3, uint64_t a4, int *a5, _DWORD *a6, double a7)
{
  if (a1 >= 2)
  {
    if (a1 != 2)
    {
      abort();
    }

    v61 = a7;
    v18 = sub_29A0E2098(&v61);
    v20 = v19;
    v61 = 0.0;
    v62 = 0;
    LODWORD(v59) = 0;
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::PowersOfTenCache::GetCachedPowerForBinaryExponentRange((-124 - v19), (-96 - v19), &v61, &v59);
    v21 = ((LODWORD(v61) * HIDWORD(v18)) >> 32) + HIDWORD(v61) * HIDWORD(v18) + ((HIDWORD(v61) * v18) >> 32) + ((((LODWORD(v61) * v18) >> 32) + (LODWORD(v61) * HIDWORD(v18)) + (HIDWORD(v61) * v18) + 0x80000000) >> 32);
    v22 = -64 - (v20 + v62);
    v23 = -(v20 + v62);
    v24 = v21 >> -(v20 + v62);
    v25 = 1233 * (v20 + v62 + 64) + 80145;
    v26 = v25 >> 12;
    v27 = (v25 >> 12) + 1;
    if (dword_29B4362E0[v27] > v24)
    {
      LODWORD(v27) = v26;
    }

    v28 = dword_29B4362E0[v27];
    v29 = 1 << v23;
    v30 = (1 << v23) - 1;
    v31 = v21 & v30;
    LODWORD(v57) = v27;
    *a5 = 0;
    if (v27 < 1)
    {
      v32 = 0;
      if (a2)
      {
LABEL_30:
        if (a2 < 1 || v31 < 2)
        {
          return 0;
        }

        v52 = 1;
        do
        {
          v53 = a2;
          v52 *= 10;
          *(a3 + v32) = ((10 * v31) >> v22) + 48;
          v32 = *a5 + 1;
          *a5 = v32;
          --a2;
          v31 = v30 & (10 * v31);
          LODWORD(v27) = v27 - 1;
        }

        while (v53 >= 2 && v31 > v52);
        LODWORD(v57) = v27;
        if (a2)
        {
          return 0;
        }

        v54 = a3;
        v55 = a4;
LABEL_39:
        if (sub_29A0E22F0(v54, v55, v32, v31, v29, v52, &v57))
        {
          v51 = LODWORD(v57) - v59;
          goto LABEL_41;
        }

        return 0;
      }
    }

    else
    {
      v32 = 0;
      while (1)
      {
        *(a3 + v32) = v24 / v28 + 48;
        v32 = *a5 + 1;
        *a5 = v32;
        LODWORD(v24) = v24 % v28;
        LODWORD(v27) = v27 - 1;
        if (!--a2)
        {
          break;
        }

        v28 /= 0xAu;
        if ((v27 + 1) <= 1)
        {
          LODWORD(v57) = v27;
          goto LABEL_30;
        }
      }

      LODWORD(v57) = v27;
    }

    v29 = v28 << v22;
    v31 += v24 << v22;
    v54 = a3;
    v55 = a4;
    v52 = 1;
    goto LABEL_39;
  }

  v61 = a7;
  v13 = sub_29A0E2098(&v61);
  v15 = v14;
  v61 = 0.0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  if (a1)
  {
    v16 = a7;
    *&v57 = v16;
    sub_29A0E218C(&v57, &v61, &v59);
  }

  else
  {
    v57 = a7;
    sub_29A0E20EC(&v57, &v61, &v59);
  }

  v57 = 0.0;
  v58 = 0;
  v56 = 0;
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::PowersOfTenCache::GetCachedPowerForBinaryExponentRange((-124 - v15), (-96 - v15), &v57, &v56);
  v33 = ((LODWORD(v57) * HIDWORD(v13)) >> 32) + HIDWORD(v57) * HIDWORD(v13) + ((HIDWORD(v57) * v13) >> 32) + ((((LODWORD(v57) * v13) >> 32) + (LODWORD(v57) * HIDWORD(v13)) + (HIDWORD(v57) * v13) + 0x80000000) >> 32);
  v34 = ((HIDWORD(v59) * LODWORD(v57)) >> 32) + HIDWORD(v59) * HIDWORD(v57) + ((v59 * HIDWORD(v57)) >> 32) + ((((v59 * LODWORD(v57)) >> 32) + (HIDWORD(v59) * LODWORD(v57)) + (v59 * HIDWORD(v57)) + 0x80000000) >> 32);
  v35 = v34 + 1;
  v36 = v34 - (((HIDWORD(v61) * LODWORD(v57)) >> 32) + HIDWORD(v61) * HIDWORD(v57) + ((LODWORD(v61) * HIDWORD(v57)) >> 32) + ((((LODWORD(v61) * LODWORD(v57)) >> 32) + (HIDWORD(v61) * LODWORD(v57)) + (LODWORD(v61) * HIDWORD(v57)) + 0x80000000) >> 32)) + 2;
  v37 = -64 - (v15 + v58);
  v38 = 1 << -(v15 + v58);
  v39 = v35 >> -(v15 + v58);
  v40 = v35 & (v38 - 1);
  v41 = 1233 * (v15 + v58 + 64) + 80145;
  v42 = v41 >> 12;
  v43 = (v41 >> 12) + 1;
  if (dword_29B4362E0[v43] <= v39)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  v45 = dword_29B4362E0[v44];
  *a5 = 0;
  if (v44 >= 1)
  {
    v46 = 0;
    v47 = v44 + 1;
    while (1)
    {
      *(a3 + v46) = v39 / v45 + 48;
      v46 = *a5 + 1;
      *a5 = v46;
      v39 = v39 % v45;
      if ((v39 << v37) + v40 < v36)
      {
        break;
      }

      v45 /= 0xAu;
      if (--v47 <= 1)
      {
        v44 = 0;
        goto LABEL_23;
      }
    }

    if (sub_29A0E222C(a3, a4, v46, v35 - v33, v36, (v39 << v37) + v40, v45 << v37, 1))
    {
      v51 = v47 - v56 - 2;
      goto LABEL_41;
    }

    return 0;
  }

  v46 = 0;
LABEL_23:
  v48 = 1;
  do
  {
    v48 *= 10;
    v49 = 5 * v36;
    v36 *= 10;
    *(a3 + v46) = ((10 * v40) >> v37) + 48;
    v46 = *a5 + 1;
    *a5 = v46;
    v40 = (v38 - 1) & (10 * v40);
    --v44;
  }

  while (v40 >= 2 * v49);
  result = sub_29A0E222C(a3, a4, v46, v48 * (v35 - v33), v36, v40, v38, v48);
  if (result)
  {
    v51 = v44 - v56;
LABEL_41:
    *a6 = *a5 + v51;
    *(a3 + *a5) = 0;
    return 1;
  }

  return result;
}

uint64_t sub_29A0E2098(void *a1)
{
  v1 = (*a1 & 0xFFFFFFFFFFFFFLL) << (52 - (__clz(*a1 & 0xFFFFFFFFFFFFFLL) ^ 0x3Fu));
  if ((*a1 & 0x7FF0000000000000) != 0)
  {
    v1 = *a1 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  return v1 << 11;
}

void *sub_29A0E20EC(void *result, uint64_t a2, uint64_t a3)
{
  if ((*result & 0x7FF0000000000000) != 0)
  {
    v3 = *result & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v3 = *result & 0xFFFFFFFFFFFFFLL;
  }

  if ((*result & 0x7FF0000000000000) != 0)
  {
    v4 = ((*result >> 52) & 0x7FF) - 1075;
  }

  else
  {
    v4 = -1074;
  }

  v5 = 2 * v3;
  v6 = (2 * (v3 & 0x1FFFFFFFFFFFFFLL)) | 1;
  v7 = v4 - 1;
  v8 = v4 - 1;
  do
  {
    v9 = v6 >> 44;
    v6 <<= 10;
    v8 -= 10;
  }

  while (!v9);
  for (; (v6 & 0x8000000000000000) == 0; --v8)
  {
    v6 *= 2;
  }

  v10 = (*result & 0xFFFFFFFFFFFFFLL) == 0;
  v11 = (*result & 0x7FE0000000000000) != 0;
  v12 = 4 * v3;
  v13 = v4 - 2;
  v14 = !v10 || !v11;
  if (v10 && v11)
  {
    v15 = v12;
  }

  else
  {
    v15 = v5;
  }

  if (v14)
  {
    v16 = v7;
  }

  else
  {
    v16 = v13;
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *a2 = (v15 - 1) << (v16 - v8);
  *(a2 + 8) = v8;
  return result;
}

int *sub_29A0E218C(int *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *result & 0x7FFFFF;
  LODWORD(v5) = v4 | 0x800000;
  if ((*result & 0x7F800000) != 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = v4;
  }

  if ((v3 & 0x7F800000) != 0)
  {
    v6 = (*result >> 23) - 150;
  }

  else
  {
    v6 = -149;
  }

  v7 = 2 * v5;
  v8 = (2 * (v5 & 0xFFFFFF)) | 1;
  v9 = v6 - 1;
  v10 = v6 - 1;
  do
  {
    v11 = v8 >> 44;
    v8 <<= 10;
    v10 -= 10;
  }

  while (!v11);
  for (; (v8 & 0x8000000000000000) == 0; --v10)
  {
    v8 *= 2;
  }

  v12 = v4 == 0;
  v13 = (v3 & 0x7F000000) != 0;
  v14 = 4 * v5;
  v15 = v6 - 2;
  v16 = !v12 || !v13;
  if (v12 && v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v7;
  }

  if (v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v15;
  }

  *a3 = v8;
  *(a3 + 8) = v10;
  *a2 = (v17 - 1) << (v18 - v10);
  *(a2 + 8) = v10;
  return result;
}

BOOL sub_29A0E222C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v8 = a4 - a8;
  v9 = a8 + a4;
  v10 = a5 - a6 < a7;
  v11 = a4 - a8 - a6;
  if (a4 - a8 > a6 && a5 - a6 >= a7)
  {
    v12 = a5 - (a7 + a6);
    while (1)
    {
      v13 = a6 + a7;
      v14 = a6 + a7 < v8 || v11 >= a8 - a4 + a7 + a6;
      if (!v14)
      {
        break;
      }

      --*(a1 - 1 + a3);
      v10 = v12 < a7;
      if (v13 < v8)
      {
        v11 -= a7;
        a6 += a7;
        v14 = v12 >= a7;
        v12 -= a7;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

  v13 = a6;
LABEL_13:
  v15 = v9 - v13;
  if (v9 > v13 && !v10)
  {
    v14 = v13 + a7 >= v9;
    v16 = v13 + a7 - v9;
    if (!v14 || v15 > v16)
    {
      return 0;
    }
  }

  return v13 >= 2 * a8 && v13 <= a5 - 4 * a8;
}

uint64_t sub_29A0E22F0(_BYTE *a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, _DWORD *a7)
{
  v7 = 0;
  if (a5 > a6 && a5 - a6 > a6)
  {
    if (a5 - a4 <= a4 || a5 - 2 * a4 < 2 * a6)
    {
      if (a4 <= a6 || a5 - (a4 - a6) > a4 - a6)
      {
        return 0;
      }

      v8 = a3 - 1;
      ++a1[v8];
      if (a3 >= 2)
      {
        v9 = &a1[v8];
        v10 = *v9;
        v11 = &a1[a3 - 2];
        do
        {
          if (v10 != 58)
          {
            break;
          }

          *v9-- = 48;
          v10 = *v11 + 1;
          *v11-- = v10;
          --a3;
        }

        while (a3 > 1);
      }

      if (*a1 == 58)
      {
        *a1 = 49;
        ++*a7;
      }
    }

    return 1;
  }

  return v7;
}

BOOL pxrInternal__aapl__pxrReserved__::pxr_double_conversion::FastFixedDtoa(int a1, _BYTE *a2, uint64_t a3, int *a4, int *a5, double a6)
{
  if ((*&a6 & 0x7FF0000000000000) != 0)
  {
    v7 = *&a6 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v7 = *&a6 & 0xFFFFFFFFFFFFFLL;
  }

  if ((*&a6 & 0x7FF0000000000000) != 0)
  {
    v8 = ((*&a6 >> 52) & 0x7FF) - 1075;
  }

  else
  {
    v8 = -1074;
  }

  v10 = a1 < 21 && v8 < 21;
  if (!v10)
  {
    return v10;
  }

  *a4 = 0;
  if (v8 >= 12)
  {
    v15 = 0xB1A2BC2EC5 << (17 - v8);
    v16 = v7 / v15;
    v17 = (v7 % v15) << v8;
    v18 = v7 << (v8 - 17);
    v19 = v8 >= 0x12;
    if (v8 >= 0x12)
    {
      v20 = (v18 % 0xB1A2BC2EC5) << 17;
    }

    else
    {
      v20 = v17;
    }

    if (v19)
    {
      v21 = v18 / 0xB1A2BC2EC5;
    }

    else
    {
      v21 = v16;
    }

    sub_29A0E2794(v21, a2, a3, a4);
    v22 = v20 / 0x5AF3107A4000;
    v23 = a2 + 2;
    for (i = 4; i > 1; --i)
    {
      v23[*a4] = (v22 % 0xA) | 0x30;
      --v23;
      LODWORD(v22) = v22 / 0xA;
    }

    v25 = v20 / 0x989680 - 10000000 * ((v20 / 0x989680 * 0x1AD7F29ABCBuLL) >> 64);
    *a4 += 3;
    v26 = a2 + 6;
    for (j = 8; j > 1; --j)
    {
      v26[*a4] = (v25 % 0xA) | 0x30;
      --v26;
      v25 /= 0xAu;
    }

    v28 = v20 % 0x989680;
    *a4 += 7;
    v29 = a2 + 6;
    for (k = 8; k > 1; --k)
    {
      v29[*a4] = (v28 % 0xA) | 0x30;
      --v29;
      v28 /= 0xAu;
    }

    v31 = *a4 + 7;
    *a4 = v31;
    goto LABEL_30;
  }

  if ((v8 & 0x80000000) != 0)
  {
    if (v8 < 0xFFFFFFCC)
    {
      if (v8 <= 0xFFFFFF7F)
      {
        *a2 = 0;
        *a4 = 0;
        v31 = -a1;
        goto LABEL_30;
      }

      *a5 = 0;
    }

    else
    {
      v38 = v7 >> -v8;
      v39 = v7 - (v38 << -v8);
      if (HIDWORD(v38))
      {
        sub_29A0E2820(v7 >> -v8, a2, a3, a4);
      }

      else
      {
        sub_29A0E2794(v7 >> -v8, a2, a3, a4);
      }

      *a5 = *a4;
      v7 = v39;
    }

    sub_29A0E29D8(v7, v8, a1, a2, a3, a4, a5);
    goto LABEL_31;
  }

  sub_29A0E2820(v7 << v8, a2, a3, a4);
  v31 = *a4;
LABEL_30:
  *a5 = v31;
LABEL_31:
  v32 = *a4;
  if (v32 >= 1)
  {
    if (a2[v32 - 1] == 48)
    {
      do
      {
        *a4 = v32 - 1;
        v33 = v32 - 1;
        if (v32 <= 1)
        {
          LODWORD(v32) = v32 - 1;
          goto LABEL_52;
        }

        v34 = a2[v32-- - 2];
      }

      while (v34 == 48);
      LODWORD(v32) = v33;
      if (v33 > 0)
      {
        goto LABEL_38;
      }

      LODWORD(v32) = v33;
    }

    else
    {
      v33 = *a4;
LABEL_38:
      v35 = 0;
      while (a2[v35] == 48)
      {
        if (v33 == ++v35)
        {
          LODWORD(v35) = v33;
          break;
        }
      }

      if (v35)
      {
        if (v32 > v35)
        {
          v36 = 0;
          v37 = v35;
          do
          {
            a2[v36++] = a2[v37++];
          }

          while (v37 < *a4);
          LODWORD(v32) = *a4;
        }

        *a4 = v32 - v35;
        *a5 -= v35;
        LODWORD(v32) = *a4;
      }
    }
  }

LABEL_52:
  a2[v32] = 0;
  if (!*a4)
  {
    *a5 = -a1;
  }

  return v10;
}

unint64_t sub_29A0E2794(unint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0;
  if (result)
  {
    v5 = a2;
    do
    {
      *(v5 + *a4) = (result % 0xA) | 0x30;
      ++v4;
      ++v5;
      v6 = result > 9;
      result = result / 0xAuLL;
    }

    while (v6);
  }

  v7 = *a4;
  v8 = v7 + v4;
  v9 = v7 + v4 - 1;
  if (v7 < v9)
  {
    v10 = v9;
    do
    {
      v11 = *(a2 + v7);
      *(a2 + v7) = *(a2 + v10);
      *(a2 + v10) = v11;
      ++v7;
      --v10;
    }

    while (v7 < v10);
    v8 = *a4 + v4;
  }

  *a4 = v8;
  return result;
}

unint64_t sub_29A0E2820(unint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a1 % 0x989680;
  v7 = a1 / 0x989680 - 10000000 * ((a1 / 0x989680 * 0x1AD7F29ABCBuLL) >> 64);
  if (a1 >= 0x5AF3107A4000)
  {
    result = sub_29A0E2794(a1 / 0x5AF3107A4000, a2, a3, a4);
    v11 = a2 + 6;
    for (i = 8; i > 1; --i)
    {
      *(v11 + *a4) = (v7 % 0xA) | 0x30;
      --v11;
      LODWORD(v7) = v7 / 0xA;
    }

    *a4 += 7;
    v13 = a2 + 6;
    for (j = 8; j > 1; --j)
    {
      *(v13 + *a4) = (v6 % 0xA) | 0x30;
      --v13;
      v6 /= 0xAu;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    result = sub_29A0E2794(a1 / 0x989680 - 10000000 * ((a1 / 0x989680 * 0x1AD7F29ABCBuLL) >> 64), a2, a3, a4);
    v9 = a2 + 6;
    for (k = 8; k > 1; --k)
    {
      *(v9 + *a4) = (v6 % 0xA) | 0x30;
      --v9;
      v6 /= 0xAu;
    }

LABEL_10:
    *a4 += 7;
    return result;
  }

  v15 = a1 % 0x989680;

  return sub_29A0E2794(v15, a2, a3, a4);
}

unint64_t sub_29A0E29D8(unint64_t result, int a2, int a3, _BYTE *a4, uint64_t a5, unsigned int *a6, _DWORD *a7)
{
  v11 = a3;
  if (a2 < -64)
  {
    v27 = result;
    v28 = 0;
    result = sub_29A0E2C5C(&v27, -64 - a2);
    v14 = v27;
    v15 = v28;
    if (v11 < 1)
    {
      v22 = 128;
    }

    else
    {
      v16 = 128;
      v17 = -63;
      while (v14 | v15)
      {
        v18 = 5 * v15;
        v19 = 5 * HIDWORD(v15) + HIDWORD(v18);
        v20 = v18 | (v19 << 32);
        v28 = v20;
        v21 = 5 * v14 + HIDWORD(v19);
        v22 = v16 - 1;
        v23 = v16 - 65;
        if (v16 < 65)
        {
          v14 = 0;
          v24 = (v21 << v17) + (v20 >> v22);
          v15 = v20 - (v20 >> v22 << v22);
          v28 = v15;
        }

        else
        {
          v24 = v21 >> v23;
          v14 = v21 - ((v21 >> v23) << v23);
          v15 = v20;
        }

        v27 = v14;
        a4[(*a6)++] = v24 + 48;
        ++v17;
        v16 = v22;
        if (!--v11)
        {
          goto LABEL_20;
        }
      }

      v15 = 0;
      v14 = 0;
      v22 = v16;
    }

LABEL_20:
    if (v22 <= 64)
    {
      v25 = -1;
    }

    else
    {
      v25 = -65;
    }

    v26 = v25 + v22;
    if (v22 <= 64)
    {
      v14 = v15;
    }

    if ((v14 >> v26))
    {
      return sub_29A0E2BC8(a4, a5, a6, a7);
    }
  }

  else
  {
    v12 = -a2;
    if (a3 < 1)
    {
LABEL_5:
      if (result && ((result >> (v12 - 1)) & 1) != 0)
      {

        return sub_29A0E2BC8(a4, a5, a6, a7);
      }
    }

    else
    {
      while (result)
      {
        LOBYTE(v12) = v12 - 1;
        v13 = (5 * result) >> v12;
        a4[(*a6)++] = v13 + 48;
        result = 5 * result - (v13 << v12);
        if (!--v11)
        {
          goto LABEL_5;
        }
      }
    }
  }

  return result;
}

_BYTE *sub_29A0E2BC8(_BYTE *result, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v4 = *a3;
  if (v4)
  {
    ++result[v4 - 1];
    v5 = *a3;
    if (v5 < 2)
    {
LABEL_5:
      if (*result == 58)
      {
        *result = 49;
        ++*a4;
      }
    }

    else
    {
      while (1)
      {
        v6 = &result[v5];
        if (result[v5 - 1] != 58)
        {
          break;
        }

        --v5;
        *(v6 - 1) = 48;
        ++*(v6 - 2);
        if ((v5 + 1) <= 2)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    *result = 49;
    *a4 = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t *sub_29A0E2C5C(uint64_t *result, int a2)
{
  if (a2 == 64)
  {
    v2 = *result;
    *result = 0;
    result[1] = v2;
  }

  else if (a2)
  {
    if (a2 == -64)
    {
      *result = result[1];
      result[1] = 0;
    }

    else if (a2 <= 0)
    {
      v4 = result[1];
      *result = (v4 >> a2) + (*result << -a2);
      result[1] = v4 << -a2;
    }

    else
    {
      v3 = (*result << -a2) + (result[1] >> a2);
      *result = *result >> a2;
      result[1] = v3;
    }
  }

  return result;
}

double sub_29A0E2CDC(int *a1, unsigned __int8 *a2, int a3, int a4, _DWORD *a5)
{
  v82 = *MEMORY[0x29EDCA608];
  v6 = &a2[a3];
  v79 = v6;
  *v80 = a2;
  *a5 = 0;
  if (!a3)
  {
    return *(a1 + 1);
  }

  v8 = a2;
  v9 = *a1;
  v10 = (*a1 >> 4) & 1;
  v11 = a2;
  if ((*a1 & 8) == 0)
  {
    v11 = a2;
    if (!v10)
    {
      v12 = *a2;
      v11 = a2;
      goto LABEL_5;
    }
  }

LABEL_15:
  v16 = 0;
  v12 = *v11;
  do
  {
    if (byte_29B43630C[v16] == v12)
    {
      if (++v11 == v6)
      {
        *a5 = a3;
        return *(a1 + 1);
      }

      goto LABEL_15;
    }

    ++v16;
  }

  while (v16 != 6);
  *v80 = v11;
  if ((v9 & 8) == 0 && v11 != a2)
  {
    return *(a1 + 2);
  }

LABEL_5:
  if (v12 == 45 || v12 == 43)
  {
    v13 = v12 == 45;
    *v80 = v11 + 1;
    if (v11 + 1 == v6)
    {
      return *(a1 + 2);
    }

    v14 = 1;
LABEL_9:
    for (i = 0; i != 6; ++i)
    {
      if (byte_29B43630C[i] == v11[v14])
      {
        if (++v14 == &a2[a3] - v11)
        {
          return *(a1 + 2);
        }

        goto LABEL_9;
      }
    }

    if ((v9 & 0x20) == 0 && v14 != 1)
    {
      return *(a1 + 2);
    }

    v11 += v14;
    *v80 = v11;
  }

  else
  {
    v13 = 0;
  }

  v18 = *(a1 + 3);
  if (!v18)
  {
    v74 = v10;
    v20 = (a1 + 8);
    v21 = *(a1 + 4);
    if (!v21)
    {
      goto LABEL_67;
    }

    LOBYTE(v19) = *v11;
    if ((v9 & 0x40) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_49;
  }

  v19 = *v11;
  if ((v9 & 0x40) == 0)
  {
    if (*v18 == *v11)
    {
LABEL_38:
      if (!sub_29A0E4220(v80, v6, v18, (v9 >> 6) & 1))
      {
        return *(a1 + 2);
      }

      v22 = *v80;
      if ((v10 | ((v9 & 4) >> 2)))
      {
        if ((v9 & 4) != 0 || *v80 == v6)
        {
          LODWORD(v6) = *v80;
        }

        else
        {
          do
          {
            v23 = 0;
            while (byte_29B43630C[v23] != *v22)
            {
              if (++v23 == 6)
              {
                return *(a1 + 2);
              }
            }

            ++v22;
          }

          while (v22 != v6);
        }
      }

      else if (*v80 != v6)
      {
        return *(a1 + 2);
      }

      *a5 = v6 - v8;
      v43 = v13 == 0;
      result = INFINITY;
      v44 = 0xFFF0000000000000;
      goto LABEL_122;
    }

    v74 = v10;
    v21 = *(a1 + 4);
    if (!v21)
    {
      goto LABEL_67;
    }

LABEL_49:
    if (*v21 == v19)
    {
      goto LABEL_56;
    }

    goto LABEL_67;
  }

  v74 = v10;
  if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
  {
    v68 = std::locale::classic();
    qword_2A153EF28 = std::locale::use_facet(v68, MEMORY[0x29EDC93D0]);
    __cxa_guard_release(&qword_2A153EF30);
  }

  if (*v18 == (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v19))
  {
    v6 = v79;
    v18 = *(a1 + 3);
    goto LABEL_38;
  }

  v20 = (a1 + 8);
  v21 = *(a1 + 4);
  v11 = *v80;
  if (v21)
  {
    LOBYTE(v19) = **v80;
LABEL_53:
    if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
    {
      v69 = std::locale::classic();
      qword_2A153EF28 = std::locale::use_facet(v69, MEMORY[0x29EDC93D0]);
      __cxa_guard_release(&qword_2A153EF30);
    }

    if (*v21 == (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v19))
    {
      v6 = v79;
      v21 = *v20;
LABEL_56:
      if (!sub_29A0E4220(v80, v6, v21, (v9 >> 6) & 1))
      {
        return *(a1 + 2);
      }

      v24 = *v80;
      if ((v74 | ((v9 & 4) >> 2)))
      {
        if ((v9 & 4) != 0 || *v80 == v6)
        {
          LODWORD(v6) = *v80;
        }

        else
        {
          do
          {
            v25 = 0;
            while (byte_29B43630C[v25] != *v24)
            {
              if (++v25 == 6)
              {
                return *(a1 + 2);
              }
            }

            ++v24;
          }

          while (v24 != v6);
        }
      }

      else if (*v80 != v6)
      {
        return *(a1 + 2);
      }

      *a5 = v6 - v8;
      v43 = v13 == 0;
      result = NAN;
      v44 = 0xFFF8000000000000;
LABEL_122:
      v45 = *&v44;
LABEL_200:
      if (!v43)
      {
        return v45;
      }

      return result;
    }

    v11 = *v80;
  }

LABEL_67:
  if (*v11 == 48)
  {
    v26 = *(a1 + 20);
    if (sub_29A0E435C(v80, v26, 10, &v79))
    {
LABEL_69:
      *a5 = *v80 - v8;
      v27 = v13 == 0;
LABEL_70:
      result = -0.0;
      if (v27)
      {
        return 0.0;
      }

      return result;
    }

    v35 = *a1;
    if ((*a1 & 0x81) != 0)
    {
      v36 = *v80;
      if ((**v80 | 0x20) == 0x78)
      {
        v37 = ++*v80;
        v38 = v79;
        if ((v36 + 1) == v79)
        {
          return *(a1 + 2);
        }

        if (v35 & 0x80) != 0 && (sub_29A0E4430((v36 + 1), v79, v26, (v9 & 4) != 0))
        {
          v39 = 1;
          goto LABEL_129;
        }

        v46 = *v37;
        if ((v46 - 48) < 0xA && v46 < 64)
        {
          v39 = 0;
LABEL_129:
          v48 = a4;
        }

        else
        {
          v52 = v46 - 65;
          v48 = a4;
          if (v52 >= 0x26 || ((0x3F0000003FuLL >> v52) & 1) == 0)
          {
            return *(a1 + 2);
          }

          v39 = 0;
        }

        v81[0] = 0;
        result = sub_29A0E46D4(v80, v38, v13, v26, v39, (v9 & 4) != 0, v48, v81, *(a1 + 2));
        if ((v81[0] & 1) == 0)
        {
          v49 = *v80;
          if ((v9 & 0x10) != 0 && *v80 != v38)
          {
            do
            {
              v50 = 0;
              while (byte_29B43630C[v50] != *v49)
              {
                if (++v50 == 6)
                {
                  goto LABEL_139;
                }
              }

              ++v49;
            }

            while (v49 != v38);
            LODWORD(v49) = v38;
          }

LABEL_139:
          *a5 = v49 - v8;
        }

        return result;
      }
    }

    while (**v80 == 48)
    {
      if (sub_29A0E435C(v80, v26, 10, &v79))
      {
        goto LABEL_69;
      }
    }

    v71 = 48;
    v72 = v13;
    v73 = a5;
    v13 = (v35 >> 1) & 1;
  }

  else
  {
    v71 = *v11;
    v72 = v13;
    v73 = a5;
    LOBYTE(v13) = 0;
  }

  v28 = 0;
  v76 = 0;
  v29 = 0;
  v30 = 0;
  while (2)
  {
    v31 = *v80;
    v32 = **v80;
    if ((v32 - 48) <= 9)
    {
      if (v30 > 771)
      {
        ++v29;
        v76 |= v32 != 48;
        if (v13)
        {
          goto LABEL_80;
        }

LABEL_78:
        v13 = 0;
      }

      else
      {
        v81[v28++] = v32;
        ++v30;
        if ((v13 & 1) == 0)
        {
          goto LABEL_78;
        }

LABEL_80:
        v13 = *v31 < 56;
      }

      if (sub_29A0E435C(v80, *(a1 + 20), 10, &v79))
      {
        v33 = 0;
        v34 = a4;
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  v13 = (v30 != 0) & v13;
  if (v32 != 46)
  {
    v33 = 0;
    goto LABEL_103;
  }

  if (v13 && (v9 & 4) == 0)
  {
    return *(a1 + 2);
  }

  if (v13)
  {
    v34 = a4;
    goto LABEL_85;
  }

  v70 = *(a1 + 20);
  if (!sub_29A0E435C(v80, v70, 10, &v79))
  {
    if (v30 || **v80 != 48)
    {
      v33 = 0;
      goto LABEL_158;
    }

    v33 = 0;
    do
    {
      if (sub_29A0E435C(v80, v70, 10, &v79))
      {
        *v73 = *v80 - v8;
        v27 = v72 == 0;
        goto LABEL_70;
      }

      --v33;
    }

    while (**v80 == 48);
LABEL_158:
    while (1)
    {
      v31 = *v80;
      v32 = **v80;
      if ((v32 - 48) > 9)
      {
        break;
      }

      if (v30 > 771)
      {
        v76 |= v32 != 48;
      }

      else
      {
        v81[v28++] = v32;
        ++v30;
        --v33;
      }

      if (sub_29A0E435C(v80, v70, 10, &v79))
      {
        goto LABEL_189;
      }
    }

LABEL_103:
    if (v71 != 48 && !v33 && !v30)
    {
      return *(a1 + 2);
    }

    if ((v32 | 0x20) == 0x65)
    {
      v40 = v74;
      v34 = a4;
      if (v13 && (v9 & 4) == 0)
      {
        return *(a1 + 2);
      }

      if (v13)
      {
        goto LABEL_85;
      }

      v41 = v31 + 1;
      *v80 = v31 + 1;
      if (v31 + 1 == v79)
      {
        goto LABEL_187;
      }

      v42 = *v41;
      if (v42 == 45 || v42 == 43)
      {
        v41 = v31 + 2;
        *v80 = v31 + 2;
        if (v31 + 2 == v79)
        {
LABEL_187:
          if ((v9 & 4) == 0)
          {
            return *(a1 + 2);
          }

          *v80 = v31;
          goto LABEL_189;
        }
      }

      else
      {
        v42 = 43;
      }

      if (v41 == v79)
      {
        goto LABEL_187;
      }

      v55 = *v41;
      if (v55 - 58 < 0xFFFFFFF6)
      {
        goto LABEL_187;
      }

      v63 = 0;
      v31 = v79;
      v64 = v41 + 1;
      while (1)
      {
        if (v63 <= 107374181 || (v65 = 0x3FFFFFFF, v63 == 107374182) && v55 <= 0x33)
        {
          v65 = v55 + 10 * v63 - 48;
        }

        if (v64 == v79)
        {
          break;
        }

        v66 = *v64++;
        v55 = v66;
        v63 = v65;
        if (v66 - 48 >= 0xA)
        {
          v31 = v64 - 1;
          break;
        }
      }

      *v80 = v31;
      if (v42 == 45)
      {
        v67 = -v65;
      }

      else
      {
        v67 = v65;
      }

      v33 += v67;
    }

    else
    {
      v40 = v74;
      v34 = a4;
    }

    if ((v40 | ((v9 & 4) >> 2)))
    {
      if ((v9 & 4) != 0)
      {
        goto LABEL_172;
      }

      v51 = v79;
    }

    else
    {
      v51 = v31;
      if (v31 != v79)
      {
        return *(a1 + 2);
      }
    }

    if (v31 != v51)
    {
      do
      {
        v53 = 0;
        while (byte_29B43630C[v53] != *v31)
        {
          if (++v53 == 6)
          {
            return *(a1 + 2);
          }
        }

        ++v31;
      }

      while (v31 != v51);
      *v80 = v51;
LABEL_173:
      if ((v9 & 0x10) == 0 || v51 == v79)
      {
LABEL_83:
        if (v13)
        {
LABEL_84:
          LODWORD(v31) = *v80;
LABEL_85:
          v77 = v81;
          result = sub_29A0E4B54(&v77, &v81[v28], v72, *(a1 + 20), (v9 & 4) != 0, v34, &v78, *(a1 + 2));
          *v73 = v31 - v8;
          return result;
        }
      }

      else
      {
        while (2)
        {
          v54 = 0;
          while (byte_29B43630C[v54] != *v51)
          {
            if (++v54 == 6)
            {
              *v80 = v51;
              if (v13)
              {
                goto LABEL_84;
              }

              goto LABEL_189;
            }
          }

          if (++v51 != v79)
          {
            continue;
          }

          break;
        }

        *v80 = v79;
        if (v13)
        {
          goto LABEL_84;
        }
      }

LABEL_189:
      v56 = v33 + v29;
      if (v76)
      {
        v81[v28++] = 49;
        --v56;
      }

      v81[v28] = 0;
      v57 = v28;
      while (v57 >= 1)
      {
        v58 = v57 - 1;
        v59 = *(&v80[4] + v57-- + 1);
        if (v59 != 48)
        {
          v60 = (v58 + 1) & 0x7FFFFFFF;
          goto LABEL_196;
        }
      }

      v60 = 0;
LABEL_196:
      v61 = v28 - v60;
      if (a4)
      {
        result = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtodTrimmed(v81, v60, v61 + v56);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtofTrimmed(v81, v60, v61 + v56);
        result = v62;
      }

      *v73 = *v80 - v8;
      v45 = -result;
      v43 = v72 == 0;
      goto LABEL_200;
    }

LABEL_172:
    v51 = v31;
    goto LABEL_173;
  }

  v33 = 0;
  if (v71 == 48 || v30)
  {
    goto LABEL_189;
  }

  return *(a1 + 2);
}

double sub_29A0E377C(int *a1, unsigned __int16 *a2, int a3, int a4, _DWORD *a5)
{
  v81 = *MEMORY[0x29EDCA608];
  v6 = &a2[a3];
  v78 = v6;
  *v79 = a2;
  *a5 = 0;
  if (!a3)
  {
    return *(a1 + 1);
  }

  v8 = a4;
  v10 = *a1;
  if ((*a1 & 0x18) != 0)
  {
    v11 = a2;
    while (1)
    {
      v12 = *v11;
      if (v12 >= 0x80)
      {
        break;
      }

      v13 = 0;
      while (byte_29B43630C[v13] != v12)
      {
        if (++v13 == 6)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      if (++v11 == v6)
      {
        *a5 = a3;
        return *(a1 + 1);
      }
    }

    for (i = 0; i != 20; ++i)
    {
      if (word_29B436312[i] == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    *v79 = v11;
    if ((v10 & 8) == 0 && v11 != a2)
    {
      return *(a1 + 2);
    }
  }

  else
  {
    v12 = *a2;
    v11 = a2;
  }

  if (v12 == 45 || v12 == 43)
  {
    v16 = v12 == 45;
    if (v11 + 1 == v6)
    {
      return *(a1 + 2);
    }

    v17 = 1;
    while (1)
    {
      v12 = v11[v17];
      if (v12 >= 0x80)
      {
        break;
      }

      v18 = 0;
      while (byte_29B43630C[v18] != v12)
      {
        if (++v18 == 6)
        {
          goto LABEL_35;
        }
      }

LABEL_33:
      if (&v11[++v17] == v6)
      {
        return *(a1 + 2);
      }
    }

    for (j = 0; j != 20; ++j)
    {
      if (word_29B436312[j] == v12)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    if ((v10 & 0x20) == 0 && v17 != 1)
    {
      return *(a1 + 2);
    }

    v11 = (v11 + v17 * 2);
    *v79 = v11;
  }

  else
  {
    v16 = 0;
  }

  v20 = *(a1 + 3);
  if (!v20)
  {
    v23 = (a1 + 8);
    v22 = *(a1 + 4);
    if (!v22)
    {
      goto LABEL_66;
    }

    if ((v10 & 0x40) != 0)
    {
LABEL_57:
      if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
      {
        v71 = std::locale::classic();
        qword_2A153EF28 = std::locale::use_facet(v71, MEMORY[0x29EDC93D0]);
        __cxa_guard_release(&qword_2A153EF30);
      }

      if (*v22 == (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v12))
      {
        v6 = v78;
        v22 = *v23;
LABEL_60:
        if (!sub_29A0E4FE4(v79, v6, v22, (v10 >> 6) & 1))
        {
          return *(a1 + 2);
        }

        if ((v10 & 0x14) != 0)
        {
          if ((v10 & 4) != 0)
          {
            goto LABEL_132;
          }
        }

        else if (*v79 != v6)
        {
          return *(a1 + 2);
        }

        if (sub_29A0E4F5C(v79, v6))
        {
          return *(a1 + 2);
        }

LABEL_132:
        *a5 = (*v79 - a2) >> 1;
        v48 = !v16;
        v49 = NAN;
        v50 = 0xFFF8000000000000;
        goto LABEL_133;
      }

      v11 = *v79;
      goto LABEL_66;
    }

LABEL_53:
    if (*v22 == v12)
    {
      goto LABEL_60;
    }

    goto LABEL_66;
  }

  if ((v10 & 0x40) == 0)
  {
    if (*v20 == v12)
    {
LABEL_48:
      if (sub_29A0E4FE4(v79, v6, v20, (v10 >> 6) & 1))
      {
        if ((v10 & 0x14) != 0)
        {
          if ((v10 & 4) != 0)
          {
            goto LABEL_122;
          }
        }

        else if (*v79 != v6)
        {
          return *(a1 + 2);
        }

        if (!sub_29A0E4F5C(v79, v6))
        {
LABEL_122:
          *a5 = (*v79 - a2) >> 1;
          v48 = !v16;
          v49 = INFINITY;
          v50 = 0xFFF0000000000000;
LABEL_133:
          v53 = *&v50;
          goto LABEL_134;
        }
      }

      return *(a1 + 2);
    }

    v22 = *(a1 + 4);
    if (!v22)
    {
      goto LABEL_66;
    }

    goto LABEL_53;
  }

  if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
  {
    v70 = std::locale::classic();
    qword_2A153EF28 = std::locale::use_facet(v70, MEMORY[0x29EDC93D0]);
    __cxa_guard_release(&qword_2A153EF30);
  }

  if (*v20 == (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v12))
  {
    v6 = v78;
    v20 = *(a1 + 3);
    goto LABEL_48;
  }

  v23 = (a1 + 8);
  v22 = *(a1 + 4);
  v11 = *v79;
  if (v22)
  {
    LOBYTE(v12) = **v79;
    v8 = a4;
    goto LABEL_57;
  }

  v8 = a4;
LABEL_66:
  if (*v11 == 48)
  {
    v24 = *(a1 + 20);
    if (sub_29A0E5120(v79, v24, 10, &v78))
    {
LABEL_68:
      *a5 = (*v79 - a2) >> 1;
      v25 = !v16;
LABEL_69:
      if (v25)
      {
        return 0.0;
      }

      else
      {
        return -0.0;
      }
    }

    v41 = *a1;
    if ((*a1 & 0x81) != 0)
    {
      v42 = *v79;
      if ((**v79 | 0x20) == 0x78)
      {
        v43 = (*v79 + 2);
        *v79 += 2;
        v44 = v78;
        if ((v42 + 2) != v78)
        {
          if (v41 & 0x80) != 0 && (sub_29A0E51F4((v42 + 2), v78, v24, (v10 & 4) != 0))
          {
            v45 = 1;
          }

          else
          {
            v55 = *v43;
            if (v55 - 48 >= 0xA || v55 >= 0x40)
            {
              v57 = v55 - 65;
              if (v57 >= 0x26 || ((0x3F0000003FuLL >> v57) & 1) == 0)
              {
                return *(a1 + 2);
              }
            }

            v45 = 0;
          }

          v80[0] = 0;
          v15 = sub_29A0E53F4(v79, v44, v16, *(a1 + 20), v45, (v10 & 4) != 0, v8, v80, *(a1 + 2));
          if ((v80[0] & 1) == 0)
          {
            if ((v10 & 0x10) != 0)
            {
              sub_29A0E4F5C(v79, v44);
            }

LABEL_188:
            *a5 = (*v79 - a2) >> 1;
          }

          return v15;
        }

        return *(a1 + 2);
      }
    }

    while (**v79 == 48)
    {
      if (sub_29A0E5120(v79, v24, 10, &v78))
      {
        goto LABEL_68;
      }
    }

    v73 = 48;
    v74 = v16;
    v75 = v8;
    v26 = (v41 >> 1) & 1;
  }

  else
  {
    v73 = *v11;
    v74 = v16;
    v75 = v8;
    LOBYTE(v26) = 0;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v79;
    v32 = **v79;
    if ((v32 - 48) > 9)
    {
      break;
    }

    if (v30 > 771)
    {
      ++v29;
      v28 |= v32 != 48;
      if (v26)
      {
LABEL_79:
        v26 = *v31 < 0x38u;
        goto LABEL_80;
      }
    }

    else
    {
      v80[v27++] = v32;
      ++v30;
      if (v26)
      {
        goto LABEL_79;
      }
    }

    v26 = 0;
LABEL_80:
    if (sub_29A0E5120(v79, *(a1 + 20), 10, &v78))
    {
      LODWORD(v33) = 0;
      v34 = v75;
      goto LABEL_82;
    }
  }

  v26 = (v30 != 0) & v26;
  v34 = v75;
  if (v32 != 46)
  {
    LODWORD(v33) = 0;
    goto LABEL_108;
  }

  if (v26 && (v10 & 4) == 0)
  {
    return *(a1 + 2);
  }

  if (v26)
  {
    goto LABEL_187;
  }

  v72 = *(a1 + 20);
  if (!sub_29A0E5120(v79, v72, 10, &v78))
  {
    if (v30 || **v79 != 48)
    {
      v33 = 0;
      goto LABEL_155;
    }

    LODWORD(v33) = 0;
    do
    {
      v58 = v33;
      if (sub_29A0E5120(v79, v72, 10, &v78))
      {
        *a5 = (*v79 - a2) >> 1;
        v25 = v74 == 0;
        goto LABEL_69;
      }

      v33 = (v58 - 1);
    }

    while (**v79 == 48);
LABEL_155:
    while (1)
    {
      v31 = *v79;
      v32 = **v79;
      if ((v32 - 48) > 9)
      {
        break;
      }

      if (v30 > 771)
      {
        v59 = v33;
        v28 |= v32 != 48;
      }

      else
      {
        v80[v27++] = v32;
        ++v30;
        v59 = (v33 - 1);
      }

      v60 = sub_29A0E5120(v79, v72, 10, &v78);
      v33 = v59;
      if (v60)
      {
        goto LABEL_160;
      }
    }

    v34 = v75;
LABEL_108:
    if (v73 != 48 && !v33 && !v30)
    {
      return *(a1 + 2);
    }

    if ((v32 | 0x20) == 0x65)
    {
      if (v26 && (v10 & 4) == 0)
      {
        return *(a1 + 2);
      }

      if (v26)
      {
        goto LABEL_187;
      }

      v46 = v31 + 1;
      if (v31 + 1 == v78)
      {
LABEL_166:
        if ((v10 & 4) == 0)
        {
          return *(a1 + 2);
        }

        *v79 = v31;
        goto LABEL_83;
      }

      v47 = *v46;
      if (v47 == 45 || v47 == 43)
      {
        v46 = v31 + 2;
        if (v31 + 2 == v78)
        {
          goto LABEL_166;
        }
      }

      else
      {
        LOBYTE(v47) = 43;
      }

      if (v46 == v78)
      {
        goto LABEL_166;
      }

      v61 = *v46;
      if (v61 - 58 < 0xFFFFFFF6)
      {
        goto LABEL_166;
      }

      v62 = 0;
      v63 = v46 + 1;
      do
      {
        v31 = v63;
        if (v62 > 107374181)
        {
          v64 = 0x3FFFFFFF;
          if (v62 != 107374182 || v61 > 0x33)
          {
            goto LABEL_173;
          }
        }

        v64 = v61 + 10 * v62 - 48;
LABEL_173:
        if (v63 == v78)
        {
          break;
        }

        ++v63;
        v61 = *v31;
        v62 = v64;
      }

      while (v61 - 48 < 0xA);
      *v79 = v31;
      if (v47 == 45)
      {
        v65 = -v64;
      }

      else
      {
        v65 = v64;
      }

      LODWORD(v33) = v65 + v33;
    }

    if ((v10 & 0x14) != 0)
    {
      if ((v10 & 4) != 0)
      {
        goto LABEL_185;
      }

      v66 = v33;
      v67 = v78;
    }

    else
    {
      v67 = v78;
      if (v31 != v78)
      {
        return *(a1 + 2);
      }

      v66 = v33;
    }

    v68 = sub_29A0E4F5C(v79, v67);
    LODWORD(v33) = v66;
    if (v68)
    {
      return *(a1 + 2);
    }

LABEL_185:
    if ((v10 & 0x10) != 0)
    {
      v69 = v33;
      sub_29A0E4F5C(v79, v78);
      if ((v26 & 1) == 0)
      {
        v35 = v69 + v29;
LABEL_84:
        v36 = v74;
        if (v28)
        {
          goto LABEL_85;
        }

        goto LABEL_86;
      }
    }

    else
    {
LABEL_82:
      if (!v26)
      {
LABEL_83:
        v35 = v33 + v29;
        goto LABEL_84;
      }
    }

LABEL_187:
    v76 = v80;
    v15 = sub_29A0E4B54(&v76, &v80[v27], v74, *(a1 + 20), (v10 & 4) != 0, v34, &v77, *(a1 + 2));
    goto LABEL_188;
  }

  LODWORD(v33) = 0;
  if (v73 != 48 && !v30)
  {
    return *(a1 + 2);
  }

LABEL_160:
  v35 = v33 + v29;
  v36 = v74;
  v34 = v75;
  if ((v28 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_85:
  v80[v27++] = 49;
  --v35;
LABEL_86:
  v80[v27] = 0;
  v37 = v27;
  while (v37 >= 1)
  {
    v38 = v37 - 1;
    v39 = *(&v79[4] + v37-- + 1);
    if (v39 != 48)
    {
      v40 = (v38 + 1) & 0x7FFFFFFF;
      goto LABEL_124;
    }
  }

  v40 = 0;
LABEL_124:
  v51 = v27 - v40;
  if (v34)
  {
    v49 = pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtodTrimmed(v80, v40, v51 + v35);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtofTrimmed(v80, v40, v51 + v35);
    v49 = v52;
  }

  *a5 = (*v79 - a2) >> 1;
  v53 = -v49;
  v48 = v36 == 0;
LABEL_134:
  if (v48)
  {
    return v49;
  }

  else
  {
    return v53;
  }
}

BOOL sub_29A0E4220(void *a1, char *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = (a3 + 1);
    v7 = MEMORY[0x29EDC93D0];
    do
    {
      v8 = *v6;
      v9 = *v6 == 0;
      v10 = (*a1 + 1);
      *a1 = v10;
      if (v8)
      {
        v11 = v10 == a2;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        break;
      }

      v12 = *v10;
      if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
      {
        v15 = std::locale::classic();
        qword_2A153EF28 = std::locale::use_facet(v15, v7);
        __cxa_guard_release(&qword_2A153EF30);
      }

      v13 = (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v12);
      v14 = *v6++;
    }

    while (v14 == v13);
  }

  else
  {
    v16 = (*a1 + 1);
    v17 = (a3 + 1);
    do
    {
      v11 = *v17 == 0;
      v9 = *v17 == 0;
      *a1 = v16;
      if (v11 || v16 == a2)
      {
        break;
      }

      v20 = *v16++;
      v19 = v20;
      v21 = *v17++;
    }

    while (v19 == v21);
  }

  return v9;
}

uint64_t sub_29A0E435C(char **a1, int a2, int a3, char **a4)
{
  v6 = *a1;
  if (!a2)
  {
    *a1 = v6 + 1;
    return v6 + 1 == *a4;
  }

  v9 = v6 + 1;
  LODWORD(result) = sub_29A0E4678(*v6, a3);
  v11 = result;
  *a1 = v6 + 1;
  v12 = *a4;
  if (v6 + 1 == *a4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  if (v11)
  {
    v13 = v9 == v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = v6 + 2;
    if (v14 == v12)
    {
      return 0;
    }

    if (*v9 == a2 && sub_29A0E4678(*v14, a3))
    {
      *a1 = v14;
      v12 = *a4;
      v9 = v14;
    }

    return v9 == v12;
  }

  return result;
}

uint64_t sub_29A0E4430(char *a1, char *a2, int a3, char a4)
{
  v7 = 0;
  v21 = a1;
  v22 = a2;
  while (1)
  {
    v8 = *v21;
    if ((v8 - 48) >= 0xA || v8 >= 64)
    {
      if (*v21 - 46 > 0x38)
      {
        goto LABEL_25;
      }

      if (((1 << (v8 - 46)) & 0x1F8000001F80000) == 0)
      {
        break;
      }
    }

    v7 = 1;
    if (sub_29A0E435C(&v21, a3, 16, &v22))
    {
      return 0;
    }
  }

  if (*v21 == 46)
  {
    if (sub_29A0E435C(&v21, a3, 16, &v22))
    {
      return 0;
    }

    while (1)
    {
      v8 = *v21;
      v11 = v8 >= 64 || (v8 - 48) >= 0xA;
      v12 = !v11;
      if ((v8 - 97) >= 6 && !v12 && (v8 <= 64 || v8 > 0x46))
      {
        break;
      }

      v13 = sub_29A0E435C(&v21, a3, 16, &v22);
      result = 0;
      v7 = 1;
      if (v13)
      {
        return result;
      }
    }
  }

LABEL_25:
  if (v7 & 1) == 0 || (v8 | 0x20) != 0x70 || (sub_29A0E435C(&v21, a3, 16, &v22))
  {
    return 0;
  }

  v14 = *v21;
  if (v14 != 45 && v14 != 43)
  {
    goto LABEL_32;
  }

  if (sub_29A0E435C(&v21, a3, 16, &v22))
  {
    return 0;
  }

  LOBYTE(v14) = *v21;
LABEL_32:
  if (v14 > 57 || (v14 - 48) > 9)
  {
    return 0;
  }

  if (sub_29A0E435C(&v21, a3, 16, &v22))
  {
    return 1;
  }

  while (1)
  {
    v16 = v21;
    v17 = *v21;
    if (v17 > 57 || (v17 - 48) > 9)
    {
      break;
    }

    v19 = sub_29A0E435C(&v21, a3, 16, &v22);
    result = 1;
    if (v19)
    {
      return result;
    }
  }

  result = 1;
  if (v21 != a2 && (a4 & 1) == 0)
  {
    do
    {
      v20 = 0;
      while (byte_29B43630C[v20] != *v16)
      {
        result = 0;
        if (++v20 == 6)
        {
          return result;
        }
      }

      ++v16;
      result = 1;
    }

    while (v16 != a2);
  }

  return result;
}

uint64_t sub_29A0E4678(int a1, int a2)
{
  if ((a1 - 48) <= 9 && a2 + 48 > a1 || a1 >= 97 && a2 >= 11 && a2 + 87 > a1)
  {
    return 1;
  }

  v3 = a2 + 55 > a1;
  if (a2 < 11)
  {
    v3 = 0;
  }

  return a1 >= 65 && v3;
}

double sub_29A0E46D4(char **a1, char *a2, int a3, int a4, int a5, char a6, int a7, _BYTE *a8, double a9)
{
  v53 = a2;
  *a8 = 1;
  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 != 48)
    {
      break;
    }

    if (sub_29A0E435C(a1, a4, 16, &v53))
    {
      *a8 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v52 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a7)
  {
    v23 = 53;
  }

  else
  {
    v23 = 24;
  }

  while (1)
  {
    v24 = v19 - 48;
    if (v24 < 0xA)
    {
      goto LABEL_15;
    }

    if ((v19 - 97) <= 5)
    {
      v24 = v19 - 87;
      goto LABEL_15;
    }

    if ((v19 - 65) > 5)
    {
      break;
    }

    v24 = v19 - 55;
LABEL_15:
    if (v20)
    {
      v21 -= 4;
    }

    v22 = 16 * v22 + v24;
    v25 = v22 >> v23;
    if ((v22 >> v23))
    {
      v50 = a3;
      v26 = 1;
      if (v25 >= 2)
      {
        do
        {
          ++v26;
          v31 = v25 > 3;
          LODWORD(v25) = v25 >> 1;
        }

        while (v31);
      }

      v51 = a2;
      v27 = v26 + v21;
      if (sub_29A0E435C(a1, a4, 16, &v53))
      {
        v28 = 1;
LABEL_43:
        if ((a5 & 1) == 0 && (v52 & 1) == 0)
        {
          for (i = *a1; i != v51; *a1 = i)
          {
            v34 = 0;
            while (byte_29B43630C[v34] != *i)
            {
              if (++v34 == 6)
              {
                return a9;
              }
            }

            ++i;
          }
        }

        v35 = v22 & ~(-1 << v26);
        v36 = 1 << (v26 - 1);
        v37 = (v22 >> v26) + ((v22 >> v26) & 1u | ((v28 & 1) == 0));
        if (v35 != v36)
        {
          v37 = v22 >> v26;
        }

        if (v35 > v36)
        {
          v38 = (v22 >> v26) + 1;
        }

        else
        {
          v38 = v37;
        }

        v21 = v27 + ((v38 >> v23) & 1);
        v22 = v38 >> ((v38 >> v23) & 1);
        a3 = v50;
        goto LABEL_57;
      }

      v28 = 1;
      while (2)
      {
        v29 = *a1;
        if (a5)
        {
          v30 = *v29;
          if (v30 == 46)
          {
            sub_29A0E435C(a1, a4, 16, &v53);
            v29 = *a1;
            v20 = 1;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          v30 = *v29;
        }

        v31 = (v30 - 48) < 0xA && v30 < 64;
        if (!v31 && ((v30 - 65) > 0x25 || ((1 << (v30 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_43;
        }

        v28 &= v30 == 48;
        if ((v20 & 1) == 0)
        {
          v27 += 4;
        }

        if (sub_29A0E435C(a1, a4, 16, &v53))
        {
          goto LABEL_43;
        }

        continue;
      }
    }

    if (sub_29A0E435C(a1, a4, 16, &v53))
    {
      goto LABEL_57;
    }

LABEL_19:
    v18 = *a1;
    LOBYTE(v19) = **a1;
  }

  if (!a5)
  {
    goto LABEL_91;
  }

  if (v19 == 46)
  {
    sub_29A0E435C(a1, a4, 16, &v53);
    v20 = 1;
    goto LABEL_19;
  }

  if (v19 != 80 && v19 != 112)
  {
LABEL_91:
    if (v18 != a2 && (v52 & 1) == 0)
    {
      do
      {
        v49 = 0;
        while (byte_29B43630C[v49] != *v18)
        {
          if (++v49 == 6)
          {
            return a9;
          }
        }

        *a1 = ++v18;
      }

      while (v18 != a2);
    }

LABEL_57:
    *a8 = 0;
    if (a5)
    {
      goto LABEL_62;
    }

    goto LABEL_78;
  }

  *a8 = 0;
LABEL_62:
  sub_29A0E435C(a1, a4, 16, &v53);
  v39 = 0;
  v40 = **a1;
  if (v40 == 43)
  {
LABEL_65:
    sub_29A0E435C(a1, a4, 16, &v53);
  }

  else if (v40 == 45)
  {
    v39 = 1;
    goto LABEL_65;
  }

  v41 = 0;
  do
  {
    v42 = **a1;
    if ((v42 - 48) > 9)
    {
      break;
    }

    if (v41 >= 0)
    {
      v43 = v41;
    }

    else
    {
      v43 = -v41;
    }

    v44 = v42 + 10 * v41 - 48;
    if (v43 < 0x17BB1)
    {
      v41 = v44;
    }
  }

  while (!sub_29A0E435C(a1, a4, 16, &v53));
  if (v39)
  {
    v45 = -v41;
  }

  else
  {
    v45 = v41;
  }

  v21 += v45;
LABEL_78:
  if (v21)
  {
    v46 = v22 == 0;
  }

  else
  {
    v46 = 1;
  }

  if (v46)
  {
    if (a3)
    {
      if (!v22)
      {
        return -0.0;
      }

      return -v22;
    }

    return v22;
  }

  else
  {
    v47 = COERCE_DOUBLE(sub_29A0E4E20(v22, v21));
    if (a3)
    {
      return -v47;
    }

    else
    {
      return v47;
    }
  }
}

double sub_29A0E4B54(char **a1, char *a2, int a3, int a4, char a5, int a6, _BYTE *a7, double a8)
{
  v39 = a2;
  *a7 = 1;
  while (**a1 == 48)
  {
    if (sub_29A0E4EB8(a1, a4, &v39))
    {
      *a7 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v16 = 0;
  if (a6)
  {
    v17 = 53;
  }

  else
  {
    v17 = 24;
  }

  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 > 55 || (v19 - 48) >= 0xA)
    {
      if (v18 != a2 && (a5 & 1) == 0)
      {
        do
        {
          v22 = 0;
          while (byte_29B43630C[v22] != *v18)
          {
            if (++v22 == 6)
            {
              return a8;
            }
          }

          *a1 = ++v18;
        }

        while (v18 != a2);
      }

LABEL_24:
      *a7 = 0;
      v23 = v16 == 0;
      goto LABEL_25;
    }

    v16 = **a1 + 8 * v16 - 48;
    v21 = v16 >> v17;
    if ((v16 >> v17))
    {
      break;
    }

    if (sub_29A0E4EB8(a1, a4, &v39))
    {
      goto LABEL_24;
    }
  }

  v24 = 1;
  if (v21 >= 2)
  {
    do
    {
      ++v24;
      v28 = v21 > 3;
      LODWORD(v21) = v21 >> 1;
    }

    while (v28);
  }

  v38 = a3;
  v25 = 1;
  for (i = v24; !sub_29A0E4EB8(a1, a4, &v39); i += 3)
  {
    v27 = **a1;
    v28 = v27 > 55 || (v27 - 48) > 9;
    if (v28)
    {
      break;
    }

    v25 &= v27 == 48;
  }

  if ((a5 & 1) == 0)
  {
    for (j = *a1; j != a2; *a1 = j)
    {
      v30 = 0;
      while (byte_29B43630C[v30] != *j)
      {
        if (++v30 == 6)
        {
          return a8;
        }
      }

      ++j;
    }
  }

  v31 = v16 & ~(-1 << v24);
  v32 = 1 << (v24 - 1);
  v33 = (v16 >> v24) + ((v16 >> v24) & 1u | ((v25 & 1) == 0));
  if (v31 != v32)
  {
    v33 = v16 >> v24;
  }

  if (v31 > v32)
  {
    v34 = (v16 >> v24) + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = (v34 >> v17) & 1;
  v16 = v34 >> ((v34 >> v17) & 1);
  *a7 = 0;
  v23 = v16 == 0;
  a3 = v38;
  if (i + v35 && v16)
  {
    v36 = COERCE_DOUBLE(sub_29A0E4E20(v16, i + v35));
    if (v38)
    {
      return -v36;
    }

    else
    {
      return v36;
    }
  }

LABEL_25:
  if (a3)
  {
    if (v23)
    {
      return -0.0;
    }

    return -v16;
  }

  return v16;
}

unint64_t sub_29A0E4E20(unint64_t a1, int a2)
{
  if (a1 >> 53)
  {
    do
    {
      v2 = a1 >> 1;
      ++a2;
      v3 = a1 >> 54;
      a1 >>= 1;
    }

    while (v3);
  }

  else
  {
    v2 = a1;
  }

  if (a2 > 971)
  {
    return 0x7FF0000000000000;
  }

  if (a2 < -1074)
  {
    return 0;
  }

  v5 = (v2 & 0x10000000000000) == 0;
  if (a2 != -1074 && (v2 & 0x10000000000000) == 0)
  {
    do
    {
      v6 = a2;
      v8 = v2 & 0x8000000000000;
      v7 = (v2 & 0x8000000000000) == 0;
      v2 *= 2;
      --a2;
      v5 = v7;
    }

    while (v6 >= -1072 && !v8);
  }

  if (a2 == -1074 && v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = (a2 + 1075) << 52;
  }

  return v9 & 0xFFF0000000000000 | v2 & 0xFFFFFFFFFFFFFLL;
}

BOOL sub_29A0E4EB8(char **a1, int a2, char **a3)
{
  v3 = *a1;
  if (!a2)
  {
    *a1 = v3 + 1;
    return v3 + 1 == *a3;
  }

  v5 = v3 + 1;
  v4 = *v3;
  v7 = v4 > 55 || (v4 - 58) < 0xFFFFFFF6;
  *a1 = v5;
  v8 = *a3;
  LODWORD(v9) = !v7;
  if (v5 == *a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v9;
  }

  if (!v7 && v5 != v8)
  {
    v10 = v3 + 2;
    if (v3 + 2 == v8)
    {
      return 0;
    }

    if (*v5 == a2)
    {
      v11 = *v10;
      if (v11 <= 55 && (v11 - 48) <= 9)
      {
        *a1 = v10;
        v8 = *a3;
        v5 = v10;
      }
    }

    return v5 == v8;
  }

  return v9;
}

uint64_t sub_29A0E4F5C(unsigned __int16 **a1, unsigned __int16 *a2)
{
  for (i = *a1; i != a2; *a1 = i)
  {
    v3 = *i;
    if (v3 >= 0x80)
    {
      v5 = 0;
      while (word_29B436312[v5] != v3)
      {
        if (++v5 == 20)
        {
          return 1;
        }
      }
    }

    else
    {
      v4 = 0;
      while (byte_29B43630C[v4] != v3)
      {
        if (++v4 == 6)
        {
          return 1;
        }
      }
    }

    ++i;
  }

  return 0;
}

BOOL sub_29A0E4FE4(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = (a3 + 1);
    v7 = MEMORY[0x29EDC93D0];
    do
    {
      v8 = *v6;
      v9 = *v6 == 0;
      v10 = *a1 + 2;
      *a1 = v10;
      if (v8)
      {
        v11 = v10 == a2;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        break;
      }

      v12 = *v10;
      if ((atomic_load_explicit(&qword_2A153EF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A153EF30))
      {
        v15 = std::locale::classic();
        qword_2A153EF28 = std::locale::use_facet(v15, v7);
        __cxa_guard_release(&qword_2A153EF30);
      }

      v13 = (*(*qword_2A153EF28 + 40))(qword_2A153EF28, v12);
      v14 = *v6++;
    }

    while (v14 == v13);
  }

  else
  {
    v16 = *a1 + 2;
    v17 = (a3 + 1);
    do
    {
      v11 = *v17 == 0;
      v9 = *v17 == 0;
      *a1 = v16;
      if (v11 || v16 == a2)
      {
        break;
      }

      v20 = *v16;
      v16 += 2;
      v19 = v20;
      v21 = *v17++;
    }

    while (v21 == v19);
  }

  return v9;
}

uint64_t sub_29A0E5120(unsigned __int16 **a1, int a2, int a3, unsigned __int16 **a4)
{
  v6 = *a1;
  if (!a2)
  {
    *a1 = v6 + 1;
    return v6 + 1 == *a4;
  }

  v9 = v6 + 1;
  LODWORD(result) = sub_29A0E4678(*v6, a3);
  v11 = result;
  *a1 = v6 + 1;
  v12 = *a4;
  if (v6 + 1 == *a4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  if (v11)
  {
    v13 = v9 == v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = v6 + 2;
    if (v14 == v12)
    {
      return 0;
    }

    if (*v9 == a2 && sub_29A0E4678(*v14, a3))
    {
      *a1 = v14;
      v12 = *a4;
      v9 = v14;
    }

    return v9 == v12;
  }

  return result;
}

uint64_t sub_29A0E51F4(unsigned __int16 *a1, unsigned __int16 *a2, int a3, char a4)
{
  v7 = 0;
  v19 = a1;
  v20 = a2;
  while (1)
  {
    v8 = *v19;
    if (v8 - 48 >= 0xA || v8 >= 0x40)
    {
      if (v8 - 46 > 0x38)
      {
        goto LABEL_25;
      }

      if (((1 << (v8 - 46)) & 0x1F8000001F80000) == 0)
      {
        break;
      }
    }

    v7 = 1;
    if (sub_29A0E5120(&v19, a3, 16, &v20))
    {
      return 0;
    }
  }

  if (v8 == 46)
  {
    if (sub_29A0E5120(&v19, a3, 16, &v20))
    {
      return 0;
    }

    while (1)
    {
      v8 = *v19;
      v11 = v8 >= 0x40 || v8 - 48 >= 0xA;
      v12 = !v11;
      if (v8 - 97 >= 6 && !v12 && (v8 <= 0x40 || v8 > 0x46))
      {
        break;
      }

      v13 = sub_29A0E5120(&v19, a3, 16, &v20);
      result = 0;
      v7 = 1;
      if (v13)
      {
        return result;
      }
    }
  }

LABEL_25:
  if (v7 & 1) == 0 || (v8 | 0x20) != 0x70 || (sub_29A0E5120(&v19, a3, 16, &v20))
  {
    return 0;
  }

  v14 = *v19;
  if (v14 != 45 && v14 != 43)
  {
    goto LABEL_32;
  }

  if (sub_29A0E5120(&v19, a3, 16, &v20))
  {
    return 0;
  }

  v14 = *v19;
LABEL_32:
  if (v14 > 0x39 || v14 - 48 > 9)
  {
    return 0;
  }

  if (sub_29A0E5120(&v19, a3, 16, &v20))
  {
    return 1;
  }

  do
  {
    v16 = *v19;
    if (v16 > 0x39 || v16 - 48 > 9)
    {
      break;
    }

    v18 = sub_29A0E5120(&v19, a3, 16, &v20);
    result = 1;
  }

  while ((v18 & 1) == 0);
  if (a4)
  {
    return 1;
  }

  else
  {
    return sub_29A0E4F5C(&v19, a2) ^ 1;
  }
}

double sub_29A0E53F4(unsigned __int16 **a1, unsigned __int16 *a2, int a3, int a4, int a5, char a6, int a7, _BYTE *a8, double a9)
{
  v58 = a2;
  *a8 = 1;
  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 != 48)
    {
      break;
    }

    if (sub_29A0E5120(a1, a4, 16, &v58))
    {
      *a8 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v57 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a7)
  {
    v23 = 53;
  }

  else
  {
    v23 = 24;
  }

  while (1)
  {
    v24 = v19 - 48;
    if ((v19 - 48) < 0xA)
    {
      goto LABEL_15;
    }

    if ((v19 - 97) <= 5)
    {
      v24 = v19 - 87;
      goto LABEL_15;
    }

    if ((v19 - 65) > 5)
    {
      break;
    }

    v24 = v19 - 55;
LABEL_15:
    if (v20)
    {
      v21 -= 4;
    }

    v22 = 16 * v22 + v24;
    v25 = v22 >> v23;
    if ((v22 >> v23))
    {
      v55 = a3;
      v26 = 1;
      if (v25 >= 2)
      {
        do
        {
          ++v26;
          v27 = v25 > 3;
          LODWORD(v25) = v25 >> 1;
        }

        while (v27);
      }

      v56 = a2;
      v28 = v26 + v21;
      if (sub_29A0E5120(a1, a4, 16, &v58))
      {
        v29 = 1;
LABEL_44:
        if ((a5 & 1) == 0 && (v57 & 1) == 0)
        {
          for (i = *a1; i != v56; *a1 = i)
          {
            v35 = *i;
            if (v35 >= 0x80)
            {
              v37 = 0;
              while (word_29B436312[v37] != v35)
              {
                if (++v37 == 20)
                {
                  return a9;
                }
              }
            }

            else
            {
              v36 = 0;
              while (byte_29B43630C[v36] != v35)
              {
                if (++v36 == 6)
                {
                  return a9;
                }
              }
            }

            ++i;
          }
        }

        v38 = v22 & ~(-1 << v26);
        v39 = 1 << (v26 - 1);
        v40 = (v22 >> v26) + ((v22 >> v26) & 1u | ((v29 & 1) == 0));
        if (v38 != v39)
        {
          v40 = v22 >> v26;
        }

        if (v38 > v39)
        {
          v41 = (v22 >> v26) + 1;
        }

        else
        {
          v41 = v40;
        }

        v21 = v28 + ((v41 >> v23) & 1);
        v22 = v41 >> ((v41 >> v23) & 1);
        a3 = v55;
        goto LABEL_63;
      }

      v29 = 1;
      while (2)
      {
        v30 = *a1;
        if (a5)
        {
          v31 = *v30;
          if (v31 == 46)
          {
            sub_29A0E5120(a1, a4, 16, &v58);
            v30 = *a1;
            v20 = 1;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          v31 = *v30;
        }

        if ((v31 - 48 >= 0xA || v31 >= 0x40) && (v31 - 65 > 0x25 || ((1 << (v31 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_44;
        }

        v29 &= v31 == 48;
        if ((v20 & 1) == 0)
        {
          v28 += 4;
        }

        if (sub_29A0E5120(a1, a4, 16, &v58))
        {
          goto LABEL_44;
        }

        continue;
      }
    }

    if (sub_29A0E5120(a1, a4, 16, &v58))
    {
      goto LABEL_63;
    }

LABEL_19:
    v18 = *a1;
    v19 = **a1;
  }

  if (!a5)
  {
    goto LABEL_97;
  }

  if (v19 == 46)
  {
    sub_29A0E5120(a1, a4, 16, &v58);
    v20 = 1;
    goto LABEL_19;
  }

  if (v19 != 80 && v19 != 112)
  {
LABEL_97:
    if (v18 != a2 && (v57 & 1) == 0)
    {
      do
      {
        v52 = *v18;
        if (v52 >= 0x80)
        {
          v54 = 0;
          while (word_29B436312[v54] != v52)
          {
            if (++v54 == 20)
            {
              return a9;
            }
          }
        }

        else
        {
          v53 = 0;
          while (byte_29B43630C[v53] != v52)
          {
            if (++v53 == 6)
            {
              return a9;
            }
          }
        }

        *a1 = ++v18;
      }

      while (v18 != a2);
    }

LABEL_63:
    *a8 = 0;
    if (a5)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

  *a8 = 0;
LABEL_68:
  sub_29A0E5120(a1, a4, 16, &v58);
  v42 = 0;
  v43 = **a1;
  if (v43 == 43)
  {
LABEL_71:
    sub_29A0E5120(a1, a4, 16, &v58);
  }

  else if (v43 == 45)
  {
    v42 = 1;
    goto LABEL_71;
  }

  v44 = 0;
  do
  {
    v45 = **a1;
    if ((v45 - 48) > 9)
    {
      break;
    }

    if (v44 >= 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = -v44;
    }

    v47 = v45 + 10 * v44 - 48;
    if (v46 < 0x17BB1)
    {
      v44 = v47;
    }
  }

  while (!sub_29A0E5120(a1, a4, 16, &v58));
  if (v42)
  {
    v48 = -v44;
  }

  else
  {
    v48 = v44;
  }

  v21 += v48;
LABEL_84:
  if (v21)
  {
    v49 = v22 == 0;
  }

  else
  {
    v49 = 1;
  }

  if (v49)
  {
    if (a3)
    {
      if (!v22)
      {
        return -0.0;
      }

      return -v22;
    }

    return v22;
  }

  else
  {
    v50 = COERCE_DOUBLE(sub_29A0E4E20(v22, v21));
    if (a3)
    {
      return -v50;
    }

    else
    {
      return v50;
    }
  }
}

double pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtodTrimmed(char *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v15 = 0.0;
  v6 = sub_29A0E59A4(a1, a2, a3, &v15);
  v7 = v15;
  if (!v6)
  {
    v8 = v15;
    v9 = 2 * (*&v15 & 0xFFFFFFFFFFFFFLL);
    if ((*&v15 & 0x7FF0000000000000) != 0)
    {
      v9 = (2 * (*&v15 & 0xFFFFFFFFFFFFFLL)) | 0x20000000000000;
      v10 = ((*&v15 >> 52) & 0x7FF) - 1076;
    }

    else
    {
      v10 = -1075;
    }

    v11 = sub_29A0E5E10(a1, a2, v3, v9 | 1, v10);
    if ((v11 & 0x80000000) == 0)
    {
      if (v11)
      {
        *&v12 = INFINITY;
        if (v7 == INFINITY)
        {
          return *&v12;
        }

        if ((*&v7 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v12 = *&v7 + 1;
          return *&v12;
        }
      }

      else
      {
        if ((LOBYTE(v7) & 1) == 0)
        {
          return v7;
        }

        *&v12 = INFINITY;
        if (v7 == INFINITY)
        {
          return *&v12;
        }

        if ((*&v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v13 = v7 == 0.0;
      v7 = 0.0;
      if (!v13)
      {
        v12 = *&v8 - 1;
        return *&v12;
      }
    }
  }

  return v7;
}

BOOL sub_29A0E59A4(char *a1, int a2, uint64_t a3, double *a4)
{
  if (!a2)
  {
    goto LABEL_42;
  }

  v6 = a3;
  v7 = a2 + a3;
  if (a2 + a3 >= 310)
  {
    *a4 = INFINITY;
    return 1;
  }

  if (v7 <= -324)
  {
    goto LABEL_42;
  }

  if (a2 >= 16)
  {
    goto LABEL_28;
  }

  if (a3 >= 0xFFFFFFEA)
  {
    if (a2 < 1)
    {
      v11 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *a1++;
        v8 = v10 + 10 * v8 - 48;
        if (v9 >= (a2 & 0x7FFFFFFFu))
        {
          break;
        }

        ++v9;
      }

      while (v8 < 0x1999999999999999);
      v11 = v8;
    }

    v21 = v11 / dbl_29B436348[-a3];
    goto LABEL_82;
  }

  if (a3 <= 0x16)
  {
    if (a2 < 1)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *a1++;
        v12 = v14 + 10 * v12 - 48;
        if (v13 >= (a2 & 0x7FFFFFFFu))
        {
          break;
        }

        ++v13;
      }

      while (v12 < 0x1999999999999999);
      v15 = v12;
    }

    v49 = dbl_29B436348[a3];
LABEL_81:
    v21 = v15 * v49;
LABEL_82:
    *a4 = v21;
    return 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v16 = 15 - a2;
    if (a3 - v16 <= 22)
    {
      if (a2 < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = *a1++;
          v17 = v19 + 10 * v17 - 48;
          if (v18 >= (a2 & 0x7FFFFFFFu))
          {
            break;
          }

          ++v18;
        }

        while (v17 < 0x1999999999999999);
        v20 = v17;
      }

      v15 = v20 * dbl_29B436348[v16];
      v49 = dbl_29B436348[a3 - v16];
      goto LABEL_81;
    }
  }

  if (a2 < 1)
  {
    LODWORD(v22) = 0;
    v23 = 0;
  }

  else
  {
LABEL_28:
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = a1[v22++];
      v23 = v24 + 10 * v23 - 48;
    }

    while (v22 < (a2 & 0x7FFFFFFFu) && v23 < 0x1999999999999999);
  }

  if (v22 == a2)
  {
    v25 = 0;
  }

  else
  {
    if (a1[v22] > 52)
    {
      ++v23;
    }

    v6 = (v7 - v22);
    v25 = 4;
  }

  v26 = 0;
  if (!(v23 >> 54))
  {
    v27 = v23;
    do
    {
      v23 = v27 << 10;
      v26 -= 10;
      v28 = v27 >> 44;
      v27 <<= 10;
    }

    while (!v28);
  }

  for (; (v23 & 0x8000000000000000) == 0; --v26)
  {
    v23 *= 2;
  }

  if (v6 <= -349)
  {
LABEL_42:
    *a4 = 0.0;
    return 1;
  }

  v51 = 0;
  v30 = v25 << -v26;
  v52 = 0;
  v50 = 0;
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::PowersOfTenCache::GetCachedPowerForDecimalExponent(v6, &v51, &v50);
  v31 = v6 - v50;
  if (v6 != v50)
  {
    v32 = v31 - 1;
    if ((v31 - 1) >= 7)
    {
      abort();
    }

    v26 += dword_29B436400[v32];
    v23 = qword_29B436420[v32] * HIDWORD(v23) + ((qword_29B436420[v32] * v23) >> 32) + ((((qword_29B436420[v32] * v23) & 0x80000000uLL) + 0x80000000) >> 32);
    if (19 - a2 < v31)
    {
      v30 += 4;
    }
  }

  v33 = ((v51 * HIDWORD(v23)) >> 32) + HIDWORD(v51) * HIDWORD(v23) + ((HIDWORD(v51) * v23) >> 32) + ((((v51 * v23) >> 32) + (v51 * HIDWORD(v23)) + (HIDWORD(v51) * v23) + 0x80000000) >> 32);
  if (v30)
  {
    v34 = 9;
  }

  else
  {
    v34 = 8;
  }

  if (v33 >> 54)
  {
    v35 = v26 + v52 + 64;
    v36 = ((v51 * HIDWORD(v23)) >> 32) + HIDWORD(v51) * HIDWORD(v23) + ((HIDWORD(v51) * v23) >> 32) + ((((v51 * v23) >> 32) + (v51 * HIDWORD(v23)) + (HIDWORD(v51) * v23) + 0x80000000) >> 32);
  }

  else
  {
    v35 = v26 + v52 + 64;
    do
    {
      v36 = v33 << 10;
      v35 -= 10;
      v37 = v33 >> 44;
      v33 <<= 10;
    }

    while (!v37);
  }

  for (i = v34 + v30; (v36 & 0x8000000000000000) == 0; --v35)
  {
    v36 *= 2;
  }

  v39 = i << (v26 + v52 + 64 - v35);
  if ((v35 + 64) >= 0xFFFFFBCF)
  {
    v40 = v35 + 1138;
  }

  else
  {
    v40 = 0;
  }

  if (v35 > -1086)
  {
    v40 = 53;
  }

  v41 = (v39 >> (4 - v40)) + 9;
  v42 = v40 <= 3;
  if (v40 > 3)
  {
    v43 = 64 - v40;
  }

  else
  {
    v36 >>= 4 - v40;
    v35 += 4 - v40;
    v43 = 60;
  }

  if (v42)
  {
    v44 = v41;
  }

  else
  {
    v44 = v39;
  }

  v45 = v36 & ~(-1 << v43);
  v46 = 8 << (v43 - 1);
  if (8 * v45 < (v46 + v44))
  {
    v47 = v36 >> v43;
  }

  else
  {
    v47 = (v36 >> v43) + 1;
  }

  v48 = COERCE_DOUBLE(sub_29A0E4E20(v47, v43 + v35));
  *a4 = v48;
  result = 1;
  if (v46 - v44 < (8 * v45) && 8 * v45 < (v46 + v44))
  {
    return v48 == INFINITY;
  }

  return result;
}

uint64_t sub_29A0E5E10(uint64_t a1, int a2, int a3, unint64_t a4, int a5)
{
  v15[0] = 0;
  v14[0] = 0;
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignDecimalString(v15, a1, a2);
  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::AssignUInt64(v14, a4);
  if (a3 < 0)
  {
    v9 = -a3;
    v8 = v14;
  }

  else
  {
    v8 = v15;
    v9 = a3;
  }

  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::MultiplyByPowerOfTen(v8, v9);
  if (a5 < 1)
  {
    v11 = -a5;
    v10 = v15;
  }

  else
  {
    v10 = v14;
    v11 = a5;
  }

  pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::ShiftLeft(v10, v11);
  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Bignum::Compare(v15, v14, v12);
}

double pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Strtod(_BYTE *a1, int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = 0;
  LODWORD(v6) = 0;
  v4 = 0;
  sub_29A0E5F2C(a1, a2, a3, v7, &v5, &v4);
  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtodTrimmed(v5, v6, v4);
}

_BYTE *sub_29A0E5F2C(_BYTE *result, int a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (a2 < 1)
  {
LABEL_5:
    a2 = 0;
    v7 = result;
  }

  else
  {
    v6 = a2 & 0x7FFFFFFF;
    v7 = result;
    v8 = result;
    while (*v7 == 48)
    {
      --a2;
      ++v8;
      ++v7;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = v8;
  }

  v9 = &v7[a2 - 1];
  v10 = a3 - 1;
  v11 = a2;
  do
  {
    if (v11 <= 0)
    {
      v13 = 0;
      v10 = a2 + a3;
      goto LABEL_15;
    }

    v12 = *v9--;
    ++v10;
    --v11;
  }

  while (v12 == 48);
  v13 = v11 + 1;
  if ((v11 + 1) < 0x30D)
  {
LABEL_15:
    *a5 = result;
    *(a5 + 8) = v13;
    *a6 = v10;
    return result;
  }

  for (i = 0; i != 779; ++i)
  {
    *(a4 + i) = v7[i];
  }

  *(a4 + 779) = 49;
  *a6 = v11 + v10 - 779;
  *a5 = a4;
  *(a5 + 8) = 780;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::Strtof(_BYTE *a1, int a2, int a3)
{
  v8 = *MEMORY[0x29EDCA608];
  v5 = 0;
  LODWORD(v6) = 0;
  v4 = 0;
  sub_29A0E5F2C(a1, a2, a3, v7, &v5, &v4);
  return pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtofTrimmed(v5, v6, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_double_conversion::StrtofTrimmed(char *a1, int a2, uint64_t a3)
{
  v3 = a3;
  v22 = 0.0;
  result = sub_29A0E59A4(a1, a2, a3, &v22);
  if (v22 >= 3.40282347e38)
  {
    if (v22 >= 3.40282357e38)
    {
      v8 = 2139095040;
    }

    else
    {
      v8 = 2139095039;
    }

    v7 = *&v8;
  }

  else
  {
    v7 = v22;
  }

  if (v22 == v7)
  {
    return result;
  }

  if (v22 == INFINITY)
  {
    v9 = -1;
    v10 = INFINITY;
    goto LABEL_19;
  }

  if ((*&v22 & 0x8000000000000000) == 0)
  {
    *&v10 = *&v22 + 1;
    if (v22 != 0.0)
    {
      v9 = -1;
      goto LABEL_19;
    }

    v11 = -0.0;
LABEL_20:
    v12 = v11;
    goto LABEL_25;
  }

  if (v22 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    *&v10 = *&v22 - 1;
    if (v22 == -INFINITY)
    {
      v11 = -INFINITY;
      goto LABEL_20;
    }
  }

  v9 = 1;
LABEL_19:
  *&v11 = v9 + *&v22;
  if (COERCE_DOUBLE(v9 + *&v22) < 3.40282347e38)
  {
    goto LABEL_20;
  }

  if (v11 >= 3.40282357e38)
  {
    v13 = 2139095040;
  }

  else
  {
    v13 = 2139095039;
  }

  v12 = *&v13;
LABEL_25:
  if (v10 < 3.40282347e38)
  {
    v14 = v10;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v10 == INFINITY)
    {
      goto LABEL_33;
    }

    if ((*&v10 & 0x8000000000000000) != 0)
    {
      v18 = 0.0;
      if (v10 == 0.0)
      {
        goto LABEL_41;
      }

      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    *&v18 = v17 + *&v10;
    if (COERCE_DOUBLE(v17 + *&v10) >= 3.40282347e38)
    {
      if (v18 < 3.40282357e38)
      {
        v16 = 2139095039;
        goto LABEL_34;
      }

LABEL_33:
      v16 = 2139095040;
LABEL_34:
      v14 = *&v16;
      goto LABEL_42;
    }

LABEL_41:
    v14 = v18;
    goto LABEL_42;
  }

  if (v10 >= 3.40282357e38)
  {
    v15 = 2139095040;
  }

  else
  {
    v15 = 2139095039;
  }

  v14 = *&v15;
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_42:
  if (v12 != v14)
  {
    if (v12 == 0.0)
    {
      v19 = 0x10000000000000;
      v20 = -202;
    }

    else
    {
      if ((LODWORD(v12) & 0x7F800000) != 0)
      {
        v21 = (2 * (LODWORD(v12) & 0x7FFFFF)) | 0x1000000;
      }

      else
      {
        v21 = 2 * (LODWORD(v12) & 0x7FFFFF);
      }

      v19 = v21 | 1u;
      if ((LODWORD(v12) & 0x7F800000) != 0)
      {
        v20 = (LODWORD(v12) >> 23) - 151;
      }

      else
      {
        v20 = -150;
      }
    }

    return sub_29A0E5E10(a1, a2, v3, v19, v20);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compressBound(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this)
{
  if (this <= 0x7E000000)
  {
    return this + this / 0xFF + 16;
  }

  else
  {
    return 0;
  }
}

pxrInternal__aapl__pxrReserved__::pxr_lz4 *pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_initStream(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, unint64_t a2)
{
  if (!this || a2 >> 5 < 0x201 || (this & 7) != 0)
  {
    return 0;
  }

  bzero(this, 0x4020uLL);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_destSize(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, const char *a2, char *a3, int *a4)
{
  v4 = MEMORY[0x2A1C7C4A8](this, a2, a3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  bzero(v132, 0x4020uLL);
  v12 = *v8;
  v13 = v12 + v12 / 0xFF + 16;
  if (v12 > 0x7E000000)
  {
    v13 = 0;
  }

  if (v13 <= v6)
  {
    return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_fast_extState(v132, v11, v10, v12, v6);
  }

  v14 = v10 + v6;
  v16 = v6 < 1 || v12 > 0x7E000000;
  v131 = (v10 + v6);
  if (v12 <= 65546)
  {
    if (!v16)
    {
      v125 = &v11[v12];
      v127 = v8;
      v135 = *v8;
      v133 = v12;
      v134 = 3;
      v129 = v10;
      v17 = v10;
      v18 = v11;
      if (v12 < 0xD)
      {
LABEL_13:
        v19 = v125 - v18;
        if (v17 + v125 - v18 + (v125 - v18 + 240) / 0xFFuLL + 1 > v14)
        {
          v19 = ~v17 + v14 - (~v17 + v14 + 240) / 0xFF;
        }

        v20 = v19 - 15;
        if (v19 < 0xF)
        {
          *v17 = 16 * v19;
          v22 = v129;
        }

        else
        {
          *v17 = -16;
          v21 = (v17 + 1);
          v22 = v129;
          if (v20 >= 0xFF)
          {
            memset(v21, 255, (v19 - 270) / 0xFF + 1);
            v20 = (v19 - 270) % 0xFF;
            v21 = (v17 + (v19 - 270) / 0xFF + 2);
          }

          *v21 = v20;
          v17 = v21;
        }

        memcpy((v17 + 1), v18, v19);
        *v127 = v18 + v19 - v11;
        return (v17 + 1 + v19 - v22);
      }

      v76 = (v125 - 11);
      v132[(-1640531535 * *v11) >> 19] = 0;
      v77 = (v125 - 12);
      v17 = v10;
      v78 = v11;
LABEL_93:
      v79 = v78 + 1;
      v80 = *(v78 + 1);
      v81 = 1;
      v82 = 64;
      do
      {
        v83 = v79;
        v79 += v81;
        if (v79 > v76)
        {
          goto LABEL_158;
        }

        v81 = v82++ >> 6;
        v84 = (-1640531535 * v80) >> 19;
        v85 = v132[v84];
        v80 = *v79;
        v132[v84] = v83 - v11;
      }

      while (*&v11[v85] != *v83);
      v86 = 0;
      v87 = &v11[v85];
      v88 = v83 - v78;
      v89 = v83 - v78 - 15;
      do
      {
        v90 = v89;
        v91 = v86;
        v92 = &v87[v86];
        v18 = &v83[v86];
        if (&v87[v86] <= v11 || v18 <= v78)
        {
          break;
        }

        --v89;
        --v86;
      }

      while (*(v18 - 1) == *(v92 - 1));
      v94 = v18 - v78;
      v95 = (v17 + 1);
      if (v17 + 1 + (v88 + v91 + 240) / 0xFFuLL + (v18 - v78) + 11 > v14)
      {
        goto LABEL_158;
      }

      if ((v88 + v91) < 0xF)
      {
        *v17 = 16 * v94;
      }

      else
      {
        v96 = v91 + v88 - 15;
        *v17 = -16;
        if (v96 > 254)
        {
          v97 = v88 + 239;
          if (v90 >= 0x1FD)
          {
            v98 = 509;
          }

          else
          {
            v98 = v90;
          }

          if (v90 >= 509)
          {
            v90 = 509;
          }

          v119 = v90;
          v121 = v97;
          memset(v95, 255, (v97 - v98 + v91) / 0xFFu + 1);
          v94 = v18 - v78;
          v14 = v131;
          v95 = (v17 + (v121 - v119 + v91) / 0xFFuLL + 2);
          v96 = -255 * ((v121 - v119 + v91) / 0xFFu) + v83 - v78 - 270 + v91;
        }

        *v95 = v96;
        v95 = (v95 + 1);
      }

      v99 = (v95 + v94);
      v100 = v78;
      do
      {
        v101 = *v100;
        v100 += 8;
        *v95++ = v101;
      }

      while (v95 < v99);
      if (v99 + 11 > v14)
      {
LABEL_158:
        v18 = v78;
        goto LABEL_13;
      }

      while (1)
      {
        *v99 = v18 - v92;
        v102 = v99 + 1;
        v103 = v18 + 4;
        v104 = v92 + 4;
        if (v77 <= (v18 + 4))
        {
          v105 = v18 + 4;
        }

        else
        {
          if (*v104 != *v103)
          {
            v107 = __clz(__rbit64(*v103 ^ *v104)) >> 3;
            goto LABEL_136;
          }

          v105 = v18 + 12;
          v104 = v92 + 12;
        }

        if (v105 >= v77)
        {
LABEL_124:
          if (v105 < v125 - 8 && *v104 == *v105)
          {
            v104 = (v104 + 4);
            v105 += 4;
          }

          if (v105 < v125 - 6 && *v104 == *v105)
          {
            v104 = (v104 + 2);
            v105 += 2;
          }

          if (v105 < v125 - 5 && *v104 == *v105)
          {
            LODWORD(v105) = v105 + 1;
          }

          v107 = v105 - v103;
        }

        else
        {
          v106 = v105 - v18 - 4;
          while (*v104 == *v105)
          {
            v105 += 8;
            ++v104;
            v106 += 8;
            if (v105 >= v77)
            {
              goto LABEL_124;
            }
          }

          v107 = (__clz(__rbit64(*v105 ^ *v104)) >> 3) + v106;
        }

LABEL_136:
        v18 += v107 + 4;
        if (v99 + (v107 + 240) / 0xFFuLL + 8 > v14)
        {
          v18 -= v107 - (255 * (v14 - v102) - 1516);
          if (v18 <= v83)
          {
            v116 = v18;
            do
            {
              v117 = *v116++;
              v132[(-1640531535 * v117) >> 19] = 0;
            }

            while (v116 <= v83);
            v107 = 255 * (v14 - v102) - 1516;
            v14 = v131;
          }

          else
          {
            v107 = 255 * (v14 - v102) - 1516;
          }
        }

        v108 = *v17;
        v109 = v107 - 15;
        if (v107 < 0xF)
        {
          *v17 = v108 + v107;
          v17 = (v99 + 1);
        }

        else
        {
          *v17 = v108 + 15;
          *v102 = -1;
          if (v109 >= 0x3FC)
          {
            v110 = v99 + 3;
            v111 = v107 - 1035;
            v112 = (v107 - 1035) / 0x3FC;
            v113 = 2 * v112;
            memset(v99 + 3, 255, v113 * 2 + 4);
            v14 = v131;
            LOWORD(v109) = v111 - 1020 * v112;
            v102 = &v110[v113];
          }

          v114 = v109 / 0xFFu;
          *(v102 + v114) = v109 + v109 / 0xFFu;
          v17 = v102 + v114 + 1;
        }

        if (v18 >= v76)
        {
          goto LABEL_13;
        }

        v132[(-1640531535 * *(v18 - 2)) >> 19] = v18 - 2 - v11;
        v115 = (-1640531535 * *v18) >> 19;
        v92 = &v11[v132[v115]];
        v132[v115] = v18 - v11;
        if (*v92 != *v18)
        {
          v78 = v18;
          goto LABEL_93;
        }

        v99 = (v17 + 1);
        *v17 = 0;
        if (v17 + 12 > v14)
        {
          goto LABEL_13;
        }
      }
    }

    return 0;
  }

  if (v16)
  {
    return 0;
  }

  v128 = v8;
  v24 = &v12[v11 - 11];
  v124 = &v12[v11 - 5];
  v126 = &v12[v11];
  v25 = 0xCF1BBCDCBB000000;
  v135 = *v8;
  v133 = v12;
  v26 = v11 + 2;
  v27 = 0xCF1BBCDCBB000000 * *v11;
  v134 = 2;
  *(v132 + ((v27 >> 50) & 0x3FFC)) = 0;
  v28 = &v12[v11 - 12];
  v122 = &v12[v11 - 6];
  v123 = &v12[v11 - 8];
  v29 = v11;
  v130 = v10;
LABEL_22:
  v31 = (v29 + 1);
  v30 = *(v29 + 1);
  v32 = 1;
  v33 = 65;
  while (1)
  {
    v34 = v26;
    v35 = ((v30 * v25) >> 50) & 0x3FFC;
    v36 = *(v132 + v35);
    v30 = *v34;
    *(v132 + v35) = v31 - v11;
    if (v36 + 0xFFFF >= (v31 - v11) && *&v11[v36] == *v31)
    {
      break;
    }

    v26 = v34 + v32;
    v32 = v33++ >> 6;
    v31 = v34;
    if (v26 > v24)
    {
      goto LABEL_86;
    }
  }

  v37 = 0;
  v38 = &v11[v36];
  v39 = v31 - v29;
  v40 = v31 - v29 - 15;
  do
  {
    v41 = v40;
    v42 = v37;
    v43 = &v38[v37];
    v44 = (v31 + v37);
    if (&v38[v37] <= v11 || v44 <= v29)
    {
      break;
    }

    --v40;
    --v37;
  }

  while (*(v44 - 1) == *(v43 - 1));
  v46 = v44 - v29;
  v47 = (v10 + 1);
  if (v10 + 1 + (v39 + v42 + 240) / 0xFFuLL + (v44 - v29) + 11 <= v14)
  {
    if ((v39 + v42) < 0xF)
    {
      *v10 = 16 * v46;
    }

    else
    {
      v48 = v42 + v39 - 15;
      *v10 = -16;
      if (v48 > 254)
      {
        v49 = v39 + 239;
        if (v41 >= 0x1FD)
        {
          v50 = 509;
        }

        else
        {
          v50 = v41;
        }

        if (v41 >= 509)
        {
          v41 = 509;
        }

        v118 = v41;
        v120 = v49;
        memset(v47, 255, (v49 - v50 + v42) / 0xFFu + 1);
        v46 = v44 - v29;
        v25 = 0xCF1BBCDCBB000000;
        v14 = v131;
        v47 = (v10 + (v120 - v118 + v42) / 0xFFuLL + 2);
        v48 = -255 * ((v120 - v118 + v42) / 0xFFu) + v31 - v29 - 270 + v42;
      }

      *v47++ = v48;
    }

    v51 = &v47[v46];
    v52 = v29;
    do
    {
      v53 = *v52++;
      *v47 = v53;
      v47 += 8;
    }

    while (v47 < v51);
    if ((v51 + 11) <= v14)
    {
      v29 = v44;
      do
      {
        *v51 = v29 - v43;
        v54 = v51 + 2;
        v55 = (v29 + 4);
        v56 = v43 + 4;
        if (v28 <= v29 + 4)
        {
          v57 = v29 + 1;
        }

        else
        {
          if (*v56 != *v55)
          {
            v59 = __clz(__rbit64(*v55 ^ *v56)) >> 3;
            goto LABEL_68;
          }

          v57 = v29 + 3;
          v56 = v43 + 12;
        }

        if (v57 >= v28)
        {
LABEL_56:
          if (v57 < v123 && *v56 == *v57)
          {
            v56 = (v56 + 4);
            ++v57;
          }

          if (v57 < v122 && *v56 == *v57)
          {
            v56 = (v56 + 2);
            v57 = (v57 + 2);
          }

          if (v57 < v124 && *v56 == *v57)
          {
            LODWORD(v57) = v57 + 1;
          }

          v59 = v57 - v55;
        }

        else
        {
          v58 = v57 - v29 - 4;
          while (*v56 == *v57)
          {
            v57 += 2;
            ++v56;
            v58 += 8;
            if (v57 >= v28)
            {
              goto LABEL_56;
            }
          }

          v59 = (__clz(__rbit64(*v57 ^ *v56)) >> 3) + v58;
        }

LABEL_68:
        v29 = (v29 + v59 + 4);
        if (&v51[(v59 + 240) / 0xFFuLL + 8] > v14)
        {
          v29 = (v29 - (v59 - (255 * (v14 - v54) - 1516)));
          if (v29 <= v31)
          {
            v71 = v29;
            do
            {
              v72 = *v71;
              v71 = (v71 + 1);
              *(v132 + (((v72 * v25) >> 50) & 0x3FFC)) = 0;
            }

            while (v71 <= v31);
            v59 = 255 * (v14 - v54) - 1516;
            v14 = v131;
          }

          else
          {
            v59 = 255 * (v14 - v54) - 1516;
          }
        }

        v60 = *v10;
        v61 = v59 - 15;
        if (v59 < 0xF)
        {
          *v10 = v60 + v59;
          v10 = (v51 + 2);
        }

        else
        {
          *v10 = v60 + 15;
          *v54 = -1;
          if (v61 >= 0x3FC)
          {
            v62 = v51 + 6;
            v63 = v59 - 1035;
            v64 = (v59 - 1035) / 0x3FC;
            v65 = 2 * v64;
            v66 = v24;
            v67 = v25;
            memset(v51 + 6, 255, v65 * 2 + 4);
            v25 = v67;
            v24 = v66;
            v14 = v131;
            LOWORD(v61) = v63 - 1020 * v64;
            v54 = &v62[v65];
          }

          v68 = v61 / 0xFFu;
          *(v54 + v68) = v61 + v61 / 0xFFu;
          v10 = v54 + v68 + 1;
        }

        if (v29 >= v24)
        {
          break;
        }

        *(v132 + (((*(v29 - 2) * v25) >> 50) & 0x3FFC)) = v29 - 2 - v11;
        v69 = ((*v29 * v25) >> 50) & 0x3FFC;
        v70 = *(v132 + v69);
        *(v132 + v69) = v29 - v11;
        if (v70 + 0xFFFF < (v29 - v11) || (v43 = &v11[v70], *&v11[v70] != *v29))
        {
          v26 = v29 + 2;
          if (v29 + 2 > v24)
          {
            break;
          }

          goto LABEL_22;
        }

        v51 = (v10 + 1);
        *v10 = 0;
      }

      while (v10 + 12 <= v14);
    }
  }

LABEL_86:
  v73 = v126 - v29;
  if (v10 + v126 - v29 + (v126 - v29 + 240) / 0xFFuLL + 1 > v14)
  {
    v73 = ~v10 + v14 - (~v10 + v14 + 240) / 0xFF;
  }

  v74 = v73 - 15;
  if (v73 < 0xF)
  {
    *v10 = 16 * v73;
  }

  else
  {
    *v10 = -16;
    v75 = (v10 + 1);
    if (v74 >= 0xFF)
    {
      memset(v75, 255, (v73 - 270) / 0xFF + 1);
      v74 = (v73 - 270) % 0xFF;
      v75 = (v10 + (v73 - 270) / 0xFF + 2);
    }

    *v75 = v74;
    v10 = v75;
  }

  memcpy((v10 + 1), v29, v73);
  *v128 = v29 + v73 - v11;
  return (v10 + 1 + v73 - v130);
}

void *pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_createStream(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this)
{
  v1 = malloc(0x4020uLL);
  v2 = v1;
  if (v1 && (v1 & 7) == 0)
  {
    bzero(v1, 0x4020uLL);
  }

  return v2;
}

double pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_resetStream_fast(char *a1)
{
  v2 = (a1 + 0x4000);
  if (!*(a1 + 8194))
  {
    if (*(a1 + 8195) == 2)
    {
      v4 = *v2;
      if (*v2 < 0x40000001)
      {
LABEL_10:
        if (v4)
        {
          *v2 = v4 + 0x10000;
        }

        goto LABEL_12;
      }
    }

    else if (!*(a1 + 8195))
    {
      v4 = *v2;
      goto LABEL_10;
    }

    *(a1 + 8195) = 0;
    bzero(a1, 0x4004uLL);
LABEL_12:
    *(a1 + 4102) = 0;
    result = 0.0;
    *(a1 + 16392) = 0u;
    return result;
  }

  bzero(a1, 0x4020uLL);
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_freeStream(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_loadDict(void *a1, char *a2, unsigned int a3)
{
  v6 = a1 + 2048;
  bzero(a1, 0x4020uLL);
  *v6 = 0x10000;
  if (a3 < 8)
  {
    return 0;
  }

  v8 = &a2[a3];
  v9 = v8 - 0x10000;
  if (a3 <= 0x10000)
  {
    v9 = a2;
  }

  a1[2049] = v9;
  result = (v8 - v9);
  *(v6 + 6) = result;
  *(v6 + 3) = 2;
  v10 = (v8 - 8);
  if (v9 <= v10)
  {
    v11 = a3;
    if (a3 <= 0x10000uLL)
    {
      v11 = 0x10000;
    }

    v12 = v11 - a3;
    do
    {
      v13 = *v9;
      v9 += 3;
      *(a1 + (((0xCF1BBCDCBB000000 * v13) >> 50) & 0x3FFC)) = v12;
      v12 += 3;
    }

    while (v9 <= v10);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_attach_dictionary(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_resetStream_fast(a1);
  if (a2)
  {
    if (!*(a1 + 0x4000))
    {
      *(a1 + 0x4000) = 0x10000;
    }

    if (*(a2 + 16408))
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 16400) = v4;
}

uint64_t sub_29A0E7224(uint64_t result, int a2)
{
  v2 = *(result + 0x4000);
  if ((v2 + a2) >= 0x80000001)
  {
    v3 = 0;
    v4 = *(result + 16392);
    v5 = *(result + 16408);
    v6 = vdupq_n_s32(v2 - 0x10000);
    do
    {
      *(result + v3) = vqsubq_u32(*(result + v3), v6);
      v3 += 16;
    }

    while (v3 != 0x4000);
    v7 = v4 + v5;
    *(result + 0x4000) = 0x10000;
    v8 = *(result + 16408);
    if (v8 > 0x10000)
    {
      *(result + 16408) = 0x10000;
      v8 = 0x10000;
    }

    *(result + 16392) = v7 - v8;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_compress_forceExtDict(uint64_t a1, uint64_t *a2, char *a3, int a4)
{
  v4 = a4;
  v7 = a1;
  v8 = (a1 + 0x4000);
  sub_29A0E7224(a1, a4);
  v9 = v8[6];
  v10 = *v8;
  v199 = a2;
  v200 = a2 - v10;
  v11 = *(v7 + 16392);
  if (WORD1(v9))
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 > v9;
  }

  v197 = *(v7 + 16392);
  v198 = *v8;
  if (v12)
  {
    if (v4 > 0x7E000000)
    {
      goto LABEL_129;
    }

    v186 = v4;
    v87 = a2 + v4;
    v8[6] = v9 + v4;
    *v8 = v10 + v4;
    *(v8 + 3) = 2;
    v88 = v4;
    v89 = a2;
    v192 = a3;
    v188 = v88;
    v189 = v8;
    if (v88 < 0xD)
    {
LABEL_256:
      v163 = v87 - v89;
      v164 = v87 - v89 - 15;
      if ((v87 - v89) < 0xF)
      {
        *a3 = 16 * v163;
      }

      else
      {
        *a3 = -16;
        v165 = a3 + 1;
        if (v164 >= 0xFF)
        {
          v166 = v199 + v186 - v89 - 270;
          memset(v165, 255, v166 / 0xFF + 1);
          v164 = v166 % 0xFF;
          v165 = &a3[v166 / 0xFF + 2];
        }

        *v165 = v164;
        a3 = v165;
      }

      memcpy(a3 + 1, v89, v163);
      result = (a3 + 1 + v163 - v192);
      v4 = v188;
      goto LABEL_264;
    }

    v90 = (v10 - v9);
    v91 = (v87 - 11);
    v196 = v87 - 5;
    v194 = &v11[v9];
    v92 = &v11[v9 - v10];
    v89 = a2;
    v93 = 0xCF1BBCDCBB000000;
    *(v7 + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v10;
    v94 = v87;
    v95 = a2 + 2;
    v96 = (a2 + 1);
    v97 = v10 + 1;
    v98 = (v94 - 12);
    v182 = v94;
    v168 = (v94 - 6);
    v170 = (v94 - 8);
    v184 = &v11[v9];
    v190 = v7;
LABEL_132:
    v99 = *(v89 + 1);
    v100 = 1;
    v101 = 65;
    while (1)
    {
      v102 = v95;
      v103 = ((v99 * v93) >> 50) & 0x3FFC;
      v104 = *(v7 + v103);
      v99 = *v102;
      *(v7 + v103) = v97;
      if (v104 >= v90 && v104 + 0xFFFF >= v97)
      {
        v106 = v200;
        if (v104 < v10)
        {
          v106 = v92;
        }

        if (*&v106[v104] == *v96)
        {
          break;
        }
      }

      v97 = v102 - v200;
      v95 = v102 + v100;
      v100 = v101++ >> 6;
      v96 = v102;
      if (v95 > v91)
      {
LABEL_255:
        v87 = v182;
        goto LABEL_256;
      }
    }

    v107 = 0;
    v108 = &v106[v104];
    if (v104 >= v10)
    {
      v109 = v199;
    }

    else
    {
      v109 = v11;
    }

    v110 = v97 - v104;
    v111 = v96 - v89;
    v112 = v96 - v89 - 15;
    v113 = v96 - v89 - 270;
    v114 = v112;
    do
    {
      v115 = v114;
      v116 = v107;
      v117 = &v108[v107];
      v118 = (v96 + v107);
      if (&v108[v107] <= v109 || v118 <= v89)
      {
        break;
      }

      --v114;
      --v107;
    }

    while (*(v118 - 1) == *(v117 - 1));
    v120 = v118 - v89;
    v121 = a3 + 1;
    if ((v111 + v116) < 0xF)
    {
      *a3 = 16 * v120;
    }

    else
    {
      LOBYTE(v122) = v116 + v112;
      *a3 = -16;
      if (v116 + v112 > 254)
      {
        v123 = v111 + 239;
        if (v115 >= 0x1FD)
        {
          v124 = 509;
        }

        else
        {
          v124 = v115;
        }

        if (v115 >= 509)
        {
          v125 = 509;
        }

        else
        {
          v125 = v115;
        }

        v174 = v125;
        v176 = v123;
        v180 = v90;
        v178 = v91;
        v172 = v113;
        memset(v121, 255, (v123 - v124 + v116) / 0xFFu + 1);
        v120 = v118 - v89;
        v91 = v178;
        v93 = 0xCF1BBCDCBB000000;
        v90 = v180;
        v11 = v197;
        LODWORD(v10) = v198;
        v121 = &a3[(v176 - v174 + v116) / 0xFFuLL + 2];
        v122 = -255 * ((v176 - v174 + v116) / 0xFFu) + v172 + v116;
      }

      *v121++ = v122;
    }

    v126 = &v121[v120];
    do
    {
      v127 = *v89++;
      *v121 = v127;
      v121 += 8;
    }

    while (v121 < v126);
    v128 = a3;
    v89 = v118;
    while (1)
    {
      *v126 = v110;
      a3 = v126 + 2;
      if (v109 != v11)
      {
        v129 = (v89 + 4);
        v130 = v117 + 4;
        if (v98 > v89 + 4)
        {
          if (*v130 == *v129)
          {
            v131 = v89 + 3;
            v130 = v117 + 12;
LABEL_171:
            if (v131 >= v98)
            {
LABEL_175:
              if (v131 < v170 && *v130 == *v131)
              {
                ++v130;
                ++v131;
              }

              if (v131 < v168 && *v130 == *v131)
              {
                v130 = (v130 + 2);
                v131 = (v131 + 2);
              }

              if (v131 < v196 && *v130 == *v131)
              {
                LODWORD(v131) = v131 + 1;
              }

              v133 = v131 - v129;
            }

            else
            {
              v132 = v131 - v89 - 4;
              while (*v130 == *v131)
              {
                v131 += 2;
                v130 += 2;
                v132 += 8;
                if (v131 >= v98)
                {
                  goto LABEL_175;
                }
              }

              v133 = (__clz(__rbit64(*v131 ^ *v130)) >> 3) + v132;
            }
          }

          else
          {
            v133 = __clz(__rbit64(*v129 ^ *v130)) >> 3;
          }

          v89 = (v89 + v133 + 4);
          goto LABEL_233;
        }

        v131 = v89 + 1;
        goto LABEL_171;
      }

      v134 = (v89 + v194 - v117);
      if (v134 > v196)
      {
        v134 = v196;
      }

      v135 = (v89 + 4);
      v136 = v117 + 4;
      v137 = v134 - 7;
      if (v134 - 7 <= v89 + 4)
      {
        v138 = v89 + 4;
      }

      else
      {
        if (*v136 != *v135)
        {
          v133 = __clz(__rbit64(*v135 ^ *v136)) >> 3;
          goto LABEL_209;
        }

        v138 = v89 + 12;
        v136 = v117 + 12;
      }

      if (v138 >= v137)
      {
LABEL_194:
        if (v138 < v134 - 3 && *v136 == *v138)
        {
          v136 = (v136 + 4);
          v138 += 4;
        }

        if (v138 < v134 - 1 && *v136 == *v138)
        {
          v136 = (v136 + 2);
          v138 += 2;
        }

        if (v138 < v134 && *v136 == *v138)
        {
          LODWORD(v138) = v138 + 1;
        }

        v133 = v138 - v135;
      }

      else
      {
        v139 = v138 - v89 - 4;
        while (*v136 == *v138)
        {
          v138 += 8;
          ++v136;
          v139 += 8;
          if (v138 >= v137)
          {
            goto LABEL_194;
          }
        }

        v133 = (__clz(__rbit64(*v138 ^ *v136)) >> 3) + v139;
      }

LABEL_209:
      v140 = v89 + v133 + 4;
      if (v140 != v134)
      {
        v89 = (v89 + v133 + 4);
        goto LABEL_233;
      }

      v141 = v199;
      v142 = v134;
      if (v98 <= v134)
      {
        goto LABEL_214;
      }

      if (*v199 == *v134)
      {
        v142 = v134 + 1;
        v141 = v199 + 1;
LABEL_214:
        if (v142 >= v98)
        {
LABEL_220:
          if (v142 < v170 && *v141 == *v142)
          {
            v141 = (v141 + 4);
            ++v142;
          }

          if (v142 < v168 && *v141 == *v142)
          {
            v141 = (v141 + 2);
            v142 = (v142 + 2);
          }

          if (v142 < v196 && *v141 == *v142)
          {
            LODWORD(v142) = v142 + 1;
          }

          v145 = v142 - v134;
        }

        else
        {
          v143 = v89 + v184 - v117;
          if (v143 >= v199 + v186 - 5)
          {
            LODWORD(v143) = v199 + v186 - 5;
          }

          v144 = v142 - v143;
          while (*v141 == *v142)
          {
            v142 += 2;
            ++v141;
            v144 += 8;
            if (v142 >= v98)
            {
              goto LABEL_220;
            }
          }

          v145 = (__clz(__rbit64(*v142 ^ *v141)) >> 3) + v144;
        }

        goto LABEL_232;
      }

      v145 = __clz(__rbit64(*v134 ^ *v199)) >> 3;
LABEL_232:
      v133 += v145;
      v89 = (v140 + v145);
LABEL_233:
      v146 = *v128;
      v147 = v133 - 15;
      if (v133 < 0xF)
      {
        *v128 = v146 + v133;
      }

      else
      {
        *v128 = v146 + 15;
        *a3 = -1;
        if (v147 >= 0x3FC)
        {
          v148 = v126 + 6;
          v149 = v133 - 1035;
          v150 = (v133 - 1035) / 0x3FC;
          v151 = 2 * v150;
          v152 = v90;
          v153 = v92;
          v154 = v91;
          v155 = v98;
          v156 = v93;
          memset(v126 + 6, 255, v151 * 2 + 4);
          v93 = v156;
          v98 = v155;
          v91 = v154;
          v92 = v153;
          v7 = v190;
          v90 = v152;
          v11 = v197;
          LODWORD(v10) = v198;
          LOWORD(v147) = v149 - 1020 * v150;
          a3 = &v148[v151];
        }

        v157 = &a3[v147 / 0xFFu];
        *v157 = v147 + v147 / 0xFFu;
        a3 = v157 + 1;
      }

      if (v89 >= v91)
      {
        goto LABEL_255;
      }

      *(v7 + (((*(v89 - 2) * v93) >> 50) & 0x3FFC)) = v89 - 2 - v200;
      v158 = v89 - v200;
      v159 = ((*v89 * v93) >> 50) & 0x3FFC;
      v160 = *(v7 + v159);
      if (v160 >= v10)
      {
        v161 = v200;
      }

      else
      {
        v161 = v92;
      }

      if (v160 >= v10)
      {
        v109 = v199;
      }

      else
      {
        v109 = v11;
      }

      *(v7 + v159) = v158;
      v162 = v160 >= v90 && v160 + 0xFFFF >= v158;
      if (!v162 || (v117 = &v161[v160], *&v161[v160] != *v89))
      {
        v96 = (v89 + 1);
        v97 = v89 + 1 - v200;
        v95 = v89 + 2;
        if (v89 + 2 > v91)
        {
          goto LABEL_255;
        }

        goto LABEL_132;
      }

      *a3 = 0;
      v126 = a3 + 1;
      v110 = v158 - v160;
      v128 = a3;
    }
  }

  if (v4 > 0x7E000000)
  {
LABEL_129:
    result = 0;
    goto LABEL_265;
  }

  v185 = v4;
  v13 = a2 + v4;
  v8[6] = v9 + v4;
  *v8 = v10 + v4;
  v189 = v8;
  *(v8 + 3) = 2;
  v191 = a3;
  if (v4 < 0xD)
  {
    goto LABEL_124;
  }

  v187 = v4;
  v14 = (v13 - 11);
  v195 = v13 - 5;
  v193 = &v11[v9];
  v15 = &v11[v9 - v10];
  v16 = 0xCF1BBCDCBB000000;
  *(v7 + (((0xCF1BBCDCBB000000 * *a2) >> 50) & 0x3FFC)) = v10;
  v17 = a2 + v4;
  v18 = (a2 + 2);
  v19 = (a2 + 1);
  v20 = v10 + 1;
  v21 = (v17 - 12);
  v181 = v17;
  v167 = (v17 - 6);
  v169 = (v17 - 8);
  v183 = &v11[v9];
LABEL_8:
  v22 = *(a2 + 1);
  v23 = 1;
  v24 = 65;
  do
  {
    v25 = ((v22 * v16) >> 50) & 0x3FFC;
    v26 = *(v7 + v25);
    v27 = v18;
    v22 = *v18;
    *(v7 + v25) = v20;
    if (v26 + 0xFFFF >= v20)
    {
      v28 = v200;
      if (v26 < v10)
      {
        v28 = v15;
      }

      if (*&v28[v26] == *v19)
      {
        v29 = 0;
        v30 = &v28[v26];
        if (v26 >= v10)
        {
          v31 = v199;
        }

        else
        {
          v31 = v11;
        }

        v32 = v20 - v26;
        v33 = v19 - a2;
        v34 = v19 - a2 - 15;
        v35 = v19 - a2 - 270;
        v36 = v34;
        do
        {
          v37 = v36;
          v38 = v29;
          v39 = &v30[v29];
          v40 = (v19 + v29);
          if (&v30[v29] <= v31 || v40 <= a2)
          {
            break;
          }

          --v36;
          --v29;
        }

        while (*(v40 - 1) == *(v39 - 1));
        v42 = v40 - a2;
        v43 = a3 + 1;
        if ((v33 + v38) < 0xF)
        {
          *a3 = 16 * v42;
        }

        else
        {
          LOBYTE(v44) = v38 + v34;
          *a3 = -16;
          if (v38 + v34 > 254)
          {
            v45 = v33 + 239;
            if (v37 >= 0x1FD)
            {
              v46 = 509;
            }

            else
            {
              v46 = v37;
            }

            if (v37 >= 509)
            {
              v47 = 509;
            }

            else
            {
              v47 = v37;
            }

            v173 = v47;
            v175 = v45;
            v177 = v15;
            v179 = v14;
            v171 = v35;
            memset(v43, 255, (v45 - v46 + v38) / 0xFFu + 1);
            v42 = v40 - a2;
            v15 = v177;
            v16 = 0xCF1BBCDCBB000000;
            v14 = v179;
            v11 = v197;
            LODWORD(v10) = v198;
            v43 = &a3[(v175 - v173 + v38) / 0xFFuLL + 2];
            v44 = -255 * ((v175 - v173 + v38) / 0xFFu) + v171 + v38;
          }

          *v43++ = v44;
        }

        v48 = &v43[v42];
        do
        {
          v49 = *a2++;
          *v43 = v49;
          v43 += 8;
        }

        while (v43 < v48);
        v50 = a3;
        a2 = v40;
        while (1)
        {
          *v48 = v32;
          a3 = v48 + 2;
          if (v31 != v11)
          {
            v51 = (a2 + 4);
            v52 = v39 + 4;
            if (v21 > a2 + 4)
            {
              if (*v52 == *v51)
              {
                v53 = a2 + 3;
                v52 = v39 + 12;
LABEL_43:
                if (v53 >= v21)
                {
LABEL_47:
                  if (v53 < v169 && *v52 == *v53)
                  {
                    ++v52;
                    ++v53;
                  }

                  if (v53 < v167 && *v52 == *v53)
                  {
                    v52 = (v52 + 2);
                    v53 = (v53 + 2);
                  }

                  if (v53 < v195 && *v52 == *v53)
                  {
                    LODWORD(v53) = v53 + 1;
                  }

                  v55 = v53 - v51;
                }

                else
                {
                  v54 = v53 - a2 - 4;
                  while (*v52 == *v53)
                  {
                    v53 += 2;
                    v52 += 2;
                    v54 += 8;
                    if (v53 >= v21)
                    {
                      goto LABEL_47;
                    }
                  }

                  v55 = (__clz(__rbit64(*v53 ^ *v52)) >> 3) + v54;
                }
              }

              else
              {
                v55 = __clz(__rbit64(*v51 ^ *v52)) >> 3;
              }

              a2 = (a2 + v55 + 4);
              goto LABEL_105;
            }

            v53 = a2 + 1;
            goto LABEL_43;
          }

          v56 = (a2 + v193 - v39);
          if (v56 > v195)
          {
            v56 = v195;
          }

          v57 = (a2 + 4);
          v58 = v39 + 4;
          v59 = v56 - 7;
          if (v56 - 7 <= a2 + 4)
          {
            v60 = a2 + 4;
          }

          else
          {
            if (*v58 != *v57)
            {
              v55 = __clz(__rbit64(*v57 ^ *v58)) >> 3;
              goto LABEL_81;
            }

            v60 = a2 + 12;
            v58 = v39 + 12;
          }

          if (v60 >= v59)
          {
LABEL_66:
            if (v60 < v56 - 3 && *v58 == *v60)
            {
              v58 = (v58 + 4);
              v60 += 4;
            }

            if (v60 < v56 - 1 && *v58 == *v60)
            {
              v58 = (v58 + 2);
              v60 += 2;
            }

            if (v60 < v56 && *v58 == *v60)
            {
              LODWORD(v60) = v60 + 1;
            }

            v55 = v60 - v57;
          }

          else
          {
            v61 = v60 - a2 - 4;
            while (*v58 == *v60)
            {
              v60 += 8;
              ++v58;
              v61 += 8;
              if (v60 >= v59)
              {
                goto LABEL_66;
              }
            }

            v55 = (__clz(__rbit64(*v60 ^ *v58)) >> 3) + v61;
          }

LABEL_81:
          v62 = a2 + v55 + 4;
          if (v62 != v56)
          {
            a2 = (a2 + v55 + 4);
            goto LABEL_105;
          }

          v63 = v199;
          v64 = v56;
          if (v21 <= v56)
          {
            goto LABEL_86;
          }

          if (*v199 == *v56)
          {
            v64 = v56 + 1;
            v63 = v199 + 1;
LABEL_86:
            if (v64 >= v21)
            {
LABEL_92:
              if (v64 < v169 && *v63 == *v64)
              {
                v63 = (v63 + 4);
                ++v64;
              }

              if (v64 < v167 && *v63 == *v64)
              {
                v63 = (v63 + 2);
                v64 = (v64 + 2);
              }

              if (v64 < v195 && *v63 == *v64)
              {
                LODWORD(v64) = v64 + 1;
              }

              v67 = v64 - v56;
            }

            else
            {
              v65 = a2 + v183 - v39;
              if (v65 >= v199 + v185 - 5)
              {
                LODWORD(v65) = v199 + v185 - 5;
              }

              v66 = v64 - v65;
              while (*v63 == *v64)
              {
                v64 += 2;
                ++v63;
                v66 += 8;
                if (v64 >= v21)
                {
                  goto LABEL_92;
                }
              }

              v67 = (__clz(__rbit64(*v64 ^ *v63)) >> 3) + v66;
            }

            goto LABEL_104;
          }

          v67 = __clz(__rbit64(*v56 ^ *v199)) >> 3;
LABEL_104:
          v55 += v67;
          a2 = (v62 + v67);
LABEL_105:
          v68 = *v50;
          v69 = v55 - 15;
          if (v55 < 0xF)
          {
            *v50 = v68 + v55;
          }

          else
          {
            *v50 = v68 + 15;
            *a3 = -1;
            if (v69 >= 0x3FC)
            {
              v70 = v48 + 6;
              v71 = v55 - 1035;
              v72 = (v55 - 1035) / 0x3FC;
              v73 = 2 * v72;
              v74 = v14;
              v75 = v15;
              v76 = v16;
              memset(v48 + 6, 255, v73 * 2 + 4);
              v16 = v76;
              v15 = v75;
              v14 = v74;
              v11 = v197;
              LODWORD(v10) = v198;
              LOWORD(v69) = v71 - 1020 * v72;
              a3 = &v70[v73];
            }

            v77 = &a3[v69 / 0xFFu];
            *v77 = v69 + v69 / 0xFFu;
            a3 = v77 + 1;
          }

          if (a2 >= v14)
          {
            goto LABEL_123;
          }

          *(v7 + (((*(a2 - 2) * v16) >> 50) & 0x3FFC)) = a2 - 2 - v200;
          v78 = a2 - v200;
          v79 = ((*a2 * v16) >> 50) & 0x3FFC;
          v80 = *(v7 + v79);
          if (v80 >= v10)
          {
            v81 = v200;
          }

          else
          {
            v81 = v15;
          }

          if (v80 >= v10)
          {
            v31 = v199;
          }

          else
          {
            v31 = v11;
          }

          *(v7 + v79) = v78;
          if (v80 + 0xFFFF < v78 || (v39 = &v81[v80], *&v81[v80] != *a2))
          {
            v19 = (a2 + 1);
            v20 = a2 + 1 - v200;
            v18 = (a2 + 2);
            if (a2 + 2 > v14)
            {
              goto LABEL_123;
            }

            goto LABEL_8;
          }

          *a3 = 0;
          v48 = a3 + 1;
          v32 = v78 - v80;
          v50 = a3;
        }
      }
    }

    v20 = v27 - v200;
    v18 = (v27 + v23);
    v23 = v24++ >> 6;
    v19 = v27;
  }

  while (v18 <= v14);
LABEL_123:
  v4 = v187;
  v13 = v181;
LABEL_124:
  v82 = v13 - a2;
  v83 = v13 - a2 - 15;
  if ((v13 - a2) < 0xF)
  {
    *a3 = 16 * v82;
  }

  else
  {
    *a3 = -16;
    v84 = a3 + 1;
    if (v83 >= 0xFF)
    {
      v85 = v199 + v185 - a2 - 270;
      memset(v84, 255, v85 / 0xFF + 1);
      v83 = v85 % 0xFF;
      v84 = &a3[v85 / 0xFF + 2];
    }

    *v84 = v83;
    a3 = v84;
  }

  memcpy(a3 + 1, a2, v82);
  result = (a3 + 1 + v82 - v191);
LABEL_264:
  v8 = v189;
LABEL_265:
  *(v7 + 16392) = v199;
  v8[6] = v4;
  return result;
}

size_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_saveDict(uint64_t a1, void *__dst, unsigned int a3)
{
  v5 = *(a1 + 16408);
  if (a3 >= v5)
  {
    v6 = *(a1 + 16408);
  }

  else
  {
    v6 = a3;
  }

  if (v6 >= 0x10000)
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = v6;
  }

  memmove(__dst, (*(a1 + 16392) + v5 - v7), v7);
  *(a1 + 16392) = __dst;
  *(a1 + 16408) = v7;
  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *__dst, char *a3)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = this;
  if (!a3)
  {
    if (*this)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v4 = &__dst[a3];
  v5 = v4 - 7;
  v6 = this;
  while (1)
  {
    while (1)
    {
      v8 = *v6;
      v6 = (v6 + 1);
      v7 = v8;
      v9 = v8 >> 4;
      if (v8 > 0x8FuLL || __dst > v4 - 26)
      {
        break;
      }

      *__dst = *v6;
      v13 = &__dst[v9];
      v21 = (v6 + v9);
      v20 = v7 & 0xF;
      v22 = *v21;
      v6 = (v21 + 1);
      v17 = v22;
      v19 = &v13[-v22];
      if ((v7 & 0xF) == 0xF || v17 < 8)
      {
        goto LABEL_21;
      }

      *v13 = *v19;
      *(v13 + 1) = *(v19 + 1);
      *(v13 + 8) = *(v19 + 8);
      __dst = &v13[v20 + 4];
    }

    if (v9 == 15)
    {
      LODWORD(v11) = 0;
      do
      {
        v12 = *v6;
        v6 = (v6 + 1);
        v11 = (v11 + v12);
      }

      while (v12 == 255);
      v9 = v11 + 15;
    }

    v13 = &__dst[v9];
    if (&__dst[v9] > v4 - 8)
    {
      break;
    }

    v14 = v6;
    do
    {
      v15 = *v14;
      v14 = (v14 + 8);
      *__dst = v15;
      __dst += 8;
    }

    while (__dst < v13);
    v16 = (v6 + v9);
    v18 = *v16;
    v6 = (v16 + 1);
    v17 = v18;
    v19 = &v13[-v18];
    v20 = v7 & 0xF;
LABEL_21:
    if (v20 == 15)
    {
      LODWORD(v24) = 0;
      do
      {
        v25 = *v6;
        v6 = (v6 + 1);
        v24 = (v24 + v25);
      }

      while (v25 == 255);
      v20 = v24 + 15;
    }

    if (v17 <= 7)
    {
      sub_29B28CB5C(v13, v19);
      v26 = v37;
    }

    else
    {
      v27 = *v19;
      v26 = v19 + 8;
      *v13 = v27;
    }

    __dst = &v13[v20 + 4];
    v28 = v13 + 8;
    if (__dst > v4 - 12)
    {
      if (__dst > v4 - 5)
      {
        return (~v6 + v3);
      }

      if (v28 < v5)
      {
        v32 = v26;
        v33 = v13 + 8;
        do
        {
          v34 = *v32++;
          *v33 = v34;
          v33 += 8;
        }

        while (v33 < v5);
        v26 += v5 - v28;
        v28 = (v4 - 7);
      }

      while (v28 < __dst)
      {
        v35 = *v26++;
        *v28++ = v35;
      }
    }

    else
    {
      *v28 = *v26;
      if (v20 >= 0xD)
      {
        v29 = v13 + 16;
        v30 = (v26 + 8);
        do
        {
          v31 = *v30++;
          *v29 = v31;
          v29 += 8;
        }

        while (v29 < __dst);
      }
    }
  }

  if (v13 != v4)
  {
    return (~v6 + v3);
  }

  memmove(__dst, v6, v9);
  return (v6 + v9 - v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_freeStreamDecode(void *a1)
{
  if (a1)
  {
    free(a1);
  }

  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_setStreamDecode(void *a1, uint64_t a2, int a3)
{
  a1[2] = a2 + a3;
  a1[3] = a3;
  *a1 = 0;
  a1[1] = 0;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decoderRingBufferSize(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this)
{
  if (this <= 0x10)
  {
    v1 = 16;
  }

  else
  {
    v1 = this;
  }

  v2 = v1 + 65550;
  if (this <= 0x7E000000)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast_continue(void *a1, pxrInternal__aapl__pxrReserved__::pxr_lz4 *__src, char *__dst, char *a4)
{
  v4 = a4;
  v5 = __dst;
  v6 = __src;
  v8 = a1[3];
  if (!v8)
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast(__src, __dst, a4);
    if (result < 1)
    {
      return result;
    }

    v11 = v4;
LABEL_7:
    a1[2] = v5 + v4;
    a1[3] = v11;
    return result;
  }

  v9 = a1[2];
  if (v9 != __dst)
  {
    *a1 = &v9[-v8];
    a1[1] = v8;
    result = sub_29A0E89E0(__src, __dst, a4, &v9[-v8], v8);
    if (result < 1)
    {
      return result;
    }

    v11 = v4;
    goto LABEL_7;
  }

  if (v8 > 0xFFFE || (v12 = a1[1]) == 0)
  {
    result = pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast(__src, __dst, a4);
    goto LABEL_66;
  }

  if (!__src)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *a1 + v12;
  if (!*a1)
  {
    v13 = 0;
  }

  v57 = v13;
  if (a4)
  {
    v14 = &__dst[-v8];
    v15 = &__dst[a4];
    v16 = v15 - 26;
    v58 = v15 - 12;
    v55 = v15 - 7;
    v56 = v15;
    v59 = v15 - 5;
    v60 = v15 - 8;
    v17 = __src;
    while (1)
    {
      v19 = *v17;
      v17 = (v17 + 1);
      v18 = v19;
      v20 = v19 >> 4;
      if (v19 > 0x8FuLL || v5 > v16)
      {
        if (v20 == 15)
        {
          LODWORD(v22) = 0;
          do
          {
            v23 = *v17;
            v17 = (v17 + 1);
            v22 = (v22 + v23);
          }

          while (v23 == 255);
          v20 = v22 + 15;
        }

        v24 = (v5 + v20);
        if (v5 + v20 > v60)
        {
          if (v24 != v56)
          {
LABEL_71:
            result = (~v17 + v6);
            goto LABEL_66;
          }

          memmove(v5, v17, v20);
          result = (v17 + v20 - v6);
LABEL_66:
          if (result >= 1)
          {
            v9 = a1[2];
            v8 = a1[3];
            v54 = v4;
            goto LABEL_68;
          }

          return result;
        }

        v25 = v17;
        do
        {
          v26 = *v25;
          v25 = (v25 + 8);
          *v5++ = v26;
        }

        while (v5 < v24);
        v27 = (v17 + v20);
        v29 = *v27;
        v17 = (v27 + 1);
        v28 = v29;
        v30 = v24 - v29;
        v31 = v18 & 0xF;
LABEL_35:
        if (v31 == 15)
        {
          LODWORD(v36) = 0;
          do
          {
            v37 = *v17;
            v17 = (v17 + 1);
            v36 = (v36 + v37);
          }

          while (v37 == 255);
          v31 = v36 + 15;
        }

        v38 = v31 + 4;
        v5 = (v24 + v31 + 4);
        if (v30 >= v14)
        {
          if (v28 <= 7)
          {
            sub_29B28CB5C(v24, v30);
            v44 = v61;
          }

          else
          {
            v45 = *v30;
            v44 = (v30 + 8);
            *v24 = v45;
          }

          v46 = v24 + 1;
          if (v5 > v58)
          {
            if (v5 > v59)
            {
              goto LABEL_71;
            }

            if (v46 < v55)
            {
              v50 = v44;
              v51 = (v24 + 1);
              do
              {
                v52 = *v50++;
                *v51 = v52;
                v51 += 8;
              }

              while (v51 < v55);
              v44 += v55 - v46;
              v46 = v55;
            }

            while (v46 < v5)
            {
              v53 = *v44++;
              *v46 = v53;
              v46 = (v46 + 1);
            }
          }

          else
          {
            *v46 = *v44;
            if (v31 >= 0xD)
            {
              v47 = v24 + 2;
              v48 = (v44 + 8);
              do
              {
                v49 = *v48++;
                *v47++ = v49;
              }

              while (v47 < v5);
            }
          }
        }

        else
        {
          if (v5 > v59)
          {
            goto LABEL_71;
          }

          v39 = &v14[-v30];
          v40 = v38 - &v14[-v30];
          if (v38 <= &v14[-v30])
          {
            memmove(v24, (v57 - v39), v38);
          }

          else
          {
            memcpy(v24, (v57 - v39), v39);
            v41 = v24 + v39;
            if (v40 <= v24 + v39 - v14)
            {
              memcpy(v41, v14, v40);
            }

            else
            {
              v42 = v14;
              do
              {
                v43 = *v42++;
                *v41++ = v43;
              }

              while (v41 < v5);
              v5 = v41;
            }
          }
        }
      }

      else
      {
        *v5 = *v17;
        v24 = (v5 + v20);
        v32 = (v17 + v20);
        v31 = v18 & 0xF;
        v33 = *v32;
        v17 = (v32 + 1);
        v28 = v33;
        v30 = v24 - v33;
        if ((v18 & 0xF) == 0xF || v28 < 8 || v30 < v14)
        {
          goto LABEL_35;
        }

        *v24 = *v30;
        v24[1] = *(v30 + 8);
        *(v24 + 8) = *(v30 + 16);
        v5 = (v24 + v31 + 4);
      }
    }
  }

  if (*__src)
  {
    return 0xFFFFFFFFLL;
  }

  v54 = 0;
  result = 1;
LABEL_68:
  a1[2] = &v9[v54];
  a1[3] = v8 + v54;
  return result;
}

uint64_t sub_29A0E89E0(unsigned __int8 *__src, char *__dst, int a3, uint64_t a4, uint64_t a5)
{
  if (!__src)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a4 + a5;
  if (!a4)
  {
    v5 = 0;
  }

  v54 = v5;
  if (!a3)
  {
    if (*__src)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v7 = &__dst[a3];
  v8 = v7 - 8;
  v9 = v7 - 26;
  v10 = v7 - 12;
  v51 = v7 - 7;
  v52 = v7;
  v11 = v7 - 5;
  v53 = __src;
  v12 = __src;
  v13 = __dst;
  while (1)
  {
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      v16 = v15 >> 4;
      if (v15 > 0x8FuLL || v13 > v9)
      {
        break;
      }

      *v13 = *v12;
      v20 = &v13[v16];
      v28 = &v12[v16];
      v27 = v14 & 0xF;
      v29 = *v28;
      v12 = v28 + 2;
      v24 = v29;
      v26 = v20 - v29;
      if ((v14 & 0xF) == 0xF || v24 < 8 || v26 < __dst)
      {
        goto LABEL_26;
      }

      *v20 = *v26;
      *(v20 + 8) = *(v26 + 8);
      *(v20 + 16) = *(v26 + 16);
      v13 = (v20 + v27 + 4);
    }

    if (v16 == 15)
    {
      LODWORD(v18) = 0;
      do
      {
        v19 = *v12++;
        v18 = (v18 + v19);
      }

      while (v19 == 255);
      v16 = v18 + 15;
    }

    v20 = &v13[v16];
    if (&v13[v16] > v8)
    {
      break;
    }

    v21 = v12;
    do
    {
      v22 = *v21++;
      *v13 = v22;
      v13 += 8;
    }

    while (v13 < v20);
    v23 = &v12[v16];
    v25 = *v23;
    v12 = v23 + 2;
    v24 = v25;
    v26 = v20 - v25;
    v27 = v14 & 0xF;
LABEL_26:
    if (v27 == 15)
    {
      LODWORD(v32) = 0;
      do
      {
        v33 = *v12++;
        v32 = (v32 + v33);
      }

      while (v33 == 255);
      v27 = v32 + 15;
    }

    v34 = (v27 + 4);
    v13 = (v20 + v27 + 4);
    if (v26 >= __dst)
    {
      if (v24 <= 7)
      {
        sub_29B28CB5C(v20, v26);
        v40 = v55;
      }

      else
      {
        v41 = *v26;
        v40 = (v26 + 8);
        *v20 = v41;
      }

      v42 = (v20 + 8);
      if (v13 > v10)
      {
        if (v13 > v11)
        {
          return (~v12 + v53);
        }

        if (v42 < v51)
        {
          v46 = v40;
          v47 = (v20 + 8);
          do
          {
            v48 = *v46++;
            *v47 = v48;
            v47 += 8;
          }

          while (v47 < v51);
          v40 += v51 - v42;
          v42 = v51;
        }

        while (v42 < v13)
        {
          v49 = *v40++;
          *v42++ = v49;
        }
      }

      else
      {
        *v42 = *v40;
        if (v27 >= 0xD)
        {
          v43 = (v20 + 16);
          v44 = (v40 + 8);
          do
          {
            v45 = *v44++;
            *v43 = v45;
            v43 += 8;
          }

          while (v43 < v13);
        }
      }
    }

    else
    {
      if (v13 > v11)
      {
        return (~v12 + v53);
      }

      v35 = &__dst[-v26];
      v36 = v34 - &__dst[-v26];
      if (v34 <= &__dst[-v26])
      {
        memmove(v20, (v54 - v35), v34);
      }

      else
      {
        memcpy(v20, (v54 - v35), v35);
        v37 = &v35[v20];
        if (v36 <= &v35[v20] - __dst)
        {
          memcpy(v37, __dst, v36);
        }

        else
        {
          v38 = __dst;
          do
          {
            v39 = *v38++;
            *v37++ = v39;
          }

          while (v37 < v13);
          v13 = v37;
        }
      }
    }
  }

  if (v20 != v52)
  {
    return (~v12 + v53);
  }

  memmove(v13, v12, v16);
  return (v12 + v16 - v53);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_usingDict(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *__dst, char *a3, int a4, uint64_t a5, const char *a6)
{
  if (!a6)
  {
    return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe(this, __dst, a3, a4);
  }

  if ((a5 + a6) != __dst)
  {
    return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_forceExtDict(this, __dst, a3, a4, a5, a6);
  }

  if (a6 < 0xFFFF)
  {
    return sub_29B28C74C(this, __dst, a3, a4, a6);
  }

  return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_safe_withPrefix64k(this, __dst, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast_usingDict(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *a2, char *a3, uint64_t a4, const char *a5)
{
  if (!a5 || (a4 + a5) == a2)
  {
    return pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_decompress_fast(this, a2, a3);
  }

  else
  {
    return sub_29A0E89E0(this, a2, a3, a4, a5);
  }
}

void *pxrInternal__aapl__pxrReserved__::pxr_lz4::LZ4_create(pxrInternal__aapl__pxrReserved__::pxr_lz4 *this, char *a2)
{
  v2 = malloc(0x4020uLL);
  v3 = v2;
  if (v2 && (v2 & 7) == 0)
  {
    bzero(v2, 0x4020uLL);
  }

  return v3;
}

void *sub_29A0E8DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memset(a1, 255, (a2 - 270) / 0xFFuLL + 1);
}

void *sub_29A0E8E10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memset(a1, 255, (a2 - 270) / 0xFFuLL + 1);
}

void sub_29A0E8ED0(int a1@<W5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = *(v22 - 112);
  *(a22 + 24) = a2 + v23;
  *a22 = a1 + v23;
  *(a22 + 6) = 2;
}

void sub_29A0E8EF4(int a1@<W8>)
{
  v4 = *(v3 - 112);
  *(v2 + 24) = a1 + v4;
  *v2 = v1 + v4;
  *(v2 + 6) = 2;
}

uint64_t sub_29A0E8F58(uint64_t result, _BYTE *a2)
{
  *result = 0;
  *result = *a2;
  *(result + 1) = a2[1];
  *(result + 2) = a2[2];
  return result;
}

void *sub_29A0E8FAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memset(a1, 255, (a2 - v2 - 270) / 0xFFuLL + 1);
}

void *sub_29A0E8FD4(uint64_t a1, uint64_t a2, size_t a3)
{

  return memset(v3, 255, a3);
}

void *sub_29A0E902C()
{

  return memcpy(v0, v2, v1);
}

void *sub_29A0E9048()
{

  return memcpy(v0, v1, v2);
}

void *sub_29A0E9064@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{

  return memset(a1, 255, (a2 - 270) / 0xFFuLL + 1);
}

void *sub_29A0E90D0(uint64_t a1, uint64_t a2, size_t a3)
{

  return memset(v3, 255, a3);
}

void sub_29A0E90E8()
{

  bzero(v0, 0x4020uLL);
}

void sub_29A0E9100()
{

  bzero(v0, 0x4004uLL);
}

void sub_29A0E9118()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::TF_REQUIRE_FILESYSTEM_WRITE_PERMISSION))
  {
    sub_29B28CB98();
  }
}

BOOL pxrInternal__aapl__pxrReserved__::Tf_AtomicRenameFileOver(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, uint64_t a3)
{
  v4 = a2;
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  if (stat(v6, &v30) == -1)
  {
    v8 = umask(0);
    umask(v8);
    v7 = ~v8 & 0x1B6;
  }

  else
  {
    v7 = v30.st_mode & 0x1B6;
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (chmod(v9, v7))
  {
    *&v26 = "tf/atomicRenameUtil.cpp";
    *(&v26 + 1) = "Tf_AtomicRenameFileOver";
    v27 = 90;
    v28 = "BOOL pxrInternal__aapl__pxrReserved__::Tf_AtomicRenameFileOver(const std::string &, const std::string &, std::string *)";
    v29 = 0;
    v11 = (a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a1 : a1->__pn_.__r_.__value_.__r.__words[0];
    v12 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v12, __p);
    v14 = v25 >= 0 ? __p : __p[0];
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "Unable to set permissions for temporary file '%s': %s", v13, v11, v14);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = v4;
  }

  else
  {
    v16 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(v15, v16, v10);
  v18 = v17;
  if (v17)
  {
    if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      a1 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v4 = v4->__pn_.__r_.__value_.__r.__words[0];
    }

    v19 = __error();
    pxrInternal__aapl__pxrReserved__::ArchStrerror(*v19, __p);
    if (v25 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Failed to rename temporary file '%s' to '%s': %s", v20, v21, a1, v4, v22);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v26;
    *(a3 + 16) = v27;
    HIBYTE(v27) = 0;
    LOBYTE(v26) = 0;
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v18 == 0;
}

void sub_29A0E9330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Tf_CreateSiblingTempFile(std::string *this, std::string *a2, std::string *a3, uint64_t a4)
{
  v7 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }

LABEL_10:
    MEMORY[0x29C2C1A60](a4, "Empty fileName");
    return 0xFFFFFFFFLL;
  }

  if (!this->__r_.__value_.__l.__size_)
  {
    goto LABEL_10;
  }

LABEL_3:
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  pxrInternal__aapl__pxrReserved__::TfRealPath(this, 1, v39, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    if (SHIBYTE(v7->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v7->__r_.__value_.__r.__words[0];
    }

    v13 = v39;
    if (v40 < 0)
    {
      v13 = v39[0];
    }

    pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unable to determine the real path for '%s': %s", v8, v9, v7, v13);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v36;
    *(a4 + 16) = v37;
    TmpFile = 0xFFFFFFFFLL;
    goto LABEL_38;
  }

  TemporaryDirectoryAppropriateForURLPath = __DarwinGetTemporaryDirectoryAppropriateForURLPath(&__str, a4);
  sub_29A008E78(&v36, TemporaryDirectoryAppropriateForURLPath);
  if ((*(a4 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a4 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (!*(a4 + 23))
  {
LABEL_19:
    v14 = HIBYTE(v37);
    if (v37 < 0)
    {
      v14 = *(&v36 + 1);
    }

    if (!v14)
    {
      goto LABEL_35;
    }

    v15 = atomic_load(pxrInternal__aapl__pxrReserved__::TF_REQUIRE_FILESYSTEM_WRITE_PERMISSION);
    if (!v15)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
    }

    if (*v15 == 1)
    {
      if (v37 >= 0)
      {
        v16 = &v36;
      }

      else
      {
        v16 = v36;
      }

      if (access(v16, 2))
      {
        if (v37 >= 0)
        {
          v19 = &v36;
        }

        else
        {
          v19 = v36;
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Insufficient permissions to write to destination directory '%s'", v17, v18, v19);
LABEL_32:
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = v35;
        goto LABEL_35;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (access(p_str, 2) && *__error() != 2)
      {
        v29 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = __str.__r_.__value_.__r.__words[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf("Insufficient permissions to write to destination file '%s'", v22, v23, v29);
        goto LABEL_32;
      }
    }

    pxrInternal__aapl__pxrReserved__::TfGetBaseName(&__str, &__p);
    pxrInternal__aapl__pxrReserved__::TfStringGetBeforeSuffix(&__p, 46, &v35);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    TmpFile = pxrInternal__aapl__pxrReserved__::ArchMakeTmpFile(&v36, &v35, &__p);
    if (TmpFile == -1)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v25 = __error();
      pxrInternal__aapl__pxrReserved__::ArchStrerror(*v25, v30);
      if (v31 >= 0)
      {
        v28 = v30;
      }

      else
      {
        v28 = v30[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf("Unable to create temporary file '%s': %s", v26, v27, p_p, v28);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v32;
      *(a4 + 16) = v33;
      HIBYTE(v33) = 0;
      LOBYTE(v32) = 0;
      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    else
    {
      std::string::operator=(a3, &__p);
      std::string::operator=(a2, &__str);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    goto LABEL_36;
  }

LABEL_35:
  TmpFile = 0xFFFFFFFFLL;
LABEL_36:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

LABEL_38:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  return TmpFile;
}

void sub_29A0E96D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 81) < 0)
  {
    operator delete(*(v32 - 104));
  }

  if (*(v32 - 57) < 0)
  {
    operator delete(*(v32 - 80));
  }

  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_29A0E9784()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 5, "TF_SCRIPT_MODULE_LOADER", 0);
  v0 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0 + 20, "TF_SCRIPT_MODULE_LOADER", "show script module loading activity");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 6, "TF_SCRIPT_MODULE_LOADER_EXTRA", 0);
  v1 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 24, "TF_SCRIPT_MODULE_LOADER_EXTRA", "show more script module loading activity");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 7, "TF_TYPE_REGISTRY", 0);
  v2 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 28, "TF_TYPE_REGISTRY", "show changes to the TfType registry");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 8, "TF_ATTACH_DEBUGGER_ON_ERROR", 0);
  v3 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3 + 32, "TF_ATTACH_DEBUGGER_ON_ERROR", "attach/stop in a debugger for all errors");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 9, "TF_ATTACH_DEBUGGER_ON_FATAL_ERROR", 0);
  v4 = sub_29A0E98EC();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v4 + 36, "TF_ATTACH_DEBUGGER_ON_FATAL_ERROR", "attach/stop in a debugger for fatal errors");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A203F630, 10, "TF_ATTACH_DEBUGGER_ON_WARNING", 0);
  v5 = sub_29A0E98EC() + 40;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v5, "TF_ATTACH_DEBUGGER_ON_WARNING", "attach/stop in a debugger for all warnings");
}

uint64_t sub_29A0E98EC()
{
  if ((atomic_load_explicit(&qword_2A14F61D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F61D8))
  {
    v1 = operator new(0x2CuLL);
    *(v1 + 28) = 0u;
    *v1 = 0u;
    v1[1] = 0u;
    qword_2A14F61D0 = v1;
    __cxa_guard_release(&qword_2A14F61D8);
  }

  return qword_2A14F61D0;
}

unint64_t pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::GetInstance()
{
  result = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_instance);
  if (!result)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::Tf_NoticeRegistry>::_CreateInstance();
  }

  return result;
}