BOOL BlueFin::GlPeGpsEphemerisBase::CompareEphSetFields(BlueFin::GlPeGpsEphemerisBase *this, const BlueFin::GlPeGpsEphemerisBase *a2)
{
  if ((*(*this + 192))(this, 27))
  {
    if ((*(*a2 + 192))(a2, 27))
    {
      v4 = (*(*this + 192))(this, 28);
      if (v4 != (*(*a2 + 192))(a2, 28))
      {
        return 0;
      }
    }
  }

  v5 = (*(*this + 192))(this, 5);
  if (v5 != (*(*a2 + 192))(a2, 5))
  {
    return 0;
  }

  v6 = (*(*this + 192))(this, 3);
  return v6 == (*(*a2 + 192))(a2, 3);
}

uint64_t BlueFin::GlPeGpsEphemerisBase::CompareBroadcastFields(BlueFin::GlPeGpsEphemerisBase *this, const BlueFin::GlPeGpsEphemerisBase *a2)
{
  result = (*(*this + 280))(this);
  if (result)
  {
    v5 = (*(*this + 192))(this, 0);
    if (v5 != (*(*a2 + 192))(a2, 0))
    {
      return 0;
    }

    v6 = (*(*this + 192))(this, 30);
    if (v6 != (*(*a2 + 192))(a2, 30))
    {
      return 0;
    }

    v7 = (*(*this + 192))(this, 4);
    if (v7 != (*(*a2 + 192))(a2, 4))
    {
      return 0;
    }

    v8 = (*(*this + 192))(this, 3);
    if (v8 != (*(*a2 + 192))(a2, 3))
    {
      return 0;
    }

    v9 = (*(*this + 208))(this, 6);
    if (v9 != (*(*a2 + 208))(a2, 6))
    {
      return 0;
    }

    v10 = (*(*this + 192))(this, 5);
    if (v10 != (*(*a2 + 192))(a2, 5))
    {
      return 0;
    }

    v11 = (*(*this + 192))(this, 7);
    if (v11 != (*(*a2 + 192))(a2, 7))
    {
      return 0;
    }

    v12 = (*(*this + 208))(this, 8);
    if (v12 != (*(*a2 + 208))(a2, 8))
    {
      return 0;
    }

    v13 = (*(*this + 208))(this, 9);
    if (v13 != (*(*a2 + 208))(a2, 9))
    {
      return 0;
    }

    v14 = (*(*this + 208))(this, 10);
    if (v14 != (*(*a2 + 208))(a2, 10))
    {
      return 0;
    }

    v15 = (*(*this + 208))(this, 11);
    if (v15 != (*(*a2 + 208))(a2, 11))
    {
      return 0;
    }

    v16 = (*(*this + 208))(this, 12);
    if (v16 != (*(*a2 + 208))(a2, 12))
    {
      return 0;
    }

    v17 = (*(*this + 208))(this, 13);
    if (v17 != (*(*a2 + 208))(a2, 13))
    {
      return 0;
    }

    v18 = (*(*this + 208))(this, 14);
    if (v18 != (*(*a2 + 208))(a2, 14))
    {
      return 0;
    }

    v19 = (*(*this + 192))(this, 15);
    if (v19 != (*(*a2 + 192))(a2, 15))
    {
      return 0;
    }

    v20 = (*(*this + 208))(this, 16);
    if (v20 != (*(*a2 + 208))(a2, 16))
    {
      return 0;
    }

    v21 = (*(*this + 192))(this, 17);
    if (v21 != (*(*a2 + 192))(a2, 17))
    {
      return 0;
    }

    v22 = (*(*this + 192))(this, 18);
    if (v22 != (*(*a2 + 192))(a2, 18))
    {
      return 0;
    }

    v23 = (*(*this + 208))(this, 19);
    if (v23 == (*(*a2 + 208))(a2, 19) && (v24 = (*(*this + 208))(this, 20), v24 == (*(*a2 + 208))(a2, 20)) && (v25 = (*(*this + 208))(this, 21), v25 == (*(*a2 + 208))(a2, 21)) && (v26 = (*(*this + 208))(this, 22), v26 == (*(*a2 + 208))(a2, 22)) && (v27 = (*(*this + 208))(this, 23), v27 == (*(*a2 + 208))(a2, 23)) && (v28 = (*(*this + 208))(this, 24), v28 == (*(*a2 + 208))(a2, 24)) && (v29 = (*(*this + 208))(this, 25), v29 == (*(*a2 + 208))(a2, 25)))
    {
      v30 = (*(*this + 208))(this, 26);
      return v30 == (*(*a2 + 208))(a2, 26);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetSatClkInfo(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3, double *a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v22 = v9;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.986005e14 / (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField))));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *a3 = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v21 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v20 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v21, &v22, &v20, v16);
  v17 = __sincos_stret(v20);
  v18 = ScaledFloatingField * (v9 * -4.44280763e-10);
  *a3 = *a3 + v18 * v17.__sinval;
  *a4 = v11 + v18 * v17.__cosval * v10;
  return 1;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetApproximateElevation(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22);
  v7 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + 0.00014585;
  v8 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v7 * v5;
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v10 = __sincos_stret(v8 + v9);
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
  v12 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v13 = __sincos_stret(v11 + (v5 + v12) * -0.0000729211515);
  v14 = __sincos_stret(ScaledFloatingField);
  v15 = ((a3[1] * (v14.__cosval * (v10.__sinval * 26560700.0) * v13.__cosval + v10.__cosval * 26560700.0 * v13.__sinval) + (v10.__cosval * 26560700.0 * v13.__cosval - v14.__cosval * (v10.__sinval * 26560700.0) * v13.__sinval) * *a3 + v14.__sinval * (v10.__sinval * 26560700.0) * a3[2]) / 1.6912e14 + -0.24) * 90.0;
  if (v15 <= 0.0)
  {
    if (v15 >= 0.0)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = (v15 + v16);
LABEL_7:
  if (v17 <= -90)
  {
    v17 = -90;
  }

  if (v17 >= 90)
  {
    return 90;
  }

  else
  {
    return v17;
  }
}

uint64_t BlueFin::GlPeGpsEphemerisBase::GetUncompressed(uint64_t a1, uint64_t a2)
{
  *(a2 + 124) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = (*(*a1 + 192))(a1, 0) - 1;
  *(a2 + 4) = (*(*a1 + 144))(a1) == 2;
  *(a2 + 16) = (*(*a1 + 192))(a1, 4);
  *(a2 + 20) = (*(*a1 + 192))(a1, 3);
  *(a2 + 24) = (*(*a1 + 192))(a1, 5);
  *(a2 + 48) = (*(*a1 + 208))(a1, 6);
  *(a2 + 52) = (*(*a1 + 192))(a1, 7);
  *(a2 + 56) = (*(*a1 + 208))(a1, 8);
  *(a2 + 60) = (*(*a1 + 208))(a1, 9);
  *(a2 + 64) = (*(*a1 + 208))(a1, 10);
  *(a2 + 68) = (*(*a1 + 208))(a1, 11);
  *(a2 + 72) = (*(*a1 + 208))(a1, 12);
  *(a2 + 76) = (*(*a1 + 208))(a1, 13);
  *(a2 + 80) = (*(*a1 + 208))(a1, 14);
  *(a2 + 84) = (*(*a1 + 192))(a1, 15);
  *(a2 + 88) = (*(*a1 + 208))(a1, 16);
  *(a2 + 92) = (*(*a1 + 192))(a1, 17);
  *(a2 + 96) = (*(*a1 + 192))(a1, 18);
  *(a2 + 100) = (*(*a1 + 192))(a1, 30);
  *(a2 + 108) = (*(*a1 + 208))(a1, 19);
  *(a2 + 112) = (*(*a1 + 208))(a1, 20);
  *(a2 + 116) = (*(*a1 + 208))(a1, 21);
  *(a2 + 120) = (*(*a1 + 208))(a1, 22);
  *(a2 + 124) = (*(*a1 + 208))(a1, 23);
  *(a2 + 128) = (*(*a1 + 208))(a1, 24);
  *(a2 + 132) = (*(*a1 + 208))(a1, 25);
  result = (*(*a1 + 208))(a1, 26);
  *(a2 + 136) = result;
  *(a2 + 8) = 0;
  return result;
}

BOOL BlueFin::GlPeQzssEphemeris::CompareEphSetFields(BlueFin::GlPeQzssEphemeris *this, const BlueFin::GlPeGpsEphemerisBase *a2)
{
  if ((*(*this + 192))(this, 27) && (*(*a2 + 192))(a2, 27) && (v4 = (*(*this + 192))(this, 28), v4 != (*(*a2 + 192))(a2, 28)))
  {
    v8 = 0;
  }

  else
  {
    v5 = (*(*this + 192))(this, 18);
    v6 = (*(*this + 232))(this, 18) * v5;
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v6 == (*(*a2 + 232))(a2, 18) * v7;
  }

  v9 = (*(*this + 192))(this, 5);
  v10 = (*(*a2 + 192))(a2, 5);
  v11 = (*(*this + 192))(this, 3);
  v12 = (*(*a2 + 192))(a2, 3);
  v13 = v9 == v10 && v8;
  return v11 == v12 && v13;
}

uint64_t BlueFin::GlPeQzssEphemeris::GetApproximateElevation(_DWORD *a1, uint64_t a2, double *a3)
{
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  if ((BlueFin::GlPeEphemeris::isExpired(a1, a2) & 1) != 0 || !(*(*a1 + 112))(a1, a2, &v10, 0.125))
  {
    LOBYTE(v8) = -90;
    return v8;
  }

  v6 = ((*(&v10 + 1) * a3[1] + *&v10 * *a3 + *&v11 * a3[2]) / 2.6894e14 + -0.24) * 90.0;
  if (v6 > 0.0)
  {
    v7 = 0.5;
LABEL_9:
    v8 = (v6 + v7);
    goto LABEL_10;
  }

  if (v6 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  if (v8 <= -90)
  {
    v8 = -90;
  }

  if (v8 >= 90)
  {
    LOBYTE(v8) = 90;
  }

  return v8;
}

int32x2_t *BlueFin::GlPeLtoEphemeris::GlPeLtoEphemeris(int32x2_t *a1, _DWORD *a2, unsigned int a3, char a4)
{
  *a1 = &unk_2A1F0F470;
  *BlueFin::GlPeGpsEphemerisBase::GlPeGpsEphemerisBase(a1, a2, a3, a4, 0x13u, &a1[4]) = &unk_2A1F0F470;
  if (!a2[1])
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 3611, "GlPeLtoEphemeris", "rotUncmprsdEph.ExtensionBit != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3611, "rotUncmprsdEph.ExtensionBit != 0");
  }

  BlueFin::GlPeLtoEphemeris::PutCmpUnsignedField(a1, 37, a2[8]);
  BlueFin::GlPeLtoEphemeris::PutCmpUnsignedField(a1, 32, (a2[1] >> 1) & 0xF);
  BlueFin::GlPeLtoEphemeris::PutCmpUnsignedField(a1, 35, (a2[1] >> 9) & 1);
  BlueFin::GlPeLtoEphemeris::PutCmpSignedField(a1, 36, (a2[1] << 23) >> 28);
  return a1;
}

uint64_t *BlueFin::GlPeLtoEphemeris::PutCmpSignedField(BlueFin::GlPeLtoEphemeris *this, int a2, int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v10 = 0;
  BlueFin::GlBitBuffer::Initialize(v9, v6, v7);
  if (a2 != 36)
  {
    return BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(this, a2, a3);
  }

  BlueFin::GlBitBuffer::Position(v9, 0x245u);
  return BlueFin::GlBitBuffer::PutU(v9, a3 + 16, 4u);
}

uint64_t BlueFin::GlPeGpsQzssEphMgr::sameSlotAndPlane(BlueFin::GlPeGpsQzssEphMgr *this, const BlueFin::GlPeEphemeris *a2, const BlueFin::GlPeEphemeris *a3, double *a4, BOOL *a5)
{
  *a4 = 0.0;
  *a5 = 0;
  result = (*(*a2 + 40))(a2);
  if (result)
  {
    result = (*(*a3 + 40))(a3);
    if (result)
    {
      result = (*(*a2 + 192))(a2, 27);
      if (result)
      {
        result = (*(*a3 + 192))(a3, 27);
        if (result)
        {
          Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v29);
          v12 = (*(*a2 + 32))(a2, v29, Time);
          v13 = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v29);
          v14 = (*(*a3 + 32))(a3, v29, v13) - v12;
          *a4 = v14;
          v28 = 0.0;
          v29[0].n128_u64[0] = 0;
          BlueFin::GlPeGpsQzssEphMgr::adjustEph(a2, v29, v14 * 0.5, &v28, v15);
          v26 = 0.0;
          v27 = 0.0;
          BlueFin::GlPeGpsQzssEphMgr::adjustEph(a3, &v27, *a4 * -0.5, &v26, v16);
          v17 = v29[0].n128_f64[0] + v28 - (v27 + v26);
          v18 = (v29[0].n128_f64[0] - v27) / 6.28318531;
          v19 = 0.0;
          v20 = ceil(v18 + -0.5);
          if (v18 >= 0.0)
          {
            v20 = 0.0;
          }

          v21 = floor(v18 + 0.5);
          if (v18 > 0.0)
          {
            v22 = v21;
          }

          else
          {
            v22 = v20;
          }

          v23 = v17 / 6.28318531;
          if (v17 / 6.28318531 <= 0.0)
          {
            if (v23 < 0.0)
            {
              v19 = ceil(v23 + -0.5);
            }
          }

          else
          {
            v19 = floor(v23 + 0.5);
          }

          if (fabs(v29[0].n128_f64[0] - v27 - v22 * 6.28318531) >= 0.523598776 || fabs(v17 + v19 * -6.28318531) >= 0.523598776)
          {
            v24 = BlueFin::GNSS2STR(*(this + 3));
            (*(*a2 + 136))(&v25, a2);
            GlCustomLog(14, "SuspectedBadEph %s,%d (%.0lf)\n", v24, v25, *a4);
          }

          else
          {
            *a5 = 1;
          }

          return 1;
        }
      }
    }
  }

  return result;
}

double BlueFin::GlPeGpsQzssEphMgr::adjustEph(BlueFin::GlPeGpsQzssEphMgr *this, const BlueFin::GlPeEphemeris *a2, double a3, double *a4, double *a5)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 20);
  v10 = ScaledFloatingField + BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 25) * a3;
  v11 = v10 / 6.28318531;
  v12 = 0.0;
  v13 = ceil(v10 / 6.28318531 + -0.5);
  if (v10 / 6.28318531 >= 0.0)
  {
    v13 = 0.0;
  }

  v14 = floor(v11 + 0.5);
  if (v11 > 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  *a2 = v10 - v15 * 6.28318531;
  v16 = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 17);
  v17 = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 13) + sqrt(3.986005e14 / (v16 * v16 * (v16 * v16 * (v16 * v16)))) * a3;
  v18 = v17 / 6.28318531;
  if (v17 / 6.28318531 <= 0.0)
  {
    if (v17 / 6.28318531 < 0.0)
    {
      v12 = ceil(v18 + -0.5);
    }
  }

  else
  {
    v12 = floor(v18 + 0.5);
  }

  result = v17 + v12 * -6.28318531;
  *a4 = result;
  return result;
}

uint64_t BlueFin::GlPeGpsQzssEphMgr::GetHealthBitsMask(BlueFin::GlPeGpsQzssEphMgr *this)
{
  if (*(this + 3))
  {
    return 16;
  }

  else
  {
    return 63;
  }
}

uint64_t BlueFin::GlPeGalEphemeris::GetFctS(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  if ((*(*this + 80))(this))
  {
    v4 = 604800 * (*(*this + 192))(this, 28);
    v5 = (*(*this + 192))(this, 18);
    return v4 + (*(*this + 232))(this, 18) * v5;
  }

  else
  {
    BlueFin::GlPeEphemeris::GetEphTime(this, a2, v18);
    v16 = &off_2A1F0E480;
    v17 = 0;
    Gal = BlueFin::GlPeGnssTime::GetGal(v18, &v16);
    v11 = (v16[4])(&v16, Gal);
    LODWORD(v10) = v17;
    *v11.i64 = v10 * 2.32830644e-10 + v9;
    *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    *&v15 = vbslq_s8(v14, v12, v11).u64[0];
    if (*v11.i64 > 4294967300.0)
    {
      *v11.i64 = v15;
    }

    if (*v11.i64 < -4294967300.0)
    {
      *v8.i64 = -*v11.i64;
      *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
      *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
    }

    if (*v11.i64 < 0.0)
    {
      return --*v11.i64;
    }

    else
    {
      return *v11.i64;
    }
  }
}

BOOL BlueFin::GlPeGalEphemeris::isSimulated(BlueFin::GlPeGalEphemeris *this)
{
  if ((*(*this + 192))(this, 3))
  {
    return 0;
  }

  v3 = (*(*this + 208))(this, 11);
  v4 = (*(*this + 208))(this, 23);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = v5;
  }

  if (!(*(*this + 208))(this, 21))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 19))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 14))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 16))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 26))
  {
    ++v6;
  }

  if ((*(*this + 208))(this, 25))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  return v7 > 5u;
}

uint64_t BlueFin::GlPeGalEphemeris::GetSatClkInfo(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3, double *a4)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 15);
  v22 = v9;
  v10 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + sqrt(3.98600442e14 / (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField * (ScaledFloatingField * ScaledFloatingField))));
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 9);
  v12 = (*(*a1 + 64))(a1, a2, 0);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 10) + v11 * v12;
  *a3 = v13;
  v14 = v13 - BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 6);
  v15 = (*(*a1 + 64))(a1, a2, 1) - v14;
  v21 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v10 * v15;
  v20 = 0.0;
  BlueFin::GlPeEphemeris::Kepler(&v21, &v22, &v20, v16);
  v17 = __sincos_stret(v20);
  v18 = ScaledFloatingField * (v9 * -4.44280731e-10);
  *a3 = *a3 + v18 * v17.__sinval;
  *a4 = v11 + v18 * v17.__cosval * v10;
  return 1;
}

uint64_t BlueFin::GlPeGalEphemeris::GetApproximateElevation(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22);
  v7 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12) + 0.00012376;
  v8 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v7 * v5;
  v9 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v10 = __sincos_stret(v8 + v9);
  v11 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
  v12 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v13 = __sincos_stret(v11 + (v5 + v12) * -0.0000729211515);
  v14 = __sincos_stret(ScaledFloatingField);
  v15 = ((a3[1] * (v14.__cosval * (v10.__sinval * 29632822.0) * v13.__cosval + v10.__cosval * 29632822.0 * v13.__sinval) + (v10.__cosval * 29632822.0 * v13.__cosval - v14.__cosval * (v10.__sinval * 29632822.0) * v13.__sinval) * *a3 + v14.__sinval * (v10.__sinval * 29632822.0) * a3[2]) / 1.8868e14 + -0.24) * 90.0;
  if (v15 <= 0.0)
  {
    if (v15 >= 0.0)
    {
      v17 = 0;
      goto LABEL_7;
    }

    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = (v15 + v16);
LABEL_7:
  if (v17 <= -90)
  {
    v17 = -90;
  }

  if (v17 >= 90)
  {
    return 90;
  }

  else
  {
    return v17;
  }
}

uint64_t BlueFin::GlPeGalEphMgr::SetGalileoDataPage(BlueFin::GlPeGalEphMgr *this, const BlueFin::GlGalileoINavPage *a2, int8x16_t a3, int8x16_t a4)
{
  v99 = *MEMORY[0x29EDCA608];
  v6 = *(this + 8);
  v96 = 7;
  LOBYTE(v97) = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss(v6, a2 + 8, &v96, a3, a4);
  if (v96 > 6 || (v8 = v97, v9 = v97 - 1, v9 >= 0x3F))
  {
    v77 = "otGnss.isValid()";
    DeviceFaultNotify("glpe_galephmgr.cpp", 996, "SetGalileoDataPage", "otGnss.isValid()");
    v78 = 996;
    goto LABEL_121;
  }

  if (*(this + 3) != v96)
  {
    goto LABEL_116;
  }

  v10 = *(*(this + 2) + 2568);
  v11 = (*(*this + 360))(this);
  BlueFin::GlArray::EnsureValidHandle(this + 4576, v8);
  if (*(*(this + 574) + v8 - *(this + 4612)) == 255 && *(this + 4615) == 255)
  {
    v91 = (this + 4576);
    LOBYTE(v92) = 0;
    if (!*(this + 4614))
    {
      goto LABEL_57;
    }

    v15 = 0;
    v16 = 0;
    do
    {
      v17 = BlueFin::GlArrayIterator::Next(&v91);
      v18 = *(BlueFin::GlArray::Get((this + 4576), v17) + 20);
      v19 = v10 - v18;
      if (v15 <= v10 - v18)
      {
        v20 = v17;
      }

      else
      {
        v20 = v16;
      }

      if (v15 > v19)
      {
        v19 = v15;
      }

      if (v10 > v18)
      {
        v16 = v20;
        v15 = v19;
      }
    }

    while (v92 < *(v91 + 38));
    if (v15 <= 0xEA60)
    {
LABEL_57:
      result = GlCustomLog(13, "EphMgr(GAL,%d)[%u]: No free decoders available!\n", v97, v10);
      goto LABEL_116;
    }

    BlueFin::GlArray::Remove((this + 4576), v16);
    v8 = v97;
  }

  BlueFin::GlArray::EnsureValidHandle(this + 4576, v8);
  v12 = (this + 4576);
  if (*(*(this + 574) + v8 - *(this + 4612)) != 255)
  {
    result = BlueFin::GlArray::Get(v12, v8);
    v13 = result;
    goto LABEL_24;
  }

  result = BlueFin::GlArray::Add(v12, v8);
  if (!result)
  {
    v77 = "pDecode != nullptr";
    DeviceFaultNotify("glpe_galephmgr.cpp", 1048, "SetGalileoDataPage", "pDecode != nullptr");
    v78 = 1048;
LABEL_121:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", v78, v77);
  }

  v13 = result;
  *(result + 100) = 0;
  *(result + 84) = 0u;
  *(result + 68) = 0u;
  *(result + 52) = 0u;
  *(result + 36) = 0u;
  *(result + 20) = 0u;
  *&v14 = 0x200000002;
  *(&v14 + 1) = 0x200000002;
  *result = v14;
  *(result + 16) = 2;
  if ((*(*(this + 45) + 4 * (v8 >> 5)) >> (v8 & 0x1F)))
  {
    *(result + 104) = 31;
  }

  else
  {
    *(result + 104) = 0;
  }

LABEL_24:
  v21 = *(a2 + 10);
  if (!*(a2 + 10))
  {
    goto LABEL_116;
  }

  *(v13 + 20) = v10;
  v22 = (v21 - 1);
  v23 = v21 == 5 && ((HIBYTE(*(v13 + 96)) & 6 | (*(v13 + 96) >> 23) & 1) & *&v11) != 0;
  v24 = (a2 + 20);
  v25 = vld1q_dup_f32(v24);
  v98 = vsraq_n_u32(vshlq_n_s32(vextq_s8(v25, *(a2 + 24), 0xCuLL), 2uLL), *(a2 + 24), 0x1EuLL);
  v98.i32[3] = v98.i32[3] & 0xFFFF0000 | (v98.u8[12] << 8) | (*(a2 + 9) >> 22);
  v26 = *(v13 + 4 * (v21 - 1));
  if (v26 == 2)
  {
    goto LABEL_32;
  }

  if (v23)
  {
    v26 = 2 * (((HIBYTE(v98.i32[2]) & 6 | (v98.i32[2] >> 23) & 1) & *&v11) == 0);
    *(v13 + 4 * v22) = v26;
    goto LABEL_31;
  }

  if (v21 > 4)
  {
LABEL_38:
    *(v13 + 4 * v22) = 0;
    *(v13 + 104) &= ~(1 << v22);
    goto LABEL_39;
  }

  v27 = 0;
  v28 = v13 + 16 * v22;
  v30 = *(v28 + 24);
  v29 = v28 + 24;
  v31 = (v98.i32[0] ^ v30) & 0x3FF0000;
  while (*(v29 + v27 * 4) == v98.i32[v27])
  {
    if (++v27 == 4)
    {
      goto LABEL_38;
    }
  }

  v44 = *(v13 + 104);
  *(v13 + 104) = v44 | (1 << v22);
  if (!v26)
  {
    if (!v31)
    {
      goto LABEL_33;
    }

    *(v13 + 4 * v22) = 2;
LABEL_119:
    *(v13 + 104) = v44 & ~(1 << v22);
LABEL_32:
    *(v13 + 16 * v22 + 24) = v98;
LABEL_33:
    *(v13 + 4 * v22) = 1;
    goto LABEL_39;
  }

  if (v26 != 1)
  {
LABEL_31:
    if (v26 != 2)
    {
      goto LABEL_39;
    }

    goto LABEL_32;
  }

  *(v13 + 4 * v22) = 2;
  if (v31)
  {
    goto LABEL_119;
  }

  *(v13 + 16 * v22 + 24) = v98;
  *(v13 + 4 * v22) = 1;
  v45 = (*(*this + 368))(this, &v97);
  if (!(*(*v45 + 144))(v45))
  {
    v46 = (*(*this + 368))(this, &v97);
    if (((*(*v46 + 184))(v46) & 1) == 0)
    {
      (*(*this + 288))(this, &v97, 0);
    }
  }

  if ((*(*(this + 54) + ((v97 >> 3) & 0x1C)) >> (v97 & 0x1F)))
  {
    BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), *(this + 3), 1, &v91);
    v47 = v97;
    if ((*(v91 + ((v97 >> 3) & 0x1C)) >> (v97 & 0x1F)))
    {
      v48 = *(this + 4);
      if ((*(v48 + 1636) & 4) == 0)
      {
        v49 = *(this + 3);
        LOBYTE(v91) = v97;
        BlueFin::GlGnssSet::Remove(v48 + 576, v49, &v91);
      }

      v50 = BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(14, "GalEphMgr(%s,%d): cannot determine LTO bad.\n", v50, v97);
      v47 = v97;
    }

    BlueFin::GlSetBase::Remove(this + 432, v47);
  }

LABEL_39:
  result = (*(*this + 368))(this, &v97);
  if ((*(result + 8) & 0xF) == 1)
  {
    result = (*(*result + 144))(result);
    v32 = result == 0;
  }

  else
  {
    v32 = 0;
  }

  v33 = HIBYTE(*(v13 + 96)) & 6 | (*(v13 + 96) >> 23) & 1;
  if (*(*(this + 5) + 923) == 1)
  {
    v34 = BlueFin::GlSvId::s_aucSvId2prn[*(a2 + 8)];
    if (v34 == 18 || v34 == 14)
    {
      result = BlueFin::GlPeSvHealthHelper::IsUsable(*(this + 7) + 32, &v96);
      if ((result & 1) != 0 || v33 <= 7 && ((1 << v33) & 0xC1) != 0)
      {
        v33 = 0;
      }
    }
  }

  if (*v13 != 2)
  {
    result = (*(*this + 360))(this);
    v36 = result & v33;
    if ((result & v33) == 0)
    {
      goto LABEL_93;
    }

    v37 = v97;
    v38 = *(this + 45);
    v39 = v97 >> 5;
    if (v32)
    {
      v40 = *(v38 + 4 * v39);
      v41 = v97 & 0x1F;
      v42 = 1 << (v97 & 0x1F);
      if ((v42 & v40) != 0)
      {
        v43 = 0;
        goto LABEL_78;
      }
    }

    else
    {
      v41 = v97 & 0x1F;
      v42 = 1 << (v97 & 0x1F);
      v40 = *(v38 + 4 * v39);
    }

    if ((v42 & v40) == 0)
    {
      *(this + v9 + 27) = v10;
      if ((v37 - 64) <= 0xFFFFFFC0)
      {
        DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      }

      *(v38 + 4 * v39) |= 1 << v41;
    }

    BlueFin::GNSS2STR(*(this + 3));
    if (v32)
    {
      GlCustomLog(14, "EphMgr(%s,%d): SV just went unhealthy. Putting on probation.\n");
    }

    else
    {
      GlCustomLog(14, "EphMgr(%s,%d): First decode is marked unhealthy by SV.  Putting on probation.\n");
    }

    LOBYTE(v37) = v97;
    v43 = 1;
LABEL_78:
    v51 = *(this + 7);
    LODWORD(v91) = *(this + 3);
    BYTE4(v91) = v37;
    result = BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v51 + 32), 0, &v91);
    v52 = *(this + 4);
    if ((*(v52 + 1636) & 4) == 0)
    {
      v53 = *(this + 3);
      LOBYTE(v91) = v97;
      result = BlueFin::GlGnssSet::Add(v52 + 576, v53, &v91);
    }

    if (v43)
    {
LABEL_81:
      v54 = (*(*this + 368))(this, &v97);
      v55 = (*(*v54 + 184))(v54);
      if (!*v13 && !*(v13 + 4) && !*(v13 + 8) && !*(v13 + 12) && !*(v13 + 16))
      {
        v79 = (*(*this + 368))(this, &v97);
        v80 = (*(*v79 + 184))(v79);
        BlueFin::GlSetBase::Remove(this + 432, v97);
        v81 = v97;
        if (!v36 && ((*(*(this + 45) + ((v97 >> 3) & 0x1C)) >> (v97 & 0x1F)) & 1) != 0)
        {
          *(this + v9 + 27) = 0;
          BlueFin::GlSetBase::Remove(this + 360, v81);
          v82 = BlueFin::GNSS2STR(*(this + 3));
          GlCustomLog(14, "EphMgr(%s,%d): just verified healthy. It had been unhealthy.\n", v82, v97);
          LOBYTE(v81) = v97;
        }

        v83 = *(this + 7);
        LODWORD(v91) = *(this + 3);
        BYTE4(v91) = v81;
        BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v83 + 32), v36 == 0, &v91);
        v55 |= v80 ^ 1;
        if (v36)
        {
          v84 = *(this + 4);
          if ((*(v84 + 1636) & 4) == 0)
          {
            v85 = *(this + 3);
            LOBYTE(v91) = v97;
            BlueFin::GlGnssSet::Add(v84 + 576, v85, &v91);
          }
        }
      }

      v92 = 4177;
      v93 = v95;
      v94 = vdup_n_s32(0xFF9222FF);
      v91 = &unk_2A1F0FBD0;
      memset(v95, 0, sizeof(v95));
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0, v97);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 4u, *(v13 + 68));
      if (*(*(this + 5) + 923) == 1 && ((v56 = BlueFin::GlSvId::s_aucSvId2prn[*(a2 + 8)], v56 == 18) || v56 == 14) && (BlueFin::GlPeSvHealthHelper::IsUsable(*(this + 7) + 32, &v96) || v33 <= 7 && ((1 << v33) & 0xC1) != 0))
      {
        v57 = 0;
      }

      else
      {
        v57 = (*(v13 + 96) >> 19) & 0x10 | (*(v13 + 96) >> 25) & 3;
      }

      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 3u, v57);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 5u, *(v13 + 26) & 0x3FF);
      HIDWORD(v61) = *(v13 + 92);
      LODWORD(v61) = *(v13 + 96);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 6u, (v61 >> 7) >> 22);
      ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(&v91, 6);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 6u, (*(v13 + 92) << 15) >> 22);
      v63 = BlueFin::GlPeEphemeris::GetScaledFloatingField(&v91, 6);
      HIDWORD(v61) = *(v13 + 76);
      LODWORD(v61) = *(v13 + 80);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 7u, (v61 >> 10) >> 18);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 8u, *(v13 + 84) >> 2);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 9u, (8 * *(v13 + 84)) >> 11);
      HIDWORD(v61) = *(v13 + 80);
      LODWORD(v61) = *(v13 + 84);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xAu, (v61 >> 28) >> 1);
      v64 = BlueFin::GlPeEphemeris::GetScaledFloatingField(&v91, 10);
      BlueFin::GlPeEphemeris::PutScaledFloatingField(&v91, 10, v63 - ScaledFloatingField + v64);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xBu, (*(v13 + 68) >> 8));
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xCu, (*(v13 + 60) >> 8));
      HIDWORD(v61) = *(v13 + 24);
      LODWORD(v61) = *(v13 + 28);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xDu, v61 >> 2);
      HIDWORD(v61) = *(v13 + 60);
      LODWORD(v61) = *(v13 + 64);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xEu, (v61 >> 8) >> 16);
      HIDWORD(v61) = *(v13 + 28);
      LODWORD(v61) = *(v13 + 32);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0xFu, v61 >> 2);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x10u, (*(v13 + 64) >> 8));
      HIDWORD(v61) = *(v13 + 32);
      LODWORD(v61) = *(v13 + 36);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x11u, v61 >> 2);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x12u, *(v13 + 24) >> 2);
      HIDWORD(v61) = *(v13 + 72);
      LODWORD(v61) = *(v13 + 76);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x13u, (v61 >> 10) >> 16);
      HIDWORD(v61) = *(v13 + 40);
      LODWORD(v61) = *(v13 + 44);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x14u, v61 >> 16);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x15u, (*(v13 + 76) >> 10));
      HIDWORD(v61) = *(v13 + 44);
      LODWORD(v61) = *(v13 + 48);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x16u, v61 >> 16);
      HIDWORD(v61) = *(v13 + 64);
      LODWORD(v61) = *(v13 + 68);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x17u, (v61 >> 8) >> 16);
      HIDWORD(v61) = *(v13 + 48);
      LODWORD(v61) = *(v13 + 52);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x18u, v61 >> 16);
      HIDWORD(v61) = *(v13 + 56);
      LODWORD(v61) = *(v13 + 60);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x19u, (v61 >> 16) >> 8);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x1Au, *(v13 + 52) >> 2);
      v65 = *(v13 + 96);
      v66 = *(v13 + 100);
      v67 = v91[24](&v91, 7);
      v68 = v91[29](&v91, 7);
      v69 = v91[24](&v91, 18);
      v70 = v91[29](&v91, 18);
      v71 = (__PAIR64__(v65, v66) >> 11) >> 12;
      if (v71 + 302400 >= v70 * v69)
      {
        v72 = 0;
      }

      else
      {
        v72 = -1;
      }

      if (v70 * v69 + 302400 < v71)
      {
        v73 = 1;
      }

      else
      {
        v73 = v72;
      }

      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x1Bu, 1u);
      v74 = v73 + ((v65 >> 11) & 0xFFF);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 0x1Cu, v74);
      BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(&v91, 1u, 0);
      if (v55)
      {
        (v91[27])(&v91, 2, 1);
      }

      result = (*(*this + 376))(this, &v91, 0);
      if (result)
      {
        result = BlueFin::GlPeGalEphemeris::isHealthy(&v91);
        if (result)
        {
          result = *(this + 12);
          if (result)
          {
            v86 = &unk_2A1F0EE98;
            v89 = 0;
            v90 = 0;
            v87 = *(this + 3);
            v88 = v97;
            v90 = (v68 * v67);
            HIWORD(v90) = v74;
            HIDWORD(v75) = v93[1];
            LODWORD(v75) = v93[2];
            HIDWORD(v89) = (v75 >> 2) >> 11;
            HIDWORD(v75) = v93[2];
            LODWORD(v75) = v93[3];
            LODWORD(v89) = (v75 >> 13) >> 1;
            result = BlueFin::GlPeClkCalibrateMgr::SetClkCalibrateParams(result, &v86);
          }
        }
      }

      goto LABEL_116;
    }

LABEL_93:
    if (*v13 == 2)
    {
      goto LABEL_116;
    }

    if (*(v13 + 4) == 2)
    {
      goto LABEL_116;
    }

    if (*(v13 + 8) == 2)
    {
      goto LABEL_116;
    }

    if (*(v13 + 12) == 2)
    {
      goto LABEL_116;
    }

    if (*(v13 + 16) == 2)
    {
      goto LABEL_116;
    }

    v58 = *(v13 + 42) & 0x3FF;
    if ((*(v13 + 26) & 0x3FF) != v58)
    {
      goto LABEL_116;
    }

    v59 = *(v13 + 58) & 0x3FF;
    if (v58 != v59 || v59 != (*(v13 + 74) & 0x3FF))
    {
      goto LABEL_116;
    }

    if (*(v13 + 104))
    {
      v60 = BlueFin::GNSS2STR(*(this + 3));
      result = GlCustomLog(14, "EphMgr(%s,%d): new eph, wait to be verified\n", v60, v97);
      goto LABEL_116;
    }

    goto LABEL_81;
  }

LABEL_116:
  v76 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeGalEphMgr::GetLtoAltNavData(uint64_t a1, unsigned __int8 *a2, int a3, float *a4)
{
  v4 = *a2;
  if ((v4 - 37) < 0xFFFFFFDC)
  {
    return 0;
  }

  v5 = (a1 + 32 * (v4 - 1) + 6616);
  if (*v5 + 1 != v4)
  {
    return 0;
  }

  if (a3 == 9)
  {
    v6 = 22;
    goto LABEL_8;
  }

  if (a3 != 10)
  {
    return 0;
  }

  v6 = 24;
LABEL_8:
  v8 = *&v5[v6] * 2.32830644e-10 * 299792458.0;
  *a4 = v8;
  return 1;
}

uint64_t BlueFin::GlPeGloEphemeris::GlPeGloEphemeris(uint64_t a1, uint64_t a2, unsigned int *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a1 + 8) = 2593;
  *(a1 + 32) = 0u;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *a1 = &unk_2A1F0FED0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  if ((a4 - 7) <= 0xF0u)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 66, "GlPeGloEphemeris", "IS_GLONASS_FCN(cFcn) || cFcn == INVALID_FCN");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 66, "IS_GLONASS_FCN(cFcn) || cFcn == INVALID_FCN");
  }

  BlueFin::GlPeGloEphemeris::PutCmpSignedField(a1, 4, a4);
  v12 = *a3;
  v13 = 900 * *a3;
  (*(*a1 + 216))(a1, 6, v13 / 0xE10uLL);
  (*(*a1 + 216))(a1, 7, ((v13 % 0xE10) & 0xFFFC) / 0x3C);
  HIDWORD(v14) = 60 * v12;
  LODWORD(v14) = 60 * v12;
  (*(*a1 + 216))(a1, 8, (v14 >> 2) > 0x4444444);
  (*(*a1 + 216))(a1, 9, *a3);
  (*(*a1 + 216))(a1, 10, a3[1]);
  (*(*a1 + 224))(a1, 11, a3[2]);
  (*(*a1 + 224))(a1, 12, a3[3]);
  (*(*a1 + 224))(a1, 13, a3[4]);
  (*(*a1 + 224))(a1, 14, a3[5]);
  (*(*a1 + 224))(a1, 15, a3[6]);
  (*(*a1 + 224))(a1, 16, a3[7]);
  (*(*a1 + 224))(a1, 17, a3[8]);
  (*(*a1 + 224))(a1, 18, a3[9]);
  (*(*a1 + 224))(a1, 19, a3[10]);
  (*(*a1 + 224))(a1, 20, a3[11]);
  (*(*a1 + 224))(a1, 21, a3[12]);
  (*(*a1 + 216))(a1, 23, a3[13]);
  (*(*a1 + 216))(a1, 24, 0);
  (*(*a1 + 216))(a1, 25, a6);
  (*(*a1 + 216))(a1, 26, a3[14]);
  (*(*a1 + 216))(a1, 27, *(a3 + 60) + 1);
  (*(*a1 + 224))(a1, 28, a3[16]);
  (*(*a1 + 216))(a1, 29, a3[17]);
  (*(*a1 + 216))(a1, 30, a3[18]);
  (*(*a1 + 216))(a1, 31, a3[19]);
  (*(*a1 + 216))(a1, 32, 0);
  (*(*a1 + 216))(a1, 33, 0);
  v15 = (*(*a1 + 192))(a1, 23);
  (*(*a1 + 216))(a1, 34, v15);
  (*(*a1 + 216))(a1, 35, a5 != 0);
  (*(*a1 + 216))(a1, 36, a5);
  (*(*a1 + 216))(a1, 37, 0);
  (*(*a1 + 216))(a1, 38, a7 ^ 1);
  (*(*a1 + 216))(a1, 2, 0);
  (*(*a1 + 216))(a1, 39, a7);
  return a1;
}

uint64_t BlueFin::GlPeGloEphemeris::GetFctS(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  v17 = &off_2A1F0E430;
  v18 = 0;
  BlueFin::GlPeGnssTime::GetGlns(a2, &v17);
  v3 = BlueFin::GlPeGloEphemeris::computeTk(v19, this, &v17);
  v4 = (*(*this + 192))(this, 9, v3);
  v5 = (*(*this + 232))(this, 9);
  *v5.i64 = (60 * v4 * v6);
  BlueFin::GlGlnsTime::ResolveAmbiguity(v19, v5, &v17, v7);
  v11 = (v17[4])(&v17);
  LODWORD(v10) = v18;
  *v11.i64 = v10 * 2.32830644e-10 + v9;
  *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v14 = vnegq_f64(v13);
  *&v15 = vbslq_s8(v14, v12, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    *v11.i64 = v15;
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v8.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
  }

  if (*v11.i64 < 0.0)
  {
    return --*v11.i64;
  }

  else
  {
    return *v11.i64;
  }
}

uint64_t BlueFin::GlPeGloEphemeris::SetEphTime(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    v14[0] = &off_2A1F0E430;
    v14[1] = 0;
    BlueFin::GlPeGnssTime::GetGlns(a2, v14);
    v5 = BlueFin::GlPeGloEphemeris::computeTk(&v15, this, v14);
    (*(*this + 216))(this, 35, 1, v5);
    v8 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && v16 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v9 = (*(v15 + 32))(&v15);
    (*(*this + 216))(this, 36, (v9 - v8) / 0x7861F80u + 1);
    v12 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && v16 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v13 = (*(v15 + 32))(&v15);
    return (*(*this + 216))(this, 25, (((203613265 * ((v13 - v12) % 0x7861F80u)) >> 32) >> 12) + 1);
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetSatClkInfo(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3, double *a4)
{
  v7 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12);
  *a3 = -(ScaledFloatingField + -BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11) * v7);
  *a4 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 11);
  return 1;
}

uint64_t BlueFin::GlPeGloEphemeris::GetApproximateElevation(_DWORD *a1, uint64_t a2, double *a3)
{
  v15 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  if ((BlueFin::GlPeEphemeris::isExpired(a1, a2) & 1) != 0 || !(*(*a1 + 112))(a1, a2, &v10, 0.0))
  {
    LOBYTE(v8) = -90;
    return v8;
  }

  v6 = ((*(&v10 + 1) * a3[1] + *&v10 * *a3 + *&v11 * a3[2]) / 1.6242e14 + -0.24) * 90.0;
  if (v6 > 0.0)
  {
    v7 = 0.5;
LABEL_9:
    v8 = (v6 + v7);
    goto LABEL_10;
  }

  if (v6 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  if (v8 <= -90)
  {
    v8 = -90;
  }

  if (v8 >= 90)
  {
    LOBYTE(v8) = 90;
  }

  return v8;
}

uint64_t BlueFin::GlPeLegacyGloEph::Deserialize(BlueFin::GlPeLegacyGloEph *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 37 || *(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  S8 = BlueFin::GlSysLogEntry::GetS8(a2);
  if ((S8 - 7) <= 0xF1u)
  {
    v21 = "IS_GLONASS_FCN(cFcn)";
    DeviceFaultNotify("glpe_glnephmgr.cpp", 905, "Deserialize", "IS_GLONASS_FCN(cFcn)");
    v22 = 905;
    goto LABEL_15;
  }

  v6 = S8;
  v7 = *(this + 3);
  v8 = 4 * *(this + 17);
  v33 = 0;
  BlueFin::GlBitBuffer::Initialize(v30, v7, v8);
  v9 = *(this + 17);
  BlueFin::GlBitBuffer::PutU(v30, v6 + 32, 5u);
  v10 = 8;
  do
  {
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlBitBuffer::PutU(v30, U32, 0x20u);
    --v10;
  }

  while (v10);
  if (*(a2 + 12) == 1)
  {
    v29 = 0;
    v23[0] = &v29;
    v23[1] = 0;
    v24 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0x2000000020;
    v28 = 0;
    v12 = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlBitBuffer::PutU(v23, v12, 0x20u);
    BlueFin::GlBitBuffer::Position(v23, 0);
    v13 = BlueFin::GlBitBuffer::GetU(v23, 5u);
    BlueFin::GlBitBuffer::PutU(v30, v13, 5u);
    v14 = BlueFin::GlBitBuffer::GetU(v23, 2u);
    BlueFin::GlBitBuffer::PutU(v30, v14, 2u);
    v15 = BlueFin::GlBitBuffer::GetU(v23, 5u);
    BlueFin::GlBitBuffer::PutU(v30, v15 != 0, 1u);
    BlueFin::GlBitBuffer::PutU(v30, v15, 5u);
    v16 = BlueFin::GlBitBuffer::GetU(v23, 0x13u);
    BlueFin::GlBitBuffer::PutU(v30, v16, 0x13u);
    v17 = 0;
    v18 = 27;
  }

  else
  {
    v19 = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlBitBuffer::PutU(v30, v19, 0x20u);
    v20 = 32 * v9 - 37;
    v17 = BlueFin::GlSysLogEntry::GetU32(a2) >> -v20;
    v18 = v20;
  }

  BlueFin::GlBitBuffer::PutU(v30, v17, v18);
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 942);
  if (v31 != v32)
  {
    v21 = "otBitBuffer.Remaining() == 0";
    DeviceFaultNotify("glpe_glnephmgr.cpp", 944, "Deserialize", "otBitBuffer.Remaining() == 0");
    v22 = 944;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", v22, v21);
  }

  return 1;
}

uint64_t BlueFin::GlPeLegacyGloEph::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v24 = *MEMORY[0x29EDCA608];
  if ((v3 & 0xFFFFFFFD) != 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 955, "SerializeImpl", "ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 955, "ucVersion == 2");
  }

  v4 = v2;
  v5 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v20 = 37;
    v21 = 2;
    v22 = 0x1000000000000;
    v19 = &unk_2A1F092C0;
    v23 = 2;
    v6 = (v1 + 17);
    v7 = *(v1 + 24);
    v8 = 4 * *(v1 + 17);
    v18[8] = 0;
    BlueFin::GlBitBuffer::InitializeForRead(v18, v7, v8);
    v9 = *v6;
    v10 = BlueFin::GlBitBuffer::GetU(v18, 5u);
    if ((v10 & 0xFFFFFFF0) == 0x10)
    {
      v11 = -32;
    }

    else
    {
      v11 = 0;
    }

    BlueFin::GlSysLogEntry::PutS8(&v19, v11 + v10);
    if (*v6)
    {
      v12 = 0;
      v13 = 32 * v9 - 5;
      do
      {
        if ((v13 & 0xFFE0) != 0)
        {
          v14 = 32;
        }

        else
        {
          v14 = v13;
        }

        v15 = BlueFin::GlBitBuffer::GetU(v18, v14);
        BlueFin::GlSysLogEntry::PutU32(&v19, v15);
        v13 -= v14;
        ++v12;
      }

      while (v12 < *(v5 + 17));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v4, 4);
  }

  v16 = *MEMORY[0x29EDCA608];
  return 1;
}

BOOL BlueFin::GlPeGloEphMgr::quarterCheck(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  BlueFin::GlPeTimeManager::GetTime(this, 1, v36);
  v34 = &off_2A1F0E430;
  v35 = 0;
  v3.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(v36, &v34);
  v6 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v35) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  v7 = 0;
  v8 = ((v34[4])(&v34, v3) - v6) % 0x7861F80;
  if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v7 = HIDWORD(v35) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  v9 = (v34[4])(&v34);
  if (v7)
  {
    v11 = 10799.0;
  }

  else
  {
    v11 = (v9 % 0x15180);
  }

  LODWORD(v10) = v35;
  v12 = v11 + v10 * 2.32830644e-10;
  if (v8 >> 7 >= 0x2A3)
  {
    v13 = (203613265 * v8) >> 44;
  }

  else
  {
    v13 = 1461;
  }

  if (v12 >= 10800.0)
  {
    v14 = ((203613265 * v8) >> 44) + 1;
  }

  else
  {
    v14 = v13;
  }

  BlueFin::GlPeEphemeris::GetEphTime(a2, v36, v31);
  v32 = &off_2A1F0E430;
  v33 = 0;
  v15.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(v31, &v32);
  v18 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v33) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  v19 = 0;
  v20 = ((v32[4])(&v32, v15) - v18) % 0x7861F80;
  if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v19 = HIDWORD(v33) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  v21 = (v32[4])(&v32);
  if (v19)
  {
    v23 = 10799.0;
  }

  else
  {
    v23 = (v21 % 0x15180);
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v20 >= 0x15180)
  {
    v27 = (203613265 * v20) >> 44;
  }

  else
  {
    v27 = 1461;
  }

  LODWORD(v22) = v33;
  if (v23 + v22 * 2.32830644e-10 >= 10800.0)
  {
    v27 = ((203613265 * v20) >> 44) + 1;
  }

  do
  {
    if (v26 && v25)
    {
      break;
    }

    v28 = BlueFin::GlPeGloEphMgr::quarterCheck(BlueFin::GlPeEphemeris const&)const::ausNtStartOfQuarter[v24];
    v29 = &BlueFin::GlPeGloEphMgr::quarterCheck(BlueFin::GlPeEphemeris const&)const::ausNtStartOfQuarter[v24];
    if (v28 <= v14 && *(v29 + 1) > v14)
    {
      v26 = (v24 & 3) + 1;
    }

    if (v28 <= v27 && *(v29 + 1) > v27)
    {
      v25 = (v24 & 3) + 1;
    }

    ++v24;
  }

  while (v24 != 16);
  return v26 == v25;
}

uint64_t BlueFin::GlPeGloEphMgr::SetAsstEph(BlueFin::GlPeGloEphMgr **this, const BlueFin::GlPeEphemeris *a2)
{
  if ((*(a2 + 8) & 0xF0) != 0x20)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 1219, "SetAsstEph", "rotAsstEph.GetGnss() == GNSS_GLONASS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 1219, "rotAsstEph.GetGnss() == GNSS_GLONASS");
  }

  v12 = 2593;
  v13 = v15;
  v14 = vdup_n_s32(0xFF9222FF);
  v3 = *(a2 + 3);
  v15[0] = *(a2 + 2);
  v15[1] = v3;
  v11 = &unk_2A1F0FED0;
  v4 = *(a2 + 9);
  v16 = *(a2 + 8);
  v17 = v4;
  result = (*(*this + 47))(this, &v11, 0);
  if (result)
  {
    v6 = this[2];
    if (!*(v6 + 644) || (result = BlueFin::GlPeGloEphMgr::quarterCheck(v6, &v11), result))
    {
      if ((*v13 >> 27) == 248)
      {
        v7 = v13[8];
        v8 = (v7 >> 22) & 0x1F;
        v9 = this[68];
        if (v9 && (v10 = BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(v9, (v7 >> 22) & 0x1F), v10 != -8))
        {
          BlueFin::GlPeGloEphemeris::PutCmpSignedField(&v11, 4, v10);
        }

        else
        {
          GlCustomLog(12, "GlPeGloEphMgr::SetAsstEph: Assisted ephemeris for OSN:%d cannot be used until its FCN is known.\n", v8);
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::SetAsstEph(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 60);
  if (v6 >= 0x18)
  {
    GlCustomLog(12, "GlPeGloEphMgr::SetAsstEph: Assisted ephemeris with invalid OSN:%d received and has been rejected\n", v6 + 1);
    return 0;
  }

  else
  {
    BlueFin::GlPeGloEphemeris::GlPeGloEphemeris(v9, a1 + 5856, a2, a3, a4, a5, a6);
    return (*(*a1 + 32))(a1, v9);
  }
}

uint64_t BlueFin::GlPeGloEphMgr::SetEphFcn(BlueFin::GlPeEphemerisMgr *a1, uint64_t a2, int a3)
{
  result = (*(*a1 + 368))(a1);
  if ((*(result + 8) & 0xF) == 1)
  {
    v10 = 2593;
    v11 = v13;
    v12 = vdup_n_s32(0xFF9222FF);
    v6 = *(result + 48);
    v7 = *(result + 64);
    v8 = *(result + 72);
    v13[0] = *(result + 32);
    v13[1] = v6;
    v9 = &unk_2A1F0FED0;
    v14 = v7;
    v15 = v8;
    BlueFin::GlPeGloEphemeris::PutCmpSignedField(&v9, 4, a3);
    return BlueFin::GlPeEphemerisMgr::SetEphFromBuffer(a1, &v9);
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::GetEphSrc(uint64_t a1, __n128 a2)
{
  if (*(a1 + 7969))
  {
    return 0;
  }

  v3 = *(*(a1 + 16) + 2568);
  a2.n128_f64[0] = v3;
  if (v3 <= 0xFF9222FE)
  {
    a2.n128_f64[0] = v3;
  }

  return (*(*a1 + 96))(a2);
}

uint64_t BlueFin::GlPeGloEphMgr::GetEphSrc(uint64_t a1, unsigned __int8 *a2, __n128 a3)
{
  if (*(a1 + 7969))
  {
    return 0;
  }

  else
  {
    return BlueFin::GlPeEphemerisMgr::GetEphSrc(a1, a2, a3);
  }
}

uint64_t BlueFin::GlPeGloEphMgr::GetEphIode(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (*(a1 + 7969))
  {
    return 0;
  }

  else
  {
    return BlueFin::GlPeEphemerisMgr::GetEphIode(a1, a2, a3);
  }
}

unsigned __int8 *BlueFin::GlPeGloEphMgr::GetVerifiedSet@<X0>(unsigned __int8 *this@<X0>, uint64_t a2@<X8>)
{
  if (this[7969] != 1)
  {
    return BlueFin::GlPeEphemerisMgr::GetVerifiedSet(this, a2);
  }

  *(a2 + 12) = 0;
  *a2 = a2 + 12;
  *(a2 + 8) = 2;
  return this;
}

uint64_t BlueFin::GlPeGloEphMgr::GetApproximateElevation(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if ((*(result + 7969) & 1) == 0)
  {
    return BlueFin::GlPeEphemerisMgr::GetApproximateElevation(result, a2, a3, a4);
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::DeserializeEph(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeEphemeris *a2)
{
  v4 = *(this + 2);
  if (!*(v4 + 644) || (result = BlueFin::GlPeGloEphMgr::quarterCheck(v4, a2), result))
  {

    return BlueFin::GlPeEphemerisMgr::DeserializeEph(this, a2);
  }

  return result;
}

void BlueFin::GlPeGloEphMgr::~GlPeGloEphMgr(BlueFin::GlPeGloEphMgr *this)
{
  *this = &unk_2A1F0FFF0;
}

{
  JUMPOUT(0x29C292F60);
}

BlueFin::GlPeTimeManager *BlueFin::GlPeGloFcnOsnMgr::SetAsst(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v35[6] = *MEMORY[0x29EDCA608];
  v4 = a1 + 1225;
  v5 = *a2;
  *(a1 + 1241) = *(a2 + 2);
  *(a1 + 1225) = v5;
  *(a1 + 1224) = 1;
  do
  {
    v6 = *(v4 + v3);
    v7 = v3 + 1;
    if (v6 != -8)
    {
      if ((v6 + 7) > 0xD)
      {
        GlCustomLog(12, "GlPeGloFcnOsnMgr::SetAsst: Invalid FCN received in GLONASS Auxiliary Message (%d) for OSN %d", *(v4 + v3), v3 + 1);
        *(v4 + v3) = -8;
      }

      else
      {
        v8 = *(a1 + 8);
        LOBYTE(v35[0]) = v3 + 1;
        BlueFin::GlPeGloEphMgr::SetEphFcn(v8, v35, v6);
      }
    }

    ++v3;
  }

  while (v7 != 24);
  v9 = xmmword_298A319D0;
  v10 = (a1 + 452);
  v11 = vdupq_n_s64(2uLL);
  v12 = 14;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), v9)).u8[0])
    {
      *(v10 - 5) = -7200001;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xEuLL), *&v9)).i32[1])
    {
      *v10 = -7200001;
    }

    v9 = vaddq_s64(v9, v11);
    v10 += 10;
    v12 -= 2;
  }

  while (v12);
  for (i = 0; i != 384; i += 16)
  {
    *(a1 + 716 + i) = -7200001;
  }

  v35[0] = &unk_2A1F10218;
  memset(&v35[1], 0, 36);
  result = *(a1 + 16);
  v15 = *(result + 644);
  LOBYTE(v35[1]) = v15 != 0;
  if (v15)
  {
    BlueFin::GlPeTimeManager::GetTime(result, 1, v32);
    v33 = &off_2A1F0E430;
    v34 = 0;
    v16.n128_f64[0] = BlueFin::GlPeGnssTime::GetGlns(v32, &v33);
    v19 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v34) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    BYTE1(v35[1]) = ((v33[4])(&v33, v16) + (v19 << 31 >> 31)) / 0x7861F80 + 1;
    v22 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v34) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v23 = 0;
    WORD1(v35[1]) = ((203613265 * (((v33[4])(&v33) + (v22 << 31 >> 31)) % 0x7861F80)) >> 44) + 1;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v23 = HIDWORD(v34) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    result = (v33[4])(&v33);
    if (v23)
    {
      v24.i64[0] = 0x40C5178000000000;
    }

    else
    {
      *v24.i64 = (result % 0x15180);
    }

    LODWORD(v25) = v34;
    *v24.i64 = *v24.i64 + v25 * 2.32830644e-10;
    *v27.i64 = *v24.i64 + trunc(*v24.i64 * 2.32830644e-10) * -4294967300.0;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v29 = vnegq_f64(v28);
    v27.i64[0] = vbslq_s8(v29, v27, v24).u64[0];
    if (*v24.i64 > 4294967300.0)
    {
      v24.i64[0] = v27.i64[0];
    }

    if (*v24.i64 < -4294967300.0)
    {
      *v26.i64 = -*v24.i64;
      *v24.i64 = -(*v24.i64 - trunc(*v24.i64 * -2.32830644e-10) * -4294967300.0);
      *v24.i64 = -*vbslq_s8(v29, v24, v26).i64;
    }

    if (*v24.i64 < 0.0)
    {
      v30 = --*v24.i64;
    }

    else
    {
      v30 = *v24.i64;
    }

    HIDWORD(v35[1]) = v30;
  }

  LODWORD(v35[2]) = 2;
  *(&v35[2] + 4) = *v4;
  *(&v35[4] + 4) = *(v4 + 16);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = (*(v35[0] + 24))(v35, 0, 0);
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeGloAuxMsgData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v15 = *MEMORY[0x29EDCA608];
  if (v3 >= 2)
  {
    DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 1221, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 1221, "ucVersion >= 1 && ucVersion <= 1");
  }

  v4 = v2;
  v5 = v1;
  v11 = 99;
  v12 = 1;
  v13 = 0x1000000000000;
  v10 = &unk_2A1F092C0;
  v14 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v10, *(v1 + 8));
  BlueFin::GlSysLogEntry::PutU8(&v10, *(v5 + 9));
  BlueFin::GlSysLogEntry::PutU16(&v10, *(v5 + 10));
  BlueFin::GlSysLogEntry::PutU32(&v10, *(v5 + 12));
  BlueFin::GlSysLogEntry::PutU8(&v10, *(v5 + 16));
  v6 = 0;
  v7 = v5 + 20;
  do
  {
    BlueFin::GlSysLogEntry::PutS8(&v10, *(v7 + v6++));
  }

  while (v6 != 24);
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v4, 4);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGloAuxMsgData::Deserialize(BlueFin::GlPeGloAuxMsgData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 99 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
    *(this + 9) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
    v6 = 0;
    *(this + 4) = BlueFin::GlSysLogEntry::GetU8(a2);
    v7 = this + 20;
    do
    {
      v7[v6++] = BlueFin::GlSysLogEntry::GetS8(a2);
    }

    while (v6 != 24);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 1259);
  }

  return v3;
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::GetHardcodedFcn(BlueFin::GlPeGloFcnOsnMgr *this)
{
  if ((this - 25) <= 0xFFFFFFE7)
  {
    DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 1266, "GetHardcodedFcn", "IS_GLONASS_OSN(ucOSN)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 1266, "IS_GLONASS_OSN(ucOSN)");
  }

  return BlueFin::GlPeGloFcnOsnMgr::m_acSimulationOsn2Fcn[this - 1];
}

uint64_t BlueFin::GlPeGloFcnOsnMgr::GetHcPossibleOsnsForFcn(BlueFin::GlPeGloFcnOsnMgr *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  if ((this - 7) <= 0xF1u)
  {
    DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 1272, "GetHcPossibleOsnsForFcn", "IS_GLONASS_FCN(scFcn)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 1272, "IS_GLONASS_FCN(scFcn)");
  }

  v6 = this;
  *a2 = 0;
  *a3 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (BlueFin::GlPeGloFcnOsnMgr::GetHardcodedFcn(v7) == v6)
    {
      break;
    }

    ++v7;
    if (v8 >= 0x18)
    {
      v9 = 0;
      v7 = 25;
      goto LABEL_7;
    }
  }

  *a2 = v7;
  v9 = 1;
LABEL_7:
  while (v7 <= 0x17u)
  {
    if (BlueFin::GlPeGloFcnOsnMgr::GetHardcodedFcn(++v7) == v6)
    {
      *a3 = v7;
      return (v9 + 1);
    }
  }

  return v9;
}

uint64_t BlueFin::GlPeGnssHwBiasData::Deserialize(BlueFin::GlPeGnssHwBiasData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 39 || *(a2 + 12) - 4 < 0xFFFFFFFD)
  {
    return 0;
  }

  *(this + 12) = 0u;
  v5 = this + 12;
  *(this + 56) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  if (*(a2 + 12) == 1)
  {
    S8 = BlueFin::GlSysLogEntry::GetS8(a2);
    BlueFin::GlSysLogEntry::GetU32(a2);
    D64 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + S8 + 25) = D64;
    BlueFin::GlSysLogEntry::GetD64(a2);
    goto LABEL_16;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
  if (*(a2 + 12) < 3u)
  {
    v9 = 9;
LABEL_10:
    for (i = 0; i != v9; ++i)
    {
      F32 = BlueFin::GlSysLogEntry::GetF32(a2);
      if (i <= 0xE)
      {
        *&v5[4 * i] = F32;
      }
    }

    goto LABEL_14;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  if (U8)
  {
    v9 = U8;
    goto LABEL_10;
  }

LABEL_14:
  v12 = 0;
  v13 = this + 72;
  do
  {
    *&v13[v12] = BlueFin::GlSysLogEntry::GetF32(a2);
    v12 += 4;
  }

  while (v12 != 56);
LABEL_16:
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glpe_gnsshwbiasmgr.cpp", 80, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_gnsshwbiasmgr.cpp", 80, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlPeGnssHwBiasData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v19 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (v4 >= 4)
  {
    DeviceFaultNotify("glpe_gnsshwbiasmgr.cpp", 91, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_gnsshwbiasmgr.cpp", 91, "ucVersion >= 1 && ucVersion <= 3");
  }

  v5 = v2;
  v6 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    if (v4 == 1)
    {
      v7 = 0;
      v8 = v1 + 72;
      do
      {
        v15 = 39;
        v16 = 1;
        v17 = 0x1000000000000;
        v14 = &unk_2A1F092C0;
        v18 = 1;
        BlueFin::GlSysLogEntry::PutS8(&v14, v7 - 7);
        BlueFin::GlSysLogEntry::PutU32(&v14, 0);
        BlueFin::GlSysLogEntry::PutD64(&v14, *(v8 + 4 * v7));
        BlueFin::GlSysLogEntry::PutD64(&v14, 0.0);
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v5, 4);
        ++v7;
      }

      while (v7 != 14);
    }

    else
    {
      v15 = 39;
      v16 = v4;
      v17 = 0x1000000000000;
      v14 = &unk_2A1F092C0;
      v18 = v4;
      BlueFin::GlSysLogEntry::PutU8(&v14, *(v1 + 8));
      if (v16 < 3u)
      {
        v9 = 9;
      }

      else
      {
        BlueFin::GlSysLogEntry::PutU8(&v14, 15);
        v9 = 15;
      }

      v10 = (v6 + 12);
      do
      {
        BlueFin::GlSysLogEntry::PutF32(&v14, *v10++);
        --v9;
      }

      while (v9);
      v11 = v6 + 72;
      do
      {
        BlueFin::GlSysLogEntry::PutF32(&v14, *(v11 + v9));
        v9 += 4;
      }

      while (v9 != 56);
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v14, v5, 4);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeGnssHwBiasMgr::Initialize(uint64_t result, int a2, float *a3, __int128 *a4)
{
  v4 = *(result + 8);
  if (a2 == 4 && (v4 | 2) == 3 && (vabds_f32(*a3, *(result + 12)) > 0.00000011921 || vabds_f32(a3[3], *(result + 24)) > 0.00000011921 || vabds_f32(a3[6], *(result + 36)) > 0.00000011921 || vabds_f32(a3[11], *(result + 56)) > 0.00000011921 || vabds_f32(a3[2], *(result + 20)) > 20.0 || vabds_f32(a3[4], *(result + 28)) > 20.0 || vabds_f32(a3[5], *(result + 32)) > 20.0 || vabds_f32(a3[8], *(result + 44)) > 20.0 || vabds_f32(a3[12], *(result + 60)) > 20.0))
  {
    return GlCustomLog(15, "NVMEM HWBIAS values ignored due to suspected Notch Filter Or LTE filter configuration change/enabled.\n");
  }

  if (v4 <= a2)
  {
    *(result + 8) = a2;
    v5 = *a3;
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    *(result + 56) = *(a3 + 11);
    *(result + 44) = v7;
    *(result + 28) = v6;
    *(result + 12) = v5;
    v8 = *a4;
    v9 = a4[1];
    v10 = a4[2];
    *(result + 120) = *(a4 + 6);
    *(result + 104) = v10;
    *(result + 88) = v9;
    *(result + 72) = v8;
    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        return (*(*result + 24))(result, 0, 0);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlComStressImpl::GlComStressImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F102C0;
  *(a1 + 8) = 0;
  *(a1 + 12) = xmmword_298A3CAF0;
  *(a1 + 28) = 0x10000000004;
  *(a1 + 1316) = 0;
  *(a1 + 2352) = 0;
  *(a1 + 2354) = 0;
  *(a1 + 2356) = 0;
  *(a1 + 2360) = a1;
  *(a1 + 2368) = a2;
  *(a1 + 2376) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2388) = xmmword_298A3CB00;
  *(a1 + 3517) = 0;
  *(a1 + 3492) = 0;
  *(a1 + 3500) = 0u;
  *(a1 + 3520) = 0u;
  *(a1 + 3536) = 0u;
  *(a1 + 3552) = 0u;
  *(a1 + 3564) = 0u;
  *(a1 + 3628) = 0u;
  BlueFin::GlComStressImpl::Reset(a1);
  return a1;
}

void BlueFin::GlComStressImpl::Reset(BlueFin::GlComStressImpl *this)
{
  *(this + 297) = 0x100000001;
  *(this + 2384) = 1;
  *(this + 597) = 16;
  *(this + 599) = 0;
  *(this + 2354) = 0;
  *(this + 3514) = -16711936;
  *(this + 3524) = 0u;
  *(this + 3540) = 0u;
  *(this + 3556) = 0u;
  *(this + 3572) = 0u;
  *(this + 3588) = 0u;
  *(this + 3604) = 0u;
  *(this + 3620) = 0;
  *(this + 329) = 0;
  v2 = this + 36;
  *(this + 165) = 0x80000000000;
  bzero(this + 1328, 0x402uLL);
  v3 = 0;
  v4 = xmmword_298A346A0;
  v5.i64[0] = 0x1010101010101010;
  v5.i64[1] = 0x1010101010101010;
  do
  {
    *&v2[v3] = v4;
    v3 += 16;
    v4 = vaddq_s8(v4, v5);
  }

  while (v3 != 1024);
  v6 = 0;
  v7 = xmmword_298A346A0;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  do
  {
    *(this + v6 + 1060) = v7;
    v6 += 16;
    v7 = vaddq_s8(v7, v8);
  }

  while (v6 != 256);
  *(this + 589) = 0;
}

void BlueFin::GlComStressImpl::~GlComStressImpl(BlueFin::GlComStressImpl *this)
{
  *this = &unk_2A1F102C0;
  if (*(this + 910))
  {
    DeviceFaultNotify("gl_comstress_impl.cpp", 98, "~GlComStressImpl", "m_eState == CS_IDLE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", 98, "m_eState == CS_IDLE");
  }
}

{
  BlueFin::GlComStressImpl::~GlComStressImpl(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlComStressImpl::StartTest(BlueFin::GlComStressImpl *this, int a2, int a3, int a4)
{
  v11[2] = *MEMORY[0x29EDCA608];
  if (*(this + 910))
  {
    GlCustomLog(11, "CS: ERROR, test is already running!\n");
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  BlueFin::GlComStressImpl::Reset(this);
  if ((a2 - 129) <= 0xFFFFFF7F)
  {
    GlCustomLog(11, "CS:ERROR Load Max in KB out of bound : %u (should be >0 && <= 128)\n");
    goto LABEL_8;
  }

  if (!a3)
  {
    GlCustomLog(11, "CS: ERROR Startup Loop Iteration Count cannot be 0\n");
    goto LABEL_8;
  }

  *(this + 595) = a3;
  *(this + 597) = a2;
  *(this + 598) = a4;
  GlCustomLog(14, "CS: StartTest(ulLoadMaxKb=%u, ulLoopIterationStartup=%u. m_ulFlags=0x%08x)\n", a2, a3, a4);
  v11[0] = 0x8080808080808080;
  v11[1] = 0x8080808080808080;
  (*(**(this + 296) + 32))(*(this + 296), v11, 16);
  v8 = 1;
  *(this + 8) = 1;
  *(this + 3) = (*(**(this + 296) + 24))(*(this + 296)) + 200;
  (*(**(this + 296) + 16))(*(this + 296), 200);
LABEL_9:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t BlueFin::GlComStressImpl::SetTimerMs(BlueFin::GlComStressImpl *this, int a2)
{
  if (a2 < 0)
  {
    *(this + 8) = 0;
  }

  else
  {
    *(this + 8) = 1;
    *(this + 3) = (*(**(this + 296) + 24))(*(this + 296)) + a2;
  }

  v3 = *(**(this + 296) + 16);

  return v3();
}

uint64_t BlueFin::GlComStressImpl::StopTest(BlueFin::GlComStressImpl *this)
{
  if (*(this + 910))
  {
    *(this + 8) = 0;
    (*(**(this + 296) + 16))(*(this + 296), 0xFFFFFFFFLL);
    GlCustomLog(14, "CS:Stop requested\n");
    result = BlueFin::GlComStressImpl::PrintTransportLayerStatsTotal(this);
    if ((*(this + 910) & 0xFFFFFFF8) == 8)
    {
      *(this + 3580) = 0;
      result = (*(**(this + 296) + 56))(*(this + 296), this + 3580);
    }

    *(this + 910) = 0;
  }

  else
  {

    return GlCustomLog(11, "CS:ERROR, test is not running!\n");
  }

  return result;
}

uint64_t BlueFin::GlComStressImpl::PrintTransportLayerStatsTotal(BlueFin::GlComStressImpl *this)
{
  v2 = (*(**(this + 296) + 24))(*(this + 296));
  v3 = *(this + 908);
  if (v3)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + *(this + 909);
  *(this + 909) = v5;
  v6 = v5 / 1000.0;
  v7 = *(this + 886);
  v8 = *(this + 885);
  v9 = v7 / v5;
  v10 = v5 == 0;
  v11 = v8 / v5;
  if (v10)
  {
    v11 = 0;
  }

  result = GlCustomLog(14, "# CS: Total/Active : %.1f/%.1f sec elapsed, %u/%u Tx/Rx bytes, %u/%u Tx/Rx Pkts, %u/%u Tx/Rx kB/s(Active)\n", (v2 - *(this + 907)) / 1000.0, v6, v7, v8, *(this + 883), *(this + 884), v9, v11);
  v13 = *(this + 882);
  v14 = *(this + 887);
  if (!*(this + 3524))
  {
    if (!v14)
    {
      return result;
    }

    v13 = 0;
  }

  return GlCustomLog(11, "# CS: ERROR: RxPacketLost=%u RxGarbageBytes=%u TxPacketBroken=%u \n", v13, *(this + 881), v14);
}

void BlueFin::GlComStressImpl::ProcessBriPacket(BlueFin::GlComStressImpl *this, unsigned __int8 *a2, int a3)
{
  v60 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = a3;
    if (a3 >= 1)
    {
      v4 = a2;
      v6 = (this + 3500);
      v7 = this + 2404;
      v56 = this + 1328;
      v57 = this + 36;
      do
      {
        v9 = *v4++;
        v8 = v9;
        ++*(this + 885);
        v10 = *(this + 880) + 1;
        *(this + 880) = v10;
        v11 = *(this + 875);
        if (v11 > 4)
        {
          if (v11 <= 6)
          {
            if (v11 != 5)
            {
              *(this + 876) += v8 << 16;
              v15 = 7;
LABEL_46:
              *(this + 875) = v15;
              goto LABEL_124;
            }

            *(this + 876) += v8 << 8;
            *(this + 875) = 6;
          }

          else
          {
            if (v11 == 7)
            {
              *(this + 876) += v8 << 24;
              if (*(this + 3518))
              {
                v15 = 9;
              }

              else
              {
                v15 = 8;
              }

              goto LABEL_46;
            }

            if (v11 == 8)
            {
              if (v8 != 252)
              {
                goto LABEL_122;
              }

              v17 = *(this + 3513);
              v18 = *(this + 876);
              v19 = *(this + 1746);
              v20 = *(this + 910);
              if (v20 > 3)
              {
                if ((v20 - 8) < 8)
                {
                  v21 = v17 & 0xF;
                  if (v21 == 9)
                  {
                    GlCustomLog(15, "CS: HandleBriMemRead:     addr:0x%08X(%d) ExptMemReadResp=%d\n", v18, v19, *(this + 329));
                    if ((v19 & 0xFFFC) == 0)
                    {
                      v53 = "usSize >= 4";
                      DeviceFaultNotify("gl_comstress_impl.cpp", 383, "HandleBriMemRead", "usSize >= 4");
                      v54 = 383;
                      goto LABEL_151;
                    }

                    if ((v18 - 269281408) > 0x3FC || (v18 & 3) != 0)
                    {
                      GlCustomLog(11, "CS: ERROR : HandleBriMemRead : The Mem Read Response packet is broken\n");
                      v26 = 0;
                      goto LABEL_103;
                    }

                    v22 = *(this + 3517) + 1;
                    v23 = v22 + *(this + 329);
                    RxSeqIdFromMemAddr = BlueFin::GlComStressImpl::GetRxSeqIdFromMemAddr(v18);
                    if (v22 <= v23)
                    {
                      if (v22 <= RxSeqIdFromMemAddr)
                      {
                        goto LABEL_93;
                      }

                      goto LABEL_94;
                    }

                    if (v22 <= RxSeqIdFromMemAddr)
                    {
                      goto LABEL_95;
                    }

LABEL_93:
                    if (v23 <= RxSeqIdFromMemAddr)
                    {
LABEL_94:
                      GlCustomLog(11, "CS: ERROR : HandleBriMemRead : Skip unexpected packet : addr=0x%08X\n", v18);
                      v26 = 1;
                      goto LABEL_103;
                    }

LABEL_95:
                    v55 = v6;
                    v38 = 0;
                    *(this + 329) += ~(BlueFin::GlComStressImpl::GetRxSeqIdFromMemAddr(v18) + ~*(this + 3517)) | 0xFFFFFF00;
                    v39 = 1;
                    do
                    {
                      v40 = v57[(v18 + 6016 + v38) & 0x3FF];
                      if (v7[v38] != v40)
                      {
                        GlCustomLog(11, "CS: ERROR : HandleBriMemRead : i(%d) = %d Received 0x%02X != Expected 0x%02X\n", v18 - 269281408, v38, v7[v38], v40);
                        v39 = 0;
                      }

                      ++v38;
                    }

                    while (v19 != v38);
                    *(this + 3517) = BlueFin::GlComStressImpl::GetRxSeqIdFromMemAddr(v18);
                    if (v39)
                    {
                      v26 = 1;
                      v6 = v55;
                    }

                    else
                    {
                      v26 = 0;
                      v6 = v55;
LABEL_103:
                      (*(**(this + 296) + 48))(*(this + 296));
                    }

LABEL_104:
                    if (!*(this + 329) && !*(this + 330))
                    {
                      --*(this + 594);
                      *(this + 8) = 0;
                      (*(**(this + 296) + 16))(*(this + 296), 0xFFFFFFFFLL);
                      if (*(this + 910) == 12)
                      {
                        BlueFin::GlComStressImpl::SetTimerMs(this, *(*(this + 295) + 24));
                        goto LABEL_119;
                      }

LABEL_118:
                      BlueFin::GlComStressImpl::UpdateStressState(this);
                    }

                    goto LABEL_119;
                  }

                  v26 = 0;
                  if (v21 != 10 || v19 != 4)
                  {
                    goto LABEL_104;
                  }

                  v27 = *(this + 601);
                  GlCustomLog(15, "CS: HandleCRCResponse : addr:0x%08X(000) CrcChecksum=0x%08X ExptCrcResp=%u\n", v18, v27, *(this + 330));
                  v28 = *(this + 330);
                  if (!v28)
                  {
                    v53 = "m_ulExpectedCrcResponse > 0";
                    DeviceFaultNotify("gl_comstress_impl.cpp", 474, "HandleCrcResponse", "m_ulExpectedCrcResponse > 0");
                    v54 = 474;
                    goto LABEL_151;
                  }

                  v29 = *(this + 331);
                  if (v29 + 269281408 > v18 || v29 + 269282428 < v18 || ((v18 - v29) & 3) != 0)
                  {
                    GlCustomLog(11, "CS: ERROR : HandleCRCResponse : The CRC Response packet is broken\n");
                    v30 = 0;
                    goto LABEL_65;
                  }

                  v41 = *(this + 2352);
                  v42 = *(this + 3515) + 1;
                  v43 = v42 + v28;
                  TxSeqIdFromMemAddr = BlueFin::GlComStressImpl::GetTxSeqIdFromMemAddr(v29, v18);
                  v45 = v43;
                  if (v42 <= v43)
                  {
                    v46 = v56;
                    if (v42 <= TxSeqIdFromMemAddr)
                    {
                      goto LABEL_128;
                    }
                  }

                  else
                  {
                    v46 = v56;
                    if (v42 <= TxSeqIdFromMemAddr)
                    {
LABEL_130:
                      if (!*(this + 330))
                      {
                        v48 = 0;
                        goto LABEL_138;
                      }

                      v48 = 0;
                      while (BlueFin::GlComStressImpl::GetTxSeqIdFromMemAddr(*(this + 331), v18) != (*(this + 3515) + 1 + v48))
                      {
                        v41 = (v41 + 1) & 0x3FF;
                        if (++v48 >= *(this + 330))
                        {
                          goto LABEL_138;
                        }
                      }

                      if (*&v46[4 * v41] == v27)
                      {
LABEL_138:
                        v49 = 0;
                      }

                      else
                      {
                        GlCustomLog(11, "CS: ERROR : CRC is not matched. addr=0x%08X Expected=0x%08X Received=0x%08X\n", v18, 4 * (*(this + 3515) + 1) + *(this + 331) + 269281408, v27);
                        (*(**(this + 296) + 48))(*(this + 296));
                        v49 = 1;
                      }

                      v50 = *(this + 330);
                      if (v48 < v50)
                      {
                        *(this + 2352) = v41 + 1;
                        *(this + 330) = v50 - (v48 + 1);
                        *(this + 3515) = BlueFin::GlComStressImpl::GetTxSeqIdFromMemAddr(*(this + 331), v18);
                        if (v49)
                        {
                          v30 = v48 + 1;
                        }

                        else
                        {
                          v30 = v48;
                        }

                        if (v30)
                        {
                          GlCustomLog(11, "CS: ERROR : HandleCRCResponse: Sequence jump or CRC error are found. Received(0x%08X), CRC(%s)\n", v18, "not matched");
                          goto LABEL_65;
                        }

                        goto LABEL_66;
                      }

                      v51 = *(this + 331) + 269281408 + 4 * (*(this + 3515) + 1);
                      GlCustomLog(11, "CS: ERROR : HandleCRCResponse: Not TxSeqId found in the Queue. Expected=0x%08X Received=0x%08X\n");
LABEL_146:
                      v30 = 0;
LABEL_65:
                      (*(**(this + 296) + 48))(*(this + 296));
LABEL_66:
                      *(this + 887) += v30;
                      v26 = 1;
                      goto LABEL_104;
                    }

LABEL_128:
                    if (v45 > TxSeqIdFromMemAddr)
                    {
                      goto LABEL_130;
                    }
                  }

                  GlCustomLog(11, "CS: ERROR : HandleCRCResponse: Received unexpected packet. addr=0x%08X\n");
                  goto LABEL_146;
                }

                if (v20 == 4)
                {
                  if ((v17 & 0xF) == 9)
                  {
                    GlCustomLog(15, "CS: HandleBriMemReadForSetup : addr:0x%08X(%d) ExptMemReadResp=%d\n", v18, v19, *(this + 329));
                    if ((v19 & 0xFFFC) == 0)
                    {
                      v53 = "usSize >= 4";
                      DeviceFaultNotify("gl_comstress_impl.cpp", 438, "HandleBriMemReadForSetup", "usSize >= 4");
                      v54 = 438;
                      goto LABEL_151;
                    }

                    if (v18 <= 0x100CE87F || (v18 & 3) != 0)
                    {
                      GlCustomLog(11, "CS: ERROR : HandleBriMemReadForSetup : The Mem Read Response packet is broken\n");
                    }

                    else
                    {
                      v31 = 0;
                      v32 = v18 - 269281408;
                      --*(this + 329);
                      v33 = v18 + 6016;
                      v34 = 1;
                      do
                      {
                        while (1)
                        {
                          v35 = v57[(v33 + v31) & 0x3FF];
                          if (v7[v31] == v35)
                          {
                            break;
                          }

                          GlCustomLog(11, "CS: ERROR : HandleBriMemReadForSetup : i(%d) = %d Received 0x%02X != Expected 0x%02X\n", v32, v31, v7[v31], v35);
                          v34 = 0;
                          if (v19 - 1 == v31++)
                          {
                            goto LABEL_114;
                          }
                        }

                        ++v31;
                      }

                      while (v19 != v31);
                      if (v34)
                      {
                        v26 = 1;
                        goto LABEL_115;
                      }
                    }

LABEL_114:
                    (*(**(this + 296) + 48))(*(this + 296));
                    v26 = 0;
                    goto LABEL_115;
                  }

                  v26 = 0;
LABEL_115:
                  if (!*(this + 329) && !*(this + 330))
                  {
                    *(this + 910) = 5;
                    goto LABEL_118;
                  }

LABEL_119:
                  if (v26)
                  {
LABEL_120:
                    ++*(this + 884);
LABEL_123:
                    *v6 = 0;
                    bzero(v7, 0x444uLL);
                    goto LABEL_124;
                  }
                }

LABEL_121:
                v10 = *(this + 880);
LABEL_122:
                *(this + 881) += v10;
                *(this + 880) = 0;
                goto LABEL_123;
              }

              v25 = *(this + 3512);
              if (v20 == 1)
              {
                if (*(this + 3512) || v17 != 31 || v19 != 4)
                {
                  goto LABEL_121;
                }

                GlCustomLog(14, "CS:Recevied Bri Ext Flowcontrol response mode = 0x%02X, hostif signalling = 0x%02X\n", *(this + 876), *(this + 2404));
                *(this + 910) = 2;
                GlCustomLog(14, "CS: Sending Version Request\n");
                v58 = 0xC000000009FD00FFLL;
                v59 = -4;
                (*(**(this + 296) + 32))(*(this + 296), &v58, 9);
                *(this + 886) += 9;
                ++*(this + 883);
              }

              else
              {
                if (v20 != 2)
                {
                  if (v20 != 3 || *(this + 3512) || (v17 & 0xF) != 0xE || *(this + 1746))
                  {
                    goto LABEL_121;
                  }

                  GlCustomLog(14, "CS:Clock Config 0x%08X\n", *(this + 876));
                  if (v18 != 335545088 || *(this + 589) != 805306389)
                  {
                    GlCustomLog(14, "CS: ERROR: Wrong response of Clock Config\n");
                    goto LABEL_121;
                  }

                  goto LABEL_90;
                }

                if (v18 != -1073741824 || *(this + 3512) || (v17 & 0xF) != 9 || v19 != 4)
                {
                  goto LABEL_121;
                }

                v37 = *(this + 601);
                *(this + 589) = v37;
                GlCustomLog(14, "CS:Version received 0x%08X\n", v37);
                if (*(this + 589) == 805306389 && (*(this + 2392) & 1) != 0)
                {
                  *(this + 910) = 3;
                  BlueFin::GlComStressImpl::BriClockConfig(this);
                }

                else
                {
LABEL_90:
                  *(this + 910) = 4;
                  BlueFin::GlComStressImpl::BriSetupTest(this);
                }
              }

              BlueFin::GlComStressImpl::SetTimerMs(this, *(*(this + 295) + 20));
              goto LABEL_120;
            }

            if (v11 != 9)
            {
              goto LABEL_155;
            }

            if (!*(this + 877))
            {
              goto LABEL_16;
            }

            v12 = *(this + 873);
            *(this + 873) = v12 + 1;
            v7[v12] = v8;
            v13 = *(this + 877) - 1;
            *(this + 877) = v13;
            if (*(this + 873) >= 0x441u)
            {
              v53 = "m_uiRxOffset <= MEM_READ_BUF_SIZE";
              DeviceFaultNotify("gl_comstress_impl.cpp", 1227, "ProcessBriPacket", "m_uiRxOffset <= MEM_READ_BUF_SIZE");
              v54 = 1227;
              goto LABEL_151;
            }

            if (!v13)
            {
LABEL_16:
              v14 = 8;
LABEL_42:
              *v6 = v14;
            }
          }
        }

        else if (v11 <= 1)
        {
          if (v11)
          {
            if (v11 != 1)
            {
LABEL_155:
              v53 = "0";
              DeviceFaultNotify("gl_comstress_impl.cpp", 1253, "ProcessBriPacket", "0");
              v54 = 1253;
LABEL_151:
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v54, v53);
            }

            *(this + 3512) = v8;
            *(this + 877) = 4 * v8 + 4;
            *(this + 875) = 2;
          }

          else if (v8 == 254)
          {
            *v6 = 1;
            bzero(v7, 0x444uLL);
            *(this + 880) = 1;
          }

          else
          {
            ++*(this + 881);
          }
        }

        else
        {
          if (v11 == 2)
          {
            if (v8 != 253)
            {
LABEL_47:
              *(this + 875) = 0;
              *(this + 881) += v10;
              *(this + 880) = 0;
              goto LABEL_124;
            }

            v14 = 3;
            goto LABEL_42;
          }

          if (v11 == 3)
          {
            *(this + 3513) = v8;
            *(this + 875) = 4;
            *(this + 3518) = 1;
            v16 = v8 & 0xF;
            if ((v16 - 9) >= 2)
            {
              if (v16 == 14)
              {
                goto LABEL_29;
              }

              if (v16 != 15)
              {
                goto LABEL_47;
              }

              if ((v8 & 0xF0) != 0x10)
              {
LABEL_29:
                *(this + 3518) = 0;
              }
            }
          }

          else
          {
            *(this + 876) = v8;
            *(this + 875) = 5;
          }
        }

LABEL_124:
        ++*(this + 874);
        v47 = __OFSUB__(v3--, 1);
      }

      while (!((v3 < 0) ^ v47 | (v3 == 0)));
    }
  }

  v52 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlComStressImpl::Tick(BlueFin::GlComStressImpl *this)
{
  v11[2] = *MEMORY[0x29EDCA608];
  if ((*(*this + 48))(this))
  {
    if ((*(*this + 56))(this))
    {
      if (*(this + 2354))
      {
        v2 = *(this + 910);
        if ((v2 - 1) <= 3)
        {
          DeviceFaultNotify("gl_comstress_impl.cpp", 358, "Tick", "false");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", 358, "false");
        }

        if ((v2 & 0xFFFFFFF8) == 8 && (*(this + 2384) & 1) == 0 && (v2 != 12 || *(this + 329) || *(this + 330)))
        {
          ++*(this + 599);
          GlCustomLog(11, "#### CS: ERROR #### timeout waiting for response!\n");
          *(this + 1316) = 0;
          *(this + 1176) = 0;
          *(this + 3517) = *(this + 3516) - 1;
          *(this + 3515) = *(this + 3514) - 1;
          (*(**(this + 296) + 48))(*(this + 296));
        }

        v3 = *MEMORY[0x29EDCA608];

        return BlueFin::GlComStressImpl::UpdateStressState(this);
      }

      *(this + 2354) = 1;
      *(this + 907) = (*(**(this + 296) + 24))(*(this + 296));
      *(this + 3636) = 0x100000000;
      GlCustomLog(14, "CS: Sending FlowControl\n");
      v11[0] = 0x100E33011FFD00FFLL;
      *(v11 + 5) = 0xFC00008911100E33;
      (*(**(this + 296) + 32))(*(this + 296), v11, 13);
      *(this + 886) += 13;
      ++*(this + 883);
      v9 = *(*(this + 295) + 20);
    }

    else
    {
      v6 = *(this + 3);
      v7 = (*(**(this + 296) + 24))(*(this + 296));
      GlCustomLog(14, "#### CS: INFO #### Tick called too early (%u) (%u), will restart timer!\n", v6, v7);
      if (*(this + 8) == 1)
      {
        v8 = (*(**(this + 296) + 24))(*(this + 296));
        v9 = (*(this + 3) - v8) & ~((*(this + 3) - v8) >> 31);
      }

      else
      {
        v9 = 0;
      }
    }

    v10 = *MEMORY[0x29EDCA608];

    return BlueFin::GlComStressImpl::SetTimerMs(this, v9);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];

    return GlCustomLog(11, "#### CS: ERROR #### Invalid Tick call : Timer not set\n");
  }
}

uint64_t BlueFin::GlComStressImpl::UpdateStressState(BlueFin::GlComStressImpl *this)
{
  v2 = (this + 3580);
  while (1)
  {
    v3 = *(this + 594);
    v4 = *(this + 910);
    if (v3)
    {
      break;
    }

    if ((*(this + 2384) & 1) == 0)
    {
      if ((v4 & 0xFFFFFFF8) != 8)
      {
        goto LABEL_151;
      }

      v39 = *(this + 887) + *(this + 330);
      *(this + 887) = v39;
      *(this + 1176) = 0;
      *(this + 330) = 0;
      v101 = *(this + 884) - *(this + 891);
      v40 = *(this + 885) - *(this + 892);
      v41 = *(this + 882);
      v42 = *(this + 889);
      v102 = *(this + 888);
      v103 = *(this + 881);
      v43 = *(this + 883) - *(this + 890);
      v44 = *(this + 886) - *(this + 893);
      v45 = *(this + 894);
      v104 = v39 - v45;
      v46 = (*(**(this + 296) + 24))(*(this + 296)) - *(this + 908);
      *(this + 909) += v46;
      v99 = v40 / v46;
      v100 = v44 / v46;
      GlCustomLog(14, "# CS: %.1f sec elapsed, %u/%u Tx/Rx bytes, %u/%u Tx/Rx Pkts, %u/%u Tx/Rx kB/s\n", v46 / 1000.0, v44, v40, v43, v101, v44 / v46, v40 / v46);
      if (v103 != v102 || v41 != v42 || v39 != v45)
      {
        GlCustomLog(11, "# CS: ERROR: RxPacketLost=%u RxGarbageBytes=%u TxPacketBroken=%u \n", v41 - v42, v103 - v102, v104);
      }

      *(this + 902) += v103 - v102;
      v47.i64[0] = __PAIR64__(v40, v46);
      v47.i32[2] = v44;
      v47.i32[3] = v104 + v41 - v42;
      *(this + 3592) = vaddq_s32(v47, *(this + 3592));
      v48 = *(this + 910);
      if (v48 > 0xF)
      {
        goto LABEL_150;
      }

      if (((1 << v48) & 0x2200) != 0)
      {
        v91 = *(this + 903);
        if (v99 > v91)
        {
          v91 = v40 / v46;
        }

        *(this + 903) = v91;
        if (v48 == 10)
        {
          v93 = 3616;
          goto LABEL_147;
        }
      }

      else
      {
        if (((1 << v48) & 0x4400) == 0)
        {
          if (((1 << v48) & 0x8800) == 0)
          {
            goto LABEL_150;
          }

LABEL_144:
          v92 = *(this + 905);
          if (v99 > v92)
          {
            v92 = v40 / v46;
          }

          *(this + 905) = v92;
          v93 = 3624;
LABEL_147:
          v94 = *(this + v93);
          if (v100 > v94)
          {
            v94 = v44 / v46;
          }

          *(this + v93) = v94;
LABEL_150:
          *(this + 222) = *(this + 3524);
          *(this + 3564) = *(this + 221);
          *(this + 908) = 0;
LABEL_151:
          v96 = (this + 16);
          v95 = *(this + 4);
          *(this + 2384) = 1;
          GlCustomLog(15, "CS:Delay between tests(%d)\n", v95);
          goto LABEL_154;
        }

        v90 = *(this + 904);
        if (v100 > v90)
        {
          v90 = v44 / v46;
        }

        *(this + 904) = v90;
      }

      if (v48 != 11)
      {
        goto LABEL_150;
      }

      goto LABEL_144;
    }

LABEL_7:
    *(this + 2384) = 0;
    v5 = *(this + 595);
    v6 = 10 * v5 - 50;
    if (v6 >= 0xFA)
    {
      v6 = 250;
    }

    if (v5 < 6)
    {
      v6 = 10;
    }

    *(this + 594) = v6;
    *(this + 910) = v4 + 1;
    *(this + 600) = 269281408;
    if (v4 <= 9)
    {
      if (v4 <= 6)
      {
        if (v4 == 5)
        {
          *(this + 8) = 1;
          *(this + 3) = (*(**(this + 296) + 24))(*(this + 296)) + 500;
          v14 = *(**(this + 296) + 16);
        }

        else
        {
          if (v4 != 6)
          {
            if (v4 == 4)
            {
              DeviceFaultNotify("gl_comstress_impl.cpp", 636, "StartNextTest", "0");
              v98 = 636;
            }

            else
            {
LABEL_160:
              DeviceFaultNotify("gl_comstress_impl.cpp", 687, "StartNextTest", "0");
              v98 = 687;
            }

            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v98, "0");
          }

          GlCustomLog(14, "\n");
          GlCustomLog(14, "\n");
          v11 = 4 * *(this + 595);
          if (v11 >= 4 * *(this + 597))
          {
            v11 = 4 * *(this + 597);
          }

          GlCustomLog(14, "CS:********************   Starting Tests, Loop %u, iterations %u, load kB %u ********************\n", *(this + 595), *(this + 594), v11 >> 2);
          v12 = *(this + 595);
          v13 = 4 * v12;
          if (4 * v12 >= (4 * *(this + 597)))
          {
            v13 = 4 * *(this + 597);
          }

          *v2 = 0u;
          v2[1] = 0u;
          v2[2] = 0u;
          *(this + 897) = v13 >> 2;
          *(this + 896) = v12;
          *(this + 8) = 1;
          *(this + 3) = (*(**(this + 296) + 24))(*(this + 296));
          v14 = *(**(this + 296) + 16);
        }

        v14();
      }

      else if (v4 == 7)
      {
        GlCustomLog(14, "CS:Starting Basic Test\n");
      }

      else if (v4 == 8)
      {
        GlCustomLog(14, "CS:Starting Rx Test\n");
      }

      else
      {
        GlCustomLog(14, "CS:Starting Tx Test\n");
      }
    }

    else if (v4 > 12)
    {
      switch(v4)
      {
        case 13:
          GlCustomLog(14, "CS:Starting Tx Streaming Test\n");
          v26 = *(this + 7);
          v27 = *(this + 594) * v26;
          *(this + 594) = v27;
          if (4 * *(this + 595) >= (4 * *(this + 597)))
          {
            v28 = 4 * *(this + 597);
          }

          else
          {
            v28 = 4 * *(this + 595);
          }

          GlCustomLog(15, "CS:PrimeTxStreamingTest(%u, %u, %u)\n", v27, v26, v28);
          if (v28)
          {
            for (i = 0; i != v28; ++i)
            {
              v30 = *(this + 331);
              v31 = *(this + 3514);
              v32 = vdupq_n_s16(4 * v31);
              for (j = 1060; j != 1316; j += 16)
              {
                *(this + j) = v32;
              }

              v34 = (v30 + 269281408 + 4 * v31);
              *(this + 3514) = v31 + 1;
              BlueFin::GlComStressImpl::AddBriMemWrite(this, v30 + 269281408 + 4 * v31, this + 1060, 0x100uLL);
              BlueFin::GlComStressImpl::AddCrcRequest(this, v34, (this + 1060));
            }
          }

          break;
        case 14:
          GlCustomLog(14, "CS:Starting RxTx Streaming Test\n");
          v15 = *(this + 7);
          v16 = *(this + 594) * v15;
          *(this + 594) = v16;
          if (4 * *(this + 595) >= (4 * *(this + 597)))
          {
            v17 = 4 * *(this + 597);
          }

          else
          {
            v17 = 4 * *(this + 595);
          }

          GlCustomLog(15, "CS:PrimeTxStreamingTest(%u, %u, %u)\n", v16, v15, v17);
          if (v17)
          {
            for (k = 0; k != v17; ++k)
            {
              v19 = *(this + 331);
              v20 = *(this + 3514);
              v21 = vdupq_n_s16(4 * v20);
              for (m = 1060; m != 1316; m += 16)
              {
                *(this + m) = v21;
              }

              v23 = (v19 + 269281408 + 4 * v20);
              *(this + 3514) = v20 + 1;
              BlueFin::GlComStressImpl::AddBriMemWrite(this, v19 + 269281408 + 4 * v20, this + 1060, 0x100uLL);
              BlueFin::GlComStressImpl::AddCrcRequest(this, v23, (this + 1060));
              v24 = *(this + 3516);
              *(this + 3516) = v24 + 1;
              BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v24 + 269281408, *(this + 16));
            }
          }

          break;
        case 15:
          *(this + 595) = v5 + 1;
          *(this + 910) = 5;
          *(this + 8) = 1;
          *(this + 3) = (*(**(this + 296) + 24))(*(this + 296));
          (*(**(this + 296) + 16))(*(this + 296), 0);
          *(this + 3580) = 1;
          (*(**(this + 296) + 56))(*(this + 296), v2);
          break;
        default:
          goto LABEL_160;
      }
    }

    else if (v4 == 10)
    {
      GlCustomLog(14, "CS:Starting RxTx Test\n");
    }

    else if (v4 == 11)
    {
      GlCustomLog(14, "CS:Starting Intermittent Test\n");
    }

    else
    {
      GlCustomLog(14, "CS:Starting Rx Streaming Test\n");
      v7 = *(this + 7);
      v8 = *(this + 594) * v7;
      *(this + 594) = v8;
      if (4 * *(this + 595) >= (4 * *(this + 597)))
      {
        v9 = 4 * *(this + 597);
      }

      else
      {
        v9 = 4 * *(this + 595);
      }

      GlCustomLog(15, "CS:PrimeRxStreamingTest(%u, %u, %u)\n", v8, v7, v9);
      for (; v9; --v9)
      {
        v10 = *(this + 3516);
        *(this + 3516) = v10 + 1;
        BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v10 + 269281408, *(this + 16));
      }
    }

    result = (*(**(this + 296) + 24))(*(this + 296));
    *(this + 908) = result;
    if ((*(this + 910) & 0xFFFFFFF8) != 8)
    {
      return result;
    }
  }

  if ((*(this + 2384) & 1) != 0 || (v4 & 0xFFFFFFF8) != 8)
  {
    goto LABEL_7;
  }

  if (v4 > 11)
  {
    if (v4 > 13)
    {
      if (v4 != 14)
      {
        if (4 * *(this + 595) >= (4 * *(this + 597)))
        {
          v82 = 4 * *(this + 597);
        }

        else
        {
          v82 = 4 * *(this + 595);
        }

        GlCustomLog(15, "CS:SendRxTxStreamingTest(%u, %u, %u, %u, %u)\n", v3, *(this + 7), v82, *(this + 329), *(this + 330));
        if (*(this + 594))
        {
          if (v82)
          {
            for (n = 0; n != v82; ++n)
            {
              v84 = *(this + 331);
              v85 = *(this + 3514);
              v86 = vdupq_n_s16(4 * v85);
              for (ii = 1060; ii != 1316; ii += 16)
              {
                *(this + ii) = v86;
              }

              v88 = (v84 + 269281408 + 4 * v85);
              *(this + 3514) = v85 + 1;
              BlueFin::GlComStressImpl::AddBriMemWrite(this, v84 + 269281408 + 4 * v85, this + 1060, 0x100uLL);
              BlueFin::GlComStressImpl::AddCrcRequest(this, v88, (this + 1060));
              v89 = *(this + 3516);
              *(this + 3516) = v89 + 1;
              BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v89 + 269281408, *(this + 16));
            }
          }
        }

        else
        {
          GlCustomLog(15, "CS:SendRxTxStreamingTest - nothing sent, only reload expected responses\n");
        }

        goto LABEL_153;
      }

      GlCustomLog(15, "CS:SendTxStreamingTest(%u - %u)\n", *(this + 594), *(this + 7));
      if (*(this + 594))
      {
        if (4 * *(this + 595) >= (4 * *(this + 597)))
        {
          v60 = 4 * *(this + 597);
        }

        else
        {
          v60 = 4 * *(this + 595);
        }

        GlCustomLog(15, "CS:SendTxStreamingTest, sending %u packets\n", v60);
        v61 = 0;
        v62 = v60 - 2;
        do
        {
          v63 = *(this + 331);
          v64 = *(this + 3514);
          v65 = vdupq_n_s16(4 * v64);
          for (jj = 1060; jj != 1316; jj += 16)
          {
            *(this + jj) = v65;
          }

          v67 = (v63 + 269281408 + 4 * v64);
          *(this + 3514) = v64 + 1;
          BlueFin::GlComStressImpl::AddBriMemWrite(this, v63 + 269281408 + 4 * v64, this + 1060, 0x100uLL);
          BlueFin::GlComStressImpl::AddCrcRequest(this, v67, (this + 1060));
        }

        while (v61++ != v62);
        goto LABEL_153;
      }
    }

    else
    {
      if (v4 == 12)
      {
        GlCustomLog(15, "CS:SendIntermittentTest(%u)\n", *(this + 594));
        v35 = *(this + 331);
        v36 = *(this + 3514);
        v49 = vdupq_n_s16(4 * v36);
        for (kk = 1060; kk != 1316; kk += 16)
        {
          *(this + kk) = v49;
        }

LABEL_82:
        v51 = (v35 + 269281408 + 4 * v36);
        *(this + 3514) = v36 + 1;
        BlueFin::GlComStressImpl::AddBriMemWrite(this, v35 + 269281408 + 4 * v36, this + 1060, 0x100uLL);
        BlueFin::GlComStressImpl::AddCrcRequest(this, v51, (this + 1060));
        v52 = *(this + 3516);
        *(this + 3516) = v52 + 1;
        BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v52 + 269281408, *(this + 16));
        goto LABEL_153;
      }

      if (4 * *(this + 595) >= (4 * *(this + 597)))
      {
        v71 = 4 * *(this + 597);
      }

      else
      {
        v71 = 4 * *(this + 595);
      }

      GlCustomLog(15, "CS:SendRxStreamingTest(%u - %u) : %d, %d\n", *(this + 594), *(this + 7), v71, *(this + 329));
      if (*(this + 594))
      {
        GlCustomLog(15, "CS:SendRxStreamingTest, sending %u packets\n", v71);
        v72 = v71 - 1;
        do
        {
          v73 = *(this + 3516);
          *(this + 3516) = v73 + 1;
          BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v73 + 269281408, *(this + 16));
          --v72;
        }

        while (v72);
        goto LABEL_153;
      }
    }

    GlCustomLog(15, "CS:SendRxStreamingTest - nothing sent, only reload expected responses\n");
    goto LABEL_153;
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      GlCustomLog(15, "CS:SendTxTest(%u)\n", *(this + 594));
      if (4 * *(this + 595) >= (4 * *(this + 597)))
      {
        v53 = 4 * *(this + 597);
      }

      else
      {
        v53 = 4 * *(this + 595);
      }

      if (v53)
      {
        for (mm = 0; mm != v53; ++mm)
        {
          v55 = *(this + 331);
          v56 = *(this + 3514);
          v57 = vdupq_n_s16(4 * v56);
          for (nn = 1060; nn != 1316; nn += 16)
          {
            *(this + nn) = v57;
          }

          v59 = (v55 + 269281408 + 4 * v56);
          *(this + 3514) = v56 + 1;
          BlueFin::GlComStressImpl::AddBriMemWrite(this, v55 + 269281408 + 4 * v56, this + 1060, 0x100uLL);
          BlueFin::GlComStressImpl::AddCrcRequest(this, v59, (this + 1060));
        }
      }
    }

    else
    {
      GlCustomLog(15, "CS:SendRxTxTest(%u)\n", *(this + 594));
      if (4 * *(this + 595) >= (4 * *(this + 597)))
      {
        v74 = 4 * *(this + 597);
      }

      else
      {
        v74 = 4 * *(this + 595);
      }

      if (v74)
      {
        for (i1 = 0; i1 != v74; ++i1)
        {
          v76 = *(this + 331);
          v77 = *(this + 3514);
          v78 = vdupq_n_s16(4 * v77);
          for (i2 = 1060; i2 != 1316; i2 += 16)
          {
            *(this + i2) = v78;
          }

          v80 = (v76 + 269281408 + 4 * v77);
          *(this + 3514) = v77 + 1;
          BlueFin::GlComStressImpl::AddBriMemWrite(this, v76 + 269281408 + 4 * v77, this + 1060, 0x100uLL);
          BlueFin::GlComStressImpl::AddCrcRequest(this, v80, (this + 1060));
          v81 = *(this + 3516);
          *(this + 3516) = v81 + 1;
          BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v81 + 269281408, *(this + 16));
        }
      }
    }
  }

  else
  {
    if (v4 == 8)
    {
      GlCustomLog(15, "CS:SendBasicTest(%u)\n", *(this + 594));
      v35 = *(this + 331);
      v36 = *(this + 3514);
      v37 = vdupq_n_s16(4 * v36);
      for (i3 = 1060; i3 != 1316; i3 += 16)
      {
        *(this + i3) = v37;
      }

      goto LABEL_82;
    }

    if (4 * *(this + 595) >= (4 * *(this + 597)))
    {
      v69 = 4 * *(this + 597);
    }

    else
    {
      v69 = 4 * *(this + 595);
    }

    GlCustomLog(15, "CS:SendRxTest(%u) : %u\n", *(this + 594), v69);
    for (; v69; --v69)
    {
      v70 = *(this + 3516);
      *(this + 3516) = v70 + 1;
      BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 4 * v70 + 269281408, *(this + 16));
    }
  }

LABEL_153:
  v96 = (this + 20);
LABEL_154:
  v97 = *v96;

  return BlueFin::GlComStressImpl::SetTimerMs(this, v97);
}

uint64_t BlueFin::GlComStressImpl::GetRxSeqIdFromMemAddr(BlueFin::GlComStressImpl *this)
{
  if (this <= 0x100CE87F)
  {
    v2 = "ulMemAddr >= ESW_MEM_ADDR";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1039, "GetRxSeqIdFromMemAddr", "ulMemAddr >= ESW_MEM_ADDR");
    v3 = 1039;
    goto LABEL_6;
  }

  if ((this & 3) != 0)
  {
    v2 = "(ulMemAddr - ESW_MEM_ADDR) % 4 == 0";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1040, "GetRxSeqIdFromMemAddr", "(ulMemAddr - ESW_MEM_ADDR) % 4 == 0");
    v3 = 1040;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v3, v2);
  }

  return ((this + 896) >> 2);
}

uint64_t BlueFin::GlComStressImpl::GetTxSeqIdFromMemAddr(BlueFin::GlComStressImpl *this, unsigned int a2)
{
  if (this + 269281408 > a2)
  {
    v3 = "ulMemAddr >= ESW_MEM_ADDR + m_ulTxMemoryOffset";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1024, "GetTxSeqIdFromMemAddr", "ulMemAddr >= ESW_MEM_ADDR + m_ulTxMemoryOffset");
    v4 = 1024;
    goto LABEL_6;
  }

  if (((a2 - this) & 3) != 0)
  {
    v3 = "(ulMemAddr - ESW_MEM_ADDR - m_ulTxMemoryOffset) % 4 == 0";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1025, "GetTxSeqIdFromMemAddr", "(ulMemAddr - ESW_MEM_ADDR - m_ulTxMemoryOffset) % 4 == 0");
    v4 = 1025;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v4, v3);
  }

  return ((a2 - this + 896) >> 2);
}

uint64_t BlueFin::GlComStressImpl::AddBriMemWrite(BlueFin::GlComStressImpl *this, int a2, unsigned __int8 *__src, size_t __n)
{
  v15 = *MEMORY[0x29EDCA608];
  if (!__src)
  {
    v9 = "pData";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1085, "AddBriMemWrite", "pData");
    v10 = 1085;
    goto LABEL_6;
  }

  v4 = __n;
  v5 = __n;
  if ((__n & 3) != 0)
  {
    v9 = "usSize % sizeof(GlIntU32) == 0";
    DeviceFaultNotify("gl_comstress_impl.cpp", 1086, "AddBriMemWrite", "usSize % sizeof(GlIntU32) == 0");
    v10 = 1086;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v10, v9);
  }

  v11[0] = -1;
  v11[1] = (__n >> 2) - 1;
  v12 = 17405;
  v13 = a2;
  memcpy(v14, __src, __n);
  v14[v5] = -4;
  ++*(this + 883);
  *(this + 886) += (v4 + 9);
  result = (*(**(this + 296) + 32))(*(this + 296), v11, (v4 + 9));
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlComStressImpl::AddCrcRequest(BlueFin::GlComStressImpl *this, unsigned __int8 *a2, BlueFin::GlComStressImpl *a3)
{
  v36 = *MEMORY[0x29EDCA608];
  v30 = 1258094847;
  v31 = a2;
  v32 = BYTE2(a2);
  v33 = BYTE3(a2);
  v34 = 256;
  v35 = -4;
  ++*(this + 883);
  *(this + 886) += 11;
  v3 = *(this + 330) + 1;
  *(this + 330) = v3;
  if (v3 > 0x3FF)
  {
    DeviceFaultNotify("gl_comstress_impl.cpp", 977, "AddCrcRequest", "m_ulExpectedCrcResponse < sizeof(m_aulExpectedCrcQueue)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", 977, "m_ulExpectedCrcResponse < sizeof(m_aulExpectedCrcQueue)");
  }

  v5 = a2;
  v7 = 0;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  do
  {
    v12 = *(a3 + v7);
    v13 = vmovl_u8(*v12.i8);
    v14 = vmovl_high_u8(v12);
    v11 = vaddw_high_u16(v11, v14);
    v10 = vaddw_u16(v10, *v14.i8);
    v9 = vaddw_high_u16(v9, v13);
    v8 = vaddw_u16(v8, *v13.i8);
    v7 += 16;
  }

  while (v7 != 256);
  v15 = vaddvq_s32(vaddq_s32(vaddq_s32(v8, v10), vaddq_s32(v9, v11)));
  v16 = BlueFin::GlComStressImpl::ComputeCrc8(a3, a2);
  v17 = *(this + 2353);
  *(this + v17 + 332) = v15 & 0xFFFFFF | (v16 << 24);
  *(this + 2353) = v17 + 1;
  v19 = BlueFin::GlComStressImpl::ComputeCrc8(a3, v18);
  v20 = 0;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  do
  {
    v25 = *(a3 + v20);
    v26 = vmovl_u8(*v25.i8);
    v27 = vmovl_high_u8(v25);
    v24 = vaddw_high_u16(v24, v27);
    v23 = vaddw_u16(v23, *v27.i8);
    v22 = vaddw_high_u16(v22, v26);
    v21 = vaddw_u16(v21, *v26.i8);
    v20 += 16;
  }

  while (v20 != 256);
  GlCustomLog(15, "CS: AddCrcRequest :     addr:0x%08X(%d) CrcChecksum=0x%08X ExptCrcResp=%u\n", v5, 256, vaddvq_s32(vaddq_s32(vaddq_s32(v21, v23), vaddq_s32(v22, v24))) & 0xFFFFFF | (v19 << 24), v3);
  result = (*(**(this + 296) + 32))(*(this + 296), &v30, 11);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlComStressImpl::AddBriMemReadRequest(BlueFin::GlComStressImpl *this, int a2, unsigned int a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a3 >= 0x401)
  {
    v7 = "usSize <= 1024";
    DeviceFaultNotify("gl_comstress_impl.cpp", 921, "AddBriMemReadRequest", "usSize <= 1024");
    v8 = 921;
    goto LABEL_8;
  }

  if ((a2 & 3) != 0)
  {
    v7 = "(ulMemAddr & 0x03) == 0";
    DeviceFaultNotify("gl_comstress_impl.cpp", 922, "AddBriMemReadRequest", "(ulMemAddr & 0x03) == 0");
    v8 = 922;
    goto LABEL_8;
  }

  if ((a3 & 3) != 0)
  {
    v7 = "(usSize & 0x03) == 0";
    DeviceFaultNotify("gl_comstress_impl.cpp", 923, "AddBriMemReadRequest", "(usSize & 0x03) == 0");
    v8 = 923;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gl_comstress_impl.cpp", v8, v7);
  }

  v9[0] = -1;
  v9[1] = (a3 >> 2) - 1;
  v10 = 18941;
  v11 = a2;
  v12 = 4108;
  v13 = -4;
  v4 = *(this + 329) + 1;
  *(this + 329) = v4;
  ++*(this + 883);
  *(this + 886) += 9;
  GlCustomLog(15, "CS: AddBriMemReadRequest: addr:0x%08X(%d) ExptMemReadResp=%d\n", a2, a3, v4);
  result = (*(**(this + 296) + 32))(*(this + 296), v9, 9);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlComStressImpl::ComputeCrc8(uint64_t this, unsigned __int8 *a2)
{
  v2 = this;
  LOBYTE(this) = 0;
  v3 = (v2 + 3);
  v4 = 64;
  do
  {
    this = BlueFin::GlUtlCrc::ucCrcTable[*(v3 - 3) ^ BlueFin::GlUtlCrc::ucCrcTable[*(v3 - 2) ^ BlueFin::GlUtlCrc::ucCrcTable[*(v3 - 1) ^ BlueFin::GlUtlCrc::ucCrcTable[(*v3 ^ this)]]]];
    v3 += 4;
    --v4;
  }

  while (v4);
  return this;
}

uint64_t BlueFin::GlComStressImpl::BriSetupTest(BlueFin::GlComStressImpl *this)
{
  GlCustomLog(15, "CS:BriSetupTest\n");
  BlueFin::GlComStressImpl::AddBriMemWrite(this, 269281408, this + 36, 0x400uLL);
  BlueFin::GlComStressImpl::AddBriMemWrite(this, 269282432, this + 36, 0x400uLL);
  BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 269281408, 0x400u);

  return BlueFin::GlComStressImpl::AddBriMemReadRequest(this, 269282432, 0x400u);
}

uint64_t BlueFin::GlComStressImpl::BriClockConfig(BlueFin::GlComStressImpl *this)
{
  v6 = *MEMORY[0x29EDCA608];
  GlCustomLog(14, "CS: Sending ClockConfig\n");
  v4[4] = xmmword_298A3CB7E;
  v4[5] = unk_298A3CB8E;
  *&v5[13] = unk_298A3CBDB;
  v4[8] = xmmword_298A3CBBE;
  *v5 = unk_298A3CBCE;
  v4[6] = xmmword_298A3CB9E;
  v4[7] = unk_298A3CBAE;
  v4[2] = xmmword_298A3CB5E;
  v4[3] = unk_298A3CB6E;
  v4[0] = xmmword_298A3CB3E;
  v4[1] = unk_298A3CB4E;
  result = (*(**(this + 296) + 32))(*(this + 296), v4, 173);
  *(this + 886) += 173;
  ++*(this + 883);
  v3 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeIonoMgr::SetDataSubFrmMeas(BlueFin::GlPeIonoMgr *this, BlueFin::GlDataSubFrmMeas *a2)
{
  v49 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v36 = "nullptr != pDataSubFrmMeas";
    DeviceFaultNotify("glpe_ionomgr.cpp", 251, "SetDataSubFrmMeas", "nullptr != pDataSubFrmMeas");
    v37 = 251;
    goto LABEL_45;
  }

  v3 = *(a2 + 8);
  if (!*(a2 + 8))
  {
    goto LABEL_47;
  }

  if (v3 >= 0x21)
  {
    if ((v3 - 76) > 0xFFFFFFF5)
    {
      goto LABEL_9;
    }

LABEL_47:
    v36 = "IS_GPS_SVID(*pDataSubFrmMeas->otSvId) || pDataSubFrmMeas->otSvId.IsQzss()";
    DeviceFaultNotify("glpe_ionomgr.cpp", 252, "SetDataSubFrmMeas", "IS_GPS_SVID(*pDataSubFrmMeas->otSvId) || pDataSubFrmMeas->otSvId.IsQzss()");
    v37 = 252;
    goto LABEL_45;
  }

  v5 = *(a2 + 9);
  if (v5 != 5)
  {
    if (v5 == 1)
    {
      if ((*(a2 + 7) & 0xC0003F00) == 0)
      {
        *(*(this + 40) + ((v3 >> 3) & 0x1C)) |= 1 << v3;
      }

      goto LABEL_9;
    }

    if ((*(*(this + 40) + ((v3 >> 3) & 0x1C)) >> (v3 & 0x1F)))
    {
      if (v5 == 4)
      {
        v10 = *(a2 + 7);
        if (v10 >> 22 == 120)
        {
          v11 = *(a2 + 8);
          if (!(v11 >> 30))
          {
            v12 = *(a2 + 9);
            if (!(v12 >> 30))
            {
              v13 = 0;
              v41 = &unk_2A1F10338;
              v45 = 1;
              v46 = vand_s8(vshl_u32(vdup_n_s32(v10), 0xFFFFFFFAFFFFFFF2), 0xFF000000FFLL);
              v47 = v11 >> 22;
              *v48 = vand_s8(vshl_u32(vdup_n_s32(v11), 0xFFFFFFFAFFFFFFF2), 0xFF000000FFLL);
              *&v48[8] = v12 >> 22;
              *&v48[12] = vand_s8(vshl_u32(vdup_n_s32(v12), 0xFFFFFFFAFFFFFFF2), 0xFF000000FFLL);
              v14.i64[0] = 0x8000000080;
              v14.i64[1] = 0x8000000080;
              do
              {
                v15 = *&v46.i8[v13 * 4];
                v16 = vmovn_s32(vceqq_s32((v15 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v14));
                if (v16.i8[0])
                {
                  v46.i32[v13] = v15 | 0xFFFFFF00;
                }

                if (v16.i8[2])
                {
                  v46.i32[v13 + 1] = BYTE4(v15) | 0xFFFFFF00;
                }

                if (v16.i8[4])
                {
                  *(&v46 + v13 * 4 + 8) = BYTE8(v15) | 0xFFFFFF00;
                }

                if (v16.i8[6])
                {
                  *&v48[v13 * 4] = BYTE12(v15) | 0xFFFFFF00;
                }

                v13 += 4;
              }

              while (v13 != 8);
              v17.i64[0] = v46.i32[0];
              v17.i64[1] = v46.i32[1];
              v18 = vmulq_f64(vcvtq_f64_s64(v17), xmmword_298A40390);
              v17.i64[0] = v47;
              v17.i64[1] = *v48;
              v42 = v18;
              v43 = vmulq_f64(vcvtq_f64_s64(v17), vdupq_n_s64(0x3E70000000000000uLL));
              v44 = vshlq_u32(*&v48[4], xmmword_298A403A0);
              v19 = *(this + 44);
              if (*(v19 + 644))
              {
                BlueFin::GlPeTimeManager::GetTime(v19, 1, v38);
                v39 = &off_2A1F0B5F0;
                v40 = 0;
                Gps = BlueFin::GlPeGnssTime::GetGps(v38, &v39);
                v24 = (v39[4])(&v39, Gps);
                LODWORD(v23) = v40;
                *v24.i64 = v23 * 2.32830644e-10 + v22;
                *v25.i64 = *v24.i64 + trunc(*v24.i64 * 2.32830644e-10) * -4294967300.0;
                v26.f64[0] = NAN;
                v26.f64[1] = NAN;
                v27 = vnegq_f64(v26);
                *&v28 = vbslq_s8(v27, v25, v24).u64[0];
                if (*v24.i64 > 4294967300.0)
                {
                  *v24.i64 = v28;
                }

                if (*v24.i64 < -4294967300.0)
                {
                  *v21.i64 = -*v24.i64;
                  *v24.i64 = -(*v24.i64 - trunc(*v24.i64 * -2.32830644e-10) * -4294967300.0);
                  *v24.i64 = -*vbslq_s8(v27, v24, v21).i64;
                }

                if (*v24.i64 < 0.0)
                {
                  v29 = --*v24.i64;
                }

                else
                {
                  v29 = *v24.i64;
                }

                HIDWORD(v45) = v29;
                v30 = v45;
              }

              else
              {
                v29 = 0;
                HIDWORD(v45) = 0;
                v30 = 1;
              }

              *(this + 48504) = BlueFin::GlPeIonoModel::operator!=(&v41, this + 64);
              *(this + 72) = v42;
              *(this + 88) = v43;
              *(this + 104) = v44;
              *(this + 30) = v30;
              *(this + 31) = v29;
              if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
              {
                (*(*(this + 8) + 24))(this + 64, 0, 0);
              }

              v32 = *(a2 + 8);
              v31 = a2 + 8;
              v33 = BlueFin::GNSS2STR(BlueFin::GlSvId::s_aucSvId2gnss[v32]);
              GlCustomLog(15, "Iono.%s[%u]\n", v33, 56);
              v34 = BlueFin::GNSS2STR(BlueFin::GlSvId::s_aucSvId2gnss[*v31]);
              GlCustomLog(15, "IONO(%s %02d): ", v34, *v31);
              for (i = 0; i != 8; ++i)
              {
                GlCustomLog(15, "%d, ", v46.i32[i]);
              }

              GlCustomLog(15, "\n");
            }
          }
        }

        goto LABEL_9;
      }

      v36 = "4 == pDataSubFrmMeas->ucSubFrmId";
      DeviceFaultNotify("glpe_ionomgr.cpp", 281, "SetDataSubFrmMeas", "4 == pDataSubFrmMeas->ucSubFrmId");
      v37 = 281;
LABEL_45:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionomgr.cpp", v37, v36);
    }

LABEL_9:
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

  v7 = *(this + 40);
  v8 = *MEMORY[0x29EDCA608];
  v9 = ((4 * *(this + 328) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v7, v9);
}

uint64_t BlueFin::GlPeIonoModel::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v3 = v2;
  v4 = v0;
  v12 = *MEMORY[0x29EDCA608];
  if (v1 && v1 != 3)
  {
    DeviceFaultNotify("glpe_ionomgr.cpp", 1625, "SerializeImpl", "ucVersion == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionomgr.cpp", 1625, "ucVersion == 3");
  }

  v8 = 41;
  v9 = 3;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 3;
  BlueFin::GlSysLogEntry::PutD64(&v7, *(v0 + 8));
  BlueFin::GlSysLogEntry::PutD64(&v7, *(v4 + 16));
  BlueFin::GlSysLogEntry::PutD64(&v7, *(v4 + 24));
  BlueFin::GlSysLogEntry::PutD64(&v7, *(v4 + 32));
  BlueFin::GlSysLogEntry::PutS32(&v7, *(v4 + 40));
  BlueFin::GlSysLogEntry::PutS32(&v7, *(v4 + 44));
  BlueFin::GlSysLogEntry::PutS32(&v7, *(v4 + 48));
  BlueFin::GlSysLogEntry::PutS32(&v7, *(v4 + 52));
  BlueFin::GlSysLogEntry::PutU32(&v7, *(v4 + 56));
  BlueFin::GlSysLogEntry::PutU32(&v7, *(v4 + 60));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v3, 4);
  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeIonoModel::Deserialize(BlueFin::GlPeIonoModel *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 41 || *(a2 + 12) > 3u)
  {
    return 0;
  }

  *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 10) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 11) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 12) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 13) = BlueFin::GlSysLogEntry::GetS32(a2);
  if (*(a2 + 12) <= 1u)
  {
    v7 = 0;
    U32 = 1;
    *(this + 14) = 1;
  }

  else
  {
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    v6 = *(a2 + 12);
    *(this + 14) = U32;
    if (v6 < 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = BlueFin::GlSysLogEntry::GetU32(a2);
      U32 = *(this + 14);
    }
  }

  *(this + 15) = v7;
  GlCustomLog(15, "IONO(SLOG, SRC:%d): ", U32);
  *v9.i64 = *(this + 1) * 1073741820.0;
  *v10.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vnegq_f64(v11);
  v13 = vbslq_s8(v12, v10, v9);
  if (*v9.i64 > 4294967300.0)
  {
    v9.i64[0] = v13.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v8.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    v9 = vbslq_s8(v12, v9, v8);
    *v9.i64 = -*v9.i64;
  }

  if (*v9.i64 < 0.0)
  {
    v14 = --*v9.i64;
  }

  else
  {
    v14 = *v9.i64;
  }

  *v9.i64 = *(this + 2) * 134217728.0;
  *v8.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v15 = vbslq_s8(v12, v8, v9);
  if (*v9.i64 <= 4294967300.0)
  {
    *v15.i64 = *(this + 2) * 134217728.0;
  }

  if (*v15.i64 < -4294967300.0)
  {
    *v9.i64 = -*v15.i64;
    *v15.i64 = -(*v15.i64 - trunc(*v15.i64 * -2.32830644e-10) * -4294967300.0);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v8 = vnegq_f64(v16);
    *v15.i64 = -*vbslq_s8(v8, v15, v9).i64;
  }

  if (*v15.i64 < 0.0)
  {
    v17 = --*v15.i64;
  }

  else
  {
    v17 = *v15.i64;
  }

  *v9.i64 = *(this + 3) * 16777216.0;
  *v13.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = vnegq_f64(v18);
  v13.i64[0] = vbslq_s8(v19, v13, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    v9.i64[0] = v13.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v8.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    v9 = vbslq_s8(v19, v9, v8);
    *v9.i64 = -*v9.i64;
  }

  if (*v9.i64 < 0.0)
  {
    v20 = --*v9.i64;
  }

  else
  {
    v20 = *v9.i64;
  }

  *v9.i64 = *(this + 4) * 16777216.0;
  *v8.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v21 = vbslq_s8(v19, v8, v9);
  if (*v9.i64 <= 4294967300.0)
  {
    *v21.i64 = *(this + 4) * 16777216.0;
  }

  if (*v21.i64 < -4294967300.0)
  {
    *v9.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    *v21.i64 = -*vbslq_s8(vnegq_f64(v22), v21, v9).i64;
  }

  if (*v21.i64 < 0.0)
  {
    v23 = --*v21.i64;
  }

  else
  {
    v23 = *v21.i64;
  }

  GlCustomLog(15, "%d, %d, %d, %d, ", v14, v17, v20, v23);
  GlCustomLog(15, "%d, %d, %d, %d, ", *(this + 10) / 2048, *(this + 11) / 0x4000, *(this + 12) / 0x10000, *(this + 13) / 0x10000);
  GlCustomLog(15, "\n");
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glpe_ionomgr.cpp", 1682, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionomgr.cpp", 1682, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

double BlueFin::GlPeIonoMgr::Deserialize(BlueFin::GlPeIonoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_ionomgr.cpp", 1690, "Deserialize", "pEntry");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ionomgr.cpp", 1690, "pEntry");
  }

  v11 = &unk_2A1F10338;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  if (BlueFin::GlPeIonoModel::Deserialize(&v11, a2))
  {
    v4 = v15;
    if (v15 == 1)
    {
      v5 = 124;
      v6 = 120;
      v7 = 104;
      v8 = 72;
    }

    else
    {
      if (v15 != 4)
      {
        return result;
      }

      v5 = 316;
      v6 = 312;
      v7 = 296;
      v8 = 264;
    }

    v9 = (this + v8);
    v10 = v13;
    *v9 = v12;
    v9[1] = v10;
    result = *&v14;
    *(this + v7) = v14;
    *(this + v6) = v4;
    *(this + v5) = HIDWORD(v15);
  }

  return result;
}

uint64_t BlueFin::GlPeLtoSlice::Serialize(BlueFin::GlPeLtoSlice *this, BlueFin::GlPeEngineCallBacks *a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v4 = *(this + 4);
  if (*(this + 4))
  {
    v14 = &unk_2A1F106E8;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(v22, 0, 28);
    v6 = *(this + 2);
    v15 = 0;
    v16 = v6;
    v17 = v2;
    v18 = v4;
    if (a2 || BlueFin::GlUtils::m_pInstance && (*(BlueFin::GlUtils::m_pInstance + 1122) & 1) != 0)
    {
      BlueFin::GlPeLtoSliceInterface::SerializeImpl();
      v4 = *(this + 4);
      v15 = 1;
      if (!v4)
      {
        return 1;
      }
    }

    else
    {
      v15 = 1;
    }

    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(this + 2) + v8);
      if (v10 != &v19)
      {
        v19 = *v10;
        v11 = v10[1];
        v12 = v10[2];
        v13 = v10[3];
        *(v22 + 12) = *(v10 + 60);
        v21 = v12;
        v22[0] = v13;
        v20 = v11;
      }

      if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        v14[3](&v14, a2, 0);
        v4 = *(this + 4);
      }

      ++v9;
      v8 += 76;
    }

    while (v9 < v4);
    return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeLtoSliceInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v15 = *MEMORY[0x29EDCA608];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 241, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 241, "ucVersion == 1");
  }

  v4 = v0;
  if (v0[4])
  {
    v5 = v1;
    v11 = 119;
    v12 = v3;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v3;
    v6 = v0[2];
    if (!v6)
    {
      BlueFin::GlSysLogEntry::PutU8(&v10, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v0[3]]);
      BlueFin::GlSysLogEntry::PutU8(&v10, *(v4 + 20));
      BlueFin::GlSysLogEntry::PutU32(&v10, v4[4]);
LABEL_13:
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v5, 4);
      result = 1;
      goto LABEL_14;
    }

    if (v6 == 1)
    {
      for (i = 6; i != 25; ++i)
      {
        BlueFin::GlSysLogEntry::PutU32(&v10, v4[i]);
      }

      goto LABEL_13;
    }
  }

  result = 0;
LABEL_14:
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoInfoInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v12 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 353, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 353, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v8 = 120;
  v9 = 1;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 1;
  BlueFin::GlSysLogEntry::PutBuffer(&v7, (v0 + 8), 16);
  BlueFin::GlSysLogEntry::PutU32(&v7, *(v4 + 24));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v3, 4);
  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoAlmDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 399, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 399, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v10 = 121;
  v11 = 1;
  v12 = 0x1000000000000;
  v9 = &unk_2A1F092C0;
  v13 = 1;
  v5 = (v0 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v9, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  result = 0;
  v7 = *v5;
  if (*v5 > 2)
  {
    if ((v7 - 3) >= 2)
    {
      if (v7 == 5)
      {
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 12));
        BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 14));
        BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 16));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 18));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 20));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 22));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 24));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 26));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 28));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 30));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 32));
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 34));
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 35));
        goto LABEL_12;
      }

      goto LABEL_13;
    }

LABEL_8:
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 12));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 14));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 18));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 20));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v4 + 24));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 28));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 32));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 36));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 40));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 42));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 44));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 46));
    goto LABEL_12;
  }

  switch(v7)
  {
    case 0:
      goto LABEL_8;
    case 1:
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 12));
      BlueFin::GlSysLogEntry::PutS16(&v9, (*(v4 + 16) * 10.0));
      goto LABEL_12;
    case 2:
      BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 12));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 14));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 15));
      BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 16));
      BlueFin::GlSysLogEntry::PutU32(&v9, *(v4 + 20));
      BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 24));
      BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 32));
      BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 28));
      BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 34));
      BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 36));
      BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 38));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 40));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 41));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 42));
LABEL_12:
      BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v3, 4);
      result = 1;
      break;
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoUtcDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 611, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 611, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v10 = 122;
  v11 = 1;
  v12 = 0x1000000000000;
  v9 = &unk_2A1F092C0;
  v13 = 1;
  v5 = (v0 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v9, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  v6 = *v5;
  if (*v5 != 5)
  {
    if (v6 == 4)
    {
      BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 28));
      BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 32));
      BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 36));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 37));
      BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 38));
      BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 39));
      BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 40));
      goto LABEL_7;
    }

    if (v6)
    {
      result = 0;
      goto LABEL_9;
    }
  }

  BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 12));
  BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 16));
  BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 20));
  BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 21));
  BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 22));
  BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 23));
  BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 24));
  BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 25));
LABEL_7:
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v3, 4);
  result = 1;
LABEL_9:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoSysTimeDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 731, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 731, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v10 = 123;
  v11 = 1;
  v12 = 0x1000000000000;
  v9 = &unk_2A1F092C0;
  v13 = 1;
  v5 = (v0 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v9, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  v6 = *v5;
  if (*v5 == 5)
  {
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 32));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 34));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 36));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 37));
  }

  else if (v6 == 4)
  {
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 38));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 40));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 42));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 44));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 46));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 48));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 50));
  }

  else
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_10;
    }

    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 12));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v4 + 14));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 16));
    BlueFin::GlSysLogEntry::PutS32(&v9, *(v4 + 20));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 24));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v4 + 25));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v4 + 26));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 28));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v4 + 30));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v3, 4);
  result = 1;
LABEL_10:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoIonoDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v13 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 873, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 873, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v9 = 124;
  v10 = 1;
  v11 = 0x1000000000000;
  v8 = &unk_2A1F092C0;
  v12 = 1;
  v5 = (v0 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v8, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  BlueFin::GlSysLogEntry::PutU32(&v8, *(v4 + 12));
  if (*v5 == 5)
  {
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v4 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v4 + 18));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v4 + 20));
  }

  else
  {
    if (*v5)
    {
      result = 0;
      goto LABEL_8;
    }

    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 16));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 17));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 18));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 19));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 20));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 21));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 22));
    BlueFin::GlSysLogEntry::PutS8(&v8, *(v4 + 23));
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v3, 4);
  result = 1;
LABEL_8:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v12 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 986, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 986, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v8 = 125;
  v9 = 1;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v7, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  BlueFin::GlSysLogEntry::PutU16(&v7, *(v4 + 12));
  BlueFin::GlSysLogEntry::PutU32(&v7, *(v4 + 16));
  BlueFin::GlSysLogEntry::PutS32(&v7, *(v4 + 20));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v3, 4);
  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoGnssL5HealthDataInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v12 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 1037, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 1037, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v8 = 126;
  v9 = 1;
  v10 = 0x1000000000000;
  v7 = &unk_2A1F092C0;
  v11 = 1;
  BlueFin::GlSysLogEntry::PutU8(&v7, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  BlueFin::GlSysLogEntry::PutU8(&v7, *(v4 + 12));
  BlueFin::GlSysLogEntry::PutS8(&v7, *(v4 + 16));
  BlueFin::GlSysLogEntry::PutU16(&v7, *(v4 + 20));
  BlueFin::GlSysLogEntry::PutU16(&v7, *(v4 + 22));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v3, 4);
  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoGnssL5HealthInfoInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v11 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 1090, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 1090, "ucVersion == 1");
  }

  v3 = v1;
  v7 = 127;
  v8 = 1;
  v9 = 0x1000000000000;
  v6 = &unk_2A1F092C0;
  v10 = 1;
  BlueFin::GlSysLogEntry::PutU32(&v6, *(v0 + 8));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v6, v3, 4);
  v4 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoGnssL5HealthInfoInterface::Deserialize(BlueFin::GlPeLtoGnssL5HealthInfoInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 127 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoGnssAltNavInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v16 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 1135, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 1135, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  v12 = 128;
  v13 = 1;
  v14 = 0x1000000000000;
  v11 = &unk_2A1F092C0;
  v15 = 1;
  v5 = (v0 + 8);
  BlueFin::GlSysLogEntry::PutU8(&v11, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v0 + 8)]);
  result = 0;
  v7 = *v5;
  if (*v5 > 3)
  {
    if (v7 == 4)
    {
      BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 44));
      BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 48));
      BlueFin::GlSysLogEntry::PutU16(&v11, *(v4 + 52));
      BlueFin::GlSysLogEntry::PutS16(&v11, *(v4 + 54));
      v8 = 58;
      v9 = 56;
      goto LABEL_10;
    }

    if (v7 == 5)
    {
      BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 60));
      BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 64));
      BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 68));
      BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 72));
      BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 76));
      BlueFin::GlSysLogEntry::PutU16(&v11, *(v4 + 80));
      BlueFin::GlSysLogEntry::PutS16(&v11, *(v4 + 82));
      v8 = 86;
      v9 = 84;
      goto LABEL_10;
    }
  }

  else if (!v7 || v7 == 3)
  {
    BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 16));
    BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 20));
    BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 24));
    BlueFin::GlSysLogEntry::PutS32(&v11, *(v4 + 28));
    BlueFin::GlSysLogEntry::PutU16(&v11, *(v4 + 32));
    BlueFin::GlSysLogEntry::PutS16(&v11, *(v4 + 34));
    BlueFin::GlSysLogEntry::PutS16(&v11, *(v4 + 36));
    BlueFin::GlSysLogEntry::PutU8(&v11, *(v4 + 38));
    v8 = 42;
    v9 = 40;
LABEL_10:
    BlueFin::GlSysLogEntry::PutS16(&v11, *(v4 + v9));
    BlueFin::GlSysLogEntry::PutU16(&v11, *(v4 + v8));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v3, 4);
    result = 1;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v14 = *MEMORY[0x29EDCA608];
  v3 = *(v0 + 8);
  if (v3 == 3 || v3 == 0)
  {
    if (v2 >= 2)
    {
      DeviceFaultNotify("glpe_ltomgr.cpp", 1298, "SerializeImpl", "ucVersion == 1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 1298, "ucVersion == 1");
    }

    v5 = v1;
    v6 = v0;
    v10 = 129;
    v11 = 1;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = 1;
    BlueFin::GlSysLogEntry::PutU8(&v9, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v3]);
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v6 + 14));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoGnssSignalTypeInterface::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(v0 + 8);
  if ((v3 | 4) == 4)
  {
    if (v2 >= 2)
    {
      DeviceFaultNotify("glpe_ltomgr.cpp", 1357, "SerializeImpl", "ucVersion == 1");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 1357, "ucVersion == 1");
    }

    v4 = v1;
    v5 = v0;
    v13 = 130;
    v14 = 1;
    v15 = 0x1000000000000;
    v12 = &unk_2A1F092C0;
    v16 = 1;
    BlueFin::GlSysLogEntry::PutU8(&v12, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v3]);
    v6 = *(v5 + 8);
    if (v6 == 4)
    {
      v7 = 63;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 32;
    }

    if (v8)
    {
      v9 = (v5 + 12);
      do
      {
        BlueFin::GlSysLogEntry::PutU8(&v12, *v9++);
        --v8;
      }

      while (v8);
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v12, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x29EDCA608];
  return result;
}

BlueFin::GlPeLtoSlice *BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoSlices(BlueFin::GlPeLtoFileContentStorageMgr *this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = 0;
  v4 = (this + 12656);
  v5 = (this + 9896);
  v6 = (this + 5080);
  v7 = (this + 4296);
  v8 = (this + 2448);
  do
  {
    if (v3 > 2)
    {
      result = v6;
      if (v3 != 3)
      {
        result = v5;
        if (v3 != 4)
        {
          if (v3 != 5)
          {
            goto LABEL_10;
          }

          result = v4;
        }
      }

LABEL_9:
      result = BlueFin::GlPeLtoSlice::Serialize(result, a2);
      goto LABEL_10;
    }

    result = v8;
    if (!v3)
    {
      goto LABEL_9;
    }

    result = v7;
    if (v3 == 2)
    {
      goto LABEL_9;
    }

LABEL_10:
    ++v3;
  }

  while (v3 != 7);
  return result;
}

double BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5)
{
  if (a2 <= 5 && ((0x3Du >> a2) & 1) != 0)
  {
    v13 = v5;
    v14 = v6;
    v8 = qword_298A40708[a2];
    v9 = a1 + v8;
    if (a5)
    {
      BlueFin::GlPeLtoSlice::Clear(a1 + v8);
      *v9 = a4;
      *(v9 + 4) = 0;
    }

    BlueFin::GlPeLtoSvData::GlPeLtoSvData(v12, *(a3 + 16), 4 * *(a3 + 9));
    *&result = BlueFin::GlPeLtoSlice::UpdateData(v9, v12).n128_u64[0];
  }

  return result;
}

__n128 BlueFin::GlPeLtoSlice::UpdateData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = v3 > 6;
  v5 = (0xE243F0A181320uLL >> (8 * v3)) & 0x3F;
  if (!v4 && v2 < v5)
  {
    v7 = *(a1 + 16);
    *(a1 + 4) = v2 + 1;
    v8 = v7 + 76 * v2;
    if (v8 != a2)
    {
      *v8 = *a2;
      result = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      *(v8 + 60) = *(a2 + 60);
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 16) = result;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoInfo(BlueFin::GlPeLtoFileContentStorageMgr *this, BlueFin::GlPeEngineCallBacks *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = (this + 24795);
  if (*(this + 24795) == 0 || (v3 = *(this + 6203)) == 0)
  {
    result = 0;
  }

  else
  {
    v6 = 0uLL;
    if (&v6 != v2)
    {
      v6 = *v2;
    }

    v7 = v3;
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      BlueFin::GlPeLtoInfoInterface::SerializeImpl();
    }

    result = 1;
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoAlm(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = 0;
  v38 = *MEMORY[0x29EDCA608];
  v29 = this + 12680;
  v30 = 32;
  v31 = 0;
  v32 = this + 14600;
  v33 = 10;
  v34 = 3;
  v21 = this;
  v35 = this + 14960;
  v36 = 63;
  v37 = 4;
  do
  {
    v4 = &v29 + 2 * v3;
    v5 = *(v4 + 4);
    if (*(v4 + 4))
    {
      v6 = 0;
      v7 = *v4;
      do
      {
        v8 = (v7 + 36 * v6);
        if (*v8 != 255)
        {
          v22 = *(v4 + 3);
          v9 = *(v8 + 1);
          v23 = *v8;
          v28 = *(v8 + 8);
          if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
          {
            this = BlueFin::GlPeLtoAlmDataInterface::SerializeImpl();
          }
        }

        ++v6;
      }

      while (v5 > v6);
    }

    ++v3;
  }

  while (v3 != 3);
  v10 = 0;
  v11 = v21 + 17228;
  do
  {
    v12 = (v11 + v10);
    if (*(v11 + v10) != 255)
    {
      v13 = *v12;
      v26 = *(v12 + 2);
      if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        this = BlueFin::GlPeLtoAlmDataInterface::SerializeImpl();
      }
    }

    v10 += 24;
  }

  while (v10 != 864);
  v14 = v21 + 13834;
  v15 = 24;
  do
  {
    if (*v14)
    {
      v16 = *(v14 - 2);
      v27 = *(v14 + 14);
      if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        this = BlueFin::GlPeLtoAlmDataInterface::SerializeImpl();
      }
    }

    v14 += 32;
    --v15;
  }

  while (v15);
  v17 = 0;
  v18 = v21 + 18092;
  do
  {
    v19 = (v18 + v17);
    if (*(v18 + v17) - 120 <= 0x12)
    {
      v24 = *v19;
      v25 = *(v19 + 2);
      if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        this = BlueFin::GlPeLtoAlmDataInterface::SerializeImpl();
      }
    }

    v17 += 12;
  }

  while (v17 != 228);
  v20 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoUtc(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v15[2] = *MEMORY[0x29EDCA608];
  v14[0] = this + 18320;
  v14[1] = 0;
  v4 = v14;
  v15[0] = this + 18352;
  v15[1] = 0x100000005;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *v4;
    if (*v4)
    {
      if ((*(v3 + 24816) >> *(v4 + 6)))
      {
        v8 = *(v4 + 2);
        v10 = &unk_2A1F10448;
        v11 = v8;
        v13[0] = 0;
        *(v13 + 6) = 0;
        v12 = *v7;
        if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          this = BlueFin::GlPeLtoUtcDataInterface::SerializeImpl();
        }
      }
    }

    v5 = 0;
    v4 = v15;
  }

  while ((v6 & 1) != 0);
  if ((*(v3 + 24816) & 4) != 0)
  {
    this = BlueFin::GlPeLtoUtcDataInterface::GlPeLtoUtcDataInterface(&v10, v3 + 18336);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = v10[3](&v10, a2, 0);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoSysTime(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v4 = *(this + 24816);
  if ((v4 & 0x20) != 0)
  {
    v6 = &unk_2A1F10490;
    v7 = 2;
    memset(v10, 0, 20);
    v8 = *(this + 18368);
    v9 = *(this + 18384);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = BlueFin::GlPeLtoSysTimeDataInterface::SerializeImpl();
      v4 = *(v3 + 24816);
    }
  }

  if ((v4 & 0x10) != 0)
  {
    this = BlueFin::GlPeLtoSysTimeDataInterface::GlPeLtoSysTimeDataInterface(&v6, v3 + 18394);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = v6[3](&v6, a2, 0);
    }

    v4 = *(v3 + 24816);
  }

  if ((v4 & 8) != 0)
  {
    v6 = &unk_2A1F10490;
    v7 = 5;
    *(v10 + 6) = 0;
    *(&v10[1] + 4) = 0;
    v8 = 0uLL;
    v5 = *(v3 + 18388);
    v9 = 0;
    LODWORD(v10[0]) = v5;
    WORD2(v10[0]) = *(v3 + 18392);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeLtoSysTimeDataInterface::SerializeImpl();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoIono(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v4 = (this + 18416);
  v5 = *(this + 24816);
  if ((v5 & 0x40) != 0)
  {
    v6 = *v4;
    v8 = *(this + 18408);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = BlueFin::GlPeLtoIonoDataInterface::SerializeImpl();
      v5 = *(v3 + 24816);
    }
  }

  if ((v5 & 0x80) != 0)
  {
    v10 = *(v3 + 18424);
    v7 = v4[3];
    v9 = *(v3 + 18420);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeLtoIonoDataInterface::SerializeImpl();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssGpsTimeoffs(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v4 = (this + 18432);
  v5 = *(this + 24816);
  if ((v5 & 0x100) != 0)
  {
    v9 = *v4;
    v6 = *(this + 18436);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::SerializeImpl();
      v5 = *(v3 + 24816);
    }
  }

  if ((v5 & 0x200) != 0)
  {
    v10 = v4[6];
    v7 = *(v3 + 18448);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::SerializeImpl();
      v5 = *(v3 + 24816);
    }
  }

  if ((v5 & 0x400) != 0)
  {
    v11 = v4[12];
    v8 = *(v4 + 14);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::SerializeImpl();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssL5Health(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v4 = 0;
  v25 = *MEMORY[0x29EDCA608];
  v14[0] = this + 18468;
  v14[1] = 32;
  v15 = 11;
  v16 = this + 18852;
  v17 = 0x30000000ALL;
  v18 = 12;
  v19 = this + 18972;
  v20 = 0x40000003FLL;
  v21 = 13;
  v22 = this + 19728;
  v24 = 14;
  v23 = 0x500000024;
  do
  {
    v5 = &v14[3 * v4];
    v6 = *v5;
    if (*v5)
    {
      if ((*(v3 + 24816) >> *(v5 + 8)))
      {
        v7 = *(v5 + 2);
        if (v7)
        {
          for (i = 0; i < v7; ++i)
          {
            v9 = (v6 + 12 * i);
            if (*v9 != 255 && *(v9 + 1) != -1)
            {
              v11 = *(v5 + 3);
              v12 = *(v9 + 1);
              v13 = *(v9 + 2);
              if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
              {
                this = BlueFin::GlPeLtoGnssL5HealthDataInterface::SerializeImpl();
              }
            }
          }
        }
      }
    }

    ++v4;
  }

  while (v4 != 4);
  v10 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssL5HealthInfo(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  if ((*(this + 24817) & 0x80) != 0)
  {
    v2 = *(this + 20160);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeLtoGnssL5HealthInfoInterface::SerializeImpl();
    }
  }

  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssAltNav(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v51 = *MEMORY[0x29EDCA608];
  v45 = this + 20164;
  v46 = 32;
  v47 = 0x1000000000;
  v3 = &v45;
  v48 = this + 21316;
  v49 = 10;
  v23 = this;
  v4 = (this + 24816);
  v50 = 0x1300000003;
  v5 = 1;
  do
  {
    v6 = v5;
    if ((*v4 >> *(v3 + 8)))
    {
      v7 = *(v3 + 4);
      if (*(v3 + 4))
      {
        v8 = *v3;
        do
        {
          if (*v8 != 255)
          {
            v24 = *(v3 + 3);
            v26 = *v8;
            v28 = v8[1];
            if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
            {
              this = BlueFin::GlPeLtoGnssAltNavInterface::SerializeImpl();
            }
          }

          v8 += 2;
          --v7;
        }

        while (v7);
      }
    }

    v5 = 0;
    v3 = &v48;
  }

  while ((v6 & 1) != 0);
  v9 = &v39;
  v39 = v23 + 21188;
  v40 = 32;
  v41 = 0x1200000000;
  v42 = v23 + 21636;
  v43 = 10;
  v44 = 0x1500000003;
  v10 = 1;
  do
  {
    v11 = v10;
    if ((*v4 >> *(v9 + 8)))
    {
      v12 = *(v9 + 4);
      if (*(v9 + 4))
      {
        v13 = (*v9 + 2);
        do
        {
          if (*(v13 - 2) != 255)
          {
            v25 = *(v9 + 3);
            v27 = *v13;
            if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
            {
              this = BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface::SerializeImpl();
            }
          }

          v13 += 2;
          --v12;
        }

        while (v12);
      }
    }

    v10 = 0;
    v9 = &v42;
  }

  while ((v11 & 1) != 0);
  v33 = v23 + 21676;
  v34 = 63;
  v35 = 22;
  v36 = v23 + 22684;
  v14 = &v33;
  v37 = 63;
  v38 = 23;
  v15 = 1;
  do
  {
    v16 = v15;
    if ((*v4 >> *(v14 + 6)))
    {
      v17 = *(v14 + 4);
      if (*(v14 + 4))
      {
        v18 = *v14;
        do
        {
          if (*v18 != 255)
          {
            v29 = *v18;
            v30 = *(v18 + 1);
            v31 = *(v18 + 1);
            if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
            {
              this = BlueFin::GlPeLtoGnssAltNavInterface::SerializeImpl();
            }
          }

          v18 += 16;
          --v17;
        }

        while (v17);
      }
    }

    v15 = 0;
    v14 = &v36;
  }

  while ((v16 & 1) != 0);
  if (*(v4 + 3))
  {
    v20 = 0;
    v21 = v23 + 23692;
    do
    {
      v22 = (v21 + v20);
      if (*(v21 + v20) != 255)
      {
        *v32 = *v22;
        *&v32[12] = *(v22 + 12);
        if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          this = BlueFin::GlPeLtoGnssAltNavInterface::SerializeImpl();
        }
      }

      v20 += 28;
    }

    while (v20 != 1008);
  }

  v19 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssSignalType(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  v22 = *MEMORY[0x29EDCA608];
  v14 = 0;
  v15 = 32;
  v16 = this + 24700;
  v4 = &v14;
  v17 = 26;
  v18 = 4;
  v19 = 63;
  v20 = this + 24732;
  v21 = 27;
  v5 = 1;
  do
  {
    v6 = v5;
    if ((*(v3 + 24816) >> *(v4 + 8)))
    {
      v7 = *v4;
      v8 = *(v4 + 1);
      v9 = *(v4 + 2);
      if (v9)
      {
        v10 = &v13;
        do
        {
          v11 = *v8++;
          *v10 = v11;
          v10 = (v10 + 1);
          --v9;
        }

        while (v9);
      }

      if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        this = BlueFin::GlPeLtoGnssSignalTypeInterface::SerializeImpl();
      }
    }

    v5 = 0;
    v4 = &v18;
  }

  while ((v6 & 1) != 0);
  v12 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoMgr::IdentifyBadSv(uint64_t result, unsigned int a2, char a3, int a4)
{
  if ((*(result + 1636) & 4) == 0)
  {
    if (a4)
    {
      v7 = a3;
      v4 = result + 768;
      v5 = &v7;
    }

    else
    {
      v6 = a3;
      v4 = result + 576;
      v5 = &v6;
    }

    return BlueFin::GlGnssSet::Add(v4, a2, v5);
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::RemoveSvFromBadSet(uint64_t result, unsigned int a2, unsigned __int8 a3, int a4)
{
  if ((*(result + 1636) & 4) == 0)
  {
    v6 = result;
    if (a4)
    {
      v11 = a3;
      v7 = result + 576;
      v8 = &v11;
    }

    else
    {
      v10 = a3;
      BlueFin::GlGnssSet::Remove(result + 576, a2, &v10);
      v9 = a3;
      v7 = v6 + 768;
      v8 = &v9;
    }

    return BlueFin::GlGnssSet::Remove(v7, a2, v8);
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateEphemeris(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = 24;
  do
  {
    if (*(v2 + 60) != 255)
    {
      v6 = *(v2 + 84);
      if ((v6 & 0xF0) != 0)
      {
        LOBYTE(v6) = v6 - 32;
      }

      if (BlueFin::GlPeGloEphMgr::SetAsstEph(*(*(a1 + 80) + 7368), v2, v6, 0, *(v2 + 80), 1))
      {
        v7 = v4 == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        v17 = *(v2 + 60) + 1;
        v4 = (*(**(*(a1 + 80) + 7368) + 112))(*(*(a1 + 80) + 7368), &v17, 1);
        if (v4)
        {
          Time = BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), 1, v16);
          v9 = (*(*v4 + 64))(v4, v16, 1, Time);
          v14 = &off_2A1F0B5F0;
          v15 = 0;
          Gps = BlueFin::GlPeGnssTime::GetGps(v16, &v14);
          v11 = (v14[4])(&v14, Gps);
          LODWORD(v12) = v15;
          v4 = (v12 * 2.32830644e-10 + v11 - v9 + vcvtd_n_f64_u32((*(*v4 + 88))(v4), 1uLL));
        }
      }
    }

    v2 += 88;
    --v5;
  }

  while (v5);
  return v4;
}

__n128 BlueFin::GlPeLtoMgr::UpdateGalUtcModel(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v16 = &unk_2A1F18420;
  v18 = 0;
  v19 = 0;
  v20 = *a2;
  v17 = 3;
  v18 = (*(*a3 + 32))(a3) / 0x93A80;
  v9 = (*(*a3 + 32))(a3);
  LODWORD(v8) = a3[2];
  *v9.i64 = (v8 * 2.32830644e-10 + (v7 % 0x93A80)) * 1000.0;
  *v10.i64 = *v9.i64 + trunc(*v9.i64 * 2.32830644e-10) * -4294967300.0;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vnegq_f64(v11);
  *&v13 = vbslq_s8(v12, v10, v9).u64[0];
  if (*v9.i64 > 4294967300.0)
  {
    *v9.i64 = v13;
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v6.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    *v9.i64 = -*vbslq_s8(v12, v9, v6).i64;
  }

  if (*v9.i64 < 0.0)
  {
    v14 = --*v9.i64;
  }

  else
  {
    v14 = *v9.i64;
  }

  v19 = v14;
  BlueFin::GlPeTimeManager::SetGalUtcModel(*(a1 + 88), &v16, 0);
  *(a1 + 26464) |= 2u;
  result = *a2;
  *(a1 + 20000) = *a2;
  return result;
}

uint64_t BlueFin::GlPeLtoData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v49 = *MEMORY[0x29EDCA608];
  if (v3 && v3 != 12)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 3285, "SerializeImpl", "ucVersion == 12");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 3285, "ucVersion == 12");
  }

  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v45 = 44;
    v46 = 12;
    v47 = 0x1000000000000;
    v44 = &unk_2A1F092C0;
    v48 = 12;
    BlueFin::GlSysLogEntry::PutU8(&v44, 8);
    for (i = 0; i != 8; ++i)
    {
      v7 = BlueFin::GlImplGnss::m_aucImplGnssTable[i];
      v40 = &v42;
      v41 = 3;
      v42 = 0;
      v43 = 0;
      if (i == 4)
      {
        BlueFin::GlSysLogEntry::PutGlSet(&v44, &v40);
      }

      else
      {
        v8 = BlueFin::GlGnssSet::operator()(v5 + 32, v7);
        ULong = BlueFin::GlSetBase::GetULong(v8, 0);
        BlueFin::GlSetBase::SetULong(&v40, 0, ULong);
        v10 = BlueFin::GlGnssSet::operator()(v5 + 32, v7);
        v11 = BlueFin::GlSetBase::GetULong(v10, 1u);
        BlueFin::GlSetBase::SetULong(&v40, 1u, v11);
        BlueFin::GlSysLogEntry::PutGlSet(&v44, &v40);
        v12 = BlueFin::GlGnssSet::operator()(v5 + 224, v7);
        v13 = BlueFin::GlSetBase::GetULong(v12, 0);
        BlueFin::GlSetBase::SetULong(&v40, 0, v13);
        v14 = BlueFin::GlGnssSet::operator()(v5 + 224, v7);
        v15 = BlueFin::GlSetBase::GetULong(v14, 1u);
        BlueFin::GlSetBase::SetULong(&v40, 1u, v15);
      }

      BlueFin::GlSysLogEntry::PutGlSet(&v44, &v40);
    }

    BlueFin::GlSysLogEntry::PutBuffer(&v44, (v5 + 8), 16);
    BlueFin::GlSysLogEntry::PutU32(&v44, *(v5 + 416));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v44, v4, 4);
    GlCustomLog(13, "LTO_BAD(from Broadcast) {");
    v16 = 0;
    while (1)
    {
      if (v16 != 4)
      {
        v17 = BlueFin::GlImplGnss::m_aucImplGnssTable[v16];
        v18 = BlueFin::GlGnssSet::operator()(v5 + 32, v17);
        v19 = v18;
        if (!**v18)
        {
          v23 = *(v18 + 8);
          if (v23 < 2)
          {
            goto LABEL_17;
          }

          v24 = v23 - 1;
          v25 = (*v18 + 4);
          while (!*v25++)
          {
            if (!--v24)
            {
              goto LABEL_17;
            }
          }
        }

        v20 = BlueFin::GNSS2STR(v17);
        v21 = BlueFin::GlSetBase::GetULong(v19, 1u);
        v22 = BlueFin::GlSetBase::GetULong(v19, 0);
        GlCustomLog(13, " %s 0x%02x%08x", v20, v21, v22);
      }

LABEL_17:
      if (++v16 == 8)
      {
        GlCustomLog(13, " }\n");
        GlCustomLog(13, "LTO_BAD(from HighResid) {");
        v27 = 0;
        while (1)
        {
          if (v27 != 4)
          {
            v28 = BlueFin::GlImplGnss::m_aucImplGnssTable[v27];
            v29 = BlueFin::GlGnssSet::operator()(v5 + 224, v28);
            v30 = v29;
            if (!**v29)
            {
              v34 = *(v29 + 8);
              if (v34 < 2)
              {
                goto LABEL_26;
              }

              v35 = v34 - 1;
              v36 = (*v29 + 4);
              while (!*v36++)
              {
                if (!--v35)
                {
                  goto LABEL_26;
                }
              }
            }

            v31 = BlueFin::GNSS2STR(v28);
            v32 = BlueFin::GlSetBase::GetULong(v30, 1u);
            v33 = BlueFin::GlSetBase::GetULong(v30, 0);
            GlCustomLog(13, " %s 0x%02x%08x", v31, v32, v33);
          }

LABEL_26:
          if (++v27 == 8)
          {
            GlCustomLog(13, " }\n");
            goto LABEL_28;
          }
        }
      }
    }
  }

LABEL_28:
  v38 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::PrepareDataToSerialize(BlueFin::GlPeLtoMgr *this, BlueFin::GlPeLtoData *a2)
{
  BlueFin::GlGnssSet::operator=(a2 + 32, this + 576);
  result = BlueFin::GlGnssSet::operator=(a2 + 224, this + 768);
  v5 = *(this + 409);
  if (v5)
  {
    for (i = 0; i != 168; i += 24)
    {
      result = BlueFin::GlSetBase::operator|=(*(a2 + 25) + i, *(this + 41) + i);
    }

    v5 = *(this + 409);
  }

  if ((v5 & 2) != 0)
  {
    for (j = 0; j != 168; j += 24)
    {
      result = BlueFin::GlSetBase::operator|=(*(a2 + 49) + j, *(this + 65) + j);
    }
  }

  if (a2 + 8 != this + 1600)
  {
    *(a2 + 8) = *(this + 100);
  }

  *(a2 + 104) = *(this + 136);
  return result;
}

BlueFin::GlPeLtoMgr *BlueFin::GlPeLtoMgr::Serialize(BlueFin::GlPeLtoMgr *this, BlueFin::GlPeEngineCallBacks *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  if (*(this + 100) != 0)
  {
    v3 = this;
    BlueFin::GlPeLtoData::GlPeLtoData(&v5);
    this = BlueFin::GlPeLtoMgr::PrepareDataToSerialize(v3, &v5);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      this = (*(v5 + 24))(&v5, a2, 0);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateEphemeris(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 80) + 7360);
  BlueFin::GlPeSbasEphemeris::GlPeSbasEphemeris(&v7, a2, 1);
  (*(*v4 + 376))(v4, &v7, 0);
  v5 = *a2 + 1;
  v7 = 1;
  v8 = v5;
  return BlueFin::GlGnssSet::Add(a1 + 1216, &v7);
}

uint64_t BlueFin::GlPeLtoMgr::ApplyExperimentalSettings(uint64_t this, unsigned int (*a2)[4])
{
  v2 = (*a2)[0];
  if (((*a2)[0] & 2) != 0)
  {
    *(*(this + 96) + 60918) = 1;
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_3;
  }

  *(*(this + 96) + 60919) = 1;
  if ((v2 & 8) == 0)
  {
LABEL_4:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_9:
    *(*(this + 80) + 120020) = 0;
    return this;
  }

LABEL_8:
  *(*(this + 80) + 120019) = 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_9;
  }

  return this;
}

uint64_t BlueFin::GlPeLtoMgr::GetLtoFileAgeS(BlueFin::GlPeLtoMgr *this, unsigned int a2, int *a3)
{
  v4 = *(this + 11);
  if (!v4[644] || !*(this + 410))
  {
    return 0;
  }

  v6 = 1;
  BlueFin::GlPeTimeManager::GetTime(v4, a2, 1, v11);
  v12 = &off_2A1F0B5F0;
  v13 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v11, &v12);
  v8 = (v12[4])(&v12, Gps);
  LODWORD(v9) = v13;
  *a3 = (v9 * 2.32830644e-10 + v8) - *(this + 410);
  return v6;
}

unint64_t BlueFin::GlPeLtoMgr::OnRtiReceived(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned int a29, unsigned __int8 a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  a61 = *MEMORY[0x29EDCA608];
  v63 = (*(a1 + 1192) + 8);
  v64 = 7;
  do
  {
    v65 = *(v63 - 1);
    v66 = *v63;
    v63 += 24;
    bzero(v65, ((4 * v66 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v64;
  }

  while (v64);
  v67 = 0;
  a55 = &a34;
  do
  {
    v68 = &a55[v67];
    v69 = &a55[v67];
    *(v69 + 12) = 0;
    *v68 = v69 + 12;
    v68[8] = 2;
    v67 += 24;
  }

  while (v67 != 168);
  for (i = 0; i != 7; ++i)
  {
    BlueFin::GlGnssSet::SetAll(&a34, i);
  }

  result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v81, &a34);
  v72 = 0;
  while (a29 != 6 || a30 != 14)
  {
    if (!a30)
    {
      DeviceFaultNotify("glpe_ltomgr.cpp", 3820, "OnRtiReceived", "*otCurGnss.otGnssId != INVALID_GNSS_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 3820, "*otCurGnss.otGnssId != INVALID_GNSS_ID");
    }

    v74 = 1 << (a30 - 1);
    v75 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a29];
    if ((*(a2 + 8 + 8 * v75) & v74) != 0 && (*(a2 + 72 + 8 * v75) & v74) != 0)
    {
      LOBYTE(v79) = a30;
      BlueFin::GlGnssSet::Add(a1 + 1024, a29, &v79);
      v76 = BlueFin::GlGnssSet::operator()(a1 + 576, a29);
      BlueFin::GlSetBase::GlSetBase(&v79, &v80 + 1, 2u, v76);
      if (((*(v79 + 4 * (a30 >> 5)) >> (a30 & 0x1F)) & 1) == 0)
      {
        if ((*(a1 + 1636) & 4) == 0)
        {
          LOBYTE(v79) = a30;
          BlueFin::GlGnssSet::Add(a1 + 576, a29, &v79);
        }

        v77 = BlueFin::GNSS2STR(a29);
        GlCustomLog(14, "LtoMgr [%s, %02d] marked bad LTO from RTI\n", v77, a30);
        v72 = 1;
      }
    }

    result = BlueFin::GlGnssSetIterator::operator++(&v81);
  }

  if (v72)
  {
    result = GlCustomLog(14, "LtoMgr Bad SV flags updated RTI\n");
  }

  v78 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::IdentifyBadLtoSvId(uint64_t a1, unsigned __int8 *a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v7 = *(a1 + 80);
  v12 = 7;
  v13 = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss((v7 + 119744), a2, &v12, a4, a5);
  v9 = v13;
  if (v13 - 1 <= 0x3E)
  {
    v10 = v12;
    BlueFin::GlPeLtoMgr::IdentifyBadSv(a1, v12, v13, a3);
    GlCustomLog(14, "Bad LTO for sv (%d,%d). LTO id=0x", v10, v9);
    for (i = 0; i != 16; ++i)
    {
      GlCustomLog(14, "%02x", *(a1 + 1600 + i));
    }

    return GlCustomLog(14, "\n");
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::GenerateLtoRefreshSet(BlueFin::GlPeLtoMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(*(this + 11) + 2576))
  {
    for (i = 12; i != 180; i += 24)
    {
      v24 = (*(this + 173) + i);
      v25 = (*(this + 197) + i);
      BlueFin::GlSetBase::operator=(v25 - 12, v24 - 12);
      *v25 = *v24;
    }

    BlueFin::GlGnssSet::operator~(this + 1024, &v31);
    for (j = 0; j != 168; j += 24)
    {
      BlueFin::GlSetBase::operator&=(*(this + 197) + j, a22 + j);
    }

    BlueFin::GlGnssSet::operator~(this + 576, &v31);
    for (k = 0; k != 168; k += 24)
    {
      BlueFin::GlSetBase::operator&=(*(this + 197) + k, a22 + k);
    }

    BlueFin::GlGnssSet::operator~(this + 768, &v31);
    for (m = 0; m != 168; m += 24)
    {
      BlueFin::GlSetBase::operator&=(*(this + 197) + m, a22 + m);
    }

    result = BlueFin::GlPeAsstMgr::GetExpiringEphemerisSvs(*(this + 10), (this + 1408));
  }

  else
  {
    result = 0;
  }

  v30 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(uint64_t result, uint64_t a2, int8x16_t *a3, unsigned __int8 a4, char a5)
{
  v48 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a3;
    v8 = result;
    v9 = 0;
    v10 = *(result + 112);
    v11 = *(v10 + 1024);
    v47[0] = *(v10 + 1008);
    v47[1] = v11;
    v12 = *(v10 + 924);
    v13 = off_2A1F10790;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v32 = vnegq_f64(v14);
    do
    {
      if (v7->u8[0] <= 0x1Fu && v7->i32[1] == 1)
      {
        v42 = &unk_2A1F10778;
        v43 = 1;
        v15 = *v7;
        v16 = v7[1];
        v45 = *v7;
        v46 = v16;
        v44 = a4;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          result = v13(&v42);
        }

        if (v12 && *(v47 + v7->u8[0]) == 3)
        {
          if ((a4 & 1) == 0)
          {
            BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(v8 + 1648, 0, v7);
          }

          v17 = v7[1].u16[7];
          v18 = 300 * v7[1].u16[2];
          *v15.i64 = v18;
          v38 = &off_2A1F0B5F0;
          *v16.i64 = v18 - trunc(v18);
          v15.i64[0] = vbslq_s8(v32, v16, v15).i64[0];
          if (*v15.i64 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v19 = *v15.i64 * 4294967300.0 + 0.5;
          v20 = v19;
          if (v19 >= 4294967300.0)
          {
            v20 = -1;
          }

          v39 = v20;
          v40 = v18 + 604800 * v17;
          v38 = &off_2A1F0B5F0;
          result = *(v8 + 88);
          if (!*(result + 2576))
          {
            goto LABEL_23;
          }

          BlueFin::GlPeTimeManager::GetTime(result, 1, &v33);
          v36 = &off_2A1F0B5F0;
          v37 = 0;
          Gps = BlueFin::GlPeGnssTime::GetGps(&v33, &v36);
          v22 = (v38[4])(&v38, Gps);
          v33.n128_u64[0] = __PAIR64__(v22, v39);
          v23 = (v36[4])(&v36);
          v41[0] = v37;
          v41[1] = v23;
          BlueFin::GlTimePoint::resolveAmbiguity(&v33, v41, 0x24EA0000u);
          result = (v36[3])(&v36, v33.n128_u32[1]);
          v39 = v33.n128_u32[0];
          v40 = result;
          v24 = v37;
          v25 = HIDWORD(v37);
          v26 = result | v33.n128_u8[0];
          if (result | v33.n128_u32[0])
          {
            if (v37 < __PAIR64__(result, v33.n128_u32[0]))
            {
              v25 = (__PAIR64__(result - HIDWORD(v37), v33.n128_u32[0]) - v37) >> 32;
              v24 = v33.n128_u32[0] - v37;
              v26 = 1;
            }

            else
            {
              v26 = 0;
              v25 = (v37 - __PAIR64__(result, v33.n128_u32[0])) >> 32;
              v24 = v37 - v33.n128_u32[0];
            }
          }

          v27 = v24 * 2.32830644e-10 + v25;
          if ((v26 & ((v25 | v24) != 0)) != 0)
          {
            v27 = -v27;
          }

          if (v27 <= 604800.0)
          {
LABEL_23:
            v28 = v13;
            v29 = v7[1];
            v33 = *v7;
            v34 = v29;
            v35 = a4;
            if (v33.n128_u8[0] <= 0x1FuLL)
            {
              v30 = *(v8 + 80) + 36 * v33.n128_u8[0] + 6016;
              result = BlueFin::GlPeGpsQzssAltNavData::IsBetterThan(&v33, v30);
              if (result)
              {
                *v30 = v33;
                *(v30 + 16) = v34;
                *(v30 + 32) = v35;
              }
            }

            v13 = v28;
          }
        }
      }

      if (v9 > 0x1E)
      {
        break;
      }

      ++v9;
      v7 += 2;
    }

    while ((a5 & 1) == 0);
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

void BlueFin::GlPeLtoMgr::UpdateDcb(uint64_t a1, uint64_t a2)
{
  v4 = GlCustomLog(14, "Update DCB(GLO) Type: %d\n", *(a2 + 4));
  v5 = *(a1 + 80);
  v6 = *(a2 + 4);
  if (v6 == 4)
  {
    v7 = (v5 + 119508);
  }

  else
  {
    if (v6 != 5)
    {
      return;
    }

    v7 = (v5 + 119604);
  }

  v8 = *(a2 + 176);

  BlueFin::GlPeIONXMgr::setDcbFromLto(v4, v8, 0x18u, v7);
}

{
  v4 = GlCustomLog(14, "Update DCB(GAL) Type: %d\n", *(a2 + 4));
  v5 = *(a1 + 80);
  v6 = *(a2 + 4);
  if (v6 == 12)
  {
    v7 = (v5 + 119220);
  }

  else
  {
    if (v6 != 13)
    {
      return;
    }

    v7 = (v5 + 119364);
  }

  v8 = *(a2 + 248);

  BlueFin::GlPeIONXMgr::setDcbFromLto(v4, v8, 0x24u, v7);
}

uint64_t BlueFin::GlPeLtoMgr::UpdateGnssGpsTimeOffsetsJavd(uint64_t a1, __int16 *a2, char a3)
{
  v6 = *(a1 + 88);
  v9 = 0x400000000;
  v10 = *a2;
  v11 = *(a2 + 2);
  result = BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(v6, &v9);
  if ((a3 & 1) == 0)
  {
    v8 = *(a2 + 2);
    *(a1 + 20104) = *a2;
    *(a1 + 20112) = v8;
    *(a1 + 26464) |= 0x400u;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateGalIonoModel(uint64_t a1, unsigned __int16 *a2, int a3, int a4)
{
  v4 = a4;
  v8 = "LTO";
  if (a4)
  {
    v8 = "RTO";
  }

  GlCustomLog(15, "GAL IONO(%s): ", v8);
  result = GlCustomLog(15, "%d, %d, %d\n", *a2, a2[1], a2[2]);
  if ((v4 & 1) == 0)
  {
    v10 = *a2;
    *(a1 + 20072) = a2[2];
    *(a1 + 20076) = a3;
    *(a1 + 20068) = v10;
    *(a1 + 26464) |= 0x80u;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::SerializeLto(BlueFin::GlPeLtoMgr *this, BlueFin::GlPeEngineCallBacks *a2)
{
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoInfo((this + 1648), a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoSlices((this + 1648), a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoAlm(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoUtc(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoSysTime(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoIono(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssGpsTimeoffs(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssL5Health(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssL5HealthInfo(this + 1648, a2);
  BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssAltNav(this + 1648, a2);

  return BlueFin::GlPeLtoFileContentStorageMgr::SerializeLtoGnssSignalType(this + 1648, a2);
}

uint64_t BlueFin::GlPeLtoMgr::UpdateLtoToStore(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int a4)
{
  updated = BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(a1 + 1648, a2, a3, *(a1 + 4 * a2 + 960), a4);
  v7 = a3[8] >> 4;
  (*(*a3 + 136))(&v10, a3, updated);
  v9 = v7;
  return BlueFin::GlGnssSet::Remove(a1 + 26496, &v9);
}

void BlueFin::GlPeLtoMgr::StartLtoContentToStore(BlueFin::GlPeLtoMgr *this, int a2)
{
  v3 = v5;
  v4 = 3;
  if (a2)
  {
    *&v5[4] = 0;
    *v5 = 12;
  }

  else
  {
    memset(v5, 255, sizeof(v5));
    BlueFin::GlSetBase::Remove(&v3, 0);
  }

  BlueFin::GlPeLtoFileContentStorageMgr::Clear(this + 1648, &v3);
}

void *BlueFin::GlPeLtoSvData::GlPeLtoSvData(BlueFin::GlPeLtoSvData *this, const unsigned int *a2, size_t __n)
{
  if (__n >= 0x4D)
  {
    DeviceFaultNotify("glpe_ltomgr.h", 86, "GlPeLtoSvData", "ulSizeByte <= sizeof(m_aulWords)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.h", 86, "ulSizeByte <= sizeof(m_aulWords)");
  }

  return memcpy(this, a2, __n);
}

uint64_t BlueFin::GlPeLtoUtcDataInterface::GlPeLtoUtcDataInterface(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1F10448;
  *(result + 8) = 4;
  *(result + 12) = 0;
  *(result + 20) = 0;
  *(result + 34) = 0;
  *(result + 28) = 0;
  if (result + 28 != a2)
  {
    *(result + 28) = *a2;
    *(result + 36) = *(a2 + 8);
  }

  *(result + 40) = *(a2 + 12);
  return result;
}

uint64_t BlueFin::GlPeLtoSysTimeDataInterface::GlPeLtoSysTimeDataInterface(uint64_t result, uint64_t a2)
{
  *result = &unk_2A1F10490;
  *(result + 8) = 4;
  *(result + 12) = 0u;
  *(result + 28) = 0u;
  *(result + 44) = 0;
  if (result + 38 != a2)
  {
    *(result + 38) = *a2;
    *(result + 46) = *(a2 + 8);
  }

  *(result + 50) = *(a2 + 12);
  return result;
}

uint64_t BlueFin::GlPeGnssTgdIscData::Deserialize(BlueFin::GlPeGnssTgdIscData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 115)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 > 2)
  {
    return 0;
  }

  if (v3 == 2)
  {
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 2) = U8;
  if (U8 > 3)
  {
    if (U8 != 4)
    {
      if (U8 == 5)
      {
        *(this + 13) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 17) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 21) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 25) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 29) = BlueFin::GlSysLogEntry::GetS32(a2);
        *(this + 33) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(this + 35) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(this + 37) = BlueFin::GlSysLogEntry::GetS16(a2);
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
        v8 = 39;
        goto LABEL_17;
      }

      if (U8 == 6)
      {
        *(this + 13) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 17) = BlueFin::GlSysLogEntry::GetU8(a2);
        *(this + 21) = BlueFin::GlSysLogEntry::GetU16(a2);
        *(this + 23) = BlueFin::GlSysLogEntry::GetS16(a2);
        *(this + 25) = BlueFin::GlSysLogEntry::GetS16(a2);
        U16 = BlueFin::GlSysLogEntry::GetU16(a2);
        v8 = 27;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_15:
    *(this + 13) = BlueFin::GlSysLogEntry::GetU8(a2);
    U16 = BlueFin::GlSysLogEntry::GetS16(a2);
    v8 = 15;
    goto LABEL_17;
  }

  if (U8 != 1)
  {
    if (U8 != 2)
    {
      if (U8 == 3)
      {
        goto LABEL_10;
      }

LABEL_18:
      DeviceFaultNotify("glpe_ltoreader.cpp", 534, "Deserialize", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltoreader.cpp", 534, "false");
    }

    goto LABEL_15;
  }

LABEL_10:
  *(this + 13) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 17) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 21) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 25) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 29) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 33) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 35) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 37) = BlueFin::GlSysLogEntry::GetS16(a2);
  *(this + 39) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 41) = BlueFin::GlSysLogEntry::GetS16(a2);
  U16 = BlueFin::GlSysLogEntry::GetU16(a2);
  v8 = 43;
LABEL_17:
  *(this + v8) = U16;
  BlueFin::GlSysLogEntry::CheckConsumed(a2, 538);
  return 1;
}

uint64_t BlueFin::GlPeGnssTgdIscData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v14 = *MEMORY[0x29EDCA608];
  if ((v3 & 0xFFFFFFFD) != 0)
  {
    DeviceFaultNotify("glpe_ltoreader.cpp", 549, "SerializeImpl", "ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltoreader.cpp", 549, "ucVersion == 2");
  }

  v4 = v2;
  v5 = v1;
  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 115;
    v11 = 2;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = 2;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v1 + 12));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 8));
    v6 = *(v5 + 8);
    if (v6 > 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 13));
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 17));
          BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 21));
          BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 25));
          BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 29));
          BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 33));
          BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 35));
          BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 37));
          BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 39));
          goto LABEL_17;
        }

        if (v6 == 6)
        {
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 13));
          BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 17));
          BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 21));
          BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 23));
          BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 25));
          BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 27));
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 1)
      {
LABEL_7:
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 13));
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 17));
        BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 21));
        BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 25));
        BlueFin::GlSysLogEntry::PutS32(&v9, *(v5 + 29));
        BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 33));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 35));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 37));
        BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 39));
        BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 41));
        BlueFin::GlSysLogEntry::PutU16(&v9, *(v5 + 43));
LABEL_17:
        BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v4, 4);
        goto LABEL_18;
      }

      if (v6 != 2)
      {
        if (v6 == 3)
        {
          goto LABEL_7;
        }

LABEL_20:
        DeviceFaultNotify("glpe_ltoreader.cpp", 619, "SerializeImpl", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltoreader.cpp", 619, "false");
      }
    }

    BlueFin::GlSysLogEntry::PutU8(&v9, *(v5 + 13));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v5 + 15));
    goto LABEL_17;
  }

LABEL_18:
  v7 = *MEMORY[0x29EDCA608];
  return 1;
}

_DWORD *BlueFin::GlPeLtoReaderBase::eph_element_array_to_structure(_DWORD *result, uint64_t a2)
{
  *a2 = *result;
  *(a2 + 4) = result[1];
  *(a2 + 8) = result[2];
  *(a2 + 12) = result[3];
  *(a2 + 16) = result[4];
  *(a2 + 20) = result[5];
  *(a2 + 24) = result[6];
  *(a2 + 28) = result[7];
  *(a2 + 32) = result[8];
  *(a2 + 36) = result[9];
  *(a2 + 40) = result[10];
  *(a2 + 44) = result[11];
  *(a2 + 48) = result[12];
  *(a2 + 52) = result[13];
  *(a2 + 56) = result[14];
  *(a2 + 60) = result[15];
  *(a2 + 64) = result[16];
  *(a2 + 68) = result[17];
  *(a2 + 72) = result[18];
  *(a2 + 76) = result[19];
  *(a2 + 80) = result[20];
  *(a2 + 84) = result[21];
  *(a2 + 88) = result[22];
  *(a2 + 92) = result[23];
  *(a2 + 96) = result[24];
  *(a2 + 100) = result[25];
  *(a2 + 104) = result[26];
  *(a2 + 108) = result[27];
  *(a2 + 112) = result[28];
  *(a2 + 116) = result[29];
  *(a2 + 120) = result[30];
  *(a2 + 124) = result[31];
  *(a2 + 128) = result[32];
  *(a2 + 132) = result[33];
  *(a2 + 136) = result[34];
  *(a2 + 140) = result[35];
  return result;
}

uint64_t BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = 0;
  if (a3 && a2 <= 6)
  {
    v4 = ((0xE243F0A181320uLL >> (8 * a2)) & 0x3F) < a3 || a2 > 5;
    if (v4 || ((0x3Du >> a2) & 1) == 0)
    {
      return 0;
    }

    else
    {
      v5 = *(a1 + qword_298A40A18[a2]);
      if (v5)
      {
        return v5 + 144 * a3 - 144;
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoReaderBase::parseNavModelSat(uint64_t a1, unsigned __int8 *a2, BlueFin::GlPeBitReader *this)
{
  v6 = 0;
  v29 = *MEMORY[0x29EDCA608];
  do
  {
    v7 = BlueFin::GlPeLtoReaderBase::ephemeris_elements[v6 * 4];
    v8 = BlueFin::GlPeBitReader::uint(this, v7 >> 1);
    v9 = v8 << -(v7 >> 1) >> -(v7 >> 1);
    if ((v7 & 1) == 0)
    {
      v9 = v8;
    }

    v28[v6++ - 1] = v9;
  }

  while (v6 != 36);
  BlueFin::GlPeLtoReaderBase::eph_element_array_to_structure(&v27, a2);
  v10 = *(a1 + 9764);
  if (v10 != 2)
  {
    if (v10 == 3)
    {
      if (*(a1 + 12) == 5)
      {
        goto LABEL_13;
      }
    }

    else if (v10 == 4 && *(a1 + 12) == 6)
    {
      goto LABEL_13;
    }

    if (*(this + 5) != 32)
    {
      *(this + 5) = 0;
    }
  }

LABEL_13:
  v11 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(a1 + 12));
  if (v11 == 7 || (v12 = *a2 + 1, ((*a2 + 1) & 0x100) != 0) || (v13 = v11, ((0xE243F0A181320uLL >> (8 * v11)) & 0x3F) < v12))
  {
    result = 2;
    goto LABEL_17;
  }

  v16 = *(a1 + 10776);
  if (v16)
  {
    v17 = BlueFin::GlGnssSet::operator()(v16 + 1024, v11);
    BlueFin::GlSetBase::GlSetBase(&v27, v28, 2u, v17);
    v18 = 1 << (v12 & 0x1F);
    if ((v18 & *(v27 + 4 * (v12 >> 5))) != 0 || (BlueFin::GlPeLtoMgr::GetBadSvSet(*(a1 + 10776), v13, 0, v26), (v18 & *(v26[0] + 4 * (v12 >> 5))) != 0) || !BlueFin::GlAidMask::AllowSV(*(a1 + 10776), v13, v12))
    {
      result = 3;
      goto LABEL_17;
    }
  }

  result = BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(a1, v13, v12);
  if (result)
  {
    if (v13 == 5)
    {
      if (*(a1 + 9764) < 4u)
      {
LABEL_31:
        *result = *a2;
        v20 = *(a2 + 1);
        v21 = *(a2 + 2);
        v22 = *(a2 + 4);
        *(result + 48) = *(a2 + 3);
        *(result + 64) = v22;
        *(result + 16) = v20;
        *(result + 32) = v21;
        v23 = *(a2 + 5);
        v24 = *(a2 + 6);
        v25 = *(a2 + 8);
        *(result + 112) = *(a2 + 7);
        *(result + 128) = v25;
        *(result + 80) = v23;
        *(result + 96) = v24;
        result = 1;
        goto LABEL_17;
      }

      v19 = 4;
    }

    else
    {
      if (v13 != 4 || *(a1 + 9764) <= 2u)
      {
        goto LABEL_31;
      }

      v19 = 2;
    }

    *(a2 + 1) |= v19;
    goto LABEL_31;
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeLtoReaderBase::readDynamicRange(BlueFin::GlPeBitReader *this, _WORD *a2, int a3)
{
  v3 = a2;
  if (*(this + 5) != 32)
  {
    *(this + 5) = 0;
  }

  v5 = &a2[2 * a3];
  do
  {
    *v3 = *v3 & 0xFFFE | BlueFin::GlPeBitReader::uint(this, 1u) & 1;
    *v3 = (2 * (BlueFin::GlPeBitReader::uint(this, 1u) & 1)) | *v3 & 0xFFFD;
    *v3 = (4 * (BlueFin::GlPeBitReader::uint(this, 1u) & 1)) | *v3 & 0xFFFB;
    result = BlueFin::GlPeBitReader::uint(this, 5u);
    *v3 = (8 * result + 8) & ((*v3 << 15) >> 15) & 0x1F8 | *v3 & 0xFE07;
    v3 += 2;
  }

  while (v3 < v5);
  return result;
}

uint64_t BlueFin::GlPeLtoReaderBase::uncompress_field(uint64_t result, BlueFin::GlPeBitReader *this, int *a3)
{
  if (result)
  {
    v5 = result;
    v6 = (result >> 3) & 0x3F;
    result = BlueFin::GlPeBitReader::uint(this, v6);
    v4 = (result << -v6) >> -v6;
    if ((v5 & 4) == 0)
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return result;
}

uint64_t BlueFin::GlPeLtoReaderBase::reportError(BlueFin::GlPeLtoReaderBase *this, int a2, const char *a3)
{
  GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(this + 2), a2, "internal");
  v4 = *(this + 1346);

  return BlueFin::GlSetBase::Remove(v4, 11);
}

uint64_t BlueFin::GlPeLtoReader::CheckExpiration(BlueFin::GlPeLtoReader *this)
{
  v1 = MEMORY[0x2A1C7C4A8](this);
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(v1 + 10776);
  if (v2 && (v3 = v1, v4 = *(v1 + 11176), v4 != *(v2 + 544)))
  {
    v5 = 1;
    if (v4 < *(v1 + 9800))
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v26[0] = xmmword_298A34030;
      v26[1] = xmmword_298A34040;
      v26[2] = xmmword_298A407E0;
      v26[3] = xmmword_298A407F0;
      v11 = 0uLL;
      memset(&v23[1], 0, 32);
      v23[0] = xmmword_298A40800;
      v12 = 0x100000020;
      v25 = 0x100000020;
      v24 = 0;
      do
      {
        if ((*(v3 + 11184) & (1 << v8)) != 0)
        {
          v9 |= *(v23 + v8);
        }

        if ((*(v3 + 11180) & (1 << v8)) != 0)
        {
          v10 = *(v26 + v8) | v10;
          switch(v8)
          {
            case 0:
              v16 = *(v3 + 11200);
              *(v16 + 96) = 0xFFFFFFFF00000000;
              *(v16 + 192) = 0;
              *(v16 + 240) = 0xFFFFFFFF00000000;
              *(v16 + 336) = 0;
              BlueFin::GlPeKF::ClearInitPos(*(v16 + 344), 1, *&v12, v11);
              break;
            case 1:
              for (i = 0; i != 7; ++i)
              {
                Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(v3 + 11200) + 384), i);
                if (Mgr)
                {
                  (*(*Mgr + 56))(Mgr);
                }
              }

              break;
            case 2:
              v17 = *(v3 + 11208);
              *(v17 + 646) = 0;
              BlueFin::GlPeTimeManager::updateConversionTable(v17);
              break;
            case 3:
            case 6:
              BlueFin::GlPeAlmMgr::Clear((*(v3 + 11200) + 34112));
              break;
            case 4:
              v14 = *(v3 + 11272);
              *(v14 + 2) = 0;
              *(v14 + 10) = *(v14 + 12);
              *(v14 + 14) = 0;
              *v14 = 0;
              *(v14 + 40) = -7200001;
              *(v14 + 24) = 0;
              *(v14 + 28) = 0;
              *(v14 + 49) = 0;
              break;
            case 5:
              BlueFin::GlPeLtoMgr::Clear((*(v3 + 11200) + 7424), 1);
              break;
            case 7:
              *&v12 = BlueFin::GlPeIonoMgr::Clear((*(v3 + 11200) + 71232));
              break;
            case 8:
              v12 = BlueFin::GlPeTimeManager::ClearSystemOffsets(*(v3 + 11208)).n128_u64[0];
              break;
            case 12:
              BlueFin::GlPeClkCalibrateMgr::Clear(*(v3 + 11264));
              break;
            case 13:
              BlueFin::GlPeSvHealthHelper::Clear((*(v3 + 11240) + 32));
              break;
            case 14:
              v15 = *(v3 + 11248);
              *(v15 + 40) = 0x271000000000;
              *&v12 = 0.0;
              *(v15 + 72) = 0u;
              *(v15 + 88) = 0u;
              *(v15 + 104) = 0u;
              *(v15 + 120) = 0u;
              *(v15 + 136) = 0u;
              *(v15 + 152) = 0u;
              *(v15 + 168) = 0u;
              *(v15 + 184) = 0u;
              *(v15 + 196) = 0u;
              *(v15 + 48) = 0;
              *(v15 + 56) = 0;
              break;
            case 15:
              v13 = *(v3 + 11232);
              if (*(v13 + 19352) <= 2)
              {
                *(v13 + 19352) = 3;
              }

              break;
            default:
              break;
          }
        }

        ++v8;
      }

      while (v8 != 16);
      *(*(v3 + 10776) + 544) = *(v3 + 11176);
      (*(**(v3 + 11224) + 16))(*(v3 + 11224), v10, 0);
      BlueFin::GlNvMemImpl::Delete(*(v3 + 11224));
      BlueFin::GlNvMemImpl::Write(*(v3 + 11224));
      bzero(v22, 0x38A8uLL);
      v22[0] = v9;
      v20 = *(v3 + 11216);
      v21 = *(v20 + 128);
      if (v21)
      {
        v21(*(v20 + 8), v22);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t BlueFin::GlPeLtoReader::UpdateLtoExtensionBits(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *a3 | 1;
  *a3 = v4;
  v5 = *(a2 + 4);
  if (*a2 != 2 || (v5 - 1) > 0x17)
  {
    goto LABEL_15;
  }

  v7 = (result + 21867);
  v8 = 24;
  while (*(v7 - 1) != v5)
  {
    v7 += 32;
    if (!--v8)
    {
      goto LABEL_15;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *v7;
  do
  {
    if (*(result + 21867 + v9) == v11)
    {
      ++v10;
    }

    v9 += 32;
  }

  while (v9 != 768);
  if (v10 > 2u)
  {
LABEL_15:
    v12 = v4 & 0xFFFFFC1F;
  }

  else
  {
    v12 = v3 | (32 * (v11 & 0xF)) | 0x201;
  }

  *a3 = v12;
  return result;
}

void BlueFin::GlPeLtoReader::SendToPex(uint64_t a1, int a2, int a3, int a4)
{
  v119 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 11192);
  if (!v4)
  {
    goto LABEL_198;
  }

  if (a2 > 3)
  {
    switch(a2)
    {
      case 4:
        v93 = a4;
        v98 = a1 + 26972;
        v6 = 63;
        break;
      case 5:
        v93 = a4;
        v98 = a1 + 40388;
        v6 = 36;
        break;
      case 6:
        v93 = a4;
        v98 = a1 + 48632;
        v6 = 14;
        break;
      default:
        goto LABEL_198;
    }
  }

  else if (a2)
  {
    if (a2 == 2)
    {
      v93 = a4;
      v98 = a1 + 18408;
      if (a3)
      {
        v6 = 0;
      }

      else
      {
        v6 = 24;
      }
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_198;
      }

      v93 = a4;
      v98 = a1 + 24744;
      v6 = 10;
    }
  }

  else
  {
    v93 = a4;
    v98 = a1 + 11432;
    v6 = 32;
  }

  v99 = (a1 + 47472);
  v102 = 0;
  v95 = (a1 + 39344);
  v103 = 0;
  v105 = 0;
  v106 = 7;
  v7 = v109;
  v8 = 1192;
  v107 = 0;
  do
  {
    v9 = v7;
    v10 = 24;
    do
    {
      *(v9 - 1) = 0;
      *v9 = 0;
      v9 += 6;
      v10 -= 6;
    }

    while (v10);
    v11 = 0;
    v12 = &v102 + v8;
    do
    {
      *&v12[v11] = 0;
      *&v12[v11 + 2] = 0;
      *(v7 + v11) = 0;
      v11 += 6;
    }

    while (v11 != 24);
    v8 += 24;
    v7 += 3;
  }

  while (v8 != 1384);
  v13 = &v102;
  v110 = 0;
  v113 = 0;
  LOWORD(v114[3]) = 0;
  *&v115 = 0;
  *(&v115 + 6) = 0;
  v116[0] = 0;
  *(v116 + 6) = 0;
  LOWORD(v116[2]) = 0;
  LOWORD(v116[4]) = 0;
  *v117 = 0;
  *&v117[4] = 0;
  v117[28] = 0;
  bzero(v108, 0x480uLL);
  v14 = 0;
  BYTE4(v114[4]) = 0;
  *(&v114[3] + 4) = 0;
  BYTE4(v116[3]) = 0;
  do
  {
    for (i = 0; i != 24; i += 6)
    {
      v16 = v118 + i;
      *v16 = 0;
      v16[4] = 0;
    }

    for (j = 0; j != 24; j += 6)
    {
      v18 = v118 + j;
      *v18 = 0;
      v18[4] = 0;
    }

    for (k = 0; k != 24; k += 6)
    {
      v20 = v13 + k;
      *(v20 + 298) = *(v118 + k);
      v20[1196] = *(&v118[1] + k);
    }

    ++v14;
    v13 += 3;
  }

  while (v14 != 8);
  v104 = 0uLL;
  v111 = 0u;
  v112 = 0;
  memset(v114, 0, 22);
  v116[0] = 0;
  v115 = 0uLL;
  *(v116 + 6) = 0;
  v107 = 0;
  v110 = 0;
  HIBYTE(v113) = 0;
  memset(&v114[3], 0, 13);
  memset(&v116[2], 0, 13);
  memset(&v116[4], 0, 13);
  *&v117[16] = 0;
  *&v117[21] = 0;
  *v117 = 0uLL;
  v100 = a2;
  v101[0] = 0;
  v106 = a2;
  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 != 2)
      {
        if ((*(v99[401] + 8) & 2) != 0)
        {
          *v117 = *(a1 + 26960);
          *&v117[8] = *(a1 + 26968);
          BYTE4(v116[5]) = 4;
          v103 = *(a1 + 9812);
          (*(*v4 + 32))(v4, &v102);
          v94 = 0;
          BYTE4(v116[5]) &= ~4u;
          if (!v6)
          {
            goto LABEL_181;
          }
        }

        else
        {
          v94 = 0;
          BYTE4(v116[5]) = 0;
          if (!v6)
          {
            goto LABEL_181;
          }
        }

        goto LABEL_85;
      }

      v28 = v99[401];
      v29 = *v28;
      if ((*v28 & 2) != 0 || (*(v28 + 7) & 0x40) != 0)
      {
        if (*(a1 + 9808) > 0x93A7Fu)
        {
          *(a1 + 11092) = 0;
        }

        v31 = 0;
        v110 = 1;
        v112 = *(a1 + 11100);
        v111 = *(a1 + 11084);
        v29 = *v28;
        v30 = 3;
      }

      else
      {
        v30 = 2;
        v31 = 1;
      }

      if ((v29 & 4) != 0 || (*(v28 + 7) & 0x20) != 0)
      {
        v110 = v30;
        LOBYTE(v113) = *(a1 + 11114);
      }

      else if (v31)
      {
LABEL_77:
        v94 = 1;
        if (!v6)
        {
          goto LABEL_181;
        }

        goto LABEL_85;
      }

      v37 = *(a1 + 11412);
      LODWORD(v102) = *(a1 + 11384);
      HIDWORD(v102) = v37;
      v103 = *(a1 + 9812);
      v104 = *(a1 + 9960);
      v105 = 0;
      (*(*v4 + 32))(v4, &v102);
      v110 &= 0xFCu;
      goto LABEL_77;
    }

    v21 = v99[401];
    if ((*v21 & 4) != 0 || (v21[7] & 0x20) != 0)
    {
      v22 = *(a1 + 11404);
      LODWORD(v102) = *(a1 + 11376);
      HIDWORD(v102) = v22;
      v103 = *(a1 + 9812);
      v104 = *(a1 + 9960);
      v105 = 0;
      *&v117[12] = *(a1 + 11104);
      v117[28] = 1;
      (*(*v4 + 32))(v4, &v102);
      v94 = 0;
      v117[28] = 0;
      if (!v6)
      {
        goto LABEL_181;
      }

      goto LABEL_85;
    }

LABEL_73:
    v94 = 0;
    if (!v6)
    {
      goto LABEL_181;
    }

    goto LABEL_85;
  }

  if (a2 == 4)
  {
    v23 = v99[401];
    v24 = *v23;
    if ((*v23 & 0x10) != 0 && *(a1 + 9808) < 0x93A80u)
    {
      v25 = 1;
      BYTE4(v114[4]) = 1;
      v26 = *(a1 + 10448);
      v27 = *(v26 + 6);
      v116[0] = *v26;
      *(v116 + 6) = v27;
      v24 = *v23;
    }

    else
    {
      v25 = 0;
    }

    if ((v24 & 8) != 0)
    {
      v25 |= 2u;
      BYTE4(v114[4]) = v25;
      v115 = **(a1 + 10440);
    }

    if (v23[2])
    {
      v116[2] = *(a1 + 40376);
      LODWORD(v116[3]) = *(a1 + 40384);
      BYTE4(v114[4]) = v25 | 4;
    }

    else
    {
      BYTE4(v114[4]) = v25;
      if (!v25)
      {
        goto LABEL_73;
      }
    }

    v38 = *(a1 + 10448);
    v39 = *(v38 + 6);
    v116[0] = *v38;
    *(v116 + 6) = v39;
    v103 = *(a1 + 9812);
    (*(*v4 + 32))(v4, &v102);
    v94 = 0;
    BYTE4(v114[4]) &= 0xF8u;
    if (!v6)
    {
      goto LABEL_181;
    }

LABEL_85:
    v40 = 0;
    v41 = 0;
    v42 = v6;
    while (1)
    {
      if (v41 > 7)
      {
        goto LABEL_175;
      }

      v43 = v98 + 144 * v40;
      v44 = *v43;
      if (*v43 == 255)
      {
        goto LABEL_175;
      }

      v101[0] = v44 + 1;
      if ((a3 & 1) == 0)
      {
        if (v100 == 3)
        {
          v45 = *(v43 + 12);
          if ((v45 - 1) <= 1 && *(v43 + 16) == 15)
          {
            if (v45 == 2)
            {
              v46 = 6;
            }

            else
            {
              v46 = 2;
            }

            *(v43 + 4) |= v46;
            *(v43 + 16) = *(v43 + 104) & 0xF;
          }
        }

        BlueFin::GlPeLtoReader::UpdateLtoExtensionBits(a1, &v100, (v43 + 4));
      }

      v47 = *(v43 + 112);
      v48 = &v108[36 * v41];
      v48[6] = *(v43 + 96);
      v48[7] = v47;
      v48[8] = *(v43 + 128);
      v49 = *(v43 + 48);
      v48[2] = *(v43 + 32);
      v48[3] = v49;
      v50 = *(v43 + 80);
      v48[4] = *(v43 + 64);
      v48[5] = v50;
      v51 = *(v43 + 16);
      v52 = &v108[6 * v41 + 288];
      v53 = &v109[3 * v41];
      *v48 = *v43;
      v48[1] = v51;
      v54 = 4;
      do
      {
        *(v53 - 1) = 0;
        *v53 = 0;
        v53 += 6;
        --v54;
      }

      while (v54);
      if (v100 > 3)
      {
        if (v100 == 4)
        {
          v66 = v99[401];
          v67 = *v66;
          if ((*v66 & 0x20000000) != 0 || (*(v66 + 9) & 8) != 0)
          {
            BlueFin::GlPeLtoReader::updatePexTgdIsc(a1, v101, *v95, v52);
            v66 = v99[401];
            v67 = *v66;
          }

          if ((v67 & 0x40000000) != 0 || (*(v66 + 9) & 0x10) != 0)
          {
            BlueFin::GlPeLtoReader::updatePexTgdIsc(a1, v101, v95[128], v52);
          }
        }

        else if (v100 == 5)
        {
          v59 = *(*(a1 + 11200) + 7392);
          v118[0] = 0;
          if ((*(v99[401] + 3) & 8) != 0)
          {
            v60 = 0;
            while (1)
            {
              v61 = *(*v99 + v60);
              if (v61 <= 0x23 && v61 == v44)
              {
                break;
              }

              v60 += 28;
              if (v60 == 1008)
              {
                goto LABEL_174;
              }
            }

            if (v59)
            {
              if ((*(*v59 + 48))(v59, v101, 9, v118))
              {
                *(v52 + 6) = *(*v99 + v60 + 22);
                *(v52 + 7) = 0;
                *(v52 + 16) = 1;
              }

              if ((*(*v59 + 48))(v59, v101, 10, v118))
              {
                *(v52 + 3) = *(*v99 + v60 + 24);
                *(v52 + 4) = 0;
                *(v52 + 10) = 1;
              }
            }
          }
        }

        goto LABEL_174;
      }

      if (v100)
      {
        if (v100 != 3)
        {
          goto LABEL_174;
        }

        v55 = *(*(a1 + 11200) + 7376);
        v118[0] = 0;
        v56 = v99[401];
        if ((*(v56 + 3) & 0x10) != 0 || (*(v56 + 9) & 4) != 0)
        {
          v57 = 0;
          while (1)
          {
            v58 = *(*(a1 + 26880) + v57);
            if (v58 <= 9 && v58 == v44)
            {
              break;
            }

            v57 += 32;
            if (v57 == 320)
            {
              goto LABEL_138;
            }
          }

          *(v52 + 16) = 0;
          if (v55)
          {
            if ((*(*v55 + 48))(v55, v101, 1, v118))
            {
              *(v52 + 6) = *(*(a1 + 26880) + v57 + 22);
              *(v52 + 16) |= 1u;
            }

            v68 = (*(*v55 + 48))(v55, v101, 4, v118);
            v69 = *(a1 + 26880);
            if (v68)
            {
              *(v52 + 7) = *(v69 + v57 + 24);
              *(v52 + 16) |= 2u;
            }

            if (*(v69 + v57 + 26) && (*(*v55 + 48))(v55, v101, 3, v118))
            {
              *(v52 + 4) = *(*(a1 + 26880) + v57 + 28);
              *(v52 + 10) = 4;
            }
          }
        }

LABEL_138:
        v70 = v99[401];
        if ((*(v70 + 4) & 1) == 0 && (*(v70 + 9) & 4) == 0)
        {
          goto LABEL_174;
        }

        v71 = 0;
        while (1)
        {
          v72 = *(*(a1 + 26952) + v71);
          if (v72 <= 9 && v72 + 1 == v101[0])
          {
            break;
          }

          v71 += 4;
          if (v71 == 40)
          {
            goto LABEL_174;
          }
        }

        if (!v55 || !(*(*v55 + 48))(v55, v101, 2, v118))
        {
          goto LABEL_174;
        }

        *v52 = 0;
        v79 = *(a1 + 26952);
      }

      else
      {
        v62 = *(a1 + 11200) + 392;
        v118[0] = 0;
        v63 = v99[401];
        if ((*(v63 + 3) & 4) != 0 || (*(v63 + 9) & 2) != 0)
        {
          v64 = 0;
          while (1)
          {
            v65 = *(*(a1 + 18240) + v64);
            if (v65 <= 0x1F && v65 == v44)
            {
              break;
            }

            v64 += 32;
            if (v64 == 1024)
            {
              goto LABEL_154;
            }
          }

          *(v52 + 16) = 0;
          if ((*(*v62 + 48))(v62, v101, 1, v118))
          {
            *(v52 + 6) = *(*(a1 + 18240) + v64 + 22);
            *(v52 + 16) |= 1u;
          }

          v74 = (*(*v62 + 48))(v62, v101, 4, v118);
          v75 = *(a1 + 18240);
          if (v74)
          {
            *(v52 + 7) = *(v75 + v64 + 24);
            *(v52 + 16) |= 2u;
          }

          if (*(v75 + v64 + 26) && (*(*v62 + 48))(v62, v101, 3, v118))
          {
            *(v52 + 4) = *(*(a1 + 18240) + v64 + 28);
            *(v52 + 10) = 4;
          }
        }

LABEL_154:
        v76 = v99[401];
        if ((*v76 & 0x80000000) == 0 && (*(v76 + 9) & 2) == 0)
        {
          goto LABEL_174;
        }

        v71 = 0;
        while (1)
        {
          v77 = *(*(a1 + 18400) + v71);
          if (v77 <= 0x1F && v77 + 1 == v101[0])
          {
            break;
          }

          v71 += 4;
          if (v71 == 128)
          {
            goto LABEL_174;
          }
        }

        if (!(*(*v62 + 48))(v62, v101, 2, v118))
        {
          goto LABEL_174;
        }

        *v52 = 0;
        v79 = *(a1 + 18400);
      }

      *(v52 + 1) = *(v79 + v71 + 2);
      *(v52 + 4) = 2;
LABEL_174:
      ++v41;
      ++v107;
LABEL_175:
      ++v40;
      if (v41 == 8)
      {
        if (v40 == v42)
        {
          v41 = 8;
        }

        else
        {
          v41 = 8;
          if (v107)
          {
            v80 = *(a1 + 11404 + 4 * a2);
            LODWORD(v102) = *(a1 + 11376 + 4 * a2);
            HIDWORD(v102) = v80;
            v104 = *(a1 + 9960);
            v105 = 0;
            (*(**(a1 + 11192) + 32))(*(a1 + 11192), &v102);
            v41 = 0;
            v107 = 0;
          }
        }
      }

      if (v40 == v42)
      {
        goto LABEL_181;
      }
    }
  }

  if (a2 == 5)
  {
    v32 = v99[401];
    v33 = *v32;
    if ((*v32 & 0x40) != 0 && *(a1 + 9808) < 0x93A80u)
    {
      v34 = 1;
      HIBYTE(v113) = 1;
      v35 = *(a1 + 10472);
      v36 = *(v35 + 4);
      LODWORD(v114[2]) = *v35;
      WORD2(v114[2]) = v36;
      v33 = *v32;
    }

    else
    {
      v34 = 0;
    }

    if ((v33 & 0x20) != 0)
    {
      v34 |= 2u;
      HIBYTE(v113) = v34;
      *v114 = **(a1 + 10464);
    }

    if (v32[1] < 0)
    {
      v114[3] = *(a1 + 47480);
      LODWORD(v114[4]) = *(a1 + 47488);
      HIBYTE(v113) = v34 | 4;
    }

    else
    {
      HIBYTE(v113) = v34;
      if (!v34)
      {
        goto LABEL_73;
      }
    }

    v90 = *(a1 + 10472);
    v91 = *(v90 + 4);
    LODWORD(v90) = *v90;
    WORD2(v114[2]) = v91;
    v92 = *(a1 + 9812);
    LODWORD(v114[2]) = v90;
    v103 = v92;
    (*(*v4 + 32))(v4, &v102);
    v94 = 0;
    HIBYTE(v113) &= 0xF8u;
    if (!v6)
    {
      goto LABEL_181;
    }

    goto LABEL_85;
  }

  if ((*(v99[401] + 8) & 8) == 0)
  {
    v94 = 0;
    BYTE4(v116[3]) = 0;
    if (!v6)
    {
      goto LABEL_181;
    }

    goto LABEL_85;
  }

  LODWORD(v116[5]) = *(a1 + 50656);
  v116[4] = *(a1 + 50648);
  BYTE4(v116[3]) = 4;
  v103 = *(a1 + 9812);
  (*(*v4 + 32))(v4, &v102);
  v94 = 0;
  BYTE4(v116[3]) &= ~4u;
  if (v6)
  {
    goto LABEL_85;
  }

LABEL_181:
  if (v107)
  {
    v102 = __PAIR64__(*(a1 + 4 * a2 + 11404), *(a1 + 4 * a2 + 11376));
    v104 = *(a1 + 9960);
    if (v93)
    {
      v81 = 3;
    }

    else
    {
      v81 = 1;
    }

    v105 = v81;
    (*(**(a1 + 11192) + 32))(*(a1 + 11192), &v102);
  }

  if ((v94 & a3) == 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = 0;
    do
    {
      while (1)
      {
        if (v83 <= 7)
        {
          v85 = a1 + 22632 + 88 * v82;
          if (*(v85 + 60) != 255)
          {
            v86 = *(v85 + 48);
            v87 = &v118[22 * v83];
            *(v87 + 2) = *(v85 + 32);
            *(v87 + 3) = v86;
            *(v87 + 4) = *(v85 + 64);
            *(v87 + 10) = *(v85 + 80);
            v88 = *(v85 + 16);
            *v87 = *v85;
            *(v87 + 1) = v88;
            ++v83;
            ++v84;
          }
        }

        if (v83 != 8 || v82 == 23 || !v84)
        {
          break;
        }

        (*(**(a1 + 11192) + 96))(*(a1 + 11192), v118, v84);
        v83 = 0;
        v84 = 0;
        ++v82;
      }

      ++v82;
    }

    while (v82 != 24);
    if (v84)
    {
      (*(**(a1 + 11192) + 96))(*(a1 + 11192), v118, v84);
    }
  }

LABEL_198:
  v89 = *MEMORY[0x29EDCA608];
}

uint64_t BlueFin::GlPeLtoReader::updatePexTgdIsc(uint64_t result, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = (a3 + 12);
  v7 = 63;
  while (1)
  {
    v8 = *(v6 - 12);
    if (v8 <= 0x3E)
    {
      v9 = *(v6 - 2);
      v10 = v8 + 1;
      if (v9 && v10 == v5)
      {
        break;
      }
    }

    v6 += 8;
    if (!--v7)
    {
      return result;
    }
  }

  v12 = 18;
  if (v9 == 1)
  {
    v12 = 12;
  }

  v13 = a4 + v12;
  *(a4 + v12 + 4) = 0;
  v14 = *(*(result + 11200) + 7384);
  v19 = 0;
  if (v14)
  {
    if (v9 == 1)
    {
      v15 = 7;
    }

    else
    {
      v15 = 5;
    }

    v18 = v5;
    if ((*(*v14 + 48))(v14, &v18, v15, &v19))
    {
      *v13 = *(v6 - 1);
      *(v13 + 4) |= 1u;
    }

    if (*(v6 - 2) == 1)
    {
      v16 = 8;
    }

    else
    {
      v16 = 6;
    }

    v17 = *a2;
    result = (*(*v14 + 48))(v14, &v17, v16, &v19);
    if (result)
    {
      *(v13 + 4) |= 2u;
      *(v13 + 2) = *v6;
    }
  }

  return result;
}

void BlueFin::GlPeLtoReader::~GlPeLtoReader(BlueFin::GlPeLtoReader *this)
{
  BlueFin::GlPeLtoReader::~GlPeLtoReader(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlPeLtoReaderBase::NegateSystemTimeOffsets(uint64_t this)
{
  *(this + 11080) = 1;
  *(this + 11072) = 1;
  return this;
}

double BlueFin::GlPeRtoReader::load_rto_gloephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v25 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_gloephemeris_elements[v5];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v8 = v7 << -(v6 >> 1) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v8 = v7;
    }

    *(&v15 + v5) = v8;
    v5 += 4;
  }

  while (v5 != 104);
  *(a2 + 60) = v15;
  v9 = v17;
  *a2 = v16;
  *(a2 + 16) = v9;
  *(a2 + 32) = v18;
  v10 = (v20 >> 2) & 1;
  *(a2 + 48) = v19;
  *(a2 + 52) = v10;
  v11 = v21;
  *(a2 + 56) = v22;
  result = *&v23;
  *(a2 + 64) = v23;
  v13 = v24;
  *(a2 + 80) = v11;
  *(a2 + 84) = v13;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeNavMsgParser::SetNicDataSubFrmMeas(uint64_t this, const BlueFin::GlDataSubFrmMeas *a2, double a3, int8x16_t a4)
{
  v9 = &unk_2A1F09388;
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 12);
  v16 = *(a2 + 15);
  v13 = *(a2 + 20);
  v4 = *(a2 + 36);
  v14 = v4;
  v15 = *(a2 + 52);
  if (v11 - 1 <= 1)
  {
    v5 = this;
    v6 = *(this + 8);
    v17 = 7;
    v18 = 0;
    this = BlueFin::GlPeSvIdConverter::SvId2Gnss((v6 + 119744), &v10, &v17, v4, a4);
    if (v18 - 1 >= 0x3F)
    {
      DeviceFaultNotify("glpe_navmsgparser.cpp", 181, "SetNicDataSubFrmMeas", "m_rAsstMgr.SvId2Gnss(otSubframe.otSvId, otGnss)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navmsgparser.cpp", 181, "m_rAsstMgr.SvId2Gnss(otSubframe.otSvId, otGnss)");
    }

    if (v17 == 6)
    {
      return BlueFin::GlPeNicEphMgr::SetDataSubFrmMeas(*(v5 + 32), &v9, v7, v8);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeOscMgr::SetAsstOscOffset(uint64_t this, __int16 *a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  if ((*(this + 49) & 1) == 0)
  {
    v6 = this;
    *(this + 2) = *a3.i64;
    v7 = a4;
    if (a4 <= 1)
    {
      LOWORD(v7) = 1;
    }

    *(this + 10) = v7;
    if (a2)
    {
      v8 = *a2;
      v9 = *(a2 + 1);
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(this + 24) = v8;
    *(this + 28) = v9;
    this = BlueFin::GlPeOscMgr::Update(this, 1, a3, a4, a5, a6);
    *(v6 + 49) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeOscMgr::FromCntinSlogEntry(BlueFin::GlPeOscMgr *this, BlueFin::GlSysLogEntry *a2, BlueFin::GlPeOscMgr *a3)
{
  if (!this)
  {
    DeviceFaultNotify("glpe_oscmgr.cpp", 304, "FromCntinSlogEntry", "pEntry");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_oscmgr.cpp", 304, "pEntry");
  }

  v6 = &unk_2A1F10870;
  result = BlueFin::GlPeOscAuxData::Deserialize(&v6, this);
  if (result)
  {
    v5 = v7;
    *(a2 + 2) = v7;
    *(a2 + 8) = 1;
    return GlCustomLog(14, "CntinDebug FromSlog %d\n", v5);
  }

  return result;
}

uint64_t BlueFin::GlPeOscAuxData::Deserialize(BlueFin::GlPeOscAuxData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 90 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 4) = BlueFin::GlSysLogEntry::GetS16(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 449);
  }

  return v3;
}

uint64_t BlueFin::GlPeOscData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v2;
  v5 = v1;
  v13 = *MEMORY[0x29EDCA608];
  if (v3 && v3 != 3)
  {
    DeviceFaultNotify("glpe_oscmgr.cpp", 399, "SerializeImpl", "ucVersion == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_oscmgr.cpp", 399, "ucVersion == 3");
  }

  if (v2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v9 = 71;
    v10 = 3;
    v11 = 0x1000000000000;
    v8 = &unk_2A1F092C0;
    v12 = 3;
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v1 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 10));
    BlueFin::GlSysLogEntry::PutS16(&v8, *(v5 + 12));
    BlueFin::GlSysLogEntry::PutU16(&v8, *(v5 + 14));
    BlueFin::GlSysLogEntry::PutU32(&v8, *(v5 + 16));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v8, v4, 4);
  }

  v6 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t BlueFin::GlPeOscAuxData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v12 = *MEMORY[0x29EDCA608];
  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_oscmgr.cpp", 426, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_oscmgr.cpp", 426, "ucVersion == 1");
  }

  v3 = v1;
  v4 = v0;
  if (v1 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v8 = 90;
    v9 = 1;
    v10 = 0x1000000000000;
    v7 = &unk_2A1F092C0;
    v11 = 1;
    GlCustomLog(14, "CntinDebug Write %d\n", *(v0 + 8));
    BlueFin::GlSysLogEntry::PutS16(&v7, *(v4 + 8));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v7, v3, 4);
  }

  v5 = *MEMORY[0x29EDCA608];
  return 1;
}

void BlueFin::GlPeOscMgr::Serialize(BlueFin::GlPeOscMgr *this, BlueFin::GlPeEngineCallBacks *a2, uint64_t a3, char *a4)
{
  v4 = *(this + 5);
  if (v4 >= 0)
  {
    v5 = *(this + 5);
  }

  else
  {
    v5 = -v4;
  }

  v6 = *(this + 1);
  if (v6 >= 0)
  {
    LOWORD(v7) = *(this + 1);
  }

  else
  {
    v7 = -v6;
  }

  if (v5 > 0x1770 || (v7 >> 2) > 0x6BCu)
  {
    v14 = *(this + 1);
    GlCustomLog(14, "OSC_STORE :Warning! Out of range osc offset values found %d ppb with %d ppb Unc.Osc values not stored to NVMEM\n");
  }

  else
  {
    v19 = &unk_2A1F108B8;
    v20 = v6;
    v21 = v4;
    v22 = *(this + 6);
    v10 = *(this + 10);
    if (v10 != -7200001)
    {
      a4 = this + 24;
      if (!*(this + 12))
      {
        v11 = *(this + 2);
        if (v11[644])
        {
          v12 = v10;
          if (v10 <= 0xFF9222FE)
          {
            v12 = v10;
          }

          BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v11, 0, 0, a4, v12);
        }

        else
        {
          *(this + 12) = 0;
          *(this + 7) = 0;
        }
      }
    }

    v23 = *(this + 12);
    v24 = *(this + 7);
    if (a2)
    {
      v19[3](&v19, a2, 0, a4);
      (*(*a2 + 128))(a2, v20, v21, this + 24);
      v13 = *(this + 1);
      v17 = *(this + 7);
      v18 = *(this + 12);
      v15 = *(this + 5);
      v16 = *(this + 6);
      GlCustomLog(14, "OSC_STORE stored %d ppb (%d, %d) [%u, %u]\n");
    }

    else if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        v19[3](&v19, 0, 0, a4);
      }
    }
  }
}

uint64_t BlueFin::GlPeOscMgr::UpdateCntinOffsetEstimate(uint64_t this)
{
  v1 = *(this + 6);
  if (*(this + 6))
  {
    if (*(this + 8) == 1)
    {
      v1 = (vcvtd_n_f64_s32(*(this + 2) - v1, 2uLL) + *(this + 4) * 0.75);
    }

    else
    {
      LOWORD(v1) = *(this + 2) - v1;
    }

    *(this + 4) = v1;
    if (v1 >= -50)
    {
      if (v1 < 51)
      {
        return this;
      }

      v2 = 50;
    }

    else
    {
      v2 = -50;
    }

    *(this + 4) = v2;
  }

  return this;
}

uint64_t BlueFin::GlPeOscMgr::SerializeCntin(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v2 = *(this + 16);
  if (*(v2 + 2576) == 3 || (*(v2 + 2744) & 8) != 0)
  {
    v3 = *(this + 4);
    if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeOscAuxData::SerializeImpl();
    }
  }

  return this;
}

uint64_t GlPeRngAidGen_SortSvIds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 >= 1)
  {
    return 1;
  }

  else
  {
    return (v2 >> 31);
  }
}

BOOL BlueFin::GlPeRangeAidGen::MakeFactoryAid(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v16 = *a2;
  *v7.i64 = BlueFin::GlPeSatAidInfo::Add(a1 + 32, &v16);
  if (!v6)
  {
    DeviceFaultNotify("glpe_raidgen.cpp", 840, "MakeFactoryAid", "nullptr != pSatAid");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_raidgen.cpp", 840, "nullptr != pSatAid");
  }

  v9 = v6;
  *v6 = *a2;
  v10 = *(a1 + 18048);
  v17 = 7;
  v18 = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss((v10 + 119744), v6, &v17, v7, v8);
  *(v9 + 1) = v17;
  v12 = v18;
  v9[8] = v18;
  v13 = v12 - 1;
  v14 = *a2 - 52;
  if (v13 >= 0x3F)
  {
    if ((*a2 - 52) >= 0xEu)
    {
      return result;
    }
  }

  else if ((*a2 - 52) > 0xDu)
  {
    goto LABEL_7;
  }

  *(v9 + 1) = 2;
  v9[8] = BlueFin::GlPeRangeAidGen::MakeFactoryAid(BlueFin::GlSvId const&,BlueFin::GL_FACT_TEST_ITEMS)::acOsn2Fcn[2 * v14];
LABEL_7:
  *(v9 + 5) = 0;
  *(v9 + 4) = 0;
  *(v9 + 40) = xmmword_298A40E40;
  *(v9 + 18) = 2949210;
  *(v9 + 3) = 2;
  *(a1 + 356) = 1;
  if (a3 == 4)
  {
    *(v9 + 10) = 973193955;
    *(a1 + 336) = 973193955;
    *(a1 + 352) = 973193955;
    v15 = 158;
  }

  else
  {
    v15 = 154;
  }

  *(v9 + 6) = v15;
  return result;
}

uint64_t BlueFin::GlPeRangeAidGen::SetAsstAcqAid(uint64_t a1, __int16 *a2)
{
  v4 = (*(a1 + 18248) + 8);
  v5 = 7;
  do
  {
    v6 = *(v4 - 1);
    v7 = *v4;
    v4 += 24;
    bzero(v6, ((4 * v7 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v5;
  }

  while (v5);
  bzero(*(a1 + 19032), ((4 * *(a1 + 19040) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (BlueFin::GlPeTimeManager::TimeKnown(*a1, 0, 0x200B20u))
  {
    BlueFin::GlPeTimeManager::GetTime(*a1, 1, &v42);
    v44[0] = &off_2A1F0B5F0;
    v44[1] = 0;
    BlueFin::GlPeGnssTime::GetGps(&v42, v44);
    v8.i64[0] = 0x3F50624DD2F1A9FCLL;
    *v9.i64 = *(a2 + 1) * 0.001;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v44, v9, &v46, v8);
    v45[1] = v46;
    v45[0] = &off_2A1F0B5F0;
    Time = BlueFin::GlPeTimeManager::GetTime(*a1, v45, 1, &v42);
    *v11.i64 = v43;
    v16 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v11, v12, v13, v14, v15);
  }

  else
  {
    v16 = -7200001;
  }

  *(a1 + 356) = v16;
  v17 = (*(a2 + 1) / 1000.0);
  *(a1 + 328) = v17;
  *(a1 + 336) = 1065353216;
  *(a1 + 344) = fmod(v17 + 10800.0, 86400.0);
  *(a1 + 352) = 1114636288;
  v18 = *a2;
  if (v18 >= 1)
  {
    if (v18 >= 0xE)
    {
      v19 = 14;
    }

    else
    {
      v19 = v18;
    }

    v20 = a2 + 8;
    do
    {
      v21 = *(v20 - 4);
      v22 = v21 + 1;
      if (v21 >= 0x20)
      {
        if (v21 - 119 > 0x12)
        {
          if (v21 - 192 > 9)
          {
            v22 = 0;
LABEL_27:
            GlCustomLog(14, "%d is not a valid GPS SVID \n", v22);
            goto LABEL_39;
          }

          v22 = v21 - 126;
        }

        else
        {
          v22 = v21 - 86;
        }
      }

      if ((v22 - 1) >= 0x20u)
      {
        goto LABEL_27;
      }

      v23 = BlueFin::GlSvId::s_aucSvId2gnss[v22];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v23] == 255)
      {
        v25 = 0;
        v24 = -1;
      }

      else
      {
        v24 = 0;
        v25 = (BlueFin::GlSignalId::s_ausGnss2signalId[v23] + v22 - BlueFin::GlSvId::s_aucGnss2minSvId[v23]) < 0x23Fu;
      }

      v42.n128_u8[0] = v21 + 1;
      BlueFin::GlPeSatAidInfo::Add(a1 + 32, &v42);
      if (v26)
      {
        *v26 = v22;
        *(v26 + 4) = 0;
        *(v26 + 8) = v22;
        *(v26 + 20) = 0;
        *(v26 + 24) = 0;
        *(v26 + 12) = 2;
        if (!v25)
        {
          v40 = "IsValid()";
          DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
          v41 = 651;
          goto LABEL_48;
        }

        v27 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v24 - v24 + v23]];
        if (v23 == 2)
        {
          v27 = v27 + -4500000.0;
        }

        v28 = (*(v20 - 3) * 2.5) / v27;
        *(v26 + 44) = v28;
        *(*(a1 + 19304) + 4 * (v22 >> 5)) |= 1 << v22;
        v29 = *(v26 + 24);
        v30 = v29 | 0x10;
        *(v26 + 24) = v29 | 0x10;
        LOWORD(v31) = v20[7];
        if (v31)
        {
          v30 = v29 | 0xD0;
          *(v26 + 24) = v29 | 0xD0;
          v32 = (45 * v20[5] + 22) >> 2;
          v31 = (45 * v20[4] + 22) >> 2;
        }

        else
        {
          LOWORD(v32) = 0;
        }

        *(v26 + 74) = v32;
        *(v26 + 72) = v31;
        v33 = *(v20 - 2);
        if (v33 > 0x3F || (v34 = *(v20 - 1), v34 >= 5))
        {
          v34 = 0;
          *(v20 - 1) = 0;
        }

        if (v20[6] && v34 == 1)
        {
          *&v38.f64[0] = 0x4069000000000000 - (v34 << 52);
          v38.f64[1] = ((v33 / 42.0) + -1.0);
          *(v26 + 48) = vcvt_f32_f64(vdivq_f64(v38, vdupq_lane_s64(*&v27, 0)));
          v30 |= 0x20u;
          *(v26 + 24) = v30;
        }

        else
        {
          *(v26 + 48) = 835594383;
        }

        v35 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v24 + v23];
        if (!v35)
        {
          v40 = "ucChipsPerEpoch != 0";
          DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
          v41 = 785;
LABEL_48:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v41, v40);
        }

        v36 = (1.0 - *v20 / v35 + (v20[1] + 20 * v20[2])) * -0.001 + 0.08;
        if (v36 < 0.04)
        {
          v36 = v36 + 0.08;
        }

        *(v26 + 32) = -v36;
        v37 = word_298A40E6C[v20[3]] / v35 / 1000.0;
        *(v26 + 40) = v37;
        *(v26 + 24) = v30 | 0xE;
      }

LABEL_39:
      v20 += 12;
      --v19;
    }

    while (v19);
  }

  *(*(a1 + 18048) + 120017) = 1;
  result = BlueFin::GlSatAidInfo::operator=(a1 + 9216, a1 + 320);
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return (*(*result + 24))(result, 0, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRangeAidGen::SetAsstAcqAid(uint64_t a1, unsigned int *a2)
{
  v4 = a1 + 0x4000;
  v5 = (*(a1 + 18248) + 8);
  v6 = 7;
  do
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    v5 += 24;
    bzero(v7, ((4 * v8 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v6;
  }

  while (v6);
  bzero(*(a1 + 19032), ((4 * *(v4 + 2656) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v9 = *a2;
  if (*a2 == 3)
  {
    v11 = 2;
    v10 = 1;
  }

  else if (v9 == 6)
  {
    v10 = 0;
    v11 = 4;
  }

  else
  {
    if (v9 != 5)
    {
      v34 = *a2;
      return GlCustomLog(14, "Do not support GANSS_ID (%d)\n");
    }

    v10 = 0;
    v11 = 5;
  }

  if (*(a2 + 4))
  {
    v30 = *(a2 + 4);
    return GlCustomLog(14, "Do not support GANSS signal Id(%d)\n");
  }

  v13 = *(a2 + 3);
  if (v13 >= 1)
  {
    if (v13 >= 0xE)
    {
      v14 = 14;
    }

    else
    {
      v14 = v13;
    }

    v15 = a2 + 7;
    v35 = vdupq_n_s64(0x41B1DE784A000000uLL);
    do
    {
      if (v11 == 5)
      {
        v16 = *(v15 - 3);
        if (v16 >= 36)
        {
          v33 = *(v15 - 3);
          GlCustomLog(14, "%d is not valid GALILEO SatID.\n");
          goto LABEL_37;
        }
      }

      else if (v11 == 4)
      {
        v16 = *(v15 - 3);
        if (v16 >= 63)
        {
          v32 = *(v15 - 3);
          GlCustomLog(14, "%d is not valid BEIDOU SatID.\n");
          goto LABEL_37;
        }
      }

      else
      {
        v16 = *(v15 - 3);
        if (v16 >= 24)
        {
          v31 = *(v15 - 3);
          GlCustomLog(14, "%d is not valid GLONASS SatID.\n");
          goto LABEL_37;
        }
      }

      v17 = v16 + 1;
      v37 = v11;
      v38 = v16 + 1;
      BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 18048) + 119744), &v37, &v36);
      v18 = v36;
      if (v36 - 1 >= 0xBC)
      {
        if (v10)
        {
          GlCustomLog(14, "Couldnot find FCN for GLONASS %d\n");
        }

        else
        {
          v25 = *(v15 - 3);
          GlCustomLog(14, "Invalid SvId %d\n");
        }

        goto LABEL_37;
      }

      BlueFin::GlPeSatAidInfo::Add(a1 + 32, &v36);
      if (v19)
      {
        *v19 = v18;
        *(v19 + 4) = v11;
        *(v19 + 8) = v17;
        *(v19 + 20) = 0;
        *(v19 + 24) = 0;
        *(v19 + 12) = 2;
        v20 = vcvtd_n_f64_s32(*(v15 - 2), 1uLL) / 299792458.0;
        *(v19 + 44) = v20;
        *(*(a1 + 19304) + 4 * (v18 >> 5)) |= 1 << v18;
        v21 = *(v19 + 24);
        LOWORD(v22) = v15[7];
        if (v22)
        {
          v23 = v21 | 0xD0;
          *(v19 + 24) = v23;
          v22 = (45 * v15[5] + 22) >> 2;
          v24 = (45 * v15[4] + 22) >> 2;
        }

        else
        {
          LOWORD(v24) = 0;
          v23 = v21 | 0x10;
        }

        *(v19 + 74) = v22;
        *(v19 + 72) = v24;
        v26 = *(v15 - 1);
        if (v26 > 0x3F || (v27 = *v15, v27 > 4))
        {
          *v15 = 0;
          goto LABEL_35;
        }

        if (*v15 && v15[6])
        {
          v28.f64[0] = COERCE_FLOAT(1109393408 - (v27 << 23));
          v28.f64[1] = (v26 - 42) / 210.0;
          *(v19 + 48) = vcvt_f32_f64(vdivq_f64(v28, v35));
          v23 |= 0x20u;
        }

        else
        {
LABEL_35:
          *(v19 + 48) = 835594383;
        }

        *(v19 + 32) = vcvtd_n_f64_s32(v15[1], 0xAuLL) / 1000.0 - v15[2] / 1000.0;
        *(v19 + 40) = (BlueFin::GlPeRangeAidGen::SetAsstAcqAid(BlueFin::GANSS_ACQ_AID *)::asCodePhaseSearchWindow[v15[3]] / 1000.0) / 1000.0;
        *(v19 + 24) = v23 | 0xE;
      }

LABEL_37:
      v15 += 11;
      --v14;
    }

    while (v14);
  }

  *(v4 + 2972) = 1;
  *(*(a1 + 18048) + 120017) = 1;
  result = BlueFin::GlSatAidInfo::operator=(a1 + 9216, a1 + 320);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v29 = *(*result + 24);

    return v29();
  }

  return result;
}

void BlueFin::GlPeRangeAidGen::RemoveSvFromEph(uint64_t a1, int a2, unsigned __int8 a3)
{
  *&v10[1] = a2;
  v10[5] = a3;
  BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 18048) + 119744), &v10[1], v10);
  if (v10[0] - 1 <= 0xBB)
  {
    BlueFin::GlPeSatAidInfo::Remove(a1 + 32, v10);
    (*(**(a1 + 8) + 64))(*(a1 + 8), v10);
    BlueFin::GlSetBase::Remove(a1 + 19032, v10[0]);
    if (*(*(a1 + 18048) + 100) != -1)
    {
      v4 = *a1;
      if (*(*a1 + 2576))
      {
        v5 = *(a1 + 356);
        if (v5 <= 0xFF9222FE)
        {
          v6 = v5;
        }

        else
        {
          v6 = v5;
        }

        v8 = 0.0;
        v9 = 0.0;
        BlueFin::GlPeTimeManager::GetDtsS(v4, v6, &v9, &v8, 0, 0);
        v7 = 4;
        BlueFin::GlPeRangeAidGen::AddRngAid(a1, v10, &v10[1], &v7, v6 - v9);
      }
    }
  }
}

uint64_t BlueFin::GlPeRtiData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v20 = *MEMORY[0x29EDCA608];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 6;
  }

  if (v3 >= 7)
  {
    DeviceFaultNotify("glpe_rti_requestor.cpp", 69, "SerializeImpl", "ucVersion <= 6");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rti_requestor.cpp", 69, "ucVersion <= 6");
  }

  v4 = v1;
  v5 = v0;
  if (v3 > 4)
  {
    LODWORD(v6) = 8;
    if (v1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    LODWORD(v6) = __const__ZN7BlueFin11GlPeRtiData11DeserializeERNS_13GlSysLogEntryE_aiVersionToNumGnss[v3];
    if (v1)
    {
      goto LABEL_11;
    }
  }

  if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
  {
    result = 0;
    goto LABEL_28;
  }

LABEL_11:
  v16 = 64;
  v17 = v3;
  v18 = 0x1000000000000;
  v15 = &unk_2A1F092C0;
  v19 = v3;
  if (v3 >= 5 && (BlueFin::GlSysLogEntry::PutU8(&v15, v6), v3 == 6))
  {
    if (v6 < 1)
    {
LABEL_25:
      BlueFin::GlSysLogEntry::PutU32(&v15, *(v5 + 144));
      goto LABEL_26;
    }

    v7 = (v5 + 16);
    v6 = v6;
    v8 = v6;
    do
    {
      BlueFin::GlSysLogEntry::PutU64(&v15, *v7++);
      --v8;
    }

    while (v8);
    v9 = (v5 + 80);
    do
    {
      BlueFin::GlSysLogEntry::PutU64(&v15, *v9++);
      --v6;
    }

    while (v6);
  }

  else if (v6 >= 1)
  {
    v10 = (v5 + 16);
    v6 = v6;
    v11 = v6;
    do
    {
      BlueFin::GlSysLogEntry::PutU32(&v15, *v10);
      v10 += 2;
      --v11;
    }

    while (v11);
    v12 = (v5 + 80);
    do
    {
      BlueFin::GlSysLogEntry::PutU32(&v15, *v12);
      v12 += 2;
      --v6;
    }

    while (v6);
  }

  if (v3 >= 2)
  {
    goto LABEL_25;
  }

LABEL_26:
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v4, 4);
  result = 1;
LABEL_28:
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t BlueFin::GlPeRtiEmergencyData::SerializeImpl()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v16 = *MEMORY[0x29EDCA608];
  if (v2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v2 >= 2)
  {
    DeviceFaultNotify("glpe_rti_requestor.cpp", 225, "SerializeImpl", "ucVersion <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rti_requestor.cpp", 225, "ucVersion <= 1");
  }

  v4 = v1;
  v5 = v0;
  if (v1 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v12 = 102;
    v13 = v3;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F092C0;
    v15 = v3;
    BlueFin::GlSysLogEntry::PutU32(&v11, *(v0 + 144));
    BlueFin::GlSysLogEntry::PutU8(&v11, 8);
    for (i = 0; i != 64; i += 8)
    {
      BlueFin::GlSysLogEntry::PutU64(&v11, *(v5 + 16 + i));
    }

    v7 = 0;
    v8 = v5 + 80;
    do
    {
      BlueFin::GlSysLogEntry::PutU64(&v11, *(v8 + v7));
      v7 += 8;
    }

    while (v7 != 64);
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, v4, 4);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL BlueFin::GlPeRtiEmergencyData::Deserialize(BlueFin::GlPeRtiEmergencyData *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = *(a2 + 2) == 102 && *(a2 + 12) < 2u;
  if (v3)
  {
    *(this + 36) = BlueFin::GlSysLogEntry::GetU32(a2);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    if (U8 >= 9)
    {
      DeviceFaultNotify("glpe_rti_requestor.cpp", 258, "Deserialize", "iNumGnss <= _DIM(m_otRti.ganssInfoAvailList.aullImplGnssMask)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rti_requestor.cpp", 258, "iNumGnss <= _DIM(m_otRti.ganssInfoAvailList.aullImplGnssMask)");
    }

    *(this + 17) = 0;
    *(this + 120) = 0u;
    *(this + 104) = 0u;
    *(this + 88) = 0u;
    *(this + 72) = 0u;
    *(this + 56) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
    if (U8)
    {
      v7 = (this + 16);
      v8 = U8;
      v9 = U8;
      do
      {
        *v7++ = BlueFin::GlSysLogEntry::GetU64(a2);
        --v9;
      }

      while (v9);
      v10 = (this + 80);
      do
      {
        *v10++ = BlueFin::GlSysLogEntry::GetU64(a2);
        --v8;
      }

      while (v8);
    }

    BlueFin::GlSysLogEntry::CheckConsumed(a2, 272);
  }

  return v3;
}

uint64_t BlueFin::GlPeRtiRequestor::Serialize(uint64_t a1, uint64_t a2)
{
  v4 = &unk_2A1F10900;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, 28);
  v2 = *(a1 + 56);
  if (v2 == 1 && (a1 + 64) != &v4)
  {
    v10 = *(a1 + 152);
    v11 = *(a1 + 168);
    v12[0] = *(a1 + 184);
    *&v12[1] = *(a1 + 200);
    v6 = *(a1 + 88);
    v7 = *(a1 + 104);
    v8 = *(a1 + 120);
    v9 = *(a1 + 136);
    v5 = *(a1 + 72);
    DWORD2(v12[1]) = *(a1 + 208);
  }

  if (v2 && (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1))
  {
    return BlueFin::GlPeRtiData::SerializeImpl();
  }

  else
  {
    return 0;
  }
}

void BlueFin::GlPeRtiRequestor::onRtiExitEmergencySession(BlueFin::GlPeRtiRequestor *this)
{
  v6 = &unk_2A1F10900;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, 28);
  if (*(this + 56) == 1 && (this + 64) != &v6)
  {
    v12 = *(this + 152);
    v13 = *(this + 168);
    v14[0] = *(this + 184);
    *&v14[1] = *(this + 25);
    v8 = *(this + 88);
    v9 = *(this + 104);
    v10 = *(this + 120);
    v11 = *(this + 136);
    v7 = *(this + 72);
    DWORD2(v14[1]) = *(this + 52);
  }

  v2 = (*(*(this + 2) + 2504) + 8);
  v3 = 7;
  do
  {
    v4 = *(v2 - 1);
    v5 = *v2;
    v2 += 24;
    bzero(v4, ((4 * v5 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v3;
  }

  while (v3);
  bzero(*(*(this + 28) + 54632), ((4 * *(*(this + 28) + 54640) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      BlueFin::GlPeRtiEmergencyData::SerializeImpl();
    }
  }
}

_DWORD *BlueFin::GlPeStartupMgr::Dispose(_DWORD *this)
{
  v10 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v1 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xD);
    if (this)
    {
      GlCustomLog(13, "%s CL: %u\n", "__REPORT__ ", 643487);
      GlCustomLog(13, "%s Branch: %s\n", "__REPORT__ ", "//depot/client/core/rel/Olympic/OSX_20.24.559185.v8.0/...");
      GlCustomLog(13, "%s Folder: [UNC Path of the files referenced in JIRA]\n", "__REPORT__ ");
      GlCustomLog(13, "%s IssueLogFile: [Name only of attached slog, slog$ (optional), kmz file(s) exhibiting problem]\n", "__REPORT__ ");
      GlCustomLog(13, "%s ReferenceLogFile: [Name only  of reference log, slog$ (optional), kmz file(s) that does not have issue]\n", "__REPORT__ ");
      v3 = 0;
      v4 = 0;
      v9[0] = 0;
      v5 = v1 + 14;
      do
      {
        v6 = v5[v3];
        if (v6 == -7200001)
        {
          break;
        }

        v4 += BlueFin::GlFormat::glsnprintf(&v9[v4], (145 - v4), "%.3f,", v2, v6 * 0.001);
        ++v3;
      }

      while (v3 != 12);
      if (v4 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v4;
      }

      v9[v7 - 1] = 0;
      if (v1[13] == -7200001)
      {
        GlCustomLog(13, "%s Time To RefTime: [GOOD|BAD] NOT RECEIVED\n");
      }

      else
      {
        GlCustomLog(13, "%s Time To RefTime: [GOOD|BAD] %.3f Seconds\n");
      }

      if (v1[12] == -7200001)
      {
        GlCustomLog(13, "%s Time To RefPosition: [GOOD|BAD] NOT RECEIVED\n");
      }

      else
      {
        GlCustomLog(13, "%s Time To RefPosition: [GOOD|BAD] %.3f Seconds\n");
      }

      if (*v5 == -7200001)
      {
        GlCustomLog(13, "%s Time To All Ephemeris: [GOOD|BAD] NOT RECEIVED\n");
      }

      else
      {
        GlCustomLog(13, "%s Time To All Ephemeris: [GOOD|BAD] %s Seconds\n");
      }

      if (v1[16] == -7200001)
      {
        GlCustomLog(13, "%s Time To Three Ephemeris: [GOOD|BAD] NOT RECEIVED\n");
      }

      else
      {
        GlCustomLog(13, "%s Time To Three Ephemeris: [GOOD|BAD] %.3f Seconds\n");
      }

      if (v1[11] == -7200001)
      {
        this = GlCustomLog(13, "%s Time To CNTIN: [GOOD|BAD] NOT RECEIVED\n");
      }

      else
      {
        this = GlCustomLog(13, "%s Time To CNTIN: [GOOD|BAD] %.3f Seconds\n");
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return this;
}

uint64_t BlueFin::GlPeSvHealthData::SerializeImpl(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v31 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 6;
  }

  if (v4 >= 7)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 67, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 6");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 67, "ucVersion >= 1 && ucVersion <= 6");
  }

  v5 = v2;
  v6 = v1;
  if (!v2 && (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1))
  {
    result = 0;
    goto LABEL_27;
  }

  v27 = 63;
  v28 = v4;
  v29 = 0x1000000000000;
  v26 = &unk_2A1F092C0;
  v30 = v4;
  if (v4 == 1)
  {
    v7 = 0;
    v8 = 29;
LABEL_13:
    BlueFin::GlSysLogEntry::PutU8(&v26, v7);
    goto LABEL_15;
  }

  if (v4 >= 3)
  {
    v7 = 92;
    v8 = 92;
    goto LABEL_13;
  }

  v8 = 29;
LABEL_15:
  v10 = (v6 + 8);
  do
  {
    BlueFin::GlSysLogEntry::PutU32(&v26, *v10++);
    --v8;
  }

  while (v8);
  if (v4 == 1)
  {
    BlueFin::GlSysLogEntry::PutU32(&v26, 0);
    BlueFin::GlSysLogEntry::PutU32(&v26, *(v6 + 376));
  }

  else
  {
    BlueFin::GlSysLogEntry::PutU32(&v26, *(v6 + 376));
    if (v4 >= 5)
    {
      v11 = 0;
      v16 = v6 + 380;
      v17 = 32;
      v18 = v6 + 764;
      v19 = 10;
      v20 = v6 + 884;
      v21 = 63;
      v22 = v6 + 1640;
      v23 = 36;
      v24 = v6 + 2072;
      v25 = 14;
      do
      {
        v12 = &v16 + 2 * v11;
        v13 = *(v12 + 2);
        if (v13 >= 1)
        {
          v14 = (*v12 + 4);
          do
          {
            BlueFin::GlSysLogEntry::PutU32(&v26, *(v14 - 1));
            BlueFin::GlSysLogEntry::PutU32(&v26, v14[1]);
            BlueFin::GlSysLogEntry::PutU32(&v26, *v14);
            v14 += 3;
            --v13;
          }

          while (v13);
        }

        ++v11;
      }

      while (v11 != 5);
      BlueFin::GlSysLogEntry::PutBuffer(&v26, (v6 + 2240), 16);
      BlueFin::GlSysLogEntry::PutU32(&v26, *(v6 + 2256));
    }
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v26, v5, 4);
  result = 1;
LABEL_27:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *BlueFin::GlPeSvHealthData::SetTimeout(uint64_t a1, unsigned int *a2, int a3)
{
  Index = BlueFin::GlPeSvHealthData::getIndex(a1, a2);
  if (Index <= 31)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 279, "SetTimeout", "iIndex >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 279, "iIndex >= 0");
  }

  v7[0] = a1 + 8;
  v7[1] = 0;
  v8 = 0;
  v11 = 0;
  v10 = 0;
  v9 = vdup_n_s32(0xB80u);
  v12 = 0;
  BlueFin::GlBitBuffer::Position(v7, 14 * Index + 146);
  return BlueFin::GlBitBuffer::PutU(v7, a3 + 0x4000, 0xEu);
}

uint64_t BlueFin::GlPeSvHealthData::GetTimeout(uint64_t a1, unsigned int *a2)
{
  Index = BlueFin::GlPeSvHealthData::getIndex(a1, a2);
  if (Index <= 31)
  {
    DeviceFaultNotify("glpe_svhealthmgr.cpp", 291, "GetTimeout", "iIndex >= 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svhealthmgr.cpp", 291, "iIndex >= 0");
  }

  v7[0] = 0;
  v7[1] = a1 + 8;
  v8 = 1;
  v11 = 0;
  v10 = 0;
  v9 = vdup_n_s32(0xB80u);
  v12 = 0;
  BlueFin::GlBitBuffer::Position(v7, 14 * Index + 146);
  v4 = BlueFin::GlBitBuffer::GetU(v7, 0xEu);
  if ((v4 & 0xFFFFE000) == 0x2000)
  {
    v5 = -16384;
  }

  else
  {
    v5 = 0;
  }

  return (v5 + v4);
}

uint64_t BlueFin::GlPeSvHealthHelper::OnNewIntegrityInfo(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, unsigned int a27, char a28)
{
  v46 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v45, &BlueFin::GlPeSvHealthHelper::s_otAllSvs);
  v31 = a27;
  v32 = a28;
  if (a27 != 6 || a28 != 14)
  {
    v34 = a2 + 8;
    v35 = a2 + 72;
    do
    {
      v43 = v31;
      v44 = v32;
      v36 = 1 << (v32 - 1);
      v37 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v31];
      if ((*(v34 + 8 * v37) & v36) != 0)
      {
        v38 = *(v35 + 8 * v37);
        v39 = (*(*a1 + 40))(a1, &v43);
        if ((v38 & v36) != 0)
        {
          v40 = 1;
LABEL_11:
          (*(*a1 + 32))(a1, &v43, v40);
          goto LABEL_12;
        }

        if ((v39 & 0xFFFFFFFD) == 1)
        {
          v40 = 0;
          goto LABEL_11;
        }
      }

LABEL_12:
      result = BlueFin::GlGnssSetIterator::operator++(&v45);
      v31 = a27;
      v32 = a28;
    }

    while (a27 != 6 || a28 != 14);
  }

  a1[2274] = 1;
  if (a1[2272] == 1 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = (*(*a1 + 24))(a1, 0, 0);
  }

  a1[2272] = 0;
  v42 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t BlueFin::GlPeSvHealthHelper::OnEmergencyIntegrityInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned __int8 a26)
{
  v41 = *MEMORY[0x29EDCA608];
  result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v40, &BlueFin::GlPeSvHealthHelper::s_otAllSvs);
  v29 = a25;
  for (i = a26; a25 != 6 || a26 != 14; i = a26)
  {
    v32 = 1 << (i - 1);
    v33 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v29];
    if ((v32 & *(a2 + 8 + 8 * v33)) != 0)
    {
      v34 = *(a2 + 72 + 8 * v33);
      v38 = v29;
      v39 = i;
      if ((v34 & v32) != 0)
      {
        BlueFin::GlGnssSet::Add(a1 + 2304, &v38);
        v35 = BlueFin::GNSS2STR(v29);
        GlCustomLog(14, "SVHM: Health(%s,%2d):  Set as Emergency!\n", v35, i);
      }

      else
      {
        BlueFin::GlGnssSet::Remove(a1 + 2304, &v38);
      }
    }

    result = BlueFin::GlGnssSetIterator::operator++(&v40);
    v29 = a25;
  }

  v37 = *MEMORY[0x29EDCA608];
  return result;
}