BOOL PSEmitter::getEmitAtPoints(PSEmitter *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 19744), MEMORY[0x277CC08F0], 0.0);
  v4 = OZChannel::getValueAsInt((this + 19232), v2, 0.0);
  v5 = v4;
  if (ValueAsInt)
  {
    result = 1;
    v7 = v5 > 6;
    v8 = (1 << v5) & 0x64;
    if (!v7 && v8 != 0)
    {
      return OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) != 2;
    }
  }

  else
  {
    return v4 <= 6 && ((1 << v4) & 0x64) != 0 && OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 1;
  }

  return result;
}

void PSEmitter::genOrderLinear(PSEmitter *this, double a2, int a3, unsigned int a4, const CMTime *a5, double *a6, double *a7)
{
  if (!a3)
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 22240), a5, 0.0);
    if (ValueAsInt == 2)
    {
      v19 = fabs(a2 + -0.5);
      v17 = v19 + v19;
      *a6 = v17;
      v18 = ceil(vcvtd_n_f64_u32(a4, 1uLL)) + -1.0;
    }

    else
    {
      if (ValueAsInt != 1)
      {
        if (ValueAsInt)
        {
          return;
        }

        *a6 = a2;
        v14 = (a4 - 1) * a2;
        goto LABEL_18;
      }

      v17 = 1.0 - a2;
      v18 = (a4 - 1);
      *a6 = 1.0 - a2;
    }

    v14 = v17 * v18;
LABEL_18:
    __y = 0.0;
    modf(v14 + 0.0001, &__y);
    v16 = __y;
    goto LABEL_19;
  }

  v11 = OZChannel::getValueAsInt(this + 148, a5, 0.0);
  if (v11)
  {
    if (v11 == 1)
    {
      *a6 = a2;
      if (a7)
      {
        v12 = a4 * a2 + 0.5 + 0.0000001;
LABEL_14:
        v16 = vcvtmd_s64_f64(v12);
LABEL_19:
        *a7 = v16;
      }
    }
  }

  else
  {
    v15 = 1.0 - a2;
    if (vabdd_f64(1.0, 1.0 - a2) < 0.0000001)
    {
      v15 = 0.0;
    }

    *a6 = v15;
    if (a7)
    {
      v12 = v15 * a4 + 0.5 + 0.0000001;
      goto LABEL_14;
    }
  }
}

float64x2_t PSEmitter::genPosCircle(uint64_t a1, const CMTime *a2, uint64_t a3, uint64_t a4, double a5)
{
  v7 = a5 * -2.0 * 3.14159265;
  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v9 = v8;
  v10 = __sincos_stret(v7);
  *a4 = v10.__cosval * v9;
  *(a4 + 8) = v10.__sinval * v9;
  *(a4 + 16) = 0;
  *a3 = v10.__cosval * v9 + *a3;
  result = vaddq_f64(COERCE_UNSIGNED_INT64(v10.__sinval * v9), *(a3 + 8));
  *(a3 + 8) = result;
  return result;
}

double PSEmitter::genPosLine(uint64_t a1, const CMTime *a2, double *a3, uint64_t a4, double a5)
{
  OZChannel::getValueAsDouble((a1 + 23600), a2, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 23752), a2, 0.0);
  v13 = v12;
  OZChannel::getValueAsDouble((a1 + 24200), a2, 0.0);
  v15 = v14;
  OZChannel::getValueAsDouble((a1 + 24488), a2, 0.0);
  v17 = v16;
  OZChannel::getValueAsDouble((a1 + 24640), a2, 0.0);
  v19 = v18;
  OZChannel::getValueAsDouble((a1 + 25088), a2, 0.0);
  v21 = v20;
  v22 = (*(*a1 + 168))(a1);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0.0;
  }

  if (!v22)
  {
    v15 = 0.0;
  }

  v24 = v17 - v11;
  v25 = v19 - v13;
  v26 = v23 - v15;
  if (fabs(v24 * v24 + v25 * v25 + v26 * v26) >= 0.0000001)
  {
    *a4 = v25;
    *(a4 + 8) = -v24;
    *(a4 + 16) = 0;
    PCVector3<double>::normalize(a4, 0.000000100000001);
  }

  v27 = v13 + v25 * a5 + a3[1];
  *a3 = v11 + v24 * a5 + *a3;
  a3[1] = v27;
  result = v15 + v26 * a5 + a3[2];
  a3[2] = result;
  return result;
}

uint64_t PSEmitter::genPosGeometry(uint64_t a1, const CMTime *a2, float64x2_t *a3, double a4)
{
  result = (*(*a1 + 616))(a1);
  if (result)
  {
    v9 = result;
    v17 = 0.0;
      ;
    }

      ;
    }

    v10 = 0.0;
    if (OZChannel::getValueAsInt((a1 + 31936), MEMORY[0x277CC08F0], 0.0))
    {
      OZRenderState::OZRenderState(&v16);
      *&v16.var0.var0 = *&a2->value;
      v16.var0.var3 = a2->epoch;
      v14 = 0;
      v15 = 0;
      v11 = (*(*a1 + 608))(a1);
      OZRotoshape::getReparametrizedPointOnContour(v9, &v16.var0.var0, &i, &v17, &v15, &v14, v11, 0);
    }

    v12 = *(v9 + 19448);
    if (v12)
    {
      v10 = (((v12[1] - *v12) >> 3) / 2);
    }

    result = OZChannelCurve::getCurveValueWithParameter((v9 + 19184), a2, a4 * v10, &i, &v17);
    v13.f64[0] = i;
    v13.f64[1] = v17;
    *a3 = vaddq_f64(*a3, v13);
  }

  return result;
}

float64x2_t PSEmitter::genPosRect(double a1, float64x2_t a2, float64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6, uint64_t a7)
{
  v7 = a2.f64[0] / a3;
  v8 = v7 + v7 + 2.0;
  v9 = 1.0 / v8;
  if (1.0 / v8 <= a1)
  {
    v12 = v7 / v8;
    if (v9 + v12 <= a1)
    {
      v20 = v12 + v9 + v9;
      if (v20 > a1)
      {
        a2.f64[1] = (1.0 - (a1 - (v9 + v12)) / v9 + 1.0 - (a1 - (v9 + v12)) / v9 + -1.0) * a3;
        __asm { FMOV            V0.2D, #0.5 }

        v10 = vmulq_f64(a2, _Q0);
        *(a7 + 16) = 0;
        v11 = 0x3FF0000000000000;
        goto LABEL_3;
      }

      v13.f64[0] = (1.0 - (a1 - v20) / v12 + 1.0 - (a1 - v20) / v12 + -1.0) * a2.f64[0];
      v13.f64[1] = a3;
      _Q1 = xmmword_2608560D0;
      v19 = xmmword_26034D970;
    }

    else
    {
      v13.f64[0] = ((a1 - v9) / v12 + (a1 - v9) / v12 + -1.0) * a2.f64[0];
      v13.f64[1] = a3;
      __asm { FMOV            V1.2D, #0.5 }

      v19 = xmmword_260342700;
    }

    v10 = vmulq_f64(v13, _Q1);
    *a7 = v19;
    *(a7 + 16) = 0;
    goto LABEL_10;
  }

  a2.f64[1] = (a1 / v9 + a1 / v9 + -1.0) * a3;
  v10 = vmulq_f64(a2, xmmword_260852E50);
  *(a7 + 16) = 0;
  v11 = 0xBFF0000000000000;
LABEL_3:
  *a7 = v11;
  *(a7 + 8) = 0;
LABEL_10:
  result = vaddq_f64(v10, *a6);
  *a6 = result;
  return result;
}

double PSEmitter::initPropertiesFromImageOutline(uint64_t a1, const CMTime *a2, int a3, int a4, uint64_t a5, float64x2_t *a6, uint64_t a7, __n128 a8, float64x2_t a9)
{
  v9 = a1 + 0x8000;
  a9.f64[0] = *(a1 + 33536);
  if (a9.f64[0] == 0.0)
  {
    return a8.n128_f64[0];
  }

  v10 = *(a1 + 33544);
  if (v10 == 0.0)
  {
    return a8.n128_f64[0];
  }

  v15 = a3;
  v17 = a8.n128_f64[0];
  if (a3)
  {
    v19 = *(a1 + 33512);
    if (!v19)
    {
      return a8.n128_f64[0];
    }

    goto LABEL_9;
  }

  if (a4)
  {
    v19 = *(a1 + 33512);
LABEL_9:
    memset(&v49.var1, 0, 24);
    v20 = (*(*v19 + 16))(v19);
    v21 = v20;
    v22 = (*(**(v9 + 744) + 24))(*(v9 + 744));
    v23 = v22;
    v24 = v22;
    v25.f64[0] = v20;
    PSEmitter::genPosRect(v17, v25, v22, v22, v26, &v49.var1, a7);
    v27 = vcvtd_n_f64_u32(v20, 1uLL) + *&v49.var1;
    v28 = vcvtd_n_f64_u32(v23, 1uLL) + *&v49.var2;
    OZChannel::getValueAsDouble((a1 + 27200), a2, 0.0);
    v30 = vcvtmd_s64_f64(v29 * 255.0 + 0.5 + 0.0000001);
    v31 = (*(**(*(v9 + 744) + 64) + 16))(*(*(v9 + 744) + 64));
    v32 = *(v9 + 744);
    v33 = (*(v32 + 36) * *(v32 + 40)) >> 3;
    BytesPerRow = PCBitmap::getBytesPerRow(v32);
    v37 = vcvtmd_s64_f64(v27 + 0.0000001);
    v38 = vcvtmd_s64_f64(v28 + 0.0000001);
    v39 = (v31 + BytesPerRow * (v38 - (v38 == v24)) + v33 * (v37 - (v37 == v21)));
    if (v30 > *v39 && (v15 & 1) != 0)
    {
      v40 = MEMORY[0x277CC08F0];
      a8 = *MEMORY[0x277CC08F0];
      *(a5 + 32) = *MEMORY[0x277CC08F0];
      *(a5 + 48) = *(v40 + 16);
    }

    else
    {
      v36.f64[0] = *(v9 + 768);
      a8.n128_u64[0] = *&PSEmitter::genPosRect(v17, v36, *(v9 + 776), BytesPerRow, v35, a6, a7);
      if (a4)
      {
        a8.n128_u8[0] = v39[1];
        *&v41 = a8.n128_u64[0] / 255.0;
        v42 = *&v41;
        LOBYTE(v41) = v39[2];
        *&v43 = v41 / 255.0;
        v44 = *&v43;
        LOBYTE(v43) = v39[3];
        *&v45 = v43 / 255.0;
        v46 = *&v45;
        LOBYTE(v45) = *v39;
        v47 = v45 / 255.0;
        PCImage::getColorSpace(*(v9 + 744), &v49);
        PCColor::setRGBA((a5 + 112), v42, v44, v46, v47, &v49);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v49);
      }
    }

    return a8.n128_f64[0];
  }

  a8.n128_u64[0] = *&PSEmitter::genPosRect(a8.n128_f64[0], a9, v10, a1, a2, a6, a7);
  return a8.n128_f64[0];
}

BOOL PSEmitter::genPosWave(uint64_t a1, const CMTime *a2, double *a3, float64x2_t *a4, float64x2_t *a5, double a6)
{
  v11 = 0.0;
  OZChannel::getValueAsDouble((a1 + 23600), a2, 0.0);
  v13 = v12;
  OZChannel::getValueAsDouble((a1 + 23752), a2, 0.0);
  v15 = v14;
  OZChannel::getValueAsDouble((a1 + 24200), a2, 0.0);
  v17 = v16;
  OZChannel::getValueAsDouble((a1 + 24488), a2, 0.0);
  v19 = v18;
  OZChannel::getValueAsDouble((a1 + 24640), a2, 0.0);
  v21 = v20;
  OZChannel::getValueAsDouble((a1 + 25088), a2, 0.0);
  v23 = v22;
  v24 = (*(*a1 + 168))(a1);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0.0;
  }

  if (v24)
  {
    v26 = v17;
  }

  else
  {
    v26 = 0.0;
  }

  v59 = v13;
  v27 = v19 - v13;
  v28 = v21 - v15;
  v29 = v25 - v26;
  v30 = v27 * v27;
  v31 = v27 * v27 + v28 * v28;
  v32 = sqrt(v31 + v29 * v29);
  v33 = fabs(v32);
  v34 = 1.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  if (v33 >= 0.0000001)
  {
    v56 = v26;
    v58 = v32;
    v38 = v31 <= 0.0;
    if (v31 > 0.0)
    {
      v11 = 0.0 - v28;
    }

    else
    {
      v30 = (v27 * 0.0 - v29 * 0.0) * (v27 * 0.0 - v29 * 0.0);
      v11 = v29 - v28 * 0.0;
    }

    if (v31 > 0.0)
    {
      v39 = v27;
    }

    else
    {
      v39 = v27 * 0.0 - v29 * 0.0;
    }

    if (v38)
    {
      v35 = v28 * 0.0 - v27;
    }

    else
    {
      v35 = v28 * 0.0 - v27 * 0.0;
    }

    v40 = sqrt(v11 * v11 + v30 + v35 * v35);
    v57 = v33;
    if (fabs(v40) < 0.000000100000001)
    {
      v55 = v39;
    }

    else
    {
      v11 = v11 / v40;
      v55 = v39 / v40;
      v35 = v35 / v40;
    }

    OZChannel::getValueAsDouble((a1 + 26592), a2, 0.0);
    v42 = v41;
    v54 = v41;
    OZChannel::getValueAsDouble((a1 + 26440), a2, 0.0);
    v53 = v43;
    OZChannel::getValueAsDouble((a1 + 26744), a2, 0.0);
    v52 = v44 + (v42 * a6 + v42 * a6) * 3.14159265;
    OZChannel::getValueAsDouble((a1 + 26896), a2, 0.0);
    v46 = fabs(v45);
    if (v45 >= 0.0)
    {
      v47 = a6;
    }

    else
    {
      v47 = 1.0 - a6;
    }

    v48 = exp(-(v46 * v47));
    v49 = __sincos_stret(v52);
    v37 = v49.__sinval * (v53 * v48);
    v33 = v57;
    v32 = v58;
    v34 = v55;
    v36 = v54 * (v49.__cosval * (v53 * 6.28318531 * v48 / v58));
    v26 = v56;
  }

  v50 = v15 + v28 * a6 + v34 * v37 + a3[1];
  *a3 = *a3 + v59 + v27 * a6 + v11 * v37;
  a3[1] = v50;
  a3[2] = v26 + v29 * a6 + v35 * v37 + a3[2];
  if (v33 >= 0.000000100000001)
  {
    v27 = v27 / v32;
    v28 = v28 / v32;
    v29 = v29 / v32;
  }

  a4->f64[0] = v11 - v36 * v27;
  a4->f64[1] = v34 - v36 * v28;
  a4[1].f64[0] = v35 - v36 * v29;
  PCVector3<double>::normalize(a4, 0.000000100000001);
  a5->f64[0] = v35 * v28 - v34 * v29;
  a5->f64[1] = v11 * v29 - v35 * v27;
  a5[1].f64[0] = v34 * v27 - v11 * v28;

  return PCVector3<double>::normalize(a5, 0.000000100000001);
}

BOOL PSEmitter::isOrderByRowColStack(PSEmitter *this)
{
  if (OZChannel::getValueAsInt((this + 19232), MEMORY[0x277CC08F0], 0.0) != 11 || OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    return 0;
  }

  v3 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 21984), MEMORY[0x277CC08F0], 0.0);
  v5 = OZChannel::getValueAsInt((this + 21728), v3, 0.0);
  if (ValueAsInt)
  {
    v6 = v5 >= 8;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

BOOL PSEmitter::genPosFilledSphere(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64x2_t *a4, float64_t a5, float64_t a6, double a7)
{
  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v11 = v10 * v10;
  v12.f64[0] = a5;
  v12.f64[1] = a6;
  v13 = vaddq_f64(v12, v12);
  __asm { FMOV            V3.2D, #-1.0 }

  v19 = vmulq_n_f64(vaddq_f64(v13, _Q3), v10);
  v20 = (a7 + a7 + -1.0) * v10;
  v21 = v20 * v20 + vaddvq_f64(vmulq_f64(v19, v19));
  if (v21 <= v11)
  {
    *a3 = vaddq_f64(v19, *a3);
    a3[1].f64[0] = v20 + a3[1].f64[0];
    if (fabs(v21) >= 0.0000001)
    {
      v22 = sqrt(v21);
      if (fabs(v22) >= 0.000000100000001)
      {
        v19 = vdivq_f64(v19, vdupq_lane_s64(*&v22, 0));
        v20 = v20 / v22;
      }

      *a4 = v19;
      a4[1].f64[0] = v20;
    }
  }

  return v21 <= v11;
}

uint64_t PSEmitter::genOrderFilledCircle(PSEmitter *this, float64x2_t a2, double a3, float64_t a4, const CMTime *a5, double *a6, double *a7)
{
  a2.f64[1] = a4;
  __asm { FMOV            V2.2D, #-1.0 }

  v14 = vaddq_f64(vaddq_f64(a2, a2), _Q2);
  v15 = vmulq_f64(v14, v14);
  v16 = sqrt(v15.f64[0] + (a3 + a3 + -1.0) * (a3 + a3 + -1.0) + v15.f64[1]);
  result = OZChannel::getValueAsInt((this + 22752), a5, 0.0);
  v18 = 1.0 - v16;
  if (result != 1)
  {
    v18 = v16;
  }

  *a6 = v18;
  if (a7)
  {
    *a7 = -1.0;
  }

  return result;
}

void PSEmitter::genOrderFilledBox(PSEmitter *this, float64_t a2, double a3, float64_t a4, int a5, int a6, int a7, const CMTime *a8, double *a9, double *a10)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 21728), a8, 0.0);
  v19 = OZChannel::getValueAsInt((this + 21984), a8, 0.0);
  if (OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (ValueAsInt == 14)
  {
    v21.f64[0] = a2;
    v21.f64[1] = a4;
    __asm { FMOV            V0.2D, #-0.5 }

    v26 = vaddq_f64(v21, _Q0);
    v27 = vaddq_f64(v26, v26);
    v28 = vmulq_f64(v27, v27);
    v29 = sqrt(v28.f64[0] + (a3 + -0.5 + a3 + -0.5) * (a3 + -0.5 + a3 + -0.5) + v28.f64[1]);
    v30 = 1.73205081;
LABEL_19:
    v36 = v29 / v30;
    goto LABEL_20;
  }

  if ((ValueAsInt - 15) <= 2)
  {
    v31 = a2 + -0.5 + a2 + -0.5;
    v32 = a3 + -0.5 + a3 + -0.5;
    v33 = a4 + -0.5 + a4 + -0.5;
    if (ValueAsInt == 16)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = a3 + -0.5 + a3 + -0.5;
    }

    if (ValueAsInt == 16)
    {
      v35 = a4 + -0.5 + a4 + -0.5;
    }

    else
    {
      v35 = 0.0;
    }

    if (ValueAsInt == 15)
    {
      v31 = 0.0;
    }

    else
    {
      v32 = v34;
    }

    if (ValueAsInt != 15)
    {
      v33 = v35;
    }

    v29 = sqrt(v31 * v31 + v32 * v32 + v33 * v33);
    v30 = 1.41421356;
    goto LABEL_19;
  }

  if (v20)
  {
    _ZF = (ValueAsInt & 0xFFFFFFFC) == 8;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF || (ValueAsInt & 0xFFFFFFFE) == 12)
  {
    if (ValueAsInt > 0xD)
    {
      v46 = 1.0;
      v40 = 0.0;
      v41 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      v45 = 0.0;
    }

    else
    {
      v40 = dbl_260856B30[ValueAsInt];
      v41 = dbl_260856BA0[ValueAsInt];
      v42 = dbl_260856C10[ValueAsInt];
      v43 = dbl_260856C80[ValueAsInt];
      v44 = dbl_260856CF0[ValueAsInt];
      v45 = dbl_260856D60[ValueAsInt];
      v46 = dbl_260856DD0[ValueAsInt];
    }

    v36 = (v40 * (a4 - v43) + v41 * (a3 - v44) + v42 * (a2 - v45)) / v46;
LABEL_20:
    *a9 = v36;
    v37 = -1.0;
    if (!a10)
    {
      return;
    }

    goto LABEL_21;
  }

  v47 = vcvtmd_s64_f64((a5 - 1) * a2 + 0.5 + 0.0000001);
  v48 = vcvtmd_s64_f64((a6 - 1) * a3 + 0.5 + 0.0000001);
  v49 = vcvtmd_s64_f64((a7 - 1) * a4 + 0.5 + 0.0000001);
  v50 = a5 - 1 - v47;
  v51 = a6 - 1 - v48;
  if (ValueAsInt == 7)
  {
    v52 = a5 - 1 - v47;
  }

  else
  {
    v52 = v47;
  }

  if (ValueAsInt == 5)
  {
    v53 = a6 - 1 - v48;
  }

  else
  {
    v53 = v48;
  }

  if (ValueAsInt == 5)
  {
    v52 = a5 - 1 - v47;
  }

  v54 = a7 - 1 - v49;
  if (ValueAsInt == 4)
  {
    v55 = a6 - 1 - v48;
  }

  else
  {
    v55 = v48;
  }

  if (ValueAsInt == 3)
  {
    v55 = v48;
    v56 = a5 - 1 - v47;
  }

  else
  {
    v56 = v47;
  }

  if (ValueAsInt == 3)
  {
    v57 = a7 - 1 - v49;
  }

  else
  {
    v57 = v49;
  }

  if (ValueAsInt > 4)
  {
    v58 = v49;
  }

  else
  {
    v53 = v55;
    v52 = v56;
    v58 = v57;
  }

  if (ValueAsInt == 2)
  {
    v49 = a7 - 1 - v49;
  }

  if (ValueAsInt == 1)
  {
    v48 = a6 - 1 - v48;
    v49 = v54;
  }

  else
  {
    v50 = v47;
  }

  if (ValueAsInt)
  {
    v51 = v48;
  }

  else
  {
    v50 = v47;
  }

  if (ValueAsInt)
  {
    v59 = v49;
  }

  else
  {
    v59 = v54;
  }

  if (ValueAsInt <= 2)
  {
    v60 = v51;
  }

  else
  {
    v60 = v53;
  }

  if (ValueAsInt <= 2)
  {
    v61 = v50;
  }

  else
  {
    v61 = v52;
  }

  if (ValueAsInt <= 2)
  {
    v62 = v59;
  }

  else
  {
    v62 = v58;
  }

  if (v20 <= 2)
  {
    if (v20 != 1)
    {
      if (v20 != 2)
      {
        goto LABEL_88;
      }

      v63 = v62;
      v64 = v61;
      v65 = a5;
LABEL_85:
      v62 = v60;
      v66 = a6;
      goto LABEL_90;
    }

    v63 = v62;
    v64 = v60;
    v65 = a6;
LABEL_87:
    v62 = v61;
    v66 = a5;
    goto LABEL_90;
  }

  if (v20 == 3)
  {
    v63 = v60;
    v64 = v62;
    v65 = a7;
    goto LABEL_87;
  }

  if (v20 == 4)
  {
    v63 = v61;
    v64 = v62;
    v65 = a7;
    goto LABEL_85;
  }

  if (v20 != 5)
  {
LABEL_88:
    v63 = v61;
    v64 = v60;
    v65 = a6;
    goto LABEL_89;
  }

  v63 = v60;
  v64 = v61;
  v65 = a5;
LABEL_89:
  v66 = a7;
LABEL_90:
  v67 = (a6 * a5 * a7 - 1);
  v68 = (v62 + (v64 + v65 * v63) * v66) / v67;
  *a9 = v68;
  if (a10)
  {
    __y = 0.0;
    modf(v68 * v67 + 0.0001, &__y);
    v37 = __y;
LABEL_21:
    *a10 = v37;
  }
}

void PSEmitter::genPosFilledBox(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5, float64_t a6, float64_t a7, double a8)
{
  v37 = 0.0;
  v38 = 0.0;
  v36 = 0.0;
  OZChannelScale3D::getValue((a1 + 25392), a2, &v38, &v37, &v36, 0.0);
  v12.f64[0] = a6;
  v12.f64[1] = a7;
  v13 = a8 + a8 + -1.0;
  v14.f64[0] = v38;
  v15 = v13 * v36 * 0.5 + a3[1].f64[0];
  __asm { FMOV            V4.2D, #-1.0 }

  v21 = vaddq_f64(vaddq_f64(v12, v12), _Q4);
  v14.f64[1] = v37;
  __asm { FMOV            V4.2D, #0.5 }

  *a3 = vaddq_f64(vmulq_f64(vmulq_f64(v21, v14), _Q4), *a3);
  a3[1].f64[0] = v15;
  if (a4 && a5)
  {
    a4->f64[1] = 0.0;
    a4->f64[0] = 0.0;
    a4[1].f64[0] = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (vabdd_f64(1.0, fabs(v21.f64[0])) < 0.0000001)
    {
      a4->f64[0] = v21.f64[0];
      v24 = v21.f64[0];
      a4->f64[1] = 0.0;
      a4[1].f64[0] = 0.0;
    }

    if (vabdd_f64(1.0, fabs(v21.f64[1])) < 0.0000001)
    {
      a4->f64[0] = v24;
      a4->f64[1] = v21.f64[1];
      v23 = v21.f64[1];
      a4[1].f64[0] = 0.0;
    }

    if (vabdd_f64(1.0, fabs(v13)) < 0.0000001)
    {
      a4->f64[0] = v24;
      a4->f64[1] = v23;
      a4[1].f64[0] = v13;
    }

    PCVector3<double>::normalize(a4, 0.000000100000001);
    v26 = a4->f64[0];
    v25 = a4->f64[1];
    v27 = a4[1].f64[0];
    v28 = v25 * 0.0 - v27;
    v29 = v27 * 0.0 - a4->f64[0] * 0.0;
    v30 = a4->f64[0] - v25 * 0.0;
    if (v30 * v30 + v28 * v28 + v29 * v29 <= 0.0)
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      *(a5 + 16) = 0xBFF0000000000000;
    }

    else
    {
      v31 = v27 * v29 - v25 * v30;
      v32 = v26 * v30 - v27 * v28;
      v33 = v25 * v28 - v26 * v29;
      *a5 = v31;
      *(a5 + 8) = v32;
      *(a5 + 16) = v33;
      if (v32 < 0.0)
      {
        *a5 = -v31;
        *(a5 + 8) = -v32;
        *(a5 + 16) = -v33;
      }

      PCVector3<double>::normalize(a5, 0.000000100000001);
    }
  }
}

BOOL PSEmitter::isOrderByRowOrCol(PSEmitter *this)
{
  if (OZChannel::getValueAsInt((this + 19232), MEMORY[0x277CC08F0], 0.0) - 7 < 0xFFFFFFFE || OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    return 0;
  }

  v3 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 21472), MEMORY[0x277CC08F0], 0.0);
  v5 = OZChannel::getValueAsInt((this + 21216), v3, 0.0);
  return (ValueAsInt - 1) < 2 && v5 < 4;
}

BOOL PSEmitter::genPosFilledCircle(uint64_t a1, const CMTime *a2, float64x2_t *a3, uint64_t a4, float64_t a5, float64_t a6)
{
  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v9 = v8 * v8;
  v10.f64[0] = a5;
  v10.f64[1] = a6;
  v11 = vaddq_f64(v10, v10);
  __asm { FMOV            V2.2D, #-1.0 }

  v17 = vmulq_n_f64(vaddq_f64(v11, _Q2), v8);
  v18 = vaddvq_f64(vmulq_f64(v17, v17));
  if (v18 <= v9)
  {
    *a3 = vaddq_f64(v17, *a3);
    a3[1].f64[0] = a3[1].f64[0] + 0.0;
    if (fabs(v18) >= 0.0000001)
    {
      *a4 = v17;
      *(a4 + 16) = 0;
      PCVector3<double>::normalize(a4, 0.000000100000001);
    }

    else
    {
      *a4 = xmmword_260342700;
      *(a4 + 16) = 0;
    }
  }

  return v18 <= v9;
}

double PSEmitter::genPosSurfaceSphere(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64x2_t *a4, uint64_t a5, double a6, double a7)
{
  v22 = a7 + a7 + -1.0;
  v21 = sqrt(1.0 - v22 * v22);
  v12 = __sincos_stret(a6 * 6.28318531);
  a4->f64[0] = v12.__cosval * v21;
  a4->f64[1] = -v22;
  v13.f64[0] = v12.__sinval;
  v13.f64[1] = v12.__cosval * v21;
  v14 = vmulq_f64(v13, *&v21);
  a4[1].f64[0] = v14.f64[0];
  v15 = vdupq_lane_s64(*&v14.f64[0], 0);
  v15.f64[0] = v22;
  v16 = vmulq_f64(v15, xmmword_260345040);
  *a5 = vsubq_f64(v16, v14);
  *(a5 + 16) = v12.__cosval * v21 - v16.f64[0];
  PCVector3<double>::normalize(a5, 0.000000100000001);
  v17 = vmulq_f64(*(a5 + 8), *(a5 + 8));
  if (fabs(sqrt(*a5 * *a5 + v17.f64[0] + v17.f64[1])) < 0.0000001)
  {
    *a5 = -v12.__sinval;
    *(a5 + 8) = 0;
    *(a5 + 16) = v12.__cosval;
  }

  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v19 = v18 * a4[1].f64[0];
  *a3 = vaddq_f64(vmulq_n_f64(*a4, v18), *a3);
  result = v19 + a3[1].f64[0];
  a3[1].f64[0] = result;
  return result;
}

void PSEmitter::genOrderFilledRect(PSEmitter *this, float64_t a2, float64_t a3, unsigned int a4, unsigned int a5, const CMTime *a6, double *a7, double *a8)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 21216), a6, 0.0);
  v15 = OZChannel::getValueAsInt((this + 21472), a6, 0.0);
  if (OZChannel::getValueAsInt((this + 19896), MEMORY[0x277CC08F0], 0.0) == 2)
  {
    v15 = 0;
  }

  if (ValueAsInt == 4)
  {
    v16.f64[0] = a2;
    v16.f64[1] = a3;
    __asm { FMOV            V0.2D, #-0.5 }

    v22 = vaddq_f64(v16, _Q0);
    v23 = vaddq_f64(v22, v22);
    v24 = sqrt(vaddvq_f64(vmulq_f64(v23, v23))) / 1.41421356;
    goto LABEL_18;
  }

  if (v15)
  {
    v25 = ValueAsInt - 5 > 3;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    if (ValueAsInt > 8)
    {
      v30 = 1.0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
    }

    else
    {
      v26 = dbl_260856E40[ValueAsInt];
      v27 = dbl_260856E88[ValueAsInt];
      v28 = dbl_260856ED0[ValueAsInt];
      v29 = dbl_260856F18[ValueAsInt];
      v30 = dbl_260856F60[ValueAsInt];
    }

    v24 = (v27 * (a3 - v28) + v26 * (a2 - v29)) / v30;
LABEL_18:
    *a7 = v24;
    v35 = -1.0;
    if (!a8)
    {
      return;
    }

LABEL_33:
    *a8 = v35;
    return;
  }

  v31 = a4 - 1;
  v32 = vcvtmd_s64_f64((a4 - 1) * a2 + 0.5 + 0.0000001);
  v33 = a5 - 1;
  v34 = vcvtmd_s64_f64((a5 - 1) * a3 + 0.5 + 0.0000001);
  switch(ValueAsInt)
  {
    case 3u:
      v32 = v31 - v32;
      break;
    case 1u:
      v32 = v31 - v32;
      v34 = v33 - v34;
      break;
    case 0u:
      v34 = v33 - v34;
      if (v34 >= a5)
      {
        fwrite("WTH\n", 4uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }

      break;
  }

  if (v15 == 1)
  {
    v36 = a4;
  }

  else
  {
    v36 = a5;
  }

  if (v15 == 1)
  {
    v37 = v32;
  }

  else
  {
    v37 = v34;
  }

  if (v15 == 1)
  {
    v38 = v34;
  }

  else
  {
    v38 = v32;
  }

  v39 = (a5 * a4 - 1);
  v40 = (v37 + v38 * v36) / v39;
  *a7 = v40;
  if (a8)
  {
    __y = 0.0;
    modf(v40 * v39 + 0.0001, &__y);
    v35 = __y;
    goto LABEL_33;
  }
}

CGColorSpace **PSEmitter::initPropertiesFromImage(CGColorSpace **this, float64_t a2, float64_t a3, const CMTime *a4, char a5, int a6, PCColor *a7, float64x2_t *a8)
{
  v8.f64[0] = a2;
  v9 = this + 4096;
  *&v10.f64[0] = this[4192];
  if (v10.f64[0] != 0.0 && *(this + 4193) != 0.0)
  {
    if ((a5 & 1) == 0 && (a6 & 1) == 0)
    {
      *&v10.f64[1] = this[4193];
      v8.f64[1] = a3;
      v15 = vmulq_f64(v10, v8);
      __asm { FMOV            V2.2D, #-0.5 }

      *&v15.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v15, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
      v21.i64[0] = SLODWORD(v15.f64[0]);
      v21.i64[1] = SHIDWORD(v15.f64[0]);
      v22 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_s64(v21), vmulq_f64(v10, _Q2))));
      v21.i64[0] = v22.i32[0];
      v21.i64[1] = v22.i32[1];
      *a8 = vaddq_f64(*a8, vcvtq_f64_s64(v21));
      a8[1].f64[0] = a8[1].f64[0] + 0.0;
      return this;
    }

    if (this[4189])
    {
      v48 = v8.f64[0];
      OZChannel::getValueAsDouble((this + 3400), a4, 0.0);
      v24 = vcvtmd_s64_f64(v23 * 255.0 + 0.5 + 0.0000001);
      v25 = (*(*v9[93] + 16))(v9[93]);
      v26 = (*(*v9[93] + 24))(v9[93]);
      v27 = (*(**(v9[93] + 8) + 16))(*(v9[93] + 8));
      v28 = v9[93];
      v29 = (*(v28 + 9) * *(v28 + 10)) >> 3;
      this = PCBitmap::getBytesPerRow(v28);
      v30.f64[0] = v48;
      v31 = vcvtmd_s64_f64(v25 * v48 + 0.0000001);
      v32 = vcvtmd_s64_f64(v26 * a3 + 0.0000001);
      v33 = (v27 + this * (v32 - (v26 == v32)) + v29 * (v31 - (v25 == v31)));
      if (v24 <= *v33 || (a5 & 1) == 0)
      {
        v30.f64[1] = a3;
        v34 = *(v9 + 48);
        v35 = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vmulq_f64(v34, v30), vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
        v36.i64[0] = v35.i32[0];
        v36.i64[1] = v35.i32[1];
        __asm { FMOV            V2.2D, #-0.5 }

        *&v34.f64[0] = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_s64(v36), vmulq_f64(v34, _Q2))));
        v36.i64[0] = SLODWORD(v34.f64[0]);
        v36.i64[1] = SHIDWORD(v34.f64[0]);
        *a8 = vaddq_f64(*a8, vcvtq_f64_s64(v36));
        v38 = a8[1].f64[0] + 0.0;
        a8[1].f64[0] = v38;
        if (a6)
        {
          LOBYTE(v38) = v33[1];
          *&v39 = *&v38 / 255.0;
          v40 = *&v39;
          LOBYTE(v39) = v33[2];
          *&v41 = v39 / 255.0;
          v42 = *&v41;
          LOBYTE(v41) = v33[3];
          *&v43 = v41 / 255.0;
          v44 = *&v43;
          LOBYTE(v43) = *v33;
          v45 = v43 / 255.0;
          PCImage::getColorSpace(v9[93], &v49);
          PCColor::setRGBA(a7 + 2, v40, v42, v44, v45, &v49);
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v49);
        }

        return this;
      }
    }

    else
    {
      this = OZChanObjectManipRef::getObjectID(this + 181);
      if (!this)
      {
        return this;
      }
    }

    v46 = MEMORY[0x277CC08F0];
    *&a7->var0.var1[3] = *MEMORY[0x277CC08F0];
    a7->var1._obj = *(v46 + 16);
  }

  return this;
}

void sub_26029E9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

float64x2_t PSEmitter::genPosFilledRect(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64_t a4, float64_t a5)
{
  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  OZChannelScale3D::getValue((a1 + 25392), a2, &v20, &v19, &v18, 0.0);
  v6.f64[0] = a4;
  v6.f64[1] = a5;
  v7 = vaddq_f64(v6, v6);
  v6.f64[0] = v20;
  __asm { FMOV            V2.2D, #-1.0 }

  v6.f64[1] = v19;
  v13 = vmulq_f64(vaddq_f64(v7, _Q2), v6);
  __asm { FMOV            V1.2D, #0.5 }

  result = vaddq_f64(*a3, vmulq_f64(v13, _Q1));
  *a3 = result;
  return result;
}

void PSEmitter::genOrderRadial(PSEmitter *this, double a2, int a3, const CMTime *a4, double *a5, double *a6)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 22752), a4, 0.0);
  v11 = 1.0 - a2;
  if (ValueAsInt != 1)
  {
    v11 = a2;
  }

  *a5 = v11;
  if (a6)
  {
    __y = 0.0;
    modf(v11 * (a3 - 1) + 0.0001, &__y);
    *a6 = __y;
  }
}

float64x2_t PSEmitter::genPosRadial(uint64_t a1, const CMTime *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v13 = v12;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 25984), a2, 0.0);
  v15 = floor(ValueAsInt * a6 + 0.01 + 0.0000001) / ValueAsInt;
  v16 = v13 * a5;
  if (v15 <= ValueAsInt)
  {
    v17 = (v15 + v15) * 3.14159265;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = __sincos_stret(v17);
  *a4 = v16 * v18.__sinval;
  *(a4 + 8) = -(v16 * v18.__cosval);
  *(a4 + 16) = 0;
  PCVector3<double>::normalize(a4, 0.000000100000001);
  *a3 = *a3 + v16 * v18.__cosval;
  result = vaddq_f64(*(a3 + 8), COERCE_UNSIGNED_INT64(v16 * v18.__sinval));
  *(a3 + 8) = result;
  return result;
}

float64x2_t PSEmitter::genPosSpiral(uint64_t a1, const CMTime *a2, float64x2_t *a3, uint64_t a4, double a5, double a6)
{
  OZChannel::getValueAsDouble((a1 + 23312), a2, 0.0);
  v13 = v12;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 25984), a2, 0.0);
  OZChannel::getValueAsDouble((a1 + 26288), a2, 0.0);
  v15 = floor(ValueAsInt * a6 + 0.01 + 0.0000001);
  v17 = v16 * 6.28318531 * a5;
  v18 = __sincos_stret(v17 + (v15 / ValueAsInt + v15 / ValueAsInt) * 3.14159265);
  *a4 = v13 * v18.__sinval + v17 * (v13 * v18.__cosval);
  *(a4 + 8) = -(v13 * v18.__cosval - v17 * (v13 * v18.__sinval));
  *(a4 + 16) = 0;
  PCVector3<double>::normalize(a4, 0.000000100000001);
  v19.f64[0] = v18.__cosval;
  v19.f64[1] = v18.__sinval;
  result = vaddq_f64(*a3, vmulq_n_f64(v19, v13 * a5));
  *a3 = result;
  return result;
}

uint64_t PSEmitter::getOrderLength(PSEmitter *this, const CMTime *a2)
{
  v2 = *(this + 8396);
  if ((v2 & 0x80000000) != 0)
  {
    *(this + 8396) = 0;
    ValueAsInt = OZChannel::getValueAsInt((this + 19232), a2, 0.0);
    v6 = OZChannel::getValueAsInt((this + 19896), a2, 0.0);
    if (!ValueAsInt)
    {
      v2 = 1;
LABEL_19:
      *(this + 8396) = v2;
      return v2;
    }

    v7 = ValueAsInt - 5;
    v9 = ValueAsInt == 2 || v7 < 2;
    if (v9 && v6 == 0)
    {
      v12 = 20152;
LABEL_17:
      NumEmissionPoints = OZChannel::getValueAsInt((this + v12), a2, 0.0);
      goto LABEL_18;
    }

    if (ValueAsInt == 4)
    {
      NumEmissionPoints = PSEmitter::getNumEmissionPoints(this, a2);
LABEL_18:
      v2 = NumEmissionPoints;
      goto LABEL_19;
    }

    if ((ValueAsInt & 0xFFFFFFF7) == 1)
    {
      v2 = OZChannel::getValueAsInt((this + 20152), a2, 0.0);
      if (OZChannel::getValueAsInt((this + 22240), a2, 0.0) == 2)
      {
        LODWORD(v2) = vcvtpd_s64_f64(vcvtd_n_f64_s32(v2, 1uLL));
      }

      goto LABEL_19;
    }

    if (v6 != 2)
    {
      v9 = 0;
    }

    if (v9)
    {
      OZChannel::getValueAsInt((this + 20152), a2, 0.0);
      OZChannel::getValueAsInt((this + 31784), a2, 0.0);
      operator new[]();
    }

    if (v7 > 1)
    {
      if (ValueAsInt == 11 && v6 < 2 || ValueAsInt == 10 && v6 == 1)
      {
        v16 = OZChannel::getValueAsInt((this + 21728), a2, 0.0);
        if (PSEmitter::isOrderByRowColStack(this))
        {
          v17 = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
          v18 = OZChannel::getValueAsInt((this + 20456), a2, 0.0);
          v2 = v18 * v17 * OZChannel::getValueAsInt((this + 20608), a2, 0.0);
          goto LABEL_19;
        }

        v19 = v16 & 0xFFFFFFFE;
        if ((v16 & 0xFFFFFFFE) == 0xC)
        {
          v12 = 20608;
          goto LABEL_17;
        }

        if (v19 == 10)
        {
          goto LABEL_47;
        }

        if (v19 != 8)
        {
          OZChannel::getValueAsInt((this + 20304), a2, 0.0);
          OZChannel::getValueAsInt((this + 20456), a2, 0.0);
          OZChannel::getValueAsInt((this + 20608), a2, 0.0);
          operator new[]();
        }
      }

      else
      {
        if ((ValueAsInt & 0xFFFFFFFE) == 0xA && v6 == 2)
        {
          OZChannel::getValueAsInt((this + 20152), a2, 0.0);
          OZChannel::getValueAsInt((this + 31784), a2, 0.0);
          operator new[]();
        }

        if (ValueAsInt == 2 && v6 == 1)
        {
          OZChannel::getValueAsInt((this + 20304), a2, 0.0);
          OZChannel::getValueAsInt((this + 20456), a2, 0.0);
          operator new[]();
        }

        if (ValueAsInt != 10 || v6)
        {
          if ((ValueAsInt - 7) > 1)
          {
            v2 = 0;
            goto LABEL_19;
          }

          v12 = 26136;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v14 = OZChannel::getValueAsInt((this + 21216), a2, 0.0);
      if (PSEmitter::isOrderByRowOrCol(this))
      {
        v15 = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
        v2 = OZChannel::getValueAsInt((this + 20456), a2, 0.0) * v15;
        goto LABEL_19;
      }

      if ((v14 - 5) > 1)
      {
        if ((v14 - 7) > 1)
        {
          OZChannel::getValueAsInt((this + 20304), a2, 0.0);
          OZChannel::getValueAsInt((this + 20456), a2, 0.0);
          operator new[]();
        }

LABEL_47:
        v12 = 20456;
        goto LABEL_17;
      }
    }

    v12 = 20304;
    goto LABEL_17;
  }

  return v2;
}

uint64_t PSEmitter::shuffleOrder(PSEmitter *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= 2)
  {
    v8 = this + 0x8000;
    PCMutex::lock((this + 33592));
    if (*(v8 + 113) != __PAIR64__(a4, a3))
    {
      v10 = *(v8 + 112);
      if (v10)
      {
        MEMORY[0x2666E9ED0](v10, 0x1000C8052888210);
      }

      *(v8 + 112) = 0;
      operator new[]();
    }

    a2 = *(*(v8 + 112) + 4 * a2);
    PCMutex::unlock((this + 33592));
  }

  return a2;
}

uint64_t PSEmitter::canAlignRotation(PSEmitter *this, const CMTime *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 19232), a2, 0.0);
  v5 = OZChannel::getValueAsInt((this + 19896), a2, 0.0);
  if (ValueAsInt == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = 0x390u >> ValueAsInt;
    if (ValueAsInt > 9)
    {
      LOBYTE(v7) = 0;
    }

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = ValueAsInt == 10;
    }

    if (v8)
    {
      LOBYTE(v7) = 1;
    }

    if (((ValueAsInt & 0xFFFFFFFB) == 2 || ValueAsInt == 5 || ValueAsInt == 11) && v5 == 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7;
    }
  }

  return v6 & 1;
}

uint64_t PSEmitter::getNumEmissionPoints(PSEmitter *this, const CMTime *a2)
{
  result = (*(*this + 592))(this);
  if (!result)
  {
    return result;
  }

  ValueAsInt = OZChannel::getValueAsInt((this + 19232), a2, 0.0);
  if (!ValueAsInt)
  {
    return 1;
  }

  v6 = ValueAsInt;
  v7 = OZChannel::getValueAsInt((this + 19896), a2, 0.0);
  if ((v6 & 0xFFFFFFF7) == 1)
  {
    goto LABEL_13;
  }

  if (v6 <= 6 && ((1 << v6) & 0x64) != 0)
  {
    if ((v7 & 0xFFFFFFFD) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v6 - 7 <= 1)
  {
    v8 = OZChannel::getValueAsInt((this + 26136), a2, 0.0);
    v9 = 25984;
    return OZChannel::getValueAsInt((this + v9), a2, 0.0) * v8;
  }

  if (v6 == 4)
  {
LABEL_13:

    return OZChannel::getValueAsInt((this + 20152), a2, 0.0);
  }

  if ((v6 & 0xFFFFFFFE) != 0xA)
  {
    v8 = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
    v9 = 20456;
    return OZChannel::getValueAsInt((this + v9), a2, 0.0) * v8;
  }

  if (v7)
  {
    if (v7 != 2)
    {
      if (v7 != 1)
      {
        return 0;
      }

      v10 = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
      v11 = OZChannel::getValueAsInt((this + 20456), a2, 0.0) * v10;
      return v11 * OZChannel::getValueAsInt((this + 20608), a2, 0.0);
    }

    goto LABEL_13;
  }

  v12 = OZChannel::getValueAsInt((this + 20304), a2, 0.0);
  v13 = OZChannel::getValueAsInt((this + 20456), a2, 0.0);
  v14 = v13;
  if (v6 != 11)
  {
    return (v13 * v12);
  }

  v15 = OZChannel::getValueAsInt((this + 20608), a2, 0.0);
  if (v12 <= 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = v12;
  }

  v17 = v16 - 2;
  if (v14 <= 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18 - 2;
  if (v15 <= 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v15;
  }

  return (v14 * v12 * v15 - v19 * v17 * (v20 - 2));
}

void PSEmitter::getSourceBitmap(int a1, void *a2, OZRenderParams *a3)
{
  OZRenderParams::OZRenderParams(&v16, a3);
  OZRenderParams::setImageType(&v16, 1);
  v18 = 1;
  v19 = 0u;
  v20 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v13[0] = _Q0;
  OZRenderParams::setResolution(&v16, v13);
  v17 = a2;
  v16.var5 = 0x3FF0000000000000;
  v19 = 0u;
  v20 = 0u;
  v10 = *a2;
  if (v11)
  {
    v16.var7 = v11;
    (*(*v11 + 1328))(v11);
    v10 = *a2;
  }

  v14[1] = 0;
  v14[0] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  (*(v10 + 16))(a2, v14, a3);
  operator new();
}

void sub_2602A0A64(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(&STACK[0x338]);
  OZRenderGraphState::~OZRenderGraphState(&a9);
  LiGraphBuilder::~LiGraphBuilder(&a68);
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&STACK[0x350]);
  PCSharedCount::~PCSharedCount(v69 + 1);
  if (a2 == 2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
  }

  else
  {
    if (a2 != 1)
    {
      if (STACK[0x3B8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x3B8]);
      }

      PCSharedCount::~PCSharedCount(v68 + 1);
      OZRenderParams::~OZRenderParams(&STACK[0x3F0]);
      _Unwind_Resume(a1);
    }

    v72 = __cxa_begin_catch(a1);
    (*(*v72 + 40))(v72);
    __cxa_end_catch();
  }

  JUMPOUT(0x2602A0A20);
}

void PSEmitter::buildLighting(PSEmitter *this, LiGeode *a2, const LiLightSet *a3, const OZRenderParams *a4)
{
  v8 = this + 0x8000;
  v9 = (*(*this + 168))(this);
  if (v8[944] == 1)
  {
    ValueAsInt = *(v8 + 235);
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(v8 + 235) = ValueAsInt;
    v8[944] = 1;
  }

  if (((ValueAsInt != 0) & v9) == 0)
  {

    OZElement::buildLighting((this + 200), a2, a3, a4);
  }
}

double PSEmitter::setShadowBounds(PSEmitter *this, const OZRenderState *a2, LiMaterialProperties *a3, const LiGeode *a4)
{
  v8 = this + 0x8000;
  v9 = (*(*this + 168))(this);
  if (v8[944] == 1)
  {
    ValueAsInt = *(v8 + 235);
  }

  else
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 32944), MEMORY[0x277CC08F0], 0.0);
    *(v8 + 235) = ValueAsInt;
    v8[944] = 1;
  }

  if (!((ValueAsInt != 0) | v9 & 1))
  {

    *&result = OZElement::setShadowBounds(this + 200, a2, a3, a4).n128_u64[0];
  }

  return result;
}

uint64_t PSEmitter::isValidLightClipPlane(PSEmitter *this)
{
  v1 = (this + 200);
  v2 = (*(*this + 168))(this);
  return OZElement::isValidLightClipPlane(v1) & (v2 ^ 1);
}

uint64_t PSEmitter::isPrecomposed(PSEmitter *this, const CMTime *a2)
{
  result = (*(*this + 168))(this);
  if (result)
  {

    return PSEmitter::shouldPrecompose(this, a2);
  }

  return result;
}

uint64_t non-virtual thunk toPSEmitter::isPrecomposed(PSEmitter *this, const CMTime *a2)
{
  v3 = (this - 200);
  result = (*(*(this - 25) + 168))(this - 200);
  if (result)
  {

    return PSEmitter::shouldPrecompose(v3, a2);
  }

  return result;
}

uint64_t PSEmitter::openMedia(PSEmitter *this)
{
  v2 = (*(*this + 256))(this);
  v3 = (*(*this + 264))(this);
  if (v2 != v3)
  {
    v4 = v3;
    do
    {
      v5 = *(v2 + 16);
      if (v5)
      {
      }

      (*(*v5 + 104))(v5);
      v2 = *(v2 + 8);
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t PSEmitter::prerollBegin(void *a1, CMTime *a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin((a1 + 25), a2, a3, a4, a5);
  v8 = (*(*a1 + 256))(a1);
  v9 = (*(*a1 + 264))(a1);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *(v8 + 16);
      if (v11)
      {
      }

      else
      {
        v12 = 0;
      }

      v13 = a1[26];
      *&v20.value = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v13, &v20);
      v20 = *a2;
      ValueAsInt = OZChannel::getValueAsInt((v12 + 10272), &v20, 0.0);
      v20 = *a2;
      OZChannel::getValueAsDouble((v12 + 10576), &v20, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v16 == 0.0)
      {
        (*(*v12 + 112))(v12, a2, a3, a4, a5);
      }

      v8 = *(v8 + 8);
    }

    while (v8 != v10);
  }

  return 0;
}

uint64_t PSEmitter::prerollEnd(PSEmitter *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this + 200, a2, a3);
  v4 = (*(*this + 256))(this);
  v5 = (*(*this + 264))(this);
  if (v4 != v5)
  {
    v6 = v5;
    v7 = MEMORY[0x277CC08F0];
    do
    {
      v8 = *(v4 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      v10 = *(this + 26);
      v17 = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v10, &v17);
      ValueAsInt = OZChannel::getValueAsInt((v9 + 10272), v7, 0.0);
      OZChannel::getValueAsDouble((v9 + 10576), v7, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v13 == 0.0)
      {
        (*(*v9 + 120))(v9, a2, a3);
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v6);
  }

  return 0;
}

uint64_t PSEmitter::setRate(PSEmitter *this, CMTime *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this + 200, a2, a3, a4);
  v7 = (*(*this + 256))(this);
  v8 = (*(*this + 264))(this);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *(v7 + 16);
      if (v10)
      {
      }

      else
      {
        v11 = 0;
      }

      v12 = *(this + 26);
      *&v18.value = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v12, &v18);
      v18 = *a2;
      ValueAsInt = OZChannel::getValueAsInt((v11 + 10272), &v18, 0.0);
      v18 = *a2;
      OZChannel::getValueAsDouble((v11 + 10576), &v18, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v15 == 0.0)
      {
        (*(*v11 + 128))(v11, a2, a3, a4);
      }

      v7 = *(v7 + 8);
    }

    while (v7 != v9);
  }

  return 0;
}

uint64_t PSEmitter::scheduleTokens(void *a1, CMTime *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  memset(v21, 0, 24);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v21, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(a1[25] + 184))(a1 + 25, a2, v21, a4);
  OZSceneNode::scheduleTokens((a1 + 25), a2, v21, a4, a5);
  v9 = (*(*a1 + 256))(a1);
  for (i = (*(*a1 + 264))(a1); v9 != i; v9 = *(v9 + 8))
  {
    v11 = *(v9 + 16);
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = a1[26];
    *&v20.value = xmmword_26084FA50;
    isKindOfClass = OZFactory::isKindOfClass(v13, &v20);
    v20 = *a2;
    ValueAsInt = OZChannel::getValueAsInt((v12 + 10272), &v20, 0.0);
    v20 = *a2;
    OZChannel::getValueAsDouble((v12 + 10576), &v20, 0.0);
    if (ValueAsInt)
    {
      v17 = 1;
    }

    else
    {
      v17 = isKindOfClass;
    }

    if ((v17 & 1) == 0 && v16 == 0.0)
    {
      if (a5)
      {
        memset(&v20, 0, sizeof(v20));
        (*(*v12 + 136))(v12, a2, v21, a4, &v20);
        value = v20.value;
        if (v20.value != *&v20.timescale)
        {
          std::vector<FFScheduleToken *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<FFScheduleToken **>,std::__wrap_iter<FFScheduleToken **>>(a5, *(a5 + 8), v20.value, *&v20.timescale, (*&v20.timescale - v20.value) >> 3);
          value = v20.value;
        }

        if (value)
        {
          *&v20.timescale = value;
          operator delete(value);
        }
      }

      else
      {
        (*(*v12 + 136))(v12, a2, v21, a4, 0);
      }
    }
  }

  v20.value = v21;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v20);
  return 0;
}

void sub_2602A1B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  a20 = &a17;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t PSEmitter::hintTokensWillImage(void *a1, CMTime *a2, uint64_t *a3, uint64_t a4)
{
  memset(v19, 0, 24);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v19, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(a1[25] + 184))(a1 + 25, a2, v19, a4);
  OZSceneNode::hintTokensWillImage((a1 + 25), a2, a3, a4);
  v8 = (*(*a1 + 256))(a1);
  for (i = (*(*a1 + 264))(a1); v8 != i; v8 = *(v8 + 8))
  {
    v10 = *(v8 + 16);
    if (v10)
    {
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[26];
    *&v18.value = xmmword_26084FA50;
    isKindOfClass = OZFactory::isKindOfClass(v12, &v18);
    v18 = *a2;
    ValueAsInt = OZChannel::getValueAsInt((v11 + 10272), &v18, 0.0);
    v18 = *a2;
    OZChannel::getValueAsDouble((v11 + 10576), &v18, 0.0);
    if (ValueAsInt)
    {
      v16 = 1;
    }

    else
    {
      v16 = isKindOfClass;
    }

    if ((v16 & 1) == 0 && v15 == 0.0)
    {
      (*(*v11 + 144))(v11, a2, a3, a4);
    }
  }

  v18.value = v19;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  return 0;
}

void sub_2602A1E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = &a17;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t PSEmitter::getTokensImage(void *a1, CMTime *a2, uint64_t *a3, uint64_t a4)
{
  memset(v19, 0, 24);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v19, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(a1[25] + 184))(a1 + 25, a2, v19, a4);
  OZSceneNode::getTokensImage((a1 + 25), a2, a3, a4);
  v8 = (*(*a1 + 256))(a1);
  for (i = (*(*a1 + 264))(a1); v8 != i; v8 = *(v8 + 8))
  {
    v10 = *(v8 + 16);
    if (v10)
    {
    }

    else
    {
      v11 = 0;
    }

    v12 = a1[26];
    *&v18.value = xmmword_26084FA50;
    isKindOfClass = OZFactory::isKindOfClass(v12, &v18);
    v18 = *a2;
    ValueAsInt = OZChannel::getValueAsInt((v11 + 10272), &v18, 0.0);
    v18 = *a2;
    OZChannel::getValueAsDouble((v11 + 10576), &v18, 0.0);
    if (ValueAsInt)
    {
      v16 = 1;
    }

    else
    {
      v16 = isKindOfClass;
    }

    if ((v16 & 1) == 0 && v15 == 0.0)
    {
      (*(*v11 + 152))(v11, a2, a3, a4);
    }
  }

  v18.value = v19;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  return 0;
}

void sub_2602A2100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void **a20)
{
  a20 = &a17;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void PSEmitter::pruneTokensAtTime(PSEmitter *this, CMTime *a2, const char *a3)
{
  v15 = *a2;
  OZSceneNode::pruneTokensAtTime(this + 200, &v15, a3);
  v5 = (*(*this + 256))(this);
  v6 = (*(*this + 264))(this);
  if (v5 != v6)
  {
    v7 = v6;
    do
    {
      v8 = *(v5 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      v10 = *(this + 26);
      *&v15.value = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v10, &v15);
      ValueAsInt = OZChannel::getValueAsInt((v9 + 10272), a2, 0.0);
      OZChannel::getValueAsDouble((v9 + 10576), a2, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v13 == 0.0)
      {
        v15 = *a2;
        (*(*v9 + 160))(v9, &v15, a3);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v7);
  }
}

void PSEmitter::pruneTokensExceptAtTime(PSEmitter *this, CMTime *a2, const char *a3)
{
  v15 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this + 200, &v15, a3);
  v5 = (*(*this + 256))(this);
  v6 = (*(*this + 264))(this);
  if (v5 != v6)
  {
    v7 = v6;
    do
    {
      v8 = *(v5 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      v10 = *(this + 26);
      *&v15.value = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v10, &v15);
      ValueAsInt = OZChannel::getValueAsInt((v9 + 10272), a2, 0.0);
      OZChannel::getValueAsDouble((v9 + 10576), a2, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v13 == 0.0)
      {
        v15 = *a2;
        (*(*v9 + 168))(v9, &v15, a3);
      }

      v5 = *(v5 + 8);
    }

    while (v5 != v7);
  }
}

void PSEmitter::pruneAllTokens(PSEmitter *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this + 200, a2);
  v3 = (*(*this + 256))(this);
  v4 = (*(*this + 264))(this);
  if (v3 != v4)
  {
    v5 = v4;
    v6 = MEMORY[0x277CC08F0];
    do
    {
      v7 = *(v3 + 16);
      if (v7)
      {
      }

      else
      {
        v8 = 0;
      }

      v9 = *(this + 26);
      v14 = xmmword_26084FA50;
      isKindOfClass = OZFactory::isKindOfClass(v9, &v14);
      ValueAsInt = OZChannel::getValueAsInt((v8 + 10272), v6, 0.0);
      OZChannel::getValueAsDouble((v8 + 10576), v6, 0.0);
      if ((isKindOfClass & 1) == 0 && !ValueAsInt && v12 == 0.0)
      {
        (*(*v8 + 176))(v8, a2);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v5);
  }
}

PSEmitter::RenderParams *PSEmitter::RenderParams::RenderParams(PSEmitter::RenderParams *this, const OZRenderParams *a2)
{
  *(this + 1) = a2;
  OZRenderParams::OZRenderParams((this + 16), a2);
  LiClipSet::LiClipSet((this + 1440));
  *(this + 203) = 0x3FF0000000000000;
  *(this + 198) = 0x3FF0000000000000;
  *(this + 193) = 0x3FF0000000000000;
  *(this + 188) = 0x3FF0000000000000;
  *(this + 1512) = 0u;
  *(this + 1528) = 0u;
  *(this + 97) = 0u;
  *(this + 98) = 0u;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 219) = 0x3FF0000000000000;
  *(this + 214) = 0x3FF0000000000000;
  *(this + 209) = 0x3FF0000000000000;
  *(this + 204) = 0x3FF0000000000000;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 105) = 0u;
  *(this + 106) = 0u;
  *(this + 1720) = 0u;
  *(this + 1736) = 0u;
  *(this + 228) = 0;
  *(this + 113) = 0u;
  *(this + 112) = 0u;
  *(this + 111) = 0u;
  *(this + 110) = 0u;
  OZRenderParams::setImageType(this + 16, 2);
  *(this + 376) = 1;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v9 = _Q0;
  OZRenderParams::setResolution(this + 1, &v9);
  return this;
}

uint64_t PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(PSEmitter::PSEmitter_emitPatternChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(void)::PSEmitter_emitPatternChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(void)::PSEmitter_emitPatternChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_emitPatternChanImpl::_PSEmitter_emitPatternChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emitPatternChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_emitPatternChanImpl::_PSEmitter_emitPatternChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numPointsChanImpl::getInstance(PSEmitter::PSEmitter_numPointsChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsChanImpl::getInstance(void)::PSEmitter_numPointsChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsChanImpl::getInstance(void)::PSEmitter_numPointsChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsChanImpl::_PSEmitter_numPointsChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsChanImpl::_PSEmitter_numPointsChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numPointsChanInfo::getInstance(PSEmitter::PSEmitter_numPointsChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsChanInfo::getInstance(void)::PSEmitter_numPointsChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsChanInfo::getInstance(void)::PSEmitter_numPointsChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsChanInfo::_PSEmitter_numPointsChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsChanInfo::_PSEmitter_numPointsChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_numPointsChanInfo *PSEmitter::PSEmitter_numPointsChanInfo::PSEmitter_numPointsChanInfo(PSEmitter::PSEmitter_numPointsChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 20.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D06B8;
  *(this + 10) = &unk_2872D06D8;
  return this;
}

uint64_t PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(PSEmitter::PSEmitter_numPointsUChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(void)::PSEmitter_numPointsUChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(void)::PSEmitter_numPointsUChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsUChanImpl::_PSEmitter_numPointsUChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsUChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsUChanImpl::_PSEmitter_numPointsUChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(PSEmitter::PSEmitter_numPointsUChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(void)::PSEmitter_numPointsUChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(void)::PSEmitter_numPointsUChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsUChanInfo::_PSEmitter_numPointsUChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsUChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsUChanInfo::_PSEmitter_numPointsUChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_numPointsUChanInfo *PSEmitter::PSEmitter_numPointsUChanInfo::PSEmitter_numPointsUChanInfo(PSEmitter::PSEmitter_numPointsUChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 20.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D07A8;
  *(this + 10) = &unk_2872D07C8;
  return this;
}

uint64_t PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(PSEmitter::PSEmitter_numPointsVChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(void)::PSEmitter_numPointsVChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(void)::PSEmitter_numPointsVChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsVChanImpl::_PSEmitter_numPointsVChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsVChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsVChanImpl::_PSEmitter_numPointsVChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(PSEmitter::PSEmitter_numPointsVChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(void)::PSEmitter_numPointsVChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(void)::PSEmitter_numPointsVChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsVChanInfo::_PSEmitter_numPointsVChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsVChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsVChanInfo::_PSEmitter_numPointsVChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_numPointsVChanInfo *PSEmitter::PSEmitter_numPointsVChanInfo::PSEmitter_numPointsVChanInfo(PSEmitter::PSEmitter_numPointsVChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 20.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D0898;
  *(this + 10) = &unk_2872D08B8;
  return this;
}

uint64_t PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(PSEmitter::PSEmitter_numPointsWChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(void)::PSEmitter_numPointsWChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(void)::PSEmitter_numPointsWChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsWChanImpl::_PSEmitter_numPointsWChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsWChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsWChanImpl::_PSEmitter_numPointsWChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(PSEmitter::PSEmitter_numPointsWChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(void)::PSEmitter_numPointsWChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(void)::PSEmitter_numPointsWChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numPointsWChanInfo::_PSEmitter_numPointsWChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numPointsWChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numPointsWChanInfo::_PSEmitter_numPointsWChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_numPointsWChanInfo *PSEmitter::PSEmitter_numPointsWChanInfo::PSEmitter_numPointsWChanInfo(PSEmitter::PSEmitter_numPointsWChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 20.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D0988;
  *(this + 10) = &unk_2872D09A8;
  return this;
}

uint64_t PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(PSEmitter::PSEmitter_strokeWidthChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(void)::PSEmitter_strokeWidthChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(void)::PSEmitter_strokeWidthChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_strokeWidthChanImpl::_PSEmitter_strokeWidthChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_strokeWidthChanImpl::_PSEmitter_strokeWidthChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(PSEmitter::PSEmitter_strokeWidthChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(void)::PSEmitter_strokeWidthChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(void)::PSEmitter_strokeWidthChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_strokeWidthChanInfo::_PSEmitter_strokeWidthChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_strokeWidthChanInfo::_PSEmitter_strokeWidthChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_strokeWidthChanInfo *PSEmitter::PSEmitter_strokeWidthChanInfo::PSEmitter_strokeWidthChanInfo(PSEmitter::PSEmitter_strokeWidthChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 4.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D0A78;
  *(this + 10) = &unk_2872D0A98;
  return this;
}

uint64_t PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(PSEmitter::PSEmitter_strokeWidthOSChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(void)::PSEmitter_strokeWidthOSChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(void)::PSEmitter_strokeWidthOSChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_strokeWidthOSChanImpl::_PSEmitter_strokeWidthOSChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthOSChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_strokeWidthOSChanImpl::_PSEmitter_strokeWidthOSChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(PSEmitter::PSEmitter_strokeWidthOSChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(void)::PSEmitter_strokeWidthOSChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(void)::PSEmitter_strokeWidthOSChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_strokeWidthOSChanInfo::_PSEmitter_strokeWidthOSChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_strokeWidthOSChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_strokeWidthOSChanInfo::_PSEmitter_strokeWidthOSChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_strokeWidthOSChanInfo *PSEmitter::PSEmitter_strokeWidthOSChanInfo::PSEmitter_strokeWidthOSChanInfo(PSEmitter::PSEmitter_strokeWidthOSChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 4.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D0B68;
  *(this + 10) = &unk_2872D0B88;
  return this;
}

uint64_t PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(PSEmitter::PSEmitter_tileOffsetChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(void)::PSEmitter_tileOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(void)::PSEmitter_tileOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_tileOffsetChanImpl::_PSEmitter_tileOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tileOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_tileOffsetChanImpl::_PSEmitter_tileOffsetChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(PSEmitter::PSEmitter_tileOffsetChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(void)::PSEmitter_tileOffsetChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(void)::PSEmitter_tileOffsetChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_tileOffsetChanInfo::_PSEmitter_tileOffsetChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tileOffsetChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_tileOffsetChanInfo::_PSEmitter_tileOffsetChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_tileOffsetChanInfo *PSEmitter::PSEmitter_tileOffsetChanInfo::PSEmitter_tileOffsetChanInfo(PSEmitter::PSEmitter_tileOffsetChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D0C58;
  *(this + 10) = &unk_2872D0C78;
  return this;
}

uint64_t PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(PSEmitter::PSEmitter_rectBuildOriginChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(void)::PSEmitter_rectBuildOriginChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(void)::PSEmitter_rectBuildOriginChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_rectBuildOriginChanImpl::_PSEmitter_rectBuildOriginChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_rectBuildOriginChanImpl::_PSEmitter_rectBuildOriginChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(PSEmitter::PSEmitter_rectBuildStyleChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(void)::PSEmitter_rectBuildStyleChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(void)::PSEmitter_rectBuildStyleChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_rectBuildStyleChanImpl::_PSEmitter_rectBuildStyleChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectBuildStyleChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_rectBuildStyleChanImpl::_PSEmitter_rectBuildStyleChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(PSEmitter::PSEmitter_boxBuildOriginChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(void)::PSEmitter_boxBuildOriginChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(void)::PSEmitter_boxBuildOriginChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_boxBuildOriginChanImpl::_PSEmitter_boxBuildOriginChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_boxBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_boxBuildOriginChanImpl::_PSEmitter_boxBuildOriginChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(PSEmitter::PSEmitter_boxBuildStyleChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(void)::PSEmitter_boxBuildStyleChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(void)::PSEmitter_boxBuildStyleChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_boxBuildStyleChanImpl::_PSEmitter_boxBuildStyleChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_boxBuildStyleChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_boxBuildStyleChanImpl::_PSEmitter_boxBuildStyleChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(PSEmitter::PSEmitter_openBuildOriginChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(void)::PSEmitter_openBuildOriginChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(void)::PSEmitter_openBuildOriginChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_openBuildOriginChanImpl::_PSEmitter_openBuildOriginChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_openBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_openBuildOriginChanImpl::_PSEmitter_openBuildOriginChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(PSEmitter::PSEmitter_closedBuildOriginChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(void)::PSEmitter_closedBuildOriginChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(void)::PSEmitter_closedBuildOriginChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_closedBuildOriginChanImpl::_PSEmitter_closedBuildOriginChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_closedBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_closedBuildOriginChanImpl::_PSEmitter_closedBuildOriginChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(PSEmitter::PSEmitter_radialBuildOriginChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(void)::PSEmitter_radialBuildOriginChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(void)::PSEmitter_radialBuildOriginChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_radialBuildOriginChanImpl::_PSEmitter_radialBuildOriginChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radialBuildOriginChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_radialBuildOriginChanImpl::_PSEmitter_radialBuildOriginChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(PSEmitter::PSEmitter_outlineOffsetChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(void)::PSEmitter_outlineOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(void)::PSEmitter_outlineOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_outlineOffsetChanImpl::_PSEmitter_outlineOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_outlineOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_outlineOffsetChanImpl::_PSEmitter_outlineOffsetChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(PSEmitter::PSEmitter_outlineOffsetChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(void)::PSEmitter_outlineOffsetChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(void)::PSEmitter_outlineOffsetChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_outlineOffsetChanInfo::_PSEmitter_outlineOffsetChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_outlineOffsetChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_outlineOffsetChanInfo::_PSEmitter_outlineOffsetChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_outlineOffsetChanInfo *PSEmitter::PSEmitter_outlineOffsetChanInfo::PSEmitter_outlineOffsetChanInfo(PSEmitter::PSEmitter_outlineOffsetChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -2.0, 2.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1090;
  *(this + 10) = &unk_2872D10B0;
  return this;
}

uint64_t PSEmitter::PSEmitter_radiusChanImpl::getInstance(PSEmitter::PSEmitter_radiusChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_radiusChanImpl::getInstance(void)::PSEmitter_radiusChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_radiusChanImpl::getInstance(void)::PSEmitter_radiusChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radiusChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_radiusChanImpl::_PSEmitter_radiusChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radiusChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_radiusChanImpl::_PSEmitter_radiusChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_radiusChanInfo::getInstance(PSEmitter::PSEmitter_radiusChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_radiusChanInfo::getInstance(void)::PSEmitter_radiusChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_radiusChanInfo::getInstance(void)::PSEmitter_radiusChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radiusChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_radiusChanInfo::_PSEmitter_radiusChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_radiusChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_radiusChanInfo::_PSEmitter_radiusChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_radiusChanInfo *PSEmitter::PSEmitter_radiusChanInfo::PSEmitter_radiusChanInfo(PSEmitter::PSEmitter_radiusChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1180;
  *(this + 10) = &unk_2872D11A0;
  return this;
}

uint64_t PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(PSEmitter::PSEmitter_rectWidthChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(void)::PSEmitter_rectWidthChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(void)::PSEmitter_rectWidthChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_rectWidthChanImpl::_PSEmitter_rectWidthChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectWidthChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_rectWidthChanImpl::_PSEmitter_rectWidthChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(PSEmitter::PSEmitter_rectSizeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(void)::PSEmitter_rectSizeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(void)::PSEmitter_rectSizeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_rectSizeChanImpl::_PSEmitter_rectSizeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectSizeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_rectSizeChanImpl::_PSEmitter_rectSizeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(PSEmitter::PSEmitter_rectSizeChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(void)::PSEmitter_rectSizeChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(void)::PSEmitter_rectSizeChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_rectSizeChanInfo::_PSEmitter_rectSizeChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_rectSizeChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_rectSizeChanInfo::_PSEmitter_rectSizeChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_rectSizeChanInfo *PSEmitter::PSEmitter_rectSizeChanInfo::PSEmitter_rectSizeChanInfo(PSEmitter::PSEmitter_rectSizeChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1000.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D12E8;
  *(this + 10) = &unk_2872D1308;
  return this;
}

uint64_t PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(PSEmitter::PSEmitter_numRadialArmsChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(void)::PSEmitter_numRadialArmsChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(void)::PSEmitter_numRadialArmsChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numRadialArmsChanImpl::_PSEmitter_numRadialArmsChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numRadialArmsChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numRadialArmsChanImpl::_PSEmitter_numRadialArmsChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(PSEmitter::PSEmitter_numRadialArmsChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(void)::PSEmitter_numRadialArmsChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(void)::PSEmitter_numRadialArmsChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_numRadialArmsChanInfo::_PSEmitter_numRadialArmsChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_numRadialArmsChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_numRadialArmsChanInfo::_PSEmitter_numRadialArmsChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_numRadialArmsChanInfo *PSEmitter::PSEmitter_numRadialArmsChanInfo::PSEmitter_numRadialArmsChanInfo(PSEmitter::PSEmitter_numRadialArmsChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D13D8;
  *(this + 10) = &unk_2872D13F8;
  return this;
}

uint64_t PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(PSEmitter::PSEmitter_pointsPerArmChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(void)::PSEmitter_pointsPerArmChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(void)::PSEmitter_pointsPerArmChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_pointsPerArmChanImpl::_PSEmitter_pointsPerArmChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_pointsPerArmChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_pointsPerArmChanImpl::_PSEmitter_pointsPerArmChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(PSEmitter::PSEmitter_pointsPerArmChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(void)::PSEmitter_pointsPerArmChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(void)::PSEmitter_pointsPerArmChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_pointsPerArmChanInfo::_PSEmitter_pointsPerArmChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_pointsPerArmChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_pointsPerArmChanInfo::_PSEmitter_pointsPerArmChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_pointsPerArmChanInfo *PSEmitter::PSEmitter_pointsPerArmChanInfo::PSEmitter_pointsPerArmChanInfo(PSEmitter::PSEmitter_pointsPerArmChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 25.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D14C8;
  *(this + 10) = &unk_2872D14E8;
  return this;
}

uint64_t PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(PSEmitter::PSEmitter_spiralCoeffChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(void)::PSEmitter_spiralCoeffChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(void)::PSEmitter_spiralCoeffChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_spiralCoeffChanImpl::_PSEmitter_spiralCoeffChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spiralCoeffChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_spiralCoeffChanImpl::_PSEmitter_spiralCoeffChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(PSEmitter::PSEmitter_spiralCoeffChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(void)::PSEmitter_spiralCoeffChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(void)::PSEmitter_spiralCoeffChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_spiralCoeffChanInfo::_PSEmitter_spiralCoeffChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spiralCoeffChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_spiralCoeffChanInfo::_PSEmitter_spiralCoeffChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_spiralCoeffChanInfo *PSEmitter::PSEmitter_spiralCoeffChanInfo::PSEmitter_spiralCoeffChanInfo(PSEmitter::PSEmitter_spiralCoeffChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -2.0, 2.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D15B8;
  *(this + 10) = &unk_2872D15D8;
  return this;
}

uint64_t PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(PSEmitter::PSEmitter_waveAmplitudeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(void)::PSEmitter_waveAmplitudeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(void)::PSEmitter_waveAmplitudeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_waveAmplitudeChanImpl::_PSEmitter_waveAmplitudeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveAmplitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_waveAmplitudeChanImpl::_PSEmitter_waveAmplitudeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(PSEmitter::PSEmitter_waveFrequencyChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(void)::PSEmitter_waveFrequencyChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(void)::PSEmitter_waveFrequencyChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_waveFrequencyChanImpl::_PSEmitter_waveFrequencyChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveFrequencyChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_waveFrequencyChanImpl::_PSEmitter_waveFrequencyChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(PSEmitter::PSEmitter_waveFrequencyChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(void)::PSEmitter_waveFrequencyChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(void)::PSEmitter_waveFrequencyChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_waveFrequencyChanInfo::_PSEmitter_waveFrequencyChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveFrequencyChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_waveFrequencyChanInfo::_PSEmitter_waveFrequencyChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_waveFrequencyChanInfo *PSEmitter::PSEmitter_waveFrequencyChanInfo::PSEmitter_waveFrequencyChanInfo(PSEmitter::PSEmitter_waveFrequencyChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1720;
  *(this + 10) = &unk_2872D1740;
  return this;
}

uint64_t PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(PSEmitter::PSEmitter_wavePhaseChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(void)::PSEmitter_wavePhaseChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(void)::PSEmitter_wavePhaseChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_wavePhaseChanInfo::_PSEmitter_wavePhaseChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_wavePhaseChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_wavePhaseChanInfo::_PSEmitter_wavePhaseChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_wavePhaseChanInfo *PSEmitter::PSEmitter_wavePhaseChanInfo::PSEmitter_wavePhaseChanInfo(PSEmitter::PSEmitter_wavePhaseChanInfo *this)
{
  PCString::PCString(&v3, "°");
  OZChannelInfo::OZChannelInfo(this, -3.40282347e38, 360.0, 0.0174532925, 0.000174532925, 57.2957795, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1798;
  *(this + 10) = &unk_2872D17B8;
  return this;
}

uint64_t PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(PSEmitter::PSEmitter_waveDampingChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(void)::PSEmitter_waveDampingChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(void)::PSEmitter_waveDampingChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_waveDampingChanImpl::_PSEmitter_waveDampingChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveDampingChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_waveDampingChanImpl::_PSEmitter_waveDampingChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(PSEmitter::PSEmitter_waveDampingChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(void)::PSEmitter_waveDampingChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(void)::PSEmitter_waveDampingChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_waveDampingChanInfo::_PSEmitter_waveDampingChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_waveDampingChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_waveDampingChanInfo::_PSEmitter_waveDampingChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_waveDampingChanInfo *PSEmitter::PSEmitter_waveDampingChanInfo::PSEmitter_waveDampingChanInfo(PSEmitter::PSEmitter_waveDampingChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -10.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1888;
  *(this + 10) = &unk_2872D18A8;
  return this;
}

uint64_t PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(PSEmitter::PSEmitter_emissionLatitudeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(void)::PSEmitter_emissionLatitudeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(void)::PSEmitter_emissionLatitudeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_emissionLatitudeChanImpl::_PSEmitter_emissionLatitudeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionLatitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_emissionLatitudeChanImpl::_PSEmitter_emissionLatitudeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(PSEmitter::PSEmitter_emissionLongitudeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(void)::PSEmitter_emissionLongitudeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(void)::PSEmitter_emissionLongitudeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_emissionLongitudeChanImpl::_PSEmitter_emissionLongitudeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionLongitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_emissionLongitudeChanImpl::_PSEmitter_emissionLongitudeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(PSEmitter::PSEmitter_emissionRangeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(void)::PSEmitter_emissionRangeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(void)::PSEmitter_emissionRangeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_emissionRangeChanImpl::_PSEmitter_emissionRangeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_emissionRangeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_emissionRangeChanImpl::_PSEmitter_emissionRangeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_birthRateChanImpl::getInstance(PSEmitter::PSEmitter_birthRateChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_birthRateChanImpl::getInstance(void)::PSEmitter_birthRateChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_birthRateChanImpl::getInstance(void)::PSEmitter_birthRateChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_birthRateChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_birthRateChanImpl::_PSEmitter_birthRateChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_birthRateChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_birthRateChanImpl::_PSEmitter_birthRateChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_birthRateChanInfo::getInstance(PSEmitter::PSEmitter_birthRateChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_birthRateChanInfo::getInstance(void)::PSEmitter_birthRateChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_birthRateChanInfo::getInstance(void)::PSEmitter_birthRateChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_birthRateChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_birthRateChanInfo::_PSEmitter_birthRateChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_birthRateChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_birthRateChanInfo::_PSEmitter_birthRateChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_birthRateChanInfo *PSEmitter::PSEmitter_birthRateChanInfo::PSEmitter_birthRateChanInfo(PSEmitter::PSEmitter_birthRateChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1AE0;
  *(this + 10) = &unk_2872D1B00;
  return this;
}

uint64_t PSEmitter::PSEmitter_initialNumChanImpl::getInstance(PSEmitter::PSEmitter_initialNumChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_initialNumChanImpl::getInstance(void)::PSEmitter_initialNumChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_initialNumChanImpl::getInstance(void)::PSEmitter_initialNumChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_initialNumChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_initialNumChanImpl::_PSEmitter_initialNumChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_initialNumChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_initialNumChanImpl::_PSEmitter_initialNumChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(PSEmitter::PSEmitter_lifetimeChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(void)::PSEmitter_lifetimeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(void)::PSEmitter_lifetimeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_lifetimeChanImpl::_PSEmitter_lifetimeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_lifetimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_lifetimeChanImpl::_PSEmitter_lifetimeChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(PSEmitter::PSEmitter_lifetimeChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(void)::PSEmitter_lifetimeChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(void)::PSEmitter_lifetimeChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_lifetimeChanInfo::_PSEmitter_lifetimeChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_lifetimeChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_lifetimeChanInfo::_PSEmitter_lifetimeChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_lifetimeChanInfo *PSEmitter::PSEmitter_lifetimeChanInfo::PSEmitter_lifetimeChanInfo(PSEmitter::PSEmitter_lifetimeChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1C48;
  *(this + 10) = &unk_2872D1C68;
  return this;
}

uint64_t PSEmitter::PSEmitter_speedChanImpl::getInstance(PSEmitter::PSEmitter_speedChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_speedChanImpl::getInstance(void)::PSEmitter_speedChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_speedChanImpl::getInstance(void)::PSEmitter_speedChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_speedChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_speedChanImpl::_PSEmitter_speedChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_speedChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_speedChanImpl::_PSEmitter_speedChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_speedChanInfo::getInstance(PSEmitter::PSEmitter_speedChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_speedChanInfo::getInstance(void)::PSEmitter_speedChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_speedChanInfo::getInstance(void)::PSEmitter_speedChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_speedChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_speedChanInfo::_PSEmitter_speedChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_speedChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_speedChanInfo::_PSEmitter_speedChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_speedChanInfo *PSEmitter::PSEmitter_speedChanInfo::PSEmitter_speedChanInfo(PSEmitter::PSEmitter_speedChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1D38;
  *(this + 10) = &unk_2872D1D58;
  return this;
}

uint64_t PSEmitter::PSEmitter_spinChanImpl::getInstance(PSEmitter::PSEmitter_spinChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_spinChanImpl::getInstance(void)::PSEmitter_spinChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_spinChanImpl::getInstance(void)::PSEmitter_spinChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spinChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_spinChanImpl::_PSEmitter_spinChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spinChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_spinChanImpl::_PSEmitter_spinChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_spinChanInfo::getInstance(PSEmitter::PSEmitter_spinChanInfo *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_spinChanInfo::getInstance(void)::PSEmitter_spinChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_spinChanInfo::getInstance(void)::PSEmitter_spinChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spinChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_spinChanInfo::_PSEmitter_spinChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_spinChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_spinChanInfo::_PSEmitter_spinChanInfo)
  {
    operator new();
  }
}

PSEmitter::PSEmitter_spinChanInfo *PSEmitter::PSEmitter_spinChanInfo::PSEmitter_spinChanInfo(PSEmitter::PSEmitter_spinChanInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872D1E28;
  *(this + 10) = &unk_2872D1E48;
  return this;
}

uint64_t PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(PSEmitter::PSEmitter_tintAmountChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(void)::PSEmitter_tintAmountChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(void)::PSEmitter_tintAmountChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_tintAmountChanImpl::_PSEmitter_tintAmountChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_tintAmountChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_tintAmountChanImpl::_PSEmitter_tintAmountChan)
  {
    operator new();
  }
}

uint64_t PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(PSEmitter::PSEmitter_renderSpaceChanImpl *this)
{
  if (atomic_load_explicit(&PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(void)::PSEmitter_renderSpaceChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(void)::PSEmitter_renderSpaceChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return PSEmitter::PSEmitter_renderSpaceChanImpl::_PSEmitter_renderSpaceChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<PSEmitter::PSEmitter_renderSpaceChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!PSEmitter::PSEmitter_renderSpaceChanImpl::_PSEmitter_renderSpaceChan)
  {
    operator new();
  }
}

void std::vector<PSEmitter::RenderEntry>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 6)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 6);
      v5 += a2 << 6;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 6);
    if (v7 >> 58)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PSEmitter::RenderEntry>>(a1, v9);
    }

    v10 = (v6 >> 6 << 6);
    bzero(v10, a2 << 6);
    v11 = &v10[64 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PSEmitter::RenderEntry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,false>(__int128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 4;
  v10 = &a2[-8];
  v11 = &a2[-12];
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 6;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if ((*a3)(a2 - 4, v12))
        {
          goto LABEL_77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v127 = (*a3)(v12 + 4, v12);
      v128 = (*a3)(v12 + 8, v12 + 4);
      if (v127)
      {
        if (v128)
        {
          v247 = v12[2];
          v274 = v12[3];
          v193 = *v12;
          v220 = v12[1];
          v129 = v12[9];
          *v12 = v12[8];
          v12[1] = v129;
          v130 = v12[11];
          v12[2] = v12[10];
          v12[3] = v130;
          v12[10] = v247;
          v12[11] = v274;
          v12[8] = v193;
          v12[9] = v220;
        }

        else
        {
          v249 = v12[2];
          v276 = v12[3];
          v195 = *v12;
          v222 = v12[1];
          v146 = v12[5];
          *v12 = v12[4];
          v12[1] = v146;
          v147 = v12[7];
          v12[2] = v12[6];
          v12[3] = v147;
          v12[6] = v249;
          v12[7] = v276;
          v12[4] = v195;
          v12[5] = v222;
          if ((*a3)(v12 + 8, v12 + 4))
          {
            v149 = v12[6];
            v148 = v12[7];
            v151 = v12[4];
            v150 = v12[5];
            v152 = v12[9];
            v12[4] = v12[8];
            v12[5] = v152;
            v153 = v12[11];
            v12[6] = v12[10];
            v12[7] = v153;
            v12[8] = v151;
            v12[9] = v150;
            v12[10] = v149;
            v12[11] = v148;
          }
        }
      }

      else if (v128)
      {
        v139 = v12[6];
        v138 = v12[7];
        v141 = v12[4];
        v140 = v12[5];
        v142 = v12[9];
        v12[4] = v12[8];
        v12[5] = v142;
        v143 = v12[11];
        v12[6] = v12[10];
        v12[7] = v143;
        v12[8] = v141;
        v12[9] = v140;
        v12[10] = v139;
        v12[11] = v138;
        if ((*a3)(v12 + 4, v12))
        {
          v248 = v12[2];
          v275 = v12[3];
          v194 = *v12;
          v221 = v12[1];
          v144 = v12[5];
          *v12 = v12[4];
          v12[1] = v144;
          v145 = v12[7];
          v12[2] = v12[6];
          v12[3] = v145;
          v12[6] = v248;
          v12[7] = v275;
          v12[4] = v194;
          v12[5] = v221;
        }
      }

      if (!(*a3)(v9, v12 + 8))
      {
        return result;
      }

      v155 = v12[10];
      v154 = v12[11];
      v157 = v12[8];
      v156 = v12[9];
      v158 = v9[3];
      v160 = *v9;
      v159 = v9[1];
      v12[10] = v9[2];
      v12[11] = v158;
      v12[8] = v160;
      v12[9] = v159;
      *v9 = v157;
      v9[1] = v156;
      v9[2] = v155;
      v9[3] = v154;
      if (!(*a3)(v12 + 8, v12 + 4))
      {
        return result;
      }

      v162 = v12[6];
      v161 = v12[7];
      v164 = v12[4];
      v163 = v12[5];
      v165 = v12[9];
      v12[4] = v12[8];
      v12[5] = v165;
      v166 = v12[11];
      v12[6] = v12[10];
      v12[7] = v166;
      v12[8] = v164;
      v12[9] = v163;
      v12[10] = v162;
      v12[11] = v161;
LABEL_102:
      if ((*a3)(v12 + 4, v12))
      {
        v250 = v12[2];
        v277 = v12[3];
        v196 = *v12;
        v223 = v12[1];
        v167 = v12[5];
        *v12 = v12[4];
        v12[1] = v167;
        v168 = v12[7];
        v12[2] = v12[6];
        v12[3] = v168;
        result = v196;
        v12[6] = v250;
        v12[7] = v277;
        v12[4] = v196;
        v12[5] = v223;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,0>(v12, v12 + 4, v12 + 8, v12 + 12, a2 - 4, a3).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(v12, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(v12, a2, a3);
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,PSEmitter::RenderEntry*>(v12, a2, a2, a3, result);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = *a3;
    if (v15 >= 0x81)
    {
      v18 = v17(&v12[4 * (v15 >> 1)], v12);
      v19 = (*a3)(a2 - 4, v16);
      if (v18)
      {
        if (v19)
        {
          v224 = a1[2];
          v251 = a1[3];
          v170 = *a1;
          v197 = a1[1];
          v20 = *v9;
          v21 = a2[-3];
          v22 = a2[-1];
          a1[2] = a2[-2];
          a1[3] = v22;
          *a1 = v20;
          a1[1] = v21;
          goto LABEL_27;
        }

        v230 = a1[2];
        v257 = a1[3];
        v176 = *a1;
        v203 = a1[1];
        v40 = *v16;
        v41 = v16[1];
        v42 = v16[3];
        a1[2] = v16[2];
        a1[3] = v42;
        *a1 = v40;
        a1[1] = v41;
        v16[2] = v230;
        v16[3] = v257;
        *v16 = v176;
        v16[1] = v203;
        if ((*a3)(a2 - 4, v16))
        {
          v224 = v16[2];
          v251 = v16[3];
          v170 = *v16;
          v197 = v16[1];
          v43 = *v9;
          v44 = a2[-3];
          v45 = a2[-1];
          v16[2] = a2[-2];
          v16[3] = v45;
          *v16 = v43;
          v16[1] = v44;
LABEL_27:
          *v9 = v170;
          a2[-3] = v197;
          a2[-2] = v224;
          a2[-1] = v251;
        }
      }

      else if (v19)
      {
        v226 = v16[2];
        v253 = v16[3];
        v172 = *v16;
        v199 = v16[1];
        v28 = *v9;
        v29 = a2[-3];
        v30 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v30;
        *v16 = v28;
        v16[1] = v29;
        *v9 = v172;
        a2[-3] = v199;
        a2[-2] = v226;
        a2[-1] = v253;
        if ((*a3)(v16, a1))
        {
          v227 = a1[2];
          v254 = a1[3];
          v173 = *a1;
          v200 = a1[1];
          v31 = *v16;
          v32 = v16[1];
          v33 = v16[3];
          a1[2] = v16[2];
          a1[3] = v33;
          *a1 = v31;
          a1[1] = v32;
          v16[2] = v227;
          v16[3] = v254;
          *v16 = v173;
          v16[1] = v200;
        }
      }

      v46 = &v16[-4];
      v47 = (*a3)(v16 - 4, a1 + 4);
      v48 = (*a3)(a2 - 8, v16 - 4);
      if (v47)
      {
        if (v48)
        {
          v50 = a1[6];
          v49 = a1[7];
          v52 = a1[4];
          v51 = a1[5];
          v53 = a2[-5];
          v55 = *v10;
          v54 = a2[-7];
          a1[6] = a2[-6];
          a1[7] = v53;
          a1[4] = v55;
          a1[5] = v54;
          *v10 = v52;
          a2[-7] = v51;
          a2[-6] = v50;
          goto LABEL_39;
        }

        v180 = a1[4];
        v207 = a1[5];
        v234 = a1[6];
        v261 = a1[7];
        v69 = v16[-2];
        v68 = v16[-1];
        v70 = v16[-3];
        a1[4] = *v46;
        a1[5] = v70;
        a1[6] = v69;
        a1[7] = v68;
        v16[-2] = v234;
        v16[-1] = v261;
        *v46 = v180;
        v16[-3] = v207;
        if ((*a3)(a2 - 8, v16 - 4))
        {
          v235 = v16[-2];
          v262 = v16[-1];
          v181 = *v46;
          v208 = v16[-3];
          v71 = *v10;
          v72 = a2[-7];
          v73 = a2[-5];
          v16[-2] = a2[-6];
          v16[-1] = v73;
          *v46 = v71;
          v16[-3] = v72;
          *v10 = v181;
          a2[-7] = v208;
          a2[-6] = v235;
          v49 = v262;
LABEL_39:
          a2[-5] = v49;
        }
      }

      else if (v48)
      {
        v231 = v16[-2];
        v258 = v16[-1];
        v177 = *v46;
        v204 = v16[-3];
        v56 = *v10;
        v57 = a2[-7];
        v58 = a2[-5];
        v16[-2] = a2[-6];
        v16[-1] = v58;
        *v46 = v56;
        v16[-3] = v57;
        *v10 = v177;
        a2[-7] = v204;
        a2[-6] = v231;
        a2[-5] = v258;
        if ((*a3)(v16 - 4, a1 + 4))
        {
          v178 = a1[4];
          v205 = a1[5];
          v232 = a1[6];
          v259 = a1[7];
          v60 = v16[-2];
          v59 = v16[-1];
          v61 = v16[-3];
          a1[4] = *v46;
          a1[5] = v61;
          a1[6] = v60;
          a1[7] = v59;
          v16[-2] = v232;
          v16[-1] = v259;
          *v46 = v178;
          v16[-3] = v205;
        }
      }

      v74 = (*a3)(v16 + 4, a1 + 8);
      v75 = (*a3)(a2 - 12, v16 + 4);
      if (v74)
      {
        if (v75)
        {
          v77 = a1[10];
          v76 = a1[11];
          v79 = a1[8];
          v78 = a1[9];
          v80 = a2[-9];
          v82 = *v11;
          v81 = a2[-11];
          a1[10] = a2[-10];
          a1[11] = v80;
          a1[8] = v82;
          a1[9] = v81;
          *v11 = v79;
          a2[-11] = v78;
          a2[-10] = v77;
          goto LABEL_48;
        }

        v184 = a1[8];
        v211 = a1[9];
        v238 = a1[10];
        v265 = a1[11];
        v90 = v16[6];
        v89 = v16[7];
        v91 = v16[5];
        a1[8] = v16[4];
        a1[9] = v91;
        a1[10] = v90;
        a1[11] = v89;
        v16[6] = v238;
        v16[7] = v265;
        v16[4] = v184;
        v16[5] = v211;
        if ((*a3)(a2 - 12, v16 + 4))
        {
          v239 = v16[6];
          v266 = v16[7];
          v185 = v16[4];
          v212 = v16[5];
          v92 = *v11;
          v93 = a2[-11];
          v94 = a2[-9];
          v16[6] = a2[-10];
          v16[7] = v94;
          v16[4] = v92;
          v16[5] = v93;
          *v11 = v185;
          a2[-11] = v212;
          a2[-10] = v239;
          v76 = v266;
LABEL_48:
          a2[-9] = v76;
        }
      }

      else if (v75)
      {
        v236 = v16[6];
        v263 = v16[7];
        v182 = v16[4];
        v209 = v16[5];
        v83 = *v11;
        v84 = a2[-11];
        v85 = a2[-9];
        v16[6] = a2[-10];
        v16[7] = v85;
        v16[4] = v83;
        v16[5] = v84;
        *v11 = v182;
        a2[-11] = v209;
        a2[-10] = v236;
        a2[-9] = v263;
        if ((*a3)(v16 + 4, a1 + 8))
        {
          v183 = a1[8];
          v210 = a1[9];
          v237 = a1[10];
          v264 = a1[11];
          v87 = v16[6];
          v86 = v16[7];
          v88 = v16[5];
          a1[8] = v16[4];
          a1[9] = v88;
          a1[10] = v87;
          a1[11] = v86;
          v16[6] = v237;
          v16[7] = v264;
          v16[4] = v183;
          v16[5] = v210;
        }
      }

      v95 = (*a3)(v16, v16 - 4);
      v96 = (*a3)(v16 + 4, v16);
      if (v95)
      {
        if (v96)
        {
          v240 = v16[-2];
          v267 = v16[-1];
          v186 = *v46;
          v213 = v16[-3];
          v97 = v16[5];
          *v46 = v16[4];
          v16[-3] = v97;
          v98 = v16[7];
          v16[-2] = v16[6];
          v16[-1] = v98;
          goto LABEL_57;
        }

        v243 = v16[-2];
        v270 = v16[-1];
        v189 = *v46;
        v216 = v16[-3];
        v103 = v16[1];
        *v46 = *v16;
        v16[-3] = v103;
        v104 = v16[3];
        v16[-2] = v16[2];
        v16[-1] = v104;
        v16[2] = v243;
        v16[3] = v270;
        *v16 = v189;
        v16[1] = v216;
        if ((*a3)(v16 + 4, v16))
        {
          v240 = v16[2];
          v267 = v16[3];
          v186 = *v16;
          v213 = v16[1];
          v105 = v16[5];
          *v16 = v16[4];
          v16[1] = v105;
          v106 = v16[7];
          v16[2] = v16[6];
          v16[3] = v106;
LABEL_57:
          v16[6] = v240;
          v16[7] = v267;
          v16[4] = v186;
          v16[5] = v213;
        }
      }

      else if (v96)
      {
        v241 = v16[2];
        v268 = v16[3];
        v187 = *v16;
        v214 = v16[1];
        v99 = v16[5];
        *v16 = v16[4];
        v16[1] = v99;
        v100 = v16[7];
        v16[2] = v16[6];
        v16[3] = v100;
        v16[6] = v241;
        v16[7] = v268;
        v16[4] = v187;
        v16[5] = v214;
        if ((*a3)(v16, v16 - 4))
        {
          v242 = v16[-2];
          v269 = v16[-1];
          v188 = *v46;
          v215 = v16[-3];
          v101 = v16[1];
          *v46 = *v16;
          v16[-3] = v101;
          v102 = v16[3];
          v16[-2] = v16[2];
          v16[-1] = v102;
          v16[2] = v242;
          v16[3] = v269;
          *v16 = v188;
          v16[1] = v215;
        }
      }

      v244 = a1[2];
      v271 = a1[3];
      v190 = *a1;
      v217 = a1[1];
      v107 = *v16;
      v108 = v16[1];
      v109 = v16[3];
      a1[2] = v16[2];
      a1[3] = v109;
      *a1 = v107;
      a1[1] = v108;
      v16[2] = v244;
      v16[3] = v271;
      *v16 = v190;
      v16[1] = v217;
      goto LABEL_59;
    }

    v23 = v17(v12, &v12[4 * (v15 >> 1)]);
    v24 = (*a3)(a2 - 4, a1);
    if (v23)
    {
      if (v24)
      {
        v225 = v16[2];
        v252 = v16[3];
        v171 = *v16;
        v198 = v16[1];
        v25 = *v9;
        v26 = a2[-3];
        v27 = a2[-1];
        v16[2] = a2[-2];
        v16[3] = v27;
        *v16 = v25;
        v16[1] = v26;
LABEL_36:
        *v9 = v171;
        a2[-3] = v198;
        a2[-2] = v225;
        a2[-1] = v252;
        goto LABEL_59;
      }

      v233 = v16[2];
      v260 = v16[3];
      v179 = *v16;
      v206 = v16[1];
      v62 = *a1;
      v63 = a1[1];
      v64 = a1[3];
      v16[2] = a1[2];
      v16[3] = v64;
      *v16 = v62;
      v16[1] = v63;
      a1[2] = v233;
      a1[3] = v260;
      *a1 = v179;
      a1[1] = v206;
      if ((*a3)(a2 - 4, a1))
      {
        v225 = a1[2];
        v252 = a1[3];
        v171 = *a1;
        v198 = a1[1];
        v65 = *v9;
        v66 = a2[-3];
        v67 = a2[-1];
        a1[2] = a2[-2];
        a1[3] = v67;
        *a1 = v65;
        a1[1] = v66;
        goto LABEL_36;
      }
    }

    else if (v24)
    {
      v228 = a1[2];
      v255 = a1[3];
      v174 = *a1;
      v201 = a1[1];
      v34 = *v9;
      v35 = a2[-3];
      v36 = a2[-1];
      a1[2] = a2[-2];
      a1[3] = v36;
      *a1 = v34;
      a1[1] = v35;
      *v9 = v174;
      a2[-3] = v201;
      a2[-2] = v228;
      a2[-1] = v255;
      if ((*a3)(a1, v16))
      {
        v229 = v16[2];
        v256 = v16[3];
        v175 = *v16;
        v202 = v16[1];
        v37 = *a1;
        v38 = a1[1];
        v39 = a1[3];
        v16[2] = a1[2];
        v16[3] = v39;
        *v16 = v37;
        v16[1] = v38;
        a1[2] = v229;
        a1[3] = v256;
        *a1 = v175;
        a1[1] = v202;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && ((*a3)(a1 - 4, a1) & 1) == 0)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PSEmitter::RenderEntry *,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&)>(a1, a2, a3);
      goto LABEL_66;
    }

    v110 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PSEmitter::RenderEntry *,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&)>(a1, a2, a3);
    if ((v111 & 1) == 0)
    {
      goto LABEL_64;
    }

    v112 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(a1, v110, a3);
    v12 = &v110[4];
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(v110 + 4, a2, a3))
    {
      a4 = -v14;
      a2 = v110;
      if (v112)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v112)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,false>(a1, v110, a3, -v14, a5 & 1);
      v12 = &v110[4];
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v113 = (*a3)(v12 + 4, v12);
  v114 = (*a3)(v9, v12 + 4);
  if ((v113 & 1) == 0)
  {
    if (!v114)
    {
      return result;
    }

    v132 = v12[6];
    v131 = v12[7];
    v134 = v12[4];
    v133 = v12[5];
    v135 = v9[3];
    v137 = *v9;
    v136 = v9[1];
    v12[6] = v9[2];
    v12[7] = v135;
    v12[4] = v137;
    v12[5] = v136;
    *v9 = v134;
    v9[1] = v133;
    v9[2] = v132;
    v9[3] = v131;
    goto LABEL_102;
  }

  if (v114)
  {
LABEL_77:
    v246 = v12[2];
    v273 = v12[3];
    v192 = *v12;
    v219 = v12[1];
    v124 = *v9;
    v125 = v9[1];
    v126 = v9[3];
    v12[2] = v9[2];
    v12[3] = v126;
    *v12 = v124;
    v12[1] = v125;
    *v9 = v192;
    v9[1] = v219;
    v9[2] = v246;
    result = v273;
    v9[3] = v273;
    return result;
  }

  v245 = v12[2];
  v272 = v12[3];
  v191 = *v12;
  v218 = v12[1];
  v115 = v12[5];
  *v12 = v12[4];
  v12[1] = v115;
  v116 = v12[7];
  v12[2] = v12[6];
  v12[3] = v116;
  v12[6] = v245;
  v12[7] = v272;
  v12[4] = v191;
  v12[5] = v218;
  if ((*a3)(v9, v12 + 4))
  {
    v117 = v12[6];
    result = v12[7];
    v119 = v12[4];
    v118 = v12[5];
    v120 = v9[3];
    v122 = *v9;
    v121 = v9[1];
    v12[6] = v9[2];
    v12[7] = v120;
    v12[4] = v122;
    v12[5] = v121;
    *v9 = v119;
    v9[1] = v118;
    v9[2] = v117;
    v9[3] = result;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = a1[2];
      v14 = a1[3];
      v17 = *a1;
      v16 = a1[1];
      v18 = a3[3];
      v20 = *a3;
      v19 = a3[1];
      a1[2] = a3[2];
      a1[3] = v18;
      *a1 = v20;
      a1[1] = v19;
LABEL_9:
      *a3 = v17;
      a3[1] = v16;
      a3[2] = v15;
      a3[3] = v14;
      goto LABEL_10;
    }

    v36 = a1[2];
    v35 = a1[3];
    v38 = *a1;
    v37 = a1[1];
    v39 = a2[3];
    v41 = *a2;
    v40 = a2[1];
    a1[2] = a2[2];
    a1[3] = v39;
    *a1 = v41;
    a1[1] = v40;
    *a2 = v38;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    if ((*a6)(a3, a2))
    {
      v15 = a2[2];
      v14 = a2[3];
      v17 = *a2;
      v16 = a2[1];
      v42 = a3[3];
      v44 = *a3;
      v43 = a3[1];
      a2[2] = a3[2];
      a2[3] = v42;
      *a2 = v44;
      a2[1] = v43;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v22 = a2[2];
    v21 = a2[3];
    v24 = *a2;
    v23 = a2[1];
    v25 = a3[3];
    v27 = *a3;
    v26 = a3[1];
    a2[2] = a3[2];
    a2[3] = v25;
    *a2 = v27;
    a2[1] = v26;
    *a3 = v24;
    a3[1] = v23;
    a3[2] = v22;
    a3[3] = v21;
    if ((*a6)(a2, a1))
    {
      v29 = a1[2];
      v28 = a1[3];
      v31 = *a1;
      v30 = a1[1];
      v32 = a2[3];
      v34 = *a2;
      v33 = a2[1];
      a1[2] = a2[2];
      a1[3] = v32;
      *a1 = v34;
      a1[1] = v33;
      *a2 = v31;
      a2[1] = v30;
      a2[2] = v29;
      a2[3] = v28;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v46 = a3[2];
    v45 = a3[3];
    v48 = *a3;
    v47 = a3[1];
    v49 = a4[3];
    v51 = *a4;
    v50 = a4[1];
    a3[2] = a4[2];
    a3[3] = v49;
    *a3 = v51;
    a3[1] = v50;
    *a4 = v48;
    a4[1] = v47;
    a4[2] = v46;
    a4[3] = v45;
    if ((*a6)(a3, a2))
    {
      v53 = a2[2];
      v52 = a2[3];
      v55 = *a2;
      v54 = a2[1];
      v56 = a3[3];
      v58 = *a3;
      v57 = a3[1];
      a2[2] = a3[2];
      a2[3] = v56;
      *a2 = v58;
      a2[1] = v57;
      *a3 = v55;
      a3[1] = v54;
      a3[2] = v53;
      a3[3] = v52;
      if ((*a6)(a2, a1))
      {
        v60 = a1[2];
        v59 = a1[3];
        v62 = *a1;
        v61 = a1[1];
        v63 = a2[3];
        v65 = *a2;
        v64 = a2[1];
        a1[2] = a2[2];
        a1[3] = v63;
        *a1 = v65;
        a1[1] = v64;
        *a2 = v62;
        a2[1] = v61;
        a2[2] = v60;
        a2[3] = v59;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v68 = a4[2];
    v67 = a4[3];
    v70 = *a4;
    v69 = a4[1];
    v71 = a5[3];
    v73 = *a5;
    v72 = a5[1];
    a4[2] = a5[2];
    a4[3] = v71;
    *a4 = v73;
    a4[1] = v72;
    *a5 = v70;
    a5[1] = v69;
    a5[2] = v68;
    a5[3] = v67;
    if ((*a6)(a4, a3))
    {
      v75 = a3[2];
      v74 = a3[3];
      v77 = *a3;
      v76 = a3[1];
      v78 = a4[3];
      v80 = *a4;
      v79 = a4[1];
      a3[2] = a4[2];
      a3[3] = v78;
      *a3 = v80;
      a3[1] = v79;
      *a4 = v77;
      a4[1] = v76;
      a4[2] = v75;
      a4[3] = v74;
      if ((*a6)(a3, a2))
      {
        v82 = a2[2];
        v81 = a2[3];
        v84 = *a2;
        v83 = a2[1];
        v85 = a3[3];
        v87 = *a3;
        v86 = a3[1];
        a2[2] = a3[2];
        a2[3] = v85;
        *a2 = v87;
        a2[1] = v86;
        *a3 = v84;
        a3[1] = v83;
        a3[2] = v82;
        a3[3] = v81;
        if ((*a6)(a2, a1))
        {
          v88 = a1[2];
          result = a1[3];
          v90 = *a1;
          v89 = a1[1];
          v91 = a2[3];
          v93 = *a2;
          v92 = a2[1];
          a1[2] = a2[2];
          a1[3] = v91;
          *a1 = v93;
          a1[1] = v92;
          *a2 = v90;
          a2[1] = v89;
          a2[2] = v88;
          a2[3] = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v25 = v3;
    v26 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v12 = v10[1];
          v21 = *v10;
          v22 = v12;
          v13 = v10[3];
          v23 = v10[2];
          v24 = v13;
          v14 = v9;
          while (1)
          {
            v15 = (v6 + v14);
            v16 = *(v6 + v14 + 16);
            v15[4] = *(v6 + v14);
            v15[5] = v16;
            v17 = *(v6 + v14 + 48);
            v15[6] = *(v6 + v14 + 32);
            v15[7] = v17;
            if (!v14)
            {
              break;
            }

            v14 -= 64;
            result = (*a3)(&v21, v6 + v14);
            if ((result & 1) == 0)
            {
              v18 = (v6 + v14 + 64);
              goto LABEL_10;
            }
          }

          v18 = v6;
LABEL_10:
          v19 = v22;
          *v18 = v21;
          v18[1] = v19;
          v20 = v24;
          v18[2] = v23;
          v18[3] = v20;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, _OWORD *))
{
  if (result != a2)
  {
    v22 = v3;
    v23 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = (result - 64);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v11 = v6[1];
          v18 = *v6;
          v19 = v11;
          v12 = v6[3];
          v20 = v6[2];
          v21 = v12;
          v13 = v9;
          do
          {
            v14 = v13[5];
            v13[8] = v13[4];
            v13[9] = v14;
            v15 = v13[7];
            v13[10] = v13[6];
            v13[11] = v15;
            result = (*a3)(&v18, v13);
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v16 = v19;
          v13[8] = v18;
          v13[9] = v16;
          v17 = v21;
          v13[10] = v20;
          v13[11] = v17;
        }

        v7 = v6 + 4;
        v9 += 4;
      }

      while (v6 + 4 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PSEmitter::RenderEntry *,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  if ((*a3)(&v28, a2 - 4))
  {
    v8 = a1;
    do
    {
      v8 += 4;
    }

    while (((*a3)(&v28, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 4;
    do
    {
      v8 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v10 = (*a3)(&v28, v9);
      v9 = v8 + 4;
    }

    while (!v10);
  }

  if (v8 < v4)
  {
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  while (v8 < v4)
  {
    v11 = *v8;
    v12 = v8[1];
    v13 = v8[3];
    v34 = v8[2];
    v35 = v13;
    v32 = v11;
    v33 = v12;
    v14 = *v4;
    v15 = v4[1];
    v16 = v4[3];
    v8[2] = v4[2];
    v8[3] = v16;
    *v8 = v14;
    v8[1] = v15;
    v17 = v32;
    v18 = v33;
    v19 = v35;
    v4[2] = v34;
    v4[3] = v19;
    *v4 = v17;
    v4[1] = v18;
    do
    {
      v8 += 4;
    }

    while (!(*a3)(&v28, v8));
    do
    {
      v4 -= 4;
    }

    while (((*a3)(&v28, v4) & 1) != 0);
  }

  v20 = v8 - 4;
  if (v8 - 4 != a1)
  {
    v21 = *v20;
    v22 = *(v8 - 3);
    v23 = *(v8 - 1);
    a1[2] = *(v8 - 2);
    a1[3] = v23;
    *a1 = v21;
    a1[1] = v22;
  }

  v24 = v28;
  v25 = v29;
  v26 = v31;
  *(v8 - 2) = v30;
  *(v8 - 1) = v26;
  *v20 = v24;
  *(v8 - 3) = v25;
  return v8;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PSEmitter::RenderEntry *,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v8 = a1[3];
  v29 = a1[2];
  v30 = v8;
  do
  {
    v6 += 4;
  }

  while (((*a3)(&a1[v6], &v27) & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 4];
  if (v6 == 4)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      a2 -= 4;
    }

    while (((*a3)(a2, &v27) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 4;
    }

    while (!(*a3)(a2, &v27));
  }

  if (v9 < a2)
  {
    v11 = &a1[v6];
    v12 = a2;
    do
    {
      v14 = v11[1];
      v31 = *v11;
      v13 = v31;
      v32 = v14;
      v16 = v11[3];
      v33 = v11[2];
      v15 = v33;
      v34 = v16;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v12[1];
      *v11 = *v12;
      v11[1] = v19;
      v11[2] = v18;
      v11[3] = v17;
      v12[2] = v15;
      v12[3] = v16;
      *v12 = v13;
      v12[1] = v14;
      do
      {
        v11 += 4;
      }

      while (((*a3)(v11, &v27) & 1) != 0);
      do
      {
        v12 -= 4;
      }

      while (!(*a3)(v12, &v27));
    }

    while (v11 < v12);
    v10 = v11 - 4;
  }

  if (v10 != a1)
  {
    v20 = *v10;
    v21 = v10[1];
    v22 = v10[3];
    a1[2] = v10[2];
    a1[3] = v22;
    *a1 = v20;
    a1[1] = v21;
  }

  v23 = v27;
  v24 = v28;
  v25 = v30;
  v10[2] = v29;
  v10[3] = v25;
  *v10 = v23;
  v10[1] = v24;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v16 = a2 - 4;
      v17 = (*a3)(a1 + 4, a1);
      v18 = (*a3)(v16, a1 + 4);
      if (v17)
      {
        if (v18)
        {
          v20 = a1[2];
          v19 = a1[3];
          v22 = *a1;
          v21 = a1[1];
          v23 = v16[3];
          v25 = *v16;
          v24 = v16[1];
          a1[2] = v16[2];
          a1[3] = v23;
          *a1 = v25;
          a1[1] = v24;
        }

        else
        {
          v76 = a1[2];
          v75 = a1[3];
          v78 = *a1;
          v77 = a1[1];
          v79 = a1[5];
          *a1 = a1[4];
          a1[1] = v79;
          v80 = a1[7];
          a1[2] = a1[6];
          a1[3] = v80;
          a1[4] = v78;
          a1[5] = v77;
          a1[6] = v76;
          a1[7] = v75;
          if (!(*a3)(v16, a1 + 4))
          {
            return 1;
          }

          v20 = a1[6];
          v19 = a1[7];
          v22 = a1[4];
          v21 = a1[5];
          v81 = v16[3];
          v83 = *v16;
          v82 = v16[1];
          a1[6] = v16[2];
          a1[7] = v81;
          a1[4] = v83;
          a1[5] = v82;
        }

        *v16 = v22;
        v16[1] = v21;
        result = 1;
        v16[2] = v20;
        v16[3] = v19;
        return result;
      }

      if (!v18)
      {
        return 1;
      }

      v45 = a1[6];
      v44 = a1[7];
      v47 = a1[4];
      v46 = a1[5];
      v48 = v16[3];
      v50 = *v16;
      v49 = v16[1];
      a1[6] = v16[2];
      a1[7] = v48;
      a1[4] = v50;
      a1[5] = v49;
      *v16 = v47;
      v16[1] = v46;
      v16[2] = v45;
      v16[3] = v44;
LABEL_50:
      if ((*a3)(a1 + 4, a1))
      {
        v126 = a1[2];
        v125 = a1[3];
        v128 = *a1;
        v127 = a1[1];
        v129 = a1[5];
        *a1 = a1[4];
        a1[1] = v129;
        v130 = a1[7];
        a1[2] = a1[6];
        a1[3] = v130;
        a1[4] = v128;
        a1[5] = v127;
        a1[6] = v126;
        a1[7] = v125;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,0>(a1, a1 + 4, a1 + 8, a1 + 12, a2 - 4, a3);
      return 1;
    }

    v35 = a2 - 4;
    v36 = (*a3)(a1 + 4, a1);
    v37 = (*a3)(a1 + 8, a1 + 4);
    if ((v36 & 1) == 0)
    {
      if (v37)
      {
        v64 = a1[6];
        v63 = a1[7];
        v66 = a1[4];
        v65 = a1[5];
        v67 = a1[9];
        a1[4] = a1[8];
        a1[5] = v67;
        v68 = a1[11];
        a1[6] = a1[10];
        a1[7] = v68;
        a1[8] = v66;
        a1[9] = v65;
        a1[10] = v64;
        a1[11] = v63;
        if ((*a3)(a1 + 4, a1))
        {
          v70 = a1[2];
          v69 = a1[3];
          v72 = *a1;
          v71 = a1[1];
          v73 = a1[5];
          *a1 = a1[4];
          a1[1] = v73;
          v74 = a1[7];
          a1[2] = a1[6];
          a1[3] = v74;
          a1[4] = v72;
          a1[5] = v71;
          a1[6] = v70;
          a1[7] = v69;
        }
      }

      goto LABEL_47;
    }

    if (v37)
    {
      v39 = a1[2];
      v38 = a1[3];
      v41 = *a1;
      v40 = a1[1];
      v42 = a1[9];
      *a1 = a1[8];
      a1[1] = v42;
      v43 = a1[11];
      a1[2] = a1[10];
      a1[3] = v43;
    }

    else
    {
      v105 = a1[2];
      v104 = a1[3];
      v107 = *a1;
      v106 = a1[1];
      v108 = a1[5];
      *a1 = a1[4];
      a1[1] = v108;
      v109 = a1[7];
      a1[2] = a1[6];
      a1[3] = v109;
      a1[4] = v107;
      a1[5] = v106;
      a1[6] = v105;
      a1[7] = v104;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_47;
      }

      v39 = a1[6];
      v38 = a1[7];
      v41 = a1[4];
      v40 = a1[5];
      v110 = a1[9];
      a1[4] = a1[8];
      a1[5] = v110;
      v111 = a1[11];
      a1[6] = a1[10];
      a1[7] = v111;
    }

    a1[8] = v41;
    a1[9] = v40;
    a1[10] = v39;
    a1[11] = v38;
LABEL_47:
    if (!(*a3)(v35, a1 + 8))
    {
      return 1;
    }

    v113 = a1[10];
    v112 = a1[11];
    v115 = a1[8];
    v114 = a1[9];
    v116 = v35[3];
    v118 = *v35;
    v117 = v35[1];
    a1[10] = v35[2];
    a1[11] = v116;
    a1[8] = v118;
    a1[9] = v117;
    *v35 = v115;
    v35[1] = v114;
    v35[2] = v113;
    v35[3] = v112;
    if (!(*a3)(a1 + 8, a1 + 4))
    {
      return 1;
    }

    v120 = a1[6];
    v119 = a1[7];
    v122 = a1[4];
    v121 = a1[5];
    v123 = a1[9];
    a1[4] = a1[8];
    a1[5] = v123;
    v124 = a1[11];
    a1[6] = a1[10];
    a1[7] = v124;
    a1[8] = v122;
    a1[9] = v121;
    a1[10] = v120;
    a1[11] = v119;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 4;
    if ((*a3)(a2 - 4, a1))
    {
      v9 = a1[2];
      v8 = a1[3];
      v11 = *a1;
      v10 = a1[1];
      v12 = a2[-1];
      v14 = *v7;
      v13 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v12;
      *a1 = v14;
      a1[1] = v13;
      *v7 = v11;
      a2[-3] = v10;
      result = 1;
      a2[-2] = v9;
      a2[-1] = v8;
      return result;
    }

    return 1;
  }

LABEL_13:
  v26 = a1 + 8;
  v27 = (*a3)(a1 + 4, a1);
  v28 = (*a3)(a1 + 8, a1 + 4);
  if (v27)
  {
    if (v28)
    {
      v30 = a1[2];
      v29 = a1[3];
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[9];
      *a1 = *v26;
      a1[1] = v33;
      v34 = a1[11];
      a1[2] = a1[10];
      a1[3] = v34;
    }

    else
    {
      v85 = a1[2];
      v84 = a1[3];
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[5];
      *a1 = a1[4];
      a1[1] = v88;
      v89 = a1[7];
      a1[2] = a1[6];
      a1[3] = v89;
      a1[4] = v87;
      a1[5] = v86;
      a1[6] = v85;
      a1[7] = v84;
      if (!(*a3)(a1 + 8, a1 + 4))
      {
        goto LABEL_33;
      }

      v30 = a1[6];
      v29 = a1[7];
      v32 = a1[4];
      v31 = a1[5];
      v90 = a1[9];
      a1[4] = *v26;
      a1[5] = v90;
      v91 = a1[11];
      a1[6] = a1[10];
      a1[7] = v91;
    }

    *v26 = v32;
    a1[9] = v31;
    a1[10] = v30;
    a1[11] = v29;
  }

  else if (v28)
  {
    v52 = a1[6];
    v51 = a1[7];
    v54 = a1[4];
    v53 = a1[5];
    v55 = a1[9];
    a1[4] = *v26;
    a1[5] = v55;
    v56 = a1[11];
    a1[6] = a1[10];
    a1[7] = v56;
    *v26 = v54;
    a1[9] = v53;
    a1[10] = v52;
    a1[11] = v51;
    if ((*a3)(a1 + 4, a1))
    {
      v58 = a1[2];
      v57 = a1[3];
      v60 = *a1;
      v59 = a1[1];
      v61 = a1[5];
      *a1 = a1[4];
      a1[1] = v61;
      v62 = a1[7];
      a1[2] = a1[6];
      a1[3] = v62;
      a1[4] = v60;
      a1[5] = v59;
      a1[6] = v58;
      a1[7] = v57;
    }
  }

LABEL_33:
  v92 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v93 = 0;
  v94 = 0;
  while (1)
  {
    if ((*a3)(v92, v26))
    {
      v95 = v92[1];
      v131 = *v92;
      v132 = v95;
      v96 = v92[3];
      v133 = v92[2];
      v134 = v96;
      v97 = v93;
      while (1)
      {
        v98 = (a1 + v97);
        v99 = *(a1 + v97 + 144);
        v98[12] = *(a1 + v97 + 128);
        v98[13] = v99;
        v100 = *(a1 + v97 + 176);
        v98[14] = *(a1 + v97 + 160);
        v98[15] = v100;
        if (v97 == -128)
        {
          break;
        }

        v97 -= 64;
        if (((*a3)(&v131, v98 + 4) & 1) == 0)
        {
          v101 = (a1 + v97 + 192);
          goto LABEL_41;
        }
      }

      v101 = a1;
LABEL_41:
      v102 = v132;
      *v101 = v131;
      v101[1] = v102;
      v103 = v134;
      v101[2] = v133;
      v101[3] = v103;
      if (++v94 == 8)
      {
        return &v92[4] == a2;
      }
    }

    v26 = v92;
    v93 += 64;
    v92 += 4;
    if (v92 == a2)
    {
      return 1;
    }
  }
}

__n128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*,PSEmitter::RenderEntry*>(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 6;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + (v10 << 6));
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(a1, a4, v9, v12);
        v12 -= 4;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v15 = v13[2];
          v14 = v13[3];
          v17 = *v13;
          v16 = v13[1];
          v18 = *(a1 + 48);
          v20 = *a1;
          v19 = *(a1 + 16);
          v13[2] = *(a1 + 32);
          v13[3] = v18;
          *v13 = v20;
          v13[1] = v19;
          *a1 = v17;
          *(a1 + 16) = v16;
          *(a1 + 32) = v15;
          *(a1 + 48) = v14;
          a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(a1, a4, v9, a1);
        }

        v13 += 4;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v36 = v7;
        v21 = 0;
        v37 = *a1;
        v38 = *(a1 + 16);
        v39 = *(a1 + 32);
        v40 = *(a1 + 48);
        v22 = a1;
        do
        {
          v23 = &v22[4 * v21];
          v24 = v23 + 4;
          v25 = (2 * v21) | 1;
          v26 = 2 * v21 + 2;
          if (v26 < v9)
          {
            v27 = v23 + 8;
            if ((*a4)(v23 + 4, v23 + 8))
            {
              v24 = v27;
              v25 = v26;
            }
          }

          v28 = *v24;
          v29 = v24[1];
          v30 = v24[3];
          v22[2] = v24[2];
          v22[3] = v30;
          *v22 = v28;
          v22[1] = v29;
          v22 = v24;
          v21 = v25;
        }

        while (v25 <= ((v9 - 2) >> 1));
        v7 = v36 - 4;
        if (v24 == &v36[-4])
        {
          v24[2] = v39;
          v24[3] = v40;
          *v24 = v37;
          v24[1] = v38;
        }

        else
        {
          v31 = *v7;
          v32 = v36[-3];
          v33 = v36[-1];
          v24[2] = v36[-2];
          v24[3] = v33;
          *v24 = v31;
          v24[1] = v32;
          *v7 = v37;
          v36[-3] = v38;
          v36[-2] = v39;
          v36[-1] = v40;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(a1, &v24[4], a4, (&v24[4] - a1) >> 6);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 6)
    {
      v12 = (a4 - a1) >> 5;
      v13 = v12 + 1;
      v14 = (a1 + ((v12 + 1) << 6));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 4))
      {
        v14 += 4;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v17 = v7[1];
        v27 = *v7;
        v28 = v17;
        v18 = v7[3];
        v29 = v7[2];
        v30 = v18;
        do
        {
          v19 = v14;
          v20 = *v14;
          v21 = v14[1];
          v22 = v14[3];
          v7[2] = v14[2];
          v7[3] = v22;
          *v7 = v20;
          v7[1] = v21;
          if (v9 < v13)
          {
            break;
          }

          v23 = (2 * v13) | 1;
          v14 = (a1 + (v23 << 6));
          v24 = 2 * v13 + 2;
          if (v24 < a3)
          {
            if ((*a2)((a1 + (v23 << 6)), v14 + 4))
            {
              v14 += 4;
              v23 = v24;
            }
          }

          v7 = v19;
          v13 = v23;
        }

        while (!(*a2)(v14, &v27));
        result = v27;
        v25 = v28;
        v26 = v30;
        v19[2] = v29;
        v19[3] = v26;
        *v19 = result;
        v19[1] = v25;
      }
    }
  }

  return result;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PSEmitter::RenderEntry const&,PSEmitter::RenderEntry const&),PSEmitter::RenderEntry*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v25 = v4;
    v26 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + (v6 >> 1 << 6));
    v11 = (a2 - 64);
    if ((*a3)(v10, (a2 - 64)))
    {
      v13 = v11[1];
      v21 = *v11;
      v22 = v13;
      v14 = v11[3];
      v23 = v11[2];
      v24 = v14;
      do
      {
        v15 = v10;
        v16 = *v10;
        v17 = v10[1];
        v18 = v10[3];
        v11[2] = v10[2];
        v11[3] = v18;
        *v11 = v16;
        v11[1] = v17;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + (v9 << 6));
        v11 = v15;
      }

      while (((*a3)(v10, &v21) & 1) != 0);
      v19 = v22;
      *v15 = v21;
      v15[1] = v19;
      result = *&v23;
      v20 = v24;
      v15[2] = v23;
      v15[3] = v20;
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,false>(OZSimStateElement *a1, __int128 *a2, uint64_t (**a3)(__int128 *, const OZSimStateElement *), uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v49 = a2;
  v50 = a1;
  v9 = 0xEF7BDEF7BDEF7BDFLL;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v11 = v7 - v8;
    v12 = ((v7 - v8) >> 3) * v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v46 = *a3;
        v49 = (v7 - 248);
        if ((v46)(v7 - 248))
        {
          v45 = &v50;
          v48 = &v49;
          goto LABEL_98;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v49 = (v7 - 248);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,0>(v8, (v8 + 248), v8 + 31, (v7 - 248), a3);
      return;
    }

    if (v12 == 5)
    {
      v49 = (v7 - 248);
      v54 = (v8 + 248);
      *&v55[0] = v8;
      v52 = (v8 + 744);
      v53 = v8 + 31;
      v51 = (v7 - 248);
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,0>(v8, (v8 + 248), v8 + 31, (v8 + 744), a3);
      if ((*a3)((v7 - 248), (v8 + 744)))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v52, &v51);
        if ((*a3)(v52, (v8 + 31)))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v53, &v52);
          if ((*a3)(v53, (v8 + 248)))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
            v41 = (*a3)(v54, v8);
            goto LABEL_92;
          }
        }
      }

      return;
    }

LABEL_10:
    if (v11 <= 5951)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v8, v7, a3);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v8, v7, a3);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,OZSimStateElement*>(v8, v7, v7, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = (v8 + 248 * (v12 >> 1));
    v15 = (v7 - 248);
    if (v11 < 0x7C01)
    {
      v54 = v8;
      *&v55[0] = v8 + 248 * (v12 >> 1);
      v53 = v15;
      v20 = (*a3)(v8, v14);
      v21 = (*a3)(v15, v8);
      if (v20)
      {
        if (v21)
        {
          v22 = v55;
          goto LABEL_37;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
        if ((*a3)(v53, v54))
        {
          v22 = &v54;
LABEL_37:
          v24 = &v53;
LABEL_38:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v22, v24);
        }
      }

      else if (v21)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
        if ((*a3)(v54, *&v55[0]))
        {
          v22 = v55;
          v24 = &v54;
          goto LABEL_38;
        }
      }

      v8 = v50;
      if (a5)
      {
        goto LABEL_40;
      }

      goto LABEL_65;
    }

    v54 = (v8 + 248 * (v12 >> 1));
    *&v55[0] = v8;
    v53 = v15;
    v16 = (*a3)(v14, v8);
    v17 = (*a3)(v15, v14);
    v18 = v9;
    if (v16)
    {
      if (v17)
      {
        v19 = v55;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
        if (!(*a3)(v53, v54))
        {
          goto LABEL_29;
        }

        v19 = &v54;
      }

      v23 = &v53;
      goto LABEL_28;
    }

    if (v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
      if ((*a3)(v54, *&v55[0]))
      {
        v19 = v55;
        v23 = &v54;
LABEL_28:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v19, v23);
      }
    }

LABEL_29:
    v8 = v50;
    v25 = (v50 + 248 * v13);
    v54 = (v25 - 248);
    *&v55[0] = v50 + 248;
    v53 = (v49 - 496);
    v26 = (*a3)(v25 - 248);
    v27 = (*a3)(v49 - 31, (v25 - 248));
    if (v26)
    {
      if (v27)
      {
        v28 = v55;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
        if (!(*a3)(v53, v54))
        {
          goto LABEL_45;
        }

        v28 = &v54;
      }

      v29 = &v53;
      goto LABEL_44;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
      if ((*a3)(v54, *&v55[0]))
      {
        v28 = v55;
        v29 = &v54;
LABEL_44:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v28, v29);
      }
    }

LABEL_45:
    v54 = (v25 + 248);
    *&v55[0] = v50 + 496;
    v53 = (v49 - 744);
    v30 = (*a3)(v25 + 248);
    v31 = (*a3)((v49 - 744), (v25 + 248));
    if (v30)
    {
      if (v31)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v53);
        v9 = v18;
        goto LABEL_54;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
      v9 = v18;
      if ((*a3)(v53, v54))
      {
        v32 = &v54;
        v33 = &v53;
        goto LABEL_53;
      }
    }

    else
    {
      v9 = v18;
      if (v31)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
        if ((*a3)(v54, *&v55[0]))
        {
          v32 = v55;
          v33 = &v54;
LABEL_53:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v32, v33);
        }
      }
    }

LABEL_54:
    v54 = (v50 + 248 * v13);
    *&v55[0] = v25 - 248;
    v53 = (v25 + 248);
    v34 = (*a3)(v25, (v25 - 248));
    v35 = (*a3)((v25 + 248), v25);
    if (v34)
    {
      if (v35)
      {
        v36 = v55;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
        if (!(*a3)(v53, v54))
        {
          goto LABEL_64;
        }

        v36 = &v54;
      }

      v37 = &v53;
      goto LABEL_63;
    }

    if (v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
      if ((*a3)(v54, *&v55[0]))
      {
        v36 = v55;
        v37 = &v54;
LABEL_63:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v36, v37);
      }
    }

LABEL_64:
    OZSimStateElement::OZSimStateElement(v55, v50);
    OZSimStateElement::operator=(v50, v25);
    OZSimStateElement::operator=(v25, v55);
    OZSimStateElement::~OZSimStateElement(v55);
    if (a5)
    {
LABEL_40:
      v7 = v49;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v49;
    if (((*a3)((v8 - 248), v8) & 1) == 0)
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OZSimStateElement *,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&)>(v8, v49, a3);
      goto LABEL_75;
    }

LABEL_66:
    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OZSimStateElement *,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&)>(v8, v7, a3);
    if ((v39 & 1) == 0)
    {
      goto LABEL_73;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v8, v38, a3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>((v38 + 248), v7, a3))
    {
      if (v40)
      {
        return;
      }

      v49 = v38;
      v7 = v38;
    }

    else
    {
      if (!v40)
      {
LABEL_73:
        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,false>(v8, v38, a3, -i, a5 & 1);
        v8 = (v38 + 248);
LABEL_75:
        a5 = 0;
        v50 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v50 = (v38 + 248);
      v8 = (v38 + 248);
    }
  }

  v42 = (v8 + 248);
  v49 = (v7 - 248);
  v54 = (v8 + 248);
  *&v55[0] = v8;
  v53 = (v7 - 248);
  v43 = (*a3)((v8 + 248), v8);
  v44 = (*a3)((v7 - 248), v42);
  if (v43)
  {
    if (v44)
    {
      v45 = v55;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v55, &v54);
      if (!(*a3)(v53, v54))
      {
        return;
      }

      v45 = &v54;
    }

    v48 = &v53;
    goto LABEL_98;
  }

  if (v44)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v54, &v53);
    v41 = (*a3)(v54, *&v55[0]);
LABEL_92:
    if (v41)
    {
      v45 = v55;
      v48 = &v54;
LABEL_98:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v45, v48);
    }
  }
}

void sub_2602AAA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(const OZSimStateElement **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  OZSimStateElement::OZSimStateElement(v4, *a1);
  OZSimStateElement::operator=(v2, v3);
  OZSimStateElement::operator=(v3, v4);
  OZSimStateElement::~OZSimStateElement(v4);
}

void sub_2602AAA8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,0>(const OZSimStateElement *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, const OZSimStateElement *))
{
  v16 = a2;
  v17 = a1;
  v14 = a4;
  v15 = a3;
  v19 = a2;
  v20 = a1;
  v18 = a3;
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = &v20;
LABEL_9:
      v13 = &v18;
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v20, &v19);
    if ((*a5)(v18, v19))
    {
      v12 = &v19;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v19, &v18);
    if ((*a5)(v19, v20))
    {
      v12 = &v20;
      v13 = &v19;
LABEL_10:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v15, &v14);
    if ((*a5)(v15, a2))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v16, &v15);
      if ((*a5)(v16, a1))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v17, &v16);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(const OZSimStateElement *a1, const OZSimStateElement *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 248);
    if ((a1 + 248) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v5;
        if ((*a3)(v5, v9))
        {
          OZSimStateElement::OZSimStateElement(v13, v8);
          v10 = v7;
          while (1)
          {
            OZSimStateElement::operator=(a1 + v10 + 248, (a1 + v10));
            if (!v10)
            {
              break;
            }

            v11 = (*a3)(v13, a1 + v10 - 248);
            v10 -= 248;
            if ((v11 & 1) == 0)
            {
              v12 = a1 + v10 + 248;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          OZSimStateElement::operator=(v12, v13);
          OZSimStateElement::~OZSimStateElement(v13);
        }

        v5 = (v8 + 248);
        v7 += 248;
      }

      while ((v8 + 248) != a2);
    }
  }
}

void sub_2602AACC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(__int128 *a1, const OZSimStateElement *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 248);
    if ((a1 + 248) != a2)
    {
      do
      {
        v7 = v5;
        if ((*a3)(v5, v4))
        {
          OZSimStateElement::OZSimStateElement(v8, v7);
          do
          {
            OZSimStateElement::operator=(v4 + 248, v4);
            v4 = (v4 - 248);
          }

          while (((*a3)(v8, v4) & 1) != 0);
          OZSimStateElement::operator=(v4 + 248, v8);
          OZSimStateElement::~OZSimStateElement(v8);
        }

        v5 = (v7 + 248);
        v4 = v7;
      }

      while ((v7 + 248) != a2);
    }
  }
}

void sub_2602AADA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

const OZSimStateElement *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,OZSimStateElement *,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&)>(OZSimStateElement *a1, __int128 *a2, unsigned int (**a3)(__int128 *))
{
  v13 = a2;
  v14 = a1;
  OZSimStateElement::OZSimStateElement(v12, a1);
  if ((*a3)(v12, a2 - 248))
  {
    v6 = a1;
    do
    {
      v6 = (v6 + 248);
      v14 = v6;
    }

    while (((*a3)(v12, v6) & 1) == 0);
  }

  else
  {
    v7 = (a1 + 248);
    do
    {
      v6 = v7;
      v14 = v7;
      if (v7 >= v13)
      {
        break;
      }

      v8 = (*a3)(v12, v7);
      v7 = (v6 + 248);
    }

    while (!v8);
  }

  v9 = v13;
  if (v6 < v13)
  {
    do
    {
      v9 = (v9 - 248);
      v13 = v9;
    }

    while (((*a3)(v12, v9) & 1) != 0);
    v6 = v14;
  }

  if (v6 < v9)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v14, &v13);
      do
      {
        v14 = (v14 + 248);
      }

      while (!(*a3)(v12));
      do
      {
        v13 = (v13 - 248);
      }

      while (((*a3)(v12) & 1) != 0);
      v6 = v14;
    }

    while (v14 < v13);
  }

  if ((v6 - 248) != a1)
  {
    OZSimStateElement::operator=(a1, (v6 - 248));
  }

  OZSimStateElement::operator=(v6 - 248, v12);
  v10 = v14;
  OZSimStateElement::~OZSimStateElement(v12);
  return v10;
}

void sub_2602AAF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,OZSimStateElement *,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&)>(OZSimStateElement *a1, __int128 *a2, uint64_t (**a3)(void))
{
  v15 = a2;
  OZSimStateElement::OZSimStateElement(v14, a1);
  v5 = 0;
  do
  {
    v16 = (a1 + v5 + 248);
    v5 += 248;
  }

  while (((*a3)() & 1) != 0);
  v6 = v15;
  if (v5 == 248)
  {
    v9 = (a1 + 248);
    do
    {
      if (v9 >= v6)
      {
        break;
      }

      v10 = *a3;
      v6 = (v6 - 248);
      v15 = v6;
    }

    while (((v10)(v6, v14) & 1) == 0);
  }

  else
  {
    v7 = (v15 - 248);
    do
    {
      v15 = v7;
      v8 = (*a3)(v7, v14);
      v7 = (v7 - 248);
    }

    while (!v8);
    v9 = v16;
  }

  v11 = v9;
  if (v9 < v15)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v16, &v15);
      do
      {
        v16 = (v16 + 248);
      }

      while (((*a3)() & 1) != 0);
      do
      {
        v15 = (v15 - 248);
      }

      while (!(*a3)());
      v11 = v16;
    }

    while (v16 < v15);
  }

  v12 = v11 - 248;
  if ((v11 - 248) != a1)
  {
    OZSimStateElement::operator=(a1, (v11 - 248));
  }

  OZSimStateElement::operator=(v12, v14);
  OZSimStateElement::~OZSimStateElement(v14);
  return v12;
}

void sub_2602AB0C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(__int128 *a1, const OZSimStateElement *a2, uint64_t (**a3)(__int128 *, const OZSimStateElement *))
{
  v27 = a2;
  v28 = a1;
  v6 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *a3;
      v27 = (a2 - 248);
      if ((v7)())
      {
        v8 = &v28;
        v9 = &v27;
LABEL_30:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v8, v9);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v16 = a1 + 31;
    *&v26[0] = a1;
    v31 = a1 + 31;
    v32 = (a1 + 248);
    v17 = (*a3)((a1 + 248), a1);
    v18 = (*a3)(a1 + 31, (a1 + 248));
    if (v17)
    {
      if (v18)
      {
        v19 = v26;
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v26, &v32);
        if (!(*a3)(v31, v32))
        {
          goto LABEL_35;
        }

        v19 = &v32;
      }

      v20 = &v31;
    }

    else
    {
      if (!v18 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v32, &v31), !(*a3)(v32, *&v26[0])))
      {
LABEL_35:
        v21 = (a1 + 744);
        if (v21 != a2)
        {
          v22 = 0;
          while (1)
          {
            if ((*a3)(v21, v16))
            {
              OZSimStateElement::OZSimStateElement(v26, v21);
              do
              {
                v23 = v16;
                OZSimStateElement::operator=(v16 + 248, v16);
                if (v16 == v28)
                {
                  break;
                }

                v16 = (v16 - 248);
              }

              while (((*a3)(v26, (v23 - 248)) & 1) != 0);
              OZSimStateElement::operator=(v23, v26);
              if (++v22 == 8)
              {
                v24 = (v21 + 248) == v27;
                OZSimStateElement::~OZSimStateElement(v26);
                return v24;
              }

              OZSimStateElement::~OZSimStateElement(v26);
            }

            v16 = v21;
            v21 = (v21 + 248);
            if (v21 == v27)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = v26;
      v20 = &v32;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v19, v20);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,0>(a1, (a1 + 248), a1 + 31, (a2 - 248), a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    *&v26[0] = a1;
    v31 = a1 + 31;
    v32 = (a1 + 248);
    v10 = (a2 - 248);
    v29 = (a2 - 248);
    v30 = (a1 + 744);
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,0>(a1, (a1 + 248), a1 + 31, (a1 + 744), a3);
    if (!(*a3)(v10, (a1 + 744)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v30, &v29);
    if (!(*a3)(v30, (a1 + 31)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v31, &v30);
    if (!(*a3)(v31, (a1 + 248)))
    {
      return 1;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v32, &v31);
    v11 = (*a3)(v32, a1);
    goto LABEL_22;
  }

  v12 = (a1 + 248);
  v13 = (a2 - 248);
  *&v26[0] = a1;
  v31 = (a2 - 248);
  v32 = (a1 + 248);
  v14 = (*a3)((a1 + 248), a1);
  v15 = (*a3)(v13, v12);
  if (v14)
  {
    if (v15)
    {
      v8 = v26;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(v26, &v32);
      if (!(*a3)(v31, v32))
      {
        return 1;
      }

      v8 = &v32;
    }

    v9 = &v31;
    goto LABEL_30;
  }

  if (v15)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v32, &v31);
    v11 = (*a3)(v32, *&v26[0]);
LABEL_22:
    if (v11)
    {
      v8 = v26;
      v9 = &v32;
      goto LABEL_30;
    }
  }

  return 1;
}

void sub_2602AB460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

const OZSimStateElement *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*,OZSimStateElement*>(OZSimStateElement *a1, const OZSimStateElement *a2, const OZSimStateElement *a3, uint64_t (**a4)(__int128 *, const OZSimStateElement *))
{
  v21 = a1;
  if (a1 != a2)
  {
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 249)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 248 * v10);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v7, a4, v9, v12);
        v12 = (v12 - 248);
        --v11;
      }

      while (v11);
    }

    v20 = a2;
    v13 = a2;
    if (a2 != a3)
    {
      do
      {
        if ((*a4)(v13, v21))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<OZSimStateElement *&,OZSimStateElement *&>(&v20, &v21);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v21, a4, v9, v21);
        }

        v13 = (v20 + 248);
        v20 = v13;
      }

      while (v13 != a3);
      v7 = v21;
      v8 = a2 - v21;
    }

    if (v8 >= 249)
    {
      v14 = 0xEF7BDEF7BDEF7BDFLL * (v8 >> 3);
      v15 = (a2 - 248);
      do
      {
        if (v14 >= 2)
        {
          OZSimStateElement::OZSimStateElement(v22, v7);
          v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v7, a4, v14);
          v17 = v16;
          if (v15 == v16)
          {
            OZSimStateElement::operator=(v16, v22);
          }

          else
          {
            OZSimStateElement::operator=(v16, v15);
            OZSimStateElement::operator=(v15, v22);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(v7, v17 + 248, a4, 0xEF7BDEF7BDEF7BDFLL * ((v17 + 248 - v7) >> 3));
          }

          OZSimStateElement::~OZSimStateElement(v22);
        }

        v15 = (v15 - 248);
      }

      while (v14-- > 2);
      return v20;
    }

    return v13;
  }

  return a3;
}

void sub_2602AB63C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(uint64_t a1, uint64_t (**a2)(__int128 *, const OZSimStateElement *), uint64_t a3, const OZSimStateElement *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xEF7BDEF7BDEF7BDFLL * ((a4 - a1) >> 3)))
    {
      v10 = (0xDEF7BDEF7BDEF7BELL * ((a4 - a1) >> 3)) | 1;
      v11 = (a1 + 248 * v10);
      v12 = 0xDEF7BDEF7BDEF7BELL * ((a4 - a1) >> 3) + 2;
      if (v12 < a3 && (*a2)((a1 + 248 * v10), (v11 + 248)))
      {
        v11 = (v11 + 248);
        v10 = v12;
      }

      if (((*a2)(v11, v5) & 1) == 0)
      {
        OZSimStateElement::OZSimStateElement(v15, v5);
        do
        {
          v13 = v11;
          OZSimStateElement::operator=(v5, v11);
          if (v7 < v10)
          {
            break;
          }

          v14 = (2 * v10) | 1;
          v11 = (a1 + 248 * v14);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v14;
          }

          else if ((*a2)((a1 + 248 * v14), (v11 + 248)))
          {
            v11 = (v11 + 248);
          }

          else
          {
            v10 = v14;
          }

          v5 = v13;
        }

        while (!(*a2)(v11, v15));
        OZSimStateElement::operator=(v13, v15);
        OZSimStateElement::~OZSimStateElement(v15);
      }
    }
  }
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 248 * v6;
    v9 = (v8 + 248);
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = (v8 + 496);
      if ((*a2)(v8 + 248, v8 + 496))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    OZSimStateElement::operator=(a1, v9);
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(OZSimStateElement const&,OZSimStateElement const&),OZSimStateElement*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 248 * (v4 >> 1));
    v9 = (a2 - 248);
    if ((*a3)(v8, (a2 - 248)))
    {
      OZSimStateElement::OZSimStateElement(v11, v9);
      do
      {
        v10 = v8;
        OZSimStateElement::operator=(v9, v8);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 248 * v7);
        v9 = v10;
      }

      while (((*a3)(v8, v11) & 1) != 0);
      OZSimStateElement::operator=(v10, v11);
      OZSimStateElement::~OZSimStateElement(v11);
    }
  }
}

void sub_2602AB960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZSimStateElement::~OZSimStateElement(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<double,LessThanDouble,std::allocator<double>>::__emplace_unique_key_args<double,double const&>(uint64_t a1, double *a2)
{
  v2 = *std::__tree<double,LessThanDouble,std::allocator<double>>::__find_equal<double>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<double,LessThanDouble,std::allocator<double>>::__find_equal<double>(uint64_t a1, void *a2, double *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 4);
        if (v6 >= v8 || vabdd_f64(v6, v8) < 0.0000001)
        {
          break;
        }

        v4 = *v4;
        result = v7;
        if (!*v7)
        {
          goto LABEL_12;
        }
      }

      if (v8 >= v6)
      {
        break;
      }

      if (vabdd_f64(v8, v6) < 0.0000001)
      {
        break;
      }

      result = v4 + 1;
      v4 = v4[1];
    }

    while (v4);
  }

  else
  {
    v7 = result;
  }

LABEL_12:
  *a2 = v7;
  return result;
}

void PSParticle::PSParticle(PSParticle *this)
{
  *this = &unk_2872D1F90;
  v2 = MEMORY[0x277CC08F0];
  v3 = *MEMORY[0x277CC08F0];
  *(this + 3) = *(MEMORY[0x277CC08F0] + 16);
  *(this + 8) = v3;
  v4 = *v2;
  *(this + 2) = *v2;
  v5 = *(v2 + 2);
  *(this + 6) = v5;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 56) = _Q1;
  *(this + 9) = 0x3FF0000000000000;
  *(this + 5) = v4;
  *(this + 12) = v5;
  *(this + 13) = 0;
  PCInfo::getDefaultRGBColorSpace(&v11);
  PCColor::PCColor(this + 2, 1.0, 1.0, 1.0, 1.0, &v11);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v11);
  *(this + 21) = 0;
  *(this + 184) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 56) = 0;
}

void sub_2602ABB44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PSParticle::PSParticle(PSParticle *this, int a2, const CMTime *a3)
{
  *this = &unk_2872D1F90;
  v5 = *&a3->value;
  *(this + 3) = a3->epoch;
  v6 = MEMORY[0x277CC08F0];
  *(this + 8) = v5;
  v7 = *v6;
  *(this + 2) = *v6;
  v8 = *(v6 + 2);
  *(this + 6) = v8;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 56) = _Q1;
  *(this + 9) = 0x3FF0000000000000;
  *(this + 5) = v7;
  *(this + 12) = v8;
  *(this + 13) = 0;
  PCInfo::getDefaultRGBColorSpace(&v14);
  PCColor::PCColor(this + 2, 1.0, 1.0, 1.0, 1.0, &v14);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v14);
  *(this + 21) = 0;
  *(this + 184) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 56) = a2;
}

void sub_2602ABC30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PSParticle::~PSParticle(CGColorSpace **this)
{
  *this = &unk_2872D1F90;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 20);
}

{
  *this = &unk_2872D1F90;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 20);

  JUMPOUT(0x2666E9F00);
}

uint64_t PSParticle::simulationIsObjectAlive(PSParticle *this, CMTime *a2)
{
  time1 = *(this + 8);
  time2 = *(this + 32);
  PC_CMTimeSaferAdd(&time1, &time2, &v4);
  time1 = *a2;
  time2 = v4;
  return CMTimeCompare(&time1, &time2) >> 31;
}

void PSParticleType::PSParticleType(PSParticleType *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSceneNode::OZSceneNode(this, a2, a3, a4);
  OZImageNode::OZImageNode((v5 + 1088));
  *this = &unk_2872D1FE0;
  *(this + 2) = &unk_2872D2660;
  *(this + 6) = &unk_2872D28B8;
  *(this + 136) = &unk_2872D2910;
  *(this + 139) = &unk_2872D29E8;
  PCURL::PCURL(&v72, @"Particle Type Birth Rate");
  Instance = PSParticleType::PSParticleType_birthRateChanImpl::getInstance(v6);
  v8 = PSParticleType::PSParticleType_birthRateChanInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 1120), 30.0, &v72, (this + 448), 0x65u, 0, Instance, v8);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Birth Rate Variance ");
  v10 = PSParticleType::PSParticleType_birthRateVarChanImpl::getInstance(v9);
  OZChannelDouble::OZChannelDouble((this + 1272), &v72, (this + 448), 0x66u, 0, v10, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Initial Num");
  v12 = PSParticleType::PSParticleType_initialNumChanImpl::getInstance(v11);
  OZChannelDouble::OZChannelDouble((this + 1424), &v72, (this + 448), 0x67u, 0, v12, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Lifetime");
  v14 = PSParticleType::PSParticleType_lifetimeChanImpl::getInstance(v13);
  v15 = PSParticleType::PSParticleType_lifetimeChanInfo::getInstance(v14);
  OZChannelDouble::OZChannelDouble((this + 1576), 5.0, &v72, (this + 448), 0x68u, 0, v14, v15);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Lifetime Variance");
  v17 = PSParticleType::PSParticleType_lifetimeVarChanImpl::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 1728), &v72, (this + 448), 0x69u, 0, v17, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Emitter Speed");
  v19 = PSParticleType::PSParticleType_speedChanImpl::getInstance(v18);
  v20 = PSParticleType::PSParticleType_speedChanInfo::getInstance(v19);
  OZChannelDouble::OZChannelDouble((this + 1880), 100.0, &v72, (this + 448), 0x6Au, 0, v19, v20);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Speed Variance");
  v22 = PSParticleType::PSParticleType_speedVarChanImpl::getInstance(v21);
  v23 = PSParticleType::PSParticleType_speedVarChanInfo::getInstance(v22);
  OZChannelDouble::OZChannelDouble((this + 2032), &v72, (this + 448), 0x6Bu, 0, v22, v23);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Align Rotation");
  OZChannelBool::OZChannelBool((this + 2184), &v72, (this + 448), 0x84u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 2336), 0.0, 0.0, 0.0, &v72, (this + 448), 0x92u, 0, 4u, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation End");
  OZChannelRotation3D::OZChannelRotation3D((this + 3192), 0.0, 0.0, 0.0, &v72, (this + 448), 0x93u, 0, 4u, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation Over Stroke");
  OZChannelAngleOverRange::OZChannelAngleOverRange((this + 4048), 0.0, &v72, (this + 448), 0x91u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation Variance");
  v25 = PSParticleType::PSParticleType_rotVarChanInfo::getInstance(v24);
  OZChannelRotation3D::OZChannelRotation3D((this + 4208), 0.0, 0.0, 0.0, &v72, (this + 448), 0x94u, 0, 4u, 0, v25);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Spin");
  v27 = PSParticleType::PSParticleType_spinChanInfo::getInstance(v26);
  OZChannelAngle::OZChannelAngle((this + 5064), &v72, (this + 448), 0x6Eu, 0, 0, v27);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Spin Variance");
  v29 = PSParticleType::PSParticleType_spinVarChanImpl::getInstance(v28);
  v30 = PSParticleType::PSParticleType_spinVarChanInfo::getInstance(v29);
  OZChannelAngle::OZChannelAngle((this + 5216), &v72, (this + 448), 0x6Fu, 0, v29, v30);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Color Mode Enum");
  PCURL::PCURL(&v73, @"Particle Type Color Mode");
  v32 = PSParticleType::PSParticleType_colorModeChanImpl::getInstance(v31);
  OZChannelEnum::OZChannelEnum((this + 5368), 0, &v72, &v73, (this + 448), 0x81u, 0, v32, 0);
  PCString::~PCString(&v73);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Solid Color");
  OZChannelColor::OZChannelColor((this + 5624), 1.0, 1.0, 1.0, 1.0, &v72, (this + 448), 0x82u, 0, 6u);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Color Over Life");
  OZChannelGradient::OZChannelGradient((this + 6784), &v72, (this + 448), 0x70u, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Random Color");
  OZChannelBool::OZChannelBool((this + 7584), &v72, (this + 448), 0x72u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Color Repetitions");
  v34 = PSParticleType::PSParticleType_colorRepetitionsChanInfo::getInstance(v33);
  OZChannelDouble::OZChannelDouble((this + 7736), &v72, (this + 448), 0x71u, 0, 0, v34);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Take Image Color");
  OZChannelBool::OZChannelBool((this + 7888), &v72, (this + 448), 0x73u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Scale");
  OZChannelScale3D::OZChannelScale3D((this + 8040), 1.0, 1.0, 1.0, &v72, (this + 448), 0x74u, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Scale End");
  OZChannelScale3D::OZChannelScale3D((this + 8632), 1.0, 1.0, 1.0, &v72, (this + 448), 0x85u, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Scale Variance");
  v36 = PSParticleType::PSParticleType_scaleVarChanImpl::getInstance(v35);
  v37 = PSParticleType::PSParticleType_scaleVarChanInfo::getInstance(v36);
  OZChannel3D::OZChannel3D((this + 9224), &v72, (this + 448), 0x75u, 0, 2u, v36, v37);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Is Premultiplied");
  OZChannelBool::OZChannelBool((this + 9816), 0, &v72, (this + 448), 0x77u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Is Additive Blend");
  OZChannelBool::OZChannelBool((this + 9968), 0, &v72, (this + 448), 0x78u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Animate Image");
  OZChannelBool::OZChannelBool((this + 10120), 1, &v72, (this + 448), 0x79u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Random Source Start Frame");
  OZChannelBool::OZChannelBool((this + 10272), 1, &v72, (this + 448), 0x7Au, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Source Start Frame");
  v39 = PSParticleType::PSParticleType_sourceStartFrameChanImpl::getInstance(v38);
  v40 = PSParticleType::PSParticleType_sourceStartFrameChanInfo::getInstance(v39);
  OZChannelFrame::OZChannelFrame((this + 10424), &v72, (this + 448), 0x7Bu, 0, v39, v40);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Source Start Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 10576), &v72, (this + 448), 0x87u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Source Start Frame OS");
  v42 = PSParticleType::PSParticleType_sourceStartFrameOSChanImpl::getInstance(v41);
  v43 = PSParticleType::PSParticleType_sourceStartFrameOSChanInfo::getInstance(v42);
  OZChannelDoubleOverRange::OZChannelDoubleOverRange((this + 10728), 0.0, &v72, (this + 448), 0x95u, 2u, v42, v43);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Hold Frames");
  v45 = PSParticleType::PSParticleType_sourceHoldFramesChanImpl::getInstance(v44);
  OZChannelDouble::OZChannelDouble((this + 10888), 1, &v72, (this + 448), 0x7Cu, 0, v45, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Hold Frames Variance");
  OZChannelDouble::OZChannelDouble((this + 11040), &v72, (this + 448), 0x7Du, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Attach To Emitter");
  OZChannelPercent::OZChannelPercent((this + 11192), 0.0, &v72, (this + 448), 0x7Eu, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Shape Enum");
  PCURL::PCURL(&v73, @"Particle Type Shape");
  v47 = PSParticleType::PSParticleType_shapeChanImpl::getInstance(v46);
  OZChannelEnum::OZChannelEnum((this + 11344), 3u, &v72, &v73, (this + 448), 0x64u, 0, v47, 0);
  PCString::~PCString(&v73);
  PCString::~PCString(&v72);
  LODWORD(v42) = *(this + 20);
  PCURL::PCURL(&v72, @"Particle Type Seed");
  OZChannelSeed::OZChannelSeed((this + 11600), v42, &v72, (this + 448), 0x83u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Point Size");
  v49 = PSParticleType::PSParticleType_pointSizeChanImpl::getInstance(v48);
  v50 = PSParticleType::PSParticleType_pointSizeChanInfo::getInstance(v49);
  OZChannelDouble::OZChannelDouble((this + 11752), 2.0, &v72, (this + 448), 0x7Fu, 0, v49, v50);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Simulation Folder");
  OZChannelFolder::OZChannelFolder((this + 11904), &v72, (this + 448), 0x89u, 0, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Hidden Channel");
  OZChannelDouble::OZChannelDouble((this + 12032), 0.0, &v72, (this + 11904), 1u, 2, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Point Spacing");
  v52 = PSParticleType::PSParticleType_pointSpacingChanImpl::getInstance(v51);
  v53 = PSParticleType::PSParticleType_pointSpacingChanInfo::getInstance(v52);
  OZChannelPercent::OZChannelPercent((this + 12184), 0.25, &v72, (this + 448), 0x8Au, 0, v52, v53);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Point Spacing OS");
  v55 = PSParticleType::PSParticleType_pointSpacingOSChanImpl::getInstance(v54);
  v56 = PSParticleType::PSParticleType_pointSpacingOSChanInfo::getInstance(v55);
  OZChannelPercentOverRange::OZChannelPercentOverRange((this + 12336), 1.0, &v72, (this + 448), 0x8Bu, 0, v55, v56);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Stroke Width OS");
  v58 = PSParticleType::PSParticleType_strokeWidthOSChanImpl::getInstance(v57);
  v59 = PSParticleType::PSParticleType_strokeWidthOSChanInfo::getInstance(v58);
  OZChannelPercentOverRange::OZChannelPercentOverRange((this + 12496), 1.0, &v72, (this + 448), 0x8Cu, 0, v58, v59);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Is Constant Num Dabs");
  OZChannelBool::OZChannelBool((this + 12656), 1, &v72, (this + 448), 0x8Du, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Anchor Dabs To Enum");
  PCURL::PCURL(&v73, @"Particle Type Anchor Dabs To");
  v61 = PSParticleType::PSParticleType_anchorDabsToChanImpl::getInstance(v60);
  OZChannelEnum::OZChannelEnum((this + 12808), 1u, &v72, &v73, (this + 448), 0x97u, 0, v61, 0);
  PCString::~PCString(&v73);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Position Offset");
  OZChannel2D::OZChannel2D((this + 13064), 0.0, 0.0, &v72, (this + 448), 0x8Eu, 0, 2u, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Position Offset Variance");
  v63 = PSParticleType::PSParticleType_posOffsetVarChanImpl::getInstance(v62);
  OZChannelScale::OZChannelScale((this + 13504), 0.0, 0.0, &v72, (this + 448), 0x8Fu, 0, 2u, v63, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Position Offset Variance OS");
  OZChannelScaleOverRange::OZChannelScaleOverRange((this + 13944), 0.0, 0.0, &v72, (this + 448), 0x90u, 0, 0, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Image Node Ref");
  OZChanElementOrFootageRef::OZChanElementOrFootageRef((this + 14392), &v72, (this + 448), 0x80u, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 14552), 0, &v72, (this + 448), 0x88u, 2u, 0, 0);
  PCString::~PCString(&v72);
  v64 = PCString::PCString(&v72, "Hidden Channel");
  v65 = PSParticleType::PSParticleType_versionChanImpl::getInstance(v64);
  OZChannelDouble::OZChannelDouble((this + 14704), 5, &v72, (this + 448), 0x96u, 2, v65, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Hidden Channel");
  OZChannelBool::OZChannelBool((this + 14856), 0, &v72, (this + 448), 0x98u, 2u, 0, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Obsolete Rotation");
  OZChannelAngle::OZChannelAngle((this + 15008), 0.0, &v72, (this + 448), 0x6Cu, 2, 0, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Obsolete Rotation End");
  OZChannelAngle::OZChannelAngle((this + 15160), 0.0, &v72, (this + 448), 0x86u, 2, 0, 0);
  PCString::~PCString(&v72);
  PCString::PCString(&v72, "Obsolete Rotational Variance");
  OZChannelAngle::OZChannelAngle((this + 15312), 0.0, &v72, (this + 448), 0x6Du, 2, 0, 0);
  PCString::~PCString(&v72);
  *(this + 15464) = 1;
  *(this + 15480) = 0u;
  *(this + 1934) = this + 15480;
  *(this + 969) = 0u;
  *(this + 1937) = this + 15504;
  OZSystemSimulator::OZSystemSimulator(this + 15520, this + 1112);
  OZSystemSimulator::OZSystemSimulator(this + 15800, this + 1112);
  OZSystemSimulator::OZSystemSimulator(this + 16080, this + 1112);
  *(this + 16408) = 0u;
  *(this + 16424) = 0u;
  *(this + 16392) = 0u;
  v66 = MEMORY[0x277CC08F0];
  *(this + 16360) = 0u;
  *(this + 16376) = 0u;
  v67 = *v66;
  *(this + 16440) = *v66;
  v68 = *(v66 + 2);
  *(this + 2057) = v68;
  *(this + 1029) = v67;
  *(this + 2060) = v68;
  *(this + 16544) = 0;
  *(this + 16560) = 0;
  *(this + 1036) = 0u;
  *(this + 16488) = 0u;
  *(this + 2063) = 0;
  *(this + 2071) = this + 16576;
  *(this + 16600) = 0u;
  *(this + 2074) = this + 16600;
  PCSharedMutex::PCSharedMutex((this + 16616));
  *(this + 16728) = 0u;
  *(this + 2090) = this + 16728;
  PCSharedMutex::PCSharedMutex((this + 16744));
  *(this + 2108) = 0;
  *(this + 1053) = 0u;
  PCSharedMutex::PCSharedMutex((this + 16872));
  OZChannelBase::setFlag((this + 9816), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 9816));
  OZChannel::setMin((this + 4344), 0.0);
  OZChannel::setMin((this + 4496), 0.0);
  OZChannel::setMin((this + 4648), 0.0);
  OZChannel::setMin((this + 12336), 0.01);
  OZChannel::setSliderMin((this + 12336), 0.05);
  OZChannel::setMax((this + 12336), 3.40282347e38);
  OZChannel::setSliderMax((this + 12336), 4.0);
  OZChannel::setMax((this + 12496), 3.40282347e38);
  OZChannel::setSliderMax((this + 12496), 4.0);
  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(this + 14392, 0);
  OZChanObjectManipRef::setAlwaysUpdateDefaultValue(this + 14392, 1);
  OZChannel::setValueAndIgnoreRecordOption((this + 4048), MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  OZChannel::setValueAndIgnoreRecordOption((this + 4048), &v72);
  OZChannel::setValueAndIgnoreRecordOption((this + 12336), MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  OZChannel::setValueAndIgnoreRecordOption((this + 12336), &v72);
  OZChannel::setValueAndIgnoreRecordOption((this + 12496), MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  OZChannel::setValueAndIgnoreRecordOption((this + 12496), &v72);
  OZChannel::setValueAndIgnoreRecordOption((this + 10728), MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  OZChannel::setValueAndIgnoreRecordOption((this + 10728), &v72);
  (*(*(this + 1760) + 728))(this + 14080, MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  (*(*(this + 1760) + 728))(this + 14080, &v72);
  (*(*(this + 1779) + 728))(this + 14232, MEMORY[0x277CC08F0]);
  OZFigTimeForChannelSeconds(&v72, 1.0, 0x40000);
  (*(*(this + 1779) + 728))(this + 14232, &v72);
  OZChannelBase::resetFlag((this + 1728), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1728));
  OZChannelBase::resetFlag((this + 1272), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1272));
  OZChannelBase::resetFlag((this + 1424), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1424));
  OZChannelBase::resetFlag((this + 2032), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2032));
  OZChannelBase::resetFlag((this + 2184), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2184));
  OZChannelBase::resetFlag((this + 2336), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 2336));
  OZChannelBase::resetFlag((this + 3192), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 3192));
  OZChannelBase::resetFlag((this + 4048), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 4048));
  OZChannelBase::resetFlag((this + 4208), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 4208));
  OZChannelBase::resetFlag((this + 5216), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 5216));
  OZChannelBase::resetFlag((this + 5368), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 5368));
  OZChannelBase::resetFlag((this + 5624), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 5624));
  OZChannelBase::resetFlag((this + 6784), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 6784));
  OZChannelBase::resetFlag((this + 7584), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7584));
  OZChannelBase::resetFlag((this + 7736), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7736));
  OZChannelBase::resetFlag((this + 7888), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7888));
  OZChannelBase::resetFlag((this + 8040), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 8040));
  OZChannelBase::resetFlag((this + 8632), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 8632));
  OZChannelBase::resetFlag((this + 9816), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 9816));
  OZChannelBase::resetFlag(this + 89, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 89);
  OZChannelBase::resetFlag((this + 10120), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10120));
  OZChannelBase::resetFlag((this + 10272), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10272));
  OZChannelBase::resetFlag((this + 10424), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10424));
  OZChannelBase::resetFlag((this + 10576), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10576));
  OZChannelBase::resetFlag((this + 10888), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 10888));
  OZChannelBase::resetFlag((this + 11040), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 11040));
  OZChannelBase::resetFlag((this + 11192), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 11192));
  OZChannelBase::resetFlag((this + 11600), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 11600));
  OZChannelBase::resetFlag((this + 11752), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 11752));
  OZChannelBase::resetFlag((this + 11904), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 11904));
  OZChannelBase::resetFlag((this + 12184), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 12184));
  OZChannelBase::resetFlag((this + 12336), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 12336));
  OZChannelBase::resetFlag((this + 12496), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 12496));
  OZChannelBase::resetFlag(this + 113, 16, 0);
  OZChannelBase::saveStateAsDefault(this + 113);
  OZChannelBase::resetFlag((this + 12808), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 12808));
  OZChannelBase::resetFlag((this + 13064), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 13064));
  OZChannelBase::resetFlag((this + 13504), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 13504));
  OZChannelBase::resetFlag((this + 13944), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 13944));
  OZChannelBase::resetFlag((this + 14392), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 14392));
  OZChannelBase::resetFlag((this + 14552), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 14552));
  OZChannelBase::resetFlag((this + 14704), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 14704));
  OZChannelBase::resetFlag((this + 14856), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 14856));
  PCURL::PCURL(&v72, @"Particle Type Stroke Range");
  PCString::set(this + 525, &v72);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Stroke Range");
  PCString::set(this + 1561, &v72);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Stroke Range");
  PCString::set(this + 1581, &v72);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Stroke Range");
  PCString::set(this + 1798, &v72);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Stroke Range");
  PCString::set(this + 1360, &v72);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation");
  OZChannelBase::setName((this + 2776), &v72, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation End");
  OZChannelBase::setName((this + 3632), &v72, 0);
  PCString::~PCString(&v72);
  PCURL::PCURL(&v72, @"Particle Type Rotation Variance");
  OZChannelBase::setName((this + 4648), &v72, 0);
  PCString::~PCString(&v72);
  (*(*this + 1528))(this, 1);
  OZChannelFolder::setFoldFlag((this + 11904), 8519684);
  OZChannelFolder::saveStateAsDefault((this + 11904));
  *&v72.value = xmmword_260856FD0;
  Behavior = OZApplication::createBehavior(theApp, &v72);
  if (Behavior)
  {
  }

  else
  {
    v70 = 0;
  }

  (*(*this + 360))(this, v70, 0);
  v71 = OZSimulationBehavior::_MTF_IDGenerator--;
  OZChannelBase::setID((v70 + 56), v71);
}

void sub_2602ADB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, OZChannelBase *a11, void **a12, PCString a13, uint64_t a14, uint64_t a15, PCString a16)
{
  PCSharedMutex::~PCSharedMutex((v16 + 16872));
  v25 = *(v16 + 16848);
  if (v25)
  {
    *(v16 + 16856) = v25;
    operator delete(v25);
  }

  PCSharedMutex::~PCSharedMutex((v16 + 16744));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v16 + 16720, *v18);
  PCSharedMutex::~PCSharedMutex((v16 + 16616));
  std::__tree<std::__value_type<CMTime,PCPtr<LiImageSource>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCPtr<LiImageSource>>,PSParticleType::LessThanFigTime,true>,std::allocator<std::__value_type<CMTime,PCPtr<LiImageSource>>>>::destroy(v16 + 16592, *(v16 + 16600));
  std::__tree<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,std::__map_value_compare<PSParticleType::HGNodeCacheEntryKey,std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,PSParticleType::CompareHGNodeCacheEntries,true>,std::allocator<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>>>::destroy(v16 + 16568, *(v16 + 16576));
  v26 = *(v16 + 16408);
  if (v26)
  {
    *(v16 + 16416) = v26;
    operator delete(v26);
  }

  v27 = *(v16 + 0x4000);
  if (v27)
  {
    *(v16 + 16392) = v27;
    operator delete(v27);
  }

  v28 = *v23;
  if (*v23)
  {
    *(v16 + 16368) = v28;
    operator delete(v28);
  }

  OZSystemSimulator::~OZSystemSimulator((v16 + 16080));
  OZSystemSimulator::~OZSystemSimulator((v16 + 15800));
  OZSystemSimulator::~OZSystemSimulator((v16 + 15520));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v16 + 15496, *a12);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v16 + 15472, *v22);
  OZChannel::~OZChannel((v16 + 15312));
  OZChannel::~OZChannel((v16 + 15160));
  OZChannel::~OZChannel((v16 + 15008));
  OZChannelBool::~OZChannelBool((v16 + 14856));
  OZChannel::~OZChannel((v16 + 14704));
  OZChannelBool::~OZChannelBool((v16 + 14552));
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((v16 + v20));
  OZChannelScaleOverRange::~OZChannelScaleOverRange((v16 + 13944));
  OZChannel2D::~OZChannel2D((v16 + 13504));
  OZChannel2D::~OZChannel2D((v16 + 13064));
  OZChannelEnum::~OZChannelEnum((v16 + 12808));
  OZChannelBool::~OZChannelBool((v16 + 12656));
  OZChannelPercentOverRange::~OZChannelPercentOverRange((v16 + v19));
  OZChannelPercentOverRange::~OZChannelPercentOverRange((v16 + v17));
  OZChannelPercent::~OZChannelPercent((v16 + 12184));
  OZChannel::~OZChannel((v16 + 12032));
  OZChannelFolder::~OZChannelFolder((v16 + v21));
  OZChannel::~OZChannel((v16 + 11752));
  OZChannel::~OZChannel((v16 + 11600));
  OZChannelEnum::~OZChannelEnum((v16 + 11344));
  OZChannelPercent::~OZChannelPercent((v16 + 11192));
  OZChannel::~OZChannel((v16 + 11040));
  OZChannel::~OZChannel((v16 + 10888));
  OZChannelDoubleOverRange::~OZChannelDoubleOverRange((v16 + 10728));
  OZChannel::~OZChannel((v16 + 10576));
  OZChannel::~OZChannel((v16 + 10424));
  OZChannelBool::~OZChannelBool((v16 + 10272));
  OZChannelBool::~OZChannelBool((v16 + 10120));
  OZChannelBool::~OZChannelBool((v16 + 9968));
  OZChannelBool::~OZChannelBool((v16 + 9816));
  OZChannel3D::~OZChannel3D((v16 + 9224));
  OZChannelScale3D::~OZChannelScale3D((v16 + 8632));
  OZChannelScale3D::~OZChannelScale3D((v16 + 8040));
  OZChannelBool::~OZChannelBool((v16 + 7888));
  OZChannel::~OZChannel((v16 + 7736));
  OZChannelBool::~OZChannelBool((v16 + 7584));
  OZChannelGradient::~OZChannelGradient((v16 + 6784));
  OZChannelColor::~OZChannelColor((v16 + 5624));
  OZChannelEnum::~OZChannelEnum((v16 + 5368));
  OZChannel::~OZChannel((v16 + 5216));
  OZChannel::~OZChannel((v16 + 5064));
  OZChannelRotation3D::~OZChannelRotation3D((v16 + 4208));
  OZChannelAngleOverRange::~OZChannelAngleOverRange((v16 + 4048));
  OZChannelRotation3D::~OZChannelRotation3D((v16 + 3192));
  OZChannelRotation3D::~OZChannelRotation3D((v16 + 2336));
  OZChannelBool::~OZChannelBool((v16 + 2184));
  OZChannel::~OZChannel((v16 + 2032));
  OZChannel::~OZChannel((v16 + 1880));
  OZChannel::~OZChannel((v16 + 1728));
  OZChannel::~OZChannel((v16 + 1576));
  OZChannel::~OZChannel((v16 + 1424));
  OZChannel::~OZChannel((v16 + 1272));
  OZChannel::~OZChannel((v16 + 1120));
  OZChannelBase::setRangeName(a11, v29);
  OZSceneNode::~OZSceneNode(v16);
  _Unwind_Resume(a1);
}

void PSParticleType::PSParticleType(PSParticleType *this, PSParticleType *a2, char a3)
{
  OZSceneNode::OZSceneNode(this, a2, a3);
  OZImageNode::OZImageNode((v5 + 1088));
  *this = &unk_2872D1FE0;
  *(this + 2) = &unk_2872D2660;
  *(this + 6) = &unk_2872D28B8;
  *(this + 136) = &unk_2872D2910;
  *(this + 139) = &unk_2872D29E8;
  OZChannel::OZChannel((this + 1120), a2 + 10, (this + 448));
  *(this + 140) = &unk_287245C60;
  *(this + 142) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1272), (a2 + 1272), (this + 448));
  *(this + 159) = &unk_287245C60;
  *(this + 161) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1424), (a2 + 1424), (this + 448));
  *(this + 178) = &unk_287245C60;
  *(this + 180) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1576), (a2 + 1576), (this + 448));
  *(this + 197) = &unk_287245C60;
  *(this + 199) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1728), (a2 + 1728), (this + 448));
  *(this + 216) = &unk_287245C60;
  *(this + 218) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1880), (a2 + 1880), (this + 448));
  *(this + 235) = &unk_287245C60;
  *(this + 237) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2032), (a2 + 2032), (this + 448));
  *(this + 254) = &unk_287245C60;
  *(this + 256) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 2184), (a2 + 2184), (this + 448));
  OZChannelRotation3D::OZChannelRotation3D((this + 2336), (a2 + 2336), (this + 448));
  OZChannelRotation3D::OZChannelRotation3D((this + 3192), (a2 + 3192), (this + 448));
  OZChannelAngleOverRange::OZChannelAngleOverRange((this + 4048), (a2 + 4048), (this + 448));
  OZChannelRotation3D::OZChannelRotation3D((this + 4208), (a2 + 4208), (this + 448));
  OZChannel::OZChannel((this + 5064), (a2 + 5064), (this + 448));
  *(this + 633) = &unk_287246030;
  *(this + 635) = &unk_287246390;
  OZChannel::OZChannel((this + 5216), (a2 + 5216), (this + 448));
  *(this + 652) = &unk_287246030;
  *(this + 654) = &unk_287246390;
  OZChannelEnum::OZChannelEnum((this + 5368), (a2 + 5368), (this + 448));
  OZChannelColor::OZChannelColor((this + 5624), (a2 + 5624), (this + 448));
  OZChannelGradient::OZChannelGradient((this + 6784), (a2 + 6784), (this + 448));
  OZChannelBool::OZChannelBool((this + 7584), (a2 + 7584), (this + 448));
  OZChannel::OZChannel((this + 7736), (a2 + 7736), (this + 448));
  *(this + 967) = &unk_287245C60;
  *(this + 969) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 7888), (a2 + 7888), (this + 448));
  OZChannelScale3D::OZChannelScale3D((this + 8040), (a2 + 8040), (this + 448));
  OZChannelScale3D::OZChannelScale3D((this + 8632), (a2 + 8632), (this + 448));
  OZChannel3D::OZChannel3D((this + 9224), (a2 + 9224), (this + 448));
  OZChannelBool::OZChannelBool((this + 9816), (a2 + 9816), (this + 448));
  OZChannelBool::OZChannelBool((this + 9968), a2 + 89, (this + 448));
  OZChannelBool::OZChannelBool((this + 10120), (a2 + 10120), (this + 448));
  OZChannelBool::OZChannelBool((this + 10272), (a2 + 10272), (this + 448));
  OZChannel::OZChannel((this + 10424), (a2 + 10424), (this + 448));
  *(this + 1303) = &unk_287248280;
  *(this + 1305) = &unk_2872485E0;
  OZChannel::OZChannel((this + 10576), (a2 + 10576), (this + 448));
  *(this + 1322) = &unk_287245C60;
  *(this + 1324) = &unk_287245FC0;
  OZChannelDoubleOverRange::OZChannelDoubleOverRange((this + 10728), (a2 + 10728), (this + 448));
  OZChannel::OZChannel((this + 10888), (a2 + 10888), (this + 448));
  *(this + 1361) = &unk_287245C60;
  *(this + 1363) = &unk_287245FC0;
  OZChannel::OZChannel((this + 11040), (a2 + 11040), (this + 448));
  *(this + 1380) = &unk_287245C60;
  *(this + 1382) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 11192), (a2 + 11192), (this + 448));
  OZChannelEnum::OZChannelEnum((this + 11344), (a2 + 11344), (this + 448));
  OZChannel::OZChannel((this + 11600), (a2 + 11600), (this + 448));
  *(this + 1450) = &unk_287247AE0;
  *(this + 1452) = &unk_287247E40;
  OZChannel::OZChannel((this + 11752), (a2 + 11752), (this + 448));
  *(this + 1469) = &unk_287245C60;
  *(this + 1471) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 11904), (a2 + 11904), (this + 448));
  OZChannel::OZChannel((this + 12032), (a2 + 12032), (this + 11904));
  *(this + 1504) = &unk_287245C60;
  *(this + 1506) = &unk_287245FC0;
  OZChannelPercent::OZChannelPercent((this + 12184), (a2 + 12184), (this + 448));
  OZChannelPercentOverRange::OZChannelPercentOverRange((this + 12336), (a2 + 12336), (this + 448));
  OZChannelPercentOverRange::OZChannelPercentOverRange((this + 12496), (a2 + 12496), (this + 448));
  OZChannelBool::OZChannelBool((this + 12656), a2 + 113, (this + 448));
  OZChannelEnum::OZChannelEnum((this + 12808), (a2 + 12808), (this + 448));
  OZChannel2D::OZChannel2D((this + 13064), (a2 + 13064), (this + 448));
  OZChannelScale::OZChannelScale((this + 13504), (a2 + 13504), (this + 448));
  OZChannelScaleOverRange::OZChannelScaleOverRange((this + 13944), (a2 + 13944), (this + 448));
  OZChanElementOrFootageRef::OZChanElementOrFootageRef((this + 14392), (a2 + 14392), (this + 448));
  OZChannelBool::OZChannelBool((this + 14552), (a2 + 14552), (this + 448));
  OZChannel::OZChannel((this + 14704), (a2 + 14704), (this + 448));
  *(this + 1838) = &unk_287245C60;
  *(this + 1840) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 14856), (a2 + 14856), (this + 448));
  OZChannel::OZChannel((this + 15008), a2 + 134, (this + 448));
  *(this + 1876) = &unk_287246030;
  *(this + 1878) = &unk_287246390;
  OZChannel::OZChannel((this + 15160), (a2 + 15160), (this + 448));
  *(this + 1895) = &unk_287246030;
  *(this + 1897) = &unk_287246390;
  OZChannel::OZChannel((this + 15312), (a2 + 15312), (this + 448));
  *(this + 1914) = &unk_287246030;
  *(this + 1916) = &unk_287246390;
  *(this + 15464) = 1;
  *(this + 15480) = 0u;
  *(this + 1934) = this + 15480;
  *(this + 969) = 0u;
  *(this + 1937) = this + 15504;
  OZSystemSimulator::OZSystemSimulator(this + 15520, this + 1112);
  OZSystemSimulator::OZSystemSimulator(this + 15800, this + 1112);
  OZSystemSimulator::OZSystemSimulator(this + 16080, this + 1112);
  *(this + 16408) = 0u;
  *(this + 16424) = 0u;
  *(this + 16376) = 0u;
  *(this + 16392) = 0u;
  *(this + 16360) = 0u;
  v6 = MEMORY[0x277CC08F0];
  v7 = *MEMORY[0x277CC08F0];
  *(this + 16440) = *MEMORY[0x277CC08F0];
  v8 = *(v6 + 16);
  *(this + 2057) = v8;
  *(this + 1029) = v7;
  *(this + 2060) = v8;
  *(this + 16488) = 0u;
  *(this + 16544) = *(a2 + 16544);
  *(this + 16560) = *(a2 + 16560);
  *(this + 1036) = 0u;
  *(this + 2071) = this + 16576;
  *(this + 16600) = 0u;
  *(this + 2074) = this + 16600;
  PCSharedMutex::PCSharedMutex((this + 16616));
  *(this + 16728) = 0u;
  *(this + 2090) = this + 16728;
  PCSharedMutex::PCSharedMutex((this + 16744));
  *(this + 2108) = 0;
  *(this + 1053) = 0u;
  PCSharedMutex::PCSharedMutex((this + 16872));
  OZScene::setApplyMotionEffectScaleTo3DObjectRenders(this + 14392, 0);
  OZChanObjectManipRef::setAlwaysUpdateDefaultValue(this + 14392, 1);
  PCURL::PCURL(&v15, @"Particle Type Stroke Range");
  PCString::set(this + 525, &v15);
  PCString::~PCString(&v15);
  PCURL::PCURL(v9, @"Particle Type Stroke Range");
  PCString::set(this + 1561, &v15);
  PCString::~PCString(&v15);
  PCURL::PCURL(v10, @"Particle Type Stroke Range");
  PCString::set(this + 1581, &v15);
  PCString::~PCString(&v15);
  PCURL::PCURL(v11, @"Particle Type Stroke Range");
  PCString::set(this + 1798, &v15);
  PCString::~PCString(&v15);
  PCURL::PCURL(v12, @"Particle Type Rotation");
  OZChannelBase::setName((this + 2776), &v15, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(v13, @"Particle Type Rotation End");
  OZChannelBase::setName((this + 3632), &v15, 0);
  PCString::~PCString(&v15);
  PCURL::PCURL(v14, @"Particle Type Rotation Variance");
  OZChannelBase::setName((this + 4648), &v15, 0);
  PCString::~PCString(&v15);
}

void sub_2602AF234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannel *a19, OZChannel *a20, OZChannel *a21, OZChannel *a22, OZChannel *a23, OZChannel *a24, OZChannel *a25)
{
  PCString::~PCString((v34 - 96));
  PCSharedMutex::~PCSharedMutex((v25 + 16872));
  v36 = *(v25 + 16848);
  if (v36)
  {
    *(v25 + 16856) = v36;
    operator delete(v36);
  }

  PCSharedMutex::~PCSharedMutex((v25 + 16744));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v25 + 16720, *v26);
  PCSharedMutex::~PCSharedMutex((v25 + 16616));
  std::__tree<std::__value_type<CMTime,PCPtr<LiImageSource>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCPtr<LiImageSource>>,PSParticleType::LessThanFigTime,true>,std::allocator<std::__value_type<CMTime,PCPtr<LiImageSource>>>>::destroy(v25 + 16592, *(v25 + 16600));
  std::__tree<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,std::__map_value_compare<PSParticleType::HGNodeCacheEntryKey,std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,PSParticleType::CompareHGNodeCacheEntries,true>,std::allocator<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>>>::destroy(v25 + 16568, *(v25 + 16576));
  v37 = *(v25 + 16408);
  if (v37)
  {
    *(v25 + 16416) = v37;
    operator delete(v37);
  }

  v38 = *(v25 + 0x4000);
  if (v38)
  {
    *(v25 + 16392) = v38;
    operator delete(v38);
  }

  v39 = *v27;
  if (*v27)
  {
    *(v25 + 16368) = v39;
    operator delete(v39);
  }

  OZSystemSimulator::~OZSystemSimulator((v25 + 16080));
  OZSystemSimulator::~OZSystemSimulator((v25 + 15800));
  OZSystemSimulator::~OZSystemSimulator((v25 + 15520));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v25 + 15496, *v33);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v25 + 15472, *v32);
  OZChannel::~OZChannel(v31);
  OZChannel::~OZChannel(v30);
  OZChannel::~OZChannel(v29);
  OZChannelBool::~OZChannelBool((v25 + 14856));
  OZChannel::~OZChannel(v28);
  OZChannelBool::~OZChannelBool((v25 + 14552));
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((v25 + 14392));
  OZChannelScaleOverRange::~OZChannelScaleOverRange((v25 + 13944));
  OZChannel2D::~OZChannel2D((v25 + 13504));
  OZChannel2D::~OZChannel2D((v25 + 13064));
  OZChannelEnum::~OZChannelEnum((v25 + 12808));
  OZChannelBool::~OZChannelBool((v25 + 12656));
  OZChannelPercentOverRange::~OZChannelPercentOverRange((v25 + 12496));
  OZChannelPercentOverRange::~OZChannelPercentOverRange((v25 + 12336));
  OZChannelPercent::~OZChannelPercent((v25 + 12184));
  OZChannel::~OZChannel(a10);
  OZChannelFolder::~OZChannelFolder((v25 + 11904));
  OZChannel::~OZChannel(a11);
  OZChannel::~OZChannel(a12);
  OZChannelEnum::~OZChannelEnum((v25 + 11344));
  OZChannelPercent::~OZChannelPercent((v25 + 11192));
  OZChannel::~OZChannel(a13);
  OZChannel::~OZChannel(a14);
  OZChannelDoubleOverRange::~OZChannelDoubleOverRange((v25 + 10728));
  OZChannel::~OZChannel(a15);
  OZChannel::~OZChannel(a16);
  OZChannelBool::~OZChannelBool((v25 + 10272));
  OZChannelBool::~OZChannelBool((v25 + 10120));
  OZChannelBool::~OZChannelBool((v25 + 9968));
  OZChannelBool::~OZChannelBool((v25 + 9816));
  OZChannel3D::~OZChannel3D((v25 + 9224));
  OZChannelScale3D::~OZChannelScale3D((v25 + 8632));
  OZChannelScale3D::~OZChannelScale3D((v25 + 8040));
  OZChannelBool::~OZChannelBool((v25 + 7888));
  OZChannel::~OZChannel(a17);
  OZChannelBool::~OZChannelBool((v25 + 7584));
  OZChannelGradient::~OZChannelGradient((v25 + 6784));
  OZChannelColor::~OZChannelColor((v25 + 5624));
  OZChannelEnum::~OZChannelEnum((v25 + 5368));
  OZChannel::~OZChannel(a18);
  OZChannel::~OZChannel(a19);
  OZChannelRotation3D::~OZChannelRotation3D((v25 + 4208));
  OZChannelAngleOverRange::~OZChannelAngleOverRange((v25 + 4048));
  OZChannelRotation3D::~OZChannelRotation3D((v25 + 3192));
  OZChannelRotation3D::~OZChannelRotation3D((v25 + 2336));
  OZChannelBool::~OZChannelBool((v25 + 2184));
  OZChannel::~OZChannel(a20);
  OZChannel::~OZChannel(a21);
  OZChannel::~OZChannel(a22);
  OZChannel::~OZChannel(a23);
  OZChannel::~OZChannel(a24);
  OZChannel::~OZChannel(a25);
  OZChannel::~OZChannel(*(v34 - 120));
  OZChannelBase::setRangeName(*(v34 - 112), v40);
  OZSceneNode::~OZSceneNode(v25);
  _Unwind_Resume(a1);
}

void PSParticleType::~PSParticleType(PSParticleType *this)
{
  *this = &unk_2872D1FE0;
  *(this + 2) = &unk_2872D2660;
  *(this + 6) = &unk_2872D28B8;
  v2 = (this + 1088);
  *(this + 136) = &unk_2872D2910;
  *(this + 139) = &unk_2872D29E8;
  OZSystemSimulator::flushCache((this + 15520), 1, 0);
  OZSystemSimulator::flushCache((this + 15800), 1, 0);
  OZSystemSimulator::flushCache((this + 16080), 1, 0);
  PCSharedMutex::~PCSharedMutex((this + 16872));
  v3 = *(this + 2106);
  if (v3)
  {
    *(this + 2107) = v3;
    operator delete(v3);
  }

  PCSharedMutex::~PCSharedMutex((this + 16744));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 16720, *(this + 2091));
  PCSharedMutex::~PCSharedMutex((this + 16616));
  std::__tree<std::__value_type<CMTime,PCPtr<LiImageSource>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,PCPtr<LiImageSource>>,PSParticleType::LessThanFigTime,true>,std::allocator<std::__value_type<CMTime,PCPtr<LiImageSource>>>>::destroy(this + 16592, *(this + 2075));
  std::__tree<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,std::__map_value_compare<PSParticleType::HGNodeCacheEntryKey,std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>,PSParticleType::CompareHGNodeCacheEntries,true>,std::allocator<std::__value_type<PSParticleType::HGNodeCacheEntryKey,PSParticleType::HGNodeCacheEntryValue>>>::destroy(this + 16568, *(this + 2072));
  v4 = *(this + 2051);
  if (v4)
  {
    *(this + 2052) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2048);
  if (v5)
  {
    *(this + 2049) = v5;
    operator delete(v5);
  }

  v6 = *(this + 2045);
  if (v6)
  {
    *(this + 2046) = v6;
    operator delete(v6);
  }

  OZSystemSimulator::~OZSystemSimulator((this + 16080));
  OZSystemSimulator::~OZSystemSimulator((this + 15800));
  OZSystemSimulator::~OZSystemSimulator((this + 15520));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 15496, *(this + 1938));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 15472, *(this + 1935));
  OZChannel::~OZChannel((this + 15312));
  OZChannel::~OZChannel((this + 15160));
  OZChannel::~OZChannel((this + 15008));
  OZChannelBool::~OZChannelBool((this + 14856));
  OZChannel::~OZChannel((this + 14704));
  OZChannelBool::~OZChannelBool((this + 14552));
  OZChanElementOrFootageRef::~OZChanElementOrFootageRef((this + 14392));
  *(this + 1743) = &unk_2872530E0;
  *(this + 1745) = &unk_287253458;
  PCString::~PCString(this + 1798);
  OZChannel2D::~OZChannel2D((this + 13944));
  OZChannel2D::~OZChannel2D((this + 13504));
  OZChannel2D::~OZChannel2D((this + 13064));
  OZChannelEnum::~OZChannelEnum((this + 12808));
  OZChannelBool::~OZChannelBool((this + 12656));
  *(this + 1562) = &unk_287252908;
  *(this + 1564) = &unk_287252CB8;
  PCString::~PCString(this + 1581);
  OZChanObjectRef::~OZChanObjectRef((this + 12496));
  *(this + 1542) = &unk_287252908;
  *(this + 1544) = &unk_287252CB8;
  PCString::~PCString(this + 1561);
  OZChanObjectRef::~OZChanObjectRef((this + 12336));
  OZChannelPercent::~OZChannelPercent((this + 12184));
  OZChannel::~OZChannel((this + 12032));
  OZChannelFolder::~OZChannelFolder((this + 11904));
  OZChannel::~OZChannel((this + 11752));
  OZChannel::~OZChannel((this + 11600));
  OZChannelEnum::~OZChannelEnum((this + 11344));
  OZChannelPercent::~OZChannelPercent((this + 11192));
  OZChannel::~OZChannel((this + 11040));
  OZChannel::~OZChannel((this + 10888));
  *(this + 1341) = &unk_2872520F8;
  *(this + 1343) = &unk_2872524A8;
  PCString::~PCString(this + 1360);
  OZChannel::~OZChannel((this + 10728));
  OZChannel::~OZChannel((this + 10576));
  OZChannel::~OZChannel((this + 10424));
  OZChannelBool::~OZChannelBool((this + 10272));
  OZChannelBool::~OZChannelBool((this + 10120));
  OZChannelBool::~OZChannelBool((this + 9968));
  OZChannelBool::~OZChannelBool((this + 9816));
  *(this + 1153) = &unk_28724B1C8;
  *(this + 1155) = &unk_28724B528;
  OZChannel::~OZChannel((this + 9664));
  OZChannel2D::~OZChannel2D((this + 9224));
  *(this + 1079) = &unk_2872557A8;
  *(this + 1081) = &unk_287255B00;
  OZChannel::~OZChannel((this + 9072));
  OZChannel2D::~OZChannel2D((this + 8632));
  *(this + 1005) = &unk_2872557A8;
  *(this + 1007) = &unk_287255B00;
  OZChannel::~OZChannel((this + 8480));
  OZChannel2D::~OZChannel2D((this + 8040));
  OZChannelBool::~OZChannelBool((this + 7888));
  OZChannel::~OZChannel((this + 7736));
  OZChannelBool::~OZChannelBool((this + 7584));
  OZChannelGradient::~OZChannelGradient((this + 6784));
  *(this + 703) = &unk_28724C608;
  *(this + 705) = &unk_28724C978;
  OZChannel::~OZChannel((this + 6632));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 5624));
  OZChannelEnum::~OZChannelEnum((this + 5368));
  OZChannel::~OZChannel((this + 5216));
  OZChannel::~OZChannel((this + 5064));
  OZChannelRotation3D::~OZChannelRotation3D((this + 4208));
  *(this + 506) = &unk_287252500;
  *(this + 508) = &unk_2872528B0;
  PCString::~PCString(this + 525);
  OZChannel::~OZChannel((this + 4048));
  OZChannelRotation3D::~OZChannelRotation3D((this + 3192));
  OZChannelRotation3D::~OZChannelRotation3D((this + 2336));
  OZChannelBool::~OZChannelBool((this + 2184));
  OZChannel::~OZChannel((this + 2032));
  OZChannel::~OZChannel((this + 1880));
  OZChannel::~OZChannel((this + 1728));
  OZChannel::~OZChannel((this + 1576));
  OZChannel::~OZChannel((this + 1424));
  OZChannel::~OZChannel((this + 1272));
  OZChannel::~OZChannel((this + 1120));
  OZChannelBase::setRangeName(v2, v7);

  OZSceneNode::~OZSceneNode(this);
}

{
  PSParticleType::~PSParticleType(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toPSParticleType::~PSParticleType(PSParticleType *this)
{
  PSParticleType::~PSParticleType((this - 16));
}

{
  PSParticleType::~PSParticleType((this - 48));
}

{
  PSParticleType::~PSParticleType((this - 1088));
}

{
  PSParticleType::~PSParticleType((this - 1112));
}

{
  PSParticleType::~PSParticleType((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  PSParticleType::~PSParticleType((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  PSParticleType::~PSParticleType((this - 1088));

  JUMPOUT(0x2666E9F00);
}

{
  PSParticleType::~PSParticleType((this - 1112));

  JUMPOUT(0x2666E9F00);
}

uint64_t PSParticleType::operator=(uint64_t a1, const void *a2)
{
  OZSceneNode::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  v6 = v4 + 16544;
  OZChannelBase::operator=(a1 + 11344, (v4 + 11344));
  OZChannelBase::operator=(a1 + 1120, &v5[140]);
  OZChannelBase::operator=(a1 + 1272, &v5[159]);
  OZChannelBase::operator=(a1 + 1424, &v5[178]);
  OZChannelBase::operator=(a1 + 1576, &v5[197]);
  OZChannelBase::operator=(a1 + 1728, &v5[216]);
  OZChannelBase::operator=(a1 + 1880, &v5[235]);
  OZChannelBase::operator=(a1 + 2032, &v5[254]);
  OZChannelPosition::operator=(a1 + 2336, &v5[292]);
  OZChannelPosition::operator=(a1 + 3192, &v5[399]);
  OZChannelBase::operator=(a1 + 4048, &v5[506]);
  PCString::set((a1 + 4200), v5 + 525);
  OZChannelPosition::operator=(a1 + 4208, &v5[526]);
  OZChannelBase::operator=(a1 + 5064, &v5[633]);
  OZChannelBase::operator=(a1 + 5216, &v5[652]);
  OZChannelBase::operator=(a1 + 5368, &v5[671]);
  OZChannelFolder::operator=(a1 + 5624);
  OZChannelBase::operator=(a1 + 5760, &v5[720]);
  OZChannelBase::operator=(a1 + 5912, &v5[739]);
  OZChannelBase::operator=(a1 + 6064, &v5[758]);
  OZChannelBase::operator=(a1 + 6216, &v5[777]);
  OZChannelBase::operator=(a1 + 6368, &v5[796]);
  *(a1 + 6624) = v5[828].var0;
  OZChannelBase::operator=(a1 + 6632, &v5[829]);
  OZChannelFolder::operator=(a1 + 6784);
  OZChannelFolder::operator=(a1 + 6912);
  OZChannelFolder::operator=(a1 + 7040);
  OZChannelBase::operator=(a1 + 7168, &v5[896]);
  OZChannelBase::operator=(a1 + 7320, &v5[915]);
  v7 = BYTE4(v5[947].var0);
  *(a1 + 7576) = v5[947].var0;
  *(a1 + 7580) = v7;
  OZChannelBase::operator=(a1 + 7584, &v5[948]);
  OZChannelBase::operator=(a1 + 7736, &v5[967]);
  OZChannelBase::operator=(a1 + 7888, &v5[986]);
  OZChannelFolder::operator=(a1 + 8040);
  OZChannelBase::operator=(a1 + 8176, &v5[1022]);
  OZChannelBase::operator=(a1 + 8328, &v5[1041]);
  OZChannelBase::operator=(a1 + 8480, &v5[1060]);
  OZChannelFolder::operator=(a1 + 8632);
  OZChannelBase::operator=(a1 + 8768, &v5[1096]);
  OZChannelBase::operator=(a1 + 8920, &v5[1115]);
  OZChannelBase::operator=(a1 + 9072, &v5[1134]);
  OZChannelFolder::operator=(a1 + 9224);
  OZChannelBase::operator=(a1 + 9360, &v5[1170]);
  OZChannelBase::operator=(a1 + 9512, &v5[1189]);
  OZChannelBase::operator=(a1 + 9664, &v5[1208]);
  OZChannelBase::operator=(a1 + 9816, &v5[1227]);
  OZChannelBase::operator=(a1 + 9968, &v5[1246]);
  OZChannelBase::operator=(a1 + 10120, &v5[1265]);
  OZChannelBase::operator=(a1 + 10272, &v5[1284]);
  OZChannelBase::operator=(a1 + 10424, &v5[1303]);
  OZChannelBase::operator=(a1 + 10576, &v5[1322]);
  OZChannelBase::operator=(a1 + 10728, &v5[1341]);
  PCString::set((a1 + 10880), v5 + 1360);
  OZChannelBase::operator=(a1 + 10888, &v5[1361]);
  OZChannelBase::operator=(a1 + 11040, &v5[1380]);
  OZChannelBase::operator=(a1 + 11192, &v5[1399]);
  OZChannelBase::operator=(a1 + 11600, &v5[1450]);
  OZChannelBase::operator=(a1 + 11752, &v5[1469]);
  OZChannelFolder::operator=(a1 + 11904);
  OZChannelBase::operator=(a1 + 12032, &v5[1504]);
  OZChannelFolder::operator=(a1 + 13064);
  OZChannelBase::operator=(a1 + 13200, &v5[1650]);
  OZChannelBase::operator=(a1 + 13352, &v5[1669]);
  OZChannelFolder::operator=(a1 + 13504);
  OZChannelBase::operator=(a1 + 13640, &v5[1705]);
  OZChannelBase::operator=(a1 + 13792, &v5[1724]);
  OZChannelFolder::operator=(a1 + 13944);
  OZChannelBase::operator=(a1 + 14080, &v5[1760]);
  OZChannelBase::operator=(a1 + 14232, &v5[1779]);
  PCString::set((a1 + 14384), v5 + 1798);
  OZChanSceneNodeRef::operator=(a1 + 14392, &v5[1799]);
  OZChannelBase::operator=(a1 + 14552, &v5[1819]);
  OZChannelBase::operator=(a1 + 14704, &v5[1838]);
  OZChannelBase::operator=(a1 + 14856, &v5[1857]);
  OZChannelBase::operator=(a1 + 15008, &v5[1876]);
  OZChannelBase::operator=(a1 + 15160, &v5[1895]);
  OZChannelBase::operator=(a1 + 15312, &v5[1914]);
  *(a1 + 15464) = 1;
  OZSystemSimulator::flushCache((a1 + 15520), 1, 1);
  OZSystemSimulator::flushCache((a1 + 15800), 1, 1);
  result = OZSystemSimulator::flushCache((a1 + 16080), 1, 1);
  *(a1 + 16544) = *v6;
  *(a1 + 16560) = v6[16];
  return result;
}

__n128 PSParticleType::getBounds(uint64_t a1, __n128 *a2)
{
  v3 = (*(*a1 + 1336))(a1);
  if (v3)
  {
    v4 = *(*v3 + 16);

    v4();
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a2[1] = result;
  }

  return result;
}

uint64_t PSParticleType::getDimensions(PSParticleType *this, float *a2, float *a3, const OZRenderState *a4)
{
  result = (*(*this + 1336))(this);
  if (result)
  {
    v7 = *(*result + 96);

    return v7();
  }

  else
  {
    *a2 = 0.0;
    *a3 = 0.0;
  }

  return result;
}

uint64_t PSParticleType::getState(PSParticleType *this, unsigned int a2, const CMTime *a3, OZSimStateArray **a4, BOOL *a5)
{
  result = (*(*this + 1640))(this);
  if (a2 <= 2)
  {

    return OZSystemSimulator::getState((this + 280 * a2 + 15520), a3, a4, a5);
  }

  return result;
}

void PSParticleType::getSourceImageBounds(uint64_t a1, const OZRenderState *a2, _OWORD *a3)
{
  v42 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v43 = _Q0;
  v40 = *&a2->var0.var0;
  var3 = a2->var0.var3;
  v38 = 0uLL;
  v39 = 0;
  v11 = (*(*a1 + 272))();
  OZSceneSettings::getFrameDuration((v11 + 336), &v38);
  *&time1.var0.var0 = v40;
  time1.var0.var3 = var3;
  v35 = v38;
  *v36 = v39;
  PC_CMTimeFloorToSampleDuration(&time1, &v35, &v40);
  PCSharedMutex::lock((a1 + 16872));
  v12 = *(a1 + 16848);
  v13 = *(a1 + 16856);
  while (v12 != v13)
  {
    *&time1.var0.var0 = v40;
    time1.var0.var3 = var3;
    v14 = *v12;
    *v36 = *(v12 + 16);
    v35 = v14;
    if (!CMTimeCompare(&time1, &v35))
    {
      v15 = *(v12 + 40);
      *a3 = *(v12 + 24);
      a3[1] = v15;
      goto LABEL_27;
    }

    v12 += 56;
  }

  OZRenderState::OZRenderState(&time1, a2);
  if (OZChannel::getValueAsInt((a1 + 14552), MEMORY[0x277CC08F0], 0.0) || (v16 = *(a1 + 16504)) == 0)
  {
    (*(**(a1 + 16488) + 16))(*(a1 + 16488), &v42, &time1);
  }

  else
  {
    OZElement::getImageBoundsWithDropShadow(v16, &v42, &time1);
  }

  v17 = v42;
  v18 = v43;
  *a3 = v42;
  a3[1] = v18;
  v35 = v40;
  *v36 = var3;
  *&v36[8] = v17;
  *&v36[24] = v18;
  v19 = *(a1 + 16856);
  v20 = *(a1 + 16864);
  if (v19 >= v20)
  {
    v22 = *(a1 + 16848);
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v19 - v22) >> 3);
    v24 = v23 + 1;
    if ((v23 + 1) > 0x492492492492492)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v25 = 0x6DB6DB6DB6DB6DB7 * ((v20 - v22) >> 3);
    if (2 * v25 > v24)
    {
      v24 = 2 * v25;
    }

    if (v25 >= 0x249249249249249)
    {
      v26 = 0x492492492492492;
    }

    else
    {
      v26 = v24;
    }

    if (v26)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PSParticleType::SourceBoundsCacheEntry>>(a1 + 16848, v26);
    }

    v27 = 56 * v23;
    *v27 = v35;
    *(v27 + 16) = *v36;
    *(v27 + 32) = *&v36[16];
    *(v27 + 48) = *&v36[32];
    v21 = 56 * v23 + 56;
    v28 = *(a1 + 16856);
    v29 = *(a1 + 16848);
    v30 = (v27 + v29 - v28);
    if (v29 != v28)
    {
      v31 = v30;
      do
      {
        v32 = *v29;
        v33 = v29[1];
        v34 = v29[2];
        *(v31 + 6) = *(v29 + 6);
        *(v31 + 1) = v33;
        *(v31 + 2) = v34;
        *v31 = v32;
        v31 += 56;
        v29 = (v29 + 56);
      }

      while (v29 != v28);
      v29 = *(a1 + 16848);
    }

    *(a1 + 16848) = v30;
    *(a1 + 16856) = v21;
    *(a1 + 16864) = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v19 = v35;
    *(v19 + 16) = *v36;
    *(v19 + 32) = *&v36[16];
    *(v19 + 48) = *&v36[32];
    v21 = v19 + 56;
  }

  *(a1 + 16856) = v21;
LABEL_27:
  PCSharedMutex::unlock((a1 + 16872));
}

float64x2_t PSParticleType::getPointParticleBounds(uint64_t a1, float64x2_t *a2, CMTime *a3, float64x2_t *a4)
{
  OZChannel::getValueAsDouble((a1 + 11752), a3, 0.0);
  a4[1].f64[0] = *&v6 + *&v6;
  a4[1].f64[1] = *&v6 + *&v6;
  result = vsubq_f64(a2[11], vdupq_lane_s64(v6, 0));
  *a4 = result;
  return result;
}

CGColorSpace **PSParticleType::addProjectedPointParticleBounds(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 8);
  v9 = *(v8 + 16);
  *&v29.value = *v8;
  v29.epoch = v9;
  OZChannel::getValueAsDouble((a1 + 11752), &v29, 0.0);
  v23 = v10;
  PSSequencedValues::PSSequencedValues(v26);
  v11 = *(a3 + 232);
  if (v11)
  {
  }

  else
  {
    v12 = 0;
  }

  v13 = (*(*a1 + 1616))(a1, &v29, v12, v26);
  v14 = *(a3 + 176) + *&v27[5];
  v24 = vaddq_f64(*(a3 + 184), v28);
  v15 = *(a2 + 1452);
  if (v15 < 1)
  {
LABEL_10:
    v20 = 0;
    v21 = vaddq_f64(*&v23, v24);
    v30[2] = v21.f64[1];
    v30[5] = v21.f64[1];
    v30[0] = v14 - v23;
    v30[1] = v24.f64[0] - v23;
    v30[3] = v23 + v14;
    v30[4] = v24.f64[0] - v23;
    v31 = v21;
    v30[6] = v23 + v14;
    v32 = v14 - v23;
    v33 = v21;
    do
    {
      PCMatrix44Tmpl<double>::transform<double>((a2 + 1632), &v30[v20], &v30[v20]);
      v25 = *&v30[v20];
      PCRect<double>::operator|=(a4, &v25);
      v20 += 3;
    }

    while (v20 != 12);
  }

  else
  {
    v16 = 0;
    v17 = 24;
    while (1)
    {
      if (v16 >= *(a2 + 1452))
      {
        PCArray_base::badIndex(v13);
      }

      v18 = (*(a2 + 1456) + v17);
      v19 = vmulq_f64(v24, *(v18 - 2));
      if (*v18 + v14 * *(v18 - 3) + v19.f64[0] + v19.f64[1] < 0.0)
      {
        break;
      }

      ++v16;
      v17 += 32;
      if (v15 == v16)
      {
        goto LABEL_10;
      }
    }
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(v27);
}

float64x2_t PSParticleType::getLineParticleBounds(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v5 = *(a2 + 16) + *(a2 + 72);
  v22 = vaddq_f64(*a2, *(a2 + 56));
  v23 = v5;
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
  (*(*a1 + 1416))(a1, a1 + 15520, &v12, a3);
  PCMatrix44Tmpl<double>::transform<double>(&v12, v22.f64, v22.f64);
  v6.f64[0] = v22.f64[0];
  v7 = fmin(v22.f64[0], 0.0);
  if (v22.f64[0] < 0.0)
  {
    v6.f64[0] = 0.0;
  }

  v8 = v7;
  v6.f64[1] = v22.f64[1];
  v9 = vcgtq_f64(*&v7, v6);
  v10 = vbslq_s8(v9, v6, *&v7);
  result = vsubq_f64(vbslq_s8(v9, *&v8, v6), v10);
  *a4 = v10;
  a4[1] = result;
  return result;
}

CGColorSpace **PSParticleType::addProjectedLineParticleBounds(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(a2 + 8);
  v9 = *(v8 + 2);
  v58 = *v8;
  v59 = v9;
  PSSequencedValues::PSSequencedValues(v54);
  v10 = *(a3 + 232);
  if (v10)
  {
  }

  else
  {
    v11 = 0;
  }

  (*(*a1 + 1616))(a1, &v58, v11, v54);
  v12 = *(a3 + 192) + v57;
  v38 = vaddq_f64(*(a3 + 176), v56);
  v52 = v38;
  v53 = v12;
  v13 = *(a3 + 16) + *(a3 + 72);
  v50 = vaddq_f64(*a3, *(a3 + 56));
  v51 = v13;
  v49 = 0x3FF0000000000000;
  v46 = 0x3FF0000000000000;
  v43 = 0x3FF0000000000000;
  v40 = 0x3FF0000000000000;
  v41 = 0u;
  v42 = 0u;
  v44 = 0u;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  (*(*a1 + 1416))(a1, a1 + 15520, &v40, &v58);
  v14 = PCMatrix44Tmpl<double>::transform<double>(&v40, v50.f64, v50.f64);
  v15 = vaddq_f64(v56, v50);
  v50 = v15;
  v16 = v57 + v51;
  v51 = v57 + v51;
  v17 = *(a2 + 1452);
  if (v17 < 1)
  {
LABEL_19:
    PCMatrix44Tmpl<double>::transform<double>((a2 + 1632), v52.f64, v52.f64);
    v39 = v52;
    PCRect<double>::operator|=(a4, &v39);
    PCMatrix44Tmpl<double>::transform<double>((a2 + 1632), v50.f64, v50.f64);
    v39 = v50;
    PCRect<double>::operator|=(a4, &v39);
  }

  else
  {
    v18 = 0;
    v19 = v15.f64[1];
    v20 = v38.f64[1];
    v21 = 16;
    while (1)
    {
      if (v18 >= *(a2 + 1452))
      {
        PCArray_base::badIndex(v14);
      }

      v22 = (*(a2 + 1456) + v21);
      v24 = *(v22 - 2);
      v23 = *(v22 - 1);
      v26 = *v22;
      v25 = v22[1];
      v27 = v24 * v38.f64[0] + v23 * v20 + *v22 * v12;
      v28 = v24 * v15.f64[0] + v23 * v19 + *v22 * v16;
      v29 = v25 + v28;
      if (v25 + v27 < 0.0 && v29 < 0.0)
      {
        break;
      }

      if (v25 + v27 < 0.0)
      {
        v35 = v24 * (v38.f64[0] - v15.f64[0]) + v23 * (v20 - v19) + v26 * (v12 - v16);
        if (fabs(v35) < 0.0000001)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v55);
        }

        v36 = (-v28 - v25) / v35;
        if (v36 <= 0.0)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v55);
        }

        v20 = v19 + (v20 - v19) * v36;
        v12 = v16 + (v12 - v16) * v36;
        v38.f64[0] = v15.f64[0] + (v38.f64[0] - v15.f64[0]) * v36;
        v52.f64[0] = v38.f64[0];
        v52.f64[1] = v20;
        v53 = v12;
      }

      else if (v29 < 0.0)
      {
        v30 = v15.f64[0] - v38.f64[0];
        v31 = v19 - v20;
        v32 = v16 - v12;
        v33 = v24 * v30 + v23 * v31 + v26 * v32;
        if (fabs(v33) < 0.0000001)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v55);
        }

        v34 = (-v27 - v25) / v33;
        if (v34 <= 0.0)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v55);
        }

        v15.f64[0] = v38.f64[0] + v30 * v34;
        v19 = v20 + v31 * v34;
        v16 = v12 + v32 * v34;
        v50.f64[0] = v15.f64[0];
        v50.f64[1] = v19;
        v51 = v16;
      }

      ++v18;
      v21 += 32;
      if (v17 == v18)
      {
        goto LABEL_19;
      }
    }
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v55);
}

float64x2_t PSParticleType::getImageParticleBounds(uint64_t a1, uint64_t a2, OZRenderState *a3, float64x2_t *a4)
{
  if (*(a1 + 16488) || ((*(*a1 + 1640))(a1), *(a1 + 16488)))
  {
    v8 = *(a2 + 232);
    if (v8)
    {
    }

    else
    {
      v9 = 0;
    }

    var0 = *(v9 + 80);
    if (*(v9 + 13) > 0.0)
    {
      v60 = 0uLL;
      v61 = 0;
      *&v55.var0.var0 = *&a3->var0.var0;
      v55.var0.var3 = a3->var0.var3;
      v10 = *(v9 + 8);
      v44.epoch = *(v9 + 3);
      *&v44.value = v10;
      PC_CMTimeSaferSubtract(&v55, &v44, &v60);
      operator/(&v60, &v53, *(v9 + 13));
      v55.var0 = var0;
      *&v44.value = v53;
      v44.epoch = v54;
      PC_CMTimeSaferAdd(&v55, &v44, &var0);
      v58 = *(a1 + 16464);
      v59 = *(a1 + 16480);
      v56 = 0uLL;
      var3 = 0;
      operator/(&var0.var0, &v58, &v56);
      CMTimeMake(&v63, 1, 1);
      *&v55.var0.var0 = v56;
      v55.var0.var3 = var3;
      v44 = v63;
      PC_CMTimeFloorToSampleDuration(&v55, &v44, &v64);
      *&v55.var0.var0 = v56;
      v55.var0.var3 = var3;
      v44 = v64;
      PC_CMTimeSaferSubtract(&v55, &v44, &v53);
      operator*(&v53, &v58, &v55);
      var3 = v55.var0.var3;
      v56 = *&v55.var0.var0;
      var0 = v55.var0;
    }

    v11 = *(a1 + 16440);
    *&v54 = *(a1 + 16456);
    v53 = v11;
    v44 = var0;
    PC_CMTimeSaferAdd(&v44, &v53, &v55);
    var0 = v55.var0;
    OZRenderState::OZRenderState(&v55, a3);
    v55.var0 = var0;
    v53 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v54 = _Q0;
    PSParticleType::getSourceImageBounds(a1, &v55, &v53);
    v17 = v53;
    v43 = *(&v53 + 1) + *(&v54 + 1);
    v42 = *&v53 + *&v54;
    v52 = 1.0;
    v49 = 0x3FF0000000000000;
    v46 = 1.0;
    v44.value = 0x3FF0000000000000;
    *&v44.timescale = 0u;
    v45 = 0u;
    v47 = 0u;
    v48 = 0u;
    v50 = 0u;
    v51 = 0u;
    PSParticleType::getImageParticleMatrix(a1, a3, v9, a2, &v44, 0);
    v18.f64[0] = *&v44.timescale;
    *&v19.f64[0] = v44.value;
    *&v20.f64[0] = v45;
    v21.f64[0] = v46;
    v22.f64[0] = *(&v17 + 1);
    *&v22.f64[1] = v17;
    v23.f64[0] = *&v44.timescale;
    v23.f64[1] = *(&v45 + 1);
    v24 = vmulq_f64(v22, v23);
    v18.f64[1] = v46;
    *&v21.f64[1] = v44.value;
    v25 = vmulq_f64(v22, v21);
    v26 = vextq_s8(v25, v25, 8uLL);
    v20.f64[1] = *(&v47 + 1);
    v27 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v24, v26)), vdupq_lane_s64(COERCE__INT64(v52 + *&v17 * *(&v50 + 1) + *(&v17 + 1) * *&v51), 0));
    v19.f64[1] = *(&v45 + 1);
    v28 = vmulq_n_f64(v19, v42);
    v19.f64[1] = v26.f64[1];
    v19.f64[0] = v24.f64[0];
    v29 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v28, v19)), vdupq_lane_s64(COERCE__INT64(v52 + v42 * *(&v50 + 1) + *(&v17 + 1) * *&v51), 0));
    v30 = vmulq_n_f64(v18, v43);
    v26.f64[1] = v24.f64[1];
    v31 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v30, v28)), vdupq_lane_s64(COERCE__INT64(v52 + v42 * *(&v50 + 1) + v43 * *&v51), 0));
    v32 = vdivq_f64(vaddq_f64(v20, vaddq_f64(v26, v30)), vdupq_lane_s64(COERCE__INT64(v52 + *&v17 * *(&v50 + 1) + v43 * *&v51), 0));
    v33 = vbslq_s8(vcgtq_f64(v29, v27), v29, v27);
    v34 = vbslq_s8(vcgtq_f64(v32, v31), v32, v31);
    v35 = vbslq_s8(vcgtq_f64(v34, v33), v34, v33);
    v36 = vbslq_s8(vcgtq_f64(v27, v29), v29, v27);
    v37 = vbslq_s8(vcgtq_f64(v31, v32), v32, v31);
    v38 = vbslq_s8(vcgtq_f64(v36, v37), v37, v36);
    v39 = vcgtq_f64(v38, v35);
    v40 = vbslq_s8(v39, v38, v35);
    result = vbslq_s8(v39, v35, v38);
    *a4 = result;
    a4[1] = vsubq_f64(v40, result);
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    a4[1] = result;
  }

  return result;
}

CGColorSpace **PSParticleType::getImageParticleMatrix(CGColorSpace **result, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result[2061])
  {
    v11 = result;
    v116 = *a2;
    v115 = *a2;
    memset(v114, 0, sizeof(v114));
    *&v85.var0.var0 = *&a2->value;
    v85.var0.var3 = a2->epoch;
    v102 = *(a3 + 8);
    v12.n128_f64[0] = PC_CMTimeSaferSubtract(&v85, &v102, v114);
    v112 = 0uLL;
    v113 = 0;
    v13 = (*(*(v11[2054] + 25) + 272))(v12);
    OZSceneSettings::getFrameDuration((v13 + 336), &v112);
    __asm { FMOV            V0.2D, #1.0 }

    v110 = _Q0;
    v111 = 1.0;
    (*(*v11 + 201))(v11, v114, a3 + 32, a3 + 8, &v110);
    PSSequencedValues::PSSequencedValues(&v102);
    (*(*v11 + 202))(v11, &v115, a3, &v102);
    v110 = vmulq_f64(vmulq_f64(*(a3 + 56), v110), v105);
    v111 = *(a3 + 72) * v111 * v106;
    v79 = (*(*v11[2054] + 352))(v11[2054]);
    v101 = 1.0;
    v100 = 1.0;
    v99 = 1.0;
    v98 = 0.0;
    v97 = 0.0;
    v96 = 0.0;
    v95 = 0.0;
    v80 = 0u;
    v94 = 0.0;
    v24 = 0.0;
    v25 = 1.0;
    v26 = v11[2062];
    if (!v26)
    {
      v28 = 0;
      v27 = 1.0;
      goto LABEL_7;
    }

    v27 = *(v11 + 2065);
    if (*(v11 + 16512) != 1 || (OZTransformNode::getPivot(v26, &v98, &v97, &v96, &v116), OZChannel::getValueAsInt((v11 + 1819), MEMORY[0x277CC08F0], 0.0)))
    {
      v28 = 0;
LABEL_7:
      v29 = 0.0;
      v30 = 0.0;
      v31 = 0.0;
      goto LABEL_8;
    }

    v93 = 0;
    v92 = 0.0;
    PSParticleType::getSequenceCompletion(v11, &v115, *(a3 + 176), &v93, &v92);
    if (v93)
    {
      memset(&v91, 0, sizeof(v91));
      *&v85.var0.var0 = *(v11 + 1029);
      v85.var0.var3 = v11[2060];
      *v117 = v112;
      *&v117[16] = v113;
      PC_CMTimeSaferSubtract(&v85, v117, &v91);
      v87 = *(v11 + 2055);
      v88 = v11[2057];
      operator*(&v91, &v86, v92);
      *&v85.var0.var0 = v87;
      v85.var0.var3 = v88;
      *v117 = v86;
      PC_CMTimeSaferAdd(&v85, v117, &v89);
      *&v82.value = v89;
      epoch = *&v90;
    }

    else
    {
      *&v82.value = *&v115.value;
      epoch = v115.epoch;
    }

    v82.epoch = epoch;
    v59 = *(v11 + 2055);
    *&v117[16] = v11[2057];
    *v117 = v59;
    memset(&v91, 0, sizeof(v91));
    OZTransformNode::getTranslation(v11[2062], &v91, v117);
    OZRenderState::OZRenderState(&v85, a2);
    v85.var0 = v82;
    v89 = 0uLL;
    v90 = 0.0;
    OZTransformNode::getTranslation(v11[2062], &v89, &v82);
    v81 = v89;
    v78 = *&v91.value;
    v60 = v90;
    v61 = *&v91.epoch;
    (*(*v11[2062] + 1312))(v11[2062], &v101, &v100, &v99, &v85, 0);
    *&v87 = 0;
    v86.value = 0;
    v84 = 0.0;
    if (a6)
    {
      OZTransformNode::getRotationX(v11[2062], &v87, &v82);
      OZTransformNode::getRotationY(v11[2062], &v86.value, &v82);
    }

    OZTransformNode::getRotationZ(v11[2062], &v84, &v82);
    v62 = *&v86.value;
    if (fabs(*&v87) >= 0.0000001)
    {
      v63 = v84;
    }

    else
    {
      v63 = v84;
      if (fabs(*&v86.value) < 0.0000001 && fabs(v84) < 0.0000001)
      {
        v28 = 0;
        v24 = 0.0;
        v29 = 0.0;
        v30 = 0.0;
LABEL_36:
        OZTransformNode::getShear(v11[2062], &v95, &v94, &v82);
        v80 = vsubq_f64(v81, v78);
        v31 = v60 - v61;
LABEL_8:
        v32 = v101 * (v27 * v110.f64[0] / v79);
        v33 = v110.f64[1] * v100;
        v34 = v111 * v99;
        v35 = *(a4 + 184);
        v36 = *(a4 + 176) + v107;
        v110.f64[0] = v32;
        v110.f64[1] = v110.f64[1] * v100;
        v111 = v111 * v99;
        v37 = v35 + v108;
        if (a6)
        {
          v38 = v31 + *(a4 + 192) + v109;
        }

        else
        {
          v96 = 0.0;
          v38 = 0.0;
        }

        v39 = v80.f64[0] + v36;
        v40 = v80.f64[1] + v37;
        if (v28)
        {
          v41 = *&v102.epoch;
          v42 = v103;
        }

        else
        {
          v41 = *&v102.epoch;
          v42 = v103;
          if (fabs(*&v102.timescale * *&v102.timescale + v41 * v41 + v42 * v42) < 0.0000001)
          {
            v43 = vmulq_f64(*(a4 + 40), *(a4 + 40));
            if (fabs(*(a4 + 32) * *(a4 + 32) + v43.f64[0] + v43.f64[1]) < 0.0000001 && fabs(v95) < 0.0000001 && fabs(v94) < 0.0000001)
            {
              *(a5 + 120) = 0x3FF0000000000000;
              *(a5 + 8) = 0u;
              *(a5 + 24) = 0u;
              *(a5 + 48) = 0u;
              *(a5 + 64) = 0u;
              *(a5 + 88) = 0u;
              *(a5 + 104) = 0u;
              *a5 = v32;
              *(a5 + 40) = v33;
              *(a5 + 80) = v34;
              PCMatrix44Tmpl<double>::leftTranslate(a5, *&v39, v40, v38);
              if (v79 != 1.0)
              {
                *(a5 + 32) = v79 * *(a5 + 32);
                *(a5 + 64) = v79 * *(a5 + 64);
                *(a5 + 8) = vdivq_f64(*(a5 + 8), vdupq_lane_s64(*&v79, 0));
              }

              PCMatrix44Tmpl<double>::rightTranslate(a5, -v98, -v97, -v96);
              return PCCFRef<CGColorSpace *>::~PCCFRef(&v104);
            }
          }
        }

        v44 = v25 * *&v102.value - (v30 * *&v102.timescale + v29 * v41 + v24 * v42);
        v45 = v29 * *&v102.value + v25 * v41;
        v46 = v24 * *&v102.value + v25 * v42;
        v47 = v29 * *&v102.timescale - v30 * v41;
        v48 = v30 * *&v102.value + v25 * *&v102.timescale + v24 * v41 - v29 * v42;
        v49 = v45 + v30 * v42 - v24 * *&v102.timescale;
        v50 = v47 + v46;
        v51 = *(a4 + 24);
        v52 = *(a4 + 32);
        v53 = *(a4 + 40);
        v54 = *(a4 + 48);
        *&v82.value = v51 * v44 - (v48 * v52 + v49 * v53 + v50 * v54);
        *&v82.timescale = v51 * v48 + v44 * v52 + v49 * v54 - v50 * v53;
        *&v82.epoch = v51 * v49 + v44 * v53 + v52 * v50 - v48 * v54;
        v83 = v48 * v53 - v52 * v49 + v51 * v50 + v44 * v54;
        if ((a6 & 1) == 0)
        {
          v85.var7.var0[1][2] = 1.0;
          v85.var7.var0[0][1] = 1.0;
          v85.var3 = 1.0;
          v85.var0.var0 = 0x3FF0000000000000;
          memset(&v85.var0.var1, 0, 32);
          memset(&v85.var4, 0, 32);
          memset(&v85.var7.var0[0][2], 0, 32);
          PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v85, &v82.value);
          v118 = 0u;
          memset(v117, 0, sizeof(v117));
          v120 = 0u;
          v121 = 0u;
          v122 = 0;
          v119 = 4;
          PCMatrix44Tmpl<double>::getTransformation(&v85.var0.var0, v117);
          v55 = __sincos_stret(*&v121 * 0.5);
          v56 = v55.__sinval * 0.0 * 0.0;
          v57 = v55.__sinval * 0.0 + v55.__cosval * 0.0;
          *&v82.epoch = v57 + v56 - v55.__sinval * 0.0;
          v83 = v55.__sinval + v55.__cosval * 0.0 + v56 - v56;
          *&v82.value = v55.__cosval - (v55.__sinval * 0.0 + v56 + v56);
          *&v82.timescale = v57 + v55.__sinval * 0.0 - v56;
          v33 = v110.f64[1];
          v32 = v110.f64[0];
          v34 = v111;
        }

        PCMatrix44Tmpl<double>::setTransformation(a5, &v82.value, 0, v39, v40, v38, v32, v33, v34, v95, v94, v19, v20, v21, v22, v23, v98, v97, v96, *&v79);
        return PCCFRef<CGColorSpace *>::~PCCFRef(&v104);
      }
    }

    v64 = __sincos_stret(*&v87 * 0.5);
    v65 = __sincos_stret(v62 * 0.5);
    v66 = __sincos_stret(v63 * 0.5);
    v67 = v64.__sinval * 0.0 * (v65.__sinval * 0.0);
    v68 = v64.__cosval * v65.__cosval - (v67 + v64.__sinval * 0.0 * v65.__sinval + v64.__sinval * (v65.__sinval * 0.0));
    v69 = v64.__sinval * 0.0 * v65.__cosval;
    v70 = v64.__cosval * (v65.__sinval * 0.0);
    v71 = v64.__sinval * v65.__cosval + v70 + v64.__sinval * 0.0 * v65.__sinval - v67;
    v72 = v69 + v64.__cosval * v65.__sinval + v64.__sinval * (v65.__sinval * 0.0) - v67;
    v73 = v67 - v64.__sinval * v65.__sinval + v69 + v70;
    v74 = v66.__sinval * 0.0 * v71;
    v75 = v66.__sinval * 0.0 * v72;
    v25 = v66.__cosval * v68 - (v66.__sinval * v73 + v74 + v75);
    v76 = v66.__sinval * 0.0 * v68;
    v77 = v66.__sinval * 0.0 * v73;
    v30 = v66.__sinval * v72 - v77 + v66.__cosval * v71 + v76;
    v29 = v77 - v66.__sinval * v71 + v66.__cosval * v72 + v76;
    v24 = v74 - v75 + v66.__cosval * v73 + v66.__sinval * v68;
    v28 = 1;
    goto LABEL_36;
  }

  return result;
}

void PSParticleType::addProjectedImageParticleBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16488) || ((*(*a1 + 1640))(a1), *(a1 + 16488)))
  {
    v8 = *(a3 + 232);
    if (v8)
    {
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a2 + 8);
    OZRenderState::OZRenderState(&v57, v10);
    if ((*(a1 + 16529) & 1) == 0)
    {
      v56 = *(v9 + 80);
      if (*(v9 + 13) > 0.0)
      {
        v54 = 0uLL;
        v55 = 0;
        v11 = *&v10->var0.var0;
        v40.var3 = v10->var0.var3;
        *&v40.var0 = v11;
        v12 = *(v9 + 8);
        v59.epoch = *(v9 + 3);
        *&v59.value = v12;
        PC_CMTimeSaferSubtract(&v40, &v59, &v54);
        operator/(&v54, v39, *(v9 + 13));
        v59 = v56;
        v49 = *v39;
        *&v50 = *&v39[16];
        PC_CMTimeSaferAdd(&v59, &v49, &v40);
        v56 = v40;
        v52 = *(a1 + 16464);
        v53 = *(a1 + 16480);
        memset(&v51, 0, sizeof(v51));
        operator/(&v56.value, &v52, &v51);
        CMTimeMake(&v58, 1, 1);
        v40 = v51;
        v59 = v58;
        PC_CMTimeFloorToSampleDuration(&v40, &v59, v39);
        v40 = v51;
        v59 = *v39;
        PC_CMTimeSaferSubtract(&v40, &v59, &v49);
        operator*(&v49, &v52, &v40);
        v56 = v40;
      }

      v13 = *(a1 + 16440);
      *&v50 = *(a1 + 16456);
      v49 = v13;
      v59 = v56;
      PC_CMTimeSaferAdd(&v59, &v49, &v40);
      v57.var0 = v40;
    }

    v49 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v50 = _Q0;
    PSParticleType::getSourceImageBounds(a1, &v57, &v49);
    v19 = v49;
    v20 = v50;
    v48 = 0x3FF0000000000000;
    v45 = 0x3FF0000000000000;
    v42 = 0x3FF0000000000000;
    v40.var0 = 0x3FF0000000000000;
    *&v40.var1 = 0u;
    v41 = 0u;
    v43 = 0u;
    v44 = 0u;
    v46 = 0u;
    v47 = 0u;
    PSParticleType::getImageParticleMatrix3D(a1, a2, v9, a3, &v40);
    v22 = *(&v19 + 1) + *(&v20 + 1);
    v23 = *&v19 + *&v20;
    *&v59.value = v19;
    v59.epoch = 0;
    v60 = *&v19 + *&v20;
    v61 = *(&v19 + 1);
    v62 = 0;
    v63 = *&v19 + *&v20;
    v64 = *(&v19 + 1) + *(&v20 + 1);
    v65 = 0;
    v66 = v19;
    v67 = *(&v19 + 1) + *(&v20 + 1);
    v68 = 0;
    v24 = *(a2 + 1452);
    if (v24 >= 1)
    {
      v25 = 0;
      v26 = 0uLL;
      while (2)
      {
        *v39 = v26;
        *&v39[16] = v26;
        if (v25 >= *(a2 + 1452))
        {
          PCArray_base::badIndex(v21);
        }

        v21 = PCMatrix44Tmpl<double>::transform_row<double>(&v40.var0, (*(a2 + 1456) + 32 * v25), v39);
        for (i = 0; i != 96; i += 24)
        {
          v28 = vmulq_f64(*(&v59.timescale + i), *&v39[8]);
          if (*&v39[24] + *(&v59.value + i) * *v39 + v28.f64[0] + v28.f64[1] < 0.0)
          {
            LiImagePolygon::LiImagePolygon(&v59);
            std::vector<LiPolygon::PosEdge>::resize(v68, 4uLL);
            v31 = v68;
            v32 = *v68;
            *v32 = v19;
            *(v32 + 16) = 0;
            *(v32 + 32) = v23;
            *(v32 + 40) = *(&v19 + 1);
            *(v32 + 48) = 0;
            *(v32 + 64) = v23;
            *(v32 + 72) = v22;
            *(v32 + 80) = 0;
            *(v32 + 96) = v19;
            *(v32 + 104) = v22;
            *(v32 + 112) = 0;
            v33 = *(a2 + 1452);
            if (v33 >= 1)
            {
              for (j = 0; j != v33; ++j)
              {
                memset(v39, 0, sizeof(v39));
                if (j >= *(a2 + 1452))
                {
                  PCArray_base::badIndex(v30);
                }

                PCMatrix44Tmpl<double>::transform_row<double>(&v40.var0, (*(a2 + 1456) + 32 * j), v39);
                v30 = LiImagePolygon::clip(&v59, v39, 0);
              }

              v31 = v68;
              v32 = *v68;
            }

            if (((v31[1] - v32) >> 5) >= 3)
            {
              PCMatrix44Tmpl<double>::leftMult(&v40, (a2 + 1632));
              v35 = *v68;
              if (((v68[1] - *v68) >> 5) >= 1)
              {
                v36 = 0;
                v37 = 0;
                do
                {
                  *v39 = *(v35 + v36);
                  *&v39[16] = 0;
                  PCMatrix44Tmpl<double>::transform<double>(&v40.var0, v39, v39);
                  *&v58.value = *v39;
                  PCRect<double>::operator|=(a4, &v58);
                  ++v37;
                  v35 = *v68;
                  v36 += 32;
                }

                while (v37 < ((v68[1] - *v68) >> 5));
              }
            }

            LiImagePolygon::~LiImagePolygon(&v59);
            return;
          }
        }

        ++v25;
        v26 = 0uLL;
        if (v25 != v24)
        {
          continue;
        }

        break;
      }
    }

    PCMatrix44Tmpl<double>::leftMult(&v40, (a2 + 1632));
    for (k = 0; k != 96; k += 24)
    {
      *v39 = *(&v59.value + k);
      *&v39[16] = *(&v59.epoch + k);
      PCMatrix44Tmpl<double>::transform<double>(&v40.var0, v39, v39);
      *&v58.value = *v39;
      PCRect<double>::operator|=(a4, &v58);
    }
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *(a4 + 16) = _Q0;
  }
}

double PSParticleType::getImageParticleMatrix3D(CGColorSpace **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  PSParticleType::getImageParticleMatrix(a1, *(a2 + 8), a3, a4, a5, *(a2 + 1497));
  if (*(a2 + 1498) == 1)
  {
    if (*(*(a2 + 8) + 242) == 1)
    {

      return adjustImageParticleMatrixForFacingCameraEquirectRender(a2, a5);
    }

    else
    {
      v8 = *(a5 + 24);
      v9 = *(a5 + 56);
      v10 = *(a5 + 88);
      v11 = *(a5 + 120);
      *(a5 + 24) = 0;
      *(a5 + 56) = 0;
      *(a5 + 88) = 0;
      *(a5 + 120) = 0x3FF0000000000000;
      v19 = 0x3FF0000000000000;
      v15 = 0x3FF0000000000000;
      v12 = 0x3FF0000000000000;
      v13 = 0u;
      v16 = 0;
      v18 = 0u;
      v22 = 0;
      v23 = 0;
      v21 = 0;
      v14 = v8;
      v17 = v9;
      v20 = v10;
      v24 = v11;
      PCMatrix44Tmpl<double>::leftMult(a5, (a2 + 1504));
      return PCMatrix44Tmpl<double>::leftMult(a5, &v12);
    }
  }

  return result;
}

uint64_t PSParticleType::willGetParticleBounds(PSParticleType *this)
{
  result = (*(*this + 1336))(this);
  if (result != *(this + 2061))
  {
    v3 = *(*this + 1640);

    return v3(this);
  }

  return result;
}

float64_t PSParticleType::getParticleBounds(uint64_t a1, float64x2_t *a2, OZRenderState *a3, float64x2_t *a4)
{
  var0 = a3->var0;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 11344), &var0, 0.0);
  if (*(a1 + 16488))
  {
    v10 = ValueAsInt;
  }

  else
  {
    v10 = 0;
  }

  if ((v10 - 2) < 2)
  {
    *&v9.f64[0] = *&PSParticleType::getImageParticleBounds(a1, a2, a3, a4);
  }

  else if (v10 == 1)
  {
    *&v9.f64[0] = *&PSParticleType::getLineParticleBounds(a1, a2, &var0, a4);
  }

  else if (!v10)
  {
    OZChannel::getValueAsDouble((a1 + 11752), &var0, 0.0);
    a4[1].f64[0] = *&v11 + *&v11;
    a4[1].f64[1] = *&v11 + *&v11;
    v9 = vsubq_f64(a2[11], vdupq_lane_s64(v11, 0));
    *a4 = v9;
  }

  return v9.f64[0];
}

void PSParticleType::addProjectedParticleBounds(uint64_t a1, uint64_t a2, uint64_t a3, float64x2_t *a4)
{
  v8 = *(a2 + 8);
  v9 = *(v8 + 16);
  *&v12.value = *v8;
  v12.epoch = v9;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 11344), &v12, 0.0);
  if (*(a1 + 16488))
  {
    v11 = ValueAsInt;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 - 2) < 2)
  {
    PSParticleType::addProjectedImageParticleBounds(a1, a2, a3, a4);
  }

  else if (v11 == 1)
  {
    PSParticleType::addProjectedLineParticleBounds(a1, a2, a3, a4);
  }

  else if (!v11)
  {
    PSParticleType::addProjectedPointParticleBounds(a1, a2, a3, a4);
  }
}

unint64_t PSParticleType::estimateRenderMemoryImageParticle(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v49 = *MEMORY[0x277D85DE8];
  if (!*(v1 + 16488))
  {
    return 0;
  }

  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = *(v3 + 232);
  if (v9)
  {
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v7 + 8);
  OZRenderState::OZRenderState(&v44, v12);
  if ((*(v8 + 16529) & 1) == 0)
  {
    v43 = *(v10 + 80);
    if (*(v10 + 13) > 0.0)
    {
      v41 = 0uLL;
      v42 = 0;
      v13 = *&v12->var0.var0;
      v48[0].epoch = v12->var0.var3;
      *&v48[0].value = v13;
      v14 = *(v10 + 8);
      *&v30[16] = *(v10 + 3);
      *v30 = v14;
      PC_CMTimeSaferSubtract(v48, v30, &v41);
      operator/(&v41, &v46, *(v10 + 13));
      *v30 = v43;
      v47 = v46;
      PC_CMTimeSaferAdd(v30, &v47, v48);
      v43 = v48[0];
      v39 = *(v8 + 16464);
      v40 = *(v8 + 16480);
      memset(&v38, 0, sizeof(v38));
      operator/(&v43.value, &v39, &v38);
      CMTimeMake(&v45, 1, 1);
      v48[0] = v38;
      *v30 = v45;
      PC_CMTimeFloorToSampleDuration(v48, v30, &v46);
      v48[0] = v38;
      *v30 = v46;
      PC_CMTimeSaferSubtract(v48, v30, &v47);
      operator*(&v47.value, &v39, v48);
      v43 = v48[0];
    }

    v15 = *(v8 + 16440);
    v47.epoch = *(v8 + 16456);
    *&v47.value = v15;
    *v30 = v43;
    PC_CMTimeSaferAdd(v30, &v47, v48);
    v44.var0 = v48[0];
  }

  __asm { FMOV            V0.2D, #1.0 }

  *&v47.value = _Q0;
  PCHashWriteStream::PCHashWriteStream(v48);
  PCHashWriteStream::writeValue(v48, *(v8 + 16488));
  PCHashWriteStream::writeValue(v48, &v44);
  v21 = 1.0;
  v22 = 1.0;
  if (OZRenderParams::getDoHighQualityResampling(*(v7 + 8)))
  {
    v37 = 0x3FF0000000000000;
    v34 = 0x3FF0000000000000;
    v31 = 0x3FF0000000000000;
    *v30 = 0x3FF0000000000000;
    memset(&v30[8], 0, 32);
    v32 = 0u;
    v33 = 0u;
    v35 = 0u;
    v36 = 0u;
    PSParticleType::getImageParticleMatrix3D(v8, v7, v10, v6, v30);
    PSParticleType::getSourceScaleFactor(v23, v7, v30, &v47);
    v22 = *&v47.value;
    PCHashWriteStream::writeValue(v48, *&v47.value);
    v21 = *&v47.timescale;
    PCHashWriteStream::writeValue(v48, *&v47.timescale);
  }

  *&v46.value = *PCHashWriteStream::getHash(v48)->i8;
  if (v5 + 8 == std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::find<PCHash128>(v5, &v46))
  {
    std::__tree<PCHash128>::__emplace_unique_key_args<PCHash128,PCHash128 const&>(v5, &v46);
    __asm { FMOV            V0.2D, #-1.0 }

    *&v30[16] = _Q0;
    PSParticleType::getSourceImageBounds(v8, &v44, v30);
    v11 = 0;
    v25 = *&v30[16];
    if (*&v30[16] > 0.0)
    {
      v26 = *&v30[24];
      if (*&v30[24] > 0.0)
      {
        v27 = PCPixelFormat::getBitsPerPixel(*(*(v7 + 8) + 340)) >> 3;
        v28 = 0.0;
        if (fmin(v25, v26) >= 0.0)
        {
          v28 = v25 * v26;
        }

        v11 = vcvtpd_u64_f64(v28 * v22 * v21) * v27;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  PCHashWriteStream::~PCHashWriteStream(v48);
  return v11;
}

uint64_t PSParticleType::getSourceScaleFactor(uint64_t a1, uint64_t a2, __int128 *a3, float64x2_t *a4)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a4 = _Q0;
  result = PCMatrix44Tmpl<double>::operator*(a2 + 1632, a3, &v20);
  v11 = vmulq_f64(v24, 0);
  v12 = vextq_s8(v11, v11, 8uLL);
  v11.f64[0] = *&v25 + vaddvq_f64(v11);
  v13 = vmulq_f64(v20, 0);
  v14 = vmulq_f64(v22, 0);
  v15 = vaddq_f64(vdupq_lane_s64(v25, 0), vaddq_f64(v24, v12));
  v16 = vsubq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(v21, 0), vaddq_f64(v20, vextq_s8(v13, v13, 8uLL))), v15), vdupq_lane_s64(COERCE__INT64((*&v21 + vaddvq_f64(v13)) / v11.f64[0]), 0));
  v17 = vsubq_f64(vdivq_f64(vaddq_f64(vdupq_lane_s64(v23, 0), vaddq_f64(v22, vextq_s8(v14, v14, 8uLL))), v15), vdupq_lane_s64(COERCE__INT64((*&v23 + vaddvq_f64(v14)) / v11.f64[0]), 0));
  v18 = vsqrtq_f64(vaddq_f64(vmulq_f64(v16, v16), vmulq_f64(v17, v17)));
  __asm { FMOV            V2.2D, #0.5 }

  *&v16.f64[0] = vmovn_s64(vcgtq_f64(_Q2, vabsq_f64(v18)));
  if (LODWORD(v16.f64[0]) & HIDWORD(v16.f64[0]))
  {
    *a4 = v18;
  }

  return result;
}

unint64_t PSParticleType::estimateRenderMemory(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 16);
  *&v6.value = *v3;
  v6.epoch = v4;
  if (OZChannel::getValueAsInt((a1 + 11344), &v6, 0.0) == 3)
  {
    return PSParticleType::estimateRenderMemoryImageParticle(a1);
  }

  else
  {
    return 0;
  }
}

unint64_t PSParticleType::estimateRenderMemoryImageBallpark(PSParticleType *this, const OZRenderParams *a2, BOOL *a3)
{
  v6 = PCPixelFormat::getBitsPerPixel(*(a2 + 85)) >> 3;
  if (*(this + 16529) == 1)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&v20.var0.var3 = _Q0;
    PSParticleType::getSourceImageBounds(this, a2, &v20);
    result = 0;
    *a3 = 1;
    if (*&v20.var0.var3 > 0.0 && v20.var1 > 0.0)
    {
      v13 = *&v20.var0.var3 * v20.var1;
      if (fmin(*&v20.var0.var3, v20.var1) < 0.0)
      {
        v13 = 0.0;
      }

      return vcvtpd_u64_f64(v13) * v6;
    }
  }

  else
  {
    OZRenderState::OZRenderState(&v20, a2);
    v18 = *(this + 1029);
    *&v19 = *(this + 2060);
    Seconds = CMTimeGetSeconds(&v18);
    *a3 = 0;
    v15 = *(this + 16440);
    v20.var0.var3 = *(this + 2057);
    __asm { FMOV            V0.2D, #-1.0 }

    v19 = _Q0;
    *&v20.var0.var0 = v15;
    PSParticleType::getSourceImageBounds(this, &v20, &v18);
    result = 0;
    if (*&v19 > 0.0 && *(&v19 + 1) > 0.0)
    {
      v17 = *&v19 * *(&v19 + 1);
      if (fmin(*&v19, *(&v19 + 1)) < 0.0)
      {
        v17 = 0.0;
      }

      return vcvtpd_u64_f64(Seconds) * v6 * vcvtpd_u64_f64(v17);
    }
  }

  return result;
}

unint64_t PSParticleType::estimateRenderMemoryBallpark(PSParticleType *this, const OZRenderParams *a2, BOOL *a3)
{
  v8 = *a2;
  ValueAsInt = OZChannel::getValueAsInt((this + 11344), &v8, 0.0);
  *a3 = 1;
  if (ValueAsInt == 3 && *(this + 2061))
  {
    return PSParticleType::estimateRenderMemoryImageBallpark(this, a2, a3);
  }

  else
  {
    return 0;
  }
}

CGColorSpace **PSParticleType::getInitialParticleColor(PSParticleType *this, const CMTime *a2, PSParticle *a3, int a4, PCColor *a5)
{
  v10 = *(this + 1902);
  result = OZChannel::getValueAsInt((this + 5368), a2, 0.0);
  if (result == 3)
  {
    v13 = (*(*a3 + 32))(a3);
    v14 = -32;
    v15 = -1640531527;
    do
    {
      v13 += (a4 + 16 * v10) ^ (v10 + v15) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v10 >> 5));
      v10 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v13) ^ (v15 + v13) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v13 >> 5));
      v15 -= 1640531527;
    }

    while (!__CFADD__(v14++, 1));
    v17 = (v10 ^ v13) / 4294967300.0;
    Alpha = PCColor::getAlpha(a5);
    PCColor::PCColor(&v20);
    OZChannelGradient::getColor((this + 6784), a2, v17, &v20);
    v19 = *&v20.var0.var1[1];
    *&a5->var0.var0 = *&v20.var0.var0;
    *&a5->var0.var1[1] = v19;
    *&a5->var0.var1[3] = *&v20.var0.var1[3];
    PCCFRef<CGColorSpace *>::operator=(&a5->var1._obj, &v20.var1._obj);
    if (!OZChannel::getValueAsInt((this + 14552), MEMORY[0x277CC08F0], 0.0))
    {
      PCColor::setAlpha(a5, Alpha);
    }
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    PCColor::PCColor(&v20);
    OZChannelColor::getColor((this + 5624), a2, &v20);
    v12 = *&v20.var0.var1[1];
    *&a5->var0.var0 = *&v20.var0.var0;
    *&a5->var0.var1[1] = v12;
    *&a5->var0.var1[3] = *&v20.var0.var1[3];
    PCCFRef<CGColorSpace *>::operator=(&a5->var1._obj, &v20.var1._obj);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v20.var1._obj);
}