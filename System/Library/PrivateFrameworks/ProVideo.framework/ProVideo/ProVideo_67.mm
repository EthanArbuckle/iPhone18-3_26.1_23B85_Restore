long double LiCamera::getCameraInternalParams(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(v21);
  v4 = (*(*a1 + 504))(a1);
  v5 = (*(*a1 + 688))(a1);
  v6 = (*(*a1 + 488))(a1);
  v7 = v21[2];
  v8 = v21[3];
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 32) = v7 * 0.5;
  v9 = v21[1];
  v10 = v21[0] + v7 * 0.5;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0x3FF0000000000000;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 56) = v10;
  *(a2 + 72) = v8 * 0.5;
  *(a2 + 88) = v9 + v8 * 0.5;
  __asm { FMOV            V3.2D, #0.5 }

  *(a2 + 112) = _Q3;
  v16 = v5 * v6 * v7;
  v17 = v6 * v8;
  v18 = v16 / (v6 * v8);
  v19 = tan(v4 / 114.591559);
  result = atan(v19 / v18) * 114.591559;
  *a2 = v18;
  *(a2 + 8) = result;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  return result;
}

void LiCamera::localToClipMatrix(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v13 = 0x3FF0000000000000;
  v14 = 0u;
  v15 = 0u;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  (*(*this + 264))(this, &v9);
  v4 = (*(*this + 632))(this);
  v5 = (*(*this + 112))(this);
  v6 = (*(*this + 120))(this);
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  if (v4 == 1)
  {
    PCMatrix44Tmpl<double>::rightFramePerspective(a2, v11, v12, v10, v6, v6, v5);
  }

  else if (!v4)
  {
    v7 = (*(*this + 520))(this);
    v8 = 0.001;
    if (v7)
    {
      v8 = 1.0;
    }

    if (v10 >= v8)
    {
      v8 = v10;
    }

    v10 = v8;
    PCMatrix44Tmpl<double>::rightPerspective(a2, v8, v9, v5, v6);
  }
}

void PCMatrix44Tmpl<double>::rightPerspective(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = tan(a2 / 360.0 * 3.14159265) * a4;
  v10 = (a4 + a4) / (v9 * a3 + v9 * a3);
  v13 = (a4 + a4) / (v9 + v9);
  v11 = 0u;
  v12 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = -(a4 + a5) / (a5 - a4);
  v17 = a5 * -2.0 * a4 / (a5 - a4);
  v18 = 0u;
  v19 = xmmword_26034C200;
  PCMatrix44Tmpl<double>::rightMult(a1, &v10);
}

double PCMatrix44Tmpl<double>::rightFramePerspective(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v9 = 0x3FF0000000000000;
  v10 = 0u;
  v11 = 0u;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  PCMatrix44Tmpl<double>::setFramePerspective(&v9, a2, a3, a4, a5, a6, a7);
  return PCMatrix44Tmpl<double>::rightMult(a1, &v9);
}

double LiCamera::imageToFilmMatrix@<D0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1.0 / (*(*this + 688))(this);
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

double LiCamera::filmToImageMatrix@<D0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(*this + 688))(this);
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0x3FF0000000000000;
  return result;
}

double LiCamera::worldUnitScale(LiCamera *this, char a2)
{
  (*(*this + 56))(v30);
  PCMatrix44Tmpl<double>::invert(v30, v30, 0.0);
  (*(*this + 32))(v29, this);
  PCMatrix44Tmpl<double>::invert(v29, v29, 0.0);
  v27 = 0uLL;
  v28 = 0.0;
  v25 = 0uLL;
  *&v26 = 0.5;
  PCMatrix44Tmpl<double>::transform<double>(v30, v25.f64, v27.f64);
  v25 = 0uLL;
  *&v26 = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v23 = _Q0;
  v24 = 0.5;
  PCMatrix44Tmpl<double>::transform<double>(v30, v23.f64, v25.f64);
  v17 = v25;
  v18 = v27;
  v9 = v28;
  v10 = *&v26;
  if (a2)
  {
    v11 = 1.0;
  }

  else
  {
    (*(*this + 272))(&v23, this);
    v12 = v23.f64[0];
    v13 = (*(*this + 688))(this);
    v11 = v12 * v13 / v23.f64[1];
  }

  v23 = 0uLL;
  v24 = 0.0;
  v21 = 0uLL;
  v22 = 0.5;
  PCMatrix44Tmpl<double>::transform<double>(v29, v21.f64, v23.f64);
  v21 = 0uLL;
  v22 = 0.0;
  v19 = v11;
  v20 = xmmword_26084B0A0;
  PCMatrix44Tmpl<double>::transform<double>(v29, &v19, v21.f64);
  v14 = vsubq_f64(v18, v17);
  v15 = vsubq_f64(v23, v21);
  return sqrt(vaddvq_f64(vmulq_f64(v14, v14)) + (v9 - v10) * (v9 - v10)) / sqrt(vaddvq_f64(vmulq_f64(v15, v15)) + (v24 - v22) * (v24 - v22));
}

BOOL LiCamera::ray(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = (*(*a1 + 504))(a1);
  v7 = (*(*a1 + 632))(a1);
  v8 = *a2;
  v9 = v8 * (*(*a1 + 688))(a1);
  v10 = a2[1];
  v11 = (*(*a1 + 488))(a1);
  v12 = v9 * v11;
  v13 = v10 * v11;
  if (fabs(v6) >= 0.0000001)
  {
    v15 = v11 * 0.0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    (*(*a1 + 320))(a1);
    if (v7 == 1)
    {
      v17 = v16 + *(a3 + 16);
      *(a3 + 16) = v17;
    }

    else
    {
      v15 = v15 - v16;
      v17 = *(a3 + 16);
    }

    v18 = v13 - *(a3 + 8);
    *(a3 + 24) = v12 - *a3;
    *(a3 + 32) = v18;
    *(a3 + 40) = v15 - v17;
  }

  else
  {
    v14 = (*(*a1 + 576))(a1);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 40) = 0xBFF0000000000000;
  }

  (*(*a1 + 16))(v20, a1);
  PCMatrix44Tmpl<double>::transform<double>(v20, a3, a3);
  PCMatrix44Tmpl<double>::transform_vector<double>(v20, (a3 + 24), (a3 + 24));
  return PCVector3<double>::normalize((a3 + 24), 0.000000100000001);
}

uint64_t LiCamera::ray@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  return (*(*a1 + 64))(a1, a2, a3);
}

uint64_t LiCamera::ray@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = *a2;
  return (*(*a1 + 64))(a1, &v4, a3);
}

BOOL LiCamera::getPlaneAtDistance@<W0>(LiCamera *this@<X0>, double a2@<D0>, _OWORD *a3@<X8>)
{
  v6 = fabs((*(*this + 504))(this));
  v7 = 0.0;
  if (v6 >= 0.0000001)
  {
    (*(*this + 328))(v9, this, 0.0);
    v7 = v9[2];
  }

  v10 = 0uLL;
  v11 = 0xBFF0000000000000;
  v12 = v7 - a2;
  (*(*this + 24))(v9, this);
  PCMatrix44Tmpl<double>::transform_row<double>(v9, v10.f64, v10.f64);
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  return PCPlane<double>::setImplicit(a3, &v10);
}

BOOL PCPlane<double>::setImplicit(uint64_t a1, float64x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].f64[0];
  v4 = vaddvq_f64(vmulq_f64(v2, v2)) + v3 * v3;
  v5 = fabs(v4);
  if (v5 >= 1.0e-24)
  {
    *(a1 + 24) = v2;
    *(a1 + 40) = v3;
    v6 = a2[1].f64[1];
    *a1 = vdivq_f64(vmulq_n_f64(v2, -v6), vdupq_lane_s64(*&v4, 0));
    *(a1 + 16) = -(v6 * v3) / v4;
  }

  return v5 >= 1.0e-24;
}

uint64_t LiCamera::getNearClip(uint64_t a1, uint64_t a2)
{
  if (fabs((*(*a1 + 504))(a1)) < 0.0000001)
  {
    return 0;
  }

  (*(*a1 + 536))(a1);
  (*(*a1 + 208))(&v5, a1);
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 40) = v8;
  return 1;
}

void sub_25FF48BEC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25FF48B54);
}

uint64_t LiCamera::getFarClip(uint64_t a1, uint64_t a2)
{
  if (fabs((*(*a1 + 504))(a1)) < 0.0000001)
  {
    return 0;
  }

  result = (*(*a1 + 624))(a1);
  if (result)
  {
    (*(*a1 + 120))(a1);
    (*(*a1 + 208))(&v5, a1);
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
    *(a2 + 40) = v8;
    *(a2 + 24) = vnegq_f64(*(a2 + 24));
    *(a2 + 40) = -*(a2 + 40);
    return 1;
  }

  return result;
}

void sub_25FF48D30(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25FF48C54);
}

void LiCamera::imageToWorldMatrix(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 424))(v24);
  v21 = 0;
  v22 = 0.0;
  v23 = 0.0;
  v20[0] = 1.0;
  memset(&v20[1], 0, 24);
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  (*(*a1 + 440))(a1, &v21);
  (*(*a1 + 472))(a1, v20);
  (*(*a1 + 456))(a1, &v17);
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  if (!(*(*a1 + 632))(a1))
  {
    v5 = (*(*a1 + 504))(a1);
    v6 = (*(*a1 + 520))(a1);
    v7 = v5 < 5.0;
    v8 = v5 * 0.5;
    v9 = (*(*a1 + 688))(a1);
    (*(*a1 + 272))(v16, a1);
    v10 = (*(*a1 + 488))(a1);
    v11 = v9 * v10 * v16[0];
    v12 = v8 * 3.14159265 / 180.0;
    if ((v6 & v7) != 0)
    {
      v12 = 0.0436332313;
    }

    v13 = v11 * -0.5 / tan(v12);
    v14.f64[0] = 0.0;
    v4 = PCMatrix44Tmpl<double>::leftTranslate(a2, v14, 0.0, v13);
  }

  v4.f64[0] = v17;
  PCMatrix44Tmpl<double>::leftTranslate(a2, v4, v18, v19);
  v15 = PCMatrix44Tmpl<double>::leftRotate(a2, v20);
  v15.n128_u64[0] = v21;
  PCMatrix44Tmpl<double>::leftTranslate(a2, v15, v22, v23);
  PCMatrix44Tmpl<double>::leftMult(a2, v24);
}

void LiCamera::worldToImageMatrix(uint64_t a1, float64x2_t *a2)
{
  v31 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  v28 = 1.0;
  v29 = 0uLL;
  v30 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  (*(*a1 + 424))(v24);
  (*(*a1 + 440))(a1, &v31);
  (*(*a1 + 472))(a1, &v28);
  (*(*a1 + 456))(a1, &v25);
  if (v24 != a2)
  {
    for (i = 0; i != 16; i += 4)
    {
      f64 = a2[i / 2].f64;
      v6 = *&v24[i + 2];
      *f64 = *&v24[i];
      f64[1] = v6;
    }
  }

  PCMatrix44Tmpl<double>::invert(a2, a2, 0.0);
  v7.f64[0] = -v31;
  PCMatrix44Tmpl<double>::leftTranslate(a2, v7, -v32, -v33);
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v8 = v21 * v21 + vaddvq_f64(vmulq_f64(v22, v22)) + v23 * v23;
  if (v8 != 0.0)
  {
    v21 = v28 / v8;
    v22 = vdivq_f64(vnegq_f64(v29), vdupq_lane_s64(*&v8, 0));
    v23 = -v30 / v8;
  }

  v9 = PCMatrix44Tmpl<double>::leftRotate(a2, &v21);
  v9.n128_f64[0] = -v25;
  v10 = PCMatrix44Tmpl<double>::leftTranslate(a2, v9, -v26, -v27);
  if (!(*(*a1 + 632))(a1, v10))
  {
    v11 = (*(*a1 + 504))(a1);
    v12 = (*(*a1 + 520))(a1);
    v13 = v11 < 5.0;
    v14 = v11 * 0.5;
    v15 = (*(*a1 + 688))(a1);
    (*(*a1 + 272))(&v21, a1);
    v16 = (*(*a1 + 488))(a1);
    v17 = v15 * v16 * v21;
    v18 = v14 * 3.14159265 / 180.0;
    if ((v12 & v13) != 0)
    {
      v18 = 0.0436332313;
    }

    v19 = v17 * -0.5 / tan(v18);
    v20.f64[0] = 0.0;
    PCMatrix44Tmpl<double>::leftTranslate(a2, v20, 0.0, v19);
  }
}

double LiCamera::eyeToWorldMatrix@<D0>(LiCamera *this@<X0>, double *a2@<X8>)
{
  (*(*this + 16))(this);
  if ((*(*this + 632))(this) == 1)
  {
    result = fabs((*(*this + 504))(this));
    if (result >= 0.0000001)
    {
      v5 = (*(*this + 320))(this);

      return PCMatrix44Tmpl<double>::rightTranslate(a2, 0.0, 0.0, v5);
    }
  }

  return result;
}

double LiCamera::worldToEyeMatrix@<D0>(LiCamera *this@<X0>, float64x2_t *a2@<X8>)
{
  (*(*this + 24))(this);
  if ((*(*this + 632))(this) == 1)
  {
    result = fabs((*(*this + 504))(this));
    if (result >= 0.0000001)
    {
      v5 = -(*(*this + 320))(this);
      v6.f64[0] = 0.0;

      *&result = *&PCMatrix44Tmpl<double>::leftTranslate(a2, v6, 0.0, v5);
    }
  }

  return result;
}

void LiCamera::getEyeFrustum(uint64_t a1, uint64_t a2, float64x2_t *a3, int a4)
{
  v8 = (*(*a1 + 320))(a1);
  v9 = fabs((*(*a1 + 504))(a1)) < 0.0000001;
  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  if (v9)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v8;
  }

  if ((*(*a1 + 632))(a1))
  {
    v12 = 0.0;
  }

  else
  {
    v12 = -v8;
  }

  v13 = a3->f64[1];
  *(a2 + 96) = a3->f64[0];
  *(a2 + 104) = v13;
  *(a2 + 112) = v12;
  *(a2 + 120) = 0;
  *(a2 + 128) = v11;
  *(a2 + 136) = v10 * v13;
  PCVector3<double>::normalize((a2 + 120), 0.000000100000001);
  v14 = vaddq_f64(*a3, a3[1]);
  *(a2 + 144) = v14;
  *(a2 + 160) = v12;
  *(a2 + 168) = 0;
  *(a2 + 176) = -v11;
  *(a2 + 184) = vmuld_lane_f64(-v10, v14, 1);
  PCVector3<double>::normalize((a2 + 168), 0.000000100000001);
  v15 = *a3;
  *a2 = *a3;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 40) = v10 * v15.f64[0];
  PCVector3<double>::normalize((a2 + 24), 0.000000100000001);
  v16 = *a3;
  v17 = a3[1];
  *(a2 + 72) = -v11;
  v18 = vaddq_f64(v16, v17);
  *(a2 + 48) = v18;
  *(a2 + 64) = v12;
  *(a2 + 80) = 0;
  *(a2 + 88) = -v10 * v18.f64[0];
  PCVector3<double>::normalize((a2 + 72), 0.000000100000001);
  v19 = (*(*a1 + 112))(a1);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = v8 + v12 - v19;
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0xBFF0000000000000;
  v20 = (*(*a1 + 120))(a1);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = v8 + v12 - v20;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0x3FF0000000000000;
  if (a4)
  {
    (*(*a1 + 16))(v21, a1);
    transform(v21, a2);
  }
}

uint64_t LiCamera::getFrustum(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[1];
  v13 = *a3;
  v14 = v7;
  v8 = (*(*a1 + 488))(a1);
  v9 = v8 * *&v13;
  v10 = v8 * *&v14;
  *(&v13 + 1) = v8 * *(&v13 + 1);
  *(&v14 + 1) = v8 * *(&v14 + 1);
  v11 = (*(*a1 + 688))(a1);
  *&v13 = v11 * v9;
  *&v14 = v11 * v10;
  return (*(*a1 + 256))(a1, a2, &v13, a4);
}

__n128 LiCamera::getFilmbackRect@<Q0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 272))(&v9);
  result = v9;
  __asm { FMOV            V1.2D, #-0.5 }

  *a2 = vmulq_f64(v9, _Q1);
  *(a2 + 16) = result;
  return result;
}

double LiCamera::getEyeFilmback@<D0>(LiCamera *this@<X0>, float64x2_t *a2@<X8>)
{
  (*(*this + 272))(this);
  *a2 = vmulq_n_f64(*a2, (*(*this + 488))(this));
  result = (*(*this + 688))(this) * a2->f64[0];
  a2->f64[0] = result;
  return result;
}

__n128 LiCamera::getEyeFilmbackRect@<Q0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 304))(&v9);
  result = v9;
  __asm { FMOV            V1.2D, #-0.5 }

  *a2 = vmulq_f64(v9, _Q1);
  *(a2 + 16) = result;
  return result;
}

double LiCamera::rayMatrix(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 272))(v9);
  v4 = (*(*a1 + 504))(a1);
  v5 = tan(v4 * 3.14159265 / 360.0);
  v6 = 2.0 / *&v9[1];
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *a2 = v6;
  *(a2 + 40) = v6;
  *(a2 + 80) = 0;
  *(a2 + 88) = -1.0 / v5;
  (*(*a1 + 16))(v8, a1);
  return PCMatrix44Tmpl<double>::leftMult(a2, v8);
}

uint64_t LiCamera::setRotation(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v10 = *a3;
  v11 = a3[1].f64[0];
  (*(*a1 + 24))(&v8);
  PCMatrix44Tmpl<double>::transform<double>(v8.f64, v10.f64, v10.f64);
  (*(*a1 + 480))(a1, a2);
  (*(*a1 + 16))(&v8, a1);
  PCMatrix44Tmpl<double>::transform<double>(v8.f64, v10.f64, v10.f64);
  v8 = 0uLL;
  v9 = 0.0;
  (*(*a1 + 440))(a1, &v8);
  v6 = a3[1].f64[0] - v11;
  v8 = vaddq_f64(vsubq_f64(*a3, v10), v8);
  v9 = v6 + v9;
  return (*(*a1 + 448))(a1, &v8);
}

double LiCamera::getEulerRotation@<D0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 648))(this);
  v6[0] = 1.0;
  memset(&v6[1], 0, 24);
  (*(*this + 472))(this, v6);
  v21 = 0x3FF0000000000000;
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v12 = 0x3FF0000000000000;
  v13 = 0u;
  v14 = 0u;
  v16 = 0u;
  v17 = 0u;
  v19 = 0u;
  v20 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v12, v6);
  memset(v7, 0, sizeof(v7));
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  v8 = v4;
  PCMatrix44Tmpl<double>::getTransformation(&v12, v7);
  *a2 = v9;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

uint64_t LiCamera::setEulerRotation(uint64_t a1, double *a2)
{
  v8[0] = 1.0;
  memset(&v8[1], 0, 24);
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*(*a1 + 648))(a1);
  PCQuat<double>::setEulerAngles(v8, v6, v3, v4, v5);
  return (*(*a1 + 480))(a1, v8);
}

double *PCQuat<double>::setEulerAngles(double *a1, int a2, double a3, double a4, double a5)
{
  v9 = __sincos_stret(a3 * 0.5);
  v73 = v9.__sinval * 0.0;
  v10 = __sincos_stret(a4 * 0.5);
  v11 = v10.__sinval * 0.0;
  v12 = __sincos_stret(a5 * 0.5);
  v13 = v12.__sinval * 0.0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v38 = v13 * v9.__sinval;
        v39 = v13 * v73;
        v16 = v12.__cosval * v9.__cosval - (v13 * v9.__sinval + v13 * v73 + v12.__sinval * v73);
        v40 = v13 * v9.__cosval;
        v41 = v40 + v12.__cosval * v9.__sinval;
        v19 = v40 + v12.__cosval * v73;
        v20 = v12.__sinval * v9.__cosval + v12.__cosval * v73;
        v21 = v39 - v12.__sinval * v9.__sinval;
        v22 = v38 - v39;
        v23 = v41 + v12.__sinval * v73 - v39;
        goto LABEL_12;
      case 4:
        v24 = v9.__cosval * v10.__cosval - (v9.__sinval * v11 + v73 * v10.__sinval + v73 * v11);
        v25 = v9.__sinval * v10.__cosval + v9.__cosval * v11 + v73 * v10.__sinval - v73 * v11;
        v26 = v73 * v10.__cosval + v9.__cosval * v10.__sinval + v9.__sinval * v11 - v73 * v11;
        v27 = v73 * v11 - v9.__sinval * v10.__sinval + v73 * v10.__cosval + v9.__cosval * v11;
        break;
      case 5:
        v24 = v10.__cosval * v9.__cosval - (v11 * v9.__sinval + v10.__sinval * v73 + v11 * v73);
        v25 = v11 * v9.__cosval + v10.__cosval * v9.__sinval + v11 * v73 - v10.__sinval * v73;
        v26 = v10.__sinval * v9.__cosval + v10.__cosval * v73 + v11 * v73 - v11 * v9.__sinval;
        v27 = v10.__sinval * v9.__sinval - v11 * v73 + v11 * v9.__cosval + v10.__cosval * v73;
        break;
      default:
        return a1;
    }

    v67 = v13 * v25;
    v68 = v13 * v26;
    v44 = v12.__cosval * v24 - (v13 * v25 + v13 * v26 + v12.__sinval * v27);
    v69 = v13 * v24 + v12.__cosval * v25;
    v70 = v13 * v24 + v12.__cosval * v26;
    v71 = v13 * v27;
    a1[1] = v69 + v12.__sinval * v26 - v71;
    a1[2] = v70 + v71 - v12.__sinval * v25;
    a1[3] = v67 - v68 + v12.__sinval * v24 + v12.__cosval * v27;
    goto LABEL_18;
  }

  switch(a2)
  {
    case 0:
      v28 = v11 * v13;
      v29 = v10.__sinval * v13;
      v30 = v10.__cosval * v12.__cosval - (v11 * v13 + v10.__sinval * v13 + v11 * v12.__sinval);
      v31 = v10.__cosval * v13;
      v32 = v11 * v12.__cosval + v31;
      v33 = v10.__sinval * v12.__cosval + v31;
      v34 = v11 * v12.__cosval + v10.__cosval * v12.__sinval;
      v35 = v28 - v10.__sinval * v12.__sinval;
      v36 = v11 * v12.__sinval - v28;
      v37 = v29 - v28;
LABEL_14:
      v56 = v32 + v35;
      v57 = v33 + v36;
      v58 = v37 + v34;
      v44 = v9.__cosval * v30 - (v9.__sinval * v56 + v73 * v57 + v73 * v58);
      v59 = v9.__sinval * v30;
      v60 = v73 * v30;
      v61 = v59 + v9.__cosval * v56;
      v62 = v60 + v9.__cosval * v57;
      v63 = v60 + v9.__cosval * v58;
      v64 = v73 * v57 - v73 * v58;
      v65 = v73 * v56;
      v66 = v9.__sinval * v58 - v65;
      v52 = v65 - v9.__sinval * v57 + v63;
      a1[1] = v61 + v64;
      a1[2] = v62 + v66;
      goto LABEL_15;
    case 1:
      v53 = v13 * v11;
      v54 = v13 * v10.__sinval;
      v30 = v12.__cosval * v10.__cosval - (v13 * v11 + v13 * v10.__sinval + v12.__sinval * v11);
      v55 = v13 * v10.__cosval;
      v32 = v55 + v12.__cosval * v11;
      v33 = v55 + v12.__cosval * v10.__sinval;
      v34 = v12.__sinval * v10.__cosval + v12.__cosval * v11;
      v35 = v12.__sinval * v10.__sinval - v53;
      v36 = v53 - v12.__sinval * v11;
      v37 = v53 - v54;
      goto LABEL_14;
    case 2:
      v14 = v9.__sinval * v13;
      v15 = v73 * v13;
      v16 = v9.__cosval * v12.__cosval - (v9.__sinval * v13 + v73 * v13 + v73 * v12.__sinval);
      v17 = v9.__cosval * v13;
      v18 = v9.__sinval * v12.__cosval + v17;
      v19 = v73 * v12.__cosval + v17;
      v20 = v73 * v12.__cosval + v9.__cosval * v12.__sinval;
      v21 = v9.__sinval * v12.__sinval - v15;
      v22 = v15 - v14;
      v23 = v18 + v15 - v73 * v12.__sinval;
LABEL_12:
      v42 = v19 + v21;
      v43 = v22 + v20;
      v44 = v10.__cosval * v16 - (v11 * v23 + v10.__sinval * v42 + v11 * v43);
      v45 = v11 * v16;
      v46 = v11 * v16 + v10.__cosval * v23;
      v47 = v10.__sinval * v16 + v10.__cosval * v42;
      v48 = v45 + v10.__cosval * v43;
      v49 = v11 * v42;
      v50 = v11 * v43 - v11 * v23;
      v51 = v46 + v49 - v10.__sinval * v43;
      v52 = v10.__sinval * v23 - v49 + v48;
      a1[1] = v51;
      a1[2] = v47 + v50;
LABEL_15:
      a1[3] = v52;
LABEL_18:
      *a1 = v44;
      break;
  }

  return a1;
}

uint64_t LiCamera::setEulerRotation(uint64_t a1, double *a2, uint64_t a3)
{
  v10[0] = 1.0;
  memset(&v10[1], 0, 24);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = (*(*a1 + 648))(a1);
  PCQuat<double>::setEulerAngles(v10, v8, v5, v6, v7);
  return (*(*a1 + 392))(a1, v10, a3);
}

uint64_t LiCamera::fit(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  memset(v139, 0, sizeof(v139));
  v138 = 0u;
  v136 = 0u;
  memset(v137, 0, sizeof(v137));
  memset(v135, 0, sizeof(v135));
  memset(v134, 0, sizeof(v134));
  memset(v133, 0, sizeof(v133));
  memset(v132, 0, sizeof(v132));
  (*(*a1 + 136))(a1, v132, a4, 1);
  v131 = 0;
  v129 = &unk_28725DA48;
  v130 = 0;
  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, 1, 3);
  v9 = v131 + 48 * SHIDWORD(v130);
  v10 = v132[0];
  *(v9 - 32) = v132[1].f64[0];
  *(v9 - 48) = v10;
  v11 = *(&v132[1] + 8);
  *(v9 - 8) = v132[2].f64[1];
  *(v9 - 24) = v11;
  if (v130 <= SHIDWORD(v130))
  {
    v12 = 2 * (HIDWORD(v130) + 1) + 1;
  }

  else
  {
    v12 = v130;
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, HIDWORD(v130) + 1, v12);
  v13 = v131 + 48 * SHIDWORD(v130);
  v14 = v133[0];
  *(v13 - 32) = v133[1].f64[0];
  *(v13 - 48) = v14;
  v15 = *(&v133[1] + 8);
  *(v13 - 8) = v133[2].f64[1];
  *(v13 - 24) = v15;
  if (v130 <= SHIDWORD(v130))
  {
    v16 = 2 * (HIDWORD(v130) + 1) + 1;
  }

  else
  {
    v16 = v130;
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, HIDWORD(v130) + 1, v16);
  v17 = v131 + 48 * SHIDWORD(v130);
  v18 = v134[0];
  *(v17 - 32) = v134[1].f64[0];
  *(v17 - 48) = v18;
  v19 = *(&v134[1] + 8);
  *(v17 - 8) = v134[2].f64[1];
  *(v17 - 24) = v19;
  if (v130 <= SHIDWORD(v130))
  {
    v20 = 2 * (HIDWORD(v130) + 1) + 1;
  }

  else
  {
    v20 = v130;
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, HIDWORD(v130) + 1, v20);
  v21 = v131 + 48 * SHIDWORD(v130);
  v22 = v135[0];
  *(v21 - 32) = v135[1].f64[0];
  *(v21 - 48) = v22;
  v23 = *(&v135[1] + 8);
  *(v21 - 8) = v135[2].f64[1];
  *(v21 - 24) = v23;
  if (v130 <= SHIDWORD(v130))
  {
    v24 = 2 * (HIDWORD(v130) + 1) + 1;
  }

  else
  {
    v24 = v130;
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, HIDWORD(v130) + 1, v24);
  v25 = v131 + 48 * SHIDWORD(v130);
  v26 = v136;
  *(v25 - 32) = *&v137[0];
  *(v25 - 48) = v26;
  v27 = *(v137 + 8);
  *(v25 - 8) = *(&v137[1] + 1);
  *(v25 - 24) = v27;
  if (v130 <= SHIDWORD(v130))
  {
    v28 = 2 * (HIDWORD(v130) + 1) + 1;
  }

  else
  {
    v28 = v130;
  }

  v29 = PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(&v129, HIDWORD(v130) + 1, v28);
  v30 = v131 + 48 * SHIDWORD(v130);
  v31 = v138;
  *(v30 - 32) = *&v139[0];
  *(v30 - 48) = v31;
  v32 = *(v139 + 8);
  *(v30 - 8) = *(&v139[1] + 1);
  *(v30 - 24) = v32;
  v33 = HIDWORD(v130);
  if (SHIDWORD(v130) >= 1)
  {
    v34 = 0;
    do
    {
      if (v34 >= SHIDWORD(v130))
      {
        PCArray_base::badIndex(v29);
      }

      v29 = transformPlane<double>(a3, (v131 + 48 * v34), v131 + 48 * v34);
      if ((v29 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    while (++v34 != v33);
  }

  v35 = (*(*a2 + 104))(a2, &v129, a5);
  if (!v35)
  {
LABEL_48:
    v66 = 0;
    goto LABEL_58;
  }

  if (v33 >= 1)
  {
    v36 = 0;
    do
    {
      if (v36 >= SHIDWORD(v130))
      {
        PCArray_base::badIndex(v35);
      }

      v35 = inverseTransformPlane<double>(a3, (v131 + 48 * v36), v131 + 48 * v36);
      if ((v35 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    while (++v36 != v33);
  }

  if (SHIDWORD(v130) < 1)
  {
    PCArray_base::badIndex(v35);
  }

  v37 = *v131;
  v132[1].f64[0] = *(v131 + 16);
  v132[0] = v37;
  v38 = *(v131 + 40);
  *(&v132[1] + 8) = *(v131 + 24);
  v132[2].f64[1] = v38;
  if (SHIDWORD(v130) < 2)
  {
    PCArray_base::badIndex(v35);
  }

  v39 = *(v131 + 48);
  v133[1].f64[0] = *(v131 + 64);
  v133[0] = v39;
  v40 = *(v131 + 88);
  *(&v133[1] + 8) = *(v131 + 72);
  v133[2].f64[1] = v40;
  if (SHIDWORD(v130) < 3)
  {
    PCArray_base::badIndex(v35);
  }

  v41 = *(v131 + 96);
  v134[1].f64[0] = *(v131 + 112);
  v134[0] = v41;
  v42 = *(v131 + 136);
  *(&v134[1] + 8) = *(v131 + 120);
  v134[2].f64[1] = v42;
  if (SHIDWORD(v130) < 4)
  {
    PCArray_base::badIndex(v35);
  }

  v43 = *(v131 + 144);
  v135[1].f64[0] = *(v131 + 160);
  v135[0] = v43;
  v44 = *(v131 + 184);
  *(&v135[1] + 8) = *(v131 + 168);
  v135[2].f64[1] = v44;
  if (SHIDWORD(v130) < 5)
  {
    PCArray_base::badIndex(v35);
  }

  v45 = *(v131 + 192);
  *&v137[0] = *(v131 + 208);
  v136 = v45;
  v46 = *(v131 + 232);
  *(v137 + 8) = *(v131 + 216);
  *(&v137[1] + 1) = v46;
  if (SHIDWORD(v130) <= 5)
  {
    PCArray_base::badIndex(v35);
  }

  v47 = *(v131 + 240);
  *&v139[0] = *(v131 + 256);
  v138 = v47;
  v48 = *(v131 + 280);
  *(v139 + 8) = *(v131 + 264);
  *(&v139[1] + 1) = v48;
  (*(*a1 + 424))(v128, a1);
  v127[4] = v128[4];
  v127[5] = v128[5];
  v127[6] = v128[6];
  v127[7] = v128[7];
  v127[0] = v128[0];
  v127[1] = v128[1];
  v127[2] = v128[2];
  v127[3] = v128[3];
  if (!PCMatrix44Tmpl<double>::invert(v127, v127, 0.0))
  {
    svdInvert<double>(v127);
  }

  v49 = (*(*a1 + 504))(a1);
  v125 = 0uLL;
  v126 = 0.0;
  if (fabs(v49) >= 0.0000001)
  {
    v114[0].var0 = 0;
    v114[1].var0 = 0;
    v115 = 0.0;
    v112 = 0uLL;
    v113 = 0.0;
    v109 = 0.0;
    v110 = 0.0;
    v111 = 0.0;
    v107 = 0uLL;
    v108 = 0.0;
    if (!planeIntersection<double>(v132[0].f64, &v132[1].f64[1], v133[0].f64, &v133[1].f64[1], v114, &v112))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(v121, "horizontal planes don't meet");
      PCException::PCException(exception, v121);
    }

    if (!planeIntersection<double>(v134[0].f64, &v134[1].f64[1], v135[0].f64, &v135[1].f64[1], &v109, &v107))
    {
      v89 = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(v121, "vertical planes don't meet");
      PCException::PCException(v89, v121);
    }

    v67 = v112.f64[1] * v108 - v113 * v107.f64[1];
    v68 = v113 * v107.f64[0] - v108 * v112.f64[0];
    v69 = v107.f64[1] * v112.f64[0] - v112.f64[1] * v107.f64[0];
    v70 = v69 * v69 + v67 * v67 + v68 * v68;
    if (v70 == 0.0)
    {
      v90 = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(v121, "intersection lines aren't perpendicular");
      PCException::PCException(v90, v121);
    }

    v71 = ((v107.f64[0] * v68 - v107.f64[1] * v67) * (v111 - v115) + (v108 * v67 - v107.f64[0] * v69) * (v110 - *&v114[1].var0) + (v107.f64[1] * v69 - v108 * v68) * (v109 - *&v114[0].var0)) / v70;
    v72 = ((v112.f64[0] * v68 - v112.f64[1] * v67) * (v111 - v115) + (v113 * v67 - v112.f64[0] * v69) * (v110 - *&v114[1].var0) + (v112.f64[1] * v69 - v113 * v68) * (v109 - *&v114[0].var0)) / v70;
    v104 = *&v114[0].var0 + v112.f64[0] * v71;
    v105 = *&v114[1].var0 + v112.f64[1] * v71;
    v106 = v115 + v113 * v71;
    v101 = v107.f64[0] * v72 + v109;
    v102 = v107.f64[1] * v72 + v110;
    v103 = v108 * v72 + v111;
    v73 = &v104;
    if (v104 * *(v137 + 1) + v105 * *&v137[1] + v106 * *(&v137[1] + 1) > v101 * *(v137 + 1) + v102 * *&v137[1] + v103 * *(&v137[1] + 1))
    {
      v73 = &v101;
    }

    v74 = *v73;
    v126 = v73[2];
    v125 = v74;
    __asm { FMOV            V2.2D, #0.5 }

    *&v121[0].var0 = vmulq_f64(vaddq_f64(v136, v138), _Q2);
    v122 = (*v137 + *v139) * 0.5;
    v123 = *(v137 + 8);
    v124 = *(&v137[1] + 1);
    v117 = v74;
    v119 = *(v137 + 8);
    v118 = v126;
    v120 = *(&v137[1] + 1);
    v99 = 0uLL;
    v100 = 0.0;
    if (PCPlane<double>::intersect(v121, &v117, &v99))
    {
      v76 = (*(*a1 + 320))(a1);
      v77 = (*(*a1 + 488))(a1);
      v78 = vsubq_f64(v99, v125);
      (*(*a1 + 496))(a1, v77 * sqrt(vaddvq_f64(vmulq_f64(v78, v78)) + (v100 - v126) * (v100 - v126)) / v76);
    }

    PCMatrix44Tmpl<double>::transform<double>(v127, v125.f64, v125.f64);
    v79 = (*(*a1 + 688))(a1);
    v116[0] = 0x3FF0000000000000uLL;
    v116[1] = 0uLL;
    (*(*a1 + 472))(a1, v116);
    (*(*a1 + 272))(v98, a1);
    v80 = (*(*a1 + 632))(a1);
    v81 = (*(*a1 + 488))(a1);
    v82 = LiCamera::adjustTranslationForModel(0, v80, v116, &v125, v49, v79, v81, v98[0]);
    (*(*a1 + 448))(a1, &v125, v82);
  }

  else
  {
    v124 = v132[2].f64[1];
    v120 = v134[2].f64[1];
    memset(v116, 0, sizeof(v116));
    __asm { FMOV            V3.2D, #0.5 }

    *&v121[0].var0 = vmulq_f64(vaddq_f64(v132[0], v133[0]), _Q3);
    v122 = (v132[1].f64[0] + v133[1].f64[0]) * 0.5;
    v123 = *(&v132[1] + 8);
    v117 = vmulq_f64(vaddq_f64(v134[0], v135[0]), _Q3);
    v118 = (v134[1].f64[0] + v135[1].f64[0]) * 0.5;
    v119 = *(&v134[1] + 8);
    (*(*a1 + 360))(v114, a1);
    v116[0] = *&v114[0].var0;
    *(&v116[1] + 8) = *(v137 + 8);
    *&v116[1] = v115;
    *(&v116[2] + 1) = *(&v137[1] + 1);
    if (!intersection<double>(v121, v117.f64, v116, &v125))
    {
      v88 = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(v114, "orthographic intersection failed");
      PCException::PCException(v88, v114);
    }

    (*(*a1 + 304))(v114, a1);
    v96 = v133[0].f64[1];
    v97 = v133[0].f64[0];
    v95 = v132[0];
    v55 = v132[1];
    v92 = v132[2].f64[0];
    v93 = v133[1].f64[0];
    v94 = v132[2].f64[1];
    v56 = v134[0].f64[0];
    v57 = v135[0].f64[1];
    v91 = v135[1].f64[0];
    v58 = v134[0].f64[1];
    v59 = v134[1];
    v60 = v134[2].f64[0];
    v61 = v135[0].f64[0];
    v62 = v134[2].f64[1];
    *&v63 = (*(*a1 + 488))(a1);
    v65 = vdivq_f64(*&v114[0].var0, vdupq_lane_s64(v63, 0));
    *&v114[0].var0 = v65;
    v64 = fabs((v97 - v95.f64[0]) * v55.f64[1] + (v96 - v95.f64[1]) * v92 + (v93 - v55.f64[0]) * v94) / v65.n128_f64[0];
    v65.n128_f64[0] = fabs((v61 - v56) * v59.f64[1] + (v57 - v58) * v60 + (v91 - v59.f64[0]) * v62) / v65.n128_f64[1];
    if (v64 >= v65.n128_f64[0])
    {
      v65.n128_f64[0] = v64;
    }

    (*(*a1 + 496))(a1, v65);
    PCMatrix44Tmpl<double>::transform<double>(v127, v125.f64, v125.f64);
    (*(*a1 + 448))(a1, &v125);
  }

  v66 = 1;
LABEL_58:
  v129 = &unk_28725DA48;
  v83 = v130;
  if (v130 < 0)
  {
    v84 = 1;
  }

  else
  {
    v84 = v130 & ~(v130 >> 31);
  }

  if (v84 == v130)
  {
    if (v130 < 0)
    {
      v85 = v131;
      bzero((v131 + 48 * SHIDWORD(v130)), -48 * SHIDWORD(v130));
      v130 = v83;
LABEL_71:
      MEMORY[0x2666E9ED0](v85, 0x1000C8077774924);
      return v66;
    }

    v85 = v131;
  }

  else
  {
    if (v84)
    {
      operator new[]();
    }

    v85 = 0;
    if (v131)
    {
      MEMORY[0x2666E9ED0](v131, 0x1000C8077774924);
    }

    v131 = 0;
  }

  v130 = v84;
  if (v85)
  {
    goto LABEL_71;
  }

  return v66;
}

void sub_25FF4B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, PCString a57)
{
  PCString::~PCString(&a57);
  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::~PCArray(&STACK[0x2D8]);
  _Unwind_Resume(a1);
}

void svdInvert<double>(__int128 *a1)
{
  v58[0] = 0;
  v58[1] = 0;
  v58[2] = 0x100000001;
  v59 = 0;
  PCGenMatrix<double>::resize(v58, 4, 4, 1);
  v2 = v59;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[3];
  v59[2] = a1[2];
  v2[3] = v5;
  v6 = a1[7];
  v8 = a1[4];
  v7 = a1[5];
  v2[6] = a1[6];
  v2[7] = v6;
  v2[4] = v8;
  v2[5] = v7;
  *v2 = v3;
  v2[1] = v4;
  v31[0] = 0;
  v31[1] = 0x100000000;
  v32 = 0;
  v33 = 0;
  v31[2] = 0;
  v34 = 0x100000001;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v38 = 0x100000001;
  v39 = 0;
  v40 = 0;
  v41 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = 0x100000000;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 1;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0x100000001;
  v53 = 0;
  v54 = 0;
  v55 = 0x100000000;
  v56 = 0;
  v57 = 0x3F1A36E2EB1C432DLL;
  _svdCall(v31, v58);
  PCSvd<double>::inverse(v31, v30);
  v9 = convert<double>(v30, a1);
  v10 = v30[0];
  if (v30[0])
  {
    v11 = *(v30[0] - 4) - 1;
    *(v30[0] - 4) = v11;
    if (!v11)
    {
      MEMORY[0x2666E9ED0](v10 - 8, 0x1000C8077774924, v9);
    }
  }

  v12 = v54;
  if (v54)
  {
    v13 = *(v54 - 4) - 1;
    *(v54 - 4) = v13;
    if (!v13)
    {
      MEMORY[0x2666E9ED0](v12 - 8, 0x1000C8077774924, v9);
      v54 = 0;
    }
  }

  v14 = v50;
  if (v50)
  {
    v15 = *(v50 - 4) - 1;
    *(v50 - 4) = v15;
    if (!v15)
    {
      MEMORY[0x2666E9ED0](v14 - 8, 0x1000C8077774924, v9);
      v50 = 0;
    }
  }

  v16 = v46;
  if (v46)
  {
    v17 = *(v46 - 4) - 1;
    *(v46 - 4) = v17;
    if (!v17)
    {
      MEMORY[0x2666E9ED0](v16 - 8, 0x1000C8077774924, v9);
      v46 = 0;
    }
  }

  v18 = v43;
  if (v43)
  {
    v19 = *(v43 - 4) - 1;
    *(v43 - 4) = v19;
    if (!v19)
    {
      MEMORY[0x2666E9ED0](v18 - 8, 0x1000C8077774924, v9);
      v43 = 0;
    }
  }

  v20 = v40;
  if (v40)
  {
    v21 = *(v40 - 4) - 1;
    *(v40 - 4) = v21;
    if (!v21)
    {
      MEMORY[0x2666E9ED0](v20 - 8, 0x1000C8077774924, v9);
      v40 = 0;
    }
  }

  v22 = v36;
  if (v36)
  {
    v23 = *(v36 - 4) - 1;
    *(v36 - 4) = v23;
    if (!v23)
    {
      MEMORY[0x2666E9ED0](v22 - 8, 0x1000C8077774924, v9);
      v36 = 0;
    }
  }

  v24 = v32;
  if (v32)
  {
    v25 = *(v32 - 4) - 1;
    *(v32 - 4) = v25;
    if (!v25)
    {
      MEMORY[0x2666E9ED0](v24 - 8, 0x1000C8077774924, v9);
      v32 = 0;
    }
  }

  v26 = v31[0];
  if (v31[0])
  {
    v27 = *(v31[0] - 4) - 1;
    *(v31[0] - 4) = v27;
    if (!v27)
    {
      MEMORY[0x2666E9ED0](v26 - 8, 0x1000C8077774924, v9);
    }
  }

  v28 = v58[0];
  if (v58[0])
  {
    v29 = *(v58[0] - 4) - 1;
    *(v58[0] - 4) = v29;
    if (!v29)
    {
      MEMORY[0x2666E9ED0](v28 - 8, 0x1000C8077774924, v9);
    }
  }
}

void sub_25FF4B954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a3)
  {
    v8 = *(a3 - 4) - 1;
    *(a3 - 4) = v8;
    if (!v8)
    {
      MEMORY[0x2666E9ED0](a3 - 8, 0x1000C8077774924);
    }
  }

  PCSvd<double>::~PCSvd(va);
  v9 = *(v6 - 80);
  if (v9)
  {
    v10 = *(v9 - 4) - 1;
    *(v9 - 4) = v10;
    if (!v10)
    {
      MEMORY[0x2666E9ED0](v9 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

BOOL intersection<double>(double *a1, double *a2, uint64_t a3, float64x2_t *a4)
{
  v14 = 0uLL;
  v15 = 0.0;
  v12 = 0uLL;
  v13 = 0.0;
  result = planeIntersection<double>(a1, (a1 + 3), a2, (a2 + 3), v14.f64, &v12);
  if (result)
  {
    v7 = *(a3 + 24);
    v8 = *(a3 + 40);
    v9 = vaddvq_f64(vmulq_f64(v7, v12)) + v8 * v13;
    if (v9 == 0.0)
    {
      return 0;
    }

    else
    {
      v10 = (vaddvq_f64(vmulq_f64(v7, vsubq_f64(*a3, v14))) + v8 * (*(a3 + 16) - v15)) / v9;
      v11 = v15 + v13 * v10;
      *a4 = vaddq_f64(v14, vmulq_n_f64(v12, v10));
      a4[1].f64[0] = v11;
      return 1;
    }
  }

  return result;
}

BOOL LiCamera::isOkay(LiCamera *this)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*this + 440))(this, &v8);
  if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v4 = 0x3FF0000000000000, v5 = 0, v6 = 0, v7 = 0, (*(*this + 472))(this, &v4), (v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v2 = (*(*this + 504))(this), (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
  {
    return v2 >= 0.0;
  }

  else
  {
    return 0;
  }
}

void LiCamera::print(uint64_t a1, void *a2, int a3)
{
  LiImageSource::printIndent(a2, a3);
  v6 = (*(*a1 + 632))(a1);
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = "Frame";
      v8 = a2;
      v9 = 5;
    }

    else
    {
      v7 = "Unknown-model";
      v8 = a2;
      v9 = 13;
    }
  }

  else
  {
    v7 = "Viewpoint";
    v8 = a2;
    v9 = 9;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v7, v9);
  v10 = (*(*a1 + 504))(a1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " camera: aov=", 13);
  v12 = MEMORY[0x2666E9B30](v11, v10);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " focal=", 7);
  (*(*a1 + 320))(a1);
  v15 = MEMORY[0x2666E9B30](v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
  if (v10 != 0.0)
  {
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " cop=", 5);
    (*(*a1 + 336))(v35, a1);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "[", 1);
    v18 = MEMORY[0x2666E9B30](v17, v35[0]);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ",", 1);
    v20 = MEMORY[0x2666E9B30](v19, v35[1]);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ",", 1);
    v22 = MEMORY[0x2666E9B30](v21, v35[2]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "]", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " ", 1);
  }

  v23 = (*(*a1 + 536))(a1);
  v24 = (*(*a1 + 576))(a1);
  v25 = (*(*a1 + 552))(a1);
  v26 = (*(*a1 + 592))(a1);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "near=", 5);
  MEMORY[0x2666E9B30](v27, v23);
  if (v25 > 0.0)
  {
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B30](v28, v25);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "far=", 4);
  MEMORY[0x2666E9B30](v29, v24);
  if (v26 > 0.0)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B30](v30, v26);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
  (*(*a1 + 272))(v36, a1);
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "filmback=[", 10);
  v32 = MEMORY[0x2666E9B30](v31, v36[0]);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", ", 2);
  v34 = MEMORY[0x2666E9B30](v33, v36[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "]\n", 2);
  (*(*a1 + 16))(v35, a1);
  PCMatrix44Tmpl<double>::print(v35, a2, a3 + 2);
}

void PCMatrix44Tmpl<double>::print(uint64_t a1, void *a2, int a3)
{
  PCMatrix44Tmpl<double>::format(a1, a3, &v7);
  v4 = PCString::createCStr(&v7);
  v5 = v4;
  if (v4)
  {
    v6 = strlen(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v5, v6);
    free(v5);
  }

  PCString::~PCString(&v7);
}

void LiSimpleCamera::LiSimpleCamera(LiSimpleCamera *this, uint64_t *a2)
{
  v3 = a2[3];
  *this = v3;
  *(this + *(v3 - 24)) = a2[4];
  v4 = a2[2];
  *this = v4;
  *(this + *(v4 - 24)) = a2[5];
  v5 = a2[1];
  *this = v5;
  *(this + *(v5 - 24)) = a2[6];
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 24)) = a2[7];
  *(this + 2) = 1;
  LiTransform::LiTransform((this + 16));
  *(this + 28) = 0x3FF0000000000000;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 42) = 0x3FF0000000000000;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 32) = 0x3FF0000000000000;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0x3FF0000000000000;
  *(this + 48) = 0x4046800000000000;
  *(this + 392) = 1;
  *(this + 25) = xmmword_26084B0B0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 27) = xmmword_26084B0C0;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 228) = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 448))(this, &v7);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  (*(*this + 400))(this, &v7);
}

void LiSimpleCamera::LiSimpleCamera(LiSimpleCamera *this)
{
  *(this + 480) = 1;
  *this = &unk_28725D688;
  *(this + 58) = &unk_28725D9A8;
  *(this + 59) = 0;
  *(this + 2) = 1;
  LiTransform::LiTransform((this + 16));
  *(this + 28) = 0x3FF0000000000000;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 42) = 0x3FF0000000000000;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 32) = 0x3FF0000000000000;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0x3FF0000000000000;
  *(this + 48) = 0x4046800000000000;
  *(this + 392) = 1;
  *(this + 25) = xmmword_26084B0B0;
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 27) = xmmword_26084B0C0;
  *(this + 56) = 0x3FF0000000000000;
  *(this + 228) = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  (*(*this + 448))(this, &v2);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  (*(*this + 400))(this, &v2);
}

void sub_25FF4C610(_Unwind_Exception *a1, const PCString *a2)
{
  OZChannelBase::setRangeName((v2 + 16), a2);
  *(v2 + 464) = &unk_2872DEA38;
  *(v2 + 480) = 0;
  PCWeakCount::~PCWeakCount((v2 + 472));
  _Unwind_Resume(a1);
}

void LiSimpleCamera::~LiSimpleCamera(LiSimpleCamera *this, const PCString *a2)
{
  v2.var0 = a2->var0;
  *this = a2->var0;
  *(this + v2.var0[-1].info) = a2[7];
  OZChannelBase::setRangeName((this + 16), a2);
}

{
  *this = &unk_28725D688;
  *(this + 58) = &unk_28725D9A8;
  OZChannelBase::setRangeName((this + 16), a2);
  *(this + 58) = &unk_2872DEA38;
  *(this + 480) = 0;
  PCWeakCount::~PCWeakCount(this + 59);
}

{
  LiSimpleCamera::~LiSimpleCamera(this, a2);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiSimpleCamera::~LiSimpleCamera(LiSimpleCamera *this, const PCString *a2)
{
  LiSimpleCamera::~LiSimpleCamera((this + *(*this - 24)), a2);
}

{
  LiSimpleCamera::~LiSimpleCamera((this + *(*this - 24)), a2);

  JUMPOUT(0x2666E9F00);
}

__n128 LiSimpleCamera::getFilmback@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[27];
  *a2 = result;
  return result;
}

__n128 LiSimpleCamera::setFilmback(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[27] = *a2;
  return result;
}

__n128 LiSimpleCamera::getParentTransform@<Q0>(LiSimpleCamera *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 21);
  *(a2 + 64) = *(this + 20);
  *(a2 + 80) = v2;
  v3 = *(this + 23);
  *(a2 + 96) = *(this + 22);
  *(a2 + 112) = v3;
  v4 = *(this + 17);
  *a2 = *(this + 16);
  *(a2 + 16) = v4;
  result = *(this + 18);
  v6 = *(this + 19);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t LiSimpleCamera::setParentTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 256;
  if (result + 256 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  return result;
}

__n128 LiSimpleCamera::getTranslation(__n128 *a1, __n128 *a2)
{
  result = a1[1];
  a2[1].n128_u64[0] = a1[2].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 LiSimpleCamera::setTranslation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[2].n128_u64[0] = a2[1].n128_u64[0];
  a1[1] = result;
  return result;
}

__n128 LiSimpleCamera::getPivot(uint64_t a1, __n128 *a2)
{
  result = *(a1 + 232);
  a2[1].n128_u64[0] = *(a1 + 248);
  *a2 = result;
  return result;
}

__n128 LiSimpleCamera::setPivot(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 248) = a2[1].n128_u64[0];
  *(a1 + 232) = result;
  return result;
}

__n128 LiSimpleCamera::getRotation(uint64_t a1, uint64_t a2)
{
  if (a1 + 64 != a2)
  {
    *a2 = *(a1 + 64);
    result = *(a1 + 72);
    *(a2 + 24) = *(a1 + 88);
    *(a2 + 8) = result;
  }

  return result;
}

__n128 LiSimpleCamera::setRotation(uint64_t a1, uint64_t a2)
{
  if (a1 + 64 != a2)
  {
    *(a1 + 64) = *a2;
    result = *(a2 + 8);
    *(a1 + 88) = *(a2 + 24);
    *(a1 + 72) = result;
  }

  return result;
}

uint64_t LiSimpleCamera::getNearFadePoints(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  memset(v15, 0, sizeof(v15));
  v6 = (*(*a1 + 96))(a1, v15);
  if (v6)
  {
    v7 = (*(*a1 + 552))(a1);
    if (v7 >= 1.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = v15[0];
    v10 = *(&v15[1] + 8);
    v11 = *(&v15[2] + 1);
    v12 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)) + v11 * v11);
    if (fabs(v12) >= 0.000000100000001)
    {
      v10 = vdivq_f64(*(&v15[1] + 8), vdupq_lane_s64(*&v12, 0));
      v11 = *(&v15[2] + 1) / v12;
    }

    v13 = *&v15[1] + v8 * v11;
    *a2 = v15[0];
    *(a2 + 16) = *&v15[1];
    *a3 = vaddq_f64(v9, vmulq_n_f64(v10, v8));
    a3[1].f64[0] = v13;
  }

  return v6;
}

uint64_t LiSimpleCamera::getFarFadePoints(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  memset(v15, 0, sizeof(v15));
  v6 = (*(*a1 + 104))(a1, v15);
  if (v6)
  {
    v7 = (*(*a1 + 592))(a1);
    if (v7 >= 1.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1.0;
    }

    v9 = v15[0];
    v10 = *(&v15[1] + 8);
    v11 = *(&v15[2] + 1);
    v12 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)) + v11 * v11);
    if (fabs(v12) >= 0.000000100000001)
    {
      v10 = vdivq_f64(*(&v15[1] + 8), vdupq_lane_s64(*&v12, 0));
      v11 = *(&v15[2] + 1) / v12;
    }

    v13 = *&v15[1] + v8 * v11;
    *a2 = v15[0];
    *(a2 + 16) = *&v15[1];
    *a3 = vaddq_f64(v9, vmulq_n_f64(v10, v8));
    a3[1].f64[0] = v13;
  }

  return v6;
}

uint64_t LiSimpleCamera::set(LiSimpleCamera *this, const LiCamera *a2)
{
  v9[0] = 0x3FF0000000000000;
  memset(&v9[1], 0, 24);
  (*(*a2 + 440))(a2, this + 16);
  (*(*a2 + 472))(a2, v9);
  (*(*this + 480))(this, v9);
  (*(*a2 + 424))(v8, a2);
  if (v8 != (this + 256))
  {
    for (i = 0; i != 8; i += 2)
    {
      v5 = (this + i * 16 + 256);
      v6 = v8[i + 1];
      *v5 = v8[i];
      v5[1] = v6;
    }
  }

  *(this + 28) = (*(*a2 + 488))(a2);
  (*(*a2 + 456))(a2, this + 232);
  *(this + 2) = (*(*a2 + 632))(a2);
  *(this + 48) = (*(*a2 + 504))(a2);
  *(this + 50) = (*(*a2 + 536))(a2);
  *(this + 51) = (*(*a2 + 576))(a2);
  *(this + 52) = (*(*a2 + 552))(a2);
  *(this + 53) = (*(*a2 + 592))(a2);
  (*(*a2 + 272))(v8, a2);
  *(this + 27) = v8[0];
  *(this + 456) = (*(*a2 + 664))(a2);
  result = (*(*a2 + 624))(a2);
  *(this + 457) = result;
  return result;
}

double LiAnimCamera::getTime(LiAnimCamera *this)
{
  PCTime::PCTime(&v12);
  gettimeofday(&v12, 0);
  tv_usec = v12.tv_usec;
  v5 = *(this + 118);
  v6 = v12.tv_usec < v5;
  if (v12.tv_usec < v5)
  {
    tv_usec = v12.tv_usec + 1000000;
  }

  v12.tv_usec = tv_usec - v5;
  v12.tv_sec = v12.tv_sec - v6 - *(this + 58);
  v7 = ((tv_usec - v5) / 1000000.0 + v12.tv_sec) / *(this + 60);
  v11 = v7;
  if (v7 < 1.0)
  {
    v8 = 0.0;
    if (*(this + 536))
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (*(this + 537))
    {
      v8 = 1.0;
    }

    PCMath::easeInOut(&v11, v7, v9, v8, 0.0, 1.0, 0, v3);
    v7 = v11;
  }

  OZChannelBase::setRangeName(&v12, v2);
  return v7;
}

double LiCamera::getCropFraction(LiCamera *this)
{
  v1 = (*(*this + 664))(this);
  result = 0.0;
  if (v1)
  {
    return 1.0;
  }

  return result;
}

BOOL transformPlane<double>(_OWORD *a1, double *a2, uint64_t a3)
{
  v4 = a2[4];
  v5 = a2[5];
  v6 = -(a2[3] * *a2 + v4 * a2[1] + v5 * a2[2]);
  v14.f64[0] = a2[3];
  v14.f64[1] = v4;
  v15 = v5;
  v16 = v6;
  v7 = a1[5];
  v13[4] = a1[4];
  v13[5] = v7;
  v8 = a1[7];
  v13[6] = a1[6];
  v13[7] = v8;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v10 = a1[3];
  v13[2] = a1[2];
  v13[3] = v10;
  v11 = PCMatrix44Tmpl<double>::invert(v13, v13, 0.0);
  if (v11)
  {
    PCMatrix44Tmpl<double>::transform_row<double>(v13, v14.f64, v14.f64);
    PCPlane<double>::setImplicit(a3, &v14);
  }

  return v11;
}

double PCMatrix44Tmpl<double>::setFramePerspective(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = a3 * 0.5;
  v14 = tan(a4 * 3.14159265 / 360.0);
  if (v14 > 0.0 && v13 / v14 - a7 < a5)
  {
    a5 = v13 / v14 - a7;
  }

  *a1 = 2.0 / a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 2.0 / a3;
  v15 = v13 * (a5 + a6);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = (v14 * (a5 - a6) - (v13 + v13)) / v15;
  *(a1 + 88) = (v13 * a5 - v13 * a6 + v14 * ((a6 + a6) * a5)) / v15;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  result = -v14 / v13;
  *(a1 + 112) = result;
  *(a1 + 120) = 0x3FF0000000000000;
  return result;
}

double *PCMatrix44Tmpl<double>::transform_vector<double>(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *a3 = *a2 * *a1 + v4 * a1[1] + v5 * a1[2];
  a3[1] = v3 * a1[4] + v4 * a1[5] + v5 * a1[6];
  a3[2] = v3 * a1[8] + v4 * a1[9] + v5 * a1[10];
  return a3;
}

void PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725DA48;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725DA48;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t PCArray<PCPlane<double>,PCArray_Traits<PCPlane<double>>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "PCArray::resize");
    PCException::PCException(exception, &v17);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 < a2)
    {
      v7 = 48 * v6;
      v8 = a2 - v6;
      do
      {
        v9 = (*(result + 16) + v7);
        v9[1] = 0uLL;
        v9[2] = 0uLL;
        *v9 = 0uLL;
        v7 += 48;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v10 = *(result + 12);
    if (a2 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v12 = (*(result + 16) + 32);
      v13 = 32;
      v14 = v11;
      do
      {
        *(v13 - 32) = *(v12 - 2);
        *(v13 - 16) = *(v12 - 1);
        v15 = *v12;
        v12 += 3;
        *v13 = v15;
        v13 += 48;
        --v14;
      }

      while (v14);
    }

    if (v11 > v10)
    {
      v10 = v11;
    }

    if (v10 < a2)
    {
      bzero((48 * v10), 48 * (~v10 + a2) + 48);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

uint64_t inverseTransformPlane<double>(double *a1, double *a2, uint64_t a3)
{
  v4 = a2[4];
  v5 = a2[5];
  v6 = -(a2[3] * *a2 + v4 * a2[1] + v5 * a2[2]);
  v8.f64[0] = a2[3];
  v8.f64[1] = v4;
  v9 = v5;
  v10 = v6;
  PCMatrix44Tmpl<double>::transform_row<double>(a1, v8.f64, v8.f64);
  PCPlane<double>::setImplicit(a3, &v8);
  return 1;
}

__n128 convert<double>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != 4 || *(a1 + 8) != 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v16, "from.cols() == 4 && from.rows() == 4");
    PCException::PCException(exception, &v16);
    *exception = &unk_2872DE188;
  }

  v3 = a2;
  if (*(a1 + 20) == 1 && *(a1 + 16) == 4)
  {
    v9 = *(a1 + 24);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v12;
    *a2 = v10;
    *(a2 + 16) = v11;
    result = v9[4];
    v13 = v9[5];
    v14 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v14;
    *(a2 + 64) = result;
    *(a2 + 80) = v13;
  }

  else
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        PCGenMatrix<double>::checkColIndex(a1, j);
        PCGenMatrix<double>::checkRowIndex(a1, i);
        result.n128_u64[0] = *(*(a1 + 24) + 8 * (*(a1 + 20) * j + *(a1 + 16) * i));
        *(v3 + 8 * j) = result.n128_u64[0];
      }

      v3 += 32;
    }
  }

  return result;
}

uint64_t PCSvd<double>::inverse@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  PCGenMatrix<double>::PCGenMatrix(&v44, v4, v4, 0, 0.0);
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if (*(a1 + 96) <= v5)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::ssprintf("PCGenVector index %d out of range %d", &v41, v5, (*(a1 + 96) - 1));
        PCException::PCException(exception, &v41);
        *exception = &unk_2872074D0;
      }

      v6 = *(*(a1 + 104) + 8 * *(a1 + 100) * v5);
      if (fabs(v6) < *(a1 + 216))
      {
        goto LABEL_27;
      }

      PCGenMatrix<double>::col(a1 + 56, v5, &v37);
      v7 = v38;
      PCGenBlockRef<double>::PCGenBlockRef(&v41, v38);
      v42 = v7 | 0x100000000;
      v9 = v40;
      var0 = v41.var0;
      v43 = v41.var0;
      v10 = v38;
      if (v39 == 1)
      {
        if (v38 >= 1)
        {
          do
          {
            v11 = *v9++;
            *&var0->isa = v11 / v6;
            var0 = (var0 + 8);
            --v10;
          }

          while (v10);
        }
      }

      else if (v38 >= 1)
      {
        v12 = 8 * v39;
        do
        {
          *&var0->isa = *v9 / v6;
          var0 = (var0 + 8);
          v9 = (v9 + v12);
          --v10;
        }

        while (v10);
      }

      PCGenMatrix<double>::col(&v44, v5, v35);
      v35[1] = v42;
      v13 = v41.var0;
      v14 = v35[0];
      if (v35[0] != v41.var0)
      {
        break;
      }

      v36 = v43;
      if (v35[0])
      {
        goto LABEL_19;
      }

LABEL_21:
      v17 = v41.var0;
      if (v41.var0)
      {
        v18 = HIDWORD(v41.var0[-1].length) - 1;
        HIDWORD(v41.var0[-1].length) = v18;
        if (!v18)
        {
          MEMORY[0x2666E9ED0](&v17[-1].length, 0x1000C8077774924);
          v41.var0 = 0;
        }
      }

      v19 = v37;
      if (v37)
      {
        v20 = *(v37 - 4) - 1;
        *(v37 - 4) = v20;
        if (!v20)
        {
          MEMORY[0x2666E9ED0](v19 - 8, 0x1000C8077774924);
        }
      }

LABEL_27:
      v5 = (v5 + 1);
      if (v5 == v4)
      {
        goto LABEL_28;
      }
    }

    if (v35[0])
    {
      v15 = *(v35[0] - 4) - 1;
      *(v35[0] - 4) = v15;
      if (!v15)
      {
        MEMORY[0x2666E9ED0](&v14[-1].length, 0x1000C8077774924);
      }
    }

    v35[0] = v13;
    if (!v13)
    {
      goto LABEL_21;
    }

    ++HIDWORD(v13[-1].length);
    v36 = v43;
    v14 = v13;
LABEL_19:
    v16 = HIDWORD(v14[-1].length) - 1;
    HIDWORD(v14[-1].length) = v16;
    if (!v16)
    {
      MEMORY[0x2666E9ED0](&v14[-1].length, 0x1000C8077774924);
    }

    goto LABEL_21;
  }

LABEL_28:
  v21 = *(a1 + 24);
  if (v21)
  {
    v22 = *(v21 - 4);
    *(v21 - 4) = v22 + 1;
    v23 = *(a1 + 32);
    v25 = *(a1 + 40);
    v24 = *(a1 + 44);
    v26 = *(a1 + 48);
    *(v21 - 4) = v22 + 2;
  }

  else
  {
    v23 = *(a1 + 32);
    v25 = *(a1 + 40);
    v24 = *(a1 + 44);
    v26 = *(a1 + 48);
  }

  v27 = v45;
  PCGenBlockRef<double>::PCGenBlockRef(a2, v45 * v23);
  *(a2 + 8) = v27;
  *(a2 + 12) = v23;
  *(a2 + 16) = 1;
  *(a2 + 20) = v27;
  v28 = *a2;
  *(a2 + 24) = *a2;
  result = MMultiplyMatrices<double>(v45, v46, v23, v49, v47, v48, v26, v24, v25, v28, 1, v27);
  if (v21)
  {
    v30 = *(v21 - 4) - 1;
    *(v21 - 4) = v30;
    if (!v30)
    {
      result = MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
      v30 = *(v21 - 4);
    }

    v31 = v30 - 1;
    *(v21 - 4) = v31;
    if (!v31)
    {
      result = MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
    }
  }

  v32 = v44;
  if (v44)
  {
    v33 = *(v44 - 4) - 1;
    *(v44 - 4) = v33;
    if (!v33)
    {
      return MEMORY[0x2666E9ED0](v32 - 8, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_25FF4DC60(_Unwind_Exception *var0, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, PCString a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  PCGenBlockRef<double>::deref(v22);
  if (v23)
  {
    PCSvd<double>::inverse(v23, var0, a2, &a18);
    var0 = a18.var0;
  }

  v26 = a21;
  if (a21)
  {
    v27 = *(a21 - 4) - 1;
    *(a21 - 4) = v27;
    if (!v27)
    {
      MEMORY[0x2666E9ED0](v26 - 8, v21);
    }
  }

  _Unwind_Resume(var0);
}

uint64_t PCGenMatrix<double>::col@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  result = PCGenMatrix<double>::checkColIndex(a1, a2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 20);
  v11 = *a1;
  *a3 = *a1;
  if (v11)
  {
    ++*(v11 - 4);
  }

  *(a3 + 8) = v7;
  *(a3 + 12) = v9;
  *(a3 + 16) = v8 + 8 * v10 * v3;
  return result;
}

void *PCGenMatrix<double>::PCGenMatrix(void *a1, int a2, int a3, int a4, double a5)
{
  v9 = (a3 * a2);
  result = PCGenBlockRef<double>::PCGenBlockRef(a1, a3 * a2);
  *(result + 2) = a2;
  *(result + 3) = a3;
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 1;
  }

  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2;
  }

  *(result + 4) = v11;
  *(result + 5) = v12;
  v13 = *result;
  result[3] = *result;
  if (v13)
  {
    v14 = v9 < 1;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v9 - 1);
    v17 = (v13 + 8);
    do
    {
      v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v15), xmmword_260343E00)));
      if (v18.i8[0])
      {
        *(v17 - 1) = a5;
      }

      if (v18.i8[4])
      {
        *v17 = a5;
      }

      v15 += 2;
      v17 += 2;
    }

    while (((v9 + 1) & 0xFFFFFFFE) != v15);
  }

  return result;
}

uint64_t MMultiplyMatrices<double>(uint64_t result, int a2, int a3, double *a4, int a5, int a6, double *a7, int a8, int a9, uint64_t a10, int a11, int a12)
{
  if (result >= 1)
  {
    v12 = 0;
    v13 = result;
    v14 = 8 * a8;
    v15 = 8 * a6;
    result = 8 * a2;
    while (a3 < 1)
    {
LABEL_26:
      ++v12;
      a4 += a5;
      if (v12 == v13)
      {
        return result;
      }
    }

    v16 = 0;
    v17 = a7;
    while (1)
    {
      if (a6 == 1)
      {
        if (a8 == 1)
        {
          if (a2)
          {
            v18 = 0;
            v19 = 0.0;
            do
            {
              v19 = v19 + a4[v18] * v17[v18];
              ++v18;
            }

            while (a2 != v18);
            goto LABEL_25;
          }
        }

        else if (a2 >= 1)
        {
          v22 = 0;
          v19 = 0.0;
          v23 = v17;
          do
          {
            v19 = v19 + a4[v22 / 8] * *v23;
            v22 += 8;
            v23 = (v23 + v14);
          }

          while (result != v22);
          goto LABEL_25;
        }
      }

      else if (a8 == 1)
      {
        if (a2 >= 1)
        {
          v20 = 0;
          v19 = 0.0;
          v21 = a4;
          do
          {
            v19 = v19 + *v21 * v17[v20 / 8];
            v20 += 8;
            v21 = (v21 + v15);
          }

          while (result != v20);
          goto LABEL_25;
        }
      }

      else if (a2 >= 1)
      {
        v19 = 0.0;
        v24 = a4;
        v25 = v17;
        v26 = a2;
        do
        {
          v19 = v19 + *v24 * *v25;
          v25 = (v25 + v14);
          v24 = (v24 + v15);
          --v26;
        }

        while (v26);
        goto LABEL_25;
      }

      v19 = 0.0;
LABEL_25:
      *(a10 + 8 * v12 * a11 + 8 * v16 * a12) = v19;
      ++v16;
      v17 += a9;
      if (v16 == a3)
      {
        goto LABEL_26;
      }
    }
  }

  return result;
}

void *PCSvd<double>::~PCSvd(void *a1)
{
  PCGenBlockRef<double>::deref(a1 + 24);
  PCGenBlockRef<double>::deref(a1 + 20);
  PCGenBlockRef<double>::deref(a1 + 17);
  PCGenBlockRef<double>::deref(a1 + 14);
  PCGenBlockRef<double>::deref(a1 + 11);
  PCGenBlockRef<double>::deref(a1 + 7);
  PCGenBlockRef<double>::deref(a1 + 3);
  PCGenBlockRef<double>::deref(a1);
  return a1;
}

void PCMatrix44Tmpl<double>::format(uint64_t a1@<X0>, int a2@<W1>, PCSharedCount *a3@<X8>)
{
  v37 = 0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  std::vector<std::vector<PCString>>::resize(&v31, 4uLL);
  v6 = 0;
  v30 = 0;
  v29 = 0;
  do
  {
    v7 = 0;
    v8 = v31 + 24 * v6;
    do
    {
      PCString::format(v5, *(a1 + v7), &v41);
      v9 = *(v8 + 8);
      if (v9 >= *(v8 + 16))
      {
        v10 = std::vector<PCString>::__emplace_back_slow_path<PCString>(v8, &v41);
      }

      else
      {
        PCString::PCString(*(v8 + 8), &v41);
        v10 = v9 + 8;
        *(v8 + 8) = v9 + 8;
      }

      *(v8 + 8) = v10;
      PCString::~PCString(&v41);
      v7 += 32;
    }

    while (v7 != 128);
    PCMatrix44_computeWidth(v8, &v30 + 1, &v30, &v29);
    std::vector<int>::push_back[abi:ne200100](&v37, &v30);
    std::vector<int>::push_back[abi:ne200100](&__p, &v29);
    ++v6;
    a1 += 8;
  }

  while (v6 != 4);
  v12 = v31;
  v11 = v32;
  PCSharedCount::PCSharedCount(a3);
  PCSharedCount::PCSharedCount(&v41);
  PCSharedCount::PCSharedCount(&v28);
  if (a2 >= 1)
  {
    do
    {
      PCString::PCString(&v40, &v28);
      PCString::append(v13, "  ");
      PCString::set(&v28, &v40);
      PCString::~PCString(&v40);
      --a2;
    }

    while (a2);
  }

  v14 = 0;
  v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
  do
  {
    PCString::PCString(&v40, &v28);
    PCString::append(v16, "[");
    PCString::set(&v41, &v40);
    PCString::~PCString(&v40);
    if (v15 >= 1)
    {
      v17 = 0;
      do
      {
        PCString::PCString(&v27, (*(v31 + 24 * v17) + 8 * v14));
        HIDWORD(v30) = PCString::size(&v27);
        PCURL::PCURL(&v40, @".");
        v18 = PCString::find(&v27, &v40);
        PCString::~PCString(&v40);
        if (v18 >= 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = HIDWORD(v30);
        }

        v21 = HIDWORD(v30) - v20;
        v29 = HIDWORD(v30) - v20;
        LODWORD(v30) = v20;
        v22 = *(v37 + v17);
        v23 = *(__p + v17);
        LODWORD(v30) = v20 + 1;
        if (v20 < v22)
        {
          do
          {
            PCString::PCString(&v40, " ");
            PCString::insert(&v27, 0, &v40);
            PCString::~PCString(&v40);
            v24 = v30;
            LODWORD(v30) = v30 + 1;
          }

          while (v24 < v22);
          goto LABEL_18;
        }

        while (1)
        {
          v29 = v21 + 1;
          if (v21 >= v23)
          {
            break;
          }

          PCString::PCString(&v40, " ");
          PCString::append(&v27, &v40);
          PCString::~PCString(&v40);
LABEL_18:
          v21 = v29;
        }

        PCString::PCString(v19, " ");
        PCString::append(&v41, &v40);
        PCString::~PCString(&v40);
        PCString::append(&v41, &v27);
        PCString::~PCString(&v27);
        ++v17;
      }

      while (v17 != (v15 & 0x7FFFFFFF));
    }

    PCString::append(&v41, " ]\n");
    PCString::append(a3, &v41);
    ++v14;
  }

  while (v14 != 4);
  PCString::~PCString(&v28);
  PCString::~PCString(&v41);
  v41.var0 = &v31;
  std::vector<std::vector<PCString>>::__destroy_vector::operator()[abi:ne200100](v25);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_25FF4E3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, PCString *a9, PCString a10, PCString a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  PCString::~PCString((v21 - 88));
  PCString::~PCString(a9);
  *(v21 - 88) = &a14;
  std::vector<std::vector<PCString>>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<PCString>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<PCString>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v8);
    }

    *(a1 + 8) = v7;
  }
}

void PCMatrix44_computeWidth(uint64_t a1, signed int *a2, int *a3, int *a4)
{
  v7 = *a1;
  v8 = *(a1 + 8) - *a1;
  if ((v8 >> 3))
  {
    v10 = PCString::size(*a1);
    PCURL::PCURL(&v20, @".");
    v11 = PCString::find(v7, &v20);
    PCString::~PCString(&v20);
    *a2 = v10;
    if (v11 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    *a3 = v12;
    *a4 = v10 - v12;
    if ((v8 >> 3) >= 2)
    {
      v13 = ((v8 >> 3) & 0x7FFFFFFF) - 1;
      v14 = 1;
      do
      {
        v15 = *a1;
        v16 = PCString::size((*a1 + v14 * 8));
        PCURL::PCURL(&v20, @".");
        v17 = PCString::find(&v15[v14], &v20);
        PCString::~PCString(&v20);
        if (v17 >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        if (*a2 < v16)
        {
          *a2 = v16;
        }

        if (*a3 < v18)
        {
          *a3 = v18;
        }

        v19 = v16 - v18;
        if (*a4 < v19)
        {
          *a4 = v19;
        }

        ++v14;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    *a4 = 0;
    *a3 = 0;
    *a2 = 0;
  }
}

void std::vector<std::vector<PCString>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PCString>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<PCString>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<PCString>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::vector<PCString>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<PCString>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<PCString>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<PCString>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void PCSvd<double>::inverse(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a1 - 4) - 1;
  *(a1 - 4) = v8;
  if (!v8)
  {
    OUTLINED_FUNCTION_1();
    v8 = *(a1 - 4);
  }

  v9 = v8 - 1;
  *(a1 - 4) = v9;
  if (!v9)
  {
    OUTLINED_FUNCTION_1();
  }

  *a4 = a2;
  *(a4 + 8) = a3;
}

uint64_t LiTextureStoreTokenImpl::LiTextureStoreTokenImpl(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *(a1 + 8);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  (*(*v3 + 16))(v3);
  return a1;
}

void sub_25FF4EAA0(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(v3, *(v1 + 32));
  v5 = *(v1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  PCSpinLock::~PCSpinLock(v1);
  _Unwind_Resume(a1);
}

void LiTextureStoreTokenImpl::redeem(os_unfair_lock_s *this@<X0>, ProGL::GL *a2@<X1>, PCWorkingColorVector *a3@<X8>)
{
  ProGL::GL::getPGLContextHandle(a2, &v14);
  VirtualScreen = ProGL::ContextHandle::getVirtualScreen(&v14);
  ProGL::ContextHandle::~ContextHandle(&v14);
  PCWorkingColorVector::PCWorkingColorVector(a3);
  v16 = this;
  PCSpinLock::lock(this);
  v6 = *&this[8]._os_unfair_lock_opaque;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = this + 8;
  do
  {
    if (v6[8]._os_unfair_lock_opaque >= VirtualScreen)
    {
      v7 = v6;
    }

    v6 = *&v6[2 * (v6[8]._os_unfair_lock_opaque < VirtualScreen)]._os_unfair_lock_opaque;
  }

  while (v6);
  if (v7 == &this[8] || VirtualScreen < v7[8]._os_unfair_lock_opaque)
  {
LABEL_8:
    (*(**&this[2]._os_unfair_lock_opaque + 24))(&v14);
    v8 = v14;
    v14 = 0uLL;
    v9 = *(a3 + 1);
    *a3 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v14 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
      }
    }

    LODWORD(v14) = VirtualScreen;
    v10 = *(a3 + 1);
    *(&v14 + 1) = *a3;
    v15 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::__value_type<int,ProGL::TextureHandle>,std::__map_value_compare<int,std::__value_type<int,ProGL::TextureHandle>,std::less<int>,true>,std::allocator<std::__value_type<int,ProGL::TextureHandle>>>::__emplace_unique_key_args<int,std::pair<int const,ProGL::TextureHandle>>(&this[6], &v14);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

LABEL_15:
    PCSpinLock::unlock(this);
    return;
  }

  v12 = *&v7[10]._os_unfair_lock_opaque;
  v11 = *&v7[12]._os_unfair_lock_opaque;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a3 + 1);
  *a3 = v12;
  *(a3 + 1) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (this)
  {
    goto LABEL_15;
  }
}

void sub_25FF4EC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  v6 = *(v4 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  _Unwind_Resume(a1);
}

void LiTextureStoreImpl::findTokenImpl(uint64_t **this@<X0>, const PCHash128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>((this + 2), a2);
  if (this + 3 == v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  *a3 = 0;
  a3[1] = 0;
  v7 = v5[7];
  if (!v7)
  {
    v8 = 0;
LABEL_7:
    std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::erase(this + 2, v6);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v8 = std::__shared_weak_count::lock(v7);
  a3[1] = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v6[6];
  *a3 = v9;
  if (!v9)
  {
    goto LABEL_7;
  }
}

void sub_25FF4ED24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void LiTextureStoreImpl::addTokenImpl(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v6 = v4;
  v7 = v3;
  std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,std::weak_ptr<LiTextureStoreTokenImpl>>>(a1 + 16, &v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_25FF4ED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(exception_object);
}

void LiTextureStore::getToken(LiTextureStore *this@<X0>, void *a2@<X8>)
{
  {
    operator new();
  }

  v5 = getTextureStoreInstance(void)::instance;
  v10 = getTextureStoreInstance(void)::instance + 8;
  PCSpinLock::lock((getTextureStoreInstance(void)::instance + 8));
  v9 = *LiTextureFactory::getKey(this);
  LiTextureStoreImpl::findTokenImpl(v5, &v9, v8);
  if (!v8[0])
  {
    v7 = *(this + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    std::allocate_shared[abi:ne200100]<LiTextureStoreTokenImpl,std::allocator<LiTextureStoreTokenImpl>,std::shared_ptr<LiTextureFactoryImpl>,0>();
  }

  v6 = v8[1];
  *a2 = v8[0];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  PCSpinLock::unlock((v5 + 8));
}

void sub_25FF4EF58(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C40C3D8C859);
  _Unwind_Resume(a1);
}

void *LiTextureFactory::getKey(LiTextureFactory *this)
{
  if (*this)
  {
    return (*this + 8);
  }

  {
    {
      PCWorkingColorVector::PCWorkingColorVector(&LiTextureFactory::getKey(void)const::defaultKey);
    }
  }

  return &LiTextureFactory::getKey(void)const::defaultKey;
}

void LiTextureStoreToken::redeem(os_unfair_lock_s **this@<X0>, ProGL::GL *a2@<X1>, PCWorkingColorVector *a3@<X8>)
{
  v3 = *this;
  if (v3)
  {
    LiTextureStoreTokenImpl::redeem(v3, a2, a3);
  }

  else
  {
    PCWorkingColorVector::PCWorkingColorVector(a3);
  }
}

void getSimpleTextureHash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v8 = v7;
  v10[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v10);
  PCHashWriteStream::writeValue(v10, @"simple");
  PCURL::getAsFileSystemString(v6, &v9);
  PCHashWriteStream::writeValue(v10, &v9);
  PCString::~PCString(&v9);
  PCHashWriteStream::writeValue(v10, v5);
  if (v3)
  {
    PCColorSpaceHandle::getMD5(v3, &v9);
    PCHashWriteStream::writeValue(v10, &v9);
  }

  *v8 = *PCHashWriteStream::getHash(v10)->i8;
  PCHashWriteStream::~PCHashWriteStream(v10);
}

void sub_25FF4F174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, char a12)
{
  PCString::~PCString(&a10);
  PCHashWriteStream::~PCHashWriteStream(&a12);
  _Unwind_Resume(a1);
}

LoadLockCache *LiAsyncBumpBitmapCreator::operator()@<X0>(const PCHash128 *a1@<X0>, void *a2@<X8>)
{
  result = LiCachingDelegateGetBitmap(a1, a2);
  if (!*a2)
  {
    v5 = LoadLockCache::instance(result);
    LiLockCache<PCHash128,PCMutex>::getLock(v5, a1, v11);
    LiCachingDelegateGetBitmap(a1, v10);
    v6 = v10[0];
    v10[0] = 0uLL;
    v7 = a2[1];
    *a2 = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v10[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10[0] + 1));
      }

      if (*a2)
      {
        return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(v11);
      }
    }

    else if (v6)
    {
      return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(v11);
    }

    PCTimer::PCTimer(v10);
    PCTimer::start(v10);
    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    PCTimer::stop(v10);
    PCTimer::getSeconds(v10);
    LiCachingDelegateAddBitmap(a2, a1);
    OZChannelBase::setRangeName(v10, v9);
    return LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(v11);
  }

  return result;
}

void sub_25FF4F280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(va);
  v7 = *(v5 + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void LiLockCache<PCHash128,PCMutex>::getLock(uint64_t a1@<X0>, const PCHash128 *a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0uLL;
  PCMutex::lock(a1);
  v6 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 72, a2);
  v7 = v6;
  if (a1 + 80 == v6)
  {
LABEL_9:
    _ZNSt3__115allocate_sharedB8ne200100I7PCMutexNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  v8 = *(v6 + 56);
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0)
  {
    v10 = 0uLL;
    goto LABEL_8;
  }

  *&v10 = v7[6];
  *(&v10 + 1) = v9;
  if (!v10)
  {
LABEL_8:
    std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::erase((a1 + 72), v7);
    goto LABEL_9;
  }

  if (a1)
  {
    PCMutex::unlock(a1);
  }

  LiLockCache<PCHash128,PCMutex>::LockSentry::LockSentry(a3, &v10);
  if (*(&v10 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
  }
}

void sub_25FF4F424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(&a14);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t LiCreateBumpBitmapAsync@<X0>(uint64_t *a1@<X0>, atomic_ullong **a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v6 = *(a1 + 2);
  v5 = *(a1 + 3);
  v7 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    v10 = v6;
    v11 = v5;
    v12 = v7;
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  else
  {
    v10 = *(a1 + 2);
    v11 = v5;
    v12 = 0;
  }

  v9 = v4;
  v13 = *a3;
  std::async[abi:ne200100]<LiAsyncBumpBitmapCreator>(3, &v9, a4);
  result = v12;
  if (v12 && !atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  if (v7)
  {
    if (!atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      return (*(*v7 + 16))(v7);
    }
  }

  return result;
}

void sub_25FF4F55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    LiCreateBumpBitmapAsync(a12);
  }

  LiCreateBumpBitmapAsync(v12 == 0, v12);
  _Unwind_Resume(a1);
}

uint64_t BumpTextureImpl::BumpTextureImpl(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v10[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v10);
  PCHashWriteStream::writeValue(v10, @"bump");
  PCURL::getAsFileSystemString(v5, &v9);
  PCHashWriteStream::writeValue(v10, &v9);
  PCString::~PCString(&v9);
  PCHashWriteStream::writeValue(v10, *v3);
  PCHashWriteStream::writeValue(v10, *(v3 + 4));
  PCHashWriteStream::writeValue(v10, *(v3 + 5));
  PCHashWriteStream::writeValue(v10, *(v3 + 8));
  v8 = *PCHashWriteStream::getHash(v10)->i8;
  PCHashWriteStream::~PCHashWriteStream(v10);
  *(v6 + 8) = v8;
  *v6 = &unk_28725DA80;
  PCURL::PCURL((v6 + 24), v5);
  *(v6 + 32) = *v3;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  return v6;
}

void sub_25FF4F6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, char a12)
{
  PCString::~PCString(&a11);
  PCHashWriteStream::~PCHashWriteStream(&a12);
  _Unwind_Resume(a1);
}

void BumpTextureImpl::~BumpTextureImpl(BumpTextureImpl *this)
{
  *this = &unk_28725DA80;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 6);
  if (v3 && !atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v3 + 16))(v3);
  }

  PCURL::~PCURL((this + 24));
}

{
  BumpTextureImpl::~BumpTextureImpl(this);

  JUMPOUT(0x2666E9F00);
}

atomic_ullong *BumpTextureImpl::start(BumpTextureImpl *this)
{
  if (*(this + 37) == 1)
  {
    PCColorSpaceCache::sRGB(&v11);
    PCColorSpaceHandle::getCGColorSpace(&v11);
    getSimpleTextureHash(this + 24);
    LiLoadBitmapAsync((this + 24), &v10, 11, &v11, 1, &v9);
  }

  else
  {
    v11 = 0;
    PCColorSpaceHandle::getCGColorSpace(&v11);
    getSimpleTextureHash(this + 24);
    LiLoadBitmapAsync((this + 24), &v10, 13, &v11, 1, &v9);
  }

  v2 = v9;
  v9 = 0;
  v3 = *(this + 6);
  *(this + 6) = v2;
  if (v3)
  {
    if (!atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v3 + 16))(v3);
    }

    v4 = v9;
    if (v9 && !atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v4 + 16))(v4);
    }
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  v10 = *(this + 8);
  v5 = *(this + 6);
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  LiCreateBumpBitmapAsync(&v10, &v8, this + 2, &v11);
  if (v5 && !atomic_fetch_add(v5 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v5 + 16))(v5);
  }

  v6 = v11;
  v11 = 0;
  result = *(this + 7);
  *(this + 7) = v6;
  if (result)
  {
    if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*result + 16))(result);
    }

    result = v11;
    if (v11)
    {
      if (!atomic_fetch_add(v11 + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        return (*(*result + 16))(result);
      }
    }
  }

  return result;
}

void LiTextureStoreImpl::~LiTextureStoreImpl(LiTextureStoreImpl *this)
{
  *this = &unk_28725DAD8;
  std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(this + 16, *(this + 3));
  PCSpinLock::~PCSpinLock(this + 2);

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_28725DAD8;
  std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(this + 16, *(this + 3));
  PCSpinLock::~PCSpinLock(this + 2);
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a2);
  }
}

uint64_t LiLockCache<PCHash128,PCMutex>::LockSentry::~LockSentry(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 && *(a1 + 24) == 1)
  {
    PCMutex::unlock(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<int,ProGL::TextureHandle>,std::__map_value_compare<int,std::__value_type<int,ProGL::TextureHandle>,std::less<int>,true>,std::allocator<std::__value_type<int,ProGL::TextureHandle>>>::__emplace_unique_key_args<int,std::pair<int const,ProGL::TextureHandle>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::__emplace_unique_key_args<PCHash128,std::pair<PCHash128 const,std::weak_ptr<LiTextureStoreTokenImpl>>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__shared_ptr_emplace<LiTextureStoreTokenImpl>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<LiTextureFactoryImpl>,std::allocator<LiTextureStoreTokenImpl>,0>(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28725DB10;
  LiTextureStoreTokenImpl::LiTextureStoreTokenImpl((a1 + 3), a2);
  return a1;
}

void std::__shared_ptr_emplace<LiTextureStoreTokenImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28725DB10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void LiTextureStoreTokenImpl::~LiTextureStoreTokenImpl(LiTextureStoreTokenImpl *this)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 24, *(this + 4));
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PCSpinLock::~PCSpinLock(this);
}

uint64_t _ZNSt3__120__shared_ptr_emplaceI7PCMutexNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_28725DB60;
  PCMutex::PCMutex((a1 + 24));
  return a1;
}

void std::__shared_ptr_emplace<PCMutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28725DB60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t LiLockCache<PCHash128,PCMutex>::LockSentry::LockSentry(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a2;
  }

  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  PCMutex::lock(v3);
  *(a1 + 24) = 1;
  return a1;
}

void sub_25FF5015C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::async[abi:ne200100]<LiAsyncBumpBitmapCreator>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (result)
  {
    *(a2 + 16) = 0;
    std::__make_async_assoc_state[abi:ne200100]<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>();
  }

  if ((result & 2) != 0)
  {
    *(a2 + 16) = 0;
    std::__make_deferred_assoc_state[abi:ne200100]<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>();
  }

  *a3 = 0;
  return result;
}

void sub_25FF503DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF50544(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = &unk_28725DBB0;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_28725DBB0;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::shared_ptr<PCBitmap>>::__on_zero_shared(a1);
}

void std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::__execute(uint64_t a1)
{
  LiAsyncBumpBitmapCreator::operator()((a1 + 160), &v2);
  std::__assoc_state<std::shared_ptr<PCBitmap>>::set_value<std::shared_ptr<PCBitmap>>(a1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_25FF507CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x25FF507BCLL);
}

void sub_25FF50810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t std::__assoc_state<std::shared_ptr<PCBitmap>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 136))
  {
    v2 = *(a1 + 152);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(*a1 + 8);

  return v3(a1);
}

void std::__assoc_state<std::shared_ptr<PCBitmap>>::set_value<std::shared_ptr<PCBitmap>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 144) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x2666E9A50](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x277D82710], MEMORY[0x277D82648]);
}

void sub_25FF50A84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_25FF50B54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::*)(void),std::__async_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x2666E9F00](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x2666E9C00]();
    MEMORY[0x2666E9F00](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__deferred_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = &unk_28725DC10;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = &unk_28725DC10;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(v2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v2 + 16))(v2);
  }

  *a1 = MEMORY[0x277D82880] + 16;
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr((a1 + 16));
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__deferred_assoc_state<std::shared_ptr<PCBitmap>,std::__async_func<LiAsyncBumpBitmapCreator>>::__execute(uint64_t a1)
{
  LiAsyncBumpBitmapCreator::operator()((a1 + 160), &v2);
  std::__assoc_state<std::shared_ptr<PCBitmap>>::set_value<std::shared_ptr<PCBitmap>>(a1, &v2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_25FF50E58(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  __cxa_begin_catch(a1);
  std::current_exception();
  v14.__ptr_ = &a10;
  std::__assoc_sub_state::set_exception(v12, v14);
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  JUMPOUT(0x25FF50E48);
}

void sub_25FF50E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<BumpTextureImpl>::__shared_ptr_emplace[abi:ne200100]<PCURL const&,LiBumpTextureInfo const&,std::allocator<BumpTextureImpl>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28725DC58;
  BumpTextureImpl::BumpTextureImpl((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<BumpTextureImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28725DC58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t LiCreateBumpBitmapAsync(uint64_t result, atomic_ullong *a2)
{
  if ((result & 1) == 0 && !atomic_fetch_add(a2 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t LiCreateBumpBitmapAsync(uint64_t result)
{
  if (!atomic_fetch_add((result + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    OUTLINED_FUNCTION_0_0();
    return (*(v1 + 16))(v2, v3);
  }

  return result;
}

uint64_t LiEquirectProject::LiEquirectProject(uint64_t a1, const PCSharedCount *a2, int a3, int a4, _DWORD *a5, char a6, float a7)
{
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  LiImageFilter::LiImageFilter(a1, &off_28725DDB8);
  *a1 = &unk_28725DCB0;
  *(a1 + 88) = &unk_28725DD98;
  *(a1 + 36) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = a7;
  *(a1 + 48) = *a5;
  *(a1 + 52) = a5[1];
  *(a1 + 56) = a5[2];
  *(a1 + 60) = a5[3];
  *(a1 + 64) = a5[4];
  *(a1 + 68) = a5[5];
  *(a1 + 72) = a5[6];
  *(a1 + 76) = a5[7];
  *(a1 + 80) = a5[8];
  *(a1 + 84) = a6;
  *(a1 + 16) = a2->var0;
  PCSharedCount::PCSharedCount(&v15, a2 + 1);
  PCSharedCount::operator=((a1 + 24), &v15);
  PCSharedCount::~PCSharedCount(&v15);
  return a1;
}

void sub_25FF5124C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  LiImageFilter::~LiImageFilter(v10, &off_28725DDB8);
  *(v10 + 88) = v11;
  *(v10 + 104) = 0;
  PCWeakCount::~PCWeakCount(v12);
  _Unwind_Resume(a1);
}

void LiImageFilter::LiImageFilter(LiImageFilter *this, const LiImageFilter *a2, uint64_t a3)
{
  LiImageSource::LiImageSource(this, a2 + 1);
  v6 = *a2;
  *v7 = *a2;
  *(this + *(v6 - 24)) = *(a2 + 5);
  *(this + 2) = *(a3 + 16);
  PCSharedCount::PCSharedCount(this + 3, (a3 + 24));
  *(this + 8) = *(a3 + 32);
}

void LiEquirectProject::LiEquirectProject(LiEquirectProject *this, const LiEquirectProject *a2)
{
  *(this + 11) = &unk_2872DEA38;
  *(this + 12) = 0;
  *(this + 104) = 1;
  LiImageFilter::LiImageFilter(this, &off_28725DDB8, a2);
  *this = &unk_28725DCB0;
  *(this + 11) = &unk_28725DD98;
  *(this + 36) = *(a2 + 36);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = *(a2 + 15);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = *(a2 + 19);
  *(this + 20) = *(a2 + 20);
  *(this + 84) = *(a2 + 84);
}

void sub_25FF51498(_Unwind_Exception *a1)
{
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiEquirectProject::getHelium(LiImageSource **this, LiAgent *a2)
{
  v4 = *(a2 + 20);
  v5 = v4[3];
  v7 = *v4;
  v6 = v4[1];
  v32[2] = v4[2];
  v32[3] = v5;
  v32[0] = v7;
  v32[1] = v6;
  v8 = v4[7];
  v10 = v4[4];
  v9 = v4[5];
  v32[6] = v4[6];
  v32[7] = v8;
  v32[4] = v10;
  v32[5] = v9;
  v31 = 0x3FF0000000000000;
  v28 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v23 = 0u;
  v24 = 0u;
  v26 = 0u;
  v27 = 0u;
  v29 = 0u;
  v30 = 0u;
  if (PCMatrix44Tmpl<double>::determinant(v32) >= 0.000001)
  {
    PCMatrix44Tmpl<double>::invert(&v22, v32, 0.0);
  }

  else
  {
    PCMatrix44Tmpl<double>::planarInverseZ(&v22, v32, 0.0);
  }

  LiAgent::getHelium(a2, this[2], &v21);
  v11 = 0;
  v12 = (this + 6);
  for (i = &v15; ; i += 32)
  {
    for (j = 0; j != 3; ++j)
    {
      *&i[8 * j] = *&v12[4 * j];
    }

    ++v11;
    v12 += 12;
    if (v11 == 3)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0u;
      v19 = 0u;
      v20 = 0x3FF0000000000000;
      NewEquirectProjectNode();
    }
  }
}

void sub_25FF517A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a26)
  {
    (*(*a26 + 24))(a26);
  }

  _Unwind_Resume(exception_object);
}

void LiEquirectProject::~LiEquirectProject(PCSharedCount *this)
{
  this->var0 = off_28725DE08;
  this[11].var0 = off_28725DEF0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_28725DDC0);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);
}

{
  LiEquirectProject::~LiEquirectProject(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiEquirectProject::~LiEquirectProject(LiEquirectProject *this)
{
  LiEquirectProject::~LiEquirectProject((this + *(*this - 24)));
}

{
  LiEquirectProject::~LiEquirectProject((this + *(*this - 24)));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Output::Output(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = &unk_28725E328;
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 16) = *(a3 + 16);
  PCSharedCount::PCSharedCount((a1 + 24), (a3 + 24));
  *a1 = &unk_28725E088;
  v5 = *a2;
  *(a1 + 32) = *a2;
  if (v5)
  {
    atomic_fetch_add((v5 - 12), 1u);
  }

  return a1;
}

void ProShade::VertexProgram::VertexProgram(PCSharedCount *this)
{
  v28[4] = *MEMORY[0x277D85DE8];
  LiString::LiString(v28, "gl_Position");
  this->var0 = &unk_28725E328;
  this[2].var0 = 0;
  PCSharedCount::PCSharedCount(this + 3);
  this->var0 = &unk_28725E088;
  v2 = v28[0];
  this[4].var0 = v28[0];
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v3 = (v28[0] - 12);
        }

        else
        {
          v3 = 0;
        }

        free(v3);
      }
    }
  }

  LiString::LiString(v28, "gl_PointSize");
  this[5].var0 = &unk_28725E328;
  this[7].var0 = 0;
  PCSharedCount::PCSharedCount(this + 8);
  this[5].var0 = &unk_28725E088;
  v4 = v28[0];
  this[9].var0 = v28[0];
  if (v4)
  {
    atomic_fetch_add((v4 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v5 = (v28[0] - 12);
        }

        else
        {
          v5 = 0;
        }

        free(v5);
      }
    }
  }

  v27 = this + 5;
  LiString::LiString(v28, "gl_ClipVertex");
  this[10].var0 = &unk_28725E328;
  this[12].var0 = 0;
  PCSharedCount::PCSharedCount(this + 13);
  this[10].var0 = &unk_28725E088;
  v6 = v28[0];
  this[14].var0 = v28[0];
  if (v6)
  {
    atomic_fetch_add((v6 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v7 = (v28[0] - 12);
        }

        else
        {
          v7 = 0;
        }

        free(v7);
      }
    }
  }

  v26 = this + 10;
  LiString::LiString(v28, "gl_FrontColor");
  this[15].var0 = &unk_28725E328;
  this[17].var0 = 0;
  PCSharedCount::PCSharedCount(this + 18);
  this[15].var0 = &unk_28725E088;
  v8 = v28[0];
  this[19].var0 = v28[0];
  if (v8)
  {
    atomic_fetch_add((v8 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v9 = (v28[0] - 12);
        }

        else
        {
          v9 = 0;
        }

        free(v9);
      }
    }
  }

  v25 = this + 15;
  LiString::LiString(v28, "gl_BackColor");
  this[20].var0 = &unk_28725E328;
  this[22].var0 = 0;
  PCSharedCount::PCSharedCount(this + 23);
  this[20].var0 = &unk_28725E088;
  v10 = v28[0];
  this[24].var0 = v28[0];
  if (v10)
  {
    atomic_fetch_add((v10 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v11 = (v28[0] - 12);
        }

        else
        {
          v11 = 0;
        }

        free(v11);
      }
    }
  }

  v24 = this + 20;
  LiString::LiString(v28, "gl_FrontSecondaryColor");
  this[25].var0 = &unk_28725E328;
  this[27].var0 = 0;
  PCSharedCount::PCSharedCount(this + 28);
  this[25].var0 = &unk_28725E088;
  v12 = v28[0];
  this[29].var0 = v28[0];
  if (v12)
  {
    atomic_fetch_add((v12 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v13 = (v28[0] - 12);
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }
    }
  }

  LiString::LiString(v28, "gl_BackSecondaryColor");
  this[30].var0 = &unk_28725E328;
  this[32].var0 = 0;
  PCSharedCount::PCSharedCount(this + 33);
  this[30].var0 = &unk_28725E088;
  v14 = v28[0];
  this[34].var0 = v28[0];
  if (v14)
  {
    atomic_fetch_add((v14 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v15 = (v28[0] - 12);
        }

        else
        {
          v15 = 0;
        }

        free(v15);
      }
    }
  }

  for (i = 0; i != 40; i += 5)
  {
    v17 = &this[i];
    v17[35].var0 = &unk_28725E328;
    v17[37].var0 = 0;
    PCSharedCount::PCSharedCount(&this[i + 38]);
    this[i + 35].var0 = &unk_28725E088;
    v17[39].var0 = 0;
  }

  LiString::LiString(v28, "gl_FogFragCoord");
  this[75].var0 = &unk_28725E328;
  this[77].var0 = 0;
  PCSharedCount::PCSharedCount(this + 78);
  this[75].var0 = &unk_28725E088;
  v18 = v28[0];
  this[79].var0 = v28[0];
  if (v18)
  {
    atomic_fetch_add((v18 - 12), 1u);
    if (v28[0])
    {
      if (atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v28[0] = 0;
        if (v28[0])
        {
          v19 = (v28[0] - 12);
        }

        else
        {
          v19 = 0;
        }

        free(v19);
      }
    }
  }

  v20 = 0;
  for (j = &this[39]; ; j = (j + 40))
  {
    LiString::format("gl_TexCoord[%d]", v28, v20, v24, v25, v26, v27);
    if (j != v28)
    {
      LiString::dec(j);
      v22 = v28[0];
      *j = v28[0];
      if (!v22)
      {
        goto LABEL_69;
      }

      atomic_fetch_add((v22 - 12), 1u);
    }

    if (v28[0] && atomic_fetch_add((v28[0] - 12), 0xFFFFFFFF) == 1)
    {
      *v28[0] = 0;
      if (v28[0])
      {
        v23 = (v28[0] - 12);
      }

      else
      {
        v23 = 0;
      }

      free(v23);
    }

LABEL_69:
    if (++v20 == 8)
    {
      ProShade::Func<ProShade::Func_ftransform>::eval();
    }
  }
}

void sub_25FF520F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount *a10, PCSharedCount *a11, PCSharedCount *a12, PCSharedCount *a13, uint64_t a14)
{
  PCSharedCount::~PCSharedCount(v15 + 3);
  ProShade::Output::~Output(v18);
  v20 = v14 + 70;
  v21 = -320;
  do
  {
    ProShade::Output::~Output(v20);
    v20 = (v22 - 40);
    v21 += 40;
  }

  while (v21);
  ProShade::Output::~Output(v17);
  ProShade::Output::~Output(v16);
  ProShade::Output::~Output(a10);
  ProShade::Output::~Output(a11);
  ProShade::Output::~Output(a12);
  ProShade::Output::~Output(a13);
  ProShade::Output::~Output(v14);
  _Unwind_Resume(a1);
}

void ProShade::Output::~Output(PCSharedCount *this)
{
  this->var0 = &unk_28725E088;
  LiString::dec(&this[4]);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

{
  this->var0 = &unk_28725E088;
  LiString::dec(&this[4]);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);

  JUMPOUT(0x2666E9F00);
}

PCSharedCount *ProShade::VarT<ProShade::Node>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(a1 + 3);
  return a1;
}

void ProShade::VertexProgram::addOutputs(const PCSharedCount *a1, uint64_t a2)
{
  if (a1[2].var0)
  {
    v4 = *(a2 + 12);
    v5 = *(a2 + 8) <= v4 ? 2 * (v4 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v4 + 1, v5);
    v6 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v6 - 40, a1);
    if ((v6 - 40) != a1)
    {
      LiString::dec((v6 - 8));
      var0 = a1[4].var0;
      *(v6 - 8) = var0;
      if (var0)
      {
        atomic_fetch_add(var0 - 3, 1u);
      }
    }
  }

  if (a1[7].var0)
  {
    v8 = *(a2 + 12);
    v9 = *(a2 + 8) <= v8 ? 2 * (v8 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v8 + 1, v9);
    v10 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v10 - 40, a1 + 5);
    if ((v10 - 40) != &a1[5])
    {
      LiString::dec((v10 - 8));
      v11 = a1[9].var0;
      *(v10 - 8) = v11;
      if (v11)
      {
        atomic_fetch_add(v11 - 3, 1u);
      }
    }
  }

  if (a1[12].var0)
  {
    v12 = *(a2 + 12);
    v13 = *(a2 + 8) <= v12 ? 2 * (v12 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v12 + 1, v13);
    v14 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v14 - 40, a1 + 10);
    if ((v14 - 40) != &a1[10])
    {
      LiString::dec((v14 - 8));
      v15 = a1[14].var0;
      *(v14 - 8) = v15;
      if (v15)
      {
        atomic_fetch_add(v15 - 3, 1u);
      }
    }
  }

  if (a1[17].var0)
  {
    v16 = *(a2 + 12);
    v17 = *(a2 + 8) <= v16 ? 2 * (v16 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v16 + 1, v17);
    v18 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v18 - 40, a1 + 15);
    if ((v18 - 40) != &a1[15])
    {
      LiString::dec((v18 - 8));
      v19 = a1[19].var0;
      *(v18 - 8) = v19;
      if (v19)
      {
        atomic_fetch_add(v19 - 3, 1u);
      }
    }
  }

  if (a1[22].var0)
  {
    v20 = *(a2 + 12);
    v21 = *(a2 + 8) <= v20 ? 2 * (v20 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v20 + 1, v21);
    v22 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v22 - 40, a1 + 20);
    if ((v22 - 40) != &a1[20])
    {
      LiString::dec((v22 - 8));
      v23 = a1[24].var0;
      *(v22 - 8) = v23;
      if (v23)
      {
        atomic_fetch_add(v23 - 3, 1u);
      }
    }
  }

  if (a1[27].var0)
  {
    v24 = *(a2 + 12);
    v25 = *(a2 + 8) <= v24 ? 2 * (v24 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v24 + 1, v25);
    v26 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v26 - 40, a1 + 25);
    if ((v26 - 40) != &a1[25])
    {
      LiString::dec((v26 - 8));
      v27 = a1[29].var0;
      *(v26 - 8) = v27;
      if (v27)
      {
        atomic_fetch_add(v27 - 3, 1u);
      }
    }
  }

  if (a1[32].var0)
  {
    v28 = *(a2 + 12);
    v29 = *(a2 + 8) <= v28 ? 2 * (v28 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v28 + 1, v29);
    v30 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v30 - 40, a1 + 30);
    if ((v30 - 40) != &a1[30])
    {
      LiString::dec((v30 - 8));
      v31 = a1[34].var0;
      *(v30 - 8) = v31;
      if (v31)
      {
        atomic_fetch_add(v31 - 3, 1u);
      }
    }
  }

  v32 = a1 + 35;
  v33 = 8;
  do
  {
    if (v32[2].var0)
    {
      v34 = *(a2 + 12);
      v35 = *(a2 + 8) <= v34 ? 2 * (v34 + 1) + 1 : *(a2 + 8);
      PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v34 + 1, v35);
      v36 = *(a2 + 16) + 40 * *(a2 + 12);
      ProShade::VarT<ProShade::Node>::operator=(v36 - 40, v32);
      if (v32 != (v36 - 40))
      {
        LiString::dec((v36 - 8));
        v37 = v32[4].var0;
        *(v36 - 8) = v37;
        if (v37)
        {
          atomic_fetch_add(v37 - 3, 1u);
        }
      }
    }

    v32 += 5;
    --v33;
  }

  while (v33);
  if (a1[77].var0)
  {
    v38 = *(a2 + 12);
    if (*(a2 + 8) <= v38)
    {
      v39 = 2 * (v38 + 1) + 1;
    }

    else
    {
      v39 = *(a2 + 8);
    }

    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v38 + 1, v39);
    v40 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v40 - 40, a1 + 75);
    if ((v40 - 40) != &a1[75])
    {
      LiString::dec((v40 - 8));
      v41 = a1[79].var0;
      *(v40 - 8) = v41;
      if (v41)
      {
        atomic_fetch_add(v41 - 3, 1u);
      }
    }
  }
}

void ProShade::FragmentProgram::FragmentProgram(PCSharedCount *this)
{
  v12[4] = *MEMORY[0x277D85DE8];
  LiString::LiString(v12, "gl_FragColor");
  this->var0 = &unk_28725E328;
  this[2].var0 = 0;
  PCSharedCount::PCSharedCount(this + 3);
  this->var0 = &unk_28725E088;
  v2 = v12[0];
  this[4].var0 = v12[0];
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
    if (v12[0])
    {
      if (atomic_fetch_add((v12[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v12[0] = 0;
        if (v12[0])
        {
          v3 = (v12[0] - 12);
        }

        else
        {
          v3 = 0;
        }

        free(v3);
      }
    }
  }

  LiString::LiString(v12, "gl_FragDepth");
  this[5].var0 = &unk_28725E328;
  this[7].var0 = 0;
  PCSharedCount::PCSharedCount(this + 8);
  this[5].var0 = &unk_28725E088;
  v4 = v12[0];
  this[9].var0 = v12[0];
  if (v4)
  {
    atomic_fetch_add((v4 - 12), 1u);
    if (v12[0])
    {
      if (atomic_fetch_add((v12[0] - 12), 0xFFFFFFFF) == 1)
      {
        *v12[0] = 0;
        if (v12[0])
        {
          v5 = (v12[0] - 12);
        }

        else
        {
          v5 = 0;
        }

        free(v5);
      }
    }
  }

  for (i = 0; i != 40; i += 5)
  {
    v7 = &this[i];
    v7[10].var0 = &unk_28725E328;
    v7[12].var0 = 0;
    PCSharedCount::PCSharedCount(&this[i + 13]);
    this[i + 10].var0 = &unk_28725E088;
    v7[14].var0 = 0;
  }

  v8 = 0;
  for (j = &this[14]; ; j = (j + 40))
  {
    LiString::format("gl_FragData[%d]", v12, v8);
    if (j != v12)
    {
      LiString::dec(j);
      v10 = v12[0];
      *j = v12[0];
      if (!v10)
      {
        goto LABEL_27;
      }

      atomic_fetch_add((v10 - 12), 1u);
    }

    if (v12[0] && atomic_fetch_add((v12[0] - 12), 0xFFFFFFFF) == 1)
    {
      *v12[0] = 0;
      if (v12[0])
      {
        v11 = (v12[0] - 12);
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

LABEL_27:
    if (++v8 == 8)
    {
      operator new();
    }
  }
}

void sub_25FF52DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, PCSharedCount *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v31 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v27 + 3);
  PCSharedCount::~PCSharedCount(v28 + 3);
  PCSharedCount::~PCSharedCount(v30 + 3);
  PCSharedCount::~PCSharedCount(v29 + 3);
  PCSharedCount::~PCSharedCount(v26 + 3);
  v32 = v25 + 45;
  v33 = -320;
  do
  {
    ProShade::Output::~Output(v32);
    v32 = (v34 - 40);
    v33 += 40;
  }

  while (v33);
  ProShade::Output::~Output(a12);
  ProShade::Output::~Output(v25);
  _Unwind_Resume(a1);
}

void sub_25FF52FE0()
{
  if (v0)
  {
    v2 = v1 + 5;
    v3 = -v0;
    do
    {
      ProShade::Output::~Output(v2);
      v2 = (v4 - 40);
      v3 += 40;
    }

    while (v3);
  }

  JUMPOUT(0x25FF52FC8);
}

void ProShade::FragmentProgram::addOutputs(const PCSharedCount *a1, uint64_t a2)
{
  if (a1[2].var0)
  {
    v4 = *(a2 + 12);
    v5 = *(a2 + 8) <= v4 ? 2 * (v4 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v4 + 1, v5);
    v6 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v6 - 40, a1);
    if ((v6 - 40) != a1)
    {
      LiString::dec((v6 - 8));
      var0 = a1[4].var0;
      *(v6 - 8) = var0;
      if (var0)
      {
        atomic_fetch_add(var0 - 3, 1u);
      }
    }
  }

  if (a1[7].var0)
  {
    v8 = *(a2 + 12);
    v9 = *(a2 + 8) <= v8 ? 2 * (v8 + 1) + 1 : *(a2 + 8);
    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v8 + 1, v9);
    v10 = *(a2 + 16) + 40 * *(a2 + 12);
    ProShade::VarT<ProShade::Node>::operator=(v10 - 40, a1 + 5);
    if ((v10 - 40) != &a1[5])
    {
      LiString::dec((v10 - 8));
      v11 = a1[9].var0;
      *(v10 - 8) = v11;
      if (v11)
      {
        atomic_fetch_add(v11 - 3, 1u);
      }
    }
  }

  v12 = a1 + 10;
  v13 = 8;
  do
  {
    if (v12[2].var0)
    {
      v14 = *(a2 + 12);
      if (*(a2 + 8) <= v14)
      {
        v15 = 2 * (v14 + 1) + 1;
      }

      else
      {
        v15 = *(a2 + 8);
      }

      PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a2, v14 + 1, v15);
      v16 = *(a2 + 16) + 40 * *(a2 + 12);
      ProShade::VarT<ProShade::Node>::operator=(v16 - 40, v12);
      if (v12 != (v16 - 40))
      {
        LiString::dec((v16 - 8));
        v17 = v12[4].var0;
        *(v16 - 8) = v17;
        if (v17)
        {
          atomic_fetch_add(v17 - 3, 1u);
        }
      }
    }

    v12 += 5;
    --v13;
  }

  while (v13);
}

void ProShade::InsertUniform::eval(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = ProShade::VarT<ProShade::Node>::frequency(a2);
  if (v6 >= 2)
  {

    ProShade::NodeOperator::apply(a2, a3);
    return;
  }

  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  {
    *a3 = &unk_28725E328;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 16) = v7;
LABEL_11:

    PCSharedCount::PCSharedCount((a3 + 24), (a2 + 24));
    return;
  }

  if (ProShade::VarT<ProShade::Node>::hasSource(a2))
  {
LABEL_10:
    *a3 = &unk_28725E328;
    *(a3 + 8) = *(a2 + 8);
    *(a3 + 16) = *(a2 + 16);
    goto LABEL_11;
  }

  v8 = ProShade::VarT<ProShade::Node>::hash(a2, &v30);
  LODWORD(v9) = *(a1 + 44);
  if (v9 < 1)
  {
LABEL_20:
    if (*(a1 + 40) <= v9)
    {
      v15 = 2 * (v9 + 1) + 1;
    }

    else
    {
      v15 = *(a1 + 40);
    }

    PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(a1 + 32, v9 + 1, v15);
    v16 = *(a1 + 48) + 72 * *(a1 + 44) - 72;
    ProShade::VarT<ProShade::Node>::operator=(v16, a2);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(a1 + 48);
      v13 = *(v12 + v10 + 16);
      if (!v13)
      {
        throw_PCNullPointerException(1);
      }

      v14 = (*(*v13 + 48))(v13, 0, v8);
      v8 = vmvnq_s8(vceqq_s32(*v14, v30));
      v8.n128_u64[0] = vmovn_s32(v8);
      v8.n128_u16[0] = vmaxv_u16(v8.n128_u64[0]);
      if ((v8.n128_u8[0] & 1) == 0)
      {
        break;
      }

      ++v11;
      v9 = *(a1 + 44);
      v10 += 72;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }
    }

    v16 = v12 + v10;
  }

  if (!*(v16 + 48))
  {
    v17 = *(a2 + 16);
    if (!v17)
    {
      throw_PCNullPointerException(1);
    }

    v18 = *(v17 + 32);
    if (v18)
    {
      atomic_fetch_add(v18 - 3, 1u);
      v30.i64[0] = v18;
      atomic_fetch_add(v18 - 3, 1u);
      if (v30.i64[0] && *(v30.i64[0] - 8))
      {
        v19 = 0;
        v27 = v18;
        while ((a1 + 64) != std::__tree<LiString>::find<LiString>(a1 + 56, &v30))
        {
          LiString::format("_%d", &v29, v19);
          v28 = v19;
          v20 = v29;
          if (v29)
          {
            v21 = *(v29 - 2);
          }

          else
          {
            v21 = 0;
          }

          v22 = *(v18 - 2);
          v23 = v22 + v21;
          v24 = malloc_type_malloc(v23 + 13, 0x10000403E1C8BA9uLL);
          v24[1] = v23;
          v24[2] = v23 + 1;
          atomic_store(1u, v24);
          atomic_store(0, v24);
          memcpy(v24 + 3, v18, v22);
          memcpy(v24 + v22 + 12, v20, v21);
          *(v24 + v23 + 12) = 0;
          atomic_fetch_add(v24, 1u);
          if (v30.i64[0] && atomic_fetch_add((v30.i64[0] - 12), 0xFFFFFFFF) == 1)
          {
            *v30.i64[0] = 0;
            if (v30.i64[0])
            {
              v25 = (v30.i64[0] - 12);
            }

            else
            {
              v25 = 0;
            }

            free(v25);
          }

          v30.i64[0] = (v24 + 3);
          atomic_fetch_add(v24, 1u);
          if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
          {
            free(v24);
          }

          v18 = v27;
          if (v29 && atomic_fetch_add(v29 - 3, 0xFFFFFFFF) == 1)
          {
            *v29 = 0;
            if (v29)
            {
              v26 = v29 - 12;
            }

            else
            {
              v26 = 0;
            }

            free(v26);
          }

          v19 = (v28 + 1);
        }

        std::__tree<LiString>::__emplace_unique_key_args<LiString,LiString const&>(a1 + 56, &v30);
      }
    }

    else
    {
      v30.i64[0] = 0;
    }

    operator new();
  }

  *a3 = &unk_28725E328;
  *(a3 + 8) = *(v16 + 40);
  *(a3 + 16) = *(v16 + 48);
  PCSharedCount::PCSharedCount((a3 + 24), (v16 + 56));
}

void sub_25FF53694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, atomic_uint *a17)
{
  MEMORY[0x2666E9F00](v17, 0x10B1C402CAA7C2BLL);
  if (a17 && atomic_fetch_add(a17 - 3, 0xFFFFFFFF) == 1)
  {
    *a17 = 0;
    free(a17 - 3);
  }

  if (v18)
  {
    if (atomic_fetch_add(v18 - 3, 0xFFFFFFFF) == 1)
    {
      *v18 = 0;
      free(v18 - 3);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::VarT<ProShade::Node>::repr(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 16);

  return v2();
}

uint64_t ProShade::VarT<ProShade::Node>::frequency(uint64_t a1)
{
  ProShade::VarT<ProShade::Node>::hash(a1, &v4);
  v2 = *(a1 + 16);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  return *(v2 + 40);
}

uint64_t ProShade::VarT<ProShade::Node>::hasSource(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 144);

  return v2();
}

uint64_t ProShade::Program::shader(uint64_t a1, uint64_t a2, LiString *a3, LiString *a4)
{
  v5 = a2;
  v182 = *MEMORY[0x277D85DE8];
  {
    if (liDebug("PSProgram::shader"))
    {
      v146 = 2;
    }

    else
    {
      v146 = 0;
    }

    ProShade::Program::shader(PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>> &,LiString &,LiString &)::dbg = v146;
    v5 = a2;
  }

  v147 = a3;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v167);
  v165 = 0;
  v166 = 0;
  v163 = 0;
  v164 = &unk_28725EA68;
  v161 = &unk_28725EA68;
  v162 = 0;
  v159 = 0;
  v160 = 0;
  v157[1] = 0;
  v158 = &unk_28725EA30;
  v156 = v157;
  v157[0] = 0;
  if (*(v5 + 12) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(v5 + 16);
      if (v165 <= SHIDWORD(v165))
      {
        v10 = 2 * (HIDWORD(v165) + 1) + 1;
      }

      else
      {
        v10 = v165;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v164, HIDWORD(v165) + 1, v10);
      v11 = ProShade::VarT<ProShade::Node>::operator=(v166 + 32 * SHIDWORD(v165) - 32, (v9 + v7));
      ++v8;
      v7 += 40;
    }

    while (v8 < *(v5 + 12));
    for (i = HIDWORD(v165); HIDWORD(v165); i = HIDWORD(v165))
    {
      if (i <= 0)
      {
        PCArray_base::badIndex(v11);
      }

      v176.__locale_ = &unk_28725E328;
      LOBYTE(v177) = *(v166 + 8);
      v178 = *(v166 + 16);
      PCSharedCount::PCSharedCount(&v179, (v166 + 24));
      if (SHIDWORD(v165) < 2)
      {
        LODWORD(v15) = HIDWORD(v165) - 1;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        do
        {
          ProShade::VarT<ProShade::Node>::operator=(v166 + v13, (v166 + v13 + 32));
          ++v14;
          v15 = SHIDWORD(v165) - 1;
          v13 += 32;
        }

        while (v14 < v15);
      }

      if (v165 < v15)
      {
        v16 = 2 * v15 + 1;
      }

      else
      {
        v16 = v165;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v164, v15, v16);
      Var = ProShade::findVar(&v158, &v176);
      v18 = Var;
      if ((*(Var + 56) & 1) == 0)
      {
        *(Var + 56) = 1;
        if (!v178)
        {
          throw_PCNullPointerException(1);
        }

        v19 = (*(v178->var0 + 9))(v178);
        v20 = v19;
        if (v19)
        {
          v173[0].__locale_ = OZChannelBase::getSerializer(v19);
          *(std::__tree<std::__value_type<PCHash128,ProShade::Snippet *>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,ProShade::Snippet *>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,ProShade::Snippet *>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(&v156, v173[0].__locale_) + 48) = v20;
        }

        ProShade::VarT<ProShade::Node>::inputs(v18);
        if (SHIDWORD(v162) >= 1)
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = v163;
            v24 = ProShade::findVar(&v158, v163 + v21);
            v25 = v24;
            v26 = *(v24 + 44);
            if (*(v24 + 40) <= v26)
            {
              v27 = 2 * (v26 + 1) + 1;
            }

            else
            {
              v27 = *(v24 + 40);
            }

            PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(v24 + 32, v26 + 1, v27);
            *(*(v25 + 48) + 8 * *(v25 + 44) - 8) = v18;
            if (v165 <= SHIDWORD(v165))
            {
              v28 = 2 * (HIDWORD(v165) + 1) + 1;
            }

            else
            {
              v28 = v165;
            }

            PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v164, HIDWORD(v165) + 1, v28);
            ProShade::VarT<ProShade::Node>::operator=(v166 + 32 * SHIDWORD(v165) - 32, (v23 + v21));
            ++v22;
            v21 += 32;
          }

          while (v22 < SHIDWORD(v162));
        }
      }

      v176.__locale_ = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v179);
    }
  }

  v155[0] = 0;
  v155[1] = 0;
  v153 = 0;
  v154 = v155;
  v151 = &unk_28725EA30;
  v152 = 0;
  if (SHIDWORD(v159) < 1)
  {
    v52 = 0;
  }

  else
  {
    v29 = 0;
    v30 = &sprintf_buf[1008];
    do
    {
      v31 = *(v160 + 8 * v29);
      if (*(v30 + 536) >= 1)
      {
        v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "depend ", 7);
        v33 = MEMORY[0x2666E9B50](v32, *(v31 + 44));
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " atomic ", 8);
        v35 = ProShade::VarT<ProShade::Node>::atomic(v31);
        v36 = v35 ? "true" : "false";
        v37 = v35 ? 4 : 5;
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ": ", 2);
        ProShade::VarT<ProShade::Node>::repr(v31);
        v40 = v173[0].__locale_ ? v173[0].__locale_ : "";
        v41 = strlen(v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v40, v41);
        std::ios_base::getloc((v39 + *(*v39 - 24)));
        v42 = std::locale::use_facet(&v176, MEMORY[0x277D82680]);
        (v42->__vftable[2].~facet_0)(v42, 10);
        std::locale::~locale(&v176);
        std::ostream::put();
        std::ostream::flush();
        if (v173[0].__locale_)
        {
          if (atomic_fetch_add(v173[0].__locale_ - 3, 0xFFFFFFFF) == 1)
          {
            *v173[0].__locale_ = 0;
            if (v173[0].__locale_)
            {
              v43 = v173[0].__locale_ - 12;
            }

            else
            {
              v43 = 0;
            }

            free(v43);
          }
        }
      }

      v44 = (*(v31 + 16) + 32);
      if ((*(v31 + 44) > 1 || *v44 && *(*v44 - 2)) && (ProShade::VarT<ProShade::Node>::atomic(v31) & 1) == 0)
      {
        v45 = std::__tree<LiString>::find<LiString>(&v154, v44);
        if (v155 == v45)
        {
          v46 = !*v44 || !*(*v44 - 2);
        }

        else
        {
          v46 = *(v45 + 10);
        }

        v47 = (v31 + 64);
        while (1)
        {
          if (v44 != v47)
          {
            LiString::dec((v31 + 64));
            v48 = *v44;
            *v47 = *v44;
            if (v48)
            {
              atomic_fetch_add(v48 - 3, 1u);
            }
          }

          if (v46 >= 1)
          {
            LiString::format("_%d", &v176, v46);
            v49 = v176.__locale_ ? *(v176.__locale_ - 2) : 0;
            LiString::append((v31 + 64), v176.__locale_, v49);
            if (v176.__locale_)
            {
              if (atomic_fetch_add(v176.__locale_ - 3, 0xFFFFFFFF) == 1)
              {
                *v176.__locale_ = 0;
                if (v176.__locale_)
                {
                  v50 = v176.__locale_ - 12;
                }

                else
                {
                  v50 = 0;
                }

                free(v50);
              }
            }
          }

          if ((a1 + 1384) == std::__tree<LiString>::find<LiString>(a1 + 1376, (v31 + 64)))
          {
            break;
          }

          v46 = (v46 + 1);
        }

        v176.__locale_ = v44;
        *(std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::__emplace_unique_key_args<LiString,std::piecewise_construct_t const&,std::tuple<LiString const&>,std::tuple<>>(&v154, v44) + 40) = v46 + 1;
        if (v152 <= SHIDWORD(v152))
        {
          v51 = 2 * (HIDWORD(v152) + 1) + 1;
        }

        else
        {
          v51 = v152;
        }

        PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&v151, HIDWORD(v152) + 1, v51);
        *(v153 + 8 * SHIDWORD(v152) - 8) = v31;
        v30 = sprintf_buf + 1008;
      }

      ++v29;
    }

    while (v29 < SHIDWORD(v159));
    v52 = SHIDWORD(v152) > 0;
  }

  v178 = 0;
  v179.var0 = 0;
  v176.__locale_ = &unk_28725E5C8;
  v177 = &v178;
  v180 = 0;
  v181 = &v151;
  if (v52)
  {
    v53 = 0;
    do
    {
      v54 = *(v153 + 8 * v53);
      ProShade::VarT<ProShade::Node>::hash(v54, v173);
      *(v54 + 72) = *&v173[0].__locale_;
      v57 = *(v54 + 16);
      v56 = (v54 + 16);
      v55 = v57;
      if (!v57)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v55 + 80))(v173);
      PCPtr<ProShade::Node>::reset<ProShade::Node>(v56, v174);
      v173[0].__locale_ = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v175);
      ++v53;
      v59 = HIDWORD(v152);
    }

    while (v53 < SHIDWORD(v152));
    if (SHIDWORD(v152) >= 1)
    {
      v60 = 0;
      v61 = &sprintf_buf[1008];
      v62 = MEMORY[0x277D82670];
      do
      {
        v63 = (v60 + 1);
        if (v63 < v59)
        {
          v64 = 0;
          v65 = v60 + 1;
          do
          {
            if ((v60 & 0x80000000) != 0 || v59 <= v60)
            {
              PCArray_base::badIndex(v58);
            }

            if (v65 < 0 || v65 >= v59)
            {
              PCArray_base::badIndex(v58);
            }

            v58 = ProShade::dependsOn(*(v153 + 8 * v60), *(v153 + 8 * v65));
            v59 = HIDWORD(v152);
            if (v58)
            {
              if ((v60 & 0x80000000) != 0 || SHIDWORD(v152) <= v60)
              {
                PCArray_base::badIndex(v58);
              }

              v66 = v153;
              if (v65 < 0 || v65 >= SHIDWORD(v152))
              {
                PCArray_base::badIndex(v58);
              }

              v67 = *(v153 + 8 * v60);
              *(v153 + 8 * v60) = *(v153 + 8 * v65);
              *(v66 + 8 * v65) = v67;
              if (*(v61 + 536) <= 1)
              {
                v64 = 1;
                v59 = HIDWORD(v152);
              }

              else
              {
                v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "swap #", 6);
                v69 = MEMORY[0x2666E9B50](v68, v60);
                v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " ", 1);
                v71 = v70;
                if ((v60 & 0x80000000) != 0 || SHIDWORD(v152) <= v60)
                {
                  PCArray_base::badIndex(v70);
                }

                if (*(*(v153 + 8 * v60) + 64))
                {
                  v72 = *(*(v153 + 8 * v60) + 64);
                }

                else
                {
                  v72 = "";
                }

                v73 = strlen(v72);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v72, v73);
                v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, " and #", 6);
                v75 = MEMORY[0x2666E9B50](v74, v65);
                v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, " ", 1);
                v77 = v76;
                if (v65 < 0 || v65 >= SHIDWORD(v152))
                {
                  PCArray_base::badIndex(v76);
                }

                if (*(*(v153 + 8 * v65) + 64))
                {
                  v78 = *(*(v153 + 8 * v65) + 64);
                }

                else
                {
                  v78 = "";
                }

                v79 = strlen(v78);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
                v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, ":\n", 2);
                v59 = HIDWORD(v152);
                if (SHIDWORD(v152) < 1)
                {
                  v64 = 1;
                }

                else
                {
                  v80 = 0;
                  do
                  {
                    v81 = *(v153 + 8 * v80);
                    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "    ", 4);
                    v83 = *(v81 + 16);
                    if (!v83)
                    {
                      throw_PCNullPointerException(1);
                    }

                    (*(*v83 + 120))(&v172);
                    if (v172.__locale_)
                    {
                      locale = v172.__locale_;
                    }

                    else
                    {
                      locale = "";
                    }

                    v85 = strlen(locale);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, locale, v85);
                    v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, " ", 1);
                    if (*(v81 + 64))
                    {
                      v87 = *(v81 + 64);
                    }

                    else
                    {
                      v87 = "";
                    }

                    v88 = strlen(v87);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v87, v88);
                    v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, " = ", 3);
                    ProShade::VarT<ProShade::Node>::repr(v81);
                    if (v150)
                    {
                      v90 = v150;
                    }

                    else
                    {
                      v90 = "";
                    }

                    v91 = strlen(v90);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v90, v91);
                    v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, ";", 1);
                    std::ios_base::getloc((v92 + *(*v92 - 24)));
                    v93 = std::locale::use_facet(v173, MEMORY[0x277D82680]);
                    (v93->__vftable[2].~facet_0)(v93, 10);
                    std::locale::~locale(v173);
                    std::ostream::put();
                    v58 = std::ostream::flush();
                    if (v150 && atomic_fetch_add(v150 - 3, 0xFFFFFFFF) == 1)
                    {
                      *v150 = 0;
                      if (v150)
                      {
                        v94 = (v150 - 12);
                      }

                      else
                      {
                        v94 = 0;
                      }

                      free(v94);
                    }

                    if (v172.__locale_ && atomic_fetch_add(v172.__locale_ - 3, 0xFFFFFFFF) == 1)
                    {
                      *v172.__locale_ = 0;
                      if (v172.__locale_)
                      {
                        v95 = v172.__locale_ - 12;
                      }

                      else
                      {
                        v95 = 0;
                      }

                      free(v95);
                    }

                    ++v80;
                    v59 = HIDWORD(v152);
                  }

                  while (v80 < SHIDWORD(v152));
                  v64 = 1;
                  v61 = sprintf_buf + 1008;
                }
              }
            }

            ++v65;
          }

          while (v65 < v59);
          if (v64)
          {
            v63 = v60;
          }

          else
          {
            v63 = (v60 + 1);
          }
        }

        v60 = v63;
      }

      while (v63 < v59);
      if (v59 >= 1)
      {
        v96 = 0;
        v97 = MEMORY[0x277D82680];
        do
        {
          v98 = *(v153 + 8 * v96);
          v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v167, "    ", 4);
          v100 = *(v98 + 16);
          if (!v100)
          {
            throw_PCNullPointerException(1);
          }

          (*(*v100 + 120))(&v172);
          if (v172.__locale_)
          {
            v101 = v172.__locale_;
          }

          else
          {
            v101 = "";
          }

          v102 = strlen(v101);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, v101, v102);
          v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, " ", 1);
          if (*(v98 + 64))
          {
            v104 = *(v98 + 64);
          }

          else
          {
            v104 = "";
          }

          v105 = strlen(v104);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, v104, v105);
          v106 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, " = ", 3);
          ProShade::VarT<ProShade::Node>::repr(v98);
          if (v150)
          {
            v107 = v150;
          }

          else
          {
            v107 = "";
          }

          v108 = strlen(v107);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, v107, v108);
          v109 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v106, ";", 1);
          std::ios_base::getloc((v109 + *(*v109 - 24)));
          v110 = std::locale::use_facet(v173, v97);
          (v110->__vftable[2].~facet_0)(v110, 10);
          std::locale::~locale(v173);
          std::ostream::put();
          std::ostream::flush();
          if (v150 && atomic_fetch_add(v150 - 3, 0xFFFFFFFF) == 1)
          {
            *v150 = 0;
            if (v150)
            {
              v111 = (v150 - 12);
            }

            else
            {
              v111 = 0;
            }

            free(v111);
          }

          if (v172.__locale_ && atomic_fetch_add(v172.__locale_ - 3, 0xFFFFFFFF) == 1)
          {
            *v172.__locale_ = 0;
            if (v172.__locale_)
            {
              v112 = v172.__locale_ - 12;
            }

            else
            {
              v112 = 0;
            }

            free(v112);
          }

          ++v96;
        }

        while (v96 < SHIDWORD(v152));
      }
    }
  }

  v113 = a2;
  if (*(a2 + 12) >= 1)
  {
    v114 = 0;
    v115 = 0;
    v116 = MEMORY[0x277D82680];
    do
    {
      v117 = *(v113 + 16);
      v118 = ProShade::findVar(&v158, v117 + v114);
      ProShade::NodeOperator::operator()(&v176, v118, v173);
      v119 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v167, "    ", 4);
      if (*(v117 + v114 + 32))
      {
        v120 = *(v117 + v114 + 32);
      }

      else
      {
        v120 = "";
      }

      v121 = strlen(v120);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, v120, v121);
      v122 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v119, " = ", 3);
      if (!v174)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v174 + 16))(&v150);
      if (v150)
      {
        v123 = v150;
      }

      else
      {
        v123 = "";
      }

      v124 = strlen(v123);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, v123, v124);
      v125 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v122, ";", 1);
      std::ios_base::getloc((v125 + *(*v125 - 24)));
      v126 = std::locale::use_facet(&v172, v116);
      (v126->__vftable[2].~facet_0)(v126, 10);
      std::locale::~locale(&v172);
      std::ostream::put();
      std::ostream::flush();
      if (v150 && atomic_fetch_add(v150 - 3, 0xFFFFFFFF) == 1)
      {
        *v150 = 0;
        if (v150)
        {
          v127 = (v150 - 12);
        }

        else
        {
          v127 = 0;
        }

        free(v127);
      }

      v173[0].__locale_ = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v175);
      ++v115;
      v113 = a2;
      v114 += 40;
    }

    while (v115 < *(a2 + 12));
  }

  ProShade::deleteVars(&v158);
  std::stringbuf::str();
  LiString::LiString(&v172, &v173[0].__locale_);
  if (&v172 != v147)
  {
    LiString::dec(v147);
    v128 = v172.__locale_;
    *v147 = v172;
    if (!v128)
    {
      goto LABEL_206;
    }

    atomic_fetch_add(v128 - 3, 1u);
  }

  if (v172.__locale_ && atomic_fetch_add(v172.__locale_ - 3, 0xFFFFFFFF) == 1)
  {
    *v172.__locale_ = 0;
    if (v172.__locale_)
    {
      v129 = v172.__locale_ - 12;
    }

    else
    {
      v129 = 0;
    }

    free(v129);
    v172.__locale_ = 0;
  }

LABEL_206:
  if (SHIBYTE(v174) < 0)
  {
    operator delete(v173[0].__locale_);
  }

  v130 = v156;
  if (v156 != v157)
  {
    do
    {
      v131 = ProShade::Snippet::code(v130[6]);
      PCString::PCString(&v172, v131);
      PCString::append(v132, "\n");
      LiString::LiString(v173, &v172);
      if (v173[0].__locale_)
      {
        v133 = *(v173[0].__locale_ - 2);
      }

      else
      {
        v133 = 0;
      }

      LiString::append(a4, v173[0].__locale_, v133);
      if (v173[0].__locale_ && atomic_fetch_add(v173[0].__locale_ - 3, 0xFFFFFFFF) == 1)
      {
        *v173[0].__locale_ = 0;
        if (v173[0].__locale_)
        {
          v134 = v173[0].__locale_ - 12;
        }

        else
        {
          v134 = 0;
        }

        free(v134);
        v173[0].__locale_ = 0;
      }

      PCString::~PCString(&v172);
      v135 = v130[1];
      if (v135)
      {
        do
        {
          v136 = v135;
          v135 = *v135;
        }

        while (v135);
      }

      else
      {
        do
        {
          v136 = v130[2];
          v137 = *v136 == v130;
          v130 = v136;
        }

        while (!v137);
      }

      v130 = v136;
    }

    while (v136 != v157);
  }

  v176.__locale_ = &unk_287272E98;
  std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(&v177, v178);
  v151 = &unk_28725EA30;
  if (v152 < 0)
  {
    v138 = 1;
  }

  else
  {
    v138 = v152 & ~(v152 >> 31);
  }

  if (v138 == v152)
  {
    v139 = SHIDWORD(v152);
    if (v152 < 0)
    {
      do
      {
        *(v153 + 8 * v139) = 0;
        v140 = __CFADD__(v139++, 1);
      }

      while (!v140);
    }
  }

  else
  {
    if (v138)
    {
      operator new[]();
    }

    if (v153)
    {
      MEMORY[0x2666E9ED0](v153, 0x1000C8077774924);
    }

    v153 = 0;
  }

  v152 = v138;
  if (v153)
  {
    MEMORY[0x2666E9ED0](v153, 0x1000C8077774924);
  }

  std::__tree<std::__value_type<LiString,int>,std::__map_value_compare<LiString,std::__value_type<LiString,int>,std::less<LiString>,true>,std::allocator<std::__value_type<LiString,int>>>::destroy(&v154, v155[0]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v156, v157[0]);
  v158 = &unk_28725EA30;
  if (v159 < 0)
  {
    v141 = 1;
  }

  else
  {
    v141 = v159 & ~(v159 >> 31);
  }

  if (v141 == v159)
  {
    v142 = SHIDWORD(v159);
    if (v159 < 0)
    {
      do
      {
        *(v160 + 8 * v142) = 0;
        v140 = __CFADD__(v142++, 1);
      }

      while (!v140);
    }
  }

  else
  {
    if (v141)
    {
      operator new[]();
    }

    if (v160)
    {
      MEMORY[0x2666E9ED0](v160, 0x1000C8077774924);
    }

    v160 = 0;
  }

  v159 = v141;
  if (v160)
  {
    MEMORY[0x2666E9ED0](v160, 0x1000C8077774924);
  }

  v161 = &unk_28725EA68;
  if (v162 < 0)
  {
    v143 = 1;
  }

  else
  {
    v143 = v162;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v161, 0, v143);
  if (v163)
  {
    MEMORY[0x2666E9ED0](v163, 0x1000C8077774924);
  }

  v164 = &unk_28725EA68;
  if (v165 < 0)
  {
    v144 = 1;
  }

  else
  {
    v144 = v165;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v164, 0, v144);
  if (v166)
  {
    MEMORY[0x2666E9ED0](v166, 0x1000C8077774924);
  }

  v167 = *MEMORY[0x277D82828];
  *(&v167 + *(v167 - 24)) = *(MEMORY[0x277D82828] + 24);
  v168 = MEMORY[0x277D82878] + 16;
  if (v170 < 0)
  {
    operator delete(v169[7].__locale_);
  }

  v168 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v169);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v171);
}

uint64_t ProShade::findVar(uint64_t a1, uint64_t a2)
{
  ProShade::VarT<ProShade::Node>::hash(a2, &v7);
  if (*(a1 + 12) < 1)
  {
LABEL_5:
    operator new();
  }

  v3 = 0;
  while (1)
  {
    v4 = *(*(a1 + 16) + 8 * v3);
    ProShade::VarT<ProShade::Node>::hash(v4, &v6);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v6, v7)))) & 1) == 0)
    {
      return v4;
    }

    if (++v3 >= *(a1 + 12))
    {
      goto LABEL_5;
    }
  }
}

uint64_t ProShade::VarT<ProShade::Node>::inputs(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 64);

  return v2();
}

uint64_t ProShade::VarT<ProShade::Node>::atomic(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 88);

  return v2();
}

__n128 ProShade::VarT<ProShade::Node>::hash@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    throw_PCNullPointerException(1);
  }

  v4 = (*(*v3 + 48))(v3, 0);
  result = *v4;
  *a2 = *v4;
  return result;
}

uint64_t ProShade::dependsOn(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  {
    v6 = 1;
  }

  else
  {
    v8[1] = 0;
    v9 = 0;
    ProShade::VarT<ProShade::Node>::inputs(a1);
    v6 = 0;
    v8[0] = &unk_28725EA68;
    PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(v8, 0, 0);
    if (v9)
    {
      MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
    }
  }

  return v6 & 1;
}

void sub_25FF5568C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::deleteVars(unsigned int *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[3])
      {
        PCArray_base::badIndex(a1);
      }

      a1 = *(*(v1 + 2) + 8 * i);
      if (a1)
      {
        a1 = (*(*a1 + 16))(a1);
      }
    }
  }

  v4 = v1[2];
  if (v4 < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 & ~(v4 >> 31);
  }

  if (v5 == v4)
  {
    v6 = v1[3];
    if ((v6 & 0x80000000) != 0)
    {
      do
      {
        *(*(v1 + 2) + 8 * v6) = 0;
      }

      while (!__CFADD__(v6++, 1));
    }
  }

  else
  {
    if (v5)
    {
      operator new[]();
    }

    v8 = *(v1 + 2);
    if (v8)
    {
      MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
    }

    *(v1 + 2) = 0;
  }

  v1[2] = v5;
  v1[3] = 0;
  result = *(v1 + 2);
  if (result)
  {
    result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
  }

  *(v1 + 2) = 0;
  v1[2] = 0;
  return result;
}

uint64_t PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EA30;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EA68;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void ProShade::Program::find_vars(PCArray_base *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 12);
  if (v8)
  {
    while (1)
    {
      if (v8 <= 0)
      {
        PCArray_base::badIndex(a1);
      }

      v12 = *(a2 + 16);
      v67 = &unk_28725E328;
      v68 = *(v12 + 8);
      v69 = *(v12 + 16);
      PCSharedCount::PCSharedCount(v70, (v12 + 24));
      v13 = *(a2 + 12);
      if (v13 < 2)
      {
        LODWORD(v16) = v13 - 1;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + v14, (*(a2 + 16) + v14 + 32));
          ++v15;
          v16 = *(a2 + 12) - 1;
          v14 += 32;
        }

        while (v15 < v16);
      }

      if (*(a2 + 8) < v16)
      {
        v17 = 2 * v16 + 1;
      }

      else
      {
        v17 = *(a2 + 8);
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v16, v17);
      Var = ProShade::findVar(a3, &v67);
      v19 = Var;
      if (*(Var + 56))
      {
        goto LABEL_77;
      }

      *(Var + 56) = 1;
      v20 = *(Var + 16);
      if (!a5)
      {
        if (v20)
        {
LABEL_42:
          if (v33)
          {
            v34 = v33;
            v35 = (*(*v33 + 136))(v33);
            if ((v35 & 1) == 0)
            {
              v37 = v34[10];
              if (v37 > 1)
              {
                if (v37 == 2)
                {
                  v44 = *(a8 + 12);
                  if (*(a8 + 8) <= v44)
                  {
                    v45 = 2 * (v44 + 1) + 1;
                  }

                  else
                  {
                    v45 = *(a8 + 8);
                  }

                  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a8, v44 + 1, v45);
                  *(*(a8 + 16) + 8 * *(a8 + 12) - 8) = v19;
                }

                else if (v37 == 3)
                {
LABEL_79:
                  ProShade::Error<PCIllegalArgumentException>::raise(v35, v36);
                }
              }

              else if (v37 == 1)
              {
                v38 = *(a6 + 12);
                if (*(a6 + 8) <= v38)
                {
                  v39 = 2 * (v38 + 1) + 1;
                }

                else
                {
                  v39 = *(a6 + 8);
                }

                PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a6, v38 + 1, v39);
                *(*(a6 + 16) + 8 * *(a6 + 12) - 8) = v19;
                ProShade::VarT<ProShade::Node>::VarT(&v63, v34);
                if (v40)
                {
                  (*(*v40 + 160))(&v56, v40);
                  ProShade::VarT<ProShade::Node>::operator=(&v63, &v56);
                  v56.var0 = &unk_28725E328;
                  PCSharedCount::~PCSharedCount(&v59);
                }

                if (lpsrc)
                {
                  if (v41)
                  {
                    ProShade::Sampler::Sampler(&v56, v41);
                    v42 = *(a7 + 12);
                    if (*(a7 + 8) <= v42)
                    {
                      v43 = 2 * (v42 + 1) + 1;
                    }

                    else
                    {
                      v43 = *(a7 + 8);
                    }

                    PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(a7, v42 + 1, v43);
                    ProShade::Sampler::operator=((*(a7 + 16) + 96 * *(a7 + 12) - 96), &v56);
                    v56.var0 = &unk_28725E878;
                    v61[1].var0 = &unk_28725E8E0;
                    PCSharedCount::~PCSharedCount(&v62);
                    v60 = &unk_28725E8E0;
                    PCSharedCount::~PCSharedCount(v61);
                    v56.var0 = &unk_28725E920;
                    PCSharedCount::~PCSharedCount(&v59);
                  }
                }

                v63.var0 = &unk_28725E328;
                PCSharedCount::~PCSharedCount(&v66);
              }

              else if (!v37)
              {
                goto LABEL_79;
              }
            }
          }
        }

LABEL_66:
        v56.var0 = &unk_28725EA68;
        v57 = 0;
        v58 = 0;
        ProShade::VarT<ProShade::Node>::inputs(v19);
        if (SHIDWORD(v57) >= 1)
        {
          v46 = 0;
          v47 = 0;
          do
          {
            v48 = v58;
            v49 = *(a2 + 12);
            if (*(a2 + 8) <= v49)
            {
              v50 = 2 * (v49 + 1) + 1;
            }

            else
            {
              v50 = *(a2 + 8);
            }

            PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v49 + 1, v50);
            ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, (v48 + v46));
            ++v47;
            v46 += 32;
          }

          while (v47 < SHIDWORD(v57));
        }

        v56.var0 = &unk_28725EA68;
        if (v57 < 0)
        {
          v51 = 1;
        }

        else
        {
          v51 = v57;
        }

        PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v56, 0, v51);
        if (v58)
        {
          MEMORY[0x2666E9ED0](v58, 0x1000C8077774924);
        }

        goto LABEL_77;
      }

      if (!v20)
      {
        goto LABEL_66;
      }

      if (!v21)
      {
        goto LABEL_42;
      }

      v22 = v21;
      LiString::format("_v%d", &v56, *(a5 + 12));
      v23 = &v19[8];
      if (&v56 == &v19[8])
      {
        goto LABEL_19;
      }

      LiString::dec(&v19[8]);
      var0 = v56.var0;
      *v23 = v56.var0;
      if (var0)
      {
        break;
      }

LABEL_25:
      v26 = *(a5 + 12);
      if (*(a5 + 8) <= v26)
      {
        v27 = 2 * (v26 + 1) + 1;
      }

      else
      {
        v27 = *(a5 + 8);
      }

      PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a5, v26 + 1, v27);
      *(*(a5 + 16) + 8 * *(a5 + 12) - 8) = v19;
      v63.var0 = &unk_28725E328;
      v64 = *(v22 + 56);
      lpsrc = *(v22 + 8);
      PCSharedCount::PCSharedCount(&v66, v22 + 9);
      ProShade::Output::Output(&v56, v23, &v63);
      v28 = *(a4 + 12);
      if (*(a4 + 8) <= v28)
      {
        v29 = 2 * (v28 + 1) + 1;
      }

      else
      {
        v29 = *(a4 + 8);
      }

      PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a4, v28 + 1, v29);
      v30 = *(a4 + 16) + 40 * *(a4 + 12);
      ProShade::VarT<ProShade::Node>::operator=(v30 - 40, &v56);
      if ((v30 - 40) != &v56)
      {
        LiString::dec((v30 - 8));
        v31 = v60;
        *(v30 - 8) = v60;
        if (v31)
        {
          atomic_fetch_add(v31 - 3, 1u);
        }
      }

      v56.var0 = &unk_28725E088;
      if (v60 && atomic_fetch_add(v60 - 3, 0xFFFFFFFF) == 1)
      {
        *v60 = 0;
        if (v60)
        {
          v32 = v60 - 3;
        }

        else
        {
          v32 = 0;
        }

        free(v32);
        v60 = 0;
      }

      v56.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v59);
      v63.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v66);
LABEL_77:
      v67 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v70);
      v8 = *(a2 + 12);
      if (!v8)
      {
        return;
      }
    }

    atomic_fetch_add(var0 - 3, 1u);
LABEL_19:
    if (v56.var0 && atomic_fetch_add(v56.var0 - 3, 0xFFFFFFFF) == 1)
    {
      *v56.var0 = 0;
      if (v56.var0)
      {
        v25 = v56.var0 - 12;
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    goto LABEL_25;
  }
}

void sub_25FF560F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, PCSharedCount a32)
{
  PCSharedCount::~PCSharedCount(&a32);
  *(v34 - 128) = v32;
  PCSharedCount::~PCSharedCount(v33 + 3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::VarT<ProShade::Node>::operator=(uint64_t a1, const PCSharedCount *a2)
{
  *(a1 + 16) = a2[2];
  PCSharedCount::PCSharedCount(&v4, a2 + 3);
  PCSharedCount::operator=((a1 + 24), &v4);
  PCSharedCount::~PCSharedCount(&v4);
  return a1;
}

void ProShade::Error<PCIllegalArgumentException>::raise(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  PCIllegalArgumentException::PCIllegalArgumentException(exception);
}

uint64_t ProShade::Program::varying_code@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  LiString::LiString(&v12, "varying");
  v13 = &unk_28725E948;
  v14 = 0;
  v15 = 0;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add(v12 - 3, 1u);
    if (v12)
    {
      if (atomic_fetch_add(v12 - 3, 0xFFFFFFFF) == 1)
      {
        *v12 = 0;
        if (v12)
        {
          v4 = v12 - 3;
        }

        else
        {
          v4 = 0;
        }

        free(v4);
      }
    }
  }

  if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(a1 + 16) + 8 * v5);
      v7 = *(v6 + 16);
      if (v7)
      {
      }

      (*(*v7 + 120))(&v12);
      ProShade::VariableList::add(&v13, &v12, (v6 + 64));
      if (v12 && atomic_fetch_add(v12 - 3, 0xFFFFFFFF) == 1)
      {
        *v12 = 0;
        if (v12)
        {
          v8 = v12 - 3;
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }

      ++v5;
    }

    while (v5 < *(a1 + 12));
  }

  ProShade::VariableList::str(&v13, a2);
  if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
  {
    *v16 = 0;
    if (v16)
    {
      v9 = v16 - 3;
    }

    else
    {
      v9 = 0;
    }

    free(v9);
    v16 = 0;
  }

  v13 = &unk_28725E948;
  if (v14 < 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14;
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(&v13, 0, v10);
  result = v15;
  if (v15)
  {
    return MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF56520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProShade::VariableList::~VariableList(va);
  _Unwind_Resume(a1);
}

void ProShade::VariableList::add(ProShade::VariableList *this, const LiString *a2, const LiString *a3)
{
  v6 = *(this + 3);
  if (*(this + 2) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(this, v6 + 1, v7);
  v8 = *(this + 2) + 16 * *(this + 3);
  if ((v8 - 16) != a2)
  {
    LiString::dec((v8 - 16));
    v9 = *a2;
    *(v8 - 16) = *a2;
    if (v9)
    {
      atomic_fetch_add((v9 - 12), 1u);
    }
  }

  if ((v8 - 8) != a3)
  {
    LiString::dec((v8 - 8));
    v10 = *a3;
    *(v8 - 8) = *a3;
    if (v10)
    {
      atomic_fetch_add((v10 - 12), 1u);
    }
  }
}

uint64_t ProShade::VariableList::str@<X0>(void **this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 3);
  if (v3)
  {
    qsort(this[2], v3, 0x10uLL, ProShade::VariableList::by_type);
  }

  v4 = std::ostringstream::basic_ostringstream[abi:ne200100](&v52);
  v5 = *(this + 3);
  if (v5 > 1)
  {
    v6 = 0;
    do
    {
      if ((v6 & 0x80000000) != 0)
      {
        PCArray_base::badIndex(v4);
      }

      v7 = this[2];
      v8 = &v7[2 * v6];
      v9 = v6 + 1;
      if (v5 <= v9)
      {
        PCArray_base::badIndex(v4);
      }

      v10 = &v7[2 * v9];
      v4 = LiString::operator==(&v7[2 * v6], v10);
      if (v4)
      {
        v13 = v8[1];
        v11 = (v8 + 1);
        v12 = v13;
        v47 = v6;
        if (v13)
        {
          v14 = *(v12 - 2);
        }

        else
        {
          v14 = 0;
        }

        v49 = v11;
        v15 = v14;
        v16 = malloc_type_malloc(v14 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v16);
        v17 = v16 + 3;
        atomic_store(0, v16);
        v16[1] = v15 + 2;
        v16[2] = v15 + 3;
        memcpy(v16 + 3, v12, v15);
        *&v17[v15] = 8236;
        v17[v15 + 2] = 0;
        atomic_fetch_add(v16, 1u);
        v18 = v10[1];
        v48 = v6 + 1;
        if (v18)
        {
          v19 = *(v18 - 2);
        }

        else
        {
          v19 = 0;
        }

        v20 = v16[1];
        v21 = v20 + v19;
        v22 = malloc_type_malloc(v21 + 13, 0x10000403E1C8BA9uLL);
        v22[1] = v21;
        v22[2] = v21 + 1;
        atomic_store(1u, v22);
        atomic_store(0, v22);
        memcpy(v22 + 3, v17, v20);
        memcpy(v22 + v20 + 12, v18, v19);
        *(v22 + v21 + 12) = 0;
        atomic_fetch_add(v22, 1u);
        LiString::dec(v49);
        *v49 = v22 + 3;
        atomic_fetch_add(v22, 1u);
        if (atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
        {
          free(v22);
        }

        if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
        {
          free(v16);
        }

        LODWORD(v23) = *(this + 3) - 1;
        if (v23 > v48)
        {
          v24 = v48;
          v25 = 16 * v48;
          do
          {
            v26 = this[2];
            LiString::dec(&v26[v25]);
            v27 = *&v26[v25 + 16];
            *&v26[v25] = v27;
            if (v27)
            {
              atomic_fetch_add((v27 - 12), 1u);
            }

            v28 = &v26[v25];
            LiString::dec((v28 + 8));
            v29 = *(v28 + 3);
            *(v28 + 1) = v29;
            if (v29)
            {
              atomic_fetch_add((v29 - 12), 1u);
            }

            ++v24;
            v23 = *(this + 3) - 1;
            v25 += 16;
          }

          while (v24 < v23);
        }

        if (*(this + 2) < v23)
        {
          v30 = 2 * v23 + 1;
        }

        else
        {
          v30 = *(this + 2);
        }

        PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(this, v23, v30);
        v6 = v47;
      }

      else
      {
        ++v6;
      }

      v5 = *(this + 3);
    }

    while (v6 < v5 - 1);
  }

  if (v5 >= 1)
  {
    v31 = 0;
    v32 = 0;
    v33 = MEMORY[0x277D82680];
    do
    {
      v34 = this[2];
      if (this[3])
      {
        v35 = this[3];
      }

      else
      {
        v35 = "";
      }

      v36 = strlen(v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, v35, v36);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v52, " ", 1);
      if (*&v34[v31])
      {
        v38 = *&v34[v31];
      }

      else
      {
        v38 = "";
      }

      v39 = strlen(v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v38, v39);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
      if (*&v34[v31 + 8])
      {
        v41 = *&v34[v31 + 8];
      }

      else
      {
        v41 = "";
      }

      v42 = strlen(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ";", 1);
      std::ios_base::getloc((v43 + *(*v43 - 24)));
      v44 = std::locale::use_facet(&v50, v33);
      (v44->__vftable[2].~facet_0)(v44, 10);
      std::locale::~locale(&v50);
      std::ostream::put();
      std::ostream::flush();
      ++v32;
      v31 += 16;
    }

    while (v32 < *(this + 3));
  }

  std::stringbuf::str();
  LiString::LiString(a2, &v50.__locale_);
  if (v51 < 0)
  {
    operator delete(v50.__locale_);
  }

  v52 = *MEMORY[0x277D82828];
  *(&v52 + *(v52 - 24)) = *(MEMORY[0x277D82828] + 24);
  v53 = MEMORY[0x277D82878] + 16;
  if (v55 < 0)
  {
    operator delete(v54[7].__locale_);
  }

  v53 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v54);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v56);
}

void sub_25FF56B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a20);
  _Unwind_Resume(a1);
}

void ProShade::VariableList::~VariableList(ProShade::VariableList *this)
{
  LiString::dec((this + 24));
  *this = &unk_28725E948;
  if (*(this + 2) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 2);
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(this, 0, v2);
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

uint64_t ProShade::Program::uniform_code@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, LiString *a3@<X8>)
{
  LiString::LiString(&v46, "uniform");
  v51 = &unk_28725E948;
  v52 = 0;
  v53 = 0;
  v54 = v46;
  if (v46)
  {
    atomic_fetch_add(v46 - 3, 1u);
    if (v46)
    {
      if (atomic_fetch_add(v46 - 3, 0xFFFFFFFF) == 1)
      {
        *v46 = 0;
        if (v46)
        {
          v6 = v46 - 3;
        }

        else
        {
          v6 = 0;
        }

        free(v6);
      }
    }
  }

  *a3 = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v46);
  v39 = a3;
  if (*(a2 + 12) >= 1)
  {
    v7 = 0;
    v8 = *(a1 + 1364);
    v38 = a2;
    do
    {
      v9 = *(*(*(a2 + 16) + 8 * v7) + 16);
      if (v9)
      {
      }

      else
      {
        v40 = 0;
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "uniform ", 8);
      (*(*v40 + 15))(&v42);
      if (v42.__locale_)
      {
        locale = v42.__locale_;
      }

      else
      {
        locale = "";
      }

      v12 = strlen(locale);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, locale, v12);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v14 = v40[4];
      v41 = v40 + 4;
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = "";
      }

      v16 = strlen(v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ";", 1);
      if (v42.__locale_ && atomic_fetch_add(v42.__locale_ - 3, 0xFFFFFFFF) == 1)
      {
        *v42.__locale_ = 0;
        if (v42.__locale_)
        {
          v18 = v42.__locale_ - 12;
        }

        else
        {
          v18 = 0;
        }

        free(v18);
      }

      if (v8 >= 1)
      {
        v19 = 0;
        do
        {
          while (1)
          {
            if (*(a1 + 1364) <= v19)
            {
              PCArray_base::badIndex(v17);
            }

            v20 = *(a1 + 1368) + 72 * v19;
            v21 = *(v20 + 48);
            if (v21)
            {
              break;
            }

            if (++v19 >= v8)
            {
              goto LABEL_66;
            }
          }

          v22 = *(v21 + 32);
          v42.__locale_ = v22;
          if (v22)
          {
            atomic_fetch_add(v22 - 3, 1u);
          }

          v17 = LiString::operator==(&v42, v41);
          if (v17 && *(v20 + 16))
          {
            ProShade::VarT<ProShade::Node>::repr(v20);
            v17 = LiString::operator==(&v45, &v42);
            if ((v17 & 1) == 0)
            {
              ProShade::VarT<ProShade::Node>::repr(v20);
              v23 = v44;
              if (v44)
              {
                v24 = *(v44 - 2);
              }

              else
              {
                v24 = 0;
              }

              v26 = malloc_type_malloc(v24 + 17, 0x10000403E1C8BA9uLL);
              *(v26 + 1) = v24 + 4;
              *(v26 + 2) = v24 + 5;
              atomic_store(1u, v26);
              atomic_store(0, v26);
              *(v26 + 3) = 539963168;
              memcpy(v26 + 16, v23, v24);
              v26[v24 + 16] = 0;
              atomic_fetch_add(v26, 1u);
              v27 = strlen(v26 + 12);
              v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, (v26 + 12), v27);
              a3 = v39;
              if (atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
              {
                free(v26);
              }

              if (v44 && atomic_fetch_add(v44 - 3, 0xFFFFFFFF) == 1)
              {
                *v44 = 0;
                if (v44)
                {
                  v28 = v44 - 12;
                }

                else
                {
                  v28 = 0;
                }

                free(v28);
              }
            }

            if (v45 && atomic_fetch_add(v45 - 3, 0xFFFFFFFF) == 1)
            {
              *v45 = 0;
              if (v45)
              {
                v29 = (v45 - 3);
              }

              else
              {
                v29 = 0;
              }

              free(v29);
            }

            v25 = 0;
          }

          else
          {
            v25 = 1;
          }

          if (v42.__locale_ && atomic_fetch_add(v42.__locale_ - 3, 0xFFFFFFFF) == 1)
          {
            *v42.__locale_ = 0;
            if (v42.__locale_)
            {
              v30 = v42.__locale_ - 12;
            }

            else
            {
              v30 = 0;
            }

            free(v30);
          }

          if (++v19 < v8)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }
        }

        while ((v31 & 1) != 0);
      }

LABEL_66:
      std::ios_base::getloc((&v46 + *(v46 - 3)));
      a2 = v38;
      v32 = std::locale::use_facet(&v42, MEMORY[0x277D82680]);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v42);
      std::ostream::put();
      std::ostream::flush();
      ++v7;
    }

    while (v7 < *(v38 + 12));
  }

  std::stringbuf::str();
  LiString::LiString(&v45, &v42.__locale_);
  if (&v45 != a3)
  {
    LiString::dec(a3);
    v33 = v45;
    *a3 = v45;
    if (!v33)
    {
      goto LABEL_76;
    }

    atomic_fetch_add(v33 - 3, 1u);
  }

  if (v45 && atomic_fetch_add(v45 - 3, 0xFFFFFFFF) == 1)
  {
    *v45 = 0;
    if (v45)
    {
      v34 = (v45 - 3);
    }

    else
    {
      v34 = 0;
    }

    free(v34);
    v45 = 0;
  }

LABEL_76:
  if (v43 < 0)
  {
    operator delete(v42.__locale_);
  }

  v46 = *MEMORY[0x277D82828];
  *(&v46 + *(v46 - 3)) = *(MEMORY[0x277D82828] + 24);
  v47 = MEMORY[0x277D82878] + 16;
  if (v49 < 0)
  {
    operator delete(v48[7].__locale_);
  }

  v47 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v48);
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](&v50);
  if (v54 && atomic_fetch_add(v54 - 3, 0xFFFFFFFF) == 1)
  {
    *v54 = 0;
    if (v54)
    {
      v35 = v54 - 3;
    }

    else
    {
      v35 = 0;
    }

    free(v35);
    v54 = 0;
  }

  v51 = &unk_28725E948;
  if (v52 < 0)
  {
    v36 = 1;
  }

  else
  {
    v36 = v52;
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(&v51, 0, v36);
  result = v53;
  if (v53)
  {
    return MEMORY[0x2666E9ED0](v53, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF5738C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, LiString *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, atomic_uint *a21, char a22)
{
  if (a21 && atomic_fetch_add(a21 - 3, 0xFFFFFFFF) == 1)
  {
    *a21 = 0;
    free(a21 - 3);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a22);
  LiString::dec(a12);
  ProShade::VariableList::~VariableList((v22 - 120));
  _Unwind_Resume(a1);
}

BOOL LiString::operator==(const char **a1, const char **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && *(v2 - 2) == *(v3 - 2) && strcmp(v2, v3) == 0;
}

uint64_t ProShade::Program::attribute_code@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  LiString::LiString(&v12, "attribute");
  v13 = &unk_28725E948;
  v14 = 0;
  v15 = 0;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add(v12 - 3, 1u);
    if (v12)
    {
      if (atomic_fetch_add(v12 - 3, 0xFFFFFFFF) == 1)
      {
        *v12 = 0;
        if (v12)
        {
          v4 = v12 - 3;
        }

        else
        {
          v4 = 0;
        }

        free(v4);
      }
    }
  }

  if (*(a1 + 12) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(*(a1 + 16) + 8 * v5) + 16);
      if (v6)
      {
      }

      else
      {
        v7 = 0;
      }

      (*(*v7 + 120))(&v12, v7);
      ProShade::VariableList::add(&v13, &v12, (v7 + 32));
      if (v12 && atomic_fetch_add(v12 - 3, 0xFFFFFFFF) == 1)
      {
        *v12 = 0;
        if (v12)
        {
          v8 = v12 - 3;
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }

      ++v5;
    }

    while (v5 < *(a1 + 12));
  }

  ProShade::VariableList::str(&v13, a2);
  if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
  {
    *v16 = 0;
    if (v16)
    {
      v9 = v16 - 3;
    }

    else
    {
      v9 = 0;
    }

    free(v9);
    v16 = 0;
  }

  v13 = &unk_28725E948;
  if (v14 < 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14;
  }

  PCArray<ProShade::VariableList::VariableEntry,PCArray_Traits<ProShade::VariableList::VariableEntry>>::resize(&v13, 0, v10);
  result = v15;
  if (v15)
  {
    return MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF57810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProShade::VariableList::~VariableList(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Program::fragment_code(PCArray_base *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a1;
  v68[1] = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  v57 = &unk_28725EA68;
  v55[0] = 0;
  v55[1] = 0;
  v53 = &unk_28725E980;
  v54 = v55;
  v56 = a5;
  if (*(a2 + 12) >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = (*(a2 + 16) + v9);
      var0 = v11[2].var0;
      if (!var0)
      {
        throw_PCNullPointerException(1);
      }

      (*(*var0 + 80))(v66);
      if (!v67)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v67 + 80))(&v60);
      ProShade::VarT<ProShade::Node>::operator=(v11, &v60);
      v60.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(&v63);
      v66[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v68);
      if (v58 <= SHIDWORD(v58))
      {
        v13 = 2 * (HIDWORD(v58) + 1) + 1;
      }

      else
      {
        v13 = v58;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v57, HIDWORD(v58) + 1, v13);
      a1 = ProShade::VarT<ProShade::Node>::operator=(v59 + 32 * SHIDWORD(v58) - 32, v11);
      ++v10;
      v9 += 40;
    }

    while (v10 < *(a2 + 12));
  }

  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = &unk_28725EA30;
  v47 = &unk_28725EA30;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = &unk_28725EB60;
  ProShade::Program::find_vars(a1, &v57, v8 + 1424, a3, a4, &v50, &v44, 0);
  v62 = 0;
  v63.var0 = 0;
  v60.var0 = &unk_28725E5C8;
  v61 = &v62;
  v64 = 0;
  v65 = a4;
  if (*(a2 + 12) >= 1)
  {
    v14 = 0;
    v15 = 16;
    do
    {
      v16 = *(a2 + 16);
      v17 = *(v16 + v15);
      if (!v17)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v17 + 80))(v66);
      ProShade::VarT<ProShade::Node>::operator=(v16 + v15 - 16, v66);
      v66[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v68);
      ++v14;
      v15 += 40;
    }

    while (v14 < *(a2 + 12));
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::append(v8 + 1448, &v44);
  LiString::LiString(v66, "#version 120\n#extension GL_EXT_gpu_shader4 : require\n");
  ProShade::Program::uniform_code(v8, &v50, &v43);
  ProShade::Program::varying_code(a4, &v42);
  v40 = 0;
  v41 = 0;
  ProShade::Program::shader(v8, a2, &v41, &v40);
  *(v8 + 9) = 1;
  if (v66[0].var0)
  {
    v18 = v66[0].var0;
  }

  else
  {
    v18 = "";
  }

  PCString::PCString(&v39, v18);
  PSShaderBase::setSource((v8 + 80), &v39, 0);
  PCString::~PCString(&v39);
  if (v43)
  {
    v19 = v43;
  }

  else
  {
    v19 = "";
  }

  PCString::PCString(&v39, v19);
  PSShaderBase::setSource((v8 + 80), &v39, 1);
  PCString::~PCString(&v39);
  if (v42)
  {
    v20 = v42;
  }

  else
  {
    v20 = "";
  }

  PCString::PCString(&v39, v20);
  PSShaderBase::setSource((v8 + 80), &v39, 4);
  PCString::~PCString(&v39);
  if (v40)
  {
    v21 = v40;
  }

  else
  {
    v21 = "";
  }

  PCString::PCString(&v39, v21);
  PSShaderBase::setSource((v8 + 80), &v39, 5);
  PCString::~PCString(&v39);
  ProShade::makeMain(&v41, &v38);
  v22 = v38;
  if (v38)
  {
    v23 = v38;
  }

  else
  {
    v23 = "";
  }

  PCString::PCString(&v39, v23);
  PSShaderBase::setSource((v8 + 80), &v39, 6);
  PCString::~PCString(&v39);
  if (v22 && atomic_fetch_add(v22 - 3, 0xFFFFFFFF) == 1)
  {
    v24 = v38;
    *v38 = 0;
    free((v24 - 12));
  }

  if (v40 && atomic_fetch_add(v40 - 3, 0xFFFFFFFF) == 1)
  {
    *v40 = 0;
    if (v40)
    {
      v25 = (v40 - 12);
    }

    else
    {
      v25 = 0;
    }

    free(v25);
  }

  if (v41 && atomic_fetch_add(v41 - 3, 0xFFFFFFFF) == 1)
  {
    *v41 = 0;
    if (v41)
    {
      v26 = v41 - 3;
    }

    else
    {
      v26 = 0;
    }

    free(v26);
  }

  if (v42 && atomic_fetch_add(v42 - 3, 0xFFFFFFFF) == 1)
  {
    *v42 = 0;
    if (v42)
    {
      v27 = (v42 - 12);
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  if (v43 && atomic_fetch_add(v43 - 3, 0xFFFFFFFF) == 1)
  {
    *v43 = 0;
    if (v43)
    {
      v28 = (v43 - 12);
    }

    else
    {
      v28 = 0;
    }

    free(v28);
  }

  if (v66[0].var0 && atomic_fetch_add(v66[0].var0 - 3, 0xFFFFFFFF) == 1)
  {
    *v66[0].var0 = 0;
    if (v66[0].var0)
    {
      v29 = v66[0].var0 - 12;
    }

    else
    {
      v29 = 0;
    }

    free(v29);
  }

  v60.var0 = &unk_287272E98;
  std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(&v61, v62);
  v44 = &unk_28725EB60;
  if (v45 < 0)
  {
    v30 = 1;
  }

  else
  {
    v30 = v45;
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(&v44, 0, v30);
  if (v46)
  {
    MEMORY[0x2666E9ED0](v46, 0x1000C8077774924);
  }

  v47 = &unk_28725EA30;
  if (v48 < 0)
  {
    v31 = 1;
  }

  else
  {
    v31 = v48 & ~(v48 >> 31);
  }

  if (v31 == v48)
  {
    v32 = SHIDWORD(v48);
    if (v48 < 0)
    {
      do
      {
        *(v49 + 8 * v32) = 0;
        v33 = __CFADD__(v32++, 1);
      }

      while (!v33);
    }
  }

  else
  {
    if (v31)
    {
      operator new[]();
    }

    if (v49)
    {
      MEMORY[0x2666E9ED0](v49, 0x1000C8077774924);
    }

    v49 = 0;
  }

  v48 = v31;
  if (v49)
  {
    MEMORY[0x2666E9ED0](v49, 0x1000C8077774924);
  }

  v50 = &unk_28725EA30;
  if (v51 < 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = v51 & ~(v51 >> 31);
  }

  if (v34 == v51)
  {
    v35 = SHIDWORD(v51);
    if (v51 < 0)
    {
      do
      {
        *(v52 + 8 * v35) = 0;
        v33 = __CFADD__(v35++, 1);
      }

      while (!v33);
    }
  }

  else
  {
    if (v34)
    {
      operator new[]();
    }

    if (v52)
    {
      MEMORY[0x2666E9ED0](v52, 0x1000C8077774924);
    }

    v52 = 0;
  }

  v51 = v34;
  if (v52)
  {
    MEMORY[0x2666E9ED0](v52, 0x1000C8077774924);
  }

  v53 = &unk_287272E98;
  std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(&v54, v55[0]);
  v57 = &unk_28725EA68;
  if (v58 < 0)
  {
    v36 = 1;
  }

  else
  {
    v36 = v58;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v57, 0, v36);
  result = v59;
  if (v59)
  {
    return MEMORY[0x2666E9ED0](v59, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF5805C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::append(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  v5 = *(a2 + 12) + v4;
  if (*(a1 + 8) < v5)
  {
    v6 = 2 * v5 + 1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  result = PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(a1, v5, v6);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 96 * v4;
    do
    {
      result = ProShade::Sampler::operator=((*(a1 + 16) + v10), (*(a2 + 16) + v8));
      ++v9;
      v10 += 96;
      v8 += 96;
    }

    while (v9 < *(a2 + 12));
  }

  return result;
}

void ProShade::makeMain(const void **this@<X0>, void *a2@<X8>)
{
  v4 = *this;
  if (*this)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v5 + 14;
  v8 = v5 + 15;
  v9 = malloc_type_malloc(v5 + 27, 0x10000403E1C8BA9uLL);
  v9[2] = v8;
  atomic_store(1u, v9);
  atomic_store(0, v9);
  qmemcpy(v9 + 3, "void main() {\n", 14);
  v9[1] = v7;
  memcpy(v9 + 26, v4, v6);
  *(v9 + v7 + 12) = 0;
  atomic_fetch_add(v9, 1u);
  v10 = v9[1];
  v11 = malloc_type_malloc(v10 + 15, 0x10000403E1C8BA9uLL);
  atomic_store(1u, v11);
  v12 = v11 + 3;
  atomic_store(0, v11);
  v11[1] = v10 + 2;
  v11[2] = v10 + 3;
  memcpy(v11 + 3, v9 + 3, v10);
  *(v12 + v10) = 2685;
  *(v12 + v10 + 2) = 0;
  *a2 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {

    free(v9);
  }
}

void sub_25FF58530(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EB60;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t ProShade::Program::vertex_code(PCArray_base *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v53[1] = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v47 = &unk_28725EA68;
  if (*(a2 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a2 + 16) + v6);
      var0 = v8[2].var0;
      if (!var0)
      {
        throw_PCNullPointerException(1);
      }

      (*(*var0 + 80))(&v50);
      ProShade::VarT<ProShade::Node>::operator=(v8, &v50);
      v50.var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v53);
      if (v48 <= SHIDWORD(v48))
      {
        v10 = 2 * (HIDWORD(v48) + 1) + 1;
      }

      else
      {
        v10 = v48;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v47, HIDWORD(v48) + 1, v10);
      a1 = ProShade::VarT<ProShade::Node>::operator=(v49 + 32 * SHIDWORD(v48) - 32, v8);
      ++v7;
      v6 += 40;
    }

    while (v7 < *(a2 + 12));
  }

  v51 = 0;
  v52 = 0;
  v50.var0 = &unk_28725EA30;
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = &unk_28725EA30;
  v41 = &unk_28725EB60;
  v42 = 0;
  ProShade::Program::find_vars(a1, &v47, v5 + 1400, 0, 0, &v50, &v41, &v44);
  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::append(v5 + 1448, &v41);
  LiString::LiString(&v40, "#version 120\n#extension GL_EXT_gpu_shader4 : require\n");
  ProShade::Program::uniform_code(v5, &v50, &v39);
  ProShade::Program::attribute_code(&v44, &v38);
  ProShade::Program::varying_code(a3, &v37);
  v35 = 0;
  v36 = 0;
  ProShade::Program::shader(v5, a2, &v36, &v35);
  *(v5 + 8) = 1;
  if (v40)
  {
    v11 = v40;
  }

  else
  {
    v11 = "";
  }

  PCString::PCString(&v34, v11);
  PSShaderBase::setSource((v5 + 16), &v34, 0);
  PCString::~PCString(&v34);
  if (v39)
  {
    v12 = v39;
  }

  else
  {
    v12 = "";
  }

  PCString::PCString(&v34, v12);
  PSShaderBase::setSource((v5 + 16), &v34, 1);
  PCString::~PCString(&v34);
  if (v38)
  {
    v13 = v38;
  }

  else
  {
    v13 = "";
  }

  PCString::PCString(&v34, v13);
  PSShaderBase::setSource((v5 + 16), &v34, 3);
  PCString::~PCString(&v34);
  if (v37)
  {
    v14 = v37;
  }

  else
  {
    v14 = "";
  }

  PCString::PCString(&v34, v14);
  PSShaderBase::setSource((v5 + 16), &v34, 4);
  PCString::~PCString(&v34);
  if (v35)
  {
    v15 = v35;
  }

  else
  {
    v15 = "";
  }

  PCString::PCString(&v34, v15);
  PSShaderBase::setSource((v5 + 16), &v34, 5);
  PCString::~PCString(&v34);
  ProShade::makeMain(&v36, &v33);
  v16 = v33;
  if (v33)
  {
    v17 = v33;
  }

  else
  {
    v17 = "";
  }

  PCString::PCString(&v34, v17);
  PSShaderBase::setSource((v5 + 16), &v34, 6);
  PCString::~PCString(&v34);
  if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
  {
    v18 = v33;
    *v33 = 0;
    free((v18 - 12));
  }

  if (v35 && atomic_fetch_add(v35 - 3, 0xFFFFFFFF) == 1)
  {
    *v35 = 0;
    if (v35)
    {
      v19 = (v35 - 12);
    }

    else
    {
      v19 = 0;
    }

    free(v19);
  }

  if (v36 && atomic_fetch_add(v36 - 3, 0xFFFFFFFF) == 1)
  {
    *v36 = 0;
    if (v36)
    {
      v20 = v36 - 3;
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  if (v37 && atomic_fetch_add(v37 - 3, 0xFFFFFFFF) == 1)
  {
    *v37 = 0;
    if (v37)
    {
      v21 = (v37 - 12);
    }

    else
    {
      v21 = 0;
    }

    free(v21);
  }

  if (v38 && atomic_fetch_add(v38 - 3, 0xFFFFFFFF) == 1)
  {
    *v38 = 0;
    if (v38)
    {
      v22 = (v38 - 12);
    }

    else
    {
      v22 = 0;
    }

    free(v22);
  }

  if (v39 && atomic_fetch_add(v39 - 3, 0xFFFFFFFF) == 1)
  {
    *v39 = 0;
    if (v39)
    {
      v23 = (v39 - 12);
    }

    else
    {
      v23 = 0;
    }

    free(v23);
  }

  if (v40 && atomic_fetch_add(v40 - 3, 0xFFFFFFFF) == 1)
  {
    *v40 = 0;
    if (v40)
    {
      v24 = (v40 - 12);
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  v41 = &unk_28725EB60;
  if (v42 < 0)
  {
    v25 = 1;
  }

  else
  {
    v25 = v42;
  }

  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(&v41, 0, v25);
  if (v43)
  {
    MEMORY[0x2666E9ED0](v43, 0x1000C8077774924);
  }

  v44 = &unk_28725EA30;
  if (v45 < 0)
  {
    v26 = 1;
  }

  else
  {
    v26 = v45 & ~(v45 >> 31);
  }

  if (v26 == v45)
  {
    v27 = SHIDWORD(v45);
    if (v45 < 0)
    {
      do
      {
        *(v46 + 8 * v27) = 0;
        v28 = __CFADD__(v27++, 1);
      }

      while (!v28);
    }
  }

  else
  {
    if (v26)
    {
      operator new[]();
    }

    if (v46)
    {
      MEMORY[0x2666E9ED0](v46, 0x1000C8077774924);
    }

    v46 = 0;
  }

  v45 = v26;
  if (v46)
  {
    MEMORY[0x2666E9ED0](v46, 0x1000C8077774924);
  }

  v50.var0 = &unk_28725EA30;
  if (v51 < 0)
  {
    v29 = 1;
  }

  else
  {
    v29 = v51 & ~(v51 >> 31);
  }

  if (v29 == v51)
  {
    v30 = SHIDWORD(v51);
    if (v51 < 0)
    {
      do
      {
        *(v52 + 8 * v30) = 0;
        v28 = __CFADD__(v30++, 1);
      }

      while (!v28);
    }
  }

  else
  {
    if (v29)
    {
      operator new[]();
    }

    if (v52)
    {
      MEMORY[0x2666E9ED0](v52, 0x1000C8077774924);
    }

    v52 = 0;
  }

  v51 = v29;
  if (v52)
  {
    MEMORY[0x2666E9ED0](v52, 0x1000C8077774924);
  }

  v47 = &unk_28725EA68;
  if (v48 < 0)
  {
    v31 = 1;
  }

  else
  {
    v31 = v48;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v47, 0, v31);
  result = v49;
  if (v49)
  {
    return MEMORY[0x2666E9ED0](v49, 0x1000C8077774924);
  }

  return result;
}

void sub_25FF58C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::Program::code(uint64_t this)
{
  v1 = this;
  if (*(this + 8) == 1)
  {
    if (*(this + 1544) == 1)
    {
      exception = __cxa_allocate_exception(0x48uLL);
      PCString::PCString(&v30, "error already detected building this program");
      PCGLSLException::PCGLSLException(exception, &v30);
    }
  }

  else
  {
    if (*(this + 1360) < 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = *(this + 1360);
    }

    PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(this + 1352, 0, v3);
    v4 = *(v1 + 1368);
    if (v4)
    {
      MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
    }

    *(v1 + 1368) = 0;
    *(v1 + 1360) = 0;
    if (*(v1 + 1456) < 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = *(v1 + 1456);
    }

    PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::resize(v1 + 1448, 0, v5);
    v6 = *(v1 + 1464);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(v1 + 1464) = 0;
    *(v1 + 1456) = 0;
    v31 = 0;
    v32 = 0;
    v30.var0 = &unk_28725EB98;
    ProShade::VertexProgram::addOutputs((v1 + 272), &v30);
    v28 = 0;
    v29 = 0;
    v27 = &unk_28725EB98;
    ProShade::FragmentProgram::addOutputs((v1 + 912), &v27);
    v7 = *(v1 + 1312);
    v25 = 0;
    v26 = 0;
    v24 = &unk_28725EA30;
    ProShade::Program::fragment_code(v1, &v27, &v30, &v24, v7 == 1);
    v8 = ProShade::Program::vertex_code(v1, &v30, &v24);
    v10 = HIDWORD(v25);
    if (HIDWORD(v25))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (v12 < 0 || SHIDWORD(v25) <= v12)
        {
          PCArray_base::badIndex(v8);
        }

        v8 = ProShade::VarT<ProShade::Node>::width(*(v26 + (v11 >> 29)), v9);
        v13 += v8;
        ++v12;
        v11 += 0x100000000;
      }

      while (v10 != v12);
      v10 = v13 > 0;
    }

    v14 = *(v1 + 1460);
    ProShade::deleteVars((v1 + 1400));
    ProShade::deleteVars((v1 + 1424));
    params = 0;
    glGetIntegerv(0x8872u, &params);
    if (v10)
    {
      *(v1 + 1544) = 1;
      *(v1 + 264) = 3;
      v20 = __cxa_allocate_exception(0x48uLL);
      PCString::PCString(&v22, "shader has too many varying floats");
      PCGLSLException::PCGLSLException(v20, &v22);
    }

    if (v14 > params)
    {
      *(v1 + 1544) = 1;
      *(v1 + 264) = 4;
      v21 = __cxa_allocate_exception(0x48uLL);
      PCString::PCString(&v22, "shader has too many samplers");
      PCGLSLException::PCGLSLException(v21, &v22);
    }

    v24 = &unk_28725EA30;
    if (v25 < 0)
    {
      v15 = 1;
    }

    else
    {
      v15 = v25 & ~(v25 >> 31);
    }

    if (v15 == v25)
    {
      v16 = SHIDWORD(v25);
      if (v25 < 0)
      {
        do
        {
          *(v26 + 8 * v16) = 0;
        }

        while (!__CFADD__(v16++, 1));
      }
    }

    else
    {
      if (v15)
      {
        operator new[]();
      }

      if (v26)
      {
        MEMORY[0x2666E9ED0](v26, 0x1000C8077774924);
      }

      v26 = 0;
    }

    v25 = v15;
    if (v26)
    {
      MEMORY[0x2666E9ED0](v26, 0x1000C8077774924);
    }

    v27 = &unk_28725EB98;
    if (v28 < 0)
    {
      v18 = 1;
    }

    else
    {
      v18 = v28;
    }

    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(&v27, 0, v18);
    if (v29)
    {
      MEMORY[0x2666E9ED0](v29, 0x1000C8077774924);
    }

    v30.var0 = &unk_28725EB98;
    if (v31 < 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = v31;
    }

    PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(&v30, 0, v19);
    this = v32;
    if (v32)
    {
      return MEMORY[0x2666E9ED0](v32, 0x1000C8077774924);
    }
  }

  return this;
}

void sub_25FF592DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, PCString a18)
{
  PCString::~PCString(&a10);
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(&a12);
  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::~PCArray(&a15);
  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::~PCArray(&a18);
  _Unwind_Resume(a1);
}

void PCGLSLException::~PCGLSLException(PCString *this)
{
  this->var0 = &unk_28725E9B8;
  PCString::~PCString(this + 8);

  PCException::~PCException(this);
}

{
  this->var0 = &unk_28725E9B8;
  PCString::~PCString(this + 8);
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::VarT<ProShade::Node>::width(uint64_t a1, const PCString *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  v3 = *(v2 + 28);

  return ProShade::shapeGetWidth(v3, a2);
}

uint64_t PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725EB98;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::Output,PCArray_Traits<ProShade::Output>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t ProShade::Program::bindTextures(os_unfair_lock_s *this)
{
  PCSharedCount::PCSharedCount(_18);
  v2 = &this[40];
  v17 = this + 40;
  PCMutex::lock(&this[40]);
  v18 = 1;
  LOBYTE(texture) = 0;
  v3 = LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(this + 58, &texture);
  v4 = *(*v3 + 48);
  v5 = *v3 + 56;
  if (v4 != v5)
  {
    do
    {
      v6 = v4[4];
      v7 = *(v4 + 10);
      texture = 0;
      ProShade::SamplerNode::getTextureID(v6, &texture);
      os_unfair_lock_opaque = v6[14]._os_unfair_lock_opaque;
      glActiveTexture(v7 + 33984);
      glBindTexture(os_unfair_lock_opaque, texture);
      WrapMode = ProShade::SamplerNode::getWrapMode(v6);
      if (WrapMode > 1)
      {
        if (WrapMode == 2)
        {
          v10 = 33648;
          glTexParameteri(os_unfair_lock_opaque, 0x2802u, 33648);
          goto LABEL_10;
        }

        if (WrapMode == 3)
        {
LABEL_8:
          v10 = 33071;
          glTexParameteri(os_unfair_lock_opaque, 0x2802u, 33071);
          goto LABEL_10;
        }
      }

      else
      {
        if (!WrapMode)
        {
          goto LABEL_8;
        }

        if (WrapMode == 1)
        {
          v10 = 10497;
          glTexParameteri(os_unfair_lock_opaque, 0x2802u, 10497);
LABEL_10:
          glTexParameteri(os_unfair_lock_opaque, 0x2803u, v10);
        }
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }

  PCMutex::unlock(v2);
  return OZChannelBase::setRangeName(_18, v14);
}

void sub_25FF59638(_Unwind_Exception *a1, char a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12)
{
  PCLockSentry<PCMutex>::~PCLockSentry(&a10);
  OZChannelBase::setRangeName(&a12, v13);
  _Unwind_Resume(a1);
}

void ProShade::Program::initializeExe(os_unfair_lock_s *this, ProShade::ProgramBase::Exe *a2)
{
  PCSharedCount::PCSharedCount(&var68);
  v4 = ProGL::ObjectHandle::name(a2);
  glUseProgram(v4);
  v5 = LiGL::setCurrentProgram(&var68.var0, 0);
  os_unfair_lock_opaque = this[365]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      if (this[365]._os_unfair_lock_opaque <= v7)
      {
        PCArray_base::badIndex(v5);
      }

      v9 = *&this[366]._os_unfair_lock_opaque;
      v10 = *(v9 + v8);
      if (!v10)
      {
        throw_PCNullPointerException(1);
      }

      v11 = *(v10 + 32);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = "";
      }

      UniformLocation = ProShade::ProgramBase::getUniformLocation(this, v12);
      v21 = *(v9 + v8);
      var68.var2 = &v21;
      *(std::__tree<std::__value_type<ProShade::SamplerNode const*,int>,std::__map_value_compare<ProShade::SamplerNode const*,std::__value_type<ProShade::SamplerNode const*,int>,std::less<ProShade::SamplerNode const*>,true>,std::allocator<std::__value_type<ProShade::SamplerNode const*,int>>>::__emplace_unique_key_args<ProShade::SamplerNode const*,std::piecewise_construct_t const&,std::tuple<ProShade::SamplerNode const*&&>,std::tuple<>>(a2 + 48, &v21) + 10) = v7;
      glUniform1i(UniformLocation, v7++);
      v8 += 96;
    }

    while (os_unfair_lock_opaque != v7);
  }

  if (*&this[370]._os_unfair_lock_opaque == *&this[368]._os_unfair_lock_opaque)
  {
    v14 = this[341]._os_unfair_lock_opaque;
    if (v14 >= 1)
    {
      v15 = 0;
      v16 = 48;
      do
      {
        if (v15 >= this[341]._os_unfair_lock_opaque)
        {
          PCArray_base::badIndex(v5);
        }

        v17 = *&this[342]._os_unfair_lock_opaque;
        v18 = *(v17 + v16);
        if (!v18)
        {
          throw_PCNullPointerException(1);
        }

        v19 = *(v18 + 32);
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = "";
        }

        v5 = ProShade::ProgramBase::getUniformLocation(this, v20);
        *(v17 + v16 + 16) = v5;
        ++v15;
        v16 += 72;
      }

      while (v14 != v15);
    }

    ProShade::UniformProgram::initialize(&this[368], &this[338]);
  }

  operator new();
}

uint64_t ProShade::Program::compileShaders(ProShade::Program *this)
{
  ProShade::Program::code(this);

  return ProShade::ProgramBase::compileShaders(this);
}

uint64_t ProShade::Program::getUniformWorkspace(os_unfair_lock_s *this)
{
  v2 = &this[40];
  PCMutex::lock(&this[40]);
  v5 = 0;
  v3 = *(*LiPerContext<ProShade::ProgramBase::Exe *,LiPerContextObject_Traits<ProShade::ProgramBase::Exe>,LiOpenGLContextGetter>::get(this + 58, &v5) + 72);
  PCMutex::unlock(v2);
  return v3;
}

void sub_25FF59920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProShade::ProgramVar::~ProgramVar(PCSharedCount *this)
{
  this->var0 = &unk_28725E0C8;
  LiString::dec(&this[8]);
  this[4].var0 = &unk_28725EA30;
  var0 = this[5].var0;
  if (var0 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = var0 & ~(var0 >> 31);
  }

  if (v3 == var0)
  {
    var0_high = SHIDWORD(this[5].var0);
    if ((var0_high & 0x80000000) != 0)
    {
      do
      {
        *(this[6].var0 + var0_high) = 0;
      }

      while (!__CFADD__(var0_high++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = this[6].var0;
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    this[6].var0 = 0;
  }

  LODWORD(this[5].var0) = v3;
  HIDWORD(this[5].var0) = 0;
  v7 = this[6].var0;
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  this[6].var0 = 0;
  LODWORD(this[5].var0) = 0;
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

{
  ProShade::ProgramVar::~ProgramVar(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::VarT<ProShade::Node>::printout(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  return ProShade::Node::po(v1);
}

void ProShade::Program::~Program(ProShade::Program *this)
{
  *(v1 + 1552) = &unk_2872DEA38;
  *(v1 + 1568) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1560));
}

{
  *(v1 + 1552) = &unk_2872DEA38;
  *(v1 + 1568) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1560));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::Program::~Program(ProShade::Program *this)
{
  *(v1 + 1552) = &unk_2872DEA38;
  *(v1 + 1568) = 0;
  v2 = (v1 + 1560);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  v1[194] = &unk_2872DEA38;
  *(v1 + 1568) = 0;
  PCWeakCount::~PCWeakCount(v1 + 195);

  JUMPOUT(0x2666E9F00);
}

void ProShade::VarT<ProShade::Node>::~VarT(PCSharedCount *a1)
{
  a1->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(a1 + 3);

  JUMPOUT(0x2666E9F00);
}

void sub_25FF59EE0(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Node::~Node(ProShade::Node *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 24)) = a2[3];
  LiString::dec((this + 32));
}

uint64_t ProShade::Func<ProShade::Func_ftransform>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::Func_ftransform>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::Func_ftransform>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "ftransform");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_25FF5A118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::Func_ftransform>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 23, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 10;
  v5[2] = v4 + 11;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *(v6 + 4) = 28018;
  *v6 = *"ftransform";
  *(v5 + v4 + 22) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_25FF5A244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::VertexProgram::VertexProgram(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::Func_ftransform>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "ftransform");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

void ProShade::Func<ProShade::Func_ftransform>::inputs(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 60);
  if (*(a2 + 8) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v4, v5);
  if (*(a1 + 60) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + v6, (*(a1 + 64) + v6));
      ++v7;
      v6 += 32;
    }

    while (v7 < *(a1 + 60));
  }
}

uint64_t ProShade::Func<ProShade::Func_ftransform>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}