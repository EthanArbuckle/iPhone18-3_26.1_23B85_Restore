float BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, float *a2)
{
  v5 = 0.0;
  BlueFin::GlDbgCodecBase::Decode(this, __dst, 4u);
  BlueFin::GlDbgCodecBase::Internal(this, __dst, &v5);
  result = *a2;
  if (v5 != 0.0)
  {
    result = fabsf((result - v5) / v5);
    if (result >= 0.00000047684)
    {
      DeviceFaultNotify("gldebug_codec.cpp", 1074, "Verify", "fExpect == 0.0f || gl_isnan(fExpect) || FABS_F((rValue - fExpect) / fExpect) < fThresh");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1074, "fExpect == 0.0f || gl_isnan(fExpect) || FABS_F((rValue - fExpect) / fExpect) < fThresh");
    }
  }

  return result;
}

void BlueFin::GlDbgCodec::Verify(BlueFin::GlDbgCodec *this, double *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 0.0;
  BlueFin::GlDbgCodecBase::Decode(this, __dst, 8u);
  BlueFin::GlDbgCodecBase::Internal(this, __dst, &v5);
  if (v5 != 0.0 && fabs((*a2 - v5) / v5) >= 8.8817842e-16)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 1084, "Verify", "dExpect == 0.0 || gl_isnan(dExpect) || FABS_D((rValue - dExpect) / dExpect) < dThresh");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 1084, "dExpect == 0.0 || gl_isnan(dExpect) || FABS_D((rValue - dExpect) / dExpect) < dThresh");
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, int *a2, signed __int8 **a3)
{
  v10 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v10);
  if (!*(a1 + 143))
  {
    *a2 = v10;
  }

  v9 = *a3 != 0;
  result = BlueFin::GlDbgCodec::Rvw(a1, &v9);
  if (!v9)
  {
    if (!*(a1 + 143))
    {
      *a3 = 0;
    }

    return result;
  }

  v7 = *a2;
  if (*a2 > 15)
  {
    if (v7 <= 63)
    {
      if (v7 == 16)
      {
        if (*a3)
        {
          return BlueFin::GlDbgCodec::Rvw(a1, *a3);
        }
      }

      else
      {
        if (v7 != 32)
        {
          goto LABEL_34;
        }

        if (*a3)
        {
          return BlueFin::GlDbgCodec::Rvw(a1, *a3);
        }
      }

      return result;
    }

    if (v7 == 64)
    {
      v8 = *a3;
      if (v8)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v8);
        BlueFin::GlDbgCodec::Rvw(a1, v8 + 1);
        return BlueFin::GlDbgCodec::Rvw(a1, v8 + 4);
      }

      return result;
    }

    if (v7 != 128 && v7 != 256)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      return result;
    }

    if (v7 != 1)
    {
      goto LABEL_34;
    }

    if (*a3)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, *a3);
    }

    return result;
  }

  if (v7 == 2)
  {
LABEL_17:
    if (*a3)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, *a3);
    }

    return result;
  }

  if (v7 != 4)
  {
    if (v7 == 8)
    {
      if (*a3)
      {
        return BlueFin::GlDbgCodec::Rvw(a1, *a3);
      }

      return result;
    }

LABEL_34:
    DeviceFaultNotify("gldebug_codec.cpp", 3638, "Rvw", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 3638, "false");
  }

  if (*a3)
  {
    return BlueFin::GlDbgCodec::Rvw(a1, *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *a1, signed __int8 *a2)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    *(a1 + 143) = 2;
    v5 = 24;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2++);
      --v5;
    }

    while (v5);
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, char *a2, unsigned __int16 *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, a3);
    }

    v7 = *a3;

    return BlueFin::GlDbgCodecBase::Encode(this, a2, v7, 0, 0);
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, unsigned int *a2, unsigned __int16 *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    result = (*(*this + 120))(this);
    if (result)
    {
      result = BlueFin::GlDbgCodec::Write(this, a3);
    }

    if (*a3)
    {
      v7 = 0;
      do
      {
        result = BlueFin::GlDbgCodec::Write(this, a2);
        ++v7;
        ++a2;
      }

      while (v7 < *a3);
    }
  }

  return result;
}

char *BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *this, unsigned int *a2, unsigned int *a3)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    result = (*(*this + 120))(this);
    if (result)
    {
      result = BlueFin::GlDbgCodec::Write(this, a3);
    }

    if (*a3)
    {
      v7 = 0;
      do
      {
        result = BlueFin::GlDbgCodec::Write(this, a2);
        ++v7;
        ++a2;
      }

      while (v7 < *a3);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::WriteArray(BlueFin::GlDbgCodec *a1, uint64_t a2, const __int16 *a3)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    result = (*(*a1 + 120))(a1);
    if (result)
    {
      result = BlueFin::GlDbgCodec::Write(a1, a3);
    }

    if (*a3)
    {
      v7 = 0;
      do
      {
        result = (*(*a1 + 120))(a1);
        if (result)
        {
          *(a1 + 143) = 2;
          result = BlueFin::GlDbgCodec::Rvw(a1, a2);
        }

        ++v7;
        a2 += 16;
      }

      while (v7 < *a3);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, char *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, signed __int8 *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, uint64_t *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, __int16 *a2, __int16 *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3 >= 1)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 11;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3 >= 1)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 12;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, int *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, a2);
      ++v8;
      ++a2;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, unsigned int *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, a2);
      ++v8;
      ++a2;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, float *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, a2);
      ++v8;
      ++a2;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, int32x4_t *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  if ((*(*a1 + 112))(a1) < 0x18)
  {
    v5 = vuzp1q_s32(a2[2], a2[3]);
    *v12 = vuzp1q_s32(*a2, a2[1]);
    v13 = v5;
    v11 = 8;
    result = BlueFin::GlDbgCodec::RvwArray(a1, v12, &v11);
    if (!*(a1 + 143))
    {
      v6 = v13;
      v7.i64[0] = v12[0];
      v7.i64[1] = v12[1];
      v8 = v7;
      v7.i64[0] = v12[2];
      v7.i64[1] = v12[3];
      *a2 = v8;
      a2[1] = v7;
      v7.i64[0] = v6.u32[0];
      v7.i64[1] = v6.u32[1];
      v9 = v7;
      v7.i64[0] = v6.u32[2];
      v7.i64[1] = v6.u32[3];
      a2[2] = v9;
      a2[3] = v7;
    }
  }

  else
  {
    v11 = 8;
    result = BlueFin::GlDbgCodec::RvwArray(a1, a2, &v11);
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, int32x4_t *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 4;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 32;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 2856;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 240;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 392;
    }

    while (v8 < *a3);
  }

  return result;
}

{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 144;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, unsigned __int8 *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, &a2[v8++]);
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, uint64_t a2, BlueFin::GlMeTrkCvecTapConfig *a3)
{
  v6 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  v7 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 21));
  if (v7 >= 0x3D)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 22));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  if (v6 > 0xC)
  {
    v11 = 8;
    result = BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 32), &v11);
    if (v6 >= 0x1A)
    {
      v12 = 12;
      BlueFin::GlDbgCodec::Rvw(a1, &v12);
      result = BlueFin::GlDbgCodec::checkArraySize(a1, &v12, 0xCu);
      if (v12)
      {
        v9 = 0;
        v10 = (a2 + 68);
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v10 - 1);
          result = BlueFin::GlDbgCodec::Rvw(a1, v10);
          ++v9;
          v10 += 2;
        }

        while (v9 < v12);
      }
    }
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, a3);
    v11 = 8;
    return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 32), &v11);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (v6 < 0x1C)
  {
    *(a2 + 4) = 1034147594;
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  v10 = 4;
  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 28), &v10);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  v12 = *(a2 + 52);
  BlueFin::GlDbgCodec::Rvw(a1, &v12);
  if (!*(a1 + 143))
  {
    *(a2 + 52) = v12;
  }

  if ((*(*a1 + 112))(a1) >= 0xD2)
  {
    v11 = 0.0;
    BlueFin::GlDbgCodec::Rvw(a1, &v11);
  }

  v7 = (*(*a1 + 112))(a1);
  v13 = *(a2 + 56);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  if (!*(a1 + 143))
  {
    *(a2 + 56) = v13;
  }

  if (v7 >= 0x10)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  }

  v8 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  if (v8 >= 0x10)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
    if (v8 >= 0x32)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
    }
  }

  if (v6 < 0x16)
  {
    *(a2 + 84) = 0x41C4000041E40000;
    *(a2 + 92) = 1101004800;
    *(a2 + 96) = 67305985;
    *(a2 + 100) = 0x4188000041A00000;
    *(a2 + 108) = 1098907648;
    *(a2 + 112) = 67305985;
    *(a2 + 116) = 0x41C8000041F00000;
    *(a2 + 124) = 1101004800;
    *(a2 + 128) = 168100610;
    *(a2 + 132) = 0x41C8000041F00000;
    *(a2 + 140) = 1101004800;
    *(a2 + 144) = 168100610;
    if (v6 <= 0xC)
    {
      return BlueFin::GlMeTrkCvecTapConfig::operator=(a2 + 148, a3);
    }
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 84));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 100));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 116));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 132));
  }

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 148));
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlPeEngineCallBacks *a2)
{
  v4 = (*(*this + 112))(this);
  v5 = *(a2 + 3);
  v66 = *(a2 + 2) != 0;
  v65 = v5 != 0;
  v6 = *(a2 + 5);
  v64 = *(a2 + 4) != 0;
  v63 = v6 != 0;
  v62 = *(a2 + 6) != 0;
  v7 = *(a2 + 9);
  v61 = *(a2 + 8) != 0;
  v8 = *(a2 + 10);
  v60 = *(a2 + 11) != 0;
  v9 = *(a2 + 13);
  v59 = *(a2 + 12) != 0;
  v58 = v9 != 0;
  v10 = *(a2 + 15);
  v57 = *(a2 + 14) != 0;
  v56 = v10 != 0;
  v11 = *(a2 + 17);
  v55 = *(a2 + 16) != 0;
  v54 = v11 != 0;
  v12 = *(a2 + 19);
  v53 = *(a2 + 18) != 0;
  v52 = v12 != 0;
  v51 = *(a2 + 20) != 0;
  v49 = *(a2 + 25) != 0;
  v13 = *(a2 + 31);
  v48 = *(a2 + 30) != 0;
  v47 = v13 != 0;
  v46 = v7 != 0;
  v45 = v8 != 0;
  v14 = *(a2 + 33);
  v44 = *(a2 + 32) != 0;
  *v50 = 0;
  v43 = v14 != 0;
  v15 = *(a2 + 36);
  BlueFin::GlDbgCodec::Rvw(this, &v66);
  BlueFin::GlDbgCodec::Rvw(this, &v65);
  BlueFin::GlDbgCodec::Rvw(this, &v64);
  BlueFin::GlDbgCodec::Rvw(this, &v63);
  BlueFin::GlDbgCodec::Rvw(this, &v62);
  BlueFin::GlDbgCodec::Rvw(this, &v61);
  BlueFin::GlDbgCodec::Rvw(this, &v60);
  BlueFin::GlDbgCodec::Rvw(this, &v59);
  if (v4 >= 6)
  {
    BlueFin::GlDbgCodec::Rvw(this, &v58);
  }

  BlueFin::GlDbgCodec::Rvw(this, &v57);
  BlueFin::GlDbgCodec::Rvw(this, &v56);
  BlueFin::GlDbgCodec::Rvw(this, &v55);
  BlueFin::GlDbgCodec::Rvw(this, &v54);
  BlueFin::GlDbgCodec::Rvw(this, &v53);
  BlueFin::GlDbgCodec::Rvw(this, &v52);
  BlueFin::GlDbgCodec::Rvw(this, &v51);
  BlueFin::GlDbgCodec::Rvw(this, &v50[1]);
  BlueFin::GlDbgCodec::Rvw(this, v50);
  BlueFin::GlDbgCodec::Rvw(this, &v49);
  BlueFin::GlDbgCodec::Rvw(this, &v48);
  result = BlueFin::GlDbgCodec::Rvw(this, &v47);
  if (v4 >= 4)
  {
    BlueFin::GlDbgCodec::Rvw(this, &v46);
    result = BlueFin::GlDbgCodec::Rvw(this, &v45);
    if (v4 != 4)
    {
      result = BlueFin::GlDbgCodec::Rvw(this, &v44);
      if (v4 >= 6)
      {
        result = BlueFin::GlDbgCodec::Rvw(this, &v43);
        if (v4 - 34 <= 0x13)
        {
          v42 = 0;
          result = BlueFin::GlDbgCodec::Rvw(this, &v42);
        }

        if (v4 >= 0x25)
        {
          result = BlueFin::GlDbgCodec::Rvw(this, a2 + 296);
          if (v4 >= 0x2C)
          {
            v42 = 0;
            result = BlueFin::GlDbgCodec::Rvw(this, &v42);
            if (v4 >= 0x4B)
            {
              v42 = *(a2 + 38) != 0;
              result = BlueFin::GlDbgCodec::Rvw(this, &v42);
              if (!*(this + 143))
              {
                if (v42)
                {
                  v17 = BlueFin::GlDbgProxyGlEngineOnOscReadyForStorage;
                }

                else
                {
                  v17 = 0;
                }

                *(a2 + 38) = v17;
              }
            }
          }
        }
      }
    }
  }

  if (!*(this + 143))
  {
    if (v66)
    {
      v18 = BlueFin::GlDbgProxyGlEngineOnStart;
    }

    else
    {
      v18 = 0;
    }

    if (v65)
    {
      v19 = BlueFin::GlDbgProxyGlEngineOnStop;
    }

    else
    {
      v19 = 0;
    }

    *(a2 + 2) = v18;
    *(a2 + 3) = v19;
    if (v64)
    {
      v20 = BlueFin::GlDbgProxyGlEngineOnTimerRq;
    }

    else
    {
      v20 = 0;
    }

    if (v63)
    {
      v21 = BlueFin::GlDbgProxyGlEngineOnAsicData;
    }

    else
    {
      v21 = 0;
    }

    *(a2 + 4) = v20;
    *(a2 + 5) = v21;
    if (v62)
    {
      v22 = BlueFin::GlDbgProxyGlEngineOnAsicDacData;
    }

    else
    {
      v22 = 0;
    }

    *(a2 + 6) = v22;
    if (v61)
    {
      v23 = BlueFin::GlDbgProxyGlEngineOnReady;
    }

    else
    {
      v23 = 0;
    }

    *(a2 + 8) = v23;
    if (v60)
    {
      v24 = BlueFin::GlDbgProxyGlEngineOnPrecTimerRq;
    }

    else
    {
      v24 = 0;
    }

    if (v59)
    {
      v25 = BlueFin::GlDbgProxyGlEngineOnTimerSet;
    }

    else
    {
      v25 = 0;
    }

    *(a2 + 11) = v24;
    *(a2 + 12) = v25;
    if (v58)
    {
      v26 = BlueFin::GlDbgProxyGlEngineOnBurstMode;
    }

    else
    {
      v26 = 0;
    }

    if (v57)
    {
      v27 = BlueFin::GlDbgProxyGlEngineOnSysLogLine;
    }

    else
    {
      v27 = 0;
    }

    *(a2 + 13) = v26;
    *(a2 + 14) = v27;
    if (v56)
    {
      v28 = BlueFin::GlDbgProxyGlEngineOnFreqUpdate;
    }

    else
    {
      v28 = 0;
    }

    if (v55)
    {
      v29 = BlueFin::GlDbgProxyGlEngineOnAsstStatus;
    }

    else
    {
      v29 = 0;
    }

    *(a2 + 15) = v28;
    *(a2 + 16) = v29;
    if (v54)
    {
      v30 = BlueFin::GlDbgProxyGlEngCbOnNvStgRead;
    }

    else
    {
      v30 = 0;
    }

    if (v53)
    {
      v31 = BlueFin::GlDbgProxyGlEngCbOnNvStgWrite;
    }

    else
    {
      v31 = 0;
    }

    *(a2 + 17) = v30;
    *(a2 + 18) = v31;
    if (v52)
    {
      v32 = BlueFin::GlDbgProxyGlEngCbOnLTOFileRead;
    }

    else
    {
      v32 = 0;
    }

    if (v51)
    {
      v33 = BlueFin::GlDbgProxyGlEngineOnResponse;
    }

    else
    {
      v33 = 0;
    }

    *(a2 + 19) = v32;
    *(a2 + 20) = v33;
    if (v49)
    {
      v34 = BlueFin::GlDbgProxyGlEngCbOnEEFileRead;
    }

    else
    {
      v34 = 0;
    }

    *(a2 + 25) = v34;
    if (v48)
    {
      v35 = BlueFin::GlDbgProxyGlEngCbOnPPSPlatformTime;
    }

    else
    {
      v35 = 0;
    }

    if (v47)
    {
      v36 = BlueFin::GlDbgProxyGlEngCpuLoad;
    }

    else
    {
      v36 = 0;
    }

    *(a2 + 30) = v35;
    *(a2 + 31) = v36;
    if (v46)
    {
      v37 = BlueFin::GlDbgProxyGlEngineOnResourceRequest;
    }

    else
    {
      v37 = 0;
    }

    if (v45)
    {
      v38 = BlueFin::GlDbgProxyGlEngineOnResourceRelease;
    }

    else
    {
      v38 = 0;
    }

    *(a2 + 9) = v37;
    *(a2 + 10) = v38;
    if (v44)
    {
      v39 = BlueFin::GlDbgProxyGlEngineOnGeofenceStatus;
    }

    else
    {
      v39 = 0;
    }

    if (v43)
    {
      v40 = BlueFin::GlDbgProxyGlEngineOnLHPatchNeeded;
    }

    else
    {
      v40 = 0;
    }

    *(a2 + 32) = v39;
    *(a2 + 33) = v40;
    if (v15)
    {
      v41 = BlueFin::GlDbgProxyGlEngineOnReportMIAdjustmentReqStatus;
    }

    else
    {
      v41 = 0;
    }

    *(a2 + 36) = v41;
  }

  return result;
}

BlueFin::GlDbgProxy *BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlPeTimerMgr *a2)
{
  BlueFin::GlDbgCodec::Rvw(this, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 9);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 3);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 4);
  result = (*(*this + 128))(this);
  if (*(a2 + 4) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 + 24;
    v8 = result + 5928;
    do
    {
      if (*(this + 143))
      {
        v9 = BlueFin::GlDbgProxy::RequestId(v5, *&v7[8 * v6]);
      }

      else
      {
        v9 = 0;
      }

      v13 = v9;
      BlueFin::GlDbgCodec::Rvw(this, &v13);
      v10 = *&v8[8 * v13];
      if (*(this + 143))
      {
        v11 = 0;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        v12 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
        if (!v12)
        {
          DeviceFaultNotify("gldebug_codec.cpp", 6274, "Rvw", "pReq");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 6274, "pReq");
        }

        v10 = v12;
        *(v12 + 16) = 0u;
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        *(v12 + 64) = 0u;
        *(v12 + 80) = 0u;
        *(v12 + 96) = 0u;
        *(v12 + 112) = 0u;
        *(v12 + 128) = 0;
        *v12 = &unk_2A1F0A1D8;
        *(v12 + 8) = v5;
        *&v8[8 * v13] = v12;
      }

      result = BlueFin::GlDbgCodec::Rvw(this, (v10 + 24));
      if (!*(this + 143))
      {
        result = (*(**(v10 + 24) + 104))(*(v10 + 24), v10);
        *&v7[8 * v6] = *(v10 + 24);
      }

      ++v6;
    }

    while (v6 < *(a2 + 4));
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, int *a2)
{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  result = (*(*a1 + 112))(a1);
  if (result <= 0x79 && !*(a1 + 143) && *a2 >= 1)
  {
    ++*a2;
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlMeTrkCvecTapConfig *a2)
{
  v4 = (*(*this + 112))(this);
  v9 = *a2;
  BlueFin::GlDbgCodec::Rvw(this, &v9);
  if (!*(this + 143))
  {
    *a2 = v9;
  }

  BlueFin::GlDbgCodec::Rvw(this, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 5);
  if (v4 >= 0xD)
  {
    BlueFin::GlDbgCodec::Rvw(this, a2 + 6);
    BlueFin::GlDbgCodec::Rvw(this, a2 + 7);
  }

  BlueFin::GlDbgCodec::Rvw(this, a2 + 8);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 9);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 10);
  v8 = 8;
  BlueFin::GlDbgCodec::Rvw(this, &v8);
  result = BlueFin::GlDbgCodec::checkArraySize(this, &v8, 8u);
  if (v8)
  {
    v6 = 0;
    v7 = a2 + 11;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, &v7[v6++]);
    }

    while (v6 < v8);
  }

  return result;
}

uint64_t BlueFin::GlMeTrkCvecTapConfig::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 4) = *(a2 + 4);
  *(result + 8) = *(a2 + 8);
  *(result + 10) = *(a2 + 10);
  for (i = 11; i != 19; ++i)
  {
    *(result + i) = *(a2 + i);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlRequestImplMeas *a2)
{
  BlueFin::GlDbgCodec::Rvw(this, a2);
  v6 = *(a2 + 10) != 0;
  BlueFin::GlDbgCodec::Rvw(this, &v6);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 88);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 89);
  result = BlueFin::GlDbgCodec::Rvw(this, a2 + 23);
  if (!*(this + 143))
  {
    if (v6)
    {
      v5 = BlueFin::GlDbgProxyGlReqOnMeas;
    }

    else
    {
      v5 = 0;
    }

    *(a2 + 10) = v5;
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlRequestImplPos *a2)
{
  BlueFin::GlDbgCodec::Rvw(this, a2);
  BlueFin::GlDbgCodec::Rvw(this, a2 + 20);
  v5 = 4;
  BlueFin::GlDbgCodec::RvwArray(this, a2 + 42, &v5);
  v5 = 7;
  return BlueFin::GlDbgCodec::RvwArray(this, a2 + 46, &v5);
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, __int16 *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, a2);
      ++v8;
      ++a2;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *this, unint64_t *a2, unsigned int *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(this, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(this, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(this, a2);
      ++v8;
      ++a2;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 292;
    }

    while (v8 < *a3);
  }

  return result;
}

void BlueFin::GlDbgCodecBase::InitBase(BlueFin::GlDbgCodecBase *this)
{
  bzero(this + 8, 0x22BuLL);
  *(this + 568) = 0;
  *(this + 141) = 0;
}

char *BlueFin::GlDbgCodecBase::Flush(BlueFin::GlDbgCodecBase *this)
{
  *(this + 560) = 1;
  result = BlueFin::GlDbgCodecBase::Encode(this, 0, 0, 0, 0);
  *(this + 560) = 0;
  return result;
}

uint64_t BlueFin::GlDbgCodecBase::Next(uint64_t this, int a2)
{
  if (*(this + 561) == 1)
  {
    ++*(this + 565);
  }

  if (a2)
  {
    *(this + 28) = *(this + 24);
  }

  else
  {
    v2 = *(this + 28);
    if (v2)
    {
      v3 = v2 == *(this + 24);
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      DeviceFaultNotify("gldebug_codec_base.cpp", 88, "Next", "(m_uiRdDePos == m_uiRdDeLim) || (0 == m_uiRdDePos)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec_base.cpp", 88, "(m_uiRdDePos == m_uiRdDeLim) || (0 == m_uiRdDePos)");
    }
  }

  *(this + 561) = 0;
  return this;
}

uint64_t BlueFin::GlDbgCodecBase::Internal(BlueFin::GlDbgCodecBase *this, const unsigned __int8 *a2, float *a3)
{
  v4 = (a2[1] << 8) | (*a2 << 16);
  v6 = a2[3] | ((a2[2] | (a2[1] << 8) & 0x7FFF) << 8);
  v7 = (v4 >> 15);
  if (!(v4 >> 15))
  {
    LODWORD(result) = -149;
    goto LABEL_7;
  }

  if (v7 != 255)
  {
    LODWORD(result) = v7 - 150;
    v6 |= 0x800000u;
    goto LABEL_7;
  }

  result = 0x7FFFFFFFLL;
  if (!v6)
  {
    v6 = -1;
LABEL_7:
    v5 = *(&__const__ZN7BlueFin14GlDbgCodecBase8InternalEPKhRf_fSigns + ((*a2 >> 5) & 4));
    result = v5 & 0x80000000 | COERCE_UNSIGNED_INT(ldexpf(v6, result)) & 0x7FFFFFFF;
  }

  *a3 = result;
  return result;
}

void BlueFin::GlDbgCodecBase::Internal(BlueFin::GlDbgCodecBase *this, const unsigned __int8 *a2, double *a3)
{
  v4 = *a2;
  v5 = a2[2] | (v4 << 16) | (a2[1] << 8);
  v6 = ((a2[3] << 24) | (a2[4] << 16) | (v5 << 32) | a2[6]) << 8;
  v7 = *(&__const__ZN7BlueFin14GlDbgCodecBase8InternalEPKhRd_dSigns + ((v4 >> 4) & 8));
  v8 = (v5 >> 12) & 0x7FF;
  v9 = v6 & 0xFFFFFFFFFFF00 | (a2[5] << 16) | a2[7];
  if (!v8)
  {
    v11 = -1074;
LABEL_8:
    v10 = v7 & 0x8000000000000000 | COERCE_UNSIGNED_INT64(ldexp(v9, v11)) & 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  if (v8 != 2047)
  {
    v11 = v8 - 1075;
    v9 |= 0x10000000000000uLL;
    goto LABEL_8;
  }

  if (!v9)
  {
    v9 = -1;
    v11 = 0x7FFFFFFF;
    goto LABEL_8;
  }

  v10 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
  *a3 = v10;
}

uint64_t BlueFin::GlDbgCodecBase::SetRecordBuffer(uint64_t this, const unsigned __int8 *a2, int a3)
{
  *(this + 16) = a2;
  *(this + 24) = a3;
  *(this + 28) = 0;
  return this;
}

void *BlueFin::GlDbgCodecBase::SetRecord(void *result, uint64_t a2)
{
  result[2] = 0;
  result[3] = 0;
  result[1] = a2;
  return result;
}

BOOL BlueFin::GlDbgCodecBase::Decode(BlueFin::GlDbgCodecBase *this, unsigned __int8 *__dst, unsigned int a3)
{
  *(this + 561) = 1;
  v4 = *(this + 1);
  if (v4)
  {
    if (BlueFin::GlDbgRecord::GetMsg(v4, __dst, a3) != a3)
    {
      DeviceFaultNotify("gldebug_codec_base.cpp", 317, "Decode", "ulLength == 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec_base.cpp", 317, "ulLength == 0");
    }

    return 1;
  }

  else
  {
    v6 = *(this + 7);
    v7 = *(this + 6) - v6;
    if (v7 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v7;
    }

    v5 = v7 >= a3;
    memcpy(__dst, (*(this + 2) + v6), v8);
    *(this + 7) += v8;
  }

  return v5;
}

uint64_t BlueFin::GlDbgCodecBase::BytesLeft(BlueFin::GlDbgCodecBase *this)
{
  v1 = *(this + 7);
  v2 = (*(this + 6) - v1);
  return (*(this + 12) - v1);
}

uint64_t BlueFin::GlDbgEEFileReader::CorruptionDetected(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1025);
  (*(*this[1] + 32))(this[1], 1);
  v2 = (*(*this[2] + 32))(this[2]);
  v5 = v2;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1025);
  v3 = this[1];
  if ((*(*v3 + 120))(v3))
  {
    BlueFin::GlDbgCodec::Write(v3, &v5);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v2;
}

uint64_t BlueFin::GlDbgEEFileReader::CorruptionDetected(BlueFin::GlDbgCodec **this, _BOOL8 a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1026);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 24))(this[2], a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1026);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgEEFileReader::FromEEFileToGll(BlueFin::GlDbgEEFileReader *this, char *a2, int a3, unsigned int *a4)
{
  v14 = a3;
  v5 = *(this + 1);
  if (a2 && a4)
  {
    BlueFin::GlDbgCodec::WriteStart(v5, 1027);
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v14);
    v8 = *(this + 1);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, a4);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    v9 = (***(this + 2))();
    v13 = v9;
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 1027);
    v10 = *(this + 1);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v13);
    }

    v11 = *(this + 1);
    if ((*(*v11 + 120))(v11))
    {
      BlueFin::GlDbgCodec::Write(v11, a4);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  else
  {
    (*(*v5 + 104))(v5, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_eefilereader.cpp:55", a4);
    return 0xFFFFFFFFLL;
  }

  return v9;
}

uint64_t BlueFin::GlDbgEngine::GlDbgEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  *a1 = &unk_2A1F09758;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 120) = a12;
  *(a1 + 128) = a9;
  *(a1 + 136) = a7;
  *(a1 + 144) = a8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a6;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = a3;
  *(a1 + 280) = a4;
  *(a1 + 288) = a13;
  *(a1 + 296) = a5;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  BlueFin::GlEngineImplStd::GlEngineImplStd(a1 + 368, BlueFin::GlDbgProxyGlEngineOnStart, BlueFin::GlDbgProxyGlEngineOnStop, BlueFin::GlDbgProxyGlEngineOnTimerRq, BlueFin::GlDbgProxyGlEngineOnAsicData, BlueFin::GlDbgProxyGlEngCbOnNvStgRead, BlueFin::GlDbgProxyGlEngCbOnNvStgWrite, BlueFin::GlDbgProxyGlEngCbOnLTOFileRead, BlueFin::GlDbgMemory::Allocate, BlueFin::GlDbgMemory::Deallocate, BlueFin::GlDbgProxyGlEngCbOnEEFileRead, BlueFin::GlDbgProxyGlEngineOnSysLogLine, a14);
  *(a1 + 5304) = 0;
  *(a1 + 5312) = 0;
  *(a1 + 952) = a2;
  if (!*(a1 + 296))
  {
    DeviceFaultNotify("gldebug_engine.cpp", 149, "GlDbgEngine", "m_GlEngineOnTimerRq != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_engine.cpp", 149, "m_GlEngineOnTimerRq != nullptr");
  }

  return a1;
}

void sub_29893679C(_Unwind_Exception *a1)
{
  v1[46] = &unk_2A1F11360;
  v1[133] = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((v1 + 136));
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlDbgEngine::Dispose(BlueFin::GlDbgCodec **this, void (*a2)(void *))
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1540);
  (*(*this[1] + 32))(this[1], 1);
  BlueFin::GlEngineImplStd::Dispose((this + 46), 0);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1540);
  (*(*this[1] + 32))(this[1], 1);
  v3 = this[1];
  v4 = *(BlueFin::GlDbgMemory::m_pInstance + 8);

  return v4(v3);
}

uint64_t BlueFin::GlDbgEngine::PauseRequest(uint64_t a1, BlueFin::GlDbgRequest *this)
{
  v2 = this;
  v4 = *(a1 + 8);
  if (this)
  {
    if (v4 == *(this + 1))
    {
      v11 = BlueFin::GlDbgRequest::Id(this, 0);
      BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1596);
      v5 = *(a1 + 8);
      if ((*(*v5 + 120))(v5))
      {
        BlueFin::GlDbgCodec::Write(v5, &v11);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
      v6 = *(v2 + 24);
      if (v6 && *(v6 + 16) == 12)
      {
        v2 = 1;
        *(v6 + 136) = 1;
      }

      else
      {
        v2 = 0;
      }

      v10 = v2;
      BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1596);
      v7 = *(a1 + 8);
      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v11);
      }

      v8 = *(a1 + 8);
      if ((*(*v8 + 120))(v8))
      {
        BlueFin::GlDbgCodec::Write(v8, &v10);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    }

    else
    {
      (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:383");
      return 0;
    }
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:378");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::ToggleNotchFilterConfiguration(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a3;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1613);
    v7 = *(a1 + 8);
    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v12);
    }

    v11 = a3;
    BlueFin::GlDbgCodec::WriteArray(*(a1 + 8), a2, &v11);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    BlueFin::GlEngineImplStd::ToggleNotchFilterConfiguration((a1 + 368), a2, a3);
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1613);
    v8 = *(**(a1 + 8) + 32);

    return v8();
  }

  else
  {
    v10 = *(*v4 + 104);

    return v10();
  }
}

uint64_t BlueFin::GlDbgEngine::ResumeRequest(uint64_t a1, BlueFin::GlDbgRequest *this, int a3)
{
  v16 = a3;
  v4 = *(a1 + 8);
  if (!this)
  {
    v6 = *(*v4 + 104);
    goto LABEL_5;
  }

  if (v4 != *(this + 1))
  {
    v6 = *(*v4 + 104);
LABEL_5:
    v6();
    return 0;
  }

  v15 = BlueFin::GlDbgRequest::Id(this, 0);
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1597);
  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v15);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v16);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v14 = 0;
  v10 = *(this + 3);
  if (v10 && *(v10 + 16) == 12)
  {
    *(v10 + 136) = 0;
    *(v10 + 116) = a3;
  }

  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1597);
  v11 = *(a1 + 8);
  if ((*(*v11 + 120))(v11))
  {
    BlueFin::GlDbgCodec::Write(v11, &v15);
  }

  v12 = *(a1 + 8);
  if ((*(*v12 + 120))(v12))
  {
    BlueFin::GlDbgCodec::Write(v12, &v14);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::UpdateBreadcrumbOption(uint64_t a1, BlueFin::GlDbgRequest *this, int a3, int a4)
{
  v15 = a4;
  v16 = a3;
  v5 = *(a1 + 8);
  if (!this)
  {
    v6 = *(*v5 + 104);
    goto LABEL_5;
  }

  if (v5 != *(this + 1))
  {
    v6 = *(*v5 + 104);
LABEL_5:
    v6();
    return 0;
  }

  v14 = BlueFin::GlDbgRequest::Id(this, 0);
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1600);
  v7 = *(a1 + 8);
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v14);
  }

  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v16);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v15);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v13 = 0;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1600);
  v10 = *(a1 + 8);
  if ((*(*v10 + 120))(v10))
  {
    BlueFin::GlDbgCodec::Write(v10, &v14);
  }

  v11 = *(a1 + 8);
  if ((*(*v11 + 120))(v11))
  {
    BlueFin::GlDbgCodec::Write(v11, &v13);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::UpdateBreadcrumbMaxLocsToStore(uint64_t a1, BlueFin::GlDbgRequest *this, int a3)
{
  v13 = a3;
  v4 = *(a1 + 8);
  if (!this)
  {
    v5 = *(*v4 + 104);
    goto LABEL_5;
  }

  if (v4 != *(this + 1))
  {
    v5 = *(*v4 + 104);
LABEL_5:
    v5();
    return 0;
  }

  v12 = BlueFin::GlDbgRequest::Id(this, 0);
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1605);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v12);
  }

  v7 = *(a1 + 8);
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v13);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v11 = 0;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1605);
  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v12);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v11);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::UpdateBreadcrumbWakeupDistance(uint64_t a1, BlueFin::GlDbgRequest *this, int a3)
{
  v13 = a3;
  v4 = *(a1 + 8);
  if (!this)
  {
    v5 = *(*v4 + 104);
    goto LABEL_5;
  }

  if (v4 != *(this + 1))
  {
    v5 = *(*v4 + 104);
LABEL_5:
    v5();
    return 0;
  }

  v12 = BlueFin::GlDbgRequest::Id(this, 0);
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1612);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v12);
  }

  v7 = *(a1 + 8);
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v13);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v11 = 0;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1612);
  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v12);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v11);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::BypassLteFilter(BlueFin::GlDbgCodec **this, int a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1628);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  BlueFin::GlEngineImplStd::BypassLteFilter((this + 46), a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1628);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgEngine::SetLteFilter(uint64_t a1, int a2, unsigned int a3)
{
  v11 = a2;
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1635);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v11);
  }

  v7 = *(a1 + 8);
  v10 = a3;
  BlueFin::GlDbgCodec::Write(v7, &v10);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v8 = BlueFin::GlEngineImplStd::SetLteFilter(a1 + 368, a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1635);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v8;
}

uint64_t BlueFin::GlDbgEngine::FlushBreadcrumbs(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1601);
  (*(*this[1] + 32))(this[1], 1);
  BlueFin::GlEngineImplStd::FlushBreadcrumbs((this + 46));
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1601);
  v2 = *(*this[1] + 32);

  return v2();
}

uint64_t BlueFin::GlDbgEngine::ModifyBreadcrumbSelfWakeupTime(BlueFin::GlDbgEngine *this, int a2)
{
  v6 = a2;
  BlueFin::GlDbgCodec::WriteStart(*(this + 1), 1604);
  v3 = *(this + 1);
  if ((*(*v3 + 120))(v3))
  {
    BlueFin::GlDbgCodec::Write(v3, &v6);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  if ((*(this + 400) & 1) == 0)
  {
    BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 121, 100000000, 0);
  }

  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 1604);
  v4 = *(**(this + 1) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgEngine::GetBatchedLocation(BlueFin::GlDbgCodec **this, int a2)
{
  v6 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1619);
  v3 = this[1];
  if ((*(*v3 + 120))(v3))
  {
    BlueFin::GlDbgCodec::Write(v3, &v6);
  }

  (*(*this[1] + 32))(this[1], 1);
  BlueFin::GlEngineImplStd::GetBatchedLocation((this + 46));
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1619);
  v4 = *(*this[1] + 32);

  return v4();
}

uint64_t BlueFin::GlDbgEngine::SetAidMask(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1548);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAidMask(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1548);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:606");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstAcq(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1549);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstAcq(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1549);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:625");
  }

  return v2;
}

{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1550);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstAcq(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1550);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:643");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstAlm(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1551);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstAlm(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1551);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:662");
  }

  return v2;
}

{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1552);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstAlm(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1552);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:681");
  }

  return v2;
}

{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1622);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstAlm(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1622);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:700");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstEph(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1553);
    v13 = a3;
    v7 = *(a1 + 8);
    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v13);
    }

    v8 = *(a1 + 8);
    if ((*(*v8 + 120))(v8))
    {
      *(v8 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v8, a2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v9 = BlueFin::GlEngineImplStd::SetAsstEph((a1 + 368));
    v12 = v9;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1553);
    v10 = *(a1 + 8);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v12);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:719");
    return 0;
  }

  return v9;
}

uint64_t BlueFin::GlDbgEngine::SetAsstEph(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1554);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstEph(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1554);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:741");
  }

  return v2;
}

signed __int8 *BlueFin::GlDbgEngine::SetAsstIono(uint64_t a1, signed __int8 *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1555);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstIono(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1555);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:760");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstTime(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v16 = a4;
  v5 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v5, 1560);
    v9 = *(a1 + 8);
    if ((*(*v9 + 120))(v9))
    {
      *(v9 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v9, a2);
    }

    v10 = *(a1 + 8);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v17);
    }

    v11 = *(a1 + 8);
    if ((*(*v11 + 120))(v11))
    {
      BlueFin::GlDbgCodec::Write(v11, &v16);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v12 = BlueFin::GlEngineImplStd::SetAsstTime(a1 + 368, a2, a3, a4);
    v15 = v12;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1560);
    v13 = *(a1 + 8);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v15);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v5 + 104))(v5, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:860");
    return 0;
  }

  return v12;
}

uint64_t BlueFin::GlDbgEngine::SetAsstUtc(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1561);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstUtc(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1561);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:881");
  }

  return v2;
}

{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1562);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstUtc(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1562);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:900");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstGnssTimeModel(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1563);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstGnssTimeModel(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1563);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:919");
  }

  return v2;
}

signed __int8 *BlueFin::GlDbgEngine::SetAsstGlnsAuxiliaryMsg(uint64_t a1, signed __int8 *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1564);
    BlueFin::GlDbgCodec::Write(*(a1 + 8), v2);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstGlnsAuxiliaryMsg(a1 + 368, v2);
    v7 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1564);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      BlueFin::GlDbgCodec::Write(v5, &v7);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:938");
  }

  return v2;
}

unsigned __int8 *BlueFin::GlDbgEngine::SetAsstGpsAuxiliaryMsg(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1626);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetAsstGpsAuxiliaryMsg(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1626);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:957");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetAsstOscOffset(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v19 = a3;
  v20 = a2;
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1606);
  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v20);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v19);
  }

  if (a4)
  {
    v10 = *(a1 + 8);
    if (!(*(*v10 + 120))(v10))
    {
      goto LABEL_11;
    }

    *(v10 + 143) = 2;
    v11 = v10;
    v12 = a4;
  }

  else
  {
    *v17 = 0;
    v18 = 0;
    v13 = *(a1 + 8);
    if (!(*(*v13 + 120))(v13))
    {
      goto LABEL_11;
    }

    *(v13 + 143) = 2;
    v12 = v17;
    v11 = v13;
  }

  BlueFin::GlDbgCodec::Rvw(v11, v12);
LABEL_11:
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v14 = BlueFin::GlEngineImplStd::SetAsstOscOffset(a1 + 368, a2, a3, a4);
  v17[0] = v14;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1606);
  v15 = *(a1 + 8);
  if ((*(*v15 + 120))(v15))
  {
    BlueFin::GlDbgCodec::Write(v15, v17);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v14;
}

uint64_t BlueFin::GlDbgEngine::SetCbOnAsicDacData(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, char *a2, uint64_t a3))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnAsicDacData)
  {
    *(a1 + 168) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1565);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 680) = BlueFin::GlDbgProxyGlEngineOnAsicDacData;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1565);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnDrControlMemDump(uint64_t result, uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnDrControlMemDump)
  {
    *(result + 184) = a2;
  }

  *(result + 688) = BlueFin::GlDbgProxyGlEngineOnDrControlMemDump;
  return result;
}

uint64_t BlueFin::GlDbgEngine::SetCbOnAsstStatus(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, _BYTE *a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnAsstStatus)
  {
    *(a1 + 192) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1566);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 760) = BlueFin::GlDbgProxyGlEngineOnAsstStatus;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1566);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnFreqUpdate(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, uint64_t a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnFreqUpdate)
  {
    *(a1 + 224) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1567);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 752) = BlueFin::GlDbgProxyGlEngineOnFreqUpdate;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1567);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnRtiFileTimestampReport(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, uint64_t a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngCbOnRtiFileTimestampReport)
  {
    *(a1 + 352) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1631);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 840) = BlueFin::GlDbgProxyGlEngCbOnRtiFileTimestampReport;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1631);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnPwrData(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, double *a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineCbOnPwrData)
  {
    *(a1 + 360) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1632);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 848) = BlueFin::GlDbgProxyGlEngineCbOnPwrData;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1632);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnPPSPlatformTime(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1))
{
  if (a2 != BlueFin::GlDbgProxyGlEngCbOnPPSPlatformTime)
  {
    *(a1 + 152) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1568);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 872) = BlueFin::GlDbgProxyGlEngCbOnPPSPlatformTime;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1568);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnPrecTimerRq(uint64_t a1, uint64_t (*a2)(uint64_t a1))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnPrecTimerRq)
  {
    *(a1 + 232) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1569);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 720) = BlueFin::GlDbgProxyGlEngineOnPrecTimerRq;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1569);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnReady(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnReady)
  {
    *(a1 + 240) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1570);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 696) = BlueFin::GlDbgProxyGlEngineOnReady;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1570);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnResource(uint64_t a1, uint64_t (*a2)(uint64_t a1, unsigned int a2), BlueFin::GlDbgCodec *(*a3)(uint64_t a1, unsigned int a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnResourceRequest && a3 != BlueFin::GlDbgProxyGlEngineOnResourceRelease)
  {
    *(a1 + 248) = a2;
    *(a1 + 256) = a3;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1571);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 704) = BlueFin::GlDbgProxyGlEngineOnResourceRequest;
  *(a1 + 712) = BlueFin::GlDbgProxyGlEngineOnResourceRelease;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1571);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnResponse(uint64_t a1, uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnResponse)
  {
    *(a1 + 264) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1572);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 792) = BlueFin::GlDbgProxyGlEngineOnResponse;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1572);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnGeofenceStatus(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, unsigned int a2, uint64_t a3))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnGeofenceStatus)
  {
    *(a1 + 320) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1592);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 888) = BlueFin::GlDbgProxyGlEngineOnGeofenceStatus;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1592);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnLHPatchNeeded(uint64_t a1, uint64_t (*a2)(uint64_t a1, char *a2, unsigned int *a3))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnLHPatchNeeded)
  {
    *(a1 + 328) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1602);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 896) = BlueFin::GlDbgProxyGlEngineOnLHPatchNeeded;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1602);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnReportMIAdjustmentReqStatus(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, uint64_t a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnReportMIAdjustmentReqStatus)
  {
    *(a1 + 344) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1611);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 920) = BlueFin::GlDbgProxyGlEngineOnReportMIAdjustmentReqStatus;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1611);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnLHPatchLoadComplete(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnLHPatchLoadComplete)
  {
    *(a1 + 336) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1603);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 904) = BlueFin::GlDbgProxyGlEngineOnLHPatchLoadComplete;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1603);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnBurstMode(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, _BOOL8 a2))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnBurstMode)
  {
    *(a1 + 312) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1593);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 736) = BlueFin::GlDbgProxyGlEngineOnBurstMode;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1593);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgEngine::SetCbOnOscReadyForStorage(uint64_t a1, BlueFin::GlDbgCodec *(*a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))
{
  if (a2 != BlueFin::GlDbgProxyGlEngineOnOscReadyForStorage)
  {
    *(a1 + 5312) = a2;
  }

  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1618);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  *(a1 + 936) = BlueFin::GlDbgProxyGlEngineOnOscReadyForStorage;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1618);
  v3 = *(**(a1 + 8) + 32);

  return v3();
}

BOOL BlueFin::GlDbgEngine::SetFixStatus(uint64_t a1, _BOOL8 a2)
{
  fixed = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1578);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, fixed);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    fixed = BlueFin::GlEngineImplStd::SetFixStatus(a1 + 368);
    v8 = fixed;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1578);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1324");
  }

  return fixed;
}

uint64_t BlueFin::GlDbgEngine::SetFlightMode(BlueFin::GlDbgCodec **this, BOOL a2)
{
  v9 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1579);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v9);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = BlueFin::GlEngineImplStd::SetFlightMode((this + 46), a2);
  v8 = v5;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1579);
  v6 = this[1];
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v5;
}

unsigned __int16 *BlueFin::GlDbgEngine::SetPpsPlatformTime(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1580);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetPpsPlatformTime(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1580);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1358");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetPpsSettings(BlueFin::GlDbgCodec **this, BOOL a2, BOOL a3, int a4, unsigned int a5, unsigned int a6)
{
  v25 = a2;
  v24 = a3;
  v22 = a5;
  v23 = a4;
  v21 = a6;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1581);
  v12 = this[1];
  if ((*(*v12 + 120))(v12))
  {
    BlueFin::GlDbgCodec::Write(v12, &v25);
  }

  v13 = this[1];
  if ((*(*v13 + 120))(v13))
  {
    BlueFin::GlDbgCodec::Write(v13, &v24);
  }

  v14 = this[1];
  if ((*(*v14 + 120))(v14))
  {
    BlueFin::GlDbgCodec::Write(v14, &v23);
  }

  v15 = this[1];
  if ((*(*v15 + 120))(v15))
  {
    BlueFin::GlDbgCodec::Write(v15, &v22);
  }

  v16 = this[1];
  if ((*(*v16 + 120))(v16))
  {
    BlueFin::GlDbgCodec::Write(v16, &v21);
  }

  (*(*this[1] + 32))(this[1], 1);
  v17 = BlueFin::GlEngineImplStd::SetPpsSettings((this + 46), a2, a3, a4, a5, a6);
  v20 = v17;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1581);
  v18 = this[1];
  if ((*(*v18 + 120))(v18))
  {
    BlueFin::GlDbgCodec::Write(v18, &v20);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v17;
}

uint64_t BlueFin::GlDbgEngine::SetRealTimeIntegrity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1582);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetRealTimeIntegrity(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1582);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1396");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetGeofencePauseTime(BlueFin::GlDbgCodec **this, unsigned int a2, unsigned int a3, __int16 a4)
{
  v16 = a3;
  v17 = a2;
  v15 = a4;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1591);
  v8 = this[1];
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v17);
  }

  v9 = this[1];
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v16);
  }

  v10 = this[1];
  if ((*(*v10 + 120))(v10))
  {
    BlueFin::GlDbgCodec::Write(v10, &v15);
  }

  (*(*this[1] + 32))(this[1], 1);
  v11 = BlueFin::GlEngineImplStd::SetGeofencePauseTime((this + 46), a2, a3, a4);
  v14 = v11;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1591);
  v12 = this[1];
  if ((*(*v12 + 120))(v12))
  {
    BlueFin::GlDbgCodec::Write(v12, &v14);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v11;
}

uint64_t BlueFin::GlDbgEngine::SetSensConfig(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1583);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, v2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v2 = BlueFin::GlEngineImplStd::SetSensConfig(a1 + 368, v2);
    v8 = v2;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1583);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1451");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::SetDgpsData(BlueFin::GlDbgEngine *this, char *a2, __int16 a3)
{
  v11 = a3;
  v4 = *(this + 1);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 1594);
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v11);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    v7 = BlueFin::GlEngineImplStd::SetDgpsData((this + 368), a2, a3);
    v10 = v7;
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 1594);
    v8 = *(this + 1);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v10);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1485");
    return 0;
  }

  return v7;
}

uint64_t BlueFin::GlDbgEngine::SetGyroTemp(BlueFin::GlDbgCodec **this, double a2, double a3)
{
  v12 = a3;
  v13 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1595);
  v6 = this[1];
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v13);
  }

  v7 = this[1];
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v12);
  }

  (*(*this[1] + 32))(this[1], 1);
  v8 = BlueFin::GlEngineImplStd::SetGyroTemp((this + 46), a2, a3);
  v11 = v8;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1595);
  v9 = this[1];
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v11);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v8;
}

uint64_t BlueFin::GlDbgEngine::SetWlanInfo(uint64_t a1, uint64_t a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1598);
  v4 = *(a1 + 8);
  if ((*(*v4 + 120))(v4))
  {
    *(v4 + 143) = 2;
    BlueFin::GlDbgCodec::Rvw(v4, a2);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v5 = BlueFin::GlEngineImplStd::SetWlanInfo(a1 + 368, a2);
  v8 = v5;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1598);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v8);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v5;
}

uint64_t BlueFin::GlDbgEngine::SetWlanNotify(uint64_t a1, uint64_t a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1599);
  v4 = *(a1 + 8);
  if ((*(*v4 + 120))(v4))
  {
    *(v4 + 143) = 2;
    BlueFin::GlDbgCodec::Rvw(v4, a2);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v5 = BlueFin::GlEngineImplStd::SetWlanNotify(a1 + 368, a2);
  v8 = v5;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1599);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v8);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v5;
}

uint64_t BlueFin::GlDbgEngine::StopAllRequests(BlueFin::GlDbgCodec **this, BOOL a2)
{
  v9 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1586);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v9);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = BlueFin::GlEngineImplStd::StopAllRequests((this + 46), a2);
  v8 = v5;
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1586);
  v6 = this[1];
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  return v5;
}

BlueFin::GlDbgRequest *BlueFin::GlDbgEngine::StopRequest(uint64_t a1, BlueFin::GlDbgRequest *this)
{
  v2 = this;
  v4 = *(a1 + 8);
  if (this)
  {
    if (v4 == *(this + 1))
    {
      v10 = BlueFin::GlDbgRequest::Id(this, 0);
      BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1587);
      v5 = *(a1 + 8);
      if ((*(*v5 + 120))(v5))
      {
        BlueFin::GlDbgCodec::Write(v5, &v10);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
      v2 = BlueFin::GlEngineImplStd::StopRequest(a1 + 368, *(v2 + 3));
      v9 = v2;
      BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1587);
      v6 = *(a1 + 8);
      if ((*(*v6 + 120))(v6))
      {
        BlueFin::GlDbgCodec::Write(v6, &v10);
      }

      v7 = *(a1 + 8);
      if ((*(*v7 + 120))(v7))
      {
        BlueFin::GlDbgCodec::Write(v7, &v9);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    }

    else
    {
      (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1629");
      return 0;
    }
  }

  else
  {
    (*(*v4 + 104))(v4, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:1624");
  }

  return v2;
}

uint64_t BlueFin::GlDbgEngine::Ready(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1609);
  (*(*this[1] + 32))(this[1], 1);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1609);
  v2 = *(*this[1] + 32);

  return v2();
}

uint64_t BlueFin::GlDbgEngine::WriteNvMem(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1589);
  (*(*this[1] + 32))(this[1], 1);
  v4 = 0;
  BlueFin::GlEngineImplStd::WriteNvMem((this + 46));
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1589);
  v2 = this[1];
  if ((*(*v2 + 120))(v2))
  {
    BlueFin::GlDbgCodec::Write(v2, &v4);
  }

  (*(*this[1] + 32))(this[1], 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::NotifyCurrentMachTimeSec(BlueFin::GlDbgEngine *this, int a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(*(this + 1), 1620);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  if (*(this + 400) == 1)
  {
    *(*(this + 49) + 125892) = a2;
  }

  else
  {
    BlueFin::GlPeTimerMgr::UpdateExpirationTime(this + 121, 100000000, 0);
  }

  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 1620);
  v5 = *(**(this + 1) + 32);

  return v5();
}

BlueFin::GlFormat *BlueFin::GlDbgEngine::ReportDump(BlueFin::GlDbgCodec **this)
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 1621);
  (*(*this[1] + 32))(this[1], 1);
  v5 = BlueFin::GlEngineImplStd::ReportDump((this + 46), v2, v3, v4);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1621);
  v7 = strlen(v5);
  BlueFin::GlDbgCodec::WriteArray(this[1], v5, &v7);
  (*(*this[1] + 32))(this[1], 1);
  return v5;
}

uint64_t BlueFin::GlDbgEngine::GetSatelliteOrbitInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1630);
  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v8 = 0;
  BlueFin::GlEngineImplStd::GetSatelliteOrbitInfo(a1 + 368, a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1630);
  BlueFin::GlDbgCodec::WriteArray(*(a1 + 8), a2, &v8);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return 0;
}

uint64_t BlueFin::GlDbgEngine::GetRtcAnalyticsInfo(uint64_t a1, uint64_t a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1647);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  RtcAnalyticsInfo = BlueFin::GlEngineImplStd::GetRtcAnalyticsInfo(a1 + 368, a2);
  v8 = RtcAnalyticsInfo;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1647);
  v5 = *(a1 + 8);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  v6 = *(a1 + 8);
  if ((*(*v6 + 120))(v6))
  {
    *(v6 + 143) = 2;
    BlueFin::GlDbgCodec::Rvw(v6, a2);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return RtcAnalyticsInfo;
}

uint64_t BlueFin::GlDbgEngine::SetBlankingConfigOnTheFly(uint64_t a1, int *a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 1636);
    v5 = *(a1 + 8);
    *(v5 + 143) = 2;
    v11 = a2[1];
    BlueFin::GlDbgCodec::Rvw(v5, &v11);
    if (!*(v5 + 143))
    {
      a2[1] = v11;
    }

    v6 = *(a1 + 8);
    *(v6 + 143) = 2;
    v12 = *a2;
    BlueFin::GlDbgCodec::Rvw(v6, &v12);
    if (!*(v6 + 143))
    {
      *a2 = v12;
    }

    v7 = *(a1 + 8);
    *(v7 + 143) = 2;
    v13 = a2[2];
    BlueFin::GlDbgCodec::Rvw(v7, &v13);
    if (!*(v7 + 143))
    {
      a2[2] = v13;
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    BlueFin::GlEngineImplStd::SetBlankingConfigOnTheFly((a1 + 368), a2);
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1636);
    v8 = *(**(a1 + 8) + 32);

    return v8();
  }

  else
  {
    v10 = *(*v3 + 104);

    return v10();
  }
}

uint64_t BlueFin::GlDbgEngine::SetRfLoss_dB_Ap(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1640);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = this[47];
  if (v5)
  {
    (*(*v5 + 64))(v5, a2);
  }

  BlueFin::GlDbgCodec::WriteFinal(this[1], 1640);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgEngine::SetRfLoss_dB_Ap_L5(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1641);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = this[47];
  if (v5)
  {
    (*(*v5 + 72))(v5, a2);
  }

  BlueFin::GlDbgCodec::WriteFinal(this[1], 1641);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgEngine::SetRfLoss_dB_Cp(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1642);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = this[47];
  if (v5)
  {
    (*(*v5 + 80))(v5, a2);
  }

  BlueFin::GlDbgCodec::WriteFinal(this[1], 1642);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgEngine::SetRfLoss_dB_Cp_L5(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1643);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  (*(*this[1] + 32))(this[1], 1);
  v5 = this[47];
  if (v5)
  {
    (*(*v5 + 88))(v5, a2);
  }

  BlueFin::GlDbgCodec::WriteFinal(this[1], 1643);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgEngine::SetL5HardwareDelayInMeters(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1644);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  v5 = (*(*this[1] + 32))(this[1], 1);
  v5.n128_f32[0] = a2;
  BlueFin::GlEngineImplStd::SetL5HardwareDelayInMeters(this + 46, v5);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1644);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgEngine::SetL5DeltaHardwareDelayInMeters(BlueFin::GlDbgCodec **this, float a2)
{
  v8 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 1645);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v8);
  }

  v5 = (*(*this[1] + 32))(this[1], 1);
  v5.n128_f32[0] = a2;
  BlueFin::GlEngineImplStd::SetL5DeltaHardwareDelayInMeters(this + 46, v5);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 1645);
  v6 = *(*this[1] + 32);

  return v6();
}

void BlueFin::GlDbgEngine::~GlDbgEngine(BlueFin::GlDbgEngine *this)
{
  *this = &unk_2A1F09758;
  *(this + 46) = &unk_2A1F11360;
  *(this + 133) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 1088));
}

{
  *this = &unk_2A1F09758;
  *(this + 46) = &unk_2A1F11360;
  *(this + 133) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 1088));

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlEngineDebug::Instance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, unsigned __int8 a15)
{
  result = BlueFin::GlEngineDebug::m_pInstance;
  if (BlueFin::GlEngineDebug::m_pInstance)
  {
    return result;
  }

  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v24 = 1;
  }

  else
  {
    v24 = a8 == 0;
  }

  if (!v24 && a9 != 0)
  {
    v28 = a8(16);
    BlueFin::GlDbgMemory::m_pInstance = v28;
    v26 = a8;
    if (v28)
    {
      *v28 = a8;
      v28[1] = a9;
      v26 = a8;
    }

    goto LABEL_14;
  }

  v26 = a8;
  if (a8)
  {
LABEL_14:
    v27 = v26(7000);
    goto LABEL_15;
  }

  v27 = (*BlueFin::GlDbgMemory::m_pInstance)(7000);
LABEL_15:
  if (v27)
  {
    v29 = v27;
    memset(v27, 129, 0x1B58uLL);
    if (a12 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = a12;
    }

    v31 = BlueFin::GlDbgProxy::GlDbgProxy(v29, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v30);
    BlueFin::GlEngineDebug::m_pInstance = v29 + 608;
    *(v29 + 624) = a13;
    BlueFin::GlDbgProxy::DetermineWritable(v31, a15);
  }

  return BlueFin::GlEngineDebug::m_pInstance;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_Fixes(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  v14[47] = *MEMORY[0x29EDCA608];
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  if (v5 > 0x20)
  {
    v11 = "numFixes <= _DIM(otGeofenceFixes)";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2193, "Handle_GeoRpt_Fixes", "numFixes <= _DIM(otGeofenceFixes)");
    v12 = 2193;
    goto LABEL_9;
  }

  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = v14;
    do
    {
      *(v8 - 2) = BlueFin::GlStream::GetU32(a2);
      *(v8 - 1) = BlueFin::GlStream::GetF32(a2);
      *v8 = BlueFin::GlStream::GetF32(a2);
      v8 += 3;
      --v7;
    }

    while (v7);
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v11 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2200, "Handle_GeoRpt_Fixes", "otStream.GetAvailableSize() == 0");
    v12 = 2200;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v12, v11);
  }

  result = (*(**(*(this + 1) + 17104) + 16))(*(*(this + 1) + 17104), U08, v6, v13);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_AreaTriggered(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v12[0] = BlueFin::GlStream::GetU32(a2);
  v12[1] = BlueFin::GlStream::GetF32(a2);
  v12[2] = BlueFin::GlStream::GetF32(a2);
  v12[3] = BlueFin::GlStream::GetF32(a2);
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = U08;
  if (U08)
  {
    v6 = U08;
    v7 = v14;
    v8 = U08;
    do
    {
      *v7++ = BlueFin::GlStream::GetU08(a2);
      --v8;
    }

    while (v8);
    v9 = v13;
    do
    {
      *v9++ = BlueFin::GlStream::GetU08(a2);
      --v6;
    }

    while (v6);
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2242, "Handle_GeoRpt_AreaTriggered", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 2242, "otStream.GetAvailableSize() == 0");
  }

  result = (*(**(*(this + 1) + 17104) + 40))(*(*(this + 1) + 17104), v12, v5, v14, v13);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_InternalState(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U32 = BlueFin::GlStream::GetU32(a2);
  U08 = BlueFin::GlStream::GetU08(a2);
  U16 = BlueFin::GlStream::GetU16(a2);
  v8 = BlueFin::GlStream::GetU32(a2);
  F32 = BlueFin::GlStream::GetF32(a2);
  v10 = BlueFin::GlStream::GetF32(a2);
  v11 = BlueFin::GlStream::GetF32(a2);
  v12 = BlueFin::GlStream::GetU32(a2);
  v13 = BlueFin::GlStream::GetF32(a2);
  v14 = BlueFin::GlStream::GetF32(a2);
  v15 = BlueFin::GlStream::GetF32(a2);
  v16 = BlueFin::GlStream::GetF32(a2);
  v17 = BlueFin::GlStream::GetF32(a2);
  v18 = BlueFin::GlStream::GetU32(a2);
  v19 = BlueFin::GlStream::GetU32(a2);
  v20 = BlueFin::GlStream::GetU32(a2);
  v21 = BlueFin::GlStream::GetU16(a2);
  v22 = BlueFin::GlStream::GetU16(a2);
  v23 = BlueFin::GlStream::GetU16(a2);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2270, "Handle_GeoRpt_InternalState", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 2270, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17104) + 24))(*(*(this + 1) + 17104), &U32);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_DebugMsg(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  Str = BlueFin::GlStream::GetStr(a2, v5);
  if (!Str)
  {
    v9 = "sStringDecoded";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2214, "Handle_GeoRpt_DebugMsg", "sStringDecoded");
    v10 = 2214;
    goto LABEL_6;
  }

  memcpy(__dst, Str, v5);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v9 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2217, "Handle_GeoRpt_DebugMsg", "otStream.GetAvailableSize() == 0");
    v10 = 2217;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v10, v9);
  }

  result = (*(**(*(this + 1) + 17104) + 48))(*(*(this + 1) + 17104), U08, v5, __dst);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_GeoRpt_RawRpcs(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  U16 = BlueFin::GlStream::GetU16(a2);
  Str = BlueFin::GlStream::GetStr(a2, U16);
  if (!Str)
  {
    v10 = "sStringDecoded";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2286, "Handle_GeoRpt_RawRpcs", "sStringDecoded");
    v11 = 2286;
    goto LABEL_6;
  }

  memcpy(__dst, Str, U16);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v10 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2289, "Handle_GeoRpt_RawRpcs", "otStream.GetAvailableSize() == 0");
    v11 = 2289;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v11, v10);
  }

  result = (*(**(*(this + 1) + 17104) + 64))(*(*(this + 1) + 17104), U08, v5, U16, __dst);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridMsmt(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v3 = BlueFin::GlStream::GetU08(a2);
  v18[0] = v3 & 1;
  v18[1] = (v3 >> 1) & 0xF;
  v4 = v3 >> 5;
  v18[2] = v4;
  v5 = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridMsmt(BlueFin::GlStream &)::lut_type_to_len[v4];
  v18[3] = BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridMsmt(BlueFin::GlStream &)::lut_type_to_len[v4];
  v6 = BlueFin::GlStream::GetU08(a2);
  v18[4] = v6;
  v7 = BlueFin::GlStream::GetU08(a2);
  v18[5] = 5 * (v7 & 7);
  v18[6] = (v7 & 0x10) != 0;
  v19 = (v7 >> 5) & 0xFE0F | (16 * (BlueFin::GlStream::GetU16(a2) & 0x1F));
  if (v6)
  {
    v8 = 0;
    v9 = v21;
    do
    {
      U16 = BlueFin::GlStream::GetU16(a2);
      v11 = &v20[48 * v8];
      *v11 = U16 & 0x1F;
      v11[1] = (U16 >> 5) & 0x1F;
      *(v11 + 1) = BlueFin::GlStream::GetS32(a2);
      *(v11 + 2) = BlueFin::GlStream::GetS32(a2);
      v12 = v9;
      v13 = v5;
      do
      {
        v14 = BlueFin::GlStream::GetU16(a2);
        *v12++ = ((v14 << 16) & 0xFFE00000) >> v14;
        --v13;
      }

      while (v13);
      if (v4 != 4)
      {
        bzero(&v21[12 * v8 + v5], 4 * (8 - v5) + 4);
      }

      ++v8;
      v9 += 12;
    }

    while (v8 != v6);
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1173, "Handle_SatRpt_TrkGridMsmt", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 1173, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17072) + 88))(*(*(this + 1) + 17072), U08, v18);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_Search(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  *&v61[2611] = *MEMORY[0x29EDCA608];
  U08 = BlueFin::GlStream::GetU08(a2);
  v54 = 16843009;
  if (U08 < 0)
  {
    v43 = 1;
    v4 = 1;
  }

  else
  {
    v4 = BlueFin::GlStream::GetU08(a2);
    LOBYTE(v54) = v4;
    v43 = BlueFin::GlStream::GetU08(a2);
    BYTE2(v54) = v43;
  }

  v40 = U08;
  v5 = 0;
  v6 = 0;
  v56 = BlueFin::GlStream::GetU08(a2);
  v7 = &v59;
  v8 = &v60;
  v9 = v61;
  v51 = &v61[1];
  v52 = 32;
  LOBYTE(v45) = 1;
  v42 = 1;
  do
  {
    v48 = v9;
    v10 = &v58[108 * v5];
    U16 = BlueFin::GlStream::GetU16(a2);
    v12 = U16;
    if (!v5)
    {
      v6 = (U16 >> 9) & 1;
    }

    if ((U16 & 0x40) != 0)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if ((U16 & 0x100) != 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v10->i8[0] = (U16 & 2) != 0;
    v10->i8[1] = v14;
    v50 = v8;
    v49 = (U16 >> 1) & 1;
    if ((U16 & 0x20) != 0)
    {
      if (!v5)
      {
        if (v4 >= 0xB0u)
        {
          v38 = "search_info.number_of_bit_phases <= MAX_SRCH_BIT_PHASES";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1548, "Handle_SatRpt_Search", "search_info.number_of_bit_phases <= MAX_SRCH_BIT_PHASES");
          v39 = 1548;
          goto LABEL_61;
        }

        if ((v43 & 0xFu) > (v4 & 0xFu))
        {
          v38 = "search_info.peak_bin_id <= search_info.number_of_bins";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1549, "Handle_SatRpt_Search", "search_info.peak_bin_id <= search_info.number_of_bins");
          v39 = 1549;
          goto LABEL_61;
        }

        v45 = v4 >> 4;
        if (v43 >> 4 > v45)
        {
          v38 = "search_info.peak_bit_phase_id <= search_info.number_of_bit_phases";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1550, "Handle_SatRpt_Search", "search_info.peak_bit_phase_id <= search_info.number_of_bit_phases");
          v39 = 1550;
          goto LABEL_61;
        }

        v42 = v43 >> 4;
        v43 &= 0xFu;
        v4 &= 0xFu;
      }

      v17 = BlueFin::GlStream::GetU08(a2);
      v10->i8[5] = v17 >> 4;
      v10->i8[4] = v17 & 0xF;
      if ((v17 & 0xF) > v4)
      {
        v38 = "satrpt_search[corvec_id].bin_id <= search_info.number_of_bins";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1555, "Handle_SatRpt_Search", "satrpt_search[corvec_id].bin_id <= search_info.number_of_bins");
        v39 = 1555;
        goto LABEL_61;
      }

      v15 = v6;
      if (v17 >> 4 > v45)
      {
        v38 = "satrpt_search[corvec_id].bit_phase_id <= search_info.number_of_bit_phases";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1556, "Handle_SatRpt_Search", "satrpt_search[corvec_id].bit_phase_id <= search_info.number_of_bit_phases");
        v39 = 1556;
        goto LABEL_61;
      }
    }

    else
    {
      v15 = v6;
      if ((U16 & 0x10) != 0)
      {
        v16 = BlueFin::GlStream::GetU08(a2);
        v10->i8[4] = v16;
        v10->i8[5] = 1;
        if (v16 > v4)
        {
          v38 = "satrpt_search[corvec_id].bin_id <= search_info.number_of_bins";
          DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1562, "Handle_SatRpt_Search", "satrpt_search[corvec_id].bin_id <= search_info.number_of_bins");
          v39 = 1562;
          goto LABEL_61;
        }
      }

      else
      {
        v10->i16[2] = 257;
      }
    }

    v46 = (v12 >> 4) & 3;
    v47 = v4;
    v44 = v12;
    v10[1].i16[0] = BlueFin::GlStream::GetU16(a2);
    v10[1].i16[1] = BlueFin::GlStream::GetU16(a2);
    v10[1].i16[2] = BlueFin::GlStream::GetU16(a2);
    v10[1].i8[6] = BlueFin::GlStream::GetU08(a2);
    v18 = BlueFin::GlStream::GetU16(a2);
    v19 = BlueFin::GlStream::GetU16(a2);
    v20 = 0;
    v10[2] = vshl_u32((*&vshl_n_s32(__PAIR64__(v19, v18), 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(__PAIR64__(v19, v18), 0x1F0000001FLL)));
    if (v12)
    {
      v21 = v14;
    }

    else
    {
      v21 = 1;
    }

    do
    {
      *(v7 + v20++) = BlueFin::GlStream::GetS16(a2);
    }

    while (v21 != v20);
    v22 = v52;
    do
    {
      v23 = BlueFin::GlStream::GetU16(a2);
      *&v58[v22] = ((v23 << 16) & 0xFFE00000) >> v23;
      v22 += 4;
      --v21;
    }

    while (v21);
    v6 = v15;
    if (v49)
    {
      v24 = BlueFin::GlStream::GetU08(a2);
      v25 = v24 & 0x7F;
      v10[6].i8[0] = v24 & 0x7F;
      if ((v24 & 0x80) == 0)
      {
        v38 = "(ucNbAltPksAnd14BitDelays & HAS_14BIT_DELAY_FIELD_BIT_MASK) == HAS_14BIT_DELAY_FIELD_BIT_MASK";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1592, "Handle_SatRpt_Search", "(ucNbAltPksAnd14BitDelays & HAS_14BIT_DELAY_FIELD_BIT_MASK) == HAS_14BIT_DELAY_FIELD_BIT_MASK");
        v39 = 1592;
        goto LABEL_61;
      }

      if ((v24 & 0x7F) != 0)
      {
        v26 = v50;
        do
        {
          *v26 = BlueFin::GlStream::GetU32(a2);
          v26 = (v26 + 4);
          --v25;
        }

        while (v25);
      }

      v10[10].i16[2] = BlueFin::GlStream::GetU16(a2);
    }

    if (v12)
    {
      v28 = BlueFin::GlStream::GetU08(a2);
      v10[11].i8[0] = v28;
      v29 = v28 & 0x1F;
      v27 = v48;
      if (v29 >= 8)
      {
        v38 = "ucNumSamp <= SATRPT_SCV_NSAMP";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1606, "Handle_SatRpt_Search", "ucNumSamp <= SATRPT_SCV_NSAMP");
        v39 = 1606;
        goto LABEL_61;
      }

      v30 = v29 + 1;
      v10->i8[3] = v29 + 1;
      v31 = v48;
      v32 = v30;
      do
      {
        *v31 = BlueFin::GlStream::GetU08(a2);
        v31 += 2;
        --v32;
      }

      while (v32);
      v33 = v51;
      do
      {
        *v33 = BlueFin::GlStream::GetBits(a2, 4u);
        v33 += 2;
        --v30;
      }

      while (v30);
    }

    else
    {
      v10->i8[3] = 1;
      v10[11].i8[1] = BlueFin::GlStream::GetU08(a2);
      v10[11].i8[2] = BlueFin::GlStream::GetU08(a2);
      v27 = v48;
    }

    v4 = v47;
    v34 = v45 + v47 - 1;
    if (v46 != 2)
    {
      v34 = 1;
    }

    if (v46 == 1)
    {
      v34 = v47;
    }

    if (v46)
    {
      v35 = v34;
    }

    else
    {
      v35 = 1;
    }

    ++v5;
    v7 += 27;
    v8 = (v50 + 108);
    v9 = v27 + 108;
    v51 += 108;
    v52 += 108;
  }

  while (v5 < v35);
  v55 = (v44 & 4) != 0;
  v57 = v6;
  v53[0] = v46;
  LOBYTE(v54) = v47;
  BYTE1(v54) = v45;
  BYTE2(v54) = v43;
  HIBYTE(v54) = v42;
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v38 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1637, "Handle_SatRpt_Search", "otStream.GetAvailableSize() == 0");
    v39 = 1637;
LABEL_61:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v39, v38);
  }

  v53[2] = v35;
  result = (*(**(*(this + 1) + 17072) + 24))(*(*(this + 1) + 17072), v40 & 0x7F, v53, v58);
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_EramDump(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  result = BlueFin::GlStream::GetU08(a2);
  v6 = result;
  if ((result & 0x80) != 0)
  {
    v8 = BlueFin::GlStream::GetU08(a2);
    result = BlueFin::GlStream::GetU08(a2);
    v7 = result;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    v34 = v7;
    v35 = v8;
    v15 = this;
    v16 = U08;
    v17 = BlueFin::GlStream::GetU08(a2);
    v36 = v17;
    v37 = BlueFin::GlStream::GetU08(a2);
    U16 = BlueFin::GlStream::GetU16(a2);
    if (v17 >= 4)
    {
      v18 = 0;
      v19 = v17 >> 2;
      v20 = &v36;
      v21 = v41;
      do
      {
        v22 = -8;
        v23 = v21;
        do
        {
          *(v23 - 62) = BlueFin::GlStream::GetS08(a2);
          *v23-- = BlueFin::GlStream::GetS08(a2);
        }

        while (!__CFADD__(v22++, 1));
        v25 = v20;
        for (i = 16; i > 8; --i)
        {
          v25[19] = BlueFin::GlStream::GetS08(a2);
          v25[81] = BlueFin::GlStream::GetS08(a2);
          --v25;
        }

        v27 = 0;
        do
        {
          v20[v27 + 27] = BlueFin::GlStream::GetS08(a2);
          v20[v27 + 89] = BlueFin::GlStream::GetS08(a2);
          v28 = v27 + 23;
          --v27;
        }

        while (v28 > 0x10);
        BlueFin::GlStream::GetU16(a2);
        v29 = 0;
        do
        {
          v20[v29 + 34] = BlueFin::GlStream::GetS08(a2);
          v20[v29 + 96] = BlueFin::GlStream::GetS08(a2);
          v30 = v29 + 30;
          --v29;
        }

        while (v30 > 0x18);
        ++v18;
        v21 += 31;
        v20 += 31;
      }

      while (v18 != v19);
    }

    U08 = v16;
    this = v15;
    v7 = v34;
    v8 = v35;
    if (BlueFin::GlStream::GetAvailableSize(a2))
    {
      v13 = "otStream.GetAvailableSize() == 0";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1700, "Handle_SatRpt_EramDump", "otStream.GetAvailableSize() == 0");
      v14 = 1700;
      goto LABEL_40;
    }

    return (*(**(*(this + 1) + 17072) + 32))(*(*(this + 1) + 17072), U08, v8, v7, v6, &v36);
  }

  v7 = 0;
  v8 = 0;
  if ((result & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      return result;
    }

    v9 = 0;
    v10 = &v36;
    do
    {
      *(&v36 + 16 * v9) = BlueFin::GlStream::GetU08(a2);
      v11 = 15;
      do
      {
        v10[v11--] = BlueFin::GlStream::GetU08(a2);
      }

      while (v11);
      ++v9;
      v10 += 16;
    }

    while (v9 != 8);
    *&v41[55] = BlueFin::GlStream::GetU16(a2);
    v12 = BlueFin::GlStream::GetU08(a2);
    v41[57] = v12;
    v41[58] = BlueFin::GlStream::GetU08(a2);
    if (v12 == 8)
    {
      if (BlueFin::GlStream::GetAvailableSize(a2))
      {
        v13 = "otStream.GetAvailableSize() == 0";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1751, "Handle_SatRpt_EramDump", "otStream.GetAvailableSize() == 0");
        v14 = 1751;
        goto LABEL_40;
      }

      return (*(**(*(this + 1) + 17072) + 32))(*(*(this + 1) + 17072), U08, v8, v7, v6, &v36);
    }

    v13 = "stDump.acq.num_qwords == _DIM(stDump.acq.qword)";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1750, "Handle_SatRpt_EramDump", "stDump.acq.num_qwords == _DIM(stDump.acq.qword)");
    v14 = 1750;
LABEL_40:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v14, v13);
  }

  v36 = 1;
  U16 = BlueFin::GlStream::GetU16(a2);
  LODWORD(v31) = BlueFin::GlStream::GetU08(a2);
  v37 = v31;
  v32 = BlueFin::GlStream::GetU08(a2);
  v39 = v32;
  U32 = BlueFin::GlStream::GetU32(a2);
  if (v31 > 0xFA)
  {
    v13 = "stDump.trk.nbSmp <= _DIM(stDump.trk.sample)";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1711, "Handle_SatRpt_EramDump", "stDump.trk.nbSmp <= _DIM(stDump.trk.sample)");
    v14 = 1711;
    goto LABEL_40;
  }

  if (v31)
  {
    v31 = v31;
    v33 = &v36;
    do
    {
      if (v32 == 1)
      {
        *(v33 + 253) = BlueFin::GlStream::GetU32(a2);
      }

      else
      {
        v33[12] = BlueFin::GlStream::GetU08(a2);
        v33[13] = BlueFin::GlStream::GetU08(a2);
        v33[14] = BlueFin::GlStream::GetU08(a2);
        v33[15] = BlueFin::GlStream::GetU08(a2);
      }

      v33 += 4;
      --v31;
    }

    while (v31);
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v13 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1727, "Handle_SatRpt_EramDump", "otStream.GetAvailableSize() == 0");
    v14 = 1727;
    goto LABEL_40;
  }

  return (*(**(*(this + 1) + 17072) + 32))(*(*(this + 1) + 17072), U08, v8, v7, v6, &v36);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_SubTrkMsmt(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  memset(v51, 0, 220);
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  v44 = 0;
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v6 = BlueFin::GlStream::GetU08(a2);
  v7 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v6);
  v61[0] = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v6);
  v62 = 1;
  v63 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
  Bits = BlueFin::GlStream::GetBits(a2, 4u);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = Bits & 0xF;
  v66 = Bits & 0xF;
  if ((v5 & 0x10) == 0)
  {
    v64 = BlueFin::GlStream::GetU08(a2);
    v65 = -1;
    U16 = BlueFin::GlStream::GetU16(a2);
    DWORD2(v51[0]) = 0;
    *&v51[0] = ((U16 << 16) & 0xFFE00000) >> U16;
    WORD4(v51[13]) = BlueFin::GlStream::GetU16(a2);
    v14 = (*(**(*(this + 1) + 17032) + 824))();
    v15 = BlueFin::GlStream::GetU16(a2);
    if (v14 < 0x85)
    {
      if (v15 >= 0)
      {
        v16 = ((v15 << 16) & 0x7FE00000u) >> v15;
      }

      else
      {
        v16 = -(((v15 << 16) & 0x7FE00000u) >> v15);
      }
    }

    else
    {
      v16 = v15 << 16;
    }

    LODWORD(v49) = v16;
    v17 = BlueFin::GlStream::GetU16(a2);
    if ((v17 & 0x8000u) == 0)
    {
      v18 = ((v17 << 16) & 0x7FE00000u) >> v17;
    }

    else
    {
      v18 = -(((v17 << 16) & 0x7FE00000u) >> v17);
    }

    HIDWORD(v49) = v18;
    v19 = BlueFin::GlStream::GetU16(a2);
    LODWORD(v50) = ((v19 << 16) & 0xFFE00000) >> v19;
    v20 = (*(**(*(this + 1) + 17032) + 824))();
    v21 = BlueFin::GlStream::GetU16(a2);
    if (v20 < 0x85)
    {
      if (v21 >= 0)
      {
        v22 = ((v21 << 16) & 0x7FE00000u) >> v21;
      }

      else
      {
        v22 = -(((v21 << 16) & 0x7FE00000u) >> v21);
      }
    }

    else
    {
      v22 = v21 << 16;
    }

    LODWORD(v47) = v22;
    v23 = BlueFin::GlStream::GetU16(a2);
    if ((v23 & 0x8000u) == 0)
    {
      v24 = ((v23 << 16) & 0x7FE00000u) >> v23;
    }

    else
    {
      v24 = -(((v23 << 16) & 0x7FE00000u) >> v23);
    }

    HIDWORD(v47) = v24;
    LOWORD(v48) = BlueFin::GlStream::GetBits(a2, 6u);
    BlueFin::GlStream::GetBits(a2, 2u);
    BYTE4(v50) = BlueFin::GlStream::GetBits(a2, 1u);
    BYTE2(v48) = BlueFin::GlStream::GetBits(a2, 1u);
    HIBYTE(v48) = (2 * BlueFin::GlStream::GetBits(a2, 2u)) | 1;
    BlueFin::GlStream::GetBits(a2, 4u);
    v25 = BlueFin::GlStream::GetU16(a2);
    v26 = BlueFin::GlStream::GetU16(a2);
    v27 = BlueFin::GlStream::GetU16(a2);
    v28 = BlueFin::GlStream::GetU16(a2);
    v29.i16[0] = v25;
    v29.i16[1] = v26;
    v29.i16[2] = v27;
    v29.i16[3] = v28;
    v30 = vcltz_s16(v29);
    v29.i16[0] = v25 & 0x7FFF;
    v29.i16[1] = v26 & 0x7FFF;
    v29.i16[2] = v27 & 0x7FFF;
    v29.i16[3] = v28 & 0x7FFF;
    v31.i64[0] = 0x1F0000001FLL;
    v31.i64[1] = 0x1F0000001FLL;
    v32 = vshlq_u32((*&vshll_n_s16(v29, 0x10uLL) & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL)), vnegq_s32(vandq_s8(vmovl_u16(v29), v31)));
    *(v46 + 4) = vbslq_s8(vmovl_s16(v30), vnegq_s32(v32), v32);
    v33 = BlueFin::GlStream::GetU16(a2);
    v34 = BlueFin::GlStream::GetU16(a2);
    *(&v46[1] + 4) = vshl_u32((*&vshl_n_s32(__PAIR64__(v34, v33), 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(__PAIR64__(v34, v33), 0x1F0000001FLL)));
    v11 = v51;
    v10 = &v49;
    v9 = &v47;
  }

  v59[0] = BlueFin::GlStream::GetU16(a2);
  v35 = BlueFin::GlStream::GetU16(a2);
  if (v12 != 1 || (v7 - 76) >= 0x3F)
  {
    v37 = v35;
  }

  else
  {
    v37 = 2 * v35 + 1;
  }

  v59[1] = v37;
  v58 = BlueFin::GlStream::GetU08(a2);
  v54[1] = BlueFin::GlStream::GetU32(a2);
  v56 = BlueFin::GlStream::GetU16(a2);
  v54[2] = BlueFin::GlStream::GetS32(a2);
  if ((v5 & 0x10) != 0)
  {
    U32 = 0;
    v52[0] = 0;
  }

  else
  {
    U24 = BlueFin::GlStream::GetU24(a2);
    v39 = U24 & 0x7FFFFF;
    if (U24 >= 0x800000)
    {
      v39 = -v39;
    }

    v52[0] = v39;
    U32 = BlueFin::GlStream::GetU32(a2);
  }

  v52[1] = U32;
  v41 = BlueFin::GlStream::GetU24(a2);
  if (v41 >= 0x800000)
  {
    v42 = -16777216;
  }

  else
  {
    v42 = 0;
  }

  v52[2] = v42 | v41;
  memset_pattern16(&v53, &unk_298A33700, 0x10uLL);
  LOBYTE(v46[0]) = 0;
  WORD6(v46[1]) = 0;
  BYTE14(v46[1]) = 0;
  v60 = 0;
  v57 = 0;
  v54[0] = 0;
  v55 = 0;
  LOBYTE(v45) = 0;
  LODWORD(v44) = -1;
  HIDWORD(v44) = BlueFin::GlStream::GetU32(a2);
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1069, "Handle_SatRpt_SubTrkMsmt", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 1069, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17072) + 64))(*(*(this + 1) + 17072), U08, v5 & 0xF, v5 >> 4, v61, v11, v10, v9, v46, v59, v54, v52, &v44);
}

uint64_t BlueFin::GlDbgMeIf::ChipData_GRABSNQ_643487(BlueFin::GlDbgMeIf *this, void *a2, uint64_t a3)
{
  result = *(this + 1);
  *(result + 580) = 1;
  if (*(result + 576) == 1)
  {
    if (!*(result + 808))
    {
      BlueFin::GlDbgCodec::WriteStart(result, 4100);
      (*(**(this + 1) + 32))(*(this + 1), 1);
      (*(**(this + 2) + 200))(*(this + 2), a2, a3);
      BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4100);
      v8 = *(**(this + 1) + 32);

      return v8();
    }
  }

  else
  {
    v7 = *(**(this + 2) + 200);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::AsicStarted(BlueFin::GlDbgPeIf *this, uint64_t a2, _BOOL8 a3, unsigned int *a4, _BOOL8 a5, double a6)
{
  v21 = a2;
  v20 = a3;
  v19 = a5;
  v18 = a6;
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4610);
    v13 = *(this + 1);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v21);
    }

    v14 = *(this + 1);
    if ((*(*v14 + 120))(v14))
    {
      BlueFin::GlDbgCodec::Write(v14, &v20);
    }

    v17 = 4;
    BlueFin::GlDbgCodec::WriteArray(*(this + 1), a4, &v17);
    v15 = *(this + 1);
    if ((*(*v15 + 120))(v15))
    {
      BlueFin::GlDbgCodec::Write(v15, &v19);
    }

    v16 = *(this + 1);
    if ((*(*v16 + 120))(v16))
    {
      BlueFin::GlDbgCodec::Write(v16, &v18);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 80))(*(this + 2), a2, a3, a4, a5, a6);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4610);
    return (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::AsicStopped(BlueFin::GlDbgPeIf *this)
{
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4611);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 104))(*(this + 2));
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4611);
    v3 = *(**(this + 1) + 32);

    return v3();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SendAsicVersion(BlueFin::GlDbgPeIf *this, int a2)
{
  v6 = a2;
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4629);
    v4 = *(this + 1);
    if ((*(*v4 + 120))(v4))
    {
      BlueFin::GlDbgCodec::Write(v4, &v6);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4629);
    v5 = *(**(this + 1) + 32);

    return v5();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetAsicCfg(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4616);
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, a2);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    (*(**(a1 + 16) + 96))(*(a1 + 16), a2);
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 4616);
    v6 = *(**(a1 + 8) + 32);

    return v6();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetCntinMeas(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v13 = a2;
  v11 = a4;
  v12 = a3;
  result = *(a1 + 8);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4617);
    BlueFin::GlDbgCodec::Write(*(a1 + 8), &v13);
    v8 = *(a1 + 8);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v12);
    }

    v9 = *(a1 + 8);
    if ((*(*v9 + 120))(v9))
    {
      BlueFin::GlDbgCodec::Write(v9, &v11);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    (*(**(a1 + 16) + 144))(*(a1 + 16), v13, a3, a4);
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 4617);
    v10 = *(**(a1 + 8) + 32);

    return v10();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetGpsTimeFromMeif (BlueFin::GlDbgPeIf *this, uint64_t a2, int a3, int a4, unsigned int a5)
{
  v16 = a2;
  v14 = a4;
  v15 = a3;
  v13 = a5;
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4630);
    v8 = *(this + 1);
    if ((*(*v8 + 120))(v8))
    {
      BlueFin::GlDbgCodec::Write(v8, &v16);
    }

    v9 = *(this + 1);
    if ((*(*v9 + 120))(v9))
    {
      BlueFin::GlDbgCodec::Write(v9, &v15);
    }

    v10 = *(this + 1);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v14);
    }

    v11 = *(this + 1);
    if ((*(*v11 + 120))(v11))
    {
      BlueFin::GlDbgCodec::Write(v11, &v13);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 280))(*(this + 2), a2);
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4630);
    v12 = *(**(this + 1) + 32);

    return v12();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::OnGpsTimeFromMicroNav(BlueFin::GlDbgPeIf *this, int a2, BOOL a3, BOOL a4, BOOL a5)
{
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v6 = (*(**(this + 1) + 112))(*(this + 1));
  v7 = (*(**(this + 1) + 112))(*(this + 1));
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4631);
    v9 = *(this + 1);
    if ((*(*v9 + 120))(v9))
    {
      BlueFin::GlDbgCodec::Write(v9, &v17);
    }

    v10 = *(this + 1);
    if ((*(*v10 + 120))(v10))
    {
      BlueFin::GlDbgCodec::Write(v10, &v16);
    }

    if (v6 >= 0x89)
    {
      v11 = *(this + 1);
      if ((*(*v11 + 120))(v11))
      {
        BlueFin::GlDbgCodec::Write(v11, &v15);
      }
    }

    if (v7 >= 0x97)
    {
      v12 = *(this + 1);
      if ((*(*v12 + 120))(v12))
      {
        BlueFin::GlDbgCodec::Write(v12, &v14);
      }
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 288))();
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4631);
    v13 = *(**(this + 1) + 32);

    return v13();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetOnchipNvMemData(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4632);
    BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 8));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 16));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 24));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 32));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 34));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 36));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 40));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 44));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 48));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 50));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 52));
    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 54));
    v5 = *(a1 + 8);
    if ((*(*v5 + 120))(v5))
    {
      *(v5 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v5, a2 + 56);
    }

    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      *(v6 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v6, a2 + 76);
    }

    BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 92));
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    (*(**(a1 + 16) + 304))();
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 4632);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::OnChipReadyForPwrSave(BlueFin::GlDbgPeIf *this)
{
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4633);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 312))();
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4633);
    v3 = *(**(this + 1) + 32);

    return v3();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetOnChipReqIntS(BlueFin::GlDbgPeIf *this)
{
  result = *(this + 1);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4634);
    (*(**(this + 1) + 32))(*(this + 1), 1);
    (*(**(this + 2) + 320))();
    BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 4634);
    v3 = *(**(this + 1) + 32);

    return v3();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetPwrMeasStats(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (a2)
  {
    if (!*(result + 101))
    {
      BlueFin::GlDbgCodec::WriteStart(result, 4635);
      v6 = *(a1 + 8);
      if ((*(*v6 + 120))(v6))
      {
        *(v6 + 143) = 2;
        BlueFin::GlDbgCodec::Rvw(v6, a2);
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
      (*(**(a1 + 16) + 256))();
      BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 4635);
      v7 = *(**(a1 + 8) + 32);

      return v7();
    }
  }

  else
  {
    v4 = *(*result + 104);

    return v4();
  }

  return result;
}

uint64_t BlueFin::GlDbgNvStorageReader::AddErrorToPos(BlueFin::GlDbgCodec **this, _BOOL8 a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2561);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 48))(this[2], a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2561);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgNvStorageReader::AddErrorToRtc(BlueFin::GlDbgCodec **this, uint64_t a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2562);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 24))(this[2], a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2562);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgNvStorageReader::AlterOscValues(BlueFin::GlDbgCodec **this, uint64_t a2, uint64_t a3)
{
  v10 = a3;
  v11 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2563);
  v6 = this[1];
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v11);
  }

  v7 = this[1];
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v10);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 32))(this[2], a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2563);
  v8 = *(*this[1] + 32);

  return v8();
}

uint64_t BlueFin::GlDbgNvStorageReader::ChangeAgeOfPos(BlueFin::GlDbgCodec **this, uint64_t a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2564);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 56))(this[2], a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2564);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgNvStorageReader::ForceClockUncertainty(BlueFin::GlDbgCodec **this, uint64_t a2)
{
  v7 = a2;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2565);
  v4 = this[1];
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 40))(this[2], a2);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2565);
  v5 = *(*this[1] + 32);

  return v5();
}

uint64_t BlueFin::GlDbgNvStorageReader::SetDataToIgnore(BlueFin::GlDbgCodec **this, uint64_t a2, _BOOL8 a3)
{
  v11 = a2;
  v10 = a3;
  BlueFin::GlDbgCodec::WriteStart(this[1], 2567);
  v6 = this[1];
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v11);
  }

  v7 = this[1];
  if ((*(*v7 + 120))(v7))
  {
    BlueFin::GlDbgCodec::Write(v7, &v10);
  }

  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 16))(this[2], a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(this[1], 2567);
  v8 = *(*this[1] + 32);

  return v8();
}

uint64_t BlueFin::GlDbgProxy::GlDbgProxy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13)
{
  bzero((a1 + 8), 0x22BuLL);
  *(a1 + 568) = 0;
  *(a1 + 564) = 0;
  *(a1 + 572) = 0;
  *(a1 + 580) = 0;
  *a1 = &unk_2A1F0A110;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  BlueFin::GlDbgEngine::GlDbgEngine(a1 + 608, a1, a2, a3, a4, a5, a6, a7, a8, v21, v22, a11, a12, a13);
  *(a1 + 6512) = -1;
  *(a1 + 6516) = 0;
  *(a1 + 6520) = &unk_2A1F09E70;
  *(a1 + 6528) = a1;
  *(a1 + 6536) = 0;
  *(a1 + 6544) = &unk_2A1F09B18;
  *(a1 + 6552) = a1;
  *(a1 + 6560) = 0;
  *(a1 + 6568) = 0xD600000000;
  *(a1 + 6576) = 0;
  *(a1 + 6580) = 0;
  *(a1 + 6585) = 0;
  *(a1 + 6596) = 255;
  *(a1 + 6600) = 0;
  *(a1 + 6608) = 0u;
  *(a1 + 6880) = 0;
  *(a1 + 6888) = a1;
  *(a1 + 6896) = &unk_2A1F096A0;
  *(a1 + 6904) = a1;
  *(a1 + 6912) = 0;
  *(a1 + 6920) = &unk_2A1F0A030;
  *(a1 + 6928) = a1;
  *(a1 + 6936) = 0u;
  *(a1 + 6952) = &unk_2A1F0A090;
  *(a1 + 6960) = a1;
  *(a1 + 6968) = 0;
  *(a1 + 6976) = &unk_2A1F0A2C0;
  *(a1 + 6984) = a1;
  *(a1 + 6992) = 0;
  bzero((a1 + 5928), 0x248uLL);
  strlcpy((a1 + 6624), "~^~", 0x100uLL);
  return a1;
}

uint64_t BlueFin::GlDbgProxy::SafeAssert(BlueFin::GlDbgProxy *this, uint64_t a2, const char *a3)
{
  v4 = *(this + 111);
  if (v4)
  {
    v4(this + 608, 2, a3);
  }

  return a2;
}

uint64_t BlueFin::GlDbgProxy::RequestId(BlueFin::GlDbgProxy *this, const BlueFin::GlRequestImpl *a2)
{
  result = 0;
  v4 = this + 5928;
  while (1)
  {
    v5 = *&v4[8 * result];
    if (v5)
    {
      if (*(v5 + 24) == a2)
      {
        break;
      }
    }

    if (++result == 73)
    {
      DeviceFaultNotify("gldebug_proxy.cpp", 1202, "RequestId", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_proxy.cpp", 1202, "false");
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngCbOnEEFileRead(BlueFin::GlDbgCodec *a1, unsigned int a2, uint64_t a3)
{
  v3 = 1;
  v7 = 1;
  v8 = a2;
  *(a1 + 864) = a3;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 513);
    BlueFin::GlDbgCodec::Write(a1, &v8);
    (*(*a1 + 32))(a1, 1);
    v5 = *(a1 + 91);
    if (v5)
    {
      v3 = v5(a1 + 608, v8, a1 + 6896);
      v7 = v3;
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 513);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v7);
    }

    (*(*a1 + 32))(a1, 1);
  }

  return v3;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngCbOnNvStgWrite(uint64_t this, unsigned int a2, char *a3, uint64_t a4)
{
  v10 = a2;
  v9 = a4;
  if (!*(this + 808))
  {
    v6 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 516);
      BlueFin::GlDbgCodec::Write(v6, &v10);
      BlueFin::GlDbgCodec::WriteArray(v6, a3, &v9);
      this = (*(*v6 + 32))(v6, 1);
    }

    v7 = *(v6 + 752);
    if (v7)
    {
      this = v7(v6 + 608, v10, a3, a4);
    }

    *(v6 + 580) = 1;
    if (*(v6 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v6, 516);
      v8 = *(*v6 + 32);

      return v8(v6, 1);
    }
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngCbOnPPSPlatformTime(BlueFin::GlDbgCodec *this)
{
  if (!*(this + 101))
  {
    v2 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 517);
    (*(*v2 + 32))(v2, 1);
    v3 = *(v2 + 95);
    if (v3)
    {
      v3(v2 + 608);
    }

    BlueFin::GlDbgCodec::WriteFinal(v2, 517);
    v4 = *(*v2 + 32);

    return v4(v2, 1);
  }

  return this;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngCpuLoad(BlueFin::GlDbgProxy *this, unsigned int *a2, uint64_t a3)
{
  v3 = 0;
  v10 = a3;
  v9 = 0;
  if (!*(this + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(this, 520);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v10);
    }

    (*(*this + 32))(this, 1);
    v7 = *(this + 96);
    if (v7)
    {
      v3 = v7(this + 608, a2, a3);
      v9 = v3;
    }

    else
    {
      v3 = 0;
    }

    BlueFin::GlDbgCodec::WriteFinal(this, 520);
    BlueFin::GlDbgCodec::WriteArray(this, a2, &v9);
    (*(*this + 32))(this, 1);
  }

  return v3;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnAsicDacData(BlueFin::GlDbgCodec *this, char *a2, uint64_t a3)
{
  v8 = a3;
  if (!*(this + 101))
  {
    v5 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 521);
    BlueFin::GlDbgCodec::WriteArray(v5, a2, &v8);
    (*(*v5 + 32))(v5, 1);
    v6 = *(v5 + 97);
    if (v6)
    {
      v6(v5 + 608, a2, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(v5, 521);
    v7 = *(*v5 + 32);

    return v7(v5, 1);
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnAsstStatus(BlueFin::GlDbgCodec *result, _BYTE *a2)
{
  if (!*(result + 101))
  {
    if ((*a2 & 0x40) != 0)
    {
      a2[67] = 6;
    }

    else
    {
      v3 = result;
      BlueFin::GlDbgCodec::WriteStart(result, 523);
      if ((*(*v3 + 120))(v3))
      {
        *(v3 + 143) = 2;
        BlueFin::GlDbgCodec::Rvw(v3, a2);
      }

      (*(*v3 + 32))(v3, 1);
      v4 = *(v3 + 100);
      if (v4)
      {
        v4(v3 + 608, a2);
      }

      BlueFin::GlDbgCodec::WriteFinal(v3, 523);
      v5 = *(*v3 + 32);

      return v5(v3, 1);
    }
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnFreqUpdate(BlueFin::GlDbgCodec *result, uint64_t a2)
{
  if (!*(result + 101))
  {
    v9 = v2;
    v10 = v3;
    v5 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 524);
    v8 = a2;
    BlueFin::GlDbgCodec::Write(v5, &v8);
    (*(*v5 + 32))(v5, 1);
    v6 = *(v5 + 104);
    if (v6)
    {
      v6(v5 + 608, a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(v5, 524);
    v7 = *(*v5 + 32);

    return v7(v5, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnPrecTimerRq(BlueFin::GlDbgProxy *this)
{
  v1 = 0;
  v5 = 0;
  if (!*(this + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(this, 525);
    (*(*this + 32))(this, 1);
    v3 = *(this + 105);
    if (v3)
    {
      v1 = v3(this + 608);
      v5 = v1;
    }

    else
    {
      v1 = 0;
    }

    BlueFin::GlDbgCodec::WriteFinal(this, 525);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v5);
    }

    (*(*this + 32))(this, 1);
  }

  return v1;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnReady(BlueFin::GlDbgCodec *this)
{
  if (!*(this + 101))
  {
    v2 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 526);
    (*(*v2 + 32))(v2, 1);
    v3 = *(v2 + 106);
    if (v3)
    {
      v3(v2 + 608);
    }

    BlueFin::GlDbgCodec::WriteFinal(v2, 526);
    v4 = *(*v2 + 32);

    return v4(v2, 1);
  }

  return this;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnResourceRequest(BlueFin::GlDbgCodec *a1, unsigned int a2)
{
  v2 = 1;
  v6 = 1;
  v7 = a2;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 527);
    BlueFin::GlDbgCodec::Write(a1, &v7);
    (*(*a1 + 32))(a1, 1);
    v4 = *(a1 + 107);
    if (v4)
    {
      v2 = v4(a1 + 608, v7);
      v6 = v2;
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 527);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v6);
    }

    (*(*a1 + 32))(a1, 1);
  }

  return v2;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnResourceRelease(BlueFin::GlDbgCodec *result, unsigned int a2)
{
  v5 = a2;
  if (!*(result + 101))
  {
    v2 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 528);
    BlueFin::GlDbgCodec::Write(v2, &v5);
    (*(*v2 + 32))(v2, 1);
    v3 = *(v2 + 108);
    if (v3)
    {
      v3(v2 + 608, v5);
    }

    BlueFin::GlDbgCodec::WriteFinal(v2, 528);
    v4 = *(*v2 + 32);

    return v4(v2, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnResponse(uint64_t this, uint64_t a2, uint64_t a3)
{
  if (!*(this + 808))
  {
    v5 = this;
    *(this + 580) = 1;
    if (*(this + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 529);
      if ((*(*v5 + 120))(v5))
      {
        *(v5 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(v5, a2);
      }

      this = (*(*v5 + 32))(v5, 1);
    }

    v6 = *(v5 + 872);
    if (v6)
    {
      this = v6(v5 + 608, a2, a3);
    }

    *(v5 + 580) = 1;
    if (*(v5 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(v5, 529);
      v7 = *(*v5 + 32);

      return v7(v5, 1);
    }
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnReportMIAdjustmentReqStatus(BlueFin::GlDbgCodec *result, uint64_t a2)
{
  if (!*(result + 101))
  {
    v9 = v2;
    v10 = v3;
    v5 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 559);
    v8 = a2;
    BlueFin::GlDbgCodec::Write(v5, &v8);
    (*(*v5 + 32))(v5, 1);
    v6 = *(v5 + 119);
    if (v6)
    {
      v6(v5 + 608, a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(v5, 559);
    v7 = *(*v5 + 32);

    return v7(v5, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnLHPatchNeeded(BlueFin::GlDbgProxy *this, char *a2, unsigned int *a3)
{
  v13 = 0;
  v12 = a2 != 0;
  v11 = a3 != 0;
  if (a3)
  {
    v6 = *a3;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  if (*(this + 101))
  {
    return 0;
  }

  BlueFin::GlDbgCodec::WriteStart(this, 553);
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, &v12);
  }

  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, &v11);
  }

  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, &v10);
  }

  (*(*this + 32))(this, 1);
  v8 = *(this + 117);
  if (v8)
  {
    v7 = v8(this + 608, a2, a3);
    v13 = v7;
  }

  else
  {
    v7 = 0;
  }

  BlueFin::GlDbgCodec::WriteFinal(this, 553);
  if ((*(*this + 120))(this))
  {
    BlueFin::GlDbgCodec::Write(this, &v13);
  }

  if (a2 && a3)
  {
    BlueFin::GlDbgCodec::WriteArray(this, a2, &v10);
  }

  (*(*this + 32))(this, 1);
  return v7;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnLHPatchLoadComplete(BlueFin::GlDbgCodec *this)
{
  v4 = 0;
  if (!*(this + 101))
  {
    v1 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 556);
    v2 = *(v1 + 118);
    if (v2)
    {
      v2(v1 + 608);
    }

    BlueFin::GlDbgCodec::WriteFinal(v1, 556);
    if ((*(*v1 + 120))(v1))
    {
      BlueFin::GlDbgCodec::Write(v1, &v4);
    }

    v3 = *(*v1 + 32);

    return v3(v1, 1);
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnGeofenceStatus(BlueFin::GlDbgCodec *result, unsigned int a2, uint64_t a3)
{
  v7 = a2;
  if (!*(result + 101))
  {
    v4 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 550);
    BlueFin::GlDbgCodec::Write(v4, &v7);
    if ((*(*v4 + 120))(v4))
    {
      *(v4 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v4, a3);
    }

    (*(*v4 + 32))(v4, 1);
    v5 = *(v4 + 116);
    if (v5)
    {
      v5(v4 + 608, v7, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(v4, 550);
    v6 = *(*v4 + 32);

    return v6(v4, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlEngineOnStop(uint64_t result, uint64_t a2, char *a3)
{
  *(result + 5912) = 0;
  if (!*(result + 808))
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 531);
    v11 = a2;
    BlueFin::GlDbgCodec::Write(v7, &v11);
    if (a3)
    {
      v8 = strlen(a3);
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;
    BlueFin::GlDbgCodec::WriteArray(v7, a3, &v10);
    (*(*v7 + 32))(v7, 1);
    v9 = *(v7 + 111);
    if (v9)
    {
      v9(v7 + 608, a2, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(v7, 531);
    return (*(*v7 + 32))(v7, 1);
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnBurstMode(BlueFin::GlDbgCodec *this, _BOOL8 a2)
{
  v6 = a2;
  if (!*(this + 101))
  {
    v3 = this;
    BlueFin::GlDbgCodec::WriteStart(this, 551);
    if ((*(*v3 + 120))(v3))
    {
      BlueFin::GlDbgCodec::Write(v3, &v6);
    }

    (*(*v3 + 32))(v3, 1);
    v4 = *(v3 + 115);
    if (v4)
    {
      v4(v3 + 608, a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(v3, 551);
    v5 = *(*v3 + 32);

    return v5(v3, 1);
  }

  return this;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngineOnOscReadyForStorage(BlueFin::GlDbgCodec *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a2;
  if (!*(result + 101))
  {
    v7 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 558);
    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v11);
    }

    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v10);
    }

    if ((*(*v7 + 120))(v7))
    {
      *(v7 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v7, a4);
    }

    (*(*v7 + 32))(v7, 1);
    v8 = *(v7 + 740);
    if (v8)
    {
      v8(v7 + 608, a2, a3, a4);
    }

    BlueFin::GlDbgCodec::WriteFinal(v7, 558);
    v9 = *(*v7 + 32);

    return v9(v7, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnAsstStatus(uint64_t a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 535);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a3);
    }

    (*(*a1 + 32))(a1, 1);
    v7 = this[5];
    if (v7)
    {
      v7(this, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 535);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    v8 = *(*a1 + 32);

    return v8(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnCntin(BlueFin::GlDbgCodec *a1, BlueFin::GlDbgRequest *this, unsigned int a3, double a4, double a5)
{
  v15 = a3;
  v13 = a5;
  v14 = a4;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v12 = result;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 536);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v12);
    }

    BlueFin::GlDbgCodec::Write(a1, &v15);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v14);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v13);
    }

    (*(*a1 + 32))(a1, 1);
    v10 = *(this + 5);
    if (v10)
    {
      v10(this, v15, a4, a5);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 536);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v12);
    }

    v11 = *(*a1 + 32);

    return v11(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnFactTest(uint64_t a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 537);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a3);
    }

    (*(*a1 + 32))(a1, 1);
    v7 = this[5];
    if (v7)
    {
      v7(this, a3);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 537);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    v8 = *(*a1 + 32);

    return v8(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGeofenceEvent(uint64_t a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a6;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v16 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 539);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v16);
    }

    v15 = a4;
    BlueFin::GlDbgCodec::Write(a1, &v15);
    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a5);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v17);
    }

    (*(*a1 + 32))(a1, 1);
    v13 = this[5];
    if (v13)
    {
      v13(this, a3, a4, a5, a6);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 539);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v16);
    }

    v14 = *(*a1 + 32);

    return v14(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnBatchLocation(uint64_t a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t, uint64_t, uint64_t, _BOOL8), uint64_t a3, uint64_t a4, uint64_t a5, _BOOL8 a6)
{
  v17 = a5;
  v16 = a6;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v15 = result;
  if (!*(a1 + 808))
  {
    v14 = a4 != 0;
    BlueFin::GlDbgCodec::WriteStart(a1, 552);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v15);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v14);
    }

    if (a4 && (*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a4);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v17);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v16);
    }

    (*(*a1 + 32))(a1, 1);
    v13 = this[5];
    if (v13)
    {
      v13(this, a3, a4, a5, a6);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 552);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v15);
    }

    return (*(*a1 + 32))(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGpsData(uint64_t a1, BlueFin::GlDbgRequest *this, unsigned int a3, signed __int8 *a4)
{
  v11 = a3;
  v10 = a4;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 540);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, &v11, &v10);
    }

    (*(*a1 + 32))(a1, 1);
    v7 = *(this + 5);
    if (v7)
    {
      v7(this, v11, v10);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 540);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v9);
    }

    v8 = *(*a1 + 32);

    return v8(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnMeas(uint64_t a1, void (**this)(BlueFin::GlDbgRequest *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v11 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 541);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v11);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a3);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a4);
    }

    (*(*a1 + 32))(a1, 1);
    v9 = this[5];
    if (v9)
    {
      v9(this, a3, a4);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 541);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v11);
    }

    v10 = *(*a1 + 32);

    return v10(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnExerMeas(uint64_t a1, BlueFin::GlDbgRequest *this, uint64_t a3, _BOOL8 a4)
{
  v11 = a4;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v10 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 557);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a3);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v11);
    }

    (*(*a1 + 32))(a1, 1);
    if (*(this + 5))
    {
      (*(this + 13))(this, a3, a4);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 557);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    v9 = *(*a1 + 32);

    return v9(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnMeasData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, unsigned int *), unsigned int *a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 554);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[5];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 554);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnNavData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 555);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[6];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 555);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnSyncInReport(uint64_t a1, BlueFin::GlDbgRequest *this, unsigned int a3, uint64_t a4)
{
  v11 = a3;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v10 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 547);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    BlueFin::GlDbgCodec::Write(a1, &v11);
    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a4);
    }

    (*(*a1 + 32))(a1, 1);
    v8 = *(this + 11);
    if (v8)
    {
      v8(this, v11, a4);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 547);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    v9 = *(*a1 + 32);

    return v9(a1, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnTimer(BlueFin::GlDbgProxy *this, void (**a2)(BlueFin::GlDbgRequest *))
{
  result = BlueFin::GlDbgRequest::Id(a2, 0);
  v7 = result;
  if (!*(this + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(this, 549);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v7);
    }

    (*(*this + 32))(this, 1);
    v5 = a2[4];
    if (v5)
    {
      v5(a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(this, 549);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v7);
    }

    v6 = *(*this + 32);

    return v6(this, 1);
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngCbOnRtiFileTimestampReport(BlueFin::GlDbgCodec *result, uint64_t a2)
{
  if (!*(result + 101))
  {
    v4 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 568);
    if ((*(*v4 + 120))(v4))
    {
      *(v4 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v4, a2);
    }

    (*(*v4 + 32))(v4, 1);
    v5 = *(v4 + 120);
    if (v5)
    {
      v5(v4 + 608, a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(v4, 568);
    v6 = *(*v4 + 32);

    return v6(v4, 1);
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalGlEngCbOnPwrData(BlueFin::GlDbgCodec *result, double *a2)
{
  if (!*(result + 101))
  {
    v4 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 569);
    if ((*(*v4 + 120))(v4))
    {
      *(v4 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v4, a2);
    }

    (*(*v4 + 32))(v4, 1);
    v5 = *(v4 + 121);
    if (v5)
    {
      v5(v4 + 608, a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(v4, 569);
    v6 = *(*v4 + 32);

    return v6(v4, 1);
  }

  return result;
}

void BlueFin::GlDbgProxy::~GlDbgProxy(BlueFin::GlDbgProxy *this)
{
  *this = &unk_2A1F0A110;
  *(this + 76) = &unk_2A1F09758;
  *(this + 122) = &unk_2A1F11360;
  *(this + 209) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 1696));
}

{
  *this = &unk_2A1F0A110;
  *(this + 76) = &unk_2A1F09758;
  *(this + 122) = &unk_2A1F11360;
  *(this + 209) = &unk_2A1F0C1D8;
  BlueFin::GlComStressImpl::~GlComStressImpl((this + 1696));

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlDbgProxyGlEngCbOnEEFileRead(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnEEFileRead(v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlEngCbOnNvStgWrite(uint64_t a1, unsigned int a2, char *a3, uint64_t a4)
{
  v7 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnNvStgWrite(v7, a2, a3, a4);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngCbOnPPSPlatformTime(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnPPSPlatformTime(v1);
}

uint64_t BlueFin::GlDbgProxyGlEngCpuLoad(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCpuLoad(v5, a2, a3);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnAsicDacData(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnAsicDacData(v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnDrControlMemDump(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a1 + 656))(a1);
  v6 = *(result + 792);
  if (v6)
  {
    v7 = result + 608;

    return v6(v7, a2, a3);
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnAsstStatus(uint64_t a1, _BYTE *a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnAsstStatus(v3, a2);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnBurstMode(uint64_t a1, _BOOL8 a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnBurstMode(v3, a2);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnFreqUpdate(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnFreqUpdate(v3, a2);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnGeofenceStatus(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnGeofenceStatus(v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnPrecTimerRq(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnPrecTimerRq(v1);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnReady(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnReady(v1);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnResourceRelease(uint64_t a1, unsigned int a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnResourceRelease(v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnResourceRequest(uint64_t a1, unsigned int a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnResourceRequest(v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnResponse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnResponse(v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnStop(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnStop(v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlEngineOnSysLogLine(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 656))(a1);
  v4 = *(result + 896);
  if (v4)
  {
    v5 = result + 608;

    return v4(v5, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlEngineOnLHPatchNeeded(uint64_t a1, char *a2, unsigned int *a3)
{
  v5 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnLHPatchNeeded(v5, a2, a3);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnLHPatchLoadComplete(uint64_t a1)
{
  v1 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnLHPatchLoadComplete(v1);
}

uint64_t BlueFin::GlDbgProxyGlReqOnAsstStatus(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnAsstStatus(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlReqOnCntin(uint64_t a1, unsigned int a2, double a3, double a4)
{
  v7 = (*(*a1 + 112))(a1);
  v8 = *(v7 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnCntin(v8, v7, a2, a3, a4);
}

uint64_t BlueFin::GlDbgProxyGlReqOnFactTest(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnFactTest(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlReqOnGeofenceEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*a1 + 112))(a1);
  v10 = *(v9 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGeofenceEvent(v10, v9, a2, a3, a4, a5);
}

uint64_t BlueFin::GlDbgProxyGlReqOnbatchLocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BOOL8 a5)
{
  v9 = (*(*a1 + 112))(a1);
  v10 = *(v9 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnBatchLocation(v10, v9, a2, a3, a4, a5);
}

uint64_t BlueFin::GlDbgProxyGlReqOnGpsData(uint64_t a1, unsigned int a2, signed __int8 *a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnGpsData(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlReqOnMeas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnMeas(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlReqOnExerMeas(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnExerMeas(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlReqOnMeasData(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnMeasData(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlReqOnNavData(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnNavData(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxyGlReqOnSyncInReport(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnSyncInReport(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxyGlReqOnTimer(uint64_t a1)
{
  v1 = (*(*a1 + 112))(a1);
  v2 = *(v1 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnTimer(v2, v1);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnReportMIAdjustmentReqStatus(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnReportMIAdjustmentReqStatus(v3, a2);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineOnOscReadyForStorage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngineOnOscReadyForStorage(v7, a2, a3, a4);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngCbOnRtiFileTimestampReport(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnRtiFileTimestampReport(v3, a2);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyGlEngineCbOnPwrData(uint64_t a1, double *a2)
{
  v3 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalGlEngCbOnPwrData(v3, a2);
}

uint64_t BlueFin::GlDbgRecordDescriptor::readRecord(BlueFin::GlDbgRecordDescriptor *this, int a2, BlueFin::GlAscii85 *a3, unsigned __int8 *a4, uint64_t a5, unint64_t *a6, unsigned int *a7, int a8)
{
  v37 = *MEMORY[0x29EDCA608];
  v11 = *(this + 1);
  if (a8)
  {
    v12 = *a6 + 1;
    v13 = *a7;
    if (((*(*v11 + 208))() & 0x80000000) == 0)
    {
      *(v11 + 16) = v12;
      *(v11 + 24) = v13;
      *(v11 + 8) = 769;
      *(v11 + 32) = v11 + 11224;
      *(v11 + 40) = v11 + 11224;
      *(v11 + 48) = v11 + 11480;
    }
  }

  else
  {
    *(v11 + 48) = v11 + 11480;
    *(a3 + 4) = 255;
    *(a3 + 20) = 0;
    *(a3 + 36) = 0;
    *(a3 + 28) = 0;
  }

  v34 = 0;
  do
  {
    v14 = v34;
    if (a8 && v34 >= a5)
    {
      goto LABEL_42;
    }

    v15 = *(this + 1);
    if (*(v15 + 48) == *(v15 + 56))
    {
      v20 = 0;
      v19 = 0;
      goto LABEL_28;
    }

    while (1)
    {
      v16 = *(v15 + 40);
      if ((v15 + 11224) != v16)
      {
        v17 = *(v15 + 32);
        if (v17 != v16 && (v17 != v16 - 1 || *v17 != 13))
        {
          goto LABEL_15;
        }
      }

      if (!BlueFin::GlDbgSlogDecoder::FillEncodeBuffer(v15))
      {
        break;
      }

      v15 = *(this + 1);
LABEL_15:
      if ((a8 & 1) != 0 || *(v15 + 8) == 1)
      {
        if (v34 == a5)
        {
          v18 = a8 ^ 1;
        }

        else
        {
          v18 = 0;
        }

        if (BlueFin::GlDbgSlogDecoder::DecodeRecord(v15, v18))
        {
          v19 = 0;
          v20 = 1;
          goto LABEL_27;
        }
      }

      else
      {
        BlueFin::GlDbgSlogDecoder::SkipToNextRecord(v15);
      }

      v15 = *(this + 1);
      if (*(v15 + 48) == *(v15 + 56))
      {
        v20 = 0;
        v19 = 0;
        goto LABEL_27;
      }
    }

    v20 = 0;
    v19 = 1;
LABEL_27:
    v14 = v34;
LABEL_28:
    if (v14 < a5)
    {
      v21 = *(this + 1);
      if ((*(v21 + 76) & 1) != 0 || *(v21 + 9) == 3)
      {
        *__s1 = *(v21 + 11480) == 123;
        BlueFin::GlAscii85::Decode(a3, (v21 + 11480), a4, (*(v21 + 48) - (v21 + 11480)) - v20, a5, __s1, &v34, v20);
        if (*__s1)
        {
          v22 = *(this + 1);
          v23 = v22 + 2 * (*__s1 - 1);
          *a6 = *(v22 + 64) + *(v23 + 11736);
          *a7 = *(v22 + 72) + *(v23 + 12248);
        }
      }

      else if (*(v21 + 86) == 1)
      {
        qmemcpy(__s1, "@^@am", sizeof(__s1));
        v24 = *(v21 + 48) - (v21 + 11480);
        memset(v36, 0, sizeof(v36));
        memcpy(v36, (v21 + 11480), v24);
        v25 = BlueFin::GlUtlGlSysLogEntryCodec::DecodeLine((v21 + 88), __s1, *(v21 + 24));
        *(v21 + 10616) = v25;
        v20 = v25 != 0;
      }
    }

    v26 = *(this + 1);
    *(v26 + 48) = v26 + 11480;
  }

  while ((v19 | v20) != 1);
  if ((a8 & 1) == 0)
  {
    if (v20 && ((*(v26 + 76) & 1) != 0 || *(v26 + 9) == 3))
    {
      *(this + 26) = *a4;
      *(this + 12) = bswap32(*(a4 + 1)) >> 16;
      *(this + 2) = *(v26 + 64);
      *(this + 4) = *(v26 + 16) - 1;
      *(this + 10) = *(v26 + 72);
      *(this + 11) = *(v26 + 24);
      *(this + 12) = a2;
    }

    else
    {
      *(this + 12) = 0;
      *(this + 2) = 0;
      *(this + 4) = 0;
    }
  }

LABEL_42:
  result = v34;
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlDbgRecord::GetMsg(BlueFin::GlDbgRecord *this, unsigned __int8 *__dst, int a3)
{
  if (a3)
  {
    v3 = a3;
    v6 = 0;
    v7 = *(this + 27);
    LOWORD(Record) = *(this + 26) - v7 + (v7 & 0xFE00);
    v9 = v7 & 0x1FF;
    v10 = this + 56;
    do
    {
      if (*(this + 580))
      {
        break;
      }

      if (v3 >= Record)
      {
        v11 = Record;
      }

      else
      {
        v11 = v3;
      }

      memcpy(__dst, &v10[v9], v11);
      *(this + 27) += v11;
      v9 += v11;
      LOWORD(Record) = Record - v11;
      if (!Record)
      {
        if (v9 == 512)
        {
          Record = BlueFin::GlDbgRecordDescriptor::readRecord(this, *(this + 12), (this + 584), v10, 512, this + 71, this + 144, 1);
          v9 = 0;
          *(this + 26) = Record;
          v12 = Record == 0;
        }

        else
        {
          LOWORD(Record) = 0;
          v12 = 1;
        }

        *(this + 580) = v12;
      }

      __dst += v11;
      v6 += v11;
      v3 -= v11;
    }

    while (v3);
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, char a10)
{
  v16 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v18 = 1;
  }

  else
  {
    v18 = a1 == 0;
  }

  if (!v18 && a2 != 0)
  {
    v22 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v22;
    v20 = a1;
    if (v22)
    {
      *v22 = a1;
      v22[1] = v16;
      v20 = a1;
    }

    goto LABEL_13;
  }

  v20 = a1;
  if (a1)
  {
LABEL_13:
    v21 = v20(136);
    goto LABEL_14;
  }

  v21 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v23 = v21;
  if (v21)
  {
    *v21 = &unk_2A1F0A1D8;
    *(v21 + 72) = 0u;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 120) = 0u;
    *(v21 + 72) = a3;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v25 = BlueFin::GlRequestImplFactoryTest::Create(Memory, v23, BlueFin::GlDbgProxyGlReqOnStart, a4, a5, a6, a7, a8, a9, a10);
    *(v23 + 24) = v25;
    if (!v25)
    {
      if (!v16)
      {
        v16 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v16(v23);
      return 0;
    }
  }

  return v23;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplFactoryTest(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, char a4, int a5, char a6, char a7, int a8, int a9, __int16 a10, __int16 a11, __int16 a12, __int16 a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, __int16 a25, __int16 a26, char a27, char a28, char a29, char a30, char a31)
{
  if (!BlueFin::GlDbgMemory::m_pInstance && a1 && a2)
  {
    v41 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v41;
    v39 = a1;
    if (v41)
    {
      *v41 = a1;
      v41[1] = a2;
      v39 = a1;
    }

    goto LABEL_8;
  }

  v39 = a1;
  if (a1)
  {
LABEL_8:
    v40 = v39(136);
    goto LABEL_9;
  }

  v40 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_9:
  v42 = v40;
  if (v40)
  {
    *v40 = &unk_2A1F0A1D8;
    *(v40 + 72) = 0u;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    *(v40 + 40) = 0u;
    *(v40 + 56) = 0u;
    *(v40 + 88) = 0u;
    *(v40 + 104) = 0u;
    *(v40 + 120) = 0u;
    *(v40 + 72) = a3;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v44 = BlueFin::GlRequestImplFactoryTest::Create(Memory, v42, BlueFin::GlDbgProxyGlReqOnStart, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v47, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, v48, a31);
    *(v42 + 24) = v44;
    if (!v44)
    {
      v45 = a2;
      if (!a2)
      {
        v45 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v45(v42);
      return 0;
    }
  }

  return v42;
}

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplComStressTest(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, __int16 a5, __n128 *a6)
{
  v10 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v12 = 1;
  }

  else
  {
    v12 = a1 == 0;
  }

  if (!v12 && a2 != 0)
  {
    v16 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v16;
    v14 = a1;
    if (v16)
    {
      *v16 = a1;
      v16[1] = v10;
      v14 = a1;
    }

    goto LABEL_13;
  }

  v14 = a1;
  if (a1)
  {
LABEL_13:
    v15 = v14(136);
    goto LABEL_14;
  }

  v15 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v17 = v15;
  if (v15)
  {
    *v15 = &unk_2A1F0A1D8;
    *(v15 + 72) = 0u;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0u;
    *(v15 + 88) = 0u;
    *(v15 + 104) = 0u;
    *(v15 + 120) = 0u;
    *(v15 + 72) = a3;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v19 = BlueFin::GlRequestImplComStressTest::Create(Memory, v17, BlueFin::GlDbgProxyGlReqOnStart, a4, a5, a6);
    *(v17 + 24) = v20;
    if (!v20)
    {
      if (!v10)
      {
        v10 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v10(v17, v19);
      return 0;
    }
  }

  return v17;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetGsvRate(BlueFin::GlDbgRequest *this, uint64_t a2)
{
  v12 = a2;
  v4 = *(this + 1);
  if (v4)
  {
    BlueFin::GlDbgCodec::WriteStart(v4, 3073);
    v5 = *(this + 1);
    v11 = BlueFin::GlDbgRequest::Id(this, 0);
    BlueFin::GlDbgCodec::Write(v5, &v11);
    v6 = *(this + 1);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v12);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  (*(**(this + 3) + 96))(*(this + 3), a2);
  result = *(this + 1);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3073);
    v8 = *(this + 1);
    v10 = BlueFin::GlDbgRequest::Id(this, 0);
    BlueFin::GlDbgCodec::Write(v8, &v10);
    v9 = *(**(this + 1) + 32);

    return v9();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnCntin(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3075);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 48))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnCntin);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3075);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnFactTest(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3076);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 64))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnFactTest);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3076);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnSIGMeasurement(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3079);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 32))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnMeas);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3079);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnExerciseMeasurement(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3083);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 40))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnExerMeas);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3083);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnTimer(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3081);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 56))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnTimer);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3081);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::StopAfter(BlueFin::GlDbgRequest *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v23 = a2;
  v21 = a4;
  v20 = a5;
  v10 = *(this + 1);
  if (v10)
  {
    BlueFin::GlDbgCodec::WriteStart(v10, 3082);
    v11 = *(this + 1);
    v19 = BlueFin::GlDbgRequest::Id(this, 0);
    BlueFin::GlDbgCodec::Write(v11, &v19);
    v12 = *(this + 1);
    if ((*(*v12 + 120))(v12))
    {
      BlueFin::GlDbgCodec::Write(v12, &v23);
    }

    v13 = *(this + 1);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v22);
    }

    v14 = *(this + 1);
    if ((*(*v14 + 120))(v14))
    {
      BlueFin::GlDbgCodec::Write(v14, &v21);
    }

    v15 = *(this + 1);
    if ((*(*v15 + 120))(v15))
    {
      BlueFin::GlDbgCodec::Write(v15, &v20);
    }

    (*(**(this + 1) + 32))(*(this + 1), 1);
  }

  (*(**(this + 3) + 88))(*(this + 3), a2, a3, a4, a5);
  result = *(this + 1);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3082);
    v17 = *(this + 1);
    v19 = BlueFin::GlDbgRequest::Id(this, 0);
    BlueFin::GlDbgCodec::Write(v17, &v19);
    v18 = *(**(this + 1) + 32);

    return v18();
  }

  return result;
}

uint64_t BlueFin::GlDbgSettings::DisableGpsMeasurementEngine(BlueFin::GlDbgSettings *this)
{
  v2 = *(this + 1);
  if (*(v2 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 41, "DisableGpsMeasurementEngine", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 41, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v2, 3585);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 304))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3585);
  v3 = *(**(this + 1) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgSettings::EnableLtoCbeeQATest(BlueFin::GlDbgSettings *this)
{
  v2 = *(this + 1);
  if (*(v2 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 56, "EnableLtoCbeeQATest", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 56, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v2, 3586);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 192))(*(this + 2));
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3586);
  v3 = *(**(this + 1) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgSettings::SetAGCForceValue(BlueFin::GlDbgSettings *this, BOOL a2, int a3)
{
  v10 = a2;
  v9 = a3;
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 71, "SetAGCForceValue", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 71, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3587);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v10);
  }

  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 344))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3587);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetAGCFreezeState(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 88, "SetAGCFreezeState", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 88, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3588);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 336))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3588);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetAsstFlags(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 104, "SetAsstFlags", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 104, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3589);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 216))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3589);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetBurstMode(BlueFin::GlDbgSettings *this, BOOL a2, BOOL a3, BOOL a4, BOOL a5, BOOL a6, BOOL a7, BOOL a8)
{
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v9 = *(this + 1);
  if (*(v9 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 120, "SetBurstMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 120, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v9, 3590);
  v10 = *(this + 1);
  if ((*(*v10 + 120))(v10))
  {
    BlueFin::GlDbgCodec::Write(v10, &v25);
  }

  v11 = *(this + 1);
  if ((*(*v11 + 120))(v11))
  {
    BlueFin::GlDbgCodec::Write(v11, &v24);
  }

  v12 = *(this + 1);
  if ((*(*v12 + 120))(v12))
  {
    BlueFin::GlDbgCodec::Write(v12, &v23);
  }

  v13 = *(this + 1);
  if ((*(*v13 + 120))(v13))
  {
    BlueFin::GlDbgCodec::Write(v13, &v22);
  }

  v14 = *(this + 1);
  if ((*(*v14 + 120))(v14))
  {
    BlueFin::GlDbgCodec::Write(v14, &v21);
  }

  v15 = *(this + 1);
  if ((*(*v15 + 120))(v15))
  {
    BlueFin::GlDbgCodec::Write(v15, &v20);
  }

  v16 = *(this + 1);
  if ((*(*v16 + 120))(v16))
  {
    BlueFin::GlDbgCodec::Write(v16, &v19);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 288))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3590);
  v17 = *(**(this + 1) + 32);

  return v17();
}

uint64_t BlueFin::GlDbgSettings::SetCntinOffsetPpb(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 142, "SetCntinOffsetPpb", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 142, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3591);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 224))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3591);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetDbgParam(BlueFin::GlDbgCodec **this, char (*a2)[64], char (*a3)[256])
{
  BlueFin::GlDbgCodec::WriteStart(this[1], 3612);
  v8 = strlen(a2) + 1;
  BlueFin::GlDbgCodec::WriteArray(this[1], a2, &v8);
  v8 = strlen(a3) + 1;
  BlueFin::GlDbgCodec::WriteArray(this[1], a3, &v8);
  (*(*this[1] + 32))(this[1], 1);
  (*(*this[2] + 352))();
  BlueFin::GlDbgCodec::WriteFinal(this[1], 3612);
  v6 = *(*this[1] + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetDynamicMode(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 175, "SetDynamicMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 175, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3592);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v6);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 160))(*(a1 + 16), v6);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3592);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgSettings::SetFarStart(BlueFin::GlDbgSettings *this, _BOOL8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v26 = a4;
  v27 = a3;
  v24 = a6;
  v25 = a5;
  v23 = a7;
  v8 = *(this + 1);
  if (*(v8 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 191, "SetFarStart", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 191, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v8, 3593);
  v15 = *(this + 1);
  if ((*(*v15 + 120))(v15))
  {
    BlueFin::GlDbgCodec::Write(v15, &v28);
  }

  v16 = *(this + 1);
  if ((*(*v16 + 120))(v16))
  {
    BlueFin::GlDbgCodec::Write(v16, &v27);
  }

  v17 = *(this + 1);
  if ((*(*v17 + 120))(v17))
  {
    BlueFin::GlDbgCodec::Write(v17, &v26);
  }

  v18 = *(this + 1);
  if ((*(*v18 + 120))(v18))
  {
    BlueFin::GlDbgCodec::Write(v18, &v25);
  }

  v19 = *(this + 1);
  if ((*(*v19 + 120))(v19))
  {
    BlueFin::GlDbgCodec::Write(v19, &v24);
  }

  v20 = *(this + 1);
  if ((*(*v20 + 120))(v20))
  {
    BlueFin::GlDbgCodec::Write(v20, &v23);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 200))(*(this + 2), a2, a3, a4, a5, a6, a7);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3593);
  v21 = *(**(this + 1) + 32);

  return v21();
}

uint64_t BlueFin::GlDbgSettings::SetRTICacheTimeoutSec(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 229, "SetRTICacheTimeoutSec", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 229, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3688);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 840))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3688);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetL5HardwareDelayInMeters(BlueFin::GlDbgSettings *this, float a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 278, "SetL5HardwareDelayInMeters", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 278, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3650);
  BlueFin::GlDbgCodec::Write(*(this + 1), &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 256))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3650);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGgtoInNs(BlueFin::GlDbgSettings *this, float a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 310, "SetGgtoInNs", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 310, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3651);
  BlueFin::GlDbgCodec::Write(*(this + 1), &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 272))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3651);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBdsSignalType(BlueFin::GlDbgSettings *this, char *a2, uint64_t a3)
{
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 326, "SetBdsSignalType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 326, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3670);
  v9 = a3;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v9);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 248))(*(this + 2), a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3670);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipBdsSignalType(BlueFin::GlDbgSettings *this, unsigned __int8 (*a2)[63])
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 343, "SetOnChipBdsSignalType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 343, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3671);
  v7 = 63;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 632))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3671);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGpsSignalType(BlueFin::GlDbgSettings *this, char *a2, uint64_t a3)
{
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 360, "SetGpsSignalType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 360, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3631);
  v9 = a3;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v9);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 240))(*(this + 2), a2, a3);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3631);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipGpsSignalType(BlueFin::GlDbgSettings *this, unsigned __int8 (*a2)[32])
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 377, "SetOnChipGpsSignalType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 377, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3657);
  v7 = 32;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 624))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3657);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetSearch3G(BlueFin::GlDbgSettings *this, unsigned __int8 (*a2)[3])
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 394, "SetSearch3G", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 394, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3664);
  v7 = 3;
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 640))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3664);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGulpLogFacMask(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 455, "SetGulpLogFacMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 455, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3623);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 144))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3623);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetGulpLogPriMask(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 471, "SetGulpLogPriMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 471, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3624);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 152))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3624);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::EnableGal14_18(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 503, "EnableGal14_18", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 503, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3653);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 280))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3653);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::EnableL5Msa(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 519, "EnableL5Msa", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 519, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3655);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 592))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3655);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::EnableL5Msb(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 535, "EnableL5Msb", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 535, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3656);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 600))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3656);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipConfigParameters(BlueFin::GlDbgSettings *this, char *a2)
{
  if (!a2 || (v3 = *(this + 1), *(v3 + 101)))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 568, "SetOnChipConfigParameters", "(nullptr == pLine) || (!m_rProxy.Normal())");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 568, "(nullptr == pLine) || (!m_rProxy.Normal())");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3649);
  v7 = strlen(a2);
  BlueFin::GlDbgCodec::WriteArray(*(this + 1), a2, &v7);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 584))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3649);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetNvMemWritePeriodMs(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 603, "SetNvMemWritePeriodMs", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 603, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3602);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 208))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3602);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetPadNum(BlueFin::GlDbgSettings *this, _BOOL8 a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 619, "SetPadNum", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 619, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3603);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 104))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3603);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetPlatformSpecificFlags(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 635, "SetPlatformSpecificFlags", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 635, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3604);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 296))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3604);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPMMSettings(BlueFin::GlDbgSettings *this, uint64_t a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 651, "SetPMMSettings", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 651, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3605);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 112))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3605);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetRfAtt(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 667, "SetRfAtt", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 667, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3606);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v6);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 48))(*(a1 + 16), v6);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3606);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgSettings::SetRfLoss_dB_Ap(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 699, "SetRfLoss_dB_Ap", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 699, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3665);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 64))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3665);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetRfLoss_dB_Ap_L5(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 715, "SetRfLoss_dB_Ap_L5", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 715, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3689);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 72))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3689);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetRfLoss_dB_Cp(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 731, "SetRfLoss_dB_Cp", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 731, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3666);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 80))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3666);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetRfLoss_dB_Cp_L5(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 747, "SetRfLoss_dB_Cp_L5", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 747, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3690);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 88))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3690);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetTimeSyncGroupDelay(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 763, "SetTimeSyncGroupDelay", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 763, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3614);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 360))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3614);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipRfMode(uint64_t a1, int a2)
{
  v6 = a2;
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 811, "SetOnChipRfMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 811, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3658);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v6);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 608))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3658);
  v4 = *(**(a1 + 8) + 32);

  return v4();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipLnaMask(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 844, "SetOnChipLnaMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 844, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3659);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 616))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3659);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetUartFlowControlSettings(uint64_t a1, unsigned int a2, _BOOL8 a3, _BOOL8 a4)
{
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v5 = *(a1 + 8);
  if (*(v5 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 860, "SetUartFlowControlSettings", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 860, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v5, 3609);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), &v14);
  v8 = *(a1 + 8);
  if ((*(*v8 + 120))(v8))
  {
    BlueFin::GlDbgCodec::Write(v8, &v13);
  }

  v9 = *(a1 + 8);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v12);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 120))(*(a1 + 16), v14, a3, a4);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3609);
  v10 = *(**(a1 + 8) + 32);

  return v10();
}

uint64_t BlueFin::GlDbgSettings::SetWait4UserTimeoutMs(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 878, "SetWait4UserTimeoutMs", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 878, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3610);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 312))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3610);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetWarmStandbyTimeoutsMs(BlueFin::GlDbgSettings *this, int a2, int a3)
{
  v9 = a3;
  v10 = a2;
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 894, "SetWarmStandbyTimeoutsMs", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 894, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3611);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v10);
  }

  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 320))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3611);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetDegreeThresholdForPhn(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 911, "SetDegreeThresholdForPhn", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 911, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3616);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 96))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3616);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetDbgMode(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 927, "SetDbgMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 927, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3617);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 384))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3617);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetSyncInPolarityHigh(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 943, "SetSyncInPolarityHigh", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 943, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3613);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 368))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3613);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetLocationHubEnabled(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 976, "SetLocationHubEnabled", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 976, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3625);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 392))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3625);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::DisableSensor(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 991, "DisableSensor", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 991, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3640);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 400))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3640);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetNanoEngineKeepPatchLoaded(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1007, "SetNanoEngineKeepPatchLoaded", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1007, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3626);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 408))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3626);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBreadcrumbMaxLocsToStore(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1023, "SetBreadcrumbMaxLocsToStore", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1023, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3618);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 416))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3618);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBreadcrumbWakeupDistance(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1038, "SetBreadcrumbWakeupDistance", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1038, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3633);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 496))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3633);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBreadcrumbAccuracyMask(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1053, "SetBreadcrumbAccuracyMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1053, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3619);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 424))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3619);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBreadcrumbSelfWakeupTime(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1069, "SetBreadcrumbSelfWakeupTime", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1069, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3620);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 432))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3620);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBreadcrumbMaxMsmtsToRetrieve(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1086, "SetBreadcrumbMaxMsmtsToRetrieve", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1086, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3621);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 440))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3621);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGeofenceEnableNoMotionDetection(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1102, "SetGeofenceEnableNoMotionDetection", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1102, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3622);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 448))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3622);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipStopNotification(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1118, "SetOnChipStopNotification", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1118, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3648);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 576))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3648);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetBlankingMonitorParams(BlueFin::GlDbgSettings *this, uint64_t a2, int a3, int a4, __int16 a5, __int16 a6)
{
  v19 = a3;
  v20 = a2;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v7 = *(this + 1);
  if (*(v7 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1135, "SetBlankingMonitorParams", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1135, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v7, 3628);
  v9 = *(this + 1);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v20);
  }

  v10 = *(this + 1);
  if ((*(*v10 + 120))(v10))
  {
    BlueFin::GlDbgCodec::Write(v10, &v19);
  }

  v11 = *(this + 1);
  if ((*(*v11 + 120))(v11))
  {
    BlueFin::GlDbgCodec::Write(v11, &v18);
  }

  v12 = *(this + 1);
  if ((*(*v12 + 120))(v12))
  {
    BlueFin::GlDbgCodec::Write(v12, &v17);
  }

  v13 = *(this + 1);
  if ((*(*v13 + 120))(v13))
  {
    BlueFin::GlDbgCodec::Write(v13, &v16);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 456))(*(this + 2), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3628);
  v14 = *(**(this + 1) + 32);

  return v14();
}

uint64_t BlueFin::GlDbgSettings::SetPvtBatchingMode(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1155, "SetPvtBatchingMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1155, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3629);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 464))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3629);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipMaxNumChannels(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1171, "SetOnChipMaxNumChannels", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1171, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3661);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 648))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3661);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipAccMask(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1187, "SetOnChipAccMask", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1187, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3662);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 656))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3662);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetHighPwrCwTestEnabled(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1203, "SetHighPwrCwTestEnabled", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1203, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3630);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 472))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3630);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetLMSRollOverUpperLimit(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1219, "SetLMSRollOverUpperLimit", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1219, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3635);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 480))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3635);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::EnableOnChipMiCtrl(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1235, "EnableOnChipMiCtrl", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1235, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3632);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 488))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3632);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipEnableSpeedFilter(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1250, "SetOnChipEnableSpeedFilter", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1250, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3672);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 696))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3672);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::TurnOnGalDataBits(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1265, "TurnOnGalDataBits", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1265, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3673);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 704))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3673);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetOnChipEnableAdaptivePmm(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1280, "SetOnChipEnableAdaptivePmm", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1280, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3674);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 712))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3674);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetDisablePA(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1295, "SetDisablePA", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1295, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3683);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 800))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3683);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPowerMode(BlueFin::GlDbgSettings *this, BOOL a2, BOOL a3)
{
  v10 = a2;
  v9 = a3;
  v4 = *(this + 1);
  if (*(v4 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1310, "SetPowerMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1310, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v4, 3684);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v10);
  }

  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v9);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 808))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3684);
  v7 = *(**(this + 1) + 32);

  return v7();
}

uint64_t BlueFin::GlDbgSettings::SetDisableBlindSrch(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1326, "SetDisableBlindSrch", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1326, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3681);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 720))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3681);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::EnableNmeaReqId(BlueFin::GlDbgSettings *this)
{
  v2 = *(this + 1);
  if (*(v2 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1341, "EnableNmeaReqId", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1341, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v2, 3638);
  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 560))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3638);
  v3 = *(**(this + 1) + 32);

  return v3();
}

uint64_t BlueFin::GlDbgSettings::SetGLOBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1373, "SetGLOBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1373, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3636);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 512))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3636);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetBDSBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1389, "SetBDSBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1389, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3637);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 520))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3637);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetGALE5aBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1405, "SetGALE5aBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1405, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3643);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 528))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3643);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetGALE5bBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1421, "SetGALE5bBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1421, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3644);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 536))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3644);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetGPSL2cBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1437, "SetGPSL2cBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1437, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3645);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 544))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3645);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetNICBlankingType(uint64_t a1, unsigned __int8 a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1453, "SetNICBlankingType", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1453, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3660);
  v5 = *(a1 + 8);
  *(v5 + 143) = 2;
  v7 = a2;
  BlueFin::GlDbgCodec::Rvw(v5, &v7);
  *(v5 + 143);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 552))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3660);
  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
}

uint64_t BlueFin::GlDbgSettings::SetSwTrackAgc(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1469, "SetSwTrackAgc", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1469, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3639);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 568))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3639);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPrecisePositionMode(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1485, "SetPrecisePositionMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1485, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3647);
  v5 = *(a1 + 8);
  v8 = a2;
  BlueFin::GlDbgCodec::Write(v5, &v8);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 168))(*(a1 + 16), a2);
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3647);
  v6 = *(**(a1 + 8) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetLowGainAntenna(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1501, "SetLowGainAntenna", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1501, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3663);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 664))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3663);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGlitchRecoveryEnable(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1519, "SetGlitchRecoveryEnable", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1519, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3680);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 768))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3680);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetRtcDutyCycleEnable(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1535, "SetRtcDutyCycleEnable", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1535, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3695);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 776))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3695);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetGalBitsAlwaysOn(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1551, "SetGalBitsAlwaysOn", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1551, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3685);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 816))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3685);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetEnableL1C(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1583, "SetEnableL1C", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1583, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3698);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 880))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3698);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetExtSuspendEnabled(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1599, "SetExtSuspendEnabled", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1599, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3694);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 888))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3694);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetTestFPGA(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1615, "SetTestFPGA", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1615, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3697);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 896))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3697);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetEnableVLP(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1631, "SetEnableVLP", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1631, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3699);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 904))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3699);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetIndoorVdrPropTimeMsThresh(BlueFin::GlDbgSettings *this, int a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1647, "SetIndoorVdrPropTimeMsThresh", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1647, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3667);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 672))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3667);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetIndoorVdrPropDistMThresh(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1663, "SetIndoorVdrPropDistMThresh", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1663, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3669);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 688))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3669);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetIndoorVdrMinSpeedMps(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1679, "SetIndoorVdrMinSpeedMps", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1679, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3676);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 736))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3676);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetIndoorVdrSpeedThreshMps(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1695, "SetIndoorVdrSpeedThreshMps", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1695, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3677);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 744))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3677);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetTunnelVdrLowerSpeedMps(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1711, "SetTunnelVdrLowerSpeedMps", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1711, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3678);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 752))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3678);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetTunnelVdrUpperSpeedMps(BlueFin::GlDbgSettings *this, float a2)
{
  v8 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1727, "SetTunnelVdrUpperSpeedMps", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1727, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3679);
  v5 = *(this + 1);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v8);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 760))(a2);
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3679);
  v6 = *(**(this + 1) + 32);

  return v6();
}

uint64_t BlueFin::GlDbgSettings::SetTrackChannelForGPSGALOnlyMode(BlueFin::GlDbgSettings *this, __int16 a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1743, "SetTrackChannelForGPSGALOnlyMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1743, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3668);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 680))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3668);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetForcedSvList(BlueFin::GlDbgSettings *this, const char *a2)
{
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1797, "SetForcedSvList", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1797, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3696);
  v5 = strlen(a2);
  v12 = v5;
  v6 = *(this + 1);
  if ((*(*v6 + 120))(v6))
  {
    BlueFin::GlDbgCodec::Write(v6, &v12);
  }

  if (v5)
  {
    v7 = v5;
    v8 = a2;
    do
    {
      BlueFin::GlDbgCodec::Write(*(this + 1), v8++);
      --v7;
    }

    while (v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  v11 = 1;
  (*(**(this + 2) + 784))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3696);
  v9 = *(this + 1);
  if ((*(*v9 + 120))(v9))
  {
    BlueFin::GlDbgCodec::Write(v9, &v11);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  return 1;
}

uint64_t BlueFin::GlDbgSettings::SetGnssPropagateInStandby(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1822, "SetGnssPropagateInStandby", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1822, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3682);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 792))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3682);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetSpoofCarrierThresh(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1839, "SetSpoofCarrierThresh", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1839, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3687);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
  v7 = 6;
  BlueFin::GlDbgCodec::WriteArray(*(a1 + 8), (a2 + 4), &v7);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 832))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3687);
  v5 = *(**(a1 + 8) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetPpsSyncInMode(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1857, "SetPpsSyncInMode", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1857, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3691);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 848))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3691);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetExtBlankingPolarityToLow(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1873, "SetExtBlankingPolarityToLow", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1873, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3692);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 856))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3692);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::EnableNmeaV411(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1889, "EnableNmeaV411", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1889, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3686);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 824))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3686);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetAllowUnverifiedTimetoNvmem(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1905, "SetAllowUnverifiedTimetoNvmem", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1905, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3700);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 912))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3700);
  v5 = *(**(this + 1) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetAdcCapture(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1921, "SetAdcCapture", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1921, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3702);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 1));
  BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 4));
  BlueFin::GlDbgCodec::Write(*(a1 + 8), (a2 + 8));
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  (*(**(a1 + 16) + 920))();
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 3702);
  v5 = *(**(a1 + 8) + 32);

  return v5();
}

uint64_t BlueFin::GlDbgSettings::SetEnableCoex(BlueFin::GlDbgSettings *this, BOOL a2)
{
  v7 = a2;
  v3 = *(this + 1);
  if (*(v3 + 101))
  {
    DeviceFaultNotify("gldebug_settings.cpp", 1938, "SetEnableCoex", "!m_rProxy.Normal()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_settings.cpp", 1938, "!m_rProxy.Normal()");
  }

  BlueFin::GlDbgCodec::WriteStart(v3, 3703);
  v4 = *(this + 1);
  if ((*(*v4 + 120))(v4))
  {
    BlueFin::GlDbgCodec::Write(v4, &v7);
  }

  (*(**(this + 1) + 32))(*(this + 1), 1);
  (*(**(this + 2) + 928))();
  BlueFin::GlDbgCodec::WriteFinal(*(this + 1), 3703);
  v5 = *(**(this + 1) + 32);

  return v5();
}