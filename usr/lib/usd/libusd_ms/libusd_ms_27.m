double pxrInternal__aapl__pxrReserved__::GfQuatd::GfQuatd(double *a1, unsigned __int16 *a2)
{
  *a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  a1[1] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  a1[2] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  a1[3] = result;
  return result;
}

{
  *a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  a1[1] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  a1[2] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  a1[3] = result;
  return result;
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfQuatd::Normalize(float64x2_t *this, double a2)
{
  v3 = *this;
  v4 = this[1].f64[0];
  v5 = this[1].f64[1];
  v6 = sqrt(vaddvq_f64(vmulq_f64(v3, v3)) + v4 * v4 + v5 * v5);
  if (v6 >= a2)
  {
    v8 = v5 / v6;
    v7 = vmulq_n_f64(v3, 1.0 / v6);
    v9 = v4 * (1.0 / v6);
  }

  else
  {
    v7 = 0uLL;
    v8 = 1.0;
    v9 = 0.0;
  }

  *this = v7;
  this[1].f64[0] = v9;
  this[1].f64[1] = v8;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfQuatd::Transform(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a1 * *a1 + v2 * v2 + v3 * v3;
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a1 * *a2 + v2 * v6 + v3 * v7;
  return 1.0 / (v4 * v4 + v5) * ((v4 + v4) * (v2 * v7 - v3 * v6) + *a2 * (v4 * v4 - v5) + *a1 * (v8 + v8));
}

double pxrInternal__aapl__pxrReserved__::GfQuatd::operator*=(double *a1, double *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a1[1];
  v7 = a2[1];
  v8 = v2 * v4 - (*a1 * *a2 + v6 * v7 + v3 * v5);
  v9 = v4 * *a1 + v2 * *a2 + v6 * v5 - v7 * v3;
  v10 = v4 * v6 + v2 * v7 + *a2 * v3 - *a1 * v5;
  v11 = v4 * v3 + v2 * v5;
  v12 = *a1 * v7 - *a2 * v6;
  *a1 = v9;
  a1[1] = v10;
  result = v12 + v11;
  a1[2] = result;
  a1[3] = v8;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfSlerp(pxrInternal__aapl__pxrReserved__ *this, double a2, const pxrInternal__aapl__pxrReserved__::GfQuatd *a3, const pxrInternal__aapl__pxrReserved__::GfQuatd *a4)
{
  v5 = *this;
  v6 = *(this + 1);
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(this + 2);
  v10 = *(this + 3);
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  v13 = *this * *a3 + v6 * v8 + v9 * v11 + v10 * v12;
  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = *this * *a3 + v6 * v8 + v9 * v11 + v10 * v12;
  }

  if (1.0 - v14 <= 0.00001)
  {
    v19 = 1.0 - a2;
  }

  else
  {
    v23 = *a3;
    v24 = *this;
    v15 = acos(v14);
    v16 = sin(v15);
    v17 = sin((1.0 - a2) * v15);
    v18 = v15 * a2;
    v19 = v17 / v16;
    v20 = sin(v18);
    v7 = v23;
    v5 = v24;
    a2 = v20 / v16;
  }

  v21 = -a2;
  if (v13 >= 0.0)
  {
    v21 = a2;
  }

  return v5 * v19 + v7 * v21;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(float32x4_t *this, __n128 *a2)
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

float pxrInternal__aapl__pxrReserved__::GfQuatf::GfQuatf(float *a1, unsigned __int16 *a2)
{
  *a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  a1[1] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  a1[2] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  a1[3] = result;
  return result;
}

{
  *a1 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  a1[1] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  a1[2] = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  result = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[3]];
  a1[3] = result;
  return result;
}

float32x2_t *pxrInternal__aapl__pxrReserved__::GfQuatf::Normalize(float32x2_t *this, float a2)
{
  v3 = *this;
  v4 = this[1].f32[0];
  v5 = this[1].f32[1];
  v6 = sqrtf((vaddv_f32(vmul_f32(v3, v3)) + (v4 * v4)) + (v5 * v5));
  if (v6 >= a2)
  {
    v8 = v5 / v6;
    v10 = 1.0 / v6;
    v7 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v3), v10));
    v9 = v10 * v4;
  }

  else
  {
    v7 = 0;
    v8 = 1.0;
    v9 = 0.0;
  }

  *this = v7;
  this[1].f32[0] = v9;
  this[1].f32[1] = v8;
  return this;
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfQuatf::Transform(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, int32x2_t a7)
{
  LODWORD(a3) = *a1;
  v7 = *(a1 + 12);
  a7.i32[0] = *a2;
  v8 = *(a1 + 4);
  v9 = ((*&a3 * *&a3) + vmul_f32(v8, v8).f32[0]) + vmuls_lane_f32(v8.f32[1], v8, 1);
  v10 = *(a2 + 4);
  v11 = ((*a1 * *a2) + vmul_f32(v8, v10).f32[0]) + vmuls_lane_f32(v8.f32[1], v10, 1);
  v12.i32[0] = vdup_lane_s32(v10, 1).u32[0];
  v12.i32[1] = *a2;
  v13.i32[0] = vdup_lane_s32(v8, 1).u32[0];
  v13.i32[1] = *a1;
  return vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(vadd_f32(vmul_n_f32(vsub_f32(vmul_f32(v8, v12), vmul_f32(v13, v10)), v7 + v7), vadd_f32(vmul_n_f32(vzip1_s32(a7, v10), (v7 * v7) - v9), vmul_n_f32(vzip1_s32(*&a3, v8), v11 + v11)))), 1.0 / ((v7 * v7) + v9)));
}

float pxrInternal__aapl__pxrReserved__::GfQuatf::operator*=(float *a1, float *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a1[1];
  v7 = a2[1];
  v8 = (v2 * v4) - (((*a1 * *a2) + (v6 * v7)) + (v3 * v5));
  v9 = ((v4 * *a1) + (v2 * *a2)) + ((v6 * v5) - (v7 * v3));
  v10 = ((v4 * v6) + (v2 * v7)) + ((*a2 * v3) - (*a1 * v5));
  v11 = (v4 * v3) + (v2 * v5);
  v12 = (*a1 * v7) - (*a2 * v6);
  *a1 = v9;
  a1[1] = v10;
  result = v12 + v11;
  a1[2] = result;
  a1[3] = v8;
  return result;
}

float pxrInternal__aapl__pxrReserved__::GfSlerp(pxrInternal__aapl__pxrReserved__ *this, double a2, const pxrInternal__aapl__pxrReserved__::GfQuatf *a3, const pxrInternal__aapl__pxrReserved__::GfQuatf *a4)
{
  v5 = *this;
  v6 = *a3;
  v7 = (((*this * *a3) + (*(this + 1) * *(a3 + 1))) + (*(this + 2) * *(a3 + 2))) + (*(this + 3) * *(a3 + 3));
  v8 = v7;
  if (v7 < 0.0)
  {
    v8 = -v7;
  }

  if (1.0 - v8 <= 0.00001)
  {
    v13 = 1.0 - a2;
  }

  else
  {
    v21 = *a3;
    v20 = *this;
    v9 = acos(v8);
    v19 = sinf(v9);
    v10 = v9;
    v11 = sin((1.0 - a2) * v10);
    v12 = v10 * a2;
    v13 = v11 / v19;
    v14 = sin(v12);
    v5 = v20;
    v6 = v21;
    a2 = v14 / v19;
  }

  v15 = -a2;
  if (v7 >= 0.0)
  {
    v15 = a2;
  }

  v16 = v13;
  v17 = v15;
  return (v5 * v16) + (v6 * v17);
}

pxrInternal__aapl__pxrReserved__::GfQuath *pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(pxrInternal__aapl__pxrReserved__::GfQuath *this, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2)
{
  sub_29A141258(this, a2);
  v4 = *(a2 + 3);
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

  *(this + 3) = v5;
  return this;
}

pxrInternal__aapl__pxrReserved__::GfQuath *pxrInternal__aapl__pxrReserved__::GfQuath::GfQuath(pxrInternal__aapl__pxrReserved__::GfQuath *this, const pxrInternal__aapl__pxrReserved__::GfQuatf *a2)
{
  v4 = *a2;
  if (*a2 == 0.0)
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

  *this = v5;
  v6 = *(a2 + 1);
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

  *(this + 1) = v7;
  v8 = *(a2 + 2);
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

  *(this + 2) = v9;
  v10 = *(a2 + 3);
  if (v10 == 0.0)
  {
    v11 = HIWORD(LODWORD(v10));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23])
  {
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v10) >> 23] + (((LODWORD(v10) & 0x7FFFFF) + ((LODWORD(v10) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v11) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v10));
  }

  *(this + 3) = v11;
  return this;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1)
{
  return pxrInternal__aapl__pxrReserved__::operator<<(a1);
}

{
  v6 = 40;
  v1 = sub_29A00911C(a1, &v6, 1);
  v2 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v1);
  v3 = sub_29A00911C(v2, ", ", 2);
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v3);
  v7 = 41;
  return sub_29A00911C(v4, &v7, 1);
}

{
  v8 = 40;
  v1 = sub_29A00911C(a1, &v8, 1);
  v2 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v1);
  v3 = sub_29A00911C(v2, ", ", 2);
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v3);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v5);
  v9 = 41;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v10 = 40;
  v1 = sub_29A00911C(a1, &v10, 1);
  v2 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v1);
  v3 = sub_29A00911C(v2, ", ", 2);
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v3);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v5);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::operator<<(v7);
  v11 = 41;
  return sub_29A00911C(v8, &v11, 1);
}

{
  return sub_29A00911C(a1, "OpaqueValue", 11);
}

{
  return sub_29A00911C(a1, "None", 4);
}

{
  sub_29A00911C(a1, "HdMaterialNetwork Params: (...) ", 32);
  return a1;
}

{
  sub_29A00911C(a1, "HdMaterialNetworkMap Params: (...) ", 35);
  return a1;
}

{
  sub_29A00911C(a1, "HdMaterialNode2 Params: (...) ", 30);
  return a1;
}

{
  sub_29A00911C(a1, "HdTopology()", 12);
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfQuath::Normalize(unsigned __int16 *a1, unsigned __int16 a2)
{
  v4 = sub_29A12FDD4(a1);
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4] >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2])
  {
    sub_29A140918(a1, v4);
  }

  else
  {
    *a1 = 0x3C00000000000000;
  }

  return v4;
}

unsigned __int16 *sub_29A140918(unsigned __int16 *a1, unsigned __int16 a2)
{
  v3 = a2;
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] / pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2];
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
  sub_29A130AC8(a1, 1.0 / pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v3]);
  return a1;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfQuath::Transform(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = sub_29A1309A8(a1, a1);
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]];
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

  v7 = sub_29A1309A8(a1, a2);
  v8 = (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v7] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v7]);
  v31 = *a1;
  v32 = a1[2];
  v9 = sub_29A130AC8(&v31, v8);
  v10 = *v9;
  v11 = v9[2];
  v12 = (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6] - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4]);
  v31 = *a2;
  v32 = a2[2];
  v13 = sub_29A130AC8(&v31, v12);
  v14 = *v13;
  v30 = v13[2];
  v29 = v14;
  v32 = v11;
  v31 = v10;
  v15 = sub_29A130DE0(&v31, &v29);
  v16 = *v15;
  v17 = v15[2];
  v18 = (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[3]]);
  v19 = sub_29A140BA0(a1, a2);
  v31 = v19;
  v32 = WORD2(v19);
  v20 = sub_29A130AC8(&v31, v18);
  v21 = *v20;
  v28 = v20[2];
  v27 = v21;
  v32 = v17;
  v31 = v16;
  v22 = sub_29A130DE0(&v31, &v27);
  v23 = *v22;
  v24 = 1.0 / (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6] + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4]);
  v32 = v22[2];
  v31 = v23;
  v25 = sub_29A130AC8(&v31, v24);
  return *v25 | (v25[2] << 32);
}

unint64_t sub_29A140BA0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  v6 = (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * v4) - (v5 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]]);
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
    v5 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
    v4 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  }

  v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  v9 = v5 * v8;
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v11 = v9 - (v10 * v4);
  if (v11 == 0.0)
  {
    v12 = HIWORD(LODWORD(v11));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23])
  {
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v11) >> 23] + (((LODWORD(v11) & 0x7FFFFF) + ((LODWORD(v11) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v12) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v11));
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  }

  v13 = (v10 * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]]) - (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]] * v8);
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
    v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v13));
  }

  return (v12 << 16) | (v14 << 32) | v7;
}

unsigned __int16 *pxrInternal__aapl__pxrReserved__::GfQuath::operator*=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v5];
  v7 = v6 - pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a1, a2)];
  if (v7 == 0.0)
  {
    v8 = HIWORD(LODWORD(v7));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23])
  {
    v8 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v7) >> 23] + (((LODWORD(v7) & 0x7FFFFF) + ((LODWORD(v7) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v8) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v7));
  }

  v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4];
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v5];
  v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
  v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
  v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
  v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
  v17 = ((v9 * v10) + (v11 * v12)) + ((v13 * v14) - (v15 * v16));
  if (v17 == 0.0)
  {
    v18 = HIWORD(LODWORD(v17));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23])
  {
    v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v17) >> 23] + (((LODWORD(v17) & 0x7FFFFF) + ((LODWORD(v17) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v18) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v17));
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4];
    v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v5];
    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
    v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
  }

  v19 = ((v9 * v16) + (v11 * v13)) + ((v15 * v10) - (v12 * v14));
  if (v19 == 0.0)
  {
    v20 = HIWORD(LODWORD(v19));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v19) >> 23])
  {
    v20 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v19) >> 23] + (((LODWORD(v19) & 0x7FFFFF) + ((LODWORD(v19) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v20) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v19));
    v9 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4];
    v14 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[2]];
    v11 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v5];
    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[2]];
    v12 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a1];
    v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2[1]];
    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a1[1]];
    v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*a2];
  }

  v21 = ((v9 * v14) + (v11 * v15)) + ((v12 * v16) - (v13 * v10));
  if (v21 == 0.0)
  {
    v22 = HIWORD(LODWORD(v21));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v21) >> 23])
  {
    v22 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v21) >> 23] + (((LODWORD(v21) & 0x7FFFFF) + ((LODWORD(v21) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v22) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v21));
  }

  a1[3] = v8;
  *a1 = v18;
  a1[1] = v20;
  a1[2] = v22;
  return a1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfSlerp(pxrInternal__aapl__pxrReserved__ *this, long double a2, const pxrInternal__aapl__pxrReserved__::GfQuath *a3, const pxrInternal__aapl__pxrReserved__::GfQuath *a4)
{
  v7 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(this, a3)] + (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(this + 3)] * pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[*(a3 + 3)]);
  v8 = v7;
  if (v7 < 0.0)
  {
    v8 = -v7;
  }

  if (1.0 - v8 <= 0.00001)
  {
    v11 = 1.0 - a2;
  }

  else
  {
    v9 = acos(v8);
    if (v9 == 0.0)
    {
      v10 = HIWORD(LODWORD(v9));
    }

    else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23])
    {
      v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v9) >> 23] + (((LODWORD(v9) & 0x7FFFFF) + ((LODWORD(v9) >> 13) & 1) + 4095) >> 13);
    }

    else
    {
      LOWORD(v10) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v9));
    }

    v12 = v10;
    v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v10];
    v14 = sinf(v13);
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
      v13 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v12];
    }

    v16 = v13;
    v17 = sin((1.0 - a2) * v13);
    v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v15];
    v11 = v17 / v18;
    a2 = sin(v16 * a2) / v18;
  }

  if (v7 < 0.0)
  {
    a2 = -a2;
  }

  v19 = v11;
  if (v19 == 0.0)
  {
    v20 = HIWORD(LODWORD(v19));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v19) >> 23])
  {
    v20 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v19) >> 23] + (((LODWORD(v19) & 0x7FFFFF) + ((LODWORD(v19) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v20) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v19));
  }

  v26 = *this;
  v21 = *sub_29A130000(&v26, v20);
  v22 = a2;
  if (v22 == 0.0)
  {
    v23 = HIWORD(LODWORD(v22));
  }

  else if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v22) >> 23])
  {
    v23 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v22) >> 23] + (((LODWORD(v22) & 0x7FFFFF) + ((LODWORD(v22) >> 13) & 1) + 4095) >> 13);
  }

  else
  {
    LOWORD(v23) = pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v22));
  }

  v26 = *a3;
  v25 = *sub_29A130000(&v26, v23);
  v26 = v21;
  return *sub_29A130D48(&v26, &v25);
}

_WORD *sub_29A141258(_WORD *a1, double *a2)
{
  v4 = *a2;
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
  v6 = a2[1];
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
  v8 = a2[2];
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

double pxrInternal__aapl__pxrReserved__::GfQuaternion::GetNormalized(pxrInternal__aapl__pxrReserved__::GfQuaternion *this, double a2)
{
  v2 = *this;
  v3 = sqrt(v2 * v2 + *(this + 1) * *(this + 1) + *(this + 2) * *(this + 2) + *(this + 3) * *(this + 3));
  if (v3 >= a2)
  {
    return v2 * (1.0 / v3);
  }

  else
  {
    return 1.0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GfQuaternion::Normalize(uint64_t this, double a2)
{
  v3 = *(this + 16);
  v4 = vextq_s8(*this, v3, 8uLL);
  v5 = vmulq_f64(v4, v4);
  v6.f64[0] = *this;
  v6.f64[1] = *(this + 24);
  v7 = vmulq_f64(v6, v6);
  v8 = sqrt(vaddq_f64(v7, vaddq_f64(vaddq_f64(v5, vdupq_laneq_s64(v5, 1)), vdupq_laneq_s64(v7, 1))).f64[0]);
  if (v8 >= a2)
  {
    v9 = vmulq_n_f64(*this, 1.0 / v8);
    v10 = vmulq_n_f64(v3, 1.0 / v8);
  }

  else
  {
    v9 = xmmword_29B432B50;
    v10 = 0uLL;
  }

  *this = v9;
  *(this + 16) = v10;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfQuaternion::operator*=(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a2 * v2 + *a1 * v3 + v4 * v7 - v6 * v5;
  v9 = *a2 * v4 + *a1 * v6 + v3 * v5 - v2 * v7;
  v10 = *a2 * v5 + *a1 * v7;
  *a1 = *a1 * *a2 - (v2 * v3 + v4 * v6 + v5 * v7);
  a1[1] = v8;
  result = v2 * v6 - v3 * v4 + v10;
  a1[2] = v9;
  a1[3] = result;
  return result;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfQuaternion::operator*=(float64x2_t *a1, double a2)
{
  v2 = vmulq_n_f64(*a1, a2);
  result = vmulq_n_f64(a1[1], a2);
  *a1 = v2;
  a1[1] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfSlerp(pxrInternal__aapl__pxrReserved__ *this, double a2, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a3, const pxrInternal__aapl__pxrReserved__::GfQuaternion *a4)
{
  v6 = *this;
  v5 = *(this + 1);
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(this + 2);
  v10 = *(this + 3);
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  v13 = v5 * v8 + v9 * v11 + v10 * v12 + *this * *a3;
  v14 = -v13;
  if (v13 >= 0.0)
  {
    v14 = v5 * v8 + v9 * v11 + v10 * v12 + *this * *a3;
  }

  if (1.0 - v14 <= 0.00001)
  {
    v19 = 1.0 - a2;
  }

  else
  {
    v24 = *a3;
    v23 = *this;
    v15 = acos(v14);
    v16 = sin(v15);
    v17 = sin((1.0 - a2) * v15);
    v18 = v15 * a2;
    v19 = v17 / v16;
    v20 = sin(v18);
    v6 = v23;
    v7 = v24;
    a2 = v20 / v16;
  }

  v21 = -a2;
  if (v13 >= 0.0)
  {
    v21 = a2;
  }

  return v6 * v19 + v7 * v21;
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfRange1d::GfRange1d(float64x2_t *a1, float32x2_t *a2)
{
  result = vcvtq_f64_f32(*a2);
  *a1 = result;
  return result;
}

{
  result = vcvtq_f64_f32(*a2);
  *a1 = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfRange1d::GetDistanceSquared(pxrInternal__aapl__pxrReserved__::GfRange1d *this, double a2)
{
  if (*this > a2)
  {
    v2 = *this - a2;
    return v2 * v2;
  }

  v3 = *(this + 1);
  v4 = 0.0;
  if (v3 < a2)
  {
    v2 = a2 - v3;
    return v2 * v2;
  }

  return v4;
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfRange1f::GfRange1f(float32x2_t *this, float64x2_t *a2)
{
  result = vcvt_f32_f64(*a2);
  *this = result;
  return result;
}

{
  result = vcvt_f32_f64(*a2);
  *this = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfRange1f::GetDistanceSquared(pxrInternal__aapl__pxrReserved__::GfRange1f *this, float a2)
{
  if (*this > a2)
  {
    v2 = *this - a2;
    return (v2 * v2);
  }

  v3 = *(this + 1);
  v4 = 0.0;
  if (v3 < a2)
  {
    v2 = a2 - v3;
    return (v2 * v2);
  }

  return v4;
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, _OWORD *a2)
{
  LOBYTE(v9[0]) = 91;
  v3 = sub_29A00911C(a1, v9, 1);
  *v9 = *a2;
  v4 = pxrInternal__aapl__pxrReserved__::operator<<(v3, v9);
  v5 = sub_29A00911C(v4, "...", 3);
  v8 = a2[1];
  v6 = pxrInternal__aapl__pxrReserved__::operator<<(v5, &v8);
  v10 = 93;
  return sub_29A00911C(v6, &v10, 1);
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfRange2d::GfRange2d(float64x2_t *a1, float32x2_t *a2)
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

double pxrInternal__aapl__pxrReserved__::GfRange2d::GetDistanceSquared(double *a1, double *a2)
{
  v2 = *a2;
  if (*a2 >= *a1)
  {
    v4 = a1[2];
    v5 = v2 <= v4;
    result = (v2 - v4) * (v2 - v4);
    if (v5)
    {
      result = 0.0;
    }
  }

  else
  {
    result = (*a1 - v2) * (*a1 - v2);
  }

  v6 = a2[1];
  v7 = a1[1];
  if (v6 >= v7)
  {
    v9 = a1[3];
    if (v6 <= v9)
    {
      return result;
    }

    v8 = v6 - v9;
  }

  else
  {
    v8 = v7 - v6;
  }

  return result + v8 * v8;
}

double pxrInternal__aapl__pxrReserved__::GfRange2d::GetCorner(pxrInternal__aapl__pxrReserved__::GfRange2d *this, unint64_t a2)
{
  if (a2 < 4)
  {
    if (a2)
    {
      v3 = (this + 16);
    }

    else
    {
      v3 = this;
    }
  }

  else
  {
    v5[0] = "gf/range2d.cpp";
    v5[1] = "GetCorner";
    v5[2] = 71;
    v5[3] = "GfVec2d pxrInternal__aapl__pxrReserved__::GfRange2d::GetCorner(size_t) const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid corner %zu > 3.", a2);
    v3 = this;
  }

  return *v3;
}

double pxrInternal__aapl__pxrReserved__::GfRange2d::GetQuadrant(pxrInternal__aapl__pxrReserved__::GfRange2d *this, unint64_t a2)
{
  if (a2 < 4)
  {
    Corner = pxrInternal__aapl__pxrReserved__::GfRange2d::GetCorner(this, a2);
    v5 = *this + *(this + 2);
    if (Corner >= v5 * 0.5)
    {
      return v5 * 0.5;
    }

    else
    {
      return Corner;
    }
  }

  else
  {
    v6[0] = "gf/range2d.cpp";
    v6[1] = "GetQuadrant";
    v6[2] = 82;
    v6[3] = "GfRange2d pxrInternal__aapl__pxrReserved__::GfRange2d::GetQuadrant(size_t) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid quadrant %zu > 3.", a2);
    return 3.40282347e38;
  }
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfRange2f::GfRange2f(float32x4_t *a1, float64x2_t *a2)
{
  result = a2[1];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), result);
  return result;
}

{
  result = a2[1];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), result);
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfRange2f::GetDistanceSquared(float *a1, float *a2)
{
  v2 = *a2;
  if (*a2 >= *a1)
  {
    v4 = a1[2];
    v5 = v2 <= v4;
    result = ((v2 - v4) * (v2 - v4));
    if (v5)
    {
      result = 0.0;
    }
  }

  else
  {
    result = ((*a1 - v2) * (*a1 - v2));
  }

  v6 = a2[1];
  v7 = a1[1];
  if (v6 >= v7)
  {
    v9 = a1[3];
    if (v6 <= v9)
    {
      return result;
    }

    v8 = v6 - v9;
  }

  else
  {
    v8 = v7 - v6;
  }

  return result + (v8 * v8);
}

float pxrInternal__aapl__pxrReserved__::GfRange2f::GetCorner(pxrInternal__aapl__pxrReserved__::GfRange2f *this, unint64_t a2)
{
  if (a2 < 4)
  {
    if (a2)
    {
      v3 = (this + 8);
    }

    else
    {
      v3 = this;
    }
  }

  else
  {
    v5[0] = "gf/range2f.cpp";
    v5[1] = "GetCorner";
    v5[2] = 71;
    v5[3] = "GfVec2f pxrInternal__aapl__pxrReserved__::GfRange2f::GetCorner(size_t) const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid corner %zu > 3.", a2);
    v3 = this;
  }

  return *v3;
}

float pxrInternal__aapl__pxrReserved__::GfRange2f::GetQuadrant(pxrInternal__aapl__pxrReserved__::GfRange2f *this, unint64_t a2)
{
  if (a2 < 4)
  {
    Corner = pxrInternal__aapl__pxrReserved__::GfRange2f::GetCorner(this, a2);
    v5 = *this + *(this + 2);
    if (Corner >= (v5 * 0.5))
    {
      return v5 * 0.5;
    }

    else
    {
      return Corner;
    }
  }

  else
  {
    v6[0] = "gf/range2f.cpp";
    v6[1] = "GetQuadrant";
    v6[2] = 82;
    v6[3] = "GfRange2f pxrInternal__aapl__pxrReserved__::GfRange2f::GetQuadrant(size_t) const";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v6, 1, "Invalid quadrant %zu > 3.", a2);
    return 3.4028e38;
  }
}

float64x2_t pxrInternal__aapl__pxrReserved__::GfRange3d::GfRange3d(float64x2_t *a1, float32x2_t *a2)
{
  v2 = vcvtq_f64_f32(a2[1]);
  *a1 = vcvtq_f64_f32(*a2);
  a1[1] = v2;
  result = vcvtq_f64_f32(a2[2]);
  a1[2] = result;
  return result;
}

{
  v2 = vcvtq_f64_f32(a2[1]);
  *a1 = vcvtq_f64_f32(*a2);
  a1[1] = v2;
  result = vcvtq_f64_f32(a2[2]);
  a1[2] = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfRange3d::GetDistanceSquared(double *a1, double *a2)
{
  v2 = *a2;
  if (*a2 >= *a1)
  {
    v4 = a1[3];
    v5 = v2 <= v4;
    result = (v2 - v4) * (v2 - v4);
    if (v5)
    {
      result = 0.0;
    }
  }

  else
  {
    result = (*a1 - v2) * (*a1 - v2);
  }

  v6 = a2[1];
  v7 = a1[1];
  if (v6 >= v7)
  {
    v8 = a1[4];
    v5 = v6 <= v8;
    v9 = result + (v6 - v8) * (v6 - v8);
    if (!v5)
    {
      result = v9;
    }
  }

  else
  {
    result = result + (v7 - v6) * (v7 - v6);
  }

  v10 = a2[2];
  v11 = a1[2];
  if (v10 >= v11)
  {
    v13 = a1[5];
    if (v10 <= v13)
    {
      return result;
    }

    v12 = v10 - v13;
  }

  else
  {
    v12 = v11 - v10;
  }

  return result + v12 * v12;
}

double pxrInternal__aapl__pxrReserved__::GfRange3d::GetCorner(pxrInternal__aapl__pxrReserved__::GfRange3d *this, unint64_t a2)
{
  if (a2 < 8)
  {
    if (a2)
    {
      v3 = (this + 24);
    }

    else
    {
      v3 = this;
    }
  }

  else
  {
    v5[0] = "gf/range3d.cpp";
    v5[1] = "GetCorner";
    v5[2] = 79;
    v5[3] = "GfVec3d pxrInternal__aapl__pxrReserved__::GfRange3d::GetCorner(size_t) const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid corner %zu > 7.", a2);
    v3 = this;
  }

  return *v3;
}

void pxrInternal__aapl__pxrReserved__::GfRange3d::GetOctant(pxrInternal__aapl__pxrReserved__::GfRange3d *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 8)
  {
    v17.f64[0] = pxrInternal__aapl__pxrReserved__::GfRange3d::GetCorner(this, a2);
    v9 = (*(this + 2) + *(this + 5)) * 0.5;
    __asm { FMOV            V5.2D, #0.5 }

    v15 = vmulq_f64(vaddq_f64(*this, *(this + 24)), _Q5);
    v17.f64[1] = v16;
    v18 = vcgtq_f64(v15, v17);
    v5 = vbslq_s8(v18, v17, v15);
    if (v6 >= v9)
    {
      v7 = (*(this + 2) + *(this + 5)) * 0.5;
    }

    else
    {
      v7 = v6;
    }

    v4 = vbslq_s8(v18, v15, v17);
    if (v6 < v9)
    {
      v6 = (*(this + 2) + *(this + 5)) * 0.5;
    }
  }

  else
  {
    v19[0] = "gf/range3d.cpp";
    v19[1] = "GetOctant";
    v19[2] = 92;
    v19[3] = "GfRange3d pxrInternal__aapl__pxrReserved__::GfRange3d::GetOctant(size_t) const";
    v20 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v19, 1, "Invalid octant %zu > 7.", a2);
    v4 = vdupq_n_s64(0xC7EFFFFFE0000000);
    v5 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    v6 = -3.40282347e38;
    v7 = 3.40282347e38;
  }

  *a3 = v5;
  *(a3 + 16) = v7;
  *(a3 + 24) = v4;
  *(a3 + 40) = v6;
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfRange3f::GfRange3f(uint64_t a1, float64x2_t *a2)
{
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  result = vcvt_f32_f64(a2[2]);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), a2[1]);
  result = vcvt_f32_f64(a2[2]);
  *(a1 + 16) = result;
  return result;
}

double pxrInternal__aapl__pxrReserved__::GfRange3f::GetDistanceSquared(float *a1, float *a2)
{
  v2 = *a2;
  if (*a2 >= *a1)
  {
    v4 = a1[3];
    v5 = v2 <= v4;
    result = ((v2 - v4) * (v2 - v4));
    if (v5)
    {
      result = 0.0;
    }
  }

  else
  {
    result = ((*a1 - v2) * (*a1 - v2));
  }

  v6 = a2[1];
  v7 = a1[1];
  if (v6 >= v7)
  {
    v9 = a1[4];
    if (v6 <= v9)
    {
      goto LABEL_10;
    }

    v8 = v6 - v9;
  }

  else
  {
    v8 = v7 - v6;
  }

  result = result + (v8 * v8);
LABEL_10:
  v10 = a2[2];
  v11 = a1[2];
  if (v10 >= v11)
  {
    v13 = a1[5];
    if (v10 <= v13)
    {
      return result;
    }

    v12 = v10 - v13;
  }

  else
  {
    v12 = v11 - v10;
  }

  return result + (v12 * v12);
}

float pxrInternal__aapl__pxrReserved__::GfRange3f::GetCorner(pxrInternal__aapl__pxrReserved__::GfRange3f *this, unint64_t a2)
{
  if (a2 < 8)
  {
    if (a2)
    {
      v3 = (this + 12);
    }

    else
    {
      v3 = this;
    }
  }

  else
  {
    v5[0] = "gf/range3f.cpp";
    v5[1] = "GetCorner";
    v5[2] = 79;
    v5[3] = "GfVec3f pxrInternal__aapl__pxrReserved__::GfRange3f::GetCorner(size_t) const";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v5, 1, "Invalid corner %zu > 7.", a2);
    v3 = this;
  }

  return *v3;
}

void pxrInternal__aapl__pxrReserved__::GfRange3f::GetOctant(pxrInternal__aapl__pxrReserved__::GfRange3f *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < 8)
  {
    v12.f32[0] = pxrInternal__aapl__pxrReserved__::GfRange3f::GetCorner(this, a2);
    v9 = (*(this + 2) + *(this + 5)) * 0.5;
    v10 = vmul_f32(vadd_f32(*this, *(this + 12)), 0x3F0000003F000000);
    v12.i32[1] = v11;
    v13 = vcgt_f32(v10, v12);
    v5 = vbsl_s8(v13, v12, v10);
    if (v6 >= v9)
    {
      v7 = (*(this + 2) + *(this + 5)) * 0.5;
    }

    else
    {
      v7 = v6;
    }

    v4 = vbsl_s8(v13, v10, v12);
    if (v6 < v9)
    {
      v6 = (*(this + 2) + *(this + 5)) * 0.5;
    }
  }

  else
  {
    v14[0] = "gf/range3f.cpp";
    v14[1] = "GetOctant";
    v14[2] = 92;
    v14[3] = "GfRange3f pxrInternal__aapl__pxrReserved__::GfRange3f::GetOctant(size_t) const";
    v15 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Invalid octant %zu > 7.", a2);
    v4 = 0x80000000800000;
    v5 = vneg_f32(0x80000000800000);
    v6 = -3.4028e38;
    v7 = 3.4028e38;
  }

  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 12) = v4;
  *(a3 + 20) = v6;
}

__n128 pxrInternal__aapl__pxrReserved__::GfRay::SetPointAndDirection(uint64_t a1, __int128 *a2, __n128 *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  result = *a3;
  *(a1 + 40) = a3[1].n128_u64[0];
  *(a1 + 24) = result;
  return result;
}

float64_t pxrInternal__aapl__pxrReserved__::GfRay::SetEnds(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v3;
  result = a3[1].f64[0] - *(a2 + 16);
  *(a1 + 24) = vsubq_f64(*a3, *a2);
  *(a1 + 40) = result;
  return result;
}

pxrInternal__aapl__pxrReserved__::GfRay *pxrInternal__aapl__pxrReserved__::GfRay::Transform(pxrInternal__aapl__pxrReserved__::GfRay *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  *this = sub_29A12CECC(a2, this);
  *(this + 1) = v4;
  *(this + 2) = v5;
  *(this + 3) = sub_29A131C60(a2, this + 3);
  *(this + 4) = v6;
  *(this + 5) = v7;
  return this;
}

double pxrInternal__aapl__pxrReserved__::GfRay::FindClosestPoint(__int128 *a1, double *a2, double *a3)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  v12 = *(a1 + 5);
  v11 = *(a1 + 24);
  v4 = sqrt(vaddvq_f64(vmulq_f64(v11, v11)) + v12 * v12);
  v5 = 1.0 / fmax(v4, 1.0e-10);
  v11 = vmulq_n_f64(v11, v5);
  v12 = v12 * v5;
  v8 = 0.0;
  pxrInternal__aapl__pxrReserved__::GfLine::FindClosestPoint(&v9, a2, &v8);
  v6 = v8;
  if (v8 < 0.0)
  {
    v6 = 0.0;
  }

  if (a3)
  {
    *a3 = v6 / v4;
  }

  return v6 * v11.f64[0] + *&v9;
}

BOOL pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4, double *a5, void *a6)
{
  v20 = *a1;
  v21 = *(a1 + 16);
  v23 = *(a1 + 40);
  v22 = *(a1 + 24);
  v10 = sqrt(vaddvq_f64(vmulq_f64(v22, v22)) + v23 * v23);
  v11 = 1.0 / fmax(v10, 1.0e-10);
  v22 = vmulq_n_f64(v22, v11);
  v23 = v23 * v11;
  v15 = 0;
  v16 = 0.0;
  result = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(&v20, a2, &v19, &v17, &v16, &v15);
  if (result)
  {
    v13 = v16;
    if (v16 < 0.0)
    {
      v13 = 0.0;
    }

    if (a3)
    {
      v14 = v13 * v23 + v21;
      *a3 = vaddq_f64(vmulq_n_f64(v22, v13), v20);
      a3[1].f64[0] = v14;
    }

    if (a4)
    {
      *a4 = v17;
      *(a4 + 16) = v18;
    }

    if (a5)
    {
      *a5 = v13 / v10;
    }

    if (a6)
    {
      *a6 = v15;
    }
  }

  return result;
}

{
  v20 = *a1;
  v21 = *(a1 + 16);
  v23 = *(a1 + 40);
  v22 = *(a1 + 24);
  v10 = sqrt(vaddvq_f64(vmulq_f64(v22, v22)) + v23 * v23);
  v11 = 1.0 / fmax(v10, 1.0e-10);
  v22 = vmulq_n_f64(v22, v11);
  v23 = v23 * v11;
  v15 = 0;
  v16 = 0.0;
  result = pxrInternal__aapl__pxrReserved__::GfFindClosestPoints(v20.f64, a2, v19, &v17, &v16, &v15);
  if (result)
  {
    v13 = v16;
    if (v16 < 0.0)
    {
      v13 = 0.0;
    }

    if (a3)
    {
      v14 = v13 * v23 + v21;
      *a3 = vaddq_f64(vmulq_n_f64(v22, v13), v20);
      a3[1].f64[0] = v14;
    }

    if (a4)
    {
      *a4 = v17;
      *(a4 + 16) = v18;
    }

    if (a5)
    {
      *a5 = v13 / v10;
    }

    if (a6)
    {
      *a6 = v15;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(pxrInternal__aapl__pxrReserved__::GfRay *a1, double *a2, double *a3, double *a4, double *a5, double *a6, BOOL *a7, double a8)
{
  pxrInternal__aapl__pxrReserved__::GfPlane::Set(v42, a2, a3, a4);
  v41 = 0.0;
  v16 = pxrInternal__aapl__pxrReserved__::GfRay::Intersect(a1, v42, &v41, a7);
  result = 0;
  if (v16 && v41 <= a8)
  {
    v18 = fabs(v42[0]);
    v19 = fabs(v42[1]);
    v20 = fabs(v42[2]);
    v21 = v18 > v19;
    v22 = v18 > v20;
    v23 = !v21 || !v22;
    if (v21 && v22)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2 * (v19 > v20);
    }

    v25 = 2;
    if (v23)
    {
      v25 = v19 <= v20;
    }

    v26 = a2[v24];
    v27 = a2[v25];
    v28 = *(a1 + v24) + v41 * *(a1 + v24 + 3) - v26;
    v29 = *(a1 + v25) + v41 * *(a1 + v25 + 3) - v27;
    v30 = a3[v25] - v27;
    v31 = a4[v24] - v26;
    v32 = a4[v25] - v27;
    v33 = (v29 * (a3[v24] - v26) - v28 * v30) / ((a3[v24] - v26) * v32 - v30 * v31);
    if (v33 > -1.0e-10 && v33 < 0.0)
    {
      v33 = 0.0;
    }

    if (v33 < 0.0 || v33 > 1.0)
    {
      return 0;
    }

    if (fabs(v30) <= 1.0e-10)
    {
      v36 = a3[v24] - v26;
    }

    else
    {
      v31 = v32;
      v28 = v29;
      v36 = v30;
    }

    v37 = (v28 - v31 * v33) / v36;
    if (v37 > -1.0e-10 && v37 < 0.0)
    {
      v37 = 0.0;
    }

    if (v37 < 0.0)
    {
      return 0;
    }

    v39 = 1.0 - (v33 + v37);
    if (v39 > -1.0e-10 && v39 < 0.0)
    {
      v39 = 0.0;
    }

    if (v39 >= 0.0)
    {
      if (a5)
      {
        *a5 = v41;
      }

      if (a6)
      {
        *a6 = v39;
        a6[1] = v37;
        a6[2] = v33;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(pxrInternal__aapl__pxrReserved__::GfRay *this, const pxrInternal__aapl__pxrReserved__::GfPlane *a2, double *a3, BOOL *a4)
{
  v4 = *(a2 + 8);
  v5 = vmulq_f64(*(this + 2), v4);
  v6 = *(this + 3) * *a2 + v5.f64[0] + v5.f64[1];
  if (fabs(v6) < 1.0e-10)
  {
    return 0;
  }

  v7 = *(a2 + 3);
  v8 = vmulq_f64(v4, vsubq_f64(vmulq_n_f64(v4, v7), *(this + 8)));
  v9 = (*a2 * (*a2 * v7 - *this) + v8.f64[0] + v8.f64[1]) / v6;
  if (v9 < 0.0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = v6 < 0.0;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(double *a1, double *a2, double *a3, double *a4)
{
  if (*a2 > a2[3] || a2[1] > a2[4] || a2[2] > a2[5])
  {
    return 0;
  }

  v5 = -1.79769313e308;
  v6 = 1.79769313e308;
  v7 = 3;
  do
  {
    v8 = a1[3];
    if (fabs(v8) >= 1.0e-10)
    {
      v9 = 1.0 / v8;
      v10 = v9 * (*a2 - *a1);
      v11 = v9 * (a2[3] - *a1);
      if (v10 <= v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      if (v10 > v11)
      {
        v11 = v10;
      }

      if (v12 > v5)
      {
        v5 = v12;
      }

      if (v11 < v6)
      {
        v6 = v11;
      }
    }

    else if (*a1 < *a2 || *a1 > a2[3])
    {
      return 0;
    }

    ++a1;
    ++a2;
    --v7;
  }

  while (v7);
  result = 0;
  if (v5 <= v6 && v6 >= 0.0)
  {
    if (a3)
    {
      *a3 = v5;
    }

    if (a4)
    {
      *a4 = v6;
    }

    return 1;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(pxrInternal__aapl__pxrReserved__::GfRay *this, const pxrInternal__aapl__pxrReserved__::GfBBox3d *a2, double *a3, double *a4)
{
  v7 = *(this + 1);
  v13 = *this;
  v14 = v7;
  v15 = *(this + 2);
  *&v13 = sub_29A12CECC(a2 + 22, &v13);
  *(&v13 + 1) = v8;
  *&v14 = v9;
  *(&v14 + 1) = sub_29A131C60(a2 + 22, &v14 + 1);
  *&v15 = v10;
  *(&v15 + 1) = v11;
  return pxrInternal__aapl__pxrReserved__::GfRay::Intersect(&v13, a2, a3, a4);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(uint64_t a1, double *a2, double *a3, double *a4, double a5, int8x16_t a6, double a7, double a8, int8x16_t a9)
{
  a9.i64[0] = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = a2[1];
  v11 = a2[2];
  *a6.i64 = *a1 + *(a1 + 24) - *a1;
  v12 = *a9.i64 + *(a1 + 32) - *a9.i64;
  v13 = v9 + *(a1 + 40) - v9;
  v14 = *a6.i64 * *a6.i64 + v12 * v12 + v13 * v13;
  *a6.i64 = *a6.i64 * (*a1 - *a2) + v12 * (*a9.i64 - v10) + v13 * (v9 - v11);
  *a6.i64 = *a6.i64 + *a6.i64;
  v15 = v9 * v9 + *a9.i64 * *a9.i64 + *a1 * *a1 + *a2 * *a2 + v10 * v10 + v11 * v11;
  v16 = *a1 * *a2 + *a9.i64 * v10;
  *a9.i64 = v9 * v11;
  return pxrInternal__aapl__pxrReserved__::GfRay::_SolveQuadratic(a1, v14, a6, v15 - (v16 + v9 * v11 + v16 + v9 * v11) - a5 * a5, a3, a4, v14, a9);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::_SolveQuadratic(pxrInternal__aapl__pxrReserved__::GfRay *this, double a2, int8x16_t a3, double a4, double *a5, double *a6, double a7, int8x16_t a8)
{
  if (fabs(a2) < 0.000001)
  {
    if (fabs(*a3.i64) >= 0.000001)
    {
      v8 = -a4 / *a3.i64;
      goto LABEL_6;
    }

    return 0;
  }

  v9 = *a3.i64 * *a3.i64 + a2 * -4.0 * a4;
  if (fabs(v9) >= 0.000001)
  {
    if (v9 >= 0.0)
    {
      a8.i64[0] = 1.0;
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      v12 = (*vbslq_s8(vnegq_f64(v11), a8, a3).i64 * sqrt(v9) + *a3.i64) * -0.5;
      v8 = v12 / a2;
      v13 = a4 / v12;
      if (v8 <= v13)
      {
        v14 = v8;
      }

      else
      {
        v14 = v13;
      }

      if (v8 <= v13)
      {
        v8 = v13;
      }

      if (v8 >= 0.0)
      {
        if (a5)
        {
          *a5 = v14;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  v8 = -*a3.i64 / (a2 + a2);
LABEL_6:
  if (v8 < 0.0)
  {
    return 0;
  }

  if (a5)
  {
    *a5 = v8;
  }

LABEL_9:
  if (a6)
  {
    *a6 = v8;
  }

  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(double *a1, double *a2, double *a3, double *a4, double *a5, double a6, int8x16_t a7, double a8, double a9, int8x16_t a10)
{
  v10 = a3[1];
  v11 = a3[2];
  *a10.i64 = 1.0 / fmax(sqrt(*a3 * *a3 + v10 * v10 + v11 * v11), 1.0e-10);
  *a7.i64 = *a3 * *a10.i64;
  v12 = v10 * *a10.i64;
  v13 = v11 * *a10.i64;
  *a10.i64 = *a1 - *a2;
  v14 = a1[1] - a2[1];
  v15 = a1[3];
  v16 = a1[2] - a2[2];
  v17 = a1[4];
  v18 = a1[5];
  v19 = v15 * *a7.i64 + v12 * v17 + v13 * v18;
  v20 = v15 - *a7.i64 * v19;
  v21 = v17 - v12 * v19;
  v22 = v18 - v13 * v19;
  v23 = v16 * v13 + *a10.i64 * *a7.i64 + v14 * v12;
  *a10.i64 = *a10.i64 - *a7.i64 * v23;
  v24 = v14 - v12 * v23;
  v25 = v16 - v13 * v23;
  *a7.i64 = v25 * v22 + *a10.i64 * v20 + v24 * v21;
  *a7.i64 = *a7.i64 + *a7.i64;
  v26 = *a10.i64 * *a10.i64 + v24 * v24;
  *a10.i64 = v25 * v25;
  return pxrInternal__aapl__pxrReserved__::GfRay::_SolveQuadratic(a1, v22 * v22 + v20 * v20 + v21 * v21, a7, v25 * v25 + v26 - a6 * a6, a4, a5, v22 * v22 + v20 * v20 + v21 * v21, a10);
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRay::Intersect(double *a1, double *a2, uint64_t a3, double *a4, double *a5, double a6, int8x16_t a7, double a8, double a9, int8x16_t a10)
{
  v13 = *(a3 + 8);
  a10.i64[0] = *(a3 + 16);
  v14 = 1.0 / fmax(sqrt(*a3 * *a3 + v13 * v13 + *a10.i64 * *a10.i64), 1.0e-10);
  v15 = *a3 * v14;
  v16 = v13 * v14;
  v17 = *a10.i64 * v14;
  v18 = *a2 + v15 * *a7.i64;
  v19 = a2[1] + v13 * v14 * *a7.i64;
  v20 = a2[2] + *a10.i64 * v14 * *a7.i64;
  v21 = *a1 - v18;
  v22 = a1[1] - v19;
  v23 = a1[3];
  *a10.i64 = a1[2] - v20;
  v24 = a1[4];
  v25 = a1[5];
  v26 = v23 * v15 + v16 * v24 + v17 * v25;
  v27 = v23 - v15 * v26;
  v28 = v24 - v16 * v26;
  v29 = v25 - v17 * v26;
  v30 = v17 * *a10.i64 + v15 * v21 + v16 * v22;
  v31 = v21 - v15 * v30;
  v32 = v22 - v16 * v30;
  *a10.i64 = *a10.i64 - v17 * v30;
  v33 = *a7.i64 * *a7.i64 / (a6 * a6 + *a7.i64 * *a7.i64);
  *a7.i64 = v33 * (v29 * *a10.i64 + v27 * v31 + v28 * v32);
  *a7.i64 = *a7.i64 - (1.0 - v33) * v26 * v30 + *a7.i64 - (1.0 - v33) * v26 * v30;
  result = pxrInternal__aapl__pxrReserved__::GfRay::_SolveQuadratic(a1, v33 * (v29 * v29 + v27 * v27 + v28 * v28) - (1.0 - v33) * (v26 * v26), a7, v33 * (*a10.i64 * *a10.i64 + v31 * v31 + v32 * v32) - (1.0 - v33) * (v30 * v30), a4, a5, (1.0 - v33) * (v30 * v30), a10);
  if (result)
  {
    v35 = a1[4];
    v36 = a1[5];
    v38 = a1[2];
    v37 = a1[3];
    v39 = a1[1];
    v40 = v15 * (*a4 * v37 + *a1 - v18) + v16 * (*a4 * v35 + v39 - v19) + v17 * (*a4 * v36 + v38 - v20);
    v41 = v17 * (v38 + v36 * *a5 - v20) + v15 * (*a1 + v37 * *a5 - v18) + v16 * (v39 + v35 * *a5 - v19);
    if (v40 <= 0.0 || v41 <= 0.0)
    {
      if (v40 > 0.0)
      {
        *a4 = *a5;
      }

      else if (v41 > 0.0)
      {
        *a5 = *a4;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::GfRect2i::GetNormalized(pxrInternal__aapl__pxrReserved__::GfRect2i *this)
{
  v1 = *(this + 2);
  v2 = *(this + 3);
  v3 = *(this + 1);
  if (v1 >= *this)
  {
    v4 = *this;
  }

  else
  {
    v4 = v1;
  }

  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  return v4 | (v5 << 32);
}

pxrInternal__aapl__pxrReserved__::GfRotation *pxrInternal__aapl__pxrReserved__::GfRotation::SetQuat(pxrInternal__aapl__pxrReserved__::GfRotation *this, const pxrInternal__aapl__pxrReserved__::GfQuatd *a2)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = sqrt(v3 * v3 + v4 * v4 + v5 * v5);
  if (v6 <= 1.0e-10)
  {
    *this = 0x3FF0000000000000;
    *(this + 1) = 0;
    *(this + 2) = 0;
    *(this + 3) = 0;
  }

  else
  {
    v7 = *(a2 + 3);
    if (v7 <= 1.0)
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = 1.0;
    }

    if (v7 >= -1.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -1.0;
    }

    v10 = acos(v9);
    v12.f64[0] = v3 * (1.0 / v6);
    v12.f64[1] = v4 * (1.0 / v6);
    v13 = v5 * (1.0 / v6);
    sub_29A143404(this, &v12, v10 * 57.2957795 + v10 * 57.2957795);
  }

  return this;
}

float64_t sub_29A143404(float64x2_t *a1, float64x2_t *a2, float64_t a3)
{
  v3 = a2[1].f64[0];
  *a1 = *a2;
  a1[1].f64[0] = v3;
  a1[1].f64[1] = a3;
  v4 = *a1;
  v5 = a1[1].f64[0];
  v6 = vaddvq_f64(vmulq_f64(v4, v4)) + v5 * v5;
  if (fabs(v6 + -1.0) >= 1.0e-10)
  {
    v7 = 1.0 / fmax(sqrt(v6), 1.0e-10);
    *a1 = vmulq_n_f64(v4, v7);
    v4.f64[0] = v5 * v7;
    a1[1].f64[0] = v5 * v7;
  }

  return v4.f64[0];
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfRotation::SetRotateInto(float64x2_t *a1, double *a2, double *a3)
{
  v3 = a1;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = 1.0 / fmax(sqrt(v4 * v4 + v5 * v5 + v6 * v6), 1.0e-10);
  v8 = *a2 * v7;
  v9 = v5 * v7;
  v10 = v6 * v7;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = fmax(sqrt(v11 * v11 + v12 * v12 + v13 * v13), 1.0e-10);
  v15 = v10 * (v13 * (1.0 / v14)) + v8 * (*a3 * (1.0 / v14)) + v9 * (v12 * (1.0 / v14));
  if (v15 <= 0.9999999)
  {
    if (v15 >= -0.9999999)
    {
      v27 = v5 * v13 - v6 * v12;
      v28 = v6 * v11 - v4 * v13;
      v29 = v4 * v12 - v5 * v11;
      v30 = 1.0 / fmax(sqrt(v29 * v29 + v27 * v27 + v28 * v28), 1.0e-10);
      v33.f64[0] = v27 * v30;
      v33.f64[1] = v28 * v30;
      v34 = v29 * v30;
      v26 = acos(v15) * 57.2957795;
    }

    else
    {
      v16 = v9 * 0.0;
      v17 = v10 * 0.0;
      v18 = v9 * 0.0 - v10 * 0.0;
      v19 = v10 - v8 * 0.0;
      v20 = v8 * 0.0 - v9;
      v21 = v16 - v10;
      v22 = v17 - v8 * 0.0;
      v23 = v8 - v16;
      if (sqrt(v20 * v20 + v18 * v18 + v19 * v19) < 0.00001)
      {
        v24 = v21;
      }

      else
      {
        v23 = v20;
        v22 = v19;
        v24 = v18;
      }

      v25 = 1.0 / fmax(sqrt(v23 * v23 + v24 * v24 + v22 * v22), 1.0e-10);
      v33.f64[0] = v24 * v25;
      v33.f64[1] = v22 * v25;
      v34 = v23 * v25;
      v26 = 180.0;
    }

    sub_29A143404(v3, &v33, v26);
    return v31;
  }

  else
  {
    a1->f64[0] = 1.0;
    a1->f64[1] = 0.0;
    a1[1].f64[0] = 0.0;
    a1[1].f64[1] = 0.0;
  }

  return v3;
}

float64_t pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(float64x2_t *this)
{
  v2 = __sincos_stret(this[1].f64[1] * 0.0174532925 * 0.5);
  v3 = this[1].f64[0] * v2.__sinval;
  v5 = vmulq_n_f64(*this, v2.__sinval);
  v6 = v3;
  cosval = v2.__cosval;
  pxrInternal__aapl__pxrReserved__::GfQuatd::Normalize(&v5, 1.0e-10);
  return v5.f64[0];
}

double pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(float64x2_t *a1, double *a2, double *a3, double *a4)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v65, a1);
  v8 = a2[1];
  v9 = a2[2];
  v10 = 1.0 / fmax(sqrt(*a2 * *a2 + v8 * v8 + v9 * v9), 1.0e-10);
  v11 = *a2 * v10;
  v12 = v8 * v10;
  v13 = v9 * v10;
  v14 = a3[1];
  v15 = a3[2];
  v16 = 1.0 / fmax(sqrt(*a3 * *a3 + v14 * v14 + v15 * v15), 1.0e-10);
  v17 = *a3 * v16;
  v18 = v14 * v16;
  v19 = v15 * v16;
  v20 = a4[1];
  v21 = a4[2];
  v22 = 1.0 / fmax(sqrt(*a4 * *a4 + v20 * v20 + v21 * v21), 1.0e-10);
  v33 = v20 * v22;
  v34 = *a4 * v22;
  v23 = v21 * v22;
  if (fabs(v13 * v19 + v11 * v17 + v12 * v18) >= 0.000001 || fabs(v13 * v23 + v11 * v34 + v12 * v33) >= 0.000001 || fabs(v19 * v23 + v17 * v34 + v18 * v33) >= 0.000001)
  {
    v51 = "gf/rotation.cpp";
    v52 = "Decompose";
    v53 = 110;
    v54 = "GfVec3d pxrInternal__aapl__pxrReserved__::GfRotation::Decompose(const GfVec3d &, const GfVec3d &, const GfVec3d &) const";
    LOBYTE(v55) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v51, "Rotation axes are not orthogonal.", v7);
  }

  v31 = v12;
  v32 = v11;
  v51 = *&v11;
  v52 = *&v17;
  v53 = *&v34;
  v54 = 0;
  v55 = v12;
  v56 = v18;
  v57 = v33;
  v58 = 0;
  v59 = v13;
  v60 = v19;
  v30 = v23;
  v61 = v23;
  v62 = 0u;
  v63 = 0u;
  v64 = 0x3FF0000000000000;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose(&v51, v35);
  v40 = v35[4];
  v41 = v35[5];
  v42 = v35[6];
  v43 = v35[7];
  v36 = v35[0];
  v37 = v35[1];
  v38 = v35[2];
  v39 = v35[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(&v36, v65);
  v47 = v40;
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v44[0] = v36;
  v44[1] = v37;
  v45 = v38;
  v46 = v39;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v44, &v51);
  v24 = *v44;
  v25 = *&v45;
  v26 = sqrt(v24 * v24 + v25 * v25);
  if (v26 <= 0.000001)
  {
    v27 = atan2(-*&v46, *(&v45 + 1));
    atan2(-*&v47, v26);
  }

  else
  {
    v27 = atan2(*(&v47 + 1), *&v48);
    atan2(-*&v47, v26);
    atan2(v25, v24);
  }

  if ((v32 * v18 - v31 * v17) * v30 + (v31 * v19 - v13 * v18) * v34 + (v13 * v17 - v32 * v19) * v33 >= 0.0)
  {
    v28 = -v27;
  }

  else
  {
    v28 = v27;
  }

  return v28 * 57.2957795;
}

float64_t pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(float64x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = vmulq_f64(v3, v3);
  v5 = 1.0 / fmax(sqrt(*a3 * *a3 + v4.f64[0] + v4.f64[1]), 1.0e-10);
  v6 = v5 * v3.f64[0];
  v7 = *a1;
  v8.f64[0] = a1->f64[1];
  v9.f64[0] = a1[1].f64[0];
  v10 = *a2;
  v3.f64[0] = *a3;
  v11.f64[0] = a2->f64[0];
  v11.f64[1] = v8.f64[0];
  v12 = vmulq_n_f64(v3, v5);
  v13.f64[0] = v12.f64[0];
  v13.f64[1] = v6;
  v14 = vmulq_f64(v11, v13);
  v3.f64[0] = a1->f64[0];
  v3.f64[1] = a2->f64[1];
  v10.f64[1] = v9.f64[0];
  v9.f64[1] = a2[1].f64[0];
  v15 = vaddq_f64(vmulq_laneq_f64(v9, v12, 1), vaddq_f64(vmulq_f64(v3, v13), vextq_s8(v14, v14, 8uLL)));
  v16 = vsubq_f64(v10, vmulq_f64(v12, vextq_s8(v15, v15, 8uLL)));
  v8.f64[1] = a2->f64[1];
  v17 = vsubq_f64(v8, vmulq_laneq_f64(v15, v13, 1));
  v7.f64[1] = v9.f64[1];
  v18 = vsubq_f64(v7, vmulq_f64(v12, v15));
  v19 = vzip1q_s64(v18, v16);
  v20 = vzip2q_s64(v16, v18);
  v21 = vmaxnmq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v20, v20), vaddq_f64(vmulq_f64(v19, v19), vmulq_f64(v17, v17)))), vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL));
  __asm { FMOV            V4.2D, #1.0 }

  v27 = vdivq_f64(_Q4, v21);
  v28 = vmulq_f64(v16, vextq_s8(v27, v27, 8uLL));
  v29 = vmulq_f64(v17, v27);
  v30 = vmulq_f64(v18, v27);
  v31 = vmulq_f64(vzip2q_s64(v28, v30), vzip1q_s64(v28, v30));
  v32 = vmulq_f64(vextq_s8(v12, v12, 8uLL), vsubq_f64(vmulq_f64(vextq_s8(v29, v29, 8uLL), v30), vmulq_f64(v28, v29)));
  v33 = v32.f64[0] + v32.f64[1] + v6 * vsubq_f64(v31, vdupq_laneq_s64(v31, 1)).f64[0];
  v34 = vmulq_f64(v30, v28);
  *&v35 = *&vaddq_f64(vdupq_laneq_s64(v34, 1), vaddq_f64(v34, vmulq_laneq_f64(v29, v29, 1)));
  if (fabs(v33) >= 0.000001 || fabs(v35) >= 0.000001)
  {
    v38 = v12;
    v39 = v6;
    atan2(v33, v35);
    v12 = v38;
    v6 = v39;
  }

  v36 = vmuld_lane_f64(v12.f64[1], v12, 1) + vmulq_f64(v12, v12).f64[0] + v6 * v6;
  if (fabs(v36 + -1.0) >= 1.0e-10)
  {
    v12.f64[0] = v12.f64[0] * (1.0 / fmax(sqrt(v36), 1.0e-10));
  }

  return v12.f64[0];
}

double pxrInternal__aapl__pxrReserved__::GfRotation::MatchClosestEulerRotation(pxrInternal__aapl__pxrReserved__::GfRotation *this, double result, float64_t a3, float64_t a4, float64_t a5, double *a6, double *a7, double *a8, double *a9)
{
  v85[1] = *MEMORY[0x29EDCA608];
  v9 = this == 0;
  if (this)
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  if (!a6)
  {
    v9 = 2;
  }

  v11 = v10 - (a6 == 0);
  if (!a7)
  {
    v9 = 3;
  }

  v12 = v11 - (a7 == 0);
  v13 = a8 == 0;
  if (a8)
  {
    v14 = v9;
  }

  else
  {
    v14 = 4;
  }

  v15 = v12 - v13;
  if (v12 != v13)
  {
    *v73 = result;
    *&v73[1] = a3;
    *&v73[2] = a4;
    *&v73[3] = a5;
    if (v15 > 2)
    {
      if (v15 == 4)
      {
        v27 = 4;
      }

      else
      {
        v27 = 2;
      }

      v28 = 0.0;
      v29 = 0.0;
      if (a7)
      {
        v29 = *a7;
      }

      if (a6)
      {
        v28 = *a6;
      }

      v30 = 0.0;
      v31 = 0.0;
      if (this)
      {
        v31 = *this;
      }

      if (a8)
      {
        v30 = *a8;
      }

      v32 = 0;
      v33 = 0.0;
      if (this)
      {
        v33 = *this;
      }

      if (a6)
      {
        v32 = *a6;
      }

      v34 = 0;
      v35 = 0;
      if (a7)
      {
        v35 = *a7;
      }

      v36 = dbl_29B47D1F0[v30 > 0.0];
      if (a8)
      {
        v34 = *a8;
      }

      v37 = v81;
      v38 = &v80;
      v39 = &v79;
      v40 = &v78;
      v41 = v29 + dbl_29B47D1F0[v29 > 0.0];
      v42 = v28 + dbl_29B47D1F0[v28 > 0.0];
      v43 = v31 + dbl_29B47D1F0[v31 > 0.0];
      v74 = v33;
      v75 = v32;
      v44 = v30 + v36;
      v76 = v35;
      v77 = v34;
      v70 = result;
      if (v14 <= 1)
      {
        if (v14)
        {
          if (this)
          {
            v43 = *this;
          }

          else
          {
            v43 = 0.0;
          }

          v41 = -v41;
        }

        else
        {
          v47 = 0.0;
          v48 = 0;
          if (a8)
          {
            v48 = *a8;
          }

          v78 = v43;
          v79 = -v42;
          v80 = v41;
          v81[0] = v48;
          if (a6)
          {
            v47 = *a6;
          }

          v49 = -v47;
          v50 = 0.0;
          v51 = 0.0;
          if (a7)
          {
            v51 = *a7;
          }

          v37 = v85;
          v38 = &v84;
          v39 = &v83;
          v40 = &v82;
          *&v81[1] = v43;
          *&v81[2] = v49;
          *&v81[3] = -v51;
          *&v81[4] = v44;
          if (this)
          {
            v50 = *this;
          }

          v41 = -v41;
          v43 = v50;
        }
      }

      else if ((v14 - 2) >= 2)
      {
        v42 = -v42;
        if (a8)
        {
          v44 = *a8;
        }

        else
        {
          v44 = 0.0;
        }
      }

      else
      {
        v45 = 0.0;
        v46 = 0.0;
        if (a6)
        {
          v46 = *a6;
        }

        if (a7)
        {
          v45 = *a7;
        }

        v42 = -v46;
        v41 = -v45;
      }

      *v40 = v43;
      *v39 = v42;
      *v38 = v41;
      v52 = &v74;
      v53 = v27;
      *v37 = v44;
      do
      {
        *v52 = sub_29A144008(v73);
        *(v52 + 1) = v54;
        *(v52 + 2) = v55;
        *(v52 + 3) = v56;
        v52 += 4;
        --v53;
      }

      while (v53);
      v57 = 0;
      v58.f64[0] = v70;
      v59.f64[0] = a4;
      v58.f64[1] = a3;
      v59.f64[1] = a5;
      result = 0.0;
      v60 = -1;
      do
      {
        v61 = 0;
        v62 = (&v74 + 4 * v57);
        v63 = vsubq_f64(v62[1], v59);
        v72[0] = vsubq_f64(*v62, v58);
        v72[1] = v63;
        v64 = 0.0;
        do
        {
          v65 = vabsq_f64(v72[v61]);
          v64 = v64 + v65.f64[0] + v65.f64[1];
          ++v61;
        }

        while (v61 != 2);
        if (v64 < result || v57 == 0)
        {
          result = v64;
          v60 = v57;
        }

        ++v57;
      }

      while (v57 != v27);
      v67 = &v74 + 4 * v60;
      if (this)
      {
        result = *v67;
        *this = *v67;
      }

      if (a6)
      {
        result = v67[1];
        *a6 = result;
      }

      if (a7)
      {
        result = v67[2];
        *a7 = result;
      }

      if (a8)
      {
        result = v67[3];
        *a8 = result;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0.0;
      if (this)
      {
        v21 = *this;
      }

      if (a6)
      {
        v20 = *a6;
      }

      v22 = 0;
      v23 = 0;
      if (a7)
      {
        v23 = *a7;
      }

      if (a8)
      {
        v22 = *a8;
      }

      v74 = v21;
      v75 = v20;
      v76 = v23;
      v77 = v22;
      result = sub_29A144008(v73);
      if (this)
      {
        *this = result;
      }

      if (a6)
      {
        *a6 = v24;
      }

      if (a7)
      {
        *a7 = v25;
      }

      if (a8)
      {
        *a8 = v26;
      }
    }
  }

  return result;
}

double sub_29A144008(uint64_t a1)
{
  for (i = 0; i != 4; ++i)
  {
    v2 = *(a1 + 8 * i);
      ;
    }

    *(&v6 + i) = j;
    v4 = v2 + -3.14159265;
    if (j < v4)
    {
      do
      {
        j = j + 6.28318531;
      }

      while (j < v4);
      *(&v6 + i) = j;
    }
  }

  return *&v6;
}

void pxrInternal__aapl__pxrReserved__::GfRotation::DecomposeRotation(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, unint64_t a6, float64_t *a7, float64_t *a8, double a9, char a10, uint64_t *a11)
{
  v11 = v105;
  if (a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v105;
  }

  if (a6)
  {
    v13 = a5 == 0;
  }

  else
  {
    v13 = 2;
  }

  v105[0] = 0;
  if (a6)
  {
    v11 = a6;
  }

  if (!(a5 | a6))
  {
    *&v97.f64[0] = "gf/rotation.cpp";
    *&v97.f64[1] = "DecomposeRotation";
    v14 = 428;
LABEL_11:
    *&v98 = v14;
    *(&v98 + 1) = "static void pxrInternal__aapl__pxrReserved__::GfRotation::DecomposeRotation(const GfMatrix4d &, const GfVec3d &, const GfVec3d &, const GfVec3d &, double, double *, double *, double *, double *, BOOL, const double *)";
    LOBYTE(v99.f64[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v97, 1, "Need three angles to correctly decompose rotation");
    return;
  }

  v15 = a8;
  v16 = a7;
  if (!a7)
  {
    if (v13)
    {
      *&v97.f64[0] = "gf/rotation.cpp";
      *&v97.f64[1] = "DecomposeRotation";
      v14 = 436;
      goto LABEL_11;
    }

    if (a8)
    {
      v83 = v11;
      v21 = a4;
      v13 = 3;
      v16 = v105;
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  if (!a8)
  {
    if (!v13)
    {
      v83 = v11;
      v21 = a4;
      v13 = 4;
      v15 = v105;
      goto LABEL_15;
    }

LABEL_33:
    *&v97.f64[0] = "gf/rotation.cpp";
    *&v97.f64[1] = "DecomposeRotation";
    v14 = 444;
    goto LABEL_11;
  }

  v83 = v11;
  v21 = a4;
LABEL_15:
  if (a11 && v13)
  {
    *&v97.f64[0] = "gf/rotation.cpp";
    *&v97.f64[1] = "DecomposeRotation";
    *&v98 = 453;
    *(&v98 + 1) = "static void pxrInternal__aapl__pxrReserved__::GfRotation::DecomposeRotation(const GfMatrix4d &, const GfVec3d &, const GfVec3d &, const GfVec3d &, double, double *, double *, double *, double *, BOOL, const double *)";
    LOBYTE(v99.f64[0]) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v97, "A swing shift was provided but we're not decomposing into four angles.  The swing shift will be ignored.", a3);
  }

  v22 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if (a10)
  {
    v22 = *v12;
    v23 = *v83;
    v24 = *v16;
    v25 = *v15;
  }

  v80 = sub_29A131C60(a1, a3);
  v81 = v26;
  v82 = v27;
  v84 = sub_29A131C60(a1, a2);
  v85 = v28;
  v86 = v29;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v97, 1.0);
  if (v13 <= 1)
  {
    v30 = v21;
    v31 = v12;
    if (v13)
    {
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v97, v80), vmulq_n_f64(v99, v81)), vmulq_n_f64(v101, v82));
      v88 = v80 * *&v98 + v81 * v100.f64[0] + v82 * *&v102;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, a2);
      v90.f64[1] = v62;
      *v91 = v63;
      *&v91[8] = v64;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v15 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v80), vmulq_n_f64(*&v91[16], v81)), vmulq_n_f64(v93, v82));
      v88 = v80 * *v91 + v81 * v92.f64[0] + v82 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, v30);
      v90.f64[1] = v65;
      *v91 = v66;
      *&v91[8] = v67;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v16 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v84), vmulq_n_f64(*&v91[16], v85)), vmulq_n_f64(v93, v86));
      v88 = v84 * *v91 + v85 * v92.f64[0] + v86 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a2, a3);
      v90.f64[1] = v68;
      *v91 = v69;
      *&v91[8] = v70;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      v38 = v83;
      *v83 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      *v15 = -(a9 * *v15);
      *v83 = -(a9 * *v83);
      *v16 = -(a9 * *v16);
      goto LABEL_38;
    }
  }

  else
  {
    v30 = v21;
    if (v13 == 2)
    {
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v97, v84), vmulq_n_f64(v99, v85)), vmulq_n_f64(v101, v86));
      v88 = v84 * *&v98 + v85 * v100.f64[0] + v86 * *&v102;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, a2);
      v90.f64[1] = v53;
      *v91 = v54;
      *&v91[8] = v55;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v15 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v84), vmulq_n_f64(*&v91[16], v85)), vmulq_n_f64(v93, v86));
      v88 = v84 * *v91 + v85 * v92.f64[0] + v86 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a2, v21);
      v90.f64[1] = v56;
      *v91 = v57;
      *&v91[8] = v58;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v16 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v80), vmulq_n_f64(*&v91[16], v81)), vmulq_n_f64(v93, v82));
      v88 = v80 * *v91 + v81 * v92.f64[0] + v82 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, a2);
      v90.f64[1] = v59;
      *v91 = v60;
      *&v91[8] = v61;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      v31 = v12;
      *v12 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      *v15 = -(a9 * *v15);
      *v16 = -(a9 * *v16);
      *v12 = -(a9 * *v12);
      v38 = v83;
      goto LABEL_38;
    }

    v31 = v12;
    if (v13 == 3)
    {
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v97, v84), vmulq_n_f64(v99, v85)), vmulq_n_f64(v101, v86));
      v88 = v84 * *&v98 + v85 * v100.f64[0] + v86 * *&v102;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, v30, a2);
      v90.f64[1] = v32;
      *v91 = v33;
      *&v91[8] = v34;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v15 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v84), vmulq_n_f64(*&v91[16], v85)), vmulq_n_f64(v93, v86));
      v88 = v84 * *v91 + v85 * v92.f64[0] + v86 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a2, a3);
      v90.f64[1] = v35;
      *v91 = v36;
      *&v91[8] = v37;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      v38 = v83;
      *v83 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v80), vmulq_n_f64(*&v91[16], v81)), vmulq_n_f64(v93, v82));
      v88 = v80 * *v91 + v81 * v92.f64[0] + v82 * *&v94;
      v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, a2);
      v90.f64[1] = v39;
      *v91 = v40;
      *&v91[8] = v41;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
      *v31 = *&v91[8] / 57.2957795;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v96 = v104;
      v90 = v97;
      *v91 = v98;
      *&v91[16] = v99;
      v92 = v100;
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
      v101 = v93;
      v102 = v94;
      v103 = v95;
      v104 = v96;
      v97 = v90;
      v98 = *v91;
      v99 = *&v91[16];
      v100 = v92;
      *v15 = -(a9 * *v15);
      *v83 = -(a9 * *v83);
      *v31 = -(a9 * *v31);
      goto LABEL_38;
    }
  }

  v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v97, v84), vmulq_n_f64(v99, v85)), vmulq_n_f64(v101, v86));
  v88 = v84 * *&v98 + v85 * v100.f64[0] + v86 * *&v102;
  v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a2, v30);
  v90.f64[1] = v43;
  *v91 = v44;
  *&v91[8] = v45;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
  *v16 = *&v91[8] / 57.2957795;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v96 = v104;
  v90 = v97;
  *v91 = v98;
  *&v91[16] = v99;
  v92 = v100;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
  v101 = v93;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v97 = v90;
  v98 = *v91;
  v99 = *&v91[16];
  v100 = v92;
  v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v84), vmulq_n_f64(*&v91[16], v85)), vmulq_n_f64(v93, v86));
  v88 = v84 * *v91 + v85 * v92.f64[0] + v86 * *&v94;
  v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a2, a3);
  v90.f64[1] = v46;
  *v91 = v47;
  *&v91[8] = v48;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
  v38 = v83;
  *v83 = *&v91[8] / 57.2957795;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v96 = v104;
  v90 = v97;
  *v91 = v98;
  *&v91[16] = v99;
  v92 = v100;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
  v101 = v93;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v97 = v90;
  v98 = *v91;
  v99 = *&v91[16];
  v100 = v92;
  v87 = vaddq_f64(vaddq_f64(vmulq_n_f64(v90, v80), vmulq_n_f64(*&v91[16], v81)), vmulq_n_f64(v93, v82));
  v88 = v80 * *v91 + v81 * v92.f64[0] + v82 * *&v94;
  v90.f64[0] = pxrInternal__aapl__pxrReserved__::GfRotation::RotateOntoProjected(&v87, a3, a2);
  v90.f64[1] = v49;
  *v91 = v50;
  *&v91[8] = v51;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v89, &v90);
  *v31 = *&v91[8] / 57.2957795;
  v93 = v101;
  v94 = v102;
  v95 = v103;
  v96 = v104;
  v90 = v97;
  *v91 = v98;
  *&v91[16] = v99;
  v92 = v100;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v90.f64, v89);
  v101 = v93;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v97 = v90;
  v98 = *v91;
  v99 = *&v91[16];
  v100 = v92;
  *v83 = -(a9 * *v83);
  *v16 = -(a9 * *v16);
  *v31 = -(a9 * *v31);
  if (a11)
  {
    v52 = *a11;
  }

  else
  {
    v52 = 0;
  }

  *v15 = v52;
LABEL_38:
  if (v13 == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = v31;
  }

  if (v13 == 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = v38;
  }

  if (v13 == 3)
  {
    v73 = 0;
  }

  else
  {
    v73 = v16;
  }

  if (v13 == 4)
  {
    v74 = 0;
  }

  else
  {
    v74 = v15;
  }

  pxrInternal__aapl__pxrReserved__::GfRotation::MatchClosestEulerRotation(v71, v22, v23, v24, v25, v72, v73, v74, v42);
  v90 = *a2;
  *v91 = *(a2 + 16);
  *&v91[8] = *a3;
  *&v91[24] = *(a3 + 16);
  v92 = *v30;
  v93.f64[0] = v30[1].f64[0];
  if (v13 <= 1)
  {
    if (v13)
    {
      v79 = *v16;
      v75 = v79 + pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetHandedness(&v90) * 1.57079633;
      v77 = v38;
      goto LABEL_59;
    }
  }

  else
  {
    if (v13 == 2)
    {
      v75 = *v16;
      goto LABEL_57;
    }

    if (v13 == 3)
    {
      v75 = *v38;
LABEL_57:
      v77 = v31;
LABEL_59:
      v78 = v15;
      goto LABEL_60;
    }
  }

  v76 = *v38;
  v75 = v76 + pxrInternal__aapl__pxrReserved__::GfMatrix3d::GetHandedness(&v90) * 1.57079633;
  v77 = v31;
  v78 = v16;
LABEL_60:
  sub_29A144E40(v77, v78, v75);
}

double sub_29A144E40(double *a1, double *a2, double a3)
{
  result = fabs(a3);
  if (fabs(result + -3.14159265) < 0.000001)
  {
    v4 = *a2 - *a1;
    *a2 = v4 * 0.5;
    *a1 = v4 * -0.5;
  }

  if (result < 0.000001)
  {
    result = (*a2 + *a1) * 0.5;
    *a2 = result;
    *a1 = result;
  }

  return result;
}

float32x2_t pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir(float64x2_t *a1, float *a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v5, a1);
  return sub_29A144F00(v3, a2);
}

double pxrInternal__aapl__pxrReserved__::GfRotation::TransformDir(float64x2_t *a1, double *a2)
{
  memset(v5, 0, sizeof(v5));
  v3 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(v5, a1);
  return sub_29A131C60(v3, a2);
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfRotation::operator*=(float64x2_t *a1, float64x2_t *this)
{
  Quat = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(this);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = pxrInternal__aapl__pxrReserved__::GfRotation::GetQuat(a1);
  v25[0] = v11;
  v25[1] = v10;
  v25[2] = v12;
  v25[3] = v13;
  *&v26 = v9;
  *(&v26 + 1) = Quat;
  *&v27 = v5;
  *(&v27 + 1) = v7;
  pxrInternal__aapl__pxrReserved__::GfQuaternion::operator*=(&v26, v25);
  v15 = v14[1];
  v26 = *v14;
  v27 = v15;
  Normalized = pxrInternal__aapl__pxrReserved__::GfQuaternion::GetNormalized(&v26, 1.0e-10);
  v20 = sqrt(v19 * v19 + v17 * v17 + v18 * v18);
  v21 = 0.0;
  if (v20 > 1.0e-10)
  {
    v22 = 1.0 / v20;
    a1->f64[0] = v17 * v22;
    a1->f64[1] = v18 * v22;
    a1[1].f64[0] = v19 * v22;
    v23 = acos(Normalized);
    v21 = v23 * 57.2957795 + v23 * 57.2957795;
  }

  a1[1].f64[1] = v21;
  return a1;
}

__n128 pxrInternal__aapl__pxrReserved__::GfTransform::Set(uint64_t a1, __int128 *a2, _OWORD *a3, __int128 *a4, __int128 *a5, __n128 *a6)
{
  v6 = *a2;
  *(a1 + 72) = *(a2 + 2);
  *(a1 + 56) = v6;
  v7 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 96) = v7;
  v8 = *a4;
  *(a1 + 40) = a4[1];
  *(a1 + 24) = v8;
  v9 = *a5;
  *(a1 + 128) = *(a5 + 2);
  *(a1 + 112) = v9;
  result = *a6;
  *(a1 + 16) = a6[1].n128_u64[0];
  *a1 = result;
  return result;
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfTransform::SetMatrix(float64x2_t *this, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(v32, &this[7]);
  v4 = -this[8].f64[0];
  v23 = vnegq_f64(this[7]);
  *&v24 = v4;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(v31, &v23);
  v19 = v32[4];
  v20 = v32[5];
  v21 = v32[6];
  v22 = v32[7];
  v15 = v32[0];
  v16 = v32[1];
  v17 = v32[2];
  v18 = v32[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v15.f64, a2);
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v23.f64, v31);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::Factor(&v23, &v15, &this[3].f64[1], v14, this, v13, 1.0e-10);
  this[1].f64[1] = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(v14);
  this[2].f64[0] = v5;
  this[2].f64[1] = v6;
  this[3].f64[0] = v7;
  if (this[3].f64[1] == 1.0 && this[4].f64[0] == 1.0 && this[4].f64[1] == 1.0)
  {
    this[5].f64[0] = 1.0;
    this[5].f64[1] = 0.0;
    this[6].f64[0] = 0.0;
    this[6].f64[1] = 0.0;
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GetTranspose(&v15, v12);
    this[5].f64[0] = pxrInternal__aapl__pxrReserved__::GfMatrix4d::ExtractRotation(v12);
    this[5].f64[1] = v8;
    this[6].f64[0] = v9;
    this[6].f64[1] = v10;
  }

  return this;
}

__n128 pxrInternal__aapl__pxrReserved__::GfTransform::SetIdentity(pxrInternal__aapl__pxrReserved__::GfTransform *this)
{
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 56) = result;
  *(this + 72) = result;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::GfTransform::GetMatrix(pxrInternal__aapl__pxrReserved__::GfTransform *this@<X0>, double *a2@<X8>)
{
  v4 = this + 112;
  v5 = *(this + 14);
  v6 = v5 != 0.0 || *(this + 15) != 0.0 || *(this + 16) != 0.0;
  v7 = *(this + 7) != 1.0 || *(this + 8) != 1.0 || *(this + 9) != 1.0;
  v8 = *this != 0.0 || *(this + 1) != 0.0 || *(this + 2) != 0.0;
  v9 = *(this + 13);
  v10 = *(this + 6);
  if (v6)
  {
    v22 = -v5;
    v23 = vnegq_f64(*(this + 120));
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(a2, &v22);
  }

  v11 = v6;
  if (v7)
  {
    if (v9 == 0.0)
    {
      if (!v6)
      {
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(a2, this + 7);
        if (v10 == 0.0)
        {
LABEL_40:
          if (!v8)
          {
            return;
          }

          goto LABEL_41;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v12 = (this + 80);
      if (v6)
      {
        v19.f64[0] = sub_29A131CC0(v12);
        v19.f64[1] = v13;
        v20 = v14;
        v21 = v15;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v22, &v19);
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
      }

      else
      {
        v22 = sub_29A131CC0(v12);
        v23.f64[0] = v16;
        v23.f64[1] = v17;
        v24 = v18;
        pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a2, &v22);
      }
    }

    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetScale(&v22, this + 7);
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
    if (v9 != 0.0)
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v22, this + 5);
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
    }

    v11 = 1;
  }

  if (v10 == 0.0)
  {
    goto LABEL_31;
  }

  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(a2, (this + 24));
    goto LABEL_30;
  }

LABEL_28:
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v22, (this + 24));
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
LABEL_30:
  v11 = 1;
LABEL_31:
  if (!v6)
  {
    goto LABEL_34;
  }

  if (!v11)
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(a2, v4);
    goto LABEL_40;
  }

  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v22, v4);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
LABEL_34:
  if (v8)
  {
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(a2, this);
      return;
    }

LABEL_41:
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v22, this);
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, &v22);
    return;
  }

  if ((v11 & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  }
}

float64x2_t *pxrInternal__aapl__pxrReserved__::GfTransform::operator*=(pxrInternal__aapl__pxrReserved__::GfTransform *a1, pxrInternal__aapl__pxrReserved__::GfTransform *a2)
{
  pxrInternal__aapl__pxrReserved__::GfTransform::GetMatrix(a1, v6);
  pxrInternal__aapl__pxrReserved__::GfTransform::GetMatrix(a2, v5);
  v7[4] = v6[4];
  v7[5] = v6[5];
  v7[6] = v6[6];
  v7[7] = v6[7];
  v7[0] = v6[0];
  v7[1] = v6[1];
  v7[2] = v6[2];
  v7[3] = v6[3];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v7, v5);
  return pxrInternal__aapl__pxrReserved__::GfTransform::SetMatrix(a1, v7);
}

void *pxrInternal__aapl__pxrReserved__::operator<<(void *a1, unsigned int *a2)
{
  v8 = 40;
  v3 = sub_29A00911C(a1, &v8, 1);
  v4 = MEMORY[0x29C2C1ED0](v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = MEMORY[0x29C2C1ED0](v5, a2[1]);
  v9 = 41;
  return sub_29A00911C(v6, &v9, 1);
}

{
  v10 = 40;
  v3 = sub_29A00911C(a1, &v10, 1);
  v4 = MEMORY[0x29C2C1ED0](v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = MEMORY[0x29C2C1ED0](v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = MEMORY[0x29C2C1ED0](v7, a2[2]);
  v11 = 41;
  return sub_29A00911C(v8, &v11, 1);
}

{
  v12 = 40;
  v3 = sub_29A00911C(a1, &v12, 1);
  v4 = MEMORY[0x29C2C1ED0](v3, *a2);
  v5 = sub_29A00911C(v4, ", ", 2);
  v6 = MEMORY[0x29C2C1ED0](v5, a2[1]);
  v7 = sub_29A00911C(v6, ", ", 2);
  v8 = MEMORY[0x29C2C1ED0](v7, a2[2]);
  v9 = sub_29A00911C(v8, ", ", 2);
  v10 = MEMORY[0x29C2C1ED0](v9, a2[3]);
  v13 = 41;
  return sub_29A00911C(v10, &v13, 1);
}

{
  LODWORD(__p) = 2;
  sub_29A388A10(&__p + 1);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::SdfNamespaceEditDetail::operator==(a2, &__p);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v26);
  sub_29A1DE3A4(&v25 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v25);
  sub_29A1DE3A4(&__p + 1);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A204C038, *a2, &__p);
    if ((v27 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v6 = v27;
    }

    else
    {
      v6 = v25;
    }

    v7 = sub_29A00911C(a1, p_p, v6);
  }

  else
  {
    v8 = sub_29A00911C(a1, "(", 1);
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A204C038, *a2, &__p);
    if ((v27 & 0x80u) == 0)
    {
      v9 = &__p;
    }

    else
    {
      v9 = __p;
    }

    if ((v27 & 0x80u) == 0)
    {
      v10 = v27;
    }

    else
    {
      v10 = v25;
    }

    v11 = sub_29A00911C(v8, v9, v10);
    v12 = sub_29A00911C(v11, ",", 1);
    v13 = pxrInternal__aapl__pxrReserved__::operator<<(v12, a2 + 1);
    v14 = sub_29A00911C(v13, ",", 1);
    v17 = *(a2 + 3);
    v16 = a2 + 6;
    v15 = v17;
    v18 = *(v16 + 23);
    if (v18 >= 0)
    {
      v19 = v16;
    }

    else
    {
      v19 = v15;
    }

    if (v18 >= 0)
    {
      v20 = *(v16 + 23);
    }

    else
    {
      v20 = *(v16 + 1);
    }

    v21 = sub_29A00911C(v14, v19, v20);
    v7 = sub_29A00911C(v21, ")", 1);
  }

  v22 = v7;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  return v22;
}

{
  pxrInternal__aapl__pxrReserved__::TfEnum::GetDisplayName(&stru_2A2049940, *a2, __p);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = sub_29A00911C(a1, v3, v4);
  v6 = sub_29A00911C(v5, "\n", 1);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

{
  v4 = sub_29A00911C(a1, "PickTask Params: (...) ", 23);
  v5 = MEMORY[0x29C2C1ED0](v4, *a2);
  v6 = sub_29A00911C(v5, " ", 1);
  MEMORY[0x29C2C1EA0](v6, *(a2 + 4));
  return a1;
}

BOOL pxrInternal__aapl__pxrReserved__::GfOrthogonalizeBasis(uint64_t a1, uint64_t a2, double *a3, int a4, double a5, double a6, double a7, int64x2_t a8)
{
  v8.f64[0] = *a1;
  if (a4)
  {
    v9 = *(a1 + 8);
    v20 = vmulq_f64(v9, v9);
    v10 = 1.0 / fmax(sqrt(v8.f64[0] * v8.f64[0] + v20.f64[0] + v20.f64[1]), 1.0e-10);
    *a1 = v8.f64[0] * v10;
    *(a1 + 8) = vmulq_n_f64(v9, v10);
    v11 = *(a2 + 16);
    v12 = 1.0 / fmax(sqrt(vaddvq_f64(vmulq_f64(*a2, *a2)) + v11 * v11), 1.0e-10);
    a8 = vmulq_n_f64(*a2, v12);
    *a2 = a8;
    *(a2 + 16) = v11 * v12;
    v13 = a3[1];
    v14 = a3[2];
    *a8.i64 = 1.0 / fmax(sqrt(*a3 * *a3 + v13 * v13 + v14 * v14), 1.0e-10);
    v15 = *a3 * *a8.i64;
    v16 = v13 * *a8.i64;
    *a3 = v15;
    a3[1] = v13 * *a8.i64;
    v17 = v14 * *a8.i64;
    a3[2] = v17;
    v8.f64[0] = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    a8.i64[0] = *a2;
    v20.f64[0] = *(a2 + 8);
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = *a2;
    v25.f64[0] = v20.f64[0];
    v26 = *(a2 + 16);
    v27 = v26;
    v28.f64[0] = *a1;
    v29 = v18;
    v30 = v19;
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    a8.i64[0] = *a2;
    v20.f64[0] = *(a2 + 8);
    v26 = *(a2 + 16);
    v15 = *a3;
    v16 = a3[1];
    v17 = a3[2];
    v31 = 1.0 / fmax(sqrt(v8.f64[0] * v8.f64[0] + v18 * v18 + v19 * v19), 1.0e-10);
    v28.f64[0] = v8.f64[0] * v31;
    v29 = v18 * v31;
    v30 = v19 * v31;
    v32 = 1.0 / fmax(sqrt(*a8.i64 * *a8.i64 + v20.f64[0] * v20.f64[0] + v26 * v26), 1.0e-10);
    v24 = *a2 * v32;
    v25.f64[0] = v20.f64[0] * v32;
    v27 = v26 * v32;
    v33 = 1.0 / fmax(sqrt(v15 * v15 + v16 * v16 + v17 * v17), 1.0e-10);
    v21 = *a3 * v33;
    v22 = v16 * v33;
    v23 = v17 * v33;
  }

  v34 = a5 * a5;
  if ((v28.f64[0] - v24) * (v28.f64[0] - v24) + (v29 - v25.f64[0]) * (v29 - v25.f64[0]) + (v30 - v27) * (v30 - v27) <= v34 || (v28.f64[0] - v21) * (v28.f64[0] - v21) + (v29 - v22) * (v29 - v22) + (v30 - v23) * (v30 - v23) <= v34 || (v24 - v21) * (v24 - v21) + (v25.f64[0] - v22) * (v25.f64[0] - v22) + (v27 - v23) * (v27 - v23) <= v34)
  {
    return 0;
  }

  v35 = 20;
  do
  {
    v36 = v24 * v8.f64[0] + v25.f64[0] * v18 + v27 * v19;
    v37 = v8.f64[0] - v24 * v36;
    v38 = v18 - v25.f64[0] * v36;
    v39 = v19 - v27 * v36;
    v40 = v23 * v39 + v21 * v37 + v22 * v38;
    v41 = v37 - v21 * v40;
    v42 = v38 - v22 * v40;
    v43 = v39 - v23 * v40;
    v44 = v28.f64[0] * *a8.i64 + v29 * v20.f64[0] + v30 * v26;
    v45 = *a8.i64 - v28.f64[0] * v44;
    v46 = v20.f64[0] - v29 * v44;
    v47 = v26 - v30 * v44;
    v48 = v23 * v47 + v21 * v45 + v22 * v46;
    v49 = v47 - v23 * v48;
    v50 = v28.f64[0] * v15 + v29 * v16 + v30 * v17;
    v51 = v15 - v28.f64[0] * v50;
    v52 = v16 - v29 * v50;
    v53 = v17 - v30 * v50;
    v54 = v27 * v53 + v24 * v51 + v25.f64[0] * v52;
    v55 = v25.f64[0] * v54;
    v56 = v27 * v54;
    v57 = v51 - v24 * v54;
    v58 = v52 - v55;
    v59 = v53 - v56;
    v60 = (v8.f64[0] + v41) * 0.5;
    v61 = (v18 + v42) * 0.5;
    v62 = (v19 + v43) * 0.5;
    v63 = (*a8.i64 + v45 - v21 * v48) * 0.5;
    v64 = (v20.f64[0] + v46 - v22 * v48) * 0.5;
    v65 = (v26 + v49) * 0.5;
    v66 = (v15 + v57) * 0.5;
    v67 = (v16 + v58) * 0.5;
    v68 = (v17 + v59) * 0.5;
    if (a4)
    {
      v69 = 1.0 / fmax(sqrt(v62 * v62 + v60 * v60 + v61 * v61), 1.0e-10);
      v60 = v60 * v69;
      v61 = v61 * v69;
      v62 = v62 * v69;
      v70 = 1.0 / fmax(sqrt(v65 * v65 + v63 * v63 + v64 * v64), 1.0e-10);
      v63 = v63 * v70;
      v64 = v64 * v70;
      v65 = v65 * v70;
      v71 = 1.0 / fmax(sqrt(v68 * v68 + v66 * v66 + v67 * v67), 1.0e-10);
      v66 = v66 * v71;
      v67 = v67 * v71;
      v68 = v68 * v71;
    }

    v72 = (v15 - v66) * (v15 - v66) + (v16 - v67) * (v16 - v67) + (v17 - v68) * (v17 - v68) + (*a8.i64 - v63) * (*a8.i64 - v63) + (v20.f64[0] - v64) * (v20.f64[0] - v64) + (v26 - v65) * (v26 - v65) + (v8.f64[0] - v60) * (v8.f64[0] - v60) + (v18 - v61) * (v18 - v61) + (v19 - v62) * (v19 - v62);
    v73 = v72 < v34;
    if (v72 < v34)
    {
      break;
    }

    *a1 = v60;
    *(a1 + 8) = v61;
    *(a1 + 16) = v62;
    *a2 = v63;
    *(a2 + 8) = v64;
    *(a2 + 16) = v65;
    *a3 = v66;
    a3[1] = v67;
    a3[2] = v68;
    v19 = *(a1 + 16);
    v21 = v66;
    v22 = v67;
    a8.i64[0] = *a2;
    v20 = *(a2 + 8);
    v23 = v68;
    v24 = *a2;
    v30 = v19;
    v25 = v20;
    v8 = *a1;
    v28 = *a1;
    if ((a4 & 1) == 0)
    {
      v74 = vzip1q_s64(a8, v8);
      v75.f64[0] = *(a2 + 8);
      v75.f64[1] = *(a1 + 8);
      *&v76.f64[0] = vdupq_laneq_s64(v20, 1).u64[0];
      v76.f64[1] = *(a1 + 16);
      v77 = vmaxnmq_f64(vsqrtq_f64(vaddq_f64(vaddq_f64(vmulq_f64(v74, v74), vmulq_f64(v75, v75)), vmulq_f64(v76, v76))), vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL));
      __asm { FMOV            V6.2D, #1.0 }

      v83 = vdivq_f64(_Q6, v77);
      v30 = vmuld_lane_f64(v19, v83, 1);
      v24 = *a8.i64 * v83.f64[0];
      v28 = vmulq_laneq_f64(v8, v83, 1);
      v25 = vmulq_n_f64(v20, v83.f64[0]);
      v83.f64[0] = 1.0 / fmax(sqrt(v66 * v66 + v67 * v67 + v68 * v68), 1.0e-10);
      v21 = v66 * v83.f64[0];
      v22 = v67 * v83.f64[0];
      v23 = v68 * v83.f64[0];
    }

    v27 = v25.f64[1];
    v29 = v28.f64[1];
    v26 = v20.f64[1];
    v17 = v68;
    v16 = v67;
    v15 = v66;
    v18 = *(a1 + 8);
    --v35;
  }

  while (v35);
  return v73;
}

double pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(double *a1, uint64_t a2, uint64_t a3, double result)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = sqrt(v4 * v4 + v5 * v5 + v6 * v6);
  if (v7 == 0.0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v8 = v4 * (1.0 / v7);
    v9 = v5 * (1.0 / v7);
    v10 = v6 * (1.0 / v7);
    v11 = v9 * 0.0;
    v12 = v10 * 0.0 - v9 * 0.0;
    v13 = v8 * 0.0 - v10;
    v14 = v9 - v8 * 0.0;
    v15 = v14 * v14 + v12 * v12 + v13 * v13;
    if (v15 < 0.00000001)
    {
      v12 = v10 - v11;
      v13 = v8 * 0.0 - v10 * 0.0;
      v14 = v11 - v8;
      v15 = v12 * v12 + v13 * v13 + v14 * v14;
    }

    v16 = fmax(sqrt(v15), 1.0e-10);
    v17 = v12 * (1.0 / v16);
    v18 = v13 * (1.0 / v16);
    *a2 = v17;
    *(a2 + 8) = v18;
    v19 = v14 * (1.0 / v16);
    *(a2 + 16) = v19;
    *a3 = v9 * v19 - v10 * v18;
    *(a3 + 8) = v10 * v17 - v8 * v19;
    *(a3 + 16) = v8 * v18 - v9 * v17;
    if (v7 < result)
    {
      v20 = v7 / result;
      *a2 = vmulq_n_f64(*a2, v20);
      *(a2 + 16) = v20 * *(a2 + 16);
      *a3 = vmulq_n_f64(*a3, v20);
      result = v20 * *(a3 + 16);
      *(a3 + 16) = result;
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::GfSlerp(double *a1, double *a2, double a3)
{
  v5 = a1[1];
  v6 = a2[1];
  v7 = a1[2];
  v8 = a2[2];
  v9 = *a1 * *a2 + v5 * v6 + v7 * v8;
  v10 = 1.0;
  if (v9 <= 1.0)
  {
    v10 = *a1 * *a2 + v5 * v6 + v7 * v8;
  }

  if (v9 >= -1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  v12 = acos(v11);
  if (fabs(v12) >= 0.001)
  {
    if (fabs(sin(v12)) >= 0.00001)
    {
      sin((1.0 - a3) * v12);
      sin(v12 * a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(a1, &v14, v13, 1.0e-10);
      __sincos_stret(a3 * 3.14159265);
    }
  }
}

BOOL pxrInternal__aapl__pxrReserved__::GfOrthogonalizeBasis(float32x2_t *a1, uint64_t a2, float32x2_t *a3, int a4, double a5, double a6)
{
  __asm { FMOV            V10.2D, #1.0 }

  if (a4)
  {
    sub_29A1472EC(a1, 1.0e-10);
    sub_29A1472EC(a2, 1.0e-10);
    sub_29A1472EC(a3, 1.0e-10);
    *v19.f32 = *a1;
    v16 = a1[1].f32[0];
    LODWORD(a6) = *a2;
    v17 = *a3;
    v18.i64[0] = *(a2 + 4);
    *&v18.u32[2] = *a1;
    v19.i64[1] = v18.i64[0];
    v20 = a3[1].f32[0];
    LODWORD(v21) = HIDWORD(*a3);
    v22 = v20;
    v23 = *a2;
    v24 = v16;
    v25 = *a3;
  }

  else
  {
    v26 = *a1;
    v16 = a1[1].f32[0];
    LODWORD(a6) = *a2;
    v18.i64[0] = *(a2 + 4);
    v20 = a3[1].f32[0];
    v27 = vzip1_s32(vdup_lane_s32(*a1, 1), *v18.f32);
    *&v18.u32[2] = *a1;
    v26.i32[1] = *a2;
    v28 = vdivq_f64(_Q10, vcvtq_f64_f32(vmaxnm_f32(vsqrt_f32(vadd_f32(vadd_f32(vmul_f32(v26, v26), vmul_f32(v27, v27)), vmul_f32(__PAIR64__(v18.u32[1], LODWORD(v16)), __PAIR64__(v18.u32[1], LODWORD(v16))))), vdup_n_s32(0x2EDBE6FFu))));
    v24 = v16 * v28.f64[0];
    v23 = vmuld_lane_f64(*a2, v28, 1);
    v19 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a1), v28.f64[0])), vmulq_laneq_f64(vcvtq_f64_f32(*v18.f32), v28, 1));
    v17 = *a3;
    LODWORD(v21) = HIDWORD(*a3);
    v29 = 1.0 / fmaxf(sqrtf((vmul_f32(v17, v17).f32[0] + vmuls_lane_f32(v21, *a3, 1)) + (v20 * v20)), 1.0e-10);
    v25 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a3), v29));
    v22 = v29 * v20;
  }

  v30 = vdup_laneq_s32(v19, 2);
  v30.f32[0] = v23;
  v31 = vsub_f32(*v19.f32, v30);
  v32 = a5 * a5;
  if (a5 * a5 >= (vaddv_f32(vmul_f32(v31, v31)) + ((v24 - v19.f32[3]) * (v24 - v19.f32[3]))))
  {
    return 0;
  }

  v33 = vsub_f32(*v19.f32, v25);
  if (v32 >= (vaddv_f32(vmul_f32(v33, v33)) + ((v24 - v22) * (v24 - v22))))
  {
    return 0;
  }

  v34 = vsub_f32(v30, v25);
  if (v32 >= (vaddv_f32(vmul_f32(v34, v34)) + ((v19.f32[3] - v22) * (v19.f32[3] - v22))))
  {
    return 0;
  }

  v35 = v25.f32[1];
  v36 = 20;
  do
  {
    v37 = (vmuls_lane_f32(v23, v18, 2) + vmuls_lane_f32(v19.f32[2], v18, 3)) + vmuls_lane_f32(v16, v19, 3);
    v38 = v18.f32[2] - (v23 * v37);
    v39 = v18.f32[3] - vmuls_lane_f32(v37, v19, 2);
    v40 = v16 - vmuls_lane_f32(v37, v19, 3);
    v41 = (v22 * v40) + ((v25.f32[0] * v38) + (v35 * v39));
    v42 = v38 - (v25.f32[0] * v41);
    v43 = v39 - (v35 * v41);
    v44 = v40 - (v22 * v41);
    v45 = ((*&a6 * v19.f32[0]) + vmuls_lane_f32(v18.f32[0], *v19.f32, 1)) + vmuls_lane_f32(v24, *v18.f32, 1);
    v46 = *&a6 - (v45 * v19.f32[0]);
    v47 = v18.f32[0] - vmuls_lane_f32(v45, *v19.f32, 1);
    v48 = v18.f32[1] - (v24 * v45);
    v49 = (v22 * v48) + ((v25.f32[0] * v46) + (v35 * v47));
    v50 = v46 - (v25.f32[0] * v49);
    v51 = v47 - (v35 * v49);
    v52 = v48 - (v22 * v49);
    v53 = ((v17.f32[0] * v19.f32[0]) + vmuls_lane_f32(v21, *v19.f32, 1)) + (v24 * v20);
    v54 = vmuls_lane_f32(v53, *v19.f32, 1);
    v55 = v24 * v53;
    v56 = v17.f32[0] - (v53 * v19.f32[0]);
    v57 = v21 - v54;
    v58 = v20 - v55;
    v59 = vmuls_lane_f32(v58, v19, 3) + ((v23 * v56) + vmuls_lane_f32(v21 - v54, v19, 2));
    v60 = vmuls_lane_f32(v59, v19, 2);
    v61 = v56 - (v23 * v59);
    v62 = v58 - vmuls_lane_f32(v59, v19, 3);
    v63 = (v18.f32[2] + v42) * 0.5;
    v64 = (v18.f32[3] + v43) * 0.5;
    v65 = (v16 + v44) * 0.5;
    v66 = v18.f32[1] + v52;
    v67 = (*&a6 + v50) * 0.5;
    v68 = (v18.f32[0] + v51) * 0.5;
    v69 = v66 * 0.5;
    v70 = (v17.f32[0] + v61) * 0.5;
    v71 = (v21 + (v57 - v60)) * 0.5;
    v72 = (v20 + v62) * 0.5;
    if (a4)
    {
      v73 = 1.0 / fmaxf(sqrtf((v65 * v65) + ((v63 * v63) + (v64 * v64))), 1.0e-10);
      v63 = v73 * v63;
      v64 = v73 * v64;
      v65 = v73 * v65;
      v74 = 1.0 / fmaxf(sqrtf((v69 * v69) + ((v67 * v67) + (v68 * v68))), 1.0e-10);
      v67 = v74 * v67;
      v68 = v74 * v68;
      v69 = v74 * v69;
      v75 = 1.0 / fmaxf(sqrtf((v72 * v72) + ((v70 * v70) + (v71 * v71))), 1.0e-10);
      v70 = v75 * v70;
      v71 = v75 * v71;
      v72 = v75 * v72;
    }

    v76 = (((((v17.f32[0] - v70) * (v17.f32[0] - v70)) + ((v21 - v71) * (v21 - v71))) + ((v20 - v72) * (v20 - v72))) + (((((*&a6 - v67) * (*&a6 - v67)) + ((v18.f32[0] - v68) * (v18.f32[0] - v68))) + ((v18.f32[1] - v69) * (v18.f32[1] - v69))) + ((((v18.f32[2] - v63) * (v18.f32[2] - v63)) + ((v18.f32[3] - v64) * (v18.f32[3] - v64))) + ((v16 - v65) * (v16 - v65)))));
    result = v32 > v76;
    if (v32 > v76)
    {
      break;
    }

    a1->f32[0] = v63;
    a1->f32[1] = v64;
    a1[1].f32[0] = v65;
    *a2 = v67;
    *(a2 + 4) = v68;
    *(a2 + 8) = v69;
    a3->f32[0] = v70;
    a3->f32[1] = v71;
    a3[1].f32[0] = v72;
    v78 = *a1;
    v16 = a1[1].f32[0];
    LODWORD(a6) = *a2;
    v79 = *(a2 + 4);
    *v18.f32 = v79;
    v25.f32[0] = v70;
    v35 = v71;
    *&v18.u32[2] = *a1;
    v22 = v72;
    v23 = *a2;
    v24 = v16;
    v80 = v18;
    if ((a4 & 1) == 0)
    {
      v81 = vzip1_s32(*&a6, v78);
      v82.i32[0] = *(a2 + 4);
      v82.i32[1] = HIDWORD(*a1);
      v83.i32[0] = vdup_lane_s32(v79, 1).u32[0];
      v83.i32[1] = a1[1].i32[0];
      v84 = vdivq_f64(_Q10, vcvtq_f64_f32(vmaxnm_f32(vsqrt_f32(vadd_f32(vadd_f32(vmul_f32(v81, v81), vmul_f32(v82, v82)), vmul_f32(v83, v83))), vdup_n_s32(0x2EDBE6FFu))));
      v24 = vmuld_lane_f64(v16, v84, 1);
      v23 = *&a6 * v84.f64[0];
      v80 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v79), v84.f64[0])), vmulq_laneq_f64(vcvtq_f64_f32(v78), v84, 1));
      v85 = 1.0 / fmaxf(sqrtf(((v70 * v70) + (v71 * v71)) + (v72 * v72)), 1.0e-10);
      v25.f32[0] = v85 * v70;
      v35 = v85 * v71;
      v22 = v85 * v72;
    }

    v19 = vextq_s8(v80, v80, 8uLL);
    v20 = v72;
    v21 = v71;
    v17.f32[0] = v70;
    --v36;
  }

  while (v36);
  return result;
}

void pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float a4)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = vmul_f32(v8, v8);
  v10 = sqrtf(((v7 * v7) + v9.f32[0]) + v9.f32[1]);
  if (v10 == 0.0)
  {
    *a3 = 0;
    a3[1].i32[0] = 0;
    v11 = *a3;
    a2[1].i32[0] = 0;
    *a2 = v11;
  }

  else
  {
    v12 = 1.0 / v10;
    v13 = v12 * v7;
    v14 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v8), v12));
    v15 = vmul_f32(v14, 0);
    v16 = vsub_f32(vdup_lane_s32(v15, 1), v15);
    v17 = (v13 * 0.0) - v14.f32[1];
    v18 = v14.f32[0] - (v13 * 0.0);
    a2->i32[0] = v16.i32[0];
    a2->f32[1] = v17;
    a2[1].f32[0] = v18;
    if (((v18 * v18) + (vmul_f32(v16, v16).f32[0] + (v17 * v17))) < 0.00000001)
    {
      v19.i32[0] = vdup_lane_s32(v14, 1).u32[0];
      v19.f32[1] = v13 * 0.0;
      *a2 = vsub_f32(v19, v15);
      a2[1].f32[0] = v15.f32[0] - v13;
    }

    v24 = v14;
    v25 = v13;
    sub_29A1472EC(a2, 1.0e-10);
    v20 = *(a2 + 4);
    v21.i32[0] = vdup_lane_s32(v20, 1).u32[0];
    v21.i32[1] = a2->i32[0];
    v22 = vmul_f32(v21, v24);
    v21.i32[0] = vdup_lane_s32(v24, 1).u32[0];
    v21.f32[1] = v25;
    v23 = (v25 * v20.f32[0]) - (a2->f32[0] * v24.f32[0]);
    *a3 = vsub_f32(v22, vmul_f32(v20, v21));
    a3[1].f32[0] = v23;
    if (v10 < a4)
    {
      *a2 = vmul_n_f32(*a2, v10 / a4);
      a2[1].f32[0] = (v10 / a4) * a2[1].f32[0];
      *a3 = vmul_n_f32(*a3, v10 / a4);
      a3[1].f32[0] = (v10 / a4) * a3[1].f32[0];
    }
  }
}

float sub_29A1472EC(float32x2_t *a1, float a2)
{
  v2 = a1[1].f32[0];
  v3 = *a1;
  v4 = sqrtf(vaddv_f32(vmul_f32(v3, v3)) + (v2 * v2));
  if (v4 > a2)
  {
    a2 = v4;
  }

  v5 = 1.0 / a2;
  *a1 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v3), v5));
  *&v5 = v5 * v2;
  a1[1].i32[0] = LODWORD(v5);
  return v4;
}

void pxrInternal__aapl__pxrReserved__::GfSlerp(float32x2_t *a1, float32x2_t *a2, double a3)
{
  v4 = vaddv_f32(vmul_f32(*a1, *a2)) + (a1[1].f32[0] * a2[1].f32[0]);
  v5 = v4;
  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  v6 = v4 < -1.0;
  v7 = -1.0;
  if (!v6)
  {
    v7 = v5;
  }

  v8 = acos(v7);
  if (fabs(v8) >= 0.001)
  {
    if (fabs(sin(v8)) >= 0.00001)
    {
      sin((1.0 - a3) * v8);
      sin(v8 * a3);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(a1, &v11, &v10, 1.0e-10);
      __sincos_stret(a3 * 3.14159265);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::GfOrthogonalizeBasis(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4, double a5)
{
  if (a4)
  {
    sub_29A148098(a1, 0x1419u);
    sub_29A148098(a2, 0x1419u);
    sub_29A148098(a3, 0x1419u);
    v80 = *a1;
    v81 = a1[2];
    v74 = *a2;
    v75 = a2[2];
    v68 = *a3;
    v69 = a3[2];
  }

  else
  {
    v80 = *a1;
    v81 = a1[2];
    v74 = *a2;
    v75 = a2[2];
    v68 = *a3;
    v69 = a3[2];
    sub_29A148098(&v80, 0x1419u);
    sub_29A148098(&v74, 0x1419u);
    sub_29A148098(&v68, 0x1419u);
  }

  v82 = v80;
  v83 = v81;
  v10 = sub_29A130BFC(&v82, &v74);
  v11 = *v10;
  v83 = v10[2];
  v82 = v11;
  v12 = a5 * a5;
  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v82, &v82)])
  {
    return 0;
  }

  v82 = v80;
  v83 = v81;
  v13 = sub_29A130BFC(&v82, &v68);
  v14 = *v13;
  v83 = v13[2];
  v82 = v14;
  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v82, &v82)])
  {
    return 0;
  }

  v82 = v74;
  v83 = v75;
  v15 = sub_29A130BFC(&v82, &v68);
  v16 = *v15;
  v83 = v15[2];
  v82 = v16;
  if (v12 >= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v82, &v82)])
  {
    return 0;
  }

  v17 = 20;
  while (1)
  {
    v78 = *a1;
    v79 = a1[2];
    v72 = *a2;
    v73 = a2[2];
    v66 = *a3;
    v67 = a3[2];
    v18 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v74, &v78)];
    v82 = v74;
    v83 = v75;
    v19 = sub_29A130AC8(&v82, v18);
    v20 = *v19;
    v83 = v19[2];
    v82 = v20;
    sub_29A130BFC(&v78, &v82);
    v21 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v68, &v78)];
    v82 = v68;
    v83 = v69;
    v22 = sub_29A130AC8(&v82, v21);
    v23 = *v22;
    v83 = v22[2];
    v82 = v23;
    sub_29A130BFC(&v78, &v82);
    v24 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v80, &v72)];
    v82 = v80;
    v83 = v81;
    v25 = sub_29A130AC8(&v82, v24);
    v26 = *v25;
    v83 = v25[2];
    v82 = v26;
    sub_29A130BFC(&v72, &v82);
    v27 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v68, &v72)];
    v82 = v68;
    v83 = v69;
    v28 = sub_29A130AC8(&v82, v27);
    v29 = *v28;
    v83 = v28[2];
    v82 = v29;
    sub_29A130BFC(&v72, &v82);
    v30 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v80, &v66)];
    v82 = v80;
    v83 = v81;
    v31 = sub_29A130AC8(&v82, v30);
    v32 = *v31;
    v83 = v31[2];
    v82 = v32;
    sub_29A130BFC(&v66, &v82);
    v33 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v74, &v66)];
    v82 = v74;
    v83 = v75;
    v34 = sub_29A130AC8(&v82, v33);
    v35 = *v34;
    v83 = v34[2];
    v82 = v35;
    sub_29A130BFC(&v66, &v82);
    v82 = *a1;
    v83 = a1[2];
    v36 = sub_29A130DE0(&v82, &v78);
    v37 = *v36;
    v83 = v36[2];
    v82 = v37;
    v38 = sub_29A130AC8(&v82, 0.5);
    v39 = *v38;
    v77 = v38[2];
    v76 = v39;
    v82 = *a2;
    v83 = a2[2];
    v40 = sub_29A130DE0(&v82, &v72);
    v41 = *v40;
    v83 = v40[2];
    v82 = v41;
    v42 = sub_29A130AC8(&v82, 0.5);
    v43 = *v42;
    v71 = v42[2];
    v70 = v43;
    v82 = *a3;
    v83 = a3[2];
    v44 = sub_29A130DE0(&v82, &v66);
    v45 = *v44;
    v83 = v44[2];
    v82 = v45;
    v46 = sub_29A130AC8(&v82, 0.5);
    v47 = *v46;
    v65 = v46[2];
    v64 = v47;
    if (a4)
    {
      sub_29A148098(&v76, 0x1419u);
      sub_29A148098(&v70, 0x1419u);
      sub_29A148098(&v64, 0x1419u);
    }

    v63 = 0;
    v62 = 0;
    v82 = *a1;
    v83 = a1[2];
    v48 = sub_29A130BFC(&v82, &v76);
    v49 = *v48;
    v63 = v48[2];
    v62 = v49;
    v61 = 0;
    v60 = 0;
    v82 = *a2;
    v83 = a2[2];
    v50 = sub_29A130BFC(&v82, &v70);
    v51 = *v50;
    v61 = v50[2];
    v60 = v51;
    v59 = 0;
    v58 = 0;
    v82 = *a3;
    v83 = a3[2];
    v52 = sub_29A130BFC(&v82, &v64);
    v53 = *v52;
    v59 = v52[2];
    v58 = v53;
    v54 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v62, &v62)];
    v55 = v54 + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v60, &v60)];
    if (v12 > (v55 + pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(&v58, &v58)]))
    {
      break;
    }

    *a1 = v76;
    a1[2] = v77;
    *a2 = v70;
    a2[2] = v71;
    v56 = v64;
    *a3 = v64;
    a3[2] = v65;
    v81 = a1[2];
    v80 = *a1;
    v75 = a2[2];
    v74 = *a2;
    v69 = v65;
    v68 = v56;
    if ((a4 & 1) == 0)
    {
      sub_29A148098(&v80, 0x1419u);
      sub_29A148098(&v74, 0x1419u);
      sub_29A148098(&v68, 0x1419u);
    }

    if (!--v17)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(unsigned __int16 *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 a4)
{
  result = sub_29A14810C(a1);
  v9 = result;
  v10 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[result];
  if (v10 == 0.0)
  {
    *a3 = 0;
    a3[2] = 0;
    a2[2] = 0;
    *a2 = 0;
  }

  else
  {
    v20 = *a1;
    v21 = a1[2];
    v11 = sub_29A130AC8(&v20, 1.0 / v10);
    v12 = *v11;
    v21 = v11[2];
    v20 = v12;
    v19 = 0;
    v18 = 15360;
    v13 = sub_29A140BA0(&v18, &v20);
    *a2 = v13;
    a2[2] = WORD2(v13);
    if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a2, a2)] < 0.00000001)
    {
      v19 = 0;
      v18 = 1006632960;
      v14 = sub_29A140BA0(&v18, &v20);
      *a2 = v14;
      a2[2] = WORD2(v14);
    }

    sub_29A148098(a2, 0x1419u);
    result = sub_29A140BA0(&v20, a2);
    *a3 = result;
    a3[2] = WORD2(result);
    v15 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v9];
    v16 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a4];
    if (v15 < v16)
    {
      v17 = (v15 / v16);
      sub_29A130AC8(a2, v17);
      return sub_29A130AC8(a3, v17);
    }
  }

  return result;
}

uint64_t sub_29A148098(unsigned __int16 *a1, unsigned __int16 a2)
{
  v4 = sub_29A14810C(a1);
  v5 = v4;
  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v4] <= pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[a2])
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  sub_29A130AC8(a1, 1.0 / pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[v6]);
  return v5;
}

uint64_t sub_29A14810C(unsigned __int16 *a1)
{
  v1 = sqrtf(pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a1, a1)]);
  if (v1 == 0.0)
  {
    return HIWORD(LODWORD(v1));
  }

  if (pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23])
  {
    return pxrInternal__aapl__pxrReserved__::pxr_half::half::_eLut[LODWORD(v1) >> 23] + (((LODWORD(v1) & 0x7FFFFF) + ((LODWORD(v1) >> 13) & 1) + 4095) >> 13);
  }

  return pxrInternal__aapl__pxrReserved__::pxr_half::half::convert(LODWORD(v1));
}

unint64_t pxrInternal__aapl__pxrReserved__::GfSlerp(unsigned __int16 *a1, unsigned __int16 *a2, double a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::pxr_half::half::_toFloat[sub_29A1309A8(a1, a2)];
  v7 = v6;
  if (v6 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = v6 < -1.0;
  v9 = -1.0;
  if (!v8)
  {
    v9 = v7;
  }

  v10 = acos(v9);
  if (fabs(v10) < 0.001)
  {
    v35 = *a1;
    v36 = a1[2];
    v11 = sub_29A130AC8(&v35, 1.0 - a3);
    v12 = *v11;
    v13 = v11[2];
    v35 = *a2;
    v36 = a2[2];
    v14 = a3;
LABEL_10:
    v19 = sub_29A130AC8(&v35, v14);
    v20 = *v19;
    v34 = v19[2];
    v33 = v20;
    v36 = v13;
    v35 = v12;
    v27 = &v33;
    goto LABEL_11;
  }

  v15 = sin(v10);
  if (fabs(v15) >= 0.00001)
  {
    v16 = 1.0 / v15;
    v17 = sin((1.0 - a3) * v10);
    v35 = *a1;
    v36 = a1[2];
    v18 = sub_29A130AC8(&v35, v17 * v16);
    v12 = *v18;
    v13 = v18[2];
    v14 = sin(v10 * a3) * v16;
    v35 = *a2;
    v36 = a2[2];
    goto LABEL_10;
  }

  pxrInternal__aapl__pxrReserved__::GfBuildOrthonormalFrame(a1, &v33, &v32, 0x1419u);
  v21 = __sincos_stret(a3 * 3.14159265);
  v35 = *a1;
  v36 = a1[2];
  v22 = sub_29A130AC8(&v35, v21.__cosval);
  v23 = *v22;
  v24 = v22[2];
  v35 = v33;
  v36 = v34;
  v25 = sub_29A130AC8(&v35, v21.__sinval);
  v26 = *v25;
  v31 = v25[2];
  v30 = v26;
  v36 = v24;
  v35 = v23;
  v27 = &v30;
LABEL_11:
  v28 = sub_29A130DE0(&v35, v27);
  return *v28 | (v28[2] << 32);
}

void pxrInternal__aapl__pxrReserved__::JsParseStream(void *a1@<X0>, uint64_t a2@<X1>, pxrInternal__aapl__pxrReserved__::JsValue *a3@<X8>)
{
  v4 = a1 + *(*a1 - 24);
  if ((v4[32] & 5) != 0)
  {
    __p.__r_.__value_.__r.__words[0] = "js/json.cpp";
    __p.__r_.__value_.__l.__size_ = "JsParseStream";
    __p.__r_.__value_.__r.__words[2] = 214;
    v8 = "JsValue pxrInternal__aapl__pxrReserved__::JsParseStream(std::istream &, JsParseError *)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Stream error");
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a3);
  }

  else
  {
    sub_29A14BD28(&__p, *(v4 + 5), 0);
    pxrInternal__aapl__pxrReserved__::JsParseString(&__p, a2, v6, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29A148DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::JsParseString(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, pxrInternal__aapl__pxrReserved__::JsValue *a4@<X8>)
{
  v5 = a1[23];
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 1);
  }

  if (!v5)
  {
    __p[0] = "js/json.cpp";
    __p[1] = "JsParseString";
    v31[0] = 233;
    v31[1] = "JsValue pxrInternal__aapl__pxrReserved__::JsParseString(const std::string &, JsParseError *)";
    LOBYTE(v32) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__p, 1, "JSON string is empty");
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a4);
    return;
  }

  v9 = 0;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  *__p = 0u;
  *v31 = 0u;
  v32 = 0;
  v33 = 256;
  v36 = 2;
  if (v6 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v28 = v10;
  v29 = v10;
  LODWORD(v34) = 0;
  v35 = 0;
  while (1)
  {
    v11 = v10[v9];
    v12 = v11 > 0x20;
    v13 = (1 << v11) & 0x100002600;
    if (v12 || v13 == 0)
    {
      break;
    }

    ++v9;
  }

  v28 = &v10[v9];
  if (v10[v9])
  {
    sub_29A14BF08(__p, &v28, &v37);
    v9 = v35;
    v15 = v31[0];
  }

  else
  {
    v15 = 0;
    LODWORD(v34) = 1;
    v35 = v9;
  }

  v16 = v34;
  v31[1] = v15;
  if (v34)
  {
    if (a2)
    {
      *a2 = 1;
      if (v9)
      {
        v17 = 0;
        v18 = 0;
        v19 = 1;
        do
        {
          if ((a1[23] & 0x80u) == 0)
          {
            v20 = a1;
          }

          else
          {
            v20 = *a1;
          }

          if (v20[v17] == 10)
          {
            *a2 = ++v19;
            v18 = v17;
          }

          ++v17;
        }

        while (v9 != v17);
      }

      else
      {
        v18 = 0;
      }

      *(a2 + 4) = v9 - v18;
      if (v16 > 0x11)
      {
        v24 = "Unknown error.";
      }

      else
      {
        v24 = off_29F2953A0[v16 & 0x1F];
      }

      MEMORY[0x29C2C1A60](a2 + 8, v24);
    }
  }

  else
  {
    v21 = *(&v38 + 1);
    v22 = v39;
    if (v39 - *(&v38 + 1) != 16)
    {
      LOBYTE(v27) = 0;
      v25 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Unexpected value count: %zu", a2, a3, (v39 - *(&v38 + 1)) >> 4, "js/json.cpp", "JsParseString", 267, "JsValue pxrInternal__aapl__pxrReserved__::JsParseString(const std::string &, JsParseError *)", v27, v28, v29, __p[0]);
      pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "handler.values.size() == 1", v25);
      v21 = *(&v38 + 1);
      v22 = v39;
    }

    if (v21 != v22)
    {
      *a4 = *v21;
      v23 = v21[1];
      *(a4 + 1) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      goto LABEL_38;
    }
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a4);
LABEL_38:
  free(v31[0]);
  if (__p[1])
  {
    operator delete(__p[1]);
  }

  __p[0] = &v38 + 8;
  sub_29A0176E4(__p);
  __p[0] = &v37;
  sub_29A012C90(__p);
}

void sub_29A14909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A14A0C0(va);
  sub_29A1490D0((v9 - 80));
  _Unwind_Resume(a1);
}

void **sub_29A1490D0(void **a1)
{
  v3 = a1 + 3;
  sub_29A0176E4(&v3);
  v3 = a1;
  sub_29A012C90(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::JsWriteToStream(pxrInternal__aapl__pxrReserved__::JsValue *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    v14[0] = "js/json.cpp";
    v14[1] = "JsWriteToStream";
    v14[2] = 278;
    v15 = "void pxrInternal__aapl__pxrReserved__::JsWriteToStream(const JsValue &, std::ostream &)";
    v16 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v14, 1, "Stream error");
  }

  else
  {
    sub_29A14F484(v14, 0, 1024, 0);
    sub_29A149294(a1, v15, v13);
    v12 = a2;
    v4 = &v12;
    *__p = 0u;
    *v6 = 0u;
    v7 = 0;
    v8 = 512;
    v9 = 324;
    v10 = 0x2000;
    v11 = 0x100000004;
    sub_29B28EAC4(v13, &v4);
    free(v6[0]);
    if (__p[1])
    {
      operator delete(__p[1]);
    }

    sub_29A14F554(v14);
  }
}

void sub_29A149268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_29A14A0C0(v15 + 8);
  sub_29A14F554(va);
  _Unwind_Resume(a1);
}

void sub_29A149294(pxrInternal__aapl__pxrReserved__::JsValue *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x29EDCA608];
  Type = pxrInternal__aapl__pxrReserved__::JsValue::GetType(a1);
  if (Type > 2)
  {
    if (Type <= 4)
    {
      if (Type == 3)
      {
        Bool = pxrInternal__aapl__pxrReserved__::JsValue::GetBool(a1);
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = 0;
        if (Bool)
        {
          v8 = 10;
        }

        else
        {
          v8 = 9;
        }
      }

      else if (pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64(a1))
      {
        UInt64 = pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(a1);
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = UInt64;
        if (UInt64 < 0)
        {
          v8 = 278;
        }

        else
        {
          v8 = 406;
        }

        if (UInt64 >> 31)
        {
          v9 = 470;
        }

        else
        {
          v9 = 502;
        }

        if (!HIDWORD(UInt64))
        {
          v8 = v9;
        }
      }

      else
      {
        Int64 = pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(a1);
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *a3 = Int64;
        *(a3 + 22) = 150;
        if ((Int64 & 0x8000000000000000) != 0)
        {
          if (Int64 < 0xFFFFFFFF80000000)
          {
            return;
          }

          v8 = 182;
        }

        else
        {
          if (HIDWORD(Int64))
          {
            v8 = 406;
          }

          else
          {
            v8 = 470;
          }

          if (!(Int64 >> 31))
          {
            v8 = 502;
          }
        }
      }

      goto LABEL_53;
    }

    if (Type == 5)
    {
      Real = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(a1);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = Real;
      v8 = 534;
LABEL_53:
      *(a3 + 22) = v8;
      return;
    }

    if (Type == 6)
    {
LABEL_23:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return;
    }

LABEL_22:
    *&__dst = "js/json.cpp";
    *(&__dst + 1) = "_JsValueToImplValue";
    v28 = 201;
    v29 = "rj::Value pxrInternal__aapl__pxrReserved__::_JsValueToImplValue(const JsValue &, Allocator &) [Allocator = pxr_aapl::rapidjson::MemoryPoolAllocator<>]";
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__dst, 1, "Unknown JsValue type");
    goto LABEL_23;
  }

  if (Type)
  {
    if (Type == 1)
    {
      JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(a1);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 0;
      *(a3 + 22) = 4;
      v24 = *JsArray;
      v25 = JsArray[1];
      while (v24 != v25)
      {
        sub_29A149294(&__dst, v24, a2);
        sub_29A14F914(a3, &__dst, a2);
        v24 += 16;
      }
    }

    else
    {
      if (Type != 2)
      {
        goto LABEL_22;
      }

      String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(a1);
      if (*(String + 23) < 0)
      {
        String = *String;
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *&__dst = String;
      DWORD2(__dst) = strlen(String);
      sub_29A14F9C0(a3, &__dst, a2);
    }
  }

  else
  {
    JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(a1);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 22) = 3;
    v12 = JsObject + 1;
    v13 = *JsObject;
    if (*JsObject != JsObject + 1)
    {
      do
      {
        v14 = (v13 + 4);
        if (*(v13 + 55) < 0)
        {
          v14 = *v14;
        }

        __dst = 0uLL;
        v28 = 0;
        v15 = strlen(v14);
        v16 = v15;
        if (v15 > 0x15)
        {
          HIWORD(v28) = 3077;
          LODWORD(__dst) = v15;
          p_dst = sub_29A14F81C(a2, v15 + 1);
          *(&__dst + 1) = p_dst;
        }

        else
        {
          HIWORD(v28) = 7173;
          BYTE5(v28) = 21 - v15;
          p_dst = &__dst;
        }

        memcpy(p_dst, v14, v16);
        *(p_dst + v16) = 0;
        sub_29A149294(&v31, v13 + 7, a2);
        sub_29A14F680(a3, &__dst, &v31, a2);
        v18 = v13[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v13[2];
            v20 = *v19 == v13;
            v13 = v19;
          }

          while (!v20);
        }

        v13 = v19;
      }

      while (v19 != v12);
    }
  }
}

void *pxrInternal__aapl__pxrReserved__::JsWriteToString@<X0>(pxrInternal__aapl__pxrReserved__ *this@<X0>, void *a2@<X8>)
{
  v20[13] = *MEMORY[0x29EDCA608];
  sub_29A14F484(v20, 0, 1024, 0);
  sub_29A149294(this, v20[3], v19);
  *v15 = 0u;
  *v16 = 0u;
  v17 = 0;
  v18 = 256;
  v7 = v15;
  *__p = 0u;
  *v9 = 0u;
  v10 = 0;
  v11 = 512;
  v12 = 324;
  v13 = 0x2000;
  v14 = 0x100000004;
  sub_29B28EDD4(v19, &v7);
  v5 = sub_29A1497A4(v15);
  sub_29A008E78(a2, v5);
  free(v9[0]);
  if (__p[1])
  {
    operator delete(__p[1]);
  }

  free(v16[0]);
  if (v15[1])
  {
    operator delete(v15[1]);
  }

  return sub_29A14F554(v20);
}

uint64_t sub_29A1497A4(void *a1)
{
  v2 = a1[3];
  if ((a1[4] - v2) <= 0)
  {
    sub_29A14D7E8(a1, 1);
    v2 = a1[3];
  }

  a1[3] = v2 + 1;
  *v2 = 0;
  result = a1[2];
  --a1[3];
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriteValue(uint64_t this, unint64_t **a2, const pxrInternal__aapl__pxrReserved__::JsValue *a3)
{
  if (this)
  {
    v4 = this;
    if (pxrInternal__aapl__pxrReserved__::JsValue::IsObject(a2))
    {
      JsObject = pxrInternal__aapl__pxrReserved__::JsValue::GetJsObject(a2);
      (*(***v4 + 80))(**v4);
      v8 = *JsObject;
      v6 = JsObject + 1;
      v7 = v8;
      if (v8 != v6)
      {
        do
        {
          v9 = *(v7 + 55);
          if (v9 >= 0)
          {
            v10 = v7 + 4;
          }

          else
          {
            v10 = v7[4];
          }

          if (v9 >= 0)
          {
            v11 = *(v7 + 55);
          }

          else
          {
            v11 = v7[5];
          }

          (*(***v4 + 88))(**v4, v10, v11);
          pxrInternal__aapl__pxrReserved__::JsWriteValue(v4, (v7 + 7), v12);
          v13 = v7[1];
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
              v14 = v7[2];
              v15 = *v14 == v7;
              v7 = v14;
            }

            while (!v15);
          }

          v7 = v14;
        }

        while (v14 != v6);
      }

      v16 = *(***v4 + 96);

      return v16();
    }

    if (pxrInternal__aapl__pxrReserved__::JsValue::IsArray(a2))
    {
      JsArray = pxrInternal__aapl__pxrReserved__::JsValue::GetJsArray(a2);
      (*(***v4 + 104))(**v4);
      v19 = *JsArray;
      v20 = *(JsArray + 8);
      while (v19 != v20)
      {
        pxrInternal__aapl__pxrReserved__::JsWriteValue(v4, v19, v18);
        v19 = (v19 + 16);
      }

      v16 = *(***v4 + 112);

      return v16();
    }

    if (pxrInternal__aapl__pxrReserved__::JsValue::IsUInt64(a2))
    {
      pxrInternal__aapl__pxrReserved__::JsValue::GetUInt64(a2);
      v21 = *(***v4 + 56);

      return v21();
    }

    if (pxrInternal__aapl__pxrReserved__::JsValue::IsString(a2))
    {
      String = pxrInternal__aapl__pxrReserved__::JsValue::GetString(a2);
      v23 = *(String + 23);
      if (v23 >= 0)
      {
        v24 = String;
      }

      else
      {
        v24 = *String;
      }

      if (v23 >= 0)
      {
        v25 = *(String + 23);
      }

      else
      {
        v25 = *(String + 8);
      }

      v26 = *(***v4 + 72);
      v27 = **v4;

      return v26(v27, v24, v25);
    }

    else
    {
      if (pxrInternal__aapl__pxrReserved__::JsValue::IsBool(a2))
      {
        pxrInternal__aapl__pxrReserved__::JsValue::GetBool(a2);
        v21 = *(***v4 + 24);

        return v21();
      }

      if (!pxrInternal__aapl__pxrReserved__::JsValue::IsReal(a2))
      {
        if (!pxrInternal__aapl__pxrReserved__::JsValue::IsInt(a2))
        {
          this = pxrInternal__aapl__pxrReserved__::JsValue::IsNull(a2);
          if (!this)
          {
            return this;
          }

          v16 = *(***v4 + 16);

          return v16();
        }

        pxrInternal__aapl__pxrReserved__::JsValue::GetInt64(a2);
        v21 = *(***v4 + 48);

        return v21();
      }

      v28.n128_f64[0] = pxrInternal__aapl__pxrReserved__::JsValue::GetReal(a2);
      v29 = *(***v4 + 64);

      return v29(v28);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return (*(*v2 + 88))(v2, a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(pxrInternal__aapl__pxrReserved__::JsWriter *this)
{
  return (*(***this + 56))();
}

{
  return (*(***this + 24))();
}

{
  return (*(***this + 48))();
}

{
  return (*(***this + 32))();
}

{
  return (*(***this + 40))();
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(uint64_t **a1, uint64_t *a2)
{
  v2 = **a1;
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return (*(*v2 + 72))(v2, a2, v4);
}

void *pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(void *a1, uint64_t a2, int a3)
{
  v6 = operator new(0x10uLL);
  sub_29A14A10C(v6, a2, a3);
  *a1 = v6;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(uint64_t **this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A150524(this, v1);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    sub_29A150524(this, v1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriter::WriteValue(uint64_t **this, const char *__s)
{
  v3 = **this;
  v4 = strlen(__s);
  v5 = *(*v3 + 72);

  return v5(v3, __s, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::JsWriter::WriteKey(uint64_t **this, const char *__s)
{
  v3 = **this;
  v4 = strlen(__s);
  v5 = *(*v3 + 88);

  return v5(v3, __s, v4);
}

void sub_29A14A0C0(uint64_t a1)
{
  free(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    operator delete(v2);
  }
}

void *sub_29A14A10C(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = a2;
  v4 = a1 + 1;
  if (a3 == 1)
  {
    v5 = operator new(0x50uLL);
    v5[1] = v4;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    v5[6] = 0;
    v5[7] = 512;
    *(v5 + 16) = 324;
    *(v5 + 34) = 0x2000;
    v5[9] = 4;
    v6 = &unk_2A2040B10;
    goto LABEL_5;
  }

  if (!a3)
  {
    v5 = operator new(0x48uLL);
    v5[1] = v4;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    v5[6] = 0;
    v5[7] = 512;
    *(v5 + 16) = 324;
    *(v5 + 68) = 0;
    v6 = &unk_2A2040A18;
LABEL_5:
    *v5 = v6;
    *a1 = v5;
  }

  return a1;
}

void sub_29A14A21C(void *a1)
{
  sub_29A14A0C0(a1 + 16);

  operator delete(a1);
}

uint64_t sub_29A14A288(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfDoubleToString(__s, a2, 0x20, 1);
  v3 = strlen(__s);
  return sub_29B28F26C(a1 + 8, __s, v3);
}

uint64_t sub_29A14A348(uint64_t a1)
{
  sub_29A14A39C(a1);
  v2 = sub_29A14A410();
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v2;
}

uint64_t sub_29A14A39C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == *(result + 24))
  {
    *(result + 60) = 1;
  }

  else
  {
    if (*(v1 - 16))
    {
      result = std::ostream::put();
    }

    ++*(v1 - 16);
  }

  return result;
}

uint64_t sub_29A14A410()
{
  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  return 1;
}

uint64_t sub_29A14A474(uint64_t a1, int a2)
{
  sub_29A14A39C(a1);
  v4 = sub_29A14A4D8(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14A4D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    std::ostream::put();
  }

  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  std::ostream::put();
  return 1;
}

uint64_t sub_29A14A568(uint64_t a1, unsigned int a2)
{
  sub_29A14A39C(a1);
  v4 = sub_29A14A5C4(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14A5C4(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  *&v9[10] = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v3 = v9;
    v8 = 45;
    v2 = -v2;
  }

  else
  {
    v3 = &v8;
  }

  v4 = sub_29A14A678(v2, v3);
  if (&v8 != v4)
  {
    v5 = v4;
    v6 = &v8;
    do
    {
      ++v6;
      std::ostream::put();
    }

    while (v6 != v5);
  }

  return 1;
}

_BYTE *sub_29A14A678(unsigned int a1, _BYTE *a2)
{
  if (a1 >> 4 <= 0x270)
  {
    if (a1 < 0x3E8)
    {
      if (a1 < 0x64)
      {
        if (a1 < 0xA)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      *a2++ = a00010203040506[2 * (a1 / 0x64u)];
    }

    *a2++ = a00010203040506[2 * (a1 / 0x64u) + 1];
LABEL_9:
    *a2++ = a00010203040506[2 * (a1 % 0x64u)];
LABEL_10:
    *a2 = a00010203040506[(2 * (a1 % 0x64u)) + 1];
    return a2 + 1;
  }

  if (a1 < 0x5F5E100)
  {
    v2 = (a1 / 0x7A120uLL) & 0x3FFE;
    if (a1 < 0x989680)
    {
      if (a1 < 0xF4240)
      {
        if (a1 >> 5 < 0xC35)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *a2++ = a00010203040506[v2];
    }

    *a2++ = a00010203040506[v2 + 1];
LABEL_15:
    *a2++ = a00010203040506[2 * ((a1 / 0x2710) % 0x64u)];
LABEL_16:
    *a2 = a00010203040506[(2 * ((a1 / 0x2710) % 0x64u)) + 1];
    a2[1] = a00010203040506[2 * (a1 % 0x2710 / 0x64)];
    a2[2] = a00010203040506[2 * (a1 % 0x2710 / 0x64) + 1];
    a2[3] = a00010203040506[2 * (a1 % 0x2710 % 0x64)];
    a2[4] = a00010203040506[(2 * (a1 % 0x2710 % 0x64)) + 1];
    return a2 + 5;
  }

  v4 = a1 / 0x5F5E100;
  v5 = a1 % 0x5F5E100;
  if (a1 < 0x3B9ACA00)
  {
    *a2 = v4 | 0x30;
    v6 = a2 + 1;
  }

  else
  {
    *a2 = *&a00010203040506[2 * v4];
    v6 = a2 + 2;
  }

  v7 = v6;
  *v6 = *&a00010203040506[(v5 / 0x7A120uLL) & 0x3FFE];
  *(v6 + 1) = *&a00010203040506[2 * ((v5 / 0x2710) % 0x64u)];
  *(v6 + 2) = *&a00010203040506[2 * (v5 % 0x2710 / 0x64)];
  v6[6] = a00010203040506[2 * (v5 % 0x2710 % 0x64)];
  v3 = v6 + 8;
  v7[7] = a00010203040506[(2 * (v5 % 0x2710 % 0x64)) + 1];
  return v3;
}

uint64_t sub_29A14A918(uint64_t a1, unsigned int a2)
{
  sub_29A14A39C(a1);
  v4 = sub_29A14A974(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14A974(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = sub_29A14A678(a2, v6);
  if (v6 != v2)
  {
    v3 = v2;
    v4 = v6;
    do
    {
      ++v4;
      std::ostream::put();
    }

    while (v4 != v3);
  }

  return 1;
}

uint64_t sub_29A14AA10(uint64_t a1, unint64_t a2)
{
  sub_29A14A39C(a1);
  v4 = sub_29A14AA6C(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14AA6C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  *&v9[20] = *MEMORY[0x29EDCA608];
  if ((a2 & 0x8000000000000000) != 0)
  {
    v3 = v9;
    v8 = 45;
    v2 = -v2;
  }

  else
  {
    v3 = &v8;
  }

  v4 = sub_29A14AB20(v2, v3);
  if (&v8 != v4)
  {
    v5 = v4;
    v6 = &v8;
    do
    {
      ++v6;
      std::ostream::put();
    }

    while (v6 != v5);
  }

  return 1;
}

_BYTE *sub_29A14AB20(unint64_t a1, _BYTE *a2)
{
  if (a1 >= 0x5F5E100)
  {
    if (a1 < 0x2386F26FC10000)
    {
      v3 = a1 % 0x5F5E100;
      v4 = a1 / 0x5F5E100;
      v5 = (v4 / 0x7A120uLL) & 0x3FFE;
      v6 = 2 * ((v4 / 0x2710) % 0x64u);
      v7 = 2 * (v4 % 0x2710 / 0x64);
      v8 = 2 * (v4 % 0x2710 % 0x64);
      v9 = v3 % 0x2710;
      v10 = (v3 / 0x7A120uLL) & 0x3FFE;
      v11 = 2 * ((v3 / 0x2710) % 0x64u);
      if (a1 < 0x38D7EA4C68000)
      {
        if (a1 < 0x5AF3107A4000)
        {
          if (a1 < 0x9184E72A000)
          {
            if (a1 < 0xE8D4A51000)
            {
              if (a1 < 0x174876E800)
              {
                if (a1 < 0x2540BE400)
                {
                  if (a1 < 0x3B9ACA00)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                *a2++ = a00010203040506[v7 + 1];
LABEL_22:
                *a2++ = a00010203040506[v8];
LABEL_23:
                *a2 = a00010203040506[v8 + 1];
                a2[1] = a00010203040506[v10];
                a2[2] = a00010203040506[v10 + 1];
                a2[3] = a00010203040506[v11];
                a2[4] = a00010203040506[v11 + 1];
                a2[5] = a00010203040506[2 * (v9 / 0x64u)];
                a2[6] = a00010203040506[2 * (v9 / 0x64u) + 1];
                a2[7] = a00010203040506[2 * (v9 % 0x64u)];
                a2[8] = a00010203040506[(2 * (v9 % 0x64u)) + 1];
                return a2 + 9;
              }

LABEL_20:
              *a2++ = a00010203040506[v7];
              goto LABEL_21;
            }

LABEL_19:
            *a2++ = a00010203040506[v6 + 1];
            goto LABEL_20;
          }

LABEL_18:
          *a2++ = a00010203040506[v6];
          goto LABEL_19;
        }
      }

      else
      {
        *a2++ = a00010203040506[v5];
      }

      *a2++ = a00010203040506[v5 + 1];
      goto LABEL_18;
    }

    v13 = a1 / 0x2386F26FC10000;
    v14 = a1 % 0x2386F26FC10000;
    if (a1 > 0x16345785D89FFFFLL)
    {
      if (a1 > 0xDE0B6B3A763FFFFLL)
      {
        v21 = (1311 * v13) >> 17;
        if (a1 > 0x8AC7230489E7FFFFLL)
        {
          v22 = 2 * (v13 - 100 * v21);
          *a2 = *&a00010203040506[2 * v21];
          a2[2] = a00010203040506[v22];
          v23 = a00010203040506[(v22 & 0xFFFE) + 1];
          v17 = a2 + 4;
          a2[3] = v23;
        }

        else
        {
          *a2 = v21 + 48;
          *(a2 + 1) = *&a00010203040506[2 * (v13 - 100 * v21)];
          v17 = a2 + 3;
        }

        goto LABEL_31;
      }

      *a2 = *&a00010203040506[2 * v13];
      v15 = a2 + 2;
    }

    else
    {
      *a2 = v13 | 0x30;
      v15 = a2 + 1;
    }

    v17 = v15;
LABEL_31:
    v18 = v14 % 0x5F5E100;
    v19 = v14 / 0x5F5E100;
    *v17 = *&a00010203040506[(v19 / 0x7A120uLL) & 0x3FFE];
    *(v17 + 1) = *&a00010203040506[2 * ((v19 / 0x2710) % 0x64u)];
    *(v17 + 2) = *&a00010203040506[2 * (v19 % 0x2710 / 0x64)];
    v17[6] = a00010203040506[2 * (v19 % 0x2710 % 0x64)];
    v17[7] = a00010203040506[(2 * (v19 % 0x2710 % 0x64)) + 1];
    *(v17 + 4) = *&a00010203040506[(v18 / 0x7A120uLL) & 0x3FFE];
    *(v17 + 5) = *&a00010203040506[2 * ((v18 / 0x2710) % 0x64u)];
    *(v17 + 6) = *&a00010203040506[2 * (v18 % 0x2710 / 0x64)];
    v17[14] = a00010203040506[2 * (v18 % 0x2710 % 0x64)];
    v16 = v17 + 16;
    v17[15] = a00010203040506[(2 * (v18 % 0x2710 % 0x64)) + 1];
    return v16;
  }

  if (a1 >> 4 > 0x270)
  {
    v12 = (a1 / 0x7A120uLL) & 0x3FFE;
    if (a1 < 0x989680)
    {
      if (a1 < 0xF4240)
      {
        if (a1 >> 5 < 0xC35)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      *a2++ = a00010203040506[v12];
    }

    *a2++ = a00010203040506[v12 + 1];
LABEL_26:
    *a2++ = a00010203040506[2 * ((a1 / 0x2710) % 0x64u)];
LABEL_27:
    *a2 = a00010203040506[(2 * ((a1 / 0x2710) % 0x64u)) + 1];
    a2[1] = a00010203040506[2 * (a1 % 0x2710 / 0x64)];
    a2[2] = a00010203040506[2 * (a1 % 0x2710 / 0x64) + 1];
    a2[3] = a00010203040506[2 * (a1 % 0x2710 % 0x64)];
    a2[4] = a00010203040506[(2 * (a1 % 0x2710 % 0x64)) + 1];
    return a2 + 5;
  }

  v2 = 2 * (a1 / 0x64uLL);
  if (a1 < 0x3E8)
  {
    if (a1 < 0x64)
    {
      if (a1 < 0xA)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *a2++ = a00010203040506[v2];
  }

  *a2++ = a00010203040506[v2 + 1];
LABEL_14:
  *a2++ = a00010203040506[2 * (a1 % 0x64)];
LABEL_15:
  *a2 = a00010203040506[2 * (a1 % 0x64) + 1];
  return a2 + 1;
}

uint64_t sub_29A14B150(uint64_t a1, unint64_t a2)
{
  sub_29A14A39C(a1);
  v4 = sub_29A14B1AC(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14B1AC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = sub_29A14AB20(a2, v6);
  if (v6 != v2)
  {
    v3 = v2;
    v4 = v6;
    do
    {
      ++v4;
      std::ostream::put();
    }

    while (v4 != v3);
  }

  return 1;
}

uint64_t sub_29A14B248(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_29A14A39C(a1);
  v6 = sub_29A14B2B4(a1, a2, a3);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v6;
}

uint64_t sub_29A14B2B4(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  std::ostream::put();
  if (a3)
  {
    v6 = 0;
    do
    {
      if (a00010203040506[*(a2 + v6) + 216])
      {
        sub_29B28F3E8(**a1, a1, a00010203040506[*(a2 + v6) + 216]);
      }

      else
      {
        std::ostream::put();
      }

      ++v6;
    }

    while (v6 < a3);
  }

  std::ostream::put();
  return 1;
}

uint64_t sub_29A14B360(void *a1)
{
  sub_29A14A39C(a1);
  v2 = a1[4];
  if (a1[5] - v2 <= 15)
  {
    sub_29A14B3D0(a1 + 1, 1);
    v2 = a1[4];
  }

  a1[4] = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 0;
  std::ostream::put();
  return 1;
}

char *sub_29A14B3D0(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[4] - v4 + ((a1[4] - v4 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      v6 = operator new(1uLL);
      *a1 = v6;
      a1[1] = v6;
    }

    v4 = 0;
    v5 = a1[5];
  }

  v7 = a1[3] - v4 + 16 * a2;
  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return sub_29A14B454(a1, v8);
}

char *sub_29A14B454(void *a1, size_t __size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (__size)
  {
    result = realloc(v4, __size);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[__size];
  return result;
}

uint64_t sub_29A14B4B4(uint64_t a1)
{
  *(a1 + 32) -= 16;
  std::ostream::put();
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return 1;
}

uint64_t sub_29A14B510(void *a1)
{
  sub_29A14A39C(a1);
  v2 = a1[4];
  if (a1[5] - v2 <= 15)
  {
    sub_29A14B3D0(a1 + 1, 1);
    v2 = a1[4];
  }

  a1[4] = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 1;
  std::ostream::put();
  return 1;
}

uint64_t sub_29A14B584(uint64_t a1)
{
  *(a1 + 32) -= 16;
  std::ostream::put();
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return 1;
}

void sub_29A14B60C(void *a1)
{
  sub_29A14A0C0(a1 + 16);

  operator delete(a1);
}

uint64_t sub_29A14B6C0(uint64_t a1)
{
  sub_29A14B714(a1);
  v2 = sub_29A14A410();
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v2;
}

uint64_t sub_29A14B714(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 == *(result + 24))
  {
    *(result + 60) = 1;
    return result;
  }

  v3 = *(v2 - 16);
  if (*(v2 - 8) == 1)
  {
    if (v3)
    {
      result = std::ostream::put();
      if (*(v1 + 68))
      {
        result = std::ostream::put();
      }
    }

    if (*(v1 + 68))
    {
      goto LABEL_13;
    }

    std::ostream::put();
  }

  else
  {
    if (v3)
    {
      std::ostream::put();
    }

    result = std::ostream::put();
    if (*(v2 - 16))
    {
      goto LABEL_13;
    }
  }

  result = sub_29A14B804(v1);
LABEL_13:
  ++*(v2 - 16);
  return result;
}

uint64_t sub_29A14B804(uint64_t result)
{
  for (i = ((*(result + 32) - *(result + 24)) >> 4) * *(result + 64); i; --i)
  {
    result = std::ostream::put();
  }

  return result;
}

uint64_t sub_29A14B85C(uint64_t a1, int a2)
{
  sub_29A14B714(a1);
  v4 = sub_29A14A4D8(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14B8C0(uint64_t a1, unsigned int a2)
{
  sub_29A14B714(a1);
  v4 = sub_29A14A5C4(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14B91C(uint64_t a1, unsigned int a2)
{
  sub_29A14B714(a1);
  v4 = sub_29A14A974(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14B978(uint64_t a1, unint64_t a2)
{
  sub_29A14B714(a1);
  v4 = sub_29A14AA6C(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14B9D4(uint64_t a1, unint64_t a2)
{
  sub_29A14B714(a1);
  v4 = sub_29A14B1AC(a1, a2);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v4;
}

uint64_t sub_29A14BA30(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::TfDoubleToString(__s, a2, 0x20, 1);
  v3 = strlen(__s);
  return sub_29B28F2E8(a1, __s, v3);
}

uint64_t sub_29A14BAB0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_29A14B714(a1);
  v6 = sub_29A14B2B4(a1, a2, a3);
  if (*(a1 + 32) == *(a1 + 24))
  {
    std::ostream::flush();
  }

  return v6;
}

uint64_t sub_29A14BB1C(void *a1)
{
  sub_29A14B714(a1);
  v2 = a1[4];
  if (a1[5] - v2 <= 15)
  {
    sub_29A14B3D0(a1 + 1, 1);
    v2 = a1[4];
  }

  a1[4] = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 0;
  std::ostream::put();
  return 1;
}

uint64_t sub_29A14BB8C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 - 16);
  *(a1 + 32) = v2 - 16;
  if (v3)
  {
    std::ostream::put();
    sub_29A14B804(a1);
  }

  std::ostream::put();
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v5)
  {
    std::ostream::flush();
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
  }

  if (v4 == v5)
  {
    std::ostream::flush();
  }

  return 1;
}

uint64_t sub_29A14BC1C(void *a1)
{
  sub_29A14B714(a1);
  v2 = a1[4];
  if (a1[5] - v2 <= 15)
  {
    sub_29A14B3D0(a1 + 1, 1);
    v2 = a1[4];
  }

  a1[4] = v2 + 16;
  *v2 = 0;
  *(v2 + 8) = 1;
  std::ostream::put();
  return 1;
}

uint64_t sub_29A14BC90(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 - 16);
  *(a1 + 32) = v2 - 16;
  if (v3 && (*(a1 + 68) & 1) == 0)
  {
    std::ostream::put();
    sub_29A14B804(a1);
  }

  std::ostream::put();
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4 == v5)
  {
    std::ostream::flush();
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
  }

  if (v4 == v5)
  {
    std::ostream::flush();
  }

  return 1;
}

BOOL sub_29A14BD28(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_29A14BE88(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_29A14BE58(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_29A14BE88(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

void sub_29A14BF08(uint64_t a1, unsigned __int8 **a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 <= 0x6D)
  {
    if (v7 != 34)
    {
      if (v7 == 91)
      {
        v8 = v6 + 1;
        *a2 = v6 + 1;
        while (1)
        {
          v9 = *v8;
          v10 = v9 > 0x20;
          v11 = (1 << v9) & 0x100002600;
          if (v10 || v11 == 0)
          {
            break;
          }

          ++v8;
        }

        *a2 = v8;
        if (!*(a1 + 48))
        {
          if (*v8 == 93)
          {
            *a2 = v8 + 1;

            sub_29A14E01C(a3, 0);
          }

          else
          {
            sub_29B28F4A8(a1, a2, a3, (a1 + 48));
          }
        }

        return;
      }

      if (v7 == 102)
      {
        sub_29B28F5E4(v6, a2, a1, a3);
        return;
      }

LABEL_40:
      v106 = *a2;
      v107 = a2;
      v103 = &v106;
      *v104 = a1;
      v105 = 0;
      v23 = v106;
      v24 = *v106;
      if (v24 == 45)
      {
        v25 = v106 + 1;
        *&v106 = v106 + 1;
        v26 = *(v23 + 1);
      }

      else
      {
        v26 = *v106;
        v25 = v106;
      }

      v100 = *(&v106 + 1);
      v98 = v24;
      v101 = v23;
      if (v26 == 48)
      {
        v61 = *(a1 + 24);
        if ((*(a1 + 32) - v61) <= 0)
        {
          sub_29A14D7E8(a1, 1);
          v61 = *(a1 + 24);
        }

        v42 = 0;
        v43 = 0;
        v36 = 0;
        v102 = 0;
        v32 = 0;
        *(a1 + 24) = v61 + 1;
        *v61 = 48;
        v28 = ++v105;
        v29 = v103;
        v31 = (*v103 + 1);
        *v103 = v31;
        v33 = *v31;
        v35 = 0.0;
      }

      else
      {
        if ((v26 - 49) > 8)
        {
          v59 = (v25 - *(&v106 + 1));
          v60 = 3;
          goto LABEL_227;
        }

        v27 = *(a1 + 24);
        if ((*(a1 + 32) - v27) <= 0)
        {
          sub_29A14D7E8(a1, 1);
          v27 = *(a1 + 24);
        }

        *(a1 + 24) = v27 + 1;
        *v27 = v26;
        v28 = ++v105;
        v29 = v103;
        v30 = *v103;
        v31 = (*v103 + 1);
        *v103 = v31;
        v32 = *v30 - 48;
        v33 = v30[1];
        v34 = v33 - 48;
        v35 = 0.0;
        if (v24 == 45)
        {
          if (v34 <= 9)
          {
            v36 = 0;
            v37 = 214748364;
            while (1)
            {
              if (v32 > 0xCCCCCCB)
              {
                if (v32 != 214748364)
                {
                  goto LABEL_116;
                }

                if (v33 > 0x38)
                {
                  break;
                }
              }

              v38 = *(*v104 + 24);
              if ((*(*v104 + 32) - v38) <= 0)
              {
                sub_29A14D7E8(*v104, 1);
                v38 = *(*v104 + 24);
              }

              *(*v104 + 24) = v38 + 1;
              *v38 = v33;
              v28 = ++v105;
              v29 = v103;
              v39 = *v103;
              v31 = (*v103 + 1);
              *v103 = v31;
              v32 = *v39 + 10 * v32 - 48;
              ++v36;
              v33 = v39[1];
              if (v33 - 48 >= 0xA)
              {
                goto LABEL_69;
              }
            }

            v33 = 57;
LABEL_72:
            v42 = v37;
            if (v98 == 45)
            {
              while (v42 <= 0xCCCCCCCCCCCCCCBLL || v33 <= 0x38 && v42 == 0xCCCCCCCCCCCCCCCLL)
              {
                v44 = *(*v104 + 24);
                if ((*(*v104 + 32) - v44) <= 0)
                {
                  sub_29A14D7E8(*v104, 1);
                  v44 = *(*v104 + 24);
                }

                *(*v104 + 24) = v44 + 1;
                *v44 = v33;
                v28 = ++v105;
                v29 = v103;
                v45 = *v103;
                v31 = (*v103 + 1);
                *v103 = v31;
                v42 = (*v45 - 48) + 10 * v42;
                ++v36;
                v33 = v45[1];
                if (v33 - 48 >= 0xA)
                {
                  goto LABEL_89;
                }
              }
            }

            else
            {
              while (v42 <= 0x1999999999999998 || v33 <= 0x35 && v42 == 0x1999999999999999)
              {
                v46 = *(*v104 + 24);
                if ((*(*v104 + 32) - v46) <= 0)
                {
                  sub_29A14D7E8(*v104, 1);
                  v46 = *(*v104 + 24);
                }

                *(*v104 + 24) = v46 + 1;
                *v46 = v33;
                v28 = ++v105;
                v29 = v103;
                v47 = *v103;
                v31 = (*v103 + 1);
                *v103 = v31;
                v42 = (*v47 - 48) + 10 * v42;
                ++v36;
                v33 = v47[1];
                if (v33 - 48 >= 0xA)
                {
LABEL_89:
                  v43 = 0;
                  v35 = 0.0;
                  goto LABEL_95;
                }
              }
            }

            v35 = v42;
            do
            {
              v48 = *(*v104 + 24);
              if ((*(*v104 + 32) - v48) <= 0)
              {
                sub_29A14D7E8(*v104, 1);
                v48 = *(*v104 + 24);
              }

              *(*v104 + 24) = v48 + 1;
              *v48 = v33;
              v28 = ++v105;
              v29 = v103;
              v49 = *v103;
              v31 = (*v103 + 1);
              *v103 = v31;
              v35 = v35 * 10.0 + (*v49 - 48);
              v33 = v49[1];
            }

            while (v33 - 48 < 0xA);
            v43 = 1;
LABEL_95:
            v102 = 1;
            v32 = v37;
            goto LABEL_96;
          }
        }

        else if (v34 <= 9)
        {
          v36 = 0;
          v37 = 429496729;
          while (1)
          {
            if (v32 > 0x19999998)
            {
              if (v32 != 429496729)
              {
LABEL_116:
                v37 = v32;
                goto LABEL_72;
              }

              if (v33 > 0x35)
              {
                goto LABEL_72;
              }
            }

            v40 = *(*v104 + 24);
            if ((*(*v104 + 32) - v40) <= 0)
            {
              sub_29A14D7E8(*v104, 1);
              v40 = *(*v104 + 24);
            }

            *(*v104 + 24) = v40 + 1;
            *v40 = v33;
            v28 = ++v105;
            v29 = v103;
            v41 = *v103;
            v31 = (*v103 + 1);
            *v103 = v31;
            v32 = *v41 + 10 * v32 - 48;
            ++v36;
            v33 = v41[1];
            if (v33 - 48 >= 0xA)
            {
LABEL_69:
              v42 = 0;
              v43 = 0;
              goto LABEL_70;
            }
          }
        }

        v42 = 0;
        v43 = 0;
        v36 = 0;
LABEL_70:
        v102 = 0;
      }

LABEL_96:
      if (v33 != 46)
      {
        v51 = 0;
        v52 = v28;
        goto LABEL_177;
      }

      v50 = (v31 + 1);
      *v29 = v31 + 1;
      v33 = v31[1];
      if (v33 - 58 > 0xFFFFFFF5)
      {
        if (v43)
        {
          v51 = 0;
          v52 = v28;
        }

        else
        {
          if (!v102)
          {
            v42 = v32;
          }

          if (v42 >> 53)
          {
            v51 = 0;
            v52 = v28;
          }

          else
          {
            v53 = -1;
            do
            {
              v51 = v53;
              v54 = *(*v104 + 24);
              if ((*(*v104 + 32) - v54) <= 0)
              {
                sub_29A14D7E8(*v104, 1);
                v54 = *(*v104 + 24);
              }

              *(*v104 + 24) = v54 + 1;
              *v54 = v33;
              v52 = ++v105;
              v29 = v103;
              v55 = *v103;
              v50 = *v103 + 1;
              *v103 = v50;
              v42 = (*v55 - 48) + 10 * v42;
              if (v42)
              {
                ++v36;
              }

              v33 = v55[1];
              if (v33 <= 47)
              {
                break;
              }

              v53 = v51 - 1;
            }

            while (v33 <= 0x39 && v42 >> 53 == 0);
          }

          v35 = v42;
        }

        if (v33 - 48 > 9)
        {
          v43 = 1;
          v31 = v50;
        }

        else
        {
          do
          {
            v81 = *(*v104 + 24);
            v82 = *(*v104 + 32) - v81;
            if (v36 > 16)
            {
              if (v82 <= 0)
              {
                sub_29A14D7E8(*v104, 1);
                v81 = *(*v104 + 24);
              }

              *(*v104 + 24) = v81 + 1;
              *v81 = v33;
              v52 = ++v105;
              v29 = v103;
              v31 = (*v103 + 1);
              *v103 = v31;
            }

            else
            {
              if (v82 <= 0)
              {
                sub_29A14D7E8(*v104, 1);
                v81 = *(*v104 + 24);
              }

              *(*v104 + 24) = v81 + 1;
              *v81 = v33;
              v52 = ++v105;
              v29 = v103;
              v83 = *v103;
              v31 = (*v103 + 1);
              *v103 = v31;
              v35 = v35 * 10.0 + (*v83 - 48);
              --v51;
              if (v35 > 0.0)
              {
                ++v36;
              }
            }

            v33 = *v31;
          }

          while (v33 - 48 < 0xA);
          v43 = 1;
        }

LABEL_177:
        if (v33 != 101 && v33 != 69)
        {
          v89 = 0;
LABEL_231:
          v87 = a3;
          goto LABEL_190;
        }

        v84 = (v31 + 1);
        *v29 = v31 + 1;
        v85 = v32;
        if (v102)
        {
          v85 = v42;
        }

        if (!v43)
        {
          v35 = v85;
        }

        v86 = v31[1];
        if (v86 == 43)
        {
          v84 = (v31 + 2);
          *v29 = v31 + 2;
          v86 = v31[2];
        }

        else if (v86 == 45)
        {
          v84 = (v31 + 2);
          *v29 = v31 + 2;
          if (v31[2] - 48 <= 9)
          {
            *v29 = v31 + 3;
            v94 = v31[2] - 48;
            if (v31[3] - 48 <= 9)
            {
              v95 = v31 + 5;
              while (1)
              {
                *v29 = v95 - 1;
                v94 = *(v95 - 2) + 10 * v94 - 48;
                v96 = *(v95 - 1) - 48;
                if (v94 > (v51 + 2147483639) / 10)
                {
                  break;
                }

                ++v95;
                if (v96 >= 0xA)
                {
                  goto LABEL_230;
                }
              }

              if (v96 <= 9)
              {
                do
                {
                  *v29 = v95;
                  v97 = *v95++;
                }

                while ((v97 - 48) < 0xA);
              }
            }

LABEL_230:
            v89 = -v94;
            v43 = 1;
            goto LABEL_231;
          }

          goto LABEL_226;
        }

        v87 = a3;
        if ((v86 - 48) < 0xA)
        {
          v88 = v84 + 1;
          *v29 = v84 + 1;
          v89 = *v84 - 48;
          while (*v88 - 48 <= 9)
          {
            *v29 = v88 + 1;
            v89 = *v88++ + 10 * v89 - 48;
            if (v89 > 308 - v51)
            {
              goto LABEL_192;
            }
          }

          v43 = 1;
LABEL_190:
          v90 = sub_29A14E318(&v103);
          if (v43)
          {
            v91 = sub_29A14E388(v89 + v51, v90, v52, v28, v89, v35);
            if (v91 > 1.79769313e308)
            {
LABEL_192:
              *(a1 + 48) = 13;
              *(a1 + 56) = v101 - v100;
LABEL_215:
              *v107 = v106;
              return;
            }

            if (v98 == 45)
            {
              v91 = -v91;
            }

            v108 = v91;
            v92 = v87[4];
            if (v92 >= v87[5])
            {
              v93 = sub_29A14EF34(v87 + 3, &v108);
              goto LABEL_214;
            }

            pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v87[4], v91);
          }

          else if (v102)
          {
            if (v98 == 45)
            {
              *&v108 = -v42;
              v92 = v87[4];
              if (v92 >= v87[5])
              {
                v93 = sub_29A14F044(v87 + 3, &v108);
                goto LABEL_214;
              }

              pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v87[4], -v42);
            }

            else
            {
              v108 = *&v42;
              v92 = v87[4];
              if (v92 >= v87[5])
              {
                v93 = sub_29A14F154(v87 + 3, &v108);
                goto LABEL_214;
              }

              pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v87[4], v42);
            }
          }

          else if (v98 == 45)
          {
            LODWORD(v108) = -v32;
            v92 = v87[4];
            if (v92 >= v87[5])
            {
              v93 = sub_29A14F264(v87 + 3, &v108);
              goto LABEL_214;
            }

            pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v87[4], -v32);
          }

          else
          {
            *&v108 = v32;
            v92 = v87[4];
            if (v92 >= v87[5])
            {
              v93 = sub_29A14F374(v87 + 3, &v108);
              goto LABEL_214;
            }

            pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v87[4], v32);
          }

          v93 = v92 + 16;
          v87[4] = v92 + 16;
LABEL_214:
          v87[4] = v93;
          goto LABEL_215;
        }

LABEL_226:
        v59 = &v84[-*(v29 + 1)];
        v60 = 15;
        goto LABEL_227;
      }

      v59 = (v50 - *(v29 + 1));
      v60 = 14;
LABEL_227:
      *(a1 + 48) = v60;
      *(a1 + 56) = v59;
      goto LABEL_215;
    }

    sub_29A14CD7C(a1, a2, a3, 0);
    return;
  }

  if (v7 == 110)
  {
    v17 = v6 + 1;
    *a2 = v6 + 1;
    if (v6[1] == 117)
    {
      v17 = v6 + 2;
      *a2 = v6 + 2;
      if (v6[2] == 108)
      {
        v17 = v6 + 3;
        *a2 = v6 + 3;
        if (v6[3] == 108)
        {
          *a2 = v6 + 4;
          v18 = a3[4];
          if (v18 >= a3[5])
          {
            v19 = sub_29A14D0EC(a3 + 3);
          }

          else
          {
            pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a3[4]);
            v19 = v18 + 16;
            a3[4] = v18 + 16;
          }

          a3[4] = v19;
          return;
        }
      }
    }

    v57 = v17 - a2[1];
    v58 = 3;
    goto LABEL_118;
  }

  if (v7 != 123)
  {
    if (v7 == 116)
    {
      sub_29B28F64C(v6, a2, a1, a3);
      return;
    }

    goto LABEL_40;
  }

  v13 = v6 + 1;
  *a2 = v6 + 1;
  while (1)
  {
    v14 = *v13;
    v10 = v14 > 0x20;
    v15 = (1 << v14) & 0x100002600;
    if (v10 || v15 == 0)
    {
      break;
    }

    ++v13;
  }

  *a2 = v13;
  if (!*(a1 + 48))
  {
    v20 = *v13;
    if (v20 == 125)
    {
      *a2 = v13 + 1;
      v21 = a3;
      v22 = 0;
LABEL_34:

      sub_29A14DAA4(v21, v22);
      return;
    }

    if (v20 == 34)
    {
      v62 = 0;
      do
      {
        sub_29A14CD7C(a1, a2, a3, 1);
        if (*(a1 + 48))
        {
          return;
        }

        v63 = *a2;
        for (i = *a2; ; ++i)
        {
          v65 = *i;
          v10 = v65 > 0x20;
          v66 = (1 << v65) & 0x100002600;
          if (v10 || v66 == 0)
          {
            break;
          }

          ++v63;
        }

        *a2 = i;
        if (*i != 58)
        {
          v57 = v63 - a2[1];
          v58 = 5;
          goto LABEL_118;
        }

        v68 = i + 1;
        *a2 = i + 1;
        while (1)
        {
          v69 = *v68;
          v10 = v69 > 0x20;
          v70 = (1 << v69) & 0x100002600;
          if (v10 || v70 == 0)
          {
            break;
          }

          ++v68;
        }

        *a2 = v68;
        sub_29A14BF08(a1, a2, a3);
        if (*(a1 + 48))
        {
          return;
        }

        v72 = *a2;
        for (j = *a2; ; ++j)
        {
          v74 = *j;
          v10 = v74 > 0x20;
          v75 = (1 << v74) & 0x100002600;
          if (v10 || v75 == 0)
          {
            break;
          }

          ++v72;
        }

        *a2 = j;
        ++v62;
        v77 = *j;
        if (v77 != 44)
        {
          if (v77 == 125)
          {
            *a2 = j + 1;
            v21 = a3;
            v22 = v62;
            goto LABEL_34;
          }

          v57 = v72 - a2[1];
          v58 = 6;
          goto LABEL_118;
        }

        v13 = j + 1;
        *a2 = j + 1;
        while (1)
        {
          v78 = *v13;
          v10 = v78 > 0x20;
          v79 = (1 << v78) & 0x100002600;
          if (v10 || v79 == 0)
          {
            break;
          }

          ++v13;
        }

        *a2 = v13;
      }

      while (*v13 == 34);
    }

    v57 = v13 - a2[1];
    v58 = 4;
LABEL_118:
    *(a1 + 48) = v58;
    *(a1 + 56) = v57;
  }
}

double sub_29A14CD7C(uint64_t a1, _OWORD *a2, void *a3, int a4)
{
  v35 = *a2;
  v7 = (v35 + 1);
  v36 = a2;
  *&v35 = v35 + 1;
  *v33 = a1;
  LODWORD(__len) = 0;
  while (1)
  {
    v8 = *v7;
    if (v8 != 92)
    {
      break;
    }

    *&v35 = v7 + 1;
    v12 = v7[1];
    v9 = byte_29B47D991[v12];
    if (v9)
    {
      *&v35 = v7 + 2;
      v10 = *v33;
      v11 = *(*v33 + 24);
      if ((*(*v33 + 32) - v11) <= 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v13 = &v7[-*(&v35 + 1)];
    if (v12 != 117)
    {
      *(a1 + 48) = 10;
      *(a1 + 56) = v13;
      goto LABEL_38;
    }

    *&v35 = v7 + 2;
    v32 = &v7[-*(&v35 + 1)];
    v14 = sub_29A14D478(a1, &v35, v13);
    if (*(a1 + 48))
    {
      goto LABEL_38;
    }

    v15 = v14;
    if (v14 >> 11 == 27)
    {
      if (v14 >> 10 > 0x36)
      {
        goto LABEL_41;
      }

      v16 = v35;
      if (*v35 != 92)
      {
        goto LABEL_41;
      }

      *&v35 = v35 + 1;
      if (*(v16 + 1) != 117)
      {
        goto LABEL_41;
      }

      v17 = v14;
      *&v35 = v16 + 2;
      v18 = sub_29A14D478(a1, &v35, v32);
      if (*(a1 + 48))
      {
        goto LABEL_38;
      }

      if ((v18 - 57344) <= 0xFFFFFBFF)
      {
LABEL_41:
        *(a1 + 48) = 9;
        v27 = v32;
LABEL_30:
        *(a1 + 56) = v27;
        goto LABEL_38;
      }

      v15 = v18 + (v17 << 10) - 56613888;
    }

    sub_29A14D4FC(v33, v15);
LABEL_7:
    v7 = v35;
  }

  if (v8 != 34)
  {
    if (v8 <= 0x1F)
    {
      v27 = &v7[-*(&v35 + 1)];
      if (v8)
      {
        v28 = 12;
      }

      else
      {
        v28 = 11;
      }

      *(a1 + 48) = v28;
      goto LABEL_30;
    }

    *&v35 = v7 + 1;
    v9 = *v7;
    v10 = *v33;
    v11 = *(*v33 + 24);
    if ((*(*v33 + 32) - v11) <= 0)
    {
LABEL_10:
      sub_29A14D7E8(*v33, 1);
      v11 = *(v10 + 24);
    }

LABEL_6:
    *(v10 + 24) = v11 + 1;
    *v11 = v9;
    LODWORD(__len) = __len + 1;
    goto LABEL_7;
  }

  *&v35 = v7 + 1;
  v19 = *v33;
  v20 = *(*v33 + 24);
  if ((*(*v33 + 32) - v20) <= 0)
  {
    sub_29A14D7E8(*v33, 1);
    v20 = *(v19 + 24);
  }

  *(v19 + 24) = v20 + 1;
  *v20 = 0;
  v21 = __len;
  v22 = __len + 1;
  LODWORD(__len) = __len + 1;
  if (!*(a1 + 48))
  {
    v23 = *(*v33 + 24);
    v24 = (v23 - v22);
    *(*v33 + 24) = v24;
    if (a4)
    {
      __p[0] = (v23 - v22);
      v37 = v21;
      v25 = a3[1];
      if (v25 >= a3[2])
      {
        v26 = sub_29A14D86C(a3, __p, &v37);
      }

      else
      {
        sub_29A02887C(a3[1], v24, v21);
        v26 = (v25 + 24);
        a3[1] = v25 + 24;
      }

      a3[1] = v26;
    }

    else
    {
      sub_29A02887C(__p, v24, v21);
      v29 = a3[4];
      if (v29 >= a3[5])
      {
        v30 = sub_29A14D994(a3 + 3, __p);
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a3[4], __p);
        v30 = v29 + 16;
        a3[4] = v29 + 16;
      }

      a3[4] = v30;
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

LABEL_38:
  result = *&v35;
  *v36 = v35;
  return result;
}

uint64_t sub_29A14D0EC(uint64_t *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v4 = a1[2] - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    v6 = sub_29A017BD4(a1, v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = v6;
  v14 = &v6[16 * v1];
  *(&v15 + 1) = &v6[16 * v5];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v14);
  *&v15 = v14 + 16;
  v7 = a1[1];
  v8 = (v14 + *a1 - v7);
  sub_29A14D1EC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_29A017C0C(&v13);
  return v12;
}

void sub_29A14D1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14D1EC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        sub_29A014BEC(v7);
      }

      v5 += 16;
    }
  }

  return sub_29A14D288(v9);
}

uint64_t sub_29A14D288(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29A14D2C0(a1);
  }

  return a1;
}

void sub_29A14D2C0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_29A014BEC(v3);
    }

    v1 -= 16;
  }
}

uint64_t sub_29A14D304(void *a1, char a2)
{
  v5 = a2;
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = sub_29A14D368(a1 + 3, &v5);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a1[4], a2);
    result = v3 + 16;
    a1[4] = v3 + 16;
  }

  a1[4] = result;
  return result;
}

uint64_t sub_29A14D368(uint64_t *a1, char *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14D464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14D478(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    result = (v6 + 16 * result + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return result;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

char *sub_29A14D4FC(char *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = sub_29A14D7E8(*result, 1);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 8;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = sub_29A14D7E8(*result, 1);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 8;
    ++*(v3 + 2);
LABEL_24:
    v27 = *v3;
    v28 = v27[3];
    if ((v27[4] - v28) <= 0)
    {
      result = sub_29A14D7E8(v27, 1);
      v28 = v27[3];
    }

    v27[3] = v28 + 1;
    *v28 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v20 = (a2 >> 18) | 0xFFFFFFF0;
    if (v12 <= 0)
    {
      result = sub_29A14D7E8(*result, 1);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v20;
    v6 = v3 + 8;
    ++*(v3 + 2);
    v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v22 = *v3;
    v23 = *(*v3 + 24);
    if ((*(*v3 + 32) - v23) <= 0)
    {
      result = sub_29A14D7E8(*v3, 1);
      v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v23 = v22[3];
    }

    v22[3] = v23 + 1;
    *v23 = v21;
    ++*(v3 + 2);
    v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v25 = *v3;
    v26 = *(*v3 + 24);
    if ((*(*v3 + 32) - v26) <= 0)
    {
      result = sub_29A14D7E8(*v3, 1);
      v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v26 = *(v25 + 24);
    }

    *(v25 + 24) = v26 + 1;
    *v26 = v24;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  if (v12 <= 0)
  {
    result = sub_29A14D7E8(*result, 1);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 8;
  ++*(v3 + 2);
  v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v15 = *v3;
  v16 = *(*v3 + 24);
  if ((*(*v3 + 32) - v16) <= 0)
  {
    result = sub_29A14D7E8(*v3, 1);
    v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v16 = *(v15 + 24);
  }

  *(v15 + 24) = v16 + 1;
  *v16 = v14;
  ++*(v3 + 2);
  v17 = a2 & 0x3F | 0x80;
  v18 = *v3;
  v19 = v18[3];
  if ((v18[4] - v19) <= 0)
  {
    result = sub_29A14D7E8(v18, 1);
    v17 = a2 & 0x3F | 0x80;
    v19 = v18[3];
  }

  v18[3] = v19 + 1;
  *v19 = v17;
LABEL_27:
  ++*v6;
  return result;
}

char *sub_29A14D7E8(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[4] - v4 + ((a1[4] - v4 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      v6 = operator new(1uLL);
      *a1 = v6;
      a1[1] = v6;
    }

    v4 = 0;
    v5 = a1[5];
  }

  v7 = a2 - v4 + a1[3];
  if (v5 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  return sub_29A14B454(a1, v8);
}

void *sub_29A14D86C(uint64_t a1, void **a2, unsigned int *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v8 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v8 = v4;
  }

  v20 = a1;
  if (v8)
  {
    v9 = sub_29A012C48(a1, v8);
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  v17 = &v9[24 * v3];
  v18 = v17;
  v19 = &v9[24 * v8];
  sub_29A02887C(v17, *a2, *a3);
  v10 = v17 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = &v17[-v11];
  memcpy(&v17[-v11], *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v19;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  sub_29A01FF14(&v16);
  return v10;
}

void sub_29A14D980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A01FF14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14D994(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14DA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

void sub_29A14DAA4(void *a1, unsigned int a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v5 = a1 + 3;
  v6 = (a1[4] - a1[3]) >> 4;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (a2)
  {
    v7 = a2;
    v8 = 24 * v4 - 24 * a2;
    v9 = 16 * v6 - 16 * a2;
    do
    {
      v10 = *a1 + v8;
      v11 = a1[3] + v9;
      v12 = *(v10 + 16);
      *__p = *v10;
      v16 = v12;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      v17 = *v11;
      *v11 = 0;
      *(v11 + 8) = 0;
      sub_29A14DD0C(&v18, __p, __p);
      if (*(&v17 + 1))
      {
        sub_29A014BEC(*(&v17 + 1));
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      v8 += 24;
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  sub_29A01FBC8(a1, v4 - a2);
  sub_29A14DC7C(v5, v6 - a2);
  v13 = a1[4];
  if (v13 >= a1[5])
  {
    v14 = sub_29A14DF0C(v5, &v18);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a1[4], &v18);
    v14 = v13 + 16;
    a1[4] = v13 + 16;
  }

  a1[4] = v14;
  sub_29A09932C(&v18, v19[0]);
}

void sub_29A14DC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  *(v15 + 32) = v16;
  sub_29A09932C(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14DC3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_29A14DC7C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 8);
        if (v7)
        {
          sub_29A014BEC(v7);
        }

        v3 -= 16;
      }

      *(a1 + 8) = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    sub_29A14DDAC(a1, v5);
  }
}

_OWORD *sub_29A14DD0C(uint64_t **a1, const void **a2, uint64_t a3)
{
  v5 = sub_29A00B0D0(a1, &v9, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x48uLL);
    v6[2] = *a3;
    *(v6 + 6) = *(a3 + 16);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(v6 + 56) = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    sub_29A00B204(a1, v9, v7, v6);
  }

  return v6;
}

void **sub_29A14DDAC(void **result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = (v5 + 16 * a2);
      do
      {
        result = pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v5);
        v5 = (v5 + 16);
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    v3[1] = v5;
  }

  else
  {
    v6 = v5 - *result;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      sub_29A00C9A4();
    }

    v8 = v6 >> 4;
    v9 = v4 - *result;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v24 = result;
    if (v10)
    {
      v11 = sub_29A017BD4(result, v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = &v11[16 * v8];
    v21 = v11;
    v22 = v14;
    *&v23 = v14;
    *(&v23 + 1) = &v11[16 * v10];
    v15 = 16 * a2;
    v16 = v14 + 16 * a2;
    do
    {
      pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v14);
      v14 = (v14 + 16);
      v15 -= 16;
    }

    while (v15);
    *&v23 = v16;
    v17 = v3[1];
    v18 = (v22 + *v3 - v17);
    sub_29A14D1EC(v3, *v3, v17, v18);
    v19 = *v3;
    *v3 = v18;
    v20 = v3[2];
    *(v3 + 1) = v23;
    *&v23 = v19;
    *(&v23 + 1) = v20;
    v21 = v19;
    v22 = v19;
    return sub_29A017C0C(&v21);
  }

  return result;
}

void sub_29A14DEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14DF0C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14E008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

void sub_29A14E01C(uint64_t *a1, unsigned int a2)
{
  v4 = a1[4];
  memset(v7, 0, sizeof(v7));
  sub_29A14E0F8(v7, &v4[-2 * a2], v4, a2);
  sub_29A14DC7C((a1 + 3), ((a1[4] - a1[3]) >> 4) - a2);
  v5 = a1[4];
  if (v5 >= a1[5])
  {
    v6 = sub_29A14E208(a1 + 3, v7);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(a1[4], v7);
    v6 = v5 + 16;
    a1[4] = v5 + 16;
  }

  a1[4] = v6;
  v8 = v7;
  sub_29A0176E4(&v8);
}

void sub_29A14E0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v12 + 32) = v13;
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

void *sub_29A14E0F8(void *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29A0D0518(result, a4);
    result = sub_29A14E180(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29A14E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29A0176E4(&a9);
  _Unwind_Resume(a1);
}

void *sub_29A14E180(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_29A14D288(v7);
  return v4;
}

uint64_t sub_29A14E208(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = &v16[*a1 - v9];
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14E304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14E318(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 24);
  if ((*(v2 + 32) - v3) <= 0)
  {
    sub_29A14D7E8(*(a1 + 8), 1);
    v3 = *(v2 + 24);
  }

  *(v2 + 24) = v3 + 1;
  *v3 = 0;
  v4 = (*(a1 + 16) + 1);
  *(a1 + 16) = v4;
  v5 = *(a1 + 8);
  result = *(v5 + 24) - v4;
  *(v5 + 24) = result;
  return result;
}

double sub_29A14E388(unsigned int a1, char *a2, int a3, int a4, int a5, double a6)
{
  v6 = a2;
  v23 = 0.0;
  if (a1 - 23 >= 0xF)
  {
    if (a6 <= 9.00719925e15 && a1 + 22 < 0x2D)
    {
      if ((a1 & 0x80000000) != 0)
      {
        return a6 / dbl_29B47DA98[-a1];
      }

      return a6 * dbl_29B47DA98[a1];
    }
  }

  else
  {
    a6 = dbl_29B47DA98[a1 - 22] * a6;
    if (a6 <= 9.00719925e15)
    {
      a1 = 22;
      return a6 * dbl_29B47DA98[a1];
    }
  }

  v8 = a4 - a3 + a5;
  if (a3 < 1)
  {
    if (!a3)
    {
      return 0.0;
    }
  }

  else
  {
    v9 = a3;
    v10 = a3 + 1;
    for (i = a2; *i == 48; ++i)
    {
      --v9;
      if (--v10 <= 1)
      {
        return 0.0;
      }
    }

    v12 = &a2[a3 - 1];
    while (1)
    {
      v13 = *v12--;
      if (v13 != 48)
      {
        break;
      }

      --v9;
      ++v8;
      if ((v9 + 1) <= 1)
      {
        return 0.0;
      }
    }

    v6 = i;
    a3 = v9;
  }

  v14 = a3 - 768;
  if (a3 >= 768)
  {
    v15 = 768;
  }

  else
  {
    v15 = a3;
  }

  if (a3 <= 768)
  {
    v14 = 0;
  }

  v16 = (v14 + v8);
  v7 = 0.0;
  if (v16 + v15 >= -323)
  {
    if (v16 + v15 <= 309)
    {
      v17 = sub_29A14E564(v6, v15, v16, &v23);
      v7 = v23;
      if (!v17)
      {
        sub_29A14E9F8(v24, v6, v15);
        v19 = sub_29A14E838(v24, v16, v18);
        *&v20 = *&v7 + 1;
        if (LOBYTE(v7))
        {
          *&v21 = *&v7 + 1;
        }

        else
        {
          v21 = v7;
        }

        if (!v19)
        {
          v20 = v21;
        }

        if (v19 >= 0)
        {
          return v20;
        }
      }
    }

    else
    {
      return INFINITY;
    }
  }

  return v7;
}

BOOL sub_29A14E564(uint64_t a1, int a2, int a3, unint64_t *a4)
{
  if (a2 < 1)
  {
    LODWORD(v6) = 0;
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + v6);
      if (v7 == 0x1999999999999999 && v8 > 53)
      {
        break;
      }

      v7 = (v8 - 48) + 10 * v7;
      if (++v6 >= a2 || v7 > 0x1999999999999999)
      {
        goto LABEL_10;
      }
    }

    v7 = 0x1999999999999999;
  }

LABEL_10:
  if (a2 > v6 && *(a1 + v6) > 52)
  {
    ++v7;
  }

  v9 = a2 - v6;
  v10 = __clz(v7);
  v49 = v7 << v10;
  v50 = -v10;
  v11 = (4 * (v9 != 0)) << v10;
  v12 = v9 + a3;
  v13 = (v9 + a3 + 348) >> 3;
  v14 = qword_29B47E440[v13];
  v15 = word_29B47E6F8[v13];
  v16 = ((v9 + a3 + 348) & 0xFFFFFFF8) - 348;
  v47 = v14;
  v48 = v15;
  v17 = v12 - v16;
  if (v12 != v16)
  {
    if ((atomic_load_explicit(&qword_2A14F6878, memory_order_acquire) & 1) == 0)
    {
      sub_29B28F6A0();
    }

    v49 = sub_29A14E7D8(&v49, &qword_2A14F6808[2 * v17 - 2]);
    v50 = v18;
    if (v17 + a2 > 19)
    {
      v11 += 4;
    }
  }

  v19 = sub_29A14E7D8(&v49, &v47);
  v21 = 8;
  if (v11)
  {
    v21 = 9;
  }

  v22 = __clz(v19);
  v23 = v19 << v22;
  v24 = v20 - v22;
  v25 = (v21 + v11) << v22;
  if ((v20 - v22 + 64) >= 0xFFFFFBCF)
  {
    v26 = v20 - v22 + 1138;
  }

  else
  {
    v26 = 0;
  }

  if (v24 > -1086)
  {
    v26 = 53;
  }

  v27 = 64 - v26;
  v28 = v23 >> (4 - v26);
  v29 = (v25 >> (4 - v26)) + 9;
  v30 = v26 <= 3;
  if (v26 <= 3)
  {
    v31 = 4 - v26 + v24;
  }

  else
  {
    v31 = v24;
  }

  if (v30)
  {
    v23 = v28;
  }

  if (v30)
  {
    v32 = v29;
  }

  else
  {
    v32 = v25;
  }

  if (v30)
  {
    v27 = 60;
  }

  v33 = v23 >> v27;
  v34 = v31 + v27;
  v35 = 8 * (v23 & ~(-1 << v27));
  v36 = 8 << (v27 - 1);
  v37 = v32;
  v38 = v36 + v32;
  v39 = (v33 + 1) >> 1;
  if (((v33 + 1) & 0x20000000000000) != 0)
  {
    v40 = v34 + 1;
  }

  else
  {
    v40 = v34;
  }

  if (((v33 + 1) & 0x20000000000000) == 0)
  {
    v39 = v33 + 1;
  }

  if (v35 < v38)
  {
    v41 = v33;
  }

  else
  {
    v34 = v40;
    v41 = v39;
  }

  if (v34 >= -1074)
  {
    if (v34 <= 971)
    {
      v43 = (v41 & 0x10000000000000) == 0 && v34 == -1074;
      v44 = (v34 + 1075) << 52;
      if (v43)
      {
        v44 = 0;
      }

      v42 = v44 & 0xFFF0000000000000 | v41 & 0xFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = 0x7FF0000000000000;
    }
  }

  else
  {
    v42 = 0;
  }

  *a4 = v42;
  return v36 - v37 >= v35 || v35 >= v38;
}

unint64_t sub_29A14E7D8(void *a1, void *a2)
{
  v2 = HIDWORD(*a1);
  v3 = HIDWORD(*a2);
  v4 = v3 * *a1;
  v5 = *a2 * v2;
  return HIDWORD(v5) + v3 * v2 + HIDWORD(v4) + ((((*a2 * *a1) >> 32) + v5 + v4 + 0x80000000) >> 32);
}

uint64_t sub_29A14E838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2A1C7C4A8](a1, a2, a3);
  v6 = (v5 & 0x7FF0000000000000) != 0;
  if ((v5 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 1;
  }

  v7 = ((v5 >> 52) & 0x7FF) - 1075;
  if (v6)
  {
    v8 = v5 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v8 = v5 & 0xFFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v7 = -1074;
  }

  v9 = v7 - 1;
  if (v4 < 0)
  {
    v10 = -v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 & ~(v4 >> 31);
  v12 = (v7 & ~(v7 >> 31)) + v10;
  v13 = v7 <= 0;
  if (v7 >= 0)
  {
    v7 = 0;
  }

  if (v13)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v9 = 0;
  }

  v15 = v12 - v14;
  v16 = v10 - v7 + v9;
  v17 = v11 - (v14 + v7);
  if (v17 >= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if (v18 >= v16)
  {
    v18 = v16;
  }

  v19 = (v17 - v18);
  v20 = (v15 - v18);
  v21 = (v16 - v18);
  v36 = v3[416];
  memcpy(v35, v3, 8 * v36);
  v22 = sub_29A14EB50(v35, v11);
  sub_29A14EBF4(v22, v19);
  v34[416] = 1;
  v34[0] = v8;
  v23 = sub_29A14EB50(v34, v10);
  sub_29A14EBF4(v23, v20);
  v33 = 1;
  v32[0] = 1;
  v24 = sub_29A14EB50(v32, v10);
  sub_29A14EBF4(v24, v21);
  v31 = 1;
  v30[0] = 0;
  sub_29A14EE80(v35, v34, v30);
  v25 = v31;
  v26 = v31 >= v33;
  if (v31 == v33)
  {
    while (v25)
    {
      v27 = v30[v25 - 1];
      v28 = v32[--v25];
      v26 = v27 >= v28;
      if (v27 != v28)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

  else
  {
LABEL_27:
    if (v26)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

unint64_t *sub_29A14E9F8(unint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  a1[416] = 1;
  *a1 = 0;
  if (a3 < 0x13)
  {
    v6 = 0;
    if (!a3)
    {
      return a1;
    }

    goto LABEL_5;
  }

  v6 = 19 * ((a3 - 19) / 0x13) + 19;
  do
  {
    v7 = a2 + 19;
    sub_29A14EAB0(a1, a2, a2 + 19);
    v3 -= 19;
    a2 = v7;
  }

  while (v3 > 0x12);
  if (v3)
  {
LABEL_5:
    sub_29A14EAB0(a1, &v4[v6], &v4[v6 + v3]);
  }

  return a1;
}

unint64_t *sub_29A14EAB0(unint64_t *result, char *a2, char *a3)
{
  if (a2 == a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = a2;
    do
    {
      v5 = *v4++;
      v3 = (v5 - 48) + 10 * v3;
    }

    while (v4 != a3);
  }

  if (result[416] == 1 && !*result)
  {
    *result = v3;
    result[416] = 1;
  }

  else
  {
    v6 = a3 - a2;
    v7 = v6;
    v8 = sub_29A14EB50(result, v6);
    v9 = sub_29A14EBF4(v8, v7);

    return sub_29A14ECD4(v9, v3);
  }

  return result;
}

unint64_t *sub_29A14EB50(unint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    if (a2 >= 0x1B)
    {
      do
      {
        sub_29A14ED30(a1, 0x6765C793FA10079DuLL);
        v3 -= 27;
      }

      while (v3 > 0x1A);
    }

    if (v3 >= 0xD)
    {
      do
      {
        sub_29A14EDEC(a1, 0x48C27395u);
        v3 -= 13;
      }

      while (v3 > 0xC);
    }

    if (v3)
    {
      sub_29A14EDEC(a1, dword_29B47E7A8[v3 - 1]);
    }
  }

  return a1;
}

void *sub_29A14EBF4(void *__src, unint64_t a2)
{
  v3 = __src[416];
  if (v3 == 1)
  {
    v4 = *__src == 0;
    if (!a2)
    {
      return __src;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      return __src;
    }
  }

  if (!v4)
  {
    v5 = a2 >> 6;
    if ((a2 & 0x3F) != 0)
    {
      __src[v3] = 0;
      if (v3)
      {
        v6 = v3;
        do
        {
          __src[v5 + v6] = (__src[v6] << a2) | (__src[v6 - 1] >> 1 >> ~a2);
          --v6;
        }

        while (v6);
      }

      __src[v5] = *__src << (a2 & 0x3F);
      v7 = v3 + v5;
      __src[416] = v7;
      if (!__src[v7])
      {
        goto LABEL_14;
      }

      v8 = v7 + 1;
    }

    else
    {
      memmove(&__src[v5], __src, 8 * v3);
      v8 = __src[416] + v5;
    }

    __src[416] = v8;
LABEL_14:
    bzero(__src, 8 * v5);
  }

  return __src;
}

unint64_t *sub_29A14ECD4(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *result + a2;
  *result = v3;
  v4 = result[416];
  if (v4 == 1)
  {
LABEL_5:
    if (result[v4 - 1] < v2)
    {
      result[416] = v4 + 1;
      result[v4] = 1;
    }
  }

  else
  {
    v5 = result + 1;
    v6 = v4 - 1;
    while (v3 < v2)
    {
      v2 = *v5;
      v3 = *v5 + 1;
      *v5++ = v3;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

unint64_t *sub_29A14ED30(unint64_t *result, unint64_t a2)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      *result = 0;
LABEL_4:
      result[416] = 1;
      return result;
    }

    v2 = result[416];
    if (v2)
    {
      if (v2 == 1 && *result == 1)
      {
        *result = a2;
        goto LABEL_4;
      }

      v3 = 0;
      v4 = a2;
      v5 = HIDWORD(a2);
      v6 = result;
      v7 = result[416];
      do
      {
        v8 = *v6;
        v9 = HIDWORD(*v6);
        v10 = v8 * v4;
        v11 = v9 * v4;
        v12 = v9 * v5;
        v13 = v8 * v5 + v11 + HIDWORD(v10);
        v14 = v12 + 0x100000000;
        if (v13 >= v11)
        {
          v14 = v12;
        }

        v15 = v14 + HIDWORD(v13);
        v16 = v3 + v10 + (v13 << 32);
        if (v16 >= v3)
        {
          v3 = v15;
        }

        else
        {
          v3 = v15 + 1;
        }

        *v6++ = v16;
        --v7;
      }

      while (v7);
      if (v3)
      {
        result[416] = v2 + 1;
        result[v2] = v3;
      }
    }
  }

  return result;
}

unint64_t *sub_29A14EDEC(unint64_t *result, unsigned int a2)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      *result = 0;
LABEL_4:
      result[416] = 1;
      return result;
    }

    v2 = result[416];
    if (v2)
    {
      if (v2 == 1 && *result == 1)
      {
        *result = a2;
        goto LABEL_4;
      }

      v3 = 0;
      v4 = result;
      v5 = result[416];
      do
      {
        v6 = v3 + *v4 * a2;
        v7 = HIDWORD(v6) + HIDWORD(*v4) * a2;
        *v4++ = v6 | (v7 << 32);
        v3 = HIDWORD(v7);
        --v5;
      }

      while (v5);
      if (v3)
      {
        result[416] = v2 + 1;
        result[v2] = v3;
      }
    }
  }

  return result;
}

uint64_t sub_29A14EE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 3328);
  v5 = *(a2 + 3328);
  v6 = v4 >= v5;
  if (v4 == v5)
  {
    while (v4)
    {
      v7 = a1 + 8 * v4;
      v8 = a2 + 8 * v4--;
      v9 = *(v7 - 8);
      v10 = *(v8 - 8);
      v6 = v9 >= v10;
      if (v9 != v10)
      {
        goto LABEL_4;
      }
    }

    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  result = !v6;
  if (v6)
  {
    v12 = a1;
    if (!result)
    {
LABEL_13:
      v12 = a1;
      goto LABEL_14;
    }

LABEL_11:
    a2 = a1;
    goto LABEL_14;
  }

  v12 = a2;
  if (result)
  {
    goto LABEL_11;
  }

LABEL_14:
  v13 = *(v12 + 3328);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(v12 + 8 * v14);
      v17 = v16 + v15;
      if (v14 < *(a2 + 3328))
      {
        v17 -= *(a2 + 8 * v14);
      }

      if (v17 <= v16)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      *(a3 + 8 * v14++) = v17;
      if (v17)
      {
        *(a3 + 3328) = v14;
        v13 = *(v12 + 3328);
      }
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t sub_29A14EF34(uint64_t *a1, double *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14F030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14F044(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14F140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14F154(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}

void sub_29A14F250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A017C0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29A14F264(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_29A00C9A4();
  }

  v6 = a1[2] - *a1;
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

  v18 = a1;
  if (v7)
  {
    v8 = sub_29A017BD4(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  v15 = v8;
  v16 = &v8[16 * v2];
  *&v17 = v16;
  *(&v17 + 1) = &v8[16 * v7];
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(v16, *a2);
  *&v17 = v16 + 16;
  v9 = a1[1];
  v10 = (v16 + *a1 - v9);
  sub_29A14D1EC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_29A017C0C(&v15);
  return v14;
}