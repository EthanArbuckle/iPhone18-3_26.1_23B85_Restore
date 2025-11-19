uint64_t icu::CalendarAstronomer::getHinduMonthStart(icu::CalendarAstronomer *this, int a2)
{
  if ((this - 2157) >= 0xFFFFFF37)
  {
    return dword_1EAEC6D34[12 * this - 23472 + a2];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::CalendarAstronomer::hinduVikramOffset(icu::CalendarAstronomer *this)
{
  v1 = 0;
  v2 = 240;
  while (1)
  {
    v3 = dword_195482690[3 * ((v1 + v2) / 2)];
    if (v3 >= this)
    {
      break;
    }

    v1 = (v1 + v2) / 2 + 1;
LABEL_6:
    if (v1 > v2)
    {
      return 0;
    }
  }

  if (v3 > this)
  {
    v2 = (v1 + v2) / 2 - 1;
    goto LABEL_6;
  }

  return dword_195482690[3 * ((v1 + v2) / 2) + 1];
}

uint64_t icu::CalendarAstronomer::searchOffsetTable(icu::CalendarAstronomer *this, int a2)
{
  v2 = 0;
  v3 = 240;
  while (1)
  {
    v4 = dword_195482690[3 * ((v3 + v2) / 2)];
    if (v4 >= this)
    {
      break;
    }

    v2 = (v3 + v2) / 2 + 1;
LABEL_6:
    if (v2 > v3)
    {
      return 0;
    }
  }

  if (v4 > this)
  {
    v3 = (v3 + v2) / 2 - 1;
    goto LABEL_6;
  }

  return dword_195482690[3 * ((v3 + v2) / 2) + a2];
}

uint64_t icu::CalendarAstronomer::updateRepeatedDay(icu::CalendarAstronomer *this)
{
  v1 = 0;
  v2 = 240;
  while (1)
  {
    v3 = dword_195482690[3 * ((v1 + v2) / 2)];
    if (v3 >= this)
    {
      break;
    }

    v1 = (v1 + v2) / 2 + 1;
LABEL_6:
    if (v1 > v2)
    {
      return 0;
    }
  }

  if (v3 > this)
  {
    v2 = (v1 + v2) / 2 - 1;
    goto LABEL_6;
  }

  return dword_195482690[3 * ((v1 + v2) / 2) + 2];
}

uint64_t icu::CalendarAstronomer::getMoonPosition(icu::CalendarAstronomer *this)
{
  if (!*(this + 72))
  {
    icu::CalendarAstronomer::getSunLongitude(this);
    if (uprv_isNaN(*(this + 3)))
    {
      v2 = (*this + 2.1086676e14) / 86400000.0;
      *(this + 3) = v2;
    }

    else
    {
      v2 = *(this + 3);
    }

    v3 = v2 + -2447891.5;
    v20 = v2 + -2447891.5;
    v4 = (v2 + -2447891.5) * 0.229971504 + 5.55628444 + uprv_floor(((v2 + -2447891.5) * 0.229971504 + 5.55628444) / 6.28318531) * -6.28318531;
    v5 = v4 + v3 * -0.00194436835 + -0.634259806 + uprv_floor((v4 + v3 * -0.00194436835 + -0.634259806) / 6.28318531) * -6.28318531;
    v6 = *(this + 4);
    v7 = sin(-(v5 - (v4 - v6) * 2.0)) * 0.0222337493;
    v8 = sin(*(this + 5));
    v9 = v8 * 0.00324282175;
    v10 = v5 + v7 - v8 * 0.00324282175 + v8 * -0.00645771823;
    v11 = sin(v10) * 0.109756775;
    v12 = sin(v10 + v10) * 0.0037350046 + v4 + v7 + v11 - v9;
    v13 = v12 + sin(v12 - v6 + v12 - v6) * 0.0114895025;
    v14 = v20 * -0.000924219907 + 5.55905007 + uprv_floor((v20 * -0.000924219907 + 5.55905007) / 6.28318531) * -6.28318531;
    v15 = v14 + sin(*(this + 5)) * -0.0027925268;
    v16 = __sincos_stret(v13 - v15);
    v17 = atan2(v16.__sinval * 0.995970368, v16.__cosval) + v15;
    *(this + 6) = v17;
    v18 = asin(v16.__sinval * 0.0896829204);
    icu::CalendarAstronomer::eclipticToEquatorial(this, (this + 56), v17, v18);
    *(this + 72) = 1;
  }

  return this + 56;
}

double icu::CalendarAstronomer::getMoonAge(icu::CalendarAstronomer *this)
{
  icu::CalendarAstronomer::getMoonPosition(this);
  v2 = *(this + 6) - *(this + 4);
  return v2 + uprv_floor(v2 / 6.28318531) * -6.28318531;
}

double icu::CalendarAstronomer::getNewMoonTimeInRange(icu::CalendarAstronomer *this, double a2)
{
  v2 = 0.0;
  if (a2 >= -2.21149158e12 && a2 < 4.13644464e12)
  {
    v3 = (a2 / 10000.0);
    v4 = (&unk_1954831DC + 4 * ((a2 + 2.21149158e12) * 2489.0 / 6.34793622e12) + 4);
    do
    {
      v5 = *--v4;
    }

    while (v5 > v3);
    do
    {
      v6 = v4[1];
      ++v4;
    }

    while (v6 <= v3);
    if (!this)
    {
      --v4;
    }

    return *v4 * 10000.0;
  }

  return v2;
}

void icu::CalendarAstronomer::getMoonTime(icu::CalendarAstronomer *this, double *a2, icu::CalendarAstronomer *a3)
{
  v3 = a3;
  v5 = *a2;
  if (*a2 != 0.0 || icu::CalendarAstronomer::getNewMoonTimeInRange(a3, *this) == 0.0)
  {
    v6 = &unk_1F0937218;
    icu::CalendarAstronomer::timeOfAngle(this, &v6, v5, 29.5305889, 60000.0, v3);
  }
}

double icu::CalendarAstronomer::hinduSunrise(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v3 = a3.i64[0];
  v5 = this;
  *a3.i64 = this + 0.25;
  v6 = *a3.i64 + *a2.i64 / 360.0;
  *a2.i64 = this;
  v7 = v6 - icu::CalendarAstronomer::hinduEquationOfTime(this, a2, a3);
  *v8.i64 = v5;
  v9.i64[0] = v3;
  *v14.i64 = icu::CalendarAstronomer::hinduAscensionalDifference(v10, v8, v9, v11, v12, v13);
  return v7 + (*v14.i64 + icu::CalendarAstronomer::hinduSolarSiderealDifference(this, v14, v15) * 0.25) * 0.00277019358;
}

double icu::CalendarAstronomer::hinduEquationOfTime(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v3 = a2.i64[0];
  *a2.i64 = (*a2.i64 + 7.1440343e11) / 365.258789 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vbslq_s8(vnegq_f64(v4), a3, a2);
  *v5.i64 = *v5.i64 * 360.0;
  v6 = icu::CalendarAstronomer::hinduSine(this, v5, a3);
  *v7.i64 = v6 * 57.3;
  v8 = v6 * 57.3 * (fabs(v6) / -1080.0 + 0.0388888889);
  v9.i64[0] = v3;
  return icu::CalendarAstronomer::hinduDailyMotion(v10, v9, v7) / 360.0 * (v8 / 360.0) * 365.258756;
}

double icu::CalendarAstronomer::hinduAscensionalDifference(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  v6 = *a3.i64;
  *v7.i64 = icu::CalendarAstronomer::hinduTropicalLongitude(this, a2, a3, a4, a5, a6);
  v10 = icu::CalendarAstronomer::hinduSine(v8, v7, v9) * 0.406340896;
  *v12.i64 = icu::CalendarAstronomer::hinduArcsin(v11, v10) + 90.0;
  v15 = icu::CalendarAstronomer::hinduSine(v13, v12, v14);
  *v16.i64 = v6;
  v19 = icu::CalendarAstronomer::hinduSine(v17, v16, v18);
  *v20.i64 = v6 + 90.0;
  v24 = -(v10 * (v19 / icu::CalendarAstronomer::hinduSine(v21, v20, v22))) / v15;

  return icu::CalendarAstronomer::hinduArcsin(v23, v24);
}

double icu::CalendarAstronomer::hinduSolarSiderealDifference(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = this;
  *a2.i64 = this;
  v4 = icu::CalendarAstronomer::hinduDailyMotion(this, a2, a3);
  *v5.i64 = v3;
  v11 = icu::CalendarAstronomer::hinduTropicalLongitude(v6, v5, v7, v8, v9, v10);
  v15[0] = 0x3FEDB05B05B05B06;
  v15[1] = 0x3FEFE93E93E93E94;
  v16 = vdupq_n_s64(0x3FF1333333333333uLL);
  v17 = xmmword_195481FC0;
  v12 = fmod(v11 / 30.0 + 6.0, 6.0);
  v13 = *MEMORY[0x1E69E9840];
  return v4 * *&v15[v12];
}

double icu::CalendarAstronomer::hinduSunset(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v3 = a3.i64[0];
  v5 = this;
  *a3.i64 = this + 0.75;
  v6 = *a3.i64 + *a2.i64 / 360.0;
  *a2.i64 = this;
  v7 = v6 - icu::CalendarAstronomer::hinduEquationOfTime(this, a2, a3);
  *v8.i64 = v5;
  v9.i64[0] = v3;
  *v14.i64 = icu::CalendarAstronomer::hinduAscensionalDifference(v10, v8, v9, v11, v12, v13);
  return v7 + -(*v14.i64 - icu::CalendarAstronomer::hinduSolarSiderealDifference(this, v14, v15) * 0.75) * 0.00277019358;
}

void icu::CalendarAstronomer::dusk(icu::CalendarAstronomer *this, double a2, double a3, double a4, double a5)
{
  v8 = this + 0.75;
  do
  {
    icu::CalendarAstronomer::approxMomentOfDepression(0, v8, a2, a3, a5);
    v10 = vabdd_f64(v8, v9);
    v8 = v9;
  }

  while (v10 >= 30.0);
}

double icu::CalendarAstronomer::hinduSine(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *a2.i64 / 3.75;
  *a2.i64 = *a2.i64 / 3.75 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v13 = vnegq_f64(v4);
  v14 = *vbslq_s8(v13, a3, a2).i64;
  *v5.i64 = sin((225 * vcvtpd_s64_f64(v3)) * 3.14159265 / 10800.0 + 0.0) * 3438.0;
  v6.i64[0] = 1.0;
  *v7.i64 = fabs(*v5.i64) + -1716.0;
  v8 = round(*v5.i64 + *vbslq_s8(v13, v6, v5).i64 * 0.215 * *vbslq_s8(v13, v6, v7).i64) / 3438.0;
  *v9.i64 = sin((225 * vcvtmd_s64_f64(v3)) * 3.14159265 / 10800.0 + 0.0) * 3438.0;
  v10.i64[0] = 1.0;
  *v11.i64 = fabs(*v9.i64) + -1716.0;
  return (1.0 - v14) * (round(*v9.i64 + *vbslq_s8(v13, v10, v9).i64 * 0.215 * *vbslq_s8(v13, v10, v11).i64) / 3438.0) + v14 * v8;
}

double icu::CalendarAstronomer::hinduMeanPosition(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  *a2.i64 = (*a2.i64 + 7.1440343e11) / *a3.i64 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  *a2.i64 = *vbslq_s8(vnegq_f64(v3), a3, a2).i64 * 360.0;
  return *a2.i64;
}

double icu::CalendarAstronomer::hinduDailyMotion(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  *a2.i64 = (*a2.i64 + 7.1440343e11) / 365.258789 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v20 = vnegq_f64(v3);
  v4 = vbslq_s8(v20, a3, a2);
  a3.i64[0] = 0x4076800000000000;
  *v4.i64 = *v4.i64 * 360.0;
  v5 = *v4.i64;
  v6 = fabs(icu::CalendarAstronomer::hinduSine(this, v4, a3)) / -1080.0 + 0.0388888889;
  v7.i64[0] = 225 * (v5 / 3.75) + 225;
  v7.i64[1] = 225 * (v5 / 3.75);
  __x = vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_s64(v7), vdupq_n_s64(0x400921FB54442D18uLL)), vdupq_n_s64(0x40C5180000000000uLL)), 0);
  v19 = sin(__x.f64[1]);
  v8.f64[0] = sin(__x.f64[0]);
  v8.f64[1] = v19;
  v9 = vdupq_n_s64(0x40AADC0000000000uLL);
  v10 = vmulq_f64(v8, v9);
  __asm { FMOV            V2.2D, #1.0 }

  v16 = vdivq_f64(vrndaq_f64(vaddq_f64(v10, vmulq_f64(vmulq_f64(vbslq_s8(v20, _Q2, v10), vdupq_n_s64(0x3FCB851EB851EB85uLL)), vbslq_s8(v20, _Q2, vaddq_f64(vabsq_f64(v10), vdupq_n_s64(0xC09AD00000000000)))))), v9);
  return (-15.28 * vsubq_f64(v16, vdupq_laneq_s64(v16, 1)).f64[0] * v6 + 1.0) * 0.985602655;
}

long double icu::CalendarAstronomer::hinduTropicalLongitude(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  *a3.i64 = (*a2.i64 + 1132959.0) * 0.000000380247938 + -0.25 + 0.5 + 1.0;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = vbslq_s8(vnegq_f64(v6), a4, a3);
  v8 = 27.0 - fabs((*v7.i64 + -0.5) * 108.0);
  v7.i64[0] = 0x4076D423DDD61975;
  a6.i64[0] = 0x3F98618618618618;
  v9 = icu::CalendarAstronomer::hinduTruePosition(this, a2, v7, 0.0388888889, 365.258789, a6) - v8 + 360.0;

  return fmod(v9, 360.0);
}

double icu::CalendarAstronomer::hinduArcsin(icu::CalendarAstronomer *this, double a2)
{
  if (a2 >= 0.0)
  {
    v5 = -450;
    v6 = -2;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v19 = vnegq_f64(v7);
    do
    {
      *v8.i64 = sin((v5 + 450) * 3.14159265 / 10800.0 + 0.0) * 3438.0;
      v9.i64[0] = 1.0;
      *v10.i64 = fabs(*v8.i64) + -1716.0;
      v11 = round(*v8.i64 + *vbslq_s8(v19, v9, v8).i64 * 0.215 * *vbslq_s8(v19, v9, v10).i64) / 3438.0;
      v5 += 225;
      ++v6;
    }

    while (v11 < a2);
    v4 = 0.0;
    *v12.i64 = sin(v5 * 3.14159265 / 10800.0 + 0.0) * 3438.0;
    v13.i64[0] = 1.0;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v15 = vnegq_f64(v14);
    *v16.i64 = fabs(*v12.i64) + -1716.0;
    v17 = round(*v12.i64 + *vbslq_s8(v15, v13, v12).i64 * 0.215 * *vbslq_s8(v15, v13, v16).i64) / 3438.0;
    if (v11 - v17 != 0.0)
    {
      return ((a2 - v17) / (v11 - v17) + v6) * 3.75;
    }
  }

  else
  {
    icu::CalendarAstronomer::hinduArcsin(this, -a2);
    return -v3;
  }

  return v4;
}

double icu::CalendarAstronomer::hinduRisingSign(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = icu::CalendarAstronomer::hinduTropicalLongitude(this, a2, a3, a4, a5, a6);
  v9[0] = xmmword_195481FD0;
  v9[1] = vdupq_n_s64(0x3FF1333333333333uLL);
  v9[2] = xmmword_195481FC0;
  result = *(v9 + fmod(v6 / 30.0 + 6.0, 6.0));
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

double icu::CalendarAstronomer::hinduSineTable(icu::CalendarAstronomer *this)
{
  *v1.i64 = sin((225 * this) * 3.14159265 / 10800.0 + 0.0) * 3438.0;
  v2.i64[0] = 1.0;
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = vnegq_f64(v3);
  *v5.i64 = fabs(*v1.i64) + -1716.0;
  return round(*v1.i64 + *vbslq_s8(v4, v2, v1).i64 * 0.215 * *vbslq_s8(v4, v2, v5).i64) / 3438.0;
}

long double icu::CalendarAstronomer::hinduTruePosition(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *a6.i64;
  *a2.i64 = *a2.i64 + 7.1440343e11;
  *a3.i64 = *a2.i64 / *a3.i64 + 1.0;
  *a6.i64 = *a3.i64 - trunc(*a3.i64);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  v10 = vbslq_s8(v9, a6, a3);
  v11 = *v10.i64 * 360.0;
  *a2.i64 = *a2.i64 / a5 + 1.0;
  *v10.i64 = *a2.i64 - trunc(*a2.i64);
  v12 = vbslq_s8(v9, v10, a2);
  *v12.i64 = *v12.i64 * 360.0;
  v13 = icu::CalendarAstronomer::hinduSine(this, v12, v10);
  v15 = v11 - icu::CalendarAstronomer::hinduArcsin(v14, v13 * (a4 - fabs(v13) * v6 * a4)) + 360.0;

  return fmod(v15, 360.0);
}

long double icu::CalendarAstronomer::hinduSolarLongitude(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  a3.i64[0] = 0x4076D423DDD61975;
  a6.i64[0] = 0x3F98618618618618;
  return icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0388888889, 365.258789, a6);
}

long double icu::CalendarAstronomer::hinduLunarLongitude(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  a3.i64[0] = 0x403B52593CE8B205;
  a6.i64[0] = 0x3F85555555555555;
  return icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0888888889, 27.554598, a6);
}

long double icu::CalendarAstronomer::hinduLunarPhase(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = a2.i64[0];
  a3.i64[0] = 0x403B52593CE8B205;
  a6.i64[0] = 0x3F85555555555555;
  v7 = icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0888888889, 27.554598, a6);
  v8.i64[0] = 0x4076D423DDD61975;
  v9.i64[0] = 0x3F98618618618618;
  v10.i64[0] = v6;
  v12 = v7 - icu::CalendarAstronomer::hinduTruePosition(v11, v10, v8, 0.0388888889, 365.258789, v9) + 360.0;

  return fmod(v12, 360.0);
}

long double icu::CalendarAstronomer::mod3(icu::CalendarAstronomer *this, long double result, double a3, double a4)
{
  if (a3 != a4)
  {
    return fmod(result - a3 + a4 - a3, a4 - a3) + a3;
  }

  return result;
}

double icu::CalendarAstronomer::hinduNewMoonBefore(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *a2.i64;
  *v10.i64 = *a2.i64 + icu::CalendarAstronomer::hinduLunarPhase(this, a2, a3, a4, a5, a6) * -0.00277777778 * 29.5305879;
  *v9.i64 = *v10.i64 + -1.0;
  *v10.i64 = fmin(v6, *v10.i64 + 1.0);

  return icu::CalendarAstronomer::binarySearch(v7, v9, v10, 1.0, 0.0001, v8);
}

double icu::CalendarAstronomer::binarySearch(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *a3.i64;
  v7 = *a2.i64;
  while (v6 - v7 > a5)
  {
    *a2.i64 = (v6 + v7) * 0.5;
    if (icu::CalendarAstronomer::hinduLunarPhase(this, a2, a3, a4, a5, a6) >= 180.0)
    {
      v7 = (v6 + v7) * 0.5;
    }

    else
    {
      v6 = (v6 + v7) * 0.5;
    }
  }

  return (v6 + v7) * 0.5;
}

uint64_t icu::CalendarAstronomer::hinduZodiac(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  a3.i64[0] = 0x4076D423DDD61975;
  a6.i64[0] = 0x3F98618618618618;
  return (icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0388888889, 365.258789, a6) / 30.0);
}

unsigned int icu::CalendarAstronomer::hinduCalendarYear(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  a3.i64[0] = 0x4076D423DDD61975;
  a6.i64[0] = 0x3F98618618618618;
  return llround((*a2.i64 + 1132959.0) / 365.258756 + icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0388888889, 365.258789, a6) / -360.0);
}

unsigned int icu::CalendarAstronomer::astroHinduCalendarYear(icu::CalendarAstronomer *this, double a2)
{
  v3 = (a2 + 1132959.0) / 365.25636;
  icu::CalendarAstronomer::solarLongitude(this, a2);
  v5 = v4;
  v7 = icu::CalendarAstronomer::precession(v6, a2);
  return llround(v3 - fmod(v5 - v7 + 336.136051 + 360.0, 360.0) / 360.0);
}

long double icu::CalendarAstronomer::siderealSolarLongitude(icu::CalendarAstronomer *this, double a2)
{
  icu::CalendarAstronomer::solarLongitude(this, a2);
  v5 = v4 - icu::CalendarAstronomer::precession(v3, a2) + 336.136051 + 360.0;

  return fmod(v5, 360.0);
}

double icu::CalendarAstronomer::hinduSolarLongitudeAtOrAfter(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *a3.i64;
  v7 = *a2.i64;
  a3.i64[0] = 0x4076D423DDD61975;
  a6.i64[0] = 0x3F98618618618618;
  *a2.i64 = v6;
  v8 = icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0388888889, 365.258789, a6);
  *v10.i64 = v6 + fmod(v7 - v8, 360.0) * 1.01460766;
  *v13.i64 = *v10.i64 + -5.0;
  if (*v10.i64 + -5.0 <= v6)
  {
    *v13.i64 = v6;
  }

  v14 = *v10.i64 + 5.0;
  *v10.i64 = v7;

  return icu::CalendarAstronomer::invertAngularSolarLongitude(v9, v10, v13, v14, v11, v12);
}

double icu::CalendarAstronomer::invertAngularSolarLongitude(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = a4;
  v7 = *a3.i64;
  v8 = *a2.i64;
  while (v6 - v7 > 0.00001)
  {
    *a2.i64 = (v6 + v7) * 0.5;
    a3.i64[0] = 0x4076D423DDD61975;
    a6.i64[0] = 0x3F98618618618618;
    if (icu::CalendarAstronomer::hinduTruePosition(this, a2, a3, 0.0388888889, 365.258789, a6) < v8)
    {
      v7 = (v6 + v7) * 0.5;
    }

    else
    {
      v6 = (v6 + v7) * 0.5;
    }
  }

  return (v6 + v7) * 0.5;
}

double icu::CalendarAstronomer::hinduLunarDayAtOrAfter(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = *a3.i64;
  a3.i64[0] = 12.0;
  v7 = (*a2.i64 + -1.0) * 12.0;
  *a2.i64 = v6;
  v8 = icu::CalendarAstronomer::hinduLunarPhase(this, a2, a3, a4, a5, a6);
  *v10.i64 = v6 + fmod(v7 - v8 + 360.0, 360.0) * 0.00277777778 * 29.5305879;
  *v13.i64 = *v10.i64 + -2.0;
  if (*v10.i64 + -2.0 <= v6)
  {
    *v13.i64 = v6;
  }

  v14 = *v10.i64 + 2.0;
  *v10.i64 = v7;

  return icu::CalendarAstronomer::invertAngularLunarPhase(v9, v10, v13, v14, v11, v12);
}

double icu::CalendarAstronomer::invertAngularLunarPhase(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  v6 = a4;
  v7 = *a3.i64;
  v8 = *a2.i64;
  while (v6 - v7 > 0.00001)
  {
    *a2.i64 = (v6 + v7) * 0.5;
    v9 = icu::CalendarAstronomer::hinduLunarPhase(this, a2, a3, a4, a5, a6);
    if (fmod(v9 - v8 + 360.0, 360.0) > 180.0)
    {
      v7 = (v6 + v7) * 0.5;
    }

    else
    {
      v6 = (v6 + v7) * 0.5;
    }
  }

  return (v6 + v7) * 0.5;
}

uint64_t icu::CalendarAstronomer::hinduLunarStation(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4)
{
  v4 = *a2.i64;
  a2.i64[0] = a3.i64[0];
  *a3.i64 = a4;
  *v5.i64 = icu::CalendarAstronomer::hinduSunrise(v4, a2, a3);
  v6.i64[0] = 0x403B52593CE8B205;
  v7.i64[0] = 0x3F85555555555555;
  return vcvtmd_s64_f64(icu::CalendarAstronomer::hinduTruePosition(v8, v5, v6, 0.0888888889, 27.554598, v7) / 13.3333333) + 1;
}

double icu::CalendarAstronomer::hinduStandardFromSundial(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4)
{
  v6 = a3.i64[0];
  LODWORD(v4) = vcvtmd_s64_f64(*a2.i64);
  *a2.i64 = *a2.i64 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vbslq_s8(vnegq_f64(v7), a3, a2);
  v20 = *v8.i64;
  v9 = vcvtmd_s64_f64(*v8.i64 * 4.0);
  if (v9)
  {
    a2.i64[0] = v6;
    *v8.i64 = a4;
    if (v9 == 3)
    {
      v10 = icu::CalendarAstronomer::hinduSunset(v4, a2, v8);
      v11.i64[0] = v6;
      *v12.i64 = a4;
      v13 = icu::CalendarAstronomer::hinduSunrise((v4 + 1), v11, v12);
      v14 = 0.75;
    }

    else
    {
      v10 = icu::CalendarAstronomer::hinduSunrise(v4, a2, v8);
      v17.i64[0] = v6;
      *v18.i64 = a4;
      v13 = icu::CalendarAstronomer::hinduSunset(v4, v17, v18);
      v14 = 0.25;
    }
  }

  else
  {
    a2.i64[0] = v6;
    *v8.i64 = a4;
    v10 = icu::CalendarAstronomer::hinduSunset((v4 - 1), a2, v8);
    v15.i64[0] = v6;
    *v16.i64 = a4;
    v13 = icu::CalendarAstronomer::hinduSunrise(v4, v15, v16);
    v14 = -0.25;
  }

  return v10 + (v13 - v10 + v13 - v10) * (v20 - v14);
}

double icu::CalendarAstronomer::timeFromMoment(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  *a2.i64 = *a2.i64 + 1.0;
  *a3.i64 = *a2.i64 - trunc(*a2.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  a2.i64[0] = vbslq_s8(vnegq_f64(v3), a3, a2).u64[0];
  return *a2.i64;
}

double icu::CalendarAstronomer::ephemerisCorrection(icu::CalendarAstronomer *this, double a2)
{
  v20 = *MEMORY[0x1E69E9840];
  LODWORD(this) = vcvtmd_s64_f64(a2);
  v2 = icu::CalendarAstronomer::gregorianYearFromFixed(this);
  v3 = v2;
  v6 = icu::CalendarAstronomer::fixedFromGregorian(v2, 7, 1, v4, v5);
  if (v3 >= 2051)
  {
    v8 = ((v3 - 1820) / 0x64u) * ((v3 - 1820) / 0x64u) * 32.0 + -20.0 + (2150 - v3) * 0.5628;
LABEL_9:
    result = v8 / 86400.0;
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v3 >= 2006)
  {
    v9 = (v3 - 2000);
    v10 = &unk_1954858C0;
LABEL_5:
    v11 = 3;
LABEL_8:
    v8 = icu::CalendarAstronomer::poly(v10, v9, v11, 0, v7);
    goto LABEL_9;
  }

  if (v3 >= 1987)
  {
    v19[0] = xmmword_195481FE0;
    v19[1] = xmmword_195481FF0;
    v19[2] = xmmword_195482000;
    v9 = (v3 - 2000);
    v10 = v19;
    v11 = 6;
    goto LABEL_8;
  }

  v14 = ((v6 - 693596) / 36525);
  if (v3 < 1900)
  {
    if (v3 < 1800)
    {
      if (v3 < 1700)
      {
        if (v3 < 1600)
        {
          if (v3 < 500)
          {
            if (v3 < -499)
            {
              v9 = -((1820 - v3) / 0x64u);
              v10 = &unk_195485A20;
              goto LABEL_5;
            }

            v9 = (((5243 * v3) >> 19) + ((5243 * v3) >> 31));
            v10 = &unk_1954859E8;
          }

          else
          {
            v9 = (((5243 * (v3 - 1000)) >> 19) + ((5243 * (v3 - 1000)) >> 31));
            v10 = &unk_1954859B0;
          }

          v11 = 7;
          goto LABEL_8;
        }

        v9 = (v3 - 1600);
        v10 = &unk_195485990;
      }

      else
      {
        v9 = (v3 - 1700);
        v10 = &unk_195485970;
      }

      v11 = 4;
      goto LABEL_8;
    }

    v18 = *MEMORY[0x1E69E9840];
    v16 = &unk_195485918;
    v17 = 11;
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];
    v16 = &unk_1954858D8;
    v17 = 8;
  }

  return icu::CalendarAstronomer::poly(v16, v14, v17, 0, v7);
}

uint64_t icu::CalendarAstronomer::gregorianYearFromFixed(icu::CalendarAstronomer *this)
{
  v1 = 400 * ((this - 1) / 146097);
  v2 = fmod((this - 1) + 146097.0, 146097.0);
  v3 = v1 + 100 * (v2 / 36524);
  v4 = v2 - 182620;
  v5 = fmod(v2 + 36524.0, 36524.0);
  v6 = (v3 + (v5 / 1461) * 4.0);
  v7 = fmod(v5 + 1461.0, 1461.0);
  v8 = v6 + v7;
  if (v7 == 4 || v4 >= 0xFFFF7154)
  {
    return v8;
  }

  else
  {
    return v8 + 1;
  }
}

uint64_t icu::CalendarAstronomer::fixedFromGregorian(icu::CalendarAstronomer *this, int a2, int a3, int8x16_t a4, int8x16_t a5)
{
  v5 = this + 2;
  if (this >= 1)
  {
    v5 = this - 1;
  }

  v6 = ((367 * a2 - 362) / 12 + (this - 1) / 400 + (this - 1) / -100 + 365 * (this - 1) + (v5 >> 2) + a3);
  if (a2 >= 3)
  {
    v7 = this;
    *a5.i64 = this + 4.0;
    *a4.i64 = *a5.i64 - trunc(*a5.i64 * 0.25) * 4.0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v8), a4, a5).i64 == 0.0 && fmod(v7 + 100.0, 100.0) == 0.0 && fmod(v7 + 400.0, 400.0) == 0.0)
    {
      return (v6 - 1);
    }

    else
    {
      return (v6 - 2);
    }
  }

  return v6;
}

double icu::CalendarAstronomer::poly(icu::CalendarAstronomer *this, double a2, const double *a3, int a4, int a5)
{
  if (a4 >= a3)
  {
    return 0.0;
  }

  v6 = *(this + a4);
  icu::CalendarAstronomer::poly(this, a2, a3, a4 + 1, a5);
  return v6 + a2 * v7;
}

void icu::CalendarAstronomer::declination(icu::CalendarAstronomer *this, double a2, double a3, double a4)
{
  v7 = icu::CalendarAstronomer::ephemerisCorrection(this, a2);
  v9 = icu::CalendarAstronomer::poly(&unk_195485A38, (v7 + a2 + -730120.5) / 36525.0, 4, 0, v8) + 23.4392911;
  v10 = fmod(a3 + 360.0, 360.0);
  if (v10 < 0.0)
  {
    v10 = v10 + 360.0;
  }

  v11 = __sincos_stret(v10 * 3.14159265 / 180.0);
  v12 = fmod(v9 + 360.0, 360.0);
  if (v12 < 0.0)
  {
    v12 = v12 + 360.0;
  }

  v13 = __sincos_stret(v12 * 3.14159265 / 180.0);
  v14 = fmod(a4 + 360.0, 360.0);
  if (v14 < 0.0)
  {
    v14 = v14 + 360.0;
  }

  v15 = sin(v14 * 3.14159265 / 180.0);
  v16 = asin(v15 * (v11.__cosval * v13.__sinval) + v11.__sinval * v13.__cosval);
  fmod(v16 * 180.0 / 3.14159265 + 360.0, 360.0);
}

long double icu::CalendarAstronomer::sinDegrees(icu::CalendarAstronomer *this, double a2)
{
  v2 = fmod(a2 + 360.0, 360.0);
  if (v2 < 0.0)
  {
    v2 = v2 + 360.0;
  }

  v3 = v2 * 3.14159265 / 180.0;

  return sin(v3);
}

long double icu::CalendarAstronomer::cosDegrees(icu::CalendarAstronomer *this, double a2)
{
  v2 = fmod(a2 + 360.0, 360.0);
  if (v2 < 0.0)
  {
    v2 = v2 + 360.0;
  }

  v3 = v2 * 3.14159265 / 180.0;

  return cos(v3);
}

unsigned int icu::CalendarAstronomer::siderealZodiac(icu::CalendarAstronomer *this, double a2)
{
  icu::CalendarAstronomer::solarLongitude(this, a2);
  v4 = v3;
  v6 = icu::CalendarAstronomer::precession(v5, a2);
  return vcvtmd_s64_f64(fmod(v4 - v6 + 336.136051 + 360.0, 360.0) / 30.0);
}

void icu::CalendarAstronomer::solarLongitude(icu::CalendarAstronomer *this, double a2)
{
  v3 = 0;
  v4 = (icu::CalendarAstronomer::ephemerisCorrection(this, a2) + a2 + -730120.5) / 36525.0;
  v5 = 0.0;
  do
  {
    v6 = *&qword_195485A58[v3];
    v7 = fmod(*&qword_195485D68[v3] + *&qword_195485BE0[v3] * v4 + 360.0, 360.0);
    if (v7 < 0.0)
    {
      v7 = v7 + 360.0;
    }

    v5 = v5 + v6 * sin(v7 * 3.14159265 / 180.0);
    ++v3;
  }

  while (v3 != 49);
  v8 = v4 * 36000.7695 + 282.777183 + v5 * 0.00000572957795;
  v9 = fmod(v4 * 35999.0185 + 177.63 + 360.0, 360.0);
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  v10 = cos(v9 * 3.14159265 / 180.0) * 0.0000974 + -0.005575 + v8;
  v12 = icu::CalendarAstronomer::nutation(v11, a2);
  fmod(v10 + v12 + 360.0, 360.0);
}

long double icu::CalendarAstronomer::precession(icu::CalendarAstronomer *this, double a2)
{
  v2 = (icu::CalendarAstronomer::ephemerisCorrection(this, a2) + a2 + -730120.5) / 36525.0;
  v4 = icu::CalendarAstronomer::poly(&unk_195485F20, v2, 4, 0, v3);
  v5 = fmod(v4 + 360.0, 360.0);
  v7 = icu::CalendarAstronomer::poly(&unk_195485F40, v2, 3, 0, v6);
  v8 = fmod(v7 + 360.0, 360.0);
  v10 = icu::CalendarAstronomer::poly(&unk_195485F58, v2, 4, 0, v9);
  v11 = fmod(v10 + 360.0, 360.0);
  v12 = fmod(v5 + 360.0, 360.0);
  if (v12 < 0.0)
  {
    v12 = v12 + 360.0;
  }

  v13 = cos(v12 * 3.14159265 / 180.0);
  v14 = fmod(v8 + 360.0, 360.0);
  if (v14 < 0.0)
  {
    v14 = v14 + 360.0;
  }

  v15 = __sincos_stret(v14 * 3.14159265 / 180.0);
  icu::CalendarAstronomer::arctanDegrees(v16, v13 * v15.__sinval, v15.__cosval);
  v18 = v8 + v11 - v17 + 360.0;

  return fmod(v18, 360.0);
}

long double icu::CalendarAstronomer::aberration(icu::CalendarAstronomer *this, double a2)
{
  v3 = icu::CalendarAstronomer::ephemerisCorrection(this, a2);
  v4 = fmod((v3 + a2 + -730120.5) / 36525.0 * 35999.0185 + 177.63 + 360.0, 360.0);
  if (v4 < 0.0)
  {
    v4 = v4 + 360.0;
  }

  return cos(v4 * 3.14159265 / 180.0) * 0.0000974 + -0.005575;
}

long double icu::CalendarAstronomer::nutation(icu::CalendarAstronomer *this, double a2)
{
  v2 = (icu::CalendarAstronomer::ephemerisCorrection(this, a2) + a2 + -730120.5) / 36525.0;
  v4 = icu::CalendarAstronomer::poly(&unk_195485EF0, v2, 3, 0, v3);
  v6 = icu::CalendarAstronomer::poly(&unk_195485F08, v2, 3, 0, v5);
  v7 = fmod(v4 + 360.0, 360.0);
  if (v7 < 0.0)
  {
    v7 = v7 + 360.0;
  }

  v8 = sin(v7 * 3.14159265 / 180.0);
  v9 = fmod(v6 + 360.0, 360.0);
  if (v9 < 0.0)
  {
    v9 = v9 + 360.0;
  }

  return sin(v9 * 3.14159265 / 180.0) * -0.0003667 + v8 * -0.004778;
}

double icu::CalendarAstronomer::meshaSamkranti(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3, double a4, double a5, int8x16_t a6)
{
  *a3.i64 = (this - 1132959);
  a2.i64[0] = 0;
  return icu::CalendarAstronomer::hinduSolarLongitudeAtOrAfter(this, a2, a3, a4, a5, a6);
}

double icu::CalendarAstronomer::radiansFromDegrees(icu::CalendarAstronomer *this, double a2)
{
  v2 = fmod(a2 + 360.0, 360.0);
  if (v2 < 0.0)
  {
    v2 = v2 + 360.0;
  }

  return v2 * 3.14159265 / 180.0;
}

long double icu::CalendarAstronomer::tanDegrees(icu::CalendarAstronomer *this, double a2)
{
  v2 = fmod(a2 + 360.0, 360.0);
  if (v2 < 0.0)
  {
    v2 = v2 + 360.0;
  }

  v3 = v2 * 3.14159265 / 180.0;

  return tan(v3);
}

void icu::CalendarAstronomer::arctanDegrees(icu::CalendarAstronomer *this, double a2, double a3)
{
  if (a2 != 0.0 || a3 != 0.0)
  {
    if (a3 == 0.0)
    {
      v4 = qword_195482010[a2 > 0.0];
    }

    else
    {
      v5 = atan(a2 / a3);
      v6 = fmod(v5 * 180.0 / 3.14159265 + 360.0, 360.0);
      if (v6 < 0.0)
      {
        v6 = v6 + 360.0;
      }

      if (a3 < 0.0)
      {
        v6 = v6 + 180.0;
      }

      fmod(v6 + 360.0, 360.0);
    }
  }
}

void icu::CalendarAstronomer::momentOfDepression(icu::CalendarAstronomer *this, double a2, double a3, double a4, double a5)
{
  do
  {
    v9 = a2;
    icu::CalendarAstronomer::approxMomentOfDepression(this, a2, a3, a4, a5);
  }

  while (vabdd_f64(v9, a2) >= 30.0);
}

void icu::CalendarAstronomer::approxMomentOfDepression(icu::CalendarAstronomer *this, double a2, double a3, double a4, double a5)
{
  v5 = this;
  v11 = icu::CalendarAstronomer::sineOffset(this, a2, a3, a4, a5);
  v12 = vcvtmd_s64_f64(a2);
  if (a5 < 0.0 || v5 == 0)
  {
    v14 = v12 + 0.5;
    if (a5 >= 0.0)
    {
      v14 = (v12 + 1);
    }
  }

  else
  {
    v14 = v12;
  }

  if (v11 > 1.0)
  {
    v11 = icu::CalendarAstronomer::sineOffset(v10, v14, a3, a4, a5);
  }

  if (fabs(v11) <= 1.0)
  {
    v15 = asin(v11);
    *v17.i64 = fmod(v15 * 180.0 / 3.14159265 + 360.0, 360.0);
    if (*v17.i64 < 0.0)
    {
      *v17.i64 = *v17.i64 + 360.0;
    }

    *v17.i64 = *v17.i64 / 360.0 + 0.5 + 1.0;
    *v18.i64 = *v17.i64 - trunc(*v17.i64);
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v21 = vbslq_s8(vnegq_f64(v19), v18, v17);
    *v21.i64 = *v21.i64 + -0.5;
    v20 = v12 + 0.25 - *v21.i64;
    *v18.i64 = v12 + 0.75;
    *v21.i64 = *v18.i64 + *v21.i64;
    if (v5)
    {
      v22 = v20;
    }

    else
    {
      v22 = *v21.i64;
    }

    *v21.i64 = v22 - a3 / 360.0;
    icu::CalendarAstronomer::hinduEquationOfTime(v16, v21, v18);
  }
}

long double icu::CalendarAstronomer::sineOffset(icu::CalendarAstronomer *this, double a2, double a3, double a4, double a5)
{
  v7 = a2 - a3 / 360.0;
  icu::CalendarAstronomer::solarLongitude(this, v7);
  icu::CalendarAstronomer::declination(v8, v7, 0.0, v9);
  v11 = v10;
  v12 = fmod(a4 + 360.0, 360.0);
  if (v12 < 0.0)
  {
    v12 = v12 + 360.0;
  }

  v13 = v12 * 3.14159265 / 180.0;
  v14 = tan(v13);
  v15 = fmod(v11 + 360.0, 360.0);
  if (v15 < 0.0)
  {
    v15 = v15 + 360.0;
  }

  v16 = v15 * 3.14159265 / 180.0;
  v17 = tan(v16);
  v18 = fmod(a5 + 360.0, 360.0);
  if (v18 < 0.0)
  {
    v18 = v18 + 360.0;
  }

  v19 = sin(v18 * 3.14159265 / 180.0);
  v20 = cos(v16);
  return v19 / (cos(v13) * v20) + v14 * v17;
}

double icu::CalendarAstronomer::localFromApparent(icu::CalendarAstronomer *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *a2.i64;
  *a2.i64 = *a2.i64 + *a3.i64 / -360.0;
  return v3 - icu::CalendarAstronomer::hinduEquationOfTime(this, a2, a3);
}

double icu::CalendarAstronomer::sinDegrees(uint64_t a1)
{
  v1.i64[0] = *a1;
  v1.i64[1] = HIDWORD(*a1);
  return sin(vaddvq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_s64(v1), vdupq_n_s64(0x400921FB54442D18uLL)), xmmword_195482020)) + *(a1 + 8) * 3.14159265 / 648000.0);
}

void sub_1952B7E08(uint64_t a1, _DWORD *a2)
{
  sub_195400588(0xCu, sub_1952B7F04);
  if (a1)
  {
    operator new();
  }

  *a2 = 7;
}

uint64_t sub_1952B7F0C(uint64_t *a1, unsigned int a2, int *a3)
{
  if (*a3 <= 0)
  {
    umtx_lock(&unk_1EAEC9B80);
    v7 = *a1;
    if (!*a1)
    {
      sub_1952B7E08(a1, a3);
      if (*a3 > 0)
      {
        v3 = 0;
        goto LABEL_7;
      }

      v7 = *a1;
    }

    v3 = uhash_igeti(*(v7 + 8), a2);
LABEL_7:
    umtx_unlock(&unk_1EAEC9B80);
    return v3;
  }

  return 0;
}

void sub_1952B7FAC(uint64_t *a1, unsigned int a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  umtx_lock(&unk_1EAEC9B80);
  v9 = *a1;
  if (!*a1)
  {
    sub_1952B7E08(a1, a4);
    if (*a4 > 0)
    {
      goto LABEL_5;
    }

    v9 = *a1;
  }

  uhash_iputi(*(v9 + 8), a2, a3, a4);
LABEL_5:

  umtx_unlock(&unk_1EAEC9B80);
}

void *sub_1952B8054(void *a1)
{
  *a1 = &unk_1F0937178;
  v2 = a1[1];
  if (v2)
  {
    uhash_close(v2);
  }

  return a1;
}

void sub_1952B80A0(void *a1)
{
  *a1 = &unk_1F0937178;
  v1 = a1[1];
  if (v1)
  {
    uhash_close(v1);
  }

  JUMPOUT(0x19A8B2600);
}

double sub_1952B8114(int a1, icu::CalendarAstronomer *this)
{
  icu::CalendarAstronomer::getMoonPosition(this);
  v3 = *(this + 6) - *(this + 4);
  return v3 + uprv_floor(v3 / 6.28318531) * -6.28318531;
}

void *icu::BasicTimeZone::BasicTimeZone(icu::BasicTimeZone *this)
{
  result = icu::TimeZone::TimeZone(this);
  *result = &unk_1F0937270;
  return result;
}

icu::TimeZone *icu::BasicTimeZone::BasicTimeZone(icu::BasicTimeZone *this, UChar **a2)
{
  result = icu::TimeZone::TimeZone(this, a2);
  *result = &unk_1F0937270;
  return result;
}

{
  result = icu::TimeZone::TimeZone(this, a2);
  *result = &unk_1F0937270;
  return result;
}

uint64_t icu::BasicTimeZone::hasEquivalentTransitions(icu::BasicTimeZone *this, const icu::BasicTimeZone *a2, double a3, double a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if ((*(*this + 88))(this))
  {
    return 1;
  }

  v55 = 0uLL;
  (*(*this + 48))(this, 0, &v55 + 12, &v55 + 4, a6, a3);
  if (*a6 > 0)
  {
    return 0;
  }

  (*(*a2 + 48))(a2, 0, &v55 + 8, &v55, a6, a3);
  if (*a6 > 0)
  {
    return 0;
  }

  if (!a5)
  {
    if (__PAIR64__(HIDWORD(v55), v55) == *(&v55 + 4))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (DWORD1(v55) + HIDWORD(v55) != v55 + DWORD2(v55) || DWORD1(v55) && !v55 || !DWORD1(v55) && v55)
  {
    return 0;
  }

LABEL_16:
  memset(v54, 0, sizeof(v54));
  icu::TimeZoneTransition::TimeZoneTransition(v54);
  memset(v53, 0, sizeof(v53));
  icu::TimeZoneTransition::TimeZoneTransition(v53);
  while (1)
  {
    v14 = (*(*this + 112))(this, 0, v54, a3);
    v15 = (*(*a2 + 112))(a2, 0, v53, a3);
    if (a5)
    {
      if (v14)
      {
        while (icu::TimeZoneTransition::getTime(v54) <= a4)
        {
          v16 = icu::TimeZoneTransition::getFrom(v54);
          RawOffset = icu::TimeZoneRule::getRawOffset(v16);
          v18 = icu::TimeZoneTransition::getFrom(v54);
          v19 = icu::TimeZoneRule::getDSTSavings(v18) + RawOffset;
          v20 = icu::TimeZoneTransition::getTo(v54);
          v21 = icu::TimeZoneRule::getRawOffset(v20);
          v22 = icu::TimeZoneTransition::getTo(v54);
          if (v19 != icu::TimeZoneRule::getDSTSavings(v22) + v21)
          {
            break;
          }

          v23 = icu::TimeZoneTransition::getFrom(v54);
          if (!icu::TimeZoneRule::getDSTSavings(v23))
          {
            break;
          }

          v24 = icu::TimeZoneTransition::getTo(v54);
          if (!icu::TimeZoneRule::getDSTSavings(v24))
          {
            break;
          }

          Time = icu::TimeZoneTransition::getTime(v54);
          (*(*this + 112))(this, 0, v54, Time);
        }
      }

      if (v15)
      {
        while (icu::TimeZoneTransition::getTime(v53) <= a4)
        {
          v26 = icu::TimeZoneTransition::getFrom(v53);
          v27 = icu::TimeZoneRule::getRawOffset(v26);
          v28 = icu::TimeZoneTransition::getFrom(v53);
          v29 = icu::TimeZoneRule::getDSTSavings(v28) + v27;
          v30 = icu::TimeZoneTransition::getTo(v53);
          v31 = icu::TimeZoneRule::getRawOffset(v30);
          v32 = icu::TimeZoneTransition::getTo(v53);
          if (v29 != icu::TimeZoneRule::getDSTSavings(v32) + v31)
          {
            break;
          }

          v33 = icu::TimeZoneTransition::getFrom(v53);
          if (!icu::TimeZoneRule::getDSTSavings(v33))
          {
            break;
          }

          v34 = icu::TimeZoneTransition::getTo(v53);
          if (!icu::TimeZoneRule::getDSTSavings(v34))
          {
            break;
          }

          v35 = icu::TimeZoneTransition::getTime(v53);
          (*(*a2 + 112))(a2, 0, v53, v35);
        }
      }
    }

    if (v14)
    {
      v14 = icu::TimeZoneTransition::getTime(v54) <= a4;
    }

    v36 = v15 && icu::TimeZoneTransition::getTime(v53) <= a4;
    if (((v14 | v36) & 1) == 0)
    {
      break;
    }

    if ((v14 & v36) != 1)
    {
      goto LABEL_48;
    }

    v37 = icu::TimeZoneTransition::getTime(v54);
    if (v37 != icu::TimeZoneTransition::getTime(v53))
    {
      goto LABEL_48;
    }

    v38 = icu::TimeZoneTransition::getTo(v54);
    v39 = icu::TimeZoneRule::getRawOffset(v38);
    if (a5)
    {
      v40 = icu::TimeZoneTransition::getTo(v54);
      v41 = icu::TimeZoneRule::getDSTSavings(v40) + v39;
      v42 = icu::TimeZoneTransition::getTo(v53);
      v43 = icu::TimeZoneRule::getRawOffset(v42);
      v44 = icu::TimeZoneTransition::getTo(v53);
      if (v41 != icu::TimeZoneRule::getDSTSavings(v44) + v43 || (v45 = icu::TimeZoneTransition::getTo(v54), icu::TimeZoneRule::getDSTSavings(v45)) && (v46 = icu::TimeZoneTransition::getTo(v53), !icu::TimeZoneRule::getDSTSavings(v46)) || (v47 = icu::TimeZoneTransition::getTo(v54), !icu::TimeZoneRule::getDSTSavings(v47)) && (v48 = icu::TimeZoneTransition::getTo(v53), icu::TimeZoneRule::getDSTSavings(v48)))
      {
LABEL_48:
        v6 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v49 = icu::TimeZoneTransition::getTo(v53);
      if (v39 != icu::TimeZoneRule::getRawOffset(v49))
      {
        goto LABEL_48;
      }

      v50 = icu::TimeZoneTransition::getTo(v54);
      DSTSavings = icu::TimeZoneRule::getDSTSavings(v50);
      v52 = icu::TimeZoneTransition::getTo(v53);
      if (DSTSavings != icu::TimeZoneRule::getDSTSavings(v52))
      {
        goto LABEL_48;
      }
    }

    a3 = icu::TimeZoneTransition::getTime(v54);
  }

  v6 = 1;
LABEL_50:
  icu::TimeZoneTransition::~TimeZoneTransition(v53);
  icu::TimeZoneTransition::~TimeZoneTransition(v54);
  return v6;
}

void *icu::BasicTimeZone::getSimpleRulesNear(void *this, double a2, icu::InitialTimeZoneRule **a3, icu::AnnualTimeZoneRule **a4, icu::AnnualTimeZoneRule **a5, UErrorCode *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  if (*a6 <= 0)
  {
    v8 = this;
    v36 = 0u;
    v39 = 0;
    v38 = 0u;
    v37 = 0u;
    v34 = 0;
    v35 = &unk_1F0935D00;
    LOWORD(v36) = 2;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = 0;
    v30 = &unk_1F0935D00;
    LOWORD(v31) = 2;
    memset(v28, 0, sizeof(v28));
    icu::TimeZoneTransition::TimeZoneTransition(v28);
    if ((*(*v8 + 112))(v8, 0, v28, a2))
    {
      v9 = icu::TimeZoneTransition::getFrom(v28);
      icu::TimeZoneRule::getName(v9, &v35);
      v10 = icu::TimeZoneTransition::getFrom(v28);
      RawOffset = icu::TimeZoneRule::getRawOffset(v10);
      HIDWORD(v29) = RawOffset;
      v12 = icu::TimeZoneTransition::getFrom(v28);
      DSTSavings = icu::TimeZoneRule::getDSTSavings(v12);
      LODWORD(v29) = DSTSavings;
      Time = icu::TimeZoneTransition::getTime(v28);
      v15 = icu::TimeZoneTransition::getFrom(v28);
      if (icu::TimeZoneRule::getDSTSavings(v15) || (v21 = icu::TimeZoneTransition::getTo(v28), !icu::TimeZoneRule::getDSTSavings(v21)))
      {
        v16 = icu::TimeZoneTransition::getFrom(v28);
        if (icu::TimeZoneRule::getDSTSavings(v16))
        {
          v17 = icu::TimeZoneTransition::getTo(v28);
          if (!icu::TimeZoneRule::getDSTSavings(v17) && a2 + 3.1536e10 > Time)
          {
LABEL_12:
            v26 = 0;
            *v27 = 0;
            v25 = 0;
            sub_195329158(&v27[1], v27, &v26 + 1, &v26, &v25 + 1, &v25, a6, Time + RawOffset + DSTSavings);
            if (*a6 <= 0)
            {
              sub_195329260(v27[1], v27[0], SHIDWORD(v26));
              operator new();
            }

            goto LABEL_16;
          }
        }
      }

      else if (a2 + 3.1536e10 > Time)
      {
        goto LABEL_12;
      }
    }

    else if ((*(*v8 + 120))(v8, 1, v28, a2))
    {
      v18 = icu::TimeZoneTransition::getTo(v28);
      icu::TimeZoneRule::getName(v18, &v35);
      v19 = icu::TimeZoneTransition::getTo(v28);
      HIDWORD(v29) = icu::TimeZoneRule::getRawOffset(v19);
      v20 = icu::TimeZoneTransition::getTo(v28);
      LODWORD(v29) = icu::TimeZoneRule::getDSTSavings(v20);
    }

    else
    {
      (*(*v8 + 48))(v8, 0, &v29 + 4, &v29, a6, a2);
      if (*a6 > 0)
      {
LABEL_16:
        icu::TimeZoneTransition::~TimeZoneTransition(v28);
        icu::UnicodeString::~UnicodeString(v22, &v30);
        this = icu::UnicodeString::~UnicodeString(v23, &v35);
        goto LABEL_17;
      }
    }

    operator new();
  }

LABEL_17:
  v24 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::BasicTimeZone::getTimeZoneRulesAfter(icu::BasicTimeZone *this, double a2, icu::InitialTimeZoneRule **a3, icu::UVector **a4, UErrorCode *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    memset(&size[4], 0, 40);
    icu::TimeZoneTransition::TimeZoneTransition(&size[4]);
    v13 = 0u;
    v16 = 0;
    v15 = 0u;
    v14 = 0u;
    v12 = &unk_1F0935D00;
    LOWORD(v13) = 2;
    *a3 = 0;
    *a4 = 0;
    (*(*this + 136))(this, a5);
    v9 = *a5;
    if (v9 <= 0)
    {
      operator new();
    }

    icu::UnicodeString::~UnicodeString(v9, &v12);
    icu::TimeZoneTransition::~TimeZoneTransition(&size[4]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void icu::BasicTimeZone::getOffsetFromLocal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    *a6 = 16;
  }
}

uint64_t sub_1952B9C10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v5 = a4;
    v8 = 0;
    v42 = 2 * a3;
    memset(v45, 0, sizeof(v45));
    v44 = 0;
    while (1)
    {
      v9 = (*(*v5 + 24))(v5, 1, v42, v45, 64, &v44);
      v10 = v44;
      if (v44 > 15)
      {
        v11 = v9;
      }

      else
      {
        v44 = 64;
        v11 = v45;
        v10 = 64;
      }

      if (v8 < a3)
      {
        v12 = v11 + v10 - 4;
        if (v11 <= v12)
        {
          break;
        }
      }

      LODWORD(v13) = v11;
LABEL_63:
      (*(*a4 + 16))(a4, v11, (v13 - v11), 56320, 4238353408);
      v5 = a4;
      if (v8 >= a3)
      {
        goto LABEL_64;
      }
    }

    v13 = v11;
    while (1)
    {
      v14 = a1 - 40960;
      v15 = a1 & 0xFFFFFF80 | 0x50;
      if (v14 >= 0xFFFFAE00)
      {
        v16 = 30292;
      }

      else
      {
        v16 = v15;
      }

      v17 = v8 + 1;
      a1 = *(a2 + 2 * v8);
      v18 = (a1 & 0xFC00) != 0xD800 || v17 == a3;
      if (v18 || (v19 = *(a2 + 2 * v17), (v19 & 0xFC00) != 0xDC00))
      {
        if (a1 == 65534)
        {
          a1 = 0;
          *v13++ = 2;
          ++v8;
          goto LABEL_59;
        }

        ++v8;
      }

      else
      {
        v8 += 2;
        a1 = (v19 + (a1 << 10) - 56613888);
      }

      v20 = a1 - v16;
      if (v20 < -80)
      {
        if (v20 >= 0xFFFFD654)
        {
          v21 = -v20;
          v22 = v21 / 0xFDu;
          v23 = v21 % 0xFDu;
          v24 = -v22;
          v25 = v23 == 0;
          if (v23)
          {
            v20 = -v23;
          }

          else
          {
            LOBYTE(v20) = 3;
          }

          if (!v25)
          {
            LOBYTE(v24) = ~v22;
          }

          *v13 = v24 + 49;
          goto LABEL_33;
        }

        v26 = -v20 / 0xFD;
        if (-v20 == 253 * v26)
        {
          v27 = -v20 / 0xFD;
        }

        else
        {
          v27 = v26 + 1;
        }

        if (-v20 == 253 * v26)
        {
          LOBYTE(v28) = 3;
        }

        else
        {
          v28 = -(-v20 % 0xFD);
        }

        if (v20 >= 0xFFFD0EEE)
        {
          v13[2] = v28;
          v29 = v27 / 0xFDu;
          v30 = v27 - 253 * v29;
          v31 = -v29;
          v32 = v30 == 0;
          if (v30)
          {
            v33 = -v30;
          }

          else
          {
            LOBYTE(v33) = 3;
          }

          v13[1] = v33;
          if (!v32)
          {
            LOBYTE(v31) = ~v29;
          }

          LOBYTE(v31) = v31 + 7;
          goto LABEL_49;
        }

        v13[3] = v28;
        v35 = v27 / 0xFD;
        v36 = v27 % 0xFD;
        if (v36)
        {
          ++v35;
          v37 = -v36;
        }

        else
        {
          LOBYTE(v37) = 3;
        }

        v13[2] = v37;
        v38 = v35 - 253 * (v35 / 0xFDu);
        if (v38)
        {
          v39 = -v38;
        }

        else
        {
          LOBYTE(v39) = 3;
        }

        v13[1] = v39;
        *v13 = 3;
      }

      else
      {
        if (v20 <= 80)
        {
          *v13++ = v20 - 127;
          goto LABEL_59;
        }

        if (v20 >> 2 <= 0xA6A)
        {
          *v13 = v20 / 0xFDu - 46;
          LOBYTE(v20) = v20 % 0xFDu + 3;
LABEL_33:
          v13[1] = v20;
          v13 += 2;
          goto LABEL_59;
        }

        v34 = v20 % 0xFD + 3;
        if (v20 <= 0x2F111)
        {
          v13[2] = v34;
          v13[1] = (v20 / 0xFD) % 0xFDu + 3;
          v31 = v20 / 0xFA09 - 4;
LABEL_49:
          *v13 = v31;
          v13 += 3;
          goto LABEL_59;
        }

        v13[3] = v34;
        v13[2] = v20 / 0xFD - -3 * ((33952311 * (v20 / 0xFD)) >> 33) + 3;
        v13[1] = (v20 / 0xFA09) % 0xFDu + 3;
        *v13 = -1;
      }

      v13 += 4;
LABEL_59:
      if (v8 >= a3 || v13 > v12)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  v40 = *MEMORY[0x1E69E9840];
  return a1;
}

icu::Transliterator *sub_1952BA034(icu::Transliterator *a1, icu::UnicodeFilter *a2)
{
  v8[8] = *MEMORY[0x1E69E9840];
  v7 = L"Any-BreakInternal";
  icu::UnicodeString::UnicodeString(v8, 1, &v7);
  icu::Transliterator::Transliterator(a1, v8, a2);
  icu::UnicodeString::~UnicodeString(v4, v8);
  *a1 = &unk_1F0937340;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  icu::UnicodeString::UnicodeString(a1 + 104, 32);
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1952BA104(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0937340;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 13));
  v3 = a1[12];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::Transliterator::~Transliterator(a1);
}

void sub_1952BA1B4(void *a1@<X0>, void *a2@<X8>)
{
  sub_1952BA104(a1, a2);

  JUMPOUT(0x19A8B2600);
}

void *sub_1952BA260(uint64_t a1, char **a2, _DWORD *a3, int a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = U_ZERO_ERROR;
  umtx_lock(0);
  v8 = *(a1 + 88);
  v9 = *(a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  umtx_unlock(0);
  if (!v8)
  {
    English = icu::Locale::getEnglish(v10);
    v8 = icu::BreakIterator::createWordInstance(English, &v34, v12, v13);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v8 || v34 > U_ZERO_ERROR)
  {
LABEL_43:
    result = (*(*v9 + 8))(v9);
    goto LABEL_44;
  }

  icu::UVector32::removeAllElements(v9);
  memset(v35, 0, sizeof(v35));
  sub_1952BA608(a2, v35);
  (*(*v8 + 56))(v8, v35);
  (*(*v8 + 128))(v8, a3[2]);
  v14 = (*(*v8 + 104))(v8);
  v15 = a3[3];
  if (v14 != -1 && v14 < v15)
  {
    v17 = v14;
    while (1)
    {
      if (v17)
      {
        v18 = icu::UnicodeString::char32At(v15, v35, v17 - 1);
        v19 = (1 << u_charType(v18));
        if ((v19 & 0x1FE) != 0)
        {
          v20 = icu::UnicodeString::char32At(v19, v35, v17);
          if (((1 << u_charType(v20)) & 0x1FE) != 0)
          {
            v21 = *(v9 + 2);
            if (v21 >= -1 && *(v9 + 3) > v21)
            {
              goto LABEL_21;
            }

            if (icu::UVector32::expandCapacity(v9, v21 + 1, &v34))
            {
              break;
            }
          }
        }
      }

LABEL_22:
      v22 = (*(*v8 + 104))(v8);
      v17 = v22;
      v15 = a3[3];
      if (v22 == -1 || v22 >= v15)
      {
        goto LABEL_26;
      }
    }

    v21 = *(v9 + 2);
LABEL_21:
    *(*(v9 + 3) + 4 * v21) = v17;
    ++*(v9 + 2);
    goto LABEL_22;
  }

LABEL_26:
  v24 = *(v9 + 2);
  if (!v24)
  {
    v26 = 0;
LABEL_35:
    v27 = 0;
    goto LABEL_36;
  }

  if (*(a1 + 112) < 0)
  {
    v25 = *(a1 + 116);
  }

  else
  {
    v25 = *(a1 + 112) >> 5;
  }

  v26 = v25 * v24;
  if (v24 < 1)
  {
    goto LABEL_35;
  }

  v27 = *(*(v9 + 3) + 4 * v24 - 4);
  do
  {
    *(v9 + 2) = v24 - 1;
    v28 = *(*(v9 + 3) + 4 * (v24 - 1));
    (*(*a2 + 4))(a2, v28, v28, a1 + 104);
    LODWORD(v24) = *(v9 + 2);
  }

  while (v24 > 0);
  LODWORD(v15) = a3[3];
LABEL_36:
  v29 = a3[1] + v26;
  v30 = v15 + v26;
  a3[3] = v30;
  if (a4)
  {
    v30 = v27 + v26;
  }

  a3[1] = v29;
  a3[2] = v30;
  umtx_lock(0);
  if (!*(a1 + 88))
  {
    *(a1 + 88) = v8;
    v8 = 0;
  }

  if (!*(a1 + 96))
  {
    *(a1 + 96) = v9;
    v9 = 0;
  }

  umtx_unlock(0);
  result = icu::UnicodeString::~UnicodeString(v31, v35);
  if (v9)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v8)
  {
    result = (*(*v8 + 8))(v8);
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *sub_1952BA608@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v4 = *a1;
  v5 = **a1;
  if (v6)
  {

    return icu::UnicodeString::operator=(a2, v6);
  }

  else
  {
    v8 = (*(v4 + 8))(a1);
    v9 = *(*a1 + 3);

    return v9(a1, 0, v8, a2);
  }
}

icu::GregorianCalendar *sub_1952BA758(icu::GregorianCalendar *a1, char **a2, UErrorCode *a3)
{
  v5 = icu::GregorianCalendar::GregorianCalendar(a1, a2, a3);
  *v5 = &unk_1F0937400;
  icu::Calendar::getNow(v5);
  icu::Calendar::setTimeInMillis(a1, v6, a3);
  return a1;
}

void sub_1952BA7B8(icu::GregorianCalendar *a1)
{
  icu::GregorianCalendar::~GregorianCalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952BA858(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19)
  {
    if (a1[54] < 1)
    {
      return 1970;
    }

    else
    {
      return a1[22];
    }
  }

  else
  {
    if (a1[36] < 1)
    {
      v7 = 2513;
    }

    else
    {
      v7 = a1[4];
    }

    v8 = v7;
    if (uprv_add32_overflow(v7, -543, &v8))
    {
      result = 0;
      *a2 = 1;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

_DWORD *sub_1952BA90C(uint64_t a1, int a2, UErrorCode *a3)
{
  result = icu::GregorianCalendar::handleComputeFields(a1, a2, a3);
  v5 = *(a1 + 88) + 543;
  *(a1 + 140) = 0x100000001;
  *(a1 + 112) = 257;
  *(a1 + 12) = 0;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1952BA94C(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return icu::GregorianCalendar::handleGetLimit(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

double sub_1952BA95C()
{
  if (atomic_load_explicit(dword_1ED442B78, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B78))
  {
    sub_1952BA9B0();
    icu::umtx_initImplPostInit(dword_1ED442B78);
  }

  return *&qword_1ED441AA8;
}

void sub_1952BA9B0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x2A0uLL);
  icu::Locale::Locale(v4, "@calendar=buddhist", 0, 0, 0);
  sub_1952BA758(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441AA8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441AB0 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::GregorianCalendar::~GregorianCalendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952BAAA8()
{
  if (atomic_load_explicit(dword_1ED442B78, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B78))
  {
    sub_1952BA9B0();
    icu::umtx_initImplPostInit(dword_1ED442B78);
  }

  return dword_1ED441AB0;
}

void icu::SharedCalendar::~SharedCalendar(icu::SharedCalendar *this)
{
  *this = &unk_1F0937610;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::SharedObject::~SharedObject(this);
}

{
  icu::SharedCalendar::~SharedCalendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::LocaleCacheKey<icu::SharedCalendar>::createObject(uint64_t a1, uint64_t a2, const icu::Locale *a3)
{
  if (*a3 <= 0)
  {
    icu::Calendar::makeInstance((a1 + 16), a3, a3);
    if (*a3 <= 0)
    {
      operator new();
    }
  }

  return 0;
}

char *icu::Calendar::makeInstance(icu::Calendar *this, const icu::Locale *a2, UErrorCode *a3)
{
  v25[9] = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    memset(v18, 0, sizeof(v18));
    icu::Locale::Locale(v18);
    v6 = *(this + 5);
    v17 = U_ZERO_ERROR;
    memset(v25, 0, 64);
    ulocimp_canonicalize(v6, &v17, v25);
    LODWORD(v7) = 0;
    if (v17 <= U_ZERO_ERROR)
    {
      v24 = 0u;
      memset(v23, 0, sizeof(v23));
      ulocimp_getKeywordValue(v25[0], "calendar", 8, &v17, v23);
      if (v17 > U_ZERO_ERROR)
      {
LABEL_8:
        v17 = U_ZERO_ERROR;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        ulocimp_getRegionForSupplementalData(v25[0], &v17, 1, &v19);
        LODWORD(v7) = 0;
        if (v17 <= U_ZERO_ERROR)
        {
          v9 = ures_openDirect(0, "supplementalData", &v17);
          ures_getByKey(v9, "calendarPreferenceData", v9, &v17);
          v10 = ures_getByKey(v9, v19, 0, &v17);
          if (v9 && v17 == U_MISSING_RESOURCE_ERROR)
          {
            v17 = U_ZERO_ERROR;
            v10 = ures_getByKey(v9, "001", 0, &v17);
          }

          DWORD2(v24) = 0;
          *v23[0] = 0;
          LODWORD(v11) = -1;
          if (v17 <= U_ZERO_ERROR && v10)
          {
            v16 = 0;
            StringByIndex = ures_getStringByIndex(v10, 0, &v16, &v17);
            icu::CharString::appendInvariantChars(v23, StringByIndex, v16, &v17);
            v11 = 0;
            v13 = v23[0];
            while (uprv_stricmp(v13, off_1E740BF00[v11]))
            {
              if (++v11 == 30)
              {
                LODWORD(v11) = -1;
                break;
              }
            }
          }

          ures_close(v10);
          ures_close(v9);
          if (v11 == -1)
          {
            LODWORD(v7) = 0;
          }

          else
          {
            LODWORD(v7) = v11;
          }
        }

        if (BYTE12(v19))
        {
          free(v19);
        }
      }

      else
      {
        v7 = 0;
        v8 = v23[0];
        while (uprv_stricmp(v8, off_1E740BF00[v7]))
        {
          if (++v7 == 30)
          {
            goto LABEL_8;
          }
        }
      }

      if (BYTE4(v23[1]))
      {
        free(v23[0]);
      }
    }

    if (BYTE4(v25[1]))
    {
      free(v25[0]);
    }

    if (*a2 <= 0)
    {
      v25[0] = 0;
      switch(v7)
      {
        case 0:
          operator new();
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
        case 9:
          operator new();
        case 10:
          operator new();
        case 11:
          operator new();
        case 12:
          operator new();
        case 13:
          operator new();
        case 14:
          operator new();
        case 15:
          operator new();
        case 16:
          operator new();
        case 17:
          operator new();
        case 18:
          operator new();
        case 19:
          operator new();
        case 20:
          operator new();
        case 21:
          operator new();
        case 22:
          operator new();
        case 23:
          operator new();
        case 24:
          operator new();
        case 25:
          operator new();
        case 26:
          operator new();
        case 27:
          operator new();
        case 28:
          operator new();
        case 29:
          operator new();
        default:
          *a2 = 16;
          if (*a2 <= 0)
          {
            v3 = v25[0];
            if (v25[0])
            {
              break;
            }
          }

          if (*a2 > 0)
          {
            goto LABEL_28;
          }

          v3 = 0;
          *a2 = 5;
          break;
      }
    }

    else
    {
LABEL_28:
      v3 = 0;
    }

    icu::Locale::~Locale(v18);
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

icu::Calendar *icu::Calendar::Calendar(icu::Calendar *this, UErrorCode *a2)
{
  *this = &unk_1F0937638;
  *(this + 2) = 0;
  *(this + 60) = 2;
  *(this + 31) = 0;
  *(this + 256) = 1;
  *(this + 320) = 0;
  *(this + 477) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v4 = icu::Calendar::clear(this);
  if (*a2 <= 0)
  {
    Default = icu::TimeZone::createDefault(v4);
    *(this + 33) = Default;
    if (!Default)
    {
      *a2 = U_MEMORY_ALLOCATION_ERROR;
    }

    v6 = icu::Locale::getDefault(Default);
    icu::Calendar::setWeekData(this, v6, 0, a2);
  }

  return this;
}

_BYTE *icu::Calendar::clear(_BYTE *this)
{
  v1 = this;
  {
    v4 = *(v1 + 12);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + 121) = 0u;
  *(v1 + 108) = 0u;
  *(v1 + 92) = 0u;
  *(v1 + 76) = 0u;
  *(v1 + 60) = 0u;
  *(v1 + 44) = 0u;
  *(v1 + 28) = 0u;
  *(v1 + 12) = 0u;
  v5 = xmmword_19544D5E0;
  v6 = xmmword_19544D5F0;
  v7 = 140;
  v8 = vdupq_n_s64(0x19uLL);
  v9 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v8, v6)), *v5.i8).u8[0])
    {
      *(v1 + v7) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v6)), *&v5).i8[2])
    {
      *(v1 + v7 + 4) = 0;
    }

    if (vuzp1_s16(*&v5, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v5))).i32[1])
    {
      *(v1 + v7 + 8) = 0;
      *(v1 + v7 + 12) = 0;
    }

    v5 = vaddq_s64(v5, v9);
    v6 = vaddq_s64(v6, v9);
    v7 += 16;
  }

  while (v7 != 252);
  *(v1 + 8) = 0;
  if (v4 >= 1)
  {
    return icu::Calendar::set(v1, 0, v4);
  }

  return this;
}

void icu::Calendar::setWeekData(icu::Calendar *this, const icu::Locale *a2, char *a3, UErrorCode *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_53;
  }

  *(this + 70) = 1;
  *(this + 284) = 1;
  *(this + 18) = xmmword_195486050;
  v23 = U_ZERO_ERROR;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  icu::Locale::Locale(&v38, a2);
  icu::Locale::minimizeSubtags(&v38, &v23);
  memset(v37, 0, sizeof(v37));
  icu::Locale::Locale(v37);
  if (*(a2 + 26) && (!*(a2 + 20) || BYTE4(v39)))
  {
    icu::Locale::operator=(v37, a2);
  }

  else
  {
    v23 = U_ZERO_ERROR;
    memset(v36, 0, sizeof(v36));
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    icu::Locale::Locale(&v28, a2);
    icu::Locale::addLikelySubtags(&v28, &v23);
    icu::Locale::Locale(v24, &v28 + 8, &v29 + 10, 0, 0);
    icu::Locale::operator=(v37, v24);
    icu::Locale::~Locale(v24);
    icu::Locale::~Locale(&v28);
  }

  BaseName = icu::Locale::getBaseName(v37);
  v9 = ures_open(0, BaseName, a4);
  ures_getByKey(v9, "calendar", v9, a4);
  if (!a3)
  {
    goto LABEL_14;
  }

  if (!*a3 || !strcmp(a3, "gregorian"))
  {
    a3 = 0;
LABEL_14:
    *a4 = U_ZERO_ERROR;
    a3 = ures_getByKeyWithFallback(v9, "gregorian", a3, a4);
    ures_getByKeyWithFallback(a3, "monthNames", a3, a4);
    v10 = *a4;
    goto LABEL_15;
  }

  a3 = ures_getByKeyWithFallback(v9, a3, 0, a4);
  ures_getByKeyWithFallback(a3, "monthNames", a3, a4);
  if (!a3)
  {
    goto LABEL_14;
  }

  v10 = *a4;
  if (*a4 == U_MISSING_RESOURCE_ERROR)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v10 <= U_ZERO_ERROR)
  {
    *&v28 = this + 320;
    *(&v28 + 1) = this + 477;
    LocaleByType = ures_getLocaleByType(a3, 1, a4);
    v12 = ures_getLocaleByType(a3, 0, a4);
    icu::LocaleBased::setLocaleIDs(&v28, LocaleByType, v12);
    v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    ulocimp_getRegionForSupplementalData(*(a2 + 5), a4, 1, v24);
    v13 = ures_openDirect(0, "supplementalData", a4);
    ures_getByKey(v13, "weekData", v13, a4);
    v14 = ures_getByKey(v13, v24[0], 0, a4);
    v15 = *a4;
    if (v13 && v15 == U_MISSING_RESOURCE_ERROR)
    {
      *a4 = U_ZERO_ERROR;
      v14 = ures_getByKey(v13, "001", 0, a4);
      v15 = *a4;
    }

    if (v15 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      *a4 = U_USING_FALLBACK_WARNING;
      goto LABEL_46;
    }

    v22 = 0;
    IntVector = ures_getIntVector(v14, &v22, a4);
    if (*a4 <= 0 && v22 == 6 && (*IntVector - 1) <= 6 && (v17 = IntVector[1], (v17 - 1) <= 6) && (v18 = IntVector[2], (v18 - 1) <= 6) && (IntVector[4] - 1) <= 6)
    {
      *(this + 70) = *IntVector;
      *(this + 284) = v17;
      *(this + 72) = v18;
      *(this + 73) = IntVector[3];
      *(this + 37) = *(IntVector + 2);
    }

    else
    {
      *a4 = U_INVALID_FORMAT_ERROR;
    }

    v21 = U_ZERO_ERROR;
    v35 = 0u;
    memset(v36, 0, 29);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    icu::Locale::getKeywordValue(a2, "fw", &v28, 157, &v21);
    if (v21 <= U_ZERO_ERROR)
    {
      switch(v28)
      {
        case 0x6E7573:
          v19 = 1;
          break;
        case 0x6E6F6D:
          v19 = 2;
          break;
        case 0x657574:
          v19 = 3;
          break;
        case 0x646577:
          v19 = 4;
          break;
        case 0x756874:
          v19 = 5;
          break;
        case 0x697266:
          v19 = 6;
          break;
        case 0x746173:
          v19 = 7;
          break;
        default:
          goto LABEL_46;
      }

      *(this + 70) = v19;
    }

LABEL_46:
    ures_close(v14);
    ures_close(v13);
    if (BYTE4(v24[1]))
    {
      free(v24[0]);
    }

    goto LABEL_48;
  }

  *a4 = U_USING_FALLBACK_WARNING;
LABEL_48:
  if (a3)
  {
    ures_close(a3);
  }

  if (v9)
  {
    ures_close(v9);
  }

  icu::Locale::~Locale(v37);
  icu::Locale::~Locale(&v38);
LABEL_53:
  v20 = *MEMORY[0x1E69E9840];
}

icu::Calendar *icu::Calendar::Calendar(icu::Calendar *this, icu::TimeZone *a2, const icu::Locale *a3, UErrorCode *a4)
{
  *this = &unk_1F0937638;
  *(this + 2) = 0;
  *(this + 60) = 2;
  *(this + 31) = 0;
  *(this + 256) = 1;
  *(this + 320) = 0;
  *(this + 477) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  if (*a4 < 1)
  {
    if (a2)
    {
      icu::Calendar::clear(this);
      *(this + 33) = a2;
      icu::Calendar::setWeekData(this, a3, 0, a4);
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else if (a2)
  {
    (*(*a2 + 8))(a2, a2, a3);
  }

  return this;
}

icu::Calendar *icu::Calendar::Calendar(icu::Calendar *this, const icu::TimeZone *a2, const icu::Locale *a3, UErrorCode *a4)
{
  *this = &unk_1F0937638;
  *(this + 2) = 0;
  *(this + 60) = 2;
  *(this + 31) = 0;
  *(this + 256) = 1;
  *(this + 320) = 0;
  *(this + 477) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  if (*a4 <= 0)
  {
    icu::Calendar::clear(this);
    v8 = (*(*a2 + 96))(a2);
    *(this + 33) = v8;
    if (!v8)
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }

    icu::Calendar::setWeekData(this, a3, 0, a4);
  }

  return this;
}

void icu::Calendar::~Calendar(icu::Calendar *this)
{
  *this = &unk_1F0937638;
  v2 = *(this + 33);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UObject::~UObject(this);
}

uint64_t icu::Calendar::Calendar(uint64_t this, uint64_t a2)
{
  *this = &unk_1F0937638;
  *(this + 264) = 0;
  return icu::Calendar::operator=(this, a2);
}

uint64_t icu::Calendar::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 12);
    v5 = *(a2 + 28);
    *(a1 + 44) = *(a2 + 44);
    *(a1 + 28) = v5;
    *(a1 + 12) = v4;
    v6 = *(a2 + 60);
    v7 = *(a2 + 76);
    v8 = *(a2 + 92);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 92) = v8;
    *(a1 + 76) = v7;
    *(a1 + 60) = v6;
    v9 = *(a2 + 112);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 112) = v9;
    v10 = *(a2 + 204);
    v11 = *(a2 + 220);
    v12 = *(a2 + 236);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 236) = v12;
    *(a1 + 220) = v11;
    *(a1 + 204) = v10;
    v13 = *(a2 + 140);
    v14 = *(a2 + 156);
    *(a1 + 172) = *(a2 + 172);
    *(a1 + 156) = v14;
    *(a1 + 140) = v13;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v15 = *(a1 + 264);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    *(a1 + 264) = 0;
    v16 = *(a2 + 264);
    if (v16)
    {
      *(a1 + 264) = (*(*v16 + 96))(v16);
    }

    *(a1 + 280) = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 240) = *(a2 + 240);
    strncpy((a1 + 320), (a2 + 320), 0x9DuLL);
    strncpy((a1 + 477), (a2 + 477), 0x9DuLL);
    *(a1 + 476) = 0;
    *(a1 + 633) = 0;
  }

  return a1;
}

uint64_t icu::Calendar::createInstance(icu::Calendar *this, UErrorCode *a2)
{
  Default = icu::TimeZone::createDefault(this);
  v4 = icu::Locale::getDefault(Default);

  return icu::Calendar::createInstance(Default, v4, this, v5);
}

uint64_t icu::Calendar::createInstance(icu::Calendar *this, icu::TimeZone *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v10 = 0;
  sub_1952BC2F0(a2, &v10, a3);
  if (*a3 > 0)
  {
    if (!this)
    {
      return 0;
    }

LABEL_3:
    (*(*this + 8))(this);
    return 0;
  }

  v6 = (*(**(v10 + 3) + 24))(*(v10 + 3));
  icu::SharedObject::removeRef(v10);
  if (!v6)
  {
    *a3 = 7;
    if (!this)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (this)
  {
    v7 = *(v6 + 264);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    *(v6 + 264) = this;
    *(v6 + 9) = 0;
  }

  UTCtime = uprv_getUTCtime();
  icu::Calendar::setTimeInMillis(v6, UTCtime, a3);
  return v6;
}

uint64_t icu::Calendar::createInstance(icu::Calendar *this, const icu::TimeZone *a2, UErrorCode *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::Calendar::createInstance(this, Default, a2, v6);
}

uint64_t icu::Calendar::createInstance(icu::Calendar *this, char **a2, const icu::Locale *a3, UErrorCode *a4)
{
  v7 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  Instance = icu::Calendar::createInstance(v7, a2, a3, v8);
  v10 = Instance;
  if (*a3 <= 0 && Instance != 0)
  {
    icu::Calendar::setTimeZone(Instance, this);
  }

  return v10;
}

uint64_t icu::Calendar::createInstance(char **this, const icu::Locale *a2, UErrorCode *a3)
{
  v5 = icu::TimeZone::forLocaleOrDefault(this, a2);

  return icu::Calendar::createInstance(v5, this, a2, v6);
}

void sub_1952BC2F0(uint64_t a1, UErrorCode *a2, icu::UnifiedCache *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F0937840;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F0937840;
    icu::Locale::~Locale(v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void *icu::Calendar::adoptTimeZone(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = result[33];
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v3[33] = a2;
    *(v3 + 9) = 0;
  }

  return result;
}

uint64_t icu::Calendar::setTimeInMillis(uint64_t this, double a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v5 = this;
  v6 = 1.83882169e17;
  if (a2 > 1.83882169e17 || (v6 = -1.84303903e17, a2 < -1.84303903e17))
  {
    if (*(this + 256))
    {
      goto LABEL_5;
    }

LABEL_15:
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return this;
  }

  this = uprv_isNaN(a2);
  v6 = a2;
  if (this)
  {
    goto LABEL_15;
  }

LABEL_5:
  *(v5 + 248) = v6;
  *(v5 + 8) = 16777217;
  *(v5 + 12) = 0u;
  *(v5 + 28) = 0u;
  *(v5 + 44) = 0u;
  *(v5 + 60) = 0u;
  *(v5 + 76) = 0u;
  *(v5 + 92) = 0u;
  *(v5 + 108) = 0u;
  *(v5 + 121) = 0u;
  v7 = xmmword_19544D5E0;
  v8 = xmmword_19544D5F0;
  v9 = (v5 + 152);
  v10 = 28;
  v11 = vdupq_n_s64(0x19uLL);
  v12 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v11, v8)), *v7.i8).u8[0])
    {
      *(v9 - 3) = 0;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v8)), *&v7).i8[2])
    {
      *(v9 - 2) = 0;
    }

    if (vuzp1_s16(*&v7, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x19uLL), *&v7))).i32[1])
    {
      *(v9 - 1) = 0;
      *v9 = 0;
    }

    v7 = vaddq_s64(v7, v12);
    v8 = vaddq_s64(v8, v12);
    v9 += 4;
    v10 -= 4;
  }

  while (v10);
  return this;
}

uint64_t icu::Calendar::setTimeZone(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 96))(a2);
  if (result)
  {
    v4 = result;
    result = *(a1 + 264);
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *(a1 + 264) = v4;
    *(a1 + 9) = 0;
  }

  return result;
}

void icu::Calendar::getCalendarTypeFromLocale(icu::Calendar *this, const icu::Locale *a2, char *a3, icu::UnifiedCache *a4, UErrorCode *a5)
{
  v6 = a3;
  v9 = 0;
  sub_1952BC2F0(this, &v9, a4);
  if (*a4 <= 0)
  {
    v8 = (*(**(v9 + 3) + 184))(*(v9 + 3));
    strncpy(a2, v8, v6);
    icu::SharedObject::removeRef(v9);
    if (*(a2 + v6 - 1))
    {
      *a4 = 15;
    }
  }
}

uint64_t icu::Calendar::operator==(icu::Calendar *a1, icu::Calendar *a2)
{
  v6 = U_ZERO_ERROR;
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    TimeInMillis = icu::Calendar::getTimeInMillis(a1, &v6);
    return TimeInMillis == icu::Calendar::getTimeInMillis(a2, &v6) && v6 < U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

double icu::Calendar::getTimeInMillis(icu::Calendar *this, UErrorCode *a2)
{
  v2 = 0.0;
  if (*a2 <= 0)
  {
    if (*(this + 8))
    {
      return *(this + 31);
    }

    icu::Calendar::updateTime(this, a2);
    if (*a2 <= 0)
    {
      return *(this + 31);
    }
  }

  return v2;
}

uint64_t icu::Calendar::isEquivalentTo(icu::Calendar *this, const icu::Calendar *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*this - 8), *(*a2 - 8));
  if (result)
  {
    if (*(this + 256) == *(a2 + 256) && *(this + 68) == *(a2 + 68) && *(this + 69) == *(a2 + 69) && *(this + 70) == *(a2 + 70) && *(this + 284) == *(a2 + 284) && *(this + 72) == *(a2 + 72) && *(this + 73) == *(a2 + 73) && *(this + 74) == *(a2 + 74) && *(this + 75) == *(a2 + 75))
    {
      return (*(**(this + 33) + 24))(*(this + 33), *(a2 + 33));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL icu::Calendar::equals(icu::Calendar *this, const icu::Calendar *a2, UErrorCode *a3)
{
  if (this == a2)
  {
    return 1;
  }

  TimeInMillis = icu::Calendar::getTimeInMillis(this, a3);
  return TimeInMillis == icu::Calendar::getTimeInMillis(a2, a3);
}

BOOL icu::Calendar::before(icu::Calendar *this, const icu::Calendar *a2, UErrorCode *a3)
{
  if (this == a2)
  {
    return 0;
  }

  TimeInMillis = icu::Calendar::getTimeInMillis(this, a3);
  return TimeInMillis < icu::Calendar::getTimeInMillis(a2, a3);
}

BOOL icu::Calendar::after(icu::Calendar *this, const icu::Calendar *a2, UErrorCode *a3)
{
  if (this == a2)
  {
    return 0;
  }

  TimeInMillis = icu::Calendar::getTimeInMillis(this, a3);
  return TimeInMillis > icu::Calendar::getTimeInMillis(a2, a3);
}

uint64_t icu::Calendar::getKeywordValuesForLocale(icu::Calendar *this, char **a2, const icu::Locale *a3, UErrorCode *a4, UErrorCode *a5)
{
  KeywordValuesForLocale = ucal_getKeywordValuesForLocale(this, a2[5], a3, a4);
  if (*a4 < 1)
  {
    operator new();
  }

  uenum_close(KeywordValuesForLocale);
  return 0;
}

uint64_t icu::Calendar::updateTime(icu::Calendar *this, UErrorCode *a2)
{
  result = (*(*this + 248))(this);
  if (*a2 <= 0)
  {
    if (*(this + 256) || !*(this + 10))
    {
      *(this + 9) = 0;
    }

    *(this + 8) = 1;
    *(this + 11) = 0;
  }

  return result;
}

uint64_t icu::Calendar::get(_BYTE *a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 < 0x19)
  {
    icu::Calendar::complete(a1, a3);
    if (*a3 <= 0)
    {
      return *&a1[4 * a2 + 12];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

_BYTE *icu::Calendar::complete(_BYTE *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v3 = this;
    if (this[8] || (this = icu::Calendar::updateTime(this, a2), *a2 <= 0))
    {
      if (!v3[9])
      {
        this = (*(*v3 + 256))(v3, a2);
        if (*a2 <= 0)
        {
          *(v3 + 9) = 257;
        }
      }
    }
  }

  return this;
}

_BYTE *icu::Calendar::set(_BYTE *this, unsigned int a2, int a3)
{
  if (a2 <= 0x18)
  {
    v10 = v3;
    v11 = v4;
    v7 = this;
    if (this[11])
    {
      v9 = 0;
      this = (*(*this + 256))(this, &v9);
    }

    *(v7 + 4 * a2 + 12) = a3;
    v8 = *(v7 + 240);
    if (v8 == 10000)
    {
      this = icu::Calendar::recalculateStamp(v7);
      v8 = *(v7 + 240);
    }

    *(v7 + 240) = v8 + 1;
    *(v7 + 4 * a2 + 140) = v8;
    *(v7 + a2 + 112) = 1;
    *(v7 + 11) = 0;
    *(v7 + 8) = 0;
  }

  return this;
}

uint64_t icu::Calendar::recalculateStamp(uint64_t this)
{
  v1 = 0;
  *(this + 240) = 1;
  v2 = this + 140;
  while (1)
  {
    v3 = 0;
    v4 = *(this + 240);
    v5 = -1;
    v6 = 10000;
    do
    {
      if (*(v2 + 4 * v3) > v4 && *(v2 + 4 * v3) < v6)
      {
        v5 = v3;
        v6 = *(v2 + 4 * v3);
      }

      ++v3;
    }

    while (v3 != 25);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

    v7 = v4 + 1;
    *(this + 240) = v7;
    *(v2 + 4 * v5) = v7;
    if (++v1 == 25)
    {
      v4 = *(this + 240);
      break;
    }
  }

  *(this + 240) = v4 + 1;
  return this;
}

_BYTE *icu::Calendar::set(icu::Calendar *this, int a2, int a3, int a4)
{
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);

  return icu::Calendar::set(this, 5u, a4);
}

_BYTE *icu::Calendar::set(icu::Calendar *this, int a2, int a3, int a4, int a5, int a6)
{
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);
  icu::Calendar::set(this, 5u, a4);
  icu::Calendar::set(this, 0xBu, a5);

  return icu::Calendar::set(this, 0xCu, a6);
}

_BYTE *icu::Calendar::set(icu::Calendar *this, int a2, int a3, int a4, int a5, int a6, int a7)
{
  icu::Calendar::set(this, 1u, a2);
  icu::Calendar::set(this, 2u, a3);
  icu::Calendar::set(this, 5u, a4);
  icu::Calendar::set(this, 0xBu, a5);
  icu::Calendar::set(this, 0xCu, a6);

  return icu::Calendar::set(this, 0xDu, a7);
}

uint64_t icu::Calendar::getRelatedYear(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  icu::Calendar::complete(this, a2);
  if (*a2 <= 0)
  {
    return *(this + 22);
  }

  else
  {
    return 0;
  }
}

_BYTE *icu::Calendar::clear(_BYTE *result, unsigned int a2)
{
  if (a2 <= 0x18)
  {
    v8 = v2;
    v9 = v3;
    v5 = result;
    if (result[11])
    {
      v7 = 0;
      result = (*(*result + 256))(result, &v7);
    }

    v6 = &v5[4 * a2];
    *(v6 + 3) = 0;
    *(v6 + 35) = 0;
    if (a2 == 23)
    {
      *(v5 + 5) = 0;
      *(v5 + 37) = 0;
      v5[114] = 0;
    }

    else if (a2 == 2)
    {
      *(v5 + 26) = 0;
      *(v5 + 58) = 0;
      v5[135] = 0;
    }

    *(v5 + 2) = 0;
  }

  return result;
}

BOOL icu::Calendar::isSet(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x18)
  {
    return 0;
  }

  if (*(a1 + 11))
  {
    return 1;
  }

  return *(a1 + 4 * a2 + 140) != 0;
}

uint64_t icu::Calendar::newestStamp(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2 <= a3)
  {
    v4 = (a1 + 4 * a2 + 140);
    v5 = a3 - a2 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      if (v7 <= a4)
      {
        a4 = a4;
      }

      else
      {
        a4 = v6;
      }

      --v5;
    }

    while (v5);
  }

  return a4;
}

_BYTE *icu::Calendar::pinField(_BYTE *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (a2 >= 0x19)
    {
      *a3 = 1;
      return result;
    }

    v5 = result;
    v6 = (*(*result + 176))(result, a2, a3);
    result = (*(*v5 + 168))(v5, a2, a3);
    v7 = *&v5[4 * a2 + 12];
    if (v7 <= v6)
    {
      v10 = result;
      if (v7 >= result)
      {
        return result;
      }

      v8 = v5;
      v9 = a2;
    }

    else
    {
      v8 = v5;
      v9 = a2;
      v10 = v6;
    }

    return icu::Calendar::set(v8, v9, v10);
  }

  return result;
}

void icu::Calendar::computeFields(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v19[1] = v5;
    v19[2] = v4;
    v19[5] = v2;
    v19[6] = v3;
    v8 = *(this + 31);
    v19[0] = 0;
    (*(**(this + 33) + 48))(*(this + 33), 0, v19 + 4, v19, a2, v8);
    if (*a2 <= 0)
    {
      v9 = 0;
      v10 = (LODWORD(v19[0]) + HIDWORD(v19[0]));
      v11 = 8912999;
      do
      {
        *(this + v9 + 35) = (v11 & 1) == 0;
        *(this + v9 + 112) = (v11 & 1) == 0;
        v11 >>= 1;
        ++v9;
      }

      while (v9 != 25);
      v18 = 0;
      v12 = sub_195328C88(86400000, &v18, v8 + v10) + 2440588.0;
      if (v12 > 2147483650.0 || v12 < -2147483650.0)
      {
        *a2 = U_ILLEGAL_ARGUMENT_ERROR;
      }

      else
      {
        *(this + 23) = v12;
        *(this + 55) = 1;
        *(this + 132) = 1;
        icu::Calendar::computeGregorianAndDOWFields(this, v12, a2);
        (*(*this + 384))(this, *(this + 23), a2);
        icu::Calendar::computeWeekFields(this, a2);
        if (*a2 <= 0)
        {
          v14 = v18;
          v15 = v18 % 1000;
          v16 = v18 / 1000 % 60;
          *(this + 24) = v18;
          *(this + 16) = v16;
          *(this + 17) = v15;
          *(this + 14) = v14 / 3600000;
          *(this + 15) = v14 / 60000 % 60;
          *(this + 12) = v14 / 43200000;
          *(this + 13) = v14 / 3600000 % 12;
          v17 = v19[0];
          *(this + 18) = HIDWORD(v19[0]);
          *(this + 19) = v17;
        }
      }
    }
  }
}

BOOL icu::Calendar::computeGregorianAndDOWFields(icu::Calendar *this, int a2, UErrorCode *a3)
{
  result = icu::Calendar::computeGregorianFields(this, a2, a3);
  if (*a3 <= 0)
  {
    v7 = (a2 + 1) % 7;
    if (v7 >= 0)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7 + 8;
    }

    *(this + 10) = v8;
    *(this + 42) = 1;
    *(this + 119) = 1;
    v9 = *(this + 70);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    *(this + 53) = 1;
    if (v11 < 0 != v10)
    {
      v12 = v11 + 8;
    }

    else
    {
      v12 = v11 + 1;
    }

    *(this + 130) = 1;
    *(this + 21) = v12;
  }

  return result;
}

uint64_t icu::Calendar::computeWeekFields(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = this;
    LODWORD(v3) = *(this + 88);
    v5 = *(this + 36);
    v4 = *(this + 40);
    v6 = *(this + 280);
    v7 = (v4 - (v5 + v6) + 7001) % 7;
    if (7 - v7 < *(this + 284))
    {
      v8 = (v5 + v7 - 1) / 7;
    }

    else
    {
      v8 = (v5 + v7 - 1) / 7 + 1;
    }

    if (v8)
    {
      v9 = (v4 - v6 + 7) % 7;
      this = (*(*this + 328))(this, *(this + 88));
      v10 = *(v2 + 284);
      v11 = 6 - ((v9 - v5 + this) % 7 + ((v9 - v5 + this) % 7 < 0 ? 7 : 0));
      v12 = v5 - v9 + 7;
      v13 = v12 <= this;
      if (v12 > this)
      {
        v14 = 1;
      }

      else
      {
        v14 = v8;
      }

      if (v13)
      {
        v15 = v3;
      }

      else
      {
        v15 = v3 + 1;
      }

      v16 = v11 >= v10;
      if (v11 >= v10)
      {
        v17 = v14;
      }

      else
      {
        v17 = v8;
      }

      if (v16)
      {
        v18 = v15;
      }

      else
      {
        v18 = v3;
      }

      v19 = *(v2 + 284);
      if (v5 < this - 5)
      {
        v20 = v8;
      }

      else
      {
        v20 = v17;
      }

      if (v5 >= this - 5)
      {
        LODWORD(v3) = v18;
      }
    }

    else
    {
      v3 = (v3 - 1);
      this = (*(*this + 328))(this, v3);
      v21 = (v4 - *(v2 + 280) - (this + v5) + 1) % 7;
      v22 = v21 + (v21 < 0 ? 7 : 0);
      v19 = *(v2 + 284);
      if (7 - v22 < v19)
      {
        v20 = (this + v5 + v22 - 1) / 7;
      }

      else
      {
        v20 = (this + v5 + v22 - 1) / 7 + 1;
      }
    }

    *(v2 + 80) = v3;
    v23 = *(v2 + 32);
    v24 = (v4 - (v23 + *(v2 + 280)) + 1) % 7;
    v25 = v24 + (v24 < 0 ? 7 : 0);
    v26 = v23 - 1;
    if (7 - v25 < v19)
    {
      v27 = (v25 + v26) / 7;
    }

    else
    {
      v27 = (v25 + v26) / 7 + 1;
    }

    *(v2 + 24) = v20;
    *(v2 + 28) = v27;
    *(v2 + 44) = v26 / 7 + 1;
  }

  return this;
}

uint64_t icu::Calendar::julianDayToDayOfWeek(icu::Calendar *this)
{
  v1 = (this + 1) % 7;
  if (v1 >= 0)
  {
    return (v1 + 1);
  }

  else
  {
    return (v1 + 8);
  }
}

BOOL icu::Calendar::computeGregorianFields(_BOOL8 this, int a2, UErrorCode *a3)
{
  v6 = a2;
  if (*a3 <= 0)
  {
    v4 = this;
    v5 = 0;
    this = uprv_add32_overflow(a2, -2440588, &v6);
    if (this)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      return sub_195328E3C(v6, v4 + 76, v4 + 77, v4 + 79, &v5, v4 + 78, a3);
    }
  }

  return this;
}

uint64_t icu::Calendar::weekNumber(icu::Calendar *this, int a2, int a3, int a4)
{
  v4 = (a4 - a3 - *(this + 70) + 1) % 7;
  v5 = v4 + (v4 < 0 ? 7 : 0);
  v6 = (a2 + v5 - 1) / 7;
  if (7 - v5 < *(this + 284))
  {
    return v6;
  }

  else
  {
    return v6 + 1;
  }
}

uint64_t icu::Calendar::handleComputeFields(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(this + 308);
    *(this + 20) = v3;
    *(this + 148) = 1;
    *(this + 114) = 1;
    *(this + 104) = v3;
    *(this + 232) = 1;
    *(this + 135) = 1;
    *(this + 160) = 0x100000001;
    *(this + 117) = 257;
    *(this + 32) = vrev64_s32(*(this + 312));
    v4 = *(this + 304);
    *(this + 88) = v4;
    *(this + 216) = 1;
    *(this + 131) = 1;
    v5 = v4 > 0;
    if (v4 <= 0)
    {
      v4 = 1 - v4;
    }

    *(this + 112) = 1;
    *(this + 12) = v5;
    *(this + 16) = v4;
    *(this + 140) = 1;
    *(this + 144) = 1;
    *(this + 113) = 1;
  }

  return this;
}

uint64_t icu::Calendar::roll(uint64_t result, uint64_t a2, int a3, UErrorCode *a4)
{
  v68 = a3;
  if (a3)
  {
    v5 = a3;
    v7 = result;
    result = icu::Calendar::complete(result, a4);
    if (*a4 <= 0)
    {
      switch(a2)
      {
        case 0:
        case 5:
        case 9:
        case 12:
        case 13:
        case 14:
        case 21:
          v9 = (*(*v7 + 168))(v7, a2, a4);
          result = (*(*v7 + 176))(v7, a2, a4);
          if (*a4 <= 0)
          {
            v10 = result - v9 + 1;
            v11 = (v7[a2 + 3] - v9 + v5) % v10;
            v12 = v9 + v11 + ((v11 >> 63) & v10);
            v13 = v7;
            v14 = a2;
            goto LABEL_10;
          }

          return result;
        case 1:
        case 17:
          v17 = v7[3];
          if (!v17 && (*(*v7 + 264))(v7))
          {
            result = uprv_mul32_overflow(v5, -1, &v68);
            if (result)
            {
              goto LABEL_4;
            }

            v5 = v68;
          }

          v67 = 0;
          result = uprv_add32_overflow(v5, v7[a2 + 3], &v67);
          if (result)
          {
            goto LABEL_4;
          }

          if (v17 > 0 || (v18 = v67, v67 >= 1))
          {
            v66 = (*(*v7 + 176))(v7, a2, a4);
            v18 = v67;
            if (v66 < 0x8000)
            {
              if (v67 <= 0)
              {
                v18 = v67 % v66 + v66;
              }

              else
              {
                if (v67 <= v66)
                {
                  goto LABEL_85;
                }

                v18 = (v67 - 1) % v66 + 1;
              }

LABEL_84:
              v67 = v18;
              goto LABEL_85;
            }

            if (v67 > 0)
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v17)
            {
LABEL_85:
              v32 = v7;
              v33 = a2;
              goto LABEL_86;
            }

            if (((*(*v7 + 264))(v7) & 1) == 0)
            {
              v18 = v67;
              goto LABEL_85;
            }
          }

          v18 = 1;
          goto LABEL_84;
        case 2:
        case 23:
          v19 = (*(*v7 + 176))(v7, 2, a4);
          v20 = (v7[5] + v5) % (v19 + 1);
          icu::Calendar::set(v7, 2u, ((v20 >> 63) & (v19 + 1)) + v20);
          v21 = *(*v7 + 408);

          return v21(v7, 5, a4);
        case 3:
          v41 = v7[70];
          v42 = v7[10];
          v27 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          if (v43 < 0 != v27)
          {
            v44 = v43 + 7;
          }

          else
          {
            v44 = v43;
          }

          v45 = (v44 - v7[9] + 1) % 7;
          v46 = v45 + (v45 < 0 ? 7 : 0);
          if (7 - v46 >= *(v7 + 284))
          {
            v47 = 1;
          }

          else
          {
            v47 = 8;
          }

          v48 = v47 - v46;
          result = (*(*v7 + 176))(v7, 6, a4);
          v49 = v7[9];
          v50 = result + 7 - ((result + v44 - v49) % 7 + v48);
          if (v50)
          {
            v61 = (v49 + -v48 - v5 + 8 * v5) % v50;
            v62 = v48 + v61 + ((v61 >> 63) & v50);
            if (v62 <= 1)
            {
              v62 = 1;
            }

            if (v62 >= result)
            {
              v63 = result;
            }

            else
            {
              v63 = v62;
            }

            icu::Calendar::set(v7, 6u, v63);
            icu::Calendar::clear(v7, 2u);

            return icu::Calendar::clear(v7, 0x17u);
          }

          else
          {
            v8 = U_INTERNAL_PROGRAM_ERROR;
LABEL_5:
            *a4 = v8;
          }

          return result;
        case 4:
          v51 = v7[10];
          v52 = v7[70];
          v27 = __OFSUB__(v51, v52);
          v53 = v51 - v52;
          if (v53 < 0 != v27)
          {
            v54 = v53 + 7;
          }

          else
          {
            v54 = v53;
          }

          v55 = (v54 - v7[8] + 1) % 7;
          v56 = v55 + (v55 < 0 ? 7 : 0);
          if (7 - v56 >= *(v7 + 284))
          {
            v57 = 1;
          }

          else
          {
            v57 = 8;
          }

          v58 = v57 - v56;
          result = (*(*v7 + 176))(v7, 5, a4);
          v59 = v7[8];
          v60 = result + 7 - ((result + v54 - v59) % 7 + v58);
          if (v60)
          {
            v64 = (v59 + -v58 - v5 + 8 * v5) % v60;
            v65 = v58 + v64 + ((v64 >> 63) & v60);
            if (v65 <= 1)
            {
              v65 = 1;
            }

            if (v65 >= result)
            {
              v12 = result;
            }

            else
            {
              v12 = v65;
            }

            v13 = v7;
            v14 = 5;
LABEL_10:

            return icu::Calendar::set(v13, v14, v12);
          }

          else
          {
            *a4 = U_INTERNAL_PROGRAM_ERROR;
          }

          return result;
        case 6:
          v34 = v5 * 86400000.0;
          v38 = *(v7 + 31) - (v7[9] - 1) * 86400000.0;
          v39 = (*(*v7 + 176))(v7, 6, a4) * 86400000.0;
          v37 = *(v7 + 31);
          goto LABEL_41;
        case 7:
        case 18:
          v15 = v7[a2 + 3];
          if (a2 == 7)
          {
            v16 = v7[70];
          }

          else
          {
            v16 = 1;
          }

          v27 = __OFSUB__(v15, v16);
          v28 = v15 - v16;
          if (v28 < 0 != v27)
          {
            v28 += 7;
          }

          v29 = *(v7 + 31);
          v30 = v29 + v28 * -86400000.0;
          v31 = uprv_fmod(v5 * 86400000.0 + v29 - v30, 604800000.0);
          if (v31 < 0.0)
          {
            v31 = v31 + 604800000.0;
          }

          v26 = v31 + v30;
          goto LABEL_44;
        case 8:
          v34 = v5 * 604800000.0;
          v35 = (v7[8] - 1) / 7;
          v36 = (*(*v7 + 176))(v7, 5, a4);
          v37 = *(v7 + 31);
          v38 = v37 - v35 * 604800000.0;
          v39 = (v35 + (v36 - v7[8]) / 7 + 1) * 604800000.0;
LABEL_41:
          v40 = uprv_fmod(v34 + v37 - v38, v39);
          if (v40 < 0.0)
          {
            v40 = v40 + v39;
          }

          v26 = v38 + v40;
          goto LABEL_44;
        case 10:
        case 11:
          TimeInMillis = icu::Calendar::getTimeInMillis(v7, a4);
          v23 = v7[a2 + 3];
          v24 = (*(*v7 + 128))(v7, a2);
          v25 = (v23 + v5) % (v24 + 1);
          v26 = TimeInMillis + (3600000 * ((((v25 >> 63) & (v24 + 1)) + v25) - v23));
LABEL_44:

          return icu::Calendar::setTimeInMillis(v7, v26, a4);
        case 19:
          result = uprv_add32_overflow(v5, v7[22], &v68);
          if (result)
          {
            goto LABEL_4;
          }

          v18 = v68;
          v32 = v7;
          v33 = 19;
LABEL_86:
          icu::Calendar::set(v32, v33, v18);
          (*(*v7 + 408))(v7, 2, a4);
          return (*(*v7 + 408))(v7, 5, a4);
        case 20:
          result = uprv_add32_overflow(v5, v7[23], &v68);
          if (result)
          {
            goto LABEL_4;
          }

          return icu::Calendar::set(v7, 0x14u, v68);
        default:
LABEL_4:
          v8 = U_ILLEGAL_ARGUMENT_ERROR;
          goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t icu::Calendar::add(uint64_t this, unsigned int a2, int a3, UErrorCode *a4)
{
  v25 = a3;
  if (*a4 > 0)
  {
    return this;
  }

  if (a2 >= 0x19)
  {
LABEL_3:
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return this;
  }

  if (!a3)
  {
    return this;
  }

  v7 = 1;
  v8 = this;
  v9 = 0;
  v10 = 0;
  v11 = a3;
  v12 = 604800000.0;
  switch(a2)
  {
    case 0u:
      this = icu::Calendar::complete(this, a4);
      if (*a4 <= 0)
      {
        LODWORD(v24) = *(v8 + 12);
        this = uprv_add32_overflow(SLODWORD(v24), a3, &v24);
        if (this)
        {
          goto LABEL_3;
        }

        icu::Calendar::set(v8, 0, SLODWORD(v24));
        return (*(*v8 + 408))(v8, 0, a4);
      }

      return this;
    case 1u:
    case 0x11u:
      this = icu::Calendar::complete(this, a4);
      if (*a4 > 0 || !*(v8 + 12))
      {
        this = (*(*v8 + 264))(v8);
        if (this)
        {
          this = uprv_mul32_overflow(a3, -1, &v25);
          if (this)
          {
            goto LABEL_3;
          }
        }
      }

      goto LABEL_48;
    case 2u:
    case 0x13u:
    case 0x17u:
LABEL_48:
      v23 = *(v8 + 256);
      *(v8 + 256) = 1;
      if (*a4 > 0)
      {
        return this;
      }

      this = icu::Calendar::complete(v8, a4);
      if (*a4 > 0)
      {
        return this;
      }

      LODWORD(v24) = *(v8 + 4 * a2 + 12);
      this = uprv_add32_overflow(SLODWORD(v24), v25, &v24);
      if (this)
      {
        goto LABEL_3;
      }

      icu::Calendar::set(v8, a2, SLODWORD(v24));
      this = (*(*v8 + 408))(v8, 5, a4);
      if (!v23)
      {
        this = icu::Calendar::complete(v8, a4);
        *(v8 + 256) = 0;
      }

      return this;
    case 3u:
    case 4u:
    case 8u:
      goto LABEL_7;
    case 5u:
    case 6u:
    case 7u:
    case 0x12u:
    case 0x14u:
      v12 = 86400000.0;
      goto LABEL_7;
    case 9u:
      v12 = 43200000.0;
LABEL_7:
      v11 = v12 * v11;
      icu::Calendar::complete(this, a4);
      if (*a4 <= 0)
      {
        v10 = *(v8 + 76);
        icu::Calendar::complete(v8, a4);
        if (*a4 <= 0 && (v10 += *(v8 + 72), icu::Calendar::complete(v8, a4), *a4 <= 0))
        {
          v7 = 0;
          v9 = *(v8 + 96);
        }

        else
        {
          v7 = 0;
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v9 = 0;
        v10 = 0;
      }

      goto LABEL_22;
    case 0xAu:
    case 0xBu:
      v9 = 0;
      v10 = 0;
      v13 = 3600000.0;
      goto LABEL_21;
    case 0xCu:
      v9 = 0;
      v10 = 0;
      v13 = 60000.0;
      goto LABEL_21;
    case 0xDu:
      v9 = 0;
      v10 = 0;
      v13 = 1000.0;
LABEL_21:
      v11 = v11 * v13;
      goto LABEL_22;
    case 0xEu:
    case 0x15u:
LABEL_22:
      TimeInMillis = icu::Calendar::getTimeInMillis(v8, a4);
      this = icu::Calendar::setTimeInMillis(v8, v11 + TimeInMillis, a4);
      if (v7)
      {
        return this;
      }

      if (*a4 <= 0)
      {
        this = icu::Calendar::complete(v8, a4);
        if (*a4 < 1)
        {
          v15 = *(v8 + 96);
          if (v15 == v9)
          {
            return this;
          }

          v18 = (v8 + 248);
          v19 = *(v8 + 248);
          this = icu::Calendar::complete(v8, a4);
          if (*a4 <= 0)
          {
            v16 = *(v8 + 76);
            this = icu::Calendar::complete(v8, a4);
            if (*a4 <= 0)
            {
              v17 = *(v8 + 72);
              goto LABEL_27;
            }
          }

          else
          {
            v16 = 0;
          }

          v17 = 0;
          goto LABEL_27;
        }
      }

      if (!v9)
      {
        return this;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = (v8 + 248);
      v19 = *(v8 + 248);
LABEL_27:
      v20 = v10 - (v17 + v16);
      if (v20)
      {
        if (v20 < 0)
        {
          v21 = v20 + 86400000 * (-v20 / 0x5265C00u);
        }

        else
        {
          v21 = v20 % 0x5265C00u;
        }

        if (v21)
        {
          this = icu::Calendar::setTimeInMillis(v8, v19 + v21, a4);
          if (*a4 <= 0 && (this = icu::Calendar::complete(v8, a4), *a4 <= 0))
          {
            v15 = *(v8 + 96);
          }

          else
          {
            v15 = 0;
          }
        }

        if (v15 != v9)
        {
          v22 = *(v8 + 276);
          if (!v22)
          {
            if ((v21 & 0x80000000) == 0)
            {
              return this;
            }

LABEL_61:

            return icu::Calendar::setTimeInMillis(v8, v19, a4);
          }

          if (v22 != 2)
          {
            if (v22 != 1 || v21 < 1)
            {
              return this;
            }

            goto LABEL_61;
          }

          if (v21 >= 1)
          {
            v19 = *v18;
          }

          v24 = 0.0;
          this = icu::Calendar::getImmediatePreviousZoneTransition(v8, v19, &v24, a4);
          if (*a4 <= 0 && this)
          {
            return icu::Calendar::setTimeInMillis(v8, v24, a4);
          }
        }
      }

      return this;
    default:
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      return this;
  }
}

uint64_t icu::Calendar::getImmediatePreviousZoneTransition(icu::Calendar *this, double a2, double *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v14 = v7;
  v15 = v6;
  v16 = v4;
  v17 = v5;
  result = icu::Calendar::getBasicTimeZone(this);
  if (result)
  {
    v12 = result;
    memset(v13, 0, sizeof(v13));
    icu::TimeZoneTransition::TimeZoneTransition(v13);
    if ((*(*v12 + 120))(v12, 1, v13, a2))
    {
      *a3 = icu::TimeZoneTransition::getTime(v13);
      icu::TimeZoneTransition::~TimeZoneTransition(v13);
      return 1;
    }

    else
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
      icu::TimeZoneTransition::~TimeZoneTransition(v13);
      return 0;
    }
  }

  else
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return result;
}

uint64_t icu::Calendar::fieldDifference(icu::Calendar *a1, uint64_t a2, UErrorCode *a3, double a4)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 >= 0x19)
  {
LABEL_4:
    v4 = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return v4;
  }

  TimeInMillis = icu::Calendar::getTimeInMillis(a1, a3);
  v10 = TimeInMillis;
  if (TimeInMillis >= a4)
  {
    if (TimeInMillis <= a4)
    {
      v12 = 0;
LABEL_33:
      icu::Calendar::setTimeInMillis(a1, v10, a3);
      (*(*a1 + 56))(a1, a2, v12, a3);
      if (*a3 <= 0)
      {
        return v12;
      }

      else
      {
        return 0;
      }
    }

    if (*a3 > 0)
    {
      v12 = 0;
      v15 = -1;
      goto LABEL_22;
    }

    v12 = 0;
    v4 = 0xFFFFFFFFLL;
    while (1)
    {
      icu::Calendar::setTimeInMillis(a1, v10, a3);
      (*(*a1 + 56))(a1, a2, v4, a3);
      v21 = icu::Calendar::getTimeInMillis(a1, a3);
      if (v21 == a4)
      {
        break;
      }

      if (v21 < a4)
      {
        v15 = v4;
        goto LABEL_22;
      }

      v15 = 2 * v4;
      if (!(2 * v4))
      {
        goto LABEL_4;
      }

      v12 = v4;
      v4 = (2 * v4);
      if (*a3 > 0)
      {
LABEL_22:
        while (v12 - v15 >= 2 && *a3 <= U_ZERO_ERROR)
        {
          v4 = (v12 + (v15 - v12) / 2);
          icu::Calendar::setTimeInMillis(a1, v10, a3);
          (*(*a1 + 56))(a1, a2, v4, a3);
          v17 = icu::Calendar::getTimeInMillis(a1, a3);
          if (v17 >= a4)
          {
            v12 = v4;
          }

          else
          {
            v15 = v4;
            v12 = v12;
          }

          if (v17 == a4)
          {
            return v4;
          }
        }

        goto LABEL_33;
      }
    }
  }

  else
  {
    if (*a3 > 0)
    {
      v4 = 0;
      LODWORD(v11) = 1;
LABEL_8:
      v12 = v4;
      while (v11 - v12 >= 2 && *a3 <= U_ZERO_ERROR)
      {
        v4 = v12 + ((v11 - v12) >> 1);
        icu::Calendar::setTimeInMillis(a1, v10, a3);
        (*(*a1 + 56))(a1, a2, v4, a3);
        v14 = icu::Calendar::getTimeInMillis(a1, a3);
        if (v14 <= a4)
        {
          v12 = v4;
        }

        else
        {
          LODWORD(v11) = v12 + ((v11 - v12) >> 1);
          v12 = v12;
        }

        if (v14 == a4)
        {
          return v4;
        }
      }

      goto LABEL_33;
    }

    v19 = 0;
    v11 = 1;
    while (1)
    {
      v4 = v11;
      icu::Calendar::setTimeInMillis(a1, v10, a3);
      (*(*a1 + 56))(a1, a2, v11, a3);
      v20 = icu::Calendar::getTimeInMillis(a1, a3);
      if (v20 == a4)
      {
        break;
      }

      if (v20 > a4)
      {
        v4 = v19;
        goto LABEL_8;
      }

      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_4;
      }

      if ((2 * v11) >= 0x7FFFFFFF)
      {
        v11 = 0x7FFFFFFFLL;
      }

      else
      {
        v11 = (2 * v11);
      }

      v19 = v4;
      if (*a3 >= 1)
      {
        goto LABEL_8;
      }
    }
  }

  return v4;
}

uint64_t icu::Calendar::orphanTimeZone(icu::Calendar *this)
{
  result = icu::TimeZone::createDefault(this);
  if (result)
  {
    v3 = result;
    result = *(this + 33);
    *(this + 33) = v3;
  }

  return result;
}

uint64_t icu::Calendar::setRepeatedWallTimeOption(uint64_t result, unsigned int a2)
{
  if (a2 <= 1)
  {
    *(result + 272) = a2;
  }

  return result;
}

uint64_t icu::Calendar::setFirstDayOfWeek(uint64_t result, int a2)
{
  if ((a2 - 1) <= 6 && *(result + 280) != a2)
  {
    *(result + 280) = a2;
    *(result + 9) = 0;
  }

  return result;
}

uint64_t icu::Calendar::setMinimalDaysInFirstWeek(uint64_t this, unsigned int a2)
{
  if (a2 >= 7)
  {
    v2 = 7;
  }

  else
  {
    v2 = a2;
  }

  if (!a2)
  {
    v2 = 1;
  }

  if (*(this + 284) != v2)
  {
    *(this + 284) = v2;
    *(this + 9) = 0;
  }

  return this;
}

uint64_t icu::Calendar::getDayOfWeekType(_DWORD *a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if ((a2 - 8) <= 0xFFFFFFF8)
  {
    v3 = 0;
    *a3 = 1;
    return v3;
  }

  v4 = a1[72];
  v5 = a1[74];
  if (v4 == v5)
  {
    if (v4 == a2)
    {
LABEL_15:
      if (a1[73])
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 0;
  }

  if (v4 >= v5)
  {
    if (v4 > a2 && v5 < a2)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    if (v4 > a2 || v5 < a2)
    {
      return v3;
    }
  }

  if (v4 == a2)
  {
    goto LABEL_15;
  }

  if (v5 != a2)
  {
    return 1;
  }

  if (a1[75] > 86399999)
  {
    return 1;
  }

  return 3;
}

uint64_t icu::Calendar::getWeekendTransition(_DWORD *a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a1[72] == a2)
  {
    return a1[73];
  }

  if (a1[74] == a2)
  {
    return a1[75];
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t icu::Calendar::isWeekend(icu::Calendar *this, double a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = (*(*this + 24))(this);
  if (v6)
  {
    v7 = v6;
    icu::Calendar::setTimeInMillis(v6, a2, a3);
    if (*a3 < 1)
    {
      v3 = (*(*v7 + 216))(v7);
    }

    else
    {
      v3 = 0;
    }

    (*(*v7 + 8))(v7);
  }

  else
  {
    v3 = 0;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return v3;
}

uint64_t icu::Calendar::isWeekend(icu::Calendar *this)
{
  v8 = U_ZERO_ERROR;
  icu::Calendar::complete(this, &v8);
  v2 = 0;
  if (v8 <= U_ZERO_ERROR)
  {
    v2 = *(this + 10);
  }

  v3 = (*(*this + 192))(this, v2, &v8);
  if (v8 <= U_ZERO_ERROR)
  {
    v5 = v3;
    if ((v3 - 2) >= 2)
    {
      if (v3 == 1)
      {
        return 1;
      }
    }

    else
    {
      v6 = *(this + 24);
      v7 = (*(*this + 200))(this, v2, &v8);
      if (v8 <= U_ZERO_ERROR)
      {
        return (v5 == 2) ^ (v6 < v7);
      }
    }
  }

  return 0;
}

uint64_t icu::Calendar::getMinimum(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 304))(a1, a2, 0);
}

{
  return (*(*a1 + 304))(a1, a2, 0);
}

uint64_t icu::Calendar::getMaximum(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 304))(a1, a2, 3);
}

{
  return (*(*a1 + 304))(a1, a2, 3);
}

uint64_t icu::Calendar::getGreatestMinimum(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 304))(a1, a2, 1);
}

{
  return (*(*a1 + 304))(a1, a2, 1);
}

uint64_t icu::Calendar::getLeastMaximum(uint64_t a1, uint64_t a2)
{
  return (*(*a1 + 304))(a1, a2, 2);
}

{
  return (*(*a1 + 304))(a1, a2, 2);
}

uint64_t icu::Calendar::getLimit(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if (a2 <= 0x15)
  {
    if (((1 << a2) & 0x35FE80) != 0)
    {
      return dword_1954860C8[4 * a2 + a3];
    }

    if (a2 == 4)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          v6 = a1[284];
          v7 = (*(*a1 + 296))(a1, 5, a3);
          if (v3 == 2)
          {
            v8 = 7;
          }

          else
          {
            v8 = 13;
          }

          v9 = (2454267027 * (v8 - v6 + v7)) >> 32;
          return (v9 >> 2) + (v9 >> 31);
        }

        else
        {
          return a1[284] == 1;
        }
      }

      return v3;
    }
  }

  v5 = *(*a1 + 296);

  return v5();
}

uint64_t icu::Calendar::getActualMinimum(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 >= 0x19)
  {
    v3 = 0;
    v6 = 1;
LABEL_5:
    *a3 = v6;
    return v3;
  }

  v3 = (*(*a1 + 144))(a1, a2);
  v8 = (*(*a1 + 112))(a1, a2);
  if (v3 == v8)
  {
    return v3;
  }

  v9 = v8;
  v10 = (*(*a1 + 24))(a1);
  if (!v10)
  {
    v3 = 0;
    v6 = 7;
    goto LABEL_5;
  }

  v11 = v10;
  *(v10 + 256) = 1;
  v12 = v10 + 12;
  v13 = v3;
  while (1)
  {
    v14 = v3;
    icu::Calendar::set(v11, a2, v3);
    if (*a3 <= 0 && (icu::Calendar::complete(v11, a3), *a3 <= 0))
    {
      v15 = *(v12 + 4 * a2);
    }

    else
    {
      v15 = 0;
    }

    if (v3 != v15)
    {
      break;
    }

    LODWORD(v3) = v3 - 1;
    v13 = v14;
    if (v14 <= v9)
    {
      v13 = v3 + 1;
      break;
    }
  }

  (*(*v11 + 8))(v11);
  if (*a3 <= 0)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Calendar::inDaylightTime(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(**(this + 33) + 72))(*(this + 33));
  if (result)
  {
    icu::Calendar::complete(this, a2);
    return *a2 <= 0 && *(this + 19) != 0;
  }

  return result;
}

char *icu::Calendar::getTemporalMonthCode(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  icu::Calendar::complete(this, a2);
  if (*a2 <= 0)
  {
    return off_1E740BE98[*(this + 5)];
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Calendar::setTemporalMonthCode(uint64_t this, const char *__s, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    this = strlen(__s);
    if (this == 3 && *__s == 77)
    {
      v6 = 0;
      while (1)
      {
        this = strcmp(__s, off_1E740BE98[v6]);
        if (!this)
        {
          break;
        }

        if (++v6 == 12)
        {
          goto LABEL_7;
        }
      }

      icu::Calendar::set(v5, 2u, v6);

      return icu::Calendar::set(v5, 0x16u, 0);
    }

    else
    {
LABEL_7:
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::Calendar::validateFields(uint64_t this, UErrorCode *a2)
{
  v2 = *a2;
  if (*a2 <= 0)
  {
    v4 = this;
    v5 = 0;
    do
    {
      if (*(v4 + 4 * v5 + 140) > 1)
      {
        this = (*(*v4 + 368))(v4, v5, a2);
        v2 = *a2;
      }

      if (v2 >= 1)
      {
        break;
      }
    }

    while (v5++ < 0x18);
  }

  return this;
}

_DWORD *icu::Calendar::validateField(_DWORD *result, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return result;
  }

  if (a2 > 0x18)
  {
LABEL_3:
    *a3 = 1;
    return result;
  }

  v5 = result;
  if (a2 != 8)
  {
    if (a2 == 6)
    {
      result = (*(*result + 336))(result, a3);
      if (*a3 > 0)
      {
        return result;
      }

      result = (*(*v5 + 328))(v5, result);
      if (*a3 > 0)
      {
        return result;
      }

      v8 = v5[9];
      goto LABEL_14;
    }

    if (a2 == 5)
    {
      result = (*(*result + 336))(result, a3);
      if (*a3 > 0)
      {
        return result;
      }

      v6 = result;
      v7 = (*(*v5 + 272))(v5, a3);
      result = (*(*v5 + 320))(v5, v6, v7, a3);
      if (*a3 > 0)
      {
        return result;
      }

      v8 = v5[8];
LABEL_14:
      if (v8 < 1 || v8 > result)
      {
        goto LABEL_3;
      }

      return result;
    }

    v12 = (*(*result + 112))(result, a2);
    result = (*(*v5 + 128))(v5, a2);
    if (*a3 > 0)
    {
      return result;
    }

    v10 = v5[a2 + 3];
    v11 = v10 < v12;
LABEL_22:
    if (v11 || v10 > result)
    {
      goto LABEL_3;
    }

    return result;
  }

  if (!result[11])
  {
    goto LABEL_3;
  }

  v9 = (*(*result + 112))(result, 8);
  result = (*(*v5 + 128))(v5, 8);
  if (*a3 <= 0)
  {
    v10 = v5[11];
    v11 = v10 < v9;
    goto LABEL_22;
  }

  return result;
}

uint64_t icu::Calendar::validateField(uint64_t result, unsigned int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    if (a2 > 0x18 || ((v5 = *(result + 4 * a2 + 12), v5 >= a3) ? (v6 = v5 <= a4) : (v6 = 0), !v6))
    {
      *a5 = 1;
    }
  }

  return result;
}

uint64_t icu::Calendar::newerField(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 140 + 4 * a3) <= *(a1 + 140 + 4 * a2))
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t icu::Calendar::resolveFields(icu::Calendar *this, const int (*a2)[12][8])
{
  v2 = *(this + 42);
  if (v2 >= 2 && (v3 = *(this + 40), v3 >= 2) && (v4 = *(this + 37), v4 >= 2) && *(this + 38) == 1 && *(this + 39) == 1 && *(this + 43) == 1)
  {
    v5 = v4 - v2;
    v6 = 1;
    if (v5 >= 0xFFFFFFFD && (v3 - v2) >= 0xFFFFFFFD)
    {
      v6 = 0;
      *(this + 19) = 0;
      *(this + 43) = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  if ((*a2)[0][0] == -1)
  {
    v12 = 25;
    if (v6)
    {
      return v12;
    }

    goto LABEL_39;
  }

  v7 = 0;
  v8 = &(*a2)[0][1];
  do
  {
    v9 = (*a2)[12 * v7][0];
    if (v9 == -1)
    {
      v12 = 25;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 25;
      v13 = v8;
      do
      {
        v14 = (*a2)[12 * v7][8 * v10 + (v9 > 31)];
        if (v14 == -1)
        {
          v15 = 0;
LABEL_23:
          if (v15 > v11)
          {
            if (v9 >= 32 && (v9 &= 0x1Fu, v9 == 5) && *(this + 39) >= *(this + 40))
            {
              LODWORD(v9) = 5;
            }

            else
            {
              v12 = v9;
            }

            if (v12 == v9)
            {
              v11 = v15;
            }
          }
        }

        else
        {
          v15 = 0;
          v16 = &v13[v9 > 31];
          while (1)
          {
            v17 = *(this + v14 + 35);
            if (!v17)
            {
              break;
            }

            if (v17 > v15)
            {
              v15 = v17;
            }

            v18 = *v16++;
            v14 = v18;
            if (v18 == -1)
            {
              goto LABEL_23;
            }
          }
        }

        ++v10;
        v9 = (*a2)[12 * v7][8 * v10];
        v13 += 8;
      }

      while (v9 != -1);
    }

    ++v7;
    v8 += 96;
  }

  while ((*a2)[12 * v7][0] != -1 && v12 == 25);
  if ((v6 & 1) == 0)
  {
LABEL_39:
    *(this + 19) = 0x100000001;
    *(this + 43) = 1;
  }

  return v12;
}

void icu::Calendar::computeTime(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v24[1] = v7;
    v24[2] = v6;
    v24[3] = v5;
    v24[4] = v4;
    v24[9] = v2;
    v24[10] = v3;
    if (*(this + 256) || (icu::Calendar::validateFields(this, a2), *a2 <= 0))
    {
      v10 = icu::Calendar::computeJulianDay(this, a2);
      v11 = *a2;
      if (*a2 <= 0)
      {
        v12 = v10 + -2440588.0;
        v13 = *(this + 56);
        if (v13 < 2)
        {
          goto LABEL_10;
        }

        v14 = 0;
        v15 = 0;
        do
        {
          if (*(this + v14 + 176) > v15)
          {
            v15 = *(this + v14 + 176);
          }

          v14 += 4;
        }

        while (v14 != 24);
        if (v15 <= v13)
        {
          v16 = *(this + 24);
        }

        else
        {
LABEL_10:
          v16 = icu::Calendar::computeMillisInDay(this);
        }

        v17 = v12 * 86400000.0;
        if (*(this + 50) <= 1 && *(this + 51) < 2)
        {
          if (*(this + 256) && *(this + 69) != 2)
          {
            v18 = v17 + v16 - icu::Calendar::computeZoneOffset(this, v17, v16, a2);
            v11 = *a2;
          }

          else
          {
            v19 = icu::Calendar::computeZoneOffset(this, v17, v16, a2);
            v20 = v17 + v16 - v19;
            v24[0] = 0;
            (*(**(this + 33) + 48))(*(this + 33), 0, v24 + 4, v24, a2, v20);
            v11 = *a2;
            v18 = 0.0;
            if (*a2 <= 0)
            {
              if (v19 == LODWORD(v24[0]) + HIDWORD(v24[0]))
              {
                v18 = v20;
              }

              else if (*(this + 256))
              {
                v23 = 0.0;
                ImmediatePreviousZoneTransition = icu::Calendar::getImmediatePreviousZoneTransition(this, v20, &v23, a2);
                v11 = *a2;
                if (ImmediatePreviousZoneTransition)
                {
                  v22 = v11 < U_ILLEGAL_ARGUMENT_ERROR;
                }

                else
                {
                  v22 = 0;
                }

                v18 = v23;
                if (!v22)
                {
                  v18 = 0.0;
                }
              }

              else
              {
                v11 = U_ILLEGAL_ARGUMENT_ERROR;
                *a2 = U_ILLEGAL_ARGUMENT_ERROR;
              }
            }
          }
        }

        else
        {
          v18 = v17 + v16 - *(this + 18) - *(this + 19);
        }

        if (v11 <= U_ZERO_ERROR)
        {
          *(this + 31) = v18;
        }
      }
    }
  }
}

uint64_t icu::Calendar::computeJulianDay(icu::Calendar *this, UErrorCode *a2)
{
  v4 = *(this + 55);
  if (v4 >= 2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (*(this + v5 + 140) > v6)
      {
        v6 = *(this + v5 + 140);
      }

      v5 += 4;
    }

    while (v5 != 36);
    for (i = 0; i != 12; i += 4)
    {
      if (*(this + i + 208) > v6)
      {
        v6 = *(this + i + 208);
      }
    }

    if (*(this + 58) > v6)
    {
      v6 = *(this + 58);
    }

    if (v6 <= v4)
    {
      return *(this + 23);
    }
  }

  v8 = (*(*this + 376))(this);
  v9 = icu::Calendar::resolveFields(this, v8);
  if (v9 == 25)
  {
    v10 = 5;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*this + 344);

  return v11(this, v10, a2);
}

double icu::Calendar::computeMillisInDay(icu::Calendar *this)
{
  v2 = *(this + 45);
  v1 = *(this + 46);
  if (v2 <= *(this + 44))
  {
    v2 = *(this + 44);
  }

  if (v2 <= v1)
  {
    v3 = *(this + 46);
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    if (v1 >= v2)
    {
      v4 = *(this + 14);
    }

    else
    {
      v4 = *(this + 13) + ((*(this + 48) << 31 >> 31) & 0xC);
    }
  }

  else
  {
    v4 = 0.0;
  }

  return ((v4 * 60.0 + *(this + 15)) * 60.0 + *(this + 16)) * 1000.0 + *(this + 17);
}

uint64_t icu::Calendar::computeZoneOffset(icu::Calendar *this, double a2, double a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v19[1] = v7;
  v19[2] = v6;
  v19[7] = v4;
  v19[8] = v5;
  v19[0] = 0;
  v11 = a2 + a3;
  BasicTimeZone = icu::Calendar::getBasicTimeZone(this);
  if (BasicTimeZone)
  {
    if (*(this + 68) == 1)
    {
      v13 = 4;
    }

    else
    {
      v13 = 12;
    }

    if (*(this + 69) == 1)
    {
      v14 = 12;
    }

    else
    {
      v14 = 4;
    }

    (*(*BasicTimeZone + 20))(BasicTimeZone, v14, v13, v19 + 4, v19, a4, v11);
  }

  else
  {
    v15 = *(this + 33);
    (*(*v15 + 48))(v15, 1, v19 + 4, v19, a4, v11);
    if (*(this + 68) == 1 && (v18 = 0, (*(*v15 + 48))(v15, 0, &v18 + 4, &v18, a4, v11 - (LODWORD(v19[0]) + HIDWORD(v19[0])) + -21600000.0), v17 = LODWORD(v19[0]) + HIDWORD(v19[0]) - (HIDWORD(v18) + v18), v17 < 0))
    {
      v16.n128_f64[0] = v11 + v17;
      (*(*v15 + 48))(v15, 1, v19 + 4, v19, a4, v16);
    }

    else if (*(this + 69) == 1)
    {
      v16.n128_f64[0] = v11 - (LODWORD(v19[0]) + HIDWORD(v19[0]));
      (*(*v15 + 48))(v15, 0, v19 + 4, v19, a4, v16);
    }
  }

  return (LODWORD(v19[0]) + HIDWORD(v19[0]));
}

char **icu::Calendar::getBasicTimeZone(icu::Calendar *this)
{
  v1 = *(this + 33);
  if (v1)
  {
    v2 = *v1;
    v3 = **v1;
    {
      v4 = *v2;
      {
        v5 = *v2;
        {
          v6 = *v2;
          {
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t icu::Calendar::handleComputeOrdinalDay(icu::Calendar *this)
{
  if (*(this + 40) < 1)
  {
    return 1;
  }

  else
  {
    return *(this + 8);
  }
}

uint64_t icu::Calendar::handleComputeJulianDay(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v50 = v3;
  v51 = v4;
  v10 = a2 == 8 || (a2 & 0xFFFFFFFE) == 4;
  if (a2 == 3 && *(a1 + 144) <= *(a1 + 208))
  {
    v12 = *(a1 + 80);
  }

  else
  {
    v11 = (*(*a1 + 336))(a1, a3);
    if (*a3 > 0)
    {
      return 0;
    }

    v12 = v11;
  }

  *(a1 + 88) = v12;
  *(a1 + 216) = 1;
  *(a1 + 131) = 1;
  if (v12 >= 0x40000000)
  {
    result = 0;
LABEL_16:
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  if (*(a1 + 11) || *(a1 + 148) || *(a1 + 232))
  {
    v13 = (*(*a1 + 272))(a1, a3);
    if (*a3 >= 1)
    {
      return 0;
    }
  }

  else
  {
    v13 = (*(*a1 + 392))(a1, v12, a3);
    if (*a3 > 0)
    {
      return 0;
    }
  }

  v14 = v13;
  if (v10)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = (*(*a1 + 312))(a1, v12, v15, v10, a3);
  v17 = v16;
  v49 = v16;
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 6)
  {
    v48 = 0;
    v18 = *(a1 + 36);
    goto LABEL_34;
  }

  if (a2 != 5)
  {
    v19 = *(a1 + 280);
    v20 = (v16 + 1 + 1) % 7;
    if (v20 >= 0)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = v20 + 8;
    }

    v22 = __OFSUB__(v21, v19);
    v23 = v21 - v19;
    if (v23 < 0 != v22)
    {
      v24 = v23 + 7;
    }

    else
    {
      v24 = v23;
    }

    LocalDOW = icu::Calendar::getLocalDOW(a1, a3);
    if (*a3 > 0)
    {
      return 0;
    }

    v26 = LocalDOW;
    v27 = LocalDOW - v24;
    v28 = LocalDOW - v24 + 1;
    v48 = v28;
    if (a2 == 8)
    {
      if (v27 >= 0x7FFFFFFF)
      {
        v28 = v27 + 8;
        v48 = v27 + 8;
      }

      if (*(a1 + 172) < 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = *(a1 + 44);
        if (v29 < 0)
        {
          v30 = v28;
          v31 = (*(*a1 + 280))(a1, 0, a3);
          v32 = (*(*a1 + 320))(a1, v12, v31, a3);
          if (*a3 > 0)
          {
            return 0;
          }

          v47 = 0;
          if (uprv_add32_overflow((v32 - v30) / 7, v29 + 1, &v47))
          {
            goto LABEL_35;
          }

          v33 = v47;
          v34 = 7;
LABEL_66:
          if (uprv_mul32_overflow(v33, v34, &v47) || uprv_add32_overflow(v48, v47, &v48) || uprv_add32_overflow(v17, v48, &v49))
          {
            goto LABEL_35;
          }

          return v49;
        }
      }

      v47 = 0;
      v34 = v29 - 1;
    }

    else
    {
      if (a2 == 3)
      {
        if ((v45 = LocalDOW - v24 + 1, !*(a1 + 11)) && !*(a1 + 208) || icu::Calendar::resolveFields(a1, icu::Calendar::kYearPrecedence) != 17 && *(a1 + 208) != 1)
        {
          v44 = *(a1 + 24);
          v35 = (*(*a1 + 312))(a1, (v12 + 1), 0, 0, a3);
          if (*a3 > 0)
          {
            return 0;
          }

          v43 = v35;
          v36 = (v35 + 1 + 1) % 7;
          if (v36 >= 0)
          {
            v37 = v36 + 1;
          }

          else
          {
            v37 = v36 + 8;
          }

          v22 = __OFSUB__(v37, v19);
          v38 = v37 - v19;
          if (v38 < 0 != v22)
          {
            v38 += 7;
          }

          if (v44 == 1)
          {
            if (v38 >= 1 && 7 - v38 >= *(a1 + 284))
            {
              v17 = v35;
              v48 = v26 - v38 + 1;
              v49 = v35;
              v24 = v38;
            }
          }

          else if (v44 >= (*(*a1 + 160))(a1, 3))
          {
            v47 = v45;
            if (7 - v24 < *(a1 + 284))
            {
              v45 = v27 + 8;
              v47 = v27 + 8;
            }

            v46 = 0;
            if (uprv_mul32_overflow(v44 - 1, 7, &v46) || uprv_add32_overflow(v46, v45, &v47))
            {
              *a3 = U_ILLEGAL_ARGUMENT_ERROR;
              return 0;
            }

            if ((v47 + v17) > v43)
            {
              v39 = (*(*a1 + 312))(a1, (v12 - 1), 0, 0, a3);
              v49 = v39;
              if (*a3 > 0)
              {
                return 0;
              }

              v40 = (v39 + 1 + 1) % 7;
              if (v40 >= 0)
              {
                v41 = v40 + 1;
              }

              else
              {
                v41 = v40 + 8;
              }

              v22 = __OFSUB__(v41, v19);
              v42 = v41 - v19;
              if (v42 < 0 != v22)
              {
                v24 = v42 + 7;
              }

              else
              {
                v24 = v42;
              }

              v48 = v26 - v24 + 1;
              v17 = v39;
            }
          }
        }
      }

      if (7 - v24 < *(a1 + 284))
      {
        v48 += 7;
      }

      v47 = *(a1 + 12 + 4 * a2);
      if (uprv_add32_overflow(v47, -1, &v47))
      {
        goto LABEL_35;
      }

      v34 = v47;
    }

    v33 = 7;
    goto LABEL_66;
  }

  if (!*(a1 + 11) && !*(a1 + 160))
  {
    v18 = (*(*a1 + 400))(a1, v12, v14, a3);
    v48 = v18;
    if (*a3 <= 0)
    {
      goto LABEL_34;
    }

    return 0;
  }

  v18 = (*(*a1 + 352))(a1, v16);
  v48 = v18;
LABEL_34:
  if (uprv_add32_overflow(v18, v17, &v48))
  {
LABEL_35:
    result = 0;
    goto LABEL_16;
  }

  return v48;
}

uint64_t icu::Calendar::getLocalDOW(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v10 = 0;
  v7 = icu::Calendar::resolveFields(this, icu::Calendar::kDOWPrecedence);
  if (v7 == 18)
  {
    v8 = *(this + 21);
    v10 = v8;
    v9 = -1;
  }

  else
  {
    if (v7 != 7)
    {
      goto LABEL_9;
    }

    v8 = *(this + 10);
    v10 = v8;
    v9 = -*(this + 70);
  }

  if (uprv_add32_overflow(v8, v9, &v10))
  {
    result = 0;
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

LABEL_9:
  if (v10 % 7 >= 0)
  {
    return (v10 % 7);
  }

  else
  {
    return (v10 % 7 + 7);
  }
}

uint64_t icu::Calendar::handleGetExtendedYearFromWeekFields(icu::Calendar *this, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = icu::Calendar::resolveFields(this, icu::Calendar::kDatePrecedence);
  LocalDOW = icu::Calendar::getLocalDOW(this, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  v11 = LocalDOW;
  v12 = *(this + 70);
  v13 = (*(*this + 312))(this, a2, 0, 0, a4);
  v29 = 0;
  if (uprv_add32_overflow(a2, 1, &v29))
  {
    a2 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return a2;
  }

  v14 = (*(*this + 312))(this, v29, 0, 0, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  v15 = (v13 + 1 + 1) % 7;
  if (v15 >= 0)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = v15 + 8;
  }

  v17 = __OFSUB__(v16, v12);
  v18 = v16 - v12;
  if (v18 < 0 != v17)
  {
    v18 += 7;
  }

  if (v8 != 5)
  {
    if (v8 != 3)
    {
      return a2;
    }

    v19 = *(this + 284);
    v20 = 7 - v18;
    if (a3 == 1)
    {
      v22 = v20 >= v19 && v11 < v18;
      return (a2 - v22);
    }

    v25 = v14;
    if ((*(*this + 160))(this, 3) <= a3)
    {
      v26 = v11 - a3 + 8 * a3 + v13 + v20;
      v27 = v26 - 7;
      v28 = v26 - 14;
      if (v20 < v19)
      {
        v28 = v27;
      }

      if (v28 + 1 < v25)
      {
        return a2;
      }

      else
      {
        return (a2 + 1);
      }
    }

    return a2;
  }

  v23 = (*(*this + 272))(this, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  v24 = v23;
  if (!v23 && (*(*this + 160))(this, 3) <= a3)
  {
    return (a2 + 1);
  }

  if (a3 == 1)
  {
    v22 = v24 != 0;
    return (a2 - v22);
  }

  return a2;
}

uint64_t icu::Calendar::handleGetYearLength(icu::Calendar *this, uint64_t a2)
{
  v6 = 0;
  v4 = (*(*this + 312))(this, (a2 + 1), 0, 0, &v6);
  return v4 - (*(*this + 312))(this, a2, 0, 0, &v6);
}

uint64_t icu::Calendar::getActualMaximum(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 >= 0x19)
  {
    v5 = 1;
LABEL_4:
    *a3 = v5;
    return 0;
  }

  if (a2 <= 0x17)
  {
    if (((1 << a2) & 0x35FE80) != 0)
    {
      v8 = *(*a1 + 128);

      return v8();
    }

    if (a2 == 6)
    {
      v20 = (*(*a1 + 24))(a1);
      if (v20)
      {
        v14 = v20;
        v20[256] = 1;
        (*(*v20 + 288))(v20, 6, 0, a3);
        if (*a3 <= 0 && (icu::Calendar::complete(v14, a3), *a3 <= 0))
        {
          v21 = *(v14 + 22);
        }

        else
        {
          v21 = 0;
        }

        v17 = (*(*a1 + 328))(a1, v21);
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    if (a2 == 23)
    {
      v9 = (*(*a1 + 224))(a1, a3);
      v10 = *a1;
      if (v9)
      {
        v11 = *(v10 + 128);
        v12 = a1;
      }

      else
      {
        v11 = *(v10 + 160);
        v12 = a1;
      }

      return v11(v12, 23);
    }
  }

  if (a2 == 5)
  {
    v13 = (*(*a1 + 24))(a1);
    if (v13)
    {
      v14 = v13;
      v13[256] = 1;
      (*(*v13 + 288))(v13, 5, 0, a3);
      if (*a3 <= 0 && (icu::Calendar::complete(v14, a3), *a3 <= 0))
      {
        v15 = *(v14 + 22);
        icu::Calendar::complete(v14, a3);
        if (*a3 <= 0)
        {
          v16 = *(v14 + 5);
          goto LABEL_23;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = 0;
LABEL_23:
      v17 = (*(*a1 + 320))(a1, v15, v16, a3);
LABEL_32:
      v22 = v17;
      (*(*v14 + 8))(v14);
      return v22;
    }

LABEL_33:
    v5 = 7;
    goto LABEL_4;
  }

  v18 = (*(*a1 + 160))(a1, a2);
  v19 = (*(*a1 + 128))(a1, a2);

  return icu::Calendar::getActualHelper(a1, a2, v18, v19, a3);
}

uint64_t icu::Calendar::getActualHelper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (a2 >= 0x19)
  {
    v5 = 0;
    v8 = 1;
LABEL_5:
    *a5 = v8;
    return v5;
  }

  v5 = a3;
  if (a3 == a4)
  {
    return v5;
  }

  if (a4 <= a3)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 1;
  }

  v11 = (*(*a1 + 24))(a1);
  if (!v11)
  {
    v8 = 7;
    goto LABEL_5;
  }

  v12 = v11;
  icu::Calendar::complete(v11, a5);
  v12[256] = 1;
  (*(*v12 + 288))(v12, a2, a4 <= v5, a5);
  icu::Calendar::set(v12, a2, v5);
  if (*a5 <= 0)
  {
    icu::Calendar::complete(v12, a5);
    if (*a5 <= 0)
    {
      v13 = v12 + 12;
      if (a4 <= v5 || a2 == 4 || *&v13[4 * a2] == v5)
      {
        while (1)
        {
          (*(*v12 + 56))(v12, a2, v10, a5);
          if (*a5 > 0)
          {
            break;
          }

          icu::Calendar::complete(v12, a5);
          if (*a5 > 0)
          {
            break;
          }

          v14 = v5 + v10;
          if (v5 + v10 != *&v13[4 * a2])
          {
            break;
          }

          v5 = (v5 + v10);
          if (a4 == v14)
          {
            v5 = a4;
            break;
          }
        }
      }
    }
  }

  (*(*v12 + 8))(v12);
  return v5;
}

_BYTE *icu::Calendar::prepareGetActual(_BYTE *result, uint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  if (a2 >= 0x19)
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  v7 = result;
  icu::Calendar::set(result, 0x15u, 0);
  if (a2 <= 7)
  {
    if ((a2 - 3) >= 2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_25;
      }

      goto LABEL_13;
    }

    v8 = *(v7 + 70);
    if (a3)
    {
      v11 = (v8 + 6) % 7;
      if (v11 >= 1)
      {
        v8 = (v8 + 6) % 7;
      }

      else
      {
        v8 = v11 + 7;
      }
    }

LABEL_21:
    v9 = v7;
    v10 = 7;
    goto LABEL_24;
  }

  switch(a2)
  {
    case 8:
      icu::Calendar::set(v7, 5u, 1);
      if (*a4 <= 0 && (icu::Calendar::complete(v7, a4), *a4 <= 0))
      {
        v8 = *(v7 + 10);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_21;
    case 0x11:
      v12 = (*(*v7 + 144))(v7, 3);
      icu::Calendar::set(v7, 3u, v12);
LABEL_23:
      v8 = (*(*v7 + 144))(v7, 5);
      v9 = v7;
      v10 = 5;
      goto LABEL_24;
    case 0x13:
LABEL_13:
      v8 = (*(*v7 + 144))(v7, 6);
      v9 = v7;
      v10 = 6;
LABEL_24:
      icu::Calendar::set(v9, v10, v8);
      break;
  }

LABEL_25:
  v13 = (*(*v7 + 144))(v7, a2);

  return icu::Calendar::set(v7, a2, v13);
}

uint64_t icu::Calendar::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  v5[0] = (a1 + 320);
  v5[1] = (a1 + 477);
  return icu::LocaleBased::getLocale(v5, a2, a3, a4);
}

uint64_t icu::Calendar::getLocaleID(uint64_t a1, int a2, int *a3)
{
  v4[0] = a1 + 320;
  v4[1] = a1 + 477;
  return icu::LocaleBased::getLocaleID(v4, a2, a3);
}

uint64_t icu::Calendar::internalSet(uint64_t result, unsigned int a2, int a3)
{
  v3 = result + 4 * a2;
  *(v3 + 12) = a3;
  *(v3 + 140) = 1;
  *(result + a2 + 112) = 1;
  return result;
}

uint64_t icu::Calendar::internalGetMonth(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = icu::Calendar::resolveFields(this, icu::Calendar::kMonthPrecedence);
  result = *a2;
  if (v5 == 2)
  {
    if (*(this + 37) <= 0)
    {
      return result;
    }

    v6 = 20;
  }

  else
  {
    if (*(this + 58) < 1)
    {
      return result;
    }

    v6 = 104;
  }

  return *(this + v6);
}

uint64_t icu::Calendar::internalGetMonth(icu::Calendar *this, uint64_t a2, UErrorCode *a3)
{
  if (icu::Calendar::resolveFields(this, icu::Calendar::kMonthPrecedence) != 2)
  {
    v5 = 104;
    return *(this + v5);
  }

  if (*(this + 37) >= 1)
  {
    v5 = 20;
    return *(this + v5);
  }

  return a2;
}

void sub_1952C1A7C(uint64_t a1)
{
  *a1 = &unk_1F0937840;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

icu::SharedObject **sub_1952C1AD0(icu::SharedObject **result, const icu::CacheKeyBase *a2, void *a3, icu::SharedObject **a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v12 = v5;
    v13 = v6;
    v11 = U_ZERO_ERROR;
    v10 = 0;
    result = icu::UnifiedCache::_get(result, a2, &v10, a3, &v11);
    v9 = v10;
    if (v11 <= U_ZERO_ERROR)
    {
      result = sub_1952769E4(v10, a4);
    }

    if (v9)
    {
      result = icu::SharedObject::removeRef(v9);
    }

    if (*a5 == U_ZERO_ERROR || v11 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      *a5 = v11;
    }
  }

  return result;
}

void sub_1952C1B70(uint64_t a1)
{
  *a1 = &unk_1F0937840;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952C1BD8(uint64_t a1)
{
  v2 = strlen(("N3icu14SharedCalendarE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu14SharedCalendarE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_1952C1CA0(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_1952C1CDC(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

BOOL sub_1952C1D2C(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*a1 - 8);
  v4 = *(*a2 - 8);

  return sub_19520B9EC(v3, v4);
}

uint64_t sub_1952C1D88(uint64_t *a1, int a2)
{
  v2 = a2;
  v4 = *a1;
  if (a2 < 0)
  {
    v5 = *(a1 + 5);
    *(a1 + 3) = v5;
    *(a1 + 28) = v2;
  }

  else
  {
    if (a2)
    {
      v5 = *(a1 + 6);
      *(a1 + 3) = v5;
      *(a1 + 28) = v2;
LABEL_11:
      if (v5 < *(a1 + 4))
      {
        result = (*(*v4 + 80))(v4);
        if ((result & 0x80000000) == 0)
        {
          if (result < 0x10000)
          {
            v7 = 1;
          }

          else
          {
            v7 = 2;
          }

LABEL_16:
          *(a1 + 3) += v7;
          return result;
        }

        *(a1 + 4) = *(a1 + 3);
      }

      *(a1 + 29) = 1;
      return 0xFFFFFFFFLL;
    }

    v5 = *(a1 + 3);
    if ((*(a1 + 28) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 2) < v5)
  {
    result = (*(*v4 + 80))(v4, (v5 - 1));
    if ((result & 0x80000000) == 0)
    {
      if (result >= 0x10000)
      {
        v7 = -2;
      }

      else
      {
        v7 = -1;
      }

      goto LABEL_16;
    }

    *(a1 + 2) = *(a1 + 3);
  }

  return 0xFFFFFFFFLL;
}

icu::Transliterator *sub_1952C1EA4(icu::Transliterator *a1, UChar **a2, uint64_t a3)
{
  result = icu::Transliterator::Transliterator(a1, a2, 0);
  *result = &unk_1F09378C0;
  *(result + 11) = a3;
  return result;
}

icu::Transliterator *sub_1952C1EF8(icu::Transliterator *a1, uint64_t a2)
{
  result = icu::Transliterator::Transliterator(a1, a2);
  *result = &unk_1F09378C0;
  *(result + 11) = *(a2 + 88);
  return result;
}

uint64_t (**sub_1952C1F40(uint64_t (**result)(uint64_t), uint64_t a2, _DWORD *a3, int a4))(uint64_t)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3[2];
  if (v4 < a3[3])
  {
    v8 = result;
    v24 = 0;
    v25 = 0;
    v22 = a2;
    v23 = 0;
    v9 = a3[1];
    LODWORD(v23) = *a3;
    LODWORD(v24) = v9;
    v27 = 0u;
    v28 = 0u;
    v30 = 0;
    v29 = 0u;
    v26 = &unk_1F0935D00;
    LOWORD(v27) = 2;
    v21 = 0;
    while (1)
    {
      HIDWORD(v24) = v4;
      v10 = (*(*a2 + 80))(a2, v4);
      v11 = v10 < 0x10000 ? 1 : 2;
      v12 = (v11 + v4);
      LODWORD(v25) = v11 + v4;
      v13 = v8[11](v10);
      v14 = v13;
      if (a4)
      {
        v15 = BYTE5(v25);
        if (BYTE5(v25))
        {
          break;
        }
      }

      if ((v13 & 0x80000000) != 0)
      {
        v15 = a3[3];
      }

      else
      {
        if (v13 > 0x1F)
        {
          icu::UnicodeString::unBogus(&v26);
          if ((v27 & 0x8000u) == 0)
          {
            v16 = v27 >> 5;
          }

          else
          {
            v16 = DWORD1(v27);
          }

          icu::UnicodeString::replace(&v26, 0, v16, v14);
          if ((v27 & 0x8000) != 0)
          {
            v14 = DWORD1(v27);
          }

          else
          {
            v14 = v27 >> 5;
          }
        }

        else
        {
          v20 = v21;
          icu::UnicodeString::setTo(&v26, 0, &v20, v13);
        }

        (*(*a2 + 32))(a2, HIDWORD(v24), (v11 + v4), &v26);
        v15 = a3[3];
        v17 = v14 - v11;
        if (v14 != v11)
        {
          v12 = v14 + v4;
          v18 = a3[1] + v17;
          a3[1] = v18;
          LODWORD(v24) = v18;
          v15 = v15 + v17;
          a3[3] = v15;
        }
      }

      v4 = v12;
      if (v12 >= v15)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v12) = HIDWORD(v24);
LABEL_23:
    a3[2] = v12;
    result = icu::UnicodeString::~UnicodeString(v15, &v26);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

icu::CECalendar *icu::CECalendar::CECalendar(icu::CECalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F0937970;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

void *icu::CECalendar::CECalendar(icu::CECalendar *this, const icu::CECalendar *a2)
{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F0937970;
  return result;
}

uint64_t icu::CECalendar::handleComputeMonthStart(icu::CECalendar *this, int a2, int a3, signed __int8 a4, UErrorCode *a5)
{
  v5 = ~a3 / 0xDu;
  if (a3 >= 0)
  {
    v6 = a3 % 0xDu;
  }

  else
  {
    v6 = a3 + 1 + 13 * v5 + 12;
  }

  if (a3 >= 0)
  {
    v7 = a3 / 0xDuLL;
  }

  else
  {
    v7 = ~v5;
  }

  v8 = v7 + a2;
  v9 = (*(*this + 456))(this);
  return 30 * v6 + 365 * v8 + v9 + sub_195328C3C(v8, 4) - 1;
}

uint64_t icu::CECalendar::jdToCE(icu::CECalendar *this, int a2, _DWORD *a3, int *a4, int *a5, int *a6, UErrorCode *a7)
{
  v16 = 0;
  v17 = this;
  result = uprv_add32_overflow(this, -a2, &v17);
  if (result)
  {
    *a6 = 1;
  }

  else
  {
    result = sub_195328C58(v17, 1461, &v16);
    v12 = v16;
    v13 = v16 / 365;
    *a3 = v16 / 365 + 4 * result + ((((1282606671 * v16) >> 32) - v16) >> 10) + ((((1282606671 * v16) >> 32) - v16) >> 31);
    v14 = v12 - 365 * v13;
    if (v12 == 1460)
    {
      v15 = 365;
    }

    else
    {
      v15 = v14;
    }

    *a4 = (((34953 * v15) >> 16) >> 4) + (((v15 + ((-30583 * v15) >> 16)) & 0x8000) >> 15);
    *a5 = (v15 - 30 * ((((34953 * v15) >> 16) >> 4) + (((v15 + ((-30583 * v15) >> 16)) & 0x8000) >> 15)) + 1);
  }

  return result;
}

char *icu::CECalendar::getTemporalMonthCode(icu::CECalendar *this, UErrorCode *a2)
{
  if (icu::Calendar::get(this, 2u, a2) == 12)
  {
    return "M13";
  }

  return icu::Calendar::getTemporalMonthCode(this, a2);
}

_BYTE *icu::CECalendar::setTemporalMonthCode(_BYTE *this, const char *__s1, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    if (!strcmp(__s1, "M13"))
    {
      icu::Calendar::set(v5, 2u, 12);

      return icu::Calendar::set(v5, 0x16u, 0);
    }

    else
    {

      return icu::Calendar::setTemporalMonthCode(v5, __s1, a3);
    }
  }

  return this;
}

uint64_t icu::ChineseCalendar::ChineseCalendar(icu::ChineseCalendar *this, const icu::ChineseCalendar *a2)
{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F0937B68;
  *(result + 634) = *(a2 + 634);
  return result;
}

{
  result = icu::Calendar::Calendar(this, a2);
  *result = &unk_1F0937B68;
  *(result + 634) = *(a2 + 634);
  return result;
}

icu::ChineseCalendar *icu::ChineseCalendar::ChineseCalendar(icu::ChineseCalendar *this, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(this, v6, a2, a3);
  *this = &unk_1F0937B68;
  *(this + 634) = 0;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(this, v8, a3);
  return this;
}

void icu::ChineseCalendar::~ChineseCalendar(icu::ChineseCalendar *this)
{
  icu::Calendar::~Calendar(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::ChineseCalendar::handleGetExtendedYear(icu::ChineseCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v14 = v2;
  v15 = v3;
  v7 = icu::Calendar::newestStamp(this, 0, 1, 0);
  v8 = *(this + 54);
  if (v7 <= v8)
  {
    if (v8 < 1)
    {
      return 1;
    }

    else
    {
      return *(this + 22);
    }
  }

  else
  {
    if (*(this + 35) < 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(this + 3);
    }

    v12 = v9;
    if (*(this + 36) < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(this + 4);
    }

    v13 = v10;
    memset(v11, 0, sizeof(v11));
    (*(*this + 464))(v11, this, a2);
    if (*a2 <= 0)
    {
      if (!uprv_add32_overflow(v9, -1, &v12) && !uprv_mul32_overflow(v12, 60, &v12) && !uprv_add32_overflow(v10, v12, &v13) && !uprv_add32_overflow(v13, -2636 - LODWORD(v11[0]), &v13))
      {
        return v13;
      }

      *a2 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    return 0;
  }
}

uint64_t icu::ChineseCalendar::handleGetMonthLength(icu::ChineseCalendar *this, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  memset(v10, 0, sizeof(v10));
  (*(*this + 464))(v10);
  if (*a4 <= 0 && (v8 = (*(*this + 312))(this, a2, a3, 1, a4), *a4 <= 0))
  {
    return sub_1952C29B0(*(&v10[0] + 1), 1, a4, (v8 - 2440562)) - v8 + 2440587;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1952C29B0(uint64_t a1, icu::CalendarAstronomer *a2, int *a3, double a4)
{
  if (*a3 > 0)
  {
    return 0;
  }

  sub_1952C4348(a1, a3, a4);
  if (*a3 > 0)
  {
    return 0;
  }

  v10 = icu::CalendarAstronomer::CalendarAstronomer(v13, v7);
  v12 = icu::CalendarAstronomer::NEW_MOON(v10);
  icu::CalendarAstronomer::getMoonTime(v13, &v12, a2);
  v8 = sub_1952C4410(a1, a3, v11);
  icu::CalendarAstronomer::~CalendarAstronomer(v13);
  return v8;
}

uint64_t icu::ChineseCalendar::handleComputeMonthStart(icu::ChineseCalendar *this, int a2, int a3, _BOOL4 a4, UErrorCode *a5)
{
  v28 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  v7 = a3;
  if (a3 >= 0xC)
  {
    *v27 = a3;
    sub_195328CE8(v27, a3, 12.0);
    if (uprv_add32_overflow(a2, v10, &v28))
    {
      goto LABEL_9;
    }

    v7 = *v27;
  }

  memset(v27, 0, sizeof(v27));
  (*(*this + 464))(v27, this, a5);
  if (*a5 <= 0)
  {
    v26 = 0;
    if (!uprv_add32_overflow(v28, LODWORD(v27[0]) - 1, &v26))
    {
      v12 = (*(*this + 184))(this);
      if (!strcmp(v12, "dangi"))
      {
        v14 = 0;
      }

      else
      {
        v13 = (*(*this + 184))(this);
        v14 = strcmp(v13, "vietnamese") != 0;
      }

      v15 = sub_1952C2CE4(v27, v14, v26, a5);
      v16 = sub_1952C29B0(*(&v27[0] + 1), 1, a5, (v15 + 29 * v7));
      if (*a5 > 0)
      {
        return 0;
      }

      v17 = v16;
      if (a4)
      {
        a4 = *(this + 25) != 0;
      }

      v25 = 0;
      v24 = 0;
      v23 = 0;
      sub_195328E3C(v16, &v26, &v25, &v24 + 1, &v24, &v23, a5);
      v18 = sub_1952C2ED8(v27, v14, v26, v17, a5);
      if (*a5 > 0)
      {
        return 0;
      }

      if (v7 != v18 - 1 || a4 != (v19 & 1))
      {
        v21 = sub_1952C29B0(*(&v27[0] + 1), 1, a5, (v17 + 25));
        if (*a5 > 0)
        {
          return 0;
        }

        v17 = v21;
      }

      v22 = 0;
      if (!uprv_add32_overflow(v17 - 1, 2440588, &v22))
      {
        return v22;
      }
    }

LABEL_9:
    result = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  return 0;
}

uint64_t sub_1952C2CE4(uint64_t a1, int a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 - 1900 <= 0xC8 && a2)
  {
    return (((a3 - 1900) * 365.244) + byte_195487892[a3 - 1900] - 25532);
  }

  v8 = *(a1 + 8);
  result = sub_1952B7F0C(*(a1 + 24), a3, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  if (!result)
  {
    v9 = sub_1952C4504(a1, a3 - 1, a4);
    v10 = sub_1952C4504(a1, a3, a4);
    v11 = sub_1952C29B0(v8, 1, a4, (v9 + 1));
    v12 = sub_1952C29B0(v8, 1, a4, (v11 + 25));
    v13 = sub_1952C29B0(v8, 0, a4, (v10 + 1));
    if (*a4 > 0)
    {
      return 0;
    }

    v14 = (v13 - v11) / 29.5305889;
    v15 = -0.5;
    if (v14 >= 0.0)
    {
      v15 = 0.5;
    }

    if ((v14 + v15) == 12 && (sub_1952C41F0(v8, v11, a4) || sub_1952C41F0(v8, v12, a4)))
    {
      v12 = sub_1952C29B0(v8, 1, a4, (v12 + 25));
    }

    if (*a4 > 0)
    {
      return 0;
    }

    sub_1952B7FAC(*(a1 + 24), a3, v12, a4);
    if (*a4 <= 0)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1952C2ED8(uint64_t a1, int a2, unsigned int a3, int a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v11 = sub_1952C4504(a1, a3, a5);
  if (*a5 <= 0)
  {
    v12 = v11;
    if (v11 <= a4)
    {
      v14 = sub_1952C4504(a1, a3 + 1, a5);
      v13 = v12;
      v12 = v14;
    }

    else
    {
      v13 = sub_1952C4504(a1, a3 - 1, a5);
    }

    if (*a5 <= 0)
    {
      v15 = *(a1 + 8);
      v16 = sub_1952C29B0(v15, 1, a5, (v13 + 1));
      v17 = sub_1952C29B0(v15, 0, a5, (v12 + 1));
      if (*a5 <= 0)
      {
        v20 = v17;
        v21 = sub_1952C29B0(v15, 0, a5, (a4 + 1));
        v22 = v21;
        if (*a5 <= 0)
        {
          v23 = (v20 - v16) / 29.5305889;
          v24 = -0.5;
          if (v23 < 0.0)
          {
            v25 = -0.5;
          }

          else
          {
            v25 = 0.5;
          }

          v26 = (v23 + v25);
          v27 = (v21 - v16) / 29.5305889;
          if (v27 >= 0.0)
          {
            v24 = 0.5;
          }

          v28 = (v27 + v24);
          v29 = sub_1952C2CE4(a1, a2, a3, a5);
          if (*a5 <= 0)
          {
            if (v29 <= a4 || (v29 = sub_1952C2CE4(a1, a2, a3 - 1, a5), *a5 <= 0))
            {
              if (v26 != 12)
              {
LABEL_25:
                if (v28 < 1)
                {
                  v28 += 12;
                }

                v31 = (v22 - v29) / 29.5305889;
                v32 = -0.5;
                if (v31 >= 0.0)
                {
                  v32 = 0.5;
                }

                v33 = (v31 + v32);
                if (v33 >= 0)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = (v33 + 12);
                }

                if (v26 == 12 && sub_1952C41F0(v15, v22, a5))
                {
                  v35 = sub_1952C29B0(v15, 0, a5, (v22 - 25));
                  sub_1952C4154(v15, v16, v35, a5);
                }

                v18 = v34 << 32;
                goto LABEL_19;
              }

              v30 = v29;
              v28 += -sub_1952C4154(v15, v16, v22, a5);
              if (*a5 <= 0)
              {
                v29 = v30;
                goto LABEL_25;
              }
            }
          }

          v18 = 0;
LABEL_19:
          v19 = v28;
          return v19 | v18;
        }
      }
    }
  }

  v18 = 0;
  v19 = 0;
  return v19 | v18;
}

_BYTE *icu::ChineseCalendar::add(_BYTE *this, unsigned int a2, uint64_t a3, UErrorCode *a4)
{
  v6 = this;
  if (a2 == 23 || a2 == 2)
  {
    if (a3)
    {
      this = icu::Calendar::get(this, 5u, a4);
      if (*a4 <= 0)
      {
        v7 = this;
        this = icu::Calendar::get(v6, 0x14u, a4);
        if (*a4 <= 0)
        {
          v8 = *(*v6 + 456);

          return v8(v6, (this - v7 - 2440587), v7, a3, a4);
        }
      }
    }
  }

  else
  {

    return icu::Calendar::add(this, a2, a3, a4);
  }

  return this;
}

uint64_t icu::ChineseCalendar::roll(uint64_t result, uint64_t a2, int a3, UErrorCode *a4)
{
  v6 = result;
  if (a2 == 23 || a2 == 2)
  {
    if (a3)
    {
      memset(v15, 0, sizeof(v15));
      (*(*result + 464))(v15, result, a4);
      v7 = icu::Calendar::get(v6, 0x14u, a4);
      v8 = icu::Calendar::get(v6, 2u, a4);
      v9 = icu::Calendar::get(v6, 5u, a4);
      result = icu::Calendar::get(v6, 0x16u, a4);
      if (*a4 <= 0)
      {
        v10 = *(&v15[0] + 1);
        v11 = v6[634];
        v16 = a3;
        v12 = (v7 - v9 - 2440587);
        if (v11)
        {
          if (result == 1)
          {
            ++v8;
          }

          else
          {
            result = sub_1952C29B0(*(&v15[0] + 1), 1, a4, (v12 - ((v8 + -0.5) * 29.5305889)));
            if (*a4 > 0)
            {
              return result;
            }

            result = sub_1952C4154(v10, result, v12, a4);
            if (*a4 > 0)
            {
              return result;
            }

            v8 += result;
          }

          v13 = 13;
        }

        else
        {
          v13 = 12;
        }

        result = uprv_add32_overflow(a3, v8, &v16);
        if (result)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        else if (*a4 <= 0)
        {
          v14 = (v13 & ((v16 % v13) >> 31)) + v16 % v13;
          if (v14 != v8)
          {
            return (*(*v6 + 456))(v6, v12, v9, (v14 - v8), a4);
          }
        }
      }
    }
  }

  else
  {

    return icu::Calendar::roll(result, a2, a3, a4);
  }

  return result;
}

uint64_t icu::ChineseCalendar::handleComputeFields(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v31 = v3;
    v32 = v4;
    v6 = this;
    v30 = 0;
    this = uprv_add32_overflow(a2, -2440588, &v30);
    if (this)
    {
LABEL_3:
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
      return this;
    }

    v7 = v6[76];
    v8 = v6[77];
    memset(v29, 0, sizeof(v29));
    this = (*(*v6 + 464))(v29, v6, a3);
    if (*a3 <= 0)
    {
      v9 = (*(*v6 + 184))(v6);
      if (!strcmp(v9, "dangi"))
      {
        v11 = 0;
      }

      else
      {
        v10 = (*(*v6 + 184))(v6);
        v11 = strcmp(v10, "vietnamese") != 0;
      }

      this = sub_1952C2ED8(v29, v11, v7, v30, a3);
      if (*a3 <= 0)
      {
        v13 = this;
        v14 = v12;
        *(v6 + 634) = BYTE5(v12) & 1;
        v15 = this >= 11 && v8 <= 5;
        v16 = !v15;
        v17 = v15 ? v7 - LODWORD(v29[0]) : v7 - LODWORD(v29[0]) + 1;
        v18 = v16 ? 2637 : 2636;
        v19 = v30;
        v28 = 0;
        v20 = v7 - 1;
        v21 = sub_195328C58(v7 - 1 + v18, 60, &v28);
        this = sub_1952C2CE4(v29, v11, v7, a3);
        if (*a3 <= 0)
        {
          v22 = this;
          if (v30 < this)
          {
            this = sub_1952C2CE4(v29, v11, v20, a3);
            if (*a3 > 0)
            {
              return this;
            }

            v22 = this;
          }

          ++v28;
          v23 = v30;
          v24 = (*(*v6 + 296))(v6, 19, 0);
          if (v17 < v24)
          {
            v25 = v24;
            this = icu::Calendar::isLenient(v6);
            v17 = v25;
            if (!this)
            {
              goto LABEL_3;
            }
          }

          this = (*(*v6 + 296))(v6, 19, 3);
          if (this < v17)
          {
            v26 = this;
            this = icu::Calendar::isLenient(v6);
            v17 = v26;
            if (!this)
            {
              goto LABEL_3;
            }
          }

          v6[5] = v13 - 1;
          v6[37] = 1;
          *(v6 + 114) = 1;
          v6[25] = BYTE4(v14) & 1;
          v6[26] = HIDWORD(v13);
          *(v6 + 57) = 0x100000001;
          *(v6 + 67) = 257;
          v6[22] = v17;
          v6[54] = 1;
          *(v6 + 131) = 1;
          *(v6 + 35) = 0x100000001;
          *(v6 + 56) = 257;
          v27 = v28;
          v6[3] = v21 + 1;
          v6[4] = v27;
          *(v6 + 117) = 1;
          v6[8] = v19 - v14 + 1;
          v6[9] = v23 - v22 + 1;
          v6[40] = 1;
          v6[41] = 1;
          *(v6 + 118) = 1;
        }
      }
    }
  }

  return this;
}

_BYTE *icu::ChineseCalendar::offsetMonth(icu::ChineseCalendar *this, int a2, int a3, int a4, UErrorCode *a5)
{
  memset(v13, 0, sizeof(v13));
  result = (*(*this + 464))(v13);
  if (*a5 <= 0)
  {
    v11 = a2 + 29.5305889 * (a4 + -0.5);
    if (v11 < -2147483650.0 || v11 > 2147483650.0)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      result = sub_1952C29B0(*(&v13[0] + 1), 1, a5, v11);
      if (*a5 <= 0)
      {
        v12 = a3 + result + 2440587;
        if (a3 < 30)
        {
          return icu::Calendar::set(this, 0x14u, v12);
        }

        icu::Calendar::set(this, 0x14u, a3 + result + 2440586);
        result = icu::Calendar::complete(this, a5);
        if (*a5 <= 0)
        {
          result = (*(*this + 176))(this, 5, a5);
          if (result >= a3 && *a5 <= 0)
          {
            return icu::Calendar::set(this, 0x14u, v12);
          }
        }
      }
    }
  }

  return result;
}

uint64_t icu::ChineseCalendar::getRelatedYear(icu::ChineseCalendar *this, UErrorCode *a2)
{
  v3 = icu::Calendar::get(this, 0x13u, a2);
  v5 = v3;
  if (*a2 > 0)
  {
    return 0;
  }

  if (!uprv_add32_overflow(v3, -2637, &v5))
  {
    return v5;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

double icu::ChineseCalendar::defaultCenturyStart(icu::ChineseCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442B80, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B80))
  {
    sub_1952C3B24();
    icu::umtx_initImplPostInit(dword_1ED442B80);
  }

  return *&qword_1ED441AB8;
}

void sub_1952C3B24()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x280uLL);
  icu::Locale::Locale(v4, "@calendar=chinese", 0, 0, 0);
  icu::ChineseCalendar::ChineseCalendar(v5, v4, &v3);
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441AB8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441AC0 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::Calendar::~Calendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t icu::ChineseCalendar::defaultCenturyStartYear(icu::ChineseCalendar *this)
{
  if (atomic_load_explicit(dword_1ED442B80, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442B80))
  {
    sub_1952C3B24();
    icu::umtx_initImplPostInit(dword_1ED442B80);
  }

  return dword_1ED441AC0;
}

char *icu::ChineseCalendar::getTemporalMonthCode(icu::ChineseCalendar *this, UErrorCode *a2)
{
  v4 = icu::Calendar::get(this, 0x16u, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  if (v4)
  {
    v6 = icu::Calendar::get(this, 2u, a2);
    if (*a2 > 0)
    {
      return 0;
    }

    return off_1E740BFF8[v6];
  }

  else
  {

    return icu::Calendar::getTemporalMonthCode(this, a2);
  }
}

uint64_t icu::ChineseCalendar::setTemporalMonthCode(uint64_t this, const char *__s, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    if (strlen(__s) == 4 && *__s == 77 && __s[3] == 76)
    {
      v6 = 0;
      while (1)
      {
        this = strcmp(__s, off_1E740BFF8[v6]);
        if (!this)
        {
          break;
        }

        if (++v6 == 12)
        {
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
          return this;
        }
      }

      icu::Calendar::set(v5, 2u, v6);

      return icu::Calendar::set(v5, 0x16u, 1);
    }

    else
    {
      icu::Calendar::set(v5, 0x16u, 0);

      return icu::Calendar::setTemporalMonthCode(v5, __s, a3);
    }
  }

  return this;
}

uint64_t icu::ChineseCalendar::internalGetMonth(icu::ChineseCalendar *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::resolveFields(this, icu::Calendar::kMonthPrecedence) == 2)
  {
    return *(this + 5);
  }

  v5 = (*(*this + 24))(this);
  icu::Calendar::set(v5, 2u, 0);
  icu::Calendar::set(v5, 0x16u, 0);
  icu::Calendar::set(v5, 5u, 1);
  (*(*v5 + 72))(v5, 2, *(this + 26), a2);
  if (*a2 <= 0 && (*(this + 25) = icu::Calendar::get(v5, 0x16u, a2), *(this + 57) = 1, *(this + 134) = 1, v6 = icu::Calendar::get(v5, 2u, a2), *a2 <= 0))
  {
    v2 = v6;
    *(this + 5) = v6;
    *(this + 37) = 1;
    *(this + 114) = 1;
  }

  else
  {
    v2 = 0;
  }

  (*(*v5 + 8))(v5);
  return v2;
}

uint64_t icu::ChineseCalendar::internalGetMonth(icu::ChineseCalendar *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v3 = a2;
  if (icu::Calendar::resolveFields(this, icu::Calendar::kMonthPrecedence) == 2)
  {
    if (*(this + 37) >= 1)
    {
      return *(this + 5);
    }

    return v3;
  }

  v7 = *(*this + 272);

  return v7(this, a3);
}

void icu::ChineseCalendar::getSetting(uint64_t a1@<X8>)
{
  *a1 = -2636;
  if (atomic_load_explicit(dword_1EAEC9C00, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9C00))
  {
    sub_1952C46AC();
  }

  *(a1 + 8) = qword_1EAEC9BF8;
  *(a1 + 16) = &qword_1EAEC9BE8;
  *(a1 + 24) = &qword_1EAEC9BF0;
}

uint64_t sub_1952C4154(uint64_t a1, int a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  while (1)
  {
    if (a3 < a2)
    {
      return 0;
    }

    if (sub_1952C41F0(a1, a3, a4))
    {
      break;
    }

    a3 = sub_1952C29B0(a1, 0, a4, (a3 - 25));
    if (*a4 >= 1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1952C41F0(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = sub_1952C4278(a1, a2, a3);
  v8 = sub_1952C29B0(a1, 1, a3, (a2 + 25));
  v9 = sub_1952C4278(a1, v8, a3);
  return *a3 < 1 && v7 == v9;
}

uint64_t sub_1952C4278(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v10[12] = v3;
  v10[13] = v4;
  sub_1952C4348(a1, a3, a2);
  if (*a3 > 0)
  {
    return 0;
  }

  icu::CalendarAstronomer::CalendarAstronomer(v10, v7);
  v8 = ((icu::CalendarAstronomer::getSunLongitude(v10) * 6.0 / 3.14159265) + 2) % 12;
  icu::CalendarAstronomer::~CalendarAstronomer(v10);
  v9 = v8 + 12;
  if (v8 >= 1)
  {
    v9 = v8;
  }

  if (*a3 <= 0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1952C4348(uint64_t result, int *a2, double a3)
{
  if (*a2 <= 0)
  {
    v8[1] = v6;
    v8[2] = v5;
    v8[5] = v3;
    v8[6] = v4;
    if (result)
    {
      v8[0] = 0;
      result = (*(*result + 48))(result, 0, v8 + 4, v8, a2, a3 * 86400000.0);
      *a2;
    }
  }

  return result;
}

double sub_1952C4410(uint64_t a1, int *a2, double a3)
{
  result = 0.0;
  if (*a2 <= 0)
  {
    if (a1)
    {
      v6 = 0;
      (*(*a1 + 48))(a1, 0, &v6 + 4, &v6, a2, a3);
      result = 0.0;
      if (*a2 <= 0)
      {
        return uprv_floor(((v6 + HIDWORD(v6)) + a3) / 86400000.0);
      }
    }

    else
    {

      return uprv_floor((a3 + 28800000.0) / 86400000.0);
    }
  }

  return result;
}

uint64_t sub_1952C4504(uint64_t a1, unsigned int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v22[10] = v6;
  v22[11] = v5;
  v22[16] = v3;
  v22[17] = v4;
  v9 = a2 - 1900;
  if (a2 - 1900 > 0xC8)
  {
    v15 = *(a1 + 8);
    result = sub_1952B7F0C(*(a1 + 16), a2, a3);
    if (*a3 > 0)
    {
      return 0;
    }

    if (result)
    {
      return result;
    }

    v16 = sub_195328D5C(a2, 11, 1);
    sub_1952C4348(v15, a3, v16);
    if (*a3 > 0)
    {
      return 0;
    }

    v18 = icu::CalendarAstronomer::CalendarAstronomer(v22, v17);
    v19 = icu::CalendarAstronomer::WINTER_SOLSTICE(v18);
    SunTime = icu::CalendarAstronomer::getSunTime(v22, v19, 1);
    v21 = sub_1952C4410(v15, a3, SunTime);
    icu::CalendarAstronomer::~CalendarAstronomer(v22);
    if (*a3 > 0)
    {
      return 0;
    }

    if (v21 < -2147483650.0 || v21 > 2147483650.0)
    {
      result = 0;
      *a3 = 1;
    }

    else
    {
      sub_1952B7FAC(*(a1 + 16), a2, v21, a3);
      if (*a3 <= 0)
      {
        return v21;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v10 = (v9 * 365.243 + -0.3);
    result = (v10 - 25211);
    v11 = v9 >> 4;
    if (v9 >> 4 != 2 && v11 != 4)
    {
      v12 = v10 - 25212;
      if ((word_195487878[v11] >> (v9 & 0xF)))
      {
        return v12;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1952C4780()
{
  if (qword_1EAEC9BE8)
  {
    (*(*qword_1EAEC9BE8 + 8))(qword_1EAEC9BE8);
    qword_1EAEC9BE8 = 0;
  }

  if (qword_1EAEC9BF0)
  {
    (*(*qword_1EAEC9BF0 + 8))(qword_1EAEC9BF0);
    qword_1EAEC9BF0 = 0;
  }

  if (qword_1EAEC9BF8)
  {
    (*(*qword_1EAEC9BF8 + 8))(qword_1EAEC9BF8);
    qword_1EAEC9BF8 = 0;
  }

  atomic_store(0, &unk_1EAEC9C00);
  return 1;
}

icu::ChoiceFormat *icu::ChoiceFormat::ChoiceFormat(icu::ChoiceFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  icu::NumberFormat::NumberFormat(this);
  *v6 = &unk_1F0937D68;
  *(v6 + 356) = *a3;
  icu::MessagePattern::MessagePattern((v6 + 360), a3);
  (*(*this + 304))(this, a2, a3);
  return this;
}

UErrorCode *icu::ChoiceFormat::ChoiceFormat(UErrorCode *this, const double *a2, const icu::UnicodeString *a3, uint64_t a4)
{
  icu::NumberFormat::NumberFormat(this);
  *v8 = &unk_1F0937D68;
  *(v8 + 356) = 0;
  icu::MessagePattern::MessagePattern((v8 + 360), this + 89);
  (*(*this + 376))(this, a2, 0, a3, a4, this + 356);
  return this;
}

UErrorCode *icu::ChoiceFormat::ChoiceFormat(UErrorCode *this, const double *a2, const signed __int8 *a3, const icu::UnicodeString *a4, uint64_t a5)
{
  icu::NumberFormat::NumberFormat(this);
  *v10 = &unk_1F0937D68;
  *(v10 + 356) = 0;
  icu::MessagePattern::MessagePattern((v10 + 360), this + 89);
  (*(*this + 376))(this, a2, a3, a4, a5, this + 356);
  return this;
}

icu::ChoiceFormat *icu::ChoiceFormat::ChoiceFormat(icu::ChoiceFormat *this, const icu::ChoiceFormat *a2)
{
  v4 = icu::NumberFormat::NumberFormat(this, a2);
  *v4 = &unk_1F0937D68;
  *(v4 + 356) = *(a2 + 89);
  icu::MessagePattern::MessagePattern((v4 + 360), (a2 + 360));
  return this;
}

{
  v4 = icu::NumberFormat::NumberFormat(this, a2);
  *v4 = &unk_1F0937D68;
  *(v4 + 356) = *(a2 + 89);
  icu::MessagePattern::MessagePattern((v4 + 360), (a2 + 360));
  return this;
}

icu::ChoiceFormat *icu::ChoiceFormat::ChoiceFormat(icu::ChoiceFormat *this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4)
{
  icu::NumberFormat::NumberFormat(this);
  *v8 = &unk_1F0937D68;
  *(v8 + 356) = *a4;
  icu::MessagePattern::MessagePattern((v8 + 360), a4);
  (*(*this + 312))(this, a2, a3, a4);
  return this;
}

uint64_t icu::ChoiceFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::NumberFormat::operator==(a1, a2);
  if (result)
  {

    return icu::MessagePattern::operator==(a1 + 360, a2 + 360);
  }

  return result;
}

uint64_t icu::ChoiceFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::NumberFormat::operator=(a1, a2);
    *(a1 + 356) = *(a2 + 356);
    icu::MessagePattern::operator=(a1 + 360, a2 + 360);
  }

  return a1;
}

void icu::ChoiceFormat::~ChoiceFormat(icu::ChoiceFormat *this)
{
  *this = &unk_1F0937D68;
  icu::MessagePattern::~MessagePattern((this + 360));

  icu::NumberFormat::~NumberFormat(this);
}

{
  *this = &unk_1F0937D68;
  icu::MessagePattern::~MessagePattern((this + 360));

  icu::NumberFormat::~NumberFormat(this);
}

{
  *this = &unk_1F0937D68;
  icu::MessagePattern::~MessagePattern((this + 360));
  icu::NumberFormat::~NumberFormat(this);

  JUMPOUT(0x19A8B2600);
}

icu::ChoiceFormat *icu::ChoiceFormat::dtos(icu::ChoiceFormat *this, double a2, icu::UnicodeString *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  *__str = 0;
  v17 = 0;
  memset(v18, 0, sizeof(v18));
  v4 = __str;
  snprintf(__str, 0x1FuLL, "%.*g", 15, a2);
  while (1)
  {
    v5 = *v4;
    if (v5 != 45)
    {
      if (!*v4)
      {
        goto LABEL_9;
      }

      if ((v5 & 0x80) != 0 || (*(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x400) == 0)
      {
        break;
      }
    }

    ++v4;
  }

  if (v5 != 101)
  {
    *v4++ = 46;
  }

LABEL_9:
  for (i = v4 + 1; *(i - 1); ++i)
  {
    if (*(i - 1) == 101)
    {
      v7 = *i;
      if (v7 == 43 || v7 == 45)
      {
        ++i;
      }

      for (j = i; ; ++j)
      {
        v9 = *j;
        if (v9 != 48)
        {
          break;
        }
      }

      if (*j)
      {
        v10 = j == i;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = 1;
        do
        {
          *i++ = v9;
          v9 = j[v11++];
        }

        while (v9);
        *i = 0;
      }

      break;
    }
  }

  icu::UnicodeString::UnicodeString(v15, __str, 0xFFFFFFFFLL, 0);
  icu::UnicodeString::operator=(this, v15);
  icu::UnicodeString::~UnicodeString(v12, v15);
  v13 = *MEMORY[0x1E69E9840];
  return this;
}

icu::MessagePattern *icu::ChoiceFormat::applyPattern(UErrorCode *this, UChar **a2, UErrorCode *a3)
{
  result = icu::MessagePattern::parseChoiceStyle((this + 90), a2, 0, a3);
  this[89] = *a3;
  return result;
}

icu::MessagePattern *icu::ChoiceFormat::applyPattern(UErrorCode *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  result = icu::MessagePattern::parseChoiceStyle((this + 90), a2, a3, a4);
  this[89] = *a4;
  return result;
}

void *icu::ChoiceFormat::setChoices(void *this, const double *a2, const signed __int8 *a3, const icu::UnicodeString *a4, int a5, UErrorCode *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v6 = a2;
    if (a2 && (v7 = a4) != 0)
    {
      v29 = this;
      v41 = 0u;
      v44 = 0;
      v43 = 0u;
      v42 = 0u;
      v40 = &unk_1F0935D00;
      LOWORD(v41) = 2;
      if (a5 >= 1)
      {
        v9 = 0;
        v31 = a5;
        while (1)
        {
          if (v9)
          {
            LOWORD(v35) = 124;
            icu::UnicodeString::doAppend(&v40, &v35, 0, 1);
          }

          v39 = 0;
          v38 = 0u;
          v37 = 0u;
          v36 = 0u;
          v35 = &unk_1F0935D00;
          LOWORD(v36) = 2;
          if (uprv_isPositiveInfinity(v6[v9]))
          {
            goto LABEL_11;
          }

          if (uprv_isNegativeInfinity(v6[v9]))
          {
            break;
          }

          icu::ChoiceFormat::dtos(&v35, v6[v9], v10);
          if ((v36 & 0x8000u) == 0)
          {
            v12 = v36 >> 5;
          }

          else
          {
            v12 = DWORD1(v36);
          }

          icu::UnicodeString::doAppend(&v40, &v35, 0, v12);
          if (!a3)
          {
            goto LABEL_18;
          }

LABEL_12:
          if (a3[v9])
          {
            v11 = 60;
            goto LABEL_19;
          }

LABEL_18:
          v11 = 35;
LABEL_19:
          v34 = v11;
          icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
          v13 = v7 + 64 * v9;
          if (*(v13 + 4) < 0)
          {
            v14 = *(v13 + 3);
          }

          else
          {
            v14 = (*(v13 + 4) >> 5);
          }

          if (v14 >= 1)
          {
            v15 = 0;
            v16 = 0;
            v17 = v14;
            while (1)
            {
              v18 = *(v13 + 4);
              v19 = *(v13 + 4) < 0 ? *(v13 + 3) : v18 >> 5;
              if (v15 >= v19)
              {
                break;
              }

              v20 = v13 + 10;
              if ((v18 & 2) == 0)
              {
                v20 = *(v13 + 3);
              }

              v21 = *&v20[2 * v15];
              if (v21 == 39 && v16 == 0)
              {
                LOWORD(v21) = 39;
                v34 = 39;
                icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
                v16 = 0;
LABEL_46:
                v34 = v21;
                v24 = &v40;
                goto LABEL_47;
              }

              if (v21 != 124 || v16)
              {
                if (v21 == 123)
                {
                  ++v16;
                  goto LABEL_46;
                }

LABEL_38:
                v26 = v21 == 125 && v16 > 0;
                v16 -= v26;
                goto LABEL_46;
              }

              v34 = 39;
              v23 = icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
              v34 = 124;
              v24 = icu::UnicodeString::doAppend(v23, &v34, 0, 1);
              v34 = 39;
LABEL_47:
              icu::UnicodeString::doAppend(v24, &v34, 0, 1);
              if (v17 == ++v15)
              {
                goto LABEL_51;
              }
            }

            v21 = 0xFFFF;
            goto LABEL_38;
          }

LABEL_51:
          icu::UnicodeString::~UnicodeString(v14, &v35);
          ++v9;
          v6 = a2;
          v7 = a4;
          if (v9 == v31)
          {
            goto LABEL_52;
          }
        }

        v34 = 45;
        icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
LABEL_11:
        v34 = 8734;
        icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
        if (!a3)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

LABEL_52:
      (*(*v29 + 304))(v29, &v40, a6);
      this = icu::UnicodeString::~UnicodeString(v27, &v40);
    }

    else
    {
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UnicodeString *icu::ChoiceFormat::format(icu::ChoiceFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  if (!*(this + 114))
  {
    return a3;
  }

  SubMessage = icu::ChoiceFormat::findSubMessage((this + 360), 0, a2);
  if (*(this + 92) != 1)
  {
    v9 = *(this + 56);
    v10 = v9 + 16 * SubMessage;
    v11 = *(v10 + 4) + *(v10 + 8);
    v12 = *(v10 + 12);
    if (v12 <= SubMessage)
    {
      v12 = SubMessage;
    }

    icu::UnicodeString::doAppend(a3, (this + 376), v11, (*(v9 + 16 * v12 + 4) - v11));
    return a3;
  }

  return icu::MessageImpl::appendSubMessageWithoutSkipSyntax((this + 360), SubMessage, a3, v7);
}

uint64_t icu::ChoiceFormat::findSubMessage(icu::ChoiceFormat *this, const icu::MessagePattern *a2, double a3)
{
  v3 = *(this + 24);
  v4 = a2 + 2;
  v5 = *(this + 11);
  if (*(v5 + 16 * v4 + 12) <= v4)
  {
    v6 = a2 + 2;
  }

  else
  {
    v6 = *(v5 + 16 * v4 + 12);
  }

  if (v6 + 1 < v3)
  {
    v7 = (v5 + 16 * (v6 + 1));
    if (*v7 != 6)
    {
      v10 = this + 26;
      do
      {
        NumericValue = icu::MessagePattern::getNumericValue(this, v7);
        v12 = *(this + 11);
        v13 = *(v12 + 16 * v6 + 36);
        v14 = *(this + 12);
        if ((v14 & 0x8000u) == 0)
        {
          v15 = v14 >> 5;
        }

        else
        {
          v15 = *(this + 7);
        }

        if (v15 > v13 && ((v14 & 2) != 0 ? (v16 = v10) : (v16 = *(this + 5)), *&v16[2 * v13] == 60))
        {
          if (NumericValue >= a3)
          {
            return v4;
          }
        }

        else if (NumericValue > a3)
        {
          return v4;
        }

        v4 = v6 + 3;
        if (*(v12 + 16 * v4 + 12) <= v4)
        {
          v6 += 3;
        }

        else
        {
          v6 = *(v12 + 16 * v4 + 12);
        }

        if (v6 + 1 >= v3)
        {
          break;
        }

        v7 = (v12 + 16 * (v6 + 1));
      }

      while (*v7 != 6);
    }
  }

  return v4;
}

icu::UnicodeString *icu::ChoiceFormat::format(icu::ChoiceFormat *this, const icu::Formattable *a2, unsigned int a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  if ((a3 & 0x80000000) != 0)
  {
    v13 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_11:
    *a6 = v13;
    return a4;
  }

  if (!*(this + 114))
  {
    v13 = U_INVALID_STATE_ERROR;
    goto LABEL_11;
  }

  if (a3)
  {
    v11 = a3;
    do
    {
      Double = icu::Formattable::getDouble(a2, a6);
      if (*a6 <= 0)
      {
        (*(*this + 64))(this, a4, a5, Double);
      }

      a2 = (a2 + 112);
      --v11;
    }

    while (v11);
  }

  return a4;
}

uint64_t icu::ChoiceFormat::parse(icu::ChoiceFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4, icu::ParsePosition *a5)
{
  v6 = icu::ChoiceFormat::parseArgument((this + 360), 0, a2, a4, a5);

  return icu::Formattable::setDouble(a3, v6);
}

double icu::ChoiceFormat::parseArgument(icu::ChoiceFormat *this, const icu::MessagePattern *a2, uint64_t a3, const icu::UnicodeString *a4, icu::ParsePosition *a5)
{
  v7 = a2;
  v9 = *(a4 + 2);
  NaN = uprv_getNaN();
  v11 = *(this + 24);
  if (v11 <= v7)
  {
    goto LABEL_14;
  }

  v12 = v9;
  do
  {
    v13 = (*(this + 11) + 16 * v7);
    if (*v13 == 6)
    {
      break;
    }

    NumericValue = icu::MessagePattern::getNumericValue(this, v13);
    v15 = (v7 + 2);
    v16 = *(*(this + 11) + 16 * v15 + 12) <= v7 + 2 ? v15 : *(*(this + 11) + 16 * (v7 + 2) + 12);
    matched = icu::ChoiceFormat::matchStringUntilLimitPart(this, v15, v16, a3, v9);
    if ((matched & 0x80000000) == 0 && matched + v9 > v12)
    {
      v18 = *(a3 + 8);
      v19 = v18;
      v20 = v18 >> 5;
      if (v19 < 0)
      {
        v20 = *(a3 + 12);
      }

      NaN = NumericValue;
      v12 = matched + v9;
      if (matched + v9 == v20)
      {
        break;
      }
    }

    v7 = v16 + 1;
  }

  while (v7 < v11);
  if (v12 == v9)
  {
LABEL_14:
    *(a4 + 3) = v9;
  }

  else
  {
    *(a4 + 2) = v12;
  }

  return NaN;
}

uint64_t icu::ChoiceFormat::matchStringUntilLimitPart(icu::ChoiceFormat *this, const icu::MessagePattern *a2, int a3, uint64_t a4, const icu::UnicodeString *a5)
{
  v5 = a5;
  LODWORD(v8) = 0;
  v9 = *(this + 11);
  v10 = a2;
  v11 = *(v9 + 16 * a2 + 4) + *(v9 + 16 * a2 + 8);
  v12 = this + 26;
  v13 = -a3;
  while (1)
  {
    v14 = v10 + 1;
    v15 = v9 + 16 * v10 + 24;
    do
    {
      v10 = v14;
      v16 = v15;
      ++v14;
      v17 = v13 + v14;
      if (v13 + v14 == 1)
      {
        break;
      }

      v15 += 16;
    }

    while (*(v16 - 2) != 2);
    v18 = *(v16 - 1);
    v19 = v18 - v11;
    if (v18 == v11)
    {
      goto LABEL_25;
    }

    v20 = *(this + 12);
    if ((v20 & 1) == 0)
    {
      break;
    }

    if ((*(a4 + 8) & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_25:
    v8 = (v19 + v8);
    if (v17 == 1)
    {
      return v8;
    }

    v11 = *(v16 - 1) + *v16;
    v9 = *(this + 11);
  }

  if ((v20 & 0x8000u) == 0)
  {
    v21 = v20 >> 5;
  }

  else
  {
    v21 = *(this + 7);
  }

  if (v11 < 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
    if (v21 >= v11)
    {
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_19:
      v23 = 0;
      goto LABEL_20;
    }
  }

  v11 = v22;
  if (v19 < 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v23 = v21 - v11;
  v24 = v19;
  if (v23 < v19)
  {
LABEL_20:
    v24 = v23;
  }

  if ((v20 & 2) != 0)
  {
    v25 = v12;
  }

  else
  {
    v25 = *(this + 5);
  }

  if (!icu::UnicodeString::doCompare(a4, v5, v19, v25, v11, v24))
  {
    goto LABEL_25;
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::CollationElementIterator::CollationElementIterator(uint64_t this, uint64_t a2)
{
  *this = &unk_1F0937F10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 32) = 0;
  *(this + 40) = &unk_1F0935D00;
  *(this + 48) = 2;
  return icu::CollationElementIterator::operator=(this, a2);
}

{
  *this = &unk_1F0937F10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  *(this + 32) = 0;
  *(this + 40) = &unk_1F0935D00;
  *(this + 48) = 2;
  return icu::CollationElementIterator::operator=(this, a2);
}

uint64_t icu::CollationElementIterator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      v5 = *v4;
      v6 = **v4;
      {
        operator new();
      }

      v7 = *v5;
      {
        operator new();
      }
    }

    if (*(a2 + 28) < 0)
    {
      v9 = *(a2 + 32);
      if (v9)
      {
        if (*(v9 + 2))
        {
          v11 = U_ZERO_ERROR;
          v10 = *(a1 + 32);
          if (!v10)
          {
            operator new();
          }

          icu::UVector32::assign(v10, v9, &v11);
        }
      }
    }
  }

  return a1;
}

void icu::CollationElementIterator::~CollationElementIterator(icu::CollationElementIterator *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((this + 40));

  icu::UObject::~UObject(this);
}

{
  icu::CollationElementIterator::~CollationElementIterator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::CollationElementIterator::getOffset(icu::CollationElementIterator *this)
{
  if ((*(this + 28) & 0x80000000) == 0)
  {
    return (*(**(this + 1) + 40))();
  }

  v3 = *(this + 4);
  if (!v3)
  {
    return (*(**(this + 1) + 40))();
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return (*(**(this + 1) + 40))();
  }

  result = 0;
  if (*(this + 6))
  {
    v5 = *(*(this + 1) + 24) + 1;
  }

  else
  {
    v5 = *(*(this + 1) + 24);
  }

  if ((v5 & 0x80000000) == 0 && v4 > v5)
  {
    return *(*(v3 + 24) + 4 * v5);
  }

  return result;
}

uint64_t icu::CollationElementIterator::next(icu::CollationElementIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 28) < 2)
  {
    if (*(this + 28) >= 2u)
    {
      *a2 = U_INVALID_STATE_ERROR;
      return 0xFFFFFFFFLL;
    }

    *(this + 28) = 2;
  }

  else
  {
    result = *(this + 6);
    if (result)
    {
      *(this + 6) = 0;
      return result;
    }
  }

  v4 = *(this + 1);
  if (*(v4 + 92) == *(v4 + 6))
  {
    *(v4 + 6) = 0;
    *(v4 + 92) = 0;
  }

  v5 = sub_1952C5F10(v4, a2);
  if (v5 == 0x101000100)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = (v5 >> 8) & 0xFF00 | (HIDWORD(v5) << 16);
  result = HIDWORD(v5) & 0xFFFF0000 | WORD1(v5) & 0xFF00 | BYTE1(v5);
  v8 = v7 & 0xFFFFFFC0 | v6 & 0x3F;
  if (v8)
  {
    *(this + 6) = v8 | 0xC0;
  }

  return result;
}

unint64_t sub_1952C5F10(icu::CollationIterator::CEBuffer *this, UErrorCode *a2)
{
  v4 = (this + 24);
  v3 = *(this + 6);
  v5 = *(this + 92);
  if (v5 < v3)
  {
    *(this + 92) = v5 + 1;
    return *(*(this + 4) + 8 * v5);
  }

  if (v3 >= 40)
  {
    if (!icu::CollationIterator::CEBuffer::ensureAppendCapacity((this + 24), 1, a2))
    {
      return 0x101000100;
    }

    v3 = *v4;
  }

  *(this + 6) = v3 + 1;
  v13 = 0;
  v8 = (*(*this + 64))(this, &v13, a2);
  v9 = v8;
  if (v8 <= 0xBFu)
  {
LABEL_7:
    v10 = *(this + 92);
    *(this + 92) = v10 + 1;
    result = (v8 << 16) & 0xFF000000 | (((v8 & 0xFFFF0000) >> 16) << 48) | (v9 << 8);
    *(*(this + 4) + 8 * v10) = result;
    return result;
  }

  if (v8 == 192)
  {
    if (v13 < 0)
    {
      result = 0x101000100;
      v12 = *(this + 92);
      *(this + 92) = v12 + 1;
      goto LABEL_18;
    }

    v11 = *(*(this + 2) + 32);
    v8 = sub_1952C6CA0(v11, v13);
    v9 = v8;
    if (v8 <= 0xBFu)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = *(this + 2);
  }

  if (v9 != 193)
  {
    return icu::CollationIterator::nextCEFromCE32(this, v11, v13, v8, a2);
  }

  v12 = *(this + 92);
  *(this + 92) = v12 + 1;
  result = ((v8 - 193) << 32) | 0x5000500;
LABEL_18:
  *(*(this + 4) + 8 * v12) = result;
  return result;
}

uint64_t icu::CollationElementIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 != v5)
  {
    result = icu::RuleBasedCollator::operator==(v4, v5);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(a1 + 28);
  if (v7 == 1)
  {
    v7 = 0;
  }

  v8 = *(a2 + 28);
  if (v8 == 1)
  {
    v8 = 0;
  }

  if (v7 != v8)
  {
    return 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    if (*(a2 + 48))
    {
LABEL_27:
      v14 = *(a2 + 8);
      v15 = *(**(a1 + 8) + 24);

      return v15();
    }

    return 0;
  }

  if ((v9 & 0x8000) != 0)
  {
    v10 = *(a1 + 52);
  }

  else
  {
    v10 = v9 >> 5;
  }

  result = 0;
  v11 = *(a2 + 48);
  if ((v11 & 0x8000u) == 0)
  {
    v12 = v11 >> 5;
  }

  else
  {
    v12 = *(a2 + 52);
  }

  if ((v11 & 1) == 0 && v10 == v12)
  {
    v13 = (v11 & 2) != 0 ? (a2 + 50) : *(a2 + 64);
    result = icu::UnicodeString::doEquals(a1 + 40, v13, v10);
    if (result)
    {
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t icu::CollationElementIterator::previous(icu::CollationElementIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 28) < 0)
  {
    v2 = *(this + 6);
    if (v2)
    {
      *(this + 6) = 0;
      return v2;
    }

LABEL_15:
    v8 = *(this + 4);
    if (!v8)
    {
      operator new();
    }

    v9 = *(this + 1);
    if (*(v9 + 6))
    {
      v10 = 0;
    }

    else
    {
      v10 = (*(*v9 + 40))(v9);
      v9 = *(this + 1);
      v8 = *(this + 4);
    }

    v11 = icu::CollationIterator::previousCE(v9, v8, a2);
    if (v11 == 0x101000100)
    {
      return 0xFFFFFFFFLL;
    }

    v2 = HIDWORD(v11) & 0xFFFF0000 | WORD1(v11) & 0xFF00 | BYTE1(v11);
    v12 = (v11 >> 8) & 0xFF00 | (HIDWORD(v11) << 16) | v11 & 0x3F;
    if (!v12)
    {
      return v2;
    }

    v13 = *(this + 4);
    if (*(v13 + 8))
    {
      goto LABEL_33;
    }

    v14 = (*(**(this + 1) + 40))(*(this + 1));
    v15 = *(v13 + 8);
    if (v15 < -1 || *(v13 + 12) <= v15)
    {
      if (!icu::UVector32::expandCapacity(v13, v15 + 1, a2))
      {
        goto LABEL_28;
      }

      v15 = *(v13 + 8);
    }

    *(*(v13 + 24) + 4 * v15) = v14;
    ++*(v13 + 8);
LABEL_28:
    v16 = *(this + 4);
    v17 = *(v16 + 8);
    if (v17 >= -1 && *(v16 + 12) > v17)
    {
      goto LABEL_32;
    }

    if (icu::UVector32::expandCapacity(*(this + 4), v17 + 1, a2))
    {
      v17 = *(v16 + 8);
LABEL_32:
      *(*(v16 + 24) + 4 * v17) = v10;
      ++*(v16 + 8);
    }

LABEL_33:
    *(this + 6) = v2;
    return v12 | 0xC0u;
  }

  if (*(this + 28) == 1)
  {
LABEL_14:
    *(this + 28) = -1;
    goto LABEL_15;
  }

  if (!*(this + 28))
  {
    v6 = *(this + 1);
    if (*(this + 24) < 0)
    {
      v7 = *(this + 13);
    }

    else
    {
      v7 = *(this + 24) >> 5;
    }

    (*(*v6 + 32))(v6, v7);
    goto LABEL_14;
  }

  *a2 = U_INVALID_STATE_ERROR;
  return 0xFFFFFFFFLL;
}

uint64_t icu::CollationElementIterator::reset(icu::CollationElementIterator *this)
{
  result = (*(**(this + 1) + 32))(*(this + 1), 0);
  *(this + 6) = 0;
  *(this + 28) = 0;
  return result;
}

unint64_t icu::CollationElementIterator::setOffset(unint64_t this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (a2 < 1)
    {
      goto LABEL_29;
    }

    v6 = *(this + 48) < 0 ? *(this + 52) : *(this + 48) >> 5;
    if (v6 <= a2)
    {
      goto LABEL_29;
    }

    v7 = a2;
    do
    {
      v8 = *(v4 + 48);
      if (*(v4 + 48) < 0)
      {
        v9 = *(v4 + 52);
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v9 <= v7)
      {
        v11 = 0xFFFF;
      }

      else
      {
        v10 = v4 + 50;
        if ((v8 & 2) == 0)
        {
          v10 = *(v4 + 64);
        }

        v11 = *(v10 + 2 * v7);
      }

      if (!icu::RuleBasedCollator::isUnsafe(*(v4 + 16), v11))
      {
        break;
      }

      v12 = (v11 & 0xFC00);
      if (v12 == 55296)
      {
        v13 = *(v4 + 16);
        v14 = icu::UnicodeString::char32At(v12, (v4 + 40), v7);
        if (!icu::RuleBasedCollator::isUnsafe(v13, v14))
        {
          break;
        }
      }

      v7 = (v7 - 1);
    }

    while (v7);
    if (v7 >= a2)
    {
LABEL_29:
      v7 = a2;
LABEL_30:
      this = (*(**(v4 + 8) + 32))(*(v4 + 8), v7);
      *(v4 + 24) = 0;
      *(v4 + 28) = 1;
    }

    else
    {
LABEL_21:
      (*(**(v4 + 8) + 32))(*(v4 + 8), v7);
      while (1)
      {
        this = sub_1952C5F10(*(v4 + 8), a3);
        if (*a3 > 0)
        {
          break;
        }

        v15 = (*(**(v4 + 8) + 40))(*(v4 + 8));
        if (v15 != v7)
        {
          if (v15 <= a2)
          {
            v7 = v15;
          }

          else
          {
            v7 = v7;
          }

          if (v15 < a2)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }
    }
  }

  return this;
}

uint64_t icu::CollationElementIterator::setText(uint64_t this, UChar **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = this;
    icu::UnicodeString::operator=((this + 40), a2);
    v4 = *(v3 + 48);
    if ((v4 & 0x11) == 0 && (v4 & 2) == 0)
    {
      v5 = *(v3 + 64);
    }

    if ((*(*(*(v3 + 16) + 16) + 24) & 1) == 0)
    {
      operator new();
    }

    operator new();
  }

  return this;
}

uint64_t icu::CollationElementIterator::setText(uint64_t this, icu::CharacterIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    (*(*a2 + 208))(a2, this + 40);

    return icu::CollationElementIterator::setText(v5, (v5 + 40), a3);
  }

  return this;
}

uint64_t icu::CollationElementIterator::strengthOrder(icu::CollationElementIterator *this, uint64_t a2)
{
  v2 = *(*(*(this + 2) + 16) + 24) >> 12;
  if (v2 == 1)
  {
    return a2 & 0xFFFFFF00;
  }

  if (!v2)
  {
    return a2 & 0xFFFF0000;
  }

  return a2;
}

icu::CollationElementIterator *icu::CollationElementIterator::CollationElementIterator(icu::CollationElementIterator *this, UChar **a2, const icu::RuleBasedCollator *a3, UErrorCode *a4)
{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

icu::CollationElementIterator *icu::CollationElementIterator::CollationElementIterator(icu::CollationElementIterator *this, const icu::CharacterIterator *a2, const icu::RuleBasedCollator *a3, UErrorCode *a4)
{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

{
  *this = &unk_1F0937F10;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::CollationElementIterator::setText(this, a2, a4);
  return this;
}

void **icu::CollationElementIterator::computeMaxExpansions(icu::CollationElementIterator *this, const icu::CollationData *a2, UErrorCode *a3)
{
  v16[41] = *MEMORY[0x1E69E9840];
  if (*a2 <= 0 && (v5 = uhash_open(uhash_hashLong, uhash_compareLong, uhash_compareLong, a2), *a2 <= 0))
  {
    v6 = v5;
    v12[0] = &unk_1F0937F50;
    v12[1] = v5;
    v12[2] = a2;
    sub_1952C6ED4(v13, 0, 0, v12, 1);
    sub_1952DF260(v13, this, a2);
    icu::UnicodeString::~UnicodeString(v9, v16);
    icu::UnicodeSet::~UnicodeSet(v10, &v15);
    icu::UnicodeSet::~UnicodeSet(v11, &v14);
    if (*a2 >= 1)
    {
      uhash_close(v6);
      v6 = 0;
    }

    nullsub_17(v12);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::CollationElementIterator::getMaxExpansion(icu::CollationElementIterator *this, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = *(*(*(this + 2) + 24) + 384);
  if (!v3 || (result = uhash_igeti(v3, a2), !result))
  {
    if ((~a2 & 0xC0) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t icu::CollationElementIterator::getMaxExpansion(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!a1 || (result = uhash_igeti(a1, a2), !result))
  {
    if ((~a2 & 0xC0) != 0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1952C6CA0(uint64_t *a1, unsigned int a2)
{
  v2 = *a1;
  if (a2 >> 11 > 0x1A)
  {
    if (HIWORD(a2))
    {
      if (HIWORD(a2) > 0x10u)
      {
        v6 = 128;
        return *(*(*a1 + 16) + 4 * v6);
      }

      if (*(v2 + 11) <= a2)
      {
        v6 = *(v2 + 12);
        return *(*(*a1 + 16) + 4 * v6);
      }

      v3 = *v2;
      v4 = ((a2 >> 5) & 0x3F) + *(v3 + 2 * (a2 >> 11) + 4160);
    }

    else
    {
      v3 = *v2;
      if (a2 >> 10 >= 0x37)
      {
        v5 = 0;
      }

      else
      {
        v5 = 320;
      }

      v4 = v5 + (a2 >> 5);
    }
  }

  else
  {
    v3 = *v2;
    v4 = a2 >> 5;
  }

  v6 = (a2 & 0x1F) + 4 * *(v3 + 2 * v4);
  return *(*(*a1 + 16) + 4 * v6);
}

uint64_t sub_1952C6D30(uint64_t result, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(result + 8) = *a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = result + 48;
  *(result + 40) = 40;
  *(result + 44) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = -1;
  *(result + 388) = a3;
  *(result + 392) = a4;
  *(result + 400) = a5;
  *(result + 408) = a6;
  *(result + 416) = a4;
  *result = &unk_1F0944580;
  *(result + 424) = a5;
  *(result + 432) = 0;
  *(result + 440) = a6;
  *(result + 448) = a2[6];
  *(result + 456) = &unk_1F0935D00;
  *(result + 464) = 2;
  *(result + 520) = 1;
  return result;
}

void sub_1952C6DC8(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952C6E04(uint64_t result, uint64_t *a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    v3 = result;
    v4 = 0;
    v5 = a3;
    v6 = a2;
    do
    {
      v7 = *v6++;
      if ((v7 & 0xFFFF00FF003FLL) != 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v4 += v8;
      --v5;
    }

    while (v5);
    v9 = a2[a3 - 1];
    v10 = HIDWORD(a2[a3 - 1]);
    v11 = (v9 >> 8) & 0xFF00 | (v10 << 16) | v9 & 0x3F;
    v12 = v10 & 0xFFFF0000 | HIWORD(v9) & 0xFF00 | BYTE1(v9);
    if (v11)
    {
      v13 = v11 | 0xC0;
    }

    else
    {
      v13 = v12;
    }

    result = uhash_igeti(*(result + 8), v13);
    if (v4 > result)
    {
      v14 = *(v3 + 8);
      v15 = *(v3 + 16);

      return uhash_iputi(v14, v13, v4, v15);
    }
  }

  return result;
}

uint64_t sub_1952C6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 33) = 0;
  icu::UnicodeSet::UnicodeSet((a1 + 40));
  icu::UnicodeSet::UnicodeSet((a1 + 240));
  *(a1 + 440) = &unk_1F0935D00;
  *(a1 + 448) = 2;
  *(a1 + 504) = 0;
  *(a1 + 760) = 0;
  return a1;
}

uint64_t icu::Collator::createInstance(icu::Collator *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::Collator::createInstance(Default, this, v4);
}

uint64_t icu::Collator::createInstance(icu::Collator *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    if (*(this + 216))
    {
      v3 = 0;
      *a2 = 1;
      return v3;
    }

    Instance = icu::Collator::makeInstance(this, a2, a3);
    if (*a2 <= 0)
    {
      v3 = Instance;
      sub_1952C70B4(this, Instance, a2);
      if (*a2 < 1)
      {
        return v3;
      }

      (*(*v3 + 8))(v3);
    }
  }

  return 0;
}

uint64_t icu::Collator::makeInstance(icu::Collator *this, const icu::Locale *a2, UErrorCode *a3)
{
  v4 = sub_195401894(this, a2);
  if (*a2 <= 0)
  {
    operator new();
  }

  if (v4)
  {
    icu::SharedObject::removeRef(v4);
  }

  return 0;
}

void sub_1952C70B4(icu::Locale *a1, uint64_t a2, int *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  v7 = *(a1 + 5);
  BaseName = icu::Locale::getBaseName(a1);
  if (!strcmp(v7, BaseName))
  {
    goto LABEL_2;
  }

  memset(__s1, 0, 25);
  bzero(__dst, 0x400uLL);
  for (i = *(a1 + 5); ; ++i)
  {
    v10 = *i;
    if ((v10 | 0x40) == 0x40)
    {
      break;
    }
  }

  v11 = (v10 == 64 ? i + 1 : i);
  v12 = *v11;
  if (!*v11)
  {
    goto LABEL_2;
  }

  v13 = 0x6F6974616C6C6F63;
  while (1)
  {
    while (1)
    {
      if (!v12)
      {
        goto LABEL_37;
      }

      if (v12 != 32)
      {
        break;
      }

      v14 = *++v11;
      v12 = v14;
    }

    v15 = strchr(v11, 61);
    v16 = strchr(v11, 59);
    if (!v15)
    {
      goto LABEL_96;
    }

    v17 = v16;
    if (v16)
    {
      if (v16 < v15)
      {
        goto LABEL_96;
      }
    }

    v18 = v15 - v11;
    if (v15 - v11 > 24)
    {
      break;
    }

    if (v18 < 1)
    {
      goto LABEL_96;
    }

    v19 = v13;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = v11[v20];
      if (v22 != 32)
      {
        __s1[v21++] = uprv_asciitolower(v22);
      }

      ++v20;
    }

    while (v18 > v20);
    if (!v21)
    {
      goto LABEL_96;
    }

    __s1[v21] = 0;
    v23 = v17 - v15;
    do
    {
      LODWORD(v24) = v23;
      v26 = *++v15;
      v25 = v26;
      --v23;
    }

    while (v26 == 32);
    if (!v25 || v15 == v17)
    {
LABEL_96:
      v47 = 3;
      goto LABEL_98;
    }

    if (v17)
    {
      v28 = v17 - 1;
      v13 = v19;
      do
      {
        v29 = *v28--;
        LODWORD(v24) = v24 - 1;
      }

      while (v29 == 32);
      v11 = v17 + 1;
    }

    else
    {
      v40 = strlen(v15);
      v13 = v19;
      if (!v40)
      {
        v11 = 0;
        LODWORD(v24) = 0;
        goto LABEL_36;
      }

      v24 = v40;
      while (v15[v24 - 1] == 32)
      {
        if (!--v24)
        {
          v11 = 0;
          goto LABEL_36;
        }
      }

      v11 = 0;
    }

    if (v24 >= 1025)
    {
      break;
    }

LABEL_36:
    strncpy(__dst, v15, v24);
    __dst[v24] = 0;
LABEL_37:
    if (*a3 > 0)
    {
      goto LABEL_2;
    }

    if (*__s1 != v13 || *&__s1[8] != 110)
    {
      v32 = *__s1 == 0x67617269686C6F63 && *&__s1[8] == 0x6574617571616E61 && *&__s1[14] == 0x7972616E726574;
      if (v32 || (*__s1 == 0x656C626169726176 ? (v33 = *&__s1[8] == 7368564) : (v33 = 0), v33))
      {
        v47 = 16;
        goto LABEL_98;
      }

      v34 = 7;
      v35 = &dword_1E740C068;
      do
      {
        if (!strcmp(__s1, *(v35 - 1)))
        {
          v38 = 11;
          v39 = &dword_1E740C0D8;
          while (uprv_stricmp(__dst, *(v39 - 1)))
          {
            v39 += 4;
            if (!--v38)
            {
              goto LABEL_97;
            }
          }

          (*(*a2 + 184))(a2, *v35, *v39, a3);
          goto LABEL_68;
        }

        v35 += 4;
        --v34;
      }

      while (v34);
      if (*__s1 == 0x64726F65726C6F63 && *&__s1[3] == 0x726564726F6572)
      {
        bzero(v48, 0x354uLL);
        v41 = 0;
        v42 = __dst;
        while (v41 != 213)
        {
          for (j = 0; ; ++j)
          {
            v44 = v42[j];
            if (!v42[j] || v44 == 45)
            {
              break;
            }
          }

          v42[j] = 0;
          if (j == 4)
          {
            PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, v42);
          }

          else
          {
            v46 = 0;
            while (uprv_stricmp(v42, off_1E740C180[v46]))
            {
              if (++v46 == 5)
              {
                goto LABEL_97;
              }
            }

            PropertyValueEnum = v46 + 4096;
          }

          if (PropertyValueEnum < 0)
          {
            break;
          }

          v48[v41] = PropertyValueEnum;
          v42 += j + 1;
          ++v41;
          if (!v44)
          {
            (*(*a2 + 168))(a2, v48);
            v13 = 0x6F6974616C6C6F63;
            goto LABEL_68;
          }
        }

        goto LABEL_97;
      }

      if (!(*__s1 ^ 0x766B | __s1[2]))
      {
        v37 = sub_1952C816C(__dst);
        if ((v37 & 0x80000000) == 0)
        {
          (*(*a2 + 200))(a2, v37, a3);
          goto LABEL_68;
        }

LABEL_97:
        v47 = 1;
        goto LABEL_98;
      }

LABEL_68:
      if (*a3 >= 1)
      {
        *a3 = 1;
      }
    }

    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        continue;
      }
    }

    goto LABEL_2;
  }

  v47 = 5;
LABEL_98:
  *a3 = v47;
LABEL_2:
  v3 = *MEMORY[0x1E69E9840];
}