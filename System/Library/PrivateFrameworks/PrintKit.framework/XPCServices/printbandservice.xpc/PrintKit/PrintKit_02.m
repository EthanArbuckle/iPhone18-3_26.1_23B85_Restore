float *Madusa::RefineCandidates::TransformRefSignalCoords(float *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = 56;
  v7 = &Madusa::AffineTransform::mGridPointU;
  v8 = &Madusa::AffineTransform::mGridPointV;
  do
  {
    v9 = *v8++;
    v10 = v9;
    v11 = *v7++;
    v12 = (v2 * v10) + (v3 * v11);
    v13 = (v4 * v10) + (v5 * v11);
    *(a2 + 16) = v13;
    *(a2 + 20) = v12;
    if (v12 < 0.0)
    {
      v13 = -v13;
    }

    v14 = fabsf(v12);
    v15 = fminf(fmaxf(v13, -999.0), 999.0);
    *(a2 + 24) = v12 < 0.0;
    v16 = (v15 + 1000.0) - 1000;
    *a2 = v16;
    *(a2 + 4) = v14;
    *(a2 + 8) = v15 - v16;
    *(a2 + 12) = v14 - truncf(v14);
    a2 += 28;
    --v6;
  }

  while (v6);
  return result;
}

float sub_10001D85C(uint64_t a1, void *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2 + 8;
  v8 = 28;
  result = 0.0;
  v10 = &Madusa::AffineTransform::mGridPointV;
  v11 = &Madusa::AffineTransform::mGridPointU;
  v12 = 28;
  do
  {
    while (1)
    {
      v13 = *v11;
      v14 = *v10;
      v15 = (v3 * v14) + (v4 * v13);
      v16 = (v5 * v14) + (v6 * v13);
      *(a1 + 16) = v16;
      *(a1 + 20) = v15;
      v17 = v15 < 0.0;
      if (v15 < 0.0)
      {
        v16 = -v16;
      }

      v18 = fabsf(v15);
      v19 = fminf(fmaxf(v16, -999.0), 999.0);
      v20 = v18;
      v21 = (v19 + 1000.0);
      *(a1 + 24) = v17;
      *a1 = v21 - 1000;
      *(a1 + 4) = v18;
      v22 = v18 - truncf(v18);
      v23 = v19 - (v21 - 1000);
      *(a1 + 8) = v23;
      *(a1 + 12) = v22;
      if (v20 <= 0x3F)
      {
        v24 = v21 - 936;
        if ((v21 - 936) <= 0x7E)
        {
          break;
        }
      }

      --v12;
      a1 += 28;
      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v25 = v21 - 935;
    v26 = v20 << 9;
    v27 = *(v7 + v26 + 4 * v24);
    v28 = *(v7 + v26 + 4 * v25);
    result = ((v27 + ((v28 - v27) * v23)) + result) + (((*(v7 + (v26 + 512) + 4 * v24) - (v27 + ((v28 - v27) * v23))) + ((*(v7 + (v26 + 512) + 4 * v25) - *(v7 + (v26 + 512) + 4 * v24)) * v23)) * v22);
    a1 += 28;
    ++v10;
    ++v11;
    --v8;
  }

  while (v8);
LABEL_8:
  if (v12 - 1 < 0x37)
  {
    return Madusa::RefineCandidates::mCorrScale[v12] * result;
  }

  return result;
}

float sub_10001D9B8(uint64_t a1, void *a2, float *a3)
{
  v3 = *a2 + 8;
  v4 = 0.0;
  v5 = Madusa::AffineTransform::mGridPointV;
  v6 = Madusa::AffineTransform::mGridPointU;
  v7 = 28;
  v8 = a1;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v17 = *(v8 + 4);
    if (v17 > 0x3F || (v18 = *v8, (*v8 - 63) <= 0xFFFFFF80))
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 20);
    }

    else
    {
      v19 = v18 + 64;
      v20 = v3 + (v17 << 9);
      v21 = *(v20 + 4 * (v18 + 64));
      v22 = v18 + 65;
      v23 = *(v20 + 4 * v22);
      v24 = fmaxf(v23, v21);
      if (v23 <= v21)
      {
        v25 = v19;
      }

      else
      {
        v25 = v22;
      }

      v26 = v3 + ((v17 + 1) << 9);
      v27 = *(v26 + 4 * v19);
      if (v27 <= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = *(v26 + 4 * v19);
      }

      if (v27 <= v24)
      {
        v19 = v25;
      }

      if (*(v26 + 4 * v22) > v28)
      {
        v29 = 0;
      }

      else
      {
        v22 = v19;
        v29 = v27 <= v24;
      }

      if (!v29)
      {
        LODWORD(v17) = v17 + 1;
      }

      v30 = v22 - 64;
      v31 = 64 - v22;
      if (*(v8 + 24))
      {
        LODWORD(v17) = -v17;
      }

      else
      {
        v31 = v30;
      }

      v12 = v17;
      v13 = v31;
    }

    v14 = *v6++;
    v15 = v14;
    v16 = *v5++;
    v4 = v4 + (v13 * v15);
    v9 = v9 + (v12 * v16);
    v10 = v10 + (v12 * v15);
    v11 = v11 + (v13 * v16);
    v8 += 28;
    --v7;
  }

  while (v7);
  *a3 = v9 * 0.000079177;
  a3[1] = v10 * 0.000079177;
  a3[2] = v11 * 0.000079177;
  a3[3] = v4 * 0.000079177;
  return sub_10001D85C(a1, a2, a3);
}

float sub_10001DAD0(uint64_t a1, void *a2, float *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *a2 + 8;
  v8 = 56;
  result = 0.0;
  v10 = &Madusa::AffineTransform::mGridPointV;
  v11 = &Madusa::AffineTransform::mGridPointU;
  v12 = 56;
  do
  {
    while (1)
    {
      v13 = *v11;
      v14 = *v10;
      v15 = (v3 * v14) + (v4 * v13);
      v16 = (v5 * v14) + (v6 * v13);
      *(a1 + 16) = v16;
      *(a1 + 20) = v15;
      v17 = v15 < 0.0;
      if (v15 < 0.0)
      {
        v16 = -v16;
      }

      v18 = fabsf(v15);
      v19 = fminf(fmaxf(v16, -999.0), 999.0);
      v20 = v18;
      v21 = (v19 + 1000.0);
      *(a1 + 24) = v17;
      *a1 = v21 - 1000;
      *(a1 + 4) = v18;
      v22 = v18 - truncf(v18);
      v23 = v19 - (v21 - 1000);
      *(a1 + 8) = v23;
      *(a1 + 12) = v22;
      if (v20 <= 0x3F)
      {
        v24 = v21 - 936;
        if ((v21 - 936) <= 0x7E)
        {
          break;
        }
      }

      --v12;
      a1 += 28;
      ++v10;
      ++v11;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    v25 = v21 - 935;
    v26 = v20 << 9;
    v27 = *(v7 + v26 + 4 * v24);
    v28 = *(v7 + v26 + 4 * v25);
    result = ((v27 + ((v28 - v27) * v23)) + result) + (((*(v7 + (v26 + 512) + 4 * v24) - (v27 + ((v28 - v27) * v23))) + ((*(v7 + (v26 + 512) + 4 * v25) - *(v7 + (v26 + 512) + 4 * v24)) * v23)) * v22);
    a1 += 28;
    ++v10;
    ++v11;
    --v8;
  }

  while (v8);
LABEL_8:
  if ((v12 - 1) < 0x37)
  {
    return Madusa::RefineCandidates::mCorrScale[v12] * result;
  }

  return result;
}

float sub_10001DC2C(uint64_t a1, void *a2, float *a3)
{
  v3 = *a2 + 8;
  v4 = 0.0;
  v5 = Madusa::AffineTransform::mGridPointV;
  v6 = Madusa::AffineTransform::mGridPointU;
  v7 = 56;
  v8 = a1;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v17 = *(v8 + 4);
    if (v17 > 0x3F || (v18 = *v8, (*v8 - 63) <= 0xFFFFFF80))
    {
      v13 = *(v8 + 16);
      v12 = *(v8 + 20);
    }

    else
    {
      v19 = v18 + 64;
      v20 = v3 + (v17 << 9);
      v21 = *(v20 + 4 * (v18 + 64));
      v22 = v18 + 65;
      v23 = *(v20 + 4 * v22);
      v24 = fmaxf(v23, v21);
      if (v23 <= v21)
      {
        v25 = v19;
      }

      else
      {
        v25 = v22;
      }

      v26 = v3 + ((v17 + 1) << 9);
      v27 = *(v26 + 4 * v19);
      if (v27 <= v24)
      {
        v28 = v24;
      }

      else
      {
        v28 = *(v26 + 4 * v19);
      }

      if (v27 <= v24)
      {
        v19 = v25;
      }

      if (*(v26 + 4 * v22) > v28)
      {
        v29 = 0;
      }

      else
      {
        v22 = v19;
        v29 = v27 <= v24;
      }

      if (!v29)
      {
        LODWORD(v17) = v17 + 1;
      }

      v30 = v22 - 64;
      v31 = 64 - v22;
      if (*(v8 + 24))
      {
        LODWORD(v17) = -v17;
      }

      else
      {
        v31 = v30;
      }

      v12 = v17;
      v13 = v31;
    }

    v14 = *v6++;
    v15 = v14;
    v16 = *v5++;
    v4 = v4 + (v13 * v15);
    v9 = v9 + (v12 * v16);
    v10 = v10 + (v12 * v15);
    v11 = v11 + (v13 * v16);
    v8 += 28;
    --v7;
  }

  while (v7);
  *a3 = v9 * 0.00002307;
  a3[1] = v10 * 0.00002307;
  a3[2] = v11 * 0.00002307;
  a3[3] = v4 * 0.00002307;
  return sub_10001DAD0(a1, a2, a3);
}

uint64_t Madusa::DetectorBase::DetectorBase(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000708E8;
  Madusa::BlockPicker::BlockPicker((a1 + 8));
  *(a1 + 40) = 0;
  Madusa::ImageProperties::ImageProperties((a1 + 48));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = Madusa::SigComboBoost::SigComboBoost((a1 + 304));
  *(a1 + 42984) = a2;
  (*(*(a1 + 304) + 16))();
  return a1;
}

void Madusa::DetectorBase::_Initialize(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006A610));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A620, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006A620)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::DetectorBase::Initialize(this);
}

uint64_t Madusa::DetectorBase::ProcessBlock(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = (*(*a1 + 56))(a1, a3);
  v28 = (*(*a4 + 32))(a4);
  v8 = (*(*a4 + 24))(a4);
  Madusa::ProfileTimer::ProfileTimer(v25, &unk_10006BCBB, v8);
  v9 = (*(*a1 + 32))(a1, &v29, &v28, a2);
  Madusa::ProfileTimer::~ProfileTimer(v25);
  if (v9)
  {
    if (v9 == 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }
  }

  else
  {
    v10 = (*(*a1 + 40))(a1, a3, &v28);
    if (v10)
    {
      v12 = (*(*a4 + 24))(a4);
      (*(*v12 + 40))(v12, v28 + 8, v29, HIDWORD(v29), 130, 130, 130);
      v10 = (*(*a4 + 16))(v25, a4, &v28, &v29);
      v13 = v27;
      if (v27 >= 1)
      {
        if (v26[1])
        {
          goto LABEL_12;
        }

        v14 = &v27;
        v15 = 1;
        do
        {
          v16 = v15;
          if (v27 == v15)
          {
            break;
          }

          v17 = *(v14 + 1);
          ++v15;
          v14 += 8;
        }

        while (v17 != 1);
        if (v16 < v27)
        {
LABEL_12:
          atomic_store(1u, a1 + 281);
        }

        if (*v25 > 20.3)
        {
          goto LABEL_18;
        }

        v18 = v26;
        v19 = 1;
        do
        {
          v20 = v19;
          if (v13 == v19)
          {
            break;
          }

          v21 = *v18;
          v18 += 18;
          ++v19;
        }

        while (v21 <= 20.3);
        if (v20 < v13)
        {
LABEL_18:
          atomic_store(1u, a1 + 280);
        }
      }
    }

    v11 = 0;
  }

  ReadstatsHandle = Madusa::System::GetReadstatsHandle(v10);
  v23 = (*(*a4 + 24))(a4);
  ((*ReadstatsHandle)[8])(ReadstatsHandle, v23);
  return v11;
}

uint64_t Madusa::DetectorBase::_ProcessBlock(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 2212752;
  }

  else
  {
    v7 = 1970885;
  }

  v8 = 1;
  v9 = 18986;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 1970884)
        {
          break;
        }

        if (v9 == 18986)
        {
          v8 = 0;
          v9 = 1970885;
        }

        else if (v9 == 19003)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 1970885, v5[3] != ((QuickCodec::mask ^ v6) / 0x1EEB94)))
        {
          v9 = 1970939;
          v8 = v10;
        }
      }

      if (v9 <= 1989853)
      {
        break;
      }

      if (v9 == 1989854)
      {
        v5 = v4;
        v9 = 19003;
      }

      else
      {
        v11 = v9 == 2212752;
        v9 = 19057;
        if (v11)
        {
          v6 = -497124669;
        }
      }
    }

    if (v9 != 1970885)
    {
      break;
    }

    v9 = 1970939;
    if ((v8 & 1) == 0)
    {
      v9 = 1989854;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::ProcessBlock(a1, a2, a3, a4);
}

uint64_t Madusa::DetectorBase::WriteReadstats(Madusa::DetectorBase *this)
{
  ReadstatsHandle = Madusa::System::GetReadstatsHandle(this);
  v2 = ((*ReadstatsHandle)[9])(ReadstatsHandle);
  v3 = (*Madusa::System::GetReadstatsHandle(v2))[11];

  return v3();
}

uint64_t Madusa::DetectorBase::ShouldDoSecondPass(Madusa::DetectorBase *this)
{
  ReadstatsHandle = Madusa::System::GetReadstatsHandle(this);
  v4 = ((*ReadstatsHandle)[12])(ReadstatsHandle);
  v5 = *v1;
  if (v4)
  {
    if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
    {
      if (QuickCodec::mask == -70947757)
      {
        return 1;
      }
    }

    else if (v1[3] != 212 && QuickCodec::mask == -70947757)
    {
      return 1;
    }

    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v18);
    v18.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v18);
    return 1;
  }

  v7.i16[0] = *&v5 | 0xFFE0;
  v7.i16[1] = v1[3];
  v7.i16[2] = *&v5 | 0xFFE0;
  v7.i16[3] = v7.u8[2];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006A630));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A640, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006A640)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    v11 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }

  v15 = atomic_load(this + 281);
  if (v15)
  {
    return 0;
  }

  v17 = atomic_load(this + 280);
  return v17 & 1;
}

uint64_t Madusa::DetectorBase::_ShouldDoSecondPass(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::ShouldDoSecondPass(this);
}

uint64_t Madusa::DetectorBase::SetImageProperties(Madusa::DetectorBase *this, const Madusa::ImageProperties *a2, Madusa::MemoryMaster *a3)
{
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 3);
  *(this + 5) = *(a2 + 2);
  *(this + 6) = v8;
  *(this + 3) = v6;
  *(this + 4) = v7;
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v11 = *(a2 + 7);
  *(this + 9) = *(a2 + 6);
  *(this + 10) = v11;
  *(this + 7) = v9;
  *(this + 8) = v10;
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  *(this + 28) = *(a2 + 22);
  *(this + 12) = v13;
  *(this + 13) = v14;
  *(this + 11) = v12;
  *(this + 58) = *(a2 + 46);
  *(this + 59) = *(a2 + 47);
  *(this + 60) = *(a2 + 48);
  *(this + 61) = *(a2 + 49);
  v15 = *(a2 + 200);
  *(this + 260) = *(a2 + 212);
  *(this + 248) = v15;
  sub_10001F264((this + 48), &v23);
  if (BYTE4(v23) == 1 && v24 == 1 && v26 == 1)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0;
  }

  v17 = v25;
  v18 = v27;
  func = __find_func(0x9FFFBF5F00A080F0, 1900298378);
  v20 = func(this + 8, v17, v18);
  Madusa::ImageProperties::RecordImageDetails(a2, v17, v18);
  v21 = (*(*this + 24))(this, a3);
  (*(**(this + 37) + 16))(*(this + 37));
  return v16 & v20 & v21 & 1;
}

uint64_t Madusa::DetectorBase::_SetImageProperties(Madusa::DetectorBase *this, Madusa::DetectorBase *a2, const Madusa::ImageProperties *a3, Madusa::MemoryMaster *a4)
{
  v5.i16[3] = v4[3];
  v5.i16[2] = *v4 | 0xFFE0;
  v5.i16[1] = v5.u8[6];
  v5.i16[0] = v5.i16[2];
  v6.i64[0] = 0xFF000000FFLL;
  v6.i64[1] = 0xFF000000FFLL;
  v7 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v5), v6), xmmword_10006A650));
  v8.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A660, v7)).u32[0];
  v8.i32[1] = vmovn_s32(vcgtq_f32(v7, xmmword_10006A660)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v8, 0xFuLL))) & ((v4[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::SetImageProperties(this, a2, a3);
}

Madusa::System *Madusa::DetectorBase::ProcessBlocksLoop(Madusa::System *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < a3)
  {
    v9 = a2;
    v10 = result;
    do
    {
      ReadstatsHandle = Madusa::System::GetReadstatsHandle(result);
      if ((((*ReadstatsHandle)[12])(ReadstatsHandle) & 1) == 0)
      {
        func = __find_func(0xBF1F5F3F0040A060, 1369743594);
        if (func(v10))
        {
          break;
        }
      }

      result = Madusa::DetectorBase::ProcessBlock(v10, a4, v9, a5);
      if (result)
      {
        goto LABEL_8;
      }

      v9 = (v9 + 1);
    }

    while (a3 != v9);
  }

  result = 0;
LABEL_8:
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return result;
    }
  }

  else if (v5[3] != 212 && QuickCodec::mask == -70947757)
  {
    return result;
  }

  v14 = result;
  QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
  v15 = __find_func(0xDF9FDF1FC0E04070, 824451274);
  v16 = 600;
  while (*v15 != ((QuickCodec::mask ^ 0xC12A2DF3) / 0x9D28AF) || v15[1] != ((QuickCodec::mask ^ 0xFBC56C53) / 0x9D28AF) || v15[2] != ((QuickCodec::mask ^ 0xDDCAB631) / 0x9D28AF) || v15[3] != ((QuickCodec::mask ^ 0x79E0DCBFu) / 0x9D28AF))
  {
    v15 += 4;
    if (!--v16)
    {
      goto LABEL_24;
    }
  }

  vars0 = v15;
  vars8 = 0u;
LABEL_24:
  QuickCodec::mask += 16;
  return v14;
}

Madusa::System *Madusa::DetectorBase::_ProcessBlocksLoop(Madusa::System *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu)
  {
    v6 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v6 + 1;
    }
  }

  else
  {
    v6 = QuickCodec::mask;
    if (v5[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::ProcessBlocksLoop(result, a2, a3, a4, a5);
}

uint64_t Madusa::DetectorBase::ProcessBlocks(Madusa::DetectorBase *this, uint64_t a2, uint64_t a3, void *a4, Madusa::SessionCallbacks *a5)
{
  atomic_fetch_add(this + 10744, (a2 + a3 - 1) * (a3 - a2) / 2);
  Madusa::MemoryMaster::MemoryMaster(v29, *(this + 36), a4);
  if (Madusa::MemoryMaster::Valid(v29) && (DetectorPipe = Madusa::System::CreateDetectorPipe(v29, this + 296)) != 0 && (v11 = DetectorPipe, Madusa::MemoryMaster::Valid(v29)))
  {
    v12 = (*(*this + 48))(this, v29, a5);
    if (v12)
    {
      v13 = v12;
      func = __find_func(0xBFDF7F9FC020C090, 1365540938);
      v15 = func(this, a2, a3, v13, v11);
      (**v13)(v13);
      Madusa::MemoryMaster::DeAllocateBuffer(v13, v16);
    }

    else
    {
      v15 = 1;
    }

    (**v11)(v11);
    Madusa::MemoryMaster::DeAllocateBuffer(v11, v28);
  }

  else
  {
    v15 = 1;
  }

  v17 = 0;
  v18 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v19 = 6629195;
  }

  else
  {
    v19 = 923358;
  }

  v20 = 1;
  v21 = 1661126;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v24 = v20;
        if (v21 <= 1661196)
        {
          break;
        }

        if (v21 == 1661197)
        {
          if ((*v17 & 0x1F) != 0 || v17[2] > 0x3Fu || (v20 = 1, v21 = 923358, v17[3] != ((QuickCodec::mask ^ v18) / 0x60B4C8)))
          {
            v21 = 923412;
            v20 = v24;
          }
        }

        else if (v21 == 2584467)
        {
          v17 = v5;
          v21 = 1661143;
        }

        else
        {
          v25 = v21 == 6629195;
          v21 = 1661197;
          if (v25)
          {
            v18 = -1412376077;
          }
        }
      }

      if (v21 <= 1661125)
      {
        break;
      }

      v22 = (QuickCodec::mask != -70947757) | v20;
      if (v21 == 1661143)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      if (v21 == 1661143)
      {
        LODWORD(v24) = v22;
      }

      v25 = v21 == 1661126;
      if (v21 == 1661126)
      {
        v21 = 923358;
      }

      else
      {
        v21 = v23;
      }

      if (v25)
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }
    }

    if (v21 != 923358)
    {
      break;
    }

    v21 = 923412;
    if ((v20 & 1) == 0)
    {
      v21 = 2584467;
    }
  }

  if (v20)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v26 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    v26(0, 104);
  }

  Madusa::MemoryMaster::~MemoryMaster(v29);
  return v15;
}

uint64_t Madusa::DetectorBase::_ProcessBlocks(Madusa::DetectorBase *this, uint64_t a2, uint64_t a3, void *a4, Madusa::SessionCallbacks *a5, Madusa::SessionCallbacks *a6)
{
  v7.i16[3] = v6[3];
  v7.i16[2] = *v6 | 0xFFE0;
  v7.i16[1] = v7.u8[6];
  v7.i16[0] = v7.i16[2];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006A670));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A680, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006A680)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v6[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::DetectorBase::ProcessBlocks(this, a2, a3, a4, a5);
}

uint64_t Madusa::DetectorBase::ProcessTwoPasses(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v7 = a1 + 40960;
  *(a1 + 288) = a2;
  *(a1 + 40) = 0;
  atomic_store(0, (a1 + 42976));
  v8 = a4 - 1;
  if (a4 < 1)
  {
    v16 = 0;
  }

  else
  {
    v9 = a4;
    v10 = (*(**(a1 + 42984) + 16))(*(a1 + 42984), 0, a4, a2, a1);
    if (!v10)
    {
      v11 = atomic_load((a1 + 281));
      if ((v11 & 1) == 0)
      {
        v12 = v10;
        v13 = (*(**(a1 + 296) + 32))(v28, *(a1 + 296));
        ReadstatsHandle = Madusa::System::GetReadstatsHandle(v13);
        ((*ReadstatsHandle)[5])(ReadstatsHandle, v28);
        v10 = v12;
        atomic_store(BYTE1(v28[0]), (a1 + 281));
      }
    }

    v15 = atomic_load((v7 + 2016));
    if (v15 == (v8 * v9) >> 1)
    {
      v16 = v10;
    }

    else
    {
      v16 = 3;
    }
  }

  func = __find_func(0xBF1F5F5F008040F0, 1369743498);
  v18 = func(a1);
  if (!v16 && v18)
  {
    *(a1 + 40) = 1;
    atomic_store(0, (v7 + 2016));
    if (a5 < 1)
    {
      return 0;
    }

    else
    {
      v19 = (*(**(v7 + 2024) + 16))(*(v7 + 2024), 0, a5, *(a1 + 288), a1);
      if (!v19)
      {
        v20 = (a1 + 281);
        v21 = atomic_load((a1 + 281));
        if ((v21 & 1) == 0)
        {
          v22 = *(a1 + 296);
          v23 = v19;
          v24 = (*(*v22 + 32))(v28, v22);
          v25 = Madusa::System::GetReadstatsHandle(v24);
          ((*v25)[5])(v25, v28);
          v19 = v23;
          atomic_store(BYTE1(v28[0]), v20);
        }
      }

      v26 = atomic_load((v7 + 2016));
      if (v26 == ((a5 - 1) * a5) >> 1)
      {
        return v19;
      }

      else
      {
        return 3;
      }
    }
  }

  return v16;
}

unint64_t sub_10001F264@<X0>(Madusa::ImageProperties *a1@<X0>, unint64_t *a2@<X8>)
{
  v14 = 0x100000001;
  v15 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v15, &v14);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a1);
  v13[0] = &_mh_execute_header & 0xFFFFFFFF00000000 | IntegerOffsetBounds;
  v13[1] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(IntegerOffsetBounds);
  v13[2] = &_mh_execute_header & 0xFFFFFFFF00000000 | v5;
  v13[3] = &_mh_execute_header & 0xFFFFFFFF00000000 | v6;
  sub_10001F8DC(v13, &v15, &v14, v12);
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v8 = ResolutionBucket;
  }

  else
  {
    v8 = 300;
  }

  v9 = 0x100000001;
  if (v8 <= 199)
  {
    switch(v8)
    {
      case 100:
        v10 = &unk_10006A690;
        goto LABEL_20;
      case 125:
        v10 = &unk_10006A6A0;
        goto LABEL_20;
      case 150:
        v10 = &unk_10006A6B0;
        goto LABEL_20;
    }
  }

  else if (v8 > 299)
  {
    if (v8 == 300)
    {
      v10 = &unk_10006A6E0;
      goto LABEL_20;
    }

    if (v8 == 350)
    {
      v10 = &unk_10006A6F0;
      goto LABEL_20;
    }
  }

  else
  {
    if (v8 == 200)
    {
      v10 = &unk_10006A6C0;
      goto LABEL_20;
    }

    if (v8 == 250)
    {
      v10 = &unk_10006A6D0;
LABEL_20:
      v9 = *(v10 + 4);
    }
  }

  v13[0] = v9;
  return sub_10001F8DC(v12, v13, v13, a2);
}

BOOL Madusa::DetectorBase::_Is100DPI(Madusa::DetectorBase *this, Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::DetectorBase::Is100DPI(this);
}

uint64_t Madusa::DetectorBase::IsWatermarkFound(Madusa::DetectorBase *this)
{
  v2 = 0;
  v3 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v4 = 7729295;
  }

  else
  {
    v4 = 7094750;
  }

  v5 = 1;
  v6 = 5873;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        if (v6 > 7094749)
        {
          break;
        }

        if (v6 == 5873)
        {
          v5 = 0;
          v6 = 7094750;
        }

        else if (v6 == 5890)
        {
          v5 = (QuickCodec::mask != -70947757) | v5;
          v6 = v4;
        }

        else if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu || (v5 = 1, v6 = 7094750, v2[3] != ((QuickCodec::mask ^ v3) / 0x994241)))
        {
          v6 = 7094804;
          v5 = v7;
        }
      }

      if (v6 <= 7100605)
      {
        break;
      }

      if (v6 == 7100606)
      {
        v2 = v1;
        v6 = 5890;
      }

      else
      {
        v8 = v6 == 7729295;
        v6 = 5944;
        if (v8)
        {
          v3 = -2060471929;
        }
      }
    }

    if (v6 != 7094750)
    {
      break;
    }

    v6 = 7094804;
    if ((v5 & 1) == 0)
    {
      v6 = 7100606;
    }
  }

  if (v5)
  {
    v9 = FunctionTable::ft ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft ^ 0x157E9386;
    v10 = &unk_10003FCF4;
    v11 = -2;
    v12 = -1;
    do
    {
      qword_100074968[v12 + 1 + ((*(v10 - 1) ^ v9) / 0x9D28AF)] = qword_100074968[v12 + ((*v10 ^ v9) / 0x9D28AF)];
      v10 += 2;
      v11 += 2;
      v12 -= 2;
    }

    while (v11 < 0x20);
  }

  v13 = atomic_load(this + 281);
  return v13 & 1;
}

uint64_t Madusa::DetectorBase::_IsWatermarkFound(Madusa::DetectorBase *this, const Madusa::DetectorBase *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::DetectorBase::IsWatermarkFound(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::DetectorBase::IsWatermarkFound(this);
  }

  v5 = 90122 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x1238848 | v5 & 0x1238848) + (v5 ^ 0x1238848 | ~(v5 | 0x1238848)) + 19105864 == (~(~(~(v5 | 0x1218000) | v5 & 0x1218000) | 0x20848) | ~(~(v5 | 0x1218000) | v5 & 0x1218000) & 0x20848) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::DetectorBase::IsWatermarkFound(this);
}

unint64_t sub_10001F8DC@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = a3[1] * *a1;
  if (v8 == v8)
  {
    v10 = *a3;
    v11 = 2 * v8 == 2 * v8 && (v10 - 2147483649) >= 0xFFFFFFFF00000000;
    if (v11 && (v12 = 2 * v8 + (v10 - 1), v12 == v12))
    {
      v9 = &_mh_execute_header & 0xFFFFFFFF00000000 | (2 * v8 + v10 - 1);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = *a3;
  }

  v46 = v9;
  v47 = BYTE4(v9);
  if (2 * v10 == 2 * v10)
  {
    v13 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v10 & 0x7FFFFFFF));
  }

  else
  {
    v13 = 0;
  }

  v44 = v13;
  v45 = BYTE4(v13);
  v14 = sub_10001FCB8(&v46, &v44);
  v15 = a2[1] * a1[2];
  if (v15 == v15)
  {
    v17 = *a2;
    v18 = 2 * v15 == 2 * v15 && (v17 - 2147483649) >= 0xFFFFFFFF00000000;
    if (v18 && (v19 = 2 * v15 + (v17 - 1), v19 == v19))
    {
      v16 = &_mh_execute_header & 0xFFFFFFFF00000000 | (2 * v15 + v17 - 1);
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = *a2;
  }

  v46 = v16;
  v47 = BYTE4(v16);
  if (2 * v17 == 2 * v17)
  {
    v20 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v17 & 0x7FFFFFFF));
  }

  else
  {
    v20 = 0;
  }

  v44 = v20;
  v45 = BYTE4(v20);
  v21 = sub_10001FCB8(&v46, &v44);
  v22 = a3[1] * (a1[4] + *a1);
  if (v22 == v22)
  {
    v23 = v22 | &_mh_execute_header;
  }

  else
  {
    v23 = 0;
  }

  if ((v23 & 0x100000000) != 0 && 2 * v23 == 2 * v23)
  {
    v39 = v23 << 33;
    v40 = 2 * v23 - 2147483649;
    v25 = *a3;
    if (v40 >= 0xFFFFFFFF00000000 && ((v39 - 0x100000000) >> 32) - v25 == (((v39 - 0x100000000) >> 32) - v25))
    {
      v24 = &_mh_execute_header & 0xFFFFFFFF00000000 | (((v39 - 0x100000000) >> 32) - v25);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v25 = *a3;
  }

  v46 = v24;
  v47 = BYTE4(v24);
  if (2 * v25 == 2 * v25)
  {
    v26 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v25 & 0x7FFFFFFF));
  }

  else
  {
    v26 = 0;
  }

  v44 = v26;
  v45 = BYTE4(v26);
  v27 = sub_10001FCB8(&v46, &v44);
  v28 = a2[1] * (a1[6] + a1[2]);
  if (v28 == v28)
  {
    v29 = v28 | &_mh_execute_header;
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 0x100000000) != 0 && 2 * v29 == 2 * v29)
  {
    v41 = v29 << 33;
    v42 = 2 * v29 - 2147483649;
    v31 = *a2;
    if (v42 >= 0xFFFFFFFF00000000 && ((v41 - 0x100000000) >> 32) - v31 == (((v41 - 0x100000000) >> 32) - v31))
    {
      v30 = &_mh_execute_header & 0xFFFFFFFF00000000 | (((v41 - 0x100000000) >> 32) - v31);
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = *a2;
  }

  v46 = v30;
  v47 = BYTE4(v30);
  if (2 * v31 == 2 * v31)
  {
    v32 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v31 & 0x7FFFFFFF));
  }

  else
  {
    v32 = 0;
  }

  v44 = v32;
  v45 = BYTE4(v32);
  result = sub_10001FCB8(&v46, &v44);
  if (*(a1 + 12) != 1 || *(a1 + 4) != 1 || *(a1 + 28) != 1 || *(a1 + 20) != 1)
  {
    LOBYTE(v35) = 0;
    LOBYTE(v34) = 0;
    v37 = 0;
    goto LABEL_55;
  }

  v34 = HIDWORD(v14);
  v35 = HIDWORD(v21);
  if ((v27 & 0x100000000) != 0 && (v14 & 0x100000000) != 0 && (v36 = v27 - v14, v36 == v36))
  {
    if ((v36 + 2147483649) >> 32)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v36 + 1) | &_mh_execute_header;
    }

    if ((result & 0x100000000) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v37 = 0;
    if ((result & 0x100000000) == 0)
    {
      v38 = 0;
      goto LABEL_56;
    }
  }

  if ((v21 & 0x100000000) == 0 || (v43 = result - v21, v43 != v43))
  {
LABEL_55:
    v38 = 0;
    goto LABEL_56;
  }

  if ((v43 + 2147483649) >> 32)
  {
    v38 = 0;
  }

  else
  {
    v38 = (v43 + 1) | &_mh_execute_header;
  }

LABEL_56:
  *a4 = v14 | (v34 << 32);
  a4[1] = v21 | (v35 << 32);
  a4[2] = v37;
  a4[3] = v38;
  return result;
}

unint64_t sub_10001FCB8(int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a2;
  if ((v2 & 0x80000000) != 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      if (*(a1 + 4))
      {
        v8 = -v2;
      }

      else
      {
        v8 = *a1;
      }

      if (v2 == 0x80000000 || *(a1 + 4) == 0)
      {
        return 0;
      }

      if (*(a2 + 4) != 1)
      {
        return 0;
      }

      v10 = v3 + v8;
      if (v10 != v10)
      {
        return 0;
      }

      if ((v10 - 2147483649) < 0xFFFFFFFF00000000 || v3 == 0)
      {
        return 0;
      }

      v16 = v10 - 1;
      if (v16)
      {
        v17 = v16 / v3;
      }

      else
      {
        v17 = 0;
      }

      return ((v17 != 0x80000000) << 32) | -v17;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    if (*(a1 + 4) == 1)
    {
      v5 = v2 - v3;
      if ((v5 + 0x7FFFFFFFLL) >> 32)
      {
        v6 = 0;
      }

      else
      {
        v6 = (v5 - 1) | &_mh_execute_header;
      }

      if (v5 == v5)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      if (*(a2 + 4) != 1)
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(a2 + 4))
    {
      LODWORD(v3) = -v4;
    }

    if (v4 != 0x80000000 && (v7 & &_mh_execute_header) != 0 && *(a2 + 4) != 0)
    {
      if (!v7)
      {
        return ((v7 != 0x80000000) << 32) | -v7;
      }

      if (v7 != 0x80000000 || v3 != -1)
      {
        LODWORD(v7) = v7 / v3;
        return ((v7 != 0x80000000) << 32) | -v7;
      }
    }

    return 0;
  }

  if ((a1[1] & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + 4) != 1 || v3 == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 != 0x80000000 || v4 != -1)
    {
      return &_mh_execute_header | (v2 / v4);
    }

    return 0;
  }

  return &_mh_execute_header | v2;
}

uint64_t Madusa::AffineTransform::AffineTransform(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 133016;
  v4 = (a1 + 98784);
  v5 = (a1 + 64552);
  *a1 = off_100070938;
  *(a1 + 8) = a2;
  sub_100007CC4((a1 + 16));
  sub_100007CC4((a1 + 944));
  sub_100007CC4((a1 + 1872));
  sub_100007CC4((a1 + 2800));
  sub_100007CC4((a1 + 3728));
  sub_100007CC4((a1 + 4656));
  sub_100007CC4((a1 + 5584));
  sub_100007CC4((a1 + 6512));
  sub_100007CC4((a1 + 7440));
  sub_100007CC4((a1 + 8368));
  sub_100007CC4((a1 + 9296));
  sub_100007CC4((a1 + 10224));
  sub_100007CC4((a1 + 11152));
  sub_100007CC4((a1 + 12080));
  sub_100007CC4((a1 + 13008));
  sub_100007CC4((a1 + 13936));
  *(a1 + 14864) = off_100070958;
  bzero((a1 + 14872), 0x4000uLL);
  *(a1 + 31256) = a1 + 14864;
  *(a1 + 31264) = off_100070660;
  bzero((a1 + 31272), 0x8200uLL);
  *v5 = a1 + 31264;
  v5[1] = off_100070978;
  bzero((a1 + 64568), 0x85A8uLL);
  *v4 = v5 + 1;
  v4[1] = off_100070978;
  bzero((a1 + 98800), 0x85A8uLL);
  *v3 = v4 + 1;
  *(a1 + 133032) = 0;
  *(a1 + 133040) = 0;
  *(a1 + 133024) = 0;
  *(v3 + 32) = 1;
  *(v3 + 36) = 0;
  *(a1 + 133056) = 0u;
  *(a1 + 133072) = 0u;
  *(a1 + 133085) = 0;
  Madusa::FilterFMag::FilterFMag((a1 + 133096), v5);
  Madusa::ImpulseMatchedFilter::ImpulseMatchedFilter((a1 + 133656), v4, v3);
  Madusa::FindPeaks::FindPeaks((a1 + 133672), v3);
  bzero((a1 + 133688), 0xC40uLL);
  Madusa::PhaseDeviation::PhaseDeviation((a1 + 136824));
  v6 = 141608;
  bzero((a1 + 141608), 0x2260uLL);
  v7 = 5600;
  do
  {
    v8 = a1 + v6;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 24) = 0;
    *(v8 + 16) = 0;
    v6 += 28;
    v7 -= 28;
  }

  while (v7);
  do
  {
    v9 = (a1 + 147208 + v7);
    *(v9 + 5) = 0;
    *v9 = 0;
    v7 += 16;
  }

  while (v7 != 3200);
  return a1;
}

uint64_t Madusa::AffineTransform::_Execute()
{
  if ((*v0 & 0x1F) != 0 || v0[2] > 0x3Fu)
  {
    v1 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::AffineTransform::Execute();
    }

LABEL_7:
    QuickCodec::mask = v1 + 1;
    return Madusa::AffineTransform::Execute();
  }

  v3 = 3146524 * v0[3];
  v1 = QuickCodec::mask;
  if (v3 - (v3 ^ 0x27C29330 | v3 & 0x27C29330) + (v3 ^ 0x27C29330 | ~(v3 | 0x27C29330)) + 667063088 == (~(~(~(v3 | 0x27C08120) | v3 & 0x27C08120) | 0x21210) | ~(~(v3 | 0x27C08120) | v3 & 0x27C08120) & 0x21210) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::AffineTransform::Execute();
}

uint64_t Madusa::AffineTransform::_Execute_Alt(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 3297410;
  }

  else
  {
    v6 = 3198538;
  }

  v7 = 1;
  v8 = 3486;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          if (v8 > 3198537)
          {
            break;
          }

          switch(v8)
          {
            case 3486:
              v7 = 0;
              v8 = 3198538;
              break;
            case 3503:
              v7 = (QuickCodec::mask != -70947757) | v7;
              v8 = v6;
              break;
            case 3557:
              if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 3198538, v4[3] != ((QuickCodec::mask ^ v5) / 0x3B851F)))
              {
                v8 = 3198592;
                v7 = v9;
              }

              break;
          }
        }

        if (v8 <= 3202006)
        {
          break;
        }

        if (v8 == 3202007)
        {
          v4 = v3;
          v8 = 3503;
        }

        else if (v8 == 3297410)
        {
          v8 = 3557;
          v5 = -896577025;
        }
      }

      if (v8 != 3198538)
      {
        break;
      }

      if (v7)
      {
        v10 = 54;
      }

      else
      {
        v10 = 3469;
      }

      v8 = v10 + 3198538;
    }
  }

  while (v8 != 3198592);
  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::Execute_Alt(a1, 3202006, a3);
}

float Madusa::AffineTransform::ERSExecute(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  Madusa::ProfileTimer::ProfileTimer(v16, &unk_10006BCBB, *(a1 + 8));
  v9 = a4[1];
  v14[1] = *a4;
  v15 = v9;
  v14[0] = *a3;
  if ((*v4 & 0x1F) == 0 && v4[2] <= 0x3Fu && v4[3] == 212 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    func(0, 104);
  }

  v11 = __find_func(0xAFBF9FFF80C00020, 1090805802);
  v12 = v11(a1 + 141608, a2, v14, &v15, &v15 + 8);
  Madusa::ProfileTimer::~ProfileTimer(v16);
  return v12;
}

float Madusa::AffineTransform::_ERSExecute(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 7197505;
  }

  else
  {
    v7 = 2709429;
  }

  v8 = 1;
  v9 = 2466348;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 2709428)
        {
          break;
        }

        if (v9 == 2466348)
        {
          v8 = 0;
          v9 = 2709429;
        }

        else if (v9 == 2466365)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 2709429, v5[3] != ((QuickCodec::mask ^ v6) / 0x409C40)))
        {
          v9 = 2709483;
          v8 = v10;
        }
      }

      if (v9 <= 5175759)
      {
        break;
      }

      if (v9 == 5175760)
      {
        v5 = v4;
        v9 = 2466365;
      }

      else
      {
        v11 = v9 == 7197505;
        v9 = 2466419;
        if (v11)
        {
          v6 = -834401965;
        }
      }
    }

    if (v9 != 2709429)
    {
      break;
    }

    v9 = 2709483;
    if ((v8 & 1) == 0)
    {
      v9 = 5175760;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::ERSExecute(a1, a2, a3, a4);
}

uint64_t Madusa::AffineTransform::GetUnrefinedLinearTransform(Madusa::AffineTransform *this)
{
  v2 = 0;
  v3 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v4 = 17880902;
  }

  else
  {
    v4 = 7872420;
  }

  v5 = 1;
  v6 = 8937272;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v5;
        if (v6 <= 8937342)
        {
          break;
        }

        if (v6 == 8937343)
        {
          if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu || (v5 = 1, v6 = 7872420, v2[3] != ((QuickCodec::mask ^ v3) / 0x969885)))
          {
            v6 = 7872474;
            v5 = v9;
          }
        }

        else if (v6 == 16809675)
        {
          v2 = v1;
          v6 = 8937289;
        }

        else
        {
          v10 = v6 == 17880902;
          v6 = 8937343;
          if (v10)
          {
            v3 = -2022497673;
          }
        }
      }

      if (v6 <= 8937271)
      {
        break;
      }

      v7 = (QuickCodec::mask != -70947757) | v5;
      if (v6 == 8937289)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      if (v6 == 8937289)
      {
        LODWORD(v9) = v7;
      }

      v10 = v6 == 8937272;
      if (v6 == 8937272)
      {
        v6 = 7872420;
      }

      else
      {
        v6 = v8;
      }

      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = v9;
      }
    }

    if (v6 != 7872420)
    {
      break;
    }

    v6 = 7872474;
    if ((v5 & 1) == 0)
    {
      v6 = 16809675;
    }
  }

  if (v5)
  {
    v11 = FunctionTable::ft ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft ^ 0x157E9386;
    v12 = &unk_10003FCF4;
    v13 = -2;
    v14 = -1;
    do
    {
      qword_100074968[v14 + 1 + ((*(v12 - 1) ^ v11) / 0x9D28AF)] = qword_100074968[v14 + ((*v12 ^ v11) / 0x9D28AF)];
      v12 += 2;
      v13 += 2;
      v14 -= 2;
    }

    while (v13 < 0x20);
  }

  return this + 16;
}

uint64_t Madusa::AffineTransform::_GetUnrefinedLinearTransform(Madusa::AffineTransform *this, const Madusa::AffineTransform *a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 12631176;
  }

  else
  {
    v5 = 3118957;
  }

  v6 = 1;
  v7 = 97198;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        if (v7 > 3118956)
        {
          break;
        }

        if (v7 == 97198)
        {
          v6 = 0;
          v7 = 3118957;
        }

        else if (v7 == 97215)
        {
          v6 = (QuickCodec::mask != -70947757) | v6;
          v7 = v5;
        }

        else if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 3118957, v3[3] != ((QuickCodec::mask ^ v4) / 0x605DC0)))
        {
          v7 = 3119011;
          v6 = v8;
        }
      }

      if (v7 <= 3216137)
      {
        break;
      }

      if (v7 == 3216138)
      {
        v3 = v2;
        v7 = 97215;
      }

      else
      {
        v9 = v7 == 12631176;
        v7 = 97269;
        if (v9)
        {
          v4 = -1274491053;
        }
      }
    }

    if (v7 != 3118957)
    {
      break;
    }

    v7 = 3119011;
    if ((v6 & 1) == 0)
    {
      v7 = 3216138;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::GetUnrefinedLinearTransform(this);
}

uint64_t Madusa::AffineTransform::FilterFMagExecute(uint64_t a1, uint64_t a2)
{
  Madusa::ProfileTimer::ProfileTimer(v8, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0xFF3F9F3F40C0A080, 293888234);
  func(a1 + 133096, a2);
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      fegetenv(&v9);
      v9.__fpcr &= QuickCodec::mask + 70947740;
      fesetenv(&v9);
    }
  }

  else if (v2[3] == 212 || QuickCodec::mask != -70947757)
  {
    goto LABEL_10;
  }

  Madusa::ProfileTimer::~ProfileTimer(v8);
  return a1 + 64552;
}

uint64_t Madusa::AffineTransform::_FilterFMagExecute(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 841040;
  }

  else
  {
    v5 = 8230;
  }

  v6 = 1;
  v7 = 273774;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 273844)
        {
          break;
        }

        if (v7 == 273845)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 8230, v3[3] != ((QuickCodec::mask ^ v4) / 0x42FE)))
          {
            v7 = 8284;
            v6 = v10;
          }
        }

        else if (v7 == 281987)
        {
          v3 = v2;
          v7 = 273791;
        }

        else
        {
          v11 = v7 == 841040;
          v7 = 273845;
          if (v11)
          {
            v4 = -68020725;
          }
        }
      }

      if (v7 <= 273773)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 273791)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 273791)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 273774;
      if (v7 == 273774)
      {
        v7 = 8230;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 8230)
    {
      break;
    }

    if (v6)
    {
      v7 = 8284;
    }

    else
    {
      v7 = 281987;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::FilterFMagExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::_FilterFMagExecute_Alt(uint64_t a1)
{
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    v2 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v2 + 1;
    }
  }

  else
  {
    v2 = QuickCodec::mask;
    if (v1[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::FilterFMagExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::_PadAndFoldExecute(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 2662966;
  }

  else
  {
    v5 = 73826;
  }

  v6 = 1;
  v7 = 2238422;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 2238492)
        {
          break;
        }

        if (v7 == 2238493)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 73826, v3[3] != ((QuickCodec::mask ^ v4) / 0x81596)))
          {
            v7 = 73880;
            v6 = v10;
          }
        }

        else if (v7 == 2312231)
        {
          v3 = v2;
          v7 = 2238439;
        }

        else
        {
          v11 = v7 == 2662966;
          v7 = 2238493;
          if (v11)
          {
            v4 = -42693525;
          }
        }
      }

      if (v7 <= 2238421)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 2238439)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 2238439)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 2238422;
      if (v7 == 2238422)
      {
        v7 = 73826;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 73826)
    {
      break;
    }

    v7 = 73880;
    if ((v6 & 1) == 0)
    {
      v7 = 2312231;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::PadAndFoldExecute(a1, a2, 2238421, 2312231, 73880, 2238439, 2238493, 132817827);
}

uint64_t Madusa::AffineTransform::LogPolarRemapExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v11, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x9F1FDF7F20E080F0, 1906581674);
  func(a1 + 133648, a2, a1 + 98784, a3);
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
      v9 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
      v9(0, 104);
    }
  }

  else if (v3[3] == 212 || QuickCodec::mask != -70947757)
  {
    goto LABEL_10;
  }

  Madusa::ProfileTimer::~ProfileTimer(v11);
  return a1 + 98784;
}

uint64_t Madusa::AffineTransform::_LogPolarRemapExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v4 + 1;
    }
  }

  else
  {
    v4 = QuickCodec::mask;
    if (v3[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::LogPolarRemapExecute(a1, a2, a3);
}

uint64_t Madusa::AffineTransform::_LogPolarRemapExecute_Alt(uint64_t a1)
{
  if ((*v1 & 0x1F) != 0 || v1[2] > 0x3Fu)
  {
    v2 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v2 + 1;
    }
  }

  else
  {
    v2 = QuickCodec::mask;
    if (v1[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::LogPolarRemapExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::ImpulseMatchedFilterExecute(uint64_t a1, float a2)
{
  Madusa::ProfileTimer::ProfileTimer(v20, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x5F7FDFDF8000C0C0, -1312546806);
  func(a1 + 133656, a2);
  v6 = 0;
  v7 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v8 = 9343236;
  }

  else
  {
    v8 = 3592819;
  }

  v9 = 1;
  v10 = 4038623;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (v10 <= 4038693)
        {
          break;
        }

        if (v10 == 4038694)
        {
          if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu || (v9 = 1, v10 = 3592819, v6[3] != ((QuickCodec::mask ^ v7) / 0x3E244C)))
          {
            v10 = 3592873;
            v9 = v13;
          }
        }

        else if (v10 == 7631425)
        {
          v6 = v2;
          v10 = 4038640;
        }

        else
        {
          v14 = v10 == 9343236;
          v10 = 4038694;
          if (v14)
          {
            v7 = -927767901;
          }
        }
      }

      if (v10 <= 4038622)
      {
        break;
      }

      v11 = (QuickCodec::mask != -70947757) | v9;
      if (v10 == 4038640)
      {
        v12 = v8;
      }

      else
      {
        v12 = v10;
      }

      if (v10 == 4038640)
      {
        LODWORD(v13) = v11;
      }

      v14 = v10 == 4038623;
      if (v10 == 4038623)
      {
        v10 = 3592819;
      }

      else
      {
        v10 = v12;
      }

      if (v14)
      {
        v9 = 0;
      }

      else
      {
        v9 = v13;
      }
    }

    if (v10 != 3592819)
    {
      break;
    }

    v10 = 3592873;
    if ((v9 & 1) == 0)
    {
      v10 = 7631425;
    }
  }

  if (v9)
  {
    v15 = FunctionTable::ft[0] ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v16 = &unk_10003FCF4;
    v17 = -2;
    v18 = -1;
    do
    {
      qword_100074968[v18 + 1 + ((*(v16 - 1) ^ v15) / 0x9D28AF)] = qword_100074968[v18 + ((*v16 ^ v15) / 0x9D28AF)];
      v16 += 2;
      v17 += 2;
      v18 -= 2;
    }

    while (v17 < 0x20);
  }

  Madusa::ProfileTimer::~ProfileTimer(v20);
  return a1 + 133016;
}

uint64_t Madusa::AffineTransform::_ImpulseMatchedFilterExecute(uint64_t a1, float a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::ImpulseMatchedFilterExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::_ImpulseMatchedFilterExecute_Alt(uint64_t a1)
{
  v2.i16[3] = v1[3];
  v2.i16[2] = *v1 | 0xFFE0;
  v2.i16[1] = v2.u8[6];
  v2.i16[0] = v2.i16[2];
  v3.i64[0] = 0xFF000000FFLL;
  v3.i64[1] = 0xFF000000FFLL;
  v4 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v2), v3), xmmword_10006A730));
  v5.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A740, v4)).u32[0];
  v5.i32[1] = vmovn_s32(vcgtq_f32(v4, xmmword_10006A740)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v5, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::ImpulseMatchedFilterExecute_Alt(a1);
}

uint64_t Madusa::AffineTransform::FindPeaksExecute(uint64_t a1, uint64_t a2)
{
  Madusa::ProfileTimer::ProfileTimer(v15, &unk_10006BCBB, *(a1 + 8));
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 8651612;
  }

  else
  {
    v7 = 1388973;
  }

  v8 = 1;
  v9 = 553583;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 1388972)
        {
          break;
        }

        if (v9 == 553583)
        {
          v8 = 0;
          v9 = 1388973;
        }

        else if (v9 == 553600)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 1388973, v5[3] != ((QuickCodec::mask ^ v6) / 0x16D66C)))
        {
          v9 = 1389027;
          v8 = v10;
        }
      }

      if (v9 <= 1942538)
      {
        break;
      }

      if (v9 == 1942539)
      {
        v5 = v2;
        v9 = 553600;
      }

      else
      {
        v11 = v9 == 8651612;
        v9 = 553654;
        if (v11)
        {
          v6 = -382927581;
        }
      }
    }

    if (v9 != 1388973)
    {
      break;
    }

    v9 = 1389027;
    if ((v8 & 1) == 0)
    {
      v9 = 1942539;
    }
  }

  if (v8)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v16);
    v16.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v16);
  }

  func = __find_func(0xFF9F5F1F2020A0E0, 287613130);
  v13 = func(a1 + 133672, a2);
  Madusa::ProfileTimer::~ProfileTimer(v15);
  return v13;
}

uint64_t Madusa::AffineTransform::_FindPeaksExecute(uint64_t a1, uint64_t a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v3 + 1;
    }
  }

  else
  {
    v3 = QuickCodec::mask;
    if (v2[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::AffineTransform::FindPeaksExecute(a1, a2);
}

uint64_t Madusa::AffineTransform::_RefineCandidateList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v7 = 4617796;
  }

  else
  {
    v7 = 3586358;
  }

  v8 = 1;
  v9 = 216246;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        if (v9 > 3586357)
        {
          break;
        }

        if (v9 == 216246)
        {
          v8 = 0;
          v9 = 3586358;
        }

        else if (v9 == 216263)
        {
          v8 = (QuickCodec::mask != -70947757) | v8;
          v9 = v7;
        }

        else if ((*v5 & 0x1F) != 0 || v5[2] > 0x3Fu || (v8 = 1, v9 = 3586358, v5[3] != ((QuickCodec::mask ^ v6) / 0x3F52FB)))
        {
          v9 = 3586412;
          v8 = v10;
        }
      }

      if (v9 <= 3802586)
      {
        break;
      }

      if (v9 == 3802587)
      {
        v5 = v4;
        v9 = 216263;
      }

      else
      {
        v11 = v9 == 4617796;
        v9 = 216317;
        if (v11)
        {
          v6 = -810165361;
        }
      }
    }

    if (v9 != 3586358)
    {
      break;
    }

    v9 = 3586412;
    if ((v8 & 1) == 0)
    {
      v9 = 3802587;
    }
  }

  if (v8)
  {
    ++QuickCodec::mask;
  }

  return Madusa::AffineTransform::RefineCandidateList(a1, a2, a3, a4, 216263, 216317, 45840117, 3802586);
}

void Madusa::AffineTransform::PhaseEstimateExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v7, &unk_10006BCBB, *(a1 + 8));
  func = __find_func(0x1F5F5F5F0000C040, -236674934);
  func(a1 + 135256, a2, a3);
  Madusa::ProfileTimer::~ProfileTimer(v7);
}

void Madusa::AffineTransform::_PhaseEstimateExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006A750));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006A760, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006A760)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  Madusa::AffineTransform::PhaseEstimateExecute(a1, a2, a3);
}

void Madusa::AffineTransform::PhaseDeviationExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Madusa::ProfileTimer::ProfileTimer(v8, &unk_10006BCBB, *(a1 + 8));
  v6 = *Madusa::System::mpSystem == 2;
  func = __find_func(0x4F1FFF1F00E06060, -1583087414);
  func(a1 + 136824, a2, v6, v6, a3);
  Madusa::ProfileTimer::~ProfileTimer(v8);
}

void Madusa::AffineTransform::_PhaseDeviationExecute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      goto LABEL_5;
    }

LABEL_7:
    QuickCodec::mask = v4 + 1;
    goto LABEL_5;
  }

  v5 = 3503919 * v3[3];
  v4 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x2C46B2EC | v5 & 0x2C46B2EC) + (v5 ^ 0x2C46B2EC | ~(v5 | 0x2C46B2EC)) + 742830828 == (~(~(~(v5 | 0x2C0682E4) | v5 & 0x2C0682E4) | 0x403008) | ~(~(v5 | 0x2C0682E4) | v5 & 0x2C0682E4) & 0x403008) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

LABEL_5:
  Madusa::AffineTransform::PhaseDeviationExecute(a1, a2, a3);
}

int *Madusa::AffineTransform::GetScaleRangeLimits(int *this, int *a2, int *a3)
{
  if (*Madusa::System::mpSystem == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 20;
  }

  if (*Madusa::System::mpSystem == 2)
  {
    v4 = 90;
  }

  else
  {
    v4 = 64;
  }

  *this = v3;
  *a2 = v4;
  return this;
}

uint64_t Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(uint64_t result, int a2, int a3, unsigned int a4)
{
  *result = a2;
  *(result + 4) = 1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = a4;
  *(result + 44) = 1;
  *(result + 52) = 1;
  *(result + 48) = a3;
  if ((a2 + 1) <= 0x21 && ((1 << (a2 + 1)) & 0x200020001) != 0)
  {
    a2 = 8;
    *result = 8;
    *(result + 4) = 0;
  }

  if (a3)
  {
    if (a4 > 7)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!(a4 % a2))
    {
      return result;
    }

    goto LABEL_9;
  }

  *(result + 52) = 0;
  if (a4 <= 7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(result + 44) = 0;
  return result;
}

uint64_t Madusa::SafeSubBytePixelIndexer::SafeSubBytePixelIndexer(uint64_t result, int a2, int a3)
{
  *result = a2;
  *(result + 4) = 1;
  *(result + 8) = 0;
  v3 = 8 - a2;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 40) = 8 - a2;
  *(result + 44) = 1;
  *(result + 52) = 1;
  *(result + 48) = a3;
  if ((a2 + 1) <= 0x21 && ((1 << (a2 + 1)) & 0x200020001) != 0)
  {
    a2 = 8;
    *result = 8;
    *(result + 4) = 0;
  }

  if (a3)
  {
    if (v3 > 7)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (!(v3 % a2))
    {
      return result;
    }

    goto LABEL_9;
  }

  *(result + 52) = 0;
  if (v3 <= 7)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(result + 44) = 0;
  return result;
}

int *Madusa::SafeSubBytePixelIndexer::operator+=(int *result, uint64_t a2)
{
  if (*(a2 + 8) != 1)
  {
    *(result + 16) = 0;
    *(result + 32) = 0;
    *(result + 44) = 0;
    return result;
  }

  v2 = *a2;
  if (!*a2)
  {
    return result;
  }

  if (*(result + 16) != 1)
  {
    v5 = result[12];
    v6 = *result;
    v7 = v6 * v5;
    if (v7 < 0)
    {
      v7 = -v7;
    }

    goto LABEL_20;
  }

  v3 = *(result + 1);
  v4 = v3 + v2;
  if (v3 < 0)
  {
    if ((v2 & 0x8000000000000000) == 0 || v4 <= v3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_17;
  }

  if ((v2 & 0x8000000000000000) == 0 && v4 < v3)
  {
    goto LABEL_15;
  }

LABEL_16:
  *(result + 1) = v4;
  v2 = *a2;
  v8 = 1;
LABEL_17:
  *(result + 16) = v8;
  v5 = result[12];
  v6 = *result;
  v7 = v6 * v5;
  if (v7 < 0)
  {
    v7 = -v7;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_20:
  if (v2 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = -v2;
  }

  v10 = HIDWORD(v9);
  v11 = HIDWORD(v7);
  if (!HIDWORD(v9))
  {
    if (v11)
    {
      v12 = v11 * v9;
      if (v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    v15 = v7 * v9;
    goto LABEL_33;
  }

  if (v11)
  {
    goto LABEL_42;
  }

  v12 = v10 * v7;
  if (!(v10 * v7))
  {
    goto LABEL_32;
  }

LABEL_26:
  if (HIDWORD(v12))
  {
    goto LABEL_42;
  }

  v13 = v7 * v9;
  v14 = __CFADD__(v13, v12 << 32);
  v15 = v13 + (v12 << 32);
  if (v14)
  {
    goto LABEL_42;
  }

LABEL_33:
  if (((-v7 & ((v6 ^ v5) >> 63) ^ v2) & 0x8000000000000000) == 0)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_42:
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v20 = *(result + 32);
    if (v20 != 1)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  if (v15 > 0x8000000000000000)
  {
    goto LABEL_42;
  }

  v15 = -v15;
  if (v15)
  {
LABEL_36:
    v16 = v15 / 8;
    v17 = v15 % 8;
    v18 = 1;
    v19 = 1;
    v20 = *(result + 32);
    if (v20 != 1)
    {
      goto LABEL_53;
    }

LABEL_43:
    *(result + 32) = v18;
    v20 = v18;
    if (!v18)
    {
      goto LABEL_53;
    }

    v21 = *(result + 3);
    v22 = v21 + v16;
    if (v21 < 0)
    {
      if ((v16 & 0x8000000000000000) == 0 || v22 <= v21)
      {
        goto LABEL_51;
      }
    }

    else if (v16 < 0 || v22 >= v21)
    {
LABEL_51:
      *(result + 3) = v22;
      v20 = 1;
      goto LABEL_52;
    }

    v20 = 0;
LABEL_52:
    *(result + 32) = v20;
    goto LABEL_53;
  }

LABEL_40:
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v19 = 1;
  v20 = *(result + 32);
  if (v20 == 1)
  {
    goto LABEL_43;
  }

LABEL_53:
  if ((v17 & 0x80000000) == 0)
  {
    if (result[11])
    {
      goto LABEL_55;
    }

LABEL_72:
    v25 = 0;
    v23 = result[10];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_59;
  }

  if (v20)
  {
    v27 = *(result + 3);
    v20 = v27 != 0x8000000000000000;
    if (v27 != 0x8000000000000000)
    {
      *(result + 3) = v27 - 1;
    }

    *(result + 32) = v27 != 0x8000000000000000;
  }

  if (v19)
  {
    v17 += 8;
  }

  if ((result[11] & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_55:
  *(result + 44) = v19;
  v23 = result[10];
  if (!v19)
  {
    v25 = 0;
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

LABEL_59:
    if (v20)
    {
      v26 = *(result + 3);
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        *(result + 3) = v26 + 1;
      }

      *(result + 32) = v26 != 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      result[10] = v23 + 8;
      *(result + 44) = 1;
    }

    return result;
  }

  v24 = v23 - v17;
  v25 = v24 == v24;
  if (v24 == v24)
  {
    result[10] = v24;
    v23 = v24;
  }

  *(result + 44) = (v24 + 0x80000000) >> 32 == 0;
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_59;
  }

LABEL_73:
  if (v23 >= 8)
  {
    if (v20)
    {
      v28 = *(result + 3);
      if (v28 != 0x8000000000000000)
      {
        *(result + 3) = v28 - 1;
      }

      *(result + 32) = v28 != 0x8000000000000000;
    }

    if (v25)
    {
      result[10] = v23 - 8;
      *(result + 44) = 1;
    }
  }

  return result;
}

uint64_t Madusa::SafeSubBytePixelIndexer::IsValid(Madusa::SafeSubBytePixelIndexer *this)
{
  if (*(this + 4) == 1 && *(this + 16) == 1 && *(this + 32) == 1 && *(this + 44) == 1)
  {
    return *(this + 52) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t Madusa::EnhancedReferenceSignal::Execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v10.i32[0] = *a3;
  v11 = *(a3 + 4);
  v12 = *(a3 + 12);
  v13 = *a5;
  if (*a5 != 4)
  {
    if (v13 == 3)
    {
      v23 = -v10.f32[0];
      v10 = vneg_f32(v11);
      v24 = v10;
      v12 = -v12;
      v25 = v12;
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    else if (v13 == 2)
    {
      v23 = -v11.f32[0];
      LODWORD(v24) = v10.i32[0];
      v14 = -v12;
      v12 = v11.f32[1];
      *(&v24 + 1) = v14;
      v25 = v11.f32[1];
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v23 = *a3;
      v24 = v11;
      v10.i32[0] = v11.i32[0];
      v25 = v12;
      if (*(a5 + 4) != 1)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v10.f32[0] = -v10.f32[0];
  LODWORD(v23) = *(a3 + 4);
  v24 = __PAIR64__(LODWORD(v12), v10.u32[0]);
  v12 = -v11.f32[1];
  v25 = -v11.f32[1];
  if (*(a5 + 4) == 1)
  {
LABEL_9:
    *&v24 = -v10.f32[0];
    v25 = -v12;
  }

LABEL_10:
  func = __find_func(0xBF5FBFBFA0E0C080, 1373913194);
  func(a1, a2, &v23);
  v16 = __find_func(0x2FBFDF9F40C000A0, -1056694198);
  result = v16(a1, a4, a5);
  v18.i16[0] = *v5 | 0xFFE0;
  v18.i16[1] = v5[3];
  v18.i32[1] = v18.i32[0];
  v19.i64[0] = 0xFF000000FFLL;
  v19.i64[1] = 0xFF000000FFLL;
  v20 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v18), v19), xmmword_10006AA10));
  v21.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA20, v20)).u32[0];
  v21.i32[1] = vmovn_s32(vcgtq_f32(v20, xmmword_10006AA20)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v21, 0xFuLL))) & ((v5[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v22 = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    return v22(0, 104);
  }

  return result;
}

uint64_t Madusa::EnhancedReferenceSignal::_Execute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6.i16[3] = v5[3];
  v6.i16[2] = *v5 | 0xFFE0;
  v6.i16[1] = v6.u8[6];
  v6.i16[0] = v6.i16[2];
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v6), v7), xmmword_10006AA30));
  v9.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA40, v8)).u32[0];
  v9.i32[1] = vmovn_s32(vcgtq_f32(v8, xmmword_10006AA40)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v9, 0xFuLL))) & ((v5[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::EnhancedReferenceSignal::Execute(a1, a2, a3, a4, a5);
}

float Madusa::EnhancedReferenceSignal::_Execute_Alt()
{
  if ((*v0 & 0x1F) != 0 || v0[2] > 0x3Fu)
  {
    v1 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return 50.0;
    }
  }

  else
  {
    v3 = 204589 * v0[3];
    v1 = QuickCodec::mask;
    if (v3 - (v3 ^ 0x295D144 | v3 & 0x295D144) + (v3 ^ 0x295D144 | ~(v3 | 0x295D144)) + 43372868 != (~(~(~(v3 | 0x2814140) | v3 & 0x2814140) | 0x149004) | ~(~(v3 | 0x2814140) | v3 & 0x2814140) & 0x149004) && QuickCodec::mask == -70947757)
    {
      return 50.0;
    }
  }

  QuickCodec::mask = v1 + 1;
  return 50.0;
}

void Madusa::EnhancedReferenceSignal::PhaseEstimationExecute(uint64_t a1, uint64_t a2, float *a3)
{
  v5 = a1;
  v6 = Madusa::EnhancedReferenceSignal::kGridPointU;
  v7 = 200;
  v8 = a1;
  v9 = Madusa::EnhancedReferenceSignal::kGridPointV;
  do
  {
    v10 = *v9++;
    v11 = v10;
    v12 = *v6++;
    Madusa::RefineCandidates::TransformSinglePoint(a3, v8, v11, v12);
    v8 += 28;
    --v7;
  }

  while (v7);
  v13 = v5 + 5600;
  v14 = 200;
  do
  {
    Madusa::PhaseEstimation::EstimatePhaseAtPoint(a2, v5, v13);
    v5 += 28;
    v13 += 16;
    --v14;
  }

  while (v14);
}

void Madusa::EnhancedReferenceSignal::_PhaseEstimationExecute(uint64_t a1, uint64_t a2, float *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 13627805;
  }

  else
  {
    v6 = 5750966;
  }

  v7 = 1;
  v8 = 2545615;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        if (v8 > 5750965)
        {
          break;
        }

        if (v8 == 2545615)
        {
          v7 = 0;
          v8 = 5750966;
        }

        else if (v8 == 2545632)
        {
          v7 = (QuickCodec::mask != -70947757) | v7;
          v8 = v6;
        }

        else if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 5750966, v4[3] != ((QuickCodec::mask ^ v5) / 0x65570F)))
        {
          v8 = 5751020;
          v7 = v9;
        }
      }

      if (v8 <= 8296563)
      {
        break;
      }

      if (v8 == 8296564)
      {
        v4 = v3;
        v8 = 2545632;
      }

      else
      {
        v10 = v8 == 13627805;
        v8 = 2545686;
        if (v10)
        {
          v5 = -1473678273;
        }
      }
    }

    if (v8 != 5750966)
    {
      break;
    }

    v8 = 5751020;
    if ((v7 & 1) == 0)
    {
      v8 = 8296564;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  Madusa::EnhancedReferenceSignal::PhaseEstimationExecute(a1, a2, a3);
}

float Madusa::EnhancedReferenceSignal::PhaseDeviationExecute(uint64_t a1, float *a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a1 + 9600);
  v6 = a1 + 5600;
  v7 = a1 + 10400;
  v8 = (a1 + 11200);
  v9 = a1 + 8800;
  do
  {
    while (1)
    {
      v5[v4] = ((*&Madusa::EnhancedReferenceSignal::kGridPointPhaseInRadians[v4] * 10430.0) + 0.5);
      if (*(v6 + 12) == 1)
      {
        break;
      }

      *(v7 + v4 * 4) = 0;
      v8[v4] = 0;
      *(v9 + v4 * 4) = v5[v4] + 0x4000;
      v6 += 16;
      if (++v4 == 200)
      {
        goto LABEL_5;
      }
    }

    *(v7 + v4 * 4) = Madusa::EnhancedReferenceSignal::kGridPointV[v4] << 9;
    v8[v4] = Madusa::EnhancedReferenceSignal::kGridPointU[v4] << 9;
    *(v9 + v4 * 4) = vcvts_n_s32_f32(*(v6 + 8), 0x10uLL);
    v6 += 16;
    ++v4;
  }

  while (v4 != 200);
LABEL_5:
  v10 = 200;
  do
  {
    v11 = v5 - 200;
    v12 = *(v5 - 200);
    v13 = *v5++;
    *v11 = (v12 - v13);
    --v10;
  }

  while (v10);
  v14 = vcvts_n_s32_f32(a2[1], 4uLL);
  v15 = vcvts_n_s32_f32(*a2, 4uLL);
  v16 = 6553600;
  v17 = 200;
  do
  {
    v18 = *(v8 - 600);
    v19 = *(v8 - 200);
    v20 = *v8++;
    v16 = ((v18 + (v19 * v15 + v20 * v14) / 16) >> 15) + v16 - ((v18 + (v19 * v15 + v20 * v14) / 16) ^ ((v18 + (v19 * v15 + v20 * v14) / 16) >> 15));
    --v17;
  }

  while (v17);
  v21 = *(a3 + 5);
  v22.i16[0] = *v3 | 0xFFE0;
  v22.i16[1] = v3[3];
  v22.i32[1] = v22.i32[0];
  v23.i64[0] = 0xFF000000FFLL;
  v23.i64[1] = 0xFF000000FFLL;
  v24 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v22), v23), xmmword_10006AA50));
  v25.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA60, v24)).u32[0];
  v25.i32[1] = vmovn_s32(vcgtq_f32(v24, xmmword_10006AA60)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v25, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    v26 = FunctionTable::ft ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft ^ 0x157E9386;
    v27 = &unk_10003FCF4;
    v28 = -2;
    v29 = -1;
    do
    {
      qword_100074968[v29 + 1 + ((*(v27 - 1) ^ v26) / 0x9D28AF)] = qword_100074968[v29 + ((*v27 ^ v26) / 0x9D28AF)];
      v27 += 2;
      v28 += 2;
      v29 -= 2;
    }

    while (v28 < 0x20);
  }

  v30 = 6553600 - v16;
  if (6553600 - v16 <= v16)
  {
    v30 = v16;
  }

  if (v21)
  {
    v16 = v30;
  }

  return vcvts_n_f32_s32(v16, 0x10uLL);
}

float Madusa::EnhancedReferenceSignal::_PhaseDeviationExecute(uint64_t a1, float *a2, uint64_t a3)
{
  v4.i16[3] = v3[3];
  v4.i16[2] = *v3 | 0xFFE0;
  v4.i16[1] = v4.u8[6];
  v4.i16[0] = v4.i16[2];
  v5.i64[0] = 0xFF000000FFLL;
  v5.i64[1] = 0xFF000000FFLL;
  v6 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v4), v5), xmmword_10006AA70));
  v7.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006AA80, v6)).u32[0];
  v7.i32[1] = vmovn_s32(vcgtq_f32(v6, xmmword_10006AA80)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v7, 0xFuLL))) & ((v3[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::EnhancedReferenceSignal::PhaseDeviationExecute(a1, a2, a3);
}

Madusa::SequenceManager *Madusa::SequenceManager::SequenceManager(Madusa::SequenceManager *this)
{
  *this = 0;
  *(this + 4) = 1;
  bzero(this + 8, 0x7ACuLL);
  *(this + 252) = 0xCD87C0F5E59B85ALL;
  *(this + 23) = -1282469977;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 140) = 0u;
  *(this + 156) = 0u;
  *(this + 132) = 0xB38F0FA7B6B35D69;
  *(this + 172) = xmmword_10006B400;
  *(this + 188) = 0;
  *(this + 196) = 0u;
  *(this + 212) = xmmword_10006B410;
  *(this + 228) = 0;
  *(this + 236) = 0u;
  *(this + 33) = 0;
  *(this + 17) = 0u;
  *(this + 65) = 1582938202;
  *(this + 292) = xmmword_10006B420;
  *(this + 308) = 0u;
  *(this + 332) = xmmword_10006B430;
  *(this + 348) = 0u;
  *(this + 372) = 0xCD87C0F8D7BB55ALL;
  *(this + 380) = 0u;
  *(this + 396) = 0u;
  *(this + 412) = 0x5E59B85A4B4B5274;
  *(this + 420) = 0u;
  *(this + 436) = 0u;
  v2 = *(this + 108);
  *(this + 452) = *(this + 92);
  v3 = *(this + 92);
  *(this + 468) = v2;
  v4 = *(this + 148);
  *(this + 492) = *(this + 132);
  *(this + 508) = v4;
  v5 = *(this + 188);
  *(this + 532) = *(this + 172);
  *(this + 548) = v5;
  v6 = *(this + 228);
  *(this + 572) = *(this + 212);
  *(this + 588) = v6;
  v7 = *(this + 388);
  *(this + 612) = *(this + 372);
  *(this + 628) = v7;
  v8 = *(this + 268);
  v9 = *(this + 252);
  *(this + 652) = v9;
  *(this + 668) = v8;
  v10 = *(this + 428);
  v11 = *(this + 412);
  *(this + 692) = v11;
  *(this + 708) = v10;
  v12 = *(this + 308);
  *(this + 732) = *(this + 292);
  *(this + 748) = v12;
  v13 = *(this + 348);
  *(this + 772) = *(this + 332);
  *(this + 788) = v13;
  v14 = *(this + 68);
  *(this + 812) = *(this + 52);
  *(this + 828) = v14;
  *(this + 852) = xmmword_10006B440;
  *(this + 217) = 1263227508;
  *(this + 872) = 0u;
  *(this + 892) = xmmword_10006B450;
  *(this + 227) = 1263227508;
  *(this + 57) = 0u;
  v15 = *(this + 108);
  *(this + 932) = *(this + 92);
  *(this + 948) = v15;
  v16 = *(this + 148);
  *(this + 972) = *(this + 132);
  *(this + 988) = v16;
  v17 = *(this + 868);
  *(this + 1012) = *(this + 852);
  *(this + 1028) = v17;
  v18 = *(this + 388);
  *(this + 1052) = *(this + 372);
  *(this + 1068) = v18;
  v19 = *(this + 268);
  *(this + 1092) = v9;
  *(this + 1108) = v19;
  v20 = *(this + 428);
  *(this + 1132) = *(this + 412);
  *(this + 1148) = v20;
  v21 = *(this + 908);
  *(this + 1172) = *(this + 892);
  *(this + 1188) = v21;
  v22 = *(this + 52);
  v23 = *(this + 68);
  *(this + 1212) = v22;
  *(this + 1228) = v23;
  *(this + 1252) = v22;
  *(this + 1268) = v23;
  *(this + 1292) = *(this + 52);
  *(this + 1308) = *(this + 68);
  *(this + 1336) = xmmword_10006B4E0;
  *(this + 1352) = unk_10006B4F0;
  *(this + 1372) = xmmword_10006B460;
  *(this + 1412) = xmmword_10006B470;
  *(this + 1452) = xmmword_10006B480;
  *(this + 1492) = xmmword_10006B490;
  *(this + 32) = 0;
  *(this + 72) = 0;
  *(this + 324) = 0;
  *(this + 364) = 0;
  *(this + 484) = *(this + 124);
  *(this + 524) = *(this + 164);
  *(this + 564) = *(this + 204);
  *(this + 604) = *(this + 244);
  *(this + 644) = *(this + 404);
  *(this + 684) = *(this + 284);
  *(this + 724) = *(this + 444);
  *(this + 764) = *(this + 324);
  *(this + 804) = *(this + 364);
  *(this + 844) = *(this + 84);
  *(this + 222) = 0;
  *(this + 232) = 0;
  *(this + 964) = *(this + 124);
  *(this + 1004) = *(this + 164);
  *(this + 1044) = *(this + 884);
  *(this + 1084) = *(this + 404);
  *(this + 1124) = *(this + 284);
  *(this + 1164) = *(this + 444);
  *(this + 1204) = *(this + 924);
  v24 = *(this + 84);
  *(this + 1244) = v24;
  *(this + 1284) = v24;
  *(this + 1324) = *(this + 84);
  *(this + 333) = -695048647;
  *(this + 342) = 0;
  *(this + 1388) = 0u;
  *(this + 1404) = 0;
  *(this + 1444) = 0;
  *(this + 1428) = 0u;
  *(this + 1468) = 0u;
  *(this + 1484) = 0;
  *(this + 377) = 1582938202;
  *(this + 1512) = 0u;
  *(this + 191) = 0x8EE86CB400000000;
  *(this + 1540) = 0u;
  *(this + 1556) = 0u;
  *(this + 384) = -962818267;
  v25 = *(this + 108);
  *(this + 1572) = v3;
  *(this + 1588) = v25;
  *(this + 1604) = *(this + 124);
  v26 = *(this + 132);
  v27 = *(this + 148);
  *(this + 1644) = *(this + 164);
  *(this + 1628) = v27;
  *(this + 1612) = v26;
  *(this + 1684) = *(this + 1364);
  v28 = *(this + 1348);
  *(this + 1652) = *(this + 1332);
  *(this + 1668) = v28;
  *(this + 1692) = *(this + 1372);
  *(this + 1708) = *(this + 1388);
  *(this + 1724) = *(this + 1404);
  v29 = *(this + 372);
  v30 = *(this + 388);
  *(this + 1764) = *(this + 404);
  *(this + 1732) = v29;
  *(this + 1748) = v30;
  *(this + 1772) = *(this + 1412);
  *(this + 1804) = *(this + 1444);
  *(this + 1788) = *(this + 1428);
  v31 = *(this + 428);
  *(this + 1812) = v11;
  *(this + 1828) = v31;
  *(this + 1844) = *(this + 444);
  v32 = *(this + 1452);
  v33 = *(this + 1468);
  *(this + 1884) = *(this + 1484);
  *(this + 1868) = v33;
  *(this + 1852) = v32;
  v34 = *(this + 1532);
  *(this + 1924) = *(this + 1564);
  v35 = *(this + 1548);
  *(this + 1892) = v34;
  *(this + 1908) = v35;
  *(this + 1932) = *(this + 1492);
  *(this + 1948) = *(this + 1508);
  *(this + 1964) = *(this + 1524);
  v36 = *(Madusa::System::mpSystem + 32);
  if (v36 <= 1)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        *(this + 1) = this + 452;
        return this;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v36 != 2)
  {
    if (v36 != 3)
    {
LABEL_8:
      atomic_store(0, this + 4);
      return this;
    }

LABEL_7:
    *(this + 1) = this + 932;
    return this;
  }

  *(this + 1) = this + 1572;
  return this;
}

uint64_t Madusa::SequenceManager::ValidateSequence(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    v10 = 0;
    atomic_store(0, (a1 + 4));
LABEL_24:
    v9 = 4294967292;
    goto LABEL_25;
  }

  v3 = atomic_load((a1 + 4));
  if ((v3 & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = atomic_load(a1);
  v20 = v4;
  v5 = *(a1 + 8);
  v17 = *v5;
  v18 = v5[1];
  v19 = *(v5 + 4);
  if (*v5 != a2)
  {
    v6 = *(v5 + 40);
    v17 = v6;
    v18 = *(v5 + 56);
    v19 = *(v5 + 9);
    if (v6 != a2)
    {
      v17 = v5[5];
      v18 = v5[6];
      v19 = *(v5 + 14);
      if (v17 != a2)
      {
        v7 = *(v5 + 120);
        v17 = v7;
        v18 = *(v5 + 136);
        v19 = *(v5 + 19);
        if (v7 != a2)
        {
          v17 = v5[10];
          v18 = v5[11];
          v19 = *(v5 + 24);
          if (v17 != a2)
          {
            v8 = *(v5 + 200);
            v17 = v8;
            v18 = *(v5 + 216);
            v19 = *(v5 + 29);
            if (v8 != a2)
            {
              v17 = v5[15];
              v18 = v5[16];
              v19 = *(v5 + 34);
              if (v17 != a2)
              {
                v17 = *(v5 + 280);
                v18 = *(v5 + 296);
                v19 = *(v5 + 39);
                if (v17 != a2)
                {
                  v17 = v5[20];
                  v18 = v5[21];
                  v19 = *(v5 + 44);
                  if (v17 != a2)
                  {
                    v17 = *(v5 + 360);
                    v18 = *(v5 + 376);
                    v19 = *(v5 + 49);
                    if (v17 != a2)
                    {
LABEL_23:
                      v10 = 0;
                      goto LABEL_24;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v20 == DWORD1(v17) || v20 == DWORD2(v17) || v20 == HIDWORD(v17) || v20 == v18 || v20 == DWORD1(v18) || v20 == DWORD2(v18) || v20 == HIDWORD(v18) || v20 == v19)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v10 = v20 == HIDWORD(v19);
    if (v20 == HIDWORD(v19))
    {
      v9 = 0;
    }

    else
    {
      v9 = 4294967292;
    }
  }

LABEL_25:
  atomic_store(a2, a1);
  atomic_store(v10, (a1 + 4));
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    if (QuickCodec::mask == -70947757)
    {
      return v9;
    }

    goto LABEL_34;
  }

  if (v2[3] == 212 || QuickCodec::mask != -70947757)
  {
LABEL_34:
    v12 = FunctionTable::ft ^ 0x157E9386;
    QuickCodec::mask = FunctionTable::ft ^ 0x157E9386;
    v13 = &unk_10003FCF4;
    v14 = -2;
    v15 = -1;
    do
    {
      qword_100074968[v15 + 1 + ((*(v13 - 1) ^ v12) / 0x9D28AF)] = qword_100074968[v15 + ((*v13 ^ v12) / 0x9D28AF)];
      v13 += 2;
      v14 += 2;
      v15 -= 2;
    }

    while (v14 < 0x20);
  }

  return v9;
}

uint64_t Madusa::SequenceManager::_ValidateSequence(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v5 = 11712086;
  }

  else
  {
    v5 = 1964791;
  }

  v6 = 1;
  v7 = 2233123;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v10 = v6;
        if (v7 <= 2233193)
        {
          break;
        }

        if (v7 == 2233194)
        {
          if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu || (v6 = 1, v7 = 1964791, v3[3] != ((QuickCodec::mask ^ v4) / 0x1E0C62)))
          {
            v7 = 1964845;
            v6 = v10;
          }
        }

        else if (v7 == 4197897)
        {
          v3 = v2;
          v7 = 2233140;
        }

        else
        {
          v11 = v7 == 11712086;
          v7 = 2233194;
          if (v11)
          {
            v4 = -483971717;
          }
        }
      }

      if (v7 <= 2233122)
      {
        break;
      }

      v8 = (QuickCodec::mask != -70947757) | v6;
      if (v7 == 2233140)
      {
        v9 = v5;
      }

      else
      {
        v9 = v7;
      }

      if (v7 == 2233140)
      {
        LODWORD(v10) = v8;
      }

      v11 = v7 == 2233123;
      if (v7 == 2233123)
      {
        v7 = 1964791;
      }

      else
      {
        v7 = v9;
      }

      if (v11)
      {
        v6 = 0;
      }

      else
      {
        v6 = v10;
      }
    }

    if (v7 != 1964791)
    {
      break;
    }

    v7 = 1964845;
    if ((v6 & 1) == 0)
    {
      v7 = 4197897;
    }
  }

  if (v6)
  {
    ++QuickCodec::mask;
  }

  return Madusa::SequenceManager::ValidateSequence(a1, a2);
}

uint64_t Madusa::SequenceManager::ValidateAcknowledge(unsigned int *a1, int *a2)
{
  *a2 = 0;
  v5 = atomic_load(a1);
  switch(v5)
  {
    case 0xC69C8F25:
      v6 = -1897370444;
      goto LABEL_7;
    case 0x5E59B85Au:
      v6 = 1263227508;
      goto LABEL_7;
    case 0xCD87C0Fu:
      v6 = -1921272486;
LABEL_7:
      *a2 = v6;
      break;
  }

  v7.i16[0] = *v2 | 0xFFE0;
  v7.i16[1] = v2[3];
  v7.i32[1] = v7.i32[0];
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v7), v8), xmmword_10006B4A0));
  v10.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B4B0, v9)).u32[0];
  v10.i32[1] = vmovn_s32(vcgtq_f32(v9, xmmword_10006B4B0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v10, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    fegetenv(&v13);
    v13.__fpcr &= QuickCodec::mask + 70947740;
    fesetenv(&v13);
  }

  func = __find_func(0xFF3F5F5F00C0A050, 293904522);
  return func(a1, *a2);
}

uint64_t Madusa::SequenceManager::_ValidateAcknowledge(unsigned int *a1, int *a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006B4C0));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B4D0, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006B4D0)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::SequenceManager::ValidateAcknowledge(a1, a2);
}

uint64_t SDKStartup(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v26);
  Madusa::RandomNumGenerator::RandomNumGenerator(v25);
  Madusa::Session::gSessionOffset = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey0 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey1 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey2 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  Madusa::Session::gSessionKey3 = Madusa::RandomNumGenerator::GetNextNumber(v25);
  *&off_1000748E8 = 0u;
  *&off_1000748F8 = 0u;
  *&qword_100074908 = 0u;
  dword_1000748E0 = -1;
  if (!a1)
  {
    v10 = 4294967194;
    goto LABEL_45;
  }

  v3 = *(a1 + 16);
  if (v3 != 512)
  {
    if (v3 == 256)
    {
      if (*a1 != 56)
      {
        goto LABEL_34;
      }

      off_100074918 = *(a1 + 24);
      off_100074920 = *(a1 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(a1 + 32), sub_100026324, *(a1 + 48), v2);
    }

    else
    {
      if (v3 != 157 || *a1 != 32)
      {
        goto LABEL_34;
      }

      v4 = *(a1 + 24);
      if (v4 != 51348)
      {
        v5 = (*(v4 - 51340) - 2096209194);
        off_1000748E8 = (*(v4 - 51348) - 1506747311);
        off_1000748F0 = v5;
        v6 = (*(v4 - 51324) - 1950008364);
        off_1000748F8 = (*(v4 - 51332) - 1621769547);
        off_100074900 = v6;
        v7 = (*(v4 - 51308) - 1563763406);
        qword_100074908 = *(v4 - 51316) - 1697636733;
        off_100074910 = v7;
        dword_1000748E0 = *(v4 - 51300);
        v8 = 1;
        v9 = *(a1 + 8);
        if (!v9)
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }
    }
  }

  v8 = 0;
  v9 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_13:
  v11 = *(v9 + 16);
  if (v11 != 157)
  {
    if (v11 != 512)
    {
      if (v11 != 256 || *v9 != 56)
      {
        goto LABEL_34;
      }

      off_100074918 = *(v9 + 24);
      off_100074920 = *(v9 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(v9 + 32), sub_100026324, *(v9 + 48), v2);
      v12 = *(v9 + 8);
      if (!v12)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

LABEL_24:
    v12 = *(v9 + 8);
    if (!v12)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if (*v9 != 32)
  {
    goto LABEL_34;
  }

  if (v8)
  {
LABEL_23:
    v8 = 1;
    goto LABEL_24;
  }

  v13 = *(v9 + 24);
  if (v13 != 51348)
  {
    v14 = (*(v13 - 51340) - 2096209194);
    off_1000748E8 = (*(v13 - 51348) - 1506747311);
    off_1000748F0 = v14;
    v15 = (*(v13 - 51324) - 1950008364);
    off_1000748F8 = (*(v13 - 51332) - 1621769547);
    off_100074900 = v15;
    v16 = (*(v13 - 51308) - 1563763406);
    qword_100074908 = *(v13 - 51316) - 1697636733;
    off_100074910 = v16;
    dword_1000748E0 = *(v13 - 51300);
    goto LABEL_23;
  }

  v8 = 0;
  v12 = *(v9 + 8);
  if (!v12)
  {
    goto LABEL_36;
  }

LABEL_25:
  v17 = *(v12 + 16);
  if (v17 == 157)
  {
    if (*v12 == 32)
    {
      if ((v8 & 1) == 0)
      {
        v18 = *(v12 + 24);
        if (v18 != 51348)
        {
          v19 = (*(v18 - 51340) - 2096209194);
          off_1000748E8 = (*(v18 - 51348) - 1506747311);
          off_1000748F0 = v19;
          v20 = (*(v18 - 51324) - 1950008364);
          off_1000748F8 = (*(v18 - 51332) - 1621769547);
          off_100074900 = v20;
          v21 = (*(v18 - 51308) - 1563763406);
          qword_100074908 = *(v18 - 51316) - 1697636733;
          off_100074910 = v21;
          dword_1000748E0 = *(v18 - 51300);
        }
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v17 != 512)
  {
    if (v17 == 256 && *v12 == 56)
    {
      off_100074918 = *(v12 + 24);
      off_100074920 = *(v12 + 40);
      Madusa::MemoryMaster::SetMemoryAllocatorAndDeallocator(sub_100026308, *(v12 + 32), sub_100026324, *(v12 + 48), v2);
      goto LABEL_36;
    }

LABEL_34:
    v10 = 4294967293;
    goto LABEL_45;
  }

LABEL_36:
  if (off_100074900)
  {
    v22 = off_1000748F8 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22 || off_1000748F0 == 0)
  {
    v10 = 4294967194;
  }

  else
  {
    v10 = 0;
  }

LABEL_45:
  CConfigFPU::~CConfigFPU(&v26);
  return v10;
}

uint64_t SDKAcknowledge(int a1, void *a2, Madusa::Session *this)
{
  v5 = Madusa::Session::UnscrambleSessionPointer(this, a2);
  if (!v5)
  {
    return 4294967293;
  }

  v6 = qword_100074908;

  return Madusa::Session::Acknowledge(v5, a1, v6, a2);
}

uint64_t SDKInitialize(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  if (!a4)
  {
    return 4294967293;
  }

  CConfigFPU::CConfigFPU(&v18);
  v7 = Madusa::MemoryMaster::Create(0x13B8);
  if (*Madusa::System::mpSystem == 3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (v7 && (v9 = v7, (v10 = (*(*v7 + 16))(v7, 5048)) != 0))
  {
    v11 = v10;
    v12 = Madusa::Session::Session(v10, v9, v8);
    *a4 = Madusa::Session::ScrambleSessionPointer(v12);
    Madusa::Session::SetParallelFor(v11, sub_100024F00, 0);
    Madusa::Session::SetProcessParams(v11, a1);
    Madusa::Session::SetStorageRequirements(v11, dword_1000748E0);
    if (off_1000748E8)
    {
      if (a1)
      {
        a1 = *(a1 + 8);
      }

      CConfigFPU::ConfigForUserCode(&v18);
      v13 = off_1000748E8;
      func = __find_func(0xDFBF3F7FE0406020, 822395050);
      v15 = func(v11 + 136, 3012497319);
      v13(v15, a1);
      CConfigFPU::ConfigForSDKCode(&v18);
    }

    v16 = Madusa::Session::ValidateSequence(v11, 3012497319);
  }

  else
  {
    v16 = 4294967294;
  }

  CConfigFPU::~CConfigFPU(&v18);
  return v16;
}

uint64_t sub_100024F00(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = a3;
  Madusa::MemoryMaster::MemoryMaster(v17, a3);
  if (Madusa::MemoryMaster::Valid(v17))
  {
    Buffer = Madusa::MemoryMaster::AllocateBuffer(v17, v7);
    if (Buffer)
    {
      v10 = Buffer;
      CConfigFPU::CConfigFPU(&v18);
      v12 = Madusa::Session::UnscrambleSessionPointer(a4, v11);
      v13 = 4294967293;
      if (a1 <= a2)
      {
        v14 = v12;
        if (v12)
        {
          v15 = Madusa::Session::ValidateSequence(v12, 1582938202);
          if (v15 || (v15 = Madusa::Session::ProcessRange(v14, a1, a2, v10, &v18), v15))
          {
            v13 = v15;
          }

          else if (*(v14 + 128))
          {
            v13 = 0;
          }

          else
          {
            v13 = 4294967195;
          }
        }
      }

      CConfigFPU::~CConfigFPU(&v18);
      Buffer = v10;
    }

    else
    {
      v13 = 4294967294;
    }

    Madusa::MemoryMaster::DeAllocateBuffer(Buffer, v9);
  }

  else
  {
    v13 = 4294967294;
  }

  Madusa::MemoryMaster::Deallocate(v17);
  Madusa::MemoryMaster::~MemoryMaster(v17);
  return v13;
}

uint64_t SDKProcessImageData(uint64_t a1, _DWORD *a2)
{
  v3 = Madusa::Session::UnscrambleSessionPointer(a1, a2);
  result = 4294967293;
  if (a2)
  {
    if (v3)
    {
      result = Madusa::Session::ValidateSequence(v3, 215514127);
      if (!result)
      {
        *(a2 + 1) = 0u;
        *(a2 + 5) = 0u;
        *(a2 + 9) = -1;
        *(a2 + 11) = -1;
        a2[13] = -1;
        *(a2 + 14) = 0u;
        *(a2 + 18) = 0u;
        *(a2 + 22) = 0u;
        *(a2 + 26) = 0u;
        *(a2 + 29) = 0u;
        *(a2 + 34) = 0u;
        *(a2 + 38) = 0u;
        *(a2 + 42) = 0u;
        *a2 = 184;
        v5 = CConfigFPU::CConfigFPU(&v32);
        CConfigFPU::ConfigForUserCode(v5);
        v6 = off_1000748F0;
        if (!off_1000748F0)
        {
          DetectorAndDetect = 4294967194;
LABEL_43:
          CConfigFPU::~CConfigFPU(&v32);
          return DetectorAndDetect;
        }

        func = __find_func(0xDFDF7F5FA0000060, 828670090);
        v8 = func(v3 + 136, 3857773005);
        (v6)(v8, a2, a2 + 46);
        CConfigFPU::ConfigForSDKCode(&v32);
        if (*a2 == 184)
        {
          Madusa::Session::ValidateSecureParams(v3, a2);
          if (*(Madusa::System::mpSystem + 32) != 1)
          {
            v9 = a2[3];
            v10 = a2[4];
            goto LABEL_14;
          }

          v9 = *(v3 + 1163);
          if (v9 != a2[3])
          {
            goto LABEL_42;
          }

          v10 = *(v3 + 1164);
          if (v10 != a2[4])
          {
            goto LABEL_42;
          }

          if (*(v3 + 1160) <= 1u)
          {
            if (*(v3 + 1162) != a2[1])
            {
              goto LABEL_42;
            }

LABEL_14:
            if (v9 <= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v9;
            }

            if (v9 >= v10)
            {
              v9 = v10;
            }

            if (v9 >= 1 && (v12 / v9) <= 1.03)
            {
              a2[3] = v12;
              a2[4] = v12;
            }

            Madusa::ImageParamsAdjuster::ImageParamsAdjuster(v30, a2);
            Madusa::ImageParamsAdjuster::Adjust(v30);
            if (*(Madusa::System::mpSystem + 32) == 1)
            {
              Madusa::BandModeImageParamsValidator::BandModeImageParamsValidator(v31, a2, v3);
              v13 = Madusa::ImageParamsValidator::Validate(v31);
              if (v13 == -4)
              {
                CConfigFPU::ConfigForUserCode(&v32);
                v26 = off_1000748F8;
                if (off_1000748F8 && *(Madusa::System::mpSystem + 32) != 2)
                {
                  v27 = __find_func(0xBFFFDFFF0000E0F0, 1363419178);
                  v28 = v27(v3 + 136, 3445273946);
                  NotificationParam = Madusa::Session::GetNotificationParam(v3);
                  v26(v28, NotificationParam);
                }

                CConfigFPU::ConfigForSDKCode(&v32);
                Madusa::Session::UnlockSecureParams(v3);
                DetectorAndDetect = 0;
              }

              else
              {
                DetectorAndDetect = v13;
                if (!v13)
                {
                  ConvertImageParams(a2, v31);
                  ProcessImageProperties = CreateProcessImageProperties(a2, v30);
                  DetectorAndDetect = Madusa::Session::CreateDetectorAndDetect(v3, v31, ProcessImageProperties, v30, &v32);
                  if (!DetectorAndDetect)
                  {
                    v15 = __find_func(0xFF1F1FDF00202070, 296017930);
                    v16 = v15(v3);
                    if (v16 && off_100074900)
                    {
                      CConfigFPU::ConfigForUserCode(&v32);
                      v17 = off_100074900;
                      v18 = __find_func(0x1F3FBF5F60A0C040, -242990966);
                      v19 = v18(v3 + 136, 2621311653);
                      v20 = Madusa::Session::GetNotificationParam(v3);
                      v17(v19, v20);
                      CConfigFPU::ConfigForSDKCode(&v32);
                    }

                    if (off_1000748F8)
                    {
                      v21 = v16;
                    }

                    else
                    {
                      v21 = 1;
                    }

                    if ((v21 & 1) == 0 && *(Madusa::System::mpSystem + 32) != 2)
                    {
                      CConfigFPU::ConfigForUserCode(&v32);
                      v22 = off_1000748F8;
                      v23 = __find_func(0x8F5F1FDFC020E0C0, 1642389514);
                      v24 = v23(v3 + 136, 3445273946);
                      v25 = Madusa::Session::GetNotificationParam(v3);
                      v22(v24, v25);
                      CConfigFPU::ConfigForSDKCode(&v32);
                    }
                  }

                  Madusa::Session::UnlockSecureParams(v3);
                }
              }
            }

            else
            {
              DetectorAndDetect = 0xFFFFFFFFLL;
            }

            goto LABEL_43;
          }

          if (*(v3 + 1161) == a2[2])
          {
            goto LABEL_14;
          }
        }

LABEL_42:
        DetectorAndDetect = 4294967293;
        goto LABEL_43;
      }
    }
  }

  return result;
}

uint64_t SDKInitializeBanding(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v13);
  if (*(Madusa::System::mpSystem + 32) == 1)
  {
    v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
    v6 = 4294967293;
    if (a2)
    {
      if (v5)
      {
        if (*a2 == 24 && (vmaxv_u16(vmovn_s32(vclezq_s32(*(a2 + 4)))) & 1) == 0 && *(a2 + 20) <= 3u)
        {
          v7 = v5;
          v6 = Madusa::Session::ValidateSequence(v5, 2042132827);
          if (!v6)
          {
            v11 = 0uLL;
            v12 = 0;
            ConvertPageParams(a2, &v11);
            v9 = v11;
            v10 = v12;
            Madusa::ZnTimer::Reset(v7 + 4672);
            *(v7 + 4640) = v9;
            *(v7 + 4656) = v10;
            Madusa::Session::DestroyDetector(v7);
            *(v7 + 5040) = 0;
            if (*(v7 + 128))
            {
              v6 = 0;
            }

            else
            {
              v6 = 4294967195;
            }

            Madusa::Session::IncrementLevel(v7);
          }
        }
      }
    }
  }

  else
  {
    v6 = 4294967292;
  }

  CConfigFPU::~CConfigFPU(&v13);
  return v6;
}

uint64_t SDKTerminate(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v15);
  v3 = Madusa::Session::UnscrambleSessionPointer(a1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = Madusa::Session::ValidateSequence(v3, 4116428122);
    if (!v5)
    {
      if (off_100074910)
      {
        CConfigFPU::ConfigForUserCode(&v15);
        v6 = off_100074910;
        func = __find_func(0x1F1FBF9FE0A0A020, -240893878);
        v8 = func(v4 + 136, 4116428122);
        StatusParam = Madusa::Session::GetStatusParam(v4);
        v6(v8, StatusParam);
        CConfigFPU::ConfigForSDKCode(&v15);
      }

      v10 = v4[128];
      SessionMemory = Madusa::Session::GetSessionMemory(v4);
      (**v4)(v4);
      Madusa::MemoryMaster::DeAllocateBuffer(v4, v12);
      Madusa::MemoryMaster::Deallocate(SessionMemory);
      Madusa::MemoryMaster::Destroy(SessionMemory, v13);
      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v5 = 4294967195;
      }
    }
  }

  else
  {
    v5 = 4294967293;
  }

  CConfigFPU::~CConfigFPU(&v15);
  return v5;
}

uint64_t SDKTerminateBanding(uint64_t a1)
{
  CConfigFPU::CConfigFPU(&v7);
  if (*(Madusa::System::mpSystem + 32) == 1)
  {
    v3 = Madusa::Session::UnscrambleSessionPointer(a1, v2);
    if (v3)
    {
      v4 = v3;
      v5 = Madusa::Session::ValidateSequence(v3, 3915733459);
      if (!v5)
      {
        if (*(v4 + 128))
        {
          v5 = 0;
        }

        else
        {
          v5 = 4294967195;
        }

        Madusa::Session::DecrementLevel(v4);
        Madusa::Session::UnlockSecureParams(v4);
        Madusa::Session::FinishPage(v4);
      }
    }

    else
    {
      v5 = 4294967293;
    }
  }

  else
  {
    v5 = 4294967292;
  }

  CConfigFPU::~CConfigFPU(&v7);
  return v5;
}

uint64_t SDKInitializeParallel(uint64_t a1, int (*a2)(int, int, unsigned int, void *, void *), void *a3)
{
  CConfigFPU::CConfigFPU(&v11);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  v8 = 4294967293;
  if (a2)
  {
    v9 = v7;
    if (v7)
    {
      if (Madusa::Session::ValidateSequence(v7, 3065208169))
      {
        v8 = 4294967292;
      }

      else
      {
        Madusa::Session::SetParallelFor(v9, a2, a3);
        if (*(v9 + 128))
        {
          v8 = 0;
        }

        else
        {
          v8 = 4294967195;
        }
      }
    }
  }

  CConfigFPU::~CConfigFPU(&v11);
  return v8;
}

uint64_t SDKProcessRange(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  CConfigFPU::CConfigFPU(&v14);
  v9 = Madusa::Session::UnscrambleSessionPointer(a4, v8);
  v10 = 4294967293;
  if (a1 <= a2)
  {
    v11 = v9;
    if (v9)
    {
      v12 = Madusa::Session::ValidateSequence(v9, 1582938202);
      if (v12 || (v12 = Madusa::Session::ProcessRange(v11, a1, a2, a3, &v14), v12))
      {
        v10 = v12;
      }

      else if (*(v11 + 128))
      {
        v10 = 0;
      }

      else
      {
        v10 = 4294967195;
      }
    }
  }

  CConfigFPU::~CConfigFPU(&v14);
  return v10;
}

uint64_t SDKStoreWidth(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreWidth(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreHeight(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreHeight(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreXDotsPerInch(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreXDotsPerInch(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreYDotsPerInch(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreYDotsPerInch(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreColorModel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreColorModel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreAlphaChannel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreAlphaChannel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreBitsPerPixelPerColor(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreBitsPerPixelPerColor(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreDataType(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreDataType(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStorePaletteColorModel(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StorePaletteColorModel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStorePaletteBitsPerPixelPerColor(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StorePaletteBitsPerPixelPerColor(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreInverted(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreInverted(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreDataAccessFormat(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreDataAccessFormat(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreXStride(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreXStride(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

uint64_t SDKStoreYStride(uint64_t a1, uint64_t a2)
{
  CConfigFPU::CConfigFPU(&v8);
  v5 = Madusa::Session::UnscrambleSessionPointer(a1, v4);
  if (v5)
  {
    v6 = Madusa::Session::StoreYStride(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CConfigFPU::~CConfigFPU(&v8);
  return v6;
}

void SDKAssignWidth(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignWidth(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignHeight(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignHeight(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignXDotsPerInch(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignXDotsPerInch(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignYDotsPerInch(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignYDotsPerInch(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignColorModel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignColorModel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignAlphaChannel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignAlphaChannel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignBitsPerPixelPerColor(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignBitsPerPixelPerColor(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignDataType(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignDataType(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignPaletteColorModel(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignPaletteColorModel(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignPaletteBitsPerPixelPerColor(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignPaletteBitsPerPixelPerColor(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignInverted(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignInverted(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignDataAccessFormat(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignDataAccessFormat(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignXStride(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignXStride(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

void SDKAssignYStride(uint64_t a1, int *a2, int a3)
{
  CConfigFPU::CConfigFPU(&v8);
  v7 = Madusa::Session::UnscrambleSessionPointer(a1, v6);
  if (v7)
  {
    Madusa::Session::AssignYStride(v7, a2, a3);
  }

  CConfigFPU::~CConfigFPU(&v8);
}

uint64_t sub_100026308(unint64_t a1)
{
  if (HIDWORD(a1))
  {
    return 0;
  }

  else
  {
    return off_100074918();
  }
}

uint64_t Madusa::BandModeDetector::BandModeDetector(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 40960;
  v4 = Madusa::DetectorBase::DetectorBase(a1, a2);
  *v4 = off_100070998;
  v5 = v4 + 8;
  *(v3 + 2032) = 0;
  *(v3 + 2040) = 1;
  *(v3 + 2044) = 0;
  *(v3 + 2048) = 1;
  *(v3 + 2052) = 0;
  *(v3 + 2056) = 1;
  *(v3 + 2060) = 0;
  *(v3 + 2064) = 1;
  *(v3 + 2068) = 0;
  *(v3 + 2072) = 1;
  *(v3 + 2076) = 0;
  *(v3 + 2080) = 1;
  *(v3 + 2084) = 0;
  *(v3 + 2088) = 1;
  *(v3 + 2092) = 0;
  *(v3 + 2096) = 1;
  *(v3 + 2100) = 1;
  *(v3 + 2104) = 0u;
  *(v3 + 2104) = Madusa::System::CreateBandModeUtil(v4);
  Madusa::BlockPicker::SetBandRowOfBlocksAdvance(v5, 64);
  return a1;
}

void Madusa::BandModeDetector::~BandModeDetector(Madusa::BandModeDetector *this)
{
  v2 = this + 40960;
  *this = off_100070998;
  v3 = *(this + 5384);
  if (v3)
  {
    v4 = (*(*v3 + 48))(v3);
    if (v4)
    {
      v5 = v4;
      (**v4)();
      Madusa::MemoryMaster::DeAllocateBuffer(v5, v6);
    }

    v7 = *(v2 + 264);
    if (v7)
    {
      (**v7)(v7);
      Madusa::MemoryMaster::DeAllocateBuffer(*(v2 + 264), v8);
      *(v2 + 264) = 0;
    }
  }

  Madusa::System::DisposeBandModeUtil(*(v2 + 263));

  Madusa::DetectorBase::~DetectorBase(this);
}

{
  Madusa::BandModeDetector::~BandModeDetector(this);

  operator delete();
}

uint64_t Madusa::BandModeDetector::GetExtraWorkingMemorySize(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  v13[12] = *(a1 + 192);
  v13[13] = v2;
  v14 = *(a1 + 224);
  v3 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v3;
  v4 = *(a1 + 176);
  v13[10] = *(a1 + 160);
  v13[11] = v4;
  v5 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v5;
  v6 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v8;
  Madusa::BandModeDetector::AdjustImageDataForBandOrder(a2, v13, a1);
  Madusa::MemoryMaster::MemoryMaster(v15, 0);
  v9 = sub_100029CD0(v13);
  Madusa::MemoryMaster::~MemoryMaster(v15);
  v10 = sub_100029B3C(v13);
  if ((v11 & 1) == 0 || v10 > 0xFFFFFFFFFFFFFF77)
  {
    return 0;
  }

  if (v9 + v10 + 136 < v9)
  {
    return 0;
  }

  return v9 + v10 + 136;
}

uint64_t Madusa::BandModeDetector::AdjustImageDataForBandOrder(int a1, Madusa::ImageProperties *a2, Madusa::ImageProperties *a3)
{
  Madusa::VirtualRotator::VirtualRotator(v12);
  result = 1;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      if ((*Madusa::ImageProperties::GetYStride(a2) & 0x80000000) != 0)
      {
        return 1;
      }
    }

    else if ((*Madusa::ImageProperties::GetYStride(a2) & 0x80000000) == 0)
    {
      return 1;
    }

    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v8;
    return Madusa::VirtualRotator::Rotate180(v12, &Bounds, a2);
  }

  if (a1 == 2)
  {
    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v9;
    return Madusa::VirtualRotator::Rotate90CW(v12, &Bounds, a2);
  }

  else if (a1 == 3)
  {
    Bounds = Madusa::ImageProperties::GetBounds(a3);
    v11 = v7;
    return Madusa::VirtualRotator::Rotate90CCW(v12, &Bounds, a2);
  }

  return result;
}

void sub_100026AE0(Madusa::ImageProperties *a1, uint64_t a2)
{
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  v5 = (*(*a2 + 16))(a2, 136);
  if (v5)
  {
    v6 = v5;
    *(v5 + 24) = 0;
    *(v5 + 32) = 1;
    *(v5 + 120) = a2;
    *(v5 + 128) = ResolutionBucket;
    *(v5 + 40) = 0;
    *(v5 + 48) = 1;
    *(v5 + 56) = 0;
    *(v5 + 60) = 1;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    *(v5 + 80) = 1;
    *v5 = off_1000709E8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
    *(v5 + 88) = 0;
    *(v5 + 96) = 1;
    *(v5 + 104) = 0;
    *(v5 + 112) = 1;
    v7 = sub_100029B3C(a1);
    v9 = v8;
    Madusa::ImageProperties::GetSafeBounds(a1, &v15);
    if (Madusa::ImageProperties::ShouldDownsample(a1))
    {
      v21 = 0x100000001;
      v22 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(a1, &v22, &v21);
      sub_10001F8DC(v15.i32, &v22, &v21, v18);
      v10 = v19;
      v11 = v20;
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v11 = v17;
      v10 = v16;
      if ((v9 & 1) == 0)
      {
        return;
      }
    }

    if (v11)
    {
      if (v10 >= 0)
      {
        v12 = v10;
      }

      else
      {
        v12 = -v10;
      }

      (*(*v6 + 16))(v6, &v15, &v15, v7, v12);
      sub_10002A564(a1, a2, v6);
      if (!v13)
      {
        (**v6)(v6);
        Madusa::MemoryMaster::DeAllocateBuffer(v6, v14);
      }
    }
  }
}

uint64_t Madusa::BandModeDetector::_SetBandOrder(uint64_t result, int a2)
{
  v3.i16[3] = v2[3];
  v3.i16[2] = *v2 | 0xFFE0;
  v3.i16[1] = v3.u8[6];
  v3.i16[0] = v3.i16[2];
  v4.i64[0] = 0xFF000000FFLL;
  v4.i64[1] = 0xFF000000FFLL;
  v5 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v3), v4), xmmword_10006B510));
  v6.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B520, v5)).u32[0];
  v6.i32[1] = vmovn_s32(vcgtq_f32(v5, xmmword_10006B520)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v6, 0xFuLL))) & ((v2[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    ++QuickCodec::mask;
  }

  return Madusa::BandModeDetector::SetBandOrder(result, a2);
}

uint64_t Madusa::BandModeDetector::SetImageParams(Madusa::BandModeDetector *this, const Madusa::ImageProperties *a2, Madusa::MemoryMaster *a3)
{
  v5 = *(a2 + 13);
  v14[12] = *(a2 + 12);
  v14[13] = v5;
  v15 = *(a2 + 28);
  v6 = *(a2 + 9);
  v14[8] = *(a2 + 8);
  v14[9] = v6;
  v7 = *(a2 + 11);
  v14[10] = *(a2 + 10);
  v14[11] = v7;
  v8 = *(a2 + 5);
  v14[4] = *(a2 + 4);
  v14[5] = v8;
  v9 = *(a2 + 7);
  v14[6] = *(a2 + 6);
  v14[7] = v9;
  v10 = *(a2 + 1);
  v14[0] = *a2;
  v14[1] = v10;
  v11 = *(a2 + 3);
  v14[2] = *(a2 + 2);
  v14[3] = v11;
  v12 = Madusa::BandModeDetector::AdjustImageDataForBandOrder(*(this + 10748), v14, a2);
  return Madusa::DetectorBase::SetImageProperties(this, v14, a3) & v12;
}

unint64_t sub_1000285A4@<X0>(Madusa::ImageProperties *a1@<X0>, unint64_t *a2@<X8>)
{
  v10 = 0x100000001;
  v9 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v10, &v9);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a1);
  v8[0] = &_mh_execute_header & 0xFFFFFFFF00000000 | IntegerOffsetBounds;
  v8[1] = &_mh_execute_header & 0xFFFFFFFF00000000 | HIDWORD(IntegerOffsetBounds);
  v8[2] = &_mh_execute_header & 0xFFFFFFFF00000000 | v5;
  v8[3] = &_mh_execute_header & 0xFFFFFFFF00000000 | v6;
  return sub_10001F8DC(v8, &v10, &v9, a2);
}

int *sub_10002862C@<X0>(int *result@<X0>, int *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(result + 4) == 1 && *(result + 20) == 1 && (v3 = result[4] + *result, v3 == v3))
  {
    if ((v3 + 0x7FFFFFFFLL) >> 32)
    {
      v4 = 0;
    }

    else
    {
      v4 = (v3 - 1) | &_mh_execute_header;
    }

    if (*(result + 12) != 1)
    {
LABEL_16:
      v6 = 0;
      if (*(a2 + 4) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v4 = 0;
    if (*(result + 12) != 1)
    {
      goto LABEL_16;
    }
  }

  if (*(result + 28) != 1)
  {
    goto LABEL_16;
  }

  v5 = result[6] + result[2];
  if (v5 != v5)
  {
    goto LABEL_16;
  }

  if ((v5 + 0x7FFFFFFFLL) >> 32)
  {
    v6 = 0;
  }

  else
  {
    v6 = (v5 - 1) | &_mh_execute_header;
  }

  if (*(a2 + 4) != 1)
  {
LABEL_19:
    v8 = 0;
    if (*(a2 + 12) != 1)
    {
      goto LABEL_60;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*(a2 + 20) != 1)
  {
    goto LABEL_19;
  }

  v7 = a2[4] + *a2;
  if (v7 != v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) | &_mh_execute_header;
  if ((v7 + 0x7FFFFFFFLL) >> 32)
  {
    v8 = 0;
  }

  if (*(a2 + 12) != 1)
  {
LABEL_60:
    v10 = 0;
    v11 = *result;
    v12 = *a2;
    v28 = v12;
    v29 = v11;
    if (v11 >= v12)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_20:
  if (*(a2 + 28) != 1)
  {
    goto LABEL_60;
  }

  v9 = a2[6] + a2[2];
  if (v9 != v9)
  {
    goto LABEL_60;
  }

  if ((v9 + 0x7FFFFFFFLL) >> 32)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 - 1) | &_mh_execute_header;
  }

  v11 = *result;
  v12 = *a2;
  v28 = v12;
  v29 = v11;
  if (v11 >= v12)
  {
LABEL_26:
    v13 = &v29;
    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_61:
  v13 = &v28;
  if ((v11 & 0x100000000) == 0)
  {
LABEL_27:
    *(v13 + 4) = 0;
  }

LABEL_28:
  v14 = *v13;
  v15 = *(result + 1);
  v16 = *(a2 + 1);
  v28 = v16;
  v29 = v15;
  if (v15 >= v16)
  {
    v17 = &v29;
    if ((v16 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v17 = &v28;
  if ((v15 & 0x100000000) == 0)
  {
LABEL_32:
    *(v17 + 4) = 0;
  }

LABEL_33:
  v18 = *v17;
  v28 = v8;
  v29 = v4;
  if (v4 <= v8)
  {
    v19 = &v29;
    if ((v8 & 0x100000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v19 = &v28;
  if ((v4 & 0x100000000) == 0)
  {
LABEL_37:
    *(v19 + 4) = 0;
  }

LABEL_38:
  v20 = *v19;
  v28 = v10;
  v29 = v6;
  if (v6 > v10)
  {
    v21 = &v28;
    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v21 = &v29;
  if ((v10 & 0x100000000) == 0)
  {
LABEL_42:
    *(v21 + 4) = 0;
  }

LABEL_43:
  v22 = 0;
  v23 = *v21;
  if ((v20 & 0x100000000) != 0 && (v14 & 0x100000000) != 0)
  {
    v24 = v20 - v14;
    v25 = (v24 + 1) | &_mh_execute_header;
    if ((v24 + 2147483649) >> 32)
    {
      v25 = 0;
    }

    if (v24 == v24)
    {
      v22 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  v26 = 0;
  if ((v23 & 0x100000000) != 0 && (v18 & 0x100000000) != 0)
  {
    v27 = v23 - v18;
    v26 = (v27 + 1) | &_mh_execute_header;
    if ((v27 + 2147483649) >> 32)
    {
      v26 = 0;
    }

    if (v27 != v27)
    {
      v26 = 0;
    }
  }

  *a3 = v14 & 0xFFFFFFFFFFLL;
  a3[1] = v18 & 0xFFFFFFFFFFLL;
  a3[2] = v22;
  a3[3] = v26;
  return result;
}

uint64_t Madusa::BandModeDetector::_ProcessBand(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2, Madusa::ImageProperties *a3)
{
  if ((*v3 & 0x1F) != 0 || v3[2] > 0x3Fu)
  {
    v4 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v4 + 1;
    }
  }

  else
  {
    v4 = QuickCodec::mask;
    if (v3[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  return Madusa::BandModeDetector::ProcessBand(this, a2);
}

uint64_t Madusa::BandModeDetector::_ProcessBand_Alt(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2, Madusa::ImageProperties *a3)
{
  v4 = 0;
  v5 = 0;
  if (QuickCodec::mask == -70947757)
  {
    v6 = 8784594;
  }

  else
  {
    v6 = 754238;
  }

  v7 = 1;
  v8 = 2299796;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v11 = v7;
        if (v8 <= 2299866)
        {
          break;
        }

        if (v8 == 2299867)
        {
          if ((*v4 & 0x1F) != 0 || v4[2] > 0x3Fu || (v7 = 1, v8 = 754238, v4[3] != ((QuickCodec::mask ^ v5) / 0x2DB7B6)))
          {
            v8 = 754292;
            v7 = v11;
          }
        }

        else if (v8 == 3054017)
        {
          v4 = v3;
          v8 = 2299813;
        }

        else
        {
          v12 = v8 == 8784594;
          v8 = 2299867;
          if (v12)
          {
            v5 = -568766741;
          }
        }
      }

      if (v8 <= 2299795)
      {
        break;
      }

      v9 = (QuickCodec::mask != -70947757) | v7;
      if (v8 == 2299813)
      {
        v10 = v6;
      }

      else
      {
        v10 = v8;
      }

      if (v8 == 2299813)
      {
        LODWORD(v11) = v9;
      }

      v12 = v8 == 2299796;
      if (v8 == 2299796)
      {
        v8 = 754238;
      }

      else
      {
        v8 = v10;
      }

      if (v12)
      {
        v7 = 0;
      }

      else
      {
        v7 = v11;
      }
    }

    if (v8 != 754238)
    {
      break;
    }

    v8 = 754292;
    if ((v7 & 1) == 0)
    {
      v8 = 3054017;
    }
  }

  if (v7)
  {
    ++QuickCodec::mask;
  }

  return Madusa::BandModeDetector::ProcessBand_Alt(this, a2);
}

uint64_t Madusa::BandModeDetector::ProcessBand_Alt(Madusa::BandModeDetector *this, Madusa::ImageProperties *a2)
{
  v4 = this + 40960;
  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  Madusa::ImageProperties::GetBounds(ImageParams);
  v7 = v6;
  Madusa::ImageProperties::CanonicalizeColorComponents(a2);
  HasValidColorComponents = Madusa::ImageProperties::HasValidColorComponents(a2);
  v9 = *(v4 + 508);
  v10 = Madusa::DetectorBase::GetImageParams(this);
  v11 = Madusa::BandModeDetector::AdjustImageDataForBandOrder(v9, a2, v10);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(a2);
  v14 = IntegerOffsetBounds;
  v15 = v13 + IntegerOffsetBounds;
  if (((v15 + 0x80000000) | IntegerOffsetBounds) >> 32)
  {
    v16 = 0;
  }

  else
  {
    v16 = (v13 ^ v7) >> 32 == 0;
  }

  if (!v16)
  {
    return 2;
  }

  result = 2;
  if (*(v4 + 509) <= v14 && v13 >= 1 && v15 <= v7)
  {
    if (v11 & HasValidColorComponents)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t Madusa::BandModeDetector::GetBlockPosition(Madusa::BandModeDetector *this, uint64_t a2)
{
  if (*(this + 43008) == 1)
  {
    v4 = *(this + 10751);
  }

  else
  {
    v4 = 0;
  }

  func = __find_func(0x2F7F1F1FA0C02020, -1044062006);

  return func(this + 8, v4, a2);
}

uint64_t Madusa::BandModeDetector::Detect(Madusa::BandModeDetector *this)
{
  v3 = this + 40960;
  ImageParams = Madusa::DetectorBase::GetImageParams(this);
  v5 = sub_1000290D8(ImageParams);
  v7 = v6;
  DetectorPipeWorkingMemorySize = Madusa::System::GetDetectorPipeWorkingMemorySize(v5);
  v10 = v5 + DetectorPipeWorkingMemorySize;
  v11 = (v5 + DetectorPipeWorkingMemorySize) >= v5;
  if ((v5 + DetectorPipeWorkingMemorySize) < v5)
  {
    v10 = 0;
  }

  if ((v9 & 1) == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = (v7 & 1) == 0;
  if (v7)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v12 && v11;
  if (v3[2048] == 1)
  {
    NumberOfBlocksOnRow = Madusa::BlockPicker::GetNumberOfBlocksOnRow((this + 8), *(v3 + 511));
  }

  else
  {
    NumberOfBlocksOnRow = 0;
  }

  result = Madusa::DetectorBase::ProcessTwoPasses(this, v13, v14, NumberOfBlocksOnRow, 0);
  v17.i16[0] = *v1 | 0xFFE0;
  v17.i16[1] = v1[3];
  v17.i32[1] = v17.i32[0];
  v18.i64[0] = 0xFF000000FFLL;
  v18.i64[1] = 0xFF000000FFLL;
  v19 = vcvtq_f32_u32(vmulq_s32(vandq_s8(vmovl_u16(v17), v18), xmmword_10006B570));
  v20.i32[0] = vmovn_s32(vcgtq_f32(xmmword_10006B580, v19)).u32[0];
  v20.i32[1] = vmovn_s32(vcgtq_f32(v19, xmmword_10006B580)).i32[1];
  if ((vminv_u16(vcltz_s16(vshl_n_s16(v20, 0xFuLL))) & ((v1[2] & 0xE0) == 32)) != 0 || QuickCodec::mask != -70947757)
  {
    QuickCodec::mask = FunctionTable::ft[0] ^ 0x157E9386;
    v21 = result;
    func = __find_func(0xBFBF1F1FC0C00040, 1359274186);
    func(0, 104);
    return v21;
  }

  return result;
}

unint64_t sub_1000290D8(Madusa::ImageProperties *a1)
{
  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v3 = ResolutionBucket;
  }

  else
  {
    v3 = 300;
  }

  v4 = 394;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v4 = 132;
        break;
      case 125:
        v4 = 166;
        break;
      case 150:
        v4 = 200;
        break;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v4 = 394;
    }

    else if (v3 == 350)
    {
      v4 = 462;
    }
  }

  else if (v3 == 200)
  {
    v4 = 264;
  }

  else if (v3 == 250)
  {
    v4 = 330;
  }

  src.data = 0;
  src.height = v4;
  src.width = v4;
  src.rowBytes = v4;
  dest.data = 0;
  *&dest.height = vdupq_n_s64(0x82uLL);
  dest.rowBytes = 130;
  v5 = vImageScale_Planar8(&src, &dest, 0, 0x80u);
  v6 = v5 & ~(v5 >> 63);
  Madusa::MemoryMaster::MemoryMaster(&src, 0);
  v7 = sub_100029CD0(a1);
  Madusa::MemoryMaster::~MemoryMaster(&src.data);
  if (v7 + v6 < v7)
  {
    return 0;
  }

  else
  {
    return v7 + v6;
  }
}

uint64_t Madusa::BandModeDetector::_Detect(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::BandModeDetector::Detect(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::BandModeDetector::Detect(this);
  }

  v5 = 767526 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x9B2D778 | v5 & 0x9B2D778) + (v5 ^ 0x9B2D778 | ~(v5 | 0x9B2D778)) + 162715512 == (~(~(~(v5 | 0x9824178) | v5 & 0x9824178) | 0x309600) | ~(~(v5 | 0x9824178) | v5 & 0x9824178) & 0x309600) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::BandModeDetector::Detect(this);
}

uint64_t Madusa::BandModeDetector::GetRowOfBlocks(Madusa::BandModeDetector *this)
{
  result = Madusa::DetectorBase::GetResolutionBucket(this);
  if (result <= 350)
  {
    v3 = result;
  }

  else
  {
    v3 = 300;
  }

  v4 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v5 = &unk_10006B590;
        break;
      case 125:
        v5 = &unk_10006B5A0;
        break;
      case 150:
        v5 = &unk_10006B5B0;
        break;
      default:
        goto LABEL_21;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v5 = &unk_10006B5E0;
    }

    else
    {
      if (v3 != 350)
      {
        goto LABEL_21;
      }

      v5 = &unk_10006B5F0;
    }
  }

  else if (v3 == 200)
  {
    v5 = &unk_10006B5C0;
  }

  else
  {
    if (v3 != 250)
    {
      goto LABEL_21;
    }

    v5 = &unk_10006B5D0;
  }

  v4 = *(v5 + 4);
LABEL_21:
  v6 = v4 << 32;
  v7 = (v4 << 7) - 0x80000000;
  v8 = v4 >> 31;
  v9 = (v4 >> 31) & 0xFFFFFFFELL;
  if (v9)
  {
    v10 = v7 >= 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 && (v8 - 0x80000000) >= 0xFFFFFFFF00000000;
  if (v11 && (v12 = v6 >> 25, v12))
  {
    v13 = v12 / v9;
    *(this + 10755) = v13;
    *(this + 43024) = 1;
    if (*(this + 43060) != 1)
    {
      return result;
    }
  }

  else
  {
    v13 = 0;
    *(this + 10755) = 0;
    *(this + 43024) = 1;
    if (*(this + 43060) != 1)
    {
      return result;
    }
  }

  v14 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v14 = 0x100000001;
        break;
      case 125:
        v14 = 0x400000005;
        break;
      case 150:
        v14 = 0x200000003;
        break;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v14 = 0x100000003;
    }

    else if (v3 == 350)
    {
      v14 = 0x200000007;
    }
  }

  else if (v3 == 200)
  {
    v14 = 0x100000002;
  }

  else if (v3 == 250)
  {
    v14 = 0x200000005;
  }

  v15 = llroundf(v14 / SHIDWORD(v14)) + v13;
  if (v15 == v15)
  {
    *(this + 10755) = v15;
  }

  *(this + 43024) = (v15 + 0x80000000) >> 32 == 0;
  *(this + 43060) = 0;
  return result;
}

uint64_t Madusa::BandModeDetector::_GetRowOfBlocks(Madusa::BandModeDetector *this, Madusa::BandModeDetector *a2)
{
  if ((*v2 & 0x1F) != 0 || v2[2] > 0x3Fu)
  {
    v3 = QuickCodec::mask;
    if (QuickCodec::mask == -70947757)
    {
      return Madusa::BandModeDetector::GetRowOfBlocks(this);
    }

LABEL_7:
    QuickCodec::mask = v3 + 1;
    return Madusa::BandModeDetector::GetRowOfBlocks(this);
  }

  v5 = 594942 * v2[3];
  v3 = QuickCodec::mask;
  if (v5 - (v5 ^ 0x7848E58 | v5 & 0x7848E58) + (v5 ^ 0x7848E58 | ~(v5 | 0x7848E58)) + 126127704 == (~(~(~(v5 | 0x7800A18) | v5 & 0x7800A18) | 0x48440) | ~(~(v5 | 0x7800A18) | v5 & 0x7800A18) & 0x48440) || QuickCodec::mask != -70947757)
  {
    goto LABEL_7;
  }

  return Madusa::BandModeDetector::GetRowOfBlocks(this);
}

BOOL Madusa::BandModeDetector::ShouldRunDetectionOnBlock(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 40960;
  result = 0;
  if (*(a1 + 43008) == 1)
  {
    func = __find_func(0xCF1F3F9F406060C0, 564445258);
    if (func(a1 + 8, *(v2 + 2044), a2))
    {
      return 1;
    }
  }

  return result;
}

void Madusa::BandModeDetector::CreateImagePipe(Madusa::BandModeDetector *this, Madusa::MemoryMaster *a2, Madusa::SessionCallbacks *a3)
{
  v4 = *(this + 5384);
  if (v4)
  {
    v6 = (*(*v4 + 48))(v4, a2, a3);
    if (v6)
    {
      v7 = v6;
      ImageParams = Madusa::DetectorBase::GetImageParams(this);
      sub_10002A564(ImageParams, a2, v7);
      if (v9)
      {
        v10 = v9;
        v11 = Madusa::DetectorBase::GetImageParams(this);
        (*(*v10 + 16))(v10, v11);
      }
    }
  }
}

unint64_t sub_100029B3C(Madusa::ImageProperties *a1)
{
  Madusa::ImageProperties::GetSafeBounds(a1, &v13);
  if (!Madusa::ImageProperties::ShouldDownsample(a1))
  {
    if (v15)
    {
      v2 = v14;
      goto LABEL_6;
    }

    return 0;
  }

  v11 = 0x100000001;
  v12 = 0x100000001;
  Madusa::ImageProperties::GetDownsampleRatios(a1, &v12, &v11);
  sub_10001F8DC(v13.i32, &v12, &v11, v8);
  if (v10 != 1)
  {
    return 0;
  }

  v2 = v9;
LABEL_6:
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  ResolutionBucket = Madusa::ImageProperties::GetResolutionBucket(a1);
  if (ResolutionBucket <= 350)
  {
    v5 = ResolutionBucket;
  }

  else
  {
    v5 = 300;
  }

  v6 = 394;
  if (v5 <= 199)
  {
    switch(v5)
    {
      case 100:
        v6 = 132;
        break;
      case 125:
        v6 = 166;
        break;
      case 150:
        v6 = 200;
        break;
    }
  }

  else if (v5 > 299)
  {
    if (v5 == 300)
    {
      v6 = 394;
    }

    else if (v5 == 350)
    {
      v6 = 462;
    }
  }

  else if (v5 == 200)
  {
    v6 = 264;
  }

  else if (v5 == 250)
  {
    v6 = 330;
  }

  return v6 * v3;
}

uint64_t sub_100029CD0(Madusa::ImageProperties *a1)
{
  v2 = *Madusa::ImageProperties::GetColorModel(a1);
  DataType = Madusa::ImageProperties::GetDataType(a1);
  if (v2 <= 4)
  {
    if (v2 != 1)
    {
      if (v2 == 2)
      {
        if (*DataType != 1 && *DataType != 2)
        {
          v6 = 0x100000001;
          v7 = 0x100000001;
          Madusa::ImageProperties::GetDownsampleRatios(a1, &v7, &v6);
          v4 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
          goto LABEL_15;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 16 && *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          return 16;
        }
      }

      else
      {
        if (v2 != 4)
        {
          return 16;
        }

        if (Madusa::ImageProperties::IsInverted(a1))
        {
          goto LABEL_14;
        }

        if ((Madusa::ImageProperties::IsInverted(a1) & 1) != 0 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 8)
        {
          return 16;
        }
      }

      return 184;
    }
  }

  else if ((v2 - 5) >= 3)
  {
    if (v2 != 9 || (Madusa::ImageProperties::IsInverted(a1) & 1) != 0)
    {
      return 16;
    }

    goto LABEL_14;
  }

  Madusa::ImageProperties::IsInverted(a1);
LABEL_14:
  v4 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
LABEL_15:
  if (v4 == 8 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
  {
    return 184;
  }

  return 16;
}

unint64_t sub_100029E48(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) != 1 || *(a2 + 8) != 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *a2;
  v4 = HIDWORD(*a1);
  v5 = HIDWORD(*a2);
  if (!v4)
  {
    if (v5)
    {
      result = v5 * v2;
      if (v5 * v2)
      {
        goto LABEL_6;
      }
    }

    return v3 * v2;
  }

  if (v5)
  {
    return 0;
  }

  result = v4 * v3;
  if (!(v4 * v3))
  {
    return v3 * v2;
  }

LABEL_6:
  if (!HIDWORD(result))
  {
    return (result << 32) + v3 * v2;
  }

  return result;
}

uint64_t sub_100029ECC(uint64_t result, void *a2)
{
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 56) = 0;
  *(result + 60) = 1;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 1;
  *result = off_1000709E8;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 88) = 0;
  *(result + 96) = 1;
  *(result + 104) = 0;
  *(result + 112) = 1;
  if (*(result + 24))
  {
    v2 = result;
    Madusa::MemoryMaster::DeAllocateBuffer(*(result + 24), a2);
    result = v2;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
  }

  return result;
}

void sub_100029F58(uint64_t a1, void *a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 60) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *a1 = off_1000709E8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  if (*(a1 + 24))
  {
    Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 24), a2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 1;
  }

  operator delete();
}

unint64_t sub_10002A004(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  result = *(a1 + 24);
  if (result)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = 1;
    result = Madusa::MemoryMaster::DeAllocateBuffer(result, a2);
    *(a1 + 24) = 0;
    v7 = (a1 + 32);
LABEL_12:
    *v7 = 1;
    return result;
  }

  if (a5 < 0)
  {
    *(a1 + 40) = 0;
LABEL_11:
    *(a1 + 48) = 1;
    *(a1 + 56) = 0;
    *(a1 + 60) = 1;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 96) = 1;
    v7 = (a1 + 112);
    *(a1 + 104) = 0;
    goto LABEL_12;
  }

  result = (*(**(a1 + 120) + 16))(*(a1 + 120), a4);
  *(a1 + 32) = 1;
  v7 = (a1 + 32);
  *(a1 + 24) = result;
  if (!result)
  {
    *(a1 + 40) = 0;
    goto LABEL_11;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = 1;
  *(a1 + 56) = a5;
  *(a1 + 60) = 1;
  *(a1 + 72) = a4;
  *(a1 + 80) = 1;
  *(a1 + 88) = result;
  *(a1 + 96) = 1;
  v11 = result + a4;
  if (result + a4 < result)
  {
    v11 = 0;
  }

  *(a1 + 8) = v11;
  *(a1 + 16) = result + a4 >= result;
  if (result + a4 < result)
  {
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 1;
    result = Madusa::MemoryMaster::DeAllocateBuffer(result, v10);
    *(a1 + 24) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10002A180(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    *(result + 64) = 1;
    *(result + 104) = *(result + 88);
    LOBYTE(v4) = *(result + 96);
    v5 = 112;
LABEL_11:
    *(result + v5) = v4;
    return result;
  }

  if (*(result + 128) <= 350)
  {
    v1 = *(result + 128);
  }

  else
  {
    v1 = 300;
  }

  v2 = 0x100000001;
  if (v1 <= 199)
  {
    switch(v1)
    {
      case 100:
        v3 = &unk_10006B590;
        break;
      case 125:
        v3 = &unk_10006B5A0;
        break;
      case 150:
        v3 = &unk_10006B5B0;
        break;
      default:
        goto LABEL_24;
    }
  }

  else if (v1 > 299)
  {
    if (v1 == 300)
    {
      v3 = &unk_10006B5E0;
    }

    else
    {
      if (v1 != 350)
      {
        goto LABEL_24;
      }

      v3 = &unk_10006B5F0;
    }
  }

  else if (v1 == 200)
  {
    v3 = &unk_10006B5C0;
  }

  else
  {
    if (v1 != 250)
    {
      goto LABEL_24;
    }

    v3 = &unk_10006B5D0;
  }

  v2 = *(v3 + 4);
LABEL_24:
  v6 = v2 << 32;
  v7 = 2 * v2 - 0x80000000;
  v8 = HIDWORD(v2);
  if (v8)
  {
    v9 = v7 > 0xFFFFFFFEFFFFFFFFLL;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    LODWORD(v10) = 0;
    v11 = *(result + 56);
    if (v11 >= 0)
    {
      LODWORD(v12) = *(result + 56);
    }

    else
    {
      LODWORD(v12) = -v11;
    }

    goto LABEL_31;
  }

  v19 = llroundf((v6 >> 31) / v8);
  v10 = v19;
  v20 = *(result + 56);
  if (v20 >= 0)
  {
    v12 = v20;
  }

  else
  {
    v12 = -v20;
  }

  if ((v19 & 0x80000000) == 0 || !v20)
  {
LABEL_31:
    v13 = v10 * v12;
    v14 = 1;
    v15 = *(result + 112);
    if (*(result + 96))
    {
      goto LABEL_32;
    }

LABEL_46:
    if ((v15 & 1) == 0)
    {
      return result;
    }

    v18 = 0;
    v4 = 0;
    if (!v14)
    {
      return result;
    }

    goto LABEL_51;
  }

  v14 = v12 < 2;
  if (v12 >= 2)
  {
    v10 = 0xFFFFFFFFLL;
  }

  v13 = v10 * v12;
  v15 = *(result + 112);
  if ((*(result + 96) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_32:
  if ((v15 & 1) == 0)
  {
    return result;
  }

  v16 = *(result + 104);
  v17 = *(result + 88);
  if (v17 >= v16)
  {
    v18 = v17 - v16;
  }

  else
  {
    v18 = 0;
  }

  if (v16 > v17)
  {
    v4 = 0;
    goto LABEL_50;
  }

  if (!v14)
  {
    v4 = 0;
LABEL_50:
    if (!v14)
    {
      return result;
    }

    goto LABEL_51;
  }

  v4 = v18 + v13 >= v18;
  if (v18 + v13 > v18)
  {
    v18 += v13;
  }

LABEL_51:
  v21 = *(result + 104);
  if (v21 >= v13)
  {
    v22 = (v21 - v13);
  }

  else
  {
    v22 = 0;
  }

  if (v13 <= v21 && (*(result + 32) & 1) != 0)
  {
    v23 = &v22[v18] >= v22 ? v4 : 0;
    v24 = &v22[v18] > *(result + 8) ? v23 : 0;
    if (v23 == 1 && (*(result + 16) & 1) != 0 && *(result + 24) <= v22 && (v24 & 1) == 0)
    {
      v25 = result;
      memmove(*(result + 24), v22, v18);
      result = v25;
      if ((*(v25 + 32) & v4) == 1)
      {
        v26 = *(v25 + 24);
        v27 = v18 + v26;
        v28 = v18 + v26 >= v26;
        if (!v28)
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v25 + 104) = v27;
      *(v25 + 112) = v28;
      *(v25 + 88) = v27;
      *(v25 + 96) = v28;
      v5 = 80;
      *(v25 + 72) = v18;
      goto LABEL_11;
    }
  }

  return result;
}

double sub_10002A448@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 80) != 1 || *(a1 + 72) < a2)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 88);
  *a3 = a2;
  if (*(a1 + 96) != 1)
  {
    v11 = *(a1 + 72);
    v8 = v11 >= a2;
    v12 = v11 - a2;
    if (v8)
    {
      *(a1 + 72) = v12;
      v13 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v13 = 0;
LABEL_13:
    *(a1 + 80) = v13;
    goto LABEL_14;
  }

  v5 = *(a1 + 88);
  v6 = v5 + a2;
  if (v5 + a2 >= v5)
  {
    *(a1 + 88) = v6;
  }

  *(a1 + 96) = v6 >= v5;
  v7 = *(a1 + 72);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  *(a1 + 72) = v9;
  *(a1 + 80) = 1;
  if (v6 >= v5)
  {
    result = 0.0;
    *(a4 + 24) = 0u;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = v4;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    return result;
  }

LABEL_14:
  *a3 = 0;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_10002A514(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A530(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void sub_10002A564(Madusa::ImageProperties *a1, uint64_t a2, uint64_t a3)
{
  v6 = *Madusa::ImageProperties::GetColorModel(a1);
  DataType = Madusa::ImageProperties::GetDataType(a1);
  if (v6 > 4)
  {
    if ((v6 - 5) >= 3)
    {
      if (v6 != 9 || (Madusa::ImageProperties::IsInverted(a1) & 1) != 0)
      {
        goto LABEL_62;
      }

LABEL_10:
      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071200;
LABEL_42:
        *v8 = v9;
        *(v8 + 8) = a3;
        *(v8 + 56) = 0;
        *(v8 + 64) = 1;
        *(v8 + 72) = 0;
        *(v8 + 76) = 1;
        *(v8 + 40) = 0;
        *(v8 + 48) = 1;
        *(v8 + 16) = off_100070A98;
        *(v8 + 24) = 0;
        *(v8 + 32) = 1;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 124) = 0u;
        *(v8 + 140) = 1;
        *(v8 + 144) = 0;
        *(v8 + 148) = 1;
        *(v8 + 152) = 0;
        *(v8 + 156) = 1;
        *(v8 + 160) = 0;
        *(v8 + 164) = 1;
        *(v8 + 168) = 0;
        *(v8 + 176) = a2;
        return;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071288;
        goto LABEL_42;
      }

      goto LABEL_62;
    }

LABEL_13:
    IsInverted = Madusa::ImageProperties::IsInverted(a1);
    v11 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
    if (IsInverted)
    {
      if (v11 == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_1000710F0;
        goto LABEL_42;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071178;
        goto LABEL_42;
      }
    }

    else
    {
      if (v11 == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100070FE0;
        goto LABEL_42;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071068;
        goto LABEL_42;
      }
    }

LABEL_62:
    v15 = (*(*a2 + 16))(a2, 16);
    if (v15)
    {
      *v15 = off_100071398;
      v15[1] = a3;
    }

    return;
  }

  switch(v6)
  {
    case 1:
      goto LABEL_13;
    case 2:
      if (*DataType == 1)
      {
        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
        {
          v8 = (*(*a2 + 16))(a2, 184);
          if (!v8)
          {
            return;
          }

          v9 = off_100070CB0;
          goto LABEL_42;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          goto LABEL_62;
        }

        sub_10002ACB0(a3, a2);
      }

      else
      {
        if (*DataType != 2)
        {
          v16 = 0x100000001;
          v17 = 0x100000001;
          Madusa::ImageProperties::GetDownsampleRatios(a1, &v17, &v16);
          v12 = HIDWORD(v16);
          v13 = HIDWORD(v17);
          v14 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
          if (v12 == 1 && v13 == 1)
          {
            if (v14 == 8)
            {
              sub_10002AD94(a3, a2);
              return;
            }

            if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
            {
              sub_10002AE78(a3, a2);
              return;
            }
          }

          else
          {
            if (v14 == 8)
            {
              sub_10002AF5C(a3, a2);
              return;
            }

            if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
            {
              sub_10002B040(a3, a2);
              return;
            }
          }

          goto LABEL_62;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
        {
          v8 = (*(*a2 + 16))(a2, 184);
          if (!v8)
          {
            return;
          }

          v9 = off_100070A48;
          goto LABEL_42;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          goto LABEL_62;
        }

        sub_10002ABCC(a3, a2);
      }

      break;
    case 4:
      if (Madusa::ImageProperties::IsInverted(a1))
      {
        goto LABEL_10;
      }

      if ((Madusa::ImageProperties::IsInverted(a1) & 1) != 0 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 8)
      {
        goto LABEL_62;
      }

      sub_10002B124(a3, a2);
      break;
    default:
      goto LABEL_62;
  }
}

double sub_10002ABCC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070BC8;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002ACB0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070D38;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AD94(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070DC0;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AE78(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070E48;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AF5C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070ED0;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002B040(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070F58;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002B124(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100071310;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

uint64_t sub_10002B208(uint64_t result, void *a2)
{
  *result = off_100070A48;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002B29C(uint64_t a1, void *a2)
{
  *a1 = off_100070A48;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002B340(uint64_t a1, Madusa::ImageProperties *this)
{
  *(a1 + 120) = Madusa::ImageProperties::GetBounds(this);
  *(a1 + 128) = v4;
  sub_10001F264(this, v6);
  if ((a1 + 136) != v6)
  {
    *(a1 + 152) = v7;
    *(a1 + 156) = v8;
    *(a1 + 160) = v9;
    *(a1 + 164) = v10;
  }

  *(a1 + 136) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  result = Madusa::ImageProperties::GetResolutionBucket(this);
  *(a1 + 168) = result;
  return result;
}

void *sub_10002B3DC(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(this, &v38);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070B58;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

void sub_10002B5E8(uint64_t a1, int *a2)
{
  if (*(a2 + 4) == 1 && *(a2 + 12) == 1 && *(a2 + 20) == 1 && *(a2 + 28) == 1)
  {
    v16 = v2;
    v17 = v3;
    v4 = a2[4];
    v5 = *a2;
    v7 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v8 = (v5 + v4 + 0x80000000) >> 32;
    if ((v5 & 0x80000000) == 0 || !v8)
    {
      if (v8)
      {
        v9 = v4;
      }

      else
      {
        v9 = v5 + v4;
      }

      if (v5 >= 0)
      {
        v9 = v4;
      }

      if (v7 >= 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = -v7;
      }

      v11 = v10 * v9;
      if (v11 == v11)
      {
        v12 = v11 | &_mh_execute_header;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 0x100000000) != 0 && v12 >= 1)
      {
        v15 = 0;
        v13 = v12 & 0x7FFFFFFF;
        (*(**(a1 + 8) + 32))(&v14);
        if (v15 == v13)
        {
          bzero(v14, v13);
        }
      }
    }
  }
}

void sub_10002B734(uint64_t a1, uint64_t *a2, int *a3)
{
  bzero((*a2 + 8), 0x4204uLL);
  width = 130;
  v66 = 1;
  rowBytes = 130;
  v68 = 1;
  v6 = *a3;
  v7 = a3[1];
  data = *a3;
  v62 = 1;
  height = v7;
  v64 = 1;
  v8 = *a2;
  v9 = v8 + 8;
  if (v7 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = -v7;
  }

  if (v6 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = -v6;
  }

  if (v7 < 0)
  {
    if (v10 > 0x81)
    {
      return;
    }

    if (v10 + v9 <= v9)
    {
      v15 = v8 + 8;
    }

    else
    {
      v15 = v10 + v9;
    }

    if (v6 < 0)
    {
      if (v11 >= 0x82 || v10 + v9 < v9)
      {
        return;
      }

      v17 = 130 * v11;
      v10 += v17;
      if (__CFADD__(v15, v17))
      {
        return;
      }
    }

    else if (v10 + v9 < v9)
    {
      return;
    }
  }

  else if (v6 < 0)
  {
    if (v11 > 0x81)
    {
      return;
    }

    v10 = 130 * v11;
    if (__CFADD__(v9, 130 * v11))
    {
      return;
    }
  }

  else
  {
    v10 = 0;
  }

  sub_10002862C(&data, (a1 + 136), v22);
  data = v22[0].data;
  v62 = BYTE4(v22[0].data);
  height = v22[0].height;
  v64 = BYTE4(v22[0].height);
  width = v22[0].width;
  v66 = BYTE4(v22[0].width);
  rowBytes = v22[0].rowBytes;
  v68 = BYTE4(v22[0].rowBytes);
  if (v10 <= 0x4204)
  {
    v60 = 0u;
    v59 = 0u;
    v57 = 0;
    v58 = v8 + v10 + 8;
    v51 = 0;
    v52 = 1;
    v53 = 0;
    v54 = 1;
    v49 = 0;
    v50 = 1;
    v47[0] = off_100070A98;
    v47[1] = 0;
    v48 = 1;
    v55 = 0u;
    v56 = 0u;
    sub_10002BC2C(v47, &v58, &v58, 16900 - v10, 130);
    sub_10002CDD8(&data, *(a1 + 168), &v40);
    v23 = off_100070B90;
    v24 = 0;
    v25 = 1;
    v26 = 0;
    v27 = 1;
    v28 = 0;
    v29 = 1;
    v30 = 0;
    v31 = 1;
    v32 = 0;
    v33 = 1;
    v34 = 0;
    v35 = 1;
    v36 = 0;
    v37 = 1;
    v12 = *(a1 + 168);
    v38 = 0;
    if (v12 <= 350)
    {
      v13 = v12;
    }

    else
    {
      v13 = 300;
    }

    v14 = 394;
    v39 = 1;
    if (v13 <= 199)
    {
      switch(v13)
      {
        case 100:
          v14 = 132;
          break;
        case 125:
          v14 = 166;
          break;
        case 150:
          v14 = 200;
          break;
      }
    }

    else if (v13 > 299)
    {
      if (v13 == 300)
      {
        v14 = 394;
      }

      else if (v13 == 350)
      {
        v14 = 462;
      }
    }

    else if (v13 == 200)
    {
      v14 = 264;
    }

    else if (v13 == 250)
    {
      v14 = 330;
    }

    v22[0].data = 0;
    v22[0].height = v14;
    v22[0].width = v14;
    v22[0].rowBytes = v14;
    *&dest.height = vdupq_n_s64(0x82uLL);
    dest.data = 0;
    dest.rowBytes = 130;
    v18 = vImageScale_Planar8(v22, &dest, 0, 0x80u);
    v19 = v18 & ~(v18 >> 63);
    if (*(a1 + 64) == 1)
    {
      v20 = *(a1 + 56) == 0;
      if (!v19)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v20 = 1;
      if (!v19)
      {
LABEL_56:
        Madusa::ImageProperties::ImageProperties(v22);
        v24 = v40;
        v25 = BYTE4(v40);
        v26 = v41;
        v27 = v42;
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = data;
        v33 = v62;
        v34 = height;
        v35 = v64;
        v36 = width;
        v37 = v66;
        v38 = rowBytes;
        v39 = v68;
        sub_10002D178(&v23, *(a1 + 8), v47, a1 + 16);
        return;
      }
    }

    if (v20)
    {
      v21 = (*(**(a1 + 176) + 16))(*(a1 + 176), v19);
      if (v21)
      {
        v22[0].data = v21;
        sub_10002BC2C(a1 + 16, v22, v22, v19, 0);
      }
    }

    goto LABEL_56;
  }
}

uint64_t sub_10002BC2C(uint64_t result, unint64_t *a2, unint64_t *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v6 = 0;
  *(result + 64) = 0u;
  v7 = (result + 64);
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 96) = 0;
  *(result + 80) = 0u;
  *(result + 56) = a5;
  *(result + 60) = 1;
  *(result + 40) = a4;
  *(result + 48) = 1;
  v8 = *a2;
  v9 = *a2 + a4;
  v10 = v9 >= *a2;
  if (v9 >= *a2)
  {
    v5 = 0;
    v11 = *a3;
    v6 = 0;
    if (*a3 < v9 && v11 >= v8)
    {
      *v7 = v11;
      if (v8)
      {
        *(result + 24) = v8;
      }

      *(result + 8) = v9;
      *(result + 16) = v10;
      v5 = v9;
      v6 = v8;
    }
  }

  v12 = a2[1];
  v13 = v12 + a4;
  if (v12 + a4 >= v12)
  {
    v14 = a3[1];
    if (v14 < v13 && v14 >= v12)
    {
      *(result + 72) = v14;
      if (v12 - 1 < v6 - 1)
      {
        *(result + 24) = v12;
        *(result + 32) = 1;
        v6 = v12;
      }

      if (v13 > v5)
      {
        *(result + 8) = v13;
        *(result + 16) = v12 + a4 >= v12;
        v5 = v12 + a4;
      }
    }
  }

  v15 = a2[2];
  v16 = v15 + a4;
  if (v15 + a4 >= v15)
  {
    v17 = a3[2];
    if (v17 < v16 && v17 >= v15)
    {
      *(result + 80) = v17;
      if (v15 - 1 < v6 - 1)
      {
        *(result + 24) = v15;
        *(result + 32) = 1;
        v6 = v15;
      }

      if (v16 > v5)
      {
        *(result + 8) = v16;
        *(result + 16) = v15 + a4 >= v15;
        v5 = v15 + a4;
      }
    }
  }

  v18 = a2[3];
  v19 = v18 + a4;
  if (v18 + a4 >= v18)
  {
    v20 = a3[3];
    if (v20 < v19 && v20 >= v18)
    {
      *(result + 88) = v20;
      if (v18 - 1 < v6 - 1)
      {
        *(result + 24) = v18;
        *(result + 32) = 1;
        v6 = v18;
      }

      if (v19 > v5)
      {
        *(result + 8) = v19;
        *(result + 16) = v18 + a4 >= v18;
        v5 = v18 + a4;
      }
    }
  }

  v21 = a2[4];
  v22 = v21 + a4;
  if (v21 + a4 >= v21)
  {
    v23 = a3[4];
    if (v23 < v22 && v23 >= v21)
    {
      *(result + 96) = v23;
      if (v21 - 1 < v6 - 1)
      {
        *(result + 24) = v21;
        *(result + 32) = 1;
        v6 = v21;
      }

      if (v22 > v5)
      {
        *(result + 8) = v22;
        *(result + 16) = v21 + a4 >= v21;
        v5 = v21 + a4;
      }
    }
  }

  if ((*(result + 32) & 1) == 0 || v6 > v5)
  {
    *(result + 40) = 0;
    *(result + 48) = 1;
    *(result + 56) = 0;
    *(result + 60) = 1;
    *(result + 24) = 0;
    *(result + 32) = 1;
    *(result + 8) = 0;
    *(result + 16) = 1;
    *v7 = 0uLL;
    *(result + 80) = 0uLL;
    *(result + 96) = 0;
  }

  return result;
}

__n128 sub_10002BE7C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 40) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  if (*(a1 + 48))
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  *a3 = v5;
  result = *(a1 + 64);
  v7 = *(a1 + 80);
  *a4 = result;
  *(a4 + 16) = v7;
  *(a4 + 32) = *(a1 + 96);
  return result;
}

unint64_t sub_10002BEAC@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a3;
  v9 = v8 * *a1;
  if (v9 == v9 && 2 * v9 == 2 * v9 && (v10 = v8 + 2 * v9, v10 == v10))
  {
    v11 = &_mh_execute_header & 0xFFFFFFFF00000000 | v10;
  }

  else
  {
    v11 = 0;
  }

  v44 = v11;
  v45 = BYTE4(v11);
  v12 = a3[1];
  if (2 * v12 == 2 * v12)
  {
    v13 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v12 & 0x7FFFFFFF));
  }

  else
  {
    v13 = 0;
  }

  v42 = v13;
  v43 = BYTE4(v13);
  v14 = sub_10001FCB8(&v44, &v42);
  v15 = *a2;
  v16 = v15 * a1[2];
  if (v16 == v16 && 2 * v16 == 2 * v16 && (v17 = v15 + 2 * v16, v17 == v17))
  {
    v18 = &_mh_execute_header & 0xFFFFFFFF00000000 | v17;
  }

  else
  {
    v18 = 0;
  }

  v44 = v18;
  v45 = BYTE4(v18);
  v19 = a2[1];
  if (2 * v19 == 2 * v19)
  {
    v20 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v19 & 0x7FFFFFFF));
  }

  else
  {
    v20 = 0;
  }

  v42 = v20;
  v43 = BYTE4(v20);
  v21 = sub_10001FCB8(&v44, &v42);
  v22 = *a3;
  v23 = v22 * (*a1 + a1[4] - 1);
  if (v23 == v23 && 2 * v23 == 2 * v23 && (v24 = v22 + 2 * v23, v24 == v24))
  {
    v25 = &_mh_execute_header & 0xFFFFFFFF00000000 | v24;
  }

  else
  {
    v25 = 0;
  }

  v44 = v25;
  v45 = BYTE4(v25);
  v26 = a3[1];
  if (2 * v26 == 2 * v26)
  {
    v27 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v26 & 0x7FFFFFFF));
  }

  else
  {
    v27 = 0;
  }

  v42 = v27;
  v43 = BYTE4(v27);
  v28 = sub_10001FCB8(&v44, &v42);
  v29 = *a2;
  v30 = v29 * (a1[2] + a1[6] - 1);
  if (v30 == v30 && 2 * v30 == 2 * v30 && (v31 = v29 + 2 * v30, v31 == v31))
  {
    v32 = &_mh_execute_header & 0xFFFFFFFF00000000 | v31;
  }

  else
  {
    v32 = 0;
  }

  v44 = v32;
  v45 = BYTE4(v32);
  v33 = a2[1];
  if (2 * v33 == 2 * v33)
  {
    v34 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v33 & 0x7FFFFFFF));
  }

  else
  {
    v34 = 0;
  }

  v42 = v34;
  v43 = BYTE4(v34);
  result = sub_10001FCB8(&v44, &v42);
  if (*(a1 + 12) != 1 || *(a1 + 4) != 1 || *(a1 + 28) != 1 || *(a1 + 20) != 1)
  {
    LOBYTE(v37) = 0;
    LOBYTE(v36) = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v36 = HIDWORD(v14);
  v37 = HIDWORD(v21);
  if ((v28 & 0x100000000) != 0 && (v14 & 0x100000000) != 0 && (v38 = v28 - v14, v38 == v38))
  {
    if ((v38 + 2147483649) >> 32)
    {
      v39 = 0;
    }

    else
    {
      v39 = (v38 + 1) | &_mh_execute_header;
    }

    if ((result & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v39 = 0;
    if ((result & 0x100000000) == 0)
    {
      v40 = 0;
      goto LABEL_40;
    }
  }

  if ((v21 & 0x100000000) == 0 || (v41 = result - v21, v41 != v41))
  {
LABEL_39:
    v40 = 0;
    goto LABEL_40;
  }

  if ((v41 + 2147483649) >> 32)
  {
    v40 = 0;
  }

  else
  {
    v40 = (v41 + 1) | &_mh_execute_header;
  }

LABEL_40:
  *a4 = v14 | (v36 << 32);
  a4[1] = v21 | (v37 << 32);
  a4[2] = v39;
  a4[3] = v40;
  return result;
}

_DWORD *sub_10002C1E8(uint64_t a1, Madusa::ImageProperties *this, uint64_t a3, uint64_t a4)
{
  if (a1 + 40 != a4)
  {
    *(a1 + 40) = *a4;
    *(a1 + 44) = *(a4 + 4);
    *(a1 + 48) = *(a4 + 8);
    *(a1 + 52) = *(a4 + 12);
    *(a1 + 56) = *(a4 + 16);
    *(a1 + 60) = *(a4 + 20);
    *(a1 + 64) = *(a4 + 24);
    *(a1 + 68) = *(a4 + 28);
  }

  if (a1 + 8 != a3)
  {
    *(a1 + 8) = *a3;
    *(a1 + 12) = *(a3 + 4);
    *(a1 + 16) = *(a3 + 8);
    *(a1 + 20) = *(a3 + 12);
    *(a1 + 24) = *(a3 + 16);
    *(a1 + 28) = *(a3 + 20);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 36) = *(a3 + 28);
  }

  *(a1 + 72) = *Madusa::ImageProperties::GetYStride(this);
  *(a1 + 76) = *Madusa::ImageProperties::GetXStride(this);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(this);
  v9 = Madusa::ImageProperties::GetIntegerOffsetBounds(this);
  v10 = v7 - (IntegerOffsetBounds >> 32);
  if (v10 == v10)
  {
    v11 = v10 | &_mh_execute_header;
  }

  else
  {
    v11 = 0;
  }

  if ((v7 & &_mh_execute_header) == 0)
  {
    v11 = 0;
  }

  if ((v6 & 0x100000000) != 0)
  {
    v12 = v6 - v9;
    v13 = v12 == v12 ? v12 | &_mh_execute_header : 0;
    if ((v11 & 0x100000000) != 0 && (v13 & 0x100000000) != 0)
    {
      *(a1 + 80) = v13;
      *(a1 + 84) = v11;
    }
  }

  return Madusa::ImageProperties::GetDownsampleRatios(this, (a1 + 88), (a1 + 96));
}

void *sub_10002C348(void *result, uint64_t a2, uint64_t a3)
{
  if ((result[1] & 0x80000000) == 0)
  {
    v5 = *(result + 6);
    v6 = *(result + 8);
    v7 = v5 < 1 || v6 < 1;
    if (!v7 && (result[2] & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (result[5] & 0x80000000) == 0 && *(result + 14) >= 1 && *(result + 16) >= 1 && (result[6] & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1 && *(result + 52) == 1 && *(result + 22) >= 1 && *(result + 23) >= 1 && *(result + 24) >= 1 && *(result + 25) >= 1)
    {
      v44[9] = v3;
      v44[10] = v4;
      v30 = (result + 1);
      v31 = (result + 5);
      v10 = *(result + 18);
      v9 = *(result + 19);
      v11 = result;
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v12 = v6 * v9;
      if (v10 >= 0)
      {
        v13 = *(result + 18);
      }

      else
      {
        v13 = -v10;
      }

      v14 = v5 * v13;
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v44[0] = 0;
      result = (*(*a2 + 32))(v43, a2, v15, v44);
      if (v44[0] == v15)
      {
        sub_10002CA14(v11, v43);
        v41 = 0;
        v17 = v11[14];
        if ((v17 & 0x80000000) == 0)
        {
          v41 = v11[14];
        }

        v42 = v17 >= 0;
        v18 = (*(*a3 + 48))(a3);
        v19 = v18;
        if (v18 >= 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = -v18;
        }

        v39 = v20;
        v40 = 1;
        result = sub_100029E48(&v41, &v39);
        if (v21)
        {
          v22 = result;
          v38 = 0;
          result = (*(*a3 + 32))(v37, a3, result, &v38);
          if (v22 == v38)
          {
            v36 = v37[0];
            v24 = v11[18];
            v23 = v11[19];
            v34 = (*(*a2 + 64))(a2);
            v35 = v25;
            v32 = (*(*a2 + 72))(a2);
            v33 = v26;
            v27 = sub_10002CB94(v11, v43, v23, v24, v30, 0x10, &v34, &v32);
            v34 = (*(*a3 + 64))(a3);
            v35 = v28;
            v32 = (*(*a3 + 72))(a3);
            v33 = v29;
            result = sub_10002CB94(v11, v37, 1, v19, v31, 8, &v34, &v32);
            if (v27)
            {
              if (result)
              {
                return (*(*v11 + 32))(v11, v41, v19, &v36, v43);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *sub_10002C710(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = (result[18] + (result[18] >> 31)) >> 1;
    v9 = result[16];
    while (1)
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = result[22] * i / result[23] * v7;
          v13 = *(*a5 + 2 * v12);
          v14 = (v13 << 13) & 0xF800000;
          LODWORD(v15) = ((v13 << 13) & 0xFFFE000) + 939524096;
          if (!v14)
          {
            v15 = COERCE_FLOAT((v13 << 13) | 0x38800000) + -0.000061035;
          }

          v16 = (v13 << 13) | 0x70000000;
          if (v14 != 260046848)
          {
            v16 = LODWORD(v15);
          }

          LODWORD(v17) = v16 | (v13 >> 15 << 31);
          if (v13 == 0x7FFF)
          {
            v17 = 0.0;
          }

          v18 = *(a5[1] + 2 * v12);
          v19 = 0.0;
          v20 = 0.0;
          if (v18 != 0x7FFF)
          {
            v21 = (v18 << 13) & 0xF800000;
            LODWORD(v22) = ((v18 << 13) & 0xFFFE000) + 939524096;
            if (!v21)
            {
              v22 = COERCE_FLOAT((v18 << 13) | 0x38800000) + -0.000061035;
            }

            v23 = (v18 << 13) | 0x70000000;
            if (v21 != 260046848)
            {
              v23 = LODWORD(v22);
            }

            LODWORD(v20) = v23 | (v18 >> 15 << 31);
          }

          v24 = *(a5[2] + 2 * v12);
          if (v24 != 0x7FFF)
          {
            v25 = (v24 << 13) & 0xF800000;
            LODWORD(v26) = ((v24 << 13) & 0xFFFE000) + 939524096;
            if (!v25)
            {
              v26 = COERCE_FLOAT((v24 << 13) | 0x38800000) + -0.000061035;
            }

            v27 = (v24 << 13) | 0x70000000;
            if (v25 != 260046848)
            {
              v27 = LODWORD(v26);
            }

            LODWORD(v19) = v27 | (v24 >> 15 << 31);
          }

          v11 = (fmaxf(fminf(((v20 + v17) + v19) * 85.0, 255.0), 0.0) + 0.5);
          if (v11 >= 255)
          {
            v11 = 255;
          }

          *(*a4 + i) = dword_10006B600[v11 & ~(v11 >> 31)];
        }
      }

      *a4 += a3;
      v29 = result[24];
      v28 = result[25];
      v30 = v5 + 1;
      if ((v29 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v31 = HIDWORD(v29) * v30;
        if (v31)
        {
LABEL_33:
          if (HIDWORD(v31))
          {
            return result;
          }

          v33 = v29 * v30;
          v34 = __CFADD__(v33, v31 << 32);
          v32 = v33 + (v31 << 32);
          if (v34)
          {
            return result;
          }

          goto LABEL_35;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v31 = HIDWORD(v30) * v29;
        if (v31)
        {
          goto LABEL_33;
        }
      }

      v32 = v29 * v30;
LABEL_35:
      if (!v28)
      {
        return result;
      }

      if (v32)
      {
        v35 = v32 / v28;
        if (v6 > v35)
        {
          return result;
        }
      }

      else
      {
        v35 = 0;
        if (v6)
        {
          return result;
        }
      }

      v34 = v35 >= v6;
      v36 = v35 - v6;
      if (!v34)
      {
        v36 = 0;
      }

      v37 = v36 * v8;
      if (v37 == v37)
      {
        if (*a5)
        {
          *a5 += 2 * v37;
        }

        v38 = a5[1];
        if (v38)
        {
          a5[1] = v38 + 2 * v37;
        }

        v39 = a5[2];
        if (v39)
        {
          a5[2] = v39 + 2 * v37;
        }

        v40 = a5[3];
        if (v40)
        {
          a5[3] = v40 + 2 * v37;
        }

        v41 = a5[4];
        if (v41)
        {
          a5[4] = v41 + 2 * v37;
        }

        v5 = v30;
        v6 = v35;
        if (v30 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

_DWORD *sub_10002CA14(_DWORD *result, void *a2)
{
  if (*a2)
  {
    v2 = result[21] * (result[19] / 2);
    if (v2 != v2)
    {
      return result;
    }

    v3 = result[20] * (result[18] / 2);
    if (v3 != v3)
    {
      return result;
    }

    *a2 += 2 * v2 + 2 * v3;
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = result[21] * (result[19] / 2);
    if (v5 != v5)
    {
      return result;
    }

    v6 = result[20] * (result[18] / 2);
    if (v6 != v6)
    {
      return result;
    }

    a2[1] = v4 + 2 * v5 + 2 * v6;
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = result[21] * (result[19] / 2);
    if (v8 != v8)
    {
      return result;
    }

    v9 = result[20] * (result[18] / 2);
    if (v9 != v9)
    {
      return result;
    }

    a2[2] = v7 + 2 * v8 + 2 * v9;
  }

  v10 = a2[3];
  if (v10)
  {
    v11 = result[21] * (result[19] / 2);
    if (v11 != v11)
    {
      return result;
    }

    v12 = result[20] * (result[18] / 2);
    if (v12 != v12)
    {
      return result;
    }

    a2[3] = v10 + 2 * v11 + 2 * v12;
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = result[21] * (result[19] / 2);
    if (v14 == v14)
    {
      v15 = result[20] * (result[18] / 2);
      if (v15 == v15)
      {
        a2[4] = v13 + 2 * v14 + 2 * v15;
      }
    }
  }

  return result;
}

uint64_t sub_10002CB94(int a1, uint64_t *a2, int a3, int a4, uint64_t a5, Madusa::ImageProperties *this, void *a7, void *a8)
{
  v14 = Madusa::ImageProperties::ConvertBitsPerPixel(this);
  Madusa::SubBytePixelDirectionAndOffset::SubBytePixelDirectionAndOffset(&v36);
  Madusa::SubBytePixelDirectionAndOffset::Reset(&v36, v14, 1, 0);
  v15 = Madusa::PixelTraversalInformation::PixelTraversalInformation(v35, a3, a4, &v36);
  Madusa::IteratorBoundsComputer::IteratorBoundsComputer(v34, *(a5 + 24), *(a5 + 16), v14, v35, v15);
  v16 = *a2;
  if (*a2)
  {
    v32 = 0;
    v33 = 0;
    if (!Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v34, v16, &v33, &v32))
    {
      return 0;
    }

    v17 = v32;
    v18 = v33;
    if (!Madusa::IteratorBoundsComputer::IsValid(v34) || v18 > v17 || *a7 > v18 || *a8 < v17)
    {
      return 0;
    }
  }

  v19 = a2[1];
  if (v19)
  {
    v32 = 0;
    v33 = 0;
    if (!Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v34, v19, &v33, &v32))
    {
      return 0;
    }

    v20 = v32;
    v21 = v33;
    if (!Madusa::IteratorBoundsComputer::IsValid(v34) || v21 > v20 || *a7 > v21 || *a8 < v20)
    {
      return 0;
    }
  }

  v22 = a2[2];
  if (v22)
  {
    v32 = 0;
    v33 = 0;
    if (!Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v34, v22, &v33, &v32))
    {
      return 0;
    }

    v23 = v32;
    v24 = v33;
    if (!Madusa::IteratorBoundsComputer::IsValid(v34) || v24 > v23 || *a7 > v24 || *a8 < v23)
    {
      return 0;
    }
  }

  v25 = a2[3];
  if (v25)
  {
    v32 = 0;
    v33 = 0;
    if (!Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v34, v25, &v33, &v32))
    {
      return 0;
    }

    v26 = v32;
    v27 = v33;
    if (!Madusa::IteratorBoundsComputer::IsValid(v34) || v27 > v26 || *a7 > v27 || *a8 < v26)
    {
      return 0;
    }
  }

  v28 = a2[4];
  if (!v28)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  if (Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v34, v28, &v33, &v32) && (v29 = v32, v30 = v33, Madusa::IteratorBoundsComputer::IsValid(v34)) && v30 <= v29 && *a7 <= v30 && *a8 >= v29)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

int *sub_10002CDD8@<X0>(int *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 350)
  {
    v3 = a2;
  }

  else
  {
    v3 = 300;
  }

  v4 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v5 = &unk_10006B590;
        goto LABEL_20;
      case 125:
        v5 = &unk_10006B5A0;
        goto LABEL_20;
      case 150:
        v5 = &unk_10006B5B0;
        goto LABEL_20;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v5 = &unk_10006B5E0;
      goto LABEL_20;
    }

    if (v3 == 350)
    {
      v5 = &unk_10006B5F0;
      goto LABEL_20;
    }
  }

  else
  {
    if (v3 == 200)
    {
      v5 = &unk_10006B5C0;
      goto LABEL_20;
    }

    if (v3 == 250)
    {
      v5 = &unk_10006B5D0;
LABEL_20:
      v4 = *(v5 + 4);
    }
  }

  v6 = HIDWORD(v4);
  v7 = v4;
  if (*(result + 4) == 1)
  {
    v8 = v4 * *result;
    if (v8 == v8)
    {
      if (!v6)
      {
        goto LABEL_29;
      }

      if (v8)
      {
        if (v8 == 0x80000000 && v6 == 0xFFFFFFFF)
        {
LABEL_29:
          v9 = 0;
          if (*(result + 12) == 1)
          {
            goto LABEL_24;
          }

          goto LABEL_48;
        }

        v9 = &_mh_execute_header | (v8 / v6);
        if (*(result + 12) == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = &_mh_execute_header;
        if (*(result + 12) == 1)
        {
          goto LABEL_24;
        }
      }

LABEL_48:
      v11 = 0;
      if (*(result + 20) != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  v9 = 0;
  if (*(result + 12) != 1)
  {
    goto LABEL_48;
  }

LABEL_24:
  v10 = v7 * result[2];
  if (v10 != v10)
  {
    goto LABEL_48;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
    v11 = &_mh_execute_header;
    if (*(result + 20) == 1)
    {
      goto LABEL_49;
    }

LABEL_50:
    v15 = 0;
    if (*(result + 28) == 1)
    {
      goto LABEL_63;
    }

LABEL_64:
    *a3 = v9;
    a3[1] = v11;
    a3[2] = v15;
    a3[3] = 0;
    return result;
  }

  if (v10 != 0x80000000 || v6 != 0xFFFFFFFF)
  {
    v11 = &_mh_execute_header | (v10 / v6);
    if (*(result + 20) == 1)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_26:
  v11 = 0;
  if (*(result + 20) != 1)
  {
    goto LABEL_50;
  }

LABEL_49:
  v14 = v7 * result[4];
  if (v14 != v14)
  {
    goto LABEL_50;
  }

  if (!v6)
  {
    goto LABEL_53;
  }

  if (!v14)
  {
    v15 = &_mh_execute_header;
    if (*(result + 28) == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (v14 == 0x80000000 && v6 == 0xFFFFFFFF)
  {
LABEL_53:
    v15 = 0;
    if (*(result + 28) != 1)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v15 = &_mh_execute_header | (v14 / v6);
    if (*(result + 28) != 1)
    {
      goto LABEL_64;
    }
  }

LABEL_63:
  v17 = v7 * result[6];
  if (v17 != v17)
  {
    goto LABEL_64;
  }

  if (v6)
  {
    if (v17)
    {
      v18 = v17 == 0x80000000 && v6 == 0xFFFFFFFF;
      *a3 = v9;
      a3[1] = v11;
      a3[2] = v15;
      if (v18)
      {
        a3[3] = 0;
      }

      else
      {
        a3[3] = &_mh_execute_header | (v17 / v6);
      }
    }

    else
    {
      *a3 = v9;
      a3[1] = v11;
      a3[2] = v15;
      a3[3] = &_mh_execute_header;
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = v11;
    a3[2] = v15;
    a3[3] = 0;
  }

  return result;
}

uint64_t sub_10002D0DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result + 8 != a3)
  {
    *(result + 8) = *a3;
    *(result + 12) = *(a3 + 4);
    *(result + 16) = *(a3 + 8);
    *(result + 20) = *(a3 + 12);
    *(result + 24) = *(a3 + 16);
    *(result + 28) = *(a3 + 20);
    *(result + 32) = *(a3 + 24);
    *(result + 36) = *(a3 + 28);
  }

  if (result + 40 != a4)
  {
    *(result + 40) = *a4;
    *(result + 44) = *(a4 + 4);
    *(result + 48) = *(a4 + 8);
    *(result + 52) = *(a4 + 12);
    *(result + 56) = *(a4 + 16);
    *(result + 60) = *(a4 + 20);
    *(result + 64) = *(a4 + 24);
    *(result + 68) = *(a4 + 28);
  }

  return result;
}

void *sub_10002D178(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result[1] & 0x80000000) == 0 && *(result + 6) >= 1 && *(result + 8) >= 1 && (result[2] & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (result[5] & 0x80000000) == 0 && *(result + 14) >= 1 && *(result + 16) >= 1 && (result[6] & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1)
  {
    if (a4)
    {
      if (*(result + 52))
      {
        v43[11] = v4;
        v43[12] = v5;
        v9 = result;
        v11 = (*(*a4 + 56))(a4);
        v43[0] = 0;
        result = (*(*a4 + 32))(v42, a4, v11, v43);
        if (v43[0])
        {
          if (v43[0] == v11)
          {
            v12 = v42[0];
            v13 = (*(*a2 + 40))(a2);
            v14 = v9[4];
            result = (*(*a2 + 56))(a2);
            if (v13 - 1 < result + v13 && v13 + v14 >= v13 && v13 + v14 <= result + v13)
            {
              v15 = v9[4];
              result = (*(*a2 + 48))(a2);
              v16 = v9[6];
              if ((v16 & 0x80000000) == 0)
              {
                v17 = result;
                v18 = v13 + v15;
                result = (*(*a2 + 56))(a2);
                if (!__CFADD__(result, v18))
                {
                  v19 = v17 >= 0 ? v17 : -v17;
                  v20 = v18 + v16 * v19;
                  if (v20 >= v18 && v20 <= result + v18)
                  {
                    v21 = v9[6];
                    v41[0] = v18;
                    v41[1] = v21;
                    v41[2] = v9[8];
                    v41[3] = (*(*a2 + 48))(a2);
                    v39 = 0;
                    v22 = v9[14];
                    if ((v22 & 0x80000000) == 0)
                    {
                      v39 = v9[14];
                    }

                    v40 = v22 >= 0;
                    v23 = (*(*a3 + 48))(a3);
                    if (v23 >= 0)
                    {
                      v24 = v23;
                    }

                    else
                    {
                      v24 = -v23;
                    }

                    v37 = v24;
                    v38 = 1;
                    v25 = v9[16];
                    if ((v25 & 0x80000000) != 0)
                    {
                      v26 = v24 + -v25;
                    }

                    else
                    {
                      if (v24 < v25)
                      {
                        v26 = 0;
                        v27 = 0;
LABEL_45:
                        result = sub_100029E48(&v39, &v37);
                        if (result >= v26)
                        {
                          v29 = result - v26;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        v30 = v27 & v28;
                        if ((v27 & v28) != 0)
                        {
                          v31 = v29;
                        }

                        else
                        {
                          v31 = 0;
                        }

                        if (v40 && (v38 & v30 & 1) != 0 && v26 <= result)
                        {
                          v36 = 0;
                          result = (*(*a3 + 32))(v35, a3, v31, &v36);
                          if (v31 == v36)
                          {
                            v32 = v35[0];
                            result = (*(*a3 + 56))(a3);
                            if (v32 - 1 < result + v32 && &v31[v32] >= v32 && &v31[v32] <= result + v32)
                            {
                              v33 = v9[14];
                              v34[0] = v32;
                              v34[1] = v33;
                              v34[2] = v9[16];
                              v34[3] = v37;
                              return (*(*v9 + 32))(v9, v41, v34, v12);
                            }
                          }
                        }

                        return result;
                      }

                      v26 = v24 - v25;
                    }

                    v27 = 1;
                    goto LABEL_45;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D620(uint64_t result, void *a2)
{
  *result = off_100070BC8;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}