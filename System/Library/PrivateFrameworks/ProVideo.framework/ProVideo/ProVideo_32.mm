uint64_t HGColorGamma::m_Get2vuy_XYXZExpandNode(HGColorGamma *this)
{
  result = *(this + 60);
  if (!result)
  {
    v2 = HGObject::operator new(0x1A0uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    HgcColorGamma_2vuy_xyxz_expand::HgcColorGamma_2vuy_xyxz_expand(v2);
  }

  return result;
}

uint64_t HGColorGamma::m_Getv210_YXZXExpandNode(HGColorGamma *this, HGRenderer *a2)
{
  result = *(this + 62);
  if (!result)
  {
    v3 = HGObject::operator new(0x1A0uLL);
    HgcColorGamma_v210_yxzx_rgba_expand::HgcColorGamma_v210_yxzx_rgba_expand(v3);
  }

  return result;
}

uint64_t HGColorGamma::m_Getv216_YXZXExpandNode(HGColorGamma *this)
{
  result = *(this + 61);
  if (!result)
  {
    v2 = HGObject::operator new(0x1A0uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    HgcColorGamma_v216_yxzx_expand::HgcColorGamma_v216_yxzx_expand(v2);
  }

  return result;
}

HGGamma *HGColorGamma::m_GetGammaUniformNode(HGColorGamma *this)
{
  result = *(this + 55);
  if (!result)
  {
    v3 = this;
    v4 = HGObject::operator new(0x1B0uLL);
    HGGamma::HGGamma(v4);
    result = v4;
    *(v3 + 55) = v4;
  }

  return result;
}

HGGammaMC *HGColorGamma::m_GetGammaMCNode(HGColorGamma *this)
{
  result = *(this + 56);
  if (!result)
  {
    v3 = this;
    v4 = HGObject::operator new(0x1C0uLL);
    HGGammaMC::HGGammaMC(v4);
    result = v4;
    *(v3 + 56) = v4;
  }

  return result;
}

HgcToneParamCurve1AntiSymmetric *HGColorGamma::m_GetToneParamCurve1(HGColorGamma *this)
{
  if (*(this + 1175) == 1)
  {
    result = *(this + 86);
    if (!result)
    {
      v4 = this;
      v5 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(v5);
      result = v5;
      *(v4 + 86) = v5;
    }
  }

  else
  {
    result = *(this + 82);
    if (!result)
    {
      v3 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve1::HgcToneParamCurve1(v3);
    }
  }

  return result;
}

HgcToneParamCurve2AntiSymmetric *HGColorGamma::m_GetToneParamCurve2(HGColorGamma *this)
{
  if (*(this + 1175) == 1)
  {
    result = *(this + 87);
    if (!result)
    {
      v4 = this;
      v5 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(v5);
      result = v5;
      *(v4 + 87) = v5;
    }
  }

  else
  {
    result = *(this + 83);
    if (!result)
    {
      v3 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve2::HgcToneParamCurve2(v3);
    }
  }

  return result;
}

uint64_t HGColorGamma::m_GetToneParamCurve3(HGColorGamma *this)
{
  if (*(this + 1175) == 1)
  {
    result = *(this + 88);
    if (!result)
    {
      v3 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(v3);
    }
  }

  else
  {
    result = *(this + 84);
    if (!result)
    {
      v2 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve3::HgcToneParamCurve3(v2);
    }
  }

  return result;
}

HgcToneParamCurve4AntiSymmetric *HGColorGamma::m_GetToneParamCurve4(HGColorGamma *this)
{
  if (*(this + 1175) == 1)
  {
    result = *(this + 89);
    if (!result)
    {
      v4 = this;
      v5 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(v5);
      result = v5;
      *(v4 + 89) = v5;
    }
  }

  else
  {
    result = *(this + 85);
    if (!result)
    {
      v3 = HGObject::operator new(0x1A0uLL);
      HgcToneParamCurve4::HgcToneParamCurve4(v3);
    }
  }

  return result;
}

uint64_t HGColorGamma::m_GetGammaFittedNode(HGColorGamma *this)
{
  result = *(this + 58);
  if (!result)
  {
    v2 = HGObject::operator new(0x1E0uLL);
    HGToneCurve::HGToneCurve(v2);
  }

  return result;
}

HGPQ::OETF *HGColorGamma::m_GetHDRFunctionNode(uint64_t a1, int a2)
{
  if (*(a1 + 648))
  {
    return *(a1 + 648);
  }

  if (a2 <= 13)
  {
    if (a2 > 11)
    {
      v4 = a1;
      if (a2 == 12)
      {
        v5 = HGObject::operator new(0x1B0uLL);
        HGPQ::OETF::OETF(v5, 1, 100.0);
      }

      else
      {
        v5 = HGObject::operator new(0x1B0uLL);
        HGPQ::InverseOETF::InverseOETF(v5, 1, 100.0);
      }
    }

    else if (a2 == 10)
    {
      v4 = a1;
      v5 = HGObject::operator new(0x1B0uLL);
      HGHLG::OETF::OETF(v5);
    }

    else
    {
      if (a2 != 11)
      {
        return *(a1 + 648);
      }

      v4 = a1;
      v5 = HGObject::operator new(0x1B0uLL);
      HGHLG::InverseOETF::InverseOETF(v5);
    }
  }

  else
  {
    if (a2 <= 15)
    {
      if (a2 != 14)
      {
        v6 = HGObject::operator new(0x1B0uLL);
        HGPQ::InverseEOTF::InverseEOTF(v6, 100.0);
      }

      v7 = HGObject::operator new(0x1B0uLL);
      HGPQ::EOTF::EOTF(v7, 100.0);
    }

    switch(a2)
    {
      case 16:
        v4 = a1;
        v5 = HGObject::operator new(0x1B0uLL);
        HGACEScct::Encode::Encode(v5);
        break;
      case 17:
        v4 = a1;
        v5 = HGObject::operator new(0x1B0uLL);
        HGACEScct::Decode::Decode(v5);
        break;
      case 18:
        v3 = HGObject::operator new(0x1A0uLL);
        HGSony709_800_MLUT::HGSony709_800_MLUT(v3);
      default:
        return *(a1 + 648);
    }
  }

  *(v4 + 648) = v5;
  return v5;
}

uint64_t HGColorGamma::m_GetUnpremultiplyNode(HGColorGamma *this)
{
  if (!*(this + 73))
  {
    v2 = *(this + 257);
    if (v2 <= 12)
    {
      if (v2 == 5 || v2 == 11)
      {
LABEL_10:
        v3 = HGObject::operator new(0x1A0uLL);
        HgcUnpremultiplySanitized::HgcUnpremultiplySanitized(v3);
      }
    }

    else if ((v2 - 13) < 2 || v2 == 17)
    {
      goto LABEL_10;
    }

    v4 = HGObject::operator new(0x1A0uLL);
    HgcUnpremultiply::HgcUnpremultiply(v4);
  }

  return *(this + 73);
}

uint64_t HGColorGamma::m_GetPixelFormatConversion_kV4B10Bit_BE_OutputNode(HGColorGamma *this)
{
  result = *(this + 71);
  if (!result)
  {
    v2 = HGObject::operator new(0x1A0uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    HgcPixelFormatConversion_kV4B10Bit_BE_output::HgcPixelFormatConversion_kV4B10Bit_BE_output(v2);
  }

  return result;
}

uint64_t HGColorGamma::m_GetPixelFormatConversion_kV4S_BE_WXYZ_OutputNode(HGColorGamma *this)
{
  result = *(this + 70);
  if (!result)
  {
    v2 = HGObject::operator new(0x1A0uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    HgcPixelFormatConversion_kV4S_BE_WXYZ_output::HgcPixelFormatConversion_kV4S_BE_WXYZ_output(v2);
  }

  return result;
}

uint64_t HGColorGamma::m_GetPixelFormatConversion_kV4B_WXYZ_OutputNode(HGColorGamma *this)
{
  result = *(this + 63);
  if (!result)
  {
    v2 = HGObject::operator new(0x200uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 30) = 0u;
    *(v2 + 31) = 0u;
    HgcPixelFormatConversion_kV4B_WXYZ_output::HgcPixelFormatConversion_kV4B_WXYZ_output(v2);
  }

  return result;
}

uint64_t HGColorGamma::m_GetPixelFormatConversion_kV4S_WXYZ_OutputNode(HGColorGamma *this)
{
  result = *(this + 64);
  if (!result)
  {
    v2 = HGObject::operator new(0x200uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 30) = 0u;
    *(v2 + 31) = 0u;
    HgcPixelFormatConversion_kV4S_WXYZ_output::HgcPixelFormatConversion_kV4S_WXYZ_output(v2);
  }

  return result;
}

uint64_t HGColorGamma::m_GetPixelFormatConversion_kV4F_WXYZ_OutputNode(HGColorGamma *this)
{
  result = *(this + 65);
  if (!result)
  {
    v2 = HGObject::operator new(0x200uLL);
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 30) = 0u;
    *(v2 + 31) = 0u;
    HgcPixelFormatConversion_kV4F_WXYZ_output::HgcPixelFormatConversion_kV4F_WXYZ_output(v2);
  }

  return result;
}

_OWORD *HGColorGamma::LoadMacroNodeParams(_OWORD *this)
{
  v1 = this;
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(this + 56);
  v3 = *(this + 57);
  v4 = *(this + 58);
  v5 = *(this + 59);
  v6 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(v3, xmmword_2603429C0)), vceqq_f32(v2, xmmword_2603429B0)), vceqq_f32(v4, xmmword_2603429D0)), vceqq_f32(v5, xmmword_2603427D0));
  *v6.i8 = vpmin_s32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vpmin_s32(*v6.i8, *v6.i8).u32[0])
  {
    v7 = *(this + 67);
    v22 = vmulq_f32(v2, v7);
    v23 = vmulq_f32(v7, v3);
    v24 = vmulq_f32(v7, v4);
    v25 = vmulq_f32(v7, v5);
    v8 = *(this + 53);
    if (!v8)
    {
      v9 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v9);
    }

    this = HGColorMatrix::LoadMatrix(v8, &v22, 1);
  }

  v11 = *(v1 + 60);
  v10 = *(v1 + 61);
  v13 = *(v1 + 62);
  v12 = *(v1 + 63);
  v14 = vornq_s8(vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(v10, xmmword_2603429C0)), vceqq_f32(v11, xmmword_2603429B0)), vceqq_f32(v13, xmmword_2603429D0)), vceqq_f32(v12, xmmword_2603427D0));
  *v14.i8 = vpmin_s32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  if (vpmin_s32(*v14.i8, *v14.i8).u32[0])
  {
    v15 = *(v1 + 68);
    *v16.f32 = vdup_lane_s32(*v15.i8, 0);
    *&v16.u32[2] = vqtbl1_s8(v15, 0xF0E0D0C03020100);
    v17 = vmulq_f32(v11, v16);
    *v16.f32 = vdup_lane_s32(*v15.i8, 1);
    *&v16.u32[2] = vqtbl1_s8(v15, 0xF0E0D0C07060504);
    v22 = v17;
    v23 = vmulq_f32(v10, v16);
    *v18.f32 = vqtbl1_s8(v15, 0xB0A09080B0A0908);
    *&v18.u32[2] = vqtbl1_s8(v15, 0xF0E0D0C0B0A0908);
    v19 = vmulq_f32(v13, v18);
    *v18.f32 = vqtbl1_s8(v15, 0xF0E0D0C0F0E0D0CLL);
    v18.i64[1] = v18.i64[0];
    v24 = v19;
    v25 = vmulq_f32(v12, v18);
    v20 = *(v1 + 54);
    if (!v20)
    {
      v21 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v21);
    }

    return HGColorMatrix::LoadMatrix(v20, &v22, 1);
  }

  return this;
}

uint64_t HGColorGamma::PrepareOutputNode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 1036) == 1)
  {
    *(result + 1040) = a3;
    *(result + 1048) = a4;
  }

  return result;
}

HGNode *HGColorGamma::SetFallbackMode(HGNode *this, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(this, a2, a3);
  *(this + 745) = 1;
  *(this + 1024) = v3;
  return result;
}

HGNode *HGColorGamma::SetToneQualityMode(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 1168) = v3;
  return result;
}

HGNode *HGColorGamma::SetInOut422FilterMode(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 1036) = v3;
  return result;
}

double HGColorGamma::SetInputPixelFormat(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 1060) = v3;

  *&result = HGColorGamma::SetYCbCrBiasAndScale(a1, v5, v6).n128_u64[0];
  return result;
}

__n128 HGColorGamma::SetYCbCrBiasAndScale(HGNode *this, uint64_t a2, char *a3)
{
  _Q0 = xmmword_2603916A0;
  v5 = xmmword_2603916B0;
  switch(*(this + 265))
  {
    case 0:
      __asm { FMOV            V0.4S, #1.0; jumptable 000000025FC4DECC case 0 }

      v5 = 0uLL;
      goto LABEL_3;
    case 1:
    case 5:
    case 8:
    case 0xA:
    case 0x10:
    case 0x17:
      goto LABEL_3;
    case 2:
      _Q0 = xmmword_260391700;
      v5 = xmmword_260391710;
      goto LABEL_3;
    case 3:
    case 6:
    case 0xC:
    case 0xE:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x19:
    case 0x1A:
      _Q0 = xmmword_2603916E0;
      v5 = xmmword_2603916F0;
      goto LABEL_3;
    case 4:
    case 7:
      v5 = xmmword_2603916D0;
      goto LABEL_3;
    case 9:
    case 0xB:
      v5 = xmmword_2603916D0;
      __asm { FMOV            V0.4S, #1.0 }

      goto LABEL_3;
    case 0xD:
    case 0xF:
    case 0x18:
      v5 = xmmword_2603916C0;
      __asm { FMOV            V0.4S, #1.0 }

LABEL_3:
      v16 = v5;
      v18 = _Q0;
      HGNode::ClearBits(this, a2, a3);
      *(this + 745) = 1;
      *(this + 69) = v16;
      HGNode::ClearBits(this, v6, v7);
      *(this + 745) = 1;
      *(this + 67) = v18;
      break;
    default:
      break;
  }

  result = xmmword_260391720;
  v9 = xmmword_260391730;
  switch(*(this + 266))
  {
    case 0:
      __asm { FMOV            V0.4S, #1.0; jumptable 000000025FC4DF48 case 0 }

      v9 = 0uLL;
      goto LABEL_6;
    case 1:
    case 5:
    case 8:
    case 0xA:
    case 0x10:
    case 0x17:
      goto LABEL_6;
    case 2:
      result = xmmword_260391780;
      v9 = xmmword_260391790;
      goto LABEL_6;
    case 3:
    case 6:
    case 0xC:
    case 0xE:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x19:
    case 0x1A:
      result = xmmword_260391760;
      v9 = xmmword_260391770;
      goto LABEL_6;
    case 4:
    case 7:
      v9 = xmmword_260391750;
      goto LABEL_6;
    case 9:
    case 0xB:
      v9 = xmmword_260391750;
      __asm { FMOV            V0.4S, #1.0 }

      goto LABEL_6;
    case 0xD:
    case 0xF:
    case 0x18:
      v9 = xmmword_260391740;
      __asm { FMOV            V0.4S, #1.0 }

LABEL_6:
      v17 = v9;
      v19 = result;
      HGNode::ClearBits(this, a2, a3);
      *(this + 745) = 1;
      *(this + 70) = v17;
      HGNode::ClearBits(this, v10, v11);
      *(this + 745) = 1;
      result = v19;
      *(this + 68) = v19;
      break;
    default:
      return result;
  }

  return result;
}

double HGColorGamma::SetOutputPixelFormat(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 1056) = v4;
  *(a1 + 1064) = v3;

  *&result = HGColorGamma::SetYCbCrBiasAndScale(a1, v6, v7).n128_u64[0];
  return result;
}

_BYTE *HGColorGamma::SetPremultiplyState(_BYTE *this, char a2, char a3)
{
  this[745] = 1;
  this[1172] = a2;
  this[1173] = a3;
  return this;
}

HGNode *HGColorGamma::Set1DLutScaleAndOffset(HGNode *this, float a2, float a3, uint64_t a4, char *a5)
{
  result = HGNode::ClearBits(this, a4, a5);
  *(this + 745) = 1;
  *(this + 289) = a2;
  *(this + 290) = a3;
  return result;
}

HGNode *HGColorGamma::SetARRILogCExposureIndex(HGNode *this, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(this, a2, a3);
  *(this + 745) = 1;
  *(this + 291) = v3;
  return result;
}

__n128 HGColorGamma::LoadMatrix1(uint64_t a1, uint64_t a2, char *a3)
{
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 896) = *a2;
  *(a1 + 912) = *(a2 + 16);
  *(a1 + 928) = *(a2 + 32);
  result = *(a2 + 48);
  *(a1 + 944) = result;
  return result;
}

__n128 HGColorGamma::LoadMatrix2(uint64_t a1, uint64_t a2, char *a3)
{
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  *(a1 + 960) = *a2;
  *(a1 + 976) = *(a2 + 16);
  *(a1 + 992) = *(a2 + 32);
  result = *(a2 + 48);
  *(a1 + 1008) = result;
  return result;
}

HGNode *HGColorGamma::SetGammaFunction(uint64_t a1, uint64_t a2, char *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8, float32x4_t a9, float32x4_t a10)
{
  v10 = a2;
  result = HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  if (v10 <= 2)
  {
    if (v10 == 1)
    {
      v16 = a4;
      v15 = a6;
      v14 = a5;
      v13 = a7;
      v25 = vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(vmulq_f32(a5, xmmword_260344BA0), xmmword_260344BA0)), vceqq_f32(vmulq_f32(a4, xmmword_260344BA0), xmmword_260344BA0)), vceqzq_f32(vmulq_f32(a6, xmmword_260344BA0)));
      *v25.i8 = vpmin_s32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
      if (vpmin_s32(*v25.i8, *v25.i8).u32[0])
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    v14 = a5;
    v13 = a7;
    v16 = a4;
    v15 = a6;
    if (v10 != 2)
    {
      goto LABEL_12;
    }

    v17 = vceqzq_f32(vmulq_f32(a6, xmmword_260344BA0));
    v18 = vceqzq_f32(vmulq_f32(a7, xmmword_260344BA0));
    v19 = vornq_s8(vmvnq_s8(vceqq_f32(vmulq_f32(a5, xmmword_260344BA0), xmmword_260344BA0)), vceqq_f32(vmulq_f32(a4, xmmword_260344BA0), xmmword_260344BA0));
LABEL_11:
    v20 = vornq_s8(vornq_s8(v19, v17), v18);
    *v20.i8 = vpmin_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    if (vpmin_s32(*v20.i8, *v20.i8).u32[0])
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (v10 == 3)
  {
    v16 = a4;
    v15 = a6;
    v14 = a5;
    v13 = a7;
    v17 = vceqzq_f32(vmulq_f32(a6, xmmword_260344BA0));
    v18 = vceqq_f32(vmulq_f32(a7, xmmword_260344BA0), xmmword_260344BA0);
    v19 = vornq_s8(vmvnq_s8(vceqq_f32(vmulq_f32(a5, xmmword_260344BA0), xmmword_260344BA0)), vceqq_f32(vmulq_f32(a4, xmmword_260344BA0), xmmword_260344BA0));
    goto LABEL_11;
  }

  v14 = a5;
  v13 = a7;
  v16 = a4;
  v15 = a6;
  if (v10 == 4)
  {
    v17 = vceqzq_f32(vmulq_f32(vaddq_f32(a6, a9), xmmword_260344BA0));
    v18 = vceqzq_f32(vmulq_f32(a10, xmmword_260344BA0));
    v19 = vornq_s8(vornq_s8(vmvnq_s8(vceqq_f32(vmulq_f32(a5, xmmword_260344BA0), xmmword_260344BA0)), vceqq_f32(vmulq_f32(a4, xmmword_260344BA0), xmmword_260344BA0)), vceqq_f32(vmulq_f32(a7, xmmword_260344BA0), xmmword_260344BA0));
    goto LABEL_11;
  }

  if (v10 != 5)
  {
LABEL_12:
    *(a1 + 1028) = v10;
    *(a1 + 1032) = 0;
    *(a1 + 768) = v16;
    *(a1 + 784) = v14;
    *(a1 + 800) = v15;
    *(a1 + 816) = v13;
    v22 = a8;
    v21 = a9;
    *(a1 + 832) = a8;
    *(a1 + 848) = a9;
    v23 = a10;
    *(a1 + 864) = a10;
    v24 = vceq_f32(*v16.i8, *&vextq_s8(v16, v16, 4uLL));
    if (vand_s8(v24, vdup_lane_s32(v24, 1)).u32[0])
    {
      goto LABEL_16;
    }

LABEL_24:
    *(a1 + 880) = 0;
    return result;
  }

LABEL_15:
  *(a1 + 1028) = 0;
  __asm { FMOV            V17.4S, #1.0 }

  v14 = 0uLL;
  *(a1 + 768) = _Q17;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  v23.i64[0] = 0;
  v23.i32[2] = 0;
  v21 = 0uLL;
  v22 = 0uLL;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  v13 = 0uLL;
  v15 = 0uLL;
  *(a1 + 864) = 0u;
  v31 = vceq_f32(*_Q17.i8, *&vextq_s8(_Q17, _Q17, 4uLL));
  if ((vand_s8(v31, vdup_lane_s32(v31, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  v32 = vceq_f32(*v14.i8, *&vextq_s8(v14, v14, 4uLL));
  if ((vand_s8(v32, vdup_lane_s32(v32, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v33 = vceq_f32(*v15.i8, *&vextq_s8(v15, v15, 4uLL));
  if ((vand_s8(v33, vdup_lane_s32(v33, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v34 = vceq_f32(*v13.i8, *&vextq_s8(v13, v13, 4uLL));
  if ((vand_s8(v34, vdup_lane_s32(v34, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v35 = vceq_f32(*v22.i8, *&vextq_s8(v22, v22, 4uLL));
  if ((vand_s8(v35, vdup_lane_s32(v35, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v36 = vceq_f32(*v21.i8, *&vextq_s8(v21, v21, 4uLL));
  if ((vand_s8(v36, vdup_lane_s32(v36, 1)).u32[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v37 = v23.f32[1] == v23.f32[2];
  if (v23.f32[0] != v23.f32[1])
  {
    v37 = 0;
  }

  *(a1 + 880) = v37;
  return result;
}

HGNode *HGColorGamma::SetDitherMode(HGNode *this, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(this, a2, a3);
  *(this + 745) = 1;
  *(this + 1025) = v3;
  return result;
}

HGNode *HGColorGamma::SetFixedPointPrecisionMode(HGNode *this, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(this, a2, a3);
  *(this + 745) = 1;
  *(this + 1026) = v3;
  return result;
}

double HGColorGamma::SetConversion(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  v10 = (&HGColorGamma::YCbCrToRGB + 64 * v8);
  HGNode::ClearBits(a1, v11, v12);
  *(a1 + 745) = 1;
  *(a1 + 896) = *v10;
  *(a1 + 912) = v10[1];
  *(a1 + 928) = v10[2];
  *(a1 + 944) = xmmword_2603427D0;
  v15 = HGNode::ClearBits(a1, v13, v14);
  *(a1 + 745) = 1;
  *(a1 + 1028) = 5;
  *(a1 + 1032) = v7;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 768) = _Q0;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 1;
  switch(v7)
  {
    case 0:
    case 1:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGArriLogCDefaultToneCurveLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 2:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGArriLogCLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 3:
      v24 = 0.0;
      v27 = 1.0;
      v23 = 2048;
      break;
    case 4:
      v24 = HGCanonLogToneCurveLUTInfo::kMinLogGamma(v15);
      v27 = HGCanonLogToneCurveLUTInfo::kMaxLogGamma(v26);
      v23 = 0;
      break;
    case 5:
      v23 = 0;
      v24 = -0.0730593607;
      v25 = &HGCanonLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 6:
      v23 = 0;
      v24 = -0.0730593607;
      v25 = &HGCanonLog2LinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 7:
      v23 = 0;
      v24 = -0.0730593607;
      v25 = &HGCanonLog3LinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 8:
      v23 = 0;
      v24 = -0.0730593607;
      v25 = &HGSonySLog2LinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 9:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGSonySLog3LinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 10:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGPanasonicVLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 11:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGNikonNLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 12:
    case 13:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGBMDFilmLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 14:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGAppleLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 15:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGDJIDLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 16:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGFujifilmFLogLinearizationLUTInfo::kMaxLogGamma;
      goto LABEL_18;
    case 17:
      v23 = 0;
      v24 = 0.0;
      v25 = &HGFujifilmFLog2LinearizationLUTInfo::kMaxLogGamma;
LABEL_18:
      v27 = *v25;
      break;
    default:
      v23 = 0;
      v24 = 0.0;
      v27 = 0.0;
      break;
  }

  v28 = v27 - v24;
  HGNode::ClearBits(a1, v16, v17);
  *(a1 + 745) = 1;
  *(a1 + 1156) = v28;
  v29 = v24;
  *(a1 + 1160) = v29;
  if (v23)
  {
    HGNode::ClearBits(a1, v30, v31);
    *(a1 + 745) = 1;
    *(a1 + 1152) = v23;
  }

  v32 = a4 << 6;
  v33 = &HGColorGamma::logGamutRGBToRec2020RGB + v32;
  v34 = &HGColorGamma::logGamutRGBToRec709RGB + v32;
  if (a5 == 3)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  HGNode::ClearBits(a1, v30, v31);
  *(a1 + 745) = 1;
  *(a1 + 960) = *v35;
  *(a1 + 976) = v35[1];
  *(a1 + 992) = v35[2];
  *(a1 + 1008) = v35[3];

  *&result = HGColorGamma::SetYCbCrBiasAndScale(a1, v36, v37).n128_u64[0];
  return result;
}

uint64_t HGColorGamma::SetConversion(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7)
{
  v11 = a3;
  v12 = a2;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 745) = 1;
  if (a6 == 8)
  {
    if (!a7 && (v11 != 8 || !a4))
    {
      v16 = (&HGColorGamma::YCbCrToRGB + 64 * a4);
      HGNode::ClearBits(a1, v14, v15);
      *(a1 + 745) = 1;
      *(a1 + 896) = *v16;
      *(a1 + 912) = v16[1];
      *(a1 + 928) = v16[2];
      *(a1 + 944) = xmmword_2603427D0;
      if (v11 <= 15)
      {
        switch(v11)
        {
          case 1:
            _Q0 = xmmword_260391870;
            break;
          case 8:
            __asm { FMOV            V0.4S, #1.0 }

            break;
          case 13:
            HGColorGamma::SetGammaFunction(a1, 3, v18, xmmword_260391810, xmmword_260391820, xmmword_260391830, xmmword_260391840, xmmword_260391850, 0, 0);
            if (v12 != a5)
            {
              goto LABEL_55;
            }

            goto LABEL_50;
          default:
LABEL_49:
            if (v12 == a5)
            {
LABEL_50:
              HGNode::ClearBits(a1, v17, v18);
              *(a1 + 745) = 1;
LABEL_51:
              *(a1 + 960) = xmmword_2603429B0;
              *(a1 + 976) = xmmword_2603429C0;
              v31 = xmmword_2603429D0;
              goto LABEL_57;
            }

LABEL_55:
            v89 = (&HGColorGamma::XYZToRGB + 72 * a5);
            v90 = &HGColorGamma::RGBToXYZ + 72 * v12;
            v91 = v89[1];
            v92 = *(v90 + 2);
            v93 = *(v90 + 5);
            v94 = *(v90 + 8);
            v95 = v89[2];
            v96 = v89[3];
            v97 = *v89 * v92 + v91 * v93 + v95 * v94;
            v98 = v89[4];
            v99 = v89[5];
            v100 = v92 * v96 + v93 * v98 + v94 * v99;
            v101 = v89[6];
            v102 = v89[7];
            v103 = v89[8];
            v104 = v92 * v101 + v93 * v102 + v94 * v103;
            *&v97 = v97;
            *&v93 = v100;
            v105 = *(v90 + 24);
            v106 = *(v90 + 3);
            *&v107 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v90, *v89), vmulq_n_f64(v105, v91)), vmulq_n_f64(v106, v95)));
            *(&v107 + 1) = LODWORD(v97);
            v112 = v107;
            *&v107 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v90, v96), vmulq_n_f64(v105, v98)), vmulq_n_f64(v106, v99)));
            *(&v107 + 1) = LODWORD(v93);
            v109 = v107;
            *&v108 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v90, v101), vmulq_n_f64(v105, v102)), vmulq_n_f64(v106, v103)));
            *&v107 = v104;
            *(&v108 + 1) = v107;
            v117 = v108;
            HGNode::ClearBits(a1, v17, v18);
            v31 = v117;
            *(a1 + 745) = 1;
            goto LABEL_56;
        }

LABEL_54:
        HGColorGamma::SetGammaFunctionPower(a1, v17, v18, _Q0);
        if (v12 == a5)
        {
          goto LABEL_50;
        }

        goto LABEL_55;
      }

      switch(v11)
      {
        case 16:
          HGNode::ClearBits(a1, v17, v18);
          *(a1 + 745) = 1;
          v55 = (a1 + 1028);
          v56 = 13;
          break;
        case 17:
          _Q0 = xmmword_260391860;
          goto LABEL_54;
        case 18:
          HGNode::ClearBits(a1, v17, v18);
          *(a1 + 745) = 1;
          v55 = (a1 + 1028);
          v56 = 11;
          break;
        default:
          goto LABEL_49;
      }

      *v55 = v56;
      __asm { FMOV            V0.4S, #1.0 }

      *(a1 + 768) = _Q0;
      *(a1 + 784) = 0u;
      *(a1 + 800) = 0u;
      *(a1 + 816) = 0u;
      *(a1 + 832) = 0u;
      *(a1 + 848) = 0u;
      *(a1 + 864) = 0u;
      *(a1 + 880) = 1;
      goto LABEL_49;
    }

    return 0;
  }

  if (v11 == 8)
  {
    if (a4)
    {
      return 0;
    }

    if (v12 == a5)
    {
      v110 = xmmword_2603429D0;
      v113 = xmmword_2603429C0;
      v115 = xmmword_2603429B0;
    }

    else
    {
      v57 = (&HGColorGamma::XYZToRGB + 72 * a5);
      v58 = &HGColorGamma::RGBToXYZ + 72 * v12;
      v59 = v57[1];
      v60 = *(v58 + 2);
      v61 = *(v58 + 5);
      v62 = *(v58 + 8);
      v63 = v57[2];
      v64 = v57[3];
      v65 = *v57 * v60 + v59 * v61 + v63 * v62;
      v66 = v57[4];
      v67 = v57[5];
      v68 = v60 * v64 + v61 * v66 + v62 * v67;
      v69 = v57[6];
      v70 = v57[7];
      v71 = v57[8];
      v72 = v60 * v69 + v61 * v70;
      *&v65 = v65;
      *&v61 = v68;
      v73 = *(v58 + 24);
      v74 = *(v58 + 3);
      *&v75 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v58, *v57), vmulq_n_f64(v73, v59)), vmulq_n_f64(v74, v63)));
      *(&v75 + 1) = LODWORD(v65);
      v115 = v75;
      *&v75 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v58, v64), vmulq_n_f64(v73, v66)), vmulq_n_f64(v74, v67)));
      *(&v75 + 1) = LODWORD(v61);
      v113 = v75;
      *&v76 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(*v58, v69), vmulq_n_f64(v73, v70)), vmulq_n_f64(v74, v71)));
      *&v75 = v72 + v62 * v71;
      *(&v76 + 1) = v75;
      v110 = v76;
    }

    HGNode::ClearBits(a1, v14, v15);
    *(a1 + 745) = 1;
    *(a1 + 896) = v115;
    *(a1 + 912) = v113;
    *(a1 + 928) = v110;
    *(a1 + 944) = xmmword_2603427D0;
    if (a6 <= 15)
    {
      if (a6 != 1)
      {
        if (a6 == 13)
        {
          HGColorGamma::SetGammaFunction(a1, 4, v78, xmmword_2603917A0, xmmword_2603917B0, 0, xmmword_2603917C0, xmmword_2603917D0, xmmword_2603917E0, 0);
        }

        goto LABEL_43;
      }

      v85 = xmmword_260391800;
    }

    else
    {
      if (a6 == 16)
      {
        HGNode::ClearBits(a1, v77, v78);
        *(a1 + 745) = 1;
        v79 = (a1 + 1028);
        v80 = 12;
        goto LABEL_39;
      }

      if (a6 != 17)
      {
        if (a6 != 18)
        {
LABEL_43:
          v81 = (&HGColorGamma::RGBToYCbCr + 64 * a7);
          HGNode::ClearBits(a1, v77, v78);
          *(a1 + 745) = 1;
          goto LABEL_44;
        }

        HGNode::ClearBits(a1, v77, v78);
        *(a1 + 745) = 1;
        v79 = (a1 + 1028);
        v80 = 10;
LABEL_39:
        *v79 = v80;
        __asm { FMOV            V0.4S, #1.0 }

        *(a1 + 768) = _Q0;
        *(a1 + 784) = 0u;
        *(a1 + 800) = 0u;
        *(a1 + 816) = 0u;
        *(a1 + 832) = 0u;
        *(a1 + 848) = 0u;
        *(a1 + 864) = 0u;
        *(a1 + 880) = 1;
        goto LABEL_43;
      }

      v85 = xmmword_2603917F0;
    }

    HGColorGamma::SetGammaFunctionPower(a1, v77, v78, v85);
    goto LABEL_43;
  }

  result = 0;
  if (v12 == a5 && v11 == a6)
  {
    HGNode::ClearBits(a1, v14, v15);
    *(a1 + 745) = 1;
    *(a1 + 1028) = 0;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 768) = _Q0;
    *(a1 + 784) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 1;
    if (a4 == a7)
    {
      HGNode::ClearBits(a1, v20, v21);
      *(a1 + 745) = 1;
      v112 = xmmword_2603429B0;
      v109 = xmmword_2603429C0;
      *(a1 + 896) = xmmword_2603429B0;
      *(a1 + 912) = xmmword_2603429C0;
      *(a1 + 928) = xmmword_2603429D0;
      *(a1 + 944) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v27, v28);
      v31 = xmmword_2603429D0;
      *(a1 + 745) = 1;
LABEL_56:
      *(a1 + 960) = v112;
      *(a1 + 976) = v109;
      goto LABEL_57;
    }

    if (a4)
    {
      if (a7)
      {
        v32 = (&HGColorGamma::RGBToYCbCr + 64 * a7);
        v33 = (&HGColorGamma::YCbCrToRGB + 64 * a4);
        v34 = v32[2];
        v35 = v33[1];
        v36 = v33[2];
        v37 = COERCE_FLOAT(HIDWORD(v32->i64[0]));
        v38 = COERCE_FLOAT(HIDWORD(v32[1].i64[0]));
        v39 = vcvtq_f64_f32(vext_s8(*v34.i8, *&vextq_s8(v35, v35, 8uLL), 4uLL));
        v40 = vcvtq_f64_f32(vzip1_s32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
        v41 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(*v33, *v33, 8uLL), *&vextq_s8(v36, v36, 8uLL)));
        v42 = vcvtq_f64_f32(vzip1_s32(*v32->i8, *&vextq_s8(*v32, *v32, 8uLL)));
        v43 = vmulq_f64(v42, v41);
        v44 = v43.f64[0] + vmuld_lane_f64(v37, v39, 1) + v43.f64[1];
        v45 = vcvtq_f64_f32(vzip1_s32(*v32[1].i8, *&vextq_s8(v32[1], v32[1], 8uLL)));
        v46 = vmulq_f64(v45, v41);
        v47 = vmulq_f64(v40, v41);
        *&v44 = v44;
        *&v48 = v46.f64[0] + vmuld_lane_f64(v38, v39, 1) + v46.f64[1];
        v49 = vcvtq_f64_f32(*v33->i8);
        v50 = vcvtq_f64_f32(*v35.i8);
        v51 = vcvtq_f64_f32(*v36.i8);
        *&v42.f64[0] = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v49, v42.f64[0]), vmulq_n_f64(v50, v37)), vmulq_laneq_f64(v51, v42, 1)));
        *&v42.f64[1] = LODWORD(v44);
        v116 = v42;
        *&v52 = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v49, v45.f64[0]), vmulq_n_f64(v50, v38)), vmulq_laneq_f64(v51, v45, 1)));
        *(&v52 + 1) = v48;
        v114 = v52;
        *&v42.f64[0] = vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_n_f64(v49, v40.f64[0]), vmulq_n_f64(v50, v39.f64[0])), vmulq_laneq_f64(v51, v40, 1)));
        *&v52 = v47.f64[0] + vmuld_lane_f64(v39.f64[0], v39, 1) + v47.f64[1];
        *&v42.f64[1] = v52;
        v111 = v42;
        HGNode::ClearBits(a1, v20, v21);
        *(a1 + 745) = 1;
        *(a1 + 896) = v116;
        *(a1 + 912) = v114;
        *(a1 + 928) = v111;
      }

      else
      {
        v86 = (&HGColorGamma::YCbCrToRGB + 64 * a4);
        HGNode::ClearBits(a1, v20, v21);
        *(a1 + 745) = 1;
        *(a1 + 896) = *v86;
        *(a1 + 912) = v86[1];
        *(a1 + 928) = v86[2];
      }

      *(a1 + 944) = xmmword_2603427D0;
      HGNode::ClearBits(a1, v53, v54);
      *(a1 + 745) = 1;
      goto LABEL_51;
    }

    HGNode::ClearBits(a1, v20, v21);
    *(a1 + 745) = 1;
    *(a1 + 896) = xmmword_2603429B0;
    *(a1 + 912) = xmmword_2603429C0;
    *(a1 + 928) = xmmword_2603429D0;
    *(a1 + 944) = xmmword_2603427D0;
    v81 = (&HGColorGamma::RGBToYCbCr + 64 * a7);
    HGNode::ClearBits(a1, v82, v83);
    *(a1 + 745) = 1;
LABEL_44:
    *(a1 + 960) = *v81;
    *(a1 + 976) = v81[1];
    v31 = v81[2];
LABEL_57:
    *(a1 + 992) = v31;
    *(a1 + 1008) = xmmword_2603427D0;
    HGColorGamma::SetYCbCrBiasAndScale(a1, v29, v30);
    return 1;
  }

  return result;
}

uint64_t HGColorGamma::TestConversion(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (a5 == 8)
  {
    if (a6)
    {
      return 0;
    }

    return a2 != 8 || !a3;
  }

  if (a2 == 8)
  {
    return !a3;
  }

  result = 0;
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return result;
}

void HGCColorGamma_2vuy_yxzx_expand::~HGCColorGamma_2vuy_yxzx_expand(HGCColorGamma_2vuy_yxzx_expand *this)
{
  HgcColorGamma_2vuy_yxzx_expand::~HgcColorGamma_2vuy_yxzx_expand(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_2vuy_yxzx_expand::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_2vuy_yxzx_expand::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

void HGCColorGamma_2vuy_xyxz_expand::~HGCColorGamma_2vuy_xyxz_expand(HGCColorGamma_2vuy_xyxz_expand *this)
{
  HgcColorGamma_2vuy_xyxz_expand::~HgcColorGamma_2vuy_xyxz_expand(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_2vuy_xyxz_expand::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_2vuy_xyxz_expand::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

void HGCColorGamma_v210_yxzx_rgba_expand::~HGCColorGamma_v210_yxzx_rgba_expand(HGCColorGamma_v210_yxzx_rgba_expand *this)
{
  HgcColorGamma_v210_yxzx_rgba_expand::~HgcColorGamma_v210_yxzx_rgba_expand(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_v210_yxzx_rgba_expand::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_v210_yxzx_rgba_expand::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  HIDWORD(v5) = -1431655765 * a4 + 715827882;
  LODWORD(v5) = HIDWORD(v5);
  if ((v5 >> 1) < 0x2AAAAAAB)
  {
    v7 = a4;
  }

  else
  {
    v6 = a4 / 6.0;
    v7 = (floorf(v6) * 6.0);
  }

  return a4 & 0xFFFFFFFF00000000 | v7;
}

void HGCColorGamma_v216_yxzx_expand::~HGCColorGamma_v216_yxzx_expand(HGCColorGamma_v216_yxzx_expand *this)
{
  HgcColorGamma_v216_yxzx_expand::~HgcColorGamma_v216_yxzx_expand(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_v216_yxzx_expand::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_v216_yxzx_expand::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

void HGCPixelFormatConversion_kV4B_WXYZ_output::~HGCPixelFormatConversion_kV4B_WXYZ_output(HGCPixelFormatConversion_kV4B_WXYZ_output *this)
{
  HgcPixelFormatConversion_kV4B_WXYZ_output::~HgcPixelFormatConversion_kV4B_WXYZ_output(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4B_WXYZ_output::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4B_WXYZ_output::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCPixelFormatConversion_kV4S_WXYZ_output::~HGCPixelFormatConversion_kV4S_WXYZ_output(HGCPixelFormatConversion_kV4S_WXYZ_output *this)
{
  HgcPixelFormatConversion_kV4S_WXYZ_output::~HgcPixelFormatConversion_kV4S_WXYZ_output(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4S_WXYZ_output::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4S_WXYZ_output::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCPixelFormatConversion_kV4F_WXYZ_output::~HGCPixelFormatConversion_kV4F_WXYZ_output(HGCPixelFormatConversion_kV4F_WXYZ_output *this)
{
  HgcPixelFormatConversion_kV4F_WXYZ_output::~HgcPixelFormatConversion_kV4F_WXYZ_output(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4F_WXYZ_output::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4F_WXYZ_output::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCPixelFormatConversion_kV4S_BE_WXYZ_output::~HGCPixelFormatConversion_kV4S_BE_WXYZ_output(HGCPixelFormatConversion_kV4S_BE_WXYZ_output *this)
{
  HgcPixelFormatConversion_kV4S_BE_WXYZ_output::~HgcPixelFormatConversion_kV4S_BE_WXYZ_output(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4S_BE_WXYZ_output::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4S_BE_WXYZ_output::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCPixelFormatConversion_kV4B10Bit_BE_output::~HGCPixelFormatConversion_kV4B10Bit_BE_output(HGCPixelFormatConversion_kV4B10Bit_BE_output *this)
{
  HgcPixelFormatConversion_kV4B10Bit_BE_output::~HgcPixelFormatConversion_kV4B10Bit_BE_output(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4B10Bit_BE_output::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4B10Bit_BE_output::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCColorGamma_bias::~HGCColorGamma_bias(HGCColorGamma_bias *this)
{
  HgcColorGamma_bias::~HgcColorGamma_bias(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_bias::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCColorGamma_bias::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGCColorGamma_chroma_downsample_f1::~HGCColorGamma_chroma_downsample_f1(HGCColorGamma_chroma_downsample_f1 *this)
{
  HgcColorGamma_chroma_downsample_f1::~HgcColorGamma_chroma_downsample_f1(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_chroma_downsample_f1::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_chroma_downsample_f1::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return (a4 - 1) | a4 & 0xFFFFFFFF00000000;
  }
}

void HGCColorGamma_chroma_upsample_f1::~HGCColorGamma_chroma_upsample_f1(HGCColorGamma_chroma_upsample_f1 *this)
{
  HgcColorGamma_chroma_upsample_f1::~HgcColorGamma_chroma_upsample_f1(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_chroma_upsample_f1::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_chroma_upsample_f1::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return (a4 - 1) | a4 & 0xFFFFFFFF00000000;
  }
}

void HGCColorGamma_2vuy_yxzx_collapse::~HGCColorGamma_2vuy_yxzx_collapse(HGCColorGamma_2vuy_yxzx_collapse *this)
{
  HgcColorGamma_2vuy_yxzx_collapse::~HgcColorGamma_2vuy_yxzx_collapse(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_2vuy_yxzx_collapse::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_2vuy_yxzx_collapse::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

void HGCColorGamma_2vuy_xyxz_collapse::~HGCColorGamma_2vuy_xyxz_collapse(HGCColorGamma_2vuy_xyxz_collapse *this)
{
  HgcColorGamma_2vuy_xyxz_collapse::~HgcColorGamma_2vuy_xyxz_collapse(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_2vuy_xyxz_collapse::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_2vuy_xyxz_collapse::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

void HGCColorGamma_v210_yxzx_rgba_collapse::~HGCColorGamma_v210_yxzx_rgba_collapse(HGCColorGamma_v210_yxzx_rgba_collapse *this)
{
  HgcColorGamma_v210_yxzx_rgba_collapse::~HgcColorGamma_v210_yxzx_rgba_collapse(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_v210_yxzx_rgba_collapse::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_v210_yxzx_rgba_collapse::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  HIDWORD(v5) = -1431655765 * a4 + 715827882;
  LODWORD(v5) = HIDWORD(v5);
  if ((v5 >> 1) < 0x2AAAAAAB)
  {
    v7 = a4;
  }

  else
  {
    v6 = a4 / 6.0;
    v7 = (floorf(v6) * 6.0);
  }

  return a4 & 0xFFFFFFFF00000000 | v7;
}

void HGCColorGamma_v216_yxzx_collapse::~HGCColorGamma_v216_yxzx_collapse(HGCColorGamma_v216_yxzx_collapse *this)
{
  HgcColorGamma_v216_yxzx_collapse::~HgcColorGamma_v216_yxzx_collapse(this);

  HGObject::operator delete(v1);
}

uint64_t HGCColorGamma_v216_yxzx_collapse::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

unint64_t HGCColorGamma_v216_yxzx_collapse::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4 & 0xFFFFFFFFFFFFFFFELL;
  }
}

double HGColorGamma::SetGammaFunctionPower(uint64_t a1, uint64_t a2, char *a3, int8x16_t a4)
{
  HGNode::ClearBits(a1, a2, a3);
  v5 = vceq_f32(*a4.i8, vext_s8(*a4.i8, *&vextq_s8(a4, a4, 8uLL), 4uLL));
  *(a1 + 745) = 1;
  *(a1 + 1028) = 0;
  v6 = vand_s8(v5, vdup_lane_s32(v5, 1)).u8[0];
  result = 0.0;
  *(a1 + 768) = a4;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = v6 & 1;
  return result;
}

void HGColorGamma::ScaleParams()
{
  {
    __cxa_atexit(HGColorGammaLUTEntryFactory::~HGColorGammaLUTEntryFactory, &HGColorGamma::ScaleParams(HGNode *,HGRenderer *)::lutFactory, &dword_25F8F0000);
  }
}

void HGGamma::HGGamma(HGGamma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287218448;
  *(v1 + 408) = 0;
  *(v1 + 420) = 1;
  if (*(v1 + 416) != 1.0)
  {
    *(v1 + 416) = 1065353216;
  }
}

void HGGamma::~HGGamma(HGGamma *this)
{
  *this = &unk_287218448;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGGamma::~HGGamma(HGNode *this)
{
  *this = &unk_287218448;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGamma::SetParameter(HGGamma *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = fabsf(a3);
  if (*(this + 104) == v7)
  {
    return 0;
  }

  *(this + 104) = v7;
  return 1;
}

HGNode *HGGamma::GetOutput(HGGamma *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  if (vabds_f32(1.0, *(this + 104)) >= 0.001)
  {
    v4 = *(this + 420);
    v5 = HGObject::operator new(0x1D0uLL);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 21) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 23) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 25) = 0u;
    *(v5 + 26) = 0u;
    *(v5 + 27) = 0u;
    *(v5 + 28) = 0u;
    if (v4 == 1)
    {
      HgcGamma::HgcGamma(v5);
    }

    HgcGammaNoPremult::HgcGammaNoPremult(v5);
  }

  return Input;
}

void sub_25FC504E8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HGGammaMC::HGGammaMC(HGGammaMC *this)
{
  HGNode::HGNode(this);
  v1->i64[0] = &unk_2872186C8;
  v1[25].i64[1] = 0;
  __asm { FMOV            V0.4S, #1.0 }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v1[26], _Q0)))) & 1) != 0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(v1[27], xmmword_2603427D0)))))
  {
    v1[26] = _Q0;
    v1[27] = xmmword_2603427D0;
  }
}

void HGGammaMC::~HGGammaMC(HGGammaMC *this)
{
  *this = &unk_2872186C8;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGGammaMC::~HGGammaMC(HGNode *this)
{
  *this = &unk_2872186C8;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGGammaMC::SetParameter(float32x4_t *this, int a2, float32x2_t a3, float32_t a4, float a5, float a6)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  a3.f32[1] = a4;
  *v7.f32 = vabs_f32(a3);
  v8 = fabsf(a5);
  __asm { FMOV            V1.2S, #1.0 }

  *v14.f32 = vsub_f32(_D1, *v7.f32);
  v15 = 1.0 - v8;
  v16.i64[0] = v7.i64[0];
  v16.i64[1] = __PAIR64__(1.0, LODWORD(v8));
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(this[26], v16)))) & 1) == 0)
  {
    v17.i64[0] = v14.i64[0];
    v17.i64[1] = __PAIR64__(1.0, LODWORD(v15));
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(this[27], v17)))) & 1) == 0)
    {
      return 0;
    }
  }

  v7.i64[1] = __PAIR64__(1.0, LODWORD(v8));
  v14.i64[1] = __PAIR64__(1.0, LODWORD(v15));
  this[26] = v7;
  this[27] = v14;
  return 1;
}

HGNode *HGGammaMC::GetOutput(HGNode *this, HGRenderer *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = *(this + 26);
  if (*v4.i32 != 1.0)
  {
    goto LABEL_4;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v10 = vceq_f32(vext_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL), 4uLL), _D1);
  if ((v10.i8[0] & 1) == 0 || (v10.i8[4] & 1) == 0)
  {
LABEL_4:
    v11 = HGObject::operator new(0x1D0uLL);
    *v11 = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 7) = 0u;
    *(v11 + 8) = 0u;
    *(v11 + 9) = 0u;
    *(v11 + 10) = 0u;
    *(v11 + 11) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 16) = 0u;
    *(v11 + 17) = 0u;
    *(v11 + 18) = 0u;
    *(v11 + 19) = 0u;
    *(v11 + 20) = 0u;
    *(v11 + 21) = 0u;
    *(v11 + 22) = 0u;
    *(v11 + 23) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 25) = 0u;
    *(v11 + 26) = 0u;
    *(v11 + 27) = 0u;
    *(v11 + 28) = 0u;
    HgcGamma::HgcGamma(v11);
  }

  return Input;
}

void sub_25FC50A84(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void anonymous namespace::Gamma<HgcGamma>::~Gamma(HGNode *this)
{
  *this = &unk_287218948;
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
    if ((*(this + 439) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 439) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 52));
  v2 = this;

LABEL_5:
  HgcGamma::~HgcGamma(v2);
}

{
  *this = &unk_287218948;
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
    if ((*(this + 439) & 0x80000000) == 0)
    {
LABEL_3:
      HgcGamma::~HgcGamma(this);

      goto LABEL_5;
    }
  }

  else if ((*(this + 439) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(this + 52));
  HgcGamma::~HgcGamma(this);

LABEL_5:
  HGObject::operator delete(v2);
}

uint64_t anonymous namespace::Gamma<HgcGamma>::label_A(uint64_t a1)
{
  result = a1 + 416;
  if (*(a1 + 439) < 0)
  {
    return *result;
  }

  return result;
}

void anonymous namespace::Gamma<HgcGammaNoPremult>::~Gamma(void **this)
{
  *this = &unk_287218B98;
  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
    if ((*(this + 439) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((*(this + 439) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[52]);
  v2 = this;

LABEL_5:
  HgcGammaNoPremult::~HgcGammaNoPremult(v2);
}

{
  *this = &unk_287218B98;
  if (*(this + 463) < 0)
  {
    operator delete(this[55]);
    if ((*(this + 439) & 0x80000000) == 0)
    {
LABEL_3:
      HgcGammaNoPremult::~HgcGammaNoPremult(this);

      goto LABEL_5;
    }
  }

  else if ((*(this + 439) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[52]);
  HgcGammaNoPremult::~HgcGammaNoPremult(this);

LABEL_5:
  HGObject::operator delete(v2);
}

uint64_t anonymous namespace::Gamma<HgcGammaNoPremult>::label_A(uint64_t a1)
{
  result = a1 + 416;
  if (*(a1 + 439) < 0)
  {
    return *result;
  }

  return result;
}

void DepthBufferManager::~DepthBufferManager(DepthBufferManager *this)
{
  *this = &unk_287218DE8;
  for (i = *(this + 2); i != *(this + 3); i = *(this + 2))
  {
    (*(*this + 32))(this);
  }

  *(this + 1) = 0;
  if (i)
  {
    *(this + 3) = i;
    operator delete(i);
  }
}

uint64_t DepthBufferManager::getDepthBuffer(DepthBufferManager *this)
{
  v1 = *(this + 3);
  if (*(this + 2) == v1)
  {
    return 0;
  }

  else
  {
    return *(v1 - 8);
  }
}

void *DepthBufferManager::uninit(void *this)
{
    ;
  }

  i[1] = 0;
  return this;
}

void DepthBufferManager::push(DepthBufferManager *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("depth", 2, "dbm : PUSH\n", a4, a5);
  }

  v7 = 0;
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 16, &v7);
}

void DepthBufferManager::pop(DepthBufferManager *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("depth", 2, "dbm : POP\n", a4, a5);
  }

  v7 = *(this + 3);
  if (*(this + 2) != v7)
  {
    v8 = *(v7 - 8);
    if (v8)
    {
      (*(*v8 + 24))(v8);
      v7 = *(this + 3);
    }
  }

  *(this + 3) = v7 - 8;
}

void DBM_gl::DBM_gl(DBM_gl *this, HGRenderer *a2)
{
  *(this + 40) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *this = &unk_287218E48;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 24) = -1;
  *(this + 13) = 0;
  v4 = HGRectMake4i(0, 0, 1u, 1u);
  v6 = (*(*a2 + 136))(a2, v4, v5, 28);
  (*(**(this + 1) + 144))(*(this + 1), v6);
  (*(*v6 + 24))(v6);
  DBM_gl::_initOneDepthFormat(this, 6402);
  *(this + 24) = 6402;
  glFlush();
  (*(**(this + 1) + 144))(*(this + 1), 0);
}

void sub_25FC51158(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v1 + 10));
  DepthBufferManager::~DepthBufferManager(v1);
  _Unwind_Resume(a1);
}

void DBM_gl::~DBM_gl(DBM_gl *this)
{
  *this = &unk_287218E48;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 72, *(this + 10));
  for (*this = &unk_287218DE8; ; (*(*this + 32))(this))
  {
    v2 = *(this + 2);
    if (v2 == *(this + 3))
    {
      break;
    }
  }

  *(this + 1) = 0;
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287218E48;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 72, *(this + 10));
  for (*this = &unk_287218DE8; ; (*(*this + 32))(this))
  {
    v2 = *(this + 2);
    if (v2 == *(this + 3))
    {
      break;
    }
  }

  *(this + 1) = 0;
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

HGGPURenderer *DBM_gl::uninit(HGGPURenderer **this)
{
  if (this[13])
  {
    HGGPURenderer::GetCurrentContext(this[1], &v7);
    HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v8, &v7.var0);
    HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v8);
    PCSharedCount::PCSharedCount(&v7);
    v2 = *(this + 26);
    shaders = 0;
    glGetAttachedShaders(v2, 1, 0, &shaders);
    glDeleteShader(shaders);
    glDeleteProgram(v2);
    this[13] = 0;
  }

  v3 = this[6];
  if (v3)
  {
    (*(*v3 + 24))(v3);
    this[6] = 0;
  }

  v4 = this[7];
  if (v4)
  {
    (*(*v4 + 24))(v4);
    this[7] = 0;
  }

  result = this[8];
  if (result)
  {
    result = (*(*result + 24))(result);
    this[8] = 0;
  }

  while (this[2] != this[3])
  {
    result = (*(*this + 4))(this);
  }

  this[1] = 0;
  return result;
}

void DBM_gl::enableDepth(DBM_gl *this, int a2, int flag, const char *a4, char *a5)
{
  v5 = a5;
  v6 = a4;
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("depth", 2, "depth enabled\n", a4, a5);
  }

  if (a2)
  {
    glDepthMask(flag);
    glEnable(0xB71u);
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = 513;
    }

    glDepthFunc(v11);
  }

  else if (flag)
  {
    v12 = atomic_load(HGLogger::_enabled);
    if (v12)
    {
      HGLogger::log("depth", 1, "\n *** DBM ERROR : can't write depth with depth test off.\n\n", a4, a5);
    }
  }

  if ((*(this + 112) & 1) != 0 || v5)
  {
    v13 = atomic_load(HGLogger::_enabled);
    if (v13)
    {
      HGLogger::log("depth", 2, "depth cleared\n", a4, a5);
    }

    glClearDepthf(1.0);
    glClear(0x100u);
    *(this + 112) = 0;
  }
}

void DBM_gl::disableDepth(DBM_gl *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    HGLogger::log("depth", 2, "depth disabled\n", a4, a5);
  }

  glDepthMask(0);

  glDisable(0xB71u);
}

void *DBM_gl::_reinitDepth(void *this)
{
  if (this[6])
  {
    v1 = this;
    (*(*this + 64))(this, 1, 1, 519, 0);
    v2 = v1[13];
    if (!v2)
    {
      Program = glCreateProgram();
      Shader = glCreateShader(0x8B30u);
      length = strlen(DBM_gl::_reinitDepth(void)::shaderStr);
      glShaderSource(Shader, 1, &DBM_gl::_reinitDepth(void)::shaderStr, &length);
      glCompileShader(Shader);
      glAttachShader(Program, Shader);
      glBindAttribLocation(Program, 0, "hg_TexCoord0");
      glLinkProgram(Program);
      LODWORD(v2) = Program;
      v1[13] = Program;
    }

    glUseProgram(v2);
    v5 = HGRectIntersection(*(*(v1[3] - 8) + 20), *(*(v1[3] - 8) + 28), *(v1[6] + 20), *(v1[6] + 28));
    v7 = v6;
    v8 = *(v1[6] + 168);
    v9 = *(*(v1[3] - 8) + 156);
    (*(*v1[1] + 152))(v1[1], 0);
    *&v16.var0 = v5;
    *&v16.var2 = v7;
    HGGPURenderer::Rect(v1[1], v16);
    (*(*v1[1] + 152))(v1[1], 0, 0, 0, 0);
    glUseProgram(0);
    if ((_MergedGlobals_16 & 1) == 0)
    {
      for (i = glGetError(); i; i = glGetError())
      {
        v13 = HGGLGetErrorString(i);
        printf("glGetError : %s\n", v13);
      }
    }

    v14 = atomic_load(HGLogger::_enabled);
    if (v14)
    {
      HGLogger::log("depth", 1, "** copying depth texture %d into depth buffer %d\n", v10, v11, v8, v9);
    }

    return (*(*v1 + 72))(v1);
  }

  return this;
}

void DBM_gl::_bind(DBM_gl *this, HGNode *a2, HGRect a3, int a4)
{
  v57 = *MEMORY[0x277D85DE8];
  if (*(this + 2) == *(this + 3))
  {
    return;
  }

  v4 = *&a3.var2;
  v5 = *&a3.var0;
  *(this + 112) = 1;
  snprintf(__str, 0x64uLL, "DBM_gl::bind( rect : %d %d %d %d)", a3.var0, a3.var1, a3.var2, a3.var3);
  HGTraceGuard::HGTraceGuard(v55, "gpu", 1, __str);
  v9 = *(*(this + 1) + 24);
  v10 = *(v9 + 136);
  v11 = *(v9 + 144);
  v12 = *(this + 3);
  v13 = *(v12 - 8);
  if (!v13)
  {
    goto LABEL_32;
  }

  v14 = *(v13 + 136);
  v15 = *(v13 + 144);
  v16 = atomic_load(HGLogger::_enabled);
  if (v16)
  {
    HGLogger::log("depth", 2, "************ already has depth buffer, let's check \n", v7, v8);
  }

  v17 = atomic_load(HGLogger::_enabled);
  if (v17)
  {
    HGLogger::log("depth", 2, " current depth buffer rect : %d %d %d %d\n", v7, v8, v14, HIDWORD(v14), v15, HIDWORD(v15));
  }

  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    HGLogger::log("depth", 2, " requested rect : %d %d %d %d\n", v7, v8, v10, HIDWORD(v10), v11, HIDWORD(v11));
  }

  if (!HGRectIsEqual(v14, v15, v10, v11))
  {
    if (HGRectContainsRect(v14, v15, v10, v11))
    {
      v25 = atomic_load(HGLogger::_enabled);
      if (v25)
      {
        HGLogger::log("depth", 1, "too big!, we'll need a sub-buffer to render into! \n", v23, v24);
      }

      v26 = *(this + 3);
      if (*(this + 2) == v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = *(v26 - 8);
      }

      *(this + 7) = v27;
      (*(*v27 + 16))(v27);
    }

    else if (HGRectContainsRect(v10, v11, v14, v15))
    {
      v31 = atomic_load(HGLogger::_enabled);
      if (v31)
      {
        HGLogger::log("depth", 2, "nope, too bad\n", v29, v30);
      }

      *(this + 112) = 1;
      v32 = *(this + 3);
      if (*(this + 2) == v32 || (v33 = *(v32 - 8)) == 0)
      {
        v52 = atomic_load(HGLogger::_enabled);
        if (v52)
        {
          HGLogger::log("depth", 1, "no depth, but need one! use a small deep texture\n", v29, v30);
        }

        v34 = DBM_gl::nullTexture(this);
        (*(*v34 + 16))(v34);
      }

      else
      {
        v34 = HGGLTexture::CreateTexture(*(v32 - 8), *(this + 1), v28);
        HGGPURenderer::AddTextureUsage(*(this + 1), v33);
      }

      *(this + 6) = v34;
      v35 = *(v12 - 8);
      if (!v35)
      {
        goto LABEL_32;
      }

LABEL_31:
      (*(*v35 + 24))(v35);
      *(v12 - 8) = 0;
      goto LABEL_32;
    }

    v35 = *(v12 - 8);
    if (!v35)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v21 = atomic_load(HGLogger::_enabled);
  if (v21)
  {
    HGLogger::log("depth", 2, "same size, perfect!!\n", v19, v20);
  }

  *(this + 112) = 0;
  v22 = *(v12 - 8);
  if (qword_280C5DDD8 == v22)
  {
    *(this + 112) = 1;
    qword_280C5DDD8 = 0;
    v22 = *(v12 - 8);
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else if (v22)
  {
    goto LABEL_33;
  }

LABEL_32:
  texture = 0;
  HGGPURenderer::GenRectTexture(*(this + 1), &texture, 0xDE1, v11 - v10, HIDWORD(v11) - HIDWORD(v10), *(this + 24), 6402, 5125, 0);
  glBindTexture(0xDE1u, texture);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  glTexParameteri(0xDE1u, 0x2800u, 9728);
  glTexParameteri(0xDE1u, 0x2801u, 9728);
  glTexImage2D(0xDE1u, 0, *(this + 24), v11 - v10, HIDWORD(v11) - HIDWORD(v10), 0, 0x1902u, 0x1405u, 0);
  v36 = HGObject::operator new(0xB8uLL);
  HGGLBuffer::HGGLBuffer(v36, v10, v11, 7, *(this + 1));
  v37 = texture;
  v36[39] = texture;
  v36[40] = v37;
  v36[38] = 3553;
  *(v36 + 17) = v5;
  *(v36 + 18) = v4;
  *(v36 + 180) = 0;
  *(v12 - 8) = v36;
  glBindTexture(0xDE1u, 0);
  v22 = *(v12 - 8);
  if (!v22)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (!a4)
  {
LABEL_42:
    if (v22)
    {
      v46 = *(v22 + 156);
      v47 = atomic_load(HGLogger::_enabled);
      if (v47)
      {
        HGLogger::log("gpu", 1, "created (not bound) depth with ID %d\n", v19, v20, v46);
      }

      qword_280C5DDD8 = *(v12 - 8);
    }

    goto LABEL_46;
  }

  v38 = *(v22 + 156);
  glFramebufferTexture2D(0x8D40u, 0x8D00u, 0xDE1u, *(v22 + 156), 0);
  v41 = atomic_load(HGLogger::_enabled);
  if (v41)
  {
    HGLogger::log("gpu", 1, "Drawing into depth with ID %d\n", v39, v40, v38);
  }

  if ((_MergedGlobals_16 & 1) == 0)
  {
    v42 = glCheckFramebufferStatus(0x8D40u);
    if (v42 != 36053)
    {
      v43 = HGGLGetFramebufferStatusString(v42);
      printf("glCheckFBOStatus : %s\n", v43);
    }

    if ((_MergedGlobals_16 & 1) == 0)
    {
      while (1)
      {
        Error = glGetError();
        if (!Error)
        {
          break;
        }

        v45 = HGGLGetErrorString(Error);
        printf("glGetError : %s\n", v45);
      }
    }
  }

LABEL_46:
  texture = 0;
  glGetIntegerv(0xD56u, &texture);
  v50 = atomic_load(HGLogger::_enabled);
  if (v50)
  {
    HGLogger::log("depth", 1, "fbo depth size : %d \t tex depth size : %d\n", v48, v49, texture, 0xFFFFFFFFLL);
  }

  DBM_gl::_reinitDepth(this);
  v51 = *(this + 6);
  if (v51)
  {
    (*(*v51 + 24))(v51);
  }

  *(this + 6) = 0;
  HGTraceGuard::~HGTraceGuard(v55);
}

void sub_25FC51E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  HGObject::operator delete(v14);
  HGTraceGuard::~HGTraceGuard(&a14);
  _Unwind_Resume(a1);
}

void sub_25FC51EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC51F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void DBM_gl::preBind(DBM_gl *this, HGRect a2)
{
  v2 = *&a2.var2;
  *&a2.var2 = *&a2.var0;
  DBM_gl::_bind(this, *&a2.var0, *&a2.var2, 0);
}

uint64_t DBM_gl::unbind(DBM_gl *this)
{
  glFramebufferTexture2D(0x8D40u, 0x8D00u, 0xDE1u, 0, 0);
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    HGLogger::log("gpu", 1, "unbinding depth\n", v3, v4);
  }

  result = *(this + 6);
  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(this + 6) = 0;
  if (*(this + 7))
  {
    v7 = *(this + 3);
    if (*(this + 2) == v7 || (v8 = *(v7 - 8)) == 0)
    {
      v10 = atomic_load(HGLogger::_enabled);
      if (v10)
      {
        HGLogger::log("depth", 1, "no depth, but need one! use a small deep texture\n", v3, v4);
      }

      Texture = DBM_gl::nullTexture(this);
      (*(*Texture + 16))(Texture);
    }

    else
    {
      Texture = HGGLTexture::CreateTexture(*(v7 - 8), *(this + 1), v2);
      HGGPURenderer::AddTextureUsage(*(this + 1), v8);
    }

    *(this + 6) = Texture;
    (*(**(v7 - 8) + 24))(*(v7 - 8));
    v11 = *(this + 7);
    *(v7 - 8) = v11;
    (*(*v11 + 16))(v11);
    v12 = *(this + 7);
    v13 = *(*(this + 6) + 168);
    v14 = *(v12 + 156);
    v15 = *(this + 1);
    v16 = v15[3];
    v17 = (*(*v15 + 136))(v15, *(v12 + 20), *(v12 + 28), 24);
    (*(**(this + 1) + 144))(*(this + 1), v17);
    glFramebufferTexture2D(0x8D40u, 0x8D00u, 0xDE1u, v14, 0);
    if ((_MergedGlobals_16 & 1) == 0)
    {
      v18 = glCheckFramebufferStatus(0x8D40u);
      if (v18 != 36053)
      {
        v19 = HGGLGetFramebufferStatusString(v18);
        printf("glCheckFBOStatus : %s\n", v19);
      }

      if ((_MergedGlobals_16 & 1) == 0)
      {
        for (i = glGetError(); i; i = glGetError())
        {
          v21 = HGGLGetErrorString(i);
          printf("glGetError : %s\n", v21);
        }
      }
    }

    DBM_gl::_reinitDepth(this);
    glFramebufferTexture2D(0x8D40u, 0x8D00u, 0xDE1u, v14, 0);
    (*(**(this + 1) + 144))(*(this + 1), v16);
    (*(*v17 + 24))(v17);
    v24 = atomic_load(HGLogger::_enabled);
    if (v24)
    {
      HGLogger::log("depth", 1, "** copying page depth texture %d into full-buffered depth buffer %d\n", v22, v23, v13, v14);
    }

    (*(**(this + 7) + 24))(*(this + 7));
    *(this + 7) = 0;
    result = (*(**(this + 6) + 24))(*(this + 6));
    *(this + 6) = 0;
  }

  return result;
}

void *DBM_gl::nullTexture(DBM_gl *this)
{
  result = *(this + 8);
  if (!result)
  {
    texture = 0;
    HGGPURenderer::GenRectTexture(*(this + 1), &texture, 0xDE1, 1, 1, *(this + 24), 6402, 5125, 0);
    glBindTexture(0xDE1u, texture);
    glTexParameteri(0xDE1u, 0x2802u, 33071);
    glTexParameteri(0xDE1u, 0x2803u, 33071);
    glTexParameteri(0xDE1u, 0x2800u, 9728);
    glTexParameteri(0xDE1u, 0x2801u, 9728);
    glTexImage2D(0xDE1u, 0, *(this + 24), 1, 1, 0, 0x1902u, 0x1405u, &DBM_gl::nullTexture(void)::deep_pixel);
    v3 = HGRectMake4i(0, 0, 1u, 1u);
    v5 = v4;
    v6 = HGObject::operator new(0xC8uLL);
    HGGLTexture::HGGLTexture(v6, v3, v5, 7, *(this + 1), 3553, texture != 0);
    result = v6;
    *(this + 8) = v6;
  }

  return result;
}

uint64_t DBM_gl::_initOneDepthFormat(DBM_gl *this, int a2)
{
  *(this + 24) = a2;
  HGGPURenderer::GetCurrentContext(*(this + 1), &v12);
  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v13, &v12.var0);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v13);
  PCSharedCount::PCSharedCount(&v12);
  _MergedGlobals_16 = 1;
  (*(*this + 24))(this);
  v4 = HGRectMake4i(0, 0, 1u, 1u);
  (*(*this + 40))(this, 0, v4, v5);
  v6 = glCheckFramebufferStatus(0x8D40u);
  params = -1;
  glGetIntegerv(0xD56u, &params);
  (*(*this + 48))(this);
  _MergedGlobals_16 = 0;
  if (v6 == 36053 && params >= 1)
  {
    v7 = *(this + 10);
    if (!v7)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v8 = v7;
        v9 = *(v7 + 7);
        if (v9 <= a2)
        {
          break;
        }

        v7 = *v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= a2)
      {
        break;
      }

      v7 = v8[1];
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    *(v8 + 8) = params;
  }

  return (*(*this + 32))(this);
}

uint64_t DBM_cpu::DBM_cpu(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *a1 = &unk_287218EB0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 44) = HGRectMake4i(0, 0, 0, 0);
  *(a1 + 52) = v3;
  return a1;
}

void sub_25FC526DC(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 10) = v5;
    operator delete(v5);
  }

  DepthBufferManager::~DepthBufferManager(v1);
  _Unwind_Resume(a1);
}

void DBM_cpu::~DBM_cpu(DBM_cpu *this)
{
  *this = &unk_287218EB0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  for (*this = &unk_287218DE8; ; (*(*this + 32))(this))
  {
    v3 = *(this + 2);
    if (v3 == *(this + 3))
    {
      break;
    }
  }

  *(this + 1) = 0;
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_287218EB0;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  for (*this = &unk_287218DE8; ; (*(*this + 32))(this))
  {
    v3 = *(this + 2);
    if (v3 == *(this + 3))
    {
      break;
    }
  }

  *(this + 1) = 0;
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t DBM_cpu::push(DBM_cpu *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("depth", 2, "dbm : PUSH\n", a4, a5);
  }

  v9 = 0;
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 16, &v9);
  v9 = 0;
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 72, &v9);
  result = HGRectMake4i(0, 0, 0, 0);
  *(this + 44) = result;
  *(this + 52) = v8;
  return result;
}

uint64_t DBM_cpu::pop(DBM_cpu *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("depth", 2, "dbm : POP\n", a4, a5);
  }

  v7 = *(this + 3);
  if (*(this + 2) != v7)
  {
    v8 = *(v7 - 8);
    if (v8)
    {
      (*(*v8 + 24))(v8);
      v7 = *(this + 3);
    }
  }

  *(this + 3) = v7 - 8;
  *(this + 10) -= 8;
  result = HGRectMake4i(0, 0, 0, 0);
  *(this + 44) = result;
  *(this + 52) = v10;
  return result;
}

uint64_t DBM_cpu::bufferHint(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    *(*(result + 80) - 8) = a2;
  }

  return result;
}

void DBM_cpu::bind(DBM_cpu *this, HGNode *a2, HGRect a3)
{
  v59 = *MEMORY[0x277D85DE8];
  if (*(this + 2) != *(this + 3))
  {
    v3 = *&a3.var2;
    v4 = *&a3.var0;
    var1 = a3.var1;
    var3 = a3.var3;
    snprintf(__str, 0x64uLL, "DBM_cpu::bind( rect : %d %d %d %d)", a3.var0, a3.var1, a3.var2, a3.var3);
    HGTraceGuard::HGTraceGuard(v57, "gpu", 1, __str);
    v10 = v4;
    v56 = var1;
    LODWORD(v11) = var1;
    v12 = v3;
    v13 = v4;
    if (HGRectIsNull(*(this + 44), *(this + 52)))
    {
      v14 = *(this + 3);
      if (!*(v14 - 8))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = atomic_load(HGLogger::_enabled);
      if (v15)
      {
        HGLogger::log("depth", 2, "current request for : %d %d %d %d\n", v8, v9, *(this + 11), *(this + 12), *(this + 13), *(this + 14));
      }

      v16 = HGRectUnion(v4, v3, *(this + 44), *(this + 52));
      v10 = v16;
      v12 = v17;
      v11 = HIDWORD(v16);
      v13 = v16;
      v14 = *(this + 3);
      if (!*(v14 - 8))
      {
        goto LABEL_13;
      }
    }

    v18 = atomic_load(HGLogger::_enabled);
    if (v18)
    {
      HGLogger::log("depth", 2, "************ already has depth buffer... \n", v8, v9);
    }

    IsEqual = HGRectIsEqual(*(*(v14 - 8) + 20), *(*(v14 - 8) + 28), v4, v3);
    v22 = atomic_load(HGLogger::_enabled);
    if (!IsEqual)
    {
      if (v22)
      {
        HGLogger::log("depth", 2, "... nope, too bad... creating a new one... \n", v20, v21);
      }

      (*(**(v14 - 8) + 24))(*(v14 - 8));
      *(v14 - 8) = 0;
      v23 = *(*(this + 10) - 8);
      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_14:
      v24 = HGRectIntersection(v13, v12, *(v23 + 20), *(v23 + 28));
      if (!HGRectIsNull(v24, v25))
      {
        v43 = atomic_load(HGLogger::_enabled);
        if (v43)
        {
          HGLogger::log("depth", 1, "found pre-allocated buffer %p\n", v26, v27, v23);
        }

        v44 = atomic_load(HGLogger::_enabled);
        if (v44)
        {
          HGLogger::log("depth", 1, "current tile : %d %d %d %d\n", v26, v27, v4, v56, v3, var3);
        }

        v45 = atomic_load(HGLogger::_enabled);
        if (v45)
        {
          HGLogger::log("depth", 1, "buffered depth : %d %d %d %d\n", v26, v27, *(v23 + 20), *(v23 + 24), *(v23 + 28), *(v23 + 32));
        }

        if (*(v14 - 8))
        {
          goto LABEL_45;
        }

        v46 = HGObject::operator new(0x80uLL);
        HGBitmap::HGBitmap(v46, *(v23 + 20), *(v23 + 28), *(v23 + 16), *(v23 + 80), *(v23 + 64));
        v28 = HGObject::operator new(0x80uLL);
        *&v60.var0 = v13;
        *&v60.var2 = v12;
        HGBuffer::HGBuffer(v28, v60, v46);
        (*(*v46 + 24))(v46);
        *(v14 - 8) = v28;
        if (HGRectIsNull(*(this + 44), *(this + 52)))
        {
          v42 = 0;
        }

        else
        {
          v52 = v4 - *(v28 + 5);
          v53 = *(v28 + 14);
          v42 = (v56 - *(v28 + 6)) * *(v28 + 16) + v52 * v53;
          v54 = atomic_load(HGLogger::_enabled);
          if (v54)
          {
            HGLogger::log("depth", 2, "bind : offset : %d\n", v47, v48, ((v56 - *(v28 + 6)) * *(v28 + 16) + v52 * v53));
          }
        }

        goto LABEL_44;
      }

LABEL_15:
      if (*(v14 - 8))
      {
LABEL_45:
        HGTraceGuard::~HGTraceGuard(v57);
        return;
      }

      v28 = HGObject::operator new(0x80uLL);
      HGBuffer::HGBuffer(v28, v13, v12, 28);
      *(v14 - 8) = v28;
      v31 = atomic_load(HGLogger::_enabled);
      if (v31)
      {
        HGLogger::log("depth", 2, "bind : new buffer : %p\n", v29, v30, v28);
      }

      if (HIDWORD(v12) - v11 >= 1 && v12 - v10 >= 1)
      {
        v32 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        do
        {
          v38 = (*(v28 + 10) + v32 * *(v28 + 16));
          v39 = v12 - v10;
          do
          {
            *v38 = _Q0;
            v38 = (v38 + *(v28 + 14));
            --v39;
          }

          while (v39);
          ++v32;
        }

        while (v32 != HIDWORD(v12) - v11);
      }

      if (HGRectIsNull(*(this + 44), *(this + 52)))
      {
        v42 = 0;
      }

      else
      {
        v49 = v4 - v10;
        v50 = *(v28 + 14);
        v42 = (v56 - v11) * *(v28 + 16) + (v4 - v10) * v50;
        v51 = atomic_load(HGLogger::_enabled);
        if (v51)
        {
          HGLogger::log("depth", 2, "bind : offset : %d\n", v40, v41, ((v56 - v11) * *(v28 + 16) + v49 * v50));
        }
      }

LABEL_44:
      *(this + 8) = *(v28 + 10) + v42;
      *(this + 44) = HGRectMake4i(0, 0, 0, 0);
      *(this + 52) = v55;
      goto LABEL_45;
    }

    if (v22)
    {
      HGLogger::log("depth", 2, "... same rect, yeah!! \n", v20, v21);
    }

LABEL_13:
    v23 = *(*(this + 10) - 8);
    if (!v23)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }
}

void sub_25FC52ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  HGObject::operator delete(v14);
  HGTraceGuard::~HGTraceGuard(&a14);
  _Unwind_Resume(a1);
}

void sub_25FC52F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC52FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t DBM_cpu::setDepthBuffer(DBM_cpu *this, HGBitmap *a2, HGRect a3)
{
  (*(*this + 40))(this, 0, *&a3.var0, *&a3.var2);
  v7 = *(this + 3);
  if (*(this + 2) != v7)
  {
    v8 = *(v7 - 8);
    if (v8)
    {
      v9 = atomic_load(HGLogger::_enabled);
      if (v9)
      {
        HGLogger::log("depth", 1, "copying depth from cached depth %p to current dbm's depth %p\n", v5, v6, a2, v8);
      }

      v10 = HGRectIntersection(*(a2 + 20), *(a2 + 28), *(v8 + 20), *(v8 + 28));
      v12 = HIDWORD(v11);
      if (SHIDWORD(v10) < SHIDWORD(v11))
      {
        v13 = *(a2 + 14) * (v11 - v10);
        v14 = SHIDWORD(v10);
        v15 = v10;
        do
        {
          memcpy((*(v8 + 80) + *(v8 + 64) * (v14 - *(v8 + 24)) + *(v8 + 56) * (v15 - *(v8 + 20))), (*(a2 + 10) + *(a2 + 8) * (v14 - *(a2 + 6)) + *(a2 + 7) * (v15 - *(a2 + 5))), v13);
          ++v14;
        }

        while (v12 != v14);
      }
    }
  }

  v16 = *(*this + 48);

  return v16(this);
}

void HGMetalBuffer::~HGMetalBuffer(HGMetalBuffer *this)
{
  *this = &unk_287218F50;
  v3 = (this + 128);
  v2 = *(this + 16);
  if (v2)
  {
    HGMetalBufferPool::releaseBuffer(v2, *(this + 18));
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;

  HGBitmap::~HGBitmap(this, v4);
}

{
  HGMetalBuffer::~HGMetalBuffer(this);

  HGObject::operator delete(v1);
}

char *HGMetalBuffer::ModifyRangeAndMarkAsDirty(id *this, uint64_t a2, size_t a3, const void *a4)
{
  result = [this[18] contents];
  if (result)
  {
    v8 = &result[a2];

    return memcpy(v8, a4, a3);
  }

  return result;
}

BOOL HGMetalBuffer::canCreateFromBytes(HGBitmap *this, HGBitmap *a2)
{
  v2 = this;
  Storage = HGBitmap::GetStorage(this);
  {
    v5 = v4;
    IsEqual = HGRectIsEqual(*(v4 + 20), *(v4 + 28), *(v2 + 36), *(v2 + 44));
    v7 = getpagesize();
    if (IsEqual)
    {
      v2 = v5;
    }

    v8 = v7;
    if (!(*(v2 + 10) % v7))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = getpagesize();
    if (!(*(v2 + 10) % v8))
    {
LABEL_7:
      v9 = *(v2 + 9) % v8 == 0;
      return HGMetalUtils::metalFormat(*(v2 + 4)) && v9;
    }
  }

  v9 = 0;
  return HGMetalUtils::metalFormat(*(v2 + 4)) && v9;
}

BOOL HGMetalBuffer::canCreateFromBytes(uint64_t a1, HGBitmap *this)
{
  Storage = HGBitmap::GetStorage(this);
  {
    v6 = this;
  }

  v8 = *(HGMetalDeviceInfo::getDeviceInfo(a1) + 48);
  if (*(v6 + 7) - *(v6 + 5) > v8 || *(v6 + 8) - *(v6 + 6) > v8)
  {
    return 0;
  }

  return HGMetalBuffer::canCreateFromBytes(this, v7);
}

const char *HGMetalBuffer::createFromBytes@<X0>(HGMetalBuffer *this@<X2>, void *a2@<X0>, uint64_t *a3@<X1>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  if (this && *(this + 10))
  {
    if (HGMetalBuffer::canCreateFromBytes(this, a3))
    {
      v23 = 4608;
      kdebug_trace();
      Storage = HGBitmap::GetStorage(this);
      {
        v12 = this;
      }

      v15 = *(HGMetalDeviceInfo::getDeviceInfo(a2) + 48);
      if (*(v12 + 7) - *(v12 + 5) <= v15 && *(v12 + 8) - *(v12 + 6) <= v15)
      {
        if ((a4 & 1) == 0)
        {
          HGLogger::warning("MTLResourceStorageModeManaged is not available on iOS.", v13, v14);
        }

        if (a3)
        {
          v18 = *(v12 + 9);
          v22[0] = *(v12 + 10);
          v22[1] = v18;
          v22[2] = 0;
          HGMetalBufferWrapperInfinipool::newBuffer(a3, v22);
        }

        v21 = [a2 newBufferWithBytesNoCopy:*(v12 + 10) length:*(v12 + 9) options:0 deallocator:0];
        if (v21)
        {
          v19 = HGObject::operator new(0x98uLL);
          HGBitmap::HGBitmap(v19, *(v12 + 20), *(v12 + 28), *(v12 + 4), 0);
          *v19 = &unk_287218F50;
          v19[17] = 0;
          v19[18] = 0;
          v19[16] = 0;
          *(v19 + 3) |= 0x120u;
          if (a2)
          {
            v19[17] = a2;
            v20 = a2;
          }

          *a5 = v19;
          *(v19 + 4) = *(v12 + 4);
          v19[18] = v21;
          HGBitmap::SetStorage(v19, v12);
        }

        else
        {
          HGLogger::warning("HGMetalBuffer::createFromBytes() failed. MTLBuffer creation failed.", 0, *(v12 + 9), *(v12 + 10));
        }
      }

      else
      {
        HGLogger::warning("HGMetalBuffer::createFromBytes() failed. Exceeding buffer size limits.", v13, v14);
      }

      return kdebug_trace();
    }

    v17 = "HGMetalBuffer::createFromBytes() failed. Data is not properly aligned.";
  }

  else
  {
    v17 = "HGMetalBuffer::createFromBytes() failed. No HGBitmap provided.";
  }

  return HGLogger::warning(v17, a3, this);
}

void sub_25FC53710(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  HGBitmap::~HGBitmap(v13, a2);
  HGObject::operator delete(v13);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a13);
  _Unwind_Resume(a1);
}

const char *HGMetalBuffer::createWithCopy@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  if (a2 && *(a2 + 80))
  {
    kdebug_trace();
    v7 = [a1 newBufferWithBytes:*(a2 + 80) length:*(a2 + 72) options:32];
    if (v7)
    {
      v8 = HGObject::operator new(0x98uLL);
      HGBitmap::HGBitmap(v8, *(a2 + 20), *(a2 + 28), *(a2 + 16), 0);
      *v8 = &unk_287218F50;
      v8[17] = 0;
      v8[18] = 0;
      v8[16] = 0;
      *(v8 + 3) |= 0x120u;
      if (a1)
      {
        v8[17] = a1;
        v11 = a1;
      }

      *a4 = v8;
      *(v8 + 4) = *(a2 + 64);
      v8[18] = v7;
    }

    else
    {
      HGLogger::warning("HGMetalBuffer::createWithCopy() failed. MTLBuffer creation failed.", 0, *(a2 + 72), *(a2 + 80));
    }

    v13 = atomic_load(HGLogger::_enabled);
    if (v13)
    {
      HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGMetalBuffer::createWithCopy: newBufferWithBytes with copy of misaligned data\n", v9, v10);
    }

    return kdebug_trace();
  }

  else
  {

    return HGLogger::warning("HGMetalBuffer::createWithCopy() failed. No HGBitmap provided.", a2, a3);
  }
}

void sub_25FC53994(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  HGBitmap::~HGBitmap(v11, a2);
  HGObject::operator delete(v11);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  _Unwind_Resume(a1);
}

void sub_25FC539D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  v13 = *v11;
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t HGMetalBuffer::create@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v12 = HGObject::operator new(0x98uLL);
  HGBitmap::HGBitmap(v12, a3, a4, a5, 0);
  *v12 = &unk_287218F50;
  *(v12 + 17) = 0;
  *(v12 + 18) = 0;
  *(v12 + 16) = 0;
  *(v12 + 3) |= 0x120u;
  if (a1)
  {
    *(v12 + 17) = a1;
    v13 = a1;
  }

  *a6 = v12;
  if (a2)
  {
    v15 = *(v12 + 9);
    HGMetalBufferPool::newBuffer(a2, &v15);
  }

  result = [a1 newBufferWithLength:*(v12 + 9) options:0];
  if (result)
  {
    *(v12 + 18) = result;
    *(v12 + 16) = 0;
  }

  else
  {
    HGLogger::warning("HGMetalBuffer::create() failed. Failed to allocate buffer object.", 0, *(v12 + 9));
    result = (*(*v12 + 24))(v12);
    *a6 = 0;
  }

  return result;
}

uint64_t HGMetalBuffer::create@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  v8 = HGRectMake4i(0, 0, a3, 1u);

  return HGMetalBuffer::create(a1, a2, v8, v7, 1, a4);
}

void *HGMetalBuffer::getMetalStorage(HGBitmap *this, HGBitmap *a2)
{
  if (!this)
  {
    return 0;
  }

  do
  {
    v2 = this;
    Storage = HGBitmap::GetStorage(v2);
    if (!Storage)
    {
      break;
    }
  }

  while (!v3 && this != 0);
  return v3;
}

void *HGComicLUT::GetData(int a1)
{
  if ((a1 - 1) > 4)
  {
    return &HGComicLUT0Data;
  }

  else
  {
    return *(&off_279AA8A58 + (a1 - 1));
  }
}

uint64_t HGGLBuffer::HGGLBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = HGBuffer::HGBuffer(a1, a2, a3, a4, 0);
  *v7 = &unk_287218FD0;
  v7[16] = a5;
  *(v7 + 17) = *(v7 + 20);
  v7[19] = 0;
  v7[20] = 0;
  *(v7 + 42) = 0;
  *(v7 + 172) = vsub_s32(*(v7 + 28), *(v7 + 20));
  *(v7 + 90) = 257;
  *(v7 + 182) = 0;
  *(v7 + 3) |= 0x110u;
  if (a5)
  {
    (*(*a5 + 16))(a5);
    *(a1 + 182) = 1;
  }

  return a1;
}

uint64_t HGGLBuffer::HGGLBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, char a8)
{
  v13 = HGBuffer::HGBuffer(a1, a2, a3, a4, 0);
  *v13 = &unk_287218FD0;
  v13[16] = a5;
  *(v13 + 17) = *(v13 + 20);
  *(v13 + 38) = a6;
  *(v13 + 39) = a7;
  v13[20] = 0;
  *(v13 + 42) = 0;
  *(v13 + 172) = vsub_s32(*(v13 + 28), *(v13 + 20));
  *(v13 + 180) = 0;
  *(v13 + 181) = a8;
  *(v13 + 182) = 0;
  *(v13 + 3) |= 0x110u;
  if (a5)
  {
    (*(*a5 + 16))(a5);
    *(a1 + 182) = 1;
  }

  return a1;
}

void HGGLBuffer::~HGGLBuffer(HGGLBuffer *this)
{
  *this = &unk_287218FD0;
  v1 = *(this + 16);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 16));
    this = v2;
    *(v2 + 16) = 0;
    LOBYTE(v1) = 1;
  }

  *(this + 182) = v1;

  HGBuffer::~HGBuffer(this);
}

{
  *this = &unk_287218FD0;
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 16) = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *(this + 182) = v3;
  HGBuffer::~HGBuffer(this);

  HGObject::operator delete(v4);
}

atomic_uint *HGGLBuffer::Release(HGBitmap *this)
{
  if (*(this + 16))
  {
    v2 = atomic_load(this + 2);
    if (v2 == 1)
    {
      v3 = this;
      HGGPURenderer::ReleaseBitmap(*(this + 16), this, 1);
      this = v3;
      v4 = *(v3 + 16);
      if (v4)
      {
        (*(*v4 + 24))(*(v3 + 16));
        this = v3;
        *(v3 + 16) = 0;
      }
    }

    v1 = vars8;
  }

  return HGObject::Release(this);
}

uint64_t HGGLBuffer::AttachRenderer(uint64_t result, uint64_t a2)
{
  if ((*(result + 182) & 1) == 0 && a2 && !*(result + 128))
  {
    *(result + 128) = a2;
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t HGGLBuffer::DetachRenderer(uint64_t this)
{
  if ((*(this + 182) & 1) == 0)
  {
    v1 = *(this + 128);
    if (v1)
    {
      v2 = this;
      this = (*(*v1 + 24))(v1);
      *(v2 + 128) = 0;
    }
  }

  return this;
}

__guard *HGBlendingInfo::Get(HGBlendingInfo *this)
{
  if (atomic_load_explicit(_MergedGlobals_17, memory_order_acquire))
  {
    return &_MergedGlobals_17[4 * this + 1];
  }

  v2 = this;
  HGBlendingInfo::Get();
  return &_MergedGlobals_17[4 * v2 + 1];
}

BOOL HGBlendingInfo::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 < v4)
  {
    return 1;
  }

  if (v4 < v3)
  {
    return 0;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 < v8)
  {
    return 1;
  }

  if (v8 < v7)
  {
    return 0;
  }

  v9 = *(a1 + 20);
  v10 = *(a2 + 20);
  if (v9 < v10)
  {
    return 1;
  }

  if (v10 < v9)
  {
    return 0;
  }

  v11 = *(a1 + 24);
  v12 = *(a2 + 24);
  if (v11 < v12)
  {
    return 1;
  }

  if (v12 >= v11)
  {
    return *(a1 + 28) < *(a2 + 28);
  }

  return 0;
}

void HGBlendingInfo::Get()
{
  if (__cxa_guard_acquire(&_MergedGlobals_17))
  {
    qword_280C5DDE8 = 0;
    qword_280C5DDF0 = 1;
    dword_280C5DDF8 = 1;
    unk_280C5DDFC = 0u;
    dword_280C5DE0C = 0;
    qword_280C5DE10 = 1;
    dword_280C5DE18 = 1;
    unk_280C5DE1C = 0u;
    dword_280C5DE2C = 0;
    qword_280C5DE30 = 1;
    dword_280C5DE38 = 1;
    unk_280C5DE3C = 0u;
    dword_280C5DE4C = 0;
    qword_280C5DE50 = 1;
    dword_280C5DE58 = 1;
    unk_280C5DE5C = 0u;
    dword_280C5DE6C = 0;
    qword_280C5DE70 = 1;
    dword_280C5DE78 = 1;
    dword_280C5DE8C = 0;
    unk_280C5DE7C = 0u;
    qword_280C5DE90 = 1;
    dword_280C5DE98 = 1;
    dword_280C5DEAC = 0;
    unk_280C5DE9C = 0u;
    qword_280C5DEB0 = 1;
    dword_280C5DEB8 = 1;
    dword_280C5DECC = 0;
    unk_280C5DEBC = 0u;
    qword_280C5DED0 = 1;
    dword_280C5DED8 = 1;
    dword_280C5DEEC = 0;
    unk_280C5DEDC = 0u;
    xmmword_280C5DEF0 = xmmword_26038F230;
    qword_280C5DF00 = 0;
    xmmword_280C5DF10 = xmmword_26034A870;
    qword_280C5DF20 = 0;
    qword_280C5DF08 = 3;
    qword_280C5DF28 = 0;
    qword_280C5DF30 = 1;
    dword_280C5DF38 = 1;
    dword_280C5DF4C = 0;
    xmmword_280C5DF3C = 0u;
    qword_280C5DF50 = 1;
    dword_280C5DF58 = 1;
    dword_280C5DF6C = 0;
    xmmword_280C5DF5C = 0u;
    qword_280C5DF70 = 1;
    dword_280C5DF78 = 1;
    dword_280C5DF8C = 0;
    xmmword_280C5DF7C = 0u;
    qword_280C5DF90 = 1;
    dword_280C5DF98 = 1;
    dword_280C5DFAC = 0;
    xmmword_280C5DF9C = 0u;
    xmmword_280C5DFB0 = xmmword_26038F230;
    qword_280C5DFC0 = 0;
    xmmword_280C5DFD0 = xmmword_2608129E0;
    qword_280C5DFE0 = 0;
    qword_280C5DFC8 = 3;
    qword_280C5DFE8 = 0;
    xmmword_280C5DFF0 = xmmword_26038F230;
    qword_280C5E000 = 0;
    xmmword_280C5E010 = xmmword_2608129F0;
    qword_280C5E020 = 0;
    qword_280C5E008 = 3;
    qword_280C5E028 = 0;
    qword_280C5E030 = 1;
    dword_280C5E038 = 1;
    dword_280C5E04C = 0;
    xmmword_280C5E03C = 0u;
    qword_280C5E050 = 1;
    dword_280C5E058 = 1;
    dword_280C5E06C = 0;
    xmmword_280C5E05C = 0u;
    qword_280C5E070 = 1;
    dword_280C5E078 = 1;
    dword_280C5E08C = 0;
    xmmword_280C5E07C = 0u;
    qword_280C5E090 = 1;
    dword_280C5E098 = 1;
    dword_280C5E0AC = 0;
    xmmword_280C5E09C = 0u;
    qword_280C5E0B0 = 1;
    dword_280C5E0B8 = 1;
    dword_280C5E0CC = 0;
    xmmword_280C5E0BC = 0u;
    qword_280C5E0D0 = 1;
    dword_280C5E0D8 = 1;
    dword_280C5E0EC = 0;
    xmmword_280C5E0DC = 0u;
    qword_280C5E0F0 = 1;
    dword_280C5E0F8 = 1;
    dword_280C5E10C = 0;
    xmmword_280C5E0FC = 0u;
    qword_280C5E110 = 1;
    dword_280C5E118 = 1;
    dword_280C5E12C = 0;
    xmmword_280C5E11C = 0u;
    qword_280C5E130 = 1;
    dword_280C5E138 = 1;
    dword_280C5E14C = 0;
    xmmword_280C5E13C = 0u;
    xmmword_280C5E150 = xmmword_26038F230;
    qword_280C5E160 = 0;
    xmmword_280C5E170 = xmmword_260812A00;
    qword_280C5E180 = 0;
    qword_280C5E168 = 3;
    qword_280C5E188 = 0;
    qword_280C5E190 = 1;
    dword_280C5E198 = 1;
    dword_280C5E1AC = 0;
    xmmword_280C5E19C = 0u;
    qword_280C5E1B0 = 1;
    dword_280C5E1B8 = 1;
    dword_280C5E1CC = 0;
    xmmword_280C5E1BC = 0u;
    qword_280C5E1D0 = 1;
    dword_280C5E1D8 = 1;
    dword_280C5E1EC = 0;
    xmmword_280C5E1DC = 0u;
    xmmword_280C5E1F0 = xmmword_26038F230;
    qword_280C5E200 = 0;
    xmmword_280C5E210 = xmmword_26038F220;
    qword_280C5E220 = 0;
    qword_280C5E208 = 3;
    qword_280C5E228 = 0;
    qword_280C5E230 = 1;
    dword_280C5E238 = 1;
    dword_280C5E24C = 0;
    xmmword_280C5E23C = 0u;
    xmmword_280C5E250 = xmmword_26038F230;
    qword_280C5E260 = 0;
    xmmword_280C5E270 = xmmword_260812A10;
    qword_280C5E280 = 0;
    qword_280C5E268 = 3;
    xmmword_280C5E290 = xmmword_260812A20;
    qword_280C5E2A0 = 0;
    qword_280C5E288 = 3;
    qword_280C5E2A8 = 0;
    qword_280C5E2B0 = 1;
    dword_280C5E2B8 = 1;
    dword_280C5E2CC = 0;
    xmmword_280C5E2BC = 0u;
    xmmword_280C5E2D0 = xmmword_26038F230;
    qword_280C5E2E0 = 0;
    *&v0 = 0x100000001;
    *(&v0 + 1) = 0x100000001;
    xmmword_280C5E2F0 = v0;
    qword_280C5E300 = 0x200000002;
    qword_280C5E2E8 = 0;
    xmmword_280C5E310 = xmmword_26038F230;
    qword_280C5E320 = 0;
    qword_280C5E308 = 0;

    __cxa_guard_release(&_MergedGlobals_17);
  }
}

int8x16_t HGMetalBlendingInfo::HGMetalBlendingInfo(uint64_t a1, int32x2_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = vcgt_u32(0xD0000000DLL, v2);
  v5 = vsub_s32(vand_s8(v2, v4), vmvn_s8(v4));
  v6.i64[0] = v5.u32[0];
  v6.i64[1] = v5.u32[1];
  v7 = v6;
  v8 = vcgt_u32(0xD0000000DLL, v3);
  v9 = vsub_s32(vand_s8(v3, v8), vmvn_s8(v8));
  v6.i64[0] = v9.u32[0];
  v6.i64[1] = v9.u32[1];
  *a1 = v7;
  *(a1 + 16) = v6;
  v10 = vadd_s32(a2[3], -1);
  v6.i64[0] = v10.u32[0];
  v6.i64[1] = v10.u32[1];
  result = vandq_s8(vaddw_u32(vdupq_n_s64(1uLL), v10), vcgtq_u64(vdupq_n_s64(4uLL), v6));
  *(a1 + 32) = result;
  return result;
}

void HGGLHandler::HGGLHandler(HGGLHandler *this)
{
  HGHandler::HGHandler(this);
  *v1 = &unk_287219050;
  *(v1 + 248) = 3553;
}

void HGGLHandler::SetFilter(HGGLHandler *this, _BOOL4 a2, _BOOL4 a3)
{
  v3 = a3;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = *(this + 59) != 0;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  v3 = *(this + 59) != 0;
LABEL_3:
  v6 = *(this + 62);
  if (v4)
  {
    v7 = 9729;
  }

  else
  {
    v7 = 9728;
  }

  glTexParameteri(v6, 0x2800u, v7);
  if (v3)
  {
    v8 = 9729;
  }

  else
  {
    v8 = 9728;
  }

  glTexParameteri(*(this + 62), 0x2801u, v8);
  v11 = atomic_load(HGLogger::_enabled);
  if ((v11 & 1) == 0)
  {
    v12 = atomic_load(HGLogger::_enabled);
    if ((v12 & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v4)
  {
    v13 = "linear";
  }

  else
  {
    v13 = "nearest";
  }

  HGLogger::log("gpu", 1, "min filter: %s\n", v9, v10, v13);
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
LABEL_16:
    if (v3)
    {
      v15 = "linear";
    }

    else
    {
      v15 = "nearest";
    }

    HGLogger::log("gpu", 1, "mag filter: %s\n", v9, v10, v15);
  }
}

uint64_t HGGLHandler::ActiveTexture(HGGLHandler *this, int a2, int a3)
{
  v5 = (*(this + 40) + a2);
  glActiveTexture(v5 + 33984);
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 1, "active texture: %d\n", v6, v7, v5);
  }

  if (a3)
  {
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      HGLogger::log("gpu", 1, "physical translate: { %d, %d, %lf }\n", v6, v7, *(this + 60), *(this + 61), 0);
    }
  }

  return v5;
}

void HGGLHandler::LoadIdentity(HGGLHandler *this, uint64_t a2, uint64_t a3, const char *a4, char *a5)
{
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    HGLogger::log("gpu", 1, "load identity\n", a4, a5);
  }
}

void HGGLHandler::Translate(HGGLHandler *this, double a2, double a3, double a4, uint64_t a5, uint64_t a6, const char *a7, char *a8)
{
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 1, "translate: { %lf, %lf, %lf }\n", a7, a8, *&a2, *&a3, *&a4);
  }
}

void HGGLHandler::Scale(HGGLHandler *this, double a2, double a3, double a4, uint64_t a5, uint64_t a6, const char *a7, char *a8)
{
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 1, "scale: { %lf, %lf, %lf }\n", a7, a8, *&a2, *&a3, *&a4);
  }
}

void HGGLHandler::MultMatrix(HGGLHandler *this, const double *a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("gpu", 1, "mult: { { %lf, %lf, %lf, %lf}, \n", a4, a5, *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3));
    v10 = atomic_load(HGLogger::_enabled);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v8 = atomic_load(HGLogger::_enabled);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf}, \n", a4, a5, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  v11 = atomic_load(HGLogger::_enabled);
  if ((v11 & 1) == 0)
  {
LABEL_4:
    v9 = atomic_load(HGLogger::_enabled);
    if ((v9 & 1) == 0)
    {
      return;
    }

LABEL_9:
    HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf} }\n", a4, a5, *(a2 + 12), *(a2 + 13), *(a2 + 14), *(a2 + 15));
    return;
  }

LABEL_8:
  HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf}, \n", a4, a5, *(a2 + 8), *(a2 + 9), *(a2 + 10), *(a2 + 11));
  v12 = atomic_load(HGLogger::_enabled);
  if (v12)
  {
    goto LABEL_9;
  }
}

void HGGLHandler::MultMatrix(HGGLHandler *this, const float *a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("gpu", 1, "mult: { { %lf, %lf, %lf, %lf}, \n", a4, a5, *a2, a2[1], a2[2], a2[3]);
    v10 = atomic_load(HGLogger::_enabled);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v8 = atomic_load(HGLogger::_enabled);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf}, \n", a4, a5, a2[4], a2[5], a2[6], a2[7]);
  v11 = atomic_load(HGLogger::_enabled);
  if ((v11 & 1) == 0)
  {
LABEL_4:
    v9 = atomic_load(HGLogger::_enabled);
    if ((v9 & 1) == 0)
    {
      return;
    }

LABEL_9:
    HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf} }\n", a4, a5, a2[12], a2[13], a2[14], a2[15]);
    return;
  }

LABEL_8:
  HGLogger::log("gpu", 1, "        { %lf, %lf, %lf, %lf}, \n", a4, a5, a2[8], a2[9], a2[10], a2[11]);
  v12 = atomic_load(HGLogger::_enabled);
  if (v12)
  {
    goto LABEL_9;
  }
}

void HGGLSLHandler::~HGGLSLHandler(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

HGGLSLHandler *HGGLSLHandler::Reset(HGGLSLHandler *this, HGRenderer *a2, int a3)
{
  HGHandler::Reset(this, a2);
  *(this + 63) = a3;
  *(this + 96) = 0;
  GLState = HGGPURenderer::GetGLState(a2);
  UniformLocation = HGGLState::getUniformLocation(GLState, *(this + 63), 0, 0);
  *(this + 194) = UniformLocation;
  if (a2)
  {
    v8 = UniformLocation;
    if (v8 != -1 && v9 != 0)
    {
      ProjectionMatrix = HGGPURenderer::GetProjectionMatrix(v9);
      (*(*ProjectionMatrix + 40))(ProjectionMatrix, this + 780);
      glUniformMatrix4fv(*(this + 194), 1, 0, this + 195);
      v16 = atomic_load(HGLogger::_enabled);
      if (v16)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (projection) :\n", v14, v15, *(this + 194));
      }

      log_matrix(this + 195, v12, v13, v14, v15);
    }
  }

  *(this + 16) = xmmword_2603429B0;
  *(this + 17) = xmmword_2603429C0;
  *(this + 18) = xmmword_2603429D0;
  *(this + 19) = xmmword_2603427D0;
  *(this + 20) = xmmword_2603429B0;
  *(this + 21) = xmmword_2603429C0;
  *(this + 22) = xmmword_2603429D0;
  *(this + 23) = xmmword_2603427D0;
  *(this + 24) = xmmword_2603429B0;
  *(this + 25) = xmmword_2603429C0;
  *(this + 26) = xmmword_2603429D0;
  *(this + 27) = xmmword_2603427D0;
  *(this + 28) = xmmword_2603429B0;
  *(this + 29) = xmmword_2603429C0;
  *(this + 30) = xmmword_2603429D0;
  *(this + 31) = xmmword_2603427D0;
  *(this + 32) = xmmword_2603429B0;
  *(this + 33) = xmmword_2603429C0;
  *(this + 34) = xmmword_2603429D0;
  *(this + 35) = xmmword_2603427D0;
  *(this + 36) = xmmword_2603429B0;
  *(this + 37) = xmmword_2603429C0;
  *(this + 38) = xmmword_2603429D0;
  *(this + 39) = xmmword_2603427D0;
  *(this + 40) = xmmword_2603429B0;
  *(this + 41) = xmmword_2603429C0;
  *(this + 42) = xmmword_2603429D0;
  *(this + 43) = xmmword_2603427D0;
  *(this + 44) = xmmword_2603429B0;
  *(this + 45) = xmmword_2603429C0;
  *(this + 46) = xmmword_2603429D0;
  *(this + 47) = xmmword_2603427D0;
  return this;
}

void log_matrix(float *a1, int a2, const float *a3, const char *a4, char *a5)
{
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    HGLogger::log("gpu", 2, " { { %lf, %lf, %lf, %lf}, \n", a4, a5, *a1, a1[1], a1[2], a1[3]);
    v10 = atomic_load(HGLogger::_enabled);
    if ((v10 & 1) == 0)
    {
LABEL_3:
      v8 = atomic_load(HGLogger::_enabled);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = atomic_load(HGLogger::_enabled);
    if ((v7 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", a4, a5, a1[4], a1[5], a1[6], a1[7]);
  v11 = atomic_load(HGLogger::_enabled);
  if ((v11 & 1) == 0)
  {
LABEL_4:
    v9 = atomic_load(HGLogger::_enabled);
    if ((v9 & 1) == 0)
    {
      return;
    }

LABEL_9:
    HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf} }\n", a4, a5, a1[12], a1[13], a1[14], a1[15]);
    return;
  }

LABEL_8:
  HGLogger::log("gpu", 2, "   { %lf, %lf, %lf, %lf}, \n", a4, a5, a1[8], a1[9], a1[10], a1[11]);
  v12 = atomic_load(HGLogger::_enabled);
  if (v12)
  {
    goto LABEL_9;
  }
}

void HGGLSLHandler::LoadModelViewMatrix(float32x2_t *this, const simd::float4x4 *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = (&this[97] + 4);
  HGHandler::LoadModelViewMatrix(this, a2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v3, COERCE_FLOAT(*this[4].f32)), v4, this[4], 1), v5, *this[4].f32, 2), v6, *this[4].f32, 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v3, COERCE_FLOAT(*this[6].f32)), v4, this[6], 1), v5, *this[6].f32, 2), v6, *this[6].f32, 3);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v3, COERCE_FLOAT(*this[8].f32)), v4, this[8], 1), v5, *this[8].f32, 2), v6, *this[8].f32, 3);
  *value = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v3, COERCE_FLOAT(*this[2].f32)), v4, this[2], 1), v5, *this[2].f32, 2), v6, *this[2].f32, 3);
  v16 = v7;
  v17 = v8;
  v18 = v9;
  glUniformMatrix4fv(this[97].i32[0], 1, 0, value);
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("gpu", 2, "uniform matrix %d (model-view-projection) :\n", v12, v13, this[97].u32[0]);
  }

  log_matrix(value, v10, v11, v12, v13);
}

void HGGLSLHandler::Commit(HGGLSLHandler *this)
{
  GLState = HGGPURenderer::GetGLState(*(this + 18));
  v3 = GLState;
  if (*(this + 772))
  {
    UniformLocation = HGGLState::getUniformLocation(GLState, *(this + 63), 1, 0);
    if (UniformLocation != -1)
    {
      v5 = UniformLocation;
      glUniformMatrix4fv(UniformLocation, 1, 0, this + 64);
      v10 = atomic_load(HGLogger::_enabled);
      if (v10)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v8, v9, v5);
      }

      log_matrix(this + 64, v6, v7, v8, v9);
    }
  }

  if ((*(this + 772) & 2) != 0)
  {
    v11 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 1);
    if (v11 != -1)
    {
      v12 = v11;
      glUniformMatrix4fv(v11, 1, 0, this + 80);
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v15, v16, v12);
      }

      log_matrix(this + 80, v13, v14, v15, v16);
    }
  }

  if ((*(this + 772) & 4) != 0)
  {
    v18 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 2);
    if (v18 != -1)
    {
      v19 = v18;
      glUniformMatrix4fv(v18, 1, 0, this + 96);
      v24 = atomic_load(HGLogger::_enabled);
      if (v24)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v22, v23, v19);
      }

      log_matrix(this + 96, v20, v21, v22, v23);
    }
  }

  if ((*(this + 772) & 8) != 0)
  {
    v25 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 3);
    if (v25 != -1)
    {
      v26 = v25;
      glUniformMatrix4fv(v25, 1, 0, this + 112);
      v31 = atomic_load(HGLogger::_enabled);
      if (v31)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v29, v30, v26);
      }

      log_matrix(this + 112, v27, v28, v29, v30);
    }
  }

  if ((*(this + 772) & 0x10) != 0)
  {
    v32 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 4);
    if (v32 != -1)
    {
      v33 = v32;
      glUniformMatrix4fv(v32, 1, 0, this + 128);
      v38 = atomic_load(HGLogger::_enabled);
      if (v38)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v36, v37, v33);
      }

      log_matrix(this + 128, v34, v35, v36, v37);
    }
  }

  if ((*(this + 772) & 0x20) != 0)
  {
    v39 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 5);
    if (v39 != -1)
    {
      v40 = v39;
      glUniformMatrix4fv(v39, 1, 0, this + 144);
      v45 = atomic_load(HGLogger::_enabled);
      if (v45)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v43, v44, v40);
      }

      log_matrix(this + 144, v41, v42, v43, v44);
    }
  }

  if ((*(this + 772) & 0x40) != 0)
  {
    v46 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 6);
    if (v46 != -1)
    {
      v47 = v46;
      glUniformMatrix4fv(v46, 1, 0, this + 160);
      v52 = atomic_load(HGLogger::_enabled);
      if (v52)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v50, v51, v47);
      }

      log_matrix(this + 160, v48, v49, v50, v51);
    }
  }

  if ((*(this + 772) & 0x80) != 0)
  {
    v53 = HGGLState::getUniformLocation(v3, *(this + 63), 1, 7);
    if (v53 != -1)
    {
      v54 = v53;
      glUniformMatrix4fv(v53, 1, 0, this + 176);
      v59 = atomic_load(HGLogger::_enabled);
      if (v59)
      {
        HGLogger::log("gpu", 2, "uniform matrix %d (texture) :\n", v57, v58, v54);
      }

      log_matrix(this + 176, v55, v56, v57, v58);
    }
  }
}

uint64_t HGGLSLHandler::ActiveTexture(int32x2_t *this, int a2, int a3)
{
  v5 = (this[20].i32[0] + a2);
  this[96].i32[0] = v5;
  glActiveTexture(v5 + 33984);
  if (a3)
  {
    *&v6 = vcvt_f32_s32(this[30]);
    *(&v6 + 1) = 0x3F80000000000000;
    *this[8 * this[96].u32[0] + 38].i8 = v6;
  }

  return v5;
}

double HGGLSLHandler::LoadIdentity(HGGLSLHandler *this)
{
  *(this + 4 * *(this + 192) + 16) = xmmword_2603429B0;
  v1 = *(this + 192);
  v2 = (this + 64 * v1 + 256);
  v2[1] = xmmword_2603429C0;
  v2[2] = xmmword_2603429D0;
  result = 0.0;
  v2[3] = xmmword_2603427D0;
  *(this + 193) |= 1 << v1;
  return result;
}

float32x4_t HGGLSLHandler::Translate(HGGLSLHandler *this, double a2, double a3, double a4)
{
  v4 = *(this + 192);
  v5 = (this + 64 * v4);
  v6 = a2;
  v7 = a3;
  v8 = a4;
  result = vaddq_f32(vaddq_f32(vmulq_n_f32(v5[16], v6), vmulq_n_f32(v5[17], v7)), vaddq_f32(vmulq_n_f32(v5[18], v8), v5[19]));
  v5[19] = result;
  *(this + 193) |= 1 << v4;
  return result;
}

float32x4_t HGGLSLHandler::Scale(HGGLSLHandler *this, double a2, double a3, double a4)
{
  v4 = (this + 64 * *(this + 192));
  v5 = a2;
  result = vmulq_n_f32(v4[16], v5);
  v7 = a3;
  v8 = a4;
  v9 = vmulq_n_f32(v4[17], v7);
  v10 = vmulq_n_f32(v4[18], v8);
  v4[16] = result;
  v4[17] = v9;
  v4[18] = v10;
  *(this + 193) |= 1 << *(this + 192);
  return result;
}

float32x4_t HGGLSLHandler::MultMatrix(HGGLSLHandler *this, const double *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v14 = a2[12];
  v15 = a2[13];
  v16 = a2[14];
  v17 = a2[15];
  v18 = (this + 64 * *(this + 192));
  v19 = v18[16];
  v20 = v18[17];
  v21 = vaddq_f32(vmulq_n_f32(v19, v2), vmulq_n_f32(v20, v3));
  v22 = v18[18];
  v23 = v18[19];
  result = vaddq_f32(v21, vaddq_f32(vmulq_n_f32(v22, v4), vmulq_n_f32(v23, v5)));
  v18[16] = result;
  v18[17] = vaddq_f32(vaddq_f32(vmulq_n_f32(v19, v6), vmulq_n_f32(v20, v7)), vaddq_f32(vmulq_n_f32(v22, v8), vmulq_n_f32(v23, v9)));
  v18[18] = vaddq_f32(vaddq_f32(vmulq_n_f32(v19, v10), vmulq_n_f32(v20, v11)), vaddq_f32(vmulq_n_f32(v22, v12), vmulq_n_f32(v23, v13)));
  v18[19] = vaddq_f32(vaddq_f32(vmulq_n_f32(v19, v14), vmulq_n_f32(v20, v15)), vaddq_f32(vmulq_n_f32(v22, v16), vmulq_n_f32(v23, v17)));
  *(this + 193) |= 1 << *(this + 192);
  return result;
}

float32x4_t HGGLSLHandler::MultMatrix(HGGLSLHandler *this, const float *a2)
{
  v2 = (this + 64 * *(this + 192));
  v3 = v2[16];
  v4 = v2[17];
  v5 = v2[18];
  v6 = v2[19];
  result = vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*a2)), vmulq_lane_f32(v4, *a2, 1)), vaddq_f32(vmulq_laneq_f32(v5, *a2, 2), vmulq_laneq_f32(v6, *a2, 3)));
  v8 = vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(a2 + 1))), vmulq_lane_f32(v4, *(a2 + 4), 1)), vaddq_f32(vmulq_laneq_f32(v5, *(a2 + 4), 2), vmulq_laneq_f32(v6, *(a2 + 4), 3)));
  v9 = vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(a2 + 2))), vmulq_lane_f32(v4, *(a2 + 8), 1)), vaddq_f32(vmulq_laneq_f32(v5, *(a2 + 8), 2), vmulq_laneq_f32(v6, *(a2 + 8), 3)));
  v10 = vaddq_f32(vaddq_f32(vmulq_n_f32(v3, COERCE_FLOAT(*(a2 + 3))), vmulq_lane_f32(v4, *(a2 + 12), 1)), vaddq_f32(vmulq_laneq_f32(v5, *(a2 + 12), 2), vmulq_laneq_f32(v6, *(a2 + 12), 3)));
  v2[16] = result;
  v2[17] = v8;
  v2[18] = v9;
  v2[19] = v10;
  *(this + 193) |= 1 << *(this + 192);
  return result;
}

float32x4_t HGGLSLHandler::Normalize(HGGLSLHandler *this)
{
  __asm { FMOV            V1.2S, #1.0 }

  *v6.f32 = vdiv_f32(_D1, vcvt_f32_u32(vsub_s32(*(this + 228), *(this + 220))));
  *&v6.u32[2] = _D1;
  v7 = (this + 64 * *(this + 192));
  v8 = vmulq_f32(v7[16], v6);
  v9 = vmulq_f32(v7[17], v6);
  v10 = vmulq_f32(v7[18], v6);
  result = vmulq_f32(v6, v7[19]);
  v7[16] = v8;
  v7[17] = v9;
  v7[18] = v10;
  v7[19] = result;
  *(this + 193) |= 1 << *(this + 192);
  return result;
}

void HGGLSLHandler::Rect(HGGLSLHandler *this, HGRect a2, int a3)
{
  v7 = *MEMORY[0x277D85DE8];
  ptr[0] = a2.var0;
  ptr[1] = a2.var1;
  ptr[2] = a2.var2;
  ptr[3] = a2.var1;
  ptr[4] = a2.var0;
  ptr[5] = a2.var3;
  ptr[6] = a2.var2;
  ptr[7] = a2.var3;
  if (a3 < 1)
  {
    glVertexAttribPointer(0, 2, 0x1406u, 0, 0, ptr);
    glEnableVertexAttribArray(0);
    glDrawArrays(5u, 0, 4);
  }

  else
  {
    v4 = a3 + 7;
    do
    {
      glVertexAttribPointer(v4, 2, 0x1406u, 0, 0, ptr);
      glEnableVertexAttribArray(v4--);
    }

    while (v4 != 7);
    glVertexAttribPointer(0, 2, 0x1406u, 0, 0, ptr);
    glEnableVertexAttribArray(0);
    glDrawArrays(5u, 0, 4);
    v5 = a3 + 7;
    do
    {
      glVertexAttribPointer(v5, 2, 0x1406u, 0, 0, 0);
      glDisableVertexAttribArray(v5--);
    }

    while (v5 != 7);
  }

  glVertexAttribPointer(0, 2, 0x1406u, 0, 0, 0);
  glDisableVertexAttribArray(0);
}

uint64_t HGGLSLHandler::LocalParameter(HGGLSLHandler *this, int a2, GLfloat a3, GLfloat a4, GLfloat a5, GLfloat a6)
{
  v11 = (*(this + 42) + a2);
  GLState = HGGPURenderer::GetGLState(*(this + 18));
  UniformLocation = HGGLState::getUniformLocation(GLState, *(this + 63), 2, v11);
  if (UniformLocation != -1)
  {
    glUniform4f(UniformLocation, a3, a4, a5, a6);
    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      HGLogger::log("gpu", 1, "program_local(%d): { %f, %f, %f, %f }\n", v14, v15, v11, a3, a4, a5, a6);
    }
  }

  return v11;
}

uint64_t HGGLSLHandler::LocalParameters(HGGLSLHandler *this, uint64_t a2, float *a3, int a4)
{
  if (a4 >= 1)
  {
    v5 = a4;
    v8 = a2;
    do
    {
      (*(*this + 136))(this, v8, *a3, a3[1], a3[2], a3[3]);
      a3 += 4;
      v8 = (v8 + 1);
      --v5;
    }

    while (v5);
  }

  return a2;
}

void HFDenseCRF::~HFDenseCRF(HFDenseCRF *this)
{
  *this = &unk_287219248;
}

{
  *this = &unk_287219248;
  JUMPOUT(0x2666E9F00);
}

uint64_t HFDenseCRF::GenerateMask(HFDenseCRF *this, HGBitmap *a2, HGBitmap *a3, HGBitmap *a4, float a5, float a6, double a7, float a8, float a9, double a10, uint64_t a11)
{
  v11 = *(a2 + 7);
  v12 = *(a2 + 5);
  if (v11 - v12 != *(a3 + 7) - *(a3 + 5) || (v14 = *(a2 + 8), v15 = *(a2 + 6), v14 - v15 != *(a3 + 8) - *(a3 + 6)) || v11 - v12 != *(a4 + 7) - *(a4 + 5) || v14 - v15 != *(a4 + 8) - *(a4 + 6))
  {
    v17 = "Error: inputs to CRF must be the same size";
LABEL_67:
    puts(v17);
    return 1;
  }

  if (*(a2 + 4) != 21)
  {
    v17 = "Error: image buffer for CRF must have 3 channels of 32-floats";
    goto LABEL_67;
  }

  v16 = *(a3 + 4);
  v17 = "Error: probability buffer for CRF must have up to 3 channels of 32-floats";
  if (v16 > 0x15 || ((1 << v16) & 0x202080) == 0)
  {
    goto LABEL_67;
  }

  if (*(a4 + 4) != 7)
  {
    v17 = "Error: matte buffer for CRF must have 1 channel of 32-floats";
    goto LABEL_67;
  }

  v166 = *(a2 + 5);
  v167 = *(a2 + 7);
  v161 = (v14 - v15);
  v178 = (v11 - v12);
  v168 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v168, *(a2 + 20), *(a2 + 28), 13);
  v163 = v15;
  v164 = v14;
  if (v14 != v15 && v167 != v166)
  {
    v19 = *(a3 + 10);
    v20 = *(a3 + 8);
    v21 = v168[10];
    v22 = v168[8];
    if (v178 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v178;
    }

    v24 = v161;
    if (v161 <= 1)
    {
      v24 = 1;
    }

    v187 = v24;
    v25 = v24 - 1;
    v28 = v21 < v19 + v20 * v25 + 8 * v23 && v19 < v21 + v22 * v25 + 8 * v23 || (v22 | v20) < 0;
    v183 = v28;
    if (v178 < 4)
    {
      v29 = 0;
      v30 = (v21 + 4);
      v31 = (v19 + 4);
      do
      {
        v32 = v31;
        v33 = v30;
        v34 = v23;
        do
        {
          v35 = expf(-*(v32 - 1));
          v36 = *v32;
          v32 += 2;
          v37 = expf(-v36);
          v38 = 1.0 / (v35 + v37);
          *(v33 - 1) = v35 * v38;
          *v33 = v37 * v38;
          v33 += 2;
          --v34;
        }

        while (v34);
        ++v29;
        v30 = (v30 + v22);
        v31 = (v31 + v20);
      }

      while (v29 != v187);
      goto LABEL_30;
    }

    v112 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v190 = _Q0;
    do
    {
      v114 = v22;
      v115 = v20;
      if (v183)
      {
        v116 = 0;
      }

      else
      {
        v117 = v23 & 0xFFFFFFFC;
        v118 = v19;
        v119 = v21;
        do
        {
          v212 = vld2q_f32(v118);
          v118 += 8;
          v197 = v212.val[1];
          v200 = vnegq_f32(v212.val[0]);
          v207 = expf(v200.f32[1]);
          v120.f32[0] = expf(v200.f32[0]);
          v120.f32[1] = v207;
          v208 = v120;
          v121 = expf(v200.f32[2]);
          v122 = v208;
          v122.f32[2] = v121;
          v209 = v122;
          v123 = expf(v200.f32[3]);
          v124 = v209;
          v124.f32[3] = v123;
          v210 = v124;
          v201 = vnegq_f32(v197);
          v194 = expf(v201.f32[1]);
          v125.f32[0] = expf(v201.f32[0]);
          v125.f32[1] = v194;
          v195 = v125;
          v126 = expf(v201.f32[2]);
          v127 = v195;
          v127.f32[2] = v126;
          v196 = v127;
          v128 = expf(v201.f32[3]);
          v129 = v196;
          v129.f32[3] = v128;
          v130 = v129;
          v131 = vdivq_f32(v190, vaddq_f32(v210, v129));
          v213.val[0] = vmulq_f32(v210, v131);
          v213.val[1] = vmulq_f32(v130, v131);
          vst2q_f32(v119, v213);
          v119 += 8;
          v117 -= 4;
        }

        while (v117);
        v116 = v23 & 0xFFFFFFFC;
        if (v116 == v178)
        {
          goto LABEL_97;
        }
      }

      v132 = v23 - v116;
      v133 = (8 * v116) | 4;
      do
      {
        v134 = expf(-*(v19 + v133 - 4));
        v135 = expf(-*(v19 + v133));
        v136 = 1.0 / (v134 + v135);
        v137 = (v21 + v133);
        *(v137 - 1) = v134 * v136;
        *v137 = v135 * v136;
        v133 += 8;
        --v132;
      }

      while (v132);
LABEL_97:
      ++v112;
      v22 = v114;
      v21 += v114;
      v20 = v115;
      v19 += v115;
    }

    while (v112 != v187);
  }

LABEL_30:
  v39 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v39, *(v168 + 20), *(v168 + 28), *(v168 + 4));
  v165 = v39;
  v162 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v162, *(v168 + 20), *(v168 + 28), *(v168 + 4));
  v42 = v178;
  if (!a11)
  {
    goto LABEL_80;
  }

  v43 = v168;
  v44 = v39;
  if (v164 == v163)
  {
    goto LABEL_130;
  }

  if (v167 == v166)
  {
    goto LABEL_81;
  }

  v45 = 0;
  v46 = *(a3 + 10);
  v47 = *(a3 + 8);
  v48 = v165[10];
  v49 = v165[8];
  v50 = v161;
  v51 = v162[10];
  v52 = v162[8];
  v53 = v168[10];
  v54 = v168[8];
  if (v178 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v178;
  }

  if (v161 <= 1)
  {
    v50 = 1;
  }

  v180 = v50;
  v56 = v50 - 1;
  v57 = v53 + v54 * v56 + 8 * v55;
  v58 = v46 + v47 * v56 + 8 * v55;
  v59 = v48 + v49 * v56 + 8 * v55;
  v60 = v51 + v52 * v56 + 8 * v55;
  v171 = v165[10];
  v172 = v46;
  v63 = v53 < v58 && v46 < v57 || (v54 | v47) < 0;
  if (v53 < v59 && v48 < v57 || (v54 | v49) < 0)
  {
    v63 = 1;
  }

  v169 = v168[10];
  v170 = v162[10];
  v66 = v53 >= v60 || v51 >= v57;
  v181 = v168[8];
  v68 = !v66 || (v54 | v52) < 0 || v63;
  v69 = vdupq_lane_s32(*&a7, 0).u64[0];
  v70 = vdupq_lane_s32(*&a10, 0).u64[0];
  v179 = (v178 < 4) | v68;
  __asm { FMOV            V0.4S, #1.0 }

  v188 = v70;
  v189 = v69;
  v184 = _Q0;
  v176 = v165[8];
  v177 = v47;
  v175 = v162[8];
  while (2)
  {
    v174 = v45;
    v75 = 0;
    v77 = v171;
    v76 = v172;
    v79 = v169;
    v78 = v170;
    do
    {
      v182 = v75;
      if (v179)
      {
        for (i = 0; i != v55; ++i)
        {
LABEL_76:
          v98 = vadd_f32(vsub_f32(vmul_f32(*&v77[2 * i], v69), *&v76[2 * i]), vmul_f32(*&v78[2 * i], v70));
          v199 = v98.f32[0];
          v99.n128_f32[0] = expf(v98.f32[1]);
          v206 = v99;
          _Q0.n128_f32[0] = expf(v199);
          v70 = v188;
          v69 = v189;
          v41 = v206;
          _Q0.n128_u32[1] = v206.n128_u32[0];
          v41.n128_f32[0] = 1.0 / vaddv_f32(_Q0.n128_u64[0]);
          _Q0.n128_u64[0] = vmul_n_f32(_Q0.n128_u64[0], v41.n128_f32[0]);
          *&v79[2 * i] = _Q0.n128_u64[0];
        }

        goto LABEL_70;
      }

      v81 = v55 & 0xFFFFFFFC;
      v82 = v76;
      v83 = v77;
      v84 = v78;
      v85 = v79;
      do
      {
        v211 = vld2q_f32(v82);
        v82 += 8;
        v214 = vld2q_f32(v83);
        v83 += 8;
        v216 = vld2q_f32(v84);
        v84 += 8;
        v191 = vaddq_f32(vsubq_f32(vmulq_n_f32(v214.val[0], *&a7), v211.val[0]), vmulq_n_f32(v216.val[0], *&a10));
        v198 = vaddq_f32(vsubq_f32(vmulq_n_f32(v214.val[1], *&a7), v211.val[1]), vmulq_n_f32(v216.val[1], *&a10));
        v202 = expf(v191.f32[1]);
        v86.f32[0] = expf(v191.f32[0]);
        v86.f32[1] = v202;
        v203 = v86;
        v87 = expf(v191.f32[2]);
        v88 = v203;
        v88.f32[2] = v87;
        v204 = v88;
        v89 = expf(v191.f32[3]);
        v90 = v204;
        v90.f32[3] = v89;
        v205 = v90;
        v191.i32[0] = expf(v198.f32[1]);
        v91.f32[0] = expf(v198.f32[0]);
        v91.i32[1] = v191.i32[0];
        v192 = v91;
        v92 = expf(v198.f32[2]);
        v93 = v192;
        v93.f32[2] = v92;
        v193 = v93;
        v94 = expf(v198.f32[3]);
        v95 = v193;
        v95.f32[3] = v94;
        v96 = v95;
        _Q0 = vdivq_f32(v184, vaddq_f32(v205, v95));
        v41 = vmulq_f32(v205, _Q0);
        v97 = vmulq_f32(v96, _Q0);
        vst2q_f32(v85, *v41.n128_u64);
        v85 += 8;
        v81 -= 4;
      }

      while (v81);
      i = v55 & 0xFFFFFFFC;
      v47 = v177;
      v42 = v178;
      v52 = v175;
      v49 = v176;
      v70 = v188;
      v69 = v189;
      if (i != v178)
      {
        goto LABEL_76;
      }

LABEL_70:
      v75 = v182 + 1;
      v79 = (v79 + v181);
      v78 = (v78 + v52);
      v77 = (v77 + v49);
      v76 = (v76 + v47);
    }

    while (v182 + 1 != v180);
    v45 = v174 + 1;
    if (v174 + 1 != a11)
    {
      continue;
    }

    break;
  }

LABEL_80:
  v43 = v168;
  v44 = v165;
  if (v164 != v163)
  {
LABEL_81:
    if (v167 != v166)
    {
      v100 = v43[10];
      v101 = v43[8];
      v102 = v161;
      v103 = *(a4 + 10);
      v104 = *(a4 + 8);
      if (v42 <= 1)
      {
        v105 = 1;
      }

      else
      {
        v105 = v42;
      }

      if (v161 <= 1)
      {
        v102 = 1;
      }

      if (v42 > 7)
      {
        v138 = v100 >= v103 + v104 * (v102 - 1) + 4 * v105 || v103 >= v100 + v101 * (v102 - 1) + 8 * v105;
        if (!v138 || (v104 | v101) < 0)
        {
          v154 = 0;
          v155 = (v100 + 4);
          _Q0.n128_u64[0] = 0;
          v41.n128_u32[0] = 1.0;
          do
          {
            v156 = v155;
            v157 = v103;
            v158 = v105;
            do
            {
              if (*(v156 - 1) <= *v156)
              {
                v159 = 0.0;
              }

              else
              {
                v159 = 1.0;
              }

              *v157++ = v159;
              v156 += 2;
              --v158;
            }

            while (v158);
            ++v154;
            v103 += v104;
            v155 = (v155 + v101);
          }

          while (v154 != v102);
        }

        else
        {
          v139 = 0;
          v140 = v105 & 0xFFFFFFF8;
          v141 = (v100 + 32);
          v142 = (v103 + 16);
          v143 = v105 >> 3;
          v144 = (v103 + 32 * v143);
          v145 = v100 + (v143 << 6) + 4;
          __asm { FMOV            V0.4S, #1.0 }

          v41.n128_u64[0] = 0;
          do
          {
            v146 = v140;
            v147 = v142;
            v148 = v141;
            do
            {
              v149 = v148 - 8;
              v215 = vld2q_f32(v149);
              v217 = vld2q_f32(v148);
              v147[-1] = vandq_s8(_Q0, vcgtq_f32(v215.val[0], v215.val[1]));
              *v147 = vandq_s8(_Q0, vcgtq_f32(v217.val[0], v217.val[1]));
              v148 += 16;
              v147 += 2;
              v146 -= 8;
            }

            while (v146);
            if (v42 != v140)
            {
              v150 = v145;
              v151 = v144;
              v152 = v42 - v140;
              do
              {
                if (*(v150 - 1) <= *v150)
                {
                  v153 = 0.0;
                }

                else
                {
                  v153 = 1.0;
                }

                *v151++ = v153;
                v150 += 2;
                --v152;
              }

              while (v152);
            }

            ++v139;
            v141 = (v141 + v101);
            v142 = (v142 + v104);
            v144 = (v144 + v104);
            v145 += v101;
          }

          while (v139 != v102);
        }
      }

      else
      {
        v106 = 0;
        v107 = (v100 + 4);
        _Q0.n128_u64[0] = 0;
        v41.n128_u32[0] = 1.0;
        do
        {
          v108 = v107;
          v109 = v103;
          v110 = v105;
          do
          {
            if (*(v108 - 1) <= *v108)
            {
              v111 = 0.0;
            }

            else
            {
              v111 = 1.0;
            }

            *v109++ = v111;
            v108 += 2;
            --v110;
          }

          while (v110);
          ++v106;
          v103 += v104;
          v107 = (v107 + v101);
        }

        while (v106 != v102);
      }
    }
  }

LABEL_130:
  if (v162)
  {
    (*(*v162 + 24))(v162, _Q0, v41);
  }

  if (v44)
  {
    (*(*v44 + 24))(v44, _Q0, v41);
  }

  if (v43)
  {
    (*(*v43 + 24))(v43, _Q0, v41);
  }

  return 0;
}

void sub_25FC5660C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  HGObject::operator delete(__p);
  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  (*(*a15 + 24))(a15);
  _Unwind_Resume(a1);
}

uint64_t HGComputeDevice::HGComputeDevice()
{
  v0 = MEMORY[0x28223BE20]();
  v5 = *MEMORY[0x277D85DE8];
  *v0 = &unk_287219278;
  *(v0 + 8) = v1;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  if (!gethostname(v3.sysname, 0x1000uLL))
  {
    v4 = 0;
    MEMORY[0x2666E99D0](v0 + 16, &v3);
    if (uname(&v3))
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (*(v0 + 39) < 0)
  {
    **(v0 + 16) = 0;
    *(v0 + 24) = 0;
    if (uname(&v3))
    {
      goto LABEL_6;
    }

LABEL_9:
    MEMORY[0x2666E99D0](v0 + 40, &v3);
    std::string::push_back((v0 + 40), 32);
    std::string::append((v0 + 40), v3.release);
    std::string::push_back((v0 + 40), 32);
    std::string::append((v0 + 40), v3.machine);
    std::string::push_back((v0 + 40), 32);
    std::string::append((v0 + 40), v3.version);
    return v0;
  }

  *(v0 + 16) = 0;
  *(v0 + 39) = 0;
  if (!uname(&v3))
  {
    goto LABEL_9;
  }

LABEL_6:
  if (*(v0 + 63) < 0)
  {
    **(v0 + 40) = 0;
    *(v0 + 48) = 0;
  }

  else
  {
    *(v0 + 40) = 0;
    *(v0 + 63) = 0;
  }

  return v0;
}

void sub_25FC5687C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

void HGCPUComputeDevice::HGCPUComputeDevice(HGCPUComputeDevice *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = HGComputeDevice::HGComputeDevice();
  *v2 = &unk_287219298;
  *(v2 + 64) = 0u;
  v3 = v2 + 64;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  v4 = macho_arch_name_for_mach_header(0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "(unknown)";
  }

  MEMORY[0x2666E99D0](v3, v5);
  LODWORD(v6) = 0;
  v7 = 4;
  sysctlbyname("hw.physicalcpu", &v6, &v7, 0, 0);
  *(this + 22) = v6;
  LODWORD(v6) = 0;
  v7 = 4;
  sysctlbyname("hw.activecpu", &v6, &v7, 0, 0);
  *(this + 23) = v6;
  v6 = 8;
  v7 = 0;
  *v8 = 0x1800000006;
  sysctl(v8, 2u, &v7, &v6, 0, 0);
  *(this + 12) = v7;
  v6 = 8;
  v7 = 0;
  sysctlbyname("hw.l1dcachesize", &v7, &v6, 0, 0);
  *(this + 13) = v7;
  v6 = 8;
  v7 = 0;
  sysctlbyname("hw.l2cachesize", &v7, &v6, 0, 0);
  *(this + 14) = v7;
}

void sub_25FC56A60(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  HGComputeDevice::~HGComputeDevice(v1);
  _Unwind_Resume(a1);
}

void HGComputeDevice::~HGComputeDevice(void **this)
{
  *this = &unk_287219278;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[2]);
    return;
  }

  operator delete(this[5]);
  if (*(this + 39) < 0)
  {
    goto LABEL_5;
  }
}

{
  *this = &unk_287219278;
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[2]);
LABEL_3:

  JUMPOUT(0x2666E9F00);
}

void *HGGPUComputeDevice::HGGPUComputeDevice(void *a1, void *a2)
{
  v4 = HGComputeDevice::HGComputeDevice();
  *v4 = &unk_2872192B8;
  *(v4 + 64) = 0;
  v5 = v4 + 64;
  *(v4 + 96) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 104) = -1;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 139) = 0u;
  *(v4 + 155) = 1;
  *(v4 + 120) = a2;
  v6 = a2;
  DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(a1[15]);
  a1[16] = DeviceInfo;
  v8 = HGMetalDeviceInfo::name(DeviceInfo);
  MEMORY[0x2666E99D0](v5, v8);
  v9 = a1[16];
  a1[12] = *(v9 + 24);
  a1[14] = *(v9 + 40);
  return a1;
}

void sub_25FC56BB8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v2);
  }

  HGComputeDevice::~HGComputeDevice(v1);
  _Unwind_Resume(a1);
}

void HGGPUComputeDevice::~HGGPUComputeDevice(HGGPUComputeDevice *this)
{
  v2 = *(this + 15);
  if (v2)
  {
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_9:
      operator delete(*(this + 2));
      return;
    }
  }

  else
  {
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(this + 5));
  if (*(this + 39) < 0)
  {
    goto LABEL_9;
  }
}

{
  v2 = *(this + 15);
  if (v2)
  {
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      operator delete(*(this + 2));
LABEL_6:

      JUMPOUT(0x2666E9F00);
    }
  }

  else
  {
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(this + 5));
  if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  goto LABEL_11;
}

uint64_t HGGPUComputeDevice::GetGLVirtualScreen(HGGPUComputeDevice *this)
{
  result = *(this + 26);
  if (result == -1)
  {
    result = 0;
    *(this + 26) = 0;
  }

  return result;
}

void HGComputeDeviceManager::GetCPUComputeDevice(HGComputeDeviceManager *this@<X0>, void *a2@<X8>)
{
  HG_RENDERER_ENV::Init(this);
  if (atomic_load_explicit(&qword_280C5E330, memory_order_acquire))
  {
    if (atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  HGComputeDeviceManager::GetCPUComputeDevice();
  if (atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) != -1)
  {
LABEL_3:
    v10 = &v8;
    v9 = &v10;
    std::__call_once(&_MergedGlobals_18, &v9, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateComputeDeviceList(void)::$_0 &&>>);
  }

LABEL_4:
  v3 = qword_280C5E340;
  v4 = unk_280C5E348;
  if (qword_280C5E340 == unk_280C5E348)
  {
LABEL_12:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  while (1)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    if (v6)
    {
      break;
    }

    if (!v5[2])
    {
      goto LABEL_14;
    }

LABEL_7:
    v3 += 16;
    if (v3 == v4)
    {
      goto LABEL_12;
    }
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  if (v5[2])
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    goto LABEL_7;
  }

LABEL_14:
  if (v7)
  {
    *a2 = v7;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_18:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (v6)
    {
      goto LABEL_18;
    }
  }
}

void GetSortedGPUDeviceList(HG_RENDERER_ENV *a1)
{
  HG_RENDERER_ENV::Init(a1);
  if (atomic_load_explicit(&qword_280C5E330, memory_order_acquire))
  {
    if (atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  HGComputeDeviceManager::GetCPUComputeDevice();
  if (atomic_load_explicit(&_MergedGlobals_18, memory_order_acquire) != -1)
  {
LABEL_3:
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&_MergedGlobals_18, &v2, std::__call_once_proxy[abi:ne200100]<std::tuple<CreateComputeDeviceList(void)::$_0 &&>>);
  }

LABEL_4:
  if ((atomic_load_explicit(&qword_280C5E338, memory_order_acquire) & 1) == 0)
  {
    GetSortedGPUDeviceList();
  }
}

void HGComputeDeviceManager::GetGPUComputeDeviceForCGLVirtualScreen(HGComputeDeviceManager *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  GetSortedGPUDeviceList(this);
  v4 = qword_280C5E358;
  v5 = qword_280C5E360;
  if (qword_280C5E358 == qword_280C5E360)
  {
LABEL_6:
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      v7 = *(*v4 + 104);
      if (v7 == -1)
      {
        v7 = 0;
        *(v6 + 104) = 0;
      }

      if (v7 == v2)
      {
        break;
      }

      v4 += 2;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v4[1];
    *a2 = v6;
    a2[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void HGCPUComputeDevice::~HGCPUComputeDevice(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[2]);
      return;
    }
  }

  else
  {
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[5]);
  if (*(this + 39) < 0)
  {
    goto LABEL_7;
  }
}

{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(this[2]);
LABEL_4:

      JUMPOUT(0x2666E9F00);
    }
  }

  else
  {
    *this = &unk_287219278;
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(this[5]);
  if ((*(this + 39) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_9;
}

void **std::vector<std::shared_ptr<HGComputeDevice const>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_25FC5777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_25FC57810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<HGComputeDevice const>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
LABEL_3:
    a1[1] = v5;
    return;
  }

  v6 = (v4 - *a1) >> 4;
  if ((v6 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 3;
  if (v7 >> 3 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v9 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    if (!(v9 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v10 = (16 * v6);
  v11 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v12 = *a1;
  v13 = a1[1] - *a1;
  v14 = v10 - v13;
  *v10 = v11;
  v5 = v10 + 1;
  memcpy(v14, v12, v13);
  *a1 = v14;
  a1[1] = v5;
  a1[2] = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  a1[1] = v5;
}

void std::__shared_ptr_emplace<HGCPUComputeDevice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287219308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__shared_ptr_emplace<HGCPUComputeDevice>::__on_zero_shared(uint64_t a1)
{
  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    *(a1 + 24) = &unk_287219278;
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  *(a1 + 24) = &unk_287219278;
  if (*(a1 + 87) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_7:
  v2 = *(a1 + 40);

  operator delete(v2);
}

void std::__shared_ptr_emplace<HGGPUComputeDevice>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_287219358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__shared_ptr_emplace<HGGPUComputeDevice>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    *(a1 + 24) = &unk_287219278;
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  operator delete(*(a1 + 88));
  *(a1 + 24) = &unk_287219278;
  if (*(a1 + 87) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_9:
  v3 = *(a1 + 40);

  operator delete(v3);
}

void **std::vector<std::shared_ptr<HGGPUComputeDevice const>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,false>(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v129 = *(a2 - 2);
        v130 = *v9;
        if (*(v129 + 112) > *(*v9 + 112))
        {
          v131 = v9[1];
          v132 = *(a2 - 1);
          *v9 = v129;
          v9[1] = v132;
          *(a2 - 2) = v130;
          *(a2 - 1) = v131;
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

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,0>(v9, v9 + 2, v9 + 4, a2 - 2);
      return;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,0>(v9, v9 + 2, v9 + 4, v9 + 6);
      v117 = *(a2 - 2);
      v118 = v9[6];
      if (*(v117 + 112) > *(v118 + 112))
      {
        v9[6] = v117;
        *(a2 - 2) = v118;
        v119 = v9[6];
        v120 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v120;
        v121 = *(v119 + 112);
        v122 = v9[4];
        if (v121 > *(v122 + 112))
        {
          v123 = v9[5];
          v124 = v9[7];
          v9[4] = v119;
          v9[5] = v124;
          v9[6] = v122;
          v9[7] = v123;
          v125 = v9[2];
          if (v121 > *(v125 + 112))
          {
            v126 = v9[3];
            v9[2] = v119;
            v9[3] = v124;
            v9[4] = v125;
            v9[5] = v126;
            v127 = *v9;
            if (v121 > *(*v9 + 112))
            {
              v128 = v9[1];
              *v9 = v119;
              v9[1] = v124;
              v9[2] = v127;
              v9[3] = v128;
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(v9, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v133 = (v12 - 2) >> 1;
        v134 = v133 + 1;
        v135 = (a1 + 16 * v133);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(a1, a3, v12, v135);
          v135 -= 2;
          --v134;
        }

        while (v134);
        do
        {
          std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices,std::shared_ptr<HGGPUComputeDevice const> *>(a1, a2, a3, v12);
          a2 -= 16;
        }

        while (v12-- > 2);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = v13;
    v15 = *(a2 - 2);
    v16 = *(v15 + 112);
    if (v12 >= 0x81)
    {
      v17 = *v13;
      v18 = *(*v13 + 112);
      v19 = *v9;
      v20 = *(*v9 + 112);
      if (v18 <= v20)
      {
        if (v16 > v18)
        {
          *v13 = v15;
          *(a2 - 2) = v17;
          v29 = *v13;
          v30 = v13[1];
          v13[1] = *(a2 - 1);
          *(a2 - 1) = v30;
          v31 = *v9;
          if (*(v29 + 112) > *(*v9 + 112))
          {
            v32 = v9[1];
            v33 = v13[1];
            *v9 = v29;
            v9[1] = v33;
            *v13 = v31;
            v13[1] = v32;
          }
        }
      }

      else if (v16 <= v18)
      {
        v39 = v9[1];
        v40 = v13[1];
        *v9 = v17;
        v9[1] = v40;
        *v13 = v19;
        v13[1] = v39;
        v41 = *(a2 - 2);
        if (*(v41 + 112) > v20)
        {
          v42 = *(a2 - 1);
          *v13 = v41;
          v13[1] = v42;
          *(a2 - 2) = v19;
          *(a2 - 1) = v39;
        }
      }

      else
      {
        v21 = v9[1];
        v22 = *(a2 - 1);
        *v9 = v15;
        v9[1] = v22;
        *(a2 - 2) = v19;
        *(a2 - 1) = v21;
      }

      v43 = v13 - 2;
      v44 = *(v13 - 2);
      v45 = *(v44 + 112);
      v46 = v9[2];
      v47 = *(v46 + 112);
      v48 = *(a2 - 4);
      v49 = *(v48 + 112);
      if (v45 <= v47)
      {
        if (v49 > v45)
        {
          *v43 = v48;
          *(a2 - 4) = v44;
          v52 = *v43;
          v53 = *(v13 - 1);
          *(v13 - 1) = *(a2 - 3);
          *(a2 - 3) = v53;
          v54 = v9[2];
          if (*(v52 + 112) > *(v54 + 112))
          {
            v55 = v9[3];
            v56 = *(v13 - 1);
            v9[2] = v52;
            v9[3] = v56;
            *v43 = v54;
            *(v13 - 1) = v55;
          }
        }
      }

      else if (v49 <= v45)
      {
        v61 = v9[3];
        v62 = *(v13 - 1);
        v9[2] = v44;
        v9[3] = v62;
        *v43 = v46;
        *(v13 - 1) = v61;
        v63 = *(a2 - 4);
        if (*(v63 + 112) > v47)
        {
          v64 = *(a2 - 3);
          *v43 = v63;
          *(v13 - 1) = v64;
          *(a2 - 4) = v46;
          *(a2 - 3) = v61;
        }
      }

      else
      {
        v50 = v9[3];
        v51 = *(a2 - 3);
        v9[2] = v48;
        v9[3] = v51;
        *(a2 - 4) = v46;
        *(a2 - 3) = v50;
      }

      v67 = v13[2];
      v65 = v13 + 2;
      v66 = v67;
      v68 = *(v67 + 112);
      v69 = v9[4];
      v70 = *(v69 + 112);
      v71 = *(a2 - 6);
      v72 = *(v71 + 112);
      if (v68 <= v70)
      {
        if (v72 > v68)
        {
          *v65 = v71;
          *(a2 - 6) = v66;
          v75 = *v65;
          v76 = v65[1];
          v65[1] = *(a2 - 5);
          *(a2 - 5) = v76;
          v77 = v9[4];
          if (*(v75 + 112) > *(v77 + 112))
          {
            v78 = v9[5];
            v79 = v65[1];
            v9[4] = v75;
            v9[5] = v79;
            *v65 = v77;
            v65[1] = v78;
          }
        }
      }

      else if (v72 <= v68)
      {
        v80 = v9[5];
        v81 = v65[1];
        v9[4] = v66;
        v9[5] = v81;
        *v65 = v69;
        v65[1] = v80;
        v82 = *(a2 - 6);
        if (*(v82 + 112) > v70)
        {
          v83 = *(a2 - 5);
          *v65 = v82;
          v65[1] = v83;
          *(a2 - 6) = v69;
          *(a2 - 5) = v80;
        }
      }

      else
      {
        v73 = v9[5];
        v74 = *(a2 - 5);
        v9[4] = v71;
        v9[5] = v74;
        *(a2 - 6) = v69;
        *(a2 - 5) = v73;
      }

      v84 = *v14;
      v85 = *(*v14 + 112);
      v86 = *v43;
      v87 = *(*v43 + 112);
      v88 = *v65;
      v89 = *(*v65 + 112);
      if (v85 <= v87)
      {
        if (v89 <= v85)
        {
          v107 = v14[1];
          v108 = *v9;
          *v9 = v84;
          v9[1] = v107;
          *v14 = v108;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        v94 = v14[1];
        v95 = v65[1];
        *v14 = v88;
        v14[1] = v95;
        *v65 = v84;
        v65[1] = v94;
        if (v89 > v87)
        {
          v96 = v43[1];
          *v43 = v88;
          v43[1] = v95;
          *v14 = v86;
          v14[1] = v96;
          v97 = v14[1];
          v98 = *v9;
          *v9 = v86;
          v9[1] = v97;
          *v14 = v98;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

LABEL_59:
        v86 = v88;
      }

      else
      {
        if (v89 > v85)
        {
          v90 = v43[1];
          v91 = v65[1];
          *v43 = v88;
          v43[1] = v91;
          *v65 = v86;
          v65[1] = v90;
          v92 = v14[1];
          v93 = *v9;
          *v9 = v84;
          v9[1] = v92;
          *v14 = v93;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        v99 = v43[1];
        v100 = v14[1];
        *v43 = v84;
        v43[1] = v100;
        *v14 = v86;
        v14[1] = v99;
        if (v89 > v87)
        {
          v101 = v65[1];
          *v14 = v88;
          v14[1] = v101;
          *v65 = v86;
          v65[1] = v99;
          goto LABEL_59;
        }
      }

      v102 = v14[1];
      v103 = *v9;
      *v9 = v86;
      v9[1] = v102;
      *v14 = v103;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v23 = *v9;
    v24 = *(*v9 + 112);
    v25 = *v13;
    v26 = *(*v14 + 112);
    if (v24 <= v26)
    {
      if (v16 <= v24)
      {
        goto LABEL_37;
      }

      *v9 = v15;
      *(a2 - 2) = v23;
      v34 = *v9;
      v35 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v35;
      v36 = *v14;
      if (*(v34 + 112) <= *(*v14 + 112))
      {
        goto LABEL_37;
      }

      v37 = v14[1];
      v38 = v9[1];
      *v14 = v34;
      v14[1] = v38;
      *v9 = v36;
      v9[1] = v37;
      if (a5)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v16 <= v24)
      {
        v57 = v14[1];
        v58 = v9[1];
        *v14 = v23;
        v14[1] = v58;
        *v9 = v25;
        v9[1] = v57;
        v59 = *(a2 - 2);
        if (*(v59 + 112) > v26)
        {
          v60 = *(a2 - 1);
          *v9 = v59;
          v9[1] = v60;
          *(a2 - 2) = v25;
          *(a2 - 1) = v57;
        }

LABEL_37:
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      v27 = v14[1];
      v28 = *(a2 - 1);
      *v14 = v15;
      v14[1] = v28;
      *(a2 - 2) = v25;
      *(a2 - 1) = v27;
      if (a5)
      {
        goto LABEL_62;
      }
    }

LABEL_61:
    if (*(*(v9 - 2) + 112) <= *(*v9 + 112))
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<HGGPUComputeDevice const> *,SortGPUDevices &>(v9, a2);
      goto LABEL_70;
    }

LABEL_62:
    v104 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<HGGPUComputeDevice const> *,SortGPUDevices &>(v9, a2);
    if ((v105 & 1) == 0)
    {
      goto LABEL_68;
    }

    v106 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(v9, v104);
    v9 = (v104 + 16);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(v104 + 16, a2))
    {
      a4 = -v11;
      a2 = v104;
      if (v106)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v106)
    {
LABEL_68:
      std::__introsort<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,false>(a1, v104, a3, -v11, a5 & 1);
      v9 = (v104 + 16);
LABEL_70:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v109 = v9[2];
  v110 = *(v109 + 112);
  v111 = *v9;
  v112 = *(*v9 + 112);
  v113 = *(a2 - 2);
  v114 = *(v113 + 112);
  if (v110 <= v112)
  {
    if (v114 > v110)
    {
      v9[2] = v113;
      *(a2 - 2) = v109;
      v137 = v9[2];
      v138 = v9[3];
      v9[3] = *(a2 - 1);
      *(a2 - 1) = v138;
      v139 = *v9;
      if (*(v137 + 112) > *(*v9 + 112))
      {
        v140 = v9[1];
        v141 = v9[3];
        *v9 = v137;
        v9[1] = v141;
        v9[2] = v139;
        v9[3] = v140;
      }
    }
  }

  else if (v114 <= v110)
  {
    v142 = v9[1];
    v143 = v9[3];
    *v9 = v109;
    v9[1] = v143;
    v9[2] = v111;
    v9[3] = v142;
    v144 = *(a2 - 2);
    if (*(v144 + 112) > v112)
    {
      v145 = *(a2 - 1);
      v9[2] = v144;
      v9[3] = v145;
      *(a2 - 2) = v111;
      *(a2 - 1) = v142;
    }
  }

  else
  {
    v115 = v9[1];
    v116 = *(a2 - 1);
    *v9 = v113;
    v9[1] = v116;
    *(a2 - 2) = v111;
    *(a2 - 1) = v115;
  }
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,0>(void *result, void *a2, void *a3, void *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 112);
  v6 = *result;
  v7 = *(*result + 112);
  v8 = *a3;
  v9 = *(*a3 + 112);
  if (v5 <= v7)
  {
    if (v9 <= v5)
    {
      v4 = *a3;
      v17 = *a4;
      if (*(*a4 + 112) <= *(v8 + 112))
      {
        return result;
      }

      goto LABEL_12;
    }

    *a2 = v8;
    *a3 = v4;
    v12 = *a2;
    v13 = a2[1];
    a2[1] = a3[1];
    a3[1] = v13;
    v14 = *result;
    if (*(v12 + 112) > *(*result + 112))
    {
      v15 = result[1];
      v16 = a2[1];
      *result = v12;
      result[1] = v16;
      *a2 = v14;
      a2[1] = v15;
      v4 = *a3;
      v17 = *a4;
      if (*(*a4 + 112) <= *(*a3 + 112))
      {
        return result;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (v9 <= v5)
    {
      v18 = result[1];
      v19 = a2[1];
      *result = v4;
      result[1] = v19;
      *a2 = v6;
      a2[1] = v18;
      v4 = *a3;
      if (*(*a3 + 112) <= v7)
      {
        goto LABEL_11;
      }

      v20 = a3[1];
      *a2 = v4;
      a2[1] = v20;
      *a3 = v6;
      a3[1] = v18;
    }

    else
    {
      v10 = result[1];
      v11 = a3[1];
      *result = v8;
      result[1] = v11;
      *a3 = v6;
      a3[1] = v10;
    }

    v4 = v6;
  }

LABEL_11:
  v17 = *a4;
  if (*(*a4 + 112) <= *(v4 + 112))
  {
    return result;
  }

LABEL_12:
  *a3 = v17;
  *a4 = v4;
  v21 = *a3;
  v22 = a3[1];
  a3[1] = a4[1];
  a4[1] = v22;
  v23 = *a2;
  if (*(v21 + 112) > *(*a2 + 112))
  {
    *a2 = v21;
    *a3 = v23;
    v24 = *a2;
    v25 = a2[1];
    a2[1] = a3[1];
    a3[1] = v25;
    v26 = *result;
    if (*(v24 + 112) > *(*result + 112))
    {
      v27 = result[1];
      v28 = a2[1];
      *result = v24;
      result[1] = v28;
      *a2 = v26;
      a2[1] = v27;
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[2];
        v9 = *v7;
        if (*(v8 + 112) > *(*v7 + 112))
        {
          v10 = v7[3];
          v11 = v5;
          *v6 = 0;
          v6[1] = 0;
          while (1)
          {
            v12 = (a1 + v11);
            v13 = *(a1 + v11 + 8);
            *v12 = 0;
            v12[1] = 0;
            v14 = *(a1 + v11 + 24);
            v12[2] = v9;
            v12[3] = v13;
            if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }

            if (!v11)
            {
              break;
            }

            v9 = *(a1 + v11 - 16);
            v11 -= 16;
            if (*(v8 + 112) <= *(v9 + 112))
            {
              v15 = (a1 + v11 + 16);
              v16 = *(a1 + v11 + 24);
              *v15 = v8;
              v15[1] = v10;
              if (!v16)
              {
                goto LABEL_4;
              }

              goto LABEL_15;
            }
          }

          v16 = a1[1];
          *a1 = v8;
          a1[1] = v10;
          if (!v16)
          {
            goto LABEL_4;
          }

LABEL_15:
          if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v16->__on_zero_shared)(v16);
            std::__shared_weak_count::__release_weak(v16);
          }
        }

LABEL_4:
        v4 = v6 + 2;
        v5 += 16;
      }

      while (v6 + 2 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 2;
    if (a1 + 2 != a2)
    {
      v5 = (a1 + 3);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = v6[2];
        v8 = *v6;
        if (v7[4].__shared_weak_owners_ > (*v6)[4].__shared_weak_owners_)
        {
          v9 = v6[3];
          v10 = v5;
          *v3 = 0;
          v3[1] = 0;
          do
          {
            v11 = *(v10 - 2);
            *(v10 - 3) = 0;
            *(v10 - 2) = 0;
            v12 = *v10;
            *(v10 - 1) = v8;
            *v10 = v11;
            if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v12->__on_zero_shared)(v12);
              std::__shared_weak_count::__release_weak(v12);
            }

            v8 = *(v10 - 5);
            v10 -= 2;
          }

          while (v7[4].__shared_weak_owners_ > v8[4].__shared_weak_owners_);
          v13 = *v10;
          *(v10 - 1) = v7;
          *v10 = v9;
          if (v13)
          {
            if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v13->__on_zero_shared)(v13);
              std::__shared_weak_count::__release_weak(v13);
            }
          }
        }

        v4 = v3 + 2;
        v5 += 2;
      }

      while (v3 + 2 != a2);
    }
  }
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<HGGPUComputeDevice const> *,SortGPUDevices &>(__int128 *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = *(v2 + 112);
  if (v3 <= *(*(a2 - 2) + 112))
  {
    v6 = (a1 + 1);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 2;
    }

    while (v3 <= *(*v4 + 112));
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[2];
      v4 += 2;
    }

    while (v3 <= *(v5 + 112));
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 2);
      a2 -= 2;
    }

    while (v3 > *(v7 + 112));
  }

  if (v4 < a2)
  {
    v8 = *v4;
    v9 = *a2;
    do
    {
      v10 = v4[1];
      v11 = a2[1];
      *v4 = v9;
      v4[1] = v11;
      *a2 = v8;
      a2[1] = v10;
      do
      {
        v12 = v4[2];
        v4 += 2;
        v8 = v12;
      }

      while (v3 <= *(v12 + 112));
      do
      {
        v13 = *(a2 - 2);
        a2 -= 2;
        v9 = v13;
      }

      while (v3 > *(v13 + 112));
    }

    while (v4 < a2);
  }

  v14 = (v4 - 2);
  if (v4 - 2 != a1)
  {
    v15 = *v14;
    *v14 = 0;
    *(v4 - 1) = 0;
    v16 = *(a1 + 1);
    *a1 = v15;
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v19 = v2;
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v2 = v19;
      }
    }
  }

  v17 = *(v4 - 1);
  *(v4 - 1) = v2;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v4;
  }

  (v17->__on_zero_shared)(v17);
  std::__shared_weak_count::__release_weak(v17);
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<HGGPUComputeDevice const> *,SortGPUDevices &>(__int128 *a1, __int128 *a2)
{
  v3 = 0;
  v4 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v5 = *(v4 + 112);
  do
  {
    v6 = *&a1[++v3];
  }

  while (*(v6 + 112) > v5);
  v7 = &a1[v3];
  if (v3 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 2);
    }

    while (*(v9 + 112) <= v5);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 2);
    }

    while (*(v8 + 112) <= v5);
  }

  if (v7 >= a2)
  {
    v11 = &a1[v3];
    v17 = (v7 - 16);
    if ((v7 - 16) == a1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v10 = *a2;
    v11 = &a1[v3];
    v12 = a2;
    do
    {
      v13 = *(v11 + 1);
      v14 = *(v12 + 1);
      *v11 = v10;
      *(v11 + 1) = v14;
      *v12 = v6;
      *(v12 + 1) = v13;
      do
      {
        v15 = *(v11++ + 2);
        v6 = v15;
      }

      while (*(v15 + 112) > v5);
      do
      {
        v16 = *(v12-- - 2);
        v10 = v16;
      }

      while (*(v16 + 112) <= v5);
    }

    while (v11 < v12);
    v17 = v11 - 1;
    if (v11 - 1 == a1)
    {
      goto LABEL_20;
    }
  }

  v18 = *v17;
  *v17 = 0;
  *(v17 + 1) = 0;
  v19 = *(a1 + 1);
  *a1 = v18;
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = v4;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v4 = v22;
  }

LABEL_20:
  v20 = *(v11 - 1);
  *(v11 - 1) = v4;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  return v17;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(char *a1, char *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v21 = *(a1 + 2);
      v22 = *(v21 + 112);
      v23 = *a1;
      v24 = *(*a1 + 112);
      v25 = *(a2 - 2);
      v26 = *(v25 + 112);
      if (v22 <= v24)
      {
        if (v26 > v22)
        {
          *(a1 + 2) = v25;
          *(a2 - 2) = v21;
          v38 = *(a1 + 2);
          v39 = *(a1 + 3);
          *(a1 + 3) = *(a2 - 1);
          *(a2 - 1) = v39;
          v40 = *a1;
          if (*(v38 + 112) > *(*a1 + 112))
          {
            v41 = *(a1 + 1);
            v42 = *(a1 + 3);
            *a1 = v38;
            *(a1 + 1) = v42;
            *(a1 + 2) = v40;
            *(a1 + 3) = v41;
          }
        }
      }

      else if (v26 <= v22)
      {
        v46 = *(a1 + 1);
        v47 = *(a1 + 3);
        *a1 = v21;
        *(a1 + 1) = v47;
        *(a1 + 2) = v23;
        *(a1 + 3) = v46;
        v48 = *(a2 - 2);
        if (*(v48 + 112) > v24)
        {
          v49 = *(a2 - 1);
          *(a1 + 2) = v48;
          *(a1 + 3) = v49;
          *(a2 - 2) = v23;
          *(a2 - 1) = v46;
        }
      }

      else
      {
        v27 = *(a1 + 1);
        v28 = *(a2 - 1);
        *a1 = v25;
        *(a1 + 1) = v28;
        *(a2 - 2) = v23;
        *(a2 - 1) = v27;
      }

      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v9 = *(a2 - 2);
        v10 = *(a1 + 6);
        if (*(v9 + 112) > *(v10 + 112))
        {
          *(a1 + 6) = v9;
          *(a2 - 2) = v10;
          v11 = *(a1 + 6);
          v12 = *(a1 + 7);
          *(a1 + 7) = *(a2 - 1);
          *(a2 - 1) = v12;
          v13 = *(v11 + 112);
          v14 = *(a1 + 4);
          if (v13 > *(v14 + 112))
          {
            v15 = *(a1 + 5);
            v16 = *(a1 + 7);
            *(a1 + 4) = v11;
            *(a1 + 5) = v16;
            *(a1 + 6) = v14;
            *(a1 + 7) = v15;
            v17 = *(a1 + 2);
            if (v13 > *(v17 + 112))
            {
              v18 = *(a1 + 3);
              *(a1 + 2) = v11;
              *(a1 + 3) = v16;
              *(a1 + 4) = v17;
              *(a1 + 5) = v18;
              v19 = *a1;
              if (v13 > *(*a1 + 112))
              {
                v20 = *(a1 + 1);
                *a1 = v11;
                *(a1 + 1) = v16;
                *(a1 + 2) = v19;
                *(a1 + 3) = v20;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 112) > *(*a1 + 112))
    {
      v7 = *(a1 + 1);
      v8 = *(a2 - 1);
      *a1 = v5;
      *(a1 + 1) = v8;
      *(a2 - 2) = v6;
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v29 = a1 + 32;
  v30 = *(a1 + 4);
  v31 = *(a1 + 2);
  v32 = *(v31 + 112);
  v33 = *a1;
  v34 = *(*a1 + 112);
  v35 = *(v30 + 112);
  if (v32 <= v34)
  {
    if (v35 > v32)
    {
      v43 = *(a1 + 3);
      v44 = *(a1 + 5);
      *(a1 + 2) = v30;
      *(a1 + 3) = v44;
      *(a1 + 4) = v31;
      *(a1 + 5) = v43;
      if (v35 > v34)
      {
        v45 = *(a1 + 1);
        *a1 = v30;
        *(a1 + 1) = v44;
        *(a1 + 2) = v33;
        *(a1 + 3) = v45;
      }
    }
  }

  else if (v35 <= v32)
  {
    v50 = *(a1 + 1);
    v51 = *(a1 + 3);
    *a1 = v31;
    *(a1 + 1) = v51;
    *(a1 + 2) = v33;
    *(a1 + 3) = v50;
    if (v35 > v34)
    {
      v52 = *(a1 + 5);
      *(a1 + 2) = v30;
      *(a1 + 3) = v52;
      *(a1 + 4) = v33;
      *(a1 + 5) = v50;
    }
  }

  else
  {
    v36 = *(a1 + 1);
    v37 = *(a1 + 5);
    *a1 = v30;
    *(a1 + 1) = v37;
    *(a1 + 4) = v33;
    *(a1 + 5) = v36;
  }

  v53 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = *v53;
    v57 = *v29;
    if (*(*v53 + 112) > *(v57 + 112))
    {
      v58 = *(v53 + 1);
      v59 = v54;
      *v53 = 0;
      *(v53 + 1) = 0;
      while (1)
      {
        v60 = &a1[v59];
        v61 = *&a1[v59 + 40];
        *(v60 + 4) = 0;
        *(v60 + 5) = 0;
        v62 = *&a1[v59 + 56];
        *(v60 + 6) = v57;
        *(v60 + 7) = v61;
        if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v62->__on_zero_shared)(v62);
          std::__shared_weak_count::__release_weak(v62);
        }

        if (v59 == -32)
        {
          break;
        }

        v57 = *&a1[v59 + 16];
        v59 -= 16;
        if (*(v56 + 112) <= *(v57 + 112))
        {
          v63 = &a1[v59 + 48];
          v64 = *&a1[v59 + 56];
          *v63 = v56;
          *(v63 + 1) = v58;
          if (!v64)
          {
            goto LABEL_33;
          }

          goto LABEL_45;
        }
      }

      v64 = *(a1 + 1);
      *a1 = v56;
      *(a1 + 1) = v58;
      if (!v64)
      {
        goto LABEL_33;
      }

LABEL_45:
      if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v64->__on_zero_shared)(v64);
        std::__shared_weak_count::__release_weak(v64);
      }

LABEL_33:
      if (++v55 == 8)
      {
        return v53 + 16 == a2;
      }
    }

    v29 = v53;
    v54 += 16;
    v53 += 16;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = a4 - a1;
  v7 = v4 >> 1;
  if ((v4 >> 1) < (a4 - a1) >> 4)
  {
    return;
  }

  v9 = v6 >> 3;
  v10 = (v6 >> 3) + 1;
  v11 = (a1 + 16 * v10);
  v12 = v9 + 2;
  if (v9 + 2 >= a3)
  {
    v14 = *a4;
    if (*(*v11 + 112) > *(*a4 + 112))
    {
      return;
    }
  }

  else
  {
    v13 = *v11;
    if (*(*v11 + 112) > *(v11[2] + 112))
    {
      v13 = v11[2];
      v11 += 2;
      v10 = v12;
    }

    v14 = *a4;
    if (*(v13 + 112) > *(*a4 + 112))
    {
      return;
    }
  }

  v15 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v16 = *v11;
  while (1)
  {
    v17 = v11;
    v18 = v11[1];
    *v17 = 0;
    v17[1] = 0;
    v19 = a4[1];
    *a4 = v16;
    a4[1] = v18;
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    if (v7 < v10)
    {
      break;
    }

    v11 = (a1 + 16 * ((2 * v10) | 1));
    if (2 * v10 + 2 < a3)
    {
      v16 = *v11;
      if (*(*v11 + 112) <= *(v11[2] + 112))
      {
        v10 = (2 * v10) | 1;
      }

      else
      {
        v16 = v11[2];
        v11 += 2;
        v10 = 2 * v10 + 2;
      }

      a4 = v17;
      if (*(v16 + 112) > *(v14 + 112))
      {
        break;
      }
    }

    else
    {
      v16 = *v11;
      v10 = (2 * v10) | 1;
      a4 = v17;
      if (*(*v11 + 112) > *(v14 + 112))
      {
        break;
      }
    }
  }

  v20 = v17[1];
  *v17 = v14;
  v17[1] = v15;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);

    std::__shared_weak_count::__release_weak(v20);
  }
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices,std::shared_ptr<HGGPUComputeDevice const> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 2)
  {
    return;
  }

  v8 = 0;
  v27 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  v9 = (a4 - 2) >> 1;
  v10 = a1;
  do
  {
    v11 = v10;
    v12 = &v10[2 * v8];
    v10 = v12 + 2;
    if (2 * v8 + 2 >= a4)
    {
      v8 = (2 * v8) | 1;
      v19 = *v10;
      v18 = v12[3];
      *v10 = 0;
      v12[3] = 0;
      v17 = v11[1];
      *v11 = v19;
      v11[1] = v18;
      if (!v17)
      {
        continue;
      }
    }

    else
    {
      v15 = v12[4];
      v14 = v12 + 4;
      v13 = v15;
      if (*(*(v14 - 2) + 112) > *(v15 + 112))
      {
        v10 = v14;
        v8 = 2 * v8 + 2;
      }

      else
      {
        v13 = *(v14 - 2);
        v8 = (2 * v8) | 1;
      }

      v16 = v10[1];
      *v10 = 0;
      v10[1] = 0;
      v17 = v11[1];
      *v11 = v13;
      v11[1] = v16;
      if (!v17)
      {
        continue;
      }
    }

    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  while (v8 <= v9);
  if (v10 == (a2 - 16))
  {
    v25 = v27;
    v28 = 0uLL;
    v26 = v10[1];
    *v10 = v25;
    if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else
  {
    v20 = *(a2 - 16);
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    v21 = v10[1];
    *v10 = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = (v10 + 2);
    v23 = v27;
    v28 = 0uLL;
    v24 = *(a2 - 8);
    *(a2 - 16) = v23;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v22 = (v10 + 2);
    }

    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(a1, v22, a3, (v22 - a1) >> 4);
  }

  if (*(&v28 + 1))
  {
    if (!atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v28 + 1) + 16))(*(&v28 + 1));
      std::__shared_weak_count::__release_weak(*(&v28 + 1));
    }
  }
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,SortGPUDevices &,std::shared_ptr<HGGPUComputeDevice const> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    v9 = *(a2 - 16);
    if (*(*v7 + 112) > *(v9 + 112))
    {
      v10 = *(a2 - 8);
      *v8 = 0;
      *(a2 - 8) = 0;
      v11 = *v7;
      do
      {
        v12 = v7;
        v13 = v7[1];
        *v12 = 0;
        v12[1] = 0;
        v14 = v8[1];
        *v8 = v11;
        v8[1] = v13;
        if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 16 * v6);
        v11 = *v7;
        v8 = v12;
      }

      while (*(*v7 + 112) > *(v9 + 112));
      v15 = v12[1];
      *v12 = v9;
      v12[1] = v10;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);

        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::vector<std::shared_ptr<HGGPUComputeDevice const>>::~vector[abi:ne200100], a2, a3);
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::vector<std::shared_ptr<HGComputeDevice const>>::~vector[abi:ne200100], a2, a3);
}

void OUTLINED_FUNCTION_2_0()
{
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = 0;
}

void OUTLINED_FUNCTION_3_0()
{
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
}

void HGComputeDeviceManager::GetCPUComputeDevice()
{
  if (__cxa_guard_acquire(&qword_280C5E330))
  {
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_1_2(v0, v1, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E330);
  }
}

void GetSortedGPUDeviceList()
{
  if (__cxa_guard_acquire(&qword_280C5E338))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_6(v0, v1, &dword_25F8F0000);
    __cxa_guard_release(&qword_280C5E338);
  }
}

uint64_t HGFormatUtils::RGBtoRGBA(uint64_t result, const char *a2, char *a3)
{
  v3 = &s_HGFormatInfos[8 * result];
  v4 = v3[1];
  if (v4 - 6403 > 7)
  {
    goto LABEL_9;
  }

  if (((1 << (v4 - 3)) & 0xE9) != 0)
  {
    return result;
  }

  if (v4 == 6407)
  {
    v5 = v3[2];
    switch(v5)
    {
      case 0x1403u:
        return 25;
      case 0x1406u:
        return 28;
      case 0x8D61u:
        return 27;
      default:
        return 24;
    }
  }

  else
  {
LABEL_9:
    if (v4 != 32993 && v4 != 33319)
    {
      v7 = result;
      HGLogger::warning("componentsPerPixel -- unknown GL format", a2, a3);
      return v7;
    }
  }

  return result;
}

uint64_t HGFormatUtils::precision(int a1)
{
  v1 = s_HGFormatInfos[8 * a1 + 2];
  switch(v1)
  {
    case 0x1403u:
      return 2;
    case 0x1406u:
      return 8;
    case 0x8D61u:
      return 4;
  }

  return 1;
}

uint64_t HGFormatUtils::bytesPerPixel(int a1)
{
  if (a1 <= 41)
  {
    return s_HGFormatInfos[8 * a1 + 3];
  }

  else
  {
    return 0;
  }
}

uint64_t HGFormatUtils::tileWidthFactorRequirement(int a1)
{
  if (a1 == 31)
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

uint64_t HGFormatUtils::GLFormatToByteSize(HGFormatUtils *this, const char *a2, char *a3)
{
  v3 = 1;
  if (this > 6408)
  {
    if (this > 32992)
    {
      if (this == 32993)
      {
        goto LABEL_16;
      }

      if (this != 33319)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (this == 6409)
      {
        goto LABEL_19;
      }

      if (this != 6410)
      {
        goto LABEL_26;
      }
    }

    v3 = 2;
    v4 = 1;
    if (a2 <= 5125)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (this > 6406)
  {
    if (this == 6407)
    {
      v3 = 3;
      goto LABEL_19;
    }

LABEL_16:
    v3 = 4;
    v4 = 1;
    if (a2 <= 5125)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if (this != 6403 && this != 6406)
  {
LABEL_26:
    v6 = a2;
    HGLogger::warning("componentsPerPixel -- unknown GL format", a2, a3);
    a2 = v6;
    v3 = 1;
    v4 = 1;
    if (a2 <= 5125)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 1;
  if (a2 <= 5125)
  {
LABEL_27:
    if (a2 == 5121)
    {
      return v4 * v3;
    }

    if (a2 != 5123)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_20:
  switch(a2)
  {
    case 0x1406:
      return 4 * v3;
    case 0x85BB:
      return v4 * v3;
    case 0x8D61:
LABEL_23:
      v4 = 2;
      return v4 * v3;
  }

LABEL_29:
  HGLogger::warning("bytesPerComponent -- unknown GL type", a2, a3);
  return v3;
}

const char *HGFormatUtils::GLPixelFormatToString(HGFormatUtils *this, const char *a2, char *a3)
{
  if (this <= 6407)
  {
    if (this <= 6402)
    {
      if (!this)
      {
        return "(null)";
      }

      if (this == 6402)
      {
        return "GL_DEPTH_COMPONENT";
      }
    }

    else
    {
      switch(this)
      {
        case 0x1903:
          return "GL_RED";
        case 0x1906:
          return "GL_ALPHA";
        case 0x1907:
          return "GL_RGB";
      }
    }

LABEL_23:
    HGLogger::warning("HGFormatUtils::GLPixelFormatToString -- unknown GL format", a2, a3, v3, v4);
    return "";
  }

  if (this > 6409)
  {
    switch(this)
    {
      case 0x190A:
        return "GL_LUMINANCE_ALPHA";
      case 0x80E1:
        return "GL_BGRA";
      case 0x8227:
        return "GL_RG";
    }

    goto LABEL_23;
  }

  if (this == 6408)
  {
    return "GL_RGBA";
  }

  else
  {
    return "GL_LUMINANCE";
  }
}

const char *HGFormatUtils::GLPixelTypeToString(HGFormatUtils *this, const char *a2, char *a3)
{
  if (this <= 5124)
  {
    if (!this)
    {
      return "(null)";
    }

    if (this != 5121)
    {
      if (this == 5123)
      {
        return "GL_UNSIGNED_SHORT";
      }

      goto LABEL_14;
    }

    return "GL_UNSIGNED_BYTE";
  }

  else if (this > 34234)
  {
    if (this != 34235)
    {
      if (this == 36193)
      {
        return "GL_HALF";
      }

      goto LABEL_14;
    }

    return "GL_UNSIGNED_SHORT_8_8_REV_APPLE";
  }

  else
  {
    if (this != 5125)
    {
      if (this == 5126)
      {
        return "GL_FLOAT";
      }

LABEL_14:
      HGLogger::warning("HGFormatUtils::GLPixelTypeToString -- unknown GL type", a2, a3, v3, v4);
      return "";
    }

    return "GL_UNSIGNED_INT";
  }
}

unint64_t HGFormatUtils::collapseRectForFormat(uint64_t *a1, int a2)
{
  v2 = *a1;
  if ((a2 - 14) < 3)
  {
    return v2 & 0xFFFFFFFF00000000 | vcvtms_s32_f32(vcvts_n_f32_s32(v2, 1uLL));
  }

  if (a2 == 31)
  {
    return v2 & 0xFFFFFFFF00000000 | vcvts_n_s32_f32(floorf(v2 / 6.0), 2uLL);
  }

  return v2 & 0xFFFFFFFF00000000 | *a1;
}

HGFormatUtils *HGFormatUtils::adjustPrecision(HGFormatUtils *this, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_280C5E378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E378))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C5E388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E388))
  {
    operator new();
  }

  if (atomic_load_explicit(&qword_280C5E390, memory_order_acquire) != -1)
  {
    v14 = &v12;
    v13 = &v14;
    std::__call_once(&qword_280C5E390, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<HGFormatUtils::adjustPrecision(unsigned int,unsigned int)::$_0 &&>>);
  }

  result = 0;
  if (this && a2)
  {
    if ((a2 & this) != 0)
    {
      return this;
    }

    else
    {
      v5 = *(_MergedGlobals_19 + 8);
      if (!v5)
      {
LABEL_16:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v6 = v5;
          v7 = *(v5 + 7);
          if (v7 <= this)
          {
            break;
          }

          v5 = *v6;
          if (!*v6)
          {
            goto LABEL_16;
          }
        }

        if (v7 >= this)
        {
          break;
        }

        v5 = v6[1];
        if (!v5)
        {
          goto LABEL_16;
        }
      }

      v8 = *(v6 + 8);
      v9 = *(qword_280C5E380 + 8);
      if (!v9)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v10 = v9;
          v11 = *(v9 + 32);
          if (v11 <= a2)
          {
            break;
          }

          v9 = *v10;
          if (!*v10)
          {
            goto LABEL_23;
          }
        }

        if (v11 >= a2)
        {
          return *(v10[5] + 4 * v8);
        }

        v9 = v10[1];
        if (!v9)
        {
          goto LABEL_23;
        }
      }
    }
  }

  return result;
}

uint64_t HGFormatUtils::buildFormat(int a1, int a2)
{
  v2 = a2 - 1;
  if (a2 - 1) <= 7 && ((0x8Bu >> v2))
  {
    return *(*(&off_279AA8FC0 + v2) + a1 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t HGGPURenderer::UpdateLimits(HGGPURenderer *this, HGLimits *a2, int a3)
{
  v3 = a3 & 0xF0000;
  if ((a3 & 0xFF00) != 0xB00)
  {
    *(a2 + 20) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 4) = 0u;
    *a2 = a3;
    if (v3 == 393216)
    {
      v8 = 64;
    }

    else
    {
      v8 = 128;
    }

    *(a2 + 10) = -1;
    *(a2 + 11) = v8;
    *(a2 + 12) = -1;
    v6 = a2 + 40;
    *(a2 + 21) = -1;
    *(a2 + 18) = 8;
    goto LABEL_14;
  }

  *(a2 + 9) = 8;
  *a2 = a3;
  *(a2 + 30) = 0;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = -1;
  *(a2 + 11) = -1;
  *(a2 + 17) = 0;
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *(a2 + 12) = -1;
  *(a2 + 26) = -256;
  v4 = v3 == 393216;
  if (v3 == 393216)
  {
    v5 = 31;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 40) = v5;
  v6 = a2 + 40;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 60;
  }

  *(a2 + 42) = v7;
  if (v4)
  {
LABEL_14:
    *v6 = 8;
  }

  return HGLimits::setnormalized(a2, 1);
}

void *PBOStrategy::PBOStageSetBuffer::operator()(void *result)
{
  v1 = result[1];
  v2 = result[4];
  if (v2)
  {
    result = (*(*v2 + 16))(result[4]);
  }

  v5 = v2;
  v3 = v1[1];
  if (v3 >= v1[2])
  {
    v4 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(v1, &v5);
    result = v5;
    v1[1] = v4;
    if (result)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    *v3 = v2;
    v1[1] = v3 + 1;
  }

  return result;
}

void sub_25FC5A1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void PBOStrategy::PBOStageReadPixels::operator()(uint64_t a1, int a2)
{
  v3 = a2 % ((*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3);
  v4 = (**(a1 + 16) + 16 * a2);
  v5 = *(**(a1 + 8) + 8 * a2);
  v6 = HGRectIntersection(*v4, v4[1], *(v5 + 20), *(v5 + 28));
  v8 = v7;
  HGPixelBufferObj::padding(*(**(a1 + 24) + 8 * v3), *(a1 + 32));
  v9 = *(v5 + 12);
  if ((v9 & 0x10) != 0)
  {
    if ((v9 & 0x100) != 0)
    {
      v12 = *(**(a1 + 24) + 8 * v3);
      *&v13.var0 = v6;
      *&v13.var2 = v8;

      HGGLBuffer::ReadPixels(v5, v12, v13);
    }

    else if ((v9 & 0x200) != 0)
    {
      v10 = *(**(a1 + 24) + 8 * v3);
      *&v11.var0 = v6;
      *&v11.var2 = v8;

      HGGLTexture::ReadPixels(v5, v10, v11);
    }
  }
}

uint64_t PBOStrategy::PBOStageMapBuffer::operator()(uint64_t a1, int a2)
{
  HGPixelBufferObj::GetDataPtr(*(**(a1 + 24) + 8 * (a2 % ((*(*(a1 + 24) + 8) - **(a1 + 24)) >> 3))));
  v4 = *(a1 + 8);
  v5 = *v4;
  result = *(*v4 + 8 * a2);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(v5 + 8 * a2) = 0;
  }

  return result;
}

uint64_t PBOStrategy::PBOStageFinishCopy::operator()(uint64_t a1, unsigned int a2)
{
  v3 = **(a1 + 24);
  v4 = a2 % ((*(*(a1 + 24) + 8) - v3) >> 3);
  HGPixelBufferObj::FinishCopyBitmap(*(v3 + 8 * v4));
  v5 = *(**(a1 + 24) + 8 * v4);

  return HGPixelBufferObj::ReleaseDataPtr(v5);
}

void HGGPURenderer::Init(HGGPURenderer *this, const char *a2, char *a3)
{
  if (!*(this + 139))
  {
    *(this + 809) = 0;
    HGLogger::warning("Failed to initialize Metal device.", a2, a3);
  }

  v4 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v4);
  *(this + 151) = v4;
  *(this + 335) = 1;
  GLPBO::forcePostReadPixelsFence(HG_RENDERER_ENV::FORCE_POST_READPIXELS_FENCE);
  GLPBO::forcePostReadPixelsFinish(HG_RENDERER_ENV::FORCE_POST_READPIXELS_FINISH);
  operator new();
}

void sub_25FC5A9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, PCSharedCount a11, PCSharedCount a12, uint64_t a13, PCSharedCount a14)
{
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  PCSharedCount::PCSharedCount(&a12);
  PCSharedCount::PCSharedCount(&a10);
  _Unwind_Resume(a1);
}

void sub_25FC5AAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  MEMORY[0x2666E9F00](v10, 0x10A0C40B3F59724);
  PCSharedCount::PCSharedCount(&a10);
  _Unwind_Resume(a1);
}

void sub_25FC5AB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::PCSharedCount(&a9);
  PCSharedCount::PCSharedCount(&a10);
  _Unwind_Resume(a1);
}

void sub_25FC5AE90(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v2, 0x10A0C406BFFB60BLL);
  std::__tree<HGNode *>::destroy(v1 + 1440, *(v1 + 1448));
  std::deque<HGNode *>::~deque[abi:ne200100](v1 + 1376);
  v5 = *(v1 + 1216);
  if (v5)
  {
    *(v1 + 1224) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 1176);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(v1 + 1152);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  if (*v3)
  {
    (*(**v3 + 24))(*v3);
  }

  std::__tree<std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>,std::__map_value_compare<HGMetalDeviceInfo const*,std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>,std::less<HGMetalDeviceInfo const*>,true>,std::allocator<std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>>>::destroy(v1 + 1120, *(v1 + 1128));
  v8 = *(v1 + 1112);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  HGRenderer::~HGRenderer(v1);
  _Unwind_Resume(a1);
}

int64x2_t *HGGPURenderer::PurgePostDeleteEvents(int64x2_t *this)
{
  v1 = this[92].i64[0];
  if (!v1)
  {
    return this;
  }

  v2 = this;
  v3 = *(v1 + 112);
  HGTextureManager::PostTextureDeleteEventList::lock(v3);
  while (HGTextureManager::PostTextureDeleteEventList::hasEvent(v3))
  {
    v4 = HGTextureManager::PostTextureDeleteEventList::popEvent(v3);
    HGTextureManager::PostTextureDeleteEventList::unlock(v3);
    (*(v2->i64[0] + 16))(v2);
    v5 = v2[86].i64[1];
    v6 = v2[88].u64[0];
    v7 = v6 >> 9;
    v8 = (v5 + 8 * (v6 >> 9));
    v9 = v2[87].i64[0];
    if (v9 == v5)
    {
      v12 = v2[88].i64[1] + v6;
      v13 = (v5 + 8 * (v12 >> 9));
      if (v7 != v12 >> 9)
      {
        v16 = 0;
        v11 = 0;
        v10 = *v8;
LABEL_21:
        v17 = v10 + 4096;
        while (*v16 != v4)
        {
          v16 += 8;
          if (v16 == v17)
          {
LABEL_29:
            while (1)
            {
              v18 = (v8 + 1);
              if (v8 + 1 == v13)
              {
                break;
              }

              v19 = 0;
              ++v8;
              v20 = *v18;
              do
              {
                if (*(v20 + v19) == v4)
                {
                  break;
                }

                v19 += 8;
              }

              while (v19 != 4096);
              if (v19 != 4096)
              {
                v11 = (v20 + v19);
                if (v9 != v5)
                {
                  goto LABEL_45;
                }

                goto LABEL_48;
              }
            }

            v21 = *v13;
            if (*v13 == v11)
            {
              v8 = v13;
              goto LABEL_44;
            }

            v22 = 0;
            do
            {
              if (*&v21[v22] == v4)
              {
                break;
              }

              v22 += 8;
            }

            while (&v21[v22] != v11);
            if (v22 == 4096)
            {
              v23 = v8[2];
              v8 += 2;
              v11 = v23;
              if (v9 != v5)
              {
                goto LABEL_45;
              }
            }

            else
            {
              v11 = &v21[v22];
              v8 = v13;
              if (v9 != v5)
              {
                goto LABEL_45;
              }
            }

            goto LABEL_48;
          }
        }

        if (v16 == v17)
        {
          goto LABEL_29;
        }

        v11 = v16;
        if (v9 != v5)
        {
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      v11 = 0;
    }

    else
    {
      v10 = *(v5 + 8 * v7);
      v11 = &v10[8 * (v2[88].i64[0] & 0x1FF)];
      v12 = v2[88].i64[1] + v6;
      v13 = (v5 + 8 * (v12 >> 9));
      v14 = &(*v13)[8 * (v12 & 0x1FF)];
      if (v7 != v12 >> 9)
      {
        v16 = &v10[8 * (v2[88].i64[0] & 0x1FF)];
        v11 = &(*v13)[8 * (v12 & 0x1FF)];
        goto LABEL_21;
      }

      if (v11 != v14)
      {
        while (*v11 != v4)
        {
          v11 += 8;
          if (v11 == v14)
          {
            v11 = &(*v13)[8 * (v12 & 0x1FF)];
            break;
          }
        }
      }
    }

    if (v8 && *v8 + 4096 == v11)
    {
      v15 = v8[1];
      ++v8;
      v11 = v15;
      if (v9 != v5)
      {
        goto LABEL_45;
      }
    }

    else
    {
LABEL_44:
      if (v9 != v5)
      {
LABEL_45:
        if (v11 == &(*v13)[8 * (v12 & 0x1FF)])
        {
          goto LABEL_6;
        }

LABEL_49:
        std::deque<Pipeline *>::erase(v2 + 86, v8, v11);
        (*(*v4 + 24))(v4);
        goto LABEL_6;
      }
    }

LABEL_48:
    if (v11)
    {
      goto LABEL_49;
    }

LABEL_6:
    (*(v2->i64[0] + 24))(v2);
    HGTextureManager::PostTextureDeleteEventList::lock(v3);
  }

  return HGTextureManager::PostTextureDeleteEventList::unlock(v3);
}

void HGGPURenderer::InitMetal(HGGPURenderer *this)
{
  HGLogger::setLevel("metal_osx", 0);
  HGLogger::setLevel("metal", 0);
  HGLogger::setLevel("concat", 0);
  v2 = *(this + 139);
  if (v2)
  {
    if ((HG_RENDERER_ENV::METAL_MAX_ENCODERS_PER_BUFFER & 0x80000000) == 0)
    {
      HGMetalContext::setCommandBufferLimits(v2, HG_RENDERER_ENV::METAL_MAX_ENCODERS_PER_BUFFER, -1);
    }

    v3 = HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_COUNT;
    v4 = HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_MEMORY;
    if ((HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_COUNT & 0x80000000) == 0 || (HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_MEMORY & 0x80000000) == 0)
    {
      v5 = *(this + 139);
      if (HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_COUNT < 0)
      {
        v3 = *(v5 + 84);
      }

      if (HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_MEMORY < 0)
      {
        v4 = *(v5 + 88);
      }

      *(v5 + 84) = v3;
      *(v5 + 88) = v4;
    }

    if (HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY >= 1)
    {
      if (HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY == 1)
      {
        v6 = 5;
      }

      else
      {
        v6 = 13;
      }

      if ((HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY - 3) <= 3)
      {
        v6 = dword_260812C00[HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY - 3];
      }

      *(*(this + 139) + 48) = v6;
    }

    if (HG_RENDERER_ENV::METAL_BLIT_MAX_TILE_SIZE_MB >= 1)
    {
      *(*(this + 139) + 96) = HG_RENDERER_ENV::METAL_BLIT_MAX_TILE_SIZE_MB;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "HeliumRender #", 14);
    MEMORY[0x2666E9B60](v7, *(this + 254));
    v8 = *(this + 139);
    std::stringbuf::str();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGMetalContext::setLabel(v8, p_p);
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v13[0] = *MEMORY[0x277D82818];
    v10 = *(MEMORY[0x277D82818] + 72);
    *(v13 + *(v13[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v14 = v10;
    v15 = MEMORY[0x277D82878] + 16;
    if (v17 < 0)
    {
      operator delete(v16[7].__locale_);
    }

    v15 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v16);
    std::iostream::~basic_iostream();
    MEMORY[0x2666E9E10](&v18);
  }

  operator new();
}

void sub_25FC5B680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::InitDefaultPageSize(PCICCTransferFunctionLUT **this)
{
  result = PCICCTransferFunctionLUT::getLUTEnd(this[139]);
  *(this + 312) = *(result + 48);
  v5 = atomic_load(HGLogger::_enabled);
  if (v5)
  {
    v6 = result;
    HGLogger::log("init", 1, "m_MaxPageSize : %d\n", v3, v4, *(this + 312));
    result = v6;
  }

  v7 = 0.25;
  if (HG_RENDERER_ENV::LOW_MEMORY_USAGE == 1)
  {
    v7 = 0.125;
  }

  v8 = *(result + 40);
  this[157] = (v7 * v8);
  v9 = HG_RENDERER_ENV::FORCE_PAGE_SIZE;
  if (HG_RENDERER_ENV::FORCE_PAGE_SIZE != -1)
  {
    *(this + 165) = HG_RENDERER_ENV::FORCE_PAGE_SIZE;
    v10 = *(this + 312);
    if (v9 <= v10)
    {
      return result;
    }

LABEL_21:
    *(this + 165) = v10;
    return result;
  }

  result = HGMetalDeviceInfo::isIntel(result);
  if (result)
  {
    *(this + 165) = 555;
    v10 = *(this + 312);
    if (v10 < 555)
    {
      goto LABEL_21;
    }
  }

  else if (v8 < 0x1DCD65000)
  {
    if (v8 < 0x77359400)
    {
      if (v8 < 0x3B9ACA00)
      {
        *(this + 165) = 750;
        v10 = *(this + 312);
        if (v10 < 750)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *(this + 165) = 1500;
        v10 = *(this + 312);
        if (v10 < 1500)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      *(this + 165) = 3000;
      v10 = *(this + 312);
      if (v10 < 3000)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    *(this + 165) = 5000;
    v10 = *(this + 312);
    if (v10 < 5000)
    {
      goto LABEL_21;
    }
  }

  return result;
}

void HGGPURenderer::~HGGPURenderer(HGGPURenderer *this)
{
  *this = &unk_2872193A8;
  if (*(this + 1281) == 1)
  {
    HGGLGetCurrentContext();
    HGGLContext::Share();
  }

  HGLUTCacheManager::clear(*(this + 69));
  (*(*this + 144))(this, 0);
  v2 = *(this + 164);
  if (v2)
  {
    if (v3)
    {
      v4 = v3;
      HGMetalHandler::FinalizeCommandBuffer(v3);
      HGMetalHandler::BindBuffer(v4, 0);
    }
  }

  v5 = *(this + 165);
  if (v5)
  {
    HGMetalCommandBufferRef::waitUntilCompleted(v5);
    v6 = *(this + 165);
    if (v6)
    {
      HGMetalCommandBufferRef::~HGMetalCommandBufferRef(v6);
      MEMORY[0x2666E9F00]();
    }
  }

  *(this + 165) = 0;
  v7 = *(this + 184);
  if (v7)
  {
    HGTextureManager::finishDeleteTextureQueue(v7);
    HGGPURenderer::PurgePostDeleteEvents(this);
    v8 = *(this + 184);
    if (v8)
    {
      HGTextureManager::~HGTextureManager(v8);
      MEMORY[0x2666E9F00]();
    }

    *(this + 184) = 0;
  }

  *(this + 290) = 0;
  v9 = *(this + 144);
  if (v9)
  {
    if (*(this + 357) != -1)
    {
      HGGLContext::setCurrent(v9);
      glDeleteTextures(1, this + 357);
    }

    HGGLShaderCache::ResetMetal(*(this + 161), *(this + 139));
    HGGLShaderCache::ResetGLSL(*(this + 161));
    HGGLShaderCache::ResetARB(*(this + 161));
  }

  v10 = *(this + 161);
  if (v10)
  {
    HGGLShaderCache::~HGGLShaderCache(v10);
    MEMORY[0x2666E9F00]();
  }

  *(this + 161) = 0;
  v11 = *(this + 162);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 163);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 164);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(this + 179);
  if (v14)
  {
    v15 = *v14;
    if (*v14)
    {
      v16 = v14[1];
      v17 = *v14;
      if (v16 != v15)
      {
        do
        {
          v19 = *(v16 - 1);
          v16 -= 8;
          v18 = v19;
          if (v19)
          {
            (*(*v18 + 24))(v18);
          }
        }

        while (v16 != v15);
        v17 = *v14;
      }

      v14[1] = v15;
      operator delete(v17);
    }

    MEMORY[0x2666E9F00](v14, 0x20C40960023A9);
  }

  *(this + 179) = 0;
  v20 = *(this + 146);
  if (v20)
  {
    HGGLState::~HGGLState(v20);
    MEMORY[0x2666E9F00]();
  }

  if (*(this + 1281) == 1)
  {
    HGGPURenderer::UnBindCachedFramebuffer(this);
  }

  v21 = *(this + 144);
  if (v21)
  {
    HGGLContext::context(&v31, v21);
    if (PCColorSpaceHandle::getCGColorSpace(&v31))
    {
      v30.var0 = v31.var0;
      HGGLSetCurrentContext(&v30.var0);
      PCSharedCount::PCSharedCount(&v30);
      glBindFramebuffer(0x8D40u, 0);
      if (*(this + 297))
      {
        glDeleteFramebuffers(1, this + 297);
      }
    }

    v22 = *(this + 144);
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }

    *(this + 144) = 0;
    PCSharedCount::PCSharedCount(&v31);
  }

  v23 = *(this + 143);
  if (v23)
  {
    (*(*v23 + 24))(v23);
    *(this + 143) = 0;
  }

  v24 = *(this + 151);
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  *(this + 151) = 0;
  std::__tree<HGNode *>::destroy(this + 1440, *(this + 181));
  std::deque<HGNode *>::~deque[abi:ne200100](this + 1376);
  v25 = *(this + 152);
  if (v25)
  {
    *(this + 153) = v25;
    operator delete(v25);
  }

  v26 = *(this + 147);
  if (v26)
  {
    (*(*v26 + 24))(v26);
  }

  v27 = *(this + 144);
  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  v28 = *(this + 143);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  std::__tree<std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>,std::__map_value_compare<HGMetalDeviceInfo const*,std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>,std::less<HGMetalDeviceInfo const*>,true>,std::allocator<std::__value_type<HGMetalDeviceInfo const*,HGRef<HGMetalContext>>>>::destroy(this + 1120, *(this + 141));
  v29 = *(this + 139);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  HGRenderer::~HGRenderer(this);
}

{
  HGGPURenderer::~HGGPURenderer(this);

  HGObject::operator delete(v1);
}

void HGGPURenderer::FinishMetalCommandBuffer(HGGPURenderer *this)
{
  (*(*this + 144))(this, 0);
  v2 = *(this + 164);
  if (v2)
  {
    if (v3)
    {
      v4 = v3;
      HGMetalHandler::FinalizeCommandBuffer(v3);
      HGMetalHandler::BindBuffer(v4, 0);
    }
  }

  v5 = *(this + 165);
  if (v5)
  {

    HGMetalCommandBufferRef::waitUntilCompleted(v5);
  }
}

void HGGPURenderer::UnBindCachedFramebuffer(HGGPURenderer *this)
{
  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::lock(qword_280C5E398);
  HGTraceGuard::HGTraceGuard(v12, "framebuffer", 2, "UnBindCachedFramebuffer()");
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    v4 = qword_280C5E3B8;
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    HGGPURenderer::UnBindCachedFramebuffer();
    v4 = qword_280C5E3B8;
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
LABEL_4:
      if (v4 != &qword_280C5E3B0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }
  }

  v10 = v4;
  HGGPURenderer::UnBindCachedFramebuffer();
  v4 = v10;
  if (v10 == &qword_280C5E3B0)
  {
LABEL_7:
    v4 = &qword_280C5E3B0;
    goto LABEL_8;
  }

LABEL_5:
  while (*(v4 + 7) != *(this + 298))
  {
    v4 = v4[1];
    if (v4 == &qword_280C5E3B0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    if (v4 != &qword_280C5E3B0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = v4;
    HGGPURenderer::UnBindCachedFramebuffer();
    v4 = v11;
    if (v11 != &qword_280C5E3B0)
    {
LABEL_10:
      *(v4 + 32) = 0;
      v5 = atomic_load(HGLogger::_enabled);
      if (v5)
      {
        v6 = "done with framebuffer (%d) - marking unused\n";
        v7 = 2;
LABEL_20:
        HGLogger::log("framebuffer", v7, v6, v2, v3, *(this + 298));
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    v6 = "uh oh! unknown framebuffer (%d)\n";
    v7 = 1;
    goto LABEL_20;
  }

LABEL_21:
  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::unlock(qword_280C5E398);
  glBindFramebuffer(0x8D40u, 0);
  *(this + 298) = 0;
  FBOStrategy::cleanupCache(v9);
  HGTraceGuard::~HGTraceGuard(v12);
}