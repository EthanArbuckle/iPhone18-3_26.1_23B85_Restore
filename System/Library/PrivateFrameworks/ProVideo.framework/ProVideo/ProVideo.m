void anonymous namespace::_RgbToSatCbCrEvaluator::_RgbToSatCbCrEvaluator(_anonymous_namespace_::_RgbToSatCbCrEvaluator *this, int a2, float a3, float a4)
{
  *this = &unk_2871D8E18;
  HGObject::HGObject((this + 8));
  *this = &unk_2871D8E58;
  *(this + 1) = &unk_2871D8E98;
  *(this + 3) = 0;
  *(this + 8) = a2;
  *(this + 9) = a3;
  *(this + 10) = a4;
  HGFormatUtils::rowBytesHint(25, 0x121, v8);
  v9 = HGObject::operator new(0x18uLL);
  HGObject::HGObject(v9);
  *v9 = &unk_2871D8F08;
  operator new[]();
}

void sub_25F8F1F30(_Unwind_Exception *a1)
{
  HGObject::~HGObject(v2);
  HGObject::operator delete(v2);
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

uint64_t HGFormatUtils::rowBytesHint(int a1, const char *a2, char *a3)
{
  v3 = 0;
  v4 = &s_HGFormatInfos[8 * a1];
  v5 = v4[1];
  if (v5 - 6403 <= 7)
  {
    if (((1 << (v5 - 3)) & 0xE9) != 0)
    {
      goto LABEL_11;
    }

    if (v5 == 6407)
    {
      v3 = 1;
      if (a1 <= 41)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  if (v5 == 32993 || v5 == 33319)
  {
LABEL_11:
    if (a1 <= 41)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = a2;
  HGLogger::warning("componentsPerPixel -- unknown GL format", a2, a3);
  a1 = v9;
  LODWORD(a2) = v10;
  v3 = 0;
  if (v9 <= 41)
  {
LABEL_17:
    v7 = v4[3];
    if (v3)
    {
      return v7 * a2;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if (v3)
  {
    return v7 * a2;
  }

LABEL_13:
  if (a1 == 31)
  {
    return (4 * vcvtpd_u64_f64(a2 / 6.0) * v7 + 255) & 0xFFFFFF00;
  }

  else
  {
    return (v7 * a2 + 255) & 0xFFFFFF00;
  }
}

int8x16_t anonymous namespace::_RgbToSatCbCrEvaluator::evaluate(uint64_t a1, __int128 *a2, int8x16_t *a3)
{
  v3 = *a2;
  LODWORD(v4) = HIDWORD(*a2);
  v5 = COERCE_FLOAT(*(a2 + 1));
  if (v4 >= v5)
  {
    LODWORD(v6) = *(a2 + 1);
  }

  else
  {
    LODWORD(v6) = HIDWORD(*a2);
  }

  if (v4 <= v5)
  {
    LODWORD(v7) = *(a2 + 1);
  }

  else
  {
    LODWORD(v7) = HIDWORD(*a2);
  }

  if (*&v3 >= v6)
  {
    v8 = v6;
  }

  else
  {
    LODWORD(v8) = *a2;
  }

  if (*&v3 > v7)
  {
    LODWORD(v7) = *a2;
  }

  v9 = 0.0;
  v10 = v7 - v8;
  v11 = (v7 - v8);
  if ((v7 - v8) < 0.0)
  {
    v11 = -v11;
  }

  if (v11 >= 0.00000011920929)
  {
    v12 = *&v3 - v7;
    if ((*&v3 - v7) < 0.0)
    {
      v12 = -(*&v3 - v7);
    }

    if (v12 >= 0.00000011921)
    {
      v17 = v4 - v7;
      if ((v4 - v7) < 0.0)
      {
        v17 = -(v4 - v7);
      }

      v18 = *&v3 - v8;
      if ((*&v3 - v8) < 0.0)
      {
        v18 = -(*&v3 - v8);
      }

      v19 = ((v7 - *&v3) / v10);
      v15 = ((v7 - v4) / v10) + 3.0;
      if (v18 >= 0.00000011921)
      {
        v15 = 5.0 - v19;
      }

      v20 = v5 - v8;
      if (v20 < 0.0)
      {
        v20 = -v20;
      }

      v16 = 3.0 - ((v7 - v5) / v10);
      if (v20 < 0.00000011921)
      {
        v16 = v19 + 1.0;
      }

      v14 = v17 < 0.00000011921;
    }

    else
    {
      v13 = v4 - v8;
      if (v13 < 0.0)
      {
        v13 = -v13;
      }

      v14 = v13 < 0.00000011921;
      v15 = 1.0 - ((v7 - v4) / v10);
      v16 = ((v7 - v5) / v10) + 5.0;
    }

    if (!v14)
    {
      v16 = v15;
    }

    v21 = v16;
    v22 = v21 / 6.0;
    v9 = v22;
    if (v22 <= 1.0)
    {
      if (v22 >= 0.0)
      {
        goto LABEL_39;
      }

      v23 = (v22 + -v22) + 1.0;
    }

    else
    {
      v23 = v22 - v22;
    }

    v9 = v23;
  }

LABEL_39:
  v24 = *(a1 + 32);
  if (v9 <= 1.0)
  {
    if (v9 < 0.0)
    {
      v9 = (v9 + -v9) + 1.0;
    }
  }

  else
  {
    v9 = v9 - v9;
  }

  v25 = v9 * 6.0;
  v26 = v25;
  *v28.i64 = v25 - floor(v25);
  v27.f32[0] = *v28.i64 + 0.0;
  v28.f32[0] = 1.0 - *v28.i64;
  if (v26 > 2)
  {
    switch(v26)
    {
      case 3:
        v27.i32[0] = 0;
        v27.i32[1] = v28.i32[0];
        break;
      case 4:
        v27.i32[1] = 0;
        break;
      case 5:
        v27.i64[0] = COERCE_UNSIGNED_INT(1.0);
LABEL_65:
        v27.i64[1] = v28.u32[0];
        v28 = v27;
        if (v24)
        {
          goto LABEL_57;
        }

LABEL_66:
        v34 = &dword_280C5F9A0;
        v29 = algn_280C5F99C;
        v30 = &dword_280C5F998;
        v31 = &dword_280C5F994;
        v32 = &unk_280C5F990;
        v33 = &dword_280C5F98C;
        goto LABEL_67;
      default:
        goto LABEL_52;
    }

    v28.i32[0] = 1.0;
    goto LABEL_65;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v27.i32[0] = 1.0;
      goto LABEL_55;
    }

    if (v26 == 2)
    {
      v28.i32[0] = 0;
      v28.i32[1] = 1.0;
      v28.i32[2] = v27.i32[0];
      goto LABEL_56;
    }
  }

LABEL_52:
  v28.i32[0] = 1.0;
LABEL_55:
  v28.i32[1] = v27.i32[0];
  v28.i32[2] = 0;
LABEL_56:
  v28.i32[3] = 0;
  if (!v24)
  {
    goto LABEL_66;
  }

LABEL_57:
  v29 = &unk_280C5F970;
  v30 = &unk_280C5F96C;
  v31 = &dword_280C5F968;
  v32 = algn_280C5F964;
  v33 = &cc::matrix::rgb_to_YCbCr2020 + 3;
  if (v24 == 2)
  {
    v32 = &unk_280C5F868;
  }

  else
  {
    v33 = &cc::matrix::rgb_to_YCbCr709 + 3;
  }

  if (v24 == 2)
  {
    v31 = &unk_280C5F86C;
    v30 = &unk_280C5F870;
    v29 = &unk_280C5F874;
    v34 = &dword_280C5F878;
  }

  else
  {
    v34 = &dword_280C5F974;
  }

LABEL_67:
  v35.i32[0] = *v33;
  v36.i32[0] = *v30;
  v36.i32[1] = *v32;
  v37.i32[0] = *v31;
  v35.i32[1] = *v29;
  v37.i32[1] = *v34;
  *v28.f32 = vadd_f32(vadd_f32(vrev64_s32(vmul_f32(*v28.f32, v36)), vmul_f32(*v28.f32, v35)), vmul_laneq_f32(v37, v28, 2));
  result = vextq_s8(v28, v28, 0xCuLL);
  result.i32[0] = *a3;
  result.i32[3] = HIDWORD(*a3);
  *a3 = result;
  return result;
}

double _GLOBAL__sub_I_cc_color_cpp()
{
  dword_280C5F9A0 = -1113159905;
  *&cc::matrix::rgb_to_YCbCr601 = M_rgb2YCbCr601;
  unk_280C5F990 = unk_26034AA40;
  dword_280C5F974 = -1120155095;
  cc::matrix::rgb_to_YCbCr709 = M_rgb_to_YCbCr709;
  *algn_280C5F964 = unk_26034AA64;
  dword_280C5F878 = -1121667137;
  cc::matrix::rgb_to_YCbCr2020 = M_rgb_to_YCbCr2020;
  unk_280C5F868 = unk_26034AA88;
  dword_280C5FA2C = -1113159905;
  cc::matrix::YCbCr601_to_rgb[0] = M_rgb2YCbCr601;
  unk_280C5FA1C = unk_26034AA40;
  cc_matrix::invert(cc::matrix::YCbCr601_to_rgb);
  cc::matrix::YCbCr709_to_rgb[0] = cc::matrix::rgb_to_YCbCr709;
  unk_280C5F9C0 = *algn_280C5F964;
  dword_280C5F9D0 = dword_280C5F974;
  cc_matrix::invert(cc::matrix::YCbCr709_to_rgb);
  cc::matrix::YCbCr2020_to_rgb[0] = cc::matrix::rgb_to_YCbCr2020;
  unk_280C5F8E4 = unk_280C5F868;
  dword_280C5F8F4 = dword_280C5F878;
  cc_matrix::invert(cc::matrix::YCbCr2020_to_rgb);
  cc::matrix::YCbCr601_to_709 = cc::matrix::YCbCr601_to_rgb[0];
  unk_280C5FA48 = unk_280C5FA1C;
  dword_280C5FA58 = dword_280C5FA2C;
  cc_matrix::mul(&cc::matrix::YCbCr601_to_709, &cc::matrix::rgb_to_YCbCr709);
  cc::matrix::YCbCr709_to_601[0] = cc::matrix::YCbCr601_to_709;
  unk_280C5F9EC = unk_280C5FA48;
  dword_280C5F9FC = dword_280C5FA58;
  cc_matrix::invert(cc::matrix::YCbCr709_to_601);
  cc::matrix::YCbCr601_to_2020 = cc::matrix::YCbCr601_to_rgb[0];
  unk_280C5F8C0 = unk_280C5FA1C;
  dword_280C5F8D0 = dword_280C5FA2C;
  cc_matrix::mul(&cc::matrix::YCbCr601_to_2020, &cc::matrix::rgb_to_YCbCr2020);
  cc::matrix::YCbCr2020_to_601[0] = cc::matrix::YCbCr601_to_2020;
  unk_280C5F934 = unk_280C5F8C0;
  dword_280C5F944 = dword_280C5F8D0;
  cc_matrix::invert(cc::matrix::YCbCr2020_to_601);
  cc::matrix::YCbCr709_to_2020 = cc::matrix::YCbCr709_to_rgb[0];
  unk_280C5F898 = unk_280C5F9C0;
  dword_280C5F8A8 = dword_280C5F9D0;
  cc_matrix::mul(&cc::matrix::YCbCr709_to_2020, &cc::matrix::rgb_to_YCbCr2020);
  cc::matrix::YCbCr2020_to_709[0] = cc::matrix::YCbCr709_to_2020;
  unk_280C5F90C = unk_280C5F898;
  dword_280C5F91C = dword_280C5F8A8;
  cc_matrix::invert(cc::matrix::YCbCr2020_to_709);
  dword_280C5F790 = 1050627350;
  cc::matrix::rgb2YIQ = M_rgb2YIQ;
  unk_280C5F780 = unk_26034AAAC;
  dword_280C5F7B4 = 1071263829;
  cc::matrix::YIQ2rgb = M_YIQ2rgb;
  unk_280C5F7A4 = unk_26034AAD0;
  cc::matrix::rgb_to_XYZ = xmmword_26034A900;
  *algn_280C5FB70 = xmmword_26034A910;
  dword_280C5FB80 = 1064519457;
  dword_280C5FBA4 = 1064519457;
  cc::matrix::XYZ_to_rgb[0] = xmmword_26034A900;
  unk_280C5FB94 = xmmword_26034A910;
  cc_matrix::invert(cc::matrix::XYZ_to_rgb);
  cc::matrix::rgb_to_XYZ_D50 = xmmword_26034A920;
  *algn_280C5FA70 = xmmword_26034A930;
  dword_280C5FA80 = 1060557840;
  dword_280C5FAD4 = 1060557840;
  cc::matrix::XYZ_D50_to_rgb[0] = xmmword_26034A920;
  unk_280C5FAC4 = xmmword_26034A930;
  cc_matrix::invert(cc::matrix::XYZ_D50_to_rgb);
  cc::matrix::Bradford = xmmword_26034A940;
  *algn_280C5F750 = xmmword_26034A950;
  dword_280C5F760 = 1065601519;
  dword_280C5F734 = 1065601519;
  cc::matrix::iBradford[0] = xmmword_26034A940;
  unk_280C5F724 = xmmword_26034A950;
  cc_matrix::invert(cc::matrix::iBradford);
  cc::matrix::XYZ_C = xmmword_26034A960;
  *algn_280C5F830 = xmmword_26034A970;
  dword_280C5F840 = 0;
  cc::matrix::XYZ_D50 = xmmword_26034A980;
  unk_280C5F800 = xmmword_26034A990;
  dword_280C5F810 = 0;
  cc::matrix::XYZ_D65 = xmmword_26034A9A0;
  *algn_280C5F7D0 = xmmword_26034A9B0;
  dword_280C5F7E0 = 0;
  cc::matrix::XYZ_C_to_D50 = xmmword_26034A9C0;
  unk_280C5FB40 = xmmword_26034A9D0;
  dword_280C5FB50 = 1060162983;
  dword_280C5FB24 = 1060162983;
  cc::matrix::XYZ_D50_to_C[0] = xmmword_26034A9C0;
  unk_280C5FB14 = xmmword_26034A9D0;
  cc_matrix::invert(cc::matrix::XYZ_D50_to_C);
  cc::matrix::XYZ_D50_to_D65 = xmmword_26034A9E0;
  *algn_280C5FAF0 = xmmword_26034A9F0;
  dword_280C5FB00 = 1068120700;
  dword_280C5FAA4 = 1068120700;
  cc::matrix::XYZ_D65_to_D50[0] = xmmword_26034A9E0;
  unk_280C5FA94 = xmmword_26034A9F0;
  cc_matrix::invert(cc::matrix::XYZ_D65_to_D50);
  *algn_280C5EB30 = xmmword_26034AA10;
  dword_280C5EB40 = 1060645296;
  dword_280C5EB14 = 1060645296;
  unk_280C5EB04 = xmmword_26034AA10;
  *&result = 1170939904;
  return result;
}

float32_t cc_matrix::invert(float32x4_t *this)
{
  v2 = this->f32[0];
  result = this->f32[1];
  v4 = this->f32[2];
  v3 = this->f32[3];
  v5 = this[1].f32[0];
  v6 = this[1].f32[1];
  v8 = this[1].f32[2];
  v7 = this[1].f32[3];
  v9 = this[2].f32[0];
  v10 = this->f32[0] * v5;
  v11 = 0.0;
  v12 = (v10 * v9) + 0.0;
  if ((v10 * v9) < 0.0)
  {
    v12 = 0.0;
    v11 = v10 * v9;
  }

  v13 = v4 * (v3 * v7);
  if (v13 < 0.0)
  {
    v14 = v13 + v11;
  }

  else
  {
    v12 = v13 + v12;
    v14 = v11;
  }

  v15 = result * v8;
  v16 = v6 * (result * v8);
  if (v16 < 0.0)
  {
    v14 = v16 + v14;
  }

  else
  {
    v12 = v16 + v12;
  }

  v17 = v4 * -(v8 * v5);
  if (v17 < 0.0)
  {
    v14 = v17 + v14;
  }

  else
  {
    v12 = v17 + v12;
  }

  v18 = -(v3 * result) * v9;
  if (v18 < 0.0)
  {
    v19 = v18 + v14;
  }

  else
  {
    v12 = v18 + v12;
    v19 = v14;
  }

  v20 = v6 * -(v2 * v7);
  v21 = v20 + v19;
  v22 = v20 < 0.0;
  if (v20 >= 0.0)
  {
    v23 = v20 + v12;
  }

  else
  {
    v23 = v12;
  }

  if (v22)
  {
    v19 = v21;
  }

  v24 = v23 + v19;
  v25 = (v23 + v19);
  if ((v23 + v19) < 0.0)
  {
    v25 = -v25;
  }

  if (v25 >= 0.00000011920929)
  {
    v26 = v24 / (v23 - v19);
    if (v26 < 0.0)
    {
      v26 = -v26;
    }

    if (v26 >= 1.0e-15)
    {
      v27 = 1.0 / v24;
      v28.f32[0] = (v5 * v9) - (v6 * v7);
      v29 = -((result * v9) - (v4 * v7));
      *&v30 = -((v3 * v9) - (v6 * v8));
      v31.f32[0] = (v2 * v9) - (v4 * v8);
      v28.f32[1] = v29;
      v28.i64[1] = __PAIR64__(v30, (result * v6) - (v4 * v5));
      result = (v10 - (result * v3)) * v27;
      v31.f32[1] = -((v2 * v6) - (v4 * v3));
      v31.f32[2] = (v3 * v7) - (v5 * v8);
      v31.f32[3] = -((v2 * v7) - v15);
      *this = vmulq_n_f32(v28, v27);
      this[1] = vmulq_n_f32(v31, v27);
      this[2].f32[0] = result;
    }
  }

  return result;
}

double cc_matrix::mul(cc_matrix *this, const cc_matrix *a2)
{
  v2 = 0;
  v13 = 1065353216;
  v3 = v12;
  v4 = this;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = (a2 + 4 * i);
      *v3 = 0.0;
      v8 = 0.0;
      do
      {
        v9 = *v7;
        v7 += 3;
        v8 = v8 + (*(v4 + v6) * v9);
        *v3 = v8;
        v6 += 4;
      }

      while (v6 != 12);
      ++v3;
    }

    ++v2;
    v4 = (v4 + 12);
  }

  while (v2 != 3);
  result = *v12;
  v11 = v12[1];
  *this = v12[0];
  *(this + 1) = v11;
  *(this + 8) = v13;
  return result;
}

uint64_t _GLOBAL__sub_I_FigTimeAdditions_mm()
{
  v0 = *(MEMORY[0x277CC08E0] + 16);
  kFigTimeRangeNULL = *MEMORY[0x277CC08E0];
  *algn_280C5FD70 = v0;
  xmmword_280C5FD80 = *(MEMORY[0x277CC08E0] + 32);
  v4 = *MEMORY[0x277CC0898];
  v5 = *(MEMORY[0x277CC0898] + 16);
  v2 = v4;
  v3 = v5;
  FigTimePairMake(&v4, &v2, &kFigTimePairInvalid);
  v4 = *MEMORY[0x277CC0888];
  v5 = *(MEMORY[0x277CC0888] + 16);
  v2 = v4;
  v3 = v5;
  return FigTimePairMake(&v4, &v2, &kFigTimePairIndefinite);
}

uint64_t FigTimePairMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 16) = *(result + 16);
  *(a3 + 24) = *a2;
  *(a3 + 40) = *(a2 + 16);
  if ((*(a3 + 12) & 0x1F) != 3)
  {
    result = SimpCMTime(a3);
  }

  if ((*(a3 + 36) & 0x1F) != 3)
  {

    return SimpCMTime(a3 + 24);
  }

  return result;
}

uint64_t SimpCMTime(uint64_t result)
{
  if ((*(result + 12) & 0x1D) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      v2 = *(result + 8);
      v3 = *result;
      do
      {
        v4 = v2;
        v2 = v3 % v2;
        v3 = v4;
      }

      while (v2);
    }

    else
    {
      v4 = *result;
    }

    if (v4 < 0)
    {
      v4 = -v4;
    }

    if (v4 >= 2)
    {
      *result /= v4;
      *(result + 8) = v1 / v4;
    }
  }

  return result;
}

uint64_t SimpCMTime(CMTime *a1)
{
  if ((a1->flags & 0x1D) != 1)
  {
    return 0;
  }

  timescale = a1->timescale;
  if (timescale)
  {
    v2 = a1->timescale;
    value = a1->value;
    do
    {
      v4 = v2;
      v2 = value % v2;
      value = v4;
    }

    while (v2);
  }

  else
  {
    v4 = a1->value;
  }

  if (v4 < 0)
  {
    v4 = -v4;
  }

  if (v4 < 2)
  {
    return 0;
  }

  a1->value /= v4;
  a1->timescale = timescale / v4;
  return 1;
}

CMTime *_GLOBAL__sub_I_CMTimeAdditions_mm()
{
  CMTimeMake(&kPC_CMTimeOneSecond, 60, 60);
  CMTimeMake(&kPC_CMTimeOneMinute, 3600, 60);
  CMTimeMake(&kPC_CMTimeTenMinutes, 36000, 60);
  CMTimeMake(&kPC_CMTimeOneHour, 216000, 60);
  CMTimeMake(kPC_CMTimeOneDay, 5184000, 60);
  CMTimeMake(kPC_CMTimeNegativeOneDay, -5184000, 60);
  CMTimeMake(kPC_CMTimeOneYear, 1892160000, 60);
  CMTimeMake(kPC_CMTimeNegativeOneYear, -1892160000, 60);
  start = **&MEMORY[0x277CC0888];
  duration = start;
  CMTimeRangeMake(&kPC_CMTimeRangeIndefinite, &start, &duration);
  start = **&MEMORY[0x277CC08A0];
  v0 = MEMORY[0x277CC08B0];
  duration = **&MEMORY[0x277CC08B0];
  CMTimeRangeMake(&kPC_CMTimeRangeInfinite, &start, &duration);
  v1 = MEMORY[0x277CC08F0];
  start = **&MEMORY[0x277CC08F0];
  duration = *v0;
  CMTimeRangeMake(&kPC_CMTimeRangeAllNonNegative, &start, &duration);
  start = *kPC_CMTimeNegativeOneYear;
  v3 = *kPC_CMTimeOneYear;
  CMTimeMultiply(&duration, &v3, 2);
  CMTimeRangeMake(&kPC_CMTimeRangePlusAndMinusOneYear, &start, &duration);
  start = *kPC_CMTimeNegativeOneDay;
  v3 = *kPC_CMTimeOneDay;
  CMTimeMultiply(&duration, &v3, 2);
  CMTimeRangeMake(&kPC_CMTimeRangePlusAndMinusOneDay, &start, &duration);
  start = *v1;
  duration = *kPC_CMTimeOneDay;
  CMTimeRangeMake(&kPC_CMTimeRangeOneDay, &start, &duration);
  CMTimeMake(&sStandardAliasList, 100, 2997);
  CMTimeMake(&stru_280C5EC08, 1001, 30000);
  CMTimeMake(&stru_280C5EC20, 50, 2997);
  CMTimeMake(&stru_280C5EC38, 1001, 60000);
  CMTimeMake(&stru_280C5EC50, 125, 2997);
  CMTimeMake(&stru_280C5EC68, 1001, 24000);
  CMTimeMake(&sWorkaroundAliasList, 100, 2397);
  CMTimeMake(&stru_280C5EBA8, 1001, 24000);
  CMTimeMake(&stru_280C5EBC0, 100, 2398);
  return CMTimeMake(&stru_280C5EBD8, 1001, 24000);
}

CMTimeRange *__cdecl CMTimeRangeMake(CMTimeRange *__return_ptr retstr, CMTime *start, CMTime *duration)
{
  v5 = *start;
  v4 = *duration;
  return CMTimeRangeSaferMake(&v5, &v4, &retstr->start);
}

CMTime *CMTimeRangeSaferMake@<X0>(CMTime *a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v5 = *a1;
  v4 = *a2;
  return _CMTimeRangeSaferMake(&v5, &v4, a3);
}

CMTime *_CMTimeRangeSaferMake@<X0>(CMTime *a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  *a3 = *a1;
  a3[1] = *a2;
  v11 = *a2;
  if (PC_CMTimeIsNegative(&v11))
  {
    v6 = MEMORY[0x277CC08F0];
    *&a3[1].value = *MEMORY[0x277CC08F0];
    a3[1].epoch = *(v6 + 16);
  }

  lhs = *a1;
  rhs = *a2;
  result = CMTimeAdd(&v11, &lhs, &rhs);
  if ((v11.flags & 0x1D) == 1)
  {
    rhs = *a1;
    v8 = *a2;
    result = CMTimeAdd(&lhs, &rhs, &v8);
    if ((lhs.flags & 2) != 0 && ((a2->flags | a1->flags) & 2) == 0)
    {
      SimpCMTime(a3);
      return SimpCMTime(&a3[1]);
    }
  }

  return result;
}

BOOL PC_CMTimeIsNegative(uint64_t a1)
{
  if ((*(a1 + 12) & 0x1D) == 1)
  {
    return *a1 >> 63 != *(a1 + 8) >> 31;
  }

  else
  {
    return (~*(a1 + 12) & 9) == 0;
  }
}

uint64_t _GLOBAL__sub_I_OZRenderEngine_mm()
{
}

void PCMutex::PCMutex(PCMutex *this)
{
  this->_vptr$PCMutex = &unk_287209488;
  v1 = pthread_mutex_init(&this->_Mutex, 0);
  if (v1)
  {
    v2 = v1;
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf("error: %s returned %d", &v5, "pthread_mutex_init(&_Mutex, NULL)", v2);
    PCString::PCString(&v4, "/Library/Caches/com.apple.xbs/Sources/ProCoreiOS/PCMutex.cpp");
    PCException::PCException(exception, &v5, &v4, 26);
    *exception = &unk_2872094D0;
  }
}

void sub_25F8F3358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  if (v13)
  {
    __cxa_free_exception(v12);
  }

  _Unwind_Resume(a1);
}

double _GLOBAL__sub_I_OZFontUtilities_mm()
{
  OZFontWeightUltraLight = *MEMORY[0x277D74438];
  OZFontWeightThin = *MEMORY[0x277D74428];
  OZFontWeightLight = *MEMORY[0x277D74408];
  OZFontWeightRegular = *MEMORY[0x277D74418];
  OZFontWeightMedium = *MEMORY[0x277D74410];
  OZFontWeightSemibold = *MEMORY[0x277D74420];
  OZFontWeightBold = *MEMORY[0x277D743F8];
  OZFontWeightHeavy = *MEMORY[0x277D74400];
  result = *MEMORY[0x277D743E8];
  OZFontWeightBlack = *MEMORY[0x277D743E8];
  return result;
}

double GetHostTime(void)
{
  if (*&GetHostTime(void)::timeBaseFactor == 0.0 && !mach_timebase_info(&info))
  {
    LODWORD(v0) = info.numer;
    LODWORD(v1) = info.denom;
    *&GetHostTime(void)::timeBaseFactor = v0 / v1 / 1000000000.0;
  }

  return *&GetHostTime(void)::timeBaseFactor * mach_absolute_time();
}

id StringFormatPMR(NSString *a1, NSNumber *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v8 setDateFormat:@"yyyy-MM-dd 'at' HH:mm:ss"];
  v9 = [MEMORY[0x277CBEAA8] date];
  v10 = [v8 stringFromDate:v9];

  v11 = MEMORY[0x277CCACA8];
  [(NSNumber *)v6 doubleValue];
  v13 = [v11 stringWithFormat:@"%f", v12];
  v14 = [v11 stringWithFormat:@"<Measurement key=%@ value=%@ comment=%@ timestamp=%@/>", v5, v13, v7, v10];

  return v14;
}

id StringFormatJSON(NSString *a1, NSNumber *a2)
{
  v3 = a1;
  [(NSNumber *)a2 doubleValue];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v3, v5];

  return v6;
}

id StringFormatTEXT(NSString *a1, NSNumber *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CCACA8];
  [(NSNumber *)v6 doubleValue];
  v10 = [v8 stringWithFormat:@"%f", v9];
  v11 = [v8 stringWithFormat:@"%@: %@ | %@", v5, v10, v7];

  return v11;
}

void PerfTimer::PerfTimer(PerfTimer *this)
{
  this->_start = 0.0;
  this->_end = 0.0;
  this->_start = GetHostTime();
}

double PerfTimer::End(PerfTimer *this)
{
  HostTime = GetHostTime();
  this->_end = HostTime;
  return HostTime - this->_start;
}

void PVPerfStats::LogString(PVPerfStats *this, NSString *a2, ...)
{
  va_start(va, a2);
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v3 arguments:va];
  v5 = v4;
  if (PVPerfStats::_logOutput > 1)
  {
    if (PVPerfStats::_logOutput == 2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
        *buf = 136446210;
        v9 = [v5 cStringUsingEncoding:4];
        _os_log_impl(&dword_25F8F0000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      }
    }

    else if (PVPerfStats::_logOutput == 3)
    {
      NSLog(&stru_2872E15A0.isa, v4);
    }
  }

  else if (PVPerfStats::_logOutput)
  {
    if (PVPerfStats::_logOutput == 1)
    {
      [*(this + 79) appendString:v4];
      [*(this + 79) appendString:@"\n"];
    }
  }

  else
  {
    v6 = v4;
    puts([v5 UTF8String]);
  }
}

uint64_t PVPerfStats::FrameStats::FrameStats(uint64_t this)
{
  *this = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 64) = 0;
  return this;
}

void PVPerfStats::FrameStats::Init(PVPerfStats::FrameStats *this, int a2, int a3)
{
  v3 = MEMORY[0x277CC08F0];
  *this = a2;
  *(this + 1) = a3;
  v4 = *v3;
  *(this + 3) = *(v3 + 2);
  *(this + 8) = v4;
  PVPerfStats::FrameStats::Clear(this);
}

void PVPerfStats::FrameStats::Clear(PVPerfStats::FrameStats *this)
{
  *(this + 4) = GetHostTime();
  *(this + 9) = *(this + 8);
  if (*this)
  {
    v2 = 0;
    do
    {
      v3 = 0;
      std::vector<double>::push_back[abi:ne200100](this + 8, &v3);
      ++v2;
    }

    while (v2 < *this);
  }
}

__n128 PVPerfStats::FrameStats::Init(PVPerfStats::FrameStats *this, int a2, int a3, CMTime *a4)
{
  *this = a2;
  *(this + 1) = a3;
  v4 = *&a4->value;
  *(this + 3) = a4->epoch;
  *(this + 8) = v4;
  PVPerfStats::FrameStats::Clear(this);
  return result;
}

void std::vector<double>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

double PVPerfStats::FrameStats::GetValueForIndex(PVPerfStats::FrameStats *this, unsigned int a2)
{
  v2 = *(this + 8);
  if (a2 >= ((*(this + 9) - v2) >> 3))
  {
    return INFINITY;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t PVPerfStats::FrameStats::SetValueForIndex(uint64_t this, unsigned int a2, double a3)
{
  v3 = *(this + 64);
  if (a2 < ((*(this + 72) - v3) >> 3))
  {
    *(v3 + 8 * a2) = a3;
  }

  return this;
}

double PVPerfStats::FrameStats::MarkEndTimeForIndex(PVPerfStats::FrameStats *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < ((*(this + 9) - *(this + 8)) >> 3))
  {
    HostTime = GetHostTime();
    *(this + 5) = HostTime;
    result = HostTime - *(this + 4);
    *(*(this + 8) + 8 * v2) = result;
  }

  return result;
}

double PVPerfStats::FrameStats::operator-@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 1) = v5;
  *(a3 + 2) = *(a1 + 32);
  *(a3 + 42) = *(a1 + 42);
  *(a3 + 8) = 0;
  v6 = (a3 + 16);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a3 + 16), *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 3);
  v8 = *a3;
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = *v6;
    do
    {
      v11 = *v9++;
      result = *v10 - v11;
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  return result;
}

double PVPerfStats::FrameStats::operator*@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 1) = v5;
  *(a3 + 2) = *(a1 + 32);
  *(a3 + 42) = *(a1 + 42);
  *(a3 + 8) = 0;
  v6 = (a3 + 16);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a3 + 16), *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 3);
  v8 = *a3;
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = *v6;
    do
    {
      v11 = *v9++;
      result = v11 * *v10;
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t PVPerfStats::FrameStats::operator/@<X0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int *a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 1) = v5;
  *(a3 + 2) = *(a1 + 32);
  *(a3 + 42) = *(a1 + 42);
  *(a3 + 8) = 0;
  v6 = (a3 + 16);
  *(a3 + 9) = 0;
  *(a3 + 10) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>((a3 + 16), *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 3);
  v8 = *a3;
  if (v8)
  {
    v9 = *v6;
    do
    {
      *v9 = *v9 / a2;
      ++v9;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t PVPerfStats::FrameStats::min@<X0>(PVPerfStats::FrameStats *this@<X0>, const PVPerfStats::FrameStats *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(this + 2);
  *(a3 + 42) = *(this + 42);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  v6 = (a3 + 64);
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3 + 64, *(this + 8), *(this + 9), (*(this + 9) - *(this + 8)) >> 3);
  v8 = *this;
  if (v8)
  {
    v9 = *(a2 + 8);
    v10 = *v6;
    do
    {
      if (*v9 < *v10)
      {
        *v10 = *v9;
      }

      ++v9;
      ++v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t PVPerfStats::FrameStats::max@<X0>(PVPerfStats::FrameStats *this@<X0>, const PVPerfStats::FrameStats *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(this + 1);
  *a3 = *this;
  *(a3 + 16) = v5;
  *(a3 + 32) = *(this + 2);
  *(a3 + 42) = *(this + 42);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 64) = 0;
  v6 = (a3 + 64);
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3 + 64, *(this + 8), *(this + 9), (*(this + 9) - *(this + 8)) >> 3);
  v8 = *this;
  if (v8)
  {
    v9 = *(a2 + 8);
    v10 = *v6;
    do
    {
      if (*v9 > *v10)
      {
        *v10 = *v9;
      }

      ++v9;
      ++v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

void PVPerfStats::LogPlaybackRate(PVPerfStats *this)
{
  v1 = *(this + 76);
  v2 = *(this + 75);
  v3 = v1 - v2;
  if ((v1 - v2) < 2)
  {
    return;
  }

  v5 = *(this + 4);
  v6 = v5 + 88 * v2;
  v7 = v5 + 88 * v1;
  v8 = *(v7 + 40) - *(v6 + 32);
  *&v8 = v8;
  if (v1 > v2)
  {
    v9 = v5 + 88 * v2 + 48;
    v10 = v3;
    do
    {
      if (*(v9 + 9) == 1)
      {
        v8 = *&v8 - *v9;
        *&v8 = v8;
      }

      v9 += 88;
      --v10;
    }

    while (v10);
  }

  *&v8 = v3 / *&v8;
  if (!PVPerfStats::_logFormat)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"start/end frame nums: %d, %d", *(v6 + 4), *(v7 + 4)];
    v12 = StringFormatTEXT(&cfstr_PlaybackFps.isa, v24, v19);

    PVPerfStats::LogString(this, &stru_2872E15A0.isa, v12);
LABEL_14:
    v18 = v12;
    goto LABEL_15;
  }

  if (PVPerfStats::_logFormat != 1)
  {
    if (PVPerfStats::_logFormat != 2)
    {
      return;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Frame rate measured for stats during playback during frameNum range (%d, %d)", *(v6 + 4), *(v7 + 4)];
    v12 = StringFormatPMR(&cfstr_PlaybackFps_0.isa, v20, v11);

    PVPerfStats::LogString(this, &stru_2872E15A0.isa, v12);
    goto LABEL_14;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v13 = StringFormatJSON(&cfstr_Playbackfps.isa, v21);
  PVPerfStats::LogString(this, &stru_2872E1620.isa, v13);

  *&v14 = *(v6 + 4);
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v15 = StringFormatJSON(&cfstr_Playbackstartf.isa, v22);
  PVPerfStats::LogString(this, &stru_2872E1620.isa, v15);

  *&v16 = *(v7 + 4);
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v17 = StringFormatJSON(&cfstr_Playbackendfra.isa, v23);
  PVPerfStats::LogString(this, &stru_2872E1620.isa, v17);

  v18 = v23;
LABEL_15:
}

void PVPerfStats::BeginLogging(PVPerfStats *this)
{
  if (PVPerfStats::BeginLogging(void)::onceToken != -1)
  {
    PVPerfStats::BeginLogging();
  }
}

void ___ZN11PVPerfStats12BeginLoggingEv_block_invoke()
{
  v11 = [MEMORY[0x277CBEAA8] date];
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v0 setDateFormat:@"yyyyMMdd_HHmmss"];
  v1 = [v0 stringFromDate:v11];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"ProVideoRenderStats_%@.txt", v1];
  v3 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v4 = [v3 objectAtIndex:0];
  v5 = [v4 stringByAppendingPathComponent:v2];
  v6 = PVPerfStats::_logFilePath;
  PVPerfStats::_logFilePath = v5;

  v7 = [PVPerfStats::_logFilePath stringByExpandingTildeInPath];
  v8 = PVPerfStats::_logFilePath;
  PVPerfStats::_logFilePath = v7;

  if (PVPerfStats::_logOutput == 1 && PVPerfStats::_logFormat == 1)
  {
    [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v9 = [v0 stringFromDate:v11];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[\n  {\n    name: begin, \n    date: %@\n  }, \n", v9];
    WriteBufferToFile(v10, PVPerfStats::_logFilePath);
  }

  else
  {
    v9 = v1;
  }
}

void sub_25F8F60A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void WriteBufferToFile(NSString *a1, NSString *a2)
{
  v7 = a1;
  v3 = a2;
  if ([(NSString *)v7 length]&& [(NSString *)v3 length])
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = [MEMORY[0x277CCA9F8] fileHandleForWritingAtPath:v3];
      [v5 truncateFileAtOffset:{objc_msgSend(v5, "seekToEndOfFile")}];
      v6 = [(NSString *)v7 dataUsingEncoding:4];
      [v5 writeData:v6];

      [v5 synchronizeFile];
    }

    else
    {
      [(NSString *)v7 writeToFile:v3 atomically:1 encoding:4 error:0];
    }
  }
}

void sub_25F8F6220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void PVPerfStats::EndLogging(PVPerfStats *this)
{
  if (PVPerfStats::_logOutput == 1 && PVPerfStats::_logFormat == 1)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v2 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = [v2 stringFromDate:v5];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"  {\n    name: end, \n    date: %@\n  }\n]", v3];
    WriteBufferToFile(v4, PVPerfStats::_logFilePath);
  }
}

void sub_25F8F6354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t PVPerfStats::PVPerfStats(uint64_t a1, uint64_t (****a2)(void))
{
  *a1 = GetHostTime();
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = -1;
  *(a1 + 608) = -1;
  *(a1 + 616) = 0;
  *(a1 + 624) = &stru_2872E16E0;
  *(a1 + 632) = 0;
  v4 = *a2;
  *a2 = 0;
  *(a1 + 640) = v4;
  LODWORD(a2) = (**v4)();
  *(a1 + 64) = a2;
  *(a1 + 68) = 0;
  v5 = MEMORY[0x277CC08F0];
  *(a1 + 72) = *MEMORY[0x277CC08F0];
  *(a1 + 88) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 64));
  *(a1 + 152) = a2;
  *(a1 + 156) = 0;
  *(a1 + 160) = *v5;
  *(a1 + 176) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 152));
  *(a1 + 416) = a2;
  *(a1 + 420) = 0;
  *(a1 + 424) = *v5;
  *(a1 + 440) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 416));
  *(a1 + 504) = a2;
  *(a1 + 508) = 0;
  *(a1 + 512) = *v5;
  *(a1 + 528) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 504));
  *(a1 + 240) = a2;
  *(a1 + 244) = 0;
  *(a1 + 248) = *v5;
  *(a1 + 264) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 240));
  *(a1 + 328) = a2;
  *(a1 + 332) = 0;
  *(a1 + 336) = *v5;
  *(a1 + 352) = *(v5 + 16);
  PVPerfStats::FrameStats::Clear((a1 + 328));
  v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7 = *(a1 + 632);
  *(a1 + 632) = v6;

  [*(a1 + 632) setString:&stru_2872E16E0];
  return a1;
}

void sub_25F8F65CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *(v2 + 640);
  *(v2 + 640) = 0;
  if (v8)
  {
    MEMORY[0x2666E9F00](v8, 0x81C40B8603338);
  }

  v9 = *(v2 + 568);
  if (v9)
  {
    *(v2 + 576) = v9;
    operator delete(v9);
  }

  v10 = *(v3 + 352);
  if (v10)
  {
    *(v2 + 488) = v10;
    operator delete(v10);
  }

  v11 = *v6;
  if (*v6)
  {
    *(v2 + 400) = v11;
    operator delete(v11);
  }

  v12 = *v5;
  if (*v5)
  {
    *(v2 + 312) = v12;
    operator delete(v12);
  }

  v13 = *v4;
  if (*v4)
  {
    *(v2 + 224) = v13;
    operator delete(v13);
  }

  v14 = *v3;
  if (*v3)
  {
    *(v2 + 136) = v14;
    operator delete(v14);
  }

  std::vector<PVPerfStats::FrameStats>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PVPerfStats::SetName(PVPerfStats *this, __CFString *a2)
{
  if (!a2)
  {
    a2 = &stru_2872E16E0;
  }

  objc_storeStrong(this + 78, a2);
}

void PVPerfStats::Print(PVPerfStats *this, int a2, int a3)
{
  if (PVPerfStats::_logLevel)
  {
    v4 = *(this + 5) - *(this + 4);
    if (v4)
    {
      LODWORD(v6) = a2;
      if (PVPerfStats::_logLevel <= 2)
      {
        if (PVPerfStats::_logLevel != 2 || (a3 & 1) == 0)
        {
          v8 = PVPerfStats::_logFormat;
          LOBYTE(v7) = 1;
          goto LABEL_12;
        }

        v7 = (0x2E8BA2E8BA2E8BA3 * (v4 >> 3)) < 2;
      }

      else
      {
        v7 = 0;
      }

      v8 = PVPerfStats::_logFormat;
      if (!PVPerfStats::_logFormat && !v7)
      {
        PVPerfStats::LogString(this, &cfstr_PvBeginPerfSta.isa, *(this + 78));
        goto LABEL_14;
      }

LABEL_12:
      if (v8 == 1)
      {
        PVPerfStats::LogString(this, &cfstr_Name.isa, *(this + 78));
      }

LABEL_14:
      if (*(this + 616) == 1)
      {
        PVPerfStats::LogPlaybackRate(this);
      }

      *(this + 616) = 0;
      *(this + 75) = -1;
      *(this + 76) = -1;
      v9 = PVPerfStats::_logLevel;
      v10 = PVPerfStats::_logFormat;
      if (PVPerfStats::_logLevel < 3)
      {
LABEL_99:
        if (!a3 || v9 < 2 || ((0x2E8BA2E8BA2E8BA3 * ((*(this + 5) - *(this + 4)) >> 3)) >= 2 ? (v26 = v10 == 2) : (v26 = 1), v26))
        {
LABEL_152:
          if (v10 != 0 || v7)
          {
            if (v10 == 1)
            {
              PVPerfStats::LogString(this, &stru_2872E1A60.isa, v40);
            }
          }

          else
          {
            PVPerfStats::LogString(this, &cfstr_PvEndPerfStats.isa, *(this + 78));
          }

          return;
        }

        PVPerfStats::CalculateStats(this);
        (*(**(this + 80) + 16))(&v53);
        (*(**(this + 80) + 16))(&v52);
        (*(**(this + 80) + 16))(v50);
        (*(**(this + 80) + 16))(v48);
        (*(**(this + 80) + 16))(&__p);
        (*(**(this + 80) + 16))(v43);
        if (PVPerfStats::_logFormat == 1)
        {
          PVPerfStats::LogString(this, &cfstr_Statssummary.isa);
          v27 = &v53;
          if (v55 < 0)
          {
            v27 = v53;
          }

          PVPerfStats::LogString(this, &cfstr_AverageS.isa, v27);
          v28 = &v52;
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = v52.__r_.__value_.__r.__words[0];
          }

          PVPerfStats::LogString(this, &cfstr_StddevS.isa, v28);
          v29 = v50;
          if ((v51 & 0x80u) != 0)
          {
            v29 = v50[0];
          }

          PVPerfStats::LogString(this, &cfstr_OlympicAvgS.isa, v29);
          v30 = v48;
          if ((v49 & 0x80u) != 0)
          {
            v30 = v48[0];
          }

          PVPerfStats::LogString(this, &cfstr_OlympicStddevS.isa, v30);
          p_p = &__p;
          if ((v47 & 0x80u) != 0)
          {
            p_p = __p;
          }

          PVPerfStats::LogString(this, &cfstr_MinS.isa, p_p);
          v32 = v43;
          if (v44 < 0)
          {
            v32 = v43[0];
          }

          PVPerfStats::LogString(this, &cfstr_MaxS.isa, v32);
          PVPerfStats::LogString(this, &stru_2872E1960.isa);
LABEL_139:
          if (v44 < 0)
          {
            operator delete(v43[0]);
          }

          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (v49 < 0)
          {
            operator delete(v48[0]);
          }

          if (v51 < 0)
          {
            operator delete(v50[0]);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          if (v55 < 0)
          {
            operator delete(v53);
          }

          v10 = PVPerfStats::_logFormat;
          goto LABEL_152;
        }

        (*(**(this + 80) + 8))(v41);
        if (v42 < 0)
        {
          if (v41[1])
          {
            v33 = v41[0];
            goto LABEL_124;
          }
        }

        else if (v42)
        {
          v33 = v41;
LABEL_124:
          PVPerfStats::LogString(this, &cfstr_S.isa, v33);
        }

        v34 = &v53;
        if (v55 < 0)
        {
          v34 = v53;
        }

        PVPerfStats::LogString(this, &cfstr_AverageS_0.isa, v34);
        v35 = &v52;
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v35 = v52.__r_.__value_.__r.__words[0];
        }

        PVPerfStats::LogString(this, &cfstr_StdevS.isa, v35);
        v36 = v50;
        if ((v51 & 0x80u) != 0)
        {
          v36 = v50[0];
        }

        PVPerfStats::LogString(this, &cfstr_OaverageS.isa, v36);
        v37 = v48;
        if ((v49 & 0x80u) != 0)
        {
          v37 = v48[0];
        }

        PVPerfStats::LogString(this, &cfstr_OstdevS.isa, v37);
        v38 = &__p;
        if ((v47 & 0x80u) != 0)
        {
          v38 = __p;
        }

        PVPerfStats::LogString(this, &cfstr_MinS_0.isa, v38);
        v39 = v43;
        if (v44 < 0)
        {
          v39 = v43[0];
        }

        PVPerfStats::LogString(this, &cfstr_MaxS_0.isa, v39);
        if (v42 < 0)
        {
          operator delete(v41[0]);
        }

        goto LABEL_139;
      }

      (*(**(this + 80) + 8))(&v53);
      memset(&v52, 0, sizeof(v52));
      if (PVPerfStats::_logFormat == 1)
      {
        v11 = "      ";
      }

      else
      {
        v11 = "";
      }

      std::string::basic_string[abi:ne200100]<0>(v50, v11);
      if (PVPerfStats::_logFormat == 2)
      {
        v12 = "";
      }

      else
      {
        v12 = ",\n";
      }

      std::string::basic_string[abi:ne200100]<0>(v48, v12);
      v13 = 0x2E8BA2E8BA2E8BA3 * ((*(this + 5) - *(this + 4)) >> 3);
      if (v13 > v6)
      {
        v6 = v6;
        v14 = 88 * v6;
        do
        {
          if ((v51 & 0x80u) == 0)
          {
            v15 = v50;
          }

          else
          {
            v15 = v50[0];
          }

          if ((v51 & 0x80u) == 0)
          {
            v16 = v51;
          }

          else
          {
            v16 = v50[1];
          }

          std::string::append(&v52, v15, v16);
          if (v6)
          {
            (*(**(this + 80) + 16))(&__p);
            if ((v47 & 0x80u) == 0)
            {
              v17 = &__p;
            }

            else
            {
              v17 = __p;
            }

            if ((v47 & 0x80u) == 0)
            {
              v18 = v47;
            }

            else
            {
              v18 = v46;
            }
          }

          else
          {
            (*(**(this + 80) + 16))(&__p);
            if ((v47 & 0x80u) == 0)
            {
              v17 = &__p;
            }

            else
            {
              v17 = __p;
            }

            if ((v47 & 0x80u) == 0)
            {
              v18 = v47;
            }

            else
            {
              v18 = v46;
            }
          }

          std::string::append(&v52, v17, v18);
          if (v47 < 0)
          {
            operator delete(__p);
          }

          if (v6 < v13 - 1)
          {
            if ((v49 & 0x80u) == 0)
            {
              v19 = v48;
            }

            else
            {
              v19 = v48[0];
            }

            if ((v49 & 0x80u) == 0)
            {
              v20 = v49;
            }

            else
            {
              v20 = v48[1];
            }

            std::string::append(&v52, v19, v20);
          }

          ++v6;
          v14 += 88;
        }

        while (v13 != v6);
      }

      if (PVPerfStats::_logFormat != 1)
      {
        if (PVPerfStats::_logFormat == 2)
        {
          if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (!*(&v52.__r_.__value_.__s + 23))
            {
              goto LABEL_90;
            }

            goto LABEL_86;
          }

          if (!v52.__r_.__value_.__l.__size_)
          {
            goto LABEL_90;
          }

LABEL_88:
          v25 = v52.__r_.__value_.__r.__words[0];
          goto LABEL_89;
        }

        if (v55 < 0)
        {
          if (!v54)
          {
            goto LABEL_84;
          }

          v22 = v53;
        }

        else
        {
          if (!v55)
          {
            goto LABEL_84;
          }

          v22 = &v53;
        }

        PVPerfStats::LogString(this, &cfstr_S.isa, v22);
LABEL_84:
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v52.__r_.__value_.__l.__size_)
          {
            goto LABEL_88;
          }
        }

        else if (*(&v52.__r_.__value_.__s + 23))
        {
LABEL_86:
          v25 = &v52;
LABEL_89:
          PVPerfStats::LogString(this, &cfstr_S.isa, v25);
        }

LABEL_90:
        if (v49 < 0)
        {
          operator delete(v48[0]);
        }

        if (v51 < 0)
        {
          operator delete(v50[0]);
        }

        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        if (v55 < 0)
        {
          operator delete(v53);
        }

        v9 = PVPerfStats::_logLevel;
        v10 = PVPerfStats::_logFormat;
        goto LABEL_99;
      }

      if (v55 < 0)
      {
        if (v54)
        {
          v21 = v53;
          goto LABEL_70;
        }
      }

      else if (v55)
      {
        v21 = &v53;
LABEL_70:
        PVPerfStats::LogString(this, &cfstr_HeadersS.isa, v21);
      }

      size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
      if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v52.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        PVPerfStats::LogString(this, &cfstr_Frames.isa);
        v24 = &v52;
        if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v52.__r_.__value_.__r.__words[0];
        }

        PVPerfStats::LogString(this, &cfstr_S.isa, v24);
        if (a3 && PVPerfStats::_logLevel >= 2 && (0x2E8BA2E8BA2E8BA3 * ((*(this + 5) - *(this + 4)) >> 3)) > 1)
        {
          PVPerfStats::LogString(this, &stru_2872E1840.isa);
        }

        else
        {
          PVPerfStats::LogString(this, &stru_2872E1860.isa);
        }
      }

      goto LABEL_90;
    }
  }
}

void sub_25F8F7048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 89) < 0)
  {
    operator delete(*(v46 - 112));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

PVPerfStats *PVPerfStats::CalculateStats(PVPerfStats *this)
{
  if (*(this + 56) == 1)
  {
    v1 = this;
    v12 = 0;
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0;
    v2 = (***(this + 80))();
    v12 = __PAIR64__(*(v1 + 2), v2);
    v3 = MEMORY[0x277CC08F0];
    v13 = *MEMORY[0x277CC08F0];
    v14 = *(MEMORY[0x277CC08F0] + 16);
    PVPerfStats::FrameStats::Clear(&v12);
    v4 = __PAIR64__(*(v1 + 2), v2);
    v5 = *v3;
    v6 = *(v3 + 2);
    PVPerfStats::FrameStats::Clear(&v4);
    PVPerfStats::FrameStats::Clear((v1 + 240));
    PVPerfStats::FrameStats::Clear((v1 + 328));
    operator new[]();
  }

  return this;
}

void sub_25F8F7B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34)
  {
    operator delete(a34);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a71)
  {
    operator delete(a71);
  }

  v73 = *(v71 - 120);
  if (v73)
  {
    *(v71 - 112) = v73;
    operator delete(v73);
  }

  _Unwind_Resume(a1);
}

void PVPerfStats::Reset(PVPerfStats *this)
{
  if (*(this + 616) == 1 && PVPerfStats::_logLevel >= 1)
  {
    PVPerfStats::LogPlaybackRate(this);
  }

  *(this + 616) = 0;
  *(this + 75) = -1;
  *(this + 76) = -1;
  if (PVPerfStats::_logOutput == 1)
  {
    WriteBufferToFile(*(this + 79), PVPerfStats::_logFilePath);
    [*(this + 79) setString:&stru_2872E16E0];
  }

  *(this + 2) = 0;
  std::vector<PVPerfStats::FrameStats>::clear[abi:ne200100](this + 4);
  PVPerfStats::FrameStats::Clear((this + 64));
  PVPerfStats::FrameStats::Clear((this + 152));
  *this = GetHostTime();
  *(this + 56) = 1;
  *(this + 74) = 0;
}

void std::vector<PVPerfStats::FrameStats>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void PVPerfStats::AddFrameStats(PVPerfStats *this, const PVPerfStats::FrameStats *a2)
{
  if (!PVPerfStats::_logLevel)
  {
    return;
  }

  std::vector<PVPerfStats::FrameStats>::push_back[abi:ne200100](this + 32, a2);
  v4 = *(this + 5);
  if (*(v4 - 32) == 1)
  {
    v5 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *(this + 4)) >> 3) - 1;
    if (*(this + 616))
    {
      goto LABEL_9;
    }

    *(this + 616) = 1;
  }

  else
  {
    if (*(this + 616) == 1)
    {
      PVPerfStats::LogPlaybackRate(this);
    }

    *(this + 616) = 0;
    v5 = -1;
  }

  *(this + 75) = v5;
LABEL_9:
  *(this + 76) = v5;
  v6 = *(this + 2);
  v7 = v6 + 1;
  *(this + 2) = v6 + 1;
  *(this + 56) = 1;
  HIDWORD(v8) = -286331153 * (v6 + 1);
  LODWORD(v8) = HIDWORD(v8);
  if ((v8 >> 1) > 0x8888888)
  {
LABEL_10:
    v9 = PVPerfStats::_logLevel;
LABEL_11:
    if (v9 == 4)
    {
      v10 = *(this + 2);
      if (v10 >= 1 && !(v10 % 0x64u))
      {

        PVPerfStats::Print(this, v10 - 100, 0);
      }
    }

    return;
  }

  if (v6 - 29 >= 0)
  {
    v11 = 30;
  }

  else
  {
    v11 = v7;
  }

  v12 = *(this + 4);
  v13 = v12 + 88 * (v7 - v11);
  v14 = *(a2 + 5);
  v15 = v14 - *(v13 + 32);
  if (v11)
  {
    v16 = v6 - ((v6 - 29) & ((v6 - 29) >> 31)) - 29;
    v17 = v11;
    do
    {
      v18 = v12 + 88 * v16;
      if (*(v18 + 57) == 1)
      {
        v15 = v15 - *(v18 + 48);
      }

      ++v16;
      --v17;
    }

    while (v17);
  }

  v19 = *(v13 + 4);
  v20 = *(a2 + 1);
  v21 = v11 / v15;
  *(this + 74) = v21;
  v9 = PVPerfStats::_logLevel;
  if (PVPerfStats::_logLevel > 0)
  {
    v22 = v14 - *(v12 + 32);
    v23 = v7 / v22;
    if (PVPerfStats::_logFormat == 2)
    {
      *&v22 = v21;
      v49 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Windowed FPS for frameNum range (%d, %d)", v19, v20];
      v26 = StringFormatPMR(&cfstr_WindowedFps_0.isa, v49, v50);

      *&v51 = v23;
      v52 = [MEMORY[0x277CCABB0] numberWithFloat:v51];
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Average FPS for time range (%f, %f)", *(*(this + 4) + 32), *(a2 + 5)];
      v30 = StringFormatPMR(&cfstr_AverageFps_0.isa, v52, v53);

      PVPerfStats::LogString(this, &stru_2872E15A0.isa, v26);
      PVPerfStats::LogString(this, &stru_2872E15A0.isa, v30);
    }

    else
    {
      if (PVPerfStats::_logFormat == 1)
      {
        PVPerfStats::LogString(this, &stru_2872E1B00.isa);
        v31 = *(this + 74);
        *&v31 = v31;
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
        v33 = StringFormatJSON(&cfstr_Windowedfps.isa, v32);
        PVPerfStats::LogString(this, &stru_2872E1620.isa, v33);

        *&v34 = v19;
        v35 = [MEMORY[0x277CCABB0] numberWithFloat:v34];
        v36 = StringFormatJSON(&cfstr_Windowedstartf.isa, v35);
        PVPerfStats::LogString(this, &stru_2872E1620.isa, v36);

        *&v37 = v20;
        v38 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
        v39 = StringFormatJSON(&cfstr_Windowedendfra.isa, v38);
        PVPerfStats::LogString(this, &stru_2872E1620.isa, v39);

        *&v40 = v23;
        v41 = [MEMORY[0x277CCABB0] numberWithFloat:v40];
        v42 = StringFormatJSON(&cfstr_Averagefps.isa, v41);
        PVPerfStats::LogString(this, &stru_2872E1620.isa, v42);

        v43 = *(*(this + 4) + 32);
        *&v43 = v43;
        v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
        v45 = StringFormatJSON(&cfstr_Averagestartfr.isa, v44);
        PVPerfStats::LogString(this, &stru_2872E1620.isa, v45);

        v46 = *(a2 + 5);
        *&v46 = v46;
        v47 = [MEMORY[0x277CCABB0] numberWithFloat:v46];
        v48 = StringFormatJSON(&cfstr_Averageendfram.isa, v47);
        PVPerfStats::LogString(this, &stru_2872E1BC0.isa, v48);

        PVPerfStats::LogString(this, &stru_2872E1A60.isa);
        goto LABEL_10;
      }

      if (PVPerfStats::_logFormat)
      {
        goto LABEL_11;
      }

      *&v22 = v21;
      v24 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"windowed start/end frame nums: %d, %d [%@]", v19, v20, *(this + 78)];
      v26 = StringFormatTEXT(&cfstr_WindowedFps.isa, v24, v25);

      *&v27 = v23;
      v28 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"average start/end time range: %f, %f [%@]", *(*(this + 4) + 32), *(a2 + 5), *(this + 78)];
      v30 = StringFormatTEXT(&cfstr_AverageFps.isa, v28, v29);

      PVPerfStats::LogString(this, &stru_2872E15A0.isa, v26);
      PVPerfStats::LogString(this, &stru_2872E15A0.isa, v30);
    }

    goto LABEL_10;
  }
}

uint64_t std::vector<PVPerfStats::FrameStats>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<PVPerfStats::FrameStats>::__emplace_back_slow_path<PVPerfStats::FrameStats const&>(a1, a2);
  }

  else
  {
    std::vector<PVPerfStats::FrameStats>::__construct_one_at_end[abi:ne200100]<PVPerfStats::FrameStats const&>(a1, a2);
    result = v3 + 88;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t PVPerfStats::LastFrameStats(PVPerfStats *this)
{
  v1 = *(this + 5);
  if (*(this + 4) == v1)
  {
    return this + 64;
  }

  else
  {
    return v1 - 88;
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25F8F848C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AA4B40, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<PVPerfStats::FrameStats>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<PVPerfStats::FrameStats>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<PVPerfStats::FrameStats>::__construct_one_at_end[abi:ne200100]<PVPerfStats::FrameStats const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(v3 + 42) = *(a2 + 42);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *v3 = v4;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v3 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  *(a1 + 8) = v3 + 88;
  return result;
}

uint64_t std::vector<PVPerfStats::FrameStats>::__emplace_back_slow_path<PVPerfStats::FrameStats const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PVPerfStats::FrameStats>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = (88 * v2);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 42) = *(a2 + 42);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 64) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(88 * v2 + 64, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
  *&v19 = v19 + 88;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<PVPerfStats::FrameStats>::~__split_buffer(&v17);
  return v16;
}

void sub_25F8F897C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PVPerfStats::FrameStats>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PVPerfStats::FrameStats>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(a4 + 42) = *(v6 + 42);
      *(a4 + 16) = v8;
      *(a4 + 32) = v9;
      *a4 = v7;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = 0;
      *(a4 + 64) = v6[4];
      *(a4 + 80) = *(v6 + 10);
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      v6 = (v6 + 88);
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 8);
      if (v10)
      {
        *(v5 + 9) = v10;
        operator delete(v10);
      }

      v5 = (v5 + 88);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PVPerfStats::FrameStats>,PVPerfStats::FrameStats*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 88;
  }
}

uint64_t std::__split_buffer<PVPerfStats::FrameStats>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<PVPerfStats::FrameStats>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PVPerfStats::FrameStats>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 88;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }
}

void sub_25F8FA304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = PVOrientationEffect;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_25F8FAE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

HGNode *PVInputHGNodeMap<unsigned int>::GetNode@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, HGNode **a3@<X8>)
{
  v6 = *(a1 + 8);
  v4 = a1 + 8;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && *(v7 + 32) <= a2)
  {
    result = *(v7 + 40);
    *a3 = result;
    if (result)
    {
      v15 = *(*result + 16);

      return v15();
    }
  }

  else
  {
LABEL_9:
    v11 = +[PVEnvironment PV_DEBUG_COLOR_NO_SOURCE_TRACK_NODE];
    v12 = HGObject::operator new(0x1A0uLL);
    v13 = v12;
    if (v11)
    {
      HGSolidColor::HGSolidColor(v12);
    }

    result = HGNode::HGNode(v12);
    *a3 = v13;
  }

  return result;
}

void PVInputHGNodeMap<unsigned int>::MapKeys(void *a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != a1 + 1)
  {
    v5 = 0;
    do
    {
      v6 = a2[2];
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = v5 - *a2;
        v9 = v8 >> 2;
        v10 = (v8 >> 2) + 1;
        if (v10 >> 62)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v7;
        if (v11 >> 1 > v10)
        {
          v10 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a2, v12);
        }

        *(4 * v9) = *(v3 + 8);
        v5 = (4 * v9 + 4);
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5 = *(v3 + 8);
        v5 += 4;
      }

      a2[1] = v5;
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
    }

    while (v15 != v2);
  }
}

void sub_25F8FB2F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F8FB418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*v9 + 24))(v9);
  HGTransform::~HGTransform(&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25F8FB710(_Unwind_Exception *a1)
{
  v4 = v3;

  std::mutex::unlock(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_25F8FB7F0(_Unwind_Exception *a1)
{
  v4 = v3;

  std::mutex::unlock(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::deque<unsigned long>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned long *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 6) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x200)
  {
    a2 = 1;
  }

  if (v5 < 0x400)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::deque<unsigned long>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<unsigned long>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<unsigned long>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(a1, &v10);
}

void sub_25F8FBC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<unsigned long *>::emplace_back<unsigned long *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<unsigned long *>::emplace_front<unsigned long *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25F8FC220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F8FC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  if (*a13)
  {
    (*(**a13 + 24))(*a13);
  }

  HGTraceGuard::~HGTraceGuard((v22 - 112));
  _Unwind_Resume(a1);
}

HGNode *PVInputHGNodeMap<PVIGHGNodeCacheKey>::GetNode@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, HGNode **a3@<X8>)
{
  v5 = std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::find<PVIGHGNodeCacheKey>(a1, a2);
  if (a1 + 8 == v5)
  {
    v8 = +[PVEnvironment PV_DEBUG_COLOR_NO_SOURCE_TRACK_NODE];
    v9 = HGObject::operator new(0x1A0uLL);
    v10 = v9;
    if (v8)
    {
      HGSolidColor::HGSolidColor(v9);
    }

    result = HGNode::HGNode(v9);
    *a3 = v10;
  }

  else
  {
    result = *(v5 + 72);
    *a3 = result;
    if (result)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t PVInputHGNodeMap<PVIGHGNodeCacheKey>::SetNode(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__emplace_unique_key_args<PVIGHGNodeCacheKey,std::piecewise_construct_t const&,std::tuple<PVIGHGNodeCacheKey const&>,std::tuple<>>(a1, a2);
  v5 = *(v4 + 72);
  result = *a3;
  if (v5 != *a3)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
      result = *a3;
    }

    *(v4 + 72) = result;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

void sub_25F8FD02C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::find<PVIGHGNodeCacheKey>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = PVIGHGNodeCacheKey::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || PVIGHGNodeCacheKey::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__emplace_unique_key_args<PVIGHGNodeCacheKey,std::piecewise_construct_t const&,std::tuple<PVIGHGNodeCacheKey const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__find_equal<PVIGHGNodeCacheKey>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<PVIGHGNodeCacheKey const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__find_equal<PVIGHGNodeCacheKey>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!PVIGHGNodeCacheKey::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!PVIGHGNodeCacheKey::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25F8FD5A4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 72);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_25F8FDFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25F8FE51C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_25F8FE7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25F8FEE68(_Unwind_Exception *a1)
{
  HGObject::operator delete(v4);
  (*(*v3 + 24))(v3);
  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  _Unwind_Resume(a1);
}

void sub_25F8FF24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  _Unwind_Resume(a1);
}

void sub_25F900BC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::GetNode(uint64_t a1@<X0>, void *a2@<X1>, HGNode **a3@<X8>)
{
  v15 = a2;
  v7 = *(a1 + 8);
  v6 = a1 + 8;
  v5 = v7;
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v6;
  do
  {
    v9 = *(v5 + 32);
    v10 = v9 >= v15;
    v11 = v9 < v15;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * v11);
  }

  while (v5);
  if (v8 != v6 && *(v8 + 32) <= v15)
  {
    v14 = *(v8 + 40);
    *a3 = v14;
    if (v14)
    {
      (*(*v14 + 16))(v14);
    }
  }

  else
  {
LABEL_19:
    if (+[PVEnvironment PV_DEBUG_COLOR_NO_SOURCE_TRACK_NODE])
    {
      v12 = HGObject::operator new(0x1A0uLL);
      HGSolidColor::HGSolidColor(v12);
    }

    v13 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v13);
    *a3 = v13;
  }
}

void sub_25F901654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  (*(*v10 + 24))(v10);

  _Unwind_Resume(a1);
}

void HGInternalCompNode::SetContexts(HGInternalCompNode *this, objc_object *a2, PVCompositeDelegateContext *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(this + 75);
  *(this + 75) = v5;
  v9 = v5;

  v8 = *(this + 73);
  *(this + 73) = v6;
}

uint64_t HGInternalCompNode::SetGraphInput(HGInternalCompNode *this, unsigned int a2, HGNode *a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v8 = *(this + 118);
  *(this + 118) = v8 + 1;
  v12 = a2;
  v13 = &v12;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 504, &v12) + 8) = v8;
  v12 = v8;
  v13 = &v12;
  v9 = std::__tree<std::__value_type<unsigned int,HGRect>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRect>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRect>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 552, &v12);
  v9[4] = v5;
  v9[5] = v4;
  v10 = HGNode::SetInput(this, v8, a3);
  (*(*this + 136))(this, v8, 4096);
  (*(*this + 136))(this, v8, 2);
  return v10;
}

void HGInternalCompNode::SetImageInput(HGInternalCompNode *this, unsigned int a2, PVImageBuffer *a3)
{
  v5 = a3;
  v8 = a2;
  v9 = &v8;
  v6 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 480, &v8);
  v7 = v6[5];
  v6[5] = v5;
}

void sub_25F902034(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_25F902F48(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x2666E9E10](v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<unsigned int,HGRect>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRect>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRect>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,__CVBuffer *>,std::__tree_node<std::__value_type<int,__CVBuffer *>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 8) = *(v9 + 8);
          v8[5] = v9[5];
          std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__emplace_multi<std::pair<int const,__CVBuffer *> const&>();
  }

  return result;
}

void sub_25F9039B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(*a1, v2);
  }

  return a1;
}

void HGInternalCompNode::HGInternalCompNode(HGInternalCompNode *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2871CDB08;
  *(v2 + 408) = v2 + 416;
  *(v2 + 416) = 0u;
  *(v2 + 432) = HGRectNull;
  *(v2 + 472) = 0;
  *(v2 + 488) = 0u;
  *(v2 + 480) = v2 + 488;
  *(v2 + 512) = 0u;
  *(v2 + 504) = v2 + 512;
  *(v2 + 536) = 0u;
  *(v2 + 528) = v2 + 536;
  *(v2 + 552) = v2 + 560;
  *(v2 + 576) = 0u;
  *(v2 + 592) = 0u;
  *(v2 + 560) = 0u;
  HGNode::SetFlags(v2, 0xFFFFFFFFLL, 4096);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 2);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 1024);
  (*(*this + 144))(this, 0xFFFFFFFFLL, 512);
}

void sub_25F903CBC(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 552, *(v1 + 560));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 528, *(v1 + 536));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 504, *(v1 + 512));
  std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy(v1 + 480, *(v1 + 488));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v1 + 408, *(v1 + 416));
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGInternalCompNode::~HGInternalCompNode(id *this)
{
  HGInternalCompNode::~HGInternalCompNode(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_2871CDB08;

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((this + 69), this[70]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((this + 66), this[67]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((this + 63), this[64]);
  std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy((this + 60), this[61]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((this + 51), this[52]);

  HGNode::~HGNode(this);
}

uint64_t HGInternalCompNode::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a1 + 560);
  if (v4)
  {
    v5 = a1 + 560;
    do
    {
      v6 = *(v4 + 28);
      v7 = v6 >= a3;
      v8 = v6 < a3;
      if (v7)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * v8);
    }

    while (v4);
    if (v5 != a1 + 560 && *(v5 + 28) <= a3)
    {
      return *(v5 + 32);
    }
  }

  return a4;
}

HGBuffer *HGInternalCompNode::RenderPageMetal(HGInternalCompNode *this, HGPage *a2)
{
  v4 = objc_autoreleasePoolPush();
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v53, this, a2);
  v46 = a2;
  v47 = *a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = *(this + 60);
  if (v6 != (this + 488))
  {
    do
    {
      v7 = *(v6 + 8);
      v8 = *(v6 + 5);
      if ([v8 cvPixelBuffer])
      {
        v9 = [v8 cvPixelBuffer];
        v10 = [*(this + 73) renderingColorSpace];
        PVAddColorSpaceAttributesToCVPixelBuffer(v9, v10);
      }

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
      [v5 setObject:v8 forKey:v11];

      v12 = *(v6 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v6 + 2);
          v24 = *v13 == v6;
          v6 = v13;
        }

        while (!v24);
      }

      v6 = v13;
    }

    while (v13 != (this + 488));
  }

  context = v4;
  v14 = *(this + 66);
  v15 = 0x279AA3000uLL;
  if (v14 != (this + 536))
  {
    do
    {
      v16 = *(v14 + 8);
      v52 = *(v14 + 7);
      v48[0] = &v52;
      v17 = [PVImageBuffer imageWithCVPixelBuffer:std::__tree<std::__value_type<int, __CVBuffer *>, std::__map_value_compare<int, std::__value_type<int, __CVBuffer *>, std::less<int>, true>, std::allocator<std::__value_type<int, __CVBuffer *>>>::__emplace_unique_key_args<int, std::piecewise_construct_t const&, std::tuple<int const&>, std::tuple<>>(this + 408, &v52)[5]];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
      [v5 setObject:v17 forKey:v18];

      v19 = *(v14 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v14 + 2);
          v24 = *v20 == v14;
          v14 = v20;
        }

        while (!v24);
      }

      v14 = v20;
    }

    while (v20 != (this + 536));
  }

  v21 = *(this + 63);
  if (v21 != (this + 512))
  {
    while (1)
    {
      v22 = *(v21 + 7);
      v23 = *(v46 + *(v21 + 8) + 21);
      if (v23)
      {
        (*(*v23 + 16))(v23);
      }

      v24 = (v23[3] & 0x30) != 0 && (v23[3] & 1) == 0;
      if (v24)
      {
        break;
      }

      v25 = *(v15 + 3328);
      v50 = v23;
      (*(*v23 + 16))(v23);
      v26 = [v25 imageWithHGBitmap:&v50];
      if (v50)
      {
        (*(*v50 + 24))(v50);
      }

LABEL_34:
      if ([v26 cvPixelBuffer])
      {
        v30 = [v26 cvPixelBuffer];
        v31 = [*(this + 73) renderingColorSpace];
        PVAddColorSpaceAttributesToCVPixelBuffer(v30, v31);
      }

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v22];
      [v5 setObject:v26 forKey:v32];

      v15 = 0x279AA3000;
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      v33 = *(v21 + 1);
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
          v34 = *(v21 + 2);
          v24 = *v34 == v21;
          v21 = v34;
        }

        while (!v24);
      }

      v21 = v34;
      if (v34 == (this + 512))
      {
        goto LABEL_44;
      }
    }

    v27 = (*(*v47 + 96))(v47, v23, v23[4]);
    v28 = v27;
    if (v23 == v27)
    {
      (*(*v27 + 24))(v27);
      v29 = *(v15 + 3328);
      v51 = v23;
    }

    else
    {
      (*(*v23 + 24))(v23);
      v29 = *(v15 + 3328);
      v51 = v28;
      if (!v28)
      {
        v23 = 0;
LABEL_32:
        v26 = [v29 imageWithHGBitmap:&v51];
        if (v51)
        {
          (*(*v51 + 24))(v51);
        }

        goto LABEL_34;
      }

      v23 = v28;
    }

    (*(*v23 + 16))(v23);
    goto LABEL_32;
  }

LABEL_44:
  v35 = *(this + 72);
  if (*(this + 74))
  {
    *v48 = *(this + 28);
    v49 = *(this + 58);
    [v35 renderWithInputs:v5 time:v48 metadata:?];
  }

  else
  {
    *v48 = *(this + 28);
    v49 = *(this + 58);
    [v35 renderWithInputs:v5 time:v48 userContext:*(this + 75) compositeContext:*(this + 73)];
  }
  v36 = ;
  v37 = v36;
  if (!v36)
  {
    goto LABEL_55;
  }

  if (![v36 canCreateHGBitmap])
  {
    if ([v37 canCreateCVPixelBuffer])
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType([v37 cvPixelBuffer]);
      v40 = HGCV::HGFormatForCVPixelFormat(PixelFormatType, 0, v39);
      HGCVBitmap::create([v37 cvPixelBuffer], v40, 0, v48);
      goto LABEL_52;
    }

LABEL_55:
    v43 = 0;
    goto LABEL_58;
  }

  [v37 hgBitmap];
LABEL_52:
  v41 = v48[0];
  v42 = *(v46 + 1);
  if (v42)
  {
    HGGPURenderer::CopyBitmapIntoBuffer(v47, v42, *(v46 + 1), v48[0]);
    v43 = *(v46 + 1);
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v43 = HGObject::operator new(0x80uLL);
  HGBuffer::HGBuffer(v43, *(v46 + 1), v41);
  *(v46 + 1) = v43;
  if (v41)
  {
LABEL_57:
    (*(*v41 + 24))(v41);
  }

LABEL_58:

  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v53);
  objc_autoreleasePoolPop(context);
  return v43;
}

void sub_25F9043D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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

float64x2_t PCMatrix44Tmpl<double>::leftScale(float64x2_t *a1, double a2, double a3, double a4)
{
  if (a2 != 1.0)
  {
    v4 = vmulq_n_f64(*a1, a2);
    result = vmulq_n_f64(a1[1], a2);
    *a1 = v4;
    a1[1] = result;
  }

  if (a3 != 1.0)
  {
    result = vmulq_n_f64(a1[2], a3);
    v6 = vmulq_n_f64(a1[3], a3);
    a1[2] = result;
    a1[3] = v6;
  }

  result.f64[0] = 1.0;
  if (a4 != 1.0)
  {
    result = vmulq_n_f64(a1[4], a4);
    v7 = vmulq_n_f64(a1[5], a4);
    a1[4] = result;
    a1[5] = v7;
  }

  return result;
}

float64x2_t PCMatrix44Tmpl<double>::leftTranslate(float64x2_t *a1, float64x2_t result, double a3, double a4)
{
  if (result.f64[0] != 0.0)
  {
    v4 = vaddq_f64(*a1, vmulq_n_f64(a1[6], result.f64[0]));
    result = vaddq_f64(a1[1], vmulq_n_f64(a1[7], result.f64[0]));
    *a1 = v4;
    a1[1] = result;
  }

  if (a3 != 0.0)
  {
    result = vaddq_f64(a1[2], vmulq_n_f64(a1[6], a3));
    v5 = vaddq_f64(a1[3], vmulq_n_f64(a1[7], a3));
    a1[2] = result;
    a1[3] = v5;
  }

  if (a4 != 0.0)
  {
    result = vaddq_f64(a1[4], vmulq_n_f64(a1[6], a4));
    v6 = vaddq_f64(a1[5], vmulq_n_f64(a1[7], a4));
    a1[4] = result;
    a1[5] = v6;
  }

  return result;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x2666E9DA0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25F9048F8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_25F905CD8(_Unwind_Exception *a1)
{
  v8 = *(v6 - 120);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t PVInputHGNodeMap<unsigned int>::SetNode(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v7 = a2;
  v8 = &v7;
  v4 = std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1, &v7);
  v5 = v4[5];
  result = *a3;
  if (v5 != *a3)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
      result = *a3;
    }

    v4[5] = result;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t *PVInputHGNodeMap<unsigned int>::SetPixelTransform(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v8 = a2;
  v9 = &v8;
  result = std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 48, &v8);
  v5 = result + 5;
  if (result + 5 != a3)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 4; ++j)
      {
        v5[j] = a3[j];
      }

      v5 += 4;
      a3 += 4;
    }
  }

  return result;
}

void PVInputHGNodeMap<unsigned int>::SetTimedMetadata(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v8 = &v7;
  v5 = std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(a1 + 120, &v7);
  v6 = v5[5];
  v5[5] = v4;
}

void sub_25F906BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = *(v29 - 144);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  std::__list_imp<unsigned int>::clear(&a29);
  HGTraceGuard::~HGTraceGuard((v29 - 128));
  _Unwind_Resume(a1);
}

void sub_25F907110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void *std::__list_imp<unsigned int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__erase_unique<unsigned int>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,HGRef<HGNode>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,HGRef<HGNode>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HGRef<HGNode>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HGRef<HGNode>>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,PCRect<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCRect<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCRect<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t *std::__tree<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCMatrix44Tmpl<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCMatrix44Tmpl<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t std::list<unsigned int>::__sort<std::__less<void,void>>(uint64_t result, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *a2;
      if (*(*a2 + 4) < *(result + 16))
      {
        v7 = *v5;
        v6 = v5[1];
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *result;
        *(v8 + 8) = v5;
        *v5 = v8;
        *result = v5;
        v5[1] = result;
        return v5;
      }
    }

    else
    {
      v11 = a3 >> 1;
      v12 = (a3 >> 1) + 1;
      v13 = result;
      do
      {
        v13 = *(v13 + 8);
        --v12;
      }

      while (v12 > 1);
      v14 = std::list<unsigned int>::__sort<std::__less<void,void>>(result, v13, a3 >> 1, a4);
      result = std::list<unsigned int>::__sort<std::__less<void,void>>(v13, a2, a3 - v11, a4);
      v15 = *(v14 + 16);
      if (*(result + 16) >= v15)
      {
        v17 = *(v14 + 8);
        i = result;
        result = v14;
      }

      else
      {
          ;
        }

        v18 = *i;
        v19 = *(*i + 8);
        v20 = *result;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = *v14;
        v17 = *(v14 + 8);
        *(v21 + 8) = result;
        *result = v21;
        *v14 = v18;
        *(v18 + 8) = v14;
      }

      if (v17 != i && i != a2)
      {
        v22 = i;
        do
        {
          v23 = *(v17 + 4);
          if (*(i + 16) >= v23)
          {
            v17 = v17[1];
          }

          else
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v22 == i)
            {
              v22 = j;
            }

            v29 = *v17;
            v28 = v17[1];
            *(v29 + 8) = i;
            *i = v29;
            *v17 = v25;
            *(v25 + 8) = v17;
            v17 = v28;
            i = j;
          }
        }

        while (v17 != v22 && i != a2);
      }
    }
  }

  return result;
}

void **PVInputHGNodeMap<unsigned int>::~PVInputHGNodeMap(void **a1)
{
  std::__tree<std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVImageBuffer * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVImageBuffer * {__strong}>>>::destroy((a1 + 15), a1[16]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((a1 + 12), a1[13]);
  std::__tree<std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGCVBitmap>>>>::destroy((a1 + 9), a1[10]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((a1 + 6), a1[7]);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((a1 + 3), a1[4]);
  std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(a1, a1[1]);
  return a1;
}

void std::__tree<std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGCVBitmap>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGCVBitmap>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGCVBitmap>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGCVBitmap>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HGRef<HGCVBitmap>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HGRef<HGCVBitmap>>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,HGRef<HGNode>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,HGRef<HGNode>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,HGRef<HGNode>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,HGRef<HGNode>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void sub_25F9090BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  (*(*v9 + 24))(v9);
  (*(*v8 + 24))(v8);
  if (*v7)
  {
    (*(**v7 + 24))(*v7);
  }

  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25F90BBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PVCameraFrameSet;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void setShapeLayerPathFromPointsWithStyle(void *a1, void *a2, id a3, void *a4, void *a5, double a6, double a7)
{
  v14 = a3;
  v15 = a5;
  v16 = a4;
  v17 = a2;
  v18 = a1;
  [v18 setFillColor:{objc_msgSend(a3, "CGColor")}];
  v19 = [v16 CGColor];

  [v18 setStrokeColor:v19];
  [v18 setLineDashPhase:a6];
  [v18 setLineDashPattern:v15];

  [v18 setLineWidth:a7];
  closed_CGPath_with_points = pv_create_closed_CGPath_with_points(v17);

  [v18 setPath:closed_CGPath_with_points];

  CGPathRelease(closed_CGPath_with_points);
}

id crosshairPointsWithSizeAndCenterPoint(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v12[0] = -(a3 * 0.5);
  v12[1] = a4 * 0.5;
  v13 = -(a1 * 0.5);
  v14 = a4 * 0.5;
  v15 = v13;
  v16 = -(a4 * 0.5);
  v17 = v12[0];
  v18 = v16;
  v19 = v12[0];
  v20 = -(a2 * 0.5);
  v21 = a3 * 0.5;
  v22 = v20;
  v23 = a3 * 0.5;
  v24 = v16;
  v25 = a1 * 0.5;
  v26 = v16;
  v27 = a1 * 0.5;
  v28 = a4 * 0.5;
  v29 = a3 * 0.5;
  v30 = a4 * 0.5;
  v31 = a3 * 0.5;
  v32 = a2 * 0.5;
  v33 = v12[0];
  v34 = a2 * 0.5;
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:12];
  for (i = 0; i != 24; i += 2)
  {
    v10 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a5 + v12[i], a6 + v12[i + 1]}];
    [v8 addObject:v10];
  }

  return v8;
}

void ensureNSublayers(void *a1, unint64_t a2)
{
  v14 = a1;
  v3 = [v14 sublayers];
  if ([v3 count] != a2)
  {
    v4 = [v3 count];
    v5 = a2 - v4;
    if (a2 > v4)
    {
      do
      {
        v6 = [MEMORY[0x277CD9F90] layer];
        [v14 addSublayer:v6];

        --v5;
      }

      while (v5);
    }

    v7 = [v14 sublayers];
    v8 = [v7 count];

    if (v8 > a2)
    {
      v9 = [v14 sublayers];
      v10 = [v9 copy];

      v11 = [v10 count] - a2;
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = [v10 objectAtIndexedSubscript:i];
          [v13 removeFromSuperlayer];
        }
      }

      v3 = v10;
    }
  }
}

uint64_t compareTimedObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    [v3 time];
    if (v5)
    {
LABEL_3:
      [v5 time];
      goto LABEL_6;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
    if (v4)
    {
      goto LABEL_3;
    }
  }

  memset(&v8, 0, sizeof(v8));
LABEL_6:
  if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
  {
    if (v3)
    {
      [v3 time];
      if (v5)
      {
LABEL_9:
        [v5 time];
LABEL_13:
        v6 = CMTimeCompare(&time1, &v8) > 0;
        goto LABEL_14;
      }
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      if (v5)
      {
        goto LABEL_9;
      }
    }

    memset(&v8, 0, sizeof(v8));
    goto LABEL_13;
  }

  v6 = -1;
LABEL_14:

  return v6;
}

void sub_25F911ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F911C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F911E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_25F911FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F914014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id PVInputHGNodeMap<unsigned int>::GetTimedMetadata(uint64_t a1, unsigned int a2)
{
  v5 = *(a1 + 128);
  v3 = a1 + 128;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 == v3 || *(v6 + 32) > a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v6 + 40);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_25F914DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F91515C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_25F9157D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 144), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__76(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_25F9171B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_25F917904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_25F918044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_25F91848C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F91862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose((v23 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_25F918DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  result = *(a2 + 112);
  v6 = *(a2 + 128);
  v7 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v7;
  *(a1 + 112) = result;
  *(a1 + 128) = v6;
  return result;
}

void sub_25F919280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_25F9195AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23)
{
  _Block_object_dispose((v26 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_25F919A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_25F919D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__90(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_25F91A07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__93(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

double PCMatrix44Tmpl<double>::leftMult(uint64_t a1, double *a2)
{
  for (i = 32; i != 64; i += 8)
  {
    v3 = (a1 + i);
    v4 = *(a1 + i - 32);
    v5 = *(a1 + i);
    v6 = *(a1 + i + 32);
    v7 = *(a1 + i + 64);
    *(v3 - 4) = v4 * *a2 + v5 * a2[1] + v6 * a2[2] + v7 * a2[3];
    *v3 = v4 * a2[4] + v5 * a2[5] + v6 * a2[6] + v7 * a2[7];
    v3[4] = v4 * a2[8] + v5 * a2[9] + v6 * a2[10] + v7 * a2[11];
    result = v4 * a2[12] + v5 * a2[13] + v6 * a2[14] + v7 * a2[15];
    v3[8] = result;
  }

  return result;
}

void sub_25F91BFEC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_25F91D340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25F91D760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_25F91DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_25F91E148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_25F91E818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__84(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_25F9204C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, PCString a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a14);

  _Unwind_Resume(a1);
}

void sub_25F920BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F9217E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25F922268(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279AA4B48, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_25F9244F0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x10A1C40BBCAB520);

  _Unwind_Resume(a1);
}

void sub_25F924630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, HGSynchronizable *a11)
{
  HGSynchronizer::~HGSynchronizer(&a11);

  _Unwind_Resume(a1);
}

void sub_25F924700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

void HGSynchronizer::~HGSynchronizer(HGSynchronizable **this)
{
  if ((this[1] & 1) == 0)
  {
    HGSynchronizable::Unlock(*this);
  }
}

{
  if ((this[1] & 1) == 0)
  {
    HGSynchronizable::Unlock(*this);
  }
}

void __isRunningInMiro_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  isRunningInMiro_s = [v1 isEqualToString:@"com.apple.mobileslideshow"];
}

double pv_simd_vector_scale(float32x4_t a1, float a2)
{
  v2 = vmulq_f32(a1, a1);
  v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  if (fabsf(v3) >= 0.00001)
  {
    v4 = v3;
    v5 = vrsqrte_f32(LODWORD(v3));
    v6 = vmul_f32(v5, vrsqrts_f32(LODWORD(v4), vmul_f32(v5, v5)));
    a1.i64[0] = vmulq_n_f32(a1, a2 * vmul_f32(v6, vrsqrts_f32(LODWORD(v4), vmul_f32(v6, v6))).f32[0]).u64[0];
  }

  return *a1.i64;
}

{
  v2 = vmulq_f32(a1, a1);
  v3 = vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)));
  if (fabs(v3) >= 0.0000001)
  {
    v4 = 1.0 / sqrt(v3) * a2;
    a1.i64[0] = vmulq_n_f32(a1, v4).u64[0];
  }

  return *a1.i64;
}

float64x2_t *pv_simd_vector_scale@<X0>(float64x2_t *result@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = result[1];
  v5 = vmulq_f64(v4, v4).f64[0] + vaddvq_f64(vmulq_f64(v3, v3));
  if (fabs(v5) >= 0.0000001)
  {
    v6 = 1.0 / sqrt(v5) * a3;
    v4 = vmulq_n_f64(v4, v6);
    v3 = vmulq_n_f64(v3, v6);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

{
  v3 = *result;
  v4 = result[1];
  v5 = vaddvq_f64(vaddq_f64(vmulq_f64(v3, v3), vmulq_f64(v4, v4)));
  if (fabs(v5) >= 0.0000001)
  {
    v6 = 1.0 / sqrt(v5) * a3;
    v4 = vmulq_n_f64(v4, v6);
    v3 = vmulq_n_f64(v3, v6);
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

float64x2_t pv_simd_lerp@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v4 = a1[1];
  v5 = a2[1];
  v6 = v4.f64[0] + (v5.f64[0] - v4.f64[0]) * a4;
  v7 = vaddq_f64(v4, vmulq_n_f64(vsubq_f64(v5, v4), a4));
  v7.f64[0] = v6;
  result = vaddq_f64(*a1, vmulq_n_f64(vsubq_f64(*a2, *a1), a4));
  *a3 = result;
  a3[1] = v7;
  return result;
}

{
  v4 = a1[1];
  v5 = vmulq_n_f64(vsubq_f64(a2[1], v4), a4);
  result = vaddq_f64(*a1, vmulq_n_f64(vsubq_f64(*a2, *a1), a4));
  *a3 = result;
  a3[1] = vaddq_f64(v4, v5);
  return result;
}

{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[1];
  v7 = vmulq_n_f64(vsubq_f64(a2[3], v4), a4);
  v8 = vmulq_n_f64(vsubq_f64(a2[2], v5), a4);
  v9 = vmulq_n_f64(vsubq_f64(a2[1], v6), a4);
  result = vaddq_f64(*a1, vmulq_n_f64(vsubq_f64(*a2, *a1), a4));
  a3[2] = vaddq_f64(v5, v8);
  a3[3] = vaddq_f64(v4, v7);
  *a3 = result;
  a3[1] = vaddq_f64(v6, v9);
  return result;
}

float32x4_t pv_simd_lerp@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X8>, float a4@<S0>)
{
  v4 = a1[1];
  v5 = vmulq_n_f32(vsubq_f32(a2[1], v4), a4);
  result = vaddq_f32(*a1, vmulq_n_f32(vsubq_f32(*a2, *a1), a4));
  *a3 = result;
  a3[1] = vaddq_f32(v4, v5);
  return result;
}

{
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[1];
  v7 = vmulq_n_f32(vsubq_f32(a2[3], v4), a4);
  v8 = vmulq_n_f32(vsubq_f32(a2[2], v5), a4);
  v9 = vmulq_n_f32(vsubq_f32(a2[1], v6), a4);
  result = vaddq_f32(*a1, vmulq_n_f32(vsubq_f32(*a2, *a1), a4));
  a3[2] = vaddq_f32(v5, v8);
  a3[3] = vaddq_f32(v4, v7);
  *a3 = result;
  a3[1] = vaddq_f32(v6, v9);
  return result;
}

BOOL pv_is_finite(double a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v5 = a1;
    v3 = (*(&v5 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v1 & 1))) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    if (v1 > 1)
    {
      break;
    }

    ++v1;
  }

  while (!v3);
  return v2 > 1;
}

BOOL pv_is_finite(__n128 a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v5 = a1;
    v3 = (*(&v5 & 0xFFFFFFFFFFFFFFF7 | (8 * (v1 & 1))) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    if (v1 > 1)
    {
      break;
    }

    ++v1;
  }

  while (!v3);
  return v2 > 1;
}

{
  v1 = 0;
  do
  {
    v2 = v1;
    v5 = a1;
    v3 = (*(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    if (v1 > 2)
    {
      break;
    }

    ++v1;
  }

  while (!v3);
  return v2 > 2;
}

{
  v1 = 0;
  do
  {
    v2 = v1;
    v5 = a1;
    v3 = (*(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1 & 3))) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    if (v1 > 3)
    {
      break;
    }

    ++v1;
  }

  while (!v3);
  return v2 > 3;
}

BOOL pv_is_finite(int8x16_t *a1, double a2, __n128 a3)
{
  v3 = 0;
  v4 = *a1;
  a3.n128_u64[0] = a1[1].u64[0];
  v4.i64[1] = vextq_s8(v4, v4, 8uLL).u64[0];
  do
  {
    v5 = v3;
    v8[0] = v4;
    v8[1] = a3;
    v6 = (*(v8 + (v3 & 3)) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    if (v3 > 2)
    {
      break;
    }

    ++v3;
  }

  while (!v6);
  return v5 > 2;
}

BOOL pv_is_finite(__int128 *a1)
{
  v1 = 0;
  v3 = *a1;
  v2 = a1[1];
  do
  {
    v4 = v1;
    v7[0] = v3;
    v7[1] = v2;
    v5 = (*(v7 + (v1 & 3)) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    if (v1 > 3)
    {
      break;
    }

    ++v1;
  }

  while (!v5);
  return v4 > 3;
}

{
  v1 = 0;
  v3 = *a1;
  v2 = a1[1];
  do
  {
    v4 = v1;
    v7[0] = v3;
    v7[1] = v2;
    v5 = (*(v7 + (v1 & 7)) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    if (v1 > 7)
    {
      break;
    }

    ++v1;
  }

  while (!v5);
  return v4 > 7;
}

{
  v1 = 0;
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  do
  {
    v6 = v1;
    v9[0] = v5;
    v9[1] = v4;
    v9[2] = v3;
    v9[3] = v2;
    v7 = (*(v9 + (v1 & 7)) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
    if (v1 > 7)
    {
      break;
    }

    ++v1;
  }

  while (!v7);
  return v6 > 7;
}

{
  v1 = 0;
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  do
  {
    v6 = v1;
    v9[0] = v5;
    v9[1] = v4;
    v9[2] = v3;
    v9[3] = v2;
    v7 = (*(v9 + (v1 & 0xF)) & 0x7FFFFFFFu) > 0x7F7FFFFF;
    if (v1 > 0xF)
    {
      break;
    }

    ++v1;
  }

  while (!v7);
  return v6 > 0xF;
}

{
  v2 = a1[1];
  v7 = *a1;
  v8 = v2;
  result = pv_is_finite(&v7);
  if (result)
  {
    v4 = a1[3];
    v7 = a1[2];
    v8 = v4;
    result = pv_is_finite(&v7);
    if (result)
    {
      v5 = a1[5];
      v7 = a1[4];
      v8 = v5;
      result = pv_is_finite(&v7);
      if (result)
      {
        v6 = a1[7];
        v7 = a1[6];
        v8 = v6;
        return pv_is_finite(&v7);
      }
    }
  }

  return result;
}

uint64_t pv_simd_line_intersection(float32x2_t *a1, float32x2_t a2, float32x2_t a3, float32x2_t a4, float32x2_t a5)
{
  v5 = vsub_f32(a3, a2);
  v6 = vsub_f32(a5, a4);
  v7 = vmuls_lane_f32(v5.f32[0], v6, 1);
  v8 = vmuls_lane_f32(v6.f32[0], v5, 1);
  if (vabds_f32(v7, v8) < 0.00001)
  {
    return 0;
  }

  v9 = v7 - v8;
  v10 = vsub_f32(a2, a4);
  v11 = (vmuls_lane_f32(v5.f32[0], v10, 1) - (v5.f32[1] * v10.f32[0])) / v9;
  if (v11 < 0.0 || v11 > 1.0)
  {
    return 0;
  }

  v13 = ((v10.f32[1] * v6.f32[0]) - (v10.f32[0] * v6.f32[1])) / v9;
  if (v13 < 0.0 || v13 > 1.0)
  {
    return 0;
  }

  *a1 = vadd_f32(vmul_n_f32(v5, v13), a2);
  return 1;
}

uint64_t pv_simd_line_intersection(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, float64x2_t a5)
{
  v5 = vsubq_f64(a3, a2);
  v6 = vsubq_f64(a5, a4);
  v7 = vmuld_lane_f64(v5.f64[0], v6, 1);
  v8 = vmuld_lane_f64(v6.f64[0], v5, 1);
  if (vabdd_f64(v7, v8) < 0.0000001)
  {
    return 0;
  }

  v9 = v7 - v8;
  v10 = vsubq_f64(a2, a4);
  v11 = (vmuld_lane_f64(v5.f64[0], v10, 1) - v5.f64[1] * v10.f64[0]) / v9;
  if (v11 < 0.0 || v11 > 1.0)
  {
    return 0;
  }

  v13 = (v10.f64[1] * v6.f64[0] - v10.f64[0] * v6.f64[1]) / v9;
  if (v13 < 0.0 || v13 > 1.0)
  {
    return 0;
  }

  *a1 = vaddq_f64(vmulq_n_f64(v5, v13), a2);
  return 1;
}

uint64_t PVCreateInputGraphForPixelBuffer@<X0>(__CVBuffer *a1@<X0>, HGNode **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v4);
  *a2 = v4;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  result = CVPixelBufferIsPlanar(a1);
  if (result)
  {
    v7 = PixelFormatType & 0xFFFFFFEF;
    if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066 || PixelFormatType == 2016686640 || PixelFormatType == 2019963440 || v7 == 875704934 || PixelFormatType == 2019963442 || PixelFormatType == 2016686642)
    {
      v40 = a2;
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      *&v44.var0 = HGRectMake4i(0, 0, Width, Height);
      *&v44.var2 = v10;
      v11 = 1;
      if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440 || (PixelFormatType != 2016686642 ? (v12 = PixelFormatType == 2019963442) : (v12 = 1), !v12 ? (v11 = 0) : (v11 = 1), PixelFormatType == 2019963442 || PixelFormatType == 2016686642))
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      HGCVBitmap::create(a1, v13, 0, &v43);
      v14 = v43;
      v15 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v15, v14);
      if (v11)
      {
        v16 = 11;
      }

      else
      {
        v16 = 10;
      }

      v39 = v15;
      HGCVBitmap::create(a1, v16, 1uLL, &v42);
      v17 = v42;
      v18 = HGObject::operator new(0x1F0uLL);
      HGBitmapLoader::HGBitmapLoader(v18, v17);
      if (v15)
      {
        (*(*v15 + 16))(v15);
      }

      v19 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v19);
      (*(*v19 + 120))(v19, 0, v15);
      (*(*v19 + 96))(v19, 0, 1.0, 0.0, 0.0, 0.0);
      HGTextureWrap::SetCropRect(v19, &v44);
      *(v19 + 452) = 1;
      v20 = v15;
      if (v15 != v19)
      {
        if (v15)
        {
          (*(*v15 + 24))(v15);
        }

        v20 = v19;
        (*(*v19 + 16))(v19);
      }

      v41 = v20;
      if (v18)
      {
        (*(*v18 + 16))(v18);
      }

      v21 = HGObject::operator new(0x1D0uLL);
      HGTextureWrap::HGTextureWrap(v21);
      (*(*v21 + 120))(v21, 0, v18);
      (*(*v21 + 96))(v21, 0, 1.0, 0.0, 0.0, 0.0);
      v22 = v18;
      if (v18 != v21)
      {
        if (v18)
        {
          (*(*v18 + 24))(v18);
        }

        v22 = v21;
        (*(*v21 + 16))(v21);
      }

      v23 = HGObject::operator new(0x90uLL);
      HGTransform::HGTransform(v23);
      (*(*v23 + 56))(v23);
      v27 = PixelFormatType == 2016686642 || PixelFormatType == 2019963442 || v7 == 875704934;
      v24.n128_u64[0] = 2.0;
      v25.n128_u64[0] = 1.0;
      if (!v27)
      {
        v25.n128_f64[0] = 2.0;
      }

      (*(*v23 + 144))(v23, v24, v25, 1.0);
      v28 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v28);
      (*(*v28 + 576))(v28, v23);
      (*(*v28 + 120))(v28, 0, v22);
      (*(*v28 + 592))(v28, 0, 0.0);
      if (v22 != v28)
      {
        if (v22)
        {
          (*(*v22 + 24))(v22);
        }

        v22 = v28;
        (*(*v28 + 16))(v28);
      }

      v29 = HGObject::operator new(0x1C0uLL);
      HGYUVPlanarToRGBA::HGYUVPlanarToRGBA(v29, 2, 0);
      (*(*v29 + 120))(v29, 0, v41);
      (*(*v29 + 120))(v29, 1, v22);
      v30 = CVBufferCopyAttachment(a1, *MEMORY[0x277CC4D10], 0);
      v31 = v30;
      if (v30)
      {
        if (CFEqual(v30, *MEMORY[0x277CC4D20]))
        {
          v32 = 0;
        }

        else if (CFEqual(v31, *MEMORY[0x277CC4D18]))
        {
          v32 = 2;
        }

        else
        {
          v32 = 1;
        }

        CFRelease(v31);
      }

      else
      {
        v32 = 1;
      }

      v34 = 0.0;
      if (PixelFormatType != 875704422)
      {
        v34 = 1.0;
        if ((PixelFormatType & 0xFFFFFFFD) != 0x78663230)
        {
          if ((PixelFormatType & 0xFFFFFFFD) == 0x78343230)
          {
            v34 = 4.0;
          }

          else
          {
            v34 = 3.0;
          }
        }
      }

      (*(*v29 + 96))(v29, 0, v32, 0.0, 0.0, 0.0);
      (*(*v29 + 96))(v29, 1, v34, 0.0, 0.0, 0.0);
      v35 = *v40;
      if (*v40 != v29)
      {
        if (v35)
        {
          (*(*v35 + 24))(v35);
        }

        *v40 = v29;
        (*(*v29 + 16))(v29);
      }

      (*(*v29 + 24))(v29);
      (*(*v28 + 24))(v28);
      (*(*v23 + 24))(v23);
      (*(*v21 + 24))(v21);
      if (v22)
      {
        (*(*v22 + 24))(v22);
      }

      (*(*v19 + 24))(v19);
      if (v41)
      {
        (*(*v41 + 24))(v41);
      }

      if (v18)
      {
        (*(*v18 + 24))(v18);
      }

      if (v42)
      {
        (*(*v42 + 24))(v42);
      }

      if (v39)
      {
        (*(*v39 + 24))(v39);
      }

      result = v43;
      if (v43)
      {
        return (*(*v43 + 24))(v43);
      }
    }

    return result;
  }

  if (PixelFormatType <= 1278226535)
  {
    if (PixelFormatType == 1111970369)
    {
      v33 = 23;
    }

    else
    {
      if (PixelFormatType != 1278226488)
      {
        return result;
      }

      v33 = 1;
    }

    goto LABEL_86;
  }

  if (PixelFormatType != 1278226536)
  {
    if (PixelFormatType == 1380411457)
    {
      v33 = 27;
      goto LABEL_86;
    }

    if (PixelFormatType != 1751411059)
    {
      return result;
    }
  }

  v33 = 5;
LABEL_86:
  v36 = a2;
  HGCVBitmap::create(a1, v33, 0, &v44);
  v37 = *&v44.var0;
  v38 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v38, v37);
  if (v4 == v38)
  {
    if (v4)
    {
      (*(*v38 + 24))(v38);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    *v36 = v38;
  }

  result = *&v44.var0;
  if (*&v44.var0)
  {
    return (*(**&v44.var0 + 24))(*&v44.var0);
  }

  return result;
}

void sub_25F928340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  _Unwind_Resume(exception_object);
}

void PVCreateInputGraphForPixelBuffer(__CVBuffer *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, HGNode **a5@<X8>)
{
  v9 = a2;
  v10 = a3;
  PVCreateInputGraphForPixelBuffer(a1, a5);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (!CVPixelBufferIsPlanar(a1) && (PixelFormatType == 1278226488 || PixelFormatType == 1278226536 || PixelFormatType == 1751411059))
  {
    goto LABEL_25;
  }

  v12 = *a5;
  if (*a5)
  {
    (*(*v12 + 16))(*a5);
    v13 = v9;
    v14 = v10;
    if (v13)
    {
      v23 = v12;
      (*(*v12 + 16))(v12);
LABEL_11:
      v22 = 0;
      ColorConformInput(&v23, v9, v10, a4, &v22, &v21);
      v17 = v22;
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }

      if (v17)
      {
        v18 = [v17 localizedDescription];
        NSLog(&stru_2872E15A0.isa, v18);
      }

      v19 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    v15 = v9;
    v16 = v10;
    if (v15)
    {
      v23 = 0;
      goto LABEL_11;
    }
  }

  v19 = 0;
  v21 = v12;
LABEL_17:

  v20 = v21;
  if (v12 == v21)
  {
    if (v12)
    {
      (*(*v21 + 24))();
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 24))(v12);
      v20 = v21;
    }

    *a5 = v20;
    v21 = 0;
  }

  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

LABEL_25:
}

void sub_25F928A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = v14;

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (*v12)
  {
    (*(**v12 + 24))(*v12);
  }

  _Unwind_Resume(a1);
}

void PVCreateInputGraphForPixelBuffer(__CVBuffer *a1@<X0>, PVInstructionGraphContext **a2@<X2>, HGNode **a3@<X8>)
{
  v8 = [PVColorSpace pvColorSpaceForCVPixelBuffer:a1];
  if (!v8)
  {
    NSLog(&cfstr_Pvcreatecvpixe.isa);
  }

  v6 = PVInstructionGraphContext::WorkingColorSpace(*a2);
  v7 = PVInstructionGraphContext::WorkingColorSpaceConformIntent(*a2);
  PVCreateInputGraphForPixelBuffer(a1, v8, v6, v7, a3);
}

uint64_t PVCreateOutputBufferForHGCVPixelBuffer(__CVBuffer *a1, HGRenderContext *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  *bytes = 0x4240133DA0E92F00;
  v6 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 8);
  CVBufferSetAttachment(a1, *MEMORY[0x277CC4B70], v6, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v6);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Renderer = HGRenderContext::GetRenderer(a2);
  result = (*(*Renderer + 304))(Renderer);
  if (result)
  {
    return result;
  }

  if ((PixelFormatType & 0xFFFFFFEF) == 0x34323066)
  {
    goto LABEL_3;
  }

  if (PixelFormatType == 2016686640 || PixelFormatType == 2019963440)
  {
    goto LABEL_10;
  }

  if ((PixelFormatType & 0xFFFFFFEF) == 0x34323266 || PixelFormatType == 2019963442 || PixelFormatType == 2016686642)
  {
LABEL_3:
    if (PixelFormatType != 2019963442 && PixelFormatType != 2016686642)
    {
      v12 = 10;
      v13 = 1;
LABEL_11:
      HGCVBitmap::create(a1, v13, 0, bytes);
      HGCVBitmap::create(a1, v12, 1uLL, &v27);
      v26 = *bytes;
      if (*bytes)
      {
        (*(**bytes + 16))(*bytes);
      }

      v14 = a3[1];
      if (v14 >= a3[2])
      {
        v15 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(a3, &v26);
        v16 = v26;
        a3[1] = v15;
        if (v16)
        {
          (*(*v16 + 24))(v16);
        }
      }

      else
      {
        *v14 = v26;
        a3[1] = v14 + 1;
      }

      v17 = v27;
      v26 = v27;
      if (v27)
      {
        (*(*v27 + 16))(v27);
      }

      v18 = a3[1];
      if (v18 >= a3[2])
      {
        v19 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(a3, &v26);
        v20 = v26;
        a3[1] = v19;
        if (v20)
        {
          (*(*v20 + 24))(v20);
        }
      }

      else
      {
        *v18 = v17;
        a3[1] = v18 + 1;
      }

      if (v27)
      {
        (*(*v27 + 24))(v27);
      }

      result = *bytes;
      if (*bytes)
      {
        return (*(**bytes + 24))(*bytes);
      }

      return result;
    }

LABEL_10:
    v12 = 11;
    v13 = 3;
    goto LABEL_11;
  }

  v21 = HGCV::HGFormatForCVPixelFormat(PixelFormatType, 0, v10);
  HGCVBitmap::create(a1, v21, 0, bytes);
  v22 = *bytes;
  v27 = *bytes;
  if (*bytes)
  {
    (*(**bytes + 16))(*bytes);
  }

  v23 = a3[1];
  if (v23 >= a3[2])
  {
    v24 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(a3, &v27);
    v25 = v27;
    a3[1] = v24;
    if (v25)
    {
      (*(*v25 + 24))(v25);
    }
  }

  else
  {
    *v23 = v22;
    a3[1] = v23 + 1;
  }

  result = *bytes;
  if (*bytes)
  {
    return (*(**bytes + 24))(*bytes);
  }

  return result;
}

void sub_25F929078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id PVPixelBufferCreationOptions(void)
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v0 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];

  return v0;
}

uint64_t PVCreateCGImageRefByConvertingCVPixelBuffer(HGCVPixelBuffer **a1)
{
  HGCVPixelBuffer::lock(*a1, 1uLL);
  if (PVCreateCGImageRefByConvertingCVPixelBuffer(HGRef<HGCVPixelBuffer>)::onceToken != -1)
  {
    PVCreateCGImageRefByConvertingCVPixelBuffer();
  }

  v2 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:*(*a1 + 3)];
  v3 = PVCreateCGImageRefByConvertingCVPixelBuffer(HGRef<HGCVPixelBuffer>)::ciContext;
  v4 = HGCVPixelBuffer::w(*a1, 0);
  v5 = [v3 createCGImage:v2 fromRect:{0.0, 0.0, v4, HGCVPixelBuffer::h(*a1, 0)}];
  HGCVPixelBuffer::unlock(*a1, 1uLL);

  return v5;
}

void ___Z43PVCreateCGImageRefByConvertingCVPixelBuffer5HGRefI15HGCVPixelBufferE_block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBF740];
  v4 = *MEMORY[0x277CBF910];
  v5[0] = MEMORY[0x277CBEC28];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v2 = [v0 contextWithOptions:v1];
  v3 = PVCreateCGImageRefByConvertingCVPixelBuffer(HGRef<HGCVPixelBuffer>)::ciContext;
  PVCreateCGImageRefByConvertingCVPixelBuffer(HGRef<HGCVPixelBuffer>)::ciContext = v2;
}

CGImageRef PVCreateCGImageRefFromCVPixelBuffer(HGCVPixelBuffer **a1, uint64_t a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(*(*a1 + 3));
  if (PixelFormatType == 1111970369 || PixelFormatType == 1380411457)
  {
    v6 = *a1;
    (*(*v6 + 16))(v6);
    HGCVPixelBuffer::lock(v6, 1uLL);
    v7 = HGCVPixelBuffer::ptr(v6, 0);
    v8 = HGCVPixelBuffer::rowBytes(v6, 0);
    v9 = HGCVPixelBuffer::h(v6, 0);
    v10 = CGDataProviderCreateWithData(v6, v7, v9 * v8, freeAndUnlockUnderlyingHGCVPixelBuffer);
    v11 = HGCVPixelBuffer::w(v6, 0);
    v12 = HGCVPixelBuffer::h(v6, 0);
    v13 = *(a2 + 4);
    v14 = HGCVPixelBuffer::rowBytes(v6, 0);
    v15 = CGImageCreate(v11, v12, v13, 4 * v13, v14, *(a2 + 16), *(a2 + 8), v10, 0, 1, kCGRenderingIntentDefault);
    CGDataProviderRelease(v10);
    return v15;
  }

  else
  {
    v20[0] = HIBYTE(PixelFormatType);
    v20[1] = BYTE2(PixelFormatType);
    v20[2] = BYTE1(PixelFormatType);
    v20[3] = PixelFormatType;
    v20[4] = 0;
    NSLog(&cfstr_WarningSlowCon.isa, v20);
    v17 = *a1;
    v19 = v17;
    if (v17)
    {
      (*(*v17 + 16))(v17);
    }

    v18 = PVCreateCGImageRefByConvertingCVPixelBuffer(&v19);
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    return v18;
  }
}

void sub_25F92961C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t freeAndUnlockUnderlyingHGCVPixelBuffer(HGCVPixelBuffer *a1, const void *a2)
{
  HGCVPixelBuffer::unlock(a1, 1uLL);
  v3 = *(*a1 + 24);

  return v3(a1);
}

void PVCreateCVPixelBufferFromCGImageRef(CGImage *a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, HGObject **a4@<X8>)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  HGCVPixelBuffer::create(a3, Width, Height, *a2, a4);
  HGCVPixelBuffer::lock(*a4, 0);
  v10 = HGCVPixelBuffer::ptr(*a4, 0);
  v11 = *(a2 + 4);
  v12 = HGCVPixelBuffer::rowBytes(*a4, 0);
  v13 = CGBitmapContextCreate(v10, Width, Height, v11, v12, *(a2 + 16), *(a2 + 8));
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = Width;
  v16.size.height = Height;
  CGContextClearRect(v13, v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = Width;
  v17.size.height = Height;
  CGContextDrawImage(v13, v17, a1);
  CGContextRelease(v13);
  v14 = [PVColorSpace pvColorSpaceFromCGColorSpace:*(a2 + 16)];
  PVAddColorSpaceAttributesToCVPixelBuffer(*(*a4 + 3), v14);
  HGCVPixelBuffer::unlock(*a4, 0);
}

void sub_25F92980C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*v10)
  {
    (*(**v10 + 24))(*v10);
  }

  _Unwind_Resume(exception_object);
}

HGBitmapUtils *PVCreateCVPixelBufferFromCGImageRefAndGainMap@<X0>(HGBitmapUtils *result@<X0>, HGBitmapUtils *a2@<X1>, uint64_t a3@<X2>, const char **a4@<X3>, HGNode ****a5@<X8>)
{
  if (result && a2)
  {
    v9 = result;
    HGBitmapUtils::createBitmapLoader(result, &v41);
    HGBitmapUtils::createBitmapLoader(a2, &v40);
    v10 = [PVColorSpace pvColorSpaceFromCGColorSpace:*(a3 + 16)];
    if (!v10)
    {
      v10 = +[PVColorSpace sRGBColorSpace];
    }

    v11 = v41;
    v39 = v41;
    if (v41)
    {
      (*(*v41 + 16))(v41);
    }

    v28 = [v10 nclcTriplet];
    PVCreateColorConform([v28 hgColorPrimary], objc_msgSend(v28, "hgTransferFunction"), 0, 3, 8, 0, &v38);
    (*(*v38 + 120))(v38, 0, v11);
    Width = CGImageGetWidth(v9);
    Height = CGImageGetHeight(v9);
    v14 = CGImageGetWidth(a2);
    v15 = CGImageGetHeight(a2);
    v16 = HGObject::operator new(0x1D0uLL);
    v16[27] = 0u;
    v16[28] = 0u;
    v16[25] = 0u;
    v16[26] = 0u;
    v16[23] = 0u;
    v16[24] = 0u;
    v16[21] = 0u;
    v16[22] = 0u;
    v16[19] = 0u;
    v16[20] = 0u;
    v16[17] = 0u;
    v16[18] = 0u;
    v16[15] = 0u;
    v16[16] = 0u;
    v16[13] = 0u;
    v16[14] = 0u;
    v16[11] = 0u;
    v16[12] = 0u;
    v16[9] = 0u;
    v16[10] = 0u;
    v16[7] = 0u;
    v16[8] = 0u;
    v16[5] = 0u;
    v16[6] = 0u;
    v16[3] = 0u;
    v16[4] = 0u;
    v16[1] = 0u;
    v16[2] = 0u;
    *v16 = 0u;
    HGNode::HGNode(v16);
    *v16 = &unk_2872E01A0;
    *(v16 + 51) = 0;
    *(v16 + 104) = 1065353216;
    *(v16 + 424) = 0u;
    *(v16 + 440) = 0u;
    off_2872E0218(v16, 0, v11);
    (*(*v16 + 120))(v16, 1, v40);
    (*(*v16 + 96))(v16, 0, 1.265, 0.0, 0.0, 0.0);
    (*(*v16 + 96))(v16, 1, Width, Height, 0.0, 0.0);
    (*(*v16 + 96))(v16, 2, v14, v15, 0.0, 0.0);
    PVCreateColorConform(3, 8, 0, 3, 1, 0, &v37);
    (*(*v37 + 120))(v37, 0, v16);
    if (v11 != v37)
    {
      if (v11)
      {
        (*(*v11 + 24))(v11);
      }

      v11 = v37;
      v39 = v37;
      if (v37)
      {
        (*(*v37 + 16))(v37);
      }
    }

    v17 = HGObject::operator new(0x1B0uLL);
    HGHLG::SDRToHLG::SDRToHLG(v17, 2, 1);
    (*(*v17 + 120))(v17, 0, v11);
    if (v11 != v17)
    {
      if (v11)
      {
        (*(*v11 + 24))(v11);
      }

      v39 = v17;
      (*(*v17 + 16))(v17);
    }

    v18 = +[PVColorSpace rec2100HLGColorSpace];
    v19 = [(PVColorSpace *)v18 nclcTriplet];
    PVCreateColorConform(3, 8, 0, [v19 hgColorPrimary], objc_msgSend(v19, "hgTransferFunction"), 0, &v36);
    v20 = v39;
    (*(*v36 + 120))(v36, 0, v39);
    if (v20 != v36)
    {
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      v20 = v36;
      v39 = v36;
      if (v36)
      {
        (*(*v36 + 16))(v36);
      }
    }

    v33 = 0;
    v34 = 0;
    v35 = 0;
    v21 = HGRectMake4i(0, 0, Width, Height);
    PVCreateYUVPlanesWithBackfillBlackBackground(v21, v22, v21, v22, &v39, v19, 2016686640, &v33);
    HGCVPixelBuffer::create(a4, Width, Height, 0x78343230u, &v42);
    HGCVBitmap::create(&v42, 3, 0, &v32);
    HGCVBitmap::create(&v42, 11, 1uLL, &v31);
    v23 = HGObject::operator new(0xD0uLL);
    HGRenderNode::HGRenderNode(v23);
    if (v34 == v33)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    HGRenderNode::SetNode(v23, *v33);
    HGRenderNode::SetBitmap(v23, v32);
    v24 = HGObject::operator new(0xD0uLL);
    HGRenderNode::HGRenderNode(v24);
    if ((v34 - v33) <= 8)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    HGRenderNode::SetNode(v24, v33[1]);
    HGRenderNode::SetBitmap(v24, v31);
    v25 = HGObject::operator new(0x160uLL);
    HGRenderJob::HGRenderJob(v25);
    HGUserJob::SetPriority(v25, 1);
    HGUserJob::SetState(v25, 2);
    HGRenderJob::SetPriority(v25, 10);
    HGRenderJob::AddRenderNode(v25, v23);
    HGRenderJob::AddRenderNode(v25, v24);
    PVRenderManager::INSTANCE(v26, &v29);
    PVRenderManager::GetRenderQueue(v29, &v30);
    if (v29)
    {
      (*(*v29 + 24))(v29);
    }

    if (v30)
    {
      v27 = HGRenderQueue::ExecuteRenderJob(v30, v25);
      if (v27)
      {
        NSLog(&cfstr_HgrenderqueueE.isa, v27);
        *a5 = 0;
      }

      else
      {
        PVAddColorSpaceAttributesToCVPixelBuffer(v42[3], v18);
        *a5 = v42;
        v42 = 0;
      }

      if (v30)
      {
        (*(*v30 + 24))(v30);
      }
    }

    else
    {
      *a5 = 0;
    }

    if (v25)
    {
      (*(*v25 + 24))(v25);
    }

    if (v24)
    {
      (*(*v24 + 24))(v24);
    }

    if (v23)
    {
      (*(*v23 + 24))(v23);
    }

    if (v31)
    {
      (*(*v31 + 24))(v31);
    }

    if (v32)
    {
      (*(*v32 + 24))(v32);
    }

    if (v42)
    {
      ((*v42)[3])(v42);
    }

    v42 = &v33;
    std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100](&v42);
    if (v36)
    {
      (*(*v36 + 24))(v36);
    }

    (*(*v17 + 24))(v17);
    if (v37)
    {
      (*(*v37 + 24))(v37);
    }

    (*(*v16 + 24))(v16);
    if (v38)
    {
      (*(*v38 + 24))(v38);
    }

    if (v20)
    {
      (*(*v20 + 24))(v20);
    }

    if (v40)
    {
      (*(*v40 + 24))(v40);
    }

    result = v41;
    if (v41)
    {
      return (*(*v41 + 24))(v41);
    }
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void sub_25F92A260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  v24 = *(v22 - 96);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  _Unwind_Resume(exception_object);
}

void PVCreateYUVPlanesWithBackfillBlackBackground(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v15 = a6;
  if (!HGRectContainsRect(a1, a2, a3, a4))
  {
    v17 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v17);
  }

  v16 = *a5;
  if (*a5)
  {
    (*(*v16 + 16))(*a5);
  }

  PVCreateColorConform([v15 hgColorPrimary], objc_msgSend(v15, "hgTransferFunction"), 0, objc_msgSend(v15, "hgColorPrimary"), objc_msgSend(v15, "hgTransferFunction"), objc_msgSend(v15, "hgYCbCrMatrix"), &v24);
  (*(*v24 + 120))(v24, 0, v16);
  if (a7 > 2016686641)
  {
    switch(a7)
    {
      case 2016686642:
        v18 = 14;
        goto LABEL_15;
      case 2019963440:
        v18 = 13;
        goto LABEL_15;
      case 2019963442:
        v18 = 15;
LABEL_15:
        v19 = 25;
        goto LABEL_19;
    }

LABEL_17:
    v18 = 8;
    goto LABEL_18;
  }

  if (a7 != 875704422)
  {
    if (a7 == 2016686640)
    {
      v18 = 12;
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v18 = 9;
LABEL_18:
  v19 = 24;
LABEL_19:
  HGColorConform::SetOutputPixelFormat(v24, v19, v18);
  v20 = HGObject::operator new(0x1B0uLL);
  HGYUV444ToPlanarLuma::HGYUV444ToPlanarLuma(v20, 2);
  v23 = v20;
  (*(*v20 + 120))(v20, 0, v24);
  std::vector<HGRef<HGNode>>::push_back[abi:ne200100](a8, &v23);
  v21 = HGObject::operator new(0x1B0uLL);
  HGYUV444ToPlanarChroma::HGYUV444ToPlanarChroma(v21, 1, 0);
  v22 = v21;
  (*(*v21 + 120))(v21, 0, v24);
  std::vector<HGRef<HGNode>>::push_back[abi:ne200100](a8, &v22);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }
}

void sub_25F92ABF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HGObject::operator delete(v13);
  (*(*v14 + 24))(v14);

  _Unwind_Resume(a1);
}

void PVCreateCVPixelBufferFromCVPixelBufferWithColorSpaces(__CVBuffer *a1@<X0>, void *a2@<X1>, void *a3@<X2>, const char **a4@<X3>, HGColorConform ***a5@<X8>)
{
  v12 = a2;
  v9 = a3;
  if (a1)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    PVCreateInputGraphForPixelBuffer(a1, &v13);
    PVCreateCVPixelBufferWithColorSpaces(&v13, Width, Height, v12, v9, a4, a5);
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_25F92AEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void PVCreateCVPixelBufferWithColorSpaces(HGColorConform **a1@<X0>, _anonymous_namespace_ *a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X4>, const char **a6@<X5>, HGColorConform ***a7@<X8>)
{
  v13 = a4;
  v14 = a5;
  if (v14)
  {
    v42 = *a1;
    v15 = v42;
    if (v42)
    {
      (*(*v42 + 16))(v42);
      v41 = v42;
      (*(*v42 + 16))(v42);
    }

    else
    {
      v41 = 0;
    }

    v40 = 0;
    ColorConformInput(&v41, v13, v14, 1, &v40, &v37);
    v16 = v40;
    v17 = v37;
    if (v15 == v37)
    {
      if (v15)
      {
        (*(*v37 + 3))();
      }
    }

    else
    {
      if (v15)
      {
        (*(*v15 + 24))(v15);
        v17 = v37;
      }

      v42 = v17;
      v37 = 0;
      v15 = v17;
    }

    if (v41)
    {
      (*(*v41 + 24))(v41);
    }

    if (v16)
    {
      NSLog(&cfstr_ErrorInColorCo.isa, v13, v14);
      *a7 = 0;
    }

    else
    {
      v31 = a7;
      v32 = v13;
      v18 = [(PVColorSpace *)v14 isHDRSpace];
      if (v18)
      {
        v19 = 2016686640;
      }

      else
      {
        v19 = 875704438;
      }

      v37 = 0;
      v38 = 0;
      v39 = 0;
      v20 = HGRectMake4i(0, 0, a2, a3);
      v22 = v21;
      v23 = [(PVColorSpace *)v14 nclcTriplet];
      PVCreateYUVPlanesWithBackfillBlackBackground(v20, v22, v20, v22, &v42, v23, v19, &v37);

      HGCVPixelBuffer::create(a6, a2, a3, v19, &v43);
      if (v18)
      {
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      v13 = v32;
      HGCVBitmap::create(&v43, v24, 0, &v36);
      v16 = 0;
      if (v18)
      {
        v25 = 11;
      }

      else
      {
        v25 = 10;
      }

      HGCVBitmap::create(&v43, v25, 1uLL, &v35);
      v26 = HGObject::operator new(0xD0uLL);
      HGRenderNode::HGRenderNode(v26);
      if (v38 == v37)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      HGRenderNode::SetNode(v26, *v37);
      HGRenderNode::SetBitmap(v26, v36);
      v27 = HGObject::operator new(0xD0uLL);
      HGRenderNode::HGRenderNode(v27);
      if ((v38 - v37) <= 8)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      HGRenderNode::SetNode(v27, v37[1]);
      HGRenderNode::SetBitmap(v27, v35);
      v28 = HGObject::operator new(0x160uLL);
      HGRenderJob::HGRenderJob(v28);
      HGUserJob::SetPriority(v28, 1);
      HGUserJob::SetState(v28, 2);
      HGRenderJob::SetPriority(v28, 10);
      HGRenderJob::AddRenderNode(v28, v26);
      HGRenderJob::AddRenderNode(v28, v27);
      PVRenderManager::INSTANCE(v29, &v33);
      PVRenderManager::GetRenderQueue(v33, &v34);
      if (v33)
      {
        (*(*v33 + 24))(v33);
      }

      if (v34)
      {
        v30 = HGRenderQueue::ExecuteRenderJob(v34, v28);
        if (v30)
        {
          NSLog(&cfstr_HgrenderqueueE_0.isa, v30);
          *v31 = 0;
        }

        else
        {
          PVAddColorSpaceAttributesToCVPixelBuffer(v43[3], v14);
          *v31 = v43;
          v43 = 0;
        }

        if (v34)
        {
          (*(*v34 + 24))(v34);
        }
      }

      else
      {
        *v31 = 0;
      }

      if (v28)
      {
        (*(*v28 + 24))(v28);
      }

      if (v27)
      {
        (*(*v27 + 24))(v27);
      }

      if (v26)
      {
        (*(*v26 + 24))(v26);
      }

      if (v35)
      {
        (*(*v35 + 24))(v35);
      }

      if (v36)
      {
        (*(*v36 + 24))(v36);
      }

      if (v43)
      {
        (*(*v43 + 3))(v43);
      }

      v43 = &v37;
      std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100](&v43);
    }

    if (v15)
    {
      (*(*v15 + 24))(v15);
    }
  }

  else
  {
    *a7 = 0;
  }
}

void sub_25F92B4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  v24 = *(v22 - 88);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  *(v22 - 88) = &a18;
  std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100]((v22 - 88));
  v25 = *(v22 - 96);
  if (v25)
  {
    (*(*v25 + 24))(v25);
  }

  _Unwind_Resume(a1);
}

void PVCreateCVPixelBufferFromCGImageRefWithColorSpaces(HGBitmapUtils *a1@<X0>, void *a2@<X1>, void *a3@<X2>, const char **a4@<X3>, HGColorConform ***a5@<X8>)
{
  v9 = a2;
  v10 = a3;
  if (a1)
  {
    HGBitmapUtils::createBitmapLoader(a1, &v15);
    v11 = v15;
    v14 = v15;
    if (v15)
    {
      (*(*v15 + 16))(v15);
    }

    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    PVCreateCVPixelBufferWithColorSpaces(&v14, Width, Height, v9, v10, a4, a5);
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    if (v15)
    {
      (*(*v15 + 24))(v15);
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_25F92B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t PVMaximumCVPixelBufferSize(void)
{
  if ((atomic_load_explicit(&qword_280C5CC08, memory_order_acquire) & 1) == 0)
  {
    PVMaximumCVPixelBufferSize();
  }

  return _MergedGlobals_2;
}

uint64_t PVMaximumCVPixelBufferSize(void)::$_0::operator()()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = ___ZZ26PVMaximumCVPixelBufferSizevENK3__0clEv_block_invoke;
  block[3] = &unk_279AA5500;
  block[4] = &v3;
  if (PVMaximumCVPixelBufferSize(void)::$_0::operator() const(void)::once != -1)
  {
    dispatch_once(&PVMaximumCVPixelBufferSize(void)::$_0::operator() const(void)::once, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

BOOL PVCanCreateCVPixelBuffer(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v3 = PVMaximumCVPixelBufferSize();
  return height <= v3 && width <= v3;
}

void PVAddColorSpaceAttributesToCVPixelBuffer(__CVBuffer *a1, PVColorSpace *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [(PVColorSpace *)v3 nclcTriplet];
    if ([v5 colorPrimary])
    {
      v6 = [v5 colorPrimary];
      CVBufferSetAttachment(a1, *MEMORY[0x277CC4C00], v6, kCVAttachmentMode_ShouldPropagate);
    }

    if ([v5 transferFunction])
    {
      v7 = [v5 transferFunction];
      CVBufferSetAttachment(a1, *MEMORY[0x277CC4CC0], v7, kCVAttachmentMode_ShouldPropagate);
    }

    if ([v5 ycbcrMatrix])
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      if ((atomic_load_explicit(&qword_280C5CC18, memory_order_acquire) & 1) == 0)
      {
        PVAddColorSpaceAttributesToCVPixelBuffer();
      }

      if ((atomic_load_explicit(&qword_280C5CC20, memory_order_acquire) & 1) == 0)
      {
        PVAddColorSpaceAttributesToCVPixelBuffer();
      }

      if (PVPixelFormatIsYCbCr::onceToken != -1)
      {
        PVAddColorSpaceAttributesToCVPixelBuffer();
      }

      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = *"";
      v11[2] = ___ZL20PVPixelFormatIsYCbCrj_block_invoke_2;
      v11[3] = &unk_279AA5528;
      v12 = PixelFormatType;
      v11[4] = &v13;
      dispatch_sync(*qword_280C5CC10, v11);
      v9 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
      if (v9 == 1)
      {
        v10 = [v5 ycbcrMatrix];
        CVBufferSetAttachment(a1, *MEMORY[0x277CC4D10], v10, kCVAttachmentMode_ShouldPropagate);
      }
    }
  }
}

void PVCreateHGBitmapWithStorage(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, HGBitmap **a5@<X8>)
{
  v14 = a4;
  v10 = HGFormatUtils::rowBytesHint(a3, (a2 - a1), v9);
  v11 = malloc_type_valloc((((a2 - (a1 & 0xFFFFFFFF00000000)) >> 32) * v10 + 4095) & 0xFFFFFFFFFFFFF000, 0x1BED8D3BuLL);
  v12 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v12, a1, a2, a3, v11, v10);
  *a5 = v12;
  v13 = HGObject::operator new(0x20uLL);
  PVOwnedBufferStorage::PVOwnedBufferStorage(v13, v11, v14);
  HGBitmap::SetStorage(v12, v13);
  (*(*v13 + 24))(v13);
}

void sub_25F92BDC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  HGObject::operator delete(v11);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(a1);
}

void PVCreateHGBitmapFromCGImageRefWithStorage(CGImage *a1@<X0>, PVColorSpace *a2@<X1>, HGBitmap **a3@<X8>)
{
  v25 = a2;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v11 = AlphaInfo == kCGImageAlphaFirst || AlphaInfo == kCGImageAlphaPremultipliedFirst;
  v12 = PGHelium::convertBitsPerChannel((BitsPerPixel / BitsPerComponent), BitsPerComponent, v11);
  v14 = HGFormatUtils::rowBytesHint(v12, Width, v13);
  v15 = malloc_type_valloc((Height * v14 + 4095) & 0xFFFFFFFFFFFFF000, 0xEE50DF88uLL);
  v16 = [(PVColorSpace *)v25 cgColorSpace];
  v17 = CGImageGetAlphaInfo(a1);
  v18 = CGBitmapContextCreate(v15, Width, Height, BitsPerComponent, v14, v16, v17);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = Width;
  v27.size.height = Height;
  CGContextClearRect(v18, v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = Width;
  v28.size.height = Height;
  CGContextDrawImage(v18, v28, a1);
  CGContextRelease(v18);
  v20 = HGRectMake4f(v19, 0.0, 0.0, Width, Height);
  v22 = v21;
  v23 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v23, v20, v22, v12, v15, v14);
  *a3 = v23;
  v24 = HGObject::operator new(0x20uLL);
  PVOwnedBufferStorage::PVOwnedBufferStorage(v24, v15, v25);
  HGBitmap::SetStorage(v23, v24);
  (*(*v24 + 24))(v24);
}

void sub_25F92C024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  HGObject::operator delete(v11);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<HGRef<HGNode>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode> const&>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *v3 = *a2;
    if (v4)
    {
      (*(*v4 + 16))(v4);
    }

    result = (v3 + 1);
    *(a1 + 8) = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ___ZZ26PVMaximumCVPixelBufferSizevENK3__0clEv_block_invoke(HGMetalDeviceInfo *a1)
{
  result = HGMetalDeviceInfo::getMainDevice(a1);
  *(*(*(a1 + 4) + 8) + 24) = *(result + 48);
  return result;
}

uint64_t *___ZL20PVPixelFormatIsYCbCrj_block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = qword_280C5CC30;
  if (!qword_280C5CC30)
  {
    v4 = *v2;
LABEL_11:
    v9 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, v4);
    if (v9)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(v9, *MEMORY[0x277CC4F48]);
      if (Value)
      {
        v12 = CFEqual(Value, *MEMORY[0x277CBED28]) != 0;
        *(std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&qword_280C5CC28, v2) + 32) = v12;
      }

      else
      {
        *(std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&qword_280C5CC28, v2) + 32) = 0;
      }

      CFRelease(v10);
    }

    else
    {
      *(std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&qword_280C5CC28, v2) + 32) = 0;
    }

    goto LABEL_17;
  }

  v4 = *v2;
  v5 = &qword_280C5CC30;
  do
  {
    v6 = *(v3 + 28);
    v7 = v6 >= v4;
    v8 = v6 < v4;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 == &qword_280C5CC30 || v4 < *(v5 + 7))
  {
    goto LABEL_11;
  }

LABEL_17:
  result = std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&qword_280C5CC28, v2);
  *(*(*(a1 + 32) + 8) + 24) = *(result + 32);
  return result;
}

id **std::unique_ptr<PVGCDLock>::reset[abi:ne200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,BOOL>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,BOOL>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,BOOL>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

void PVOwnedBufferStorage::PVOwnedBufferStorage(PVOwnedBufferStorage *this, void *a2, PVColorSpace *a3)
{
  v5 = a3;
  HGObject::HGObject(this);
  *this = &unk_2871CDE98;
  *(this + 2) = a2;
  *(this + 3) = v5;
}

void PVOwnedBufferStorage::~PVOwnedBufferStorage(PVOwnedBufferStorage *this)
{
  PVOwnedBufferStorage::~PVOwnedBufferStorage(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_2871CDE98;
  v2 = *(this + 2);
  if (v2)
  {
    free(v2);
  }

  HGObject::~HGObject(this);
}

uint64_t std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v6);
  }

  v13 = 0;
  v14 = (8 * v5);
  *v14 = *a2;
  *a2 = 0;
  v15 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>(a1, v3, v4, 0);
  v9 = *a1;
  *a1 = 0;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<HGRef<HGBitmap>>::~__split_buffer(&v13);
  return v12;
}

void sub_25F92C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HGRef<HGBitmap>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      if (v8)
      {
        (*(*v8 + 16))(v8);
        a4 = v13;
      }

      ++v7;
      v13 = ++a4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGBitmap>>,HGRef<HGBitmap>*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      result = std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<HGRef<HGBitmap>>::~__split_buffer(void **a1)
{
  std::__split_buffer<HGRef<HGBitmap>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HGRef<HGBitmap>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<HGRef<HGBitmap>>::destroy[abi:ne200100](v4, (v1 - 8));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void std::vector<HGRef<HGNode>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v7);
  }

  v8 = (8 * v2);
  v17 = 0;
  v18 = v8;
  v19 = (8 * v2);
  v9 = *a2;
  *v8 = *a2;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    v8 = v18;
    v10 = v19;
  }

  else
  {
    v10 = 8 * v2;
  }

  *&v19 = v10 + 8;
  v11 = *(a1 + 8);
  v12 = (v8 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<HGRef<HGNode>>::~__split_buffer(&v17);
  return v16;
}

void sub_25F92CB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<HGRef<HGNode>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *a4 = *v7;
      if (v8)
      {
        (*(*v8 + 16))(v8);
        a4 = v13;
      }

      ++v7;
      v13 = ++a4;
    }

    while (v7 != a3);
    v11 = 1;
    while (v5 != a3)
    {
      std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](a1, v5++);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HGRef<HGNode>>,HGRef<HGNode>*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      result = std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](v5, --v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<HGRef<HGNode>>::~__split_buffer(void **a1)
{
  std::__split_buffer<HGRef<HGNode>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HGRef<HGNode>>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 8;
      result = std::allocator<HGRef<HGNode>>::destroy[abi:ne200100](v4, (v1 - 8));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t pv_buffer_size_for_string_representation(_OWORD *a1, uint64_t a2)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v7[5] = v2;
  v3 = a1[7];
  v7[6] = a1[6];
  v7[7] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return pv_get_string_representation(v7, 0, 0, a2) + 1;
}

{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return pv_get_string_representation(v6, 0, 0, a2) + 1;
}

{
  v2 = a1[5];
  v7[4] = a1[4];
  v7[5] = v2;
  v3 = a1[7];
  v7[6] = a1[6];
  v7[7] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = a1[3];
  v7[2] = a1[2];
  v7[3] = v5;
  return pv_get_string_representation(v7, 0, 0, a2) + 1;
}

uint64_t pv_get_string_representation(uint64_t a1, char *a2, size_t a3, uint64_t a4)
{
  *&v89 = 0;
  v88 = 0uLL;
  v8 = *(a1 + 48);
  v87[0] = *(a1 + 32);
  v87[1] = v8;
  euler_angles = pv_simd_quaternion_get_euler_angles(v87, 4, &v88);
  if (a2)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = snprintf(a2, v9, "translation:");
  v11 = 0;
  v12 = v10;
  do
  {
    if (a2)
    {
      v13 = &a2[v12];
    }

    else
    {
      v13 = 0;
    }

    if (a2)
    {
      v14 = a3 - v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = snprintf(v13, v14, "\n    %s: ", pv_get_string_representation[v11]);
    v16 = v12 + v15;
    v17 = v15 + v10;
    v18 = *(a1 + 16);
    v86[0] = *a1;
    v86[1] = v18;
    if (a2)
    {
      v19 = &a2[v16];
    }

    else
    {
      v19 = 0;
    }

    if (a2)
    {
      v20 = a3 - v16;
    }

    else
    {
      v20 = 0;
    }

    string_representation = pv_get_string_representation(*(v86 + (v11 & 3)), v19, v20, a4);
    v10 = v17 + string_representation;
    v12 = v16 + string_representation;
    ++v11;
  }

  while (v11 != 3);
  if (a2)
  {
    v22 = &a2[v12];
  }

  else
  {
    v22 = 0;
  }

  if (a2)
  {
    v23 = a3 - v12;
  }

  else
  {
    v23 = 0;
  }

  v24 = snprintf(v22, v23, "\nscale:");
  v25 = 0;
  v26 = v24 + v10;
  v27 = v12 + v24;
  do
  {
    if (a2)
    {
      v28 = &a2[v27];
    }

    else
    {
      v28 = 0;
    }

    if (a2)
    {
      v29 = a3 - v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = snprintf(v28, v29, "\n    %s: ", pv_get_string_representation[v25]);
    v31 = v27 + v30;
    v32 = v30 + v26;
    v33 = *(a1 + 80);
    v85[0] = *(a1 + 64);
    v85[1] = v33;
    if (a2)
    {
      v34 = &a2[v31];
    }

    else
    {
      v34 = 0;
    }

    if (a2)
    {
      v35 = a3 - v31;
    }

    else
    {
      v35 = 0;
    }

    v36 = pv_get_string_representation(*(v85 + (v25 & 3)), v34, v35, a4);
    v26 = v32 + v36;
    v27 = v31 + v36;
    ++v25;
  }

  while (v25 != 3);
  if (a2)
  {
    v37 = &a2[v27];
  }

  else
  {
    v37 = 0;
  }

  if (a2)
  {
    v38 = a3 - v27;
  }

  else
  {
    v38 = 0;
  }

  v39 = "FAILED";
  if (euler_angles)
  {
    v39 = "OK";
  }

  v40 = snprintf(v37, v38, "\nrotation: %s (%s)", "ZXY", v39);
  v41 = 0;
  v42 = v40 + v26;
  v43 = v27 + v40;
  v81 = a4;
  do
  {
    if (a2)
    {
      v44 = &a2[v43];
    }

    else
    {
      v44 = 0;
    }

    if (a2)
    {
      v45 = a3 - v43;
    }

    else
    {
      v45 = 0;
    }

    v46 = snprintf(v44, v45, "\n    %s: ", pv_get_string_representation[v41]);
    v47 = v43 + v46;
    v84[0] = v88;
    v84[1] = v89;
    if (a2)
    {
      v48 = &a2[v47];
    }

    else
    {
      v48 = 0;
    }

    if (a2)
    {
      v49 = a3 - v47;
    }

    else
    {
      v49 = 0;
    }

    v50 = pv_get_string_representation(*(v84 + (v41 & 3)) * 180.0 / 3.14159265, v48, v49, v81);
    v51 = v47 + v50;
    if (a2)
    {
      v52 = &a2[v51];
    }

    else
    {
      v52 = 0;
    }

    if (a2)
    {
      v53 = a3 - v51;
    }

    else
    {
      v53 = 0;
    }

    v54 = snprintf(v52, v53, "° (");
    v55 = v51 + v54;
    v83[0] = v88;
    v83[1] = v89;
    if (a2)
    {
      v56 = &a2[v55];
    }

    else
    {
      v56 = 0;
    }

    if (a2)
    {
      v57 = a3 - v55;
    }

    else
    {
      v57 = 0;
    }

    v58 = pv_get_string_representation(*(v83 + (v41 & 3)), v56, v57, v81);
    v59 = v55 + v58;
    v60 = v46 + v42 + v50 + v54 + v58;
    if (a2)
    {
      v61 = &a2[v59];
    }

    else
    {
      v61 = 0;
    }

    if (a2)
    {
      v62 = a3 - v59;
    }

    else
    {
      v62 = 0;
    }

    v63 = snprintf(v61, v62, ")");
    v42 = v60 + v63;
    v43 = v59 + v63;
    ++v41;
  }

  while (v41 != 3);
  if (a2)
  {
    v64 = &a2[v43];
  }

  else
  {
    v64 = 0;
  }

  if (a2)
  {
    v65 = a3 - v43;
  }

  else
  {
    v65 = 0;
  }

  v66 = snprintf(v64, v65, "\nshear:");
  v67 = 0;
  LODWORD(v68) = v66 + v42;
  v69 = v43 + v66;
  do
  {
    if (a2)
    {
      v70 = &a2[v69];
    }

    else
    {
      v70 = 0;
    }

    if (a2)
    {
      v71 = a3 - v69;
    }

    else
    {
      v71 = 0;
    }

    v72 = snprintf(v70, v71, "\n    %s: ", pv_get_string_representation[v67]);
    v73 = v69 + v72;
    v74 = v72 + v68;
    v75 = *(a1 + 112);
    v82[0] = *(a1 + 96);
    v82[1] = v75;
    if (a2)
    {
      v76 = &a2[v73];
    }

    else
    {
      v76 = 0;
    }

    if (a2)
    {
      v77 = a3 - v73;
    }

    else
    {
      v77 = 0;
    }

    v78 = pv_get_string_representation(*(v82 + (v67 & 3)), v76, v77, v81);
    v68 = (v74 + v78);
    v69 = v73 + v78;
    ++v67;
  }

  while (v67 != 3);
  return v68;
}

BOOL pv_transform_info_make(simd_float4x4 a1, PVTransformInfo *a2)
{
  if (fabsf(a1.columns[3].f32[3]) < 0.00001)
  {
    return 0;
  }

  v4 = MEMORY[0x277D860B8];
  *v108.columns[0].i64 = pv_simd_normalize(a1);
  v6 = vcvtq_f64_f32(v5);
  *&v7 = *(&v7 + 2);
  *a2 = v6;
  *(a2 + 1) = v7;
  v108.columns[0].i32[3] = *(v4 + 12);
  v108.columns[1].i32[3] = *(v4 + 28);
  v93 = v108.columns[1];
  v100 = v108.columns[0];
  v108.columns[2].i32[3] = *(v4 + 44);
  v108.columns[3] = *(v4 + 48);
  v79 = v108.columns[3];
  v86 = v108.columns[2];
  *v8.i64 = pv_simd_matrix_get_row(v108, 0);
  v9 = vmulq_f32(v8, v8);
  *v9.i8 = vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v10 = vadd_f32(*v9.i8, vdup_lane_s32(*v9.i8, 1)).u32[0];
  *(a2 + 8) = sqrtf(vaddv_f32(*v9.i8));
  *v9.i8 = vrsqrte_f32(v10);
  *v9.i8 = vmul_f32(*v9.i8, vrsqrts_f32(v10, vmul_f32(*v9.i8, *v9.i8)));
  v76 = vmulq_n_f32(v8, vmul_f32(*v9.i8, vrsqrts_f32(v10, vmul_f32(*v9.i8, *v9.i8))).f32[0]);
  *v109.columns[0].i64 = pv_simd_matrix_set_row(0, v100, v93, v86, v79, v76);
  v94 = v109.columns[1];
  v101 = v109.columns[0];
  v80 = v109.columns[3];
  v87 = v109.columns[2];
  *v11.i64 = pv_simd_matrix_get_row(v109, 1);
  v12 = vmulq_f32(v11, v76);
  *v12.i64 = vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
  *(a2 + 12) = v12.i64[0];
  *v110.columns[0].i64 = pv_simd_matrix_set_row(1, v101, v94, v87, v80, vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*v11.f32), vmulq_n_f64(vcvtq_f64_f32(*v76.f32), *v12.i64))), vsubq_f64(vcvt_hight_f64_f32(v11), vmulq_n_f64(vcvt_hight_f64_f32(v76), *v12.i64))));
  v95 = v110.columns[1];
  v102 = v110.columns[0];
  v81 = v110.columns[3];
  v88 = v110.columns[2];
  *v13.i64 = pv_simd_matrix_get_row(v110, 1);
  v14 = vmulq_f32(v13, v13);
  *v14.i8 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  v15 = vadd_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).u32[0];
  *(a2 + 9) = sqrtf(vaddv_f32(*v14.i8));
  *v14.i8 = vrsqrte_f32(v15);
  *v14.i8 = vmul_f32(*v14.i8, vrsqrts_f32(v15, vmul_f32(*v14.i8, *v14.i8)));
  *v111.columns[0].i64 = pv_simd_matrix_set_row(1, v102, v95, v88, v81, vmulq_n_f32(v13, vmul_f32(*v14.i8, vrsqrts_f32(v15, vmul_f32(*v14.i8, *v14.i8))).f32[0]));
  v96 = v111.columns[1];
  v103 = v111.columns[0];
  v82 = v111.columns[3];
  v89 = v111.columns[2];
  *(a2 + 12) = *(a2 + 12) / *(a2 + 9);
  *v16.i64 = pv_simd_matrix_get_row(v111, 0);
  v77 = v16;
  v112.columns[1] = v96;
  v112.columns[0] = v103;
  v112.columns[3] = v82;
  v112.columns[2] = v89;
  *v17.i64 = pv_simd_matrix_get_row(v112, 2);
  v18 = vmulq_f32(v77, v17);
  *v18.i64 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
  *(a2 + 13) = v18.i64[0];
  *v113.columns[0].i64 = pv_simd_matrix_set_row(2, v103, v96, v89, v82, vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*v17.f32), vmulq_n_f64(vcvtq_f64_f32(*v77.f32), *v18.i64))), vsubq_f64(vcvt_hight_f64_f32(v17), vmulq_n_f64(vcvt_hight_f64_f32(v77), *v18.i64))));
  v97 = v113.columns[1];
  v104 = v113.columns[0];
  v83 = v113.columns[3];
  v90 = v113.columns[2];
  *v19.i64 = pv_simd_matrix_get_row(v113, 1);
  v78 = v19;
  v114.columns[1] = v97;
  v114.columns[0] = v104;
  v114.columns[3] = v83;
  v114.columns[2] = v90;
  *v20.i64 = pv_simd_matrix_get_row(v114, 2);
  v21 = vmulq_f32(v78, v20);
  *v21.i64 = vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)));
  *(a2 + 14) = v21.i64[0];
  *v115.columns[0].i64 = pv_simd_matrix_set_row(2, v104, v97, v90, v83, vcvt_hight_f32_f64(vcvt_f32_f64(vsubq_f64(vcvtq_f64_f32(*v20.f32), vmulq_n_f64(vcvtq_f64_f32(*v78.f32), *v21.i64))), vsubq_f64(vcvt_hight_f64_f32(v20), vmulq_n_f64(vcvt_hight_f64_f32(v78), *v21.i64))));
  v98 = v115.columns[1];
  v105 = v115.columns[0];
  v84 = v115.columns[3];
  v91 = v115.columns[2];
  *v22.i64 = pv_simd_matrix_get_row(v115, 2);
  v23 = vmulq_f32(v22, v22);
  *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v24 = vadd_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u32[0];
  *(a2 + 10) = sqrtf(vaddv_f32(*v23.i8));
  *v23.i8 = vrsqrte_f32(v24);
  *v23.i8 = vmul_f32(*v23.i8, vrsqrts_f32(v24, vmul_f32(*v23.i8, *v23.i8)));
  *v34.columns[0].i64 = pv_simd_matrix_set_row(2, v105, v98, v91, v84, vmulq_n_f32(v22, vmul_f32(*v23.i8, vrsqrts_f32(v24, vmul_f32(*v23.i8, *v23.i8))).f32[0]));
  v25 = v34.columns[0];
  v34.columns[0].i64[0] = *(a2 + 10);
  v26 = *(a2 + 13) / *v34.columns[0].i64;
  *v34.columns[0].i64 = *(a2 + 14) / *v34.columns[0].i64;
  *(a2 + 13) = v26;
  *(a2 + 14) = v34.columns[0].i64[0];
  v27 = vextq_s8(v34.columns[2], v34.columns[2], 8uLL);
  v29 = vextq_s8(v28, v28, 0xCuLL);
  v30 = vextq_s8(v34.columns[2], v34.columns[2], 0xCuLL);
  v31 = vextq_s8(v28, v28, 8uLL);
  v85 = v28;
  v32 = vextq_s8(v28, v28, 4uLL);
  v33 = vextq_s8(v34.columns[2], v34.columns[2], 4uLL);
  v34.columns[0] = vmulq_f32(v25, vaddq_f32(vmulq_f32(vextq_s8(v34.columns[1], v34.columns[1], 0xCuLL), vsubq_f32(vmulq_f32(v33, v31), vmulq_f32(v27, v32))), vaddq_f32(vmulq_f32(vextq_s8(v34.columns[1], v34.columns[1], 4uLL), vsubq_f32(vmulq_f32(v27, v29), vmulq_f32(v30, v31))), vmulq_f32(vextq_s8(v34.columns[1], v34.columns[1], 8uLL), vsubq_f32(vmulq_f32(v30, v32), vmulq_f32(v33, v29))))));
  v30.i64[0] = vextq_s8(v34.columns[0], v34.columns[0], 8uLL).u64[0];
  v99 = v34.columns[1];
  v106 = v34.columns[2];
  v92 = v25;
  if (vaddv_f32(vsub_f32(vzip1_s32(*v34.columns[0].f32, *v30.f32), vzip2_s32(*v34.columns[0].f32, *v30.f32))) < 0.0)
  {
    v35 = vnegq_f64(*(a2 + 5));
    *(a2 + 4) = vnegq_f64(*(a2 + 4));
    *(a2 + 5) = v35;
    v34.columns[0] = v25;
    *v36.i64 = pv_simd_negate(v34);
    v36.i32[3] = v92.i32[3];
    v37.i32[3] = v99.i32[3];
    v38.i32[3] = v106.i32[3];
    v92 = v36;
    v99 = v37;
    v106 = v38;
  }

  v39 = *(a2 + 5);
  v107[4] = *(a2 + 4);
  v107[5] = v39;
  v40 = *(a2 + 7);
  v107[6] = *(a2 + 6);
  v107[7] = v40;
  v41 = *(a2 + 1);
  v107[0] = *a2;
  v107[1] = v41;
  v42 = *(a2 + 3);
  v107[2] = *(a2 + 2);
  v107[3] = v42;
  result = pv_is_finite(v107);
  if (result)
  {
    v116.columns[0] = v92;
    v116.columns[1] = v99;
    v116.columns[2] = v106;
    v116.columns[3] = v85;
    *v43.i64 = pv_simd_matrix_get_rotation_matrix(v116);
    v46 = *&v45.i32[2] + (*v43.i32 + *&v44.i32[1]);
    if (v46 >= 0.0)
    {
      v53 = sqrtf(v46 + 1.0);
      v54 = v53 + v53;
      v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v53 + v53));
      v56 = vmul_f32(v55, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v55));
      v56.f32[0] = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v53 + v53), v56)).f32[0];
      v67 = vmul_n_f32(vsub_f32(*&vzip2q_s32(v44, vuzp1q_s32(v44, v45)), *&vtrn2q_s32(v45, vzip2q_s32(v45, v43))), v56.f32[0]);
      v68 = (*&v43.i32[1] - *v44.i32) * v56.f32[0];
      v57 = v54 * 0.25;
    }

    else
    {
      if (*v43.i32 < *&v44.i32[1] || *v43.i32 < *&v45.i32[2])
      {
        v48 = 1.0 - *v43.i32;
        if (*&v44.i32[1] >= *&v45.i32[2])
        {
          v70 = sqrtf(*&v44.i32[1] + (v48 - *&v45.i32[2]));
          *&v71 = v70 + v70;
          v72 = vrecpe_f32(v71);
          v73 = vmul_f32(v72, vrecps_f32(v71, v72));
          v73.f32[0] = vmul_f32(v73, vrecps_f32(v71, v73)).f32[0];
          v74.f32[0] = *&v43.i32[1] + *v44.i32;
          v74.i32[1] = v71;
          v68 = (*&v44.i32[2] + *&v45.i32[1]) * v73.f32[0];
          v57 = (*v45.i32 - *&v43.i32[2]) * v73.f32[0];
          v73.i32[1] = 0.25;
          v67 = vmul_f32(v74, v73);
          goto LABEL_17;
        }

        v49 = sqrtf(*&v45.i32[2] + (v48 - *&v44.i32[1]));
        v50 = v49 + v49;
        v51 = vrecpe_f32(COERCE_UNSIGNED_INT(v49 + v49));
        v52 = vmul_f32(v51, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v51));
        LODWORD(v62) = vmul_f32(v52, vrecps_f32(COERCE_UNSIGNED_INT(v49 + v49), v52)).u32[0];
        v67 = vmul_n_f32(vadd_f32(*&vzip2q_s32(v43, v44), *v45.i8), v62);
        v68 = v50 * 0.25;
        v69 = *&v43.i32[1] - *v44.i32;
      }

      else
      {
        v58 = sqrtf(*v43.i32 + ((1.0 - *&v44.i32[1]) - *&v45.i32[2]));
        v59.f32[0] = v58 + v58;
        v60 = vrecpe_f32(v59.u32[0]);
        v61 = vmul_f32(v60, vrecps_f32(v59.u32[0], v60));
        v59.f32[1] = *&v43.i32[1] + *v44.i32;
        v62 = vmul_f32(v61, vrecps_f32(v59.u32[0], v61)).f32[0];
        __asm { FMOV            V4.2S, #0.25 }

        _D4.f32[1] = v62;
        v67 = vmul_f32(v59, _D4);
        v68 = (*&v43.i32[2] + *v45.i32) * v62;
        v69 = *&v44.i32[2] - *&v45.i32[1];
      }

      v57 = v69 * v62;
    }

LABEL_17:
    *&v75 = v68;
    *(&v75 + 1) = v57;
    *(a2 + 2) = vcvtq_f64_f32(v67);
    *(a2 + 3) = v75;
    return 1;
  }

  return result;
}

BOOL pv_is_finite(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  result = pv_is_finite(&v6, *v6.i64, v2);
  if (result)
  {
    *&v8.vector.f64[2] = *(a1 + 48);
    v6 = *(a1 + 32);
    *v8.vector.f64 = v6;
    v7 = *&v8.vector.f64[2];
    result = pv_is_finite(v8, v6.i8);
    if (result)
    {
      v4 = *(a1 + 80);
      v6 = *(a1 + 64);
      v7 = v4;
      result = pv_is_finite(&v6, *v6.i64, v4);
      if (result)
      {
        v5 = *(a1 + 112);
        v6 = *(a1 + 96);
        v7 = v5;
        return pv_is_finite(&v6, *v6.i64, v5);
      }
    }
  }

  return result;
}

{
  v2 = *(a1 + 16);
  v6 = *a1;
  v7 = v2;
  result = pv_is_finite(&v6, *v6.i64, v2);
  if (result)
  {
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = v4;
    result = pv_is_finite(&v6, *v6.i64, v4);
    if (result)
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 64);
      v7 = v5;
      return pv_is_finite(&v6, *v6.i64, v5);
    }
  }

  return result;
}

BOOL pv_transform_info_make(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  if (fabs(*(a1 + 120)) < 0.0000001)
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 96);
  v7 = MEMORY[0x277D860A0];
  *&v140.columns[0].f64[2] = *(MEMORY[0x277D860A0] + 112);
  *v140.columns[1].f64 = *(MEMORY[0x277D860A0] + 96);
  v9 = *(a1 + 48);
  v8 = *(a1 + 64);
  v11 = *(a1 + 16);
  v10 = *(a1 + 32);
  v151 = *a1;
  v152 = v11;
  v153 = v10;
  v154 = v9;
  v155 = v8;
  v156 = v6;
  v157 = v5;
  v158 = v2;
  pv_simd_normalize(&v151, &v159);
  v12.i64[0] = v160.i64[0];
  v14.i64[0] = v162.i64[0];
  v119 = v161;
  v13 = v161;
  v126 = v159;
  v16.f64[0] = v164.f64[0];
  v133 = v163;
  v15 = v163;
  v17 = v166;
  v12.i64[1] = v7[3];
  v14.i64[1] = v7[7];
  v105 = v14;
  v112 = v12;
  *a2 = v165;
  *(a2 + 16) = v17;
  v16.f64[1] = v7[11];
  v101 = v16;
  v159 = v126;
  v160 = v12;
  v161 = v13;
  v162 = v14;
  v163 = v15;
  v164 = v16;
  v165 = *v140.columns[1].f64;
  v166 = *&v140.columns[0].f64[2];
  pv_simd_matrix_get_row(&v159, 0, v150);
  v18 = v150[0];
  v19 = v150[1];
  v20 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v18, v18), vmulq_f64(v19, v19))));
  *(a2 + 64) = v20;
  v21 = 1.0 / v20;
  *v140.columns[0].f64 = vmulq_n_f64(v18, v21);
  v151 = v126;
  v152 = v112;
  v153 = v119;
  v154 = v105;
  v155 = v133;
  v156 = v101;
  v157 = *v140.columns[1].f64;
  v158 = *&v140.columns[0].f64[2];
  *v140.columns[1].f64 = vmulq_n_f64(v19, v21);
  v148 = *v140.columns[0].f64;
  v149 = *v140.columns[1].f64;
  pv_simd_matrix_set_row(&v151, &v148, 0, &v159);
  v98 = v160;
  v102 = v159;
  *&v140.columns[0].f64[2] = v161;
  v113 = v164;
  v120 = v162;
  v127 = v165;
  v134 = v163;
  v106 = v166;
  pv_simd_matrix_get_row(&v159, 1, &v146);
  v22 = v146;
  v23 = v147;
  v24 = vaddq_f64(vmulq_f64(*v140.columns[0].f64, v146), vmulq_f64(*v140.columns[1].f64, v147));
  *&v25 = *&vaddq_f64(v24, vdupq_laneq_s64(v24, 1));
  *(a2 + 96) = vaddvq_f64(v24);
  v151 = v102;
  v152 = v98;
  v153 = *&v140.columns[0].f64[2];
  v154 = v120;
  v155 = v134;
  v156 = v113;
  v157 = v127;
  v158 = v106;
  v148 = vsubq_f64(v22, vmulq_n_f64(*v140.columns[0].f64, v25));
  v149 = vsubq_f64(v23, vmulq_n_f64(*v140.columns[1].f64, v25));
  pv_simd_matrix_set_row(&v151, &v148, 1, &v159);
  *&v140.columns[0].f64[2] = v161;
  *v140.columns[1].f64 = v159;
  v121 = v162;
  v128 = v160;
  v135 = v165;
  *v140.columns[0].f64 = v163;
  v107 = v166;
  v114 = v164;
  pv_simd_matrix_get_row(&v159, 1, v145);
  v26 = v145[0];
  v27 = v145[1];
  v28 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v26, v26), vmulq_f64(v27, v27))));
  *(a2 + 72) = v28;
  v29 = 1.0 / v28;
  v151 = *v140.columns[1].f64;
  v152 = v128;
  v153 = *&v140.columns[0].f64[2];
  v154 = v121;
  v155 = *v140.columns[0].f64;
  v156 = v114;
  v157 = v135;
  v158 = v107;
  v148 = vmulq_n_f64(v26, v29);
  v149 = vmulq_n_f64(v27, v29);
  pv_simd_matrix_set_row(&v151, &v148, 1, &v159);
  v108 = v160;
  v30 = v160;
  v115 = v159;
  *&v140.columns[0].f64[2] = v163;
  v31 = v163;
  *v140.columns[1].f64 = v161;
  v129 = v164;
  v136 = v162;
  *v140.columns[0].f64 = v165;
  v32 = v165;
  v122 = v166;
  *(a2 + 96) = *(a2 + 96) / *(a2 + 72);
  v159 = v115;
  v160 = v30;
  v161 = *v140.columns[1].f64;
  v162 = v136;
  v163 = v31;
  v164 = v129;
  v165 = v32;
  v166 = v122;
  pv_simd_matrix_get_row(&v159, 0, v144);
  v99 = v144[1];
  v103 = v144[0];
  v159 = v115;
  v160 = v108;
  v161 = *v140.columns[1].f64;
  v162 = v136;
  v163 = *&v140.columns[0].f64[2];
  v164 = v129;
  v165 = *v140.columns[0].f64;
  v166 = v122;
  pv_simd_matrix_get_row(&v159, 2, &v142);
  v33 = v142;
  v34 = v143;
  v35 = vaddq_f64(vmulq_f64(v103, v142), vmulq_f64(v99, v143));
  *&v36 = *&vaddq_f64(v35, vdupq_laneq_s64(v35, 1));
  *(a2 + 104) = vaddvq_f64(v35);
  v151 = v115;
  v152 = v108;
  v153 = *v140.columns[1].f64;
  v154 = v136;
  v155 = *&v140.columns[0].f64[2];
  v156 = v129;
  v157 = *v140.columns[0].f64;
  v158 = v122;
  v148 = vsubq_f64(v33, vmulq_n_f64(v103, v36));
  v149 = vsubq_f64(v34, vmulq_n_f64(v99, v36));
  pv_simd_matrix_set_row(&v151, &v148, 2, &v159);
  v109 = v160;
  v116 = v159;
  *&v140.columns[0].f64[2] = v163;
  *v140.columns[1].f64 = v161;
  v130 = v164;
  v137 = v162;
  *v140.columns[0].f64 = v165;
  v123 = v166;
  pv_simd_matrix_get_row(&v159, 1, &v140.columns[3].f64[2]);
  v100 = v141;
  v104 = *&v140.columns[3].f64[2];
  v159 = v116;
  v160 = v109;
  v161 = *v140.columns[1].f64;
  v162 = v137;
  v163 = *&v140.columns[0].f64[2];
  v164 = v130;
  v165 = *v140.columns[0].f64;
  v166 = v123;
  pv_simd_matrix_get_row(&v159, 2, &v140.columns[2].f64[2]);
  v37 = *&v140.columns[2].f64[2];
  v38 = *v140.columns[3].f64;
  v39 = vaddq_f64(vmulq_f64(v104, *&v140.columns[2].f64[2]), vmulq_f64(v100, *v140.columns[3].f64));
  *&v40 = *&vaddq_f64(v39, vdupq_laneq_s64(v39, 1));
  *(a2 + 112) = vaddvq_f64(v39);
  v151 = v116;
  v152 = v109;
  v153 = *v140.columns[1].f64;
  v154 = v137;
  v155 = *&v140.columns[0].f64[2];
  v156 = v130;
  v157 = *v140.columns[0].f64;
  v158 = v123;
  v148 = vsubq_f64(v37, vmulq_n_f64(v104, v40));
  v149 = vsubq_f64(v38, vmulq_n_f64(v100, v40));
  pv_simd_matrix_set_row(&v151, &v148, 2, &v159);
  *&v140.columns[0].f64[2] = v161;
  *v140.columns[1].f64 = v159;
  v124 = v162;
  v131 = v160;
  v138 = v165;
  *v140.columns[0].f64 = v163;
  v110 = v166;
  v117 = v164;
  pv_simd_matrix_get_row(&v159, 2, &v140.columns[1].f64[2]);
  v41 = *&v140.columns[1].f64[2];
  v42 = *v140.columns[2].f64;
  v43 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v41, v41), vmulq_f64(v42, v42))));
  *(a2 + 80) = v43;
  v44 = 1.0 / v43;
  v151 = *v140.columns[1].f64;
  v152 = v131;
  v153 = *&v140.columns[0].f64[2];
  v154 = v124;
  v155 = *v140.columns[0].f64;
  v156 = v117;
  v157 = v138;
  v158 = v110;
  v148 = vmulq_n_f64(v41, v44);
  v149 = vmulq_n_f64(v42, v44);
  pv_simd_matrix_set_row(&v151, &v148, 2, &v159);
  v46 = v159;
  v45 = v160;
  v48 = v161;
  v47 = v162;
  v50 = v163;
  v49 = v164;
  v51 = v165;
  v52 = v166;
  v53 = *(a2 + 80);
  v54 = *(a2 + 104) / v53;
  v55 = *(a2 + 112) / v53;
  *(a2 + 104) = v54;
  *(a2 + 112) = v55;
  v56 = vextq_s8(v52, v51, 8uLL);
  v57 = vextq_s8(v51, v52, 8uLL);
  v58 = vextq_s8(v49, v50, 8uLL);
  v59 = vextq_s8(v50, v49, 8uLL);
  v60 = vextq_s8(v48, v47, 8uLL);
  v61 = vextq_s8(v47, v48, 8uLL);
  v62 = vmulq_f64(v58, v57);
  v63 = vmulq_f64(v59, v56);
  v64 = vaddq_f64(vmulq_f64(v60, vsubq_f64(vmulq_f64(v49, v56), vmulq_f64(v58, v52))), vmulq_f64(v47, vsubq_f64(v62, v63)));
  v132 = v52;
  v139 = v51;
  v65 = vmulq_f64(v45, vaddq_f64(vmulq_f64(v60, vsubq_f64(vmulq_f64(v58, v51), vmulq_f64(v50, v56))), vaddq_f64(vmulq_f64(v61, vsubq_f64(vmulq_f64(v50, v57), vmulq_f64(v59, v51))), vmulq_f64(v48, vsubq_f64(v63, v62)))));
  v66 = vmulq_f64(v46, vaddq_f64(vmulq_f64(v61, vsubq_f64(vmulq_f64(v59, v52), vmulq_f64(v49, v57))), v64));
  *&v140.columns[0].f64[2] = v45;
  *v140.columns[1].f64 = v49;
  *v140.columns[0].f64 = v47;
  if (vaddvq_f64(vsubq_f64(vzip1q_s64(v66, v65), vzip2q_s64(v66, v65))) >= 0.0)
  {
    v111 = v50;
    v118 = v48;
    v125 = v46;
  }

  else
  {
    v67 = vnegq_f64(*(a2 + 80));
    *(a2 + 64) = vnegq_f64(*(a2 + 64));
    *(a2 + 80) = v67;
    v151 = v46;
    v152 = v45;
    v153 = v48;
    v154 = v47;
    v155 = v50;
    v156 = v49;
    pv_simd_negate(&v151, &v159);
    *&v68 = v160.i64[0];
    v125 = v159;
    *&v69 = v162.i64[0];
    v118 = v161;
    *(&v68 + 1) = *&v140.columns[0].f64[3];
    *(&v69 + 1) = *&v140.columns[0].f64[1];
    *&v70 = v164.f64[0];
    v111 = v163;
    *(&v70 + 1) = *&v140.columns[1].f64[1];
    *v140.columns[0].f64 = v69;
    *&v140.columns[0].f64[2] = v68;
    *v140.columns[1].f64 = v70;
  }

  v71 = *(a2 + 80);
  v163 = *(a2 + 64);
  v164 = v71;
  v72 = *(a2 + 112);
  v165 = *(a2 + 96);
  v166 = v72;
  v73 = *(a2 + 16);
  v159 = *a2;
  v160 = v73;
  v74 = *(a2 + 48);
  v161 = *(a2 + 32);
  v162 = v74;
  result = pv_is_finite(&v159);
  if (result)
  {
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v159 = v125;
    v160 = *&v140.columns[0].f64[2];
    v161 = v118;
    v162 = *v140.columns[0].f64;
    v163 = v111;
    v164 = *v140.columns[1].f64;
    v165 = v139;
    v166 = v132;
    pv_simd_matrix_get_rotation_matrix(&v159, &v151);
    v75 = *v151.i64 + v153.f64[1] + v156.f64[0];
    if (v75 >= 0.0)
    {
      v86 = sqrt(v75 + 1.0);
      v87 = v86 + v86;
      v88.f64[0] = 1.0 / v87;
      v83 = vmulq_n_f64(vsubq_f64(vzip1q_s64(v154, v155), vextq_s8(v155, v152, 8uLL)), 1.0 / v87);
      v88.f64[1] = v87;
      __asm { FMOV            V1.2D, #0.25 }

      _Q1.f64[0] = *&v151.i64[1] - v153.f64[0];
      v85 = vmulq_f64(v88, _Q1);
    }

    else if (*v151.i64 < v153.f64[1] || *v151.i64 < v156.f64[0])
    {
      v90 = 1.0 - *v151.i64;
      if (v153.f64[1] >= v156.f64[0])
      {
        v94 = sqrt(v153.f64[1] + v90 - v156.f64[0]);
        v95 = v94 + v94;
        v96.f64[0] = 1.0 / v95;
        v85 = vmulq_n_f64(vextq_s8(vaddq_f64(v155, vdupq_lane_s64(v154.i64[0], 0)), vsubq_f64(v155, v152), 8uLL), 1.0 / v95);
        v96.f64[1] = v95;
        __asm { FMOV            V1.2D, #0.25 }

        _Q1.f64[0] = *&v151.i64[1] + v153.f64[0];
        v83 = vmulq_f64(v96, _Q1);
      }

      else
      {
        v91 = sqrt(v90 - v153.f64[1] + v156.f64[0]);
        v92.f64[0] = v91 + v91;
        v83 = vmulq_n_f64(vaddq_f64(vzip1q_s64(v152, v154), v155), 1.0 / v92.f64[0]);
        v92.f64[1] = *&v151.i64[1] - v153.f64[0];
        __asm { FMOV            V0.2D, #0.25 }

        _Q0.f64[1] = 1.0 / v92.f64[0];
        v85 = vmulq_f64(v92, _Q0);
      }
    }

    else
    {
      v76 = sqrt(*v151.i64 + 1.0 - v153.f64[1] - v156.f64[0]);
      v77.f64[0] = v76 + v76;
      v77.f64[1] = *&v151.i64[1] + v153.f64[0];
      __asm { FMOV            V2.2D, #0.25 }

      _Q2.f64[1] = 1.0 / v77.f64[0];
      v83 = vmulq_f64(v77, _Q2);
      *&v84.f64[0] = *&vaddq_f64(v152, v155);
      v84.f64[1] = vsubq_f64(vdupq_lane_s64(*&v154, 0), *&v155).f64[1];
      v85 = vmulq_n_f64(v84, 1.0 / v77.f64[0]);
    }

    *(a2 + 32) = v83;
    *(a2 + 48) = v85;
    return 1;
  }

  return result;
}